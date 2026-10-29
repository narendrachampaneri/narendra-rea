// AchievementBridge: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AchievementBridge.cpp

// ==== AchievementBridge::AchievementBridge
//      file offset 0x4208cc (= ELF address; Ghidra 0x4308cc), 44 bytes, Thumb-2
  4208cc: b510         	push	{r4, lr}
  4208ce: b082         	sub	sp, #0x8
  4208d0: 9001         	str	r0, [sp, #0x4]
  4208d2: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x4208f0 <AchievementBridge::AchievementBridge()+0x24>
  4208d4: 447c         	add	r4, pc
  4208d6: 9b01         	ldr	r3, [sp, #0x4]
  4208d8: 4618         	mov	r0, r3
  4208da: f16e fead    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x16ed5a
  4208de: 9b01         	ldr	r3, [sp, #0x4]
  4208e0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x4208f4 <AchievementBridge::AchievementBridge()+0x28>
  4208e2: 58a2         	ldr	r2, [r4, r2]
  4208e4: 3208         	adds	r2, #0x8
  4208e6: 601a         	str	r2, [r3]
  4208e8: 9b01         	ldr	r3, [sp, #0x4]
  4208ea: 4618         	mov	r0, r3
  4208ec: b002         	add	sp, #0x8
  4208ee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4208ef); words below are literal-pool data ---
  4208f0: 2134         	movs	r1, #0x34
  4208f2: 0051         	lsls	r1, r2, #0x1
  4208f4: dfd4         	svc	#0xd4
  4208f6: ffff b500    	<unknown>

// ==== AchievementBridge::~AchievementBridge
//      file offset 0x4208f8 (= ELF address; Ghidra 0x4308f8), 60 bytes, Thumb-2
  4208f8: b500         	push	{lr}
  4208fa: b083         	sub	sp, #0xc
  4208fc: 9001         	str	r0, [sp, #0x4]
  4208fe: 490b         	ldr	r1, [pc, #0x2c]         @ 0x42092c <AchievementBridge::~AchievementBridge()+0x34>
  420900: 4479         	add	r1, pc
  420902: 9b01         	ldr	r3, [sp, #0x4]
  420904: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x420930 <AchievementBridge::~AchievementBridge()+0x38>
  420906: 588a         	ldr	r2, [r1, r2]
  420908: 3208         	adds	r2, #0x8
  42090a: 601a         	str	r2, [r3]
  42090c: 9b01         	ldr	r3, [sp, #0x4]
  42090e: 4618         	mov	r0, r3
  420910: f16e ff98    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x16ef30
  420914: 2300         	movs	r3, #0x0
  420916: 2b00         	cmp	r3, #0x0
  420918: d002         	beq	0x420920 <AchievementBridge::~AchievementBridge()+0x28> @ imm = #0x4
  42091a: 9801         	ldr	r0, [sp, #0x4]
  42091c: f367 fbc2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x367784
  420920: 9b01         	ldr	r3, [sp, #0x4]
  420922: 4618         	mov	r0, r3
  420924: b003         	add	sp, #0xc
  420926: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x420929); words below are literal-pool data ---
  42092a: bf00         	nop
  42092c: 2108         	movs	r1, #0x8
  42092e: 0051         	lsls	r1, r2, #0x1
  420930: dfd4         	svc	#0xd4
  420932: ffff b500    	<unknown>

// ==== AchievementBridge::~AchievementBridge
//      file offset 0x420934 (= ELF address; Ghidra 0x430934), 28 bytes, Thumb-2
  420934: b500         	push	{lr}
  420936: b083         	sub	sp, #0xc
  420938: 9001         	str	r0, [sp, #0x4]
  42093a: 9801         	ldr	r0, [sp, #0x4]
  42093c: f7ff ffdc    	bl	0x4208f8 <AchievementBridge::~AchievementBridge()> @ imm = #-0x48
  420940: 9801         	ldr	r0, [sp, #0x4]
  420942: f367 fbaf    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36775e
  420946: 9b01         	ldr	r3, [sp, #0x4]
  420948: 4618         	mov	r0, r3
  42094a: b003         	add	sp, #0xc
  42094c: f85d fb04    	ldr	pc, [sp], #4

// ==== AchievementBridge::init
//      file offset 0x420950 (= ELF address; Ghidra 0x430950), 160 bytes, Thumb-2
  420950: b510         	push	{r4, lr}
  420952: b08a         	sub	sp, #0x28
  420954: 9005         	str	r0, [sp, #0x14]
  420956: 4c24         	ldr	r4, [pc, #0x90]         @ 0x4209e8 <AchievementBridge::init()+0x98>
  420958: 447c         	add	r4, pc
  42095a: 9b05         	ldr	r3, [sp, #0x14]
  42095c: 4618         	mov	r0, r3
  42095e: f16f f875    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x16f0ea
  420962: 4603         	mov	r3, r0
  420964: f88d 301f    	strb.w	r3, [sp, #0x1f]
  420968: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  42096c: f083 0301    	eor	r3, r3, #0x1
  420970: b2db         	uxtb	r3, r3
  420972: 2b00         	cmp	r3, #0x0
  420974: d001         	beq	0x42097a <AchievementBridge::init()+0x2a> @ imm = #0x2
  420976: 2300         	movs	r3, #0x0
  420978: e032         	b	0x4209e0 <AchievementBridge::init()+0x90> @ imm = #0x64
  42097a: 9805         	ldr	r0, [sp, #0x14]
  42097c: f009 f992    	bl	0x429ca4 <AchievementBridge::platformInit()> @ imm = #0x9324
  420980: 9b05         	ldr	r3, [sp, #0x14]
  420982: 2200         	movs	r2, #0x0
  420984: f883 20e5    	strb.w	r2, [r3, #0xe5]
  420988: 9b05         	ldr	r3, [sp, #0x14]
  42098a: 2200         	movs	r2, #0x0
  42098c: f883 20e4    	strb.w	r2, [r3, #0xe4]
  420990: 9b05         	ldr	r3, [sp, #0x14]
  420992: 2201         	movs	r2, #0x1
  420994: f883 20e6    	strb.w	r2, [r3, #0xe6]
  420998: f17a fdec    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x17abd8
  42099c: 4603         	mov	r3, r0
  42099e: 681a         	ldr	r2, [r3]
  4209a0: 3230         	adds	r2, #0x30
  4209a2: 6812         	ldr	r2, [r2]
  4209a4: 4618         	mov	r0, r3
  4209a6: 4790         	blx	r2
  4209a8: 4602         	mov	r2, r0
  4209aa: 4b10         	ldr	r3, [pc, #0x40]         @ 0x4209ec <AchievementBridge::init()+0x9c>
  4209ac: 58e3         	ldr	r3, [r4, r3]
  4209ae: 9308         	str	r3, [sp, #0x20]
  4209b0: 2300         	movs	r3, #0x0
  4209b2: 9309         	str	r3, [sp, #0x24]
  4209b4: 9b05         	ldr	r3, [sp, #0x14]
  4209b6: f04f 0100    	mov.w	r1, #0x0
  4209ba: f2c4 1120    	movt	r1, #0x4120
  4209be: 9100         	str	r1, [sp]
  4209c0: f06f 0101    	mvn	r1, #0x1
  4209c4: 9101         	str	r1, [sp, #0x4]
  4209c6: f04f 0100    	mov.w	r1, #0x0
  4209ca: f2c4 01a0    	movt	r1, #0x40a0
  4209ce: 9102         	str	r1, [sp, #0x8]
  4209d0: 2100         	movs	r1, #0x0
  4209d2: 9103         	str	r1, [sp, #0xc]
  4209d4: 4610         	mov	r0, r2
  4209d6: aa08         	add	r2, sp, #0x20
  4209d8: ca06         	ldm	r2, {r1, r2}
  4209da: f14f f965    	bl	0x56fca8 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, unsigned int, float, bool)> @ imm = #0x14f2ca
  4209de: 2301         	movs	r3, #0x1
  4209e0: 4618         	mov	r0, r3
  4209e2: b00a         	add	sp, #0x28
  4209e4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4209e5); words below are literal-pool data ---
  4209e6: bf00         	nop
  4209e8: 20b0         	movs	r0, #0xb0
  4209ea: 0051         	lsls	r1, r2, #0x1
  4209ec: dfd8         	svc	#0xd8
  4209ee: ffff b538    	vsli.32	d27, d24, #0x1f

// ==== AchievementBridge::sharedAchievementBridge
//      file offset 0x4209f0 (= ELF address; Ghidra 0x4309f0), 92 bytes, Thumb-2
  4209f0: b538         	push	{r3, r4, r5, lr}
  4209f2: 4c14         	ldr	r4, [pc, #0x50]         @ 0x420a44 <AchievementBridge::sharedAchievementBridge()+0x54>
  4209f4: 447c         	add	r4, pc
  4209f6: 4b14         	ldr	r3, [pc, #0x50]         @ 0x420a48 <AchievementBridge::sharedAchievementBridge()+0x58>
  4209f8: 58e3         	ldr	r3, [r4, r3]
  4209fa: 681b         	ldr	r3, [r3]
  4209fc: 2b00         	cmp	r3, #0x0
  4209fe: d115         	bne	0x420a2c <AchievementBridge::sharedAchievementBridge()+0x3c> @ imm = #0x2a
  420a00: 20e8         	movs	r0, #0xe8
  420a02: f366 ffaf    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x366f5e
  420a06: 4603         	mov	r3, r0
  420a08: 461d         	mov	r5, r3
  420a0a: 4628         	mov	r0, r5
  420a0c: f7ff ff5e    	bl	0x4208cc <AchievementBridge::AchievementBridge()> @ imm = #-0x144
  420a10: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x420a48 <AchievementBridge::sharedAchievementBridge()+0x58>
  420a12: 58e3         	ldr	r3, [r4, r3]
  420a14: 601d         	str	r5, [r3]
  420a16: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x420a48 <AchievementBridge::sharedAchievementBridge()+0x58>
  420a18: 58e3         	ldr	r3, [r4, r3]
  420a1a: 681b         	ldr	r3, [r3]
  420a1c: 681b         	ldr	r3, [r3]
  420a1e: 3318         	adds	r3, #0x18
  420a20: 681b         	ldr	r3, [r3]
  420a22: 4a09         	ldr	r2, [pc, #0x24]         @ 0x420a48 <AchievementBridge::sharedAchievementBridge()+0x58>
  420a24: 58a2         	ldr	r2, [r4, r2]
  420a26: 6812         	ldr	r2, [r2]
  420a28: 4610         	mov	r0, r2
  420a2a: 4798         	blx	r3
  420a2c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x420a48 <AchievementBridge::sharedAchievementBridge()+0x58>
  420a2e: 58e3         	ldr	r3, [r4, r3]
  420a30: 681b         	ldr	r3, [r3]
  420a32: e004         	b	0x420a3e <AchievementBridge::sharedAchievementBridge()+0x4e> @ imm = #0x8
  420a34: 4628         	mov	r0, r5
  420a36: f367 fb35    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36766a
  420a3a: f367 fb37    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36766e
  420a3e: 4618         	mov	r0, r3
  420a40: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x420a41); words below are literal-pool data ---
  420a42: bf00         	nop
  420a44: 2014         	movs	r0, #0x14
  420a46: 0051         	lsls	r1, r2, #0x1
  420a48: dfdc         	svc	#0xdc
  420a4a: ffff b570    	<unknown>

// ==== AchievementBridge::getIdentifier
//      file offset 0x420a4c (= ELF address; Ghidra 0x430a4c), 1160 bytes, Thumb-2
  420a4c: b570         	push	{r4, r5, r6, lr}
  420a4e: b09a         	sub	sp, #0x68
  420a50: 9003         	str	r0, [sp, #0xc]
  420a52: 9102         	str	r1, [sp, #0x8]
  420a54: 9201         	str	r2, [sp, #0x4]
  420a56: ad05         	add	r5, sp, #0x14
  420a58: 2414         	movs	r4, #0x14
  420a5a: ab04         	add	r3, sp, #0x10
  420a5c: 4618         	mov	r0, r3
  420a5e: f369 fcc9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369992
  420a62: ab04         	add	r3, sp, #0x10
  420a64: 4628         	mov	r0, r5
  420a66: f8df 2418    	ldr.w	r2, [pc, #0x418]        @ 0x420e80 <AchievementBridge::getIdentifier(EAchievementType)+0x434>
  420a6a: 447a         	add	r2, pc
  420a6c: 4611         	mov	r1, r2
  420a6e: 461a         	mov	r2, r3
  420a70: f395 fff6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395fec
  420a74: ab04         	add	r3, sp, #0x10
  420a76: 4618         	mov	r0, r3
  420a78: f369 fcc0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369980
  420a7c: 1d2e         	adds	r6, r5, #0x4
  420a7e: 3c01         	subs	r4, #0x1
  420a80: ab04         	add	r3, sp, #0x10
  420a82: 4618         	mov	r0, r3
  420a84: f369 fcb6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36996c
  420a88: ab04         	add	r3, sp, #0x10
  420a8a: 4630         	mov	r0, r6
  420a8c: 4afd         	ldr	r2, [pc, #0x3f4]        @ 0x420e84 <AchievementBridge::getIdentifier(EAchievementType)+0x438>
  420a8e: 447a         	add	r2, pc
  420a90: 4611         	mov	r1, r2
  420a92: 461a         	mov	r2, r3
  420a94: f395 ffe4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395fc8
  420a98: ab04         	add	r3, sp, #0x10
  420a9a: 4618         	mov	r0, r3
  420a9c: f369 fcae    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36995c
  420aa0: 3604         	adds	r6, #0x4
  420aa2: 3c01         	subs	r4, #0x1
  420aa4: ab04         	add	r3, sp, #0x10
  420aa6: 4618         	mov	r0, r3
  420aa8: f369 fca4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369948
  420aac: ab04         	add	r3, sp, #0x10
  420aae: 4630         	mov	r0, r6
  420ab0: 4af5         	ldr	r2, [pc, #0x3d4]        @ 0x420e88 <AchievementBridge::getIdentifier(EAchievementType)+0x43c>
  420ab2: 447a         	add	r2, pc
  420ab4: 4611         	mov	r1, r2
  420ab6: 461a         	mov	r2, r3
  420ab8: f395 ffd2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395fa4
  420abc: ab04         	add	r3, sp, #0x10
  420abe: 4618         	mov	r0, r3
  420ac0: f369 fc9c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369938
  420ac4: 3604         	adds	r6, #0x4
  420ac6: 3c01         	subs	r4, #0x1
  420ac8: ab04         	add	r3, sp, #0x10
  420aca: 4618         	mov	r0, r3
  420acc: f369 fc92    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369924
  420ad0: ab04         	add	r3, sp, #0x10
  420ad2: 4630         	mov	r0, r6
  420ad4: 4aed         	ldr	r2, [pc, #0x3b4]        @ 0x420e8c <AchievementBridge::getIdentifier(EAchievementType)+0x440>
  420ad6: 447a         	add	r2, pc
  420ad8: 4611         	mov	r1, r2
  420ada: 461a         	mov	r2, r3
  420adc: f395 ffc0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395f80
  420ae0: ab04         	add	r3, sp, #0x10
  420ae2: 4618         	mov	r0, r3
  420ae4: f369 fc8a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369914
  420ae8: 3604         	adds	r6, #0x4
  420aea: 3c01         	subs	r4, #0x1
  420aec: ab04         	add	r3, sp, #0x10
  420aee: 4618         	mov	r0, r3
  420af0: f369 fc80    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369900
  420af4: ab04         	add	r3, sp, #0x10
  420af6: 4630         	mov	r0, r6
  420af8: 4ae5         	ldr	r2, [pc, #0x394]        @ 0x420e90 <AchievementBridge::getIdentifier(EAchievementType)+0x444>
  420afa: 447a         	add	r2, pc
  420afc: 4611         	mov	r1, r2
  420afe: 461a         	mov	r2, r3
  420b00: f395 ffae    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395f5c
  420b04: ab04         	add	r3, sp, #0x10
  420b06: 4618         	mov	r0, r3
  420b08: f369 fc78    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3698f0
  420b0c: 3604         	adds	r6, #0x4
  420b0e: 3c01         	subs	r4, #0x1
  420b10: ab04         	add	r3, sp, #0x10
  420b12: 4618         	mov	r0, r3
  420b14: f369 fc6e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3698dc
  420b18: ab04         	add	r3, sp, #0x10
  420b1a: 4630         	mov	r0, r6
  420b1c: 4add         	ldr	r2, [pc, #0x374]        @ 0x420e94 <AchievementBridge::getIdentifier(EAchievementType)+0x448>
  420b1e: 447a         	add	r2, pc
  420b20: 4611         	mov	r1, r2
  420b22: 461a         	mov	r2, r3
  420b24: f395 ff9c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395f38
  420b28: ab04         	add	r3, sp, #0x10
  420b2a: 4618         	mov	r0, r3
  420b2c: f369 fc66    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3698cc
  420b30: 3604         	adds	r6, #0x4
  420b32: 3c01         	subs	r4, #0x1
  420b34: ab04         	add	r3, sp, #0x10
  420b36: 4618         	mov	r0, r3
  420b38: f369 fc5c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3698b8
  420b3c: ab04         	add	r3, sp, #0x10
  420b3e: 4630         	mov	r0, r6
  420b40: 4ad5         	ldr	r2, [pc, #0x354]        @ 0x420e98 <AchievementBridge::getIdentifier(EAchievementType)+0x44c>
  420b42: 447a         	add	r2, pc
  420b44: 4611         	mov	r1, r2
  420b46: 461a         	mov	r2, r3
  420b48: f395 ff8a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395f14
  420b4c: ab04         	add	r3, sp, #0x10
  420b4e: 4618         	mov	r0, r3
  420b50: f369 fc54    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3698a8
  420b54: 3604         	adds	r6, #0x4
  420b56: 3c01         	subs	r4, #0x1
  420b58: ab04         	add	r3, sp, #0x10
  420b5a: 4618         	mov	r0, r3
  420b5c: f369 fc4a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369894
  420b60: ab04         	add	r3, sp, #0x10
  420b62: 4630         	mov	r0, r6
  420b64: 4acd         	ldr	r2, [pc, #0x334]        @ 0x420e9c <AchievementBridge::getIdentifier(EAchievementType)+0x450>
  420b66: 447a         	add	r2, pc
  420b68: 4611         	mov	r1, r2
  420b6a: 461a         	mov	r2, r3
  420b6c: f395 ff78    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395ef0
  420b70: ab04         	add	r3, sp, #0x10
  420b72: 4618         	mov	r0, r3
  420b74: f369 fc42    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369884
  420b78: 3604         	adds	r6, #0x4
  420b7a: 3c01         	subs	r4, #0x1
  420b7c: ab04         	add	r3, sp, #0x10
  420b7e: 4618         	mov	r0, r3
  420b80: f369 fc38    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369870
  420b84: ab04         	add	r3, sp, #0x10
  420b86: 4630         	mov	r0, r6
  420b88: 4ac5         	ldr	r2, [pc, #0x314]        @ 0x420ea0 <AchievementBridge::getIdentifier(EAchievementType)+0x454>
  420b8a: 447a         	add	r2, pc
  420b8c: 4611         	mov	r1, r2
  420b8e: 461a         	mov	r2, r3
  420b90: f395 ff66    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395ecc
  420b94: ab04         	add	r3, sp, #0x10
  420b96: 4618         	mov	r0, r3
  420b98: f369 fc30    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369860
  420b9c: 3604         	adds	r6, #0x4
  420b9e: 3c01         	subs	r4, #0x1
  420ba0: ab04         	add	r3, sp, #0x10
  420ba2: 4618         	mov	r0, r3
  420ba4: f369 fc26    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36984c
  420ba8: ab04         	add	r3, sp, #0x10
  420baa: 4630         	mov	r0, r6
  420bac: 4abd         	ldr	r2, [pc, #0x2f4]        @ 0x420ea4 <AchievementBridge::getIdentifier(EAchievementType)+0x458>
  420bae: 447a         	add	r2, pc
  420bb0: 4611         	mov	r1, r2
  420bb2: 461a         	mov	r2, r3
  420bb4: f395 ff54    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395ea8
  420bb8: ab04         	add	r3, sp, #0x10
  420bba: 4618         	mov	r0, r3
  420bbc: f369 fc1e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36983c
  420bc0: 3604         	adds	r6, #0x4
  420bc2: 3c01         	subs	r4, #0x1
  420bc4: ab04         	add	r3, sp, #0x10
  420bc6: 4618         	mov	r0, r3
  420bc8: f369 fc14    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369828
  420bcc: ab04         	add	r3, sp, #0x10
  420bce: 4630         	mov	r0, r6
  420bd0: 4ab5         	ldr	r2, [pc, #0x2d4]        @ 0x420ea8 <AchievementBridge::getIdentifier(EAchievementType)+0x45c>
  420bd2: 447a         	add	r2, pc
  420bd4: 4611         	mov	r1, r2
  420bd6: 461a         	mov	r2, r3
  420bd8: f395 ff42    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395e84
  420bdc: ab04         	add	r3, sp, #0x10
  420bde: 4618         	mov	r0, r3
  420be0: f369 fc0c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369818
  420be4: 3604         	adds	r6, #0x4
  420be6: 3c01         	subs	r4, #0x1
  420be8: ab04         	add	r3, sp, #0x10
  420bea: 4618         	mov	r0, r3
  420bec: f369 fc02    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369804
  420bf0: ab04         	add	r3, sp, #0x10
  420bf2: 4630         	mov	r0, r6
  420bf4: 4aad         	ldr	r2, [pc, #0x2b4]        @ 0x420eac <AchievementBridge::getIdentifier(EAchievementType)+0x460>
  420bf6: 447a         	add	r2, pc
  420bf8: 4611         	mov	r1, r2
  420bfa: 461a         	mov	r2, r3
  420bfc: f395 ff30    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395e60
  420c00: ab04         	add	r3, sp, #0x10
  420c02: 4618         	mov	r0, r3
  420c04: f369 fbfa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3697f4
  420c08: 3604         	adds	r6, #0x4
  420c0a: 3c01         	subs	r4, #0x1
  420c0c: ab04         	add	r3, sp, #0x10
  420c0e: 4618         	mov	r0, r3
  420c10: f369 fbf0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3697e0
  420c14: ab04         	add	r3, sp, #0x10
  420c16: 4630         	mov	r0, r6
  420c18: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x420eb0 <AchievementBridge::getIdentifier(EAchievementType)+0x464>
  420c1a: 447a         	add	r2, pc
  420c1c: 4611         	mov	r1, r2
  420c1e: 461a         	mov	r2, r3
  420c20: f395 ff1e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395e3c
  420c24: ab04         	add	r3, sp, #0x10
  420c26: 4618         	mov	r0, r3
  420c28: f369 fbe8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3697d0
  420c2c: 3604         	adds	r6, #0x4
  420c2e: 3c01         	subs	r4, #0x1
  420c30: ab04         	add	r3, sp, #0x10
  420c32: 4618         	mov	r0, r3
  420c34: f369 fbde    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3697bc
  420c38: ab04         	add	r3, sp, #0x10
  420c3a: 4630         	mov	r0, r6
  420c3c: 4a9d         	ldr	r2, [pc, #0x274]        @ 0x420eb4 <AchievementBridge::getIdentifier(EAchievementType)+0x468>
  420c3e: 447a         	add	r2, pc
  420c40: 4611         	mov	r1, r2
  420c42: 461a         	mov	r2, r3
  420c44: f395 ff0c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395e18
  420c48: ab04         	add	r3, sp, #0x10
  420c4a: 4618         	mov	r0, r3
  420c4c: f369 fbd6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3697ac
  420c50: 3604         	adds	r6, #0x4
  420c52: 3c01         	subs	r4, #0x1
  420c54: ab04         	add	r3, sp, #0x10
  420c56: 4618         	mov	r0, r3
  420c58: f369 fbcc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369798
  420c5c: ab04         	add	r3, sp, #0x10
  420c5e: 4630         	mov	r0, r6
  420c60: 4a95         	ldr	r2, [pc, #0x254]        @ 0x420eb8 <AchievementBridge::getIdentifier(EAchievementType)+0x46c>
  420c62: 447a         	add	r2, pc
  420c64: 4611         	mov	r1, r2
  420c66: 461a         	mov	r2, r3
  420c68: f395 fefa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395df4
  420c6c: ab04         	add	r3, sp, #0x10
  420c6e: 4618         	mov	r0, r3
  420c70: f369 fbc4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369788
  420c74: 3604         	adds	r6, #0x4
  420c76: 3c01         	subs	r4, #0x1
  420c78: ab04         	add	r3, sp, #0x10
  420c7a: 4618         	mov	r0, r3
  420c7c: f369 fbba    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369774
  420c80: ab04         	add	r3, sp, #0x10
  420c82: 4630         	mov	r0, r6
  420c84: 4a8d         	ldr	r2, [pc, #0x234]        @ 0x420ebc <AchievementBridge::getIdentifier(EAchievementType)+0x470>
  420c86: 447a         	add	r2, pc
  420c88: 4611         	mov	r1, r2
  420c8a: 461a         	mov	r2, r3
  420c8c: f395 fee8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395dd0
  420c90: ab04         	add	r3, sp, #0x10
  420c92: 4618         	mov	r0, r3
  420c94: f369 fbb2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369764
  420c98: 3604         	adds	r6, #0x4
  420c9a: 3c01         	subs	r4, #0x1
  420c9c: ab04         	add	r3, sp, #0x10
  420c9e: 4618         	mov	r0, r3
  420ca0: f369 fba8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369750
  420ca4: ab04         	add	r3, sp, #0x10
  420ca6: 4630         	mov	r0, r6
  420ca8: 4a85         	ldr	r2, [pc, #0x214]        @ 0x420ec0 <AchievementBridge::getIdentifier(EAchievementType)+0x474>
  420caa: 447a         	add	r2, pc
  420cac: 4611         	mov	r1, r2
  420cae: 461a         	mov	r2, r3
  420cb0: f395 fed6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395dac
  420cb4: ab04         	add	r3, sp, #0x10
  420cb6: 4618         	mov	r0, r3
  420cb8: f369 fba0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369740
  420cbc: 3604         	adds	r6, #0x4
  420cbe: 3c01         	subs	r4, #0x1
  420cc0: ab04         	add	r3, sp, #0x10
  420cc2: 4618         	mov	r0, r3
  420cc4: f369 fb96    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36972c
  420cc8: ab04         	add	r3, sp, #0x10
  420cca: 4630         	mov	r0, r6
  420ccc: 4a7d         	ldr	r2, [pc, #0x1f4]        @ 0x420ec4 <AchievementBridge::getIdentifier(EAchievementType)+0x478>
  420cce: 447a         	add	r2, pc
  420cd0: 4611         	mov	r1, r2
  420cd2: 461a         	mov	r2, r3
  420cd4: f395 fec4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395d88
  420cd8: ab04         	add	r3, sp, #0x10
  420cda: 4618         	mov	r0, r3
  420cdc: f369 fb8e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36971c
  420ce0: 3604         	adds	r6, #0x4
  420ce2: 3c01         	subs	r4, #0x1
  420ce4: ab04         	add	r3, sp, #0x10
  420ce6: 4618         	mov	r0, r3
  420ce8: f369 fb84    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x369708
  420cec: ab04         	add	r3, sp, #0x10
  420cee: 4630         	mov	r0, r6
  420cf0: 4a75         	ldr	r2, [pc, #0x1d4]        @ 0x420ec8 <AchievementBridge::getIdentifier(EAchievementType)+0x47c>
  420cf2: 447a         	add	r2, pc
  420cf4: 4611         	mov	r1, r2
  420cf6: 461a         	mov	r2, r3
  420cf8: f395 feb2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395d64
  420cfc: ab04         	add	r3, sp, #0x10
  420cfe: 4618         	mov	r0, r3
  420d00: f369 fb7c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3696f8
  420d04: 3604         	adds	r6, #0x4
  420d06: 3c01         	subs	r4, #0x1
  420d08: ab04         	add	r3, sp, #0x10
  420d0a: 4618         	mov	r0, r3
  420d0c: f369 fb72    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3696e4
  420d10: ab04         	add	r3, sp, #0x10
  420d12: 4630         	mov	r0, r6
  420d14: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x420ecc <AchievementBridge::getIdentifier(EAchievementType)+0x480>
  420d16: 447a         	add	r2, pc
  420d18: 4611         	mov	r1, r2
  420d1a: 461a         	mov	r2, r3
  420d1c: f395 fea0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395d40
  420d20: ab04         	add	r3, sp, #0x10
  420d22: 4618         	mov	r0, r3
  420d24: f369 fb6a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3696d4
  420d28: 3604         	adds	r6, #0x4
  420d2a: 3c01         	subs	r4, #0x1
  420d2c: ab04         	add	r3, sp, #0x10
  420d2e: 4618         	mov	r0, r3
  420d30: f369 fb60    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3696c0
  420d34: ab04         	add	r3, sp, #0x10
  420d36: 4630         	mov	r0, r6
  420d38: 4a65         	ldr	r2, [pc, #0x194]        @ 0x420ed0 <AchievementBridge::getIdentifier(EAchievementType)+0x484>
  420d3a: 447a         	add	r2, pc
  420d3c: 4611         	mov	r1, r2
  420d3e: 461a         	mov	r2, r3
  420d40: f395 fe8e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395d1c
  420d44: ab04         	add	r3, sp, #0x10
  420d46: 4618         	mov	r0, r3
  420d48: f369 fb58    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3696b0
  420d4c: 9b01         	ldr	r3, [sp, #0x4]
  420d4e: aa05         	add	r2, sp, #0x14
  420d50: 009b         	lsls	r3, r3, #0x2
  420d52: 4413         	add	r3, r2
  420d54: 9803         	ldr	r0, [sp, #0xc]
  420d56: 4619         	mov	r1, r3
  420d58: f395 fbc6    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x39578c
  420d5c: bf00         	nop
  420d5e: ac05         	add	r4, sp, #0x14
  420d60: 3454         	adds	r4, #0x54
  420d62: ab05         	add	r3, sp, #0x14
  420d64: 429c         	cmp	r4, r3
  420d66: f000 8088    	beq.w	0x420e7a <AchievementBridge::getIdentifier(EAchievementType)+0x42e> @ imm = #0x110
  420d6a: 3c04         	subs	r4, #0x4
  420d6c: 4620         	mov	r0, r4
  420d6e: f394 fdd1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394ba2
  420d72: e7f6         	b	0x420d62 <AchievementBridge::getIdentifier(EAchievementType)+0x316> @ imm = #-0x14
  420d74: ab04         	add	r3, sp, #0x10
  420d76: 4618         	mov	r0, r3
  420d78: f369 fb40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369680
  420d7c: e062         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0xc4
  420d7e: ab04         	add	r3, sp, #0x10
  420d80: 4618         	mov	r0, r3
  420d82: f369 fb3b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369676
  420d86: e05d         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0xba
  420d88: ab04         	add	r3, sp, #0x10
  420d8a: 4618         	mov	r0, r3
  420d8c: f369 fb36    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36966c
  420d90: e058         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0xb0
  420d92: ab04         	add	r3, sp, #0x10
  420d94: 4618         	mov	r0, r3
  420d96: f369 fb31    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369662
  420d9a: e053         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0xa6
  420d9c: ab04         	add	r3, sp, #0x10
  420d9e: 4618         	mov	r0, r3
  420da0: f369 fb2c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369658
  420da4: e04e         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x9c
  420da6: ab04         	add	r3, sp, #0x10
  420da8: 4618         	mov	r0, r3
  420daa: f369 fb27    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36964e
  420dae: e049         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x92
  420db0: ab04         	add	r3, sp, #0x10
  420db2: 4618         	mov	r0, r3
  420db4: f369 fb22    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369644
  420db8: e044         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x88
  420dba: ab04         	add	r3, sp, #0x10
  420dbc: 4618         	mov	r0, r3
  420dbe: f369 fb1d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36963a
  420dc2: e03f         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x7e
  420dc4: ab04         	add	r3, sp, #0x10
  420dc6: 4618         	mov	r0, r3
  420dc8: f369 fb18    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369630
  420dcc: e03a         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x74
  420dce: ab04         	add	r3, sp, #0x10
  420dd0: 4618         	mov	r0, r3
  420dd2: f369 fb13    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369626
  420dd6: e035         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x6a
  420dd8: ab04         	add	r3, sp, #0x10
  420dda: 4618         	mov	r0, r3
  420ddc: f369 fb0e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36961c
  420de0: e030         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x60
  420de2: ab04         	add	r3, sp, #0x10
  420de4: 4618         	mov	r0, r3
  420de6: f369 fb09    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369612
  420dea: e02b         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x56
  420dec: ab04         	add	r3, sp, #0x10
  420dee: 4618         	mov	r0, r3
  420df0: f369 fb04    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369608
  420df4: e026         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x4c
  420df6: ab04         	add	r3, sp, #0x10
  420df8: 4618         	mov	r0, r3
  420dfa: f369 faff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695fe
  420dfe: e021         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x42
  420e00: ab04         	add	r3, sp, #0x10
  420e02: 4618         	mov	r0, r3
  420e04: f369 fafa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695f4
  420e08: e01c         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x38
  420e0a: ab04         	add	r3, sp, #0x10
  420e0c: 4618         	mov	r0, r3
  420e0e: f369 faf5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695ea
  420e12: e017         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x2e
  420e14: ab04         	add	r3, sp, #0x10
  420e16: 4618         	mov	r0, r3
  420e18: f369 faf0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695e0
  420e1c: e012         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x24
  420e1e: ab04         	add	r3, sp, #0x10
  420e20: 4618         	mov	r0, r3
  420e22: f369 faeb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695d6
  420e26: e00d         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x1a
  420e28: ab04         	add	r3, sp, #0x10
  420e2a: 4618         	mov	r0, r3
  420e2c: f369 fae6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695cc
  420e30: e008         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x10
  420e32: ab04         	add	r3, sp, #0x10
  420e34: 4618         	mov	r0, r3
  420e36: f369 fae1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695c2
  420e3a: e003         	b	0x420e44 <AchievementBridge::getIdentifier(EAchievementType)+0x3f8> @ imm = #0x6
  420e3c: ab04         	add	r3, sp, #0x10
  420e3e: 4618         	mov	r0, r3
  420e40: f369 fadc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3695b8
  420e44: 2d00         	cmp	r5, #0x0
  420e46: d00a         	beq	0x420e5e <AchievementBridge::getIdentifier(EAchievementType)+0x412> @ imm = #0x14
  420e48: f1c4 0314    	rsb.w	r3, r4, #0x14
  420e4c: 009b         	lsls	r3, r3, #0x2
  420e4e: 18ec         	adds	r4, r5, r3
  420e50: 42ac         	cmp	r4, r5
  420e52: d004         	beq	0x420e5e <AchievementBridge::getIdentifier(EAchievementType)+0x412> @ imm = #0x8
  420e54: 3c04         	subs	r4, #0x4
  420e56: 4620         	mov	r0, r4
  420e58: f394 fd5c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394ab8
  420e5c: e7f8         	b	0x420e50 <AchievementBridge::getIdentifier(EAchievementType)+0x404> @ imm = #-0x10
  420e5e: f367 f925    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36724a
  420e62: ac05         	add	r4, sp, #0x14
  420e64: 3454         	adds	r4, #0x54
  420e66: ab05         	add	r3, sp, #0x14
  420e68: 429c         	cmp	r4, r3
  420e6a: d004         	beq	0x420e76 <AchievementBridge::getIdentifier(EAchievementType)+0x42a> @ imm = #0x8
  420e6c: 3c04         	subs	r4, #0x4
  420e6e: 4620         	mov	r0, r4
  420e70: f394 fd50    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394aa0
  420e74: e7f7         	b	0x420e66 <AchievementBridge::getIdentifier(EAchievementType)+0x41a> @ imm = #-0x12
  420e76: f367 f919    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x367232
  420e7a: 9803         	ldr	r0, [sp, #0xc]
  420e7c: b01a         	add	sp, #0x68
  420e7e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x420e7f); words below are literal-pool data ---
  420e80: b51a         	push	{r1, r3, r4, lr}
  420e82: 003b         	movs	r3, r7
  420e84: b4fa         	push	{r1, r3, r4, r5, r6, r7}
  420e86: 003b         	movs	r3, r7
  420e88: b4da         	push	{r1, r3, r4, r6, r7}
  420e8a: 003b         	movs	r3, r7
  420e8c: b4ba         	push	{r1, r3, r4, r5, r7}
  420e8e: 003b         	movs	r3, r7
  420e90: b49a         	push	{r1, r3, r4, r7}
  420e92: 003b         	movs	r3, r7
  420e94: b47a         	push	{r1, r3, r4, r5, r6}
  420e96: 003b         	movs	r3, r7
  420e98: b45a         	push	{r1, r3, r4, r6}
  420e9a: 003b         	movs	r3, r7
  420e9c: b43a         	push	{r1, r3, r4, r5}
  420e9e: 003b         	movs	r3, r7
  420ea0: b41a         	push	{r1, r3, r4}
  420ea2: 003b         	movs	r3, r7
  420ea4: b3fa         	cbz	r2, 0x420f26 <AchievementBridge::findAchievementType(std::string)+0xa> @ imm = #0x7e
  420ea6: 003b         	movs	r3, r7
  420ea8: b3da         	cbz	r2, 0x420f22 <AchievementBridge::findAchievementType(std::string)+0x6> @ imm = #0x76
  420eaa: 003b         	movs	r3, r7
  420eac: b3ba         	cbz	r2, 0x420f1e <AchievementBridge::findAchievementType(std::string)+0x2> @ imm = #0x6e
  420eae: 003b         	movs	r3, r7
  420eb0: b39a         	cbz	r2, 0x420f1a <AchievementBridge::statusChecker(float)+0x46> @ imm = #0x66
  420eb2: 003b         	movs	r3, r7
  420eb4: b37a         	cbz	r2, 0x420f16 <AchievementBridge::statusChecker(float)+0x42> @ imm = #0x5e
  420eb6: 003b         	movs	r3, r7
  420eb8: b35a         	cbz	r2, 0x420f12 <AchievementBridge::statusChecker(float)+0x3e> @ imm = #0x56
  420eba: 003b         	movs	r3, r7
  420ebc: b33a         	cbz	r2, 0x420f0e <AchievementBridge::statusChecker(float)+0x3a> @ imm = #0x4e
  420ebe: 003b         	movs	r3, r7
  420ec0: b31a         	cbz	r2, 0x420f0a <AchievementBridge::statusChecker(float)+0x36> @ imm = #0x46
  420ec2: 003b         	movs	r3, r7
  420ec4: b2fa         	uxtb	r2, r7
  420ec6: 003b         	movs	r3, r7
  420ec8: b2da         	uxtb	r2, r3
  420eca: 003b         	movs	r3, r7
  420ecc: b2ba         	uxth	r2, r7
  420ece: 003b         	movs	r3, r7
  420ed0: b29a         	uxth	r2, r3
  420ed2: 003b         	movs	r3, r7

// ==== AchievementBridge::statusChecker
//      file offset 0x420ed4 (= ELF address; Ghidra 0x430ed4), 72 bytes, Thumb-2
  420ed4: b500         	push	{lr}
  420ed6: b083         	sub	sp, #0xc
  420ed8: 9001         	str	r0, [sp, #0x4]
  420eda: 9100         	str	r1, [sp]
  420edc: 9b01         	ldr	r3, [sp, #0x4]
  420ede: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  420ee2: 2b00         	cmp	r3, #0x0
  420ee4: d017         	beq	0x420f16 <AchievementBridge::statusChecker(float)+0x42> @ imm = #0x2e
  420ee6: 9b01         	ldr	r3, [sp, #0x4]
  420ee8: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  420eec: 2b00         	cmp	r3, #0x0
  420eee: d006         	beq	0x420efe <AchievementBridge::statusChecker(float)+0x2a> @ imm = #0xc
  420ef0: 9b01         	ldr	r3, [sp, #0x4]
  420ef2: 2200         	movs	r2, #0x0
  420ef4: f883 20e4    	strb.w	r2, [r3, #0xe4]
  420ef8: 9801         	ldr	r0, [sp, #0x4]
  420efa: f009 ff3d    	bl	0x42ad78 <AchievementBridge::getServerProgress()> @ imm = #0x9e7a
  420efe: 9b01         	ldr	r3, [sp, #0x4]
  420f00: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  420f04: 2b00         	cmp	r3, #0x0
  420f06: d006         	beq	0x420f16 <AchievementBridge::statusChecker(float)+0x42> @ imm = #0xc
  420f08: 9b01         	ldr	r3, [sp, #0x4]
  420f0a: 2200         	movs	r2, #0x0
  420f0c: f883 20e5    	strb.w	r2, [r3, #0xe5]
  420f10: 9801         	ldr	r0, [sp, #0x4]
  420f12: f000 f883    	bl	0x42101c <AchievementBridge::sendServerAllProgress()> @ imm = #0x106
  420f16: b003         	add	sp, #0xc
  420f18: f85d fb04    	ldr	pc, [sp], #4

// ==== AchievementBridge::findAchievementType
//      file offset 0x420f1c (= ELF address; Ghidra 0x430f1c), 100 bytes, Thumb-2
  420f1c: b510         	push	{r4, lr}
  420f1e: b084         	sub	sp, #0x10
  420f20: 9001         	str	r0, [sp, #0x4]
  420f22: 9100         	str	r1, [sp]
  420f24: 2300         	movs	r3, #0x0
  420f26: 9303         	str	r3, [sp, #0xc]
  420f28: e01c         	b	0x420f64 <AchievementBridge::findAchievementType(std::string)+0x48> @ imm = #0x38
  420f2a: 9b03         	ldr	r3, [sp, #0xc]
  420f2c: aa02         	add	r2, sp, #0x8
  420f2e: 4610         	mov	r0, r2
  420f30: 9901         	ldr	r1, [sp, #0x4]
  420f32: 461a         	mov	r2, r3
  420f34: f7ff fd8a    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0x4ec
  420f38: ab02         	add	r3, sp, #0x8
  420f3a: 9800         	ldr	r0, [sp]
  420f3c: 4619         	mov	r1, r3
  420f3e: f394 fb9d    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x39473a
  420f42: 4603         	mov	r3, r0
  420f44: 2b00         	cmp	r3, #0x0
  420f46: bf14         	ite	ne
  420f48: 2300         	movne	r3, #0x0
  420f4a: 2301         	moveq	r3, #0x1
  420f4c: b2dc         	uxtb	r4, r3
  420f4e: ab02         	add	r3, sp, #0x8
  420f50: 4618         	mov	r0, r3
  420f52: f394 fcdf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3949be
  420f56: 2c00         	cmp	r4, #0x0
  420f58: d001         	beq	0x420f5e <AchievementBridge::findAchievementType(std::string)+0x42> @ imm = #0x2
  420f5a: 9b03         	ldr	r3, [sp, #0xc]
  420f5c: e00d         	b	0x420f7a <AchievementBridge::findAchievementType(std::string)+0x5e> @ imm = #0x1a
  420f5e: 9b03         	ldr	r3, [sp, #0xc]
  420f60: 3301         	adds	r3, #0x1
  420f62: 9303         	str	r3, [sp, #0xc]
  420f64: 9b03         	ldr	r3, [sp, #0xc]
  420f66: 2b14         	cmp	r3, #0x14
  420f68: dddf         	ble	0x420f2a <AchievementBridge::findAchievementType(std::string)+0xe> @ imm = #-0x42
  420f6a: 2315         	movs	r3, #0x15
  420f6c: e005         	b	0x420f7a <AchievementBridge::findAchievementType(std::string)+0x5e> @ imm = #0xa
  420f6e: ab02         	add	r3, sp, #0x8
  420f70: 4618         	mov	r0, r3
  420f72: f394 fccf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39499e
  420f76: f367 f899    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x367132
  420f7a: 4618         	mov	r0, r3
  420f7c: b004         	add	sp, #0x10
  420f7e: bd10         	pop	{r4, pc}

// ==== AchievementBridge::getIdentifierKey
//      file offset 0x420f80 (= ELF address; Ghidra 0x430f80), 132 bytes, Thumb-2
  420f80: b510         	push	{r4, lr}
  420f82: b088         	sub	sp, #0x20
  420f84: 9003         	str	r0, [sp, #0xc]
  420f86: 9102         	str	r1, [sp, #0x8]
  420f88: 9201         	str	r2, [sp, #0x4]
  420f8a: f7ff fd31    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0x59e
  420f8e: 4603         	mov	r3, r0
  420f90: aa06         	add	r2, sp, #0x18
  420f92: 4610         	mov	r0, r2
  420f94: 4619         	mov	r1, r3
  420f96: 9a01         	ldr	r2, [sp, #0x4]
  420f98: f7ff fd58    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0x550
  420f9c: ab06         	add	r3, sp, #0x18
  420f9e: 4618         	mov	r0, r3
  420fa0: f394 f9ae    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x39435c
  420fa4: 4603         	mov	r3, r0
  420fa6: 4a16         	ldr	r2, [pc, #0x58]         @ 0x421000 <AchievementBridge::getIdentifierKey(EAchievementType)+0x80>
  420fa8: 447a         	add	r2, pc
  420faa: 4610         	mov	r0, r2
  420fac: 4619         	mov	r1, r3
  420fae: f178 fdaf    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x178b5e
  420fb2: 4603         	mov	r3, r0
  420fb4: 9307         	str	r3, [sp, #0x1c]
  420fb6: 9807         	ldr	r0, [sp, #0x1c]
  420fb8: f178 fcb6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17896c
  420fbc: 4604         	mov	r4, r0
  420fbe: ab05         	add	r3, sp, #0x14
  420fc0: 4618         	mov	r0, r3
  420fc2: f369 fa17    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36942e
  420fc6: ab05         	add	r3, sp, #0x14
  420fc8: 9803         	ldr	r0, [sp, #0xc]
  420fca: 4621         	mov	r1, r4
  420fcc: 461a         	mov	r2, r3
  420fce: f395 fd47    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x395a8e
  420fd2: ab05         	add	r3, sp, #0x14
  420fd4: 4618         	mov	r0, r3
  420fd6: f369 fa11    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369422
  420fda: ab06         	add	r3, sp, #0x18
  420fdc: 4618         	mov	r0, r3
  420fde: f394 fc99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394932
  420fe2: e00a         	b	0x420ffa <AchievementBridge::getIdentifierKey(EAchievementType)+0x7a> @ imm = #0x14
  420fe4: ab05         	add	r3, sp, #0x14
  420fe6: 4618         	mov	r0, r3
  420fe8: f369 fa08    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x369410
  420fec: e7ff         	b	0x420fee <AchievementBridge::getIdentifierKey(EAchievementType)+0x6e> @ imm = #-0x2
  420fee: ab06         	add	r3, sp, #0x18
  420ff0: 4618         	mov	r0, r3
  420ff2: f394 fc8f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39491e
  420ff6: f367 f859    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3670b2
  420ffa: 9803         	ldr	r0, [sp, #0xc]
  420ffc: b008         	add	sp, #0x20
  420ffe: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x420fff); words below are literal-pool data ---
  421000: b030         	add	sp, #0xc0
  421002: 003b         	movs	r3, r7

// ==== AchievementBridge::sendServerProgress
//      file offset 0x421004 (= ELF address; Ghidra 0x431004), 22 bytes, Thumb-2
  421004: b500         	push	{lr}
  421006: b083         	sub	sp, #0xc
  421008: 9001         	str	r0, [sp, #0x4]
  42100a: 9100         	str	r1, [sp]
  42100c: 9801         	ldr	r0, [sp, #0x4]
  42100e: 9900         	ldr	r1, [sp]
  421010: f009 fd84    	bl	0x42ab1c <AchievementBridge::reportAchievement(EAchievementType)> @ imm = #0x9b08
  421014: b003         	add	sp, #0xc
  421016: f85d fb04    	ldr	pc, [sp], #4

// ==== AchievementBridge::sendServerAllProgress
//      file offset 0x42101c (= ELF address; Ghidra 0x43101c), 40 bytes, Thumb-2
  42101c: b500         	push	{lr}
  42101e: b085         	sub	sp, #0x14
  421020: 9001         	str	r0, [sp, #0x4]
  421022: 2300         	movs	r3, #0x0
  421024: 9303         	str	r3, [sp, #0xc]
  421026: e007         	b	0x421038 <AchievementBridge::sendServerAllProgress()+0x1c> @ imm = #0xe
  421028: 9b03         	ldr	r3, [sp, #0xc]
  42102a: 9801         	ldr	r0, [sp, #0x4]
  42102c: 4619         	mov	r1, r3
  42102e: f7ff ffe9    	bl	0x421004 <AchievementBridge::sendServerProgress(EAchievementType)> @ imm = #-0x2e
  421032: 9b03         	ldr	r3, [sp, #0xc]
  421034: 3301         	adds	r3, #0x1
  421036: 9303         	str	r3, [sp, #0xc]
  421038: 9b03         	ldr	r3, [sp, #0xc]
  42103a: 2b14         	cmp	r3, #0x14
  42103c: ddf4         	ble	0x421028 <AchievementBridge::sendServerAllProgress()+0xc> @ imm = #-0x18
  42103e: b005         	add	sp, #0x14
  421040: f85d fb04    	ldr	pc, [sp], #4

// ==== AchievementBridge::getAchievementData
//      file offset 0x421044 (= ELF address; Ghidra 0x431044), 90 bytes, Thumb-2
  421044: b510         	push	{r4, lr}
  421046: b084         	sub	sp, #0x10
  421048: 9001         	str	r0, [sp, #0x4]
  42104a: 9100         	str	r1, [sp]
  42104c: f7ff fcd0    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0x660
  421050: 4603         	mov	r3, r0
  421052: aa02         	add	r2, sp, #0x8
  421054: 4610         	mov	r0, r2
  421056: 4619         	mov	r1, r3
  421058: 9a00         	ldr	r2, [sp]
  42105a: f7ff fcf7    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0x612
  42105e: f1c1 fae5    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c15ca
  421062: 4604         	mov	r4, r0
  421064: ab02         	add	r3, sp, #0x8
  421066: 4618         	mov	r0, r3
  421068: f394 f94a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x394294
  42106c: 4603         	mov	r3, r0
  42106e: 4620         	mov	r0, r4
  421070: 4619         	mov	r1, r3
  421072: f04f 0200    	mov.w	r2, #0x0
  421076: f1c1 f92f    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x1c125e
  42107a: 4603         	mov	r3, r0
  42107c: 9303         	str	r3, [sp, #0xc]
  42107e: 9c03         	ldr	r4, [sp, #0xc]
  421080: ab02         	add	r3, sp, #0x8
  421082: 4618         	mov	r0, r3
  421084: f394 fc46    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39488c
  421088: 4623         	mov	r3, r4
  42108a: e005         	b	0x421098 <AchievementBridge::getAchievementData(EAchievementType)+0x54> @ imm = #0xa
  42108c: ab02         	add	r3, sp, #0x8
  42108e: 4618         	mov	r0, r3
  421090: f394 fc40    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394880
  421094: f367 f80a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x367014
  421098: 4618         	mov	r0, r3
  42109a: b004         	add	sp, #0x10
  42109c: bd10         	pop	{r4, pc}

// ==== AchievementBridge::setLocalProgress
//      file offset 0x4210a0 (= ELF address; Ghidra 0x4310a0), 80 bytes, Thumb-2
  4210a0: b510         	push	{r4, lr}
  4210a2: b086         	sub	sp, #0x18
  4210a4: 9003         	str	r0, [sp, #0xc]
  4210a6: 9102         	str	r1, [sp, #0x8]
  4210a8: 9201         	str	r2, [sp, #0x4]
  4210aa: f7ff fca1    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0x6be
  4210ae: 4603         	mov	r3, r0
  4210b0: aa05         	add	r2, sp, #0x14
  4210b2: 4610         	mov	r0, r2
  4210b4: 4619         	mov	r1, r3
  4210b6: 9a02         	ldr	r2, [sp, #0x8]
  4210b8: f7ff fcc8    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0x670
  4210bc: f1c1 fab6    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c156c
  4210c0: 4604         	mov	r4, r0
  4210c2: ab05         	add	r3, sp, #0x14
  4210c4: 4618         	mov	r0, r3
  4210c6: f394 f91b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x394236
  4210ca: 4603         	mov	r3, r0
  4210cc: 4620         	mov	r0, r4
  4210ce: 4619         	mov	r1, r3
  4210d0: 9a01         	ldr	r2, [sp, #0x4]
  4210d2: f1c1 fa75    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x1c14ea
  4210d6: ab05         	add	r3, sp, #0x14
  4210d8: 4618         	mov	r0, r3
  4210da: f394 fc1b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394836
  4210de: e005         	b	0x4210ec <AchievementBridge::setLocalProgress(EAchievementType, float)+0x4c> @ imm = #0xa
  4210e0: ab05         	add	r3, sp, #0x14
  4210e2: 4618         	mov	r0, r3
  4210e4: f394 fc16    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39482c
  4210e8: f366 ffe0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x366fc0
  4210ec: b006         	add	sp, #0x18
  4210ee: bd10         	pop	{r4, pc}

// ==== AchievementBridge::addLocalProgress
//      file offset 0x4210f0 (= ELF address; Ghidra 0x4310f0), 126 bytes, Thumb-2
  4210f0: b510         	push	{r4, lr}
  4210f2: b086         	sub	sp, #0x18
  4210f4: 9003         	str	r0, [sp, #0xc]
  4210f6: 9102         	str	r1, [sp, #0x8]
  4210f8: 9201         	str	r2, [sp, #0x4]
  4210fa: f7ff fc79    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0x70e
  4210fe: 4603         	mov	r3, r0
  421100: aa04         	add	r2, sp, #0x10
  421102: 4610         	mov	r0, r2
  421104: 4619         	mov	r1, r3
  421106: 9a02         	ldr	r2, [sp, #0x8]
  421108: f7ff fca0    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0x6c0
  42110c: f1c1 fa8e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c151c
  421110: 4604         	mov	r4, r0
  421112: ab04         	add	r3, sp, #0x10
  421114: 4618         	mov	r0, r3
  421116: f394 f8f3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3941e6
  42111a: 4603         	mov	r3, r0
  42111c: 4620         	mov	r0, r4
  42111e: 4619         	mov	r1, r3
  421120: f04f 0200    	mov.w	r2, #0x0
  421124: f1c1 f8d8    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x1c11b0
  421128: 4603         	mov	r3, r0
  42112a: 9305         	str	r3, [sp, #0x14]
  42112c: f1c1 fa7e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c14fc
  421130: 4604         	mov	r4, r0
  421132: ab04         	add	r3, sp, #0x10
  421134: 4618         	mov	r0, r3
  421136: f394 f8e3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3941c6
  42113a: 4603         	mov	r3, r0
  42113c: ed9d 7a05    	vldr	s14, [sp, #20]
  421140: eddd 7a01    	vldr	s15, [sp, #4]
  421144: ee77 7a27    	vadd.f32	s15, s14, s15
  421148: 4620         	mov	r0, r4
  42114a: 4619         	mov	r1, r3
  42114c: ee17 2a90    	vmov	r2, s15
  421150: f1c1 fa36    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x1c146c
  421154: ab04         	add	r3, sp, #0x10
  421156: 4618         	mov	r0, r3
  421158: f394 fbdc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3947b8
  42115c: e005         	b	0x42116a <AchievementBridge::addLocalProgress(EAchievementType, float)+0x7a> @ imm = #0xa
  42115e: ab04         	add	r3, sp, #0x10
  421160: 4618         	mov	r0, r3
  421162: f394 fbd7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3947ae
  421166: f366 ffa1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x366f42
  42116a: b006         	add	sp, #0x18
  42116c: bd10         	pop	{r4, pc}

// ==== AchievementBridge::updateLocalProgress
//      file offset 0x421170 (= ELF address; Ghidra 0x431170), 144 bytes, Thumb-2
  421170: b510         	push	{r4, lr}
  421172: b086         	sub	sp, #0x18
  421174: 9003         	str	r0, [sp, #0xc]
  421176: 9102         	str	r1, [sp, #0x8]
  421178: 9201         	str	r2, [sp, #0x4]
  42117a: f7ff fc39    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0x78e
  42117e: 4603         	mov	r3, r0
  421180: aa04         	add	r2, sp, #0x10
  421182: 4610         	mov	r0, r2
  421184: 4619         	mov	r1, r3
  421186: 9a02         	ldr	r2, [sp, #0x8]
  421188: f7ff fc60    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0x740
  42118c: f1c1 fa4e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c149c
  421190: 4604         	mov	r4, r0
  421192: ab04         	add	r3, sp, #0x10
  421194: 4618         	mov	r0, r3
  421196: f394 f8b3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x394166
  42119a: 4603         	mov	r3, r0
  42119c: 4620         	mov	r0, r4
  42119e: 4619         	mov	r1, r3
  4211a0: f04f 0200    	mov.w	r2, #0x0
  4211a4: f1c1 f898    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x1c1130
  4211a8: 4603         	mov	r3, r0
  4211aa: 9305         	str	r3, [sp, #0x14]
  4211ac: ed9d 7a01    	vldr	s14, [sp, #4]
  4211b0: eddd 7a05    	vldr	s15, [sp, #20]
  4211b4: eeb4 7ae7    	vcmpe.f32	s14, s15
  4211b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4211bc: dd13         	ble	0x4211e6 <AchievementBridge::updateLocalProgress(EAchievementType, float)+0x76> @ imm = #0x26
  4211be: f1c1 fa35    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c146a
  4211c2: 4604         	mov	r4, r0
  4211c4: ab04         	add	r3, sp, #0x10
  4211c6: 4618         	mov	r0, r3
  4211c8: f394 f89a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x394134
  4211cc: 4603         	mov	r3, r0
  4211ce: eddd 7a01    	vldr	s15, [sp, #4]
  4211d2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  4211d6: eef8 7ae7    	vcvt.f32.s32	s15, s15
  4211da: 4620         	mov	r0, r4
  4211dc: 4619         	mov	r1, r3
  4211de: ee17 2a90    	vmov	r2, s15
  4211e2: f1c1 f9ed    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x1c13da
  4211e6: ab04         	add	r3, sp, #0x10
  4211e8: 4618         	mov	r0, r3
  4211ea: f394 fb93    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x394726
  4211ee: e005         	b	0x4211fc <AchievementBridge::updateLocalProgress(EAchievementType, float)+0x8c> @ imm = #0xa
  4211f0: ab04         	add	r3, sp, #0x10
  4211f2: 4618         	mov	r0, r3
  4211f4: f394 fb8e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39471c
  4211f8: f366 ff58    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x366eb0
  4211fc: b006         	add	sp, #0x18
  4211fe: bd10         	pop	{r4, pc}

// ==== AchievementBridge::setTryLoadAchievements
//      file offset 0x421200 (= ELF address; Ghidra 0x431200), 40 bytes, Thumb-2
  421200: b082         	sub	sp, #0x8
  421202: 9001         	str	r0, [sp, #0x4]
  421204: 460b         	mov	r3, r1
  421206: f88d 3003    	strb.w	r3, [sp, #0x3]
  42120a: 4a05         	ldr	r2, [pc, #0x14]         @ 0x421220 <AchievementBridge::setTryLoadAchievements(bool)+0x20>
  42120c: 447a         	add	r2, pc
  42120e: 4b05         	ldr	r3, [pc, #0x14]         @ 0x421224 <AchievementBridge::setTryLoadAchievements(bool)+0x24>
  421210: 58d3         	ldr	r3, [r2, r3]
  421212: 681b         	ldr	r3, [r3]
  421214: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  421218: f883 20e6    	strb.w	r2, [r3, #0xe6]
  42121c: b002         	add	sp, #0x8
  42121e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x42121f); words below are literal-pool data ---
  421220: 17fc         	asrs	r4, r7, #0x1f
  421222: 0051         	lsls	r1, r2, #0x1
  421224: dfdc         	svc	#0xdc
  421226: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== AchievementBridge::platformInit
//      file offset 0x429ca4 (= ELF address; Ghidra 0x439ca4), 24 bytes, Thumb-2
  429ca4: b500         	push	{lr}
  429ca6: b083         	sub	sp, #0xc
  429ca8: 9001         	str	r0, [sp, #0x4]
  429caa: f7f6 fea1    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0x92be
  429cae: 4603         	mov	r3, r0
  429cb0: 4618         	mov	r0, r3
  429cb2: f001 f861    	bl	0x42ad78 <AchievementBridge::getServerProgress()> @ imm = #0x10c2
  429cb6: b003         	add	sp, #0xc
  429cb8: f85d fb04    	ldr	pc, [sp], #4

// ==== AchievementBridge::showAchievements
//      file offset 0x429cbc (= ELF address; Ghidra 0x439cbc), 16 bytes, Thumb-2
  429cbc: b500         	push	{lr}
  429cbe: b083         	sub	sp, #0xc
  429cc0: 9001         	str	r0, [sp, #0x4]
  429cc2: f709 fad9    	bl	0x333278 <GPGSStateManager::ShowAchievements()> @ imm = #-0xf6a4e
  429cc6: b003         	add	sp, #0xc
  429cc8: f85d fb04    	ldr	pc, [sp], #4

// ==== AchievementBridge::reportAchievement
//      file offset 0x42ab1c (= ELF address; Ghidra 0x43ab1c), 162 bytes, Thumb-2
  42ab1c: b510         	push	{r4, lr}
  42ab1e: b086         	sub	sp, #0x18
  42ab20: 9001         	str	r0, [sp, #0x4]
  42ab22: 9100         	str	r1, [sp]
  42ab24: f7f5 ff64    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #-0xa138
  42ab28: 4603         	mov	r3, r0
  42ab2a: aa03         	add	r2, sp, #0xc
  42ab2c: 4610         	mov	r0, r2
  42ab2e: 4619         	mov	r1, r3
  42ab30: 9a00         	ldr	r2, [sp]
  42ab32: f7f5 ff8b    	bl	0x420a4c <AchievementBridge::getIdentifier(EAchievementType)> @ imm = #-0xa0ea
  42ab36: aa04         	add	r2, sp, #0x10
  42ab38: ab03         	add	r3, sp, #0xc
  42ab3a: 4610         	mov	r0, r2
  42ab3c: 4619         	mov	r1, r3
  42ab3e: f38b fcd3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38b9a6
  42ab42: aa05         	add	r2, sp, #0x14
  42ab44: ab04         	add	r3, sp, #0x10
  42ab46: 4610         	mov	r0, r2
  42ab48: 4619         	mov	r1, r3
  42ab4a: f7ff fc53    	bl	0x42a3f4 <getAndroidIdentifierFromGameId(std::string)> @ imm = #-0x75a
  42ab4e: aa03         	add	r2, sp, #0xc
  42ab50: ab05         	add	r3, sp, #0x14
  42ab52: 4610         	mov	r0, r2
  42ab54: 4619         	mov	r1, r3
  42ab56: f38a fbc7    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x38a78e
  42ab5a: ab05         	add	r3, sp, #0x14
  42ab5c: 4618         	mov	r0, r3
  42ab5e: f38a fed9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38adb2
  42ab62: ab04         	add	r3, sp, #0x10
  42ab64: 4618         	mov	r0, r3
  42ab66: f38a fed5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38adaa
  42ab6a: ab03         	add	r3, sp, #0xc
  42ab6c: 4618         	mov	r0, r3
  42ab6e: f38a fbc7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38a78e
  42ab72: 4604         	mov	r4, r0
  42ab74: 9801         	ldr	r0, [sp, #0x4]
  42ab76: 9900         	ldr	r1, [sp]
  42ab78: f7f6 fa64    	bl	0x421044 <AchievementBridge::getAchievementData(EAchievementType)> @ imm = #-0x9b38
  42ab7c: ee07 0a90    	vmov	s15, r0
  42ab80: eefd 7ae7    	vcvt.s32.f32	s15, s15
  42ab84: ee17 3a90    	vmov	r3, s15
  42ab88: 4620         	mov	r0, r4
  42ab8a: 4619         	mov	r1, r3
  42ab8c: f708 fa14    	bl	0x332fb8 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)> @ imm = #-0xf7bd8
  42ab90: ab03         	add	r3, sp, #0xc
  42ab92: 4618         	mov	r0, r3
  42ab94: f38a febe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ad7c
  42ab98: e00f         	b	0x42abba <AchievementBridge::reportAchievement(EAchievementType)+0x9e> @ imm = #0x1e
  42ab9a: ab05         	add	r3, sp, #0x14
  42ab9c: 4618         	mov	r0, r3
  42ab9e: f38a feb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ad72
  42aba2: e7ff         	b	0x42aba4 <AchievementBridge::reportAchievement(EAchievementType)+0x88> @ imm = #-0x2
  42aba4: ab04         	add	r3, sp, #0x10
  42aba6: 4618         	mov	r0, r3
  42aba8: f38a feb4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ad68
  42abac: e7ff         	b	0x42abae <AchievementBridge::reportAchievement(EAchievementType)+0x92> @ imm = #-0x2
  42abae: ab03         	add	r3, sp, #0xc
  42abb0: 4618         	mov	r0, r3
  42abb2: f38a feaf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ad5e
  42abb6: f35d fa79    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35d4f2
  42abba: b006         	add	sp, #0x18
  42abbc: bd10         	pop	{r4, pc}

// ==== AchievementBridge::loadAchievements
//      file offset 0x42ad20 (= ELF address; Ghidra 0x43ad20), 88 bytes, Thumb-2
  42ad20: b510         	push	{r4, lr}
  42ad22: b088         	sub	sp, #0x20
  42ad24: 9001         	str	r0, [sp, #0x4]
  42ad26: 4c12         	ldr	r4, [pc, #0x48]         @ 0x42ad70 <AchievementBridge::loadAchievements()+0x50>
  42ad28: 447c         	add	r4, pc
  42ad2a: 4b12         	ldr	r3, [pc, #0x48]         @ 0x42ad74 <AchievementBridge::loadAchievements()+0x54>
  42ad2c: 58e3         	ldr	r3, [r4, r3]
  42ad2e: 681b         	ldr	r3, [r3]
  42ad30: 9307         	str	r3, [sp, #0x1c]
  42ad32: 9b01         	ldr	r3, [sp, #0x4]
  42ad34: aa03         	add	r2, sp, #0xc
  42ad36: 4610         	mov	r0, r2
  42ad38: 4619         	mov	r1, r3
  42ad3a: f000 f839    	bl	0x42adb0 <AchievementBridge::getServerProgress()+0x38> @ imm = #0x72
  42ad3e: ab03         	add	r3, sp, #0xc
  42ad40: 4618         	mov	r0, r3
  42ad42: f708 f9f1    	bl	0x333128 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)> @ imm = #-0xf7c1e
  42ad46: ab03         	add	r3, sp, #0xc
  42ad48: 4618         	mov	r0, r3
  42ad4a: f708 f9c5    	bl	0x3330d8 <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::~function()> @ imm = #-0xf7c76
  42ad4e: 4b09         	ldr	r3, [pc, #0x24]         @ 0x42ad74 <AchievementBridge::loadAchievements()+0x54>
  42ad50: 58e3         	ldr	r3, [r4, r3]
  42ad52: 9a07         	ldr	r2, [sp, #0x1c]
  42ad54: 681b         	ldr	r3, [r3]
  42ad56: 429a         	cmp	r2, r3
  42ad58: d008         	beq	0x42ad6c <AchievementBridge::loadAchievements()+0x4c> @ imm = #0x10
  42ad5a: e005         	b	0x42ad68 <AchievementBridge::loadAchievements()+0x48> @ imm = #0xa
  42ad5c: ab03         	add	r3, sp, #0xc
  42ad5e: 4618         	mov	r0, r3
  42ad60: f708 f9ba    	bl	0x3330d8 <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::~function()> @ imm = #-0xf7c8c
  42ad64: f35d f9a2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35d344
  42ad68: f6ab e8fe    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x154e04
  42ad6c: b008         	add	sp, #0x20
  42ad6e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42ad6f); words below are literal-pool data ---
  42ad70: 7ce0         	ldrb	r0, [r4, #0x13]
  42ad72: 0050         	lsls	r0, r2, #0x1
  42ad74: d72c         	bvc	0x42add0 <AchievementBridge::getServerProgress()+0x58> @ imm = #0x58
  42ad76: ffff b500    	<unknown>

// ==== AchievementBridge::getServerProgress
//      file offset 0x42ad78 (= ELF address; Ghidra 0x43ad78), 44 bytes, Thumb-2
  42ad78: b500         	push	{lr}
  42ad7a: b083         	sub	sp, #0xc
  42ad7c: 9001         	str	r0, [sp, #0x4]
  42ad7e: f707 fe4d    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0xf8366
  42ad82: 4603         	mov	r3, r0
  42ad84: f083 0301    	eor	r3, r3, #0x1
  42ad88: b2db         	uxtb	r3, r3
  42ad8a: 2b00         	cmp	r3, #0x0
  42ad8c: d004         	beq	0x42ad98 <AchievementBridge::getServerProgress()+0x20> @ imm = #0x8
  42ad8e: 9b01         	ldr	r3, [sp, #0x4]
  42ad90: 2201         	movs	r2, #0x1
  42ad92: f883 20e4    	strb.w	r2, [r3, #0xe4]
  42ad96: e002         	b	0x42ad9e <AchievementBridge::getServerProgress()+0x26> @ imm = #0x4
  42ad98: 9801         	ldr	r0, [sp, #0x4]
  42ad9a: f7ff ffc1    	bl	0x42ad20 <AchievementBridge::loadAchievements()> @ imm = #-0x7e
  42ad9e: b003         	add	sp, #0xc
  42ada0: f85d fb04    	ldr	pc, [sp], #4
