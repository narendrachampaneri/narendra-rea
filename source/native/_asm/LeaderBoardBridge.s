// LeaderBoardBridge: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 26 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LeaderBoardBridge.cpp

// ==== LeaderBoardBridge::LeaderBoardBridge
//      file offset 0x424f84 (= ELF address; Ghidra 0x434f84), 44 bytes, Thumb-2
  424f84: b510         	push	{r4, lr}
  424f86: b082         	sub	sp, #0x8
  424f88: 9001         	str	r0, [sp, #0x4]
  424f8a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x424fa8 <LeaderBoardBridge::LeaderBoardBridge()+0x24>
  424f8c: 447c         	add	r4, pc
  424f8e: 9b01         	ldr	r3, [sp, #0x4]
  424f90: 4618         	mov	r0, r3
  424f92: f16a fb51    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x16a6a2
  424f96: 9b01         	ldr	r3, [sp, #0x4]
  424f98: 4a04         	ldr	r2, [pc, #0x10]         @ 0x424fac <LeaderBoardBridge::LeaderBoardBridge()+0x28>
  424f9a: 58a2         	ldr	r2, [r4, r2]
  424f9c: 3208         	adds	r2, #0x8
  424f9e: 601a         	str	r2, [r3]
  424fa0: 9b01         	ldr	r3, [sp, #0x4]
  424fa2: 4618         	mov	r0, r3
  424fa4: b002         	add	sp, #0x8
  424fa6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x424fa7); words below are literal-pool data ---
  424fa8: da7c         	bge	0x4250a4 <LeaderBoardBridge::init()+0x9c> @ imm = #0xf8
  424faa: 0050         	lsls	r0, r2, #0x1
  424fac: e00c         	b	0x424fc8 <LeaderBoardBridge::~LeaderBoardBridge()+0x18> @ imm = #0x18
  424fae: ffff b500    	<unknown>

// ==== LeaderBoardBridge::~LeaderBoardBridge
//      file offset 0x424fb0 (= ELF address; Ghidra 0x434fb0), 60 bytes, Thumb-2
  424fb0: b500         	push	{lr}
  424fb2: b083         	sub	sp, #0xc
  424fb4: 9001         	str	r0, [sp, #0x4]
  424fb6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x424fe4 <LeaderBoardBridge::~LeaderBoardBridge()+0x34>
  424fb8: 4479         	add	r1, pc
  424fba: 9b01         	ldr	r3, [sp, #0x4]
  424fbc: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x424fe8 <LeaderBoardBridge::~LeaderBoardBridge()+0x38>
  424fbe: 588a         	ldr	r2, [r1, r2]
  424fc0: 3208         	adds	r2, #0x8
  424fc2: 601a         	str	r2, [r3]
  424fc4: 9b01         	ldr	r3, [sp, #0x4]
  424fc6: 4618         	mov	r0, r3
  424fc8: f16a fc3c    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x16a878
  424fcc: 2300         	movs	r3, #0x0
  424fce: 2b00         	cmp	r3, #0x0
  424fd0: d002         	beq	0x424fd8 <LeaderBoardBridge::~LeaderBoardBridge()+0x28> @ imm = #0x4
  424fd2: 9801         	ldr	r0, [sp, #0x4]
  424fd4: f363 f866    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3630cc
  424fd8: 9b01         	ldr	r3, [sp, #0x4]
  424fda: 4618         	mov	r0, r3
  424fdc: b003         	add	sp, #0xc
  424fde: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x424fe1); words below are literal-pool data ---
  424fe2: bf00         	nop
  424fe4: da50         	bge	0x425088 <LeaderBoardBridge::init()+0x80> @ imm = #0xa0
  424fe6: 0050         	lsls	r0, r2, #0x1
  424fe8: e00c         	b	0x425004 <LeaderBoardBridge::~LeaderBoardBridge()+0x18> @ imm = #0x18
  424fea: ffff b500    	<unknown>

// ==== LeaderBoardBridge::~LeaderBoardBridge
//      file offset 0x424fec (= ELF address; Ghidra 0x434fec), 28 bytes, Thumb-2
  424fec: b500         	push	{lr}
  424fee: b083         	sub	sp, #0xc
  424ff0: 9001         	str	r0, [sp, #0x4]
  424ff2: 9801         	ldr	r0, [sp, #0x4]
  424ff4: f7ff ffdc    	bl	0x424fb0 <LeaderBoardBridge::~LeaderBoardBridge()> @ imm = #-0x48
  424ff8: 9801         	ldr	r0, [sp, #0x4]
  424ffa: f363 f853    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3630a6
  424ffe: 9b01         	ldr	r3, [sp, #0x4]
  425000: 4618         	mov	r0, r3
  425002: b003         	add	sp, #0xc
  425004: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::init
//      file offset 0x425008 (= ELF address; Ghidra 0x435008), 176 bytes, Thumb-2
  425008: b510         	push	{r4, lr}
  42500a: b08a         	sub	sp, #0x28
  42500c: 9005         	str	r0, [sp, #0x14]
  42500e: 4c28         	ldr	r4, [pc, #0xa0]         @ 0x4250b0 <LeaderBoardBridge::init()+0xa8>
  425010: 447c         	add	r4, pc
  425012: 9b05         	ldr	r3, [sp, #0x14]
  425014: 4618         	mov	r0, r3
  425016: f16a fd19    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x16aa32
  42501a: 4603         	mov	r3, r0
  42501c: f88d 301f    	strb.w	r3, [sp, #0x1f]
  425020: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  425024: f083 0301    	eor	r3, r3, #0x1
  425028: b2db         	uxtb	r3, r3
  42502a: 2b00         	cmp	r3, #0x0
  42502c: d001         	beq	0x425032 <LeaderBoardBridge::init()+0x2a> @ imm = #0x2
  42502e: 2300         	movs	r3, #0x0
  425030: e03a         	b	0x4250a8 <LeaderBoardBridge::init()+0xa0> @ imm = #0x74
  425032: 9805         	ldr	r0, [sp, #0x14]
  425034: f00e fa98    	bl	0x433568 <LeaderBoardBridge::platformInit()> @ imm = #0xe530
  425038: 9b05         	ldr	r3, [sp, #0x14]
  42503a: 2200         	movs	r2, #0x0
  42503c: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  425040: 9b05         	ldr	r3, [sp, #0x14]
  425042: 2200         	movs	r2, #0x0
  425044: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  425048: 9b05         	ldr	r3, [sp, #0x14]
  42504a: 2200         	movs	r2, #0x0
  42504c: f883 20ec    	strb.w	r2, [r3, #0xec]
  425050: 9b05         	ldr	r3, [sp, #0x14]
  425052: 2200         	movs	r2, #0x0
  425054: f883 20ed    	strb.w	r2, [r3, #0xed]
  425058: 9b05         	ldr	r3, [sp, #0x14]
  42505a: 2201         	movs	r2, #0x1
  42505c: f883 20ee    	strb.w	r2, [r3, #0xee]
  425060: f176 fa88    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x176510
  425064: 4603         	mov	r3, r0
  425066: 681a         	ldr	r2, [r3]
  425068: 3230         	adds	r2, #0x30
  42506a: 6812         	ldr	r2, [r2]
  42506c: 4618         	mov	r0, r3
  42506e: 4790         	blx	r2
  425070: 4602         	mov	r2, r0
  425072: 4b10         	ldr	r3, [pc, #0x40]         @ 0x4250b4 <LeaderBoardBridge::init()+0xac>
  425074: 58e3         	ldr	r3, [r4, r3]
  425076: 9308         	str	r3, [sp, #0x20]
  425078: 2300         	movs	r3, #0x0
  42507a: 9309         	str	r3, [sp, #0x24]
  42507c: 9b05         	ldr	r3, [sp, #0x14]
  42507e: f04f 0100    	mov.w	r1, #0x0
  425082: f2c4 1120    	movt	r1, #0x4120
  425086: 9100         	str	r1, [sp]
  425088: f06f 0101    	mvn	r1, #0x1
  42508c: 9101         	str	r1, [sp, #0x4]
  42508e: f04f 0100    	mov.w	r1, #0x0
  425092: f2c4 01a0    	movt	r1, #0x40a0
  425096: 9102         	str	r1, [sp, #0x8]
  425098: 2100         	movs	r1, #0x0
  42509a: 9103         	str	r1, [sp, #0xc]
  42509c: 4610         	mov	r0, r2
  42509e: aa08         	add	r2, sp, #0x20
  4250a0: ca06         	ldm	r2, {r1, r2}
  4250a2: f14a fe01    	bl	0x56fca8 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, unsigned int, float, bool)> @ imm = #0x14ac02
  4250a6: 2301         	movs	r3, #0x1
  4250a8: 4618         	mov	r0, r3
  4250aa: b00a         	add	sp, #0x28
  4250ac: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4250ad); words below are literal-pool data ---
  4250ae: bf00         	nop
  4250b0: d9f8         	bls	0x4250a4 <LeaderBoardBridge::init()+0x9c> @ imm = #-0x10
  4250b2: 0050         	lsls	r0, r2, #0x1
  4250b4: e010         	b	0x4250d8 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x20> @ imm = #0x20
  4250b6: ffff b538    	vsli.32	d27, d24, #0x1f

// ==== LeaderBoardBridge::sharedLeaderBoardBridge
//      file offset 0x4250b8 (= ELF address; Ghidra 0x4350b8), 92 bytes, Thumb-2
  4250b8: b538         	push	{r3, r4, r5, lr}
  4250ba: 4c14         	ldr	r4, [pc, #0x50]         @ 0x42510c <LeaderBoardBridge::sharedLeaderBoardBridge()+0x54>
  4250bc: 447c         	add	r4, pc
  4250be: 4b14         	ldr	r3, [pc, #0x50]         @ 0x425110 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x58>
  4250c0: 58e3         	ldr	r3, [r4, r3]
  4250c2: 681b         	ldr	r3, [r3]
  4250c4: 2b00         	cmp	r3, #0x0
  4250c6: d115         	bne	0x4250f4 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x3c> @ imm = #0x2a
  4250c8: 20f0         	movs	r0, #0xf0
  4250ca: f362 fc4b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x362896
  4250ce: 4603         	mov	r3, r0
  4250d0: 461d         	mov	r5, r3
  4250d2: 4628         	mov	r0, r5
  4250d4: f7ff ff56    	bl	0x424f84 <LeaderBoardBridge::LeaderBoardBridge()> @ imm = #-0x154
  4250d8: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x425110 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x58>
  4250da: 58e3         	ldr	r3, [r4, r3]
  4250dc: 601d         	str	r5, [r3]
  4250de: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x425110 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x58>
  4250e0: 58e3         	ldr	r3, [r4, r3]
  4250e2: 681b         	ldr	r3, [r3]
  4250e4: 681b         	ldr	r3, [r3]
  4250e6: 3318         	adds	r3, #0x18
  4250e8: 681b         	ldr	r3, [r3]
  4250ea: 4a09         	ldr	r2, [pc, #0x24]         @ 0x425110 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x58>
  4250ec: 58a2         	ldr	r2, [r4, r2]
  4250ee: 6812         	ldr	r2, [r2]
  4250f0: 4610         	mov	r0, r2
  4250f2: 4798         	blx	r3
  4250f4: 4b06         	ldr	r3, [pc, #0x18]         @ 0x425110 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x58>
  4250f6: 58e3         	ldr	r3, [r4, r3]
  4250f8: 681b         	ldr	r3, [r3]
  4250fa: e004         	b	0x425106 <LeaderBoardBridge::sharedLeaderBoardBridge()+0x4e> @ imm = #0x8
  4250fc: 4628         	mov	r0, r5
  4250fe: f362 ffd1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x362fa2
  425102: f362 ffd3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362fa6
  425106: 4618         	mov	r0, r3
  425108: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x425109); words below are literal-pool data ---
  42510a: bf00         	nop
  42510c: d94c         	bls	0x4251a8 <LeaderBoardBridge::calcPlayerSkill()+0x94> @ imm = #0x98
  42510e: 0050         	lsls	r0, r2, #0x1
  425110: e014         	b	0x42513c <LeaderBoardBridge::calcPlayerSkill()+0x28> @ imm = #0x28
  425112: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== LeaderBoardBridge::calcPlayerSkill
//      file offset 0x425114 (= ELF address; Ghidra 0x435114), 220 bytes, Thumb-2
  425114: b530         	push	{r4, r5, lr}
  425116: b087         	sub	sp, #0x1c
  425118: 9001         	str	r0, [sp, #0x4]
  42511a: 4c33         	ldr	r4, [pc, #0xcc]         @ 0x4251e8 <LeaderBoardBridge::calcPlayerSkill()+0xd4>
  42511c: 447c         	add	r4, pc
  42511e: f7ff ffcb    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x6a
  425122: 4603         	mov	r3, r0
  425124: 4618         	mov	r0, r3
  425126: 2102         	movs	r1, #0x2
  425128: f000 fb04    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0x608
  42512c: 4603         	mov	r3, r0
  42512e: ee07 3a10    	vmov	s14, r3
  425132: eef8 7ac7    	vcvt.f32.s32	s15, s14
  425136: edcd 7a03    	vstr	s15, [sp, #12]
  42513a: f7ff ffbd    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x86
  42513e: 4603         	mov	r3, r0
  425140: 4618         	mov	r0, r3
  425142: 2103         	movs	r1, #0x3
  425144: f000 faf6    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0x5ec
  425148: 4603         	mov	r3, r0
  42514a: ee07 3a10    	vmov	s14, r3
  42514e: eef8 7ac7    	vcvt.f32.s32	s15, s14
  425152: edcd 7a04    	vstr	s15, [sp, #16]
  425156: ed9d 7a04    	vldr	s14, [sp, #16]
  42515a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  42515e: eeb4 7ae7    	vcmpe.f32	s14, s15
  425162: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  425166: d502         	bpl	0x42516e <LeaderBoardBridge::calcPlayerSkill()+0x5a> @ imm = #0x4
  425168: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  42516c: e001         	b	0x425172 <LeaderBoardBridge::calcPlayerSkill()+0x5e> @ imm = #0x2
  42516e: eddd 7a04    	vldr	s15, [sp, #16]
  425172: ed9d 7a03    	vldr	s14, [sp, #12]
  425176: ee87 7a27    	vdiv.f32	s14, s14, s15
  42517a: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  42517e: ee67 7a27    	vmul.f32	s15, s14, s15
  425182: edcd 7a05    	vstr	s15, [sp, #20]
  425186: 4b19         	ldr	r3, [pc, #0x64]         @ 0x4251ec <LeaderBoardBridge::calcPlayerSkill()+0xd8>
  425188: 58e3         	ldr	r3, [r4, r3]
  42518a: 681b         	ldr	r3, [r3]
  42518c: eddd 7a05    	vldr	s15, [sp, #20]
  425190: eefd 7ae7    	vcvt.s32.f32	s15, s15
  425194: ee17 2a90    	vmov	r2, s15
  425198: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  42519c: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x4251ec <LeaderBoardBridge::calcPlayerSkill()+0xd8>
  42519e: 58e3         	ldr	r3, [r4, r3]
  4251a0: 681d         	ldr	r5, [r3]
  4251a2: 4b12         	ldr	r3, [pc, #0x48]         @ 0x4251ec <LeaderBoardBridge::calcPlayerSkill()+0xd8>
  4251a4: 58e3         	ldr	r3, [r4, r3]
  4251a6: 681b         	ldr	r3, [r3]
  4251a8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4251ac: ee07 3a10    	vmov	s14, r3
  4251b0: eef8 7ac7    	vcvt.f32.s32	s15, s14
  4251b4: ee17 0a90    	vmov	r0, s15
  4251b8: f04f 0100    	mov.w	r1, #0x0
  4251bc: f04f 0200    	mov.w	r2, #0x0
  4251c0: f2c4 22c6    	movt	r2, #0x42c6
  4251c4: f1bc fb0e    	bl	0x5e17e4 <cocos2d::clampf(float, float, float)> @ imm = #0x1bc61c
  4251c8: ee07 0a90    	vmov	s15, r0
  4251cc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  4251d0: ee17 3a90    	vmov	r3, s15
  4251d4: f8c5 30e8    	str.w	r3, [r5, #0xe8]
  4251d8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x4251ec <LeaderBoardBridge::calcPlayerSkill()+0xd8>
  4251da: 58e3         	ldr	r3, [r4, r3]
  4251dc: 681b         	ldr	r3, [r3]
  4251de: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4251e2: 4618         	mov	r0, r3
  4251e4: b007         	add	sp, #0x1c
  4251e6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4251e7); words below are literal-pool data ---
  4251e8: d8ec         	bhi	0x4251c4 <LeaderBoardBridge::calcPlayerSkill()+0xb0> @ imm = #-0x28
  4251ea: 0050         	lsls	r0, r2, #0x1
  4251ec: e014         	b	0x425218 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x28> @ imm = #0x28
  4251ee: ffff b570    	<unknown>

// ==== LeaderBoardBridge::getCategory
//      file offset 0x4251f0 (= ELF address; Ghidra 0x4351f0), 456 bytes, Thumb-2
  4251f0: b570         	push	{r4, r5, r6, lr}
  4251f2: b08c         	sub	sp, #0x30
  4251f4: 9003         	str	r0, [sp, #0xc]
  4251f6: 9102         	str	r1, [sp, #0x8]
  4251f8: 9201         	str	r2, [sp, #0x4]
  4251fa: ad05         	add	r5, sp, #0x14
  4251fc: 2406         	movs	r4, #0x6
  4251fe: ab04         	add	r3, sp, #0x10
  425200: 4618         	mov	r0, r3
  425202: f365 f8f7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3651ee
  425206: ab04         	add	r3, sp, #0x10
  425208: 4628         	mov	r0, r5
  42520a: 4a64         	ldr	r2, [pc, #0x190]        @ 0x42539c <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1ac>
  42520c: 447a         	add	r2, pc
  42520e: 4611         	mov	r1, r2
  425210: 461a         	mov	r2, r3
  425212: f391 fc25    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39184a
  425216: ab04         	add	r3, sp, #0x10
  425218: 4618         	mov	r0, r3
  42521a: f365 f8ef    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3651de
  42521e: 1d2e         	adds	r6, r5, #0x4
  425220: 3c01         	subs	r4, #0x1
  425222: ab04         	add	r3, sp, #0x10
  425224: 4618         	mov	r0, r3
  425226: f365 f8e5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3651ca
  42522a: ab04         	add	r3, sp, #0x10
  42522c: 4630         	mov	r0, r6
  42522e: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x4253a0 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1b0>
  425230: 447a         	add	r2, pc
  425232: 4611         	mov	r1, r2
  425234: 461a         	mov	r2, r3
  425236: f391 fc13    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x391826
  42523a: ab04         	add	r3, sp, #0x10
  42523c: 4618         	mov	r0, r3
  42523e: f365 f8dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3651ba
  425242: 3604         	adds	r6, #0x4
  425244: 3c01         	subs	r4, #0x1
  425246: ab04         	add	r3, sp, #0x10
  425248: 4618         	mov	r0, r3
  42524a: f365 f8d3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3651a6
  42524e: ab04         	add	r3, sp, #0x10
  425250: 4630         	mov	r0, r6
  425252: 4a54         	ldr	r2, [pc, #0x150]        @ 0x4253a4 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1b4>
  425254: 447a         	add	r2, pc
  425256: 4611         	mov	r1, r2
  425258: 461a         	mov	r2, r3
  42525a: f391 fc01    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x391802
  42525e: ab04         	add	r3, sp, #0x10
  425260: 4618         	mov	r0, r3
  425262: f365 f8cb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x365196
  425266: 3604         	adds	r6, #0x4
  425268: 3c01         	subs	r4, #0x1
  42526a: ab04         	add	r3, sp, #0x10
  42526c: 4618         	mov	r0, r3
  42526e: f365 f8c1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x365182
  425272: ab04         	add	r3, sp, #0x10
  425274: 4630         	mov	r0, r6
  425276: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x4253a8 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1b8>
  425278: 447a         	add	r2, pc
  42527a: 4611         	mov	r1, r2
  42527c: 461a         	mov	r2, r3
  42527e: f391 fbef    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3917de
  425282: ab04         	add	r3, sp, #0x10
  425284: 4618         	mov	r0, r3
  425286: f365 f8b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x365172
  42528a: 3604         	adds	r6, #0x4
  42528c: 3c01         	subs	r4, #0x1
  42528e: ab04         	add	r3, sp, #0x10
  425290: 4618         	mov	r0, r3
  425292: f365 f8af    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36515e
  425296: ab04         	add	r3, sp, #0x10
  425298: 4630         	mov	r0, r6
  42529a: 4a44         	ldr	r2, [pc, #0x110]        @ 0x4253ac <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1bc>
  42529c: 447a         	add	r2, pc
  42529e: 4611         	mov	r1, r2
  4252a0: 461a         	mov	r2, r3
  4252a2: f391 fbdd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3917ba
  4252a6: ab04         	add	r3, sp, #0x10
  4252a8: 4618         	mov	r0, r3
  4252aa: f365 f8a7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36514e
  4252ae: 3604         	adds	r6, #0x4
  4252b0: 3c01         	subs	r4, #0x1
  4252b2: ab04         	add	r3, sp, #0x10
  4252b4: 4618         	mov	r0, r3
  4252b6: f365 f89d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36513a
  4252ba: ab04         	add	r3, sp, #0x10
  4252bc: 4630         	mov	r0, r6
  4252be: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x4253b0 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1c0>
  4252c0: 447a         	add	r2, pc
  4252c2: 4611         	mov	r1, r2
  4252c4: 461a         	mov	r2, r3
  4252c6: f391 fbcb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x391796
  4252ca: ab04         	add	r3, sp, #0x10
  4252cc: 4618         	mov	r0, r3
  4252ce: f365 f895    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36512a
  4252d2: 3604         	adds	r6, #0x4
  4252d4: 3c01         	subs	r4, #0x1
  4252d6: ab04         	add	r3, sp, #0x10
  4252d8: 4618         	mov	r0, r3
  4252da: f365 f88b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x365116
  4252de: ab04         	add	r3, sp, #0x10
  4252e0: 4630         	mov	r0, r6
  4252e2: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x4253b4 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1c4>
  4252e4: 447a         	add	r2, pc
  4252e6: 4611         	mov	r1, r2
  4252e8: 461a         	mov	r2, r3
  4252ea: f391 fbb9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x391772
  4252ee: ab04         	add	r3, sp, #0x10
  4252f0: 4618         	mov	r0, r3
  4252f2: f365 f883    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x365106
  4252f6: 9b01         	ldr	r3, [sp, #0x4]
  4252f8: aa05         	add	r2, sp, #0x14
  4252fa: 009b         	lsls	r3, r3, #0x2
  4252fc: 4413         	add	r3, r2
  4252fe: 9803         	ldr	r0, [sp, #0xc]
  425300: 4619         	mov	r1, r3
  425302: f391 f8f1    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3911e2
  425306: bf00         	nop
  425308: ac05         	add	r4, sp, #0x14
  42530a: 341c         	adds	r4, #0x1c
  42530c: ab05         	add	r3, sp, #0x14
  42530e: 429c         	cmp	r4, r3
  425310: d041         	beq	0x425396 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1a6> @ imm = #0x82
  425312: 3c04         	subs	r4, #0x4
  425314: 4620         	mov	r0, r4
  425316: f390 fafd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3905fa
  42531a: e7f7         	b	0x42530c <LeaderBoardBridge::getCategory(ELeaderboardType)+0x11c> @ imm = #-0x12
  42531c: ab04         	add	r3, sp, #0x10
  42531e: 4618         	mov	r0, r3
  425320: f365 f86c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3650d8
  425324: e01c         	b	0x425360 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x170> @ imm = #0x38
  425326: ab04         	add	r3, sp, #0x10
  425328: 4618         	mov	r0, r3
  42532a: f365 f867    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3650ce
  42532e: e017         	b	0x425360 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x170> @ imm = #0x2e
  425330: ab04         	add	r3, sp, #0x10
  425332: 4618         	mov	r0, r3
  425334: f365 f862    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3650c4
  425338: e012         	b	0x425360 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x170> @ imm = #0x24
  42533a: ab04         	add	r3, sp, #0x10
  42533c: 4618         	mov	r0, r3
  42533e: f365 f85d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3650ba
  425342: e00d         	b	0x425360 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x170> @ imm = #0x1a
  425344: ab04         	add	r3, sp, #0x10
  425346: 4618         	mov	r0, r3
  425348: f365 f858    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3650b0
  42534c: e008         	b	0x425360 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x170> @ imm = #0x10
  42534e: ab04         	add	r3, sp, #0x10
  425350: 4618         	mov	r0, r3
  425352: f365 f853    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3650a6
  425356: e003         	b	0x425360 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x170> @ imm = #0x6
  425358: ab04         	add	r3, sp, #0x10
  42535a: 4618         	mov	r0, r3
  42535c: f365 f84e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36509c
  425360: 2d00         	cmp	r5, #0x0
  425362: d00a         	beq	0x42537a <LeaderBoardBridge::getCategory(ELeaderboardType)+0x18a> @ imm = #0x14
  425364: f1c4 0306    	rsb.w	r3, r4, #0x6
  425368: 009b         	lsls	r3, r3, #0x2
  42536a: 18ec         	adds	r4, r5, r3
  42536c: 42ac         	cmp	r4, r5
  42536e: d004         	beq	0x42537a <LeaderBoardBridge::getCategory(ELeaderboardType)+0x18a> @ imm = #0x8
  425370: 3c04         	subs	r4, #0x4
  425372: 4620         	mov	r0, r4
  425374: f390 face    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39059c
  425378: e7f8         	b	0x42536c <LeaderBoardBridge::getCategory(ELeaderboardType)+0x17c> @ imm = #-0x10
  42537a: f362 fe97    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362d2e
  42537e: ac05         	add	r4, sp, #0x14
  425380: 341c         	adds	r4, #0x1c
  425382: ab05         	add	r3, sp, #0x14
  425384: 429c         	cmp	r4, r3
  425386: d004         	beq	0x425392 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x1a2> @ imm = #0x8
  425388: 3c04         	subs	r4, #0x4
  42538a: 4620         	mov	r0, r4
  42538c: f390 fac2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x390584
  425390: e7f7         	b	0x425382 <LeaderBoardBridge::getCategory(ELeaderboardType)+0x192> @ imm = #-0x12
  425392: f362 fe8b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362d16
  425396: 9803         	ldr	r0, [sp, #0xc]
  425398: b00c         	add	sp, #0x30
  42539a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x42539b); words below are literal-pool data ---
  42539c: 7518         	strb	r0, [r3, #0x14]
  42539e: 003b         	movs	r3, r7
  4253a0: 7508         	strb	r0, [r1, #0x14]
  4253a2: 003b         	movs	r3, r7
  4253a4: 74f4         	strb	r4, [r6, #0x13]
  4253a6: 003b         	movs	r3, r7
  4253a8: 74d8         	strb	r0, [r3, #0x13]
  4253aa: 003b         	movs	r3, r7
  4253ac: 74bc         	strb	r4, [r7, #0x12]
  4253ae: 003b         	movs	r3, r7
  4253b0: 74a4         	strb	r4, [r4, #0x12]
  4253b2: 003b         	movs	r3, r7
  4253b4: 7490         	strb	r0, [r2, #0x12]
  4253b6: 003b         	movs	r3, r7

// ==== LeaderBoardBridge::getCachedPlayerSkill
//      file offset 0x4253b8 (= ELF address; Ghidra 0x4353b8), 32 bytes, Thumb-2
  4253b8: b082         	sub	sp, #0x8
  4253ba: 9001         	str	r0, [sp, #0x4]
  4253bc: 4a04         	ldr	r2, [pc, #0x10]         @ 0x4253d0 <LeaderBoardBridge::getCachedPlayerSkill()+0x18>
  4253be: 447a         	add	r2, pc
  4253c0: 4b04         	ldr	r3, [pc, #0x10]         @ 0x4253d4 <LeaderBoardBridge::getCachedPlayerSkill()+0x1c>
  4253c2: 58d3         	ldr	r3, [r2, r3]
  4253c4: 681b         	ldr	r3, [r3]
  4253c6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4253ca: 4618         	mov	r0, r3
  4253cc: b002         	add	sp, #0x8
  4253ce: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x4253cf); words below are literal-pool data ---
  4253d0: d64a         	bvs	0x425468 <LeaderBoardBridge::calcPlayerPoints()+0x60> @ imm = #0x94
  4253d2: 0050         	lsls	r0, r2, #0x1
  4253d4: e014         	b	0x425400 <LeaderBoardBridge::calcPlayerExp()+0x1c> @ imm = #0x28
  4253d6: ffff b084    	<unknown>

// ==== LeaderBoardBridge::updatePlayerSkill
//      file offset 0x4253d8 (= ELF address; Ghidra 0x4353d8), 12 bytes, Thumb-2
  4253d8: b084         	sub	sp, #0x10
  4253da: 9003         	str	r0, [sp, #0xc]
  4253dc: 9102         	str	r1, [sp, #0x8]
  4253de: 9201         	str	r2, [sp, #0x4]
  4253e0: b004         	add	sp, #0x10
  4253e2: 4770         	bx	lr

// ==== LeaderBoardBridge::calcPlayerExp
//      file offset 0x4253e4 (= ELF address; Ghidra 0x4353e4), 34 bytes, Thumb-2
  4253e4: b500         	push	{lr}
  4253e6: b085         	sub	sp, #0x14
  4253e8: 9001         	str	r0, [sp, #0x4]
  4253ea: f7ff fe65    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x336
  4253ee: 4603         	mov	r3, r0
  4253f0: 4618         	mov	r0, r3
  4253f2: 2100         	movs	r1, #0x0
  4253f4: f000 f99e    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0x33c
  4253f8: 4603         	mov	r3, r0
  4253fa: 9303         	str	r3, [sp, #0xc]
  4253fc: 9b03         	ldr	r3, [sp, #0xc]
  4253fe: 4618         	mov	r0, r3
  425400: b005         	add	sp, #0x14
  425402: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::calcPlayerPoints
//      file offset 0x425408 (= ELF address; Ghidra 0x435408), 404 bytes, Thumb-2
  425408: b510         	push	{r4, lr}
  42540a: b086         	sub	sp, #0x18
  42540c: 9001         	str	r0, [sp, #0x4]
  42540e: 2300         	movs	r3, #0x0
  425410: 9304         	str	r3, [sp, #0x10]
  425412: ab02         	add	r3, sp, #0x8
  425414: 4618         	mov	r0, r3
  425416: f364 ffed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x364fda
  42541a: aa03         	add	r2, sp, #0xc
  42541c: ab02         	add	r3, sp, #0x8
  42541e: 4610         	mov	r0, r2
  425420: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x42558c <LeaderBoardBridge::calcPlayerPoints()+0x184>
  425422: 447a         	add	r2, pc
  425424: 4611         	mov	r1, r2
  425426: 461a         	mov	r2, r3
  425428: f391 fb1a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x391634
  42542c: ab03         	add	r3, sp, #0xc
  42542e: 4618         	mov	r0, r3
  425430: f00c f996    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc32c
  425434: 4603         	mov	r3, r0
  425436: 461c         	mov	r4, r3
  425438: ab03         	add	r3, sp, #0xc
  42543a: 4618         	mov	r0, r3
  42543c: f390 fa6a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3904d4
  425440: ab02         	add	r3, sp, #0x8
  425442: 4618         	mov	r0, r3
  425444: f364 ffda    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364fb4
  425448: 2c00         	cmp	r4, #0x0
  42544a: d003         	beq	0x425454 <LeaderBoardBridge::calcPlayerPoints()+0x4c> @ imm = #0x6
  42544c: 9b04         	ldr	r3, [sp, #0x10]
  42544e: f603 33b8    	addw	r3, r3, #0xbb8
  425452: 9304         	str	r3, [sp, #0x10]
  425454: ab02         	add	r3, sp, #0x8
  425456: 4618         	mov	r0, r3
  425458: f364 ffcc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x364f98
  42545c: aa03         	add	r2, sp, #0xc
  42545e: ab02         	add	r3, sp, #0x8
  425460: 4610         	mov	r0, r2
  425462: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x425590 <LeaderBoardBridge::calcPlayerPoints()+0x188>
  425464: 447a         	add	r2, pc
  425466: 4611         	mov	r1, r2
  425468: 461a         	mov	r2, r3
  42546a: f391 faf9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3915f2
  42546e: ab03         	add	r3, sp, #0xc
  425470: 4618         	mov	r0, r3
  425472: f00c f975    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc2ea
  425476: 4603         	mov	r3, r0
  425478: 461c         	mov	r4, r3
  42547a: ab03         	add	r3, sp, #0xc
  42547c: 4618         	mov	r0, r3
  42547e: f390 fa49    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x390492
  425482: ab02         	add	r3, sp, #0x8
  425484: 4618         	mov	r0, r3
  425486: f364 ffb9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364f72
  42548a: 2c00         	cmp	r4, #0x0
  42548c: d003         	beq	0x425496 <LeaderBoardBridge::calcPlayerPoints()+0x8e> @ imm = #0x6
  42548e: 9b04         	ldr	r3, [sp, #0x10]
  425490: f603 431c    	addw	r3, r3, #0xc1c
  425494: 9304         	str	r3, [sp, #0x10]
  425496: ab02         	add	r3, sp, #0x8
  425498: 4618         	mov	r0, r3
  42549a: f364 ffab    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x364f56
  42549e: aa03         	add	r2, sp, #0xc
  4254a0: ab02         	add	r3, sp, #0x8
  4254a2: 4610         	mov	r0, r2
  4254a4: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x425594 <LeaderBoardBridge::calcPlayerPoints()+0x18c>
  4254a6: 447a         	add	r2, pc
  4254a8: 4611         	mov	r1, r2
  4254aa: 461a         	mov	r2, r3
  4254ac: f391 fad8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3915b0
  4254b0: ab03         	add	r3, sp, #0xc
  4254b2: 4618         	mov	r0, r3
  4254b4: f00c f954    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc2a8
  4254b8: 4603         	mov	r3, r0
  4254ba: 461c         	mov	r4, r3
  4254bc: ab03         	add	r3, sp, #0xc
  4254be: 4618         	mov	r0, r3
  4254c0: f390 fa28    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x390450
  4254c4: ab02         	add	r3, sp, #0x8
  4254c6: 4618         	mov	r0, r3
  4254c8: f364 ff98    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364f30
  4254cc: 2c00         	cmp	r4, #0x0
  4254ce: d003         	beq	0x4254d8 <LeaderBoardBridge::calcPlayerPoints()+0xd0> @ imm = #0x6
  4254d0: 9b04         	ldr	r3, [sp, #0x10]
  4254d2: f503 6348    	add.w	r3, r3, #0xc80
  4254d6: 9304         	str	r3, [sp, #0x10]
  4254d8: ab02         	add	r3, sp, #0x8
  4254da: 4618         	mov	r0, r3
  4254dc: f364 ff8a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x364f14
  4254e0: aa03         	add	r2, sp, #0xc
  4254e2: ab02         	add	r3, sp, #0x8
  4254e4: 4610         	mov	r0, r2
  4254e6: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x425598 <LeaderBoardBridge::calcPlayerPoints()+0x190>
  4254e8: 447a         	add	r2, pc
  4254ea: 4611         	mov	r1, r2
  4254ec: 461a         	mov	r2, r3
  4254ee: f391 fab7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39156e
  4254f2: ab03         	add	r3, sp, #0xc
  4254f4: 4618         	mov	r0, r3
  4254f6: f00c f933    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc266
  4254fa: 4603         	mov	r3, r0
  4254fc: 461c         	mov	r4, r3
  4254fe: ab03         	add	r3, sp, #0xc
  425500: 4618         	mov	r0, r3
  425502: f390 fa07    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39040e
  425506: ab02         	add	r3, sp, #0x8
  425508: 4618         	mov	r0, r3
  42550a: f364 ff77    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364eee
  42550e: 2c00         	cmp	r4, #0x0
  425510: d003         	beq	0x42551a <LeaderBoardBridge::calcPlayerPoints()+0x112> @ imm = #0x6
  425512: 9b04         	ldr	r3, [sp, #0x10]
  425514: f603 43e4    	addw	r3, r3, #0xce4
  425518: 9304         	str	r3, [sp, #0x10]
  42551a: 9801         	ldr	r0, [sp, #0x4]
  42551c: 2106         	movs	r1, #0x6
  42551e: f000 f909    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0x212
  425522: 4602         	mov	r2, r0
  425524: 9b04         	ldr	r3, [sp, #0x10]
  425526: 4413         	add	r3, r2
  425528: 9305         	str	r3, [sp, #0x14]
  42552a: 9b05         	ldr	r3, [sp, #0x14]
  42552c: e02b         	b	0x425586 <LeaderBoardBridge::calcPlayerPoints()+0x17e> @ imm = #0x56
  42552e: ab03         	add	r3, sp, #0xc
  425530: 4618         	mov	r0, r3
  425532: f390 f9ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3903de
  425536: e7ff         	b	0x425538 <LeaderBoardBridge::calcPlayerPoints()+0x130> @ imm = #-0x2
  425538: ab02         	add	r3, sp, #0x8
  42553a: 4618         	mov	r0, r3
  42553c: f364 ff5e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364ebc
  425540: f362 fdb4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362b68
  425544: ab03         	add	r3, sp, #0xc
  425546: 4618         	mov	r0, r3
  425548: f390 f9e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3903c8
  42554c: e7ff         	b	0x42554e <LeaderBoardBridge::calcPlayerPoints()+0x146> @ imm = #-0x2
  42554e: ab02         	add	r3, sp, #0x8
  425550: 4618         	mov	r0, r3
  425552: f364 ff53    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364ea6
  425556: f362 fda9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362b52
  42555a: ab03         	add	r3, sp, #0xc
  42555c: 4618         	mov	r0, r3
  42555e: f390 f9d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3903b2
  425562: e7ff         	b	0x425564 <LeaderBoardBridge::calcPlayerPoints()+0x15c> @ imm = #-0x2
  425564: ab02         	add	r3, sp, #0x8
  425566: 4618         	mov	r0, r3
  425568: f364 ff48    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364e90
  42556c: f362 fd9e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362b3c
  425570: ab03         	add	r3, sp, #0xc
  425572: 4618         	mov	r0, r3
  425574: f390 f9ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39039c
  425578: e7ff         	b	0x42557a <LeaderBoardBridge::calcPlayerPoints()+0x172> @ imm = #-0x2
  42557a: ab02         	add	r3, sp, #0x8
  42557c: 4618         	mov	r0, r3
  42557e: f364 ff3d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364e7a
  425582: f362 fd93    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362b26
  425586: 4618         	mov	r0, r3
  425588: b006         	add	sp, #0x18
  42558a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42558b); words below are literal-pool data ---
  42558c: 735a         	strb	r2, [r3, #0xd]
  42558e: 003b         	movs	r3, r7
  425590: 7338         	strb	r0, [r7, #0xc]
  425592: 003b         	movs	r3, r7
  425594: 7316         	strb	r6, [r2, #0xc]
  425596: 003b         	movs	r3, r7
  425598: 72f4         	strb	r4, [r6, #0xb]
  42559a: 003b         	movs	r3, r7

// ==== LeaderBoardBridge::statusChecker
//      file offset 0x42559c (= ELF address; Ghidra 0x43559c), 72 bytes, Thumb-2
  42559c: b500         	push	{lr}
  42559e: b083         	sub	sp, #0xc
  4255a0: 9001         	str	r0, [sp, #0x4]
  4255a2: 9100         	str	r1, [sp]
  4255a4: 9b01         	ldr	r3, [sp, #0x4]
  4255a6: f893 30ee    	ldrb.w	r3, [r3, #0xee]
  4255aa: 2b00         	cmp	r3, #0x0
  4255ac: d017         	beq	0x4255de <LeaderBoardBridge::statusChecker(float)+0x42> @ imm = #0x2e
  4255ae: 9b01         	ldr	r3, [sp, #0x4]
  4255b0: f893 30ec    	ldrb.w	r3, [r3, #0xec]
  4255b4: 2b00         	cmp	r3, #0x0
  4255b6: d006         	beq	0x4255c6 <LeaderBoardBridge::statusChecker(float)+0x2a> @ imm = #0xc
  4255b8: 9b01         	ldr	r3, [sp, #0x4]
  4255ba: 2200         	movs	r2, #0x0
  4255bc: f883 20ec    	strb.w	r2, [r3, #0xec]
  4255c0: 9801         	ldr	r0, [sp, #0x4]
  4255c2: f000 f851    	bl	0x425668 <LeaderBoardBridge::getServerScores()> @ imm = #0xa2
  4255c6: 9b01         	ldr	r3, [sp, #0x4]
  4255c8: f893 30ed    	ldrb.w	r3, [r3, #0xed]
  4255cc: 2b00         	cmp	r3, #0x0
  4255ce: d006         	beq	0x4255de <LeaderBoardBridge::statusChecker(float)+0x42> @ imm = #0xc
  4255d0: 9b01         	ldr	r3, [sp, #0x4]
  4255d2: 2200         	movs	r2, #0x0
  4255d4: f883 20ed    	strb.w	r2, [r3, #0xed]
  4255d8: 9801         	ldr	r0, [sp, #0x4]
  4255da: f000 f87f    	bl	0x4256dc <LeaderBoardBridge::sendServerScores()> @ imm = #0xfe
  4255de: b003         	add	sp, #0xc
  4255e0: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::getCategoryKey
//      file offset 0x4255e4 (= ELF address; Ghidra 0x4355e4), 132 bytes, Thumb-2
  4255e4: b510         	push	{r4, lr}
  4255e6: b086         	sub	sp, #0x18
  4255e8: 9003         	str	r0, [sp, #0xc]
  4255ea: 9102         	str	r1, [sp, #0x8]
  4255ec: 9201         	str	r2, [sp, #0x4]
  4255ee: f7ff fd63    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x53a
  4255f2: 4603         	mov	r3, r0
  4255f4: aa05         	add	r2, sp, #0x14
  4255f6: 4610         	mov	r0, r2
  4255f8: 4619         	mov	r1, r3
  4255fa: 9a01         	ldr	r2, [sp, #0x4]
  4255fc: f7ff fdf8    	bl	0x4251f0 <LeaderBoardBridge::getCategory(ELeaderboardType)> @ imm = #-0x410
  425600: ab05         	add	r3, sp, #0x14
  425602: 4618         	mov	r0, r3
  425604: f38f fe7c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38fcf8
  425608: 4603         	mov	r3, r0
  42560a: 4a16         	ldr	r2, [pc, #0x58]         @ 0x425664 <LeaderBoardBridge::getCategoryKey(ELeaderboardType)+0x80>
  42560c: 447a         	add	r2, pc
  42560e: 4610         	mov	r0, r2
  425610: 4619         	mov	r1, r3
  425612: f174 fa7d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1744fa
  425616: 4603         	mov	r3, r0
  425618: 4618         	mov	r0, r3
  42561a: f174 f985    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17430a
  42561e: 4604         	mov	r4, r0
  425620: ab04         	add	r3, sp, #0x10
  425622: 4618         	mov	r0, r3
  425624: f364 fee6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x364dcc
  425628: ab04         	add	r3, sp, #0x10
  42562a: 9803         	ldr	r0, [sp, #0xc]
  42562c: 4621         	mov	r1, r4
  42562e: 461a         	mov	r2, r3
  425630: f391 fa16    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39142c
  425634: ab04         	add	r3, sp, #0x10
  425636: 4618         	mov	r0, r3
  425638: f364 fee0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364dc0
  42563c: bf00         	nop
  42563e: ab05         	add	r3, sp, #0x14
  425640: 4618         	mov	r0, r3
  425642: f390 f967    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3902ce
  425646: e00a         	b	0x42565e <LeaderBoardBridge::getCategoryKey(ELeaderboardType)+0x7a> @ imm = #0x14
  425648: ab04         	add	r3, sp, #0x10
  42564a: 4618         	mov	r0, r3
  42564c: f364 fed6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x364dac
  425650: e7ff         	b	0x425652 <LeaderBoardBridge::getCategoryKey(ELeaderboardType)+0x6e> @ imm = #-0x2
  425652: ab05         	add	r3, sp, #0x14
  425654: 4618         	mov	r0, r3
  425656: f390 f95d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3902ba
  42565a: f362 fd27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362a4e
  42565e: 9803         	ldr	r0, [sp, #0xc]
  425660: b006         	add	sp, #0x18
  425662: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x425663); words below are literal-pool data ---
  425664: 71f0         	strb	r0, [r6, #0x7]
  425666: 003b         	movs	r3, r7

// ==== LeaderBoardBridge::getServerScores
//      file offset 0x425668 (= ELF address; Ghidra 0x435668), 74 bytes, Thumb-2
  425668: b500         	push	{lr}
  42566a: b085         	sub	sp, #0x14
  42566c: 9001         	str	r0, [sp, #0x4]
  42566e: f752 fa67    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xadb32
  425672: 4603         	mov	r3, r0
  425674: 4618         	mov	r0, r3
  425676: f752 ff05    	bl	0x378484 <NetworkManager::isPlayerAuthenticated()> @ imm = #-0xad1f6
  42567a: 4603         	mov	r3, r0
  42567c: f083 0301    	eor	r3, r3, #0x1
  425680: b2db         	uxtb	r3, r3
  425682: 2b00         	cmp	r3, #0x0
  425684: d004         	beq	0x425690 <LeaderBoardBridge::getServerScores()+0x28> @ imm = #0x8
  425686: 9b01         	ldr	r3, [sp, #0x4]
  425688: 2201         	movs	r2, #0x1
  42568a: f883 20ec    	strb.w	r2, [r3, #0xec]
  42568e: e00d         	b	0x4256ac <LeaderBoardBridge::getServerScores()+0x44> @ imm = #0x1a
  425690: 2300         	movs	r3, #0x0
  425692: 9303         	str	r3, [sp, #0xc]
  425694: e007         	b	0x4256a6 <LeaderBoardBridge::getServerScores()+0x3e> @ imm = #0xe
  425696: 9b03         	ldr	r3, [sp, #0xc]
  425698: 9801         	ldr	r0, [sp, #0x4]
  42569a: 4619         	mov	r1, r3
  42569c: f000 f832    	bl	0x425704 <LeaderBoardBridge::getServerScore(ELeaderboardType)> @ imm = #0x64
  4256a0: 9b03         	ldr	r3, [sp, #0xc]
  4256a2: 3301         	adds	r3, #0x1
  4256a4: 9303         	str	r3, [sp, #0xc]
  4256a6: 9b03         	ldr	r3, [sp, #0xc]
  4256a8: 2b06         	cmp	r3, #0x6
  4256aa: ddf4         	ble	0x425696 <LeaderBoardBridge::getServerScores()+0x2e> @ imm = #-0x18
  4256ac: b005         	add	sp, #0x14
  4256ae: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::setTryLoadScores
//      file offset 0x4256b4 (= ELF address; Ghidra 0x4356b4), 40 bytes, Thumb-2
  4256b4: b082         	sub	sp, #0x8
  4256b6: 9001         	str	r0, [sp, #0x4]
  4256b8: 460b         	mov	r3, r1
  4256ba: f88d 3003    	strb.w	r3, [sp, #0x3]
  4256be: 4a05         	ldr	r2, [pc, #0x14]         @ 0x4256d4 <LeaderBoardBridge::setTryLoadScores(bool)+0x20>
  4256c0: 447a         	add	r2, pc
  4256c2: 4b05         	ldr	r3, [pc, #0x14]         @ 0x4256d8 <LeaderBoardBridge::setTryLoadScores(bool)+0x24>
  4256c4: 58d3         	ldr	r3, [r2, r3]
  4256c6: 681b         	ldr	r3, [r3]
  4256c8: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  4256cc: f883 20ee    	strb.w	r2, [r3, #0xee]
  4256d0: b002         	add	sp, #0x8
  4256d2: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x4256d3); words below are literal-pool data ---
  4256d4: d348         	blo	0x425768 <LeaderBoardBridge::getScoreData(ELeaderboardType)+0x34> @ imm = #0x90
  4256d6: 0050         	lsls	r0, r2, #0x1
  4256d8: e014         	b	0x425704 <LeaderBoardBridge::getServerScore(ELeaderboardType)> @ imm = #0x28
  4256da: ffff b500    	<unknown>

// ==== LeaderBoardBridge::sendServerScores
//      file offset 0x4256dc (= ELF address; Ghidra 0x4356dc), 40 bytes, Thumb-2
  4256dc: b500         	push	{lr}
  4256de: b085         	sub	sp, #0x14
  4256e0: 9001         	str	r0, [sp, #0x4]
  4256e2: 2300         	movs	r3, #0x0
  4256e4: 9303         	str	r3, [sp, #0xc]
  4256e6: e007         	b	0x4256f8 <LeaderBoardBridge::sendServerScores()+0x1c> @ imm = #0xe
  4256e8: 9b03         	ldr	r3, [sp, #0xc]
  4256ea: 9801         	ldr	r0, [sp, #0x4]
  4256ec: 4619         	mov	r1, r3
  4256ee: f000 f815    	bl	0x42571c <LeaderBoardBridge::sendServerScore(ELeaderboardType)> @ imm = #0x2a
  4256f2: 9b03         	ldr	r3, [sp, #0xc]
  4256f4: 3301         	adds	r3, #0x1
  4256f6: 9303         	str	r3, [sp, #0xc]
  4256f8: 9b03         	ldr	r3, [sp, #0xc]
  4256fa: 2b06         	cmp	r3, #0x6
  4256fc: ddf4         	ble	0x4256e8 <LeaderBoardBridge::sendServerScores()+0xc> @ imm = #-0x18
  4256fe: b005         	add	sp, #0x14
  425700: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::getServerScore
//      file offset 0x425704 (= ELF address; Ghidra 0x435704), 22 bytes, Thumb-2
  425704: b500         	push	{lr}
  425706: b083         	sub	sp, #0xc
  425708: 9001         	str	r0, [sp, #0x4]
  42570a: 9100         	str	r1, [sp]
  42570c: 9801         	ldr	r0, [sp, #0x4]
  42570e: 9900         	ldr	r1, [sp]
  425710: f00d ffa8    	bl	0x433664 <LeaderBoardBridge::retrieveScore(ELeaderboardType)> @ imm = #0xdf50
  425714: b003         	add	sp, #0xc
  425716: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::sendServerScore
//      file offset 0x42571c (= ELF address; Ghidra 0x43571c), 22 bytes, Thumb-2
  42571c: b500         	push	{lr}
  42571e: b083         	sub	sp, #0xc
  425720: 9001         	str	r0, [sp, #0x4]
  425722: 9100         	str	r1, [sp]
  425724: 9801         	ldr	r0, [sp, #0x4]
  425726: 9900         	ldr	r1, [sp]
  425728: f00d fff4    	bl	0x433714 <LeaderBoardBridge::reportScore(ELeaderboardType)> @ imm = #0xdfe8
  42572c: b003         	add	sp, #0xc
  42572e: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::getScoreData
//      file offset 0x425734 (= ELF address; Ghidra 0x435734), 88 bytes, Thumb-2
  425734: b510         	push	{r4, lr}
  425736: b084         	sub	sp, #0x10
  425738: 9001         	str	r0, [sp, #0x4]
  42573a: 9100         	str	r1, [sp]
  42573c: f7ff fcbc    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x688
  425740: 4603         	mov	r3, r0
  425742: aa02         	add	r2, sp, #0x8
  425744: 4610         	mov	r0, r2
  425746: 4619         	mov	r1, r3
  425748: 9a00         	ldr	r2, [sp]
  42574a: f7ff ff4b    	bl	0x4255e4 <LeaderBoardBridge::getCategoryKey(ELeaderboardType)> @ imm = #-0x16a
  42574e: f1bc ff6d    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bceda
  425752: 4604         	mov	r4, r0
  425754: ab02         	add	r3, sp, #0x8
  425756: 4618         	mov	r0, r3
  425758: f38f fdd2    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38fba4
  42575c: 4603         	mov	r3, r0
  42575e: 4620         	mov	r0, r4
  425760: 4619         	mov	r1, r3
  425762: 2200         	movs	r2, #0x0
  425764: f1bc fd60    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x1bcac0
  425768: 4603         	mov	r3, r0
  42576a: 9303         	str	r3, [sp, #0xc]
  42576c: 9c03         	ldr	r4, [sp, #0xc]
  42576e: ab02         	add	r3, sp, #0x8
  425770: 4618         	mov	r0, r3
  425772: f390 f8cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39019e
  425776: 4623         	mov	r3, r4
  425778: e005         	b	0x425786 <LeaderBoardBridge::getScoreData(ELeaderboardType)+0x52> @ imm = #0xa
  42577a: ab02         	add	r3, sp, #0x8
  42577c: 4618         	mov	r0, r3
  42577e: f390 f8c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x390192
  425782: f362 fc93    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x362926
  425786: 4618         	mov	r0, r3
  425788: b004         	add	sp, #0x10
  42578a: bd10         	pop	{r4, pc}

// ==== LeaderBoardBridge::setLocalScore
//      file offset 0x42578c (= ELF address; Ghidra 0x43578c), 84 bytes, Thumb-2
  42578c: b510         	push	{r4, lr}
  42578e: b086         	sub	sp, #0x18
  425790: 9003         	str	r0, [sp, #0xc]
  425792: 9102         	str	r1, [sp, #0x8]
  425794: e9cd 2300    	strd	r2, r3, [sp]
  425798: f7ff fc8e    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x6e4
  42579c: 4603         	mov	r3, r0
  42579e: aa05         	add	r2, sp, #0x14
  4257a0: 4610         	mov	r0, r2
  4257a2: 4619         	mov	r1, r3
  4257a4: 9a02         	ldr	r2, [sp, #0x8]
  4257a6: f7ff ff1d    	bl	0x4255e4 <LeaderBoardBridge::getCategoryKey(ELeaderboardType)> @ imm = #-0x1c6
  4257aa: f1bc ff3f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bce7e
  4257ae: 4604         	mov	r4, r0
  4257b0: ab05         	add	r3, sp, #0x14
  4257b2: 4618         	mov	r0, r3
  4257b4: f38f fda4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38fb48
  4257b8: 4602         	mov	r2, r0
  4257ba: 9b00         	ldr	r3, [sp]
  4257bc: 4620         	mov	r0, r4
  4257be: 4611         	mov	r1, r2
  4257c0: 461a         	mov	r2, r3
  4257c2: f1bc feed    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x1bcdda
  4257c6: ab05         	add	r3, sp, #0x14
  4257c8: 4618         	mov	r0, r3
  4257ca: f390 f8a3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x390146
  4257ce: e005         	b	0x4257dc <LeaderBoardBridge::setLocalScore(ELeaderboardType, long long)+0x50> @ imm = #0xa
  4257d0: ab05         	add	r3, sp, #0x14
  4257d2: 4618         	mov	r0, r3
  4257d4: f390 f89e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39013c
  4257d8: f362 fc68    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3628d0
  4257dc: b006         	add	sp, #0x18
  4257de: bd10         	pop	{r4, pc}

// ==== LeaderBoardBridge::addLocalScore
//      file offset 0x4257e0 (= ELF address; Ghidra 0x4357e0), 118 bytes, Thumb-2
  4257e0: b510         	push	{r4, lr}
  4257e2: b086         	sub	sp, #0x18
  4257e4: 9003         	str	r0, [sp, #0xc]
  4257e6: 9102         	str	r1, [sp, #0x8]
  4257e8: e9cd 2300    	strd	r2, r3, [sp]
  4257ec: f7ff fc64    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x738
  4257f0: 4603         	mov	r3, r0
  4257f2: aa04         	add	r2, sp, #0x10
  4257f4: 4610         	mov	r0, r2
  4257f6: 4619         	mov	r1, r3
  4257f8: 9a02         	ldr	r2, [sp, #0x8]
  4257fa: f7ff fef3    	bl	0x4255e4 <LeaderBoardBridge::getCategoryKey(ELeaderboardType)> @ imm = #-0x21a
  4257fe: f1bc ff15    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bce2a
  425802: 4604         	mov	r4, r0
  425804: ab04         	add	r3, sp, #0x10
  425806: 4618         	mov	r0, r3
  425808: f38f fd7a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38faf4
  42580c: 4603         	mov	r3, r0
  42580e: 4620         	mov	r0, r4
  425810: 4619         	mov	r1, r3
  425812: 2200         	movs	r2, #0x0
  425814: f1bc fd08    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x1bca10
  425818: 4603         	mov	r3, r0
  42581a: 9305         	str	r3, [sp, #0x14]
  42581c: f1bc ff06    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bce0c
  425820: 4604         	mov	r4, r0
  425822: ab04         	add	r3, sp, #0x10
  425824: 4618         	mov	r0, r3
  425826: f38f fd6b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38fad6
  42582a: 4602         	mov	r2, r0
  42582c: 9900         	ldr	r1, [sp]
  42582e: 9b05         	ldr	r3, [sp, #0x14]
  425830: 440b         	add	r3, r1
  425832: 4620         	mov	r0, r4
  425834: 4611         	mov	r1, r2
  425836: 461a         	mov	r2, r3
  425838: f1bc feb2    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x1bcd64
  42583c: ab04         	add	r3, sp, #0x10
  42583e: 4618         	mov	r0, r3
  425840: f390 f868    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3900d0
  425844: e005         	b	0x425852 <LeaderBoardBridge::addLocalScore(ELeaderboardType, long long)+0x72> @ imm = #0xa
  425846: ab04         	add	r3, sp, #0x10
  425848: 4618         	mov	r0, r3
  42584a: f390 f863    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3900c6
  42584e: f362 fc2d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36285a
  425852: b006         	add	sp, #0x18
  425854: bd10         	pop	{r4, pc}

// ==== LeaderBoardBridge::updateLocalScore
//      file offset 0x425858 (= ELF address; Ghidra 0x435858), 134 bytes, Thumb-2
  425858: b510         	push	{r4, lr}
  42585a: b086         	sub	sp, #0x18
  42585c: 9003         	str	r0, [sp, #0xc]
  42585e: 9102         	str	r1, [sp, #0x8]
  425860: e9cd 2300    	strd	r2, r3, [sp]
  425864: f7ff fc28    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0x7b0
  425868: 4603         	mov	r3, r0
  42586a: aa04         	add	r2, sp, #0x10
  42586c: 4610         	mov	r0, r2
  42586e: 4619         	mov	r1, r3
  425870: 9a02         	ldr	r2, [sp, #0x8]
  425872: f7ff feb7    	bl	0x4255e4 <LeaderBoardBridge::getCategoryKey(ELeaderboardType)> @ imm = #-0x292
  425876: f1bc fed9    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bcdb2
  42587a: 4604         	mov	r4, r0
  42587c: ab04         	add	r3, sp, #0x10
  42587e: 4618         	mov	r0, r3
  425880: f38f fd3e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38fa7c
  425884: 4603         	mov	r3, r0
  425886: 4620         	mov	r0, r4
  425888: 4619         	mov	r1, r3
  42588a: 2200         	movs	r2, #0x0
  42588c: f1bc fccc    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x1bc998
  425890: 4603         	mov	r3, r0
  425892: 9305         	str	r3, [sp, #0x14]
  425894: 9b05         	ldr	r3, [sp, #0x14]
  425896: 4618         	mov	r0, r3
  425898: ea4f 71e0    	asr.w	r1, r0, #0x1f
  42589c: e9dd 2300    	ldrd	r2, r3, [sp]
  4258a0: 4290         	cmp	r0, r2
  4258a2: eb71 0c03    	sbcs.w	r12, r1, r3
  4258a6: da0d         	bge	0x4258c4 <LeaderBoardBridge::updateLocalScore(ELeaderboardType, long long)+0x6c> @ imm = #0x1a
  4258a8: f1bc fec0    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bcd80
  4258ac: 4604         	mov	r4, r0
  4258ae: ab04         	add	r3, sp, #0x10
  4258b0: 4618         	mov	r0, r3
  4258b2: f38f fd25    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38fa4a
  4258b6: 4602         	mov	r2, r0
  4258b8: 9b00         	ldr	r3, [sp]
  4258ba: 4620         	mov	r0, r4
  4258bc: 4611         	mov	r1, r2
  4258be: 461a         	mov	r2, r3
  4258c0: f1bc fe6e    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x1bccdc
  4258c4: ab04         	add	r3, sp, #0x10
  4258c6: 4618         	mov	r0, r3
  4258c8: f390 f824    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x390048
  4258cc: e005         	b	0x4258da <LeaderBoardBridge::updateLocalScore(ELeaderboardType, long long)+0x82> @ imm = #0xa
  4258ce: ab04         	add	r3, sp, #0x10
  4258d0: 4618         	mov	r0, r3
  4258d2: f390 f81f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39003e
  4258d6: f362 fbe9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3627d2
  4258da: b006         	add	sp, #0x18
  4258dc: bd10         	pop	{r4, pc}

// ==== LeaderBoardBridge::platformInit
//      file offset 0x433568 (= ELF address; Ghidra 0x443568), 24 bytes, Thumb-2
  433568: b500         	push	{lr}
  43356a: b083         	sub	sp, #0xc
  43356c: 9001         	str	r0, [sp, #0x4]
  43356e: f7f1 fda3    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0xe4ba
  433572: 4603         	mov	r3, r0
  433574: 4618         	mov	r0, r3
  433576: f7f2 f877    	bl	0x425668 <LeaderBoardBridge::getServerScores()> @ imm = #-0xdf12
  43357a: b003         	add	sp, #0xc
  43357c: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::retrieveScore
//      file offset 0x433664 (= ELF address; Ghidra 0x443664), 176 bytes, Thumb-2
  433664: b510         	push	{r4, lr}
  433666: b08a         	sub	sp, #0x28
  433668: 9001         	str	r0, [sp, #0x4]
  43366a: 9100         	str	r1, [sp]
  43366c: 4c27         	ldr	r4, [pc, #0x9c]         @ 0x43370c <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0xa8>
  43366e: 447c         	add	r4, pc
  433670: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x433710 <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0xac>
  433672: 58e3         	ldr	r3, [r4, r3]
  433674: 681b         	ldr	r3, [r3]
  433676: 9309         	str	r3, [sp, #0x24]
  433678: ab03         	add	r3, sp, #0xc
  43367a: 4618         	mov	r0, r3
  43367c: 9900         	ldr	r1, [sp]
  43367e: f7ff fe05    	bl	0x43328c <getAndroidId(ELeaderboardType)> @ imm = #-0x3f6
  433682: ab03         	add	r3, sp, #0xc
  433684: 4618         	mov	r0, r3
  433686: f381 fce9    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3819d2
  43368a: 4603         	mov	r3, r0
  43368c: 2b00         	cmp	r3, #0x0
  43368e: bf0c         	ite	eq
  433690: 2300         	moveq	r3, #0x0
  433692: 2301         	movne	r3, #0x1
  433694: b2db         	uxtb	r3, r3
  433696: 2b00         	cmp	r3, #0x0
  433698: d019         	beq	0x4336ce <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0x6a> @ imm = #0x32
  43369a: aa04         	add	r2, sp, #0x10
  43369c: ab03         	add	r3, sp, #0xc
  43369e: 4610         	mov	r0, r2
  4336a0: 4619         	mov	r1, r3
  4336a2: f382 ff21    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x382e42
  4336a6: 9b01         	ldr	r3, [sp, #0x4]
  4336a8: aa05         	add	r2, sp, #0x14
  4336aa: 4610         	mov	r0, r2
  4336ac: 4619         	mov	r1, r3
  4336ae: f000 f897    	bl	0x4337e0 <LeaderBoardBridge::showLeaderboard(ELeaderboardType)+0x58> @ imm = #0x12e
  4336b2: aa04         	add	r2, sp, #0x10
  4336b4: ab05         	add	r3, sp, #0x14
  4336b6: 4610         	mov	r0, r2
  4336b8: 4619         	mov	r1, r3
  4336ba: f6ff fea5    	bl	0x333408 <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)> @ imm = #-0x1002b6
  4336be: ab05         	add	r3, sp, #0x14
  4336c0: 4618         	mov	r0, r3
  4336c2: f6ff fe95    	bl	0x3333f0 <std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>::~function()> @ imm = #-0x1002d6
  4336c6: ab04         	add	r3, sp, #0x10
  4336c8: 4618         	mov	r0, r3
  4336ca: f382 f923    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x382246
  4336ce: ab03         	add	r3, sp, #0xc
  4336d0: 4618         	mov	r0, r3
  4336d2: f382 f91f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38223e
  4336d6: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x433710 <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0xac>
  4336d8: 58e3         	ldr	r3, [r4, r3]
  4336da: 9a09         	ldr	r2, [sp, #0x24]
  4336dc: 681b         	ldr	r3, [r3]
  4336de: 429a         	cmp	r2, r3
  4336e0: d012         	beq	0x433708 <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0xa4> @ imm = #0x24
  4336e2: e00f         	b	0x433704 <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0xa0> @ imm = #0x1e
  4336e4: ab05         	add	r3, sp, #0x14
  4336e6: 4618         	mov	r0, r3
  4336e8: f6ff fe82    	bl	0x3333f0 <std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>::~function()> @ imm = #-0x1002fc
  4336ec: e7ff         	b	0x4336ee <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0x8a> @ imm = #-0x2
  4336ee: ab04         	add	r3, sp, #0x10
  4336f0: 4618         	mov	r0, r3
  4336f2: f382 f90f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38221e
  4336f6: e7ff         	b	0x4336f8 <LeaderBoardBridge::retrieveScore(ELeaderboardType)+0x94> @ imm = #-0x2
  4336f8: ab03         	add	r3, sp, #0xc
  4336fa: 4618         	mov	r0, r3
  4336fc: f382 f90a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x382214
  433700: f354 fcd4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3549a8
  433704: f6a2 ec30    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x15d7a0
  433708: b00a         	add	sp, #0x28
  43370a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x43370b); words below are literal-pool data ---
  43370c: f39a 004f    	<unknown>
  433710: d72c         	bvc	0x43376c <LeaderBoardBridge::reportScore(ELeaderboardType)+0x58> @ imm = #0x58
  433712: ffff b500    	<unknown>

// ==== LeaderBoardBridge::reportScore
//      file offset 0x433714 (= ELF address; Ghidra 0x443714), 116 bytes, Thumb-2
  433714: b500         	push	{lr}
  433716: b087         	sub	sp, #0x1c
  433718: 9001         	str	r0, [sp, #0x4]
  43371a: 9100         	str	r1, [sp]
  43371c: ab03         	add	r3, sp, #0xc
  43371e: 4618         	mov	r0, r3
  433720: 9900         	ldr	r1, [sp]
  433722: f7ff fdb3    	bl	0x43328c <getAndroidId(ELeaderboardType)> @ imm = #-0x49a
  433726: ab03         	add	r3, sp, #0xc
  433728: 4618         	mov	r0, r3
  43372a: f381 fc97    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x38192e
  43372e: 4603         	mov	r3, r0
  433730: 2b00         	cmp	r3, #0x0
  433732: bf0c         	ite	eq
  433734: 2300         	moveq	r3, #0x0
  433736: 2301         	movne	r3, #0x1
  433738: b2db         	uxtb	r3, r3
  43373a: 2b00         	cmp	r3, #0x0
  43373c: d016         	beq	0x43376c <LeaderBoardBridge::reportScore(ELeaderboardType)+0x58> @ imm = #0x2c
  43373e: f7f1 fcbb    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #-0xe68a
  433742: 4603         	mov	r3, r0
  433744: 4618         	mov	r0, r3
  433746: 9900         	ldr	r1, [sp]
  433748: f7f1 fff4    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #-0xe018
  43374c: 4603         	mov	r3, r0
  43374e: 461a         	mov	r2, r3
  433750: ea4f 73e2    	asr.w	r3, r2, #0x1f
  433754: e9cd 2304    	strd	r2, r3, [sp, #16]
  433758: ab03         	add	r3, sp, #0xc
  43375a: 4618         	mov	r0, r3
  43375c: f381 fdd0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x381ba0
  433760: 4603         	mov	r3, r0
  433762: 4618         	mov	r0, r3
  433764: e9dd 2304    	ldrd	r2, r3, [sp, #16]
  433768: f6ff fd32    	bl	0x3331d0 <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)> @ imm = #-0x10059c
  43376c: ab03         	add	r3, sp, #0xc
  43376e: 4618         	mov	r0, r3
  433770: f382 f8d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3821a0
  433774: e005         	b	0x433782 <LeaderBoardBridge::reportScore(ELeaderboardType)+0x6e> @ imm = #0xa
  433776: ab03         	add	r3, sp, #0xc
  433778: 4618         	mov	r0, r3
  43377a: f382 f8cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x382196
  43377e: f354 fc95    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35492a
  433782: b007         	add	sp, #0x1c
  433784: f85d fb04    	ldr	pc, [sp], #4

// ==== LeaderBoardBridge::showLeaderboard
//      file offset 0x433788 (= ELF address; Ghidra 0x443788), 74 bytes, Thumb-2
  433788: b500         	push	{lr}
  43378a: b085         	sub	sp, #0x14
  43378c: 9001         	str	r0, [sp, #0x4]
  43378e: 9100         	str	r1, [sp]
  433790: ab03         	add	r3, sp, #0xc
  433792: 4618         	mov	r0, r3
  433794: 9900         	ldr	r1, [sp]
  433796: f7ff fd79    	bl	0x43328c <getAndroidId(ELeaderboardType)> @ imm = #-0x50e
  43379a: ab03         	add	r3, sp, #0xc
  43379c: 4618         	mov	r0, r3
  43379e: f381 fc5d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3818ba
  4337a2: 4603         	mov	r3, r0
  4337a4: 2b00         	cmp	r3, #0x0
  4337a6: bf0c         	ite	eq
  4337a8: 2300         	moveq	r3, #0x0
  4337aa: 2301         	movne	r3, #0x1
  4337ac: b2db         	uxtb	r3, r3
  4337ae: 2b00         	cmp	r3, #0x0
  4337b0: d001         	beq	0x4337b6 <LeaderBoardBridge::showLeaderboard(ELeaderboardType)+0x2e> @ imm = #0x2
  4337b2: f6ff fda3    	bl	0x3332fc <GPGSStateManager::ShowAllLeaderboards()> @ imm = #-0x1004ba
  4337b6: ab03         	add	r3, sp, #0xc
  4337b8: 4618         	mov	r0, r3
  4337ba: f382 f8ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x382156
  4337be: e005         	b	0x4337cc <LeaderBoardBridge::showLeaderboard(ELeaderboardType)+0x44> @ imm = #0xa
  4337c0: ab03         	add	r3, sp, #0xc
  4337c2: 4618         	mov	r0, r3
  4337c4: f382 f8a6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38214c
  4337c8: f354 fc70    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3548e0
  4337cc: b005         	add	sp, #0x14
  4337ce: f85d fb04    	ldr	pc, [sp], #4
