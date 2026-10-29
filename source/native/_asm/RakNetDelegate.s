// RakNetDelegate: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 29 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../RakNetDelegate.cpp

// ==== RakNetDelegate::create
//      file offset 0x377460 (= ELF address; Ghidra 0x387460), 110 bytes, Thumb-2
  377460: b510         	push	{r4, lr}
  377462: b082         	sub	sp, #0x8
  377464: 20e8         	movs	r0, #0xe8
  377466: f010 f27d    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4104fa
  37746a: 4603         	mov	r3, r0
  37746c: 461c         	mov	r4, r3
  37746e: 4620         	mov	r0, r4
  377470: f048 fa2e    	bl	0x3bf8d0 <RakNetDelegate::RakNetDelegate()> @ imm = #0x4845c
  377474: 9401         	str	r4, [sp, #0x4]
  377476: 9b01         	ldr	r3, [sp, #0x4]
  377478: 2b00         	cmp	r3, #0x0
  37747a: d00a         	beq	0x377492 <RakNetDelegate::create()+0x32> @ imm = #0x14
  37747c: 9b01         	ldr	r3, [sp, #0x4]
  37747e: 681b         	ldr	r3, [r3]
  377480: 3318         	adds	r3, #0x18
  377482: 681b         	ldr	r3, [r3]
  377484: 9801         	ldr	r0, [sp, #0x4]
  377486: 4798         	blx	r3
  377488: 4603         	mov	r3, r0
  37748a: 2b00         	cmp	r3, #0x0
  37748c: d001         	beq	0x377492 <RakNetDelegate::create()+0x32> @ imm = #0x2
  37748e: 2301         	movs	r3, #0x1
  377490: e000         	b	0x377494 <RakNetDelegate::create()+0x34> @ imm = #0x0
  377492: 2300         	movs	r3, #0x0
  377494: 2b00         	cmp	r3, #0x0
  377496: d005         	beq	0x3774a4 <RakNetDelegate::create()+0x44> @ imm = #0xa
  377498: 9b01         	ldr	r3, [sp, #0x4]
  37749a: 4618         	mov	r0, r3
  37749c: f220 fd2e    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x220a5c
  3774a0: 9b01         	ldr	r3, [sp, #0x4]
  3774a2: e011         	b	0x3774c8 <RakNetDelegate::create()+0x68> @ imm = #0x22
  3774a4: 9b01         	ldr	r3, [sp, #0x4]
  3774a6: 2b00         	cmp	r3, #0x0
  3774a8: d005         	beq	0x3774b6 <RakNetDelegate::create()+0x56> @ imm = #0xa
  3774aa: 9b01         	ldr	r3, [sp, #0x4]
  3774ac: 681b         	ldr	r3, [r3]
  3774ae: 3308         	adds	r3, #0x8
  3774b0: 681b         	ldr	r3, [r3]
  3774b2: 9801         	ldr	r0, [sp, #0x4]
  3774b4: 4798         	blx	r3
  3774b6: 2300         	movs	r3, #0x0
  3774b8: 9301         	str	r3, [sp, #0x4]
  3774ba: 2300         	movs	r3, #0x0
  3774bc: e004         	b	0x3774c8 <RakNetDelegate::create()+0x68> @ imm = #0x8
  3774be: 4620         	mov	r0, r4
  3774c0: f010 f5f0    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x410be0
  3774c4: f010 f5f2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410be4
  3774c8: 4618         	mov	r0, r3
  3774ca: b002         	add	sp, #0x8
  3774cc: bd10         	pop	{r4, pc}

// ==== RakNetDelegate::RakNetDelegate
//      file offset 0x3bf8d0 (= ELF address; Ghidra 0x3cf8d0), 44 bytes, Thumb-2
  3bf8d0: b510         	push	{r4, lr}
  3bf8d2: b082         	sub	sp, #0x8
  3bf8d4: 9001         	str	r0, [sp, #0x4]
  3bf8d6: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3bf8f4 <RakNetDelegate::RakNetDelegate()+0x24>
  3bf8d8: 447c         	add	r4, pc
  3bf8da: 9b01         	ldr	r3, [sp, #0x4]
  3bf8dc: 4618         	mov	r0, r3
  3bf8de: f1cf feab    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1cfd56
  3bf8e2: 9b01         	ldr	r3, [sp, #0x4]
  3bf8e4: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3bf8f8 <RakNetDelegate::RakNetDelegate()+0x28>
  3bf8e6: 58a2         	ldr	r2, [r4, r2]
  3bf8e8: 3208         	adds	r2, #0x8
  3bf8ea: 601a         	str	r2, [r3]
  3bf8ec: 9b01         	ldr	r3, [sp, #0x4]
  3bf8ee: 4618         	mov	r0, r3
  3bf8f0: b002         	add	sp, #0x8
  3bf8f2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bf8f3); words below are literal-pool data ---
  3bf8f4: 3130         	adds	r1, #0x30
  3bf8f6: 0057         	lsls	r7, r2, #0x1
  3bf8f8: de4c         	udf	#0x4c
  3bf8fa: ffff b500    	<unknown>

// ==== RakNetDelegate::init
//      file offset 0x3bf8fc (= ELF address; Ghidra 0x3cf8fc), 48 bytes, Thumb-2
  3bf8fc: b500         	push	{lr}
  3bf8fe: b085         	sub	sp, #0x14
  3bf900: 9001         	str	r0, [sp, #0x4]
  3bf902: 9b01         	ldr	r3, [sp, #0x4]
  3bf904: 4618         	mov	r0, r3
  3bf906: f1d0 f8a1    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1d0142
  3bf90a: 4603         	mov	r3, r0
  3bf90c: f88d 300f    	strb.w	r3, [sp, #0xf]
  3bf910: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3bf914: f083 0301    	eor	r3, r3, #0x1
  3bf918: b2db         	uxtb	r3, r3
  3bf91a: 2b00         	cmp	r3, #0x0
  3bf91c: d001         	beq	0x3bf922 <RakNetDelegate::init()+0x26> @ imm = #0x2
  3bf91e: 2300         	movs	r3, #0x0
  3bf920: e000         	b	0x3bf924 <RakNetDelegate::init()+0x28> @ imm = #0x0
  3bf922: 2301         	movs	r3, #0x1
  3bf924: 4618         	mov	r0, r3
  3bf926: b005         	add	sp, #0x14
  3bf928: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetDelegate::~RakNetDelegate
//      file offset 0x3bf92c (= ELF address; Ghidra 0x3cf92c), 64 bytes, Thumb-2
  3bf92c: b500         	push	{lr}
  3bf92e: b083         	sub	sp, #0xc
  3bf930: 9001         	str	r0, [sp, #0x4]
  3bf932: 490c         	ldr	r1, [pc, #0x30]         @ 0x3bf964 <RakNetDelegate::~RakNetDelegate()+0x38>
  3bf934: 4479         	add	r1, pc
  3bf936: 9b01         	ldr	r3, [sp, #0x4]
  3bf938: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x3bf968 <RakNetDelegate::~RakNetDelegate()+0x3c>
  3bf93a: 588a         	ldr	r2, [r1, r2]
  3bf93c: 3208         	adds	r2, #0x8
  3bf93e: 601a         	str	r2, [r3]
  3bf940: 9801         	ldr	r0, [sp, #0x4]
  3bf942: f002 fd93    	bl	0x3c246c <RakNetDelegate::shutdown()> @ imm = #0x2b26
  3bf946: 9b01         	ldr	r3, [sp, #0x4]
  3bf948: 4618         	mov	r0, r3
  3bf94a: f1cf ff7b    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1cfef6
  3bf94e: 2300         	movs	r3, #0x0
  3bf950: 2b00         	cmp	r3, #0x0
  3bf952: d002         	beq	0x3bf95a <RakNetDelegate::~RakNetDelegate()+0x2e> @ imm = #0x4
  3bf954: 9801         	ldr	r0, [sp, #0x4]
  3bf956: f3c8 fba5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c874a
  3bf95a: 9b01         	ldr	r3, [sp, #0x4]
  3bf95c: 4618         	mov	r0, r3
  3bf95e: b003         	add	sp, #0xc
  3bf960: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bf963); words below are literal-pool data ---
  3bf964: 30d4         	adds	r0, #0xd4
  3bf966: 0057         	lsls	r7, r2, #0x1
  3bf968: de4c         	udf	#0x4c
  3bf96a: ffff b500    	<unknown>

// ==== RakNetDelegate::~RakNetDelegate
//      file offset 0x3bf96c (= ELF address; Ghidra 0x3cf96c), 28 bytes, Thumb-2
  3bf96c: b500         	push	{lr}
  3bf96e: b083         	sub	sp, #0xc
  3bf970: 9001         	str	r0, [sp, #0x4]
  3bf972: 9801         	ldr	r0, [sp, #0x4]
  3bf974: f7ff ffda    	bl	0x3bf92c <RakNetDelegate::~RakNetDelegate()> @ imm = #-0x4c
  3bf978: 9801         	ldr	r0, [sp, #0x4]
  3bf97a: f3c8 fb93    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c8726
  3bf97e: 9b01         	ldr	r3, [sp, #0x4]
  3bf980: 4618         	mov	r0, r3
  3bf982: b003         	add	sp, #0xc
  3bf984: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetDelegate::setHostPeerID
//      file offset 0x3bf988 (= ELF address; Ghidra 0x3cf988), 24 bytes, Thumb-2
  3bf988: b082         	sub	sp, #0x8
  3bf98a: 9001         	str	r0, [sp, #0x4]
  3bf98c: 9100         	str	r1, [sp]
  3bf98e: 4b03         	ldr	r3, [pc, #0xc]          @ 0x3bf99c <RakNetDelegate::setHostPeerID(int)+0x14>
  3bf990: 447b         	add	r3, pc
  3bf992: 9a00         	ldr	r2, [sp]
  3bf994: 601a         	str	r2, [r3]
  3bf996: b002         	add	sp, #0x8
  3bf998: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf999); words below are literal-pool data ---
  3bf99a: bf00         	nop
  3bf99c: 3c68         	subs	r4, #0x68
  3bf99e: 0057         	lsls	r7, r2, #0x1

// ==== RakNetDelegate::msgTicLoop
//      file offset 0x3bf9a0 (= ELF address; Ghidra 0x3cf9a0), 168 bytes, Thumb-2
  3bf9a0: b570         	push	{r4, r5, r6, lr}
  3bf9a2: b098         	sub	sp, #0x60
  3bf9a4: 9007         	str	r0, [sp, #0x1c]
  3bf9a6: 9106         	str	r1, [sp, #0x18]
  3bf9a8: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3bfa30 <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0x90>
  3bf9aa: 447c         	add	r4, pc
  3bf9ac: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3bfa34 <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0x94>
  3bf9ae: 58e3         	ldr	r3, [r4, r3]
  3bf9b0: 681b         	ldr	r3, [r3]
  3bf9b2: 9317         	str	r3, [sp, #0x5c]
  3bf9b4: 2386         	movs	r3, #0x86
  3bf9b6: f88d 3027    	strb.w	r3, [sp, #0x27]
  3bf9ba: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3bfa38 <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0x98>
  3bf9bc: 447b         	add	r3, pc
  3bf9be: 681b         	ldr	r3, [r3]
  3bf9c0: 681b         	ldr	r3, [r3]
  3bf9c2: 3354         	adds	r3, #0x54
  3bf9c4: 681d         	ldr	r5, [r3]
  3bf9c6: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3bfa3c <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0x9c>
  3bf9c8: 447b         	add	r3, pc
  3bf9ca: 681e         	ldr	r6, [r3]
  3bf9cc: ab0c         	add	r3, sp, #0x30
  3bf9ce: 4618         	mov	r0, r3
  3bf9d0: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3bfa40 <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0xa0>
  3bf9d2: 447b         	add	r3, pc
  3bf9d4: 4619         	mov	r1, r3
  3bf9d6: f7fe fd49    	bl	0x3be46c <RakNet::AddressOrGUID::AddressOrGUID(RakNet::SystemAddress const&)> @ imm = #-0x156e
  3bf9da: f10d 0327    	add.w	r3, sp, #0x27
  3bf9de: 2203         	movs	r2, #0x3
  3bf9e0: 9200         	str	r2, [sp]
  3bf9e2: 2200         	movs	r2, #0x0
  3bf9e4: 9201         	str	r2, [sp, #0x4]
  3bf9e6: aa0c         	add	r2, sp, #0x30
  3bf9e8: 9202         	str	r2, [sp, #0x8]
  3bf9ea: 2201         	movs	r2, #0x1
  3bf9ec: 9203         	str	r2, [sp, #0xc]
  3bf9ee: 2200         	movs	r2, #0x0
  3bf9f0: 9204         	str	r2, [sp, #0x10]
  3bf9f2: 4630         	mov	r0, r6
  3bf9f4: 4619         	mov	r1, r3
  3bf9f6: 2201         	movs	r2, #0x1
  3bf9f8: 2301         	movs	r3, #0x1
  3bf9fa: 47a8         	blx	r5
  3bf9fc: 9b07         	ldr	r3, [sp, #0x1c]
  3bf9fe: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3bfa44 <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0xa4>
  3bfa00: 58a2         	ldr	r2, [r4, r2]
  3bfa02: 920a         	str	r2, [sp, #0x28]
  3bfa04: 2200         	movs	r2, #0x0
  3bfa06: 920b         	str	r2, [sp, #0x2c]
  3bfa08: 4618         	mov	r0, r3
  3bfa0a: ab0a         	add	r3, sp, #0x28
  3bfa0c: e893 0006    	ldm.w	r3, {r1, r2}
  3bfa10: f04f 0300    	mov.w	r3, #0x0
  3bfa14: f2c4 03a0    	movt	r3, #0x40a0
  3bfa18: f1d1 fc04    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1d1808
  3bfa1c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3bfa34 <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0x94>
  3bfa1e: 58e3         	ldr	r3, [r4, r3]
  3bfa20: 9a17         	ldr	r2, [sp, #0x5c]
  3bfa22: 681b         	ldr	r3, [r3]
  3bfa24: 429a         	cmp	r2, r3
  3bfa26: d001         	beq	0x3bfa2c <RakNetDelegate::msgTicLoop(cocos2d::CCObject)+0x8c> @ imm = #0x2
  3bfa28: f716 ea9e    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xe9ac4
  3bfa2c: b018         	add	sp, #0x60
  3bfa2e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3bfa2f); words below are literal-pool data ---
  3bfa30: 305e         	adds	r0, #0x5e
  3bfa32: 0057         	lsls	r7, r2, #0x1
  3bfa34: d72c         	bvc	0x3bfa90 <RakNetDelegate::conditionalInitRakPeer(bool)+0x48> @ imm = #0x58
  3bfa36: ffff 1a48    	vtbx.8	d17, {d15, d16, d17}, d8
  3bfa3a: 0058         	lsls	r0, r3, #0x1
  3bfa3c: 1a3c         	subs	r4, r7, r0
  3bfa3e: 0058         	lsls	r0, r3, #0x1
  3bfa40: 19ee         	adds	r6, r5, r7
  3bfa42: 0058         	lsls	r0, r3, #0x1
  3bfa44: de50         	udf	#0x50
  3bfa46: ffff b5f0    	<unknown>

// ==== RakNetDelegate::conditionalInitRakPeer
//      file offset 0x3bfa48 (= ELF address; Ghidra 0x3cfa48), 3188 bytes, Thumb-2
  3bfa48: b5f0         	push	{r4, r5, r6, r7, lr}
  3bfa4a: b099         	sub	sp, #0x64
  3bfa4c: 9005         	str	r0, [sp, #0x14]
  3bfa4e: 460b         	mov	r3, r1
  3bfa50: f88d 3013    	strb.w	r3, [sp, #0x13]
  3bfa54: f8df 5aa4    	ldr.w	r5, [pc, #0xaa4]        @ 0x3c04fc <RakNetDelegate::conditionalInitRakPeer(bool)+0xab4>
  3bfa58: 447d         	add	r5, pc
  3bfa5a: f8df 3aa4    	ldr.w	r3, [pc, #0xaa4]        @ 0x3c0500 <RakNetDelegate::conditionalInitRakPeer(bool)+0xab8>
  3bfa5e: 58eb         	ldr	r3, [r5, r3]
  3bfa60: 681b         	ldr	r3, [r3]
  3bfa62: 9317         	str	r3, [sp, #0x5c]
  3bfa64: f8df 3a9c    	ldr.w	r3, [pc, #0xa9c]        @ 0x3c0504 <RakNetDelegate::conditionalInitRakPeer(bool)+0xabc>
  3bfa68: 447b         	add	r3, pc
  3bfa6a: 681b         	ldr	r3, [r3]
  3bfa6c: 2b00         	cmp	r3, #0x0
  3bfa6e: d001         	beq	0x3bfa74 <RakNetDelegate::conditionalInitRakPeer(bool)+0x2c> @ imm = #0x2
  3bfa70: f000 be17    	b.w	0x3c06a2 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc5a> @ imm = #0xc2e
  3bfa74: f8df 3a90    	ldr.w	r3, [pc, #0xa90]        @ 0x3c0508 <RakNetDelegate::conditionalInitRakPeer(bool)+0xac0>
  3bfa78: 447b         	add	r3, pc
  3bfa7a: 4618         	mov	r0, r3
  3bfa7c: f7bd f8ba    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x42e8c
  3bfa80: 4603         	mov	r3, r0
  3bfa82: 2b00         	cmp	r3, #0x0
  3bfa84: bf14         	ite	ne
  3bfa86: 2300         	movne	r3, #0x0
  3bfa88: 2301         	moveq	r3, #0x1
  3bfa8a: b2db         	uxtb	r3, r3
  3bfa8c: 2b00         	cmp	r3, #0x0
  3bfa8e: f000 8374    	beq.w	0x3c017a <RakNetDelegate::conditionalInitRakPeer(bool)+0x732> @ imm = #0x6e8
  3bfa92: ab06         	add	r3, sp, #0x18
  3bfa94: 4618         	mov	r0, r3
  3bfa96: f3ca fcad    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca95a
  3bfa9a: aa08         	add	r2, sp, #0x20
  3bfa9c: ab06         	add	r3, sp, #0x18
  3bfa9e: 4610         	mov	r0, r2
  3bfaa0: f8df 2a68    	ldr.w	r2, [pc, #0xa68]        @ 0x3c050c <RakNetDelegate::conditionalInitRakPeer(bool)+0xac4>
  3bfaa4: 447a         	add	r2, pc
  3bfaa6: 4611         	mov	r1, r2
  3bfaa8: 461a         	mov	r2, r3
  3bfaaa: f3f6 ffd9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6fb2
  3bfaae: ab07         	add	r3, sp, #0x1c
  3bfab0: 4618         	mov	r0, r3
  3bfab2: f3ca fc9f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca93e
  3bfab6: ab08         	add	r3, sp, #0x20
  3bfab8: 1d1a         	adds	r2, r3, #0x4
  3bfaba: ab07         	add	r3, sp, #0x1c
  3bfabc: 4610         	mov	r0, r2
  3bfabe: f8df 2a50    	ldr.w	r2, [pc, #0xa50]        @ 0x3c0510 <RakNetDelegate::conditionalInitRakPeer(bool)+0xac8>
  3bfac2: 447a         	add	r2, pc
  3bfac4: 4611         	mov	r1, r2
  3bfac6: 461a         	mov	r2, r3
  3bfac8: f3f6 ffca    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6f94
  3bfacc: ab08         	add	r3, sp, #0x20
  3bface: 9805         	ldr	r0, [sp, #0x14]
  3bfad0: 4619         	mov	r1, r3
  3bfad2: f002 fd7b    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2af6
  3bfad6: ab08         	add	r3, sp, #0x20
  3bfad8: 4618         	mov	r0, r3
  3bfada: f7ba fd81    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x454fe
  3bfade: ab07         	add	r3, sp, #0x1c
  3bfae0: 4618         	mov	r0, r3
  3bfae2: f3ca fc8b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca916
  3bfae6: ab06         	add	r3, sp, #0x18
  3bfae8: 4618         	mov	r0, r3
  3bfaea: f3ca fc87    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca90e
  3bfaee: ab06         	add	r3, sp, #0x18
  3bfaf0: 4618         	mov	r0, r3
  3bfaf2: f3ca fc7f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca8fe
  3bfaf6: aa08         	add	r2, sp, #0x20
  3bfaf8: ab06         	add	r3, sp, #0x18
  3bfafa: 4610         	mov	r0, r2
  3bfafc: f8df 2a14    	ldr.w	r2, [pc, #0xa14]        @ 0x3c0514 <RakNetDelegate::conditionalInitRakPeer(bool)+0xacc>
  3bfb00: 447a         	add	r2, pc
  3bfb02: 4611         	mov	r1, r2
  3bfb04: 461a         	mov	r2, r3
  3bfb06: f3f6 ffab    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6f56
  3bfb0a: ab07         	add	r3, sp, #0x1c
  3bfb0c: 4618         	mov	r0, r3
  3bfb0e: f3ca fc71    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca8e2
  3bfb12: ab08         	add	r3, sp, #0x20
  3bfb14: 1d1a         	adds	r2, r3, #0x4
  3bfb16: ab07         	add	r3, sp, #0x1c
  3bfb18: 4610         	mov	r0, r2
  3bfb1a: f8df 29fc    	ldr.w	r2, [pc, #0x9fc]        @ 0x3c0518 <RakNetDelegate::conditionalInitRakPeer(bool)+0xad0>
  3bfb1e: 447a         	add	r2, pc
  3bfb20: 4611         	mov	r1, r2
  3bfb22: 461a         	mov	r2, r3
  3bfb24: f3f6 ff9c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6f38
  3bfb28: ab08         	add	r3, sp, #0x20
  3bfb2a: 9805         	ldr	r0, [sp, #0x14]
  3bfb2c: 4619         	mov	r1, r3
  3bfb2e: f002 fd4d    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2a9a
  3bfb32: ab08         	add	r3, sp, #0x20
  3bfb34: 4618         	mov	r0, r3
  3bfb36: f7ba fd53    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x4555a
  3bfb3a: ab07         	add	r3, sp, #0x1c
  3bfb3c: 4618         	mov	r0, r3
  3bfb3e: f3ca fc5d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca8ba
  3bfb42: ab06         	add	r3, sp, #0x18
  3bfb44: 4618         	mov	r0, r3
  3bfb46: f3ca fc59    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca8b2
  3bfb4a: ab06         	add	r3, sp, #0x18
  3bfb4c: 4618         	mov	r0, r3
  3bfb4e: f3ca fc51    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca8a2
  3bfb52: aa08         	add	r2, sp, #0x20
  3bfb54: ab06         	add	r3, sp, #0x18
  3bfb56: 4610         	mov	r0, r2
  3bfb58: f8df 29c0    	ldr.w	r2, [pc, #0x9c0]        @ 0x3c051c <RakNetDelegate::conditionalInitRakPeer(bool)+0xad4>
  3bfb5c: 447a         	add	r2, pc
  3bfb5e: 4611         	mov	r1, r2
  3bfb60: 461a         	mov	r2, r3
  3bfb62: f3f6 ff7d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6efa
  3bfb66: ab07         	add	r3, sp, #0x1c
  3bfb68: 4618         	mov	r0, r3
  3bfb6a: f3ca fc43    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca886
  3bfb6e: ab08         	add	r3, sp, #0x20
  3bfb70: 1d1a         	adds	r2, r3, #0x4
  3bfb72: ab07         	add	r3, sp, #0x1c
  3bfb74: 4610         	mov	r0, r2
  3bfb76: f8df 29a8    	ldr.w	r2, [pc, #0x9a8]        @ 0x3c0520 <RakNetDelegate::conditionalInitRakPeer(bool)+0xad8>
  3bfb7a: 447a         	add	r2, pc
  3bfb7c: 4611         	mov	r1, r2
  3bfb7e: 461a         	mov	r2, r3
  3bfb80: f3f6 ff6e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6edc
  3bfb84: ab08         	add	r3, sp, #0x20
  3bfb86: 9805         	ldr	r0, [sp, #0x14]
  3bfb88: 4619         	mov	r1, r3
  3bfb8a: f002 fd1f    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2a3e
  3bfb8e: ab08         	add	r3, sp, #0x20
  3bfb90: 4618         	mov	r0, r3
  3bfb92: f7ba fd25    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x455b6
  3bfb96: ab07         	add	r3, sp, #0x1c
  3bfb98: 4618         	mov	r0, r3
  3bfb9a: f3ca fc2f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca85e
  3bfb9e: ab06         	add	r3, sp, #0x18
  3bfba0: 4618         	mov	r0, r3
  3bfba2: f3ca fc2b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca856
  3bfba6: ab06         	add	r3, sp, #0x18
  3bfba8: 4618         	mov	r0, r3
  3bfbaa: f3ca fc23    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca846
  3bfbae: aa08         	add	r2, sp, #0x20
  3bfbb0: ab06         	add	r3, sp, #0x18
  3bfbb2: 4610         	mov	r0, r2
  3bfbb4: f8df 296c    	ldr.w	r2, [pc, #0x96c]        @ 0x3c0524 <RakNetDelegate::conditionalInitRakPeer(bool)+0xadc>
  3bfbb8: 447a         	add	r2, pc
  3bfbba: 4611         	mov	r1, r2
  3bfbbc: 461a         	mov	r2, r3
  3bfbbe: f3f6 ff4f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6e9e
  3bfbc2: ab07         	add	r3, sp, #0x1c
  3bfbc4: 4618         	mov	r0, r3
  3bfbc6: f3ca fc15    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca82a
  3bfbca: ab08         	add	r3, sp, #0x20
  3bfbcc: 1d1a         	adds	r2, r3, #0x4
  3bfbce: ab07         	add	r3, sp, #0x1c
  3bfbd0: 4610         	mov	r0, r2
  3bfbd2: f8df 2954    	ldr.w	r2, [pc, #0x954]        @ 0x3c0528 <RakNetDelegate::conditionalInitRakPeer(bool)+0xae0>
  3bfbd6: 447a         	add	r2, pc
  3bfbd8: 4611         	mov	r1, r2
  3bfbda: 461a         	mov	r2, r3
  3bfbdc: f3f6 ff40    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6e80
  3bfbe0: ab08         	add	r3, sp, #0x20
  3bfbe2: 9805         	ldr	r0, [sp, #0x14]
  3bfbe4: 4619         	mov	r1, r3
  3bfbe6: f002 fcf1    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x29e2
  3bfbea: ab08         	add	r3, sp, #0x20
  3bfbec: 4618         	mov	r0, r3
  3bfbee: f7ba fcf7    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45612
  3bfbf2: ab07         	add	r3, sp, #0x1c
  3bfbf4: 4618         	mov	r0, r3
  3bfbf6: f3ca fc01    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca802
  3bfbfa: ab06         	add	r3, sp, #0x18
  3bfbfc: 4618         	mov	r0, r3
  3bfbfe: f3ca fbfd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca7fa
  3bfc02: ab06         	add	r3, sp, #0x18
  3bfc04: 4618         	mov	r0, r3
  3bfc06: f3ca fbf5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca7ea
  3bfc0a: aa08         	add	r2, sp, #0x20
  3bfc0c: ab06         	add	r3, sp, #0x18
  3bfc0e: 4610         	mov	r0, r2
  3bfc10: f8df 2918    	ldr.w	r2, [pc, #0x918]        @ 0x3c052c <RakNetDelegate::conditionalInitRakPeer(bool)+0xae4>
  3bfc14: 447a         	add	r2, pc
  3bfc16: 4611         	mov	r1, r2
  3bfc18: 461a         	mov	r2, r3
  3bfc1a: f3f6 ff21    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6e42
  3bfc1e: ab07         	add	r3, sp, #0x1c
  3bfc20: 4618         	mov	r0, r3
  3bfc22: f3ca fbe7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca7ce
  3bfc26: ab08         	add	r3, sp, #0x20
  3bfc28: 1d1a         	adds	r2, r3, #0x4
  3bfc2a: ab07         	add	r3, sp, #0x1c
  3bfc2c: 4610         	mov	r0, r2
  3bfc2e: f8df 2900    	ldr.w	r2, [pc, #0x900]        @ 0x3c0530 <RakNetDelegate::conditionalInitRakPeer(bool)+0xae8>
  3bfc32: 447a         	add	r2, pc
  3bfc34: 4611         	mov	r1, r2
  3bfc36: 461a         	mov	r2, r3
  3bfc38: f3f6 ff12    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6e24
  3bfc3c: ab08         	add	r3, sp, #0x20
  3bfc3e: 9805         	ldr	r0, [sp, #0x14]
  3bfc40: 4619         	mov	r1, r3
  3bfc42: f002 fcc3    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2986
  3bfc46: ab08         	add	r3, sp, #0x20
  3bfc48: 4618         	mov	r0, r3
  3bfc4a: f7ba fcc9    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x4566e
  3bfc4e: ab07         	add	r3, sp, #0x1c
  3bfc50: 4618         	mov	r0, r3
  3bfc52: f3ca fbd3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca7a6
  3bfc56: ab06         	add	r3, sp, #0x18
  3bfc58: 4618         	mov	r0, r3
  3bfc5a: f3ca fbcf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca79e
  3bfc5e: ab06         	add	r3, sp, #0x18
  3bfc60: 4618         	mov	r0, r3
  3bfc62: f3ca fbc7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca78e
  3bfc66: aa08         	add	r2, sp, #0x20
  3bfc68: ab06         	add	r3, sp, #0x18
  3bfc6a: 4610         	mov	r0, r2
  3bfc6c: f8df 28c4    	ldr.w	r2, [pc, #0x8c4]        @ 0x3c0534 <RakNetDelegate::conditionalInitRakPeer(bool)+0xaec>
  3bfc70: 447a         	add	r2, pc
  3bfc72: 4611         	mov	r1, r2
  3bfc74: 461a         	mov	r2, r3
  3bfc76: f3f6 fef3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6de6
  3bfc7a: ab07         	add	r3, sp, #0x1c
  3bfc7c: 4618         	mov	r0, r3
  3bfc7e: f3ca fbb9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca772
  3bfc82: ab08         	add	r3, sp, #0x20
  3bfc84: 1d1a         	adds	r2, r3, #0x4
  3bfc86: ab07         	add	r3, sp, #0x1c
  3bfc88: 4610         	mov	r0, r2
  3bfc8a: f8df 28ac    	ldr.w	r2, [pc, #0x8ac]        @ 0x3c0538 <RakNetDelegate::conditionalInitRakPeer(bool)+0xaf0>
  3bfc8e: 447a         	add	r2, pc
  3bfc90: 4611         	mov	r1, r2
  3bfc92: 461a         	mov	r2, r3
  3bfc94: f3f6 fee4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6dc8
  3bfc98: ab08         	add	r3, sp, #0x20
  3bfc9a: 9805         	ldr	r0, [sp, #0x14]
  3bfc9c: 4619         	mov	r1, r3
  3bfc9e: f002 fc95    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x292a
  3bfca2: ab08         	add	r3, sp, #0x20
  3bfca4: 4618         	mov	r0, r3
  3bfca6: f7ba fc9b    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x456ca
  3bfcaa: ab07         	add	r3, sp, #0x1c
  3bfcac: 4618         	mov	r0, r3
  3bfcae: f3ca fba5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca74a
  3bfcb2: ab06         	add	r3, sp, #0x18
  3bfcb4: 4618         	mov	r0, r3
  3bfcb6: f3ca fba1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca742
  3bfcba: ab06         	add	r3, sp, #0x18
  3bfcbc: 4618         	mov	r0, r3
  3bfcbe: f3ca fb99    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca732
  3bfcc2: aa08         	add	r2, sp, #0x20
  3bfcc4: ab06         	add	r3, sp, #0x18
  3bfcc6: 4610         	mov	r0, r2
  3bfcc8: f8df 2870    	ldr.w	r2, [pc, #0x870]        @ 0x3c053c <RakNetDelegate::conditionalInitRakPeer(bool)+0xaf4>
  3bfccc: 447a         	add	r2, pc
  3bfcce: 4611         	mov	r1, r2
  3bfcd0: 461a         	mov	r2, r3
  3bfcd2: f3f6 fec5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6d8a
  3bfcd6: ab07         	add	r3, sp, #0x1c
  3bfcd8: 4618         	mov	r0, r3
  3bfcda: f3ca fb8b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca716
  3bfcde: ab08         	add	r3, sp, #0x20
  3bfce0: 1d1a         	adds	r2, r3, #0x4
  3bfce2: ab07         	add	r3, sp, #0x1c
  3bfce4: 4610         	mov	r0, r2
  3bfce6: f8df 2858    	ldr.w	r2, [pc, #0x858]        @ 0x3c0540 <RakNetDelegate::conditionalInitRakPeer(bool)+0xaf8>
  3bfcea: 447a         	add	r2, pc
  3bfcec: 4611         	mov	r1, r2
  3bfcee: 461a         	mov	r2, r3
  3bfcf0: f3f6 feb6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6d6c
  3bfcf4: ab08         	add	r3, sp, #0x20
  3bfcf6: 9805         	ldr	r0, [sp, #0x14]
  3bfcf8: 4619         	mov	r1, r3
  3bfcfa: f002 fc67    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x28ce
  3bfcfe: ab08         	add	r3, sp, #0x20
  3bfd00: 4618         	mov	r0, r3
  3bfd02: f7ba fc6d    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45726
  3bfd06: ab07         	add	r3, sp, #0x1c
  3bfd08: 4618         	mov	r0, r3
  3bfd0a: f3ca fb77    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca6ee
  3bfd0e: ab06         	add	r3, sp, #0x18
  3bfd10: 4618         	mov	r0, r3
  3bfd12: f3ca fb73    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca6e6
  3bfd16: ab06         	add	r3, sp, #0x18
  3bfd18: 4618         	mov	r0, r3
  3bfd1a: f3ca fb6b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca6d6
  3bfd1e: aa08         	add	r2, sp, #0x20
  3bfd20: ab06         	add	r3, sp, #0x18
  3bfd22: 4610         	mov	r0, r2
  3bfd24: f8df 281c    	ldr.w	r2, [pc, #0x81c]        @ 0x3c0544 <RakNetDelegate::conditionalInitRakPeer(bool)+0xafc>
  3bfd28: 447a         	add	r2, pc
  3bfd2a: 4611         	mov	r1, r2
  3bfd2c: 461a         	mov	r2, r3
  3bfd2e: f3f6 fe97    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6d2e
  3bfd32: ab07         	add	r3, sp, #0x1c
  3bfd34: 4618         	mov	r0, r3
  3bfd36: f3ca fb5d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca6ba
  3bfd3a: ab08         	add	r3, sp, #0x20
  3bfd3c: 1d1a         	adds	r2, r3, #0x4
  3bfd3e: ab07         	add	r3, sp, #0x1c
  3bfd40: 4610         	mov	r0, r2
  3bfd42: f8df 2804    	ldr.w	r2, [pc, #0x804]        @ 0x3c0548 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb00>
  3bfd46: 447a         	add	r2, pc
  3bfd48: 4611         	mov	r1, r2
  3bfd4a: 461a         	mov	r2, r3
  3bfd4c: f3f6 fe88    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6d10
  3bfd50: ab08         	add	r3, sp, #0x20
  3bfd52: 9805         	ldr	r0, [sp, #0x14]
  3bfd54: 4619         	mov	r1, r3
  3bfd56: f002 fc39    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2872
  3bfd5a: ab08         	add	r3, sp, #0x20
  3bfd5c: 4618         	mov	r0, r3
  3bfd5e: f7ba fc3f    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45782
  3bfd62: ab07         	add	r3, sp, #0x1c
  3bfd64: 4618         	mov	r0, r3
  3bfd66: f3ca fb49    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca692
  3bfd6a: ab06         	add	r3, sp, #0x18
  3bfd6c: 4618         	mov	r0, r3
  3bfd6e: f3ca fb45    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca68a
  3bfd72: ab06         	add	r3, sp, #0x18
  3bfd74: 4618         	mov	r0, r3
  3bfd76: f3ca fb3d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca67a
  3bfd7a: aa08         	add	r2, sp, #0x20
  3bfd7c: ab06         	add	r3, sp, #0x18
  3bfd7e: 4610         	mov	r0, r2
  3bfd80: f8df 27c8    	ldr.w	r2, [pc, #0x7c8]        @ 0x3c054c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb04>
  3bfd84: 447a         	add	r2, pc
  3bfd86: 4611         	mov	r1, r2
  3bfd88: 461a         	mov	r2, r3
  3bfd8a: f3f6 fe69    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6cd2
  3bfd8e: ab07         	add	r3, sp, #0x1c
  3bfd90: 4618         	mov	r0, r3
  3bfd92: f3ca fb2f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca65e
  3bfd96: ab08         	add	r3, sp, #0x20
  3bfd98: 1d1a         	adds	r2, r3, #0x4
  3bfd9a: ab07         	add	r3, sp, #0x1c
  3bfd9c: 4610         	mov	r0, r2
  3bfd9e: f8df 27b0    	ldr.w	r2, [pc, #0x7b0]        @ 0x3c0550 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb08>
  3bfda2: 447a         	add	r2, pc
  3bfda4: 4611         	mov	r1, r2
  3bfda6: 461a         	mov	r2, r3
  3bfda8: f3f6 fe5a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6cb4
  3bfdac: ab08         	add	r3, sp, #0x20
  3bfdae: 9805         	ldr	r0, [sp, #0x14]
  3bfdb0: 4619         	mov	r1, r3
  3bfdb2: f002 fc0b    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2816
  3bfdb6: ab08         	add	r3, sp, #0x20
  3bfdb8: 4618         	mov	r0, r3
  3bfdba: f7ba fc11    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x457de
  3bfdbe: ab07         	add	r3, sp, #0x1c
  3bfdc0: 4618         	mov	r0, r3
  3bfdc2: f3ca fb1b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca636
  3bfdc6: ab06         	add	r3, sp, #0x18
  3bfdc8: 4618         	mov	r0, r3
  3bfdca: f3ca fb17    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca62e
  3bfdce: ab06         	add	r3, sp, #0x18
  3bfdd0: 4618         	mov	r0, r3
  3bfdd2: f3ca fb0f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca61e
  3bfdd6: aa08         	add	r2, sp, #0x20
  3bfdd8: ab06         	add	r3, sp, #0x18
  3bfdda: 4610         	mov	r0, r2
  3bfddc: f8df 2774    	ldr.w	r2, [pc, #0x774]        @ 0x3c0554 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb0c>
  3bfde0: 447a         	add	r2, pc
  3bfde2: 4611         	mov	r1, r2
  3bfde4: 461a         	mov	r2, r3
  3bfde6: f3f6 fe3b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6c76
  3bfdea: ab07         	add	r3, sp, #0x1c
  3bfdec: 4618         	mov	r0, r3
  3bfdee: f3ca fb01    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca602
  3bfdf2: ab08         	add	r3, sp, #0x20
  3bfdf4: 1d1a         	adds	r2, r3, #0x4
  3bfdf6: ab07         	add	r3, sp, #0x1c
  3bfdf8: 4610         	mov	r0, r2
  3bfdfa: f8df 275c    	ldr.w	r2, [pc, #0x75c]        @ 0x3c0558 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb10>
  3bfdfe: 447a         	add	r2, pc
  3bfe00: 4611         	mov	r1, r2
  3bfe02: 461a         	mov	r2, r3
  3bfe04: f3f6 fe2c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6c58
  3bfe08: ab08         	add	r3, sp, #0x20
  3bfe0a: 9805         	ldr	r0, [sp, #0x14]
  3bfe0c: 4619         	mov	r1, r3
  3bfe0e: f002 fbdd    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x27ba
  3bfe12: ab08         	add	r3, sp, #0x20
  3bfe14: 4618         	mov	r0, r3
  3bfe16: f7ba fbe3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x4583a
  3bfe1a: ab07         	add	r3, sp, #0x1c
  3bfe1c: 4618         	mov	r0, r3
  3bfe1e: f3ca faed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca5da
  3bfe22: ab06         	add	r3, sp, #0x18
  3bfe24: 4618         	mov	r0, r3
  3bfe26: f3ca fae9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca5d2
  3bfe2a: ab06         	add	r3, sp, #0x18
  3bfe2c: 4618         	mov	r0, r3
  3bfe2e: f3ca fae1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca5c2
  3bfe32: aa08         	add	r2, sp, #0x20
  3bfe34: ab06         	add	r3, sp, #0x18
  3bfe36: 4610         	mov	r0, r2
  3bfe38: f8df 2720    	ldr.w	r2, [pc, #0x720]        @ 0x3c055c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb14>
  3bfe3c: 447a         	add	r2, pc
  3bfe3e: 4611         	mov	r1, r2
  3bfe40: 461a         	mov	r2, r3
  3bfe42: f3f6 fe0d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6c1a
  3bfe46: ab07         	add	r3, sp, #0x1c
  3bfe48: 4618         	mov	r0, r3
  3bfe4a: f3ca fad3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca5a6
  3bfe4e: ab08         	add	r3, sp, #0x20
  3bfe50: 1d1a         	adds	r2, r3, #0x4
  3bfe52: ab07         	add	r3, sp, #0x1c
  3bfe54: 4610         	mov	r0, r2
  3bfe56: f8df 2708    	ldr.w	r2, [pc, #0x708]        @ 0x3c0560 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb18>
  3bfe5a: 447a         	add	r2, pc
  3bfe5c: 4611         	mov	r1, r2
  3bfe5e: 461a         	mov	r2, r3
  3bfe60: f3f6 fdfe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6bfc
  3bfe64: ab08         	add	r3, sp, #0x20
  3bfe66: 9805         	ldr	r0, [sp, #0x14]
  3bfe68: 4619         	mov	r1, r3
  3bfe6a: f002 fbaf    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x275e
  3bfe6e: ab08         	add	r3, sp, #0x20
  3bfe70: 4618         	mov	r0, r3
  3bfe72: f7ba fbb5    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45896
  3bfe76: ab07         	add	r3, sp, #0x1c
  3bfe78: 4618         	mov	r0, r3
  3bfe7a: f3ca fabf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca57e
  3bfe7e: ab06         	add	r3, sp, #0x18
  3bfe80: 4618         	mov	r0, r3
  3bfe82: f3ca fabb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca576
  3bfe86: ab06         	add	r3, sp, #0x18
  3bfe88: 4618         	mov	r0, r3
  3bfe8a: f3ca fab3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca566
  3bfe8e: aa08         	add	r2, sp, #0x20
  3bfe90: ab06         	add	r3, sp, #0x18
  3bfe92: 4610         	mov	r0, r2
  3bfe94: f8df 26cc    	ldr.w	r2, [pc, #0x6cc]        @ 0x3c0564 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb1c>
  3bfe98: 447a         	add	r2, pc
  3bfe9a: 4611         	mov	r1, r2
  3bfe9c: 461a         	mov	r2, r3
  3bfe9e: f3f6 fddf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6bbe
  3bfea2: ab07         	add	r3, sp, #0x1c
  3bfea4: 4618         	mov	r0, r3
  3bfea6: f3ca faa5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca54a
  3bfeaa: ab08         	add	r3, sp, #0x20
  3bfeac: 1d1a         	adds	r2, r3, #0x4
  3bfeae: ab07         	add	r3, sp, #0x1c
  3bfeb0: 4610         	mov	r0, r2
  3bfeb2: f8df 26b4    	ldr.w	r2, [pc, #0x6b4]        @ 0x3c0568 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb20>
  3bfeb6: 447a         	add	r2, pc
  3bfeb8: 4611         	mov	r1, r2
  3bfeba: 461a         	mov	r2, r3
  3bfebc: f3f6 fdd0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6ba0
  3bfec0: ab08         	add	r3, sp, #0x20
  3bfec2: 9805         	ldr	r0, [sp, #0x14]
  3bfec4: 4619         	mov	r1, r3
  3bfec6: f002 fb81    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2702
  3bfeca: ab08         	add	r3, sp, #0x20
  3bfecc: 4618         	mov	r0, r3
  3bfece: f7ba fb87    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x458f2
  3bfed2: ab07         	add	r3, sp, #0x1c
  3bfed4: 4618         	mov	r0, r3
  3bfed6: f3ca fa91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca522
  3bfeda: ab06         	add	r3, sp, #0x18
  3bfedc: 4618         	mov	r0, r3
  3bfede: f3ca fa8d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca51a
  3bfee2: ab06         	add	r3, sp, #0x18
  3bfee4: 4618         	mov	r0, r3
  3bfee6: f3ca fa85    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca50a
  3bfeea: aa08         	add	r2, sp, #0x20
  3bfeec: ab06         	add	r3, sp, #0x18
  3bfeee: 4610         	mov	r0, r2
  3bfef0: f8df 2678    	ldr.w	r2, [pc, #0x678]        @ 0x3c056c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb24>
  3bfef4: 447a         	add	r2, pc
  3bfef6: 4611         	mov	r1, r2
  3bfef8: 461a         	mov	r2, r3
  3bfefa: f3f6 fdb1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6b62
  3bfefe: ab07         	add	r3, sp, #0x1c
  3bff00: 4618         	mov	r0, r3
  3bff02: f3ca fa77    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca4ee
  3bff06: ab08         	add	r3, sp, #0x20
  3bff08: 1d1a         	adds	r2, r3, #0x4
  3bff0a: ab07         	add	r3, sp, #0x1c
  3bff0c: 4610         	mov	r0, r2
  3bff0e: f8df 2660    	ldr.w	r2, [pc, #0x660]        @ 0x3c0570 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb28>
  3bff12: 447a         	add	r2, pc
  3bff14: 4611         	mov	r1, r2
  3bff16: 461a         	mov	r2, r3
  3bff18: f3f6 fda2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6b44
  3bff1c: ab08         	add	r3, sp, #0x20
  3bff1e: 9805         	ldr	r0, [sp, #0x14]
  3bff20: 4619         	mov	r1, r3
  3bff22: f002 fb53    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x26a6
  3bff26: ab08         	add	r3, sp, #0x20
  3bff28: 4618         	mov	r0, r3
  3bff2a: f7ba fb59    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x4594e
  3bff2e: ab07         	add	r3, sp, #0x1c
  3bff30: 4618         	mov	r0, r3
  3bff32: f3ca fa63    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca4c6
  3bff36: ab06         	add	r3, sp, #0x18
  3bff38: 4618         	mov	r0, r3
  3bff3a: f3ca fa5f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca4be
  3bff3e: ab06         	add	r3, sp, #0x18
  3bff40: 4618         	mov	r0, r3
  3bff42: f3ca fa57    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca4ae
  3bff46: aa08         	add	r2, sp, #0x20
  3bff48: ab06         	add	r3, sp, #0x18
  3bff4a: 4610         	mov	r0, r2
  3bff4c: f8df 2624    	ldr.w	r2, [pc, #0x624]        @ 0x3c0574 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb2c>
  3bff50: 447a         	add	r2, pc
  3bff52: 4611         	mov	r1, r2
  3bff54: 461a         	mov	r2, r3
  3bff56: f3f6 fd83    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6b06
  3bff5a: ab07         	add	r3, sp, #0x1c
  3bff5c: 4618         	mov	r0, r3
  3bff5e: f3ca fa49    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca492
  3bff62: ab08         	add	r3, sp, #0x20
  3bff64: 1d1a         	adds	r2, r3, #0x4
  3bff66: ab07         	add	r3, sp, #0x1c
  3bff68: 4610         	mov	r0, r2
  3bff6a: f8df 260c    	ldr.w	r2, [pc, #0x60c]        @ 0x3c0578 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb30>
  3bff6e: 447a         	add	r2, pc
  3bff70: 4611         	mov	r1, r2
  3bff72: 461a         	mov	r2, r3
  3bff74: f3f6 fd74    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6ae8
  3bff78: ab08         	add	r3, sp, #0x20
  3bff7a: 9805         	ldr	r0, [sp, #0x14]
  3bff7c: 4619         	mov	r1, r3
  3bff7e: f002 fb25    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x264a
  3bff82: ab08         	add	r3, sp, #0x20
  3bff84: 4618         	mov	r0, r3
  3bff86: f7ba fb2b    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x459aa
  3bff8a: ab07         	add	r3, sp, #0x1c
  3bff8c: 4618         	mov	r0, r3
  3bff8e: f3ca fa35    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca46a
  3bff92: ab06         	add	r3, sp, #0x18
  3bff94: 4618         	mov	r0, r3
  3bff96: f3ca fa31    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca462
  3bff9a: ab06         	add	r3, sp, #0x18
  3bff9c: 4618         	mov	r0, r3
  3bff9e: f3ca fa29    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca452
  3bffa2: aa08         	add	r2, sp, #0x20
  3bffa4: ab06         	add	r3, sp, #0x18
  3bffa6: 4610         	mov	r0, r2
  3bffa8: f8df 25d0    	ldr.w	r2, [pc, #0x5d0]        @ 0x3c057c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb34>
  3bffac: 447a         	add	r2, pc
  3bffae: 4611         	mov	r1, r2
  3bffb0: 461a         	mov	r2, r3
  3bffb2: f3f6 fd55    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6aaa
  3bffb6: ab07         	add	r3, sp, #0x1c
  3bffb8: 4618         	mov	r0, r3
  3bffba: f3ca fa1b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca436
  3bffbe: ab08         	add	r3, sp, #0x20
  3bffc0: 1d1a         	adds	r2, r3, #0x4
  3bffc2: ab07         	add	r3, sp, #0x1c
  3bffc4: 4610         	mov	r0, r2
  3bffc6: f8df 25b8    	ldr.w	r2, [pc, #0x5b8]        @ 0x3c0580 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb38>
  3bffca: 447a         	add	r2, pc
  3bffcc: 4611         	mov	r1, r2
  3bffce: 461a         	mov	r2, r3
  3bffd0: f3f6 fd46    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6a8c
  3bffd4: ab08         	add	r3, sp, #0x20
  3bffd6: 9805         	ldr	r0, [sp, #0x14]
  3bffd8: 4619         	mov	r1, r3
  3bffda: f002 faf7    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x25ee
  3bffde: ab08         	add	r3, sp, #0x20
  3bffe0: 4618         	mov	r0, r3
  3bffe2: f7ba fafd    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45a06
  3bffe6: ab07         	add	r3, sp, #0x1c
  3bffe8: 4618         	mov	r0, r3
  3bffea: f3ca fa07    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca40e
  3bffee: ab06         	add	r3, sp, #0x18
  3bfff0: 4618         	mov	r0, r3
  3bfff2: f3ca fa03    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca406
  3bfff6: ab06         	add	r3, sp, #0x18
  3bfff8: 4618         	mov	r0, r3
  3bfffa: f3ca f9fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca3f6
  3bfffe: aa08         	add	r2, sp, #0x20
  3c0000: ab06         	add	r3, sp, #0x18
  3c0002: 4610         	mov	r0, r2
  3c0004: f8df 257c    	ldr.w	r2, [pc, #0x57c]        @ 0x3c0584 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb3c>
  3c0008: 447a         	add	r2, pc
  3c000a: 4611         	mov	r1, r2
  3c000c: 461a         	mov	r2, r3
  3c000e: f3f6 fd27    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6a4e
  3c0012: ab07         	add	r3, sp, #0x1c
  3c0014: 4618         	mov	r0, r3
  3c0016: f3ca f9ed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca3da
  3c001a: ab08         	add	r3, sp, #0x20
  3c001c: 1d1a         	adds	r2, r3, #0x4
  3c001e: ab07         	add	r3, sp, #0x1c
  3c0020: 4610         	mov	r0, r2
  3c0022: f8df 2564    	ldr.w	r2, [pc, #0x564]        @ 0x3c0588 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb40>
  3c0026: 447a         	add	r2, pc
  3c0028: 4611         	mov	r1, r2
  3c002a: 461a         	mov	r2, r3
  3c002c: f3f6 fd18    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6a30
  3c0030: ab08         	add	r3, sp, #0x20
  3c0032: 9805         	ldr	r0, [sp, #0x14]
  3c0034: 4619         	mov	r1, r3
  3c0036: f002 fac9    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2592
  3c003a: ab08         	add	r3, sp, #0x20
  3c003c: 4618         	mov	r0, r3
  3c003e: f7ba facf    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45a62
  3c0042: ab07         	add	r3, sp, #0x1c
  3c0044: 4618         	mov	r0, r3
  3c0046: f3ca f9d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca3b2
  3c004a: ab06         	add	r3, sp, #0x18
  3c004c: 4618         	mov	r0, r3
  3c004e: f3ca f9d5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca3aa
  3c0052: ab06         	add	r3, sp, #0x18
  3c0054: 4618         	mov	r0, r3
  3c0056: f3ca f9cd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca39a
  3c005a: aa08         	add	r2, sp, #0x20
  3c005c: ab06         	add	r3, sp, #0x18
  3c005e: 4610         	mov	r0, r2
  3c0060: f8df 2528    	ldr.w	r2, [pc, #0x528]        @ 0x3c058c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb44>
  3c0064: 447a         	add	r2, pc
  3c0066: 4611         	mov	r1, r2
  3c0068: 461a         	mov	r2, r3
  3c006a: f3f6 fcf9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f69f2
  3c006e: ab07         	add	r3, sp, #0x1c
  3c0070: 4618         	mov	r0, r3
  3c0072: f3ca f9bf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca37e
  3c0076: ab08         	add	r3, sp, #0x20
  3c0078: 1d1a         	adds	r2, r3, #0x4
  3c007a: ab07         	add	r3, sp, #0x1c
  3c007c: 4610         	mov	r0, r2
  3c007e: f8df 2510    	ldr.w	r2, [pc, #0x510]        @ 0x3c0590 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb48>
  3c0082: 447a         	add	r2, pc
  3c0084: 4611         	mov	r1, r2
  3c0086: 461a         	mov	r2, r3
  3c0088: f3f6 fcea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f69d4
  3c008c: ab08         	add	r3, sp, #0x20
  3c008e: 9805         	ldr	r0, [sp, #0x14]
  3c0090: 4619         	mov	r1, r3
  3c0092: f002 fa9b    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x2536
  3c0096: ab08         	add	r3, sp, #0x20
  3c0098: 4618         	mov	r0, r3
  3c009a: f7ba faa1    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45abe
  3c009e: ab07         	add	r3, sp, #0x1c
  3c00a0: 4618         	mov	r0, r3
  3c00a2: f3ca f9ab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca356
  3c00a6: ab06         	add	r3, sp, #0x18
  3c00a8: 4618         	mov	r0, r3
  3c00aa: f3ca f9a7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca34e
  3c00ae: ab06         	add	r3, sp, #0x18
  3c00b0: 4618         	mov	r0, r3
  3c00b2: f3ca f99f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca33e
  3c00b6: aa08         	add	r2, sp, #0x20
  3c00b8: ab06         	add	r3, sp, #0x18
  3c00ba: 4610         	mov	r0, r2
  3c00bc: f8df 24d4    	ldr.w	r2, [pc, #0x4d4]        @ 0x3c0594 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb4c>
  3c00c0: 447a         	add	r2, pc
  3c00c2: 4611         	mov	r1, r2
  3c00c4: 461a         	mov	r2, r3
  3c00c6: f3f6 fccb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6996
  3c00ca: ab07         	add	r3, sp, #0x1c
  3c00cc: 4618         	mov	r0, r3
  3c00ce: f3ca f991    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca322
  3c00d2: ab08         	add	r3, sp, #0x20
  3c00d4: 1d1a         	adds	r2, r3, #0x4
  3c00d6: ab07         	add	r3, sp, #0x1c
  3c00d8: 4610         	mov	r0, r2
  3c00da: f8df 24bc    	ldr.w	r2, [pc, #0x4bc]        @ 0x3c0598 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb50>
  3c00de: 447a         	add	r2, pc
  3c00e0: 4611         	mov	r1, r2
  3c00e2: 461a         	mov	r2, r3
  3c00e4: f3f6 fcbc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f6978
  3c00e8: ab08         	add	r3, sp, #0x20
  3c00ea: 9805         	ldr	r0, [sp, #0x14]
  3c00ec: 4619         	mov	r1, r3
  3c00ee: f002 fa6d    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x24da
  3c00f2: ab08         	add	r3, sp, #0x20
  3c00f4: 4618         	mov	r0, r3
  3c00f6: f7ba fa73    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45b1a
  3c00fa: ab07         	add	r3, sp, #0x1c
  3c00fc: 4618         	mov	r0, r3
  3c00fe: f3ca f97d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca2fa
  3c0102: ab06         	add	r3, sp, #0x18
  3c0104: 4618         	mov	r0, r3
  3c0106: f3ca f979    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca2f2
  3c010a: ab06         	add	r3, sp, #0x18
  3c010c: 4618         	mov	r0, r3
  3c010e: f3ca f971    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca2e2
  3c0112: aa08         	add	r2, sp, #0x20
  3c0114: ab06         	add	r3, sp, #0x18
  3c0116: 4610         	mov	r0, r2
  3c0118: f8df 2480    	ldr.w	r2, [pc, #0x480]        @ 0x3c059c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb54>
  3c011c: 447a         	add	r2, pc
  3c011e: 4611         	mov	r1, r2
  3c0120: 461a         	mov	r2, r3
  3c0122: f3f6 fc9d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f693a
  3c0126: ab07         	add	r3, sp, #0x1c
  3c0128: 4618         	mov	r0, r3
  3c012a: f3ca f963    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ca2c6
  3c012e: ab08         	add	r3, sp, #0x20
  3c0130: 1d1a         	adds	r2, r3, #0x4
  3c0132: ab07         	add	r3, sp, #0x1c
  3c0134: 4610         	mov	r0, r2
  3c0136: f8df 2468    	ldr.w	r2, [pc, #0x468]        @ 0x3c05a0 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb58>
  3c013a: 447a         	add	r2, pc
  3c013c: 4611         	mov	r1, r2
  3c013e: 461a         	mov	r2, r3
  3c0140: f3f6 fc8e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f691c
  3c0144: ab08         	add	r3, sp, #0x20
  3c0146: 9805         	ldr	r0, [sp, #0x14]
  3c0148: 4619         	mov	r1, r3
  3c014a: f002 fa3f    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x247e
  3c014e: ab08         	add	r3, sp, #0x20
  3c0150: 4618         	mov	r0, r3
  3c0152: f7ba fa45    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45b76
  3c0156: ab07         	add	r3, sp, #0x1c
  3c0158: 4618         	mov	r0, r3
  3c015a: f3ca f94f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca29e
  3c015e: ab06         	add	r3, sp, #0x18
  3c0160: 4618         	mov	r0, r3
  3c0162: f3ca f94b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca296
  3c0166: 9805         	ldr	r0, [sp, #0x14]
  3c0168: f002 fa96    	bl	0x3c2698 <RakNetDelegate::shuffleServerList()> @ imm = #0x252c
  3c016c: 9805         	ldr	r0, [sp, #0x14]
  3c016e: f002 fae5    	bl	0x3c273c <RakNetDelegate::updateServerList()> @ imm = #0x25ca
  3c0172: 9805         	ldr	r0, [sp, #0x14]
  3c0174: 2100         	movs	r1, #0x0
  3c0176: f002 fb89    	bl	0x3c288c <RakNetDelegate::setServerIndex(int)> @ imm = #0x2712
  3c017a: f0e4 fce7    	bl	0x4a4b4c <RakNet::RakPeerInterface::GetInstance()> @ imm = #0xe49ce
  3c017e: 4603         	mov	r3, r0
  3c0180: 461a         	mov	r2, r3
  3c0182: f8df 3420    	ldr.w	r3, [pc, #0x420]        @ 0x3c05a4 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb5c>
  3c0186: 447b         	add	r3, pc
  3c0188: 601a         	str	r2, [r3]
  3c018a: f8df 341c    	ldr.w	r3, [pc, #0x41c]        @ 0x3c05a8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb60>
  3c018e: 447b         	add	r3, pc
  3c0190: 681b         	ldr	r3, [r3]
  3c0192: 681b         	ldr	r3, [r3]
  3c0194: 3330         	adds	r3, #0x30
  3c0196: 681b         	ldr	r3, [r3]
  3c0198: f8df 2410    	ldr.w	r2, [pc, #0x410]        @ 0x3c05ac <RakNetDelegate::conditionalInitRakPeer(bool)+0xb64>
  3c019c: 447a         	add	r2, pc
  3c019e: 6812         	ldr	r2, [r2]
  3c01a0: 4610         	mov	r0, r2
  3c01a2: f8df 240c    	ldr.w	r2, [pc, #0x40c]        @ 0x3c05b0 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb68>
  3c01a6: 447a         	add	r2, pc
  3c01a8: 4611         	mov	r1, r2
  3c01aa: 221a         	movs	r2, #0x1a
  3c01ac: 4798         	blx	r3
  3c01ae: f8df 3404    	ldr.w	r3, [pc, #0x404]        @ 0x3c05b4 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb6c>
  3c01b2: 447b         	add	r3, pc
  3c01b4: 681b         	ldr	r3, [r3]
  3c01b6: 681b         	ldr	r3, [r3]
  3c01b8: 33e4         	adds	r3, #0xe4
  3c01ba: 681e         	ldr	r6, [r3]
  3c01bc: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x3c05b8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb70>
  3c01be: 447b         	add	r3, pc
  3c01c0: 681f         	ldr	r7, [r3]
  3c01c2: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x3c05bc <RakNetDelegate::conditionalInitRakPeer(bool)+0xb74>
  3c01c4: 447b         	add	r3, pc
  3c01c6: 466c         	mov	r4, sp
  3c01c8: f103 0208    	add.w	r2, r3, #0x8
  3c01cc: ca07         	ldm	r2, {r0, r1, r2}
  3c01ce: e884 0007    	stm.w	r4, {r0, r1, r2}
  3c01d2: cb0c         	ldm	r3, {r2, r3}
  3c01d4: 4638         	mov	r0, r7
  3c01d6: f247 5130    	movw	r1, #0x7530
  3c01da: 47b0         	blx	r6
  3c01dc: ab0a         	add	r3, sp, #0x28
  3c01de: 4618         	mov	r0, r3
  3c01e0: f241 01e1    	movw	r1, #0x10e1
  3c01e4: 2200         	movs	r2, #0x0
  3c01e6: f0e3 fd87    	bl	0x4a3cf8 <RakNet::SocketDescriptor::SocketDescriptor(unsigned short, char const*)> @ imm = #0xe3b0e
  3c01ea: 2302         	movs	r3, #0x2
  3c01ec: f8ad 304a    	strh.w	r3, [sp, #0x4a]
  3c01f0: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x3c05c0 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb78>
  3c01f2: 447b         	add	r3, pc
  3c01f4: 681b         	ldr	r3, [r3]
  3c01f6: 681b         	ldr	r3, [r3]
  3c01f8: 3308         	adds	r3, #0x8
  3c01fa: 681b         	ldr	r3, [r3]
  3c01fc: 4af1         	ldr	r2, [pc, #0x3c4]        @ 0x3c05c4 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb7c>
  3c01fe: 447a         	add	r2, pc
  3c0200: 6811         	ldr	r1, [r2]
  3c0202: f89d 2013    	ldrb.w	r2, [sp, #0x13]
  3c0206: 4608         	mov	r0, r1
  3c0208: 4611         	mov	r1, r2
  3c020a: 4798         	blx	r3
  3c020c: 4bee         	ldr	r3, [pc, #0x3b8]        @ 0x3c05c8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb80>
  3c020e: 447b         	add	r3, pc
  3c0210: 681b         	ldr	r3, [r3]
  3c0212: 681b         	ldr	r3, [r3]
  3c0214: 330c         	adds	r3, #0xc
  3c0216: 681c         	ldr	r4, [r3]
  3c0218: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3c05cc <RakNetDelegate::conditionalInitRakPeer(bool)+0xb84>
  3c021a: 447b         	add	r3, pc
  3c021c: 6819         	ldr	r1, [r3]
  3c021e: aa0a         	add	r2, sp, #0x28
  3c0220: f647 1361    	movw	r3, #0x7961
  3c0224: f6cf 73fe    	movt	r3, #0xfffe
  3c0228: 9300         	str	r3, [sp]
  3c022a: 4608         	mov	r0, r1
  3c022c: 2118         	movs	r1, #0x18
  3c022e: 2301         	movs	r3, #0x1
  3c0230: 47a0         	blx	r4
  3c0232: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x3c05d0 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb88>
  3c0234: 447b         	add	r3, pc
  3c0236: 681b         	ldr	r3, [r3]
  3c0238: 681b         	ldr	r3, [r3]
  3c023a: 33b4         	adds	r3, #0xb4
  3c023c: 681b         	ldr	r3, [r3]
  3c023e: 4ae5         	ldr	r2, [pc, #0x394]        @ 0x3c05d4 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb8c>
  3c0240: 447a         	add	r2, pc
  3c0242: 6812         	ldr	r2, [r2]
  3c0244: 4610         	mov	r0, r2
  3c0246: 2101         	movs	r1, #0x1
  3c0248: 4798         	blx	r3
  3c024a: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x3c05d8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb90>
  3c024c: 447b         	add	r3, pc
  3c024e: 681b         	ldr	r3, [r3]
  3c0250: 681b         	ldr	r3, [r3]
  3c0252: 3324         	adds	r3, #0x24
  3c0254: 681b         	ldr	r3, [r3]
  3c0256: 4ae1         	ldr	r2, [pc, #0x384]        @ 0x3c05dc <RakNetDelegate::conditionalInitRakPeer(bool)+0xb94>
  3c0258: 447a         	add	r2, pc
  3c025a: 6812         	ldr	r2, [r2]
  3c025c: 4610         	mov	r0, r2
  3c025e: 2118         	movs	r1, #0x18
  3c0260: 4798         	blx	r3
  3c0262: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x3c05e0 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb98>
  3c0264: 447b         	add	r3, pc
  3c0266: 681b         	ldr	r3, [r3]
  3c0268: 681b         	ldr	r3, [r3]
  3c026a: f503 7386    	add.w	r3, r3, #0x10c
  3c026e: 681b         	ldr	r3, [r3]
  3c0270: 4adc         	ldr	r2, [pc, #0x370]        @ 0x3c05e4 <RakNetDelegate::conditionalInitRakPeer(bool)+0xb9c>
  3c0272: 447a         	add	r2, pc
  3c0274: 6812         	ldr	r2, [r2]
  3c0276: 4610         	mov	r0, r2
  3c0278: f44f 712f    	mov.w	r1, #0x2bc
  3c027c: 4798         	blx	r3
  3c027e: f44f 70d0    	mov.w	r0, #0x1a0
  3c0282: f3c7 fb6f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3c76de
  3c0286: 4603         	mov	r3, r0
  3c0288: 461c         	mov	r4, r3
  3c028a: 4620         	mov	r0, r4
  3c028c: f0cd ff38    	bl	0x48e100 <RakNet::NatPunchthroughClient::NatPunchthroughClient()> @ imm = #0xcde70
  3c0290: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x3c05e8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xba0>
  3c0292: 447b         	add	r3, pc
  3c0294: 601c         	str	r4, [r3]
  3c0296: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x3c05ec <RakNetDelegate::conditionalInitRakPeer(bool)+0xba4>
  3c0298: 447b         	add	r3, pc
  3c029a: 681b         	ldr	r3, [r3]
  3c029c: 681b         	ldr	r3, [r3]
  3c029e: f503 738a    	add.w	r3, r3, #0x114
  3c02a2: 681b         	ldr	r3, [r3]
  3c02a4: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x3c05f0 <RakNetDelegate::conditionalInitRakPeer(bool)+0xba8>
  3c02a6: 447a         	add	r2, pc
  3c02a8: 6811         	ldr	r1, [r2]
  3c02aa: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x3c05f4 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbac>
  3c02ac: 447a         	add	r2, pc
  3c02ae: 6812         	ldr	r2, [r2]
  3c02b0: 4608         	mov	r0, r1
  3c02b2: 4611         	mov	r1, r2
  3c02b4: 4798         	blx	r3
  3c02b6: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x3c05f8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbb0>
  3c02b8: 447b         	add	r3, pc
  3c02ba: 681b         	ldr	r3, [r3]
  3c02bc: 4618         	mov	r0, r3
  3c02be: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x3c05fc <RakNetDelegate::conditionalInitRakPeer(bool)+0xbb4>
  3c02c0: 447b         	add	r3, pc
  3c02c2: 4619         	mov	r1, r3
  3c02c4: f0ce f8da    	bl	0x48e47c <RakNet::NatPunchthroughClient::SetDebugInterface(RakNet::NatPunchthroughDebugInterface*)> @ imm = #0xce1b4
  3c02c8: 201c         	movs	r0, #0x1c
  3c02ca: f3c7 fb4b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3c7696
  3c02ce: 4603         	mov	r3, r0
  3c02d0: 461c         	mov	r4, r3
  3c02d2: 4620         	mov	r0, r4
  3c02d4: f12d ffbc    	bl	0x4ee250 <RakNet::UDPProxyClient::UDPProxyClient()> @ imm = #0x12df78
  3c02d8: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3c0600 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbb8>
  3c02da: 447b         	add	r3, pc
  3c02dc: 601c         	str	r4, [r3]
  3c02de: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3c0604 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbbc>
  3c02e0: 447b         	add	r3, pc
  3c02e2: 681b         	ldr	r3, [r3]
  3c02e4: 681b         	ldr	r3, [r3]
  3c02e6: f503 738a    	add.w	r3, r3, #0x114
  3c02ea: 681b         	ldr	r3, [r3]
  3c02ec: 4ac6         	ldr	r2, [pc, #0x318]        @ 0x3c0608 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbc0>
  3c02ee: 447a         	add	r2, pc
  3c02f0: 6811         	ldr	r1, [r2]
  3c02f2: 4ac6         	ldr	r2, [pc, #0x318]        @ 0x3c060c <RakNetDelegate::conditionalInitRakPeer(bool)+0xbc4>
  3c02f4: 447a         	add	r2, pc
  3c02f6: 6812         	ldr	r2, [r2]
  3c02f8: 4608         	mov	r0, r1
  3c02fa: 4611         	mov	r1, r2
  3c02fc: 4798         	blx	r3
  3c02fe: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x3c0610 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbc8>
  3c0300: 447b         	add	r3, pc
  3c0302: 681b         	ldr	r3, [r3]
  3c0304: 4618         	mov	r0, r3
  3c0306: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x3c0614 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbcc>
  3c0308: 447b         	add	r3, pc
  3c030a: 4619         	mov	r1, r3
  3c030c: f12d fffa    	bl	0x4ee304 <RakNet::UDPProxyClient::SetResultHandler(RakNet::UDPProxyClientResultHandler*)> @ imm = #0x12dff4
  3c0310: e1c7         	b	0x3c06a2 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc5a> @ imm = #0x38e
  3c0312: ab08         	add	r3, sp, #0x20
  3c0314: 4618         	mov	r0, r3
  3c0316: f7ba f963    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45d3a
  3c031a: e7ff         	b	0x3c031c <RakNetDelegate::conditionalInitRakPeer(bool)+0x8d4> @ imm = #-0x2
  3c031c: ab07         	add	r3, sp, #0x1c
  3c031e: 4618         	mov	r0, r3
  3c0320: f3ca f86c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca0d8
  3c0324: e7ff         	b	0x3c0326 <RakNetDelegate::conditionalInitRakPeer(bool)+0x8de> @ imm = #-0x2
  3c0326: ab06         	add	r3, sp, #0x18
  3c0328: 4618         	mov	r0, r3
  3c032a: f3ca f867    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca0ce
  3c032e: f3c7 febd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7d7a
  3c0332: ab08         	add	r3, sp, #0x20
  3c0334: 4618         	mov	r0, r3
  3c0336: f7ba f953    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45d5a
  3c033a: e7ff         	b	0x3c033c <RakNetDelegate::conditionalInitRakPeer(bool)+0x8f4> @ imm = #-0x2
  3c033c: ab07         	add	r3, sp, #0x1c
  3c033e: 4618         	mov	r0, r3
  3c0340: f3ca f85c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca0b8
  3c0344: e7ff         	b	0x3c0346 <RakNetDelegate::conditionalInitRakPeer(bool)+0x8fe> @ imm = #-0x2
  3c0346: ab06         	add	r3, sp, #0x18
  3c0348: 4618         	mov	r0, r3
  3c034a: f3ca f857    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca0ae
  3c034e: f3c7 fead    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7d5a
  3c0352: ab08         	add	r3, sp, #0x20
  3c0354: 4618         	mov	r0, r3
  3c0356: f7ba f943    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45d7a
  3c035a: e7ff         	b	0x3c035c <RakNetDelegate::conditionalInitRakPeer(bool)+0x914> @ imm = #-0x2
  3c035c: ab07         	add	r3, sp, #0x1c
  3c035e: 4618         	mov	r0, r3
  3c0360: f3ca f84c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca098
  3c0364: e7ff         	b	0x3c0366 <RakNetDelegate::conditionalInitRakPeer(bool)+0x91e> @ imm = #-0x2
  3c0366: ab06         	add	r3, sp, #0x18
  3c0368: 4618         	mov	r0, r3
  3c036a: f3ca f847    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca08e
  3c036e: f3c7 fe9d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7d3a
  3c0372: ab08         	add	r3, sp, #0x20
  3c0374: 4618         	mov	r0, r3
  3c0376: f7ba f933    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45d9a
  3c037a: e7ff         	b	0x3c037c <RakNetDelegate::conditionalInitRakPeer(bool)+0x934> @ imm = #-0x2
  3c037c: ab07         	add	r3, sp, #0x1c
  3c037e: 4618         	mov	r0, r3
  3c0380: f3ca f83c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca078
  3c0384: e7ff         	b	0x3c0386 <RakNetDelegate::conditionalInitRakPeer(bool)+0x93e> @ imm = #-0x2
  3c0386: ab06         	add	r3, sp, #0x18
  3c0388: 4618         	mov	r0, r3
  3c038a: f3ca f837    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca06e
  3c038e: f3c7 fe8d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7d1a
  3c0392: ab08         	add	r3, sp, #0x20
  3c0394: 4618         	mov	r0, r3
  3c0396: f7ba f923    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45dba
  3c039a: e7ff         	b	0x3c039c <RakNetDelegate::conditionalInitRakPeer(bool)+0x954> @ imm = #-0x2
  3c039c: ab07         	add	r3, sp, #0x1c
  3c039e: 4618         	mov	r0, r3
  3c03a0: f3ca f82c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca058
  3c03a4: e7ff         	b	0x3c03a6 <RakNetDelegate::conditionalInitRakPeer(bool)+0x95e> @ imm = #-0x2
  3c03a6: ab06         	add	r3, sp, #0x18
  3c03a8: 4618         	mov	r0, r3
  3c03aa: f3ca f827    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca04e
  3c03ae: f3c7 fe7d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7cfa
  3c03b2: ab08         	add	r3, sp, #0x20
  3c03b4: 4618         	mov	r0, r3
  3c03b6: f7ba f913    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45dda
  3c03ba: e7ff         	b	0x3c03bc <RakNetDelegate::conditionalInitRakPeer(bool)+0x974> @ imm = #-0x2
  3c03bc: ab07         	add	r3, sp, #0x1c
  3c03be: 4618         	mov	r0, r3
  3c03c0: f3ca f81c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca038
  3c03c4: e7ff         	b	0x3c03c6 <RakNetDelegate::conditionalInitRakPeer(bool)+0x97e> @ imm = #-0x2
  3c03c6: ab06         	add	r3, sp, #0x18
  3c03c8: 4618         	mov	r0, r3
  3c03ca: f3ca f817    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca02e
  3c03ce: f3c7 fe6d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7cda
  3c03d2: ab08         	add	r3, sp, #0x20
  3c03d4: 4618         	mov	r0, r3
  3c03d6: f7ba f903    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45dfa
  3c03da: e7ff         	b	0x3c03dc <RakNetDelegate::conditionalInitRakPeer(bool)+0x994> @ imm = #-0x2
  3c03dc: ab07         	add	r3, sp, #0x1c
  3c03de: 4618         	mov	r0, r3
  3c03e0: f3ca f80c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca018
  3c03e4: e7ff         	b	0x3c03e6 <RakNetDelegate::conditionalInitRakPeer(bool)+0x99e> @ imm = #-0x2
  3c03e6: ab06         	add	r3, sp, #0x18
  3c03e8: 4618         	mov	r0, r3
  3c03ea: f3ca f807    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ca00e
  3c03ee: f3c7 fe5d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7cba
  3c03f2: ab08         	add	r3, sp, #0x20
  3c03f4: 4618         	mov	r0, r3
  3c03f6: f7ba f8f3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45e1a
  3c03fa: e7ff         	b	0x3c03fc <RakNetDelegate::conditionalInitRakPeer(bool)+0x9b4> @ imm = #-0x2
  3c03fc: ab07         	add	r3, sp, #0x1c
  3c03fe: 4618         	mov	r0, r3
  3c0400: f3c9 fffc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9ff8
  3c0404: e7ff         	b	0x3c0406 <RakNetDelegate::conditionalInitRakPeer(bool)+0x9be> @ imm = #-0x2
  3c0406: ab06         	add	r3, sp, #0x18
  3c0408: 4618         	mov	r0, r3
  3c040a: f3c9 fff7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9fee
  3c040e: f3c7 fe4d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7c9a
  3c0412: ab08         	add	r3, sp, #0x20
  3c0414: 4618         	mov	r0, r3
  3c0416: f7ba f8e3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45e3a
  3c041a: e7ff         	b	0x3c041c <RakNetDelegate::conditionalInitRakPeer(bool)+0x9d4> @ imm = #-0x2
  3c041c: ab07         	add	r3, sp, #0x1c
  3c041e: 4618         	mov	r0, r3
  3c0420: f3c9 ffec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9fd8
  3c0424: e7ff         	b	0x3c0426 <RakNetDelegate::conditionalInitRakPeer(bool)+0x9de> @ imm = #-0x2
  3c0426: ab06         	add	r3, sp, #0x18
  3c0428: 4618         	mov	r0, r3
  3c042a: f3c9 ffe7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9fce
  3c042e: f3c7 fe3d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7c7a
  3c0432: ab08         	add	r3, sp, #0x20
  3c0434: 4618         	mov	r0, r3
  3c0436: f7ba f8d3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45e5a
  3c043a: e7ff         	b	0x3c043c <RakNetDelegate::conditionalInitRakPeer(bool)+0x9f4> @ imm = #-0x2
  3c043c: ab07         	add	r3, sp, #0x1c
  3c043e: 4618         	mov	r0, r3
  3c0440: f3c9 ffdc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9fb8
  3c0444: e7ff         	b	0x3c0446 <RakNetDelegate::conditionalInitRakPeer(bool)+0x9fe> @ imm = #-0x2
  3c0446: ab06         	add	r3, sp, #0x18
  3c0448: 4618         	mov	r0, r3
  3c044a: f3c9 ffd7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9fae
  3c044e: f3c7 fe2d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7c5a
  3c0452: ab08         	add	r3, sp, #0x20
  3c0454: 4618         	mov	r0, r3
  3c0456: f7ba f8c3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45e7a
  3c045a: e7ff         	b	0x3c045c <RakNetDelegate::conditionalInitRakPeer(bool)+0xa14> @ imm = #-0x2
  3c045c: ab07         	add	r3, sp, #0x1c
  3c045e: 4618         	mov	r0, r3
  3c0460: f3c9 ffcc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f98
  3c0464: e7ff         	b	0x3c0466 <RakNetDelegate::conditionalInitRakPeer(bool)+0xa1e> @ imm = #-0x2
  3c0466: ab06         	add	r3, sp, #0x18
  3c0468: 4618         	mov	r0, r3
  3c046a: f3c9 ffc7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f8e
  3c046e: f3c7 fe1d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7c3a
  3c0472: ab08         	add	r3, sp, #0x20
  3c0474: 4618         	mov	r0, r3
  3c0476: f7ba f8b3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45e9a
  3c047a: e7ff         	b	0x3c047c <RakNetDelegate::conditionalInitRakPeer(bool)+0xa34> @ imm = #-0x2
  3c047c: ab07         	add	r3, sp, #0x1c
  3c047e: 4618         	mov	r0, r3
  3c0480: f3c9 ffbc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f78
  3c0484: e7ff         	b	0x3c0486 <RakNetDelegate::conditionalInitRakPeer(bool)+0xa3e> @ imm = #-0x2
  3c0486: ab06         	add	r3, sp, #0x18
  3c0488: 4618         	mov	r0, r3
  3c048a: f3c9 ffb7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f6e
  3c048e: f3c7 fe0d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7c1a
  3c0492: ab08         	add	r3, sp, #0x20
  3c0494: 4618         	mov	r0, r3
  3c0496: f7ba f8a3    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45eba
  3c049a: e7ff         	b	0x3c049c <RakNetDelegate::conditionalInitRakPeer(bool)+0xa54> @ imm = #-0x2
  3c049c: ab07         	add	r3, sp, #0x1c
  3c049e: 4618         	mov	r0, r3
  3c04a0: f3c9 ffac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f58
  3c04a4: e7ff         	b	0x3c04a6 <RakNetDelegate::conditionalInitRakPeer(bool)+0xa5e> @ imm = #-0x2
  3c04a6: ab06         	add	r3, sp, #0x18
  3c04a8: 4618         	mov	r0, r3
  3c04aa: f3c9 ffa7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f4e
  3c04ae: f3c7 fdfd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7bfa
  3c04b2: ab08         	add	r3, sp, #0x20
  3c04b4: 4618         	mov	r0, r3
  3c04b6: f7ba f893    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45eda
  3c04ba: e7ff         	b	0x3c04bc <RakNetDelegate::conditionalInitRakPeer(bool)+0xa74> @ imm = #-0x2
  3c04bc: ab07         	add	r3, sp, #0x1c
  3c04be: 4618         	mov	r0, r3
  3c04c0: f3c9 ff9c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f38
  3c04c4: e7ff         	b	0x3c04c6 <RakNetDelegate::conditionalInitRakPeer(bool)+0xa7e> @ imm = #-0x2
  3c04c6: ab06         	add	r3, sp, #0x18
  3c04c8: 4618         	mov	r0, r3
  3c04ca: f3c9 ff97    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f2e
  3c04ce: f3c7 fded    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7bda
  3c04d2: ab08         	add	r3, sp, #0x20
  3c04d4: 4618         	mov	r0, r3
  3c04d6: f7ba f883    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45efa
  3c04da: e7ff         	b	0x3c04dc <RakNetDelegate::conditionalInitRakPeer(bool)+0xa94> @ imm = #-0x2
  3c04dc: ab07         	add	r3, sp, #0x1c
  3c04de: 4618         	mov	r0, r3
  3c04e0: f3c9 ff8c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f18
  3c04e4: e7ff         	b	0x3c04e6 <RakNetDelegate::conditionalInitRakPeer(bool)+0xa9e> @ imm = #-0x2
  3c04e6: ab06         	add	r3, sp, #0x18
  3c04e8: 4618         	mov	r0, r3
  3c04ea: f3c9 ff87    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9f0e
  3c04ee: f3c7 fddd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7bba
  3c04f2: ab08         	add	r3, sp, #0x20
  3c04f4: 4618         	mov	r0, r3
  3c04f6: f7ba f873    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x45f1a
  3c04fa: e08d         	b	0x3c0618 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbd0> @ imm = #0x11a
  3c04fc: 2fb0         	cmp	r7, #0xb0
  3c04fe: 0057         	lsls	r7, r2, #0x1
  3c0500: d72c         	bvc	0x3c055c <RakNetDelegate::conditionalInitRakPeer(bool)+0xb14> @ imm = #0x58
  3c0502: ffff 199c    	<unknown>
  3c0506: 0058         	lsls	r0, r3, #0x1
  3c0508: 1978         	adds	r0, r7, r5
  3c050a: 0058         	lsls	r0, r3, #0x1
  3c050c: 577c         	ldrsb	r4, [r7, r5]
  3c050e: 0041         	lsls	r1, r0, #0x1
  3c0510: 577a         	ldrsb	r2, [r7, r5]
  3c0512: 0041         	lsls	r1, r0, #0x1
  3c0514: 5744         	ldrsb	r4, [r0, r5]
  3c0516: 0041         	lsls	r1, r0, #0x1
  3c0518: 5742         	ldrsb	r2, [r0, r5]
  3c051a: 0041         	lsls	r1, r0, #0x1
  3c051c: 570c         	ldrsb	r4, [r1, r4]
  3c051e: 0041         	lsls	r1, r0, #0x1
  3c0520: 570a         	ldrsb	r2, [r1, r4]
  3c0522: 0041         	lsls	r1, r0, #0x1
  3c0524: 56d4         	ldrsb	r4, [r2, r3]
  3c0526: 0041         	lsls	r1, r0, #0x1
  3c0528: 56d2         	ldrsb	r2, [r2, r3]
  3c052a: 0041         	lsls	r1, r0, #0x1
  3c052c: 569c         	ldrsb	r4, [r3, r2]
  3c052e: 0041         	lsls	r1, r0, #0x1
  3c0530: 569a         	ldrsb	r2, [r3, r2]
  3c0532: 0041         	lsls	r1, r0, #0x1
  3c0534: 5664         	ldrsb	r4, [r4, r1]
  3c0536: 0041         	lsls	r1, r0, #0x1
  3c0538: 5662         	ldrsb	r2, [r4, r1]
  3c053a: 0041         	lsls	r1, r0, #0x1
  3c053c: 562c         	ldrsb	r4, [r5, r0]
  3c053e: 0041         	lsls	r1, r0, #0x1
  3c0540: 562a         	ldrsb	r2, [r5, r0]
  3c0542: 0041         	lsls	r1, r0, #0x1
  3c0544: 55f4         	strb	r4, [r6, r7]
  3c0546: 0041         	lsls	r1, r0, #0x1
  3c0548: 55f2         	strb	r2, [r6, r7]
  3c054a: 0041         	lsls	r1, r0, #0x1
  3c054c: 55bc         	strb	r4, [r7, r6]
  3c054e: 0041         	lsls	r1, r0, #0x1
  3c0550: 55ba         	strb	r2, [r7, r6]
  3c0552: 0041         	lsls	r1, r0, #0x1
  3c0554: 5580         	strb	r0, [r0, r6]
  3c0556: 0041         	lsls	r1, r0, #0x1
  3c0558: 557e         	strb	r6, [r7, r5]
  3c055a: 0041         	lsls	r1, r0, #0x1
  3c055c: 5544         	strb	r4, [r0, r5]
  3c055e: 0041         	lsls	r1, r0, #0x1
  3c0560: 5472         	strb	r2, [r6, r1]
  3c0562: 0041         	lsls	r1, r0, #0x1
  3c0564: 5504         	strb	r4, [r0, r4]
  3c0566: 0041         	lsls	r1, r0, #0x1
  3c0568: 5502         	strb	r2, [r0, r4]
  3c056a: 0041         	lsls	r1, r0, #0x1
  3c056c: 54c8         	strb	r0, [r1, r3]
  3c056e: 0041         	lsls	r1, r0, #0x1
  3c0570: 54c6         	strb	r6, [r0, r3]
  3c0572: 0041         	lsls	r1, r0, #0x1
  3c0574: 548c         	strb	r4, [r1, r2]
  3c0576: 0041         	lsls	r1, r0, #0x1
  3c0578: 548a         	strb	r2, [r1, r2]
  3c057a: 0041         	lsls	r1, r0, #0x1
  3c057c: 5450         	strb	r0, [r2, r1]
  3c057e: 0041         	lsls	r1, r0, #0x1
  3c0580: 5452         	strb	r2, [r2, r1]
  3c0582: 0041         	lsls	r1, r0, #0x1
  3c0584: 5418         	strb	r0, [r3, r0]
  3c0586: 0041         	lsls	r1, r0, #0x1
  3c0588: 541a         	strb	r2, [r3, r0]
  3c058a: 0041         	lsls	r1, r0, #0x1
  3c058c: 53e4         	strh	r4, [r4, r7]
  3c058e: 0041         	lsls	r1, r0, #0x1
  3c0590: 52fa         	strh	r2, [r7, r3]
  3c0592: 0041         	lsls	r1, r0, #0x1
  3c0594: 53a8         	strh	r0, [r5, r6]
  3c0596: 0041         	lsls	r1, r0, #0x1
  3c0598: 53aa         	strh	r2, [r5, r6]
  3c059a: 0041         	lsls	r1, r0, #0x1
  3c059c: 5370         	strh	r0, [r6, r5]
  3c059e: 0041         	lsls	r1, r0, #0x1
  3c05a0: 536e         	strh	r6, [r5, r5]
  3c05a2: 0041         	lsls	r1, r0, #0x1
  3c05a4: 127e         	asrs	r6, r7, #0x9
  3c05a6: 0058         	lsls	r0, r3, #0x1
  3c05a8: 1276         	asrs	r6, r6, #0x9
  3c05aa: 0058         	lsls	r0, r3, #0x1
  3c05ac: 1268         	asrs	r0, r5, #0x9
  3c05ae: 0058         	lsls	r0, r3, #0x1
  3c05b0: 4e3a         	ldr	r6, [pc, #0xe8]         @ 0x3c069c <RakNetDelegate::conditionalInitRakPeer(bool)+0xc54>
  3c05b2: 0041         	lsls	r1, r0, #0x1
  3c05b4: 1252         	asrs	r2, r2, #0x9
  3c05b6: 0058         	lsls	r0, r3, #0x1
  3c05b8: 1246         	asrs	r6, r0, #0x9
  3c05ba: 0058         	lsls	r0, r3, #0x1
  3c05bc: 11fc         	asrs	r4, r7, #0x7
  3c05be: 0058         	lsls	r0, r3, #0x1
  3c05c0: 1212         	asrs	r2, r2, #0x8
  3c05c2: 0058         	lsls	r0, r3, #0x1
  3c05c4: 1206         	asrs	r6, r0, #0x8
  3c05c6: 0058         	lsls	r0, r3, #0x1
  3c05c8: 11f6         	asrs	r6, r6, #0x7
  3c05ca: 0058         	lsls	r0, r3, #0x1
  3c05cc: 11ea         	asrs	r2, r5, #0x7
  3c05ce: 0058         	lsls	r0, r3, #0x1
  3c05d0: 11d0         	asrs	r0, r2, #0x7
  3c05d2: 0058         	lsls	r0, r3, #0x1
  3c05d4: 11c4         	asrs	r4, r0, #0x7
  3c05d6: 0058         	lsls	r0, r3, #0x1
  3c05d8: 11b8         	asrs	r0, r7, #0x6
  3c05da: 0058         	lsls	r0, r3, #0x1
  3c05dc: 11ac         	asrs	r4, r5, #0x6
  3c05de: 0058         	lsls	r0, r3, #0x1
  3c05e0: 11a0         	asrs	r0, r4, #0x6
  3c05e2: 0058         	lsls	r0, r3, #0x1
  3c05e4: 1192         	asrs	r2, r2, #0x6
  3c05e6: 0058         	lsls	r0, r3, #0x1
  3c05e8: 117a         	asrs	r2, r7, #0x5
  3c05ea: 0058         	lsls	r0, r3, #0x1
  3c05ec: 116c         	asrs	r4, r5, #0x5
  3c05ee: 0058         	lsls	r0, r3, #0x1
  3c05f0: 115e         	asrs	r6, r3, #0x5
  3c05f2: 0058         	lsls	r0, r3, #0x1
  3c05f4: 1160         	asrs	r0, r4, #0x5
  3c05f6: 0058         	lsls	r0, r3, #0x1
  3c05f8: 1154         	asrs	r4, r2, #0x5
  3c05fa: 0058         	lsls	r0, r3, #0x1
  3c05fc: 1210         	asrs	r0, r2, #0x8
  3c05fe: 0058         	lsls	r0, r3, #0x1
  3c0600: 1136         	asrs	r6, r6, #0x4
  3c0602: 0058         	lsls	r0, r3, #0x1
  3c0604: 1124         	asrs	r4, r4, #0x4
  3c0606: 0058         	lsls	r0, r3, #0x1
  3c0608: 1116         	asrs	r6, r2, #0x4
  3c060a: 0058         	lsls	r0, r3, #0x1
  3c060c: 111c         	asrs	r4, r3, #0x4
  3c060e: 0058         	lsls	r0, r3, #0x1
  3c0610: 1110         	asrs	r0, r2, #0x4
  3c0612: 0058         	lsls	r0, r3, #0x1
  3c0614: 11cc         	asrs	r4, r1, #0x7
  3c0616: 0058         	lsls	r0, r3, #0x1
  3c0618: ab07         	add	r3, sp, #0x1c
  3c061a: 4618         	mov	r0, r3
  3c061c: f3c9 feee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9ddc
  3c0620: e7ff         	b	0x3c0622 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbda> @ imm = #-0x2
  3c0622: ab06         	add	r3, sp, #0x18
  3c0624: 4618         	mov	r0, r3
  3c0626: f3c9 fee9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9dd2
  3c062a: f3c7 fd3f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7a7e
  3c062e: ab08         	add	r3, sp, #0x20
  3c0630: 4618         	mov	r0, r3
  3c0632: f7b9 ffd5    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x46056
  3c0636: e7ff         	b	0x3c0638 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbf0> @ imm = #-0x2
  3c0638: ab07         	add	r3, sp, #0x1c
  3c063a: 4618         	mov	r0, r3
  3c063c: f3c9 fede    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9dbc
  3c0640: e7ff         	b	0x3c0642 <RakNetDelegate::conditionalInitRakPeer(bool)+0xbfa> @ imm = #-0x2
  3c0642: ab06         	add	r3, sp, #0x18
  3c0644: 4618         	mov	r0, r3
  3c0646: f3c9 fed9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9db2
  3c064a: f3c7 fd2f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7a5e
  3c064e: ab08         	add	r3, sp, #0x20
  3c0650: 4618         	mov	r0, r3
  3c0652: f7b9 ffc5    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x46076
  3c0656: e7ff         	b	0x3c0658 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc10> @ imm = #-0x2
  3c0658: ab07         	add	r3, sp, #0x1c
  3c065a: 4618         	mov	r0, r3
  3c065c: f3c9 fece    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9d9c
  3c0660: e7ff         	b	0x3c0662 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc1a> @ imm = #-0x2
  3c0662: ab06         	add	r3, sp, #0x18
  3c0664: 4618         	mov	r0, r3
  3c0666: f3c9 fec9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9d92
  3c066a: f3c7 fd1f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7a3e
  3c066e: ab08         	add	r3, sp, #0x20
  3c0670: 4618         	mov	r0, r3
  3c0672: f7b9 ffb5    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x46096
  3c0676: e7ff         	b	0x3c0678 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc30> @ imm = #-0x2
  3c0678: ab07         	add	r3, sp, #0x1c
  3c067a: 4618         	mov	r0, r3
  3c067c: f3c9 febe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9d7c
  3c0680: e7ff         	b	0x3c0682 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc3a> @ imm = #-0x2
  3c0682: ab06         	add	r3, sp, #0x18
  3c0684: 4618         	mov	r0, r3
  3c0686: f3c9 feb9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9d72
  3c068a: f3c7 fd0f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7a1e
  3c068e: 4620         	mov	r0, r4
  3c0690: f3c7 fd08    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c7a10
  3c0694: f3c7 fd0a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7a14
  3c0698: 4620         	mov	r0, r4
  3c069a: f3c7 fd03    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c7a06
  3c069e: f3c7 fd05    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7a0a
  3c06a2: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c06b8 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc70>
  3c06a4: 58eb         	ldr	r3, [r5, r3]
  3c06a6: 9a17         	ldr	r2, [sp, #0x5c]
  3c06a8: 681b         	ldr	r3, [r3]
  3c06aa: 429a         	cmp	r2, r3
  3c06ac: d001         	beq	0x3c06b2 <RakNetDelegate::conditionalInitRakPeer(bool)+0xc6a> @ imm = #0x2
  3c06ae: f715 ec5c    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xea748
  3c06b2: b019         	add	sp, #0x64
  3c06b4: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c06b5); words below are literal-pool data ---
  3c06b6: bf00         	nop
  3c06b8: d72c         	bvc	0x3c0714 <openUPNP()+0x58> @ imm = #0x58
  3c06ba: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== RakNetDelegate::connectToLANServer
//      file offset 0x3c07e8 (= ELF address; Ghidra 0x3d07e8), 276 bytes, Thumb-2
  3c07e8: b570         	push	{r4, r5, r6, lr}
  3c07ea: b092         	sub	sp, #0x48
  3c07ec: 9009         	str	r0, [sp, #0x24]
  3c07ee: 9108         	str	r1, [sp, #0x20]
  3c07f0: 9207         	str	r2, [sp, #0x1c]
  3c07f2: 4c38         	ldr	r4, [pc, #0xe0]         @ 0x3c08d4 <RakNetDelegate::connectToLANServer(std::string, int)+0xec>
  3c07f4: 447c         	add	r4, pc
  3c07f6: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x3c08d8 <RakNetDelegate::connectToLANServer(std::string, int)+0xf0>
  3c07f8: 58e3         	ldr	r3, [r4, r3]
  3c07fa: 681b         	ldr	r3, [r3]
  3c07fc: 9311         	str	r3, [sp, #0x44]
  3c07fe: 9809         	ldr	r0, [sp, #0x24]
  3c0800: 2100         	movs	r1, #0x0
  3c0802: f7ff f921    	bl	0x3bfa48 <RakNetDelegate::conditionalInitRakPeer(bool)> @ imm = #-0xdbe
  3c0806: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x3c08dc <RakNetDelegate::connectToLANServer(std::string, int)+0xf4>
  3c0808: 447b         	add	r3, pc
  3c080a: 2201         	movs	r2, #0x1
  3c080c: 701a         	strb	r2, [r3]
  3c080e: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3c08e0 <RakNetDelegate::connectToLANServer(std::string, int)+0xf8>
  3c0810: 447b         	add	r3, pc
  3c0812: 681b         	ldr	r3, [r3]
  3c0814: 681b         	ldr	r3, [r3]
  3c0816: 3338         	adds	r3, #0x38
  3c0818: 681d         	ldr	r5, [r3]
  3c081a: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3c08e4 <RakNetDelegate::connectToLANServer(std::string, int)+0xfc>
  3c081c: 447b         	add	r3, pc
  3c081e: 681e         	ldr	r6, [r3]
  3c0820: 9808         	ldr	r0, [sp, #0x20]
  3c0822: f3f4 fd6d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f4ada
  3c0826: 4602         	mov	r2, r0
  3c0828: 9b07         	ldr	r3, [sp, #0x1c]
  3c082a: b29b         	uxth	r3, r3
  3c082c: 2111         	movs	r1, #0x11
  3c082e: 9100         	str	r1, [sp]
  3c0830: 2100         	movs	r1, #0x0
  3c0832: 9101         	str	r1, [sp, #0x4]
  3c0834: 2100         	movs	r1, #0x0
  3c0836: 9102         	str	r1, [sp, #0x8]
  3c0838: 210c         	movs	r1, #0xc
  3c083a: 9103         	str	r1, [sp, #0xc]
  3c083c: f44f 71fa    	mov.w	r1, #0x1f4
  3c0840: 9104         	str	r1, [sp, #0x10]
  3c0842: 2100         	movs	r1, #0x0
  3c0844: 9105         	str	r1, [sp, #0x14]
  3c0846: 4630         	mov	r0, r6
  3c0848: 4611         	mov	r1, r2
  3c084a: 461a         	mov	r2, r3
  3c084c: 4b26         	ldr	r3, [pc, #0x98]         @ 0x3c08e8 <RakNetDelegate::connectToLANServer(std::string, int)+0x100>
  3c084e: 447b         	add	r3, pc
  3c0850: 47a8         	blx	r5
  3c0852: 4603         	mov	r3, r0
  3c0854: 930b         	str	r3, [sp, #0x2c]
  3c0856: 9808         	ldr	r0, [sp, #0x20]
  3c0858: f3f4 fd52    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f4aa4
  3c085c: 4602         	mov	r2, r0
  3c085e: 9b07         	ldr	r3, [sp, #0x1c]
  3c0860: b29b         	uxth	r3, r3
  3c0862: a90c         	add	r1, sp, #0x30
  3c0864: 4608         	mov	r0, r1
  3c0866: 4611         	mov	r1, r2
  3c0868: 461a         	mov	r2, r3
  3c086a: f0e3 fcc5    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe398a
  3c086e: ab0c         	add	r3, sp, #0x30
  3c0870: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x3c08ec <RakNetDelegate::connectToLANServer(std::string, int)+0x104>
  3c0872: 447a         	add	r2, pc
  3c0874: 4610         	mov	r0, r2
  3c0876: 4619         	mov	r1, r3
  3c0878: f0e3 fa68    	bl	0x4a3d4c <RakNet::SystemAddress::operator=(RakNet::SystemAddress const&)> @ imm = #0xe34d0
  3c087c: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3c08f0 <RakNetDelegate::connectToLANServer(std::string, int)+0x108>
  3c087e: 447b         	add	r3, pc
  3c0880: 4618         	mov	r0, r3
  3c0882: 2101         	movs	r1, #0x1
  3c0884: 227c         	movs	r2, #0x7c
  3c0886: f0e3 fc29    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe3852
  3c088a: 4605         	mov	r5, r0
  3c088c: 9808         	ldr	r0, [sp, #0x20]
  3c088e: f3f4 fd37    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f4a6e
  3c0892: 4603         	mov	r3, r0
  3c0894: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3c08f4 <RakNetDelegate::connectToLANServer(std::string, int)+0x10c>
  3c0896: 447a         	add	r2, pc
  3c0898: 4610         	mov	r0, r2
  3c089a: 4629         	mov	r1, r5
  3c089c: 461a         	mov	r2, r3
  3c089e: f715 ebac    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xea8a8
  3c08a2: 9b0b         	ldr	r3, [sp, #0x2c]
  3c08a4: 2b00         	cmp	r3, #0x0
  3c08a6: d00a         	beq	0x3c08be <RakNetDelegate::connectToLANServer(std::string, int)+0xd6> @ imm = #0x14
  3c08a8: 9b0b         	ldr	r3, [sp, #0x2c]
  3c08aa: 2b04         	cmp	r3, #0x4
  3c08ac: d007         	beq	0x3c08be <RakNetDelegate::connectToLANServer(std::string, int)+0xd6> @ imm = #0xe
  3c08ae: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3c08f8 <RakNetDelegate::connectToLANServer(std::string, int)+0x110>
  3c08b0: 447b         	add	r3, pc
  3c08b2: 4618         	mov	r0, r3
  3c08b4: f715 eba0    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xea8c0
  3c08b8: 9809         	ldr	r0, [sp, #0x24]
  3c08ba: f001 fdd7    	bl	0x3c246c <RakNetDelegate::shutdown()> @ imm = #0x1bae
  3c08be: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c08d8 <RakNetDelegate::connectToLANServer(std::string, int)+0xf0>
  3c08c0: 58e3         	ldr	r3, [r4, r3]
  3c08c2: 9a11         	ldr	r2, [sp, #0x44]
  3c08c4: 681b         	ldr	r3, [r3]
  3c08c6: 429a         	cmp	r2, r3
  3c08c8: d001         	beq	0x3c08ce <RakNetDelegate::connectToLANServer(std::string, int)+0xe6> @ imm = #0x2
  3c08ca: f715 eb4e    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xea964
  3c08ce: b012         	add	sp, #0x48
  3c08d0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3c08d1); words below are literal-pool data ---
  3c08d2: bf00         	nop
  3c08d4: 2214         	movs	r2, #0x14
  3c08d6: 0057         	lsls	r7, r2, #0x1
  3c08d8: d72c         	bvc	0x3c0934 <RakNetDelegate::connectToServer(bool)+0x38> @ imm = #0x58
  3c08da: ffff 0bfb    	<unknown>
  3c08de: 0058         	lsls	r0, r3, #0x1
  3c08e0: 0bf4         	lsrs	r4, r6, #0xf
  3c08e2: 0058         	lsls	r0, r3, #0x1
  3c08e4: 0be8         	lsrs	r0, r5, #0xf
  3c08e6: 0058         	lsls	r0, r3, #0x1
  3c08e8: 4ca2         	ldr	r4, [pc, #0x288]        @ 0x3c0b74 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0x44>
  3c08ea: 0041         	lsls	r1, r0, #0x1
  3c08ec: 0bb2         	lsrs	r2, r6, #0xe
  3c08ee: 0058         	lsls	r0, r3, #0x1
  3c08f0: 0ba6         	lsrs	r6, r4, #0xe
  3c08f2: 0058         	lsls	r0, r3, #0x1
  3c08f4: 4c6e         	ldr	r4, [pc, #0x1b8]        @ 0x3c0ab0 <RakNetDelegate::connectToServer(bool)+0x1b4>
  3c08f6: 0041         	lsls	r1, r0, #0x1
  3c08f8: 4c80         	ldr	r4, [pc, #0x200]        @ 0x3c0afc <RakNetDelegate::connectToServer(bool)+0x200>
  3c08fa: 0041         	lsls	r1, r0, #0x1

// ==== RakNetDelegate::connectToServer
//      file offset 0x3c08fc (= ELF address; Ghidra 0x3d08fc), 564 bytes, Thumb-2
  3c08fc: b570         	push	{r4, r5, r6, lr}
  3c08fe: b090         	sub	sp, #0x40
  3c0900: 9007         	str	r0, [sp, #0x1c]
  3c0902: 460b         	mov	r3, r1
  3c0904: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3c0908: 4c6d         	ldr	r4, [pc, #0x1b4]        @ 0x3c0ac0 <RakNetDelegate::connectToServer(bool)+0x1c4>
  3c090a: 447c         	add	r4, pc
  3c090c: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x3c0ac4 <RakNetDelegate::connectToServer(bool)+0x1c8>
  3c090e: 58e3         	ldr	r3, [r4, r3]
  3c0910: 681b         	ldr	r3, [r3]
  3c0912: 930f         	str	r3, [sp, #0x3c]
  3c0914: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3c0918: 2b00         	cmp	r3, #0x0
  3c091a: d008         	beq	0x3c092e <RakNetDelegate::connectToServer(bool)+0x32> @ imm = #0x10
  3c091c: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3c0ac8 <RakNetDelegate::connectToServer(bool)+0x1cc>
  3c091e: 447b         	add	r3, pc
  3c0920: 4618         	mov	r0, r3
  3c0922: f7bb fc29    	bl	0x37c178 <std::vector<ServerListObject, std::allocator<ServerListObject>>::clear()> @ imm = #-0x447ae
  3c0926: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x3c0acc <RakNetDelegate::connectToServer(bool)+0x1d0>
  3c0928: 447b         	add	r3, pc
  3c092a: 2200         	movs	r2, #0x0
  3c092c: 801a         	strh	r2, [r3]
  3c092e: 9807         	ldr	r0, [sp, #0x1c]
  3c0930: 2101         	movs	r1, #0x1
  3c0932: f7ff f889    	bl	0x3bfa48 <RakNetDelegate::conditionalInitRakPeer(bool)> @ imm = #-0xeee
  3c0936: 4b66         	ldr	r3, [pc, #0x198]        @ 0x3c0ad0 <RakNetDelegate::connectToServer(bool)+0x1d4>
  3c0938: 447b         	add	r3, pc
  3c093a: 781b         	ldrb	r3, [r3]
  3c093c: 2b00         	cmp	r3, #0x0
  3c093e: d000         	beq	0x3c0942 <RakNetDelegate::connectToServer(bool)+0x46> @ imm = #0x0
  3c0940: e0b4         	b	0x3c0aac <RakNetDelegate::connectToServer(bool)+0x1b0> @ imm = #0x168
  3c0942: 4b64         	ldr	r3, [pc, #0x190]        @ 0x3c0ad4 <RakNetDelegate::connectToServer(bool)+0x1d8>
  3c0944: 447b         	add	r3, pc
  3c0946: 881b         	ldrh	r3, [r3]
  3c0948: b29b         	uxth	r3, r3
  3c094a: 3301         	adds	r3, #0x1
  3c094c: b29a         	uxth	r2, r3
  3c094e: 4b62         	ldr	r3, [pc, #0x188]        @ 0x3c0ad8 <RakNetDelegate::connectToServer(bool)+0x1dc>
  3c0950: 447b         	add	r3, pc
  3c0952: 801a         	strh	r2, [r3]
  3c0954: 4b61         	ldr	r3, [pc, #0x184]        @ 0x3c0adc <RakNetDelegate::connectToServer(bool)+0x1e0>
  3c0956: 447b         	add	r3, pc
  3c0958: 881b         	ldrh	r3, [r3]
  3c095a: b21d         	sxth	r5, r3
  3c095c: 4b60         	ldr	r3, [pc, #0x180]        @ 0x3c0ae0 <RakNetDelegate::connectToServer(bool)+0x1e4>
  3c095e: 447b         	add	r3, pc
  3c0960: 4618         	mov	r0, r3
  3c0962: f7bc f947    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x43d72
  3c0966: 4603         	mov	r3, r0
  3c0968: 429d         	cmp	r5, r3
  3c096a: bf94         	ite	ls
  3c096c: 2300         	movls	r3, #0x0
  3c096e: 2301         	movhi	r3, #0x1
  3c0970: b2db         	uxtb	r3, r3
  3c0972: 2b00         	cmp	r3, #0x0
  3c0974: d00a         	beq	0x3c098c <RakNetDelegate::connectToServer(bool)+0x90> @ imm = #0x14
  3c0976: f21f fe9b    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21fd36
  3c097a: 4603         	mov	r3, r0
  3c097c: 4618         	mov	r0, r3
  3c097e: 4b59         	ldr	r3, [pc, #0x164]        @ 0x3c0ae4 <RakNetDelegate::connectToServer(bool)+0x1e8>
  3c0980: 447b         	add	r3, pc
  3c0982: 4619         	mov	r1, r3
  3c0984: 2200         	movs	r2, #0x0
  3c0986: f220 f8d1    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2201a2
  3c098a: e08f         	b	0x3c0aac <RakNetDelegate::connectToServer(bool)+0x1b0> @ imm = #0x11e
  3c098c: 4b56         	ldr	r3, [pc, #0x158]        @ 0x3c0ae8 <RakNetDelegate::connectToServer(bool)+0x1ec>
  3c098e: 447b         	add	r3, pc
  3c0990: 2200         	movs	r2, #0x0
  3c0992: 701a         	strb	r2, [r3]
  3c0994: 4b55         	ldr	r3, [pc, #0x154]        @ 0x3c0aec <RakNetDelegate::connectToServer(bool)+0x1f0>
  3c0996: 447b         	add	r3, pc
  3c0998: 2201         	movs	r2, #0x1
  3c099a: 701a         	strb	r2, [r3]
  3c099c: 4b54         	ldr	r3, [pc, #0x150]        @ 0x3c0af0 <RakNetDelegate::connectToServer(bool)+0x1f4>
  3c099e: 447b         	add	r3, pc
  3c09a0: 681b         	ldr	r3, [r3]
  3c09a2: 681b         	ldr	r3, [r3]
  3c09a4: 3338         	adds	r3, #0x38
  3c09a6: 681d         	ldr	r5, [r3]
  3c09a8: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3c0af4 <RakNetDelegate::connectToServer(bool)+0x1f8>
  3c09aa: 447b         	add	r3, pc
  3c09ac: 681e         	ldr	r6, [r3]
  3c09ae: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3c0af8 <RakNetDelegate::connectToServer(bool)+0x1fc>
  3c09b0: 447b         	add	r3, pc
  3c09b2: 4618         	mov	r0, r3
  3c09b4: f7fd fd9e    	bl	0x3be4f4 <RakNet::RakString::operator char const*() const> @ imm = #-0x24c4
  3c09b8: 4603         	mov	r3, r0
  3c09ba: 2211         	movs	r2, #0x11
  3c09bc: 9200         	str	r2, [sp]
  3c09be: 2200         	movs	r2, #0x0
  3c09c0: 9201         	str	r2, [sp, #0x4]
  3c09c2: 2200         	movs	r2, #0x0
  3c09c4: 9202         	str	r2, [sp, #0x8]
  3c09c6: 220c         	movs	r2, #0xc
  3c09c8: 9203         	str	r2, [sp, #0xc]
  3c09ca: f44f 72fa    	mov.w	r2, #0x1f4
  3c09ce: 9204         	str	r2, [sp, #0x10]
  3c09d0: 2200         	movs	r2, #0x0
  3c09d2: 9205         	str	r2, [sp, #0x14]
  3c09d4: 4630         	mov	r0, r6
  3c09d6: 4619         	mov	r1, r3
  3c09d8: f241 12ca    	movw	r2, #0x11ca
  3c09dc: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x3c0afc <RakNetDelegate::connectToServer(bool)+0x200>
  3c09de: 447b         	add	r3, pc
  3c09e0: 47a8         	blx	r5
  3c09e2: 4603         	mov	r3, r0
  3c09e4: 9308         	str	r3, [sp, #0x20]
  3c09e6: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3c0b00 <RakNetDelegate::connectToServer(bool)+0x204>
  3c09e8: 447b         	add	r3, pc
  3c09ea: 4618         	mov	r0, r3
  3c09ec: f7fd fd82    	bl	0x3be4f4 <RakNet::RakString::operator char const*() const> @ imm = #-0x24fc
  3c09f0: 4603         	mov	r3, r0
  3c09f2: aa0a         	add	r2, sp, #0x28
  3c09f4: 4610         	mov	r0, r2
  3c09f6: 4619         	mov	r1, r3
  3c09f8: f241 12ca    	movw	r2, #0x11ca
  3c09fc: f0e3 fbfc    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe37f8
  3c0a00: ab0a         	add	r3, sp, #0x28
  3c0a02: 4a40         	ldr	r2, [pc, #0x100]        @ 0x3c0b04 <RakNetDelegate::connectToServer(bool)+0x208>
  3c0a04: 447a         	add	r2, pc
  3c0a06: 4610         	mov	r0, r2
  3c0a08: 4619         	mov	r1, r3
  3c0a0a: f0e3 f99f    	bl	0x4a3d4c <RakNet::SystemAddress::operator=(RakNet::SystemAddress const&)> @ imm = #0xe333e
  3c0a0e: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3c0b08 <RakNetDelegate::connectToServer(bool)+0x20c>
  3c0a10: 447b         	add	r3, pc
  3c0a12: 881b         	ldrh	r3, [r3]
  3c0a14: b21e         	sxth	r6, r3
  3c0a16: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3c0b0c <RakNetDelegate::connectToServer(bool)+0x210>
  3c0a18: 447b         	add	r3, pc
  3c0a1a: 4618         	mov	r0, r3
  3c0a1c: 2101         	movs	r1, #0x1
  3c0a1e: 227c         	movs	r2, #0x7c
  3c0a20: f0e3 fb5c    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe36b8
  3c0a24: 4605         	mov	r5, r0
  3c0a26: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x3c0b10 <RakNetDelegate::connectToServer(bool)+0x214>
  3c0a28: 447b         	add	r3, pc
  3c0a2a: 4618         	mov	r0, r3
  3c0a2c: f7fd fd62    	bl	0x3be4f4 <RakNet::RakString::operator char const*() const> @ imm = #-0x253c
  3c0a30: 4603         	mov	r3, r0
  3c0a32: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x3c0b14 <RakNetDelegate::connectToServer(bool)+0x218>
  3c0a34: 447a         	add	r2, pc
  3c0a36: 4610         	mov	r0, r2
  3c0a38: 4631         	mov	r1, r6
  3c0a3a: 462a         	mov	r2, r5
  3c0a3c: f715 eadc    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeaa48
  3c0a40: f21f fe36    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21fc6c
  3c0a44: 4605         	mov	r5, r0
  3c0a46: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3c0b18 <RakNetDelegate::connectToServer(bool)+0x21c>
  3c0a48: 447b         	add	r3, pc
  3c0a4a: 681b         	ldr	r3, [r3]
  3c0a4c: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x3c0b1c <RakNetDelegate::connectToServer(bool)+0x220>
  3c0a4e: 447a         	add	r2, pc
  3c0a50: 4610         	mov	r0, r2
  3c0a52: 4619         	mov	r1, r3
  3c0a54: f002 f9e8    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x23d0
  3c0a58: 4603         	mov	r3, r0
  3c0a5a: 3304         	adds	r3, #0x4
  3c0a5c: 4618         	mov	r0, r3
  3c0a5e: f3f4 fc4f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f489e
  3c0a62: 4603         	mov	r3, r0
  3c0a64: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3c0b20 <RakNetDelegate::connectToServer(bool)+0x224>
  3c0a66: 447a         	add	r2, pc
  3c0a68: 4610         	mov	r0, r2
  3c0a6a: 4619         	mov	r1, r3
  3c0a6c: f1d9 f850    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d90a0
  3c0a70: 4603         	mov	r3, r0
  3c0a72: 4628         	mov	r0, r5
  3c0a74: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x3c0b24 <RakNetDelegate::connectToServer(bool)+0x228>
  3c0a76: 447a         	add	r2, pc
  3c0a78: 4611         	mov	r1, r2
  3c0a7a: 461a         	mov	r2, r3
  3c0a7c: f220 f856    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2200ac
  3c0a80: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3c0b28 <RakNetDelegate::connectToServer(bool)+0x22c>
  3c0a82: 447b         	add	r3, pc
  3c0a84: 681b         	ldr	r3, [r3]
  3c0a86: 681b         	ldr	r3, [r3]
  3c0a88: 332c         	adds	r3, #0x2c
  3c0a8a: 681b         	ldr	r3, [r3]
  3c0a8c: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3c0b2c <RakNetDelegate::connectToServer(bool)+0x230>
  3c0a8e: 447a         	add	r2, pc
  3c0a90: 6812         	ldr	r2, [r2]
  3c0a92: 4610         	mov	r0, r2
  3c0a94: 4798         	blx	r3
  3c0a96: 4603         	mov	r3, r0
  3c0a98: 9309         	str	r3, [sp, #0x24]
  3c0a9a: 9b08         	ldr	r3, [sp, #0x20]
  3c0a9c: 2b00         	cmp	r3, #0x0
  3c0a9e: d005         	beq	0x3c0aac <RakNetDelegate::connectToServer(bool)+0x1b0> @ imm = #0xa
  3c0aa0: 9b08         	ldr	r3, [sp, #0x20]
  3c0aa2: 2b04         	cmp	r3, #0x4
  3c0aa4: d002         	beq	0x3c0aac <RakNetDelegate::connectToServer(bool)+0x1b0> @ imm = #0x4
  3c0aa6: 9807         	ldr	r0, [sp, #0x1c]
  3c0aa8: f001 fce0    	bl	0x3c246c <RakNetDelegate::shutdown()> @ imm = #0x19c0
  3c0aac: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c0ac4 <RakNetDelegate::connectToServer(bool)+0x1c8>
  3c0aae: 58e3         	ldr	r3, [r4, r3]
  3c0ab0: 9a0f         	ldr	r2, [sp, #0x3c]
  3c0ab2: 681b         	ldr	r3, [r3]
  3c0ab4: 429a         	cmp	r2, r3
  3c0ab6: d001         	beq	0x3c0abc <RakNetDelegate::connectToServer(bool)+0x1c0> @ imm = #0x2
  3c0ab8: f715 ea56    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xeab54
  3c0abc: b010         	add	sp, #0x40
  3c0abe: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3c0abf); words below are literal-pool data ---
  3c0ac0: 20fe         	movs	r0, #0xfe
  3c0ac2: 0057         	lsls	r7, r2, #0x1
  3c0ac4: d72c         	bvc	0x3c0b20 <RakNetDelegate::connectToServer(bool)+0x224> @ imm = #0x58
  3c0ac6: ffff 0ad2    	<unknown>
  3c0aca: 0058         	lsls	r0, r3, #0x1
  3c0acc: 0ac4         	lsrs	r4, r0, #0xb
  3c0ace: 0058         	lsls	r0, r3, #0x1
  3c0ad0: 0ab6         	lsrs	r6, r6, #0xa
  3c0ad2: 0058         	lsls	r0, r3, #0x1
  3c0ad4: 0aa8         	lsrs	r0, r5, #0xa
  3c0ad6: 0058         	lsls	r0, r3, #0x1
  3c0ad8: 0a9c         	lsrs	r4, r3, #0xa
  3c0ada: 0058         	lsls	r0, r3, #0x1
  3c0adc: 0a96         	lsrs	r6, r2, #0xa
  3c0ade: 0058         	lsls	r0, r3, #0x1
  3c0ae0: 0a92         	lsrs	r2, r2, #0xa
  3c0ae2: 0058         	lsls	r0, r3, #0x1
  3c0ae4: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x3c0e08 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x4c>
  3c0ae6: 0041         	lsls	r1, r0, #0x1
  3c0ae8: 0a75         	lsrs	r5, r6, #0x9
  3c0aea: 0058         	lsls	r0, r3, #0x1
  3c0aec: 0a58         	lsrs	r0, r3, #0x9
  3c0aee: 0058         	lsls	r0, r3, #0x1
  3c0af0: 0a66         	lsrs	r6, r4, #0x9
  3c0af2: 0058         	lsls	r0, r3, #0x1
  3c0af4: 0a5a         	lsrs	r2, r3, #0x9
  3c0af6: 0058         	lsls	r0, r3, #0x1
  3c0af8: 0a4c         	lsrs	r4, r1, #0x9
  3c0afa: 0058         	lsls	r0, r3, #0x1
  3c0afc: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3c0b48 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0x18>
  3c0afe: 0041         	lsls	r1, r0, #0x1
  3c0b00: 0a14         	lsrs	r4, r2, #0x8
  3c0b02: 0058         	lsls	r0, r3, #0x1
  3c0b04: 0a20         	lsrs	r0, r4, #0x8
  3c0b06: 0058         	lsls	r0, r3, #0x1
  3c0b08: 09dc         	lsrs	r4, r3, #0x7
  3c0b0a: 0058         	lsls	r0, r3, #0x1
  3c0b0c: 0a0c         	lsrs	r4, r1, #0x8
  3c0b0e: 0058         	lsls	r0, r3, #0x1
  3c0b10: 09d4         	lsrs	r4, r2, #0x7
  3c0b12: 0058         	lsls	r0, r3, #0x1
  3c0b14: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x3c0bd8 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xa8>
  3c0b16: 0041         	lsls	r1, r0, #0x1
  3c0b18: 09a0         	lsrs	r0, r4, #0x6
  3c0b1a: 0058         	lsls	r0, r3, #0x1
  3c0b1c: 09a2         	lsrs	r2, r4, #0x6
  3c0b1e: 0058         	lsls	r0, r3, #0x1
  3c0b20: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x3c0bcc <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0x9c>
  3c0b22: 0041         	lsls	r1, r0, #0x1
  3c0b24: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x3c0be0 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xb0>
  3c0b26: 0041         	lsls	r1, r0, #0x1
  3c0b28: 0982         	lsrs	r2, r0, #0x6
  3c0b2a: 0058         	lsls	r0, r3, #0x1
  3c0b2c: 0976         	lsrs	r6, r6, #0x5
  3c0b2e: 0058         	lsls	r0, r3, #0x1

// ==== RakNetDelegate::connectToPeer
//      file offset 0x3c0b30 (= ELF address; Ghidra 0x3d0b30), 212 bytes, Thumb-2
  3c0b30: b570         	push	{r4, r5, r6, lr}
  3c0b32: b09a         	sub	sp, #0x68
  3c0b34: 9009         	str	r0, [sp, #0x24]
  3c0b36: 9108         	str	r1, [sp, #0x20]
  3c0b38: 9207         	str	r2, [sp, #0x1c]
  3c0b3a: 9306         	str	r3, [sp, #0x18]
  3c0b3c: 4e2b         	ldr	r6, [pc, #0xac]         @ 0x3c0bec <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xbc>
  3c0b3e: 447e         	add	r6, pc
  3c0b40: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3c0bf0 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xc0>
  3c0b42: 58f3         	ldr	r3, [r6, r3]
  3c0b44: 681b         	ldr	r3, [r3]
  3c0b46: 9319         	str	r3, [sp, #0x64]
  3c0b48: ab0a         	add	r3, sp, #0x28
  3c0b4a: 4618         	mov	r0, r3
  3c0b4c: f0e3 fd3e    	bl	0x4a45cc <RakNet::RakNetGUID::RakNetGUID()> @ imm = #0xe3a7c
  3c0b50: ab0a         	add	r3, sp, #0x28
  3c0b52: 4618         	mov	r0, r3
  3c0b54: 9908         	ldr	r1, [sp, #0x20]
  3c0b56: f0e3 fdfd    	bl	0x4a4754 <RakNet::RakNetGUID::FromString(char const*)> @ imm = #0xe3bfa
  3c0b5a: ab0f         	add	r3, sp, #0x3c
  3c0b5c: 4618         	mov	r0, r3
  3c0b5e: 9907         	ldr	r1, [sp, #0x1c]
  3c0b60: f0e3 fb30    	bl	0x4a41c4 <RakNet::SystemAddress::SystemAddress(char const*)> @ imm = #0xe3660
  3c0b64: ab0a         	add	r3, sp, #0x28
  3c0b66: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3c0bf4 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xc4>
  3c0b68: 447a         	add	r2, pc
  3c0b6a: 4610         	mov	r0, r2
  3c0b6c: 4619         	mov	r1, r3
  3c0b6e: f002 f8b9    	bl	0x3c2ce4 <DataStructures::Map<RakNet::RakNetGUID, int, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Has(RakNet::RakNetGUID const&) const> @ imm = #0x2172
  3c0b72: 4603         	mov	r3, r0
  3c0b74: f083 0301    	eor	r3, r3, #0x1
  3c0b78: b2db         	uxtb	r3, r3
  3c0b7a: 2b00         	cmp	r3, #0x0
  3c0b7c: d02c         	beq	0x3c0bd8 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xa8> @ imm = #0x58
  3c0b7e: ab0f         	add	r3, sp, #0x3c
  3c0b80: 4618         	mov	r0, r3
  3c0b82: 2101         	movs	r1, #0x1
  3c0b84: 227c         	movs	r2, #0x7c
  3c0b86: f0e3 faa9    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe3552
  3c0b8a: 4603         	mov	r3, r0
  3c0b8c: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3c0bf8 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xc8>
  3c0b8e: 447a         	add	r2, pc
  3c0b90: 4610         	mov	r0, r2
  3c0b92: 4619         	mov	r1, r3
  3c0b94: f715 ea30    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeaba0
  3c0b98: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3c0bfc <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xcc>
  3c0b9a: 447b         	add	r3, pc
  3c0b9c: 4618         	mov	r0, r3
  3c0b9e: f7fd fca9    	bl	0x3be4f4 <RakNet::RakString::operator char const*() const> @ imm = #-0x26ae
  3c0ba2: 4603         	mov	r3, r0
  3c0ba4: aa14         	add	r2, sp, #0x50
  3c0ba6: 4610         	mov	r0, r2
  3c0ba8: 4619         	mov	r1, r3
  3c0baa: f241 12ca    	movw	r2, #0x11ca
  3c0bae: f0e3 fb23    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe3646
  3c0bb2: 466c         	mov	r4, sp
  3c0bb4: ad14         	add	r5, sp, #0x50
  3c0bb6: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  3c0bb8: c40f         	stm	r4!, {r0, r1, r2, r3}
  3c0bba: 682b         	ldr	r3, [r5]
  3c0bbc: 6023         	str	r3, [r4]
  3c0bbe: ab0a         	add	r3, sp, #0x28
  3c0bc0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c0bc2: f7ff fdb3    	bl	0x3c072c <natPunch(RakNet::RakNetGUID, RakNet::SystemAddress)> @ imm = #-0x49a
  3c0bc6: aa0a         	add	r2, sp, #0x28
  3c0bc8: ab06         	add	r3, sp, #0x18
  3c0bca: 490d         	ldr	r1, [pc, #0x34]         @ 0x3c0c00 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xd0>
  3c0bcc: 4479         	add	r1, pc
  3c0bce: 4608         	mov	r0, r1
  3c0bd0: 4611         	mov	r1, r2
  3c0bd2: 461a         	mov	r2, r3
  3c0bd4: f002 f934    	bl	0x3c2e40 <DataStructures::Map<RakNet::RakNetGUID, int, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Set(RakNet::RakNetGUID const&, int const&)> @ imm = #0x2268
  3c0bd8: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c0bf0 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xc0>
  3c0bda: 58f3         	ldr	r3, [r6, r3]
  3c0bdc: 9a19         	ldr	r2, [sp, #0x64]
  3c0bde: 681b         	ldr	r3, [r3]
  3c0be0: 429a         	cmp	r2, r3
  3c0be2: d001         	beq	0x3c0be8 <RakNetDelegate::connectToPeer(char*, char*, int, bool)+0xb8> @ imm = #0x2
  3c0be4: f715 e9c0    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xeac80
  3c0be8: b01a         	add	sp, #0x68
  3c0bea: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3c0beb); words below are literal-pool data ---
  3c0bec: 1eca         	subs	r2, r1, #0x3
  3c0bee: 0057         	lsls	r7, r2, #0x1
  3c0bf0: d72c         	bvc	0x3c0c4c <RakNetDelegate::removePeer(int)+0x48> @ imm = #0x58
  3c0bf2: ffff 0914    	vqshrn.u64	d16, q2, #0x1
  3c0bf6: 0058         	lsls	r0, r3, #0x1
  3c0bf8: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x3c0ca4 <RakNetDelegate::removePeer(int)+0xa0>
  3c0bfa: 0041         	lsls	r1, r0, #0x1
  3c0bfc: 0862         	lsrs	r2, r4, #0x1
  3c0bfe: 0058         	lsls	r0, r3, #0x1
  3c0c00: 08b0         	lsrs	r0, r6, #0x2
  3c0c02: 0058         	lsls	r0, r3, #0x1

// ==== RakNetDelegate::removePeer
//      file offset 0x3c0c04 (= ELF address; Ghidra 0x3d0c04), 196 bytes, Thumb-2
  3c0c04: b510         	push	{r4, lr}
  3c0c06: b088         	sub	sp, #0x20
  3c0c08: 9001         	str	r0, [sp, #0x4]
  3c0c0a: 9100         	str	r1, [sp]
  3c0c0c: ab04         	add	r3, sp, #0x10
  3c0c0e: 4618         	mov	r0, r3
  3c0c10: f0e3 fcdc    	bl	0x4a45cc <RakNet::RakNetGUID::RakNetGUID()> @ imm = #0xe39b8
  3c0c14: 466b         	mov	r3, sp
  3c0c16: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3c0cb0 <RakNetDelegate::removePeer(int)+0xac>
  3c0c18: 447a         	add	r2, pc
  3c0c1a: 4610         	mov	r0, r2
  3c0c1c: 4619         	mov	r1, r3
  3c0c1e: f002 f975    	bl	0x3c2f0c <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Has(int const&) const> @ imm = #0x22ea
  3c0c22: 4603         	mov	r3, r0
  3c0c24: 2b00         	cmp	r3, #0x0
  3c0c26: d013         	beq	0x3c0c50 <RakNetDelegate::removePeer(int)+0x4c> @ imm = #0x26
  3c0c28: 466b         	mov	r3, sp
  3c0c2a: 4a22         	ldr	r2, [pc, #0x88]         @ 0x3c0cb4 <RakNetDelegate::removePeer(int)+0xb0>
  3c0c2c: 447a         	add	r2, pc
  3c0c2e: 4610         	mov	r0, r2
  3c0c30: 4619         	mov	r1, r3
  3c0c32: f002 f999    	bl	0x3c2f68 <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Get(int const&) const> @ imm = #0x2332
  3c0c36: 4603         	mov	r3, r0
  3c0c38: aa04         	add	r2, sp, #0x10
  3c0c3a: 4610         	mov	r0, r2
  3c0c3c: 4619         	mov	r1, r3
  3c0c3e: f7fd fc03    	bl	0x3be448 <RakNet::RakNetGUID::operator=(RakNet::RakNetGUID const&)> @ imm = #-0x27fa
  3c0c42: 466b         	mov	r3, sp
  3c0c44: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x3c0cb8 <RakNetDelegate::removePeer(int)+0xb4>
  3c0c46: 447a         	add	r2, pc
  3c0c48: 4610         	mov	r0, r2
  3c0c4a: 4619         	mov	r1, r3
  3c0c4c: f002 f9c2    	bl	0x3c2fd4 <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Delete(int const&)> @ imm = #0x2384
  3c0c50: 2300         	movs	r3, #0x0
  3c0c52: 9303         	str	r3, [sp, #0xc]
  3c0c54: e01c         	b	0x3c0c90 <RakNetDelegate::removePeer(int)+0x8c> @ imm = #0x38
  3c0c56: 9b03         	ldr	r3, [sp, #0xc]
  3c0c58: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3c0cbc <RakNetDelegate::removePeer(int)+0xb8>
  3c0c5a: 447a         	add	r2, pc
  3c0c5c: 4610         	mov	r0, r2
  3c0c5e: 4619         	mov	r1, r3
  3c0c60: f002 fa00    	bl	0x3c3064 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::operator[](unsigned int) const> @ imm = #0x2400
  3c0c64: 4603         	mov	r3, r0
  3c0c66: 681a         	ldr	r2, [r3]
  3c0c68: 9b00         	ldr	r3, [sp]
  3c0c6a: 429a         	cmp	r2, r3
  3c0c6c: bf14         	ite	ne
  3c0c6e: 2300         	movne	r3, #0x0
  3c0c70: 2301         	moveq	r3, #0x1
  3c0c72: b2db         	uxtb	r3, r3
  3c0c74: 2b00         	cmp	r3, #0x0
  3c0c76: d008         	beq	0x3c0c8a <RakNetDelegate::removePeer(int)+0x86> @ imm = #0x10
  3c0c78: 9b03         	ldr	r3, [sp, #0xc]
  3c0c7a: 1e5a         	subs	r2, r3, #0x1
  3c0c7c: 9203         	str	r2, [sp, #0xc]
  3c0c7e: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3c0cc0 <RakNetDelegate::removePeer(int)+0xbc>
  3c0c80: 447a         	add	r2, pc
  3c0c82: 4610         	mov	r0, r2
  3c0c84: 4619         	mov	r1, r3
  3c0c86: f002 f9fd    	bl	0x3c3084 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::RemoveAtIndex(unsigned int)> @ imm = #0x23fa
  3c0c8a: 9b03         	ldr	r3, [sp, #0xc]
  3c0c8c: 3301         	adds	r3, #0x1
  3c0c8e: 9303         	str	r3, [sp, #0xc]
  3c0c90: 9c03         	ldr	r4, [sp, #0xc]
  3c0c92: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3c0cc4 <RakNetDelegate::removePeer(int)+0xc0>
  3c0c94: 447b         	add	r3, pc
  3c0c96: 4618         	mov	r0, r3
  3c0c98: f002 f9d8    	bl	0x3c304c <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Size() const> @ imm = #0x23b0
  3c0c9c: 4603         	mov	r3, r0
  3c0c9e: 429c         	cmp	r4, r3
  3c0ca0: bf2c         	ite	hs
  3c0ca2: 2300         	movhs	r3, #0x0
  3c0ca4: 2301         	movlo	r3, #0x1
  3c0ca6: b2db         	uxtb	r3, r3
  3c0ca8: 2b00         	cmp	r3, #0x0
  3c0caa: d1d4         	bne	0x3c0c56 <RakNetDelegate::removePeer(int)+0x52> @ imm = #-0x58
  3c0cac: b008         	add	sp, #0x20
  3c0cae: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c0caf); words below are literal-pool data ---
  3c0cb0: 0820         	lsrs	r0, r4, #0x20
  3c0cb2: 0058         	lsls	r0, r3, #0x1
  3c0cb4: 080c         	lsrs	r4, r1, #0x20
  3c0cb6: 0058         	lsls	r0, r3, #0x1
  3c0cb8: 07f2         	lsls	r2, r6, #0x1f
  3c0cba: 0058         	lsls	r0, r3, #0x1
  3c0cbc: 07f6         	lsls	r6, r6, #0x1f
  3c0cbe: 0058         	lsls	r0, r3, #0x1
  3c0cc0: 07d0         	lsls	r0, r2, #0x1f
  3c0cc2: 0058         	lsls	r0, r3, #0x1
  3c0cc4: 07bc         	lsls	r4, r7, #0x1e
  3c0cc6: 0058         	lsls	r0, r3, #0x1

// ==== RakNetDelegate::detectNATType
//      file offset 0x3c0cc8 (= ELF address; Ghidra 0x3d0cc8), 244 bytes, Thumb-2
  3c0cc8: b530         	push	{r4, r5, lr}
  3c0cca: b08f         	sub	sp, #0x3c
  3c0ccc: 9007         	str	r0, [sp, #0x1c]
  3c0cce: 4d30         	ldr	r5, [pc, #0xc0]         @ 0x3c0d90 <RakNetDelegate::detectNATType()+0xc8>
  3c0cd0: 447d         	add	r5, pc
  3c0cd2: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x3c0d94 <RakNetDelegate::detectNATType()+0xcc>
  3c0cd4: 58eb         	ldr	r3, [r5, r3]
  3c0cd6: 681b         	ldr	r3, [r3]
  3c0cd8: 930d         	str	r3, [sp, #0x34]
  3c0cda: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3c0d98 <RakNetDelegate::detectNATType()+0xd0>
  3c0cdc: 447b         	add	r3, pc
  3c0cde: 781b         	ldrb	r3, [r3]
  3c0ce0: 2b00         	cmp	r3, #0x0
  3c0ce2: d045         	beq	0x3c0d70 <RakNetDelegate::detectNATType()+0xa8> @ imm = #0x8a
  3c0ce4: 9807         	ldr	r0, [sp, #0x1c]
  3c0ce6: 2101         	movs	r1, #0x1
  3c0ce8: f7fe feae    	bl	0x3bfa48 <RakNetDelegate::conditionalInitRakPeer(bool)> @ imm = #-0x12a4
  3c0cec: 203c         	movs	r0, #0x3c
  3c0cee: f3c6 fe39    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3c6c72
  3c0cf2: 4603         	mov	r3, r0
  3c0cf4: 461c         	mov	r4, r3
  3c0cf6: 4620         	mov	r0, r4
  3c0cf8: f0d2 ff64    	bl	0x493bc4 <RakNet::NatTypeDetectionClient::NatTypeDetectionClient()> @ imm = #0xd2ec8
  3c0cfc: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3c0d9c <RakNetDelegate::detectNATType()+0xd4>
  3c0cfe: 447b         	add	r3, pc
  3c0d00: 601c         	str	r4, [r3]
  3c0d02: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3c0da0 <RakNetDelegate::detectNATType()+0xd8>
  3c0d04: 447b         	add	r3, pc
  3c0d06: 681b         	ldr	r3, [r3]
  3c0d08: 681b         	ldr	r3, [r3]
  3c0d0a: f503 738a    	add.w	r3, r3, #0x114
  3c0d0e: 681b         	ldr	r3, [r3]
  3c0d10: 4a24         	ldr	r2, [pc, #0x90]         @ 0x3c0da4 <RakNetDelegate::detectNATType()+0xdc>
  3c0d12: 447a         	add	r2, pc
  3c0d14: 6811         	ldr	r1, [r2]
  3c0d16: 4a24         	ldr	r2, [pc, #0x90]         @ 0x3c0da8 <RakNetDelegate::detectNATType()+0xe0>
  3c0d18: 447a         	add	r2, pc
  3c0d1a: 6812         	ldr	r2, [r2]
  3c0d1c: 4608         	mov	r0, r1
  3c0d1e: 4611         	mov	r1, r2
  3c0d20: 4798         	blx	r3
  3c0d22: ab08         	add	r3, sp, #0x20
  3c0d24: 4618         	mov	r0, r3
  3c0d26: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3c0dac <RakNetDelegate::detectNATType()+0xe4>
  3c0d28: 447b         	add	r3, pc
  3c0d2a: 4619         	mov	r1, r3
  3c0d2c: f64e 62b7    	movw	r2, #0xeeb7
  3c0d30: f0e3 fa62    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe34c4
  3c0d34: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3c0db0 <RakNetDelegate::detectNATType()+0xe8>
  3c0d36: 447b         	add	r3, pc
  3c0d38: 681b         	ldr	r3, [r3]
  3c0d3a: 681b         	ldr	r3, [r3]
  3c0d3c: 3338         	adds	r3, #0x38
  3c0d3e: 681c         	ldr	r4, [r3]
  3c0d40: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3c0db4 <RakNetDelegate::detectNATType()+0xec>
  3c0d42: 447b         	add	r3, pc
  3c0d44: 681b         	ldr	r3, [r3]
  3c0d46: 2200         	movs	r2, #0x0
  3c0d48: 9200         	str	r2, [sp]
  3c0d4a: 2200         	movs	r2, #0x0
  3c0d4c: 9201         	str	r2, [sp, #0x4]
  3c0d4e: 2200         	movs	r2, #0x0
  3c0d50: 9202         	str	r2, [sp, #0x8]
  3c0d52: 220c         	movs	r2, #0xc
  3c0d54: 9203         	str	r2, [sp, #0xc]
  3c0d56: f44f 72fa    	mov.w	r2, #0x1f4
  3c0d5a: 9204         	str	r2, [sp, #0x10]
  3c0d5c: 2200         	movs	r2, #0x0
  3c0d5e: 9205         	str	r2, [sp, #0x14]
  3c0d60: 4618         	mov	r0, r3
  3c0d62: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3c0db8 <RakNetDelegate::detectNATType()+0xf0>
  3c0d64: 447b         	add	r3, pc
  3c0d66: 4619         	mov	r1, r3
  3c0d68: f64e 62b7    	movw	r2, #0xeeb7
  3c0d6c: 2300         	movs	r3, #0x0
  3c0d6e: 47a0         	blx	r4
  3c0d70: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3c0d94 <RakNetDelegate::detectNATType()+0xcc>
  3c0d72: 58eb         	ldr	r3, [r5, r3]
  3c0d74: 9a0d         	ldr	r2, [sp, #0x34]
  3c0d76: 681b         	ldr	r3, [r3]
  3c0d78: 429a         	cmp	r2, r3
  3c0d7a: d007         	beq	0x3c0d8c <RakNetDelegate::detectNATType()+0xc4> @ imm = #0xe
  3c0d7c: e004         	b	0x3c0d88 <RakNetDelegate::detectNATType()+0xc0> @ imm = #0x8
  3c0d7e: 4620         	mov	r0, r4
  3c0d80: f3c7 f990    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c7320
  3c0d84: f3c7 f992    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c7324
  3c0d88: f715 e8ee    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xeae24
  3c0d8c: b00f         	add	sp, #0x3c
  3c0d8e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c0d8f); words below are literal-pool data ---
  3c0d90: 1d38         	adds	r0, r7, #0x4
  3c0d92: 0057         	lsls	r7, r2, #0x1
  3c0d94: d72c         	bvc	0x3c0df0 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x34> @ imm = #0x58
  3c0d96: ffff 0724    	<unknown>
  3c0d9a: 0058         	lsls	r0, r3, #0x1
  3c0d9c: 070a         	lsls	r2, r1, #0x1c
  3c0d9e: 0058         	lsls	r0, r3, #0x1
  3c0da0: 0700         	lsls	r0, r0, #0x1c
  3c0da2: 0058         	lsls	r0, r3, #0x1
  3c0da4: 06f2         	lsls	r2, r6, #0x1b
  3c0da6: 0058         	lsls	r0, r3, #0x1
  3c0da8: 06f0         	lsls	r0, r6, #0x1b
  3c0daa: 0058         	lsls	r0, r3, #0x1
  3c0dac: 48b0         	ldr	r0, [pc, #0x2c0]        @ 0x3c1070 <DetermineConnectionIdentity(RakNet::Packet*)+0x128>
  3c0dae: 0041         	lsls	r1, r0, #0x1
  3c0db0: 06ce         	lsls	r6, r1, #0x1b
  3c0db2: 0058         	lsls	r0, r3, #0x1
  3c0db4: 06c2         	lsls	r2, r0, #0x1b
  3c0db6: 0058         	lsls	r0, r3, #0x1
  3c0db8: 4874         	ldr	r0, [pc, #0x1d0]        @ 0x3c0f8c <DetermineConnectionIdentity(RakNet::Packet*)+0x44>
  3c0dba: 0041         	lsls	r1, r0, #0x1

// ==== RakNetDelegate::processMessage
//      file offset 0x3c0dbc (= ELF address; Ghidra 0x3d0dbc), 396 bytes, Thumb-2
  3c0dbc: b570         	push	{r4, r5, r6, lr}
  3c0dbe: b098         	sub	sp, #0x60
  3c0dc0: 9005         	str	r0, [sp, #0x14]
  3c0dc2: 9104         	str	r1, [sp, #0x10]
  3c0dc4: 9203         	str	r2, [sp, #0xc]
  3c0dc6: 4c58         	ldr	r4, [pc, #0x160]        @ 0x3c0f28 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x16c>
  3c0dc8: 447c         	add	r4, pc
  3c0dca: 4b58         	ldr	r3, [pc, #0x160]        @ 0x3c0f2c <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x170>
  3c0dcc: 58e3         	ldr	r3, [r4, r3]
  3c0dce: 681b         	ldr	r3, [r3]
  3c0dd0: 9317         	str	r3, [sp, #0x5c]
  3c0dd2: 9b04         	ldr	r3, [sp, #0x10]
  3c0dd4: 6b1b         	ldr	r3, [r3, #0x30]
  3c0dd6: 781b         	ldrb	r3, [r3]
  3c0dd8: 2b87         	cmp	r3, #0x87
  3c0dda: d004         	beq	0x3c0de6 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x2a> @ imm = #0x8
  3c0ddc: 9b04         	ldr	r3, [sp, #0x10]
  3c0dde: 6b1b         	ldr	r3, [r3, #0x30]
  3c0de0: 781b         	ldrb	r3, [r3]
  3c0de2: 2b8c         	cmp	r3, #0x8c
  3c0de4: d15c         	bne	0x3c0ea0 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0xe4> @ imm = #0xb8
  3c0de6: 9b04         	ldr	r3, [sp, #0x10]
  3c0de8: 6b1b         	ldr	r3, [r3, #0x30]
  3c0dea: 3301         	adds	r3, #0x1
  3c0dec: 781b         	ldrb	r3, [r3]
  3c0dee: 2b03         	cmp	r3, #0x3
  3c0df0: d156         	bne	0x3c0ea0 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0xe4> @ imm = #0xac
  3c0df2: 9b04         	ldr	r3, [sp, #0x10]
  3c0df4: 6b1b         	ldr	r3, [r3, #0x30]
  3c0df6: 3302         	adds	r3, #0x2
  3c0df8: 781b         	ldrb	r3, [r3]
  3c0dfa: 9308         	str	r3, [sp, #0x20]
  3c0dfc: 9b08         	ldr	r3, [sp, #0x20]
  3c0dfe: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x3c0f30 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x174>
  3c0e00: 447a         	add	r2, pc
  3c0e02: 4610         	mov	r0, r2
  3c0e04: 4619         	mov	r1, r3
  3c0e06: f715 e8f8    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeae10
  3c0e0a: 9b08         	ldr	r3, [sp, #0x20]
  3c0e0c: 4a49         	ldr	r2, [pc, #0x124]        @ 0x3c0f34 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x178>
  3c0e0e: 447a         	add	r2, pc
  3c0e10: 4610         	mov	r0, r2
  3c0e12: 4619         	mov	r1, r3
  3c0e14: f1d8 fe7c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d8cf8
  3c0e18: 4603         	mov	r3, r0
  3c0e1a: 930b         	str	r3, [sp, #0x2c]
  3c0e1c: f7b6 fe90    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x492e0
  3c0e20: 4605         	mov	r5, r0
  3c0e22: 980b         	ldr	r0, [sp, #0x2c]
  3c0e24: f1d8 fd80    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1d8b00
  3c0e28: 4606         	mov	r6, r0
  3c0e2a: ab06         	add	r3, sp, #0x18
  3c0e2c: 4618         	mov	r0, r3
  3c0e2e: f3c9 fae1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c95c2
  3c0e32: aa09         	add	r2, sp, #0x24
  3c0e34: ab06         	add	r3, sp, #0x18
  3c0e36: 4610         	mov	r0, r2
  3c0e38: 4631         	mov	r1, r6
  3c0e3a: 461a         	mov	r2, r3
  3c0e3c: f3f5 fe10    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f5c20
  3c0e40: ab07         	add	r3, sp, #0x1c
  3c0e42: 4618         	mov	r0, r3
  3c0e44: f3c9 fad6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c95ac
  3c0e48: aa0a         	add	r2, sp, #0x28
  3c0e4a: ab07         	add	r3, sp, #0x1c
  3c0e4c: 4610         	mov	r0, r2
  3c0e4e: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x3c0f38 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x17c>
  3c0e50: 447a         	add	r2, pc
  3c0e52: 4611         	mov	r1, r2
  3c0e54: 461a         	mov	r2, r3
  3c0e56: f3f5 fe03    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f5c06
  3c0e5a: aa09         	add	r2, sp, #0x24
  3c0e5c: ab0a         	add	r3, sp, #0x28
  3c0e5e: 4628         	mov	r0, r5
  3c0e60: 4611         	mov	r1, r2
  3c0e62: 461a         	mov	r2, r3
  3c0e64: f7b9 fa66    	bl	0x37a334 <NetworkManager::addPlayer(std::string, std::string)> @ imm = #-0x46b34
  3c0e68: ab0a         	add	r3, sp, #0x28
  3c0e6a: 4618         	mov	r0, r3
  3c0e6c: f3f4 fd52    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f4aa4
  3c0e70: ab07         	add	r3, sp, #0x1c
  3c0e72: 4618         	mov	r0, r3
  3c0e74: f3c9 fac2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9584
  3c0e78: ab09         	add	r3, sp, #0x24
  3c0e7a: 4618         	mov	r0, r3
  3c0e7c: f3f4 fd4a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f4a94
  3c0e80: ab06         	add	r3, sp, #0x18
  3c0e82: 4618         	mov	r0, r3
  3c0e84: f3c9 faba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c9574
  3c0e88: 9b04         	ldr	r3, [sp, #0x10]
  3c0e8a: 3318         	adds	r3, #0x18
  3c0e8c: aa08         	add	r2, sp, #0x20
  3c0e8e: 492b         	ldr	r1, [pc, #0xac]         @ 0x3c0f3c <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x180>
  3c0e90: 4479         	add	r1, pc
  3c0e92: 4608         	mov	r0, r1
  3c0e94: 4611         	mov	r1, r2
  3c0e96: 461a         	mov	r2, r3
  3c0e98: f002 f904    	bl	0x3c30a4 <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Set(int const&, RakNet::RakNetGUID const&)> @ imm = #0x2208
  3c0e9c: 2300         	movs	r3, #0x0
  3c0e9e: e023         	b	0x3c0ee8 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x12c> @ imm = #0x46
  3c0ea0: 9b04         	ldr	r3, [sp, #0x10]
  3c0ea2: 6b1b         	ldr	r3, [r3, #0x30]
  3c0ea4: 781b         	ldrb	r3, [r3]
  3c0ea6: 2b88         	cmp	r3, #0x88
  3c0ea8: d11d         	bne	0x3c0ee6 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x12a> @ imm = #0x3a
  3c0eaa: 9b04         	ldr	r3, [sp, #0x10]
  3c0eac: 6b1b         	ldr	r3, [r3, #0x30]
  3c0eae: 3301         	adds	r3, #0x1
  3c0eb0: 781b         	ldrb	r3, [r3]
  3c0eb2: 2b00         	cmp	r3, #0x0
  3c0eb4: d117         	bne	0x3c0ee6 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x12a> @ imm = #0x2e
  3c0eb6: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3c0f40 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x184>
  3c0eb8: 447b         	add	r3, pc
  3c0eba: 681b         	ldr	r3, [r3]
  3c0ebc: 681b         	ldr	r3, [r3]
  3c0ebe: 3370         	adds	r3, #0x70
  3c0ec0: 681d         	ldr	r5, [r3]
  3c0ec2: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3c0f44 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x188>
  3c0ec4: 447b         	add	r3, pc
  3c0ec6: 681e         	ldr	r6, [r3]
  3c0ec8: 9b04         	ldr	r3, [sp, #0x10]
  3c0eca: 3318         	adds	r3, #0x18
  3c0ecc: aa0c         	add	r2, sp, #0x30
  3c0ece: 4610         	mov	r0, r2
  3c0ed0: 4619         	mov	r1, r3
  3c0ed2: f7fd faed    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0x2a26
  3c0ed6: ab0c         	add	r3, sp, #0x30
  3c0ed8: 2203         	movs	r2, #0x3
  3c0eda: 9200         	str	r2, [sp]
  3c0edc: 4630         	mov	r0, r6
  3c0ede: 4619         	mov	r1, r3
  3c0ee0: 2201         	movs	r2, #0x1
  3c0ee2: 2300         	movs	r3, #0x0
  3c0ee4: 47a8         	blx	r5
  3c0ee6: 2301         	movs	r3, #0x1
  3c0ee8: 4618         	mov	r0, r3
  3c0eea: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3c0f2c <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x170>
  3c0eec: 58e3         	ldr	r3, [r4, r3]
  3c0eee: 9a17         	ldr	r2, [sp, #0x5c]
  3c0ef0: 681b         	ldr	r3, [r3]
  3c0ef2: 429a         	cmp	r2, r3
  3c0ef4: d016         	beq	0x3c0f24 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x168> @ imm = #0x2c
  3c0ef6: e013         	b	0x3c0f20 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x164> @ imm = #0x26
  3c0ef8: ab0a         	add	r3, sp, #0x28
  3c0efa: 4618         	mov	r0, r3
  3c0efc: f3f4 fd0a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f4a14
  3c0f00: e7ff         	b	0x3c0f02 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x146> @ imm = #-0x2
  3c0f02: ab07         	add	r3, sp, #0x1c
  3c0f04: 4618         	mov	r0, r3
  3c0f06: f3c9 fa79    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c94f2
  3c0f0a: ab09         	add	r3, sp, #0x24
  3c0f0c: 4618         	mov	r0, r3
  3c0f0e: f3f4 fd01    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f4a02
  3c0f12: e7ff         	b	0x3c0f14 <RakNetDelegate::processMessage(RakNet::Packet*, int)+0x158> @ imm = #-0x2
  3c0f14: ab06         	add	r3, sp, #0x18
  3c0f16: 4618         	mov	r0, r3
  3c0f18: f3c9 fa70    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c94e0
  3c0f1c: f3c7 f8c6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c718c
  3c0f20: f715 e822    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xeafbc
  3c0f24: b018         	add	sp, #0x60
  3c0f26: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3c0f27); words below are literal-pool data ---
  3c0f28: 1c40         	adds	r0, r0, #0x1
  3c0f2a: 0057         	lsls	r7, r2, #0x1
  3c0f2c: d72c         	bvc	0x3c0f88 <DetermineConnectionIdentity(RakNet::Packet*)+0x40> @ imm = #0x58
  3c0f2e: ffff 47e8    	<unknown>
  3c0f32: 0041         	lsls	r1, r0, #0x1
  3c0f34: 47fa         	<unknown>
  3c0f36: 0041         	lsls	r1, r0, #0x1
  3c0f38: 47bc         	<unknown>
  3c0f3a: 0041         	lsls	r1, r0, #0x1
  3c0f3c: 05a8         	lsls	r0, r5, #0x16
  3c0f3e: 0058         	lsls	r0, r3, #0x1
  3c0f40: 054c         	lsls	r4, r1, #0x15
  3c0f42: 0058         	lsls	r0, r3, #0x1
  3c0f44: 0540         	lsls	r0, r0, #0x15
  3c0f46: 0058         	lsls	r0, r3, #0x1

// ==== RakNetDelegate::connectToNextServer
//      file offset 0x3c1074 (= ELF address; Ghidra 0x3d1074), 52 bytes, Thumb-2
  3c1074: b500         	push	{lr}
  3c1076: b083         	sub	sp, #0xc
  3c1078: 9001         	str	r0, [sp, #0x4]
  3c107a: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3c10a4 <RakNetDelegate::connectToNextServer()+0x30>
  3c107c: 447b         	add	r3, pc
  3c107e: 781b         	ldrb	r3, [r3]
  3c1080: f083 0301    	eor	r3, r3, #0x1
  3c1084: b2db         	uxtb	r3, r3
  3c1086: 2b00         	cmp	r3, #0x0
  3c1088: d009         	beq	0x3c109e <RakNetDelegate::connectToNextServer()+0x2a> @ imm = #0x12
  3c108a: 9801         	ldr	r0, [sp, #0x4]
  3c108c: f001 fb56    	bl	0x3c273c <RakNetDelegate::updateServerList()> @ imm = #0x16ac
  3c1090: 9801         	ldr	r0, [sp, #0x4]
  3c1092: f001 fbdb    	bl	0x3c284c <RakNetDelegate::nextServerIndex()> @ imm = #0x17b6
  3c1096: 9801         	ldr	r0, [sp, #0x4]
  3c1098: 2100         	movs	r1, #0x0
  3c109a: f7ff fc2f    	bl	0x3c08fc <RakNetDelegate::connectToServer(bool)> @ imm = #-0x7a2
  3c109e: b003         	add	sp, #0xc
  3c10a0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c10a3); words below are literal-pool data ---
  3c10a4: 0387         	lsls	r7, r0, #0xe
  3c10a6: 0058         	lsls	r0, r3, #0x1

// ==== RakNetDelegate::updateLoop
//      file offset 0x3c10a8 (= ELF address; Ghidra 0x3d10a8), 4116 bytes, Thumb-2
  3c10a8: b5f0         	push	{r4, r5, r6, r7, lr}
  3c10aa: b0af         	sub	sp, #0xbc
  3c10ac: 900f         	str	r0, [sp, #0x3c]
  3c10ae: 910e         	str	r1, [sp, #0x38]
  3c10b0: f8df 6bdc    	ldr.w	r6, [pc, #0xbdc]        @ 0x3c1c90 <RakNetDelegate::updateLoop(float)+0xbe8>
  3c10b4: 447e         	add	r6, pc
  3c10b6: f8df 3bdc    	ldr.w	r3, [pc, #0xbdc]        @ 0x3c1c94 <RakNetDelegate::updateLoop(float)+0xbec>
  3c10ba: 58f3         	ldr	r3, [r6, r3]
  3c10bc: 681b         	ldr	r3, [r3]
  3c10be: 932d         	str	r3, [sp, #0xb4]
  3c10c0: f8df 3bd4    	ldr.w	r3, [pc, #0xbd4]        @ 0x3c1c98 <RakNetDelegate::updateLoop(float)+0xbf0>
  3c10c4: 447b         	add	r3, pc
  3c10c6: 681b         	ldr	r3, [r3]
  3c10c8: 2b00         	cmp	r3, #0x0
  3c10ca: d101         	bne	0x3c10d0 <RakNetDelegate::updateLoop(float)+0x28> @ imm = #0x2
  3c10cc: f000 bfd3    	b.w	0x3c2076 <RakNetDelegate::updateLoop(float)+0xfce> @ imm = #0xfa6
  3c10d0: 2300         	movs	r3, #0x0
  3c10d2: 9318         	str	r3, [sp, #0x60]
  3c10d4: 2300         	movs	r3, #0x0
  3c10d6: 9319         	str	r3, [sp, #0x64]
  3c10d8: f8df 3bc0    	ldr.w	r3, [pc, #0xbc0]        @ 0x3c1c9c <RakNetDelegate::updateLoop(float)+0xbf4>
  3c10dc: 447b         	add	r3, pc
  3c10de: 681b         	ldr	r3, [r3]
  3c10e0: 681b         	ldr	r3, [r3]
  3c10e2: 3364         	adds	r3, #0x64
  3c10e4: 681b         	ldr	r3, [r3]
  3c10e6: f8df 2bb8    	ldr.w	r2, [pc, #0xbb8]        @ 0x3c1ca0 <RakNetDelegate::updateLoop(float)+0xbf8>
  3c10ea: 447a         	add	r2, pc
  3c10ec: 6812         	ldr	r2, [r2]
  3c10ee: 4610         	mov	r0, r2
  3c10f0: 4798         	blx	r3
  3c10f2: 4603         	mov	r3, r0
  3c10f4: 9318         	str	r3, [sp, #0x60]
  3c10f6: f000 bf70    	b.w	0x3c1fda <RakNetDelegate::updateLoop(float)+0xf32> @ imm = #0xee0
  3c10fa: 9b19         	ldr	r3, [sp, #0x64]
  3c10fc: 3301         	adds	r3, #0x1
  3c10fe: 9319         	str	r3, [sp, #0x64]
  3c1100: 9818         	ldr	r0, [sp, #0x60]
  3c1102: f7fe fbcd    	bl	0x3bf8a0 <s_OpenUPNP(RakNet::RakPeerInterface*, RakNet::SystemAddress)+0x25c> @ imm = #-0x1866
  3c1106: 4603         	mov	r3, r0
  3c1108: f88d 3047    	strb.w	r3, [sp, #0x47]
  3c110c: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  3c1110: 3b10         	subs	r3, #0x10
  3c1112: 2b7d         	cmp	r3, #0x7d
  3c1114: f200 8734    	bhi.w	0x3c1f80 <RakNetDelegate::updateLoop(float)+0xed8> @ imm = #0xe68
  3c1118: a102         	adr	r1, #8 <RakNetDelegate::updateLoop(float)+0x76>
  3c111a: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3c111e: 4411         	add	r1, r2
  3c1120: 4708         	bx	r1
  3c1122: bf00         	nop
  3c1124: 085d         	lsrs	r5, r3, #0x1
  3c1126: 0000         	movs	r0, r0
  3c1128: 05a9         	lsls	r1, r5, #0x16
  3c112a: 0000         	movs	r0, r0
  3c112c: 0531         	lsls	r1, r6, #0x14
  3c112e: 0000         	movs	r0, r0
  3c1130: 0831         	lsrs	r1, r6, #0x20
  3c1132: 0000         	movs	r0, r0
  3c1134: 06e7         	lsls	r7, r4, #0x1b
  3c1136: 0000         	movs	r0, r0
  3c1138: 050d         	lsls	r5, r1, #0x14
  3c113a: 0000         	movs	r0, r0
  3c113c: 07c3         	lsls	r3, r0, #0x1f
  3c113e: 0000         	movs	r0, r0
  3c1140: 0599         	lsls	r1, r3, #0x16
  3c1142: 0000         	movs	r0, r0
  3c1144: 07a7         	lsls	r7, r4, #0x1e
  3c1146: 0000         	movs	r0, r0
  3c1148: 0559         	lsls	r1, r3, #0x15
  3c114a: 0000         	movs	r0, r0
  3c114c: 0e5d         	lsrs	r5, r3, #0x19
  3c114e: 0000         	movs	r0, r0
  3c1150: 0e5d         	lsrs	r5, r3, #0x19
  3c1152: 0000         	movs	r0, r0
  3c1154: 0e5d         	lsrs	r5, r3, #0x19
  3c1156: 0000         	movs	r0, r0
  3c1158: 0e5d         	lsrs	r5, r3, #0x19
  3c115a: 0000         	movs	r0, r0
  3c115c: 0e5d         	lsrs	r5, r3, #0x19
  3c115e: 0000         	movs	r0, r0
  3c1160: 0569         	lsls	r1, r5, #0x15
  3c1162: 0000         	movs	r0, r0
  3c1164: 0579         	lsls	r1, r7, #0x15
  3c1166: 0000         	movs	r0, r0
  3c1168: 0589         	lsls	r1, r1, #0x16
  3c116a: 0000         	movs	r0, r0
  3c116c: 0e5d         	lsrs	r5, r3, #0x19
  3c116e: 0000         	movs	r0, r0
  3c1170: 0e5d         	lsrs	r5, r3, #0x19
  3c1172: 0000         	movs	r0, r0
  3c1174: 0e5d         	lsrs	r5, r3, #0x19
  3c1176: 0000         	movs	r0, r0
  3c1178: 0e5d         	lsrs	r5, r3, #0x19
  3c117a: 0000         	movs	r0, r0
  3c117c: 0e5d         	lsrs	r5, r3, #0x19
  3c117e: 0000         	movs	r0, r0
  3c1180: 0e5d         	lsrs	r5, r3, #0x19
  3c1182: 0000         	movs	r0, r0
  3c1184: 0e5d         	lsrs	r5, r3, #0x19
  3c1186: 0000         	movs	r0, r0
  3c1188: 0e5d         	lsrs	r5, r3, #0x19
  3c118a: 0000         	movs	r0, r0
  3c118c: 0e5d         	lsrs	r5, r3, #0x19
  3c118e: 0000         	movs	r0, r0
  3c1190: 0e5d         	lsrs	r5, r3, #0x19
  3c1192: 0000         	movs	r0, r0
  3c1194: 0e5d         	lsrs	r5, r3, #0x19
  3c1196: 0000         	movs	r0, r0
  3c1198: 0e5d         	lsrs	r5, r3, #0x19
  3c119a: 0000         	movs	r0, r0
  3c119c: 0e5d         	lsrs	r5, r3, #0x19
  3c119e: 0000         	movs	r0, r0
  3c11a0: 0e5d         	lsrs	r5, r3, #0x19
  3c11a2: 0000         	movs	r0, r0
  3c11a4: 0e5d         	lsrs	r5, r3, #0x19
  3c11a6: 0000         	movs	r0, r0
  3c11a8: 0e5d         	lsrs	r5, r3, #0x19
  3c11aa: 0000         	movs	r0, r0
  3c11ac: 0e5d         	lsrs	r5, r3, #0x19
  3c11ae: 0000         	movs	r0, r0
  3c11b0: 0e5d         	lsrs	r5, r3, #0x19
  3c11b2: 0000         	movs	r0, r0
  3c11b4: 0e5d         	lsrs	r5, r3, #0x19
  3c11b6: 0000         	movs	r0, r0
  3c11b8: 0e5d         	lsrs	r5, r3, #0x19
  3c11ba: 0000         	movs	r0, r0
  3c11bc: 0e5d         	lsrs	r5, r3, #0x19
  3c11be: 0000         	movs	r0, r0
  3c11c0: 0e5d         	lsrs	r5, r3, #0x19
  3c11c2: 0000         	movs	r0, r0
  3c11c4: 0e5d         	lsrs	r5, r3, #0x19
  3c11c6: 0000         	movs	r0, r0
  3c11c8: 0e5d         	lsrs	r5, r3, #0x19
  3c11ca: 0000         	movs	r0, r0
  3c11cc: 0e5d         	lsrs	r5, r3, #0x19
  3c11ce: 0000         	movs	r0, r0
  3c11d0: 0e5d         	lsrs	r5, r3, #0x19
  3c11d2: 0000         	movs	r0, r0
  3c11d4: 0e5d         	lsrs	r5, r3, #0x19
  3c11d6: 0000         	movs	r0, r0
  3c11d8: 0e5d         	lsrs	r5, r3, #0x19
  3c11da: 0000         	movs	r0, r0
  3c11dc: 0219         	lsls	r1, r3, #0x8
  3c11de: 0000         	movs	r0, r0
  3c11e0: 0255         	lsls	r5, r2, #0x9
  3c11e2: 0000         	movs	r0, r0
  3c11e4: 0237         	lsls	r7, r6, #0x8
  3c11e6: 0000         	movs	r0, r0
  3c11e8: 0209         	lsls	r1, r1, #0x8
  3c11ea: 0000         	movs	r0, r0
  3c11ec: 0273         	lsls	r3, r6, #0x9
  3c11ee: 0000         	movs	r0, r0
  3c11f0: 0399         	lsls	r1, r3, #0xe
  3c11f2: 0000         	movs	r0, r0
  3c11f4: 0e5d         	lsrs	r5, r3, #0x19
  3c11f6: 0000         	movs	r0, r0
  3c11f8: 0e5d         	lsrs	r5, r3, #0x19
  3c11fa: 0000         	movs	r0, r0
  3c11fc: 0e5d         	lsrs	r5, r3, #0x19
  3c11fe: 0000         	movs	r0, r0
  3c1200: 0e5d         	lsrs	r5, r3, #0x19
  3c1202: 0000         	movs	r0, r0
  3c1204: 0e5d         	lsrs	r5, r3, #0x19
  3c1206: 0000         	movs	r0, r0
  3c1208: 0e5d         	lsrs	r5, r3, #0x19
  3c120a: 0000         	movs	r0, r0
  3c120c: 0e5d         	lsrs	r5, r3, #0x19
  3c120e: 0000         	movs	r0, r0
  3c1210: 0e5d         	lsrs	r5, r3, #0x19
  3c1212: 0000         	movs	r0, r0
  3c1214: 0e5d         	lsrs	r5, r3, #0x19
  3c1216: 0000         	movs	r0, r0
  3c1218: 0e5d         	lsrs	r5, r3, #0x19
  3c121a: 0000         	movs	r0, r0
  3c121c: 0e5d         	lsrs	r5, r3, #0x19
  3c121e: 0000         	movs	r0, r0
  3c1220: 0e5d         	lsrs	r5, r3, #0x19
  3c1222: 0000         	movs	r0, r0
  3c1224: 0e5d         	lsrs	r5, r3, #0x19
  3c1226: 0000         	movs	r0, r0
  3c1228: 0e5d         	lsrs	r5, r3, #0x19
  3c122a: 0000         	movs	r0, r0
  3c122c: 01f9         	lsls	r1, r7, #0x7
  3c122e: 0000         	movs	r0, r0
  3c1230: 0e5d         	lsrs	r5, r3, #0x19
  3c1232: 0000         	movs	r0, r0
  3c1234: 0e5d         	lsrs	r5, r3, #0x19
  3c1236: 0000         	movs	r0, r0
  3c1238: 0e5d         	lsrs	r5, r3, #0x19
  3c123a: 0000         	movs	r0, r0
  3c123c: 0e5d         	lsrs	r5, r3, #0x19
  3c123e: 0000         	movs	r0, r0
  3c1240: 0e5d         	lsrs	r5, r3, #0x19
  3c1242: 0000         	movs	r0, r0
  3c1244: 0e5d         	lsrs	r5, r3, #0x19
  3c1246: 0000         	movs	r0, r0
  3c1248: 0e5d         	lsrs	r5, r3, #0x19
  3c124a: 0000         	movs	r0, r0
  3c124c: 0e5d         	lsrs	r5, r3, #0x19
  3c124e: 0000         	movs	r0, r0
  3c1250: 0e5d         	lsrs	r5, r3, #0x19
  3c1252: 0000         	movs	r0, r0
  3c1254: 0e5d         	lsrs	r5, r3, #0x19
  3c1256: 0000         	movs	r0, r0
  3c1258: 0e5d         	lsrs	r5, r3, #0x19
  3c125a: 0000         	movs	r0, r0
  3c125c: 0e5d         	lsrs	r5, r3, #0x19
  3c125e: 0000         	movs	r0, r0
  3c1260: 0e5d         	lsrs	r5, r3, #0x19
  3c1262: 0000         	movs	r0, r0
  3c1264: 0e5d         	lsrs	r5, r3, #0x19
  3c1266: 0000         	movs	r0, r0
  3c1268: 0471         	lsls	r1, r6, #0x11
  3c126a: 0000         	movs	r0, r0
  3c126c: 0e5d         	lsrs	r5, r3, #0x19
  3c126e: 0000         	movs	r0, r0
  3c1270: 0e5d         	lsrs	r5, r3, #0x19
  3c1272: 0000         	movs	r0, r0
  3c1274: 0e5d         	lsrs	r5, r3, #0x19
  3c1276: 0000         	movs	r0, r0
  3c1278: 0e5d         	lsrs	r5, r3, #0x19
  3c127a: 0000         	movs	r0, r0
  3c127c: 0e5d         	lsrs	r5, r3, #0x19
  3c127e: 0000         	movs	r0, r0
  3c1280: 0e5d         	lsrs	r5, r3, #0x19
  3c1282: 0000         	movs	r0, r0
  3c1284: 0e5d         	lsrs	r5, r3, #0x19
  3c1286: 0000         	movs	r0, r0
  3c1288: 0e5d         	lsrs	r5, r3, #0x19
  3c128a: 0000         	movs	r0, r0
  3c128c: 0e5d         	lsrs	r5, r3, #0x19
  3c128e: 0000         	movs	r0, r0
  3c1290: 0e5d         	lsrs	r5, r3, #0x19
  3c1292: 0000         	movs	r0, r0
  3c1294: 0e5d         	lsrs	r5, r3, #0x19
  3c1296: 0000         	movs	r0, r0
  3c1298: 0e5d         	lsrs	r5, r3, #0x19
  3c129a: 0000         	movs	r0, r0
  3c129c: 0e5d         	lsrs	r5, r3, #0x19
  3c129e: 0000         	movs	r0, r0
  3c12a0: 0e5d         	lsrs	r5, r3, #0x19
  3c12a2: 0000         	movs	r0, r0
  3c12a4: 0e5d         	lsrs	r5, r3, #0x19
  3c12a6: 0000         	movs	r0, r0
  3c12a8: 0e5d         	lsrs	r5, r3, #0x19
  3c12aa: 0000         	movs	r0, r0
  3c12ac: 0e5d         	lsrs	r5, r3, #0x19
  3c12ae: 0000         	movs	r0, r0
  3c12b0: 0e5d         	lsrs	r5, r3, #0x19
  3c12b2: 0000         	movs	r0, r0
  3c12b4: 0e5d         	lsrs	r5, r3, #0x19
  3c12b6: 0000         	movs	r0, r0
  3c12b8: 0e5d         	lsrs	r5, r3, #0x19
  3c12ba: 0000         	movs	r0, r0
  3c12bc: 0e5d         	lsrs	r5, r3, #0x19
  3c12be: 0000         	movs	r0, r0
  3c12c0: 0e5d         	lsrs	r5, r3, #0x19
  3c12c2: 0000         	movs	r0, r0
  3c12c4: 0e5d         	lsrs	r5, r3, #0x19
  3c12c6: 0000         	movs	r0, r0
  3c12c8: 0e5d         	lsrs	r5, r3, #0x19
  3c12ca: 0000         	movs	r0, r0
  3c12cc: 0e5d         	lsrs	r5, r3, #0x19
  3c12ce: 0000         	movs	r0, r0
  3c12d0: 0e5d         	lsrs	r5, r3, #0x19
  3c12d2: 0000         	movs	r0, r0
  3c12d4: 0e5d         	lsrs	r5, r3, #0x19
  3c12d6: 0000         	movs	r0, r0
  3c12d8: 0e5d         	lsrs	r5, r3, #0x19
  3c12da: 0000         	movs	r0, r0
  3c12dc: 0e5d         	lsrs	r5, r3, #0x19
  3c12de: 0000         	movs	r0, r0
  3c12e0: 0e5d         	lsrs	r5, r3, #0x19
  3c12e2: 0000         	movs	r0, r0
  3c12e4: 0e5d         	lsrs	r5, r3, #0x19
  3c12e6: 0000         	movs	r0, r0
  3c12e8: 0e5d         	lsrs	r5, r3, #0x19
  3c12ea: 0000         	movs	r0, r0
  3c12ec: 0e5d         	lsrs	r5, r3, #0x19
  3c12ee: 0000         	movs	r0, r0
  3c12f0: 0e5d         	lsrs	r5, r3, #0x19
  3c12f2: 0000         	movs	r0, r0
  3c12f4: 0e5d         	lsrs	r5, r3, #0x19
  3c12f6: 0000         	movs	r0, r0
  3c12f8: 0e5d         	lsrs	r5, r3, #0x19
  3c12fa: 0000         	movs	r0, r0
  3c12fc: 0b17         	lsrs	r7, r2, #0xc
  3c12fe: 0000         	movs	r0, r0
  3c1300: 0b17         	lsrs	r7, r2, #0xc
  3c1302: 0000         	movs	r0, r0
  3c1304: 0de3         	lsrs	r3, r4, #0x17
  3c1306: 0000         	movs	r0, r0
  3c1308: 0b17         	lsrs	r7, r2, #0xc
  3c130a: 0000         	movs	r0, r0
  3c130c: 0b17         	lsrs	r7, r2, #0xc
  3c130e: 0000         	movs	r0, r0
  3c1310: 0de3         	lsrs	r3, r4, #0x17
  3c1312: 0000         	movs	r0, r0
  3c1314: 0b17         	lsrs	r7, r2, #0xc
  3c1316: 0000         	movs	r0, r0
  3c1318: 0b17         	lsrs	r7, r2, #0xc
  3c131a: 0000         	movs	r0, r0
  3c131c: f8df 3984    	ldr.w	r3, [pc, #0x984]        @ 0x3c1ca4 <RakNetDelegate::updateLoop(float)+0xbfc>
  3c1320: 447b         	add	r3, pc
  3c1322: 4618         	mov	r0, r3
  3c1324: f714 ee68    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb330
  3c1328: f000 be33    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0xc66
  3c132c: f8df 3978    	ldr.w	r3, [pc, #0x978]        @ 0x3c1ca8 <RakNetDelegate::updateLoop(float)+0xc00>
  3c1330: 447b         	add	r3, pc
  3c1332: 4618         	mov	r0, r3
  3c1334: f714 ee8a    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb2ec
  3c1338: f000 be2b    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0xc56
  3c133c: f8df 396c    	ldr.w	r3, [pc, #0x96c]        @ 0x3c1cac <RakNetDelegate::updateLoop(float)+0xc04>
  3c1340: 447b         	add	r3, pc
  3c1342: 4618         	mov	r0, r3
  3c1344: f714 ee82    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb2fc
  3c1348: 9b18         	ldr	r3, [sp, #0x60]
  3c134a: 2201         	movs	r2, #0x1
  3c134c: 9200         	str	r2, [sp]
  3c134e: 3318         	adds	r3, #0x18
  3c1350: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c1352: f7ff fa05    	bl	0x3c0760 <UpdatePendingNATPeers(RakNet::RakNetGUID, bool)> @ imm = #-0xbf6
  3c1356: f000 be1c    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0xc38
  3c135a: f8df 3954    	ldr.w	r3, [pc, #0x954]        @ 0x3c1cb0 <RakNetDelegate::updateLoop(float)+0xc08>
  3c135e: 447b         	add	r3, pc
  3c1360: 4618         	mov	r0, r3
  3c1362: f714 ee74    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb318
  3c1366: 9b18         	ldr	r3, [sp, #0x60]
  3c1368: 2201         	movs	r2, #0x1
  3c136a: 9200         	str	r2, [sp]
  3c136c: 3318         	adds	r3, #0x18
  3c136e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c1370: f7ff f9f6    	bl	0x3c0760 <UpdatePendingNATPeers(RakNet::RakNetGUID, bool)> @ imm = #-0xc14
  3c1374: f000 be0d    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0xc1a
  3c1378: f8df 3938    	ldr.w	r3, [pc, #0x938]        @ 0x3c1cb4 <RakNetDelegate::updateLoop(float)+0xc0c>
  3c137c: 447b         	add	r3, pc
  3c137e: 4618         	mov	r0, r3
  3c1380: f714 ee64    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb338
  3c1384: 9b18         	ldr	r3, [sp, #0x60]
  3c1386: 2201         	movs	r2, #0x1
  3c1388: 9200         	str	r2, [sp]
  3c138a: 3318         	adds	r3, #0x18
  3c138c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c138e: f7ff f9e7    	bl	0x3c0760 <UpdatePendingNATPeers(RakNet::RakNetGUID, bool)> @ imm = #-0xc32
  3c1392: f000 bdfe    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0xbfc
  3c1396: f8df 3920    	ldr.w	r3, [pc, #0x920]        @ 0x3c1cb8 <RakNetDelegate::updateLoop(float)+0xc10>
  3c139a: 447b         	add	r3, pc
  3c139c: 4618         	mov	r0, r3
  3c139e: f714 ee56    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb354
  3c13a2: 9b18         	ldr	r3, [sp, #0x60]
  3c13a4: 2201         	movs	r2, #0x1
  3c13a6: 9200         	str	r2, [sp]
  3c13a8: 3318         	adds	r3, #0x18
  3c13aa: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c13ac: f7ff f9d8    	bl	0x3c0760 <UpdatePendingNATPeers(RakNet::RakNetGUID, bool)> @ imm = #-0xc50
  3c13b0: 4603         	mov	r3, r0
  3c13b2: 9317         	str	r3, [sp, #0x5c]
  3c13b4: 9b18         	ldr	r3, [sp, #0x60]
  3c13b6: 6b1b         	ldr	r3, [r3, #0x30]
  3c13b8: 3301         	adds	r3, #0x1
  3c13ba: 781b         	ldrb	r3, [r3]
  3c13bc: 2b00         	cmp	r3, #0x0
  3c13be: d07b         	beq	0x3c14b8 <RakNetDelegate::updateLoop(float)+0x410> @ imm = #0xf6
  3c13c0: f8df 38f8    	ldr.w	r3, [pc, #0x8f8]        @ 0x3c1cbc <RakNetDelegate::updateLoop(float)+0xc14>
  3c13c4: 447b         	add	r3, pc
  3c13c6: 781b         	ldrb	r3, [r3]
  3c13c8: 2b00         	cmp	r3, #0x0
  3c13ca: d061         	beq	0x3c1490 <RakNetDelegate::updateLoop(float)+0x3e8> @ imm = #0xc2
  3c13cc: f8df 38f0    	ldr.w	r3, [pc, #0x8f0]        @ 0x3c1cc0 <RakNetDelegate::updateLoop(float)+0xc18>
  3c13d0: 447b         	add	r3, pc
  3c13d2: 681b         	ldr	r3, [r3]
  3c13d4: 2b00         	cmp	r3, #0x0
  3c13d6: d05b         	beq	0x3c1490 <RakNetDelegate::updateLoop(float)+0x3e8> @ imm = #0xb6
  3c13d8: 9c17         	ldr	r4, [sp, #0x5c]
  3c13da: 9b18         	ldr	r3, [sp, #0x60]
  3c13dc: 4618         	mov	r0, r3
  3c13de: 2101         	movs	r1, #0x1
  3c13e0: 227c         	movs	r2, #0x7c
  3c13e2: f0e2 fe7b    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe2cf6
  3c13e6: 4603         	mov	r3, r0
  3c13e8: f8df 28d8    	ldr.w	r2, [pc, #0x8d8]        @ 0x3c1cc4 <RakNetDelegate::updateLoop(float)+0xc1c>
  3c13ec: 447a         	add	r2, pc
  3c13ee: 4610         	mov	r0, r2
  3c13f0: 4621         	mov	r1, r4
  3c13f2: 461a         	mov	r2, r3
  3c13f4: f714 ee00    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb400
  3c13f8: f8df 38cc    	ldr.w	r3, [pc, #0x8cc]        @ 0x3c1cc8 <RakNetDelegate::updateLoop(float)+0xc20>
  3c13fc: 447b         	add	r3, pc
  3c13fe: 681f         	ldr	r7, [r3]
  3c1400: f8df 38c8    	ldr.w	r3, [pc, #0x8c8]        @ 0x3c1ccc <RakNetDelegate::updateLoop(float)+0xc24>
  3c1404: 447b         	add	r3, pc
  3c1406: 4618         	mov	r0, r3
  3c1408: f7fd f874    	bl	0x3be4f4 <RakNet::RakString::operator char const*() const> @ imm = #-0x2f18
  3c140c: 4603         	mov	r3, r0
  3c140e: aa28         	add	r2, sp, #0xa0
  3c1410: 4610         	mov	r0, r2
  3c1412: 4619         	mov	r1, r3
  3c1414: f241 12ca    	movw	r2, #0x11ca
  3c1418: f0e2 feee    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe2ddc
  3c141c: f8df 38b0    	ldr.w	r3, [pc, #0x8b0]        @ 0x3c1cd0 <RakNetDelegate::updateLoop(float)+0xc28>
  3c1420: 447b         	add	r3, pc
  3c1422: ad02         	add	r5, sp, #0x8
  3c1424: 461c         	mov	r4, r3
  3c1426: cc0f         	ldm	r4!, {r0, r1, r2, r3}
  3c1428: c50f         	stm	r5!, {r0, r1, r2, r3}
  3c142a: 6823         	ldr	r3, [r4]
  3c142c: 602b         	str	r3, [r5]
  3c142e: 9b18         	ldr	r3, [sp, #0x60]
  3c1430: ad07         	add	r5, sp, #0x1c
  3c1432: 461c         	mov	r4, r3
  3c1434: cc0f         	ldm	r4!, {r0, r1, r2, r3}
  3c1436: c50f         	stm	r5!, {r0, r1, r2, r3}
  3c1438: 6823         	ldr	r3, [r4]
  3c143a: 602b         	str	r3, [r5]
  3c143c: f641 3358    	movw	r3, #0x1b58
  3c1440: 930c         	str	r3, [sp, #0x30]
  3c1442: 2300         	movs	r3, #0x0
  3c1444: 930d         	str	r3, [sp, #0x34]
  3c1446: 466b         	mov	r3, sp
  3c1448: aa2b         	add	r2, sp, #0xac
  3c144a: e892 0003    	ldm.w	r2, {r0, r1}
  3c144e: e883 0003    	stm.w	r3, {r0, r1}
  3c1452: ab28         	add	r3, sp, #0xa0
  3c1454: cb0e         	ldm	r3, {r1, r2, r3}
  3c1456: 4638         	mov	r0, r7
  3c1458: f12d f830    	bl	0x4ee4bc <RakNet::UDPProxyClient::RequestForwarding(RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, unsigned int, RakNet::BitStream*)> @ imm = #0x12d060
  3c145c: 9b18         	ldr	r3, [sp, #0x60]
  3c145e: f8df 2874    	ldr.w	r2, [pc, #0x874]        @ 0x3c1cd4 <RakNetDelegate::updateLoop(float)+0xc2c>
  3c1462: 447a         	add	r2, pc
  3c1464: 4610         	mov	r0, r2
  3c1466: 4619         	mov	r1, r3
  3c1468: f001 fb30    	bl	0x3c2acc <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Has(RakNet::SystemAddress const&) const> @ imm = #0x1660
  3c146c: 4603         	mov	r3, r0
  3c146e: f083 0301    	eor	r3, r3, #0x1
  3c1472: b2db         	uxtb	r3, r3
  3c1474: 2b00         	cmp	r3, #0x0
  3c1476: d009         	beq	0x3c148c <RakNetDelegate::updateLoop(float)+0x3e4> @ imm = #0x12
  3c1478: 9a18         	ldr	r2, [sp, #0x60]
  3c147a: ab17         	add	r3, sp, #0x5c
  3c147c: f8df 1858    	ldr.w	r1, [pc, #0x858]        @ 0x3c1cd8 <RakNetDelegate::updateLoop(float)+0xc30>
  3c1480: 4479         	add	r1, pc
  3c1482: 4608         	mov	r0, r1
  3c1484: 4611         	mov	r1, r2
  3c1486: 461a         	mov	r2, r3
  3c1488: f001 fb84    	bl	0x3c2b94 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Set(RakNet::SystemAddress const&, int const&)> @ imm = #0x1708
  3c148c: bf00         	nop
  3c148e: e013         	b	0x3c14b8 <RakNetDelegate::updateLoop(float)+0x410> @ imm = #0x26
  3c1490: 2300         	movs	r3, #0x0
  3c1492: f8ad 3058    	strh.w	r3, [sp, #0x58]
  3c1496: 2305         	movs	r3, #0x5
  3c1498: f88d 3058    	strb.w	r3, [sp, #0x58]
  3c149c: 9b17         	ldr	r3, [sp, #0x5c]
  3c149e: b2db         	uxtb	r3, r3
  3c14a0: f88d 3059    	strb.w	r3, [sp, #0x59]
  3c14a4: f7b6 fb4c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x49968
  3c14a8: 4602         	mov	r2, r0
  3c14aa: ab16         	add	r3, sp, #0x58
  3c14ac: 4610         	mov	r0, r2
  3c14ae: 4619         	mov	r1, r3
  3c14b0: 2202         	movs	r2, #0x2
  3c14b2: 2301         	movs	r3, #0x1
  3c14b4: f7b9 f8f8    	bl	0x37a6a8 <NetworkManager::sendDataToServer(void const*, int, bool)> @ imm = #-0x46e10
  3c14b8: f000 bd6b    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0xad6
  3c14bc: f8df 381c    	ldr.w	r3, [pc, #0x81c]        @ 0x3c1cdc <RakNetDelegate::updateLoop(float)+0xc34>
  3c14c0: 447b         	add	r3, pc
  3c14c2: 4618         	mov	r0, r3
  3c14c4: f714 edc2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb47c
  3c14c8: 9b18         	ldr	r3, [sp, #0x60]
  3c14ca: 2200         	movs	r2, #0x0
  3c14cc: 9200         	str	r2, [sp]
  3c14ce: 3318         	adds	r3, #0x18
  3c14d0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c14d2: f7ff f945    	bl	0x3c0760 <UpdatePendingNATPeers(RakNet::RakNetGUID, bool)> @ imm = #-0xd76
  3c14d6: 4603         	mov	r3, r0
  3c14d8: 9317         	str	r3, [sp, #0x5c]
  3c14da: 9b18         	ldr	r3, [sp, #0x60]
  3c14dc: 6b1b         	ldr	r3, [r3, #0x30]
  3c14de: 3301         	adds	r3, #0x1
  3c14e0: 781b         	ldrb	r3, [r3]
  3c14e2: 2b00         	cmp	r3, #0x0
  3c14e4: d054         	beq	0x3c1590 <RakNetDelegate::updateLoop(float)+0x4e8> @ imm = #0xa8
  3c14e6: 9b18         	ldr	r3, [sp, #0x60]
  3c14e8: ac28         	add	r4, sp, #0xa0
  3c14ea: 461d         	mov	r5, r3
  3c14ec: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  3c14ee: c40f         	stm	r4!, {r0, r1, r2, r3}
  3c14f0: 682b         	ldr	r3, [r5]
  3c14f2: 6023         	str	r3, [r4]
  3c14f4: ab28         	add	r3, sp, #0xa0
  3c14f6: 4618         	mov	r0, r3
  3c14f8: 2101         	movs	r1, #0x1
  3c14fa: 227c         	movs	r2, #0x7c
  3c14fc: f0e2 fdee    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe2bdc
  3c1500: 4603         	mov	r3, r0
  3c1502: f8df 27dc    	ldr.w	r2, [pc, #0x7dc]        @ 0x3c1ce0 <RakNetDelegate::updateLoop(float)+0xc38>
  3c1506: 447a         	add	r2, pc
  3c1508: 4610         	mov	r0, r2
  3c150a: 4619         	mov	r1, r3
  3c150c: f714 ed74    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb518
  3c1510: f8df 37d0    	ldr.w	r3, [pc, #0x7d0]        @ 0x3c1ce4 <RakNetDelegate::updateLoop(float)+0xc3c>
  3c1514: 447b         	add	r3, pc
  3c1516: 681b         	ldr	r3, [r3]
  3c1518: 681b         	ldr	r3, [r3]
  3c151a: 3338         	adds	r3, #0x38
  3c151c: 681c         	ldr	r4, [r3]
  3c151e: f8df 37c8    	ldr.w	r3, [pc, #0x7c8]        @ 0x3c1ce8 <RakNetDelegate::updateLoop(float)+0xc40>
  3c1522: 447b         	add	r3, pc
  3c1524: 681f         	ldr	r7, [r3]
  3c1526: ab28         	add	r3, sp, #0xa0
  3c1528: 4618         	mov	r0, r3
  3c152a: 2100         	movs	r1, #0x0
  3c152c: 227c         	movs	r2, #0x7c
  3c152e: f0e2 fdd5    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe2baa
  3c1532: 4605         	mov	r5, r0
  3c1534: ab28         	add	r3, sp, #0xa0
  3c1536: 4618         	mov	r0, r3
  3c1538: f0e2 fc34    	bl	0x4a3da4 <RakNet::SystemAddress::GetPort() const> @ imm = #0xe2868
  3c153c: 4603         	mov	r3, r0
  3c153e: 221a         	movs	r2, #0x1a
  3c1540: 9200         	str	r2, [sp]
  3c1542: 2200         	movs	r2, #0x0
  3c1544: 9201         	str	r2, [sp, #0x4]
  3c1546: 2200         	movs	r2, #0x0
  3c1548: 9202         	str	r2, [sp, #0x8]
  3c154a: 220c         	movs	r2, #0xc
  3c154c: 9203         	str	r2, [sp, #0xc]
  3c154e: f44f 72fa    	mov.w	r2, #0x1f4
  3c1552: 9204         	str	r2, [sp, #0x10]
  3c1554: 2200         	movs	r2, #0x0
  3c1556: 9205         	str	r2, [sp, #0x14]
  3c1558: 4638         	mov	r0, r7
  3c155a: 4629         	mov	r1, r5
  3c155c: 461a         	mov	r2, r3
  3c155e: f8df 378c    	ldr.w	r3, [pc, #0x78c]        @ 0x3c1cec <RakNetDelegate::updateLoop(float)+0xc44>
  3c1562: 447b         	add	r3, pc
  3c1564: 47a0         	blx	r4
  3c1566: 4603         	mov	r3, r0
  3c1568: 931d         	str	r3, [sp, #0x74]
  3c156a: 9b1d         	ldr	r3, [sp, #0x74]
  3c156c: 2b00         	cmp	r3, #0x0
  3c156e: d005         	beq	0x3c157c <RakNetDelegate::updateLoop(float)+0x4d4> @ imm = #0xa
  3c1570: f8df 377c    	ldr.w	r3, [pc, #0x77c]        @ 0x3c1cf0 <RakNetDelegate::updateLoop(float)+0xc48>
  3c1574: 447b         	add	r3, pc
  3c1576: 4618         	mov	r0, r3
  3c1578: f714 ed68    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb530
  3c157c: aa28         	add	r2, sp, #0xa0
  3c157e: ab17         	add	r3, sp, #0x5c
  3c1580: f8df 1770    	ldr.w	r1, [pc, #0x770]        @ 0x3c1cf4 <RakNetDelegate::updateLoop(float)+0xc4c>
  3c1584: 4479         	add	r1, pc
  3c1586: 4608         	mov	r0, r1
  3c1588: 4611         	mov	r1, r2
  3c158a: 461a         	mov	r2, r3
  3c158c: f001 fb02    	bl	0x3c2b94 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Set(RakNet::SystemAddress const&, int const&)> @ imm = #0x1604
  3c1590: f000 bcff    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x9fe
  3c1594: 9b18         	ldr	r3, [sp, #0x60]
  3c1596: 6b1b         	ldr	r3, [r3, #0x30]
  3c1598: 3301         	adds	r3, #0x1
  3c159a: 781b         	ldrb	r3, [r3]
  3c159c: 931e         	str	r3, [sp, #0x78]
  3c159e: 981e         	ldr	r0, [sp, #0x78]
  3c15a0: f0d3 f9ac    	bl	0x4948fc <RakNet::NATTypeDetectionResultToString(RakNet::NATTypeDetectionResult)> @ imm = #0xd3358
  3c15a4: 4604         	mov	r4, r0
  3c15a6: 981e         	ldr	r0, [sp, #0x78]
  3c15a8: f0d3 f9f8    	bl	0x49499c <RakNet::NATTypeDetectionResultToStringFriendly(RakNet::NATTypeDetectionResult)> @ imm = #0xd33f0
  3c15ac: 4603         	mov	r3, r0
  3c15ae: f8df 2748    	ldr.w	r2, [pc, #0x748]        @ 0x3c1cf8 <RakNetDelegate::updateLoop(float)+0xc50>
  3c15b2: 447a         	add	r2, pc
  3c15b4: 4610         	mov	r0, r2
  3c15b6: 4621         	mov	r1, r4
  3c15b8: 461a         	mov	r2, r3
  3c15ba: f714 ed1e    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb5c4
  3c15be: f8df 373c    	ldr.w	r3, [pc, #0x73c]        @ 0x3c1cfc <RakNetDelegate::updateLoop(float)+0xc54>
  3c15c2: 447b         	add	r3, pc
  3c15c4: 4618         	mov	r0, r3
  3c15c6: f714 ed42    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb57c
  3c15ca: 2300         	movs	r3, #0x0
  3c15cc: 931a         	str	r3, [sp, #0x68]
  3c15ce: e016         	b	0x3c15fe <RakNetDelegate::updateLoop(float)+0x556> @ imm = #0x2c
  3c15d0: 9b1a         	ldr	r3, [sp, #0x68]
  3c15d2: 981e         	ldr	r0, [sp, #0x78]
  3c15d4: 4619         	mov	r1, r3
  3c15d6: f0d3 f96d    	bl	0x4948b4 <RakNet::CanConnect(RakNet::NATTypeDetectionResult, RakNet::NATTypeDetectionResult)> @ imm = #0xd32da
  3c15da: 4603         	mov	r3, r0
  3c15dc: 2b00         	cmp	r3, #0x0
  3c15de: d00b         	beq	0x3c15f8 <RakNetDelegate::updateLoop(float)+0x550> @ imm = #0x16
  3c15e0: 9b1a         	ldr	r3, [sp, #0x68]
  3c15e2: 4618         	mov	r0, r3
  3c15e4: f0d3 f98a    	bl	0x4948fc <RakNet::NATTypeDetectionResultToString(RakNet::NATTypeDetectionResult)> @ imm = #0xd3314
  3c15e8: 4603         	mov	r3, r0
  3c15ea: f8df 2714    	ldr.w	r2, [pc, #0x714]        @ 0x3c1d00 <RakNetDelegate::updateLoop(float)+0xc58>
  3c15ee: 447a         	add	r2, pc
  3c15f0: 4610         	mov	r0, r2
  3c15f2: 4619         	mov	r1, r3
  3c15f4: f714 ed00    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb600
  3c15f8: 9b1a         	ldr	r3, [sp, #0x68]
  3c15fa: 3301         	adds	r3, #0x1
  3c15fc: 931a         	str	r3, [sp, #0x68]
  3c15fe: 9b1a         	ldr	r3, [sp, #0x68]
  3c1600: 2b07         	cmp	r3, #0x7
  3c1602: dde5         	ble	0x3c15d0 <RakNetDelegate::updateLoop(float)+0x528> @ imm = #-0x36
  3c1604: 9b1e         	ldr	r3, [sp, #0x78]
  3c1606: 2b03         	cmp	r3, #0x3
  3c1608: d002         	beq	0x3c1610 <RakNetDelegate::updateLoop(float)+0x568> @ imm = #0x4
  3c160a: 9b1e         	ldr	r3, [sp, #0x78]
  3c160c: 2b04         	cmp	r3, #0x4
  3c160e: d10d         	bne	0x3c162c <RakNetDelegate::updateLoop(float)+0x584> @ imm = #0x1a
  3c1610: f8df 36f0    	ldr.w	r3, [pc, #0x6f0]        @ 0x3c1d04 <RakNetDelegate::updateLoop(float)+0xc5c>
  3c1614: 447b         	add	r3, pc
  3c1616: 4618         	mov	r0, r3
  3c1618: f714 ed18    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb5d0
  3c161c: f8df 36e8    	ldr.w	r3, [pc, #0x6e8]        @ 0x3c1d08 <RakNetDelegate::updateLoop(float)+0xc60>
  3c1620: 447b         	add	r3, pc
  3c1622: 4618         	mov	r0, r3
  3c1624: f714 ed12    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb5dc
  3c1628: f000 bcb3    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x966
  3c162c: f000 bcb1    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x962
  3c1630: f8df 36d8    	ldr.w	r3, [pc, #0x6d8]        @ 0x3c1d0c <RakNetDelegate::updateLoop(float)+0xc64>
  3c1634: 447b         	add	r3, pc
  3c1636: 2200         	movs	r2, #0x0
  3c1638: 701a         	strb	r2, [r3]
  3c163a: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x3c1d10 <RakNetDelegate::updateLoop(float)+0xc68>
  3c163e: 447b         	add	r3, pc
  3c1640: 2200         	movs	r2, #0x0
  3c1642: 701a         	strb	r2, [r3]
  3c1644: f8df 36cc    	ldr.w	r3, [pc, #0x6cc]        @ 0x3c1d14 <RakNetDelegate::updateLoop(float)+0xc6c>
  3c1648: 447b         	add	r3, pc
  3c164a: 4618         	mov	r0, r3
  3c164c: f714 ecfe    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb604
  3c1650: f000 bc9f    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x93e
  3c1654: f8df 36c0    	ldr.w	r3, [pc, #0x6c0]        @ 0x3c1d18 <RakNetDelegate::updateLoop(float)+0xc70>
  3c1658: 447b         	add	r3, pc
  3c165a: 4618         	mov	r0, r3
  3c165c: f714 ecf6    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb614
  3c1660: 980f         	ldr	r0, [sp, #0x3c]
  3c1662: f001 f95d    	bl	0x3c2920 <RakNetDelegate::isOnline()> @ imm = #0x12ba
  3c1666: 4603         	mov	r3, r0
  3c1668: 2b00         	cmp	r3, #0x0
  3c166a: d005         	beq	0x3c1678 <RakNetDelegate::updateLoop(float)+0x5d0> @ imm = #0xa
  3c166c: 980f         	ldr	r0, [sp, #0x3c]
  3c166e: f000 fefd    	bl	0x3c246c <RakNetDelegate::shutdown()> @ imm = #0xdfa
  3c1672: 980f         	ldr	r0, [sp, #0x3c]
  3c1674: f7ff fcfe    	bl	0x3c1074 <RakNetDelegate::connectToNextServer()> @ imm = #-0x604
  3c1678: f000 bc8b    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x916
  3c167c: f8df 369c    	ldr.w	r3, [pc, #0x69c]        @ 0x3c1d1c <RakNetDelegate::updateLoop(float)+0xc74>
  3c1680: 447b         	add	r3, pc
  3c1682: 4618         	mov	r0, r3
  3c1684: f714 ece2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb63c
  3c1688: f000 bc83    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x906
  3c168c: f8df 3690    	ldr.w	r3, [pc, #0x690]        @ 0x3c1d20 <RakNetDelegate::updateLoop(float)+0xc78>
  3c1690: 447b         	add	r3, pc
  3c1692: 4618         	mov	r0, r3
  3c1694: f714 ecda    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb64c
  3c1698: f000 bc7b    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x8f6
  3c169c: f8df 3684    	ldr.w	r3, [pc, #0x684]        @ 0x3c1d24 <RakNetDelegate::updateLoop(float)+0xc7c>
  3c16a0: 447b         	add	r3, pc
  3c16a2: 4618         	mov	r0, r3
  3c16a4: f714 ecd2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb65c
  3c16a8: f000 bc73    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x8e6
  3c16ac: f8df 3678    	ldr.w	r3, [pc, #0x678]        @ 0x3c1d28 <RakNetDelegate::updateLoop(float)+0xc80>
  3c16b0: 447b         	add	r3, pc
  3c16b2: 4618         	mov	r0, r3
  3c16b4: f714 ecca    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb66c
  3c16b8: f000 bc6b    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x8d6
  3c16bc: f8df 366c    	ldr.w	r3, [pc, #0x66c]        @ 0x3c1d2c <RakNetDelegate::updateLoop(float)+0xc84>
  3c16c0: 447b         	add	r3, pc
  3c16c2: 4618         	mov	r0, r3
  3c16c4: f714 ecc2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb67c
  3c16c8: f000 bc63    	b.w	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x8c6
  3c16cc: 9818         	ldr	r0, [sp, #0x60]
  3c16ce: f7ff fc3b    	bl	0x3c0f48 <DetermineConnectionIdentity(RakNet::Packet*)> @ imm = #-0x78a
  3c16d2: 4603         	mov	r3, r0
  3c16d4: 931f         	str	r3, [sp, #0x7c]
  3c16d6: 9b1f         	ldr	r3, [sp, #0x7c]
  3c16d8: 2b01         	cmp	r3, #0x1
  3c16da: d106         	bne	0x3c16ea <RakNetDelegate::updateLoop(float)+0x642> @ imm = #0xc
  3c16dc: f8df 3650    	ldr.w	r3, [pc, #0x650]        @ 0x3c1d30 <RakNetDelegate::updateLoop(float)+0xc88>
  3c16e0: 447b         	add	r3, pc
  3c16e2: 4618         	mov	r0, r3
  3c16e4: f714 ecb2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeb69c
  3c16e8: e08e         	b	0x3c1808 <RakNetDelegate::updateLoop(float)+0x760> @ imm = #0x11c
  3c16ea: 9b1f         	ldr	r3, [sp, #0x7c]
  3c16ec: 2b00         	cmp	r3, #0x0
  3c16ee: d148         	bne	0x3c1782 <RakNetDelegate::updateLoop(float)+0x6da> @ imm = #0x90
  3c16f0: f8df 3640    	ldr.w	r3, [pc, #0x640]        @ 0x3c1d34 <RakNetDelegate::updateLoop(float)+0xc8c>
  3c16f4: 447b         	add	r3, pc
  3c16f6: 2200         	movs	r2, #0x0
  3c16f8: 701a         	strb	r2, [r3]
  3c16fa: f8df 363c    	ldr.w	r3, [pc, #0x63c]        @ 0x3c1d38 <RakNetDelegate::updateLoop(float)+0xc90>
  3c16fe: 447b         	add	r3, pc
  3c1700: 2200         	movs	r2, #0x0
  3c1702: 701a         	strb	r2, [r3]
  3c1704: f8df 3634    	ldr.w	r3, [pc, #0x634]        @ 0x3c1d3c <RakNetDelegate::updateLoop(float)+0xc94>
  3c1708: 447b         	add	r3, pc
  3c170a: 681b         	ldr	r3, [r3]
  3c170c: f8df 2630    	ldr.w	r2, [pc, #0x630]        @ 0x3c1d40 <RakNetDelegate::updateLoop(float)+0xc98>
  3c1710: 447a         	add	r2, pc
  3c1712: 4610         	mov	r0, r2
  3c1714: 4619         	mov	r1, r3
  3c1716: f001 fb87    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x170e
  3c171a: 4603         	mov	r3, r0
  3c171c: 4618         	mov	r0, r3
  3c171e: f3f3 fdef    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f3bde
  3c1722: 4603         	mov	r3, r0
  3c1724: f8df 261c    	ldr.w	r2, [pc, #0x61c]        @ 0x3c1d44 <RakNetDelegate::updateLoop(float)+0xc9c>
  3c1728: 447a         	add	r2, pc
  3c172a: 4610         	mov	r0, r2
  3c172c: 4619         	mov	r1, r3
  3c172e: f714 ec64    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb738
  3c1732: f21e ffbd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21ef7a
  3c1736: 4604         	mov	r4, r0
  3c1738: f8df 360c    	ldr.w	r3, [pc, #0x60c]        @ 0x3c1d48 <RakNetDelegate::updateLoop(float)+0xca0>
  3c173c: 447b         	add	r3, pc
  3c173e: 681b         	ldr	r3, [r3]
  3c1740: f8df 2608    	ldr.w	r2, [pc, #0x608]        @ 0x3c1d4c <RakNetDelegate::updateLoop(float)+0xca4>
  3c1744: 447a         	add	r2, pc
  3c1746: 4610         	mov	r0, r2
  3c1748: 4619         	mov	r1, r3
  3c174a: f001 fb6d    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x16da
  3c174e: 4603         	mov	r3, r0
  3c1750: 3304         	adds	r3, #0x4
  3c1752: 4618         	mov	r0, r3
  3c1754: f3f3 fdd4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f3ba8
  3c1758: 4603         	mov	r3, r0
  3c175a: f8df 25f4    	ldr.w	r2, [pc, #0x5f4]        @ 0x3c1d50 <RakNetDelegate::updateLoop(float)+0xca8>
  3c175e: 447a         	add	r2, pc
  3c1760: 4610         	mov	r0, r2
  3c1762: 4619         	mov	r1, r3
  3c1764: f1d8 f9d4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d83a8
  3c1768: 4603         	mov	r3, r0
  3c176a: 4620         	mov	r0, r4
  3c176c: f8df 25e4    	ldr.w	r2, [pc, #0x5e4]        @ 0x3c1d54 <RakNetDelegate::updateLoop(float)+0xcac>
  3c1770: 447a         	add	r2, pc
  3c1772: 4611         	mov	r1, r2
  3c1774: 461a         	mov	r2, r3
  3c1776: f21f f9d9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x21f3b2
  3c177a: 980f         	ldr	r0, [sp, #0x3c]
  3c177c: f7ff fc7a    	bl	0x3c1074 <RakNetDelegate::connectToNextServer()> @ imm = #-0x70c
  3c1780: e042         	b	0x3c1808 <RakNetDelegate::updateLoop(float)+0x760> @ imm = #0x84
  3c1782: 9b1f         	ldr	r3, [sp, #0x7c]
  3c1784: 2b03         	cmp	r3, #0x3
  3c1786: d136         	bne	0x3c17f6 <RakNetDelegate::updateLoop(float)+0x74e> @ imm = #0x6c
  3c1788: 9b18         	ldr	r3, [sp, #0x60]
  3c178a: f8df 25cc    	ldr.w	r2, [pc, #0x5cc]        @ 0x3c1d58 <RakNetDelegate::updateLoop(float)+0xcb0>
  3c178e: 447a         	add	r2, pc
  3c1790: 4610         	mov	r0, r2
  3c1792: 4619         	mov	r1, r3
  3c1794: f001 f9c8    	bl	0x3c2b28 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Get(RakNet::SystemAddress const&) const> @ imm = #0x1390
  3c1798: 4603         	mov	r3, r0
  3c179a: 681b         	ldr	r3, [r3]
  3c179c: 9320         	str	r3, [sp, #0x80]
  3c179e: 9b18         	ldr	r3, [sp, #0x60]
  3c17a0: 4618         	mov	r0, r3
  3c17a2: 2101         	movs	r1, #0x1
  3c17a4: 227c         	movs	r2, #0x7c
  3c17a6: f0e2 fc99    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe2932
  3c17aa: 4603         	mov	r3, r0
  3c17ac: f8df 25ac    	ldr.w	r2, [pc, #0x5ac]        @ 0x3c1d5c <RakNetDelegate::updateLoop(float)+0xcb4>
  3c17b0: 447a         	add	r2, pc
  3c17b2: 4610         	mov	r0, r2
  3c17b4: 9920         	ldr	r1, [sp, #0x80]
  3c17b6: 461a         	mov	r2, r3
  3c17b8: f714 ec1e    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb7c4
  3c17bc: 9b18         	ldr	r3, [sp, #0x60]
  3c17be: f8df 25a0    	ldr.w	r2, [pc, #0x5a0]        @ 0x3c1d60 <RakNetDelegate::updateLoop(float)+0xcb8>
  3c17c2: 447a         	add	r2, pc
  3c17c4: 4610         	mov	r0, r2
  3c17c6: 4619         	mov	r1, r3
  3c17c8: f001 fcf2    	bl	0x3c31b0 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Delete(RakNet::SystemAddress const&)> @ imm = #0x19e4
  3c17cc: 2300         	movs	r3, #0x0
  3c17ce: f8ad 305c    	strh.w	r3, [sp, #0x5c]
  3c17d2: 2305         	movs	r3, #0x5
  3c17d4: f88d 305c    	strb.w	r3, [sp, #0x5c]
  3c17d8: 9b20         	ldr	r3, [sp, #0x80]
  3c17da: b2db         	uxtb	r3, r3
  3c17dc: f88d 305d    	strb.w	r3, [sp, #0x5d]
  3c17e0: f7b6 f9ae    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x49ca4
  3c17e4: 4602         	mov	r2, r0
  3c17e6: ab17         	add	r3, sp, #0x5c
  3c17e8: 4610         	mov	r0, r2
  3c17ea: 4619         	mov	r1, r3
  3c17ec: 2202         	movs	r2, #0x2
  3c17ee: 2301         	movs	r3, #0x1
  3c17f0: f7b8 ff5a    	bl	0x37a6a8 <NetworkManager::sendDataToServer(void const*, int, bool)> @ imm = #-0x4714c
  3c17f4: e008         	b	0x3c1808 <RakNetDelegate::updateLoop(float)+0x760> @ imm = #0x10
  3c17f6: 9b1f         	ldr	r3, [sp, #0x7c]
  3c17f8: f8df 2568    	ldr.w	r2, [pc, #0x568]        @ 0x3c1d64 <RakNetDelegate::updateLoop(float)+0xcbc>
  3c17fc: 447a         	add	r2, pc
  3c17fe: 4610         	mov	r0, r2
  3c1800: 4619         	mov	r1, r3
  3c1802: f714 ebfa    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb80c
  3c1806: e3c4         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x788
  3c1808: e3c3         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x786
  3c180a: f8df 355c    	ldr.w	r3, [pc, #0x55c]        @ 0x3c1d68 <RakNetDelegate::updateLoop(float)+0xcc0>
  3c180e: 447b         	add	r3, pc
  3c1810: 681b         	ldr	r3, [r3]
  3c1812: f8df 2558    	ldr.w	r2, [pc, #0x558]        @ 0x3c1d6c <RakNetDelegate::updateLoop(float)+0xcc4>
  3c1816: 447a         	add	r2, pc
  3c1818: 4610         	mov	r0, r2
  3c181a: 4619         	mov	r1, r3
  3c181c: f001 fb04    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x1608
  3c1820: 4603         	mov	r3, r0
  3c1822: 4618         	mov	r0, r3
  3c1824: f3f3 fd6c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f3ad8
  3c1828: 4603         	mov	r3, r0
  3c182a: f8df 2544    	ldr.w	r2, [pc, #0x544]        @ 0x3c1d70 <RakNetDelegate::updateLoop(float)+0xcc8>
  3c182e: 447a         	add	r2, pc
  3c1830: 4610         	mov	r0, r2
  3c1832: 4619         	mov	r1, r3
  3c1834: f714 ebe0    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb840
  3c1838: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x3c1d74 <RakNetDelegate::updateLoop(float)+0xccc>
  3c183c: 447b         	add	r3, pc
  3c183e: 2200         	movs	r2, #0x0
  3c1840: 701a         	strb	r2, [r3]
  3c1842: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x3c1d78 <RakNetDelegate::updateLoop(float)+0xcd0>
  3c1846: 447b         	add	r3, pc
  3c1848: 2200         	movs	r2, #0x0
  3c184a: 701a         	strb	r2, [r3]
  3c184c: f8df 352c    	ldr.w	r3, [pc, #0x52c]        @ 0x3c1d7c <RakNetDelegate::updateLoop(float)+0xcd4>
  3c1850: 447b         	add	r3, pc
  3c1852: 681b         	ldr	r3, [r3]
  3c1854: f8df 2528    	ldr.w	r2, [pc, #0x528]        @ 0x3c1d80 <RakNetDelegate::updateLoop(float)+0xcd8>
  3c1858: 447a         	add	r2, pc
  3c185a: 4610         	mov	r0, r2
  3c185c: 4619         	mov	r1, r3
  3c185e: f001 fae3    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x15c6
  3c1862: 4603         	mov	r3, r0
  3c1864: 4618         	mov	r0, r3
  3c1866: f3f3 fd4b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f3a96
  3c186a: 4603         	mov	r3, r0
  3c186c: f8df 2514    	ldr.w	r2, [pc, #0x514]        @ 0x3c1d84 <RakNetDelegate::updateLoop(float)+0xcdc>
  3c1870: 447a         	add	r2, pc
  3c1872: 4610         	mov	r0, r2
  3c1874: 4619         	mov	r1, r3
  3c1876: f714 ebc0    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb880
  3c187a: f21e ff19    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21ee32
  3c187e: 4604         	mov	r4, r0
  3c1880: f8df 3504    	ldr.w	r3, [pc, #0x504]        @ 0x3c1d88 <RakNetDelegate::updateLoop(float)+0xce0>
  3c1884: 447b         	add	r3, pc
  3c1886: 681b         	ldr	r3, [r3]
  3c1888: f8df 2500    	ldr.w	r2, [pc, #0x500]        @ 0x3c1d8c <RakNetDelegate::updateLoop(float)+0xce4>
  3c188c: 447a         	add	r2, pc
  3c188e: 4610         	mov	r0, r2
  3c1890: 4619         	mov	r1, r3
  3c1892: f001 fac9    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x1592
  3c1896: 4603         	mov	r3, r0
  3c1898: 3304         	adds	r3, #0x4
  3c189a: 4618         	mov	r0, r3
  3c189c: f3f3 fd30    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f3a60
  3c18a0: 4603         	mov	r3, r0
  3c18a2: f8df 24ec    	ldr.w	r2, [pc, #0x4ec]        @ 0x3c1d90 <RakNetDelegate::updateLoop(float)+0xce8>
  3c18a6: 447a         	add	r2, pc
  3c18a8: 4610         	mov	r0, r2
  3c18aa: 4619         	mov	r1, r3
  3c18ac: f1d8 f930    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d8260
  3c18b0: 4603         	mov	r3, r0
  3c18b2: 4620         	mov	r0, r4
  3c18b4: f8df 24dc    	ldr.w	r2, [pc, #0x4dc]        @ 0x3c1d94 <RakNetDelegate::updateLoop(float)+0xcec>
  3c18b8: 447a         	add	r2, pc
  3c18ba: 4611         	mov	r1, r2
  3c18bc: 461a         	mov	r2, r3
  3c18be: f21f f935    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x21f26a
  3c18c2: 980f         	ldr	r0, [sp, #0x3c]
  3c18c4: f7ff fbd6    	bl	0x3c1074 <RakNetDelegate::connectToNextServer()> @ imm = #-0x854
  3c18c8: e363         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x6c6
  3c18ca: 9818         	ldr	r0, [sp, #0x60]
  3c18cc: f7ff fb3c    	bl	0x3c0f48 <DetermineConnectionIdentity(RakNet::Packet*)> @ imm = #-0x988
  3c18d0: 4603         	mov	r3, r0
  3c18d2: 9321         	str	r3, [sp, #0x84]
  3c18d4: 9b21         	ldr	r3, [sp, #0x84]
  3c18d6: f8df 24c0    	ldr.w	r2, [pc, #0x4c0]        @ 0x3c1d98 <RakNetDelegate::updateLoop(float)+0xcf0>
  3c18da: 447a         	add	r2, pc
  3c18dc: 4610         	mov	r0, r2
  3c18de: 4619         	mov	r1, r3
  3c18e0: f714 eb8a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb8ec
  3c18e4: e355         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x6aa
  3c18e6: 9818         	ldr	r0, [sp, #0x60]
  3c18e8: f7ff fb2e    	bl	0x3c0f48 <DetermineConnectionIdentity(RakNet::Packet*)> @ imm = #-0x9a4
  3c18ec: 4603         	mov	r3, r0
  3c18ee: 9322         	str	r3, [sp, #0x88]
  3c18f0: 9b22         	ldr	r3, [sp, #0x88]
  3c18f2: f8df 24a8    	ldr.w	r2, [pc, #0x4a8]        @ 0x3c1d9c <RakNetDelegate::updateLoop(float)+0xcf4>
  3c18f6: 447a         	add	r2, pc
  3c18f8: 4610         	mov	r0, r2
  3c18fa: 4619         	mov	r1, r3
  3c18fc: f714 eb7c    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb908
  3c1900: 9b18         	ldr	r3, [sp, #0x60]
  3c1902: 4618         	mov	r0, r3
  3c1904: 2101         	movs	r1, #0x1
  3c1906: 227c         	movs	r2, #0x7c
  3c1908: f0e2 fbe8    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe27d0
  3c190c: 4603         	mov	r3, r0
  3c190e: f8df 2490    	ldr.w	r2, [pc, #0x490]        @ 0x3c1da0 <RakNetDelegate::updateLoop(float)+0xcf8>
  3c1912: 447a         	add	r2, pc
  3c1914: 4610         	mov	r0, r2
  3c1916: 4619         	mov	r1, r3
  3c1918: f714 eb6e    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb924
  3c191c: f8df 3484    	ldr.w	r3, [pc, #0x484]        @ 0x3c1da4 <RakNetDelegate::updateLoop(float)+0xcfc>
  3c1920: 447b         	add	r3, pc
  3c1922: 781b         	ldrb	r3, [r3]
  3c1924: 2b00         	cmp	r3, #0x0
  3c1926: d014         	beq	0x3c1952 <RakNetDelegate::updateLoop(float)+0x8aa> @ imm = #0x28
  3c1928: f21e fec2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21ed84
  3c192c: 4603         	mov	r3, r0
  3c192e: 4618         	mov	r0, r3
  3c1930: f8df 3474    	ldr.w	r3, [pc, #0x474]        @ 0x3c1da8 <RakNetDelegate::updateLoop(float)+0xd00>
  3c1934: 447b         	add	r3, pc
  3c1936: 4619         	mov	r1, r3
  3c1938: 2200         	movs	r2, #0x0
  3c193a: f21f f8f7    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x21f1ee
  3c193e: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x3c1dac <RakNetDelegate::updateLoop(float)+0xd04>
  3c1942: 447b         	add	r3, pc
  3c1944: 2200         	movs	r2, #0x0
  3c1946: 701a         	strb	r2, [r3]
  3c1948: f8df 3464    	ldr.w	r3, [pc, #0x464]        @ 0x3c1db0 <RakNetDelegate::updateLoop(float)+0xd08>
  3c194c: 447b         	add	r3, pc
  3c194e: 2200         	movs	r2, #0x0
  3c1950: 701a         	strb	r2, [r3]
  3c1952: e31e         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x63c
  3c1954: 9b18         	ldr	r3, [sp, #0x60]
  3c1956: 4618         	mov	r0, r3
  3c1958: 2101         	movs	r1, #0x1
  3c195a: 227c         	movs	r2, #0x7c
  3c195c: f0e2 fbbe    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe277c
  3c1960: 4604         	mov	r4, r0
  3c1962: 9b18         	ldr	r3, [sp, #0x60]
  3c1964: 3318         	adds	r3, #0x18
  3c1966: 4618         	mov	r0, r3
  3c1968: f0e2 fe94    	bl	0x4a4694 <RakNet::RakNetGUID::ToString() const> @ imm = #0xe2d28
  3c196c: 4603         	mov	r3, r0
  3c196e: f8df 2444    	ldr.w	r2, [pc, #0x444]        @ 0x3c1db4 <RakNetDelegate::updateLoop(float)+0xd0c>
  3c1972: 447a         	add	r2, pc
  3c1974: 4610         	mov	r0, r2
  3c1976: 4621         	mov	r1, r4
  3c1978: 461a         	mov	r2, r3
  3c197a: f714 eb3e    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb984
  3c197e: e308         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x610
  3c1980: 9818         	ldr	r0, [sp, #0x60]
  3c1982: f7ff fae1    	bl	0x3c0f48 <DetermineConnectionIdentity(RakNet::Packet*)> @ imm = #-0xa3e
  3c1986: 4603         	mov	r3, r0
  3c1988: 9323         	str	r3, [sp, #0x8c]
  3c198a: 9b18         	ldr	r3, [sp, #0x60]
  3c198c: 4618         	mov	r0, r3
  3c198e: 2101         	movs	r1, #0x1
  3c1990: 227c         	movs	r2, #0x7c
  3c1992: f0e2 fba3    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe2746
  3c1996: 4604         	mov	r4, r0
  3c1998: 9b18         	ldr	r3, [sp, #0x60]
  3c199a: 3318         	adds	r3, #0x18
  3c199c: 4618         	mov	r0, r3
  3c199e: f0e2 fe79    	bl	0x4a4694 <RakNet::RakNetGUID::ToString() const> @ imm = #0xe2cf2
  3c19a2: 4602         	mov	r2, r0
  3c19a4: 9b23         	ldr	r3, [sp, #0x8c]
  3c19a6: f8df 1410    	ldr.w	r1, [pc, #0x410]        @ 0x3c1db8 <RakNetDelegate::updateLoop(float)+0xd10>
  3c19aa: 4479         	add	r1, pc
  3c19ac: 4608         	mov	r0, r1
  3c19ae: 4621         	mov	r1, r4
  3c19b0: f714 eb22    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeb9bc
  3c19b4: f8df 3404    	ldr.w	r3, [pc, #0x404]        @ 0x3c1dbc <RakNetDelegate::updateLoop(float)+0xd14>
  3c19b8: 447b         	add	r3, pc
  3c19ba: 681b         	ldr	r3, [r3]
  3c19bc: 681b         	ldr	r3, [r3]
  3c19be: 33cc         	adds	r3, #0xcc
  3c19c0: 681d         	ldr	r5, [r3]
  3c19c2: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x3c1dc0 <RakNetDelegate::updateLoop(float)+0xd18>
  3c19c4: 447b         	add	r3, pc
  3c19c6: 681f         	ldr	r7, [r3]
  3c19c8: f10d 0ea0    	add.w	lr, sp, #0xa0
  3c19cc: 9b18         	ldr	r3, [sp, #0x60]
  3c19ce: 466c         	mov	r4, sp
  3c19d0: f103 0208    	add.w	r2, r3, #0x8
  3c19d4: ca07         	ldm	r2, {r0, r1, r2}
  3c19d6: e884 0007    	stm.w	r4, {r0, r1, r2}
  3c19da: cb0c         	ldm	r3, {r2, r3}
  3c19dc: 4670         	mov	r0, lr
  3c19de: 4639         	mov	r1, r7
  3c19e0: 47a8         	blx	r5
  3c19e2: ab28         	add	r3, sp, #0xa0
  3c19e4: 4618         	mov	r0, r3
  3c19e6: 2101         	movs	r1, #0x1
  3c19e8: 227c         	movs	r2, #0x7c
  3c19ea: f0e2 fb77    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe26ee
  3c19ee: 4603         	mov	r3, r0
  3c19f0: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x3c1dc4 <RakNetDelegate::updateLoop(float)+0xd1c>
  3c19f2: 447a         	add	r2, pc
  3c19f4: 4610         	mov	r0, r2
  3c19f6: 4619         	mov	r1, r3
  3c19f8: f714 eafe    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xeba04
  3c19fc: f21e fe58    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21ecb0
  3c1a00: 4604         	mov	r4, r0
  3c1a02: 4bf1         	ldr	r3, [pc, #0x3c4]        @ 0x3c1dc8 <RakNetDelegate::updateLoop(float)+0xd20>
  3c1a04: 447b         	add	r3, pc
  3c1a06: 681b         	ldr	r3, [r3]
  3c1a08: 4af0         	ldr	r2, [pc, #0x3c0]        @ 0x3c1dcc <RakNetDelegate::updateLoop(float)+0xd24>
  3c1a0a: 447a         	add	r2, pc
  3c1a0c: 4610         	mov	r0, r2
  3c1a0e: 4619         	mov	r1, r3
  3c1a10: f001 fa0a    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x1414
  3c1a14: 4603         	mov	r3, r0
  3c1a16: 3304         	adds	r3, #0x4
  3c1a18: 4618         	mov	r0, r3
  3c1a1a: f3f3 fc71    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f38e2
  3c1a1e: 4603         	mov	r3, r0
  3c1a20: 4aeb         	ldr	r2, [pc, #0x3ac]        @ 0x3c1dd0 <RakNetDelegate::updateLoop(float)+0xd28>
  3c1a22: 447a         	add	r2, pc
  3c1a24: 4610         	mov	r0, r2
  3c1a26: 4619         	mov	r1, r3
  3c1a28: f1d8 f872    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d80e4
  3c1a2c: 4603         	mov	r3, r0
  3c1a2e: 4620         	mov	r0, r4
  3c1a30: 4ae8         	ldr	r2, [pc, #0x3a0]        @ 0x3c1dd4 <RakNetDelegate::updateLoop(float)+0xd2c>
  3c1a32: 447a         	add	r2, pc
  3c1a34: 4611         	mov	r1, r2
  3c1a36: 461a         	mov	r2, r3
  3c1a38: f21f f878    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x21f0f0
  3c1a3c: 9b23         	ldr	r3, [sp, #0x8c]
  3c1a3e: 2b01         	cmp	r3, #0x1
  3c1a40: d11c         	bne	0x3c1a7c <RakNetDelegate::updateLoop(float)+0x9d4> @ imm = #0x38
  3c1a42: 4be5         	ldr	r3, [pc, #0x394]        @ 0x3c1dd8 <RakNetDelegate::updateLoop(float)+0xd30>
  3c1a44: 447b         	add	r3, pc
  3c1a46: 681c         	ldr	r4, [r3]
  3c1a48: ab28         	add	r3, sp, #0xa0
  3c1a4a: 4618         	mov	r0, r3
  3c1a4c: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x3c1ddc <RakNetDelegate::updateLoop(float)+0xd34>
  3c1a4e: 447b         	add	r3, pc
  3c1a50: 4619         	mov	r1, r3
  3c1a52: f64e 62b7    	movw	r2, #0xeeb7
  3c1a56: f0e2 fbcf    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe279e
  3c1a5a: 466b         	mov	r3, sp
  3c1a5c: aa2b         	add	r2, sp, #0xac
  3c1a5e: e892 0003    	ldm.w	r2, {r0, r1}
  3c1a62: e883 0003    	stm.w	r3, {r0, r1}
  3c1a66: ab28         	add	r3, sp, #0xa0
  3c1a68: cb0e         	ldm	r3, {r1, r2, r3}
  3c1a6a: 4620         	mov	r0, r4
  3c1a6c: f0d2 f94a    	bl	0x493d04 <RakNet::NatTypeDetectionClient::DetectNATType(RakNet::SystemAddress)> @ imm = #0xd2294
  3c1a70: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x3c1de0 <RakNetDelegate::updateLoop(float)+0xd38>
  3c1a72: 447b         	add	r3, pc
  3c1a74: 4618         	mov	r0, r3
  3c1a76: f714 eaea    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeba2c
  3c1a7a: e0dd         	b	0x3c1c38 <RakNetDelegate::updateLoop(float)+0xb90> @ imm = #0x1ba
  3c1a7c: 9b23         	ldr	r3, [sp, #0x8c]
  3c1a7e: 2b00         	cmp	r3, #0x0
  3c1a80: d138         	bne	0x3c1af4 <RakNetDelegate::updateLoop(float)+0xa4c> @ imm = #0x70
  3c1a82: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x3c1de4 <RakNetDelegate::updateLoop(float)+0xd3c>
  3c1a84: 447b         	add	r3, pc
  3c1a86: 2201         	movs	r2, #0x1
  3c1a88: 701a         	strb	r2, [r3]
  3c1a8a: 9b18         	ldr	r3, [sp, #0x60]
  3c1a8c: 3318         	adds	r3, #0x18
  3c1a8e: 4ad6         	ldr	r2, [pc, #0x358]        @ 0x3c1de8 <RakNetDelegate::updateLoop(float)+0xd40>
  3c1a90: 447a         	add	r2, pc
  3c1a92: 4610         	mov	r0, r2
  3c1a94: 4619         	mov	r1, r3
  3c1a96: f7fc fcd7    	bl	0x3be448 <RakNet::RakNetGUID::operator=(RakNet::RakNetGUID const&)> @ imm = #-0x3652
  3c1a9a: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x3c1dec <RakNetDelegate::updateLoop(float)+0xd44>
  3c1a9c: 447b         	add	r3, pc
  3c1a9e: 4618         	mov	r0, r3
  3c1aa0: f714 ead4    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xeba58
  3c1aa4: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x3c1df0 <RakNetDelegate::updateLoop(float)+0xd48>
  3c1aa6: 447b         	add	r3, pc
  3c1aa8: 781b         	ldrb	r3, [r3]
  3c1aaa: 2b00         	cmp	r3, #0x0
  3c1aac: d021         	beq	0x3c1af2 <RakNetDelegate::updateLoop(float)+0xa4a> @ imm = #0x42
  3c1aae: f7fe fe05    	bl	0x3c06bc <openUPNP()>   @ imm = #-0x13f6
  3c1ab2: 4603         	mov	r3, r0
  3c1ab4: 461a         	mov	r2, r3
  3c1ab6: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x3c1df4 <RakNetDelegate::updateLoop(float)+0xd4c>
  3c1ab8: 447b         	add	r3, pc
  3c1aba: 701a         	strb	r2, [r3]
  3c1abc: 4bce         	ldr	r3, [pc, #0x338]        @ 0x3c1df8 <RakNetDelegate::updateLoop(float)+0xd50>
  3c1abe: 447b         	add	r3, pc
  3c1ac0: 781b         	ldrb	r3, [r3]
  3c1ac2: 4ace         	ldr	r2, [pc, #0x338]        @ 0x3c1dfc <RakNetDelegate::updateLoop(float)+0xd54>
  3c1ac4: 447a         	add	r2, pc
  3c1ac6: 4610         	mov	r0, r2
  3c1ac8: 4619         	mov	r1, r3
  3c1aca: f714 ea96    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xebad4
  3c1ace: 2300         	movs	r3, #0x0
  3c1ad0: f8ad 305c    	strh.w	r3, [sp, #0x5c]
  3c1ad4: 2304         	movs	r3, #0x4
  3c1ad6: f88d 305c    	strb.w	r3, [sp, #0x5c]
  3c1ada: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3c1e00 <RakNetDelegate::updateLoop(float)+0xd58>
  3c1adc: 447b         	add	r3, pc
  3c1ade: 781b         	ldrb	r3, [r3]
  3c1ae0: f88d 305d    	strb.w	r3, [sp, #0x5d]
  3c1ae4: ab17         	add	r3, sp, #0x5c
  3c1ae6: 980f         	ldr	r0, [sp, #0x3c]
  3c1ae8: 4619         	mov	r1, r3
  3c1aea: 2202         	movs	r2, #0x2
  3c1aec: 2301         	movs	r3, #0x1
  3c1aee: f000 fc3d    	bl	0x3c236c <RakNetDelegate::sendDataToServer(void const*, int, bool)> @ imm = #0x87a
  3c1af2: e0a1         	b	0x3c1c38 <RakNetDelegate::updateLoop(float)+0xb90> @ imm = #0x142
  3c1af4: 9b23         	ldr	r3, [sp, #0x8c]
  3c1af6: 2b03         	cmp	r3, #0x3
  3c1af8: f040 8098    	bne.w	0x3c1c2c <RakNetDelegate::updateLoop(float)+0xb84> @ imm = #0x130
  3c1afc: 9b18         	ldr	r3, [sp, #0x60]
  3c1afe: 4ac1         	ldr	r2, [pc, #0x304]        @ 0x3c1e04 <RakNetDelegate::updateLoop(float)+0xd5c>
  3c1b00: 447a         	add	r2, pc
  3c1b02: 4610         	mov	r0, r2
  3c1b04: 4619         	mov	r1, r3
  3c1b06: f001 f80f    	bl	0x3c2b28 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Get(RakNet::SystemAddress const&) const> @ imm = #0x101e
  3c1b0a: 4603         	mov	r3, r0
  3c1b0c: 681b         	ldr	r3, [r3]
  3c1b0e: 9313         	str	r3, [sp, #0x4c]
  3c1b10: 9b13         	ldr	r3, [sp, #0x4c]
  3c1b12: 4abd         	ldr	r2, [pc, #0x2f4]        @ 0x3c1e08 <RakNetDelegate::updateLoop(float)+0xd60>
  3c1b14: 447a         	add	r2, pc
  3c1b16: 4610         	mov	r0, r2
  3c1b18: 4619         	mov	r1, r3
  3c1b1a: f1d7 fff9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d7ff2
  3c1b1e: 4603         	mov	r3, r0
  3c1b20: 9324         	str	r3, [sp, #0x90]
  3c1b22: 9824         	ldr	r0, [sp, #0x90]
  3c1b24: f1d7 ff00    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1d7e00
  3c1b28: 4604         	mov	r4, r0
  3c1b2a: ab17         	add	r3, sp, #0x5c
  3c1b2c: 4618         	mov	r0, r3
  3c1b2e: f3c8 fc61    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c88c2
  3c1b32: aa14         	add	r2, sp, #0x50
  3c1b34: ab17         	add	r3, sp, #0x5c
  3c1b36: 4610         	mov	r0, r2
  3c1b38: 4621         	mov	r1, r4
  3c1b3a: 461a         	mov	r2, r3
  3c1b3c: f3f4 ff90    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f4f20
  3c1b40: ab17         	add	r3, sp, #0x5c
  3c1b42: 4618         	mov	r0, r3
  3c1b44: f3c8 fc5a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c88b4
  3c1b48: f7b5 fffa    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x4a00c
  3c1b4c: 4604         	mov	r4, r0
  3c1b4e: aa15         	add	r2, sp, #0x54
  3c1b50: ab14         	add	r3, sp, #0x50
  3c1b52: 4610         	mov	r0, r2
  3c1b54: 4619         	mov	r1, r3
  3c1b56: f3f4 fcc7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3f498e
  3c1b5a: ab17         	add	r3, sp, #0x5c
  3c1b5c: 4618         	mov	r0, r3
  3c1b5e: f3c8 fc49    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c8892
  3c1b62: aa16         	add	r2, sp, #0x58
  3c1b64: ab17         	add	r3, sp, #0x5c
  3c1b66: 4610         	mov	r0, r2
  3c1b68: 4aa8         	ldr	r2, [pc, #0x2a0]        @ 0x3c1e0c <RakNetDelegate::updateLoop(float)+0xd64>
  3c1b6a: 447a         	add	r2, pc
  3c1b6c: 4611         	mov	r1, r2
  3c1b6e: 461a         	mov	r2, r3
  3c1b70: f3f4 ff76    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f4eec
  3c1b74: aa15         	add	r2, sp, #0x54
  3c1b76: ab16         	add	r3, sp, #0x58
  3c1b78: 4620         	mov	r0, r4
  3c1b7a: 4611         	mov	r1, r2
  3c1b7c: 461a         	mov	r2, r3
  3c1b7e: f7b8 fbd9    	bl	0x37a334 <NetworkManager::addPlayer(std::string, std::string)> @ imm = #-0x4784e
  3c1b82: ab16         	add	r3, sp, #0x58
  3c1b84: 4618         	mov	r0, r3
  3c1b86: f3f3 fec5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3d8a
  3c1b8a: ab17         	add	r3, sp, #0x5c
  3c1b8c: 4618         	mov	r0, r3
  3c1b8e: f3c8 fc35    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c886a
  3c1b92: ab15         	add	r3, sp, #0x54
  3c1b94: 4618         	mov	r0, r3
  3c1b96: f3f3 febd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3d7a
  3c1b9a: 9b18         	ldr	r3, [sp, #0x60]
  3c1b9c: 3318         	adds	r3, #0x18
  3c1b9e: aa13         	add	r2, sp, #0x4c
  3c1ba0: 499b         	ldr	r1, [pc, #0x26c]        @ 0x3c1e10 <RakNetDelegate::updateLoop(float)+0xd68>
  3c1ba2: 4479         	add	r1, pc
  3c1ba4: 4608         	mov	r0, r1
  3c1ba6: 4611         	mov	r1, r2
  3c1ba8: 461a         	mov	r2, r3
  3c1baa: f001 fa7b    	bl	0x3c30a4 <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Set(int const&, RakNet::RakNetGUID const&)> @ imm = #0x14f6
  3c1bae: 9a13         	ldr	r2, [sp, #0x4c]
  3c1bb0: 4b98         	ldr	r3, [pc, #0x260]        @ 0x3c1e14 <RakNetDelegate::updateLoop(float)+0xd6c>
  3c1bb2: 447b         	add	r3, pc
  3c1bb4: 681b         	ldr	r3, [r3]
  3c1bb6: 4998         	ldr	r1, [pc, #0x260]        @ 0x3c1e18 <RakNetDelegate::updateLoop(float)+0xd70>
  3c1bb8: 4479         	add	r1, pc
  3c1bba: 4608         	mov	r0, r1
  3c1bbc: 4611         	mov	r1, r2
  3c1bbe: 461a         	mov	r2, r3
  3c1bc0: f714 ea1a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xebbcc
  3c1bc4: 2300         	movs	r3, #0x0
  3c1bc6: f8ad 3048    	strh.w	r3, [sp, #0x48]
  3c1bca: 2300         	movs	r3, #0x0
  3c1bcc: f88d 304a    	strb.w	r3, [sp, #0x4a]
  3c1bd0: 2303         	movs	r3, #0x3
  3c1bd2: f88d 3048    	strb.w	r3, [sp, #0x48]
  3c1bd6: 4b91         	ldr	r3, [pc, #0x244]        @ 0x3c1e1c <RakNetDelegate::updateLoop(float)+0xd74>
  3c1bd8: 447b         	add	r3, pc
  3c1bda: 681b         	ldr	r3, [r3]
  3c1bdc: b2db         	uxtb	r3, r3
  3c1bde: f88d 3049    	strb.w	r3, [sp, #0x49]
  3c1be2: 9824         	ldr	r0, [sp, #0x90]
  3c1be4: f1d7 fea0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1d7d40
  3c1be8: 4604         	mov	r4, r0
  3c1bea: ab16         	add	r3, sp, #0x58
  3c1bec: 4618         	mov	r0, r3
  3c1bee: f3c8 fc01    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c8802
  3c1bf2: aa17         	add	r2, sp, #0x5c
  3c1bf4: ab16         	add	r3, sp, #0x58
  3c1bf6: 4610         	mov	r0, r2
  3c1bf8: 4621         	mov	r1, r4
  3c1bfa: 461a         	mov	r2, r3
  3c1bfc: f3f4 ff30    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f4e60
  3c1c00: aa12         	add	r2, sp, #0x48
  3c1c02: ab17         	add	r3, sp, #0x5c
  3c1c04: 2101         	movs	r1, #0x1
  3c1c06: 9100         	str	r1, [sp]
  3c1c08: 980f         	ldr	r0, [sp, #0x3c]
  3c1c0a: 4611         	mov	r1, r2
  3c1c0c: 2202         	movs	r2, #0x2
  3c1c0e: f000 faed    	bl	0x3c21ec <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)> @ imm = #0x5da
  3c1c12: ab17         	add	r3, sp, #0x5c
  3c1c14: 4618         	mov	r0, r3
  3c1c16: f3f3 fe7d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3cfa
  3c1c1a: ab16         	add	r3, sp, #0x58
  3c1c1c: 4618         	mov	r0, r3
  3c1c1e: f3c8 fbed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c87da
  3c1c22: ab14         	add	r3, sp, #0x50
  3c1c24: 4618         	mov	r0, r3
  3c1c26: f3f3 fe75    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3cea
  3c1c2a: e005         	b	0x3c1c38 <RakNetDelegate::updateLoop(float)+0xb90> @ imm = #0xa
  3c1c2c: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3c1e20 <RakNetDelegate::updateLoop(float)+0xd78>
  3c1c2e: 447b         	add	r3, pc
  3c1c30: 4618         	mov	r0, r3
  3c1c32: f714 ea0c    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xebbe8
  3c1c36: e1ac         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x358
  3c1c38: e1ab         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x356
  3c1c3a: f04f 33ff    	mov.w	r3, #0xffffffff
  3c1c3e: 931b         	str	r3, [sp, #0x6c]
  3c1c40: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  3c1c44: 2b8c         	cmp	r3, #0x8c
  3c1c46: d004         	beq	0x3c1c52 <RakNetDelegate::updateLoop(float)+0xbaa> @ imm = #0x8
  3c1c48: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  3c1c4c: 2b8d         	cmp	r3, #0x8d
  3c1c4e: f040 80ff    	bne.w	0x3c1e50 <RakNetDelegate::updateLoop(float)+0xda8> @ imm = #0x1fe
  3c1c52: 2300         	movs	r3, #0x0
  3c1c54: 931c         	str	r3, [sp, #0x70]
  3c1c56: e0ec         	b	0x3c1e32 <RakNetDelegate::updateLoop(float)+0xd8a> @ imm = #0x1d8
  3c1c58: 9b1c         	ldr	r3, [sp, #0x70]
  3c1c5a: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x3c1e24 <RakNetDelegate::updateLoop(float)+0xd7c>
  3c1c5c: 447a         	add	r2, pc
  3c1c5e: 4610         	mov	r0, r2
  3c1c60: 4619         	mov	r1, r3
  3c1c62: f001 fa95    	bl	0x3c3190 <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::operator[](unsigned int) const> @ imm = #0x152a
  3c1c66: 4602         	mov	r2, r0
  3c1c68: 9b18         	ldr	r3, [sp, #0x60]
  3c1c6a: 3318         	adds	r3, #0x18
  3c1c6c: 4610         	mov	r0, r2
  3c1c6e: 4619         	mov	r1, r3
  3c1c70: f0e2 fcc0    	bl	0x4a45f4 <RakNet::RakNetGUID::operator==(RakNet::RakNetGUID const&) const> @ imm = #0xe2980
  3c1c74: 4603         	mov	r3, r0
  3c1c76: 2b00         	cmp	r3, #0x0
  3c1c78: f000 80d8    	beq.w	0x3c1e2c <RakNetDelegate::updateLoop(float)+0xd84> @ imm = #0x1b0
  3c1c7c: 9b1c         	ldr	r3, [sp, #0x70]
  3c1c7e: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x3c1e28 <RakNetDelegate::updateLoop(float)+0xd80>
  3c1c80: 447a         	add	r2, pc
  3c1c82: 4610         	mov	r0, r2
  3c1c84: 4619         	mov	r1, r3
  3c1c86: f001 fad1    	bl	0x3c322c <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::GetKeyAtIndex(unsigned int) const> @ imm = #0x15a2
  3c1c8a: 4603         	mov	r3, r0
  3c1c8c: 931b         	str	r3, [sp, #0x6c]
  3c1c8e: e0df         	b	0x3c1e50 <RakNetDelegate::updateLoop(float)+0xda8> @ imm = #0x1be
  3c1c90: 1954         	adds	r4, r2, r5
  3c1c92: 0057         	lsls	r7, r2, #0x1
  3c1c94: d72c         	bvc	0x3c1cf0 <RakNetDelegate::updateLoop(float)+0xc48> @ imm = #0x58
  3c1c96: ffff 0340    	<unknown>
  3c1c9a: 0058         	lsls	r0, r3, #0x1
  3c1c9c: 0328         	lsls	r0, r5, #0xc
  3c1c9e: 0058         	lsls	r0, r3, #0x1
  3c1ca0: 031a         	lsls	r2, r3, #0xc
  3c1ca2: 0058         	lsls	r0, r3, #0x1
  3c1ca4: 42f0         	cmn	r0, r6
  3c1ca6: 0041         	lsls	r1, r0, #0x1
  3c1ca8: 42f4         	cmn	r4, r6
  3c1caa: 0041         	lsls	r1, r0, #0x1
  3c1cac: 4300         	orrs	r0, r0
  3c1cae: 0041         	lsls	r1, r0, #0x1
  3c1cb0: 4302         	orrs	r2, r0
  3c1cb2: 0041         	lsls	r1, r0, #0x1
  3c1cb4: 4308         	orrs	r0, r1
  3c1cb6: 0041         	lsls	r1, r0, #0x1
  3c1cb8: 430a         	orrs	r2, r1
  3c1cba: 0041         	lsls	r1, r0, #0x1
  3c1cbc: 2230         	movs	r2, #0x30
  3c1cbe: 0057         	lsls	r7, r2, #0x1
  3c1cc0: 0040         	lsls	r0, r0, #0x1
  3c1cc2: 0058         	lsls	r0, r3, #0x1
  3c1cc4: 42d8         	cmn	r0, r3
  3c1cc6: 0041         	lsls	r1, r0, #0x1
  3c1cc8: 0014         	movs	r4, r2
  3c1cca: 0058         	lsls	r0, r3, #0x1
  3c1ccc: fff8 0057    	<unknown>
  3c1cd0: ffa0 0057    	<unknown>
  3c1cd4: 0042         	lsls	r2, r0, #0x1
  3c1cd6: 0058         	lsls	r0, r3, #0x1
  3c1cd8: 0024         	movs	r4, r4
  3c1cda: 0058         	lsls	r0, r3, #0x1
  3c1cdc: 4230         	tst	r0, r6
  3c1cde: 0041         	lsls	r1, r0, #0x1
  3c1ce0: 3aba         	subs	r2, #0xba
  3c1ce2: 0041         	lsls	r1, r0, #0x1
  3c1ce4: fef0 0057    	mrc2	p0, #0x7, r0, c0, c7, #0x2
  3c1ce8: fee2 0057    	mcr2	p0, #0x7, r0, c2, c7, #0x2
  3c1cec: 3a7e         	subs	r2, #0x7e
  3c1cee: 0041         	lsls	r1, r0, #0x1
  3c1cf0: 3a88         	subs	r2, #0x88
  3c1cf2: 0041         	lsls	r1, r0, #0x1
  3c1cf4: fecc 0057    	mcr2	p0, #0x6, r0, c12, c7, #0x2
  3c1cf8: 4162         	adcs	r2, r4
  3c1cfa: 0041         	lsls	r1, r0, #0x1
  3c1cfc: 416a         	adcs	r2, r5
  3c1cfe: 0041         	lsls	r1, r0, #0x1
  3c1d00: 4172         	adcs	r2, r6
  3c1d02: 0041         	lsls	r1, r0, #0x1
  3c1d04: 4150         	adcs	r0, r2
  3c1d06: 0041         	lsls	r1, r0, #0x1
  3c1d08: 4194         	sbcs	r4, r2
  3c1d0a: 0041         	lsls	r1, r0, #0x1
  3c1d0c: fdcd 0057    	stc2l	p0, c0, [sp, #348]
  3c1d10: fdb0 0057    	ldc2	p0, c0, [r0, #348]!
  3c1d14: 4198         	sbcs	r0, r3
  3c1d16: 0041         	lsls	r1, r0, #0x1
  3c1d18: 41a8         	sbcs	r0, r5
  3c1d1a: 0041         	lsls	r1, r0, #0x1
  3c1d1c: 4198         	sbcs	r0, r3
  3c1d1e: 0041         	lsls	r1, r0, #0x1
  3c1d20: 41ac         	sbcs	r4, r5
  3c1d22: 0041         	lsls	r1, r0, #0x1
  3c1d24: 41c4         	rors	r4, r0
  3c1d26: 0041         	lsls	r1, r0, #0x1
  3c1d28: 41d0         	rors	r0, r2
  3c1d2a: 0041         	lsls	r1, r0, #0x1
  3c1d2c: 41e4         	rors	r4, r4
  3c1d2e: 0041         	lsls	r1, r0, #0x1
  3c1d30: 41e4         	rors	r4, r4
  3c1d32: 0041         	lsls	r1, r0, #0x1
  3c1d34: fd0d 0057    	stc2	p0, c0, [sp, #-348]
  3c1d38: fcf0 0057    	ldc2l	p0, c0, [r0], #348
  3c1d3c: fce0 0057    	stc2l	p0, c0, [r0], #348
  3c1d40: fce0 0057    	stc2l	p0, c0, [r0], #348
  3c1d44: 41d0         	rors	r0, r2
  3c1d46: 0041         	lsls	r1, r0, #0x1
  3c1d48: fcac 0057    	stc2	p0, c0, [r12], #348
  3c1d4c: fcac 0057    	stc2	p0, c0, [r12], #348
  3c1d50: 41c2         	rors	r2, r0
  3c1d52: 0041         	lsls	r1, r0, #0x1
  3c1d54: 3e34         	subs	r6, #0x34
  3c1d56: 0041         	lsls	r1, r0, #0x1
  3c1d58: fcc2 0057    	stc2l	p0, c0, [r2], {87}
  3c1d5c: 4188         	sbcs	r0, r1
  3c1d5e: 0041         	lsls	r1, r0, #0x1
  3c1d60: fc8e 0057    	stc2	p0, c0, [lr], {87}
  3c1d64: 4168         	adcs	r0, r5
  3c1d66: 0041         	lsls	r1, r0, #0x1
  3c1d68: fbda 0057    	<unknown>
  3c1d6c: fbda 0057    	<unknown>
  3c1d70: 4162         	adcs	r2, r4
  3c1d72: 0041         	lsls	r1, r0, #0x1
  3c1d74: fbc5 0057    	<unknown>
  3c1d78: fba8 0057    	<unknown>
  3c1d7c: fb98 0057    	<unknown>
  3c1d80: fb98 0057    	<unknown>
  3c1d84: 4088         	lsls	r0, r1
  3c1d86: 0041         	lsls	r1, r0, #0x1
  3c1d88: fb64 0057    	<unknown>
  3c1d8c: fb64 0057    	<unknown>
  3c1d90: 407a         	eors	r2, r7
  3c1d92: 0041         	lsls	r1, r0, #0x1
  3c1d94: 3cec         	subs	r4, #0xec
  3c1d96: 0041         	lsls	r1, r0, #0x1
  3c1d98: 40de         	lsrs	r6, r3
  3c1d9a: 0041         	lsls	r1, r0, #0x1
  3c1d9c: 40e2         	lsrs	r2, r4
  3c1d9e: 0041         	lsls	r1, r0, #0x1
  3c1da0: 40e6         	lsrs	r6, r4
  3c1da2: 0041         	lsls	r1, r0, #0x1
  3c1da4: fae1 0057    	<unknown>
  3c1da8: 40e0         	lsrs	r0, r4
  3c1daa: 0041         	lsls	r1, r0, #0x1
  3c1dac: fabf 0057    	<unknown>
  3c1db0: faa2 0057    	<unknown>
  3c1db4: 40b2         	lsls	r2, r6
  3c1db6: 0041         	lsls	r1, r0, #0x1
  3c1db8: 40ae         	lsls	r6, r5
  3c1dba: 0041         	lsls	r1, r0, #0x1
  3c1dbc: fa4c 0057    	<unknown>
  3c1dc0: fa40 0057    	<unknown>
  3c1dc4: 40a6         	lsls	r6, r4
  3c1dc6: 0041         	lsls	r1, r0, #0x1
  3c1dc8: f9e4 0057    	<unknown>
  3c1dcc: f9e6 0057    	<unknown>
  3c1dd0: 4096         	lsls	r6, r2
  3c1dd2: 0041         	lsls	r1, r0, #0x1
  3c1dd4: 3b72         	subs	r3, #0x72
  3c1dd6: 0041         	lsls	r1, r0, #0x1
  3c1dd8: f9c4 0057    	<unknown>
  3c1ddc: 3b8a         	subs	r3, #0x8a
  3c1dde: 0041         	lsls	r1, r0, #0x1
  3c1de0: 4056         	eors	r6, r2
  3c1de2: 0041         	lsls	r1, r0, #0x1
  3c1de4: f97d 0057    	<unknown>
  3c1de8: f984 0057    	<unknown>
  3c1dec: 4054         	eors	r4, r2
  3c1dee: 0041         	lsls	r1, r0, #0x1
  3c1df0: f95c 0057    	<unknown>
  3c1df4: fa14 0057    	<unknown>
  3c1df8: fa0e 0057    	<unknown>
  3c1dfc: 4054         	eors	r4, r2
  3c1dfe: 0041         	lsls	r1, r0, #0x1
  3c1e00: f9f0 0057    	<unknown>
  3c1e04: f950 0057    	<unknown>
  3c1e08: 3af4         	subs	r2, #0xf4
  3c1e0a: 0041         	lsls	r1, r0, #0x1
  3c1e0c: 3aa2         	subs	r2, #0xa2
  3c1e0e: 0041         	lsls	r1, r0, #0x1
  3c1e10: f896 0057    	ldrb.w	r0, [r6, #0x57]
  3c1e14: 1a46         	subs	r6, r0, r1
  3c1e16: 0057         	lsls	r7, r2, #0x1
  3c1e18: 3f78         	subs	r7, #0x78
  3c1e1a: 0041         	lsls	r1, r0, #0x1
  3c1e1c: 1a20         	subs	r0, r4, r0
  3c1e1e: 0057         	lsls	r7, r2, #0x1
  3c1e20: 3f36         	subs	r7, #0x36
  3c1e22: 0041         	lsls	r1, r0, #0x1
  3c1e24: f7dc 0057    	<unknown>
  3c1e28: f7b8 0057    	<unknown>
  3c1e2c: 9b1c         	ldr	r3, [sp, #0x70]
  3c1e2e: 3301         	adds	r3, #0x1
  3c1e30: 931c         	str	r3, [sp, #0x70]
  3c1e32: 9c1c         	ldr	r4, [sp, #0x70]
  3c1e34: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3c208c <RakNetDelegate::updateLoop(float)+0xfe4>
  3c1e36: 447b         	add	r3, pc
  3c1e38: 4618         	mov	r0, r3
  3c1e3a: f001 f99d    	bl	0x3c3178 <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Size() const> @ imm = #0x133a
  3c1e3e: 4603         	mov	r3, r0
  3c1e40: 429c         	cmp	r4, r3
  3c1e42: bf2c         	ite	hs
  3c1e44: 2300         	movhs	r3, #0x0
  3c1e46: 2301         	movlo	r3, #0x1
  3c1e48: b2db         	uxtb	r3, r3
  3c1e4a: 2b00         	cmp	r3, #0x0
  3c1e4c: f47f af04    	bne.w	0x3c1c58 <RakNetDelegate::updateLoop(float)+0xbb0> @ imm = #-0x1f8
  3c1e50: 980f         	ldr	r0, [sp, #0x3c]
  3c1e52: 9918         	ldr	r1, [sp, #0x60]
  3c1e54: 9a1b         	ldr	r2, [sp, #0x6c]
  3c1e56: f7fe ffb1    	bl	0x3c0dbc <RakNetDelegate::processMessage(RakNet::Packet*, int)> @ imm = #-0x109e
  3c1e5a: 4603         	mov	r3, r0
  3c1e5c: 2b00         	cmp	r3, #0x0
  3c1e5e: d051         	beq	0x3c1f04 <RakNetDelegate::updateLoop(float)+0xe5c> @ imm = #0xa2
  3c1e60: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  3c1e64: 2b8c         	cmp	r3, #0x8c
  3c1e66: d008         	beq	0x3c1e7a <RakNetDelegate::updateLoop(float)+0xdd2> @ imm = #0x10
  3c1e68: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  3c1e6c: 2b8d         	cmp	r3, #0x8d
  3c1e6e: d004         	beq	0x3c1e7a <RakNetDelegate::updateLoop(float)+0xdd2> @ imm = #0x8
  3c1e70: 9b18         	ldr	r3, [sp, #0x60]
  3c1e72: 6b1b         	ldr	r3, [r3, #0x30]
  3c1e74: 3301         	adds	r3, #0x1
  3c1e76: 781b         	ldrb	r3, [r3]
  3c1e78: 931b         	str	r3, [sp, #0x6c]
  3c1e7a: 9b1b         	ldr	r3, [sp, #0x6c]
  3c1e7c: 2b00         	cmp	r3, #0x0
  3c1e7e: da04         	bge	0x3c1e8a <RakNetDelegate::updateLoop(float)+0xde2> @ imm = #0x8
  3c1e80: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x3c2090 <RakNetDelegate::updateLoop(float)+0xfe8>
  3c1e82: 447b         	add	r3, pc
  3c1e84: 4618         	mov	r0, r3
  3c1e86: f714 e8e2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xebe3c
  3c1e8a: 4b82         	ldr	r3, [pc, #0x208]        @ 0x3c2094 <RakNetDelegate::updateLoop(float)+0xfec>
  3c1e8c: 447b         	add	r3, pc
  3c1e8e: 4618         	mov	r0, r3
  3c1e90: 991b         	ldr	r1, [sp, #0x6c]
  3c1e92: f1d7 fe3d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d7c7a
  3c1e96: 4603         	mov	r3, r0
  3c1e98: 9325         	str	r3, [sp, #0x94]
  3c1e9a: 201c         	movs	r0, #0x1c
  3c1e9c: f3c5 fd62    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3c5ac4
  3c1ea0: 4603         	mov	r3, r0
  3c1ea2: 461c         	mov	r4, r3
  3c1ea4: 9b18         	ldr	r3, [sp, #0x60]
  3c1ea6: 6b1b         	ldr	r3, [r3, #0x30]
  3c1ea8: 1c9a         	adds	r2, r3, #0x2
  3c1eaa: 9b18         	ldr	r3, [sp, #0x60]
  3c1eac: 6a9b         	ldr	r3, [r3, #0x28]
  3c1eae: 3b02         	subs	r3, #0x2
  3c1eb0: 4620         	mov	r0, r4
  3c1eb2: 4611         	mov	r1, r2
  3c1eb4: 461a         	mov	r2, r3
  3c1eb6: f082 f999    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0x82332
  3c1eba: 9426         	str	r4, [sp, #0x98]
  3c1ebc: 9b26         	ldr	r3, [sp, #0x98]
  3c1ebe: 4618         	mov	r0, r3
  3c1ec0: f1d6 f81c    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1d6038
  3c1ec4: f7b5 fe3c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x4a388
  3c1ec8: 4604         	mov	r4, r0
  3c1eca: 9825         	ldr	r0, [sp, #0x94]
  3c1ecc: f1d7 fd2c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1d7a58
  3c1ed0: 4605         	mov	r5, r0
  3c1ed2: ab16         	add	r3, sp, #0x58
  3c1ed4: 4618         	mov	r0, r3
  3c1ed6: f3c8 fa8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c851a
  3c1eda: aa17         	add	r2, sp, #0x5c
  3c1edc: ab16         	add	r3, sp, #0x58
  3c1ede: 4610         	mov	r0, r2
  3c1ee0: 4629         	mov	r1, r5
  3c1ee2: 461a         	mov	r2, r3
  3c1ee4: f3f4 fdbc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f4b78
  3c1ee8: ab17         	add	r3, sp, #0x5c
  3c1eea: 4620         	mov	r0, r4
  3c1eec: 9926         	ldr	r1, [sp, #0x98]
  3c1eee: 461a         	mov	r2, r3
  3c1ef0: f7b6 fb6a    	bl	0x3785c8 <NetworkManager::readMessage(cocos2d::extension::CCData*, std::string)> @ imm = #-0x4992c
  3c1ef4: ab17         	add	r3, sp, #0x5c
  3c1ef6: 4618         	mov	r0, r3
  3c1ef8: f3f3 fd0c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3a18
  3c1efc: ab16         	add	r3, sp, #0x58
  3c1efe: 4618         	mov	r0, r3
  3c1f00: f3c8 fa7c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c84f8
  3c1f04: e045         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x8a
  3c1f06: 980f         	ldr	r0, [sp, #0x3c]
  3c1f08: 9918         	ldr	r1, [sp, #0x60]
  3c1f0a: f04f 32ff    	mov.w	r2, #0xffffffff
  3c1f0e: f7fe ff55    	bl	0x3c0dbc <RakNetDelegate::processMessage(RakNet::Packet*, int)> @ imm = #-0x1156
  3c1f12: 4603         	mov	r3, r0
  3c1f14: 2b00         	cmp	r3, #0x0
  3c1f16: d032         	beq	0x3c1f7e <RakNetDelegate::updateLoop(float)+0xed6> @ imm = #0x64
  3c1f18: 201c         	movs	r0, #0x1c
  3c1f1a: f3c5 fd23    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3c5a46
  3c1f1e: 4603         	mov	r3, r0
  3c1f20: 461c         	mov	r4, r3
  3c1f22: 9b18         	ldr	r3, [sp, #0x60]
  3c1f24: 6b1b         	ldr	r3, [r3, #0x30]
  3c1f26: 1c5a         	adds	r2, r3, #0x1
  3c1f28: 9b18         	ldr	r3, [sp, #0x60]
  3c1f2a: 6a9b         	ldr	r3, [r3, #0x28]
  3c1f2c: 3b01         	subs	r3, #0x1
  3c1f2e: 4620         	mov	r0, r4
  3c1f30: 4611         	mov	r1, r2
  3c1f32: 461a         	mov	r2, r3
  3c1f34: f082 f95a    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0x822b4
  3c1f38: 9427         	str	r4, [sp, #0x9c]
  3c1f3a: 9b27         	ldr	r3, [sp, #0x9c]
  3c1f3c: 4618         	mov	r0, r3
  3c1f3e: f1d5 ffdd    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1d5fba
  3c1f42: f7b5 fdfd    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x4a406
  3c1f46: 4604         	mov	r4, r0
  3c1f48: ab16         	add	r3, sp, #0x58
  3c1f4a: 4618         	mov	r0, r3
  3c1f4c: f3c8 fa52    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c84a4
  3c1f50: aa17         	add	r2, sp, #0x5c
  3c1f52: ab16         	add	r3, sp, #0x58
  3c1f54: 4610         	mov	r0, r2
  3c1f56: 4a50         	ldr	r2, [pc, #0x140]        @ 0x3c2098 <RakNetDelegate::updateLoop(float)+0xff0>
  3c1f58: 447a         	add	r2, pc
  3c1f5a: 4611         	mov	r1, r2
  3c1f5c: 461a         	mov	r2, r3
  3c1f5e: f3f4 fd7f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f4afe
  3c1f62: ab17         	add	r3, sp, #0x5c
  3c1f64: 4620         	mov	r0, r4
  3c1f66: 9927         	ldr	r1, [sp, #0x9c]
  3c1f68: 461a         	mov	r2, r3
  3c1f6a: f7b6 fb2d    	bl	0x3785c8 <NetworkManager::readMessage(cocos2d::extension::CCData*, std::string)> @ imm = #-0x499a6
  3c1f6e: ab17         	add	r3, sp, #0x5c
  3c1f70: 4618         	mov	r0, r3
  3c1f72: f3f3 fccf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f399e
  3c1f76: ab16         	add	r3, sp, #0x58
  3c1f78: 4618         	mov	r0, r3
  3c1f7a: f3c8 fa3f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c847e
  3c1f7e: e008         	b	0x3c1f92 <RakNetDelegate::updateLoop(float)+0xeea> @ imm = #0x10
  3c1f80: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  3c1f84: 4a45         	ldr	r2, [pc, #0x114]        @ 0x3c209c <RakNetDelegate::updateLoop(float)+0xff4>
  3c1f86: 447a         	add	r2, pc
  3c1f88: 4610         	mov	r0, r2
  3c1f8a: 4619         	mov	r1, r3
  3c1f8c: f714 e834    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xebf98
  3c1f90: bf00         	nop
  3c1f92: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x3c20a0 <RakNetDelegate::updateLoop(float)+0xff8>
  3c1f94: 447b         	add	r3, pc
  3c1f96: 681b         	ldr	r3, [r3]
  3c1f98: 2b00         	cmp	r3, #0x0
  3c1f9a: d019         	beq	0x3c1fd0 <RakNetDelegate::updateLoop(float)+0xf28> @ imm = #0x32
  3c1f9c: 4b41         	ldr	r3, [pc, #0x104]        @ 0x3c20a4 <RakNetDelegate::updateLoop(float)+0xffc>
  3c1f9e: 447b         	add	r3, pc
  3c1fa0: 681b         	ldr	r3, [r3]
  3c1fa2: 681b         	ldr	r3, [r3]
  3c1fa4: 3368         	adds	r3, #0x68
  3c1fa6: 681b         	ldr	r3, [r3]
  3c1fa8: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x3c20a8 <RakNetDelegate::updateLoop(float)+0x1000>
  3c1faa: 447a         	add	r2, pc
  3c1fac: 6812         	ldr	r2, [r2]
  3c1fae: 4610         	mov	r0, r2
  3c1fb0: 9918         	ldr	r1, [sp, #0x60]
  3c1fb2: 4798         	blx	r3
  3c1fb4: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3c20ac <RakNetDelegate::updateLoop(float)+0x1004>
  3c1fb6: 447b         	add	r3, pc
  3c1fb8: 681b         	ldr	r3, [r3]
  3c1fba: 681b         	ldr	r3, [r3]
  3c1fbc: 3364         	adds	r3, #0x64
  3c1fbe: 681b         	ldr	r3, [r3]
  3c1fc0: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3c20b0 <RakNetDelegate::updateLoop(float)+0x1008>
  3c1fc2: 447a         	add	r2, pc
  3c1fc4: 6812         	ldr	r2, [r2]
  3c1fc6: 4610         	mov	r0, r2
  3c1fc8: 4798         	blx	r3
  3c1fca: 4603         	mov	r3, r0
  3c1fcc: 9318         	str	r3, [sp, #0x60]
  3c1fce: e001         	b	0x3c1fd4 <RakNetDelegate::updateLoop(float)+0xf2c> @ imm = #0x2
  3c1fd0: 2300         	movs	r3, #0x0
  3c1fd2: 9318         	str	r3, [sp, #0x60]
  3c1fd4: 2000         	movs	r0, #0x0
  3c1fd6: f0f0 ff07    	bl	0x4b2de8 <RakSleep(unsigned int)> @ imm = #0xf0e0e
  3c1fda: 9b18         	ldr	r3, [sp, #0x60]
  3c1fdc: 2b00         	cmp	r3, #0x0
  3c1fde: d04a         	beq	0x3c2076 <RakNetDelegate::updateLoop(float)+0xfce> @ imm = #0x94
  3c1fe0: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3c20b4 <RakNetDelegate::updateLoop(float)+0x100c>
  3c1fe2: 447b         	add	r3, pc
  3c1fe4: 681b         	ldr	r3, [r3]
  3c1fe6: 2b00         	cmp	r3, #0x0
  3c1fe8: f47f a887    	bne.w	0x3c10fa <RakNetDelegate::updateLoop(float)+0x52> @ imm = #-0xef2
  3c1fec: e043         	b	0x3c2076 <RakNetDelegate::updateLoop(float)+0xfce> @ imm = #0x86
  3c1fee: ab17         	add	r3, sp, #0x5c
  3c1ff0: 4618         	mov	r0, r3
  3c1ff2: f3c8 fa03    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c8406
  3c1ff6: f3c6 f859    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c60b2
  3c1ffa: ab16         	add	r3, sp, #0x58
  3c1ffc: 4618         	mov	r0, r3
  3c1ffe: f3f3 fc89    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3912
  3c2002: e7ff         	b	0x3c2004 <RakNetDelegate::updateLoop(float)+0xf5c> @ imm = #-0x2
  3c2004: ab17         	add	r3, sp, #0x5c
  3c2006: 4618         	mov	r0, r3
  3c2008: f3c8 f9f8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c83f0
  3c200c: ab15         	add	r3, sp, #0x54
  3c200e: 4618         	mov	r0, r3
  3c2010: f3f3 fc80    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f3900
  3c2014: e009         	b	0x3c202a <RakNetDelegate::updateLoop(float)+0xf82> @ imm = #0x12
  3c2016: ab17         	add	r3, sp, #0x5c
  3c2018: 4618         	mov	r0, r3
  3c201a: f3f3 fc7b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f38f6
  3c201e: e7ff         	b	0x3c2020 <RakNetDelegate::updateLoop(float)+0xf78> @ imm = #-0x2
  3c2020: ab16         	add	r3, sp, #0x58
  3c2022: 4618         	mov	r0, r3
  3c2024: f3c8 f9ea    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c83d4
  3c2028: e7ff         	b	0x3c202a <RakNetDelegate::updateLoop(float)+0xf82> @ imm = #-0x2
  3c202a: ab14         	add	r3, sp, #0x50
  3c202c: 4618         	mov	r0, r3
  3c202e: f3f3 fc71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f38e2
  3c2032: f3c6 f83b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c6076
  3c2036: 4620         	mov	r0, r4
  3c2038: f3c6 f834    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c6068
  3c203c: f3c6 f836    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c606c
  3c2040: ab17         	add	r3, sp, #0x5c
  3c2042: 4618         	mov	r0, r3
  3c2044: f3f3 fc66    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f38cc
  3c2048: e7ff         	b	0x3c204a <RakNetDelegate::updateLoop(float)+0xfa2> @ imm = #-0x2
  3c204a: ab16         	add	r3, sp, #0x58
  3c204c: 4618         	mov	r0, r3
  3c204e: f3c8 f9d5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c83aa
  3c2052: f3c6 f82b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c6056
  3c2056: 4620         	mov	r0, r4
  3c2058: f3c6 f824    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c6048
  3c205c: f3c6 f826    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c604c
  3c2060: ab17         	add	r3, sp, #0x5c
  3c2062: 4618         	mov	r0, r3
  3c2064: f3f3 fc56    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f38ac
  3c2068: e7ff         	b	0x3c206a <RakNetDelegate::updateLoop(float)+0xfc2> @ imm = #-0x2
  3c206a: ab16         	add	r3, sp, #0x58
  3c206c: 4618         	mov	r0, r3
  3c206e: f3c8 f9c5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c838a
  3c2072: f3c6 f81b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c6036
  3c2076: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3c20b8 <RakNetDelegate::updateLoop(float)+0x1010>
  3c2078: 58f3         	ldr	r3, [r6, r3]
  3c207a: 9a2d         	ldr	r2, [sp, #0xb4]
  3c207c: 681b         	ldr	r3, [r3]
  3c207e: 429a         	cmp	r2, r3
  3c2080: d001         	beq	0x3c2086 <RakNetDelegate::updateLoop(float)+0xfde> @ imm = #0x2
  3c2082: f713 ef72    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xec11c
  3c2086: b02f         	add	sp, #0xbc
  3c2088: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c2089); words below are literal-pool data ---
  3c208a: bf00         	nop
  3c208c: f602 0057    	addw	r0, r2, #0x857
  3c2090: 3d0e         	subs	r5, #0xe
  3c2092: 0041         	lsls	r1, r0, #0x1
  3c2094: 377c         	adds	r7, #0x7c
  3c2096: 0041         	lsls	r1, r0, #0x1
  3c2098: 3c6c         	subs	r4, #0x6c
  3c209a: 0041         	lsls	r1, r0, #0x1
  3c209c: 3c42         	subs	r4, #0x42
  3c209e: 0041         	lsls	r1, r0, #0x1
  3c20a0: f470 0057    	orns	r0, r0, #0xd70000
  3c20a4: f466 0057    	orn	r0, r6, #0xd70000
  3c20a8: f45a 0057    	orrs	r0, r10, #0xd70000
  3c20ac: f44e 0057    	orr	r0, lr, #0xd70000
  3c20b0: f442 0057    	orr	r0, r2, #0xd70000
  3c20b4: f422 0057    	bic	r0, r2, #0xd70000
  3c20b8: d72c         	bvc	0x3c2114 <RakNetDelegate::sendData(void const*, int, bool)+0x50> @ imm = #0x58
  3c20ba: ffff 2301    	<unknown>

// ==== RakNetDelegate::sendData
//      file offset 0x3c20c4 (= ELF address; Ghidra 0x3d20c4), 280 bytes, Thumb-2
  3c20c4: b5f0         	push	{r4, r5, r6, r7, lr}
  3c20c6: b099         	sub	sp, #0x64
  3c20c8: 9009         	str	r0, [sp, #0x24]
  3c20ca: 9108         	str	r1, [sp, #0x20]
  3c20cc: 9207         	str	r2, [sp, #0x1c]
  3c20ce: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3c20d2: 4c38         	ldr	r4, [pc, #0xe0]         @ 0x3c21b4 <RakNetDelegate::sendData(void const*, int, bool)+0xf0>
  3c20d4: 447c         	add	r4, pc
  3c20d6: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x3c21b8 <RakNetDelegate::sendData(void const*, int, bool)+0xf4>
  3c20d8: 58e3         	ldr	r3, [r4, r3]
  3c20da: 681b         	ldr	r3, [r3]
  3c20dc: 9317         	str	r3, [sp, #0x5c]
  3c20de: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3c21bc <RakNetDelegate::sendData(void const*, int, bool)+0xf8>
  3c20e0: 447b         	add	r3, pc
  3c20e2: 681b         	ldr	r3, [r3]
  3c20e4: 2b00         	cmp	r3, #0x0
  3c20e6: d05b         	beq	0x3c21a0 <RakNetDelegate::sendData(void const*, int, bool)+0xdc> @ imm = #0xb6
  3c20e8: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x3c21c0 <RakNetDelegate::sendData(void const*, int, bool)+0xfc>
  3c20ea: 447b         	add	r3, pc
  3c20ec: 2286         	movs	r2, #0x86
  3c20ee: 701a         	strb	r2, [r3]
  3c20f0: 9b07         	ldr	r3, [sp, #0x1c]
  3c20f2: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x3c21c4 <RakNetDelegate::sendData(void const*, int, bool)+0x100>
  3c20f4: 447a         	add	r2, pc
  3c20f6: 1c50         	adds	r0, r2, #0x1
  3c20f8: 9908         	ldr	r1, [sp, #0x20]
  3c20fa: 461a         	mov	r2, r3
  3c20fc: f713 ef22    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xec1bc
  3c2100: 2303         	movs	r3, #0x3
  3c2102: 930b         	str	r3, [sp, #0x2c]
  3c2104: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3c2108: f083 0301    	eor	r3, r3, #0x1
  3c210c: b2db         	uxtb	r3, r3
  3c210e: 2b00         	cmp	r3, #0x0
  3c2110: d005         	beq	0x3c211e <RakNetDelegate::sendData(void const*, int, bool)+0x5a> @ imm = #0xa
  3c2112: 2301         	movs	r3, #0x1
  3c2114: 930b         	str	r3, [sp, #0x2c]
  3c2116: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3c21c8 <RakNetDelegate::sendData(void const*, int, bool)+0x104>
  3c2118: 447b         	add	r3, pc
  3c211a: 2289         	movs	r2, #0x89
  3c211c: 701a         	strb	r2, [r3]
  3c211e: 9b08         	ldr	r3, [sp, #0x20]
  3c2120: 781b         	ldrb	r3, [r3]
  3c2122: f88d 302b    	strb.w	r3, [sp, #0x2b]
  3c2126: f7ff ffc9    	bl	0x3c20bc <ShouldSendToServer()> @ imm = #-0x6e
  3c212a: 4603         	mov	r3, r0
  3c212c: 2b00         	cmp	r3, #0x0
  3c212e: d10f         	bne	0x3c2150 <RakNetDelegate::sendData(void const*, int, bool)+0x8c> @ imm = #0x1e
  3c2130: f89d 302b    	ldrb.w	r3, [sp, #0x2b]
  3c2134: 2b21         	cmp	r3, #0x21
  3c2136: d00b         	beq	0x3c2150 <RakNetDelegate::sendData(void const*, int, bool)+0x8c> @ imm = #0x16
  3c2138: f89d 302b    	ldrb.w	r3, [sp, #0x2b]
  3c213c: 2b27         	cmp	r3, #0x27
  3c213e: d007         	beq	0x3c2150 <RakNetDelegate::sendData(void const*, int, bool)+0x8c> @ imm = #0xe
  3c2140: f89d 302b    	ldrb.w	r3, [sp, #0x2b]
  3c2144: 2b26         	cmp	r3, #0x26
  3c2146: d003         	beq	0x3c2150 <RakNetDelegate::sendData(void const*, int, bool)+0x8c> @ imm = #0x6
  3c2148: f89d 302b    	ldrb.w	r3, [sp, #0x2b]
  3c214c: 2b07         	cmp	r3, #0x7
  3c214e: d101         	bne	0x3c2154 <RakNetDelegate::sendData(void const*, int, bool)+0x90> @ imm = #0x2
  3c2150: 2301         	movs	r3, #0x1
  3c2152: e000         	b	0x3c2156 <RakNetDelegate::sendData(void const*, int, bool)+0x92> @ imm = #0x0
  3c2154: 2300         	movs	r3, #0x0
  3c2156: 2b00         	cmp	r3, #0x0
  3c2158: d022         	beq	0x3c21a0 <RakNetDelegate::sendData(void const*, int, bool)+0xdc> @ imm = #0x44
  3c215a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3c21cc <RakNetDelegate::sendData(void const*, int, bool)+0x108>
  3c215c: 447b         	add	r3, pc
  3c215e: 681b         	ldr	r3, [r3]
  3c2160: 681b         	ldr	r3, [r3]
  3c2162: 3354         	adds	r3, #0x54
  3c2164: 681d         	ldr	r5, [r3]
  3c2166: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3c21d0 <RakNetDelegate::sendData(void const*, int, bool)+0x10c>
  3c2168: 447b         	add	r3, pc
  3c216a: 681f         	ldr	r7, [r3]
  3c216c: 9b07         	ldr	r3, [sp, #0x1c]
  3c216e: 1c5e         	adds	r6, r3, #0x1
  3c2170: ab0c         	add	r3, sp, #0x30
  3c2172: 4618         	mov	r0, r3
  3c2174: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3c21d4 <RakNetDelegate::sendData(void const*, int, bool)+0x110>
  3c2176: 447b         	add	r3, pc
  3c2178: 4619         	mov	r1, r3
  3c217a: f7fc f999    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0x3cce
  3c217e: 9b0b         	ldr	r3, [sp, #0x2c]
  3c2180: 9300         	str	r3, [sp]
  3c2182: 2300         	movs	r3, #0x0
  3c2184: 9301         	str	r3, [sp, #0x4]
  3c2186: ab0c         	add	r3, sp, #0x30
  3c2188: 9302         	str	r3, [sp, #0x8]
  3c218a: 2300         	movs	r3, #0x0
  3c218c: 9303         	str	r3, [sp, #0xc]
  3c218e: 2300         	movs	r3, #0x0
  3c2190: 9304         	str	r3, [sp, #0x10]
  3c2192: 4638         	mov	r0, r7
  3c2194: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3c21d8 <RakNetDelegate::sendData(void const*, int, bool)+0x114>
  3c2196: 447b         	add	r3, pc
  3c2198: 4619         	mov	r1, r3
  3c219a: 4632         	mov	r2, r6
  3c219c: 2301         	movs	r3, #0x1
  3c219e: 47a8         	blx	r5
  3c21a0: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c21b8 <RakNetDelegate::sendData(void const*, int, bool)+0xf4>
  3c21a2: 58e3         	ldr	r3, [r4, r3]
  3c21a4: 9a17         	ldr	r2, [sp, #0x5c]
  3c21a6: 681b         	ldr	r3, [r3]
  3c21a8: 429a         	cmp	r2, r3
  3c21aa: d001         	beq	0x3c21b0 <RakNetDelegate::sendData(void const*, int, bool)+0xec> @ imm = #0x2
  3c21ac: f713 eedc    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xec248
  3c21b0: b019         	add	sp, #0x64
  3c21b2: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c21b3); words below are literal-pool data ---
  3c21b4: 0934         	lsrs	r4, r6, #0x4
  3c21b6: 0057         	lsls	r7, r2, #0x1
  3c21b8: d72c         	bvc	0x3c2214 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x28> @ imm = #0x58
  3c21ba: ffff f324    	<unknown>
  3c21be: 0057         	lsls	r7, r2, #0x1
  3c21c0: f3ee 0057    	<unknown>
  3c21c4: f3e4 0057    	<unknown>
  3c21c8: f3c0 0057    	ubfx	r0, r0, #0x1, #0x18
  3c21cc: f2a8 0057    	subw	r0, r8, #0x57
  3c21d0: f29c 0057    	<unknown>
  3c21d4: f29e 0057    	<unknown>
  3c21d8: f342 0057    	sbfx	r0, r2, #0x1, #0x18

// ==== RakNetDelegate::sendDataToPeers
//      file offset 0x3c21dc (= ELF address; Ghidra 0x3d21dc), 14 bytes, Thumb-2
  3c21dc: b084         	sub	sp, #0x10
  3c21de: 9003         	str	r0, [sp, #0xc]
  3c21e0: 9102         	str	r1, [sp, #0x8]
  3c21e2: 9201         	str	r2, [sp, #0x4]
  3c21e4: 9300         	str	r3, [sp]
  3c21e6: b004         	add	sp, #0x10
  3c21e8: 4770         	bx	lr

// ==== RakNetDelegate::sendDataToPeer
//      file offset 0x3c21ec (= ELF address; Ghidra 0x3d21ec), 384 bytes, Thumb-2
  3c21ec: b570         	push	{r4, r5, r6, lr}
  3c21ee: b09e         	sub	sp, #0x78
  3c21f0: 9009         	str	r0, [sp, #0x24]
  3c21f2: 9108         	str	r1, [sp, #0x20]
  3c21f4: 9207         	str	r2, [sp, #0x1c]
  3c21f6: 9306         	str	r3, [sp, #0x18]
  3c21f8: 4c4d         	ldr	r4, [pc, #0x134]        @ 0x3c2330 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x144>
  3c21fa: 447c         	add	r4, pc
  3c21fc: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x3c2334 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x148>
  3c21fe: 58e3         	ldr	r3, [r4, r3]
  3c2200: 681b         	ldr	r3, [r3]
  3c2202: 931d         	str	r3, [sp, #0x74]
  3c2204: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x3c2338 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x14c>
  3c2206: 447b         	add	r3, pc
  3c2208: 681b         	ldr	r3, [r3]
  3c220a: 2b00         	cmp	r3, #0x0
  3c220c: f000 8085    	beq.w	0x3c231a <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x12e> @ imm = #0x10a
  3c2210: 2303         	movs	r3, #0x3
  3c2212: 930c         	str	r3, [sp, #0x30]
  3c2214: 4b49         	ldr	r3, [pc, #0x124]        @ 0x3c233c <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x150>
  3c2216: 447b         	add	r3, pc
  3c2218: ad0e         	add	r5, sp, #0x38
  3c221a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c221c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3c2220: 9806         	ldr	r0, [sp, #0x18]
  3c2222: f3f3 f86d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f30da
  3c2226: 4603         	mov	r3, r0
  3c2228: 4618         	mov	r0, r3
  3c222a: f713 eefe    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xec204
  3c222e: 4603         	mov	r3, r0
  3c2230: 930b         	str	r3, [sp, #0x2c]
  3c2232: 2300         	movs	r3, #0x0
  3c2234: 930d         	str	r3, [sp, #0x34]
  3c2236: ab0b         	add	r3, sp, #0x2c
  3c2238: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3c2340 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x154>
  3c223a: 447a         	add	r2, pc
  3c223c: 4610         	mov	r0, r2
  3c223e: 4619         	mov	r1, r3
  3c2240: f000 fe64    	bl	0x3c2f0c <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Has(int const&) const> @ imm = #0xcc8
  3c2244: 4603         	mov	r3, r0
  3c2246: f083 0301    	eor	r3, r3, #0x1
  3c224a: b2db         	uxtb	r3, r3
  3c224c: 2b00         	cmp	r3, #0x0
  3c224e: d028         	beq	0x3c22a2 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0xb6> @ imm = #0x50
  3c2250: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x3c2344 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x158>
  3c2252: 447b         	add	r3, pc
  3c2254: 2287         	movs	r2, #0x87
  3c2256: 701a         	strb	r2, [r3]
  3c2258: 9806         	ldr	r0, [sp, #0x18]
  3c225a: f3f3 f851    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f30a2
  3c225e: 4603         	mov	r3, r0
  3c2260: 4618         	mov	r0, r3
  3c2262: f713 eee2    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xec23c
  3c2266: 4603         	mov	r3, r0
  3c2268: b2da         	uxtb	r2, r3
  3c226a: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3c2348 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x15c>
  3c226c: 447b         	add	r3, pc
  3c226e: 705a         	strb	r2, [r3, #0x1]
  3c2270: 9b07         	ldr	r3, [sp, #0x1c]
  3c2272: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x3c234c <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x160>
  3c2274: 447a         	add	r2, pc
  3c2276: 1c90         	adds	r0, r2, #0x2
  3c2278: 9908         	ldr	r1, [sp, #0x20]
  3c227a: 461a         	mov	r2, r3
  3c227c: f713 ee62    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xec33c
  3c2280: 9b07         	ldr	r3, [sp, #0x1c]
  3c2282: 3302         	adds	r3, #0x2
  3c2284: 930d         	str	r3, [sp, #0x34]
  3c2286: f89d 3088    	ldrb.w	r3, [sp, #0x88]
  3c228a: f083 0301    	eor	r3, r3, #0x1
  3c228e: b2db         	uxtb	r3, r3
  3c2290: 2b00         	cmp	r3, #0x0
  3c2292: d022         	beq	0x3c22da <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0xee> @ imm = #0x44
  3c2294: 2301         	movs	r3, #0x1
  3c2296: 930c         	str	r3, [sp, #0x30]
  3c2298: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3c2350 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x164>
  3c229a: 447b         	add	r3, pc
  3c229c: 228a         	movs	r2, #0x8a
  3c229e: 701a         	strb	r2, [r3]
  3c22a0: e01b         	b	0x3c22da <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0xee> @ imm = #0x36
  3c22a2: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3c2354 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x168>
  3c22a4: 447b         	add	r3, pc
  3c22a6: 228c         	movs	r2, #0x8c
  3c22a8: 701a         	strb	r2, [r3]
  3c22aa: 9b07         	ldr	r3, [sp, #0x1c]
  3c22ac: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x3c2358 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x16c>
  3c22ae: 447a         	add	r2, pc
  3c22b0: 1c50         	adds	r0, r2, #0x1
  3c22b2: 9908         	ldr	r1, [sp, #0x20]
  3c22b4: 461a         	mov	r2, r3
  3c22b6: f713 ee46    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xec374
  3c22ba: 9b07         	ldr	r3, [sp, #0x1c]
  3c22bc: 3301         	adds	r3, #0x1
  3c22be: 930d         	str	r3, [sp, #0x34]
  3c22c0: f89d 3088    	ldrb.w	r3, [sp, #0x88]
  3c22c4: f083 0301    	eor	r3, r3, #0x1
  3c22c8: b2db         	uxtb	r3, r3
  3c22ca: 2b00         	cmp	r3, #0x0
  3c22cc: d005         	beq	0x3c22da <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0xee> @ imm = #0xa
  3c22ce: 2301         	movs	r3, #0x1
  3c22d0: 930c         	str	r3, [sp, #0x30]
  3c22d2: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3c235c <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x170>
  3c22d4: 447b         	add	r3, pc
  3c22d6: 228d         	movs	r2, #0x8d
  3c22d8: 701a         	strb	r2, [r3]
  3c22da: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3c2360 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x174>
  3c22dc: 447b         	add	r3, pc
  3c22de: 681b         	ldr	r3, [r3]
  3c22e0: 681b         	ldr	r3, [r3]
  3c22e2: 3354         	adds	r3, #0x54
  3c22e4: 681d         	ldr	r5, [r3]
  3c22e6: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3c2364 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x178>
  3c22e8: 447b         	add	r3, pc
  3c22ea: 681e         	ldr	r6, [r3]
  3c22ec: aa12         	add	r2, sp, #0x48
  3c22ee: ab0e         	add	r3, sp, #0x38
  3c22f0: 4610         	mov	r0, r2
  3c22f2: 4619         	mov	r1, r3
  3c22f4: f7fc f8dc    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0x3e48
  3c22f8: 9b0c         	ldr	r3, [sp, #0x30]
  3c22fa: 9300         	str	r3, [sp]
  3c22fc: 2300         	movs	r3, #0x0
  3c22fe: 9301         	str	r3, [sp, #0x4]
  3c2300: ab12         	add	r3, sp, #0x48
  3c2302: 9302         	str	r3, [sp, #0x8]
  3c2304: 2300         	movs	r3, #0x0
  3c2306: 9303         	str	r3, [sp, #0xc]
  3c2308: 2300         	movs	r3, #0x0
  3c230a: 9304         	str	r3, [sp, #0x10]
  3c230c: 4630         	mov	r0, r6
  3c230e: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3c2368 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x17c>
  3c2310: 447b         	add	r3, pc
  3c2312: 4619         	mov	r1, r3
  3c2314: 9a0d         	ldr	r2, [sp, #0x34]
  3c2316: 2301         	movs	r3, #0x1
  3c2318: 47a8         	blx	r5
  3c231a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c2334 <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x148>
  3c231c: 58e3         	ldr	r3, [r4, r3]
  3c231e: 9a1d         	ldr	r2, [sp, #0x74]
  3c2320: 681b         	ldr	r3, [r3]
  3c2322: 429a         	cmp	r2, r3
  3c2324: d001         	beq	0x3c232a <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)+0x13e> @ imm = #0x2
  3c2326: f713 ee20    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xec3c0
  3c232a: b01e         	add	sp, #0x78
  3c232c: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3c232d); words below are literal-pool data ---
  3c232e: bf00         	nop
  3c2330: 080e         	lsrs	r6, r1, #0x20
  3c2332: 0057         	lsls	r7, r2, #0x1
  3c2334: d72c         	bvc	0x3c2390 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0x24> @ imm = #0x58
  3c2336: ffff f1fe    	<unknown>
  3c233a: 0057         	lsls	r7, r2, #0x1
  3c233c: f1fe 0057    	<unknown>
  3c2340: f1fe 0057    	<unknown>
  3c2344: f686 0057    	<unknown>
  3c2348: f66c 0057    	<unknown>
  3c234c: f664 0057    	<unknown>
  3c2350: f63e 0057    	<unknown>
  3c2354: f634 0057    	<unknown>
  3c2358: f62a 0057    	<unknown>
  3c235c: f604 0057    	addw	r0, r4, #0x857
  3c2360: f128 0057    	<unknown>
  3c2364: f11c 0057    	adds.w	r0, r12, #0x57
  3c2368: f5c8 0057    	rsb.w	r0, r8, #0xd70000

// ==== RakNetDelegate::sendDataToServer
//      file offset 0x3c236c (= ELF address; Ghidra 0x3d236c), 220 bytes, Thumb-2
  3c236c: b5f0         	push	{r4, r5, r6, r7, lr}
  3c236e: b099         	sub	sp, #0x64
  3c2370: 9009         	str	r0, [sp, #0x24]
  3c2372: 9108         	str	r1, [sp, #0x20]
  3c2374: 9207         	str	r2, [sp, #0x1c]
  3c2376: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3c237a: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x3c2420 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xb4>
  3c237c: 447c         	add	r4, pc
  3c237e: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3c2424 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xb8>
  3c2380: 58e3         	ldr	r3, [r4, r3]
  3c2382: 681b         	ldr	r3, [r3]
  3c2384: 9317         	str	r3, [sp, #0x5c]
  3c2386: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3c2428 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xbc>
  3c2388: 447b         	add	r3, pc
  3c238a: 681b         	ldr	r3, [r3]
  3c238c: 2b00         	cmp	r3, #0x0
  3c238e: d03d         	beq	0x3c240c <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xa0> @ imm = #0x7a
  3c2390: 4b26         	ldr	r3, [pc, #0x98]         @ 0x3c242c <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xc0>
  3c2392: 447b         	add	r3, pc
  3c2394: 2286         	movs	r2, #0x86
  3c2396: 701a         	strb	r2, [r3]
  3c2398: 9b07         	ldr	r3, [sp, #0x1c]
  3c239a: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3c2430 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xc4>
  3c239c: 447a         	add	r2, pc
  3c239e: 1c50         	adds	r0, r2, #0x1
  3c23a0: 9908         	ldr	r1, [sp, #0x20]
  3c23a2: 461a         	mov	r2, r3
  3c23a4: f713 edce    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xec464
  3c23a8: 2303         	movs	r3, #0x3
  3c23aa: 930b         	str	r3, [sp, #0x2c]
  3c23ac: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3c23b0: f083 0301    	eor	r3, r3, #0x1
  3c23b4: b2db         	uxtb	r3, r3
  3c23b6: 2b00         	cmp	r3, #0x0
  3c23b8: d005         	beq	0x3c23c6 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0x5a> @ imm = #0xa
  3c23ba: 2301         	movs	r3, #0x1
  3c23bc: 930b         	str	r3, [sp, #0x2c]
  3c23be: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3c2434 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xc8>
  3c23c0: 447b         	add	r3, pc
  3c23c2: 2289         	movs	r2, #0x89
  3c23c4: 701a         	strb	r2, [r3]
  3c23c6: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3c2438 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xcc>
  3c23c8: 447b         	add	r3, pc
  3c23ca: 681b         	ldr	r3, [r3]
  3c23cc: 681b         	ldr	r3, [r3]
  3c23ce: 3354         	adds	r3, #0x54
  3c23d0: 681d         	ldr	r5, [r3]
  3c23d2: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3c243c <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xd0>
  3c23d4: 447b         	add	r3, pc
  3c23d6: 681f         	ldr	r7, [r3]
  3c23d8: 9b07         	ldr	r3, [sp, #0x1c]
  3c23da: 1c5e         	adds	r6, r3, #0x1
  3c23dc: ab0c         	add	r3, sp, #0x30
  3c23de: 4618         	mov	r0, r3
  3c23e0: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3c2440 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xd4>
  3c23e2: 447b         	add	r3, pc
  3c23e4: 4619         	mov	r1, r3
  3c23e6: f7fc f863    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0x3f3a
  3c23ea: 9b0b         	ldr	r3, [sp, #0x2c]
  3c23ec: 9300         	str	r3, [sp]
  3c23ee: 2300         	movs	r3, #0x0
  3c23f0: 9301         	str	r3, [sp, #0x4]
  3c23f2: ab0c         	add	r3, sp, #0x30
  3c23f4: 9302         	str	r3, [sp, #0x8]
  3c23f6: 2300         	movs	r3, #0x0
  3c23f8: 9303         	str	r3, [sp, #0xc]
  3c23fa: 2300         	movs	r3, #0x0
  3c23fc: 9304         	str	r3, [sp, #0x10]
  3c23fe: 4638         	mov	r0, r7
  3c2400: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3c2444 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xd8>
  3c2402: 447b         	add	r3, pc
  3c2404: 4619         	mov	r1, r3
  3c2406: 4632         	mov	r2, r6
  3c2408: 2301         	movs	r3, #0x1
  3c240a: 47a8         	blx	r5
  3c240c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c2424 <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xb8>
  3c240e: 58e3         	ldr	r3, [r4, r3]
  3c2410: 9a17         	ldr	r2, [sp, #0x5c]
  3c2412: 681b         	ldr	r3, [r3]
  3c2414: 429a         	cmp	r2, r3
  3c2416: d001         	beq	0x3c241c <RakNetDelegate::sendDataToServer(void const*, int, bool)+0xb0> @ imm = #0x2
  3c2418: f713 eda6    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xec4b4
  3c241c: b019         	add	sp, #0x64
  3c241e: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c241f); words below are literal-pool data ---
  3c2420: 068c         	lsls	r4, r1, #0x1a
  3c2422: 0057         	lsls	r7, r2, #0x1
  3c2424: d72c         	bvc	0x3c2480 <RakNetDelegate::shutdown()+0x14> @ imm = #0x58
  3c2426: ffff f07c    	<unknown>
  3c242a: 0057         	lsls	r7, r2, #0x1
  3c242c: f946 0057    	vst4.16	{d16, d17, d18, d19}, [r6:64], r7
  3c2430: f93c 0057    	<unknown>
  3c2434: f918 0057    	<unknown>
  3c2438: f03c 0057    	bics	r0, r12, #0x57
  3c243c: f030 0057    	bics	r0, r0, #0x57
  3c2440: f032 0057    	bics	r0, r2, #0x57
  3c2444: f8d6 0057    	ldr.w	r0, [r6, #0x57]

// ==== RakNetDelegate::sendRequestNumPlayers
//      file offset 0x3c2448 (= ELF address; Ghidra 0x3d2448), 34 bytes, Thumb-2
  3c2448: b500         	push	{lr}
  3c244a: b085         	sub	sp, #0x14
  3c244c: 9001         	str	r0, [sp, #0x4]
  3c244e: 2308         	movs	r3, #0x8
  3c2450: f88d 300f    	strb.w	r3, [sp, #0xf]
  3c2454: f10d 030f    	add.w	r3, sp, #0xf
  3c2458: 9801         	ldr	r0, [sp, #0x4]
  3c245a: 4619         	mov	r1, r3
  3c245c: 2201         	movs	r2, #0x1
  3c245e: 2301         	movs	r3, #0x1
  3c2460: f7ff ff84    	bl	0x3c236c <RakNetDelegate::sendDataToServer(void const*, int, bool)> @ imm = #-0xf8
  3c2464: b005         	add	sp, #0x14
  3c2466: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetDelegate::shutdown
//      file offset 0x3c246c (= ELF address; Ghidra 0x3d246c), 352 bytes, Thumb-2
  3c246c: b510         	push	{r4, lr}
  3c246e: b082         	sub	sp, #0x8
  3c2470: 9001         	str	r0, [sp, #0x4]
  3c2472: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3c256c <RakNetDelegate::shutdown()+0x100>
  3c2474: 447b         	add	r3, pc
  3c2476: 681b         	ldr	r3, [r3]
  3c2478: 2b00         	cmp	r3, #0x0
  3c247a: d074         	beq	0x3c2566 <RakNetDelegate::shutdown()+0xfa> @ imm = #0xe8
  3c247c: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x3c2570 <RakNetDelegate::shutdown()+0x104>
  3c247e: 447b         	add	r3, pc
  3c2480: 681b         	ldr	r3, [r3]
  3c2482: 681b         	ldr	r3, [r3]
  3c2484: 3340         	adds	r3, #0x40
  3c2486: 681c         	ldr	r4, [r3]
  3c2488: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x3c2574 <RakNetDelegate::shutdown()+0x108>
  3c248a: 447b         	add	r3, pc
  3c248c: 681b         	ldr	r3, [r3]
  3c248e: 4618         	mov	r0, r3
  3c2490: f44f 7196    	mov.w	r1, #0x12c
  3c2494: 2200         	movs	r2, #0x0
  3c2496: 2303         	movs	r3, #0x3
  3c2498: 47a0         	blx	r4
  3c249a: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3c2578 <RakNetDelegate::shutdown()+0x10c>
  3c249c: 447b         	add	r3, pc
  3c249e: 4618         	mov	r0, r3
  3c24a0: f000 fed4    	bl	0x3c324c <DataStructures::Map<int, RakNet::RakNetGUID, &int DataStructures::defaultMapKeyComparison<int>(int const&, int const&)>::Clear()> @ imm = #0xda8
  3c24a4: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x3c257c <RakNetDelegate::shutdown()+0x110>
  3c24a6: 447b         	add	r3, pc
  3c24a8: 4618         	mov	r0, r3
  3c24aa: f000 fee5    	bl	0x3c3278 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Clear()> @ imm = #0xdca
  3c24ae: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3c2580 <RakNetDelegate::shutdown()+0x114>
  3c24b0: 447b         	add	r3, pc
  3c24b2: 4618         	mov	r0, r3
  3c24b4: f000 fef6    	bl	0x3c32a4 <DataStructures::Map<RakNet::RakNetGUID, int, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Clear()> @ imm = #0xdec
  3c24b8: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3c2584 <RakNetDelegate::shutdown()+0x118>
  3c24ba: 447b         	add	r3, pc
  3c24bc: 4618         	mov	r0, r3
  3c24be: f000 fedb    	bl	0x3c3278 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Clear()> @ imm = #0xdb6
  3c24c2: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3c2588 <RakNetDelegate::shutdown()+0x11c>
  3c24c4: 447b         	add	r3, pc
  3c24c6: 681b         	ldr	r3, [r3]
  3c24c8: 4618         	mov	r0, r3
  3c24ca: f0e2 fb4b    	bl	0x4a4b64 <RakNet::RakPeerInterface::DestroyInstance(RakNet::RakPeerInterface*)> @ imm = #0xe2696
  3c24ce: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3c258c <RakNetDelegate::shutdown()+0x120>
  3c24d0: 447b         	add	r3, pc
  3c24d2: 2200         	movs	r2, #0x0
  3c24d4: 601a         	str	r2, [r3]
  3c24d6: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x3c2590 <RakNetDelegate::shutdown()+0x124>
  3c24d8: 447b         	add	r3, pc
  3c24da: 2200         	movs	r2, #0x0
  3c24dc: 801a         	strh	r2, [r3]
  3c24de: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3c2594 <RakNetDelegate::shutdown()+0x128>
  3c24e0: 447b         	add	r3, pc
  3c24e2: 2200         	movs	r2, #0x0
  3c24e4: 701a         	strb	r2, [r3]
  3c24e6: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3c2598 <RakNetDelegate::shutdown()+0x12c>
  3c24e8: 447b         	add	r3, pc
  3c24ea: 2200         	movs	r2, #0x0
  3c24ec: 701a         	strb	r2, [r3]
  3c24ee: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3c259c <RakNetDelegate::shutdown()+0x130>
  3c24f0: 447b         	add	r3, pc
  3c24f2: 681b         	ldr	r3, [r3]
  3c24f4: 2b00         	cmp	r3, #0x0
  3c24f6: d00a         	beq	0x3c250e <RakNetDelegate::shutdown()+0xa2> @ imm = #0x14
  3c24f8: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3c25a0 <RakNetDelegate::shutdown()+0x134>
  3c24fa: 447b         	add	r3, pc
  3c24fc: 681b         	ldr	r3, [r3]
  3c24fe: 681b         	ldr	r3, [r3]
  3c2500: 3304         	adds	r3, #0x4
  3c2502: 681b         	ldr	r3, [r3]
  3c2504: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3c25a4 <RakNetDelegate::shutdown()+0x138>
  3c2506: 447a         	add	r2, pc
  3c2508: 6812         	ldr	r2, [r2]
  3c250a: 4610         	mov	r0, r2
  3c250c: 4798         	blx	r3
  3c250e: 4b26         	ldr	r3, [pc, #0x98]         @ 0x3c25a8 <RakNetDelegate::shutdown()+0x13c>
  3c2510: 447b         	add	r3, pc
  3c2512: 2200         	movs	r2, #0x0
  3c2514: 601a         	str	r2, [r3]
  3c2516: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3c25ac <RakNetDelegate::shutdown()+0x140>
  3c2518: 447b         	add	r3, pc
  3c251a: 681b         	ldr	r3, [r3]
  3c251c: 2b00         	cmp	r3, #0x0
  3c251e: d00a         	beq	0x3c2536 <RakNetDelegate::shutdown()+0xca> @ imm = #0x14
  3c2520: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3c25b0 <RakNetDelegate::shutdown()+0x144>
  3c2522: 447b         	add	r3, pc
  3c2524: 681b         	ldr	r3, [r3]
  3c2526: 681b         	ldr	r3, [r3]
  3c2528: 3304         	adds	r3, #0x4
  3c252a: 681b         	ldr	r3, [r3]
  3c252c: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3c25b4 <RakNetDelegate::shutdown()+0x148>
  3c252e: 447a         	add	r2, pc
  3c2530: 6812         	ldr	r2, [r2]
  3c2532: 4610         	mov	r0, r2
  3c2534: 4798         	blx	r3
  3c2536: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3c25b8 <RakNetDelegate::shutdown()+0x14c>
  3c2538: 447b         	add	r3, pc
  3c253a: 2200         	movs	r2, #0x0
  3c253c: 601a         	str	r2, [r3]
  3c253e: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3c25bc <RakNetDelegate::shutdown()+0x150>
  3c2540: 447b         	add	r3, pc
  3c2542: 681b         	ldr	r3, [r3]
  3c2544: 2b00         	cmp	r3, #0x0
  3c2546: d00a         	beq	0x3c255e <RakNetDelegate::shutdown()+0xf2> @ imm = #0x14
  3c2548: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3c25c0 <RakNetDelegate::shutdown()+0x154>
  3c254a: 447b         	add	r3, pc
  3c254c: 681b         	ldr	r3, [r3]
  3c254e: 681b         	ldr	r3, [r3]
  3c2550: 3304         	adds	r3, #0x4
  3c2552: 681b         	ldr	r3, [r3]
  3c2554: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x3c25c4 <RakNetDelegate::shutdown()+0x158>
  3c2556: 447a         	add	r2, pc
  3c2558: 6812         	ldr	r2, [r2]
  3c255a: 4610         	mov	r0, r2
  3c255c: 4798         	blx	r3
  3c255e: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3c25c8 <RakNetDelegate::shutdown()+0x15c>
  3c2560: 447b         	add	r3, pc
  3c2562: 2200         	movs	r2, #0x0
  3c2564: 601a         	str	r2, [r3]
  3c2566: b002         	add	sp, #0x8
  3c2568: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c2569); words below are literal-pool data ---
  3c256a: bf00         	nop
  3c256c: ef90 0057    	<unknown>
  3c2570: ef86 0057    	vmov.i32	q0, #0x67
  3c2574: ef7a 0057    	<unknown>
  3c2578: ef9c 0057    	<unknown>
  3c257c: efaa 0057    	<unknown>
  3c2580: efcc 0057    	<unknown>
  3c2584: efea 0057    	<unknown>
  3c2588: ef40 0057    	<unknown>
  3c258c: ef34 0057    	<unknown>
  3c2590: ef14 0057    	<unknown>
  3c2594: ef0e 0057    	<unknown>
  3c2598: ef19 0057    	<unknown>
  3c259c: ef20 0057    	<unknown>
  3c25a0: ef16 0057    	<unknown>
  3c25a4: ef0a 0057    	<unknown>
  3c25a8: ef00 0057    	<unknown>
  3c25ac: eef0 0057    	mrc	p0, #0x7, r0, c0, c7, #0x2
  3c25b0: eee6 0057    	mcr	p0, #0x7, r0, c6, c7, #0x2
  3c25b4: eeda 0057    	mrc	p0, #0x6, r0, c10, c7, #0x2
  3c25b8: eed0 0057    	mrc	p0, #0x6, r0, c0, c7, #0x2
  3c25bc: eecc 0057    	mcr	p0, #0x6, r0, c12, c7, #0x2
  3c25c0: eec2 0057    	mcr	p0, #0x6, r0, c2, c7, #0x2
  3c25c4: eeb6 0057    	mrc	p0, #0x5, r0, c6, c7, #0x2
  3c25c8: eeac 0057    	mcr	p0, #0x5, r0, c12, c7, #0x2

// ==== RakNetDelegate::addServerIP
//      file offset 0x3c25cc (= ELF address; Ghidra 0x3d25cc), 204 bytes, Thumb-2
  3c25cc: b510         	push	{r4, lr}
  3c25ce: b086         	sub	sp, #0x18
  3c25d0: 9001         	str	r0, [sp, #0x4]
  3c25d2: 9100         	str	r1, [sp]
  3c25d4: 9b00         	ldr	r3, [sp]
  3c25d6: 4618         	mov	r0, r3
  3c25d8: f3f2 fe92    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f2d24
  3c25dc: 4604         	mov	r4, r0
  3c25de: 9b00         	ldr	r3, [sp]
  3c25e0: 3304         	adds	r3, #0x4
  3c25e2: 4618         	mov	r0, r3
  3c25e4: f3f2 fe8c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f2d18
  3c25e8: 4603         	mov	r3, r0
  3c25ea: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3c2688 <RakNetDelegate::addServerIP(ServerListObject)+0xbc>
  3c25ec: 447a         	add	r2, pc
  3c25ee: 4610         	mov	r0, r2
  3c25f0: 4621         	mov	r1, r4
  3c25f2: 461a         	mov	r2, r3
  3c25f4: f713 ed00    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xec600
  3c25f8: 2300         	movs	r3, #0x0
  3c25fa: 9303         	str	r3, [sp, #0xc]
  3c25fc: e027         	b	0x3c264e <RakNetDelegate::addServerIP(ServerListObject)+0x82> @ imm = #0x4e
  3c25fe: 9b03         	ldr	r3, [sp, #0xc]
  3c2600: 4a22         	ldr	r2, [pc, #0x88]         @ 0x3c268c <RakNetDelegate::addServerIP(ServerListObject)+0xc0>
  3c2602: 447a         	add	r2, pc
  3c2604: 4610         	mov	r0, r2
  3c2606: 4619         	mov	r1, r3
  3c2608: f000 fc0e    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x81c
  3c260c: 4603         	mov	r3, r0
  3c260e: aa04         	add	r2, sp, #0x10
  3c2610: 4610         	mov	r0, r2
  3c2612: 4619         	mov	r1, r3
  3c2614: f7bc fd4e    	bl	0x37f0b4 <ServerListObject::ServerListObject(ServerListObject const&)> @ imm = #-0x43564
  3c2618: 9b00         	ldr	r3, [sp]
  3c261a: aa04         	add	r2, sp, #0x10
  3c261c: 4610         	mov	r0, r2
  3c261e: 4619         	mov	r1, r3
  3c2620: f3f3 f82c    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3f3058
  3c2624: 4603         	mov	r3, r0
  3c2626: 2b00         	cmp	r3, #0x0
  3c2628: bf14         	ite	ne
  3c262a: 2300         	movne	r3, #0x0
  3c262c: 2301         	moveq	r3, #0x1
  3c262e: b2db         	uxtb	r3, r3
  3c2630: 2b00         	cmp	r3, #0x0
  3c2632: d001         	beq	0x3c2638 <RakNetDelegate::addServerIP(ServerListObject)+0x6c> @ imm = #0x2
  3c2634: 2400         	movs	r4, #0x0
  3c2636: e000         	b	0x3c263a <RakNetDelegate::addServerIP(ServerListObject)+0x6e> @ imm = #0x0
  3c2638: 2401         	movs	r4, #0x1
  3c263a: ab04         	add	r3, sp, #0x10
  3c263c: 4618         	mov	r0, r3
  3c263e: f7b7 ffcf    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x48062
  3c2642: 2c01         	cmp	r4, #0x1
  3c2644: d11e         	bne	0x3c2684 <RakNetDelegate::addServerIP(ServerListObject)+0xb8> @ imm = #0x3c
  3c2646: bf00         	nop
  3c2648: 9b03         	ldr	r3, [sp, #0xc]
  3c264a: 3301         	adds	r3, #0x1
  3c264c: 9303         	str	r3, [sp, #0xc]
  3c264e: 9c03         	ldr	r4, [sp, #0xc]
  3c2650: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3c2690 <RakNetDelegate::addServerIP(ServerListObject)+0xc4>
  3c2652: 447b         	add	r3, pc
  3c2654: 4618         	mov	r0, r3
  3c2656: f7ba facd    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x45a66
  3c265a: 4603         	mov	r3, r0
  3c265c: 429c         	cmp	r4, r3
  3c265e: bf2c         	ite	hs
  3c2660: 2300         	movhs	r3, #0x0
  3c2662: 2301         	movlo	r3, #0x1
  3c2664: b2db         	uxtb	r3, r3
  3c2666: 2b00         	cmp	r3, #0x0
  3c2668: d1c9         	bne	0x3c25fe <RakNetDelegate::addServerIP(ServerListObject)+0x32> @ imm = #-0x6e
  3c266a: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3c2694 <RakNetDelegate::addServerIP(ServerListObject)+0xc8>
  3c266c: 447b         	add	r3, pc
  3c266e: 4618         	mov	r0, r3
  3c2670: 9900         	ldr	r1, [sp]
  3c2672: f000 fe2d    	bl	0x3c32d0 <std::vector<ServerListObject, std::allocator<ServerListObject>>::push_back(ServerListObject const&)> @ imm = #0xc5a
  3c2676: e005         	b	0x3c2684 <RakNetDelegate::addServerIP(ServerListObject)+0xb8> @ imm = #0xa
  3c2678: ab04         	add	r3, sp, #0x10
  3c267a: 4618         	mov	r0, r3
  3c267c: f7b7 ffb0    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x480a0
  3c2680: f3c5 fd14    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c5a28
  3c2684: b006         	add	sp, #0x18
  3c2686: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c2687); words below are literal-pool data ---
  3c2688: 35f4         	adds	r5, #0xf4
  3c268a: 0041         	lsls	r1, r0, #0x1
  3c268c: edee 0057    	stcl	p0, c0, [lr, #348]!
  3c2690: ed9e 0057    	ldc	p0, c0, [lr, #348]
  3c2694: ed84 0057    	stc	p0, c0, [r4, #348]

// ==== RakNetDelegate::shuffleServerList
//      file offset 0x3c2698 (= ELF address; Ghidra 0x3d2698), 164 bytes, Thumb-2
  3c2698: b530         	push	{r4, r5, lr}
  3c269a: b087         	sub	sp, #0x1c
  3c269c: 9001         	str	r0, [sp, #0x4]
  3c269e: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3c2724 <RakNetDelegate::shuffleServerList()+0x8c>
  3c26a0: 447c         	add	r4, pc
  3c26a2: 2000         	movs	r0, #0x0
  3c26a4: f713 ecae    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0xec6a4
  3c26a8: 4603         	mov	r3, r0
  3c26aa: 4618         	mov	r0, r3
  3c26ac: f7fb fe94    	bl	0x3be3d8 <Radar::updateStep(float)+0x668> @ imm = #-0x42d8
  3c26b0: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3c2728 <RakNetDelegate::shuffleServerList()+0x90>
  3c26b2: 447b         	add	r3, pc
  3c26b4: 4618         	mov	r0, r3
  3c26b6: f000 fe2b    	bl	0x3c3310 <std::vector<ServerListObject, std::allocator<ServerListObject>>::begin()> @ imm = #0xc56
  3c26ba: 4605         	mov	r5, r0
  3c26bc: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3c272c <RakNetDelegate::shuffleServerList()+0x94>
  3c26be: 447b         	add	r3, pc
  3c26c0: 4618         	mov	r0, r3
  3c26c2: f000 fe33    	bl	0x3c332c <std::vector<ServerListObject, std::allocator<ServerListObject>>::end()> @ imm = #0xc66
  3c26c6: 4603         	mov	r3, r0
  3c26c8: 4628         	mov	r0, r5
  3c26ca: 4619         	mov	r1, r3
  3c26cc: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3c2730 <RakNetDelegate::shuffleServerList()+0x98>
  3c26ce: 58e3         	ldr	r3, [r4, r3]
  3c26d0: 461a         	mov	r2, r3
  3c26d2: f000 fe3b    	bl	0x3c334c <void std::random_shuffle<__gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject, std::allocator<ServerListObject>>>, int (&)(int)>(__gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject, std::allocator<ServerListObject>>>, __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject, std::allocator<ServerListObject>>>, int (&)(int))> @ imm = #0xc76
  3c26d6: 2300         	movs	r3, #0x0
  3c26d8: 9303         	str	r3, [sp, #0xc]
  3c26da: e013         	b	0x3c2704 <RakNetDelegate::shuffleServerList()+0x6c> @ imm = #0x26
  3c26dc: 9b03         	ldr	r3, [sp, #0xc]
  3c26de: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3c2734 <RakNetDelegate::shuffleServerList()+0x9c>
  3c26e0: 447a         	add	r2, pc
  3c26e2: 4610         	mov	r0, r2
  3c26e4: 4619         	mov	r1, r3
  3c26e6: f000 fb9f    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x73e
  3c26ea: 4603         	mov	r3, r0
  3c26ec: aa04         	add	r2, sp, #0x10
  3c26ee: 4610         	mov	r0, r2
  3c26f0: 4619         	mov	r1, r3
  3c26f2: f7bc fcdf    	bl	0x37f0b4 <ServerListObject::ServerListObject(ServerListObject const&)> @ imm = #-0x43642
  3c26f6: ab04         	add	r3, sp, #0x10
  3c26f8: 4618         	mov	r0, r3
  3c26fa: f7b7 ff71    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x4811e
  3c26fe: 9b03         	ldr	r3, [sp, #0xc]
  3c2700: 3301         	adds	r3, #0x1
  3c2702: 9303         	str	r3, [sp, #0xc]
  3c2704: 9c03         	ldr	r4, [sp, #0xc]
  3c2706: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3c2738 <RakNetDelegate::shuffleServerList()+0xa0>
  3c2708: 447b         	add	r3, pc
  3c270a: 4618         	mov	r0, r3
  3c270c: f7ba fa72    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x45b1c
  3c2710: 4603         	mov	r3, r0
  3c2712: 429c         	cmp	r4, r3
  3c2714: bf2c         	ite	hs
  3c2716: 2300         	movhs	r3, #0x0
  3c2718: 2301         	movlo	r3, #0x1
  3c271a: b2db         	uxtb	r3, r3
  3c271c: 2b00         	cmp	r3, #0x0
  3c271e: d1dd         	bne	0x3c26dc <RakNetDelegate::shuffleServerList()+0x44> @ imm = #-0x46
  3c2720: b007         	add	sp, #0x1c
  3c2722: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c2723); words below are literal-pool data ---
  3c2724: 0368         	lsls	r0, r5, #0xd
  3c2726: 0057         	lsls	r7, r2, #0x1
  3c2728: ed3e 0057    	ldc	p0, c0, [lr, #-348]!
  3c272c: ed32 0057    	ldc	p0, c0, [r2, #-348]!
  3c2730: de54         	udf	#0x54
  3c2732: ffff ed10    	<unknown>
  3c2736: 0057         	lsls	r7, r2, #0x1
  3c2738: ece8 0057    	stcl	p0, c0, [r8], #348

// ==== RakNetDelegate::updateServerList
//      file offset 0x3c273c (= ELF address; Ghidra 0x3d273c), 108 bytes, Thumb-2
  3c273c: b500         	push	{lr}
  3c273e: b087         	sub	sp, #0x1c
  3c2740: 9001         	str	r0, [sp, #0x4]
  3c2742: f7b5 f9fd    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x4ac06
  3c2746: 4603         	mov	r3, r0
  3c2748: aa03         	add	r2, sp, #0xc
  3c274a: 4610         	mov	r0, r2
  3c274c: 4619         	mov	r1, r3
  3c274e: f7b8 fc39    	bl	0x37afc4 <NetworkManager::getServerList()> @ imm = #-0x4778e
  3c2752: ab03         	add	r3, sp, #0xc
  3c2754: 4618         	mov	r0, r3
  3c2756: f7ba fa4d    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x45b66
  3c275a: 4603         	mov	r3, r0
  3c275c: 2b00         	cmp	r3, #0x0
  3c275e: bf0c         	ite	eq
  3c2760: 2300         	moveq	r3, #0x0
  3c2762: 2301         	movne	r3, #0x1
  3c2764: b2db         	uxtb	r3, r3
  3c2766: 2b00         	cmp	r3, #0x0
  3c2768: d00b         	beq	0x3c2782 <RakNetDelegate::updateServerList()+0x46> @ imm = #0x16
  3c276a: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3c27a0 <RakNetDelegate::updateServerList()+0x64>
  3c276c: 447b         	add	r3, pc
  3c276e: 4618         	mov	r0, r3
  3c2770: f7b9 fd02    	bl	0x37c178 <std::vector<ServerListObject, std::allocator<ServerListObject>>::clear()> @ imm = #-0x465fc
  3c2774: ab03         	add	r3, sp, #0xc
  3c2776: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x3c27a4 <RakNetDelegate::updateServerList()+0x68>
  3c2778: 447a         	add	r2, pc
  3c277a: 4610         	mov	r0, r2
  3c277c: 4619         	mov	r1, r3
  3c277e: f000 fe2f    	bl	0x3c33e0 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator=(std::vector<ServerListObject, std::allocator<ServerListObject>> const&)> @ imm = #0xc5e
  3c2782: ab03         	add	r3, sp, #0xc
  3c2784: 4618         	mov	r0, r3
  3c2786: f7b9 fd8b    	bl	0x37c2a0 <std::vector<ServerListObject, std::allocator<ServerListObject>>::~vector()> @ imm = #-0x464ea
  3c278a: e005         	b	0x3c2798 <RakNetDelegate::updateServerList()+0x5c> @ imm = #0xa
  3c278c: ab03         	add	r3, sp, #0xc
  3c278e: 4618         	mov	r0, r3
  3c2790: f7b9 fd86    	bl	0x37c2a0 <std::vector<ServerListObject, std::allocator<ServerListObject>>::~vector()> @ imm = #-0x464f4
  3c2794: f3c5 fc8a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c5914
  3c2798: b007         	add	sp, #0x1c
  3c279a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c279d); words below are literal-pool data ---
  3c279e: bf00         	nop
  3c27a0: ec84 0057    	stc	p0, c0, [r4], {87}
  3c27a4: ec78 0057    	ldcl	p0, c0, [r8], #-348

// ==== RakNetDelegate::getCurrentServerName
//      file offset 0x3c27a8 (= ELF address; Ghidra 0x3d27a8), 164 bytes, Thumb-2
  3c27a8: b510         	push	{r4, lr}
  3c27aa: b084         	sub	sp, #0x10
  3c27ac: 9001         	str	r0, [sp, #0x4]
  3c27ae: 9100         	str	r1, [sp]
  3c27b0: ab03         	add	r3, sp, #0xc
  3c27b2: 4618         	mov	r0, r3
  3c27b4: f3c7 fe1e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c7c3c
  3c27b8: ab03         	add	r3, sp, #0xc
  3c27ba: 9801         	ldr	r0, [sp, #0x4]
  3c27bc: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x3c2838 <RakNetDelegate::getCurrentServerName()+0x90>
  3c27be: 447a         	add	r2, pc
  3c27c0: 4611         	mov	r1, r2
  3c27c2: 461a         	mov	r2, r3
  3c27c4: f3f4 f94c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f4298
  3c27c8: ab03         	add	r3, sp, #0xc
  3c27ca: 4618         	mov	r0, r3
  3c27cc: f3c7 fe16    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c7c2c
  3c27d0: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3c283c <RakNetDelegate::getCurrentServerName()+0x94>
  3c27d2: 447b         	add	r3, pc
  3c27d4: 681b         	ldr	r3, [r3]
  3c27d6: 461c         	mov	r4, r3
  3c27d8: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3c2840 <RakNetDelegate::getCurrentServerName()+0x98>
  3c27da: 447b         	add	r3, pc
  3c27dc: 4618         	mov	r0, r3
  3c27de: f7ba fa09    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x45bee
  3c27e2: 4603         	mov	r3, r0
  3c27e4: 429c         	cmp	r4, r3
  3c27e6: bf2c         	ite	hs
  3c27e8: 2300         	movhs	r3, #0x0
  3c27ea: 2301         	movlo	r3, #0x1
  3c27ec: b2db         	uxtb	r3, r3
  3c27ee: 2b00         	cmp	r3, #0x0
  3c27f0: d012         	beq	0x3c2818 <RakNetDelegate::getCurrentServerName()+0x70> @ imm = #0x24
  3c27f2: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3c2844 <RakNetDelegate::getCurrentServerName()+0x9c>
  3c27f4: 447b         	add	r3, pc
  3c27f6: 681b         	ldr	r3, [r3]
  3c27f8: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3c2848 <RakNetDelegate::getCurrentServerName()+0xa0>
  3c27fa: 447a         	add	r2, pc
  3c27fc: 4610         	mov	r0, r2
  3c27fe: 4619         	mov	r1, r3
  3c2800: f000 fb12    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x624
  3c2804: 4603         	mov	r3, r0
  3c2806: 3304         	adds	r3, #0x4
  3c2808: 4618         	mov	r0, r3
  3c280a: f3f2 fd79    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f2af2
  3c280e: 4603         	mov	r3, r0
  3c2810: 9801         	ldr	r0, [sp, #0x4]
  3c2812: 4619         	mov	r1, r3
  3c2814: f3f3 fb2c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3f3658
  3c2818: e00a         	b	0x3c2830 <RakNetDelegate::getCurrentServerName()+0x88> @ imm = #0x14
  3c281a: ab03         	add	r3, sp, #0xc
  3c281c: 4618         	mov	r0, r3
  3c281e: f3c7 fded    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c7bda
  3c2822: f3c5 fc43    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c5886
  3c2826: 9801         	ldr	r0, [sp, #0x4]
  3c2828: f3f3 f874    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f30e8
  3c282c: f3c5 fc3e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c587c
  3c2830: 9801         	ldr	r0, [sp, #0x4]
  3c2832: b004         	add	sp, #0x10
  3c2834: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c2835); words below are literal-pool data ---
  3c2836: bf00         	nop
  3c2838: 343a         	adds	r4, #0x3a
  3c283a: 0041         	lsls	r1, r0, #0x1
  3c283c: ec16 0057    	<unknown>
  3c2840: ec16 0057    	<unknown>
  3c2844: ebf4 0057    	<unknown>
  3c2848: ebf6 0057    	<unknown>

// ==== RakNetDelegate::nextServerIndex
//      file offset 0x3c284c (= ELF address; Ghidra 0x3d284c), 64 bytes, Thumb-2
  3c284c: b500         	push	{lr}
  3c284e: b083         	sub	sp, #0xc
  3c2850: 9001         	str	r0, [sp, #0x4]
  3c2852: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x3c2880 <RakNetDelegate::nextServerIndex()+0x34>
  3c2854: 447b         	add	r3, pc
  3c2856: 681b         	ldr	r3, [r3]
  3c2858: 3301         	adds	r3, #0x1
  3c285a: 9801         	ldr	r0, [sp, #0x4]
  3c285c: 4619         	mov	r1, r3
  3c285e: f000 f815    	bl	0x3c288c <RakNetDelegate::setServerIndex(int)> @ imm = #0x2a
  3c2862: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3c2884 <RakNetDelegate::nextServerIndex()+0x38>
  3c2864: 447b         	add	r3, pc
  3c2866: 4618         	mov	r0, r3
  3c2868: f7fb fe4c    	bl	0x3be504 <RakNet::RakString::C_String() const> @ imm = #-0x4368
  3c286c: 4603         	mov	r3, r0
  3c286e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3c2888 <RakNetDelegate::nextServerIndex()+0x3c>
  3c2870: 447a         	add	r2, pc
  3c2872: 4610         	mov	r0, r2
  3c2874: 4619         	mov	r1, r3
  3c2876: f713 ebc0    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xec880
  3c287a: b003         	add	sp, #0xc
  3c287c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c287f); words below are literal-pool data ---
  3c2880: eb94 0057    	<unknown>
  3c2884: eb98 0057    	<unknown>
  3c2888: 3390         	adds	r3, #0x90
  3c288a: 0041         	lsls	r1, r0, #0x1

// ==== RakNetDelegate::setServerIndex
//      file offset 0x3c288c (= ELF address; Ghidra 0x3d288c), 148 bytes, Thumb-2
  3c288c: b510         	push	{r4, lr}
  3c288e: b084         	sub	sp, #0x10
  3c2890: 9001         	str	r0, [sp, #0x4]
  3c2892: 9100         	str	r1, [sp]
  3c2894: 9c00         	ldr	r4, [sp]
  3c2896: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3c290c <RakNetDelegate::setServerIndex(int)+0x80>
  3c2898: 447b         	add	r3, pc
  3c289a: 4618         	mov	r0, r3
  3c289c: f7ba f9aa    	bl	0x37cbf4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::size() const> @ imm = #-0x45cac
  3c28a0: 4603         	mov	r3, r0
  3c28a2: 429c         	cmp	r4, r3
  3c28a4: bf34         	ite	lo
  3c28a6: 2300         	movlo	r3, #0x0
  3c28a8: 2301         	movhs	r3, #0x1
  3c28aa: b2db         	uxtb	r3, r3
  3c28ac: 2b00         	cmp	r3, #0x0
  3c28ae: d001         	beq	0x3c28b4 <RakNetDelegate::setServerIndex(int)+0x28> @ imm = #0x2
  3c28b0: 2300         	movs	r3, #0x0
  3c28b2: 9300         	str	r3, [sp]
  3c28b4: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3c2910 <RakNetDelegate::setServerIndex(int)+0x84>
  3c28b6: 447b         	add	r3, pc
  3c28b8: 9a00         	ldr	r2, [sp]
  3c28ba: 601a         	str	r2, [r3]
  3c28bc: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3c2914 <RakNetDelegate::setServerIndex(int)+0x88>
  3c28be: 447b         	add	r3, pc
  3c28c0: 681b         	ldr	r3, [r3]
  3c28c2: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3c2918 <RakNetDelegate::setServerIndex(int)+0x8c>
  3c28c4: 447a         	add	r2, pc
  3c28c6: 4610         	mov	r0, r2
  3c28c8: 4619         	mov	r1, r3
  3c28ca: f000 faad    	bl	0x3c2e28 <std::vector<ServerListObject, std::allocator<ServerListObject>>::operator[](unsigned int)> @ imm = #0x55a
  3c28ce: 4603         	mov	r3, r0
  3c28d0: 4618         	mov	r0, r3
  3c28d2: f3f2 fd15    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3f2a2a
  3c28d6: 4603         	mov	r3, r0
  3c28d8: aa03         	add	r2, sp, #0xc
  3c28da: 4610         	mov	r0, r2
  3c28dc: 4619         	mov	r1, r3
  3c28de: f0f0 fbb5    	bl	0x4b304c <RakNet::RakString::RakString(char const*, ...)> @ imm = #0xf076a
  3c28e2: ab03         	add	r3, sp, #0xc
  3c28e4: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3c291c <RakNetDelegate::setServerIndex(int)+0x90>
  3c28e6: 447a         	add	r2, pc
  3c28e8: 4610         	mov	r0, r2
  3c28ea: 4619         	mov	r1, r3
  3c28ec: f0f0 fc04    	bl	0x4b30f8 <RakNet::RakString::operator=(RakNet::RakString const&)> @ imm = #0xf0808
  3c28f0: ab03         	add	r3, sp, #0xc
  3c28f2: 4618         	mov	r0, r3
  3c28f4: f0f0 fbf4    	bl	0x4b30e0 <RakNet::RakString::~RakString()> @ imm = #0xf07e8
  3c28f8: e005         	b	0x3c2906 <RakNetDelegate::setServerIndex(int)+0x7a> @ imm = #0xa
  3c28fa: ab03         	add	r3, sp, #0xc
  3c28fc: 4618         	mov	r0, r3
  3c28fe: f0f0 fbef    	bl	0x4b30e0 <RakNet::RakString::~RakString()> @ imm = #0xf07de
  3c2902: f3c5 fbd3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c57a6
  3c2906: b004         	add	sp, #0x10
  3c2908: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c2909); words below are literal-pool data ---
  3c290a: bf00         	nop
  3c290c: eb58 0057    	adcs.w	r0, r8, r7, lsr #1
  3c2910: eb32 0057    	<unknown>
  3c2914: eb2a 0057    	<unknown>
  3c2918: eb2c 0057    	<unknown>
  3c291c: eb16 0057    	adds.w	r0, r6, r7, lsr #1

// ==== RakNetDelegate::isOnline
//      file offset 0x3c2920 (= ELF address; Ghidra 0x3d2920), 40 bytes, Thumb-2
  3c2920: b082         	sub	sp, #0x8
  3c2922: 9001         	str	r0, [sp, #0x4]
  3c2924: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c2940 <RakNetDelegate::isOnline()+0x20>
  3c2926: 447b         	add	r3, pc
  3c2928: 681b         	ldr	r3, [r3]
  3c292a: 2b00         	cmp	r3, #0x0
  3c292c: d003         	beq	0x3c2936 <RakNetDelegate::isOnline()+0x16> @ imm = #0x6
  3c292e: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c2944 <RakNetDelegate::isOnline()+0x24>
  3c2930: 447b         	add	r3, pc
  3c2932: 781b         	ldrb	r3, [r3]
  3c2934: e000         	b	0x3c2938 <RakNetDelegate::isOnline()+0x18> @ imm = #0x0
  3c2936: 2300         	movs	r3, #0x0
  3c2938: 4618         	mov	r0, r3
  3c293a: b002         	add	sp, #0x8
  3c293c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3c293d); words below are literal-pool data ---
  3c293e: bf00         	nop
  3c2940: eade 0057    	<unknown>
  3c2944: ead1 0057    	<unknown>
