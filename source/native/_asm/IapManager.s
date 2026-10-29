// IapManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../IapManager.cpp

// ==== IapManager::IapManager
//      file offset 0x42da8c (= ELF address; Ghidra 0x43da8c), 44 bytes, Thumb-2
  42da8c: b510         	push	{r4, lr}
  42da8e: b082         	sub	sp, #0x8
  42da90: 9001         	str	r0, [sp, #0x4]
  42da92: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x42dab0 <IapManager::IapManager()+0x24>
  42da94: 447c         	add	r4, pc
  42da96: 9b01         	ldr	r3, [sp, #0x4]
  42da98: 4618         	mov	r0, r3
  42da9a: f161 fdcd    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x161b9a
  42da9e: 9b01         	ldr	r3, [sp, #0x4]
  42daa0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x42dab4 <IapManager::IapManager()+0x28>
  42daa2: 58a2         	ldr	r2, [r4, r2]
  42daa4: 3208         	adds	r2, #0x8
  42daa6: 601a         	str	r2, [r3]
  42daa8: 9b01         	ldr	r3, [sp, #0x4]
  42daaa: 4618         	mov	r0, r3
  42daac: b002         	add	sp, #0x8
  42daae: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42daaf); words below are literal-pool data ---
  42dab0: 4f74         	ldr	r7, [pc, #0x1d0]        @ 0x42dc84 <initPurchasedSkusLookup(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>*)+0xe4>
  42dab2: 0050         	lsls	r0, r2, #0x1
  42dab4: e030         	b	0x42db18 <bool&& std::forward<bool>(std::remove_reference<bool>::type&)+0x8> @ imm = #0x60
  42dab6: ffff b500    	<unknown>

// ==== IapManager::~IapManager
//      file offset 0x42dab8 (= ELF address; Ghidra 0x43dab8), 60 bytes, Thumb-2
  42dab8: b500         	push	{lr}
  42daba: b083         	sub	sp, #0xc
  42dabc: 9001         	str	r0, [sp, #0x4]
  42dabe: 490b         	ldr	r1, [pc, #0x2c]         @ 0x42daec <IapManager::~IapManager()+0x34>
  42dac0: 4479         	add	r1, pc
  42dac2: 9b01         	ldr	r3, [sp, #0x4]
  42dac4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x42daf0 <IapManager::~IapManager()+0x38>
  42dac6: 588a         	ldr	r2, [r1, r2]
  42dac8: 3208         	adds	r2, #0x8
  42daca: 601a         	str	r2, [r3]
  42dacc: 9b01         	ldr	r3, [sp, #0x4]
  42dace: 4618         	mov	r0, r3
  42dad0: f161 feb8    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x161d70
  42dad4: 2300         	movs	r3, #0x0
  42dad6: 2b00         	cmp	r3, #0x0
  42dad8: d002         	beq	0x42dae0 <IapManager::~IapManager()+0x28> @ imm = #0x4
  42dada: 9801         	ldr	r0, [sp, #0x4]
  42dadc: f35a fae2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35a5c4
  42dae0: 9b01         	ldr	r3, [sp, #0x4]
  42dae2: 4618         	mov	r0, r3
  42dae4: b003         	add	sp, #0xc
  42dae6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42dae9); words below are literal-pool data ---
  42daea: bf00         	nop
  42daec: 4f48         	ldr	r7, [pc, #0x120]        @ 0x42dc10 <initPurchasedSkusLookup(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>*)+0x70>
  42daee: 0050         	lsls	r0, r2, #0x1
  42daf0: e030         	b	0x42db54 <std::pair<std::string, bool>::~pair()+0x4> @ imm = #0x60
  42daf2: ffff b500    	<unknown>

// ==== IapManager::~IapManager
//      file offset 0x42daf4 (= ELF address; Ghidra 0x43daf4), 28 bytes, Thumb-2
  42daf4: b500         	push	{lr}
  42daf6: b083         	sub	sp, #0xc
  42daf8: 9001         	str	r0, [sp, #0x4]
  42dafa: 9801         	ldr	r0, [sp, #0x4]
  42dafc: f7ff ffdc    	bl	0x42dab8 <IapManager::~IapManager()> @ imm = #-0x48
  42db00: 9801         	ldr	r0, [sp, #0x4]
  42db02: f35a facf    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35a59e
  42db06: 9b01         	ldr	r3, [sp, #0x4]
  42db08: 4618         	mov	r0, r3
  42db0a: b003         	add	sp, #0xc
  42db0c: f85d fb04    	ldr	pc, [sp], #4

// ==== IapManager::sharedIapManager
//      file offset 0x42de34 (= ELF address; Ghidra 0x43de34), 92 bytes, Thumb-2
  42de34: b538         	push	{r3, r4, r5, lr}
  42de36: 4c14         	ldr	r4, [pc, #0x50]         @ 0x42de88 <IapManager::sharedIapManager()+0x54>
  42de38: 447c         	add	r4, pc
  42de3a: 4b14         	ldr	r3, [pc, #0x50]         @ 0x42de8c <IapManager::sharedIapManager()+0x58>
  42de3c: 58e3         	ldr	r3, [r4, r3]
  42de3e: 681b         	ldr	r3, [r3]
  42de40: 2b00         	cmp	r3, #0x0
  42de42: d115         	bne	0x42de70 <IapManager::sharedIapManager()+0x3c> @ imm = #0x2a
  42de44: 20e4         	movs	r0, #0xe4
  42de46: f359 fd8d    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x359b1a
  42de4a: 4603         	mov	r3, r0
  42de4c: 461d         	mov	r5, r3
  42de4e: 4628         	mov	r0, r5
  42de50: f7ff fe1c    	bl	0x42da8c <IapManager::IapManager()> @ imm = #-0x3c8
  42de54: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x42de8c <IapManager::sharedIapManager()+0x58>
  42de56: 58e3         	ldr	r3, [r4, r3]
  42de58: 601d         	str	r5, [r3]
  42de5a: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x42de8c <IapManager::sharedIapManager()+0x58>
  42de5c: 58e3         	ldr	r3, [r4, r3]
  42de5e: 681b         	ldr	r3, [r3]
  42de60: 681b         	ldr	r3, [r3]
  42de62: 3318         	adds	r3, #0x18
  42de64: 681b         	ldr	r3, [r3]
  42de66: 4a09         	ldr	r2, [pc, #0x24]         @ 0x42de8c <IapManager::sharedIapManager()+0x58>
  42de68: 58a2         	ldr	r2, [r4, r2]
  42de6a: 6812         	ldr	r2, [r2]
  42de6c: 4610         	mov	r0, r2
  42de6e: 4798         	blx	r3
  42de70: 4b06         	ldr	r3, [pc, #0x18]         @ 0x42de8c <IapManager::sharedIapManager()+0x58>
  42de72: 58e3         	ldr	r3, [r4, r3]
  42de74: 681b         	ldr	r3, [r3]
  42de76: e004         	b	0x42de82 <IapManager::sharedIapManager()+0x4e> @ imm = #0x8
  42de78: 4628         	mov	r0, r5
  42de7a: f35a f913    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35a226
  42de7e: f35a f915    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35a22a
  42de82: 4618         	mov	r0, r3
  42de84: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x42de85); words below are literal-pool data ---
  42de86: bf00         	nop
  42de88: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x42e1cc <IapManager::restore(bool)+0xe4>
  42de8a: 0050         	lsls	r0, r2, #0x1
  42de8c: e034         	b	0x42def8 <IapManager::init()+0x68> @ imm = #0x68
  42de8e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== IapManager::init
//      file offset 0x42de90 (= ELF address; Ghidra 0x43de90), 192 bytes, Thumb-2
  42de90: b530         	push	{r4, r5, lr}
  42de92: b08b         	sub	sp, #0x2c
  42de94: 9005         	str	r0, [sp, #0x14]
  42de96: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x42df3c <IapManager::init()+0xac>
  42de98: 447c         	add	r4, pc
  42de9a: 9b05         	ldr	r3, [sp, #0x14]
  42de9c: 4618         	mov	r0, r3
  42de9e: f161 fdd5    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x161baa
  42dea2: 4603         	mov	r3, r0
  42dea4: f88d 301f    	strb.w	r3, [sp, #0x1f]
  42dea8: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  42deac: f083 0301    	eor	r3, r3, #0x1
  42deb0: b2db         	uxtb	r3, r3
  42deb2: 2b00         	cmp	r3, #0x0
  42deb4: d001         	beq	0x42deba <IapManager::init()+0x2a> @ imm = #0x2
  42deb6: 2300         	movs	r3, #0x0
  42deb8: e03d         	b	0x42df36 <IapManager::init()+0xa6> @ imm = #0x7a
  42deba: 4b21         	ldr	r3, [pc, #0x84]         @ 0x42df40 <IapManager::init()+0xb0>
  42debc: 58e3         	ldr	r3, [r4, r3]
  42debe: 4618         	mov	r0, r3
  42dec0: f7ff fe6e    	bl	0x42dba0 <initPurchasedSkusLookup(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>*)> @ imm = #-0x324
  42dec4: f1b4 fbb2    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1b4764
  42dec8: 4605         	mov	r5, r0
  42deca: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x42df44 <IapManager::init()+0xb4>
  42decc: 58e3         	ldr	r3, [r4, r3]
  42dece: 4618         	mov	r0, r3
  42ded0: f387 fa16    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38742c
  42ded4: 4603         	mov	r3, r0
  42ded6: 4628         	mov	r0, r5
  42ded8: 4619         	mov	r1, r3
  42deda: 2200         	movs	r2, #0x0
  42dedc: f1b4 f93c    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x1b4278
  42dee0: 4603         	mov	r3, r0
  42dee2: 2b00         	cmp	r3, #0x0
  42dee4: d003         	beq	0x42deee <IapManager::init()+0x5e> @ imm = #0x6
  42dee6: 4b18         	ldr	r3, [pc, #0x60]         @ 0x42df48 <IapManager::init()+0xb8>
  42dee8: 58e3         	ldr	r3, [r4, r3]
  42deea: 2201         	movs	r2, #0x1
  42deec: 701a         	strb	r2, [r3]
  42deee: f16d fb41    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x16d682
  42def2: 4603         	mov	r3, r0
  42def4: 681a         	ldr	r2, [r3]
  42def6: 3230         	adds	r2, #0x30
  42def8: 6812         	ldr	r2, [r2]
  42defa: 4618         	mov	r0, r3
  42defc: 4790         	blx	r2
  42defe: 4602         	mov	r2, r0
  42df00: 4b12         	ldr	r3, [pc, #0x48]         @ 0x42df4c <IapManager::init()+0xbc>
  42df02: 58e3         	ldr	r3, [r4, r3]
  42df04: 9308         	str	r3, [sp, #0x20]
  42df06: 2300         	movs	r3, #0x0
  42df08: 9309         	str	r3, [sp, #0x24]
  42df0a: 9b05         	ldr	r3, [sp, #0x14]
  42df0c: f04f 0100    	mov.w	r1, #0x0
  42df10: f2c4 1120    	movt	r1, #0x4120
  42df14: 9100         	str	r1, [sp]
  42df16: f06f 0101    	mvn	r1, #0x1
  42df1a: 9101         	str	r1, [sp, #0x4]
  42df1c: f04f 0100    	mov.w	r1, #0x0
  42df20: f2c4 1140    	movt	r1, #0x4140
  42df24: 9102         	str	r1, [sp, #0x8]
  42df26: 2100         	movs	r1, #0x0
  42df28: 9103         	str	r1, [sp, #0xc]
  42df2a: 4610         	mov	r0, r2
  42df2c: aa08         	add	r2, sp, #0x20
  42df2e: ca06         	ldm	r2, {r1, r2}
  42df30: f141 feba    	bl	0x56fca8 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, unsigned int, float, bool)> @ imm = #0x141d74
  42df34: 2301         	movs	r3, #0x1
  42df36: 4618         	mov	r0, r3
  42df38: b00b         	add	sp, #0x2c
  42df3a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x42df3b); words below are literal-pool data ---
  42df3c: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x42e100 <IapManager::restore(bool)+0x18>
  42df3e: 0050         	lsls	r0, r2, #0x1
  42df40: e038         	b	0x42dfb4 <signalValidationOperationStarting(std::string)+0x64> @ imm = #0x70
  42df42: ffff e03c    	vshr.u32	d30, d28, #0x1
  42df46: ffff e040    	<unknown>
  42df4a: ffff e044    	<unknown>
  42df4e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== IapManager::restore
//      file offset 0x42e0e8 (= ELF address; Ghidra 0x43e0e8), 2088 bytes, Thumb-2
  42e0e8: b530         	push	{r4, r5, lr}
  42e0ea: b08d         	sub	sp, #0x34
  42e0ec: 9001         	str	r0, [sp, #0x4]
  42e0ee: 460b         	mov	r3, r1
  42e0f0: f88d 3003    	strb.w	r3, [sp, #0x3]
  42e0f4: f8df 47b0    	ldr.w	r4, [pc, #0x7b0]        @ 0x42e8a8 <IapManager::restore(bool)+0x7c0>
  42e0f8: 447c         	add	r4, pc
  42e0fa: f7fe fbc3    	bl	0x42c884 <ApplicationInterface::requiresClaimedIdentity()> @ imm = #-0x187a
  42e0fe: 4603         	mov	r3, r0
  42e100: 2b00         	cmp	r3, #0x0
  42e102: d00a         	beq	0x42e11a <IapManager::restore(bool)+0x32> @ imm = #0x14
  42e104: f7f4 f994    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #-0xbcd8
  42e108: 4603         	mov	r3, r0
  42e10a: f083 0301    	eor	r3, r3, #0x1
  42e10e: b2db         	uxtb	r3, r3
  42e110: 2b00         	cmp	r3, #0x0
  42e112: d002         	beq	0x42e11a <IapManager::restore(bool)+0x32> @ imm = #0x4
  42e114: f7fe fb88    	bl	0x42c828 <ApplicationInterface::pickClaimedIdentity()> @ imm = #-0x18f0
  42e118: e3c3         	b	0x42e8a2 <IapManager::restore(bool)+0x7ba> @ imm = #0x786
  42e11a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42e11e: 2b00         	cmp	r3, #0x0
  42e120: f000 8112    	beq.w	0x42e348 <IapManager::restore(bool)+0x260> @ imm = #0x224
  42e124: f1b4 fa82    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1b4504
  42e128: 4605         	mov	r5, r0
  42e12a: f8df 3780    	ldr.w	r3, [pc, #0x780]        @ 0x42e8ac <IapManager::restore(bool)+0x7c4>
  42e12e: 58e3         	ldr	r3, [r4, r3]
  42e130: 4618         	mov	r0, r3
  42e132: f387 f8e5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3871ca
  42e136: 4603         	mov	r3, r0
  42e138: 4628         	mov	r0, r5
  42e13a: 4619         	mov	r1, r3
  42e13c: 2200         	movs	r2, #0x0
  42e13e: f1b4 f80b    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x1b4016
  42e142: 4603         	mov	r3, r0
  42e144: 2b00         	cmp	r3, #0x0
  42e146: d00e         	beq	0x42e166 <IapManager::restore(bool)+0x7e> @ imm = #0x1c
  42e148: f1b4 fa70    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1b44e0
  42e14c: 4605         	mov	r5, r0
  42e14e: f8df 375c    	ldr.w	r3, [pc, #0x75c]        @ 0x42e8ac <IapManager::restore(bool)+0x7c4>
  42e152: 58e3         	ldr	r3, [r4, r3]
  42e154: 4618         	mov	r0, r3
  42e156: f387 f8d3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3871a6
  42e15a: 4603         	mov	r3, r0
  42e15c: 4628         	mov	r0, r5
  42e15e: 4619         	mov	r1, r3
  42e160: 2200         	movs	r2, #0x0
  42e162: f1b4 fa09    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x1b4412
  42e166: f8df 3748    	ldr.w	r3, [pc, #0x748]        @ 0x42e8b0 <IapManager::restore(bool)+0x7c8>
  42e16a: 58e3         	ldr	r3, [r4, r3]
  42e16c: 4618         	mov	r0, r3
  42e16e: f001 fc01    	bl	0x42f974 <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::clear()> @ imm = #0x1802
  42e172: ab04         	add	r3, sp, #0x10
  42e174: 4618         	mov	r0, r3
  42e176: f35c f93d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c27a
  42e17a: aa06         	add	r2, sp, #0x18
  42e17c: ab04         	add	r3, sp, #0x10
  42e17e: 4610         	mov	r0, r2
  42e180: f8df 2730    	ldr.w	r2, [pc, #0x730]        @ 0x42e8b4 <IapManager::restore(bool)+0x7cc>
  42e184: 447a         	add	r2, pc
  42e186: 4611         	mov	r1, r2
  42e188: 461a         	mov	r2, r3
  42e18a: f388 fc69    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3888d2
  42e18e: 2300         	movs	r3, #0x0
  42e190: f88d 3014    	strb.w	r3, [sp, #0x14]
  42e194: a907         	add	r1, sp, #0x1c
  42e196: aa06         	add	r2, sp, #0x18
  42e198: ab05         	add	r3, sp, #0x14
  42e19a: 4608         	mov	r0, r1
  42e19c: 4611         	mov	r1, r2
  42e19e: 461a         	mov	r2, r3
  42e1a0: f7ff fcbc    	bl	0x42db1c <std::pair<std::string, bool>::pair<std::string, bool, void>(std::string&&, bool&&)> @ imm = #-0x688
  42e1a4: aa09         	add	r2, sp, #0x24
  42e1a6: ab07         	add	r3, sp, #0x1c
  42e1a8: 4610         	mov	r0, r2
  42e1aa: f8df 2704    	ldr.w	r2, [pc, #0x704]        @ 0x42e8b0 <IapManager::restore(bool)+0x7c8>
  42e1ae: 58a2         	ldr	r2, [r4, r2]
  42e1b0: 4611         	mov	r1, r2
  42e1b2: 461a         	mov	r2, r3
  42e1b4: f001 fbee    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0x17dc
  42e1b8: ab07         	add	r3, sp, #0x1c
  42e1ba: 4618         	mov	r0, r3
  42e1bc: f7ff fcc8    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x670
  42e1c0: ab06         	add	r3, sp, #0x18
  42e1c2: 4618         	mov	r0, r3
  42e1c4: f387 fba6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38774c
  42e1c8: ab04         	add	r3, sp, #0x10
  42e1ca: 4618         	mov	r0, r3
  42e1cc: f35c f916    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c22c
  42e1d0: ab04         	add	r3, sp, #0x10
  42e1d2: 4618         	mov	r0, r3
  42e1d4: f35c f90e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c21c
  42e1d8: aa06         	add	r2, sp, #0x18
  42e1da: ab04         	add	r3, sp, #0x10
  42e1dc: 4610         	mov	r0, r2
  42e1de: f8df 26d8    	ldr.w	r2, [pc, #0x6d8]        @ 0x42e8b8 <IapManager::restore(bool)+0x7d0>
  42e1e2: 447a         	add	r2, pc
  42e1e4: 4611         	mov	r1, r2
  42e1e6: 461a         	mov	r2, r3
  42e1e8: f388 fc3a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388874
  42e1ec: 2300         	movs	r3, #0x0
  42e1ee: f88d 3014    	strb.w	r3, [sp, #0x14]
  42e1f2: a907         	add	r1, sp, #0x1c
  42e1f4: aa06         	add	r2, sp, #0x18
  42e1f6: ab05         	add	r3, sp, #0x14
  42e1f8: 4608         	mov	r0, r1
  42e1fa: 4611         	mov	r1, r2
  42e1fc: 461a         	mov	r2, r3
  42e1fe: f7ff fc8d    	bl	0x42db1c <std::pair<std::string, bool>::pair<std::string, bool, void>(std::string&&, bool&&)> @ imm = #-0x6e6
  42e202: aa09         	add	r2, sp, #0x24
  42e204: ab07         	add	r3, sp, #0x1c
  42e206: 4610         	mov	r0, r2
  42e208: f8df 26a4    	ldr.w	r2, [pc, #0x6a4]        @ 0x42e8b0 <IapManager::restore(bool)+0x7c8>
  42e20c: 58a2         	ldr	r2, [r4, r2]
  42e20e: 4611         	mov	r1, r2
  42e210: 461a         	mov	r2, r3
  42e212: f001 fbbf    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0x177e
  42e216: ab07         	add	r3, sp, #0x1c
  42e218: 4618         	mov	r0, r3
  42e21a: f7ff fc99    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x6ce
  42e21e: ab06         	add	r3, sp, #0x18
  42e220: 4618         	mov	r0, r3
  42e222: f387 fb77    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3876ee
  42e226: ab04         	add	r3, sp, #0x10
  42e228: 4618         	mov	r0, r3
  42e22a: f35c f8e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c1ce
  42e22e: ab04         	add	r3, sp, #0x10
  42e230: 4618         	mov	r0, r3
  42e232: f35c f8df    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c1be
  42e236: aa06         	add	r2, sp, #0x18
  42e238: ab04         	add	r3, sp, #0x10
  42e23a: 4610         	mov	r0, r2
  42e23c: f8df 267c    	ldr.w	r2, [pc, #0x67c]        @ 0x42e8bc <IapManager::restore(bool)+0x7d4>
  42e240: 447a         	add	r2, pc
  42e242: 4611         	mov	r1, r2
  42e244: 461a         	mov	r2, r3
  42e246: f388 fc0b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388816
  42e24a: 2300         	movs	r3, #0x0
  42e24c: f88d 3014    	strb.w	r3, [sp, #0x14]
  42e250: a907         	add	r1, sp, #0x1c
  42e252: aa06         	add	r2, sp, #0x18
  42e254: ab05         	add	r3, sp, #0x14
  42e256: 4608         	mov	r0, r1
  42e258: 4611         	mov	r1, r2
  42e25a: 461a         	mov	r2, r3
  42e25c: f7ff fc5e    	bl	0x42db1c <std::pair<std::string, bool>::pair<std::string, bool, void>(std::string&&, bool&&)> @ imm = #-0x744
  42e260: aa09         	add	r2, sp, #0x24
  42e262: ab07         	add	r3, sp, #0x1c
  42e264: 4610         	mov	r0, r2
  42e266: f8df 2648    	ldr.w	r2, [pc, #0x648]        @ 0x42e8b0 <IapManager::restore(bool)+0x7c8>
  42e26a: 58a2         	ldr	r2, [r4, r2]
  42e26c: 4611         	mov	r1, r2
  42e26e: 461a         	mov	r2, r3
  42e270: f001 fb90    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0x1720
  42e274: ab07         	add	r3, sp, #0x1c
  42e276: 4618         	mov	r0, r3
  42e278: f7ff fc6a    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x72c
  42e27c: ab06         	add	r3, sp, #0x18
  42e27e: 4618         	mov	r0, r3
  42e280: f387 fb48    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387690
  42e284: ab04         	add	r3, sp, #0x10
  42e286: 4618         	mov	r0, r3
  42e288: f35c f8b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c170
  42e28c: ab04         	add	r3, sp, #0x10
  42e28e: 4618         	mov	r0, r3
  42e290: f35c f8b0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c160
  42e294: aa06         	add	r2, sp, #0x18
  42e296: ab04         	add	r3, sp, #0x10
  42e298: 4610         	mov	r0, r2
  42e29a: f8df 2624    	ldr.w	r2, [pc, #0x624]        @ 0x42e8c0 <IapManager::restore(bool)+0x7d8>
  42e29e: 447a         	add	r2, pc
  42e2a0: 4611         	mov	r1, r2
  42e2a2: 461a         	mov	r2, r3
  42e2a4: f388 fbdc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3887b8
  42e2a8: 2300         	movs	r3, #0x0
  42e2aa: f88d 3014    	strb.w	r3, [sp, #0x14]
  42e2ae: a907         	add	r1, sp, #0x1c
  42e2b0: aa06         	add	r2, sp, #0x18
  42e2b2: ab05         	add	r3, sp, #0x14
  42e2b4: 4608         	mov	r0, r1
  42e2b6: 4611         	mov	r1, r2
  42e2b8: 461a         	mov	r2, r3
  42e2ba: f7ff fc2f    	bl	0x42db1c <std::pair<std::string, bool>::pair<std::string, bool, void>(std::string&&, bool&&)> @ imm = #-0x7a2
  42e2be: aa09         	add	r2, sp, #0x24
  42e2c0: ab07         	add	r3, sp, #0x1c
  42e2c2: 4610         	mov	r0, r2
  42e2c4: f8df 25e8    	ldr.w	r2, [pc, #0x5e8]        @ 0x42e8b0 <IapManager::restore(bool)+0x7c8>
  42e2c8: 58a2         	ldr	r2, [r4, r2]
  42e2ca: 4611         	mov	r1, r2
  42e2cc: 461a         	mov	r2, r3
  42e2ce: f001 fb61    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0x16c2
  42e2d2: ab07         	add	r3, sp, #0x1c
  42e2d4: 4618         	mov	r0, r3
  42e2d6: f7ff fc3b    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x78a
  42e2da: ab06         	add	r3, sp, #0x18
  42e2dc: 4618         	mov	r0, r3
  42e2de: f387 fb19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387632
  42e2e2: ab04         	add	r3, sp, #0x10
  42e2e4: 4618         	mov	r0, r3
  42e2e6: f35c f889    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c112
  42e2ea: ab04         	add	r3, sp, #0x10
  42e2ec: 4618         	mov	r0, r3
  42e2ee: f35c f881    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c102
  42e2f2: aa06         	add	r2, sp, #0x18
  42e2f4: ab04         	add	r3, sp, #0x10
  42e2f6: 4610         	mov	r0, r2
  42e2f8: f8df 25c8    	ldr.w	r2, [pc, #0x5c8]        @ 0x42e8c4 <IapManager::restore(bool)+0x7dc>
  42e2fc: 447a         	add	r2, pc
  42e2fe: 4611         	mov	r1, r2
  42e300: 461a         	mov	r2, r3
  42e302: f388 fbad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38875a
  42e306: 2300         	movs	r3, #0x0
  42e308: f88d 3014    	strb.w	r3, [sp, #0x14]
  42e30c: a907         	add	r1, sp, #0x1c
  42e30e: aa06         	add	r2, sp, #0x18
  42e310: ab05         	add	r3, sp, #0x14
  42e312: 4608         	mov	r0, r1
  42e314: 4611         	mov	r1, r2
  42e316: 461a         	mov	r2, r3
  42e318: f7ff fc00    	bl	0x42db1c <std::pair<std::string, bool>::pair<std::string, bool, void>(std::string&&, bool&&)> @ imm = #-0x800
  42e31c: aa09         	add	r2, sp, #0x24
  42e31e: ab07         	add	r3, sp, #0x1c
  42e320: 4610         	mov	r0, r2
  42e322: f8df 258c    	ldr.w	r2, [pc, #0x58c]        @ 0x42e8b0 <IapManager::restore(bool)+0x7c8>
  42e326: 58a2         	ldr	r2, [r4, r2]
  42e328: 4611         	mov	r1, r2
  42e32a: 461a         	mov	r2, r3
  42e32c: f001 fb32    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0x1664
  42e330: ab07         	add	r3, sp, #0x1c
  42e332: 4618         	mov	r0, r3
  42e334: f7ff fc0c    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x7e8
  42e338: ab06         	add	r3, sp, #0x18
  42e33a: 4618         	mov	r0, r3
  42e33c: f387 faea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3875d4
  42e340: ab04         	add	r3, sp, #0x10
  42e342: 4618         	mov	r0, r3
  42e344: f35c f85a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c0b4
  42e348: ab03         	add	r3, sp, #0xc
  42e34a: 4618         	mov	r0, r3
  42e34c: f35c f852    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c0a4
  42e350: aa07         	add	r2, sp, #0x1c
  42e352: ab03         	add	r3, sp, #0xc
  42e354: 4610         	mov	r0, r2
  42e356: f8df 2570    	ldr.w	r2, [pc, #0x570]        @ 0x42e8c8 <IapManager::restore(bool)+0x7e0>
  42e35a: 447a         	add	r2, pc
  42e35c: 4611         	mov	r1, r2
  42e35e: 461a         	mov	r2, r3
  42e360: f388 fb7e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3886fc
  42e364: ab04         	add	r3, sp, #0x10
  42e366: 4618         	mov	r0, r3
  42e368: f35c f844    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c088
  42e36c: aa09         	add	r2, sp, #0x24
  42e36e: ab04         	add	r3, sp, #0x10
  42e370: 4610         	mov	r0, r2
  42e372: f8df 2558    	ldr.w	r2, [pc, #0x558]        @ 0x42e8cc <IapManager::restore(bool)+0x7e4>
  42e376: 447a         	add	r2, pc
  42e378: 4611         	mov	r1, r2
  42e37a: 461a         	mov	r2, r3
  42e37c: f388 fb70    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3886e0
  42e380: ab02         	add	r3, sp, #0x8
  42e382: 4618         	mov	r0, r3
  42e384: f35c f836    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c06c
  42e388: aa05         	add	r2, sp, #0x14
  42e38a: ab02         	add	r3, sp, #0x8
  42e38c: 4610         	mov	r0, r2
  42e38e: f8df 2540    	ldr.w	r2, [pc, #0x540]        @ 0x42e8d0 <IapManager::restore(bool)+0x7e8>
  42e392: 447a         	add	r2, pc
  42e394: 4611         	mov	r1, r2
  42e396: 461a         	mov	r2, r3
  42e398: f388 fb62    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3886c4
  42e39c: aa06         	add	r2, sp, #0x18
  42e39e: ab05         	add	r3, sp, #0x14
  42e3a0: 4610         	mov	r0, r2
  42e3a2: 4619         	mov	r1, r3
  42e3a4: f7ff fdd4    	bl	0x42df50 <signalValidationOperationStarting(std::string)> @ imm = #-0x458
  42e3a8: a907         	add	r1, sp, #0x1c
  42e3aa: aa09         	add	r2, sp, #0x24
  42e3ac: ab06         	add	r3, sp, #0x18
  42e3ae: 9801         	ldr	r0, [sp, #0x4]
  42e3b0: f000 fd24    	bl	0x42edfc <IapManager::registerPurchase(std::string, std::string, std::string)> @ imm = #0xa48
  42e3b4: ab06         	add	r3, sp, #0x18
  42e3b6: 4618         	mov	r0, r3
  42e3b8: f387 faac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387558
  42e3bc: ab05         	add	r3, sp, #0x14
  42e3be: 4618         	mov	r0, r3
  42e3c0: f387 faa8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387550
  42e3c4: ab02         	add	r3, sp, #0x8
  42e3c6: 4618         	mov	r0, r3
  42e3c8: f35c f818    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c030
  42e3cc: ab09         	add	r3, sp, #0x24
  42e3ce: 4618         	mov	r0, r3
  42e3d0: f387 faa0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387540
  42e3d4: ab04         	add	r3, sp, #0x10
  42e3d6: 4618         	mov	r0, r3
  42e3d8: f35c f810    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c020
  42e3dc: ab07         	add	r3, sp, #0x1c
  42e3de: 4618         	mov	r0, r3
  42e3e0: f387 fa98    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387530
  42e3e4: ab03         	add	r3, sp, #0xc
  42e3e6: 4618         	mov	r0, r3
  42e3e8: f35c f808    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35c010
  42e3ec: ab03         	add	r3, sp, #0xc
  42e3ee: 4618         	mov	r0, r3
  42e3f0: f35c f800    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35c000
  42e3f4: aa07         	add	r2, sp, #0x1c
  42e3f6: ab03         	add	r3, sp, #0xc
  42e3f8: 4610         	mov	r0, r2
  42e3fa: f8df 24d8    	ldr.w	r2, [pc, #0x4d8]        @ 0x42e8d4 <IapManager::restore(bool)+0x7ec>
  42e3fe: 447a         	add	r2, pc
  42e400: 4611         	mov	r1, r2
  42e402: 461a         	mov	r2, r3
  42e404: f388 fb2c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388658
  42e408: ab04         	add	r3, sp, #0x10
  42e40a: 4618         	mov	r0, r3
  42e40c: f35b fff2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35bfe4
  42e410: aa09         	add	r2, sp, #0x24
  42e412: ab04         	add	r3, sp, #0x10
  42e414: 4610         	mov	r0, r2
  42e416: f8df 24c0    	ldr.w	r2, [pc, #0x4c0]        @ 0x42e8d8 <IapManager::restore(bool)+0x7f0>
  42e41a: 447a         	add	r2, pc
  42e41c: 4611         	mov	r1, r2
  42e41e: 461a         	mov	r2, r3
  42e420: f388 fb1e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38863c
  42e424: ab02         	add	r3, sp, #0x8
  42e426: 4618         	mov	r0, r3
  42e428: f35b ffe4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35bfc8
  42e42c: aa05         	add	r2, sp, #0x14
  42e42e: ab02         	add	r3, sp, #0x8
  42e430: 4610         	mov	r0, r2
  42e432: f8df 24a8    	ldr.w	r2, [pc, #0x4a8]        @ 0x42e8dc <IapManager::restore(bool)+0x7f4>
  42e436: 447a         	add	r2, pc
  42e438: 4611         	mov	r1, r2
  42e43a: 461a         	mov	r2, r3
  42e43c: f388 fb10    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388620
  42e440: aa06         	add	r2, sp, #0x18
  42e442: ab05         	add	r3, sp, #0x14
  42e444: 4610         	mov	r0, r2
  42e446: 4619         	mov	r1, r3
  42e448: f7ff fd82    	bl	0x42df50 <signalValidationOperationStarting(std::string)> @ imm = #-0x4fc
  42e44c: a907         	add	r1, sp, #0x1c
  42e44e: aa09         	add	r2, sp, #0x24
  42e450: ab06         	add	r3, sp, #0x18
  42e452: 9801         	ldr	r0, [sp, #0x4]
  42e454: f000 fcd2    	bl	0x42edfc <IapManager::registerPurchase(std::string, std::string, std::string)> @ imm = #0x9a4
  42e458: ab06         	add	r3, sp, #0x18
  42e45a: 4618         	mov	r0, r3
  42e45c: f387 fa5a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3874b4
  42e460: ab05         	add	r3, sp, #0x14
  42e462: 4618         	mov	r0, r3
  42e464: f387 fa56    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3874ac
  42e468: ab02         	add	r3, sp, #0x8
  42e46a: 4618         	mov	r0, r3
  42e46c: f35b ffc6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bf8c
  42e470: ab09         	add	r3, sp, #0x24
  42e472: 4618         	mov	r0, r3
  42e474: f387 fa4e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38749c
  42e478: ab04         	add	r3, sp, #0x10
  42e47a: 4618         	mov	r0, r3
  42e47c: f35b ffbe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bf7c
  42e480: ab07         	add	r3, sp, #0x1c
  42e482: 4618         	mov	r0, r3
  42e484: f387 fa46    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38748c
  42e488: ab03         	add	r3, sp, #0xc
  42e48a: 4618         	mov	r0, r3
  42e48c: f35b ffb6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bf6c
  42e490: ab03         	add	r3, sp, #0xc
  42e492: 4618         	mov	r0, r3
  42e494: f35b ffae    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35bf5c
  42e498: aa07         	add	r2, sp, #0x1c
  42e49a: ab03         	add	r3, sp, #0xc
  42e49c: 4610         	mov	r0, r2
  42e49e: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x42e8e0 <IapManager::restore(bool)+0x7f8>
  42e4a2: 447a         	add	r2, pc
  42e4a4: 4611         	mov	r1, r2
  42e4a6: 461a         	mov	r2, r3
  42e4a8: f388 fada    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3885b4
  42e4ac: ab04         	add	r3, sp, #0x10
  42e4ae: 4618         	mov	r0, r3
  42e4b0: f35b ffa0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35bf40
  42e4b4: aa09         	add	r2, sp, #0x24
  42e4b6: ab04         	add	r3, sp, #0x10
  42e4b8: 4610         	mov	r0, r2
  42e4ba: f8df 2428    	ldr.w	r2, [pc, #0x428]        @ 0x42e8e4 <IapManager::restore(bool)+0x7fc>
  42e4be: 447a         	add	r2, pc
  42e4c0: 4611         	mov	r1, r2
  42e4c2: 461a         	mov	r2, r3
  42e4c4: f388 facc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388598
  42e4c8: ab02         	add	r3, sp, #0x8
  42e4ca: 4618         	mov	r0, r3
  42e4cc: f35b ff92    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35bf24
  42e4d0: aa05         	add	r2, sp, #0x14
  42e4d2: ab02         	add	r3, sp, #0x8
  42e4d4: 4610         	mov	r0, r2
  42e4d6: f8df 2410    	ldr.w	r2, [pc, #0x410]        @ 0x42e8e8 <IapManager::restore(bool)+0x800>
  42e4da: 447a         	add	r2, pc
  42e4dc: 4611         	mov	r1, r2
  42e4de: 461a         	mov	r2, r3
  42e4e0: f388 fabe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38857c
  42e4e4: aa06         	add	r2, sp, #0x18
  42e4e6: ab05         	add	r3, sp, #0x14
  42e4e8: 4610         	mov	r0, r2
  42e4ea: 4619         	mov	r1, r3
  42e4ec: f7ff fd30    	bl	0x42df50 <signalValidationOperationStarting(std::string)> @ imm = #-0x5a0
  42e4f0: a907         	add	r1, sp, #0x1c
  42e4f2: aa09         	add	r2, sp, #0x24
  42e4f4: ab06         	add	r3, sp, #0x18
  42e4f6: 9801         	ldr	r0, [sp, #0x4]
  42e4f8: f000 fc80    	bl	0x42edfc <IapManager::registerPurchase(std::string, std::string, std::string)> @ imm = #0x900
  42e4fc: ab06         	add	r3, sp, #0x18
  42e4fe: 4618         	mov	r0, r3
  42e500: f387 fa08    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387410
  42e504: ab05         	add	r3, sp, #0x14
  42e506: 4618         	mov	r0, r3
  42e508: f387 fa04    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387408
  42e50c: ab02         	add	r3, sp, #0x8
  42e50e: 4618         	mov	r0, r3
  42e510: f35b ff74    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bee8
  42e514: ab09         	add	r3, sp, #0x24
  42e516: 4618         	mov	r0, r3
  42e518: f387 f9fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3873f8
  42e51c: ab04         	add	r3, sp, #0x10
  42e51e: 4618         	mov	r0, r3
  42e520: f35b ff6c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bed8
  42e524: ab07         	add	r3, sp, #0x1c
  42e526: 4618         	mov	r0, r3
  42e528: f387 f9f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3873e8
  42e52c: ab03         	add	r3, sp, #0xc
  42e52e: 4618         	mov	r0, r3
  42e530: f35b ff64    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bec8
  42e534: ab03         	add	r3, sp, #0xc
  42e536: 4618         	mov	r0, r3
  42e538: f35b ff5c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35beb8
  42e53c: aa07         	add	r2, sp, #0x1c
  42e53e: ab03         	add	r3, sp, #0xc
  42e540: 4610         	mov	r0, r2
  42e542: 4aea         	ldr	r2, [pc, #0x3a8]        @ 0x42e8ec <IapManager::restore(bool)+0x804>
  42e544: 447a         	add	r2, pc
  42e546: 4611         	mov	r1, r2
  42e548: 461a         	mov	r2, r3
  42e54a: f388 fa89    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388512
  42e54e: ab04         	add	r3, sp, #0x10
  42e550: 4618         	mov	r0, r3
  42e552: f35b ff4f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35be9e
  42e556: aa09         	add	r2, sp, #0x24
  42e558: ab04         	add	r3, sp, #0x10
  42e55a: 4610         	mov	r0, r2
  42e55c: 4ae4         	ldr	r2, [pc, #0x390]        @ 0x42e8f0 <IapManager::restore(bool)+0x808>
  42e55e: 447a         	add	r2, pc
  42e560: 4611         	mov	r1, r2
  42e562: 461a         	mov	r2, r3
  42e564: f388 fa7c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3884f8
  42e568: ab02         	add	r3, sp, #0x8
  42e56a: 4618         	mov	r0, r3
  42e56c: f35b ff42    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35be84
  42e570: aa05         	add	r2, sp, #0x14
  42e572: ab02         	add	r3, sp, #0x8
  42e574: 4610         	mov	r0, r2
  42e576: 4adf         	ldr	r2, [pc, #0x37c]        @ 0x42e8f4 <IapManager::restore(bool)+0x80c>
  42e578: 447a         	add	r2, pc
  42e57a: 4611         	mov	r1, r2
  42e57c: 461a         	mov	r2, r3
  42e57e: f388 fa6f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3884de
  42e582: aa06         	add	r2, sp, #0x18
  42e584: ab05         	add	r3, sp, #0x14
  42e586: 4610         	mov	r0, r2
  42e588: 4619         	mov	r1, r3
  42e58a: f7ff fce1    	bl	0x42df50 <signalValidationOperationStarting(std::string)> @ imm = #-0x63e
  42e58e: a907         	add	r1, sp, #0x1c
  42e590: aa09         	add	r2, sp, #0x24
  42e592: ab06         	add	r3, sp, #0x18
  42e594: 9801         	ldr	r0, [sp, #0x4]
  42e596: f000 fc31    	bl	0x42edfc <IapManager::registerPurchase(std::string, std::string, std::string)> @ imm = #0x862
  42e59a: ab06         	add	r3, sp, #0x18
  42e59c: 4618         	mov	r0, r3
  42e59e: f387 f9b9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387372
  42e5a2: ab05         	add	r3, sp, #0x14
  42e5a4: 4618         	mov	r0, r3
  42e5a6: f387 f9b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38736a
  42e5aa: ab02         	add	r3, sp, #0x8
  42e5ac: 4618         	mov	r0, r3
  42e5ae: f35b ff25    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35be4a
  42e5b2: ab09         	add	r3, sp, #0x24
  42e5b4: 4618         	mov	r0, r3
  42e5b6: f387 f9ad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38735a
  42e5ba: ab04         	add	r3, sp, #0x10
  42e5bc: 4618         	mov	r0, r3
  42e5be: f35b ff1d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35be3a
  42e5c2: ab07         	add	r3, sp, #0x1c
  42e5c4: 4618         	mov	r0, r3
  42e5c6: f387 f9a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38734a
  42e5ca: ab03         	add	r3, sp, #0xc
  42e5cc: 4618         	mov	r0, r3
  42e5ce: f35b ff15    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35be2a
  42e5d2: ab03         	add	r3, sp, #0xc
  42e5d4: 4618         	mov	r0, r3
  42e5d6: f35b ff0d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35be1a
  42e5da: aa07         	add	r2, sp, #0x1c
  42e5dc: ab03         	add	r3, sp, #0xc
  42e5de: 4610         	mov	r0, r2
  42e5e0: 4ac5         	ldr	r2, [pc, #0x314]        @ 0x42e8f8 <IapManager::restore(bool)+0x810>
  42e5e2: 447a         	add	r2, pc
  42e5e4: 4611         	mov	r1, r2
  42e5e6: 461a         	mov	r2, r3
  42e5e8: f388 fa3a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388474
  42e5ec: ab04         	add	r3, sp, #0x10
  42e5ee: 4618         	mov	r0, r3
  42e5f0: f35b ff00    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35be00
  42e5f4: aa09         	add	r2, sp, #0x24
  42e5f6: ab04         	add	r3, sp, #0x10
  42e5f8: 4610         	mov	r0, r2
  42e5fa: 4ac0         	ldr	r2, [pc, #0x300]        @ 0x42e8fc <IapManager::restore(bool)+0x814>
  42e5fc: 447a         	add	r2, pc
  42e5fe: 4611         	mov	r1, r2
  42e600: 461a         	mov	r2, r3
  42e602: f388 fa2d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38845a
  42e606: ab02         	add	r3, sp, #0x8
  42e608: 4618         	mov	r0, r3
  42e60a: f35b fef3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35bde6
  42e60e: aa05         	add	r2, sp, #0x14
  42e610: ab02         	add	r3, sp, #0x8
  42e612: 4610         	mov	r0, r2
  42e614: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x42e900 <IapManager::restore(bool)+0x818>
  42e616: 447a         	add	r2, pc
  42e618: 4611         	mov	r1, r2
  42e61a: 461a         	mov	r2, r3
  42e61c: f388 fa20    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x388440
  42e620: aa06         	add	r2, sp, #0x18
  42e622: ab05         	add	r3, sp, #0x14
  42e624: 4610         	mov	r0, r2
  42e626: 4619         	mov	r1, r3
  42e628: f7ff fc92    	bl	0x42df50 <signalValidationOperationStarting(std::string)> @ imm = #-0x6dc
  42e62c: a907         	add	r1, sp, #0x1c
  42e62e: aa09         	add	r2, sp, #0x24
  42e630: ab06         	add	r3, sp, #0x18
  42e632: 9801         	ldr	r0, [sp, #0x4]
  42e634: f000 fbe2    	bl	0x42edfc <IapManager::registerPurchase(std::string, std::string, std::string)> @ imm = #0x7c4
  42e638: ab06         	add	r3, sp, #0x18
  42e63a: 4618         	mov	r0, r3
  42e63c: f387 f96a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3872d4
  42e640: ab05         	add	r3, sp, #0x14
  42e642: 4618         	mov	r0, r3
  42e644: f387 f966    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3872cc
  42e648: ab02         	add	r3, sp, #0x8
  42e64a: 4618         	mov	r0, r3
  42e64c: f35b fed6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bdac
  42e650: ab09         	add	r3, sp, #0x24
  42e652: 4618         	mov	r0, r3
  42e654: f387 f95e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3872bc
  42e658: ab04         	add	r3, sp, #0x10
  42e65a: 4618         	mov	r0, r3
  42e65c: f35b fece    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bd9c
  42e660: ab07         	add	r3, sp, #0x1c
  42e662: 4618         	mov	r0, r3
  42e664: f387 f956    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3872ac
  42e668: ab03         	add	r3, sp, #0xc
  42e66a: 4618         	mov	r0, r3
  42e66c: f35b fec6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bd8c
  42e670: ab09         	add	r3, sp, #0x24
  42e672: 4618         	mov	r0, r3
  42e674: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x42e904 <IapManager::restore(bool)+0x81c>
  42e676: 447b         	add	r3, pc
  42e678: 4619         	mov	r1, r3
  42e67a: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x42e908 <IapManager::restore(bool)+0x820>
  42e67c: 447b         	add	r3, pc
  42e67e: 461a         	mov	r2, r3
  42e680: 4ba2         	ldr	r3, [pc, #0x288]        @ 0x42e90c <IapManager::restore(bool)+0x824>
  42e682: 447b         	add	r3, pc
  42e684: f1a3 fd4c    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a3a98
  42e688: 4603         	mov	r3, r0
  42e68a: f88d 3013    	strb.w	r3, [sp, #0x13]
  42e68e: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  42e692: f083 0301    	eor	r3, r3, #0x1
  42e696: b2db         	uxtb	r3, r3
  42e698: 2b00         	cmp	r3, #0x0
  42e69a: f040 8102    	bne.w	0x42e8a2 <IapManager::restore(bool)+0x7ba> @ imm = #0x204
  42e69e: 9909         	ldr	r1, [sp, #0x24]
  42e6a0: 9a0a         	ldr	r2, [sp, #0x28]
  42e6a2: 9b0b         	ldr	r3, [sp, #0x2c]
  42e6a4: 4608         	mov	r0, r1
  42e6a6: 4611         	mov	r1, r2
  42e6a8: 461a         	mov	r2, r3
  42e6aa: f7fc fd8d    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x34e6
  42e6ae: 9b09         	ldr	r3, [sp, #0x24]
  42e6b0: 4618         	mov	r0, r3
  42e6b2: f1a3 fdf9    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a3bf2
  42e6b6: e0f4         	b	0x42e8a2 <IapManager::restore(bool)+0x7ba> @ imm = #0x1e8
  42e6b8: ab07         	add	r3, sp, #0x1c
  42e6ba: 4618         	mov	r0, r3
  42e6bc: f7ff fa48    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0xb70
  42e6c0: ab06         	add	r3, sp, #0x18
  42e6c2: 4618         	mov	r0, r3
  42e6c4: f387 f926    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38724c
  42e6c8: e7ff         	b	0x42e6ca <IapManager::restore(bool)+0x5e2> @ imm = #-0x2
  42e6ca: ab04         	add	r3, sp, #0x10
  42e6cc: 4618         	mov	r0, r3
  42e6ce: f35b fe95    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bd2a
  42e6d2: f359 fceb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3599d6
  42e6d6: ab07         	add	r3, sp, #0x1c
  42e6d8: 4618         	mov	r0, r3
  42e6da: f7ff fa39    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0xb8e
  42e6de: ab06         	add	r3, sp, #0x18
  42e6e0: 4618         	mov	r0, r3
  42e6e2: f387 f917    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38722e
  42e6e6: e7ff         	b	0x42e6e8 <IapManager::restore(bool)+0x600> @ imm = #-0x2
  42e6e8: ab04         	add	r3, sp, #0x10
  42e6ea: 4618         	mov	r0, r3
  42e6ec: f35b fe86    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bd0c
  42e6f0: f359 fcdc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3599b8
  42e6f4: ab07         	add	r3, sp, #0x1c
  42e6f6: 4618         	mov	r0, r3
  42e6f8: f7ff fa2a    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0xbac
  42e6fc: ab06         	add	r3, sp, #0x18
  42e6fe: 4618         	mov	r0, r3
  42e700: f387 f908    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387210
  42e704: e7ff         	b	0x42e706 <IapManager::restore(bool)+0x61e> @ imm = #-0x2
  42e706: ab04         	add	r3, sp, #0x10
  42e708: 4618         	mov	r0, r3
  42e70a: f35b fe77    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bcee
  42e70e: f359 fccd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35999a
  42e712: ab07         	add	r3, sp, #0x1c
  42e714: 4618         	mov	r0, r3
  42e716: f7ff fa1b    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0xbca
  42e71a: ab06         	add	r3, sp, #0x18
  42e71c: 4618         	mov	r0, r3
  42e71e: f387 f8f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3871f2
  42e722: e7ff         	b	0x42e724 <IapManager::restore(bool)+0x63c> @ imm = #-0x2
  42e724: ab04         	add	r3, sp, #0x10
  42e726: 4618         	mov	r0, r3
  42e728: f35b fe68    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bcd0
  42e72c: f359 fcbe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35997c
  42e730: ab07         	add	r3, sp, #0x1c
  42e732: 4618         	mov	r0, r3
  42e734: f7ff fa0c    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0xbe8
  42e738: ab06         	add	r3, sp, #0x18
  42e73a: 4618         	mov	r0, r3
  42e73c: f387 f8ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3871d4
  42e740: e7ff         	b	0x42e742 <IapManager::restore(bool)+0x65a> @ imm = #-0x2
  42e742: ab04         	add	r3, sp, #0x10
  42e744: 4618         	mov	r0, r3
  42e746: f35b fe59    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bcb2
  42e74a: f359 fcaf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35995e
  42e74e: ab06         	add	r3, sp, #0x18
  42e750: 4618         	mov	r0, r3
  42e752: f387 f8df    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3871be
  42e756: e7ff         	b	0x42e758 <IapManager::restore(bool)+0x670> @ imm = #-0x2
  42e758: ab05         	add	r3, sp, #0x14
  42e75a: 4618         	mov	r0, r3
  42e75c: f387 f8da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3871b4
  42e760: e7ff         	b	0x42e762 <IapManager::restore(bool)+0x67a> @ imm = #-0x2
  42e762: ab02         	add	r3, sp, #0x8
  42e764: 4618         	mov	r0, r3
  42e766: f35b fe49    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc92
  42e76a: ab09         	add	r3, sp, #0x24
  42e76c: 4618         	mov	r0, r3
  42e76e: f387 f8d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3871a2
  42e772: e7ff         	b	0x42e774 <IapManager::restore(bool)+0x68c> @ imm = #-0x2
  42e774: ab04         	add	r3, sp, #0x10
  42e776: 4618         	mov	r0, r3
  42e778: f35b fe40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc80
  42e77c: ab07         	add	r3, sp, #0x1c
  42e77e: 4618         	mov	r0, r3
  42e780: f387 f8c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387190
  42e784: e7ff         	b	0x42e786 <IapManager::restore(bool)+0x69e> @ imm = #-0x2
  42e786: ab03         	add	r3, sp, #0xc
  42e788: 4618         	mov	r0, r3
  42e78a: f35b fe37    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc6e
  42e78e: f359 fc8d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35991a
  42e792: ab06         	add	r3, sp, #0x18
  42e794: 4618         	mov	r0, r3
  42e796: f387 f8bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38717a
  42e79a: e7ff         	b	0x42e79c <IapManager::restore(bool)+0x6b4> @ imm = #-0x2
  42e79c: ab05         	add	r3, sp, #0x14
  42e79e: 4618         	mov	r0, r3
  42e7a0: f387 f8b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387170
  42e7a4: e7ff         	b	0x42e7a6 <IapManager::restore(bool)+0x6be> @ imm = #-0x2
  42e7a6: ab02         	add	r3, sp, #0x8
  42e7a8: 4618         	mov	r0, r3
  42e7aa: f35b fe27    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc4e
  42e7ae: ab09         	add	r3, sp, #0x24
  42e7b0: 4618         	mov	r0, r3
  42e7b2: f387 f8af    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38715e
  42e7b6: e7ff         	b	0x42e7b8 <IapManager::restore(bool)+0x6d0> @ imm = #-0x2
  42e7b8: ab04         	add	r3, sp, #0x10
  42e7ba: 4618         	mov	r0, r3
  42e7bc: f35b fe1e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc3c
  42e7c0: ab07         	add	r3, sp, #0x1c
  42e7c2: 4618         	mov	r0, r3
  42e7c4: f387 f8a6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38714c
  42e7c8: e7ff         	b	0x42e7ca <IapManager::restore(bool)+0x6e2> @ imm = #-0x2
  42e7ca: ab03         	add	r3, sp, #0xc
  42e7cc: 4618         	mov	r0, r3
  42e7ce: f35b fe15    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc2a
  42e7d2: f359 fc6b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3598d6
  42e7d6: ab06         	add	r3, sp, #0x18
  42e7d8: 4618         	mov	r0, r3
  42e7da: f387 f89b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387136
  42e7de: e7ff         	b	0x42e7e0 <IapManager::restore(bool)+0x6f8> @ imm = #-0x2
  42e7e0: ab05         	add	r3, sp, #0x14
  42e7e2: 4618         	mov	r0, r3
  42e7e4: f387 f896    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38712c
  42e7e8: e7ff         	b	0x42e7ea <IapManager::restore(bool)+0x702> @ imm = #-0x2
  42e7ea: ab02         	add	r3, sp, #0x8
  42e7ec: 4618         	mov	r0, r3
  42e7ee: f35b fe05    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bc0a
  42e7f2: ab09         	add	r3, sp, #0x24
  42e7f4: 4618         	mov	r0, r3
  42e7f6: f387 f88d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38711a
  42e7fa: e7ff         	b	0x42e7fc <IapManager::restore(bool)+0x714> @ imm = #-0x2
  42e7fc: ab04         	add	r3, sp, #0x10
  42e7fe: 4618         	mov	r0, r3
  42e800: f35b fdfc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bbf8
  42e804: ab07         	add	r3, sp, #0x1c
  42e806: 4618         	mov	r0, r3
  42e808: f387 f884    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387108
  42e80c: e7ff         	b	0x42e80e <IapManager::restore(bool)+0x726> @ imm = #-0x2
  42e80e: ab03         	add	r3, sp, #0xc
  42e810: 4618         	mov	r0, r3
  42e812: f35b fdf3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bbe6
  42e816: f359 fc49    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x359892
  42e81a: ab06         	add	r3, sp, #0x18
  42e81c: 4618         	mov	r0, r3
  42e81e: f387 f879    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3870f2
  42e822: e7ff         	b	0x42e824 <IapManager::restore(bool)+0x73c> @ imm = #-0x2
  42e824: ab05         	add	r3, sp, #0x14
  42e826: 4618         	mov	r0, r3
  42e828: f387 f874    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3870e8
  42e82c: e7ff         	b	0x42e82e <IapManager::restore(bool)+0x746> @ imm = #-0x2
  42e82e: ab02         	add	r3, sp, #0x8
  42e830: 4618         	mov	r0, r3
  42e832: f35b fde3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bbc6
  42e836: ab09         	add	r3, sp, #0x24
  42e838: 4618         	mov	r0, r3
  42e83a: f387 f86b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3870d6
  42e83e: e7ff         	b	0x42e840 <IapManager::restore(bool)+0x758> @ imm = #-0x2
  42e840: ab04         	add	r3, sp, #0x10
  42e842: 4618         	mov	r0, r3
  42e844: f35b fdda    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bbb4
  42e848: ab07         	add	r3, sp, #0x1c
  42e84a: 4618         	mov	r0, r3
  42e84c: f387 f862    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3870c4
  42e850: e7ff         	b	0x42e852 <IapManager::restore(bool)+0x76a> @ imm = #-0x2
  42e852: ab03         	add	r3, sp, #0xc
  42e854: 4618         	mov	r0, r3
  42e856: f35b fdd1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bba2
  42e85a: f359 fc27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35984e
  42e85e: ab06         	add	r3, sp, #0x18
  42e860: 4618         	mov	r0, r3
  42e862: f387 f857    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3870ae
  42e866: e7ff         	b	0x42e868 <IapManager::restore(bool)+0x780> @ imm = #-0x2
  42e868: ab05         	add	r3, sp, #0x14
  42e86a: 4618         	mov	r0, r3
  42e86c: f387 f852    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3870a4
  42e870: e7ff         	b	0x42e872 <IapManager::restore(bool)+0x78a> @ imm = #-0x2
  42e872: ab02         	add	r3, sp, #0x8
  42e874: 4618         	mov	r0, r3
  42e876: f35b fdc1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bb82
  42e87a: ab09         	add	r3, sp, #0x24
  42e87c: 4618         	mov	r0, r3
  42e87e: f387 f849    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387092
  42e882: e7ff         	b	0x42e884 <IapManager::restore(bool)+0x79c> @ imm = #-0x2
  42e884: ab04         	add	r3, sp, #0x10
  42e886: 4618         	mov	r0, r3
  42e888: f35b fdb8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bb70
  42e88c: ab07         	add	r3, sp, #0x1c
  42e88e: 4618         	mov	r0, r3
  42e890: f387 f840    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x387080
  42e894: e7ff         	b	0x42e896 <IapManager::restore(bool)+0x7ae> @ imm = #-0x2
  42e896: ab03         	add	r3, sp, #0xc
  42e898: 4618         	mov	r0, r3
  42e89a: f35b fdaf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35bb5e
  42e89e: f359 fc05    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35980a
  42e8a2: b00d         	add	sp, #0x34
  42e8a4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x42e8a5); words below are literal-pool data ---
  42e8a6: bf00         	nop
  42e8a8: 4910         	ldr	r1, [pc, #0x40]         @ 0x42e8ec <IapManager::restore(bool)+0x804>
  42e8aa: 0050         	lsls	r0, r2, #0x1
  42e8ac: e03c         	b	0x42e928 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x18> @ imm = #0x78
  42e8ae: ffff e038    	vshr.u32	d30, d24, #0x1
  42e8b2: ffff f9d0    	<unknown>
  42e8b6: 003a         	movs	r2, r7
  42e8b8: f98e 003a    	<unknown>
  42e8bc: f950 003a    	<unknown>
  42e8c0: f912 003a    	ldrsb.w	r0, [r2, r10, lsl #3]
  42e8c4: f8d4 003a    	ldr.w	r0, [r4, #0x3a]
  42e8c8: f8ea 003a    	<unknown>
  42e8cc: f8ce 003a    	str.w	r0, [lr, #0x3a]
  42e8d0: f7c2 003a    	ubfx	r0, r2, #0x0, #0x1b
  42e8d4: f846 003a    	str.w	r0, [r6, r10, lsl #3]
  42e8d8: f82a 003a    	strh.w	r0, [r10, r10, lsl #3]
  42e8dc: f73a 003a    	<unknown>
  42e8e0: f7a2 003a    	<unknown>
  42e8e4: f786 003a    	<unknown>
  42e8e8: f6b6 003a    	<unknown>
  42e8ec: f700 003a    	<unknown>
  42e8f0: f6e6 003a    	<unknown>
  42e8f4: f638 003a    	<unknown>
  42e8f8: f662 003a    	<unknown>
  42e8fc: f648 003a    	movw	r0, #0x883a
  42e900: f5ba 003a    	subs.w	r0, r10, #0xba0000
  42e904: f57a 003a    	sbcs	r0, r10, #0xba0000
  42e908: f600 003a    	addw	r0, r0, #0x83a
  42e90c: f60a 003a    	addw	r0, r10, #0x83a

// ==== IapManager::checkStatusRestoreWithoutCacheReset
//      file offset 0x42e910 (= ELF address; Ghidra 0x43e910), 384 bytes, Thumb-2
  42e910: b510         	push	{r4, lr}
  42e912: b084         	sub	sp, #0x10
  42e914: 9001         	str	r0, [sp, #0x4]
  42e916: 9100         	str	r1, [sp]
  42e918: 4c55         	ldr	r4, [pc, #0x154]        @ 0x42ea70 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x160>
  42e91a: 447c         	add	r4, pc
  42e91c: 4b55         	ldr	r3, [pc, #0x154]        @ 0x42ea74 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x164>
  42e91e: 58e3         	ldr	r3, [r4, r3]
  42e920: ed93 7a00    	vldr	s14, [r3]
  42e924: eddd 7a00    	vldr	s15, [sp]
  42e928: ee77 7a27    	vadd.f32	s15, s14, s15
  42e92c: 4b51         	ldr	r3, [pc, #0x144]        @ 0x42ea74 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x164>
  42e92e: 58e3         	ldr	r3, [r4, r3]
  42e930: edc3 7a00    	vstr	s15, [r3]
  42e934: f7f3 fd7c    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #-0xc508
  42e938: 4603         	mov	r3, r0
  42e93a: 2b00         	cmp	r3, #0x0
  42e93c: f000 8096    	beq.w	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0x12c
  42e940: f749 f8fe    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb6e04
  42e944: 4603         	mov	r3, r0
  42e946: 4618         	mov	r0, r3
  42e948: f005 f9b2    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x5364
  42e94c: 4603         	mov	r3, r0
  42e94e: 2b00         	cmp	r3, #0x0
  42e950: f000 808c    	beq.w	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0x118
  42e954: f749 f8f4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb6e18
  42e958: 4603         	mov	r3, r0
  42e95a: 4618         	mov	r0, r3
  42e95c: f74c fb46    	bl	0x37afec <NetworkManager::hasCompletedSessionRequest()> @ imm = #-0xb3974
  42e960: 4603         	mov	r3, r0
  42e962: 2b00         	cmp	r3, #0x0
  42e964: d034         	beq	0x42e9d0 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0xc0> @ imm = #0x68
  42e966: 4b44         	ldr	r3, [pc, #0x110]        @ 0x42ea78 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x168>
  42e968: 58e3         	ldr	r3, [r4, r3]
  42e96a: 2200         	movs	r2, #0x0
  42e96c: 601a         	str	r2, [r3]
  42e96e: 4b41         	ldr	r3, [pc, #0x104]        @ 0x42ea74 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x164>
  42e970: 58e3         	ldr	r3, [r4, r3]
  42e972: f04f 0200    	mov.w	r2, #0x0
  42e976: 601a         	str	r2, [r3]
  42e978: 4b40         	ldr	r3, [pc, #0x100]        @ 0x42ea7c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x16c>
  42e97a: 58e3         	ldr	r3, [r4, r3]
  42e97c: 781b         	ldrb	r3, [r3]
  42e97e: 2b00         	cmp	r3, #0x0
  42e980: d074         	beq	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0xe8
  42e982: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x42ea7c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x16c>
  42e984: 58e3         	ldr	r3, [r4, r3]
  42e986: 2200         	movs	r2, #0x0
  42e988: 701a         	strb	r2, [r3]
  42e98a: ab02         	add	r3, sp, #0x8
  42e98c: 4618         	mov	r0, r3
  42e98e: f35b fd31    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35ba62
  42e992: aa03         	add	r2, sp, #0xc
  42e994: ab02         	add	r3, sp, #0x8
  42e996: 4610         	mov	r0, r2
  42e998: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x42ea80 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x170>
  42e99a: 447a         	add	r2, pc
  42e99c: 4611         	mov	r1, r2
  42e99e: 461a         	mov	r2, r3
  42e9a0: f388 f85e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3880bc
  42e9a4: ab03         	add	r3, sp, #0xc
  42e9a6: 9801         	ldr	r0, [sp, #0x4]
  42e9a8: 4619         	mov	r1, r3
  42e9aa: f000 fbcd    	bl	0x42f148 <IapManager::isProductPurchased(std::string)> @ imm = #0x79a
  42e9ae: 4603         	mov	r3, r0
  42e9b0: 461c         	mov	r4, r3
  42e9b2: ab03         	add	r3, sp, #0xc
  42e9b4: 4618         	mov	r0, r3
  42e9b6: f386 ffad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386f5a
  42e9ba: ab02         	add	r3, sp, #0x8
  42e9bc: 4618         	mov	r0, r3
  42e9be: f35b fd1d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ba3a
  42e9c2: 2c00         	cmp	r4, #0x0
  42e9c4: d152         	bne	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0xa4
  42e9c6: 9801         	ldr	r0, [sp, #0x4]
  42e9c8: 2100         	movs	r1, #0x0
  42e9ca: f7ff fb8d    	bl	0x42e0e8 <IapManager::restore(bool)> @ imm = #-0x8e6
  42e9ce: e04d         	b	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0x9a
  42e9d0: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x42ea78 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x168>
  42e9d2: 58e3         	ldr	r3, [r4, r3]
  42e9d4: 681b         	ldr	r3, [r3]
  42e9d6: ee07 3a90    	vmov	s15, r3
  42e9da: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  42e9de: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x42ea84 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x174>
  42e9e0: 58e3         	ldr	r3, [r4, r3]
  42e9e2: edd3 7a00    	vldr	s15, [r3]
  42e9e6: ee67 7a27    	vmul.f32	s15, s14, s15
  42e9ea: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x42ea88 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x178>
  42e9ec: 58e3         	ldr	r3, [r4, r3]
  42e9ee: edc3 7a00    	vstr	s15, [r3]
  42e9f2: 4b25         	ldr	r3, [pc, #0x94]         @ 0x42ea88 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x178>
  42e9f4: 58e3         	ldr	r3, [r4, r3]
  42e9f6: ed93 7a00    	vldr	s14, [r3]
  42e9fa: 4b24         	ldr	r3, [pc, #0x90]         @ 0x42ea8c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x17c>
  42e9fc: 58e3         	ldr	r3, [r4, r3]
  42e9fe: edd3 7a00    	vldr	s15, [r3]
  42ea02: eeb4 7ae7    	vcmpe.f32	s14, s15
  42ea06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  42ea0a: d504         	bpl	0x42ea16 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x106> @ imm = #0x8
  42ea0c: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x42ea88 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x178>
  42ea0e: 58e3         	ldr	r3, [r4, r3]
  42ea10: edd3 7a00    	vldr	s15, [r3]
  42ea14: e003         	b	0x42ea1e <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x10e> @ imm = #0x6
  42ea16: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x42ea8c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x17c>
  42ea18: 58e3         	ldr	r3, [r4, r3]
  42ea1a: edd3 7a00    	vldr	s15, [r3]
  42ea1e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x42ea74 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x164>
  42ea20: 58e3         	ldr	r3, [r4, r3]
  42ea22: ed93 7a00    	vldr	s14, [r3]
  42ea26: eef4 7ac7    	vcmpe.f32	s15, s14
  42ea2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  42ea2e: dc1d         	bgt	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0x3a
  42ea30: f749 f886    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb6ef4
  42ea34: 4603         	mov	r3, r0
  42ea36: 4618         	mov	r0, r3
  42ea38: f74c fb0c    	bl	0x37b054 <NetworkManager::requestWebSession()> @ imm = #-0xb39e8
  42ea3c: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x42ea78 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x168>
  42ea3e: 58e3         	ldr	r3, [r4, r3]
  42ea40: 681b         	ldr	r3, [r3]
  42ea42: 1c5a         	adds	r2, r3, #0x1
  42ea44: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x42ea78 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x168>
  42ea46: 58e3         	ldr	r3, [r4, r3]
  42ea48: 601a         	str	r2, [r3]
  42ea4a: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x42ea74 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x164>
  42ea4c: 58e3         	ldr	r3, [r4, r3]
  42ea4e: f04f 0200    	mov.w	r2, #0x0
  42ea52: 601a         	str	r2, [r3]
  42ea54: e00a         	b	0x42ea6c <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x15c> @ imm = #0x14
  42ea56: ab03         	add	r3, sp, #0xc
  42ea58: 4618         	mov	r0, r3
  42ea5a: f386 ff5b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386eb6
  42ea5e: e7ff         	b	0x42ea60 <IapManager::checkStatusRestoreWithoutCacheReset(float)+0x150> @ imm = #-0x2
  42ea60: ab02         	add	r3, sp, #0x8
  42ea62: 4618         	mov	r0, r3
  42ea64: f35b fcca    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b994
  42ea68: f359 fb20    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x359640
  42ea6c: b004         	add	sp, #0x10
  42ea6e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42ea6f); words below are literal-pool data ---
  42ea70: 40ee         	lsrs	r6, r5
  42ea72: 0050         	lsls	r0, r2, #0x1
  42ea74: e048         	b	0x42eb08 <requestPurchaseFromPlatform(std::string, std::string)+0x78> @ imm = #0x90
  42ea76: ffff e04c    	<unknown>
  42ea7a: ffff e040    	<unknown>
  42ea7e: ffff f1ba    	vsra.u64	d31, d26, #0x1
  42ea82: 003a         	movs	r2, r7
  42ea84: e050         	b	0x42eb28 <requestPurchaseFromPlatform(std::string, std::string)+0x98> @ imm = #0xa0
  42ea86: ffff e054    	vshr.u32	q15, q2, #0x1
  42ea8a: ffff e058    	vshr.u32	q15, q4, #0x1
  42ea8e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== IapManager::purchaseProduct
//      file offset 0x42eba4 (= ELF address; Ghidra 0x43eba4), 600 bytes, Thumb-2
  42eba4: b570         	push	{r4, r5, r6, lr}
  42eba6: b090         	sub	sp, #0x40
  42eba8: 9001         	str	r0, [sp, #0x4]
  42ebaa: 9100         	str	r1, [sp]
  42ebac: 4c8e         	ldr	r4, [pc, #0x238]        @ 0x42ede8 <IapManager::purchaseProduct(std::string)+0x244>
  42ebae: 447c         	add	r4, pc
  42ebb0: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x42edec <IapManager::purchaseProduct(std::string)+0x248>
  42ebb2: 58e3         	ldr	r3, [r4, r3]
  42ebb4: 4618         	mov	r0, r3
  42ebb6: f7fe fff3    	bl	0x42dba0 <initPurchasedSkusLookup(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>*)> @ imm = #-0x101a
  42ebba: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x42edec <IapManager::purchaseProduct(std::string)+0x248>
  42ebbc: 58e3         	ldr	r3, [r4, r3]
  42ebbe: 4618         	mov	r0, r3
  42ebc0: 9900         	ldr	r1, [sp]
  42ebc2: f000 fefb    	bl	0x42f9bc <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::count(std::string const&) const> @ imm = #0xdf6
  42ebc6: 4603         	mov	r3, r0
  42ebc8: 2b00         	cmp	r3, #0x0
  42ebca: bf14         	ite	ne
  42ebcc: 2300         	movne	r3, #0x0
  42ebce: 2301         	moveq	r3, #0x1
  42ebd0: b2db         	uxtb	r3, r3
  42ebd2: 2b00         	cmp	r3, #0x0
  42ebd4: d02f         	beq	0x42ec36 <IapManager::purchaseProduct(std::string)+0x92> @ imm = #0x5e
  42ebd6: ab07         	add	r3, sp, #0x1c
  42ebd8: 4618         	mov	r0, r3
  42ebda: 9900         	ldr	r1, [sp]
  42ebdc: f387 fc84    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x387908
  42ebe0: 2300         	movs	r3, #0x0
  42ebe2: f88d 3018    	strb.w	r3, [sp, #0x18]
  42ebe6: a90c         	add	r1, sp, #0x30
  42ebe8: aa07         	add	r2, sp, #0x1c
  42ebea: ab06         	add	r3, sp, #0x18
  42ebec: 4608         	mov	r0, r1
  42ebee: 4611         	mov	r1, r2
  42ebf0: 461a         	mov	r2, r3
  42ebf2: f7fe ff93    	bl	0x42db1c <std::pair<std::string, bool>::pair<std::string, bool, void>(std::string&&, bool&&)> @ imm = #-0x10da
  42ebf6: aa0e         	add	r2, sp, #0x38
  42ebf8: ab0c         	add	r3, sp, #0x30
  42ebfa: 4610         	mov	r0, r2
  42ebfc: 4a7b         	ldr	r2, [pc, #0x1ec]        @ 0x42edec <IapManager::purchaseProduct(std::string)+0x248>
  42ebfe: 58a2         	ldr	r2, [r4, r2]
  42ec00: 4611         	mov	r1, r2
  42ec02: 461a         	mov	r2, r3
  42ec04: f000 fec6    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0xd8c
  42ec08: ab0c         	add	r3, sp, #0x30
  42ec0a: 4618         	mov	r0, r3
  42ec0c: f7fe ffa0    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x10c0
  42ec10: ab07         	add	r3, sp, #0x1c
  42ec12: 4618         	mov	r0, r3
  42ec14: f386 fe7e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386cfc
  42ec18: ab0e         	add	r3, sp, #0x38
  42ec1a: 4618         	mov	r0, r3
  42ec1c: 9900         	ldr	r1, [sp]
  42ec1e: f387 fc63    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3878c6
  42ec22: ab0e         	add	r3, sp, #0x38
  42ec24: 9801         	ldr	r0, [sp, #0x4]
  42ec26: 4619         	mov	r1, r3
  42ec28: f7ff ffbc    	bl	0x42eba4 <IapManager::purchaseProduct(std::string)> @ imm = #-0x88
  42ec2c: ab0e         	add	r3, sp, #0x38
  42ec2e: 4618         	mov	r0, r3
  42ec30: f386 fe70    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386ce0
  42ec34: e0d5         	b	0x42ede2 <IapManager::purchaseProduct(std::string)+0x23e> @ imm = #0x1aa
  42ec36: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x42edec <IapManager::purchaseProduct(std::string)+0x248>
  42ec38: 58e3         	ldr	r3, [r4, r3]
  42ec3a: 4618         	mov	r0, r3
  42ec3c: 9900         	ldr	r1, [sp]
  42ec3e: f000 febd    	bl	0x42f9bc <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::count(std::string const&) const> @ imm = #0xd7a
  42ec42: 4603         	mov	r3, r0
  42ec44: 2b01         	cmp	r3, #0x1
  42ec46: bf14         	ite	ne
  42ec48: 2300         	movne	r3, #0x0
  42ec4a: 2301         	moveq	r3, #0x1
  42ec4c: b2db         	uxtb	r3, r3
  42ec4e: 2b00         	cmp	r3, #0x0
  42ec50: f000 809b    	beq.w	0x42ed8a <IapManager::purchaseProduct(std::string)+0x1e6> @ imm = #0x136
  42ec54: ab04         	add	r3, sp, #0x10
  42ec56: 4618         	mov	r0, r3
  42ec58: f000 fed2    	bl	0x42fa00 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::_Rb_tree_iterator()> @ imm = #0xda4
  42ec5c: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x42edec <IapManager::purchaseProduct(std::string)+0x248>
  42ec5e: 58e3         	ldr	r3, [r4, r3]
  42ec60: 4618         	mov	r0, r3
  42ec62: 9900         	ldr	r1, [sp]
  42ec64: f000 fed6    	bl	0x42fa14 <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::find(std::string const&)> @ imm = #0xdac
  42ec68: 4603         	mov	r3, r0
  42ec6a: 930e         	str	r3, [sp, #0x38]
  42ec6c: ab0e         	add	r3, sp, #0x38
  42ec6e: 4618         	mov	r0, r3
  42ec70: f000 fede    	bl	0x42fa30 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator->() const> @ imm = #0xdbc
  42ec74: 4603         	mov	r3, r0
  42ec76: 791b         	ldrb	r3, [r3, #0x4]
  42ec78: f88d 300f    	strb.w	r3, [sp, #0xf]
  42ec7c: f748 ff60    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb7140
  42ec80: 4603         	mov	r3, r0
  42ec82: 4618         	mov	r0, r3
  42ec84: f74c f9b2    	bl	0x37afec <NetworkManager::hasCompletedSessionRequest()> @ imm = #-0xb3c9c
  42ec88: f748 ff5a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb714c
  42ec8c: 4603         	mov	r3, r0
  42ec8e: aa05         	add	r2, sp, #0x14
  42ec90: 4610         	mov	r0, r2
  42ec92: 4619         	mov	r1, r3
  42ec94: f74c f9ca    	bl	0x37b02c <NetworkManager::getPrivateClientToken()> @ imm = #-0xb3c6c
  42ec98: 9800         	ldr	r0, [sp]
  42ec9a: f386 fb31    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x386662
  42ec9e: 9008         	str	r0, [sp, #0x20]
  42eca0: 9800         	ldr	r0, [sp]
  42eca2: f386 f9db    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3863b6
  42eca6: 9009         	str	r0, [sp, #0x24]
  42eca8: ab06         	add	r3, sp, #0x18
  42ecaa: 9808         	ldr	r0, [sp, #0x20]
  42ecac: 9909         	ldr	r1, [sp, #0x24]
  42ecae: 461a         	mov	r2, r3
  42ecb0: f1b3 ffda    	bl	0x5e2c68 <base64Encode> @ imm = #0x1b3fb4
  42ecb4: f748 ff44    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb7178
  42ecb8: 4605         	mov	r5, r0
  42ecba: 9e06         	ldr	r6, [sp, #0x18]
  42ecbc: ab0e         	add	r3, sp, #0x38
  42ecbe: 4618         	mov	r0, r3
  42ecc0: f35b fb98    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35b730
  42ecc4: aa0c         	add	r2, sp, #0x30
  42ecc6: ab0e         	add	r3, sp, #0x38
  42ecc8: 4610         	mov	r0, r2
  42ecca: 4631         	mov	r1, r6
  42eccc: 461a         	mov	r2, r3
  42ecce: f387 fec7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x387d8e
  42ecd2: aa07         	add	r2, sp, #0x1c
  42ecd4: ab0c         	add	r3, sp, #0x30
  42ecd6: 4610         	mov	r0, r2
  42ecd8: 4629         	mov	r1, r5
  42ecda: 461a         	mov	r2, r3
  42ecdc: f748 fe70    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #-0xb7320
  42ece0: ab0c         	add	r3, sp, #0x30
  42ece2: 4618         	mov	r0, r3
  42ece4: f386 fe16    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386c2c
  42ece8: ab0e         	add	r3, sp, #0x38
  42ecea: 4618         	mov	r0, r3
  42ecec: f35b fb86    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b70c
  42ecf0: ab05         	add	r3, sp, #0x14
  42ecf2: 4618         	mov	r0, r3
  42ecf4: f386 fb04    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x386608
  42ecf8: 4606         	mov	r6, r0
  42ecfa: f7f3 fc2b    	bl	0x422554 <ApplicationInterface::getPlatformId()> @ imm = #-0xc7aa
  42ecfe: 4605         	mov	r5, r0
  42ed00: ab07         	add	r3, sp, #0x1c
  42ed02: 4618         	mov	r0, r3
  42ed04: f386 fafc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3865f8
  42ed08: 4603         	mov	r3, r0
  42ed0a: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x42edf0 <IapManager::purchaseProduct(std::string)+0x24c>
  42ed0c: 447a         	add	r2, pc
  42ed0e: 4610         	mov	r0, r2
  42ed10: 4631         	mov	r1, r6
  42ed12: 462a         	mov	r2, r5
  42ed14: f16a fefc    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x16adf8
  42ed18: 4603         	mov	r3, r0
  42ed1a: 930a         	str	r3, [sp, #0x28]
  42ed1c: f748 ff10    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb71e0
  42ed20: 4605         	mov	r5, r0
  42ed22: 980a         	ldr	r0, [sp, #0x28]
  42ed24: f16a fe00    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x16ac00
  42ed28: 4603         	mov	r3, r0
  42ed2a: 4628         	mov	r0, r5
  42ed2c: 4619         	mov	r1, r3
  42ed2e: f748 feb3    	bl	0x377a98 <NetworkManager::createAppsomniacsRequest(char const*)> @ imm = #-0xb729a
  42ed32: 4603         	mov	r3, r0
  42ed34: 930b         	str	r3, [sp, #0x2c]
  42ed36: 980b         	ldr	r0, [sp, #0x2c]
  42ed38: 2100         	movs	r1, #0x0
  42ed3a: f748 fb15    	bl	0x377368 <cocos2d::extension::CCHttpRequest::setRequestType(cocos2d::extension::CCHttpRequest::HttpRequestType)> @ imm = #-0xb79d6
  42ed3e: 9b01         	ldr	r3, [sp, #0x4]
  42ed40: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x42edf4 <IapManager::purchaseProduct(std::string)+0x250>
  42ed42: 58a2         	ldr	r2, [r4, r2]
  42ed44: 920e         	str	r2, [sp, #0x38]
  42ed46: 2200         	movs	r2, #0x0
  42ed48: 920f         	str	r2, [sp, #0x3c]
  42ed4a: 980b         	ldr	r0, [sp, #0x2c]
  42ed4c: 4619         	mov	r1, r3
  42ed4e: ab0e         	add	r3, sp, #0x38
  42ed50: cb0c         	ldm	r3, {r2, r3}
  42ed52: f748 fb41    	bl	0x3773d8 <cocos2d::extension::CCHttpRequest::setResponseCallback(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*))> @ imm = #-0xb797e
  42ed56: 980b         	ldr	r0, [sp, #0x2c]
  42ed58: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x42edf8 <IapManager::purchaseProduct(std::string)+0x254>
  42ed5a: 447b         	add	r3, pc
  42ed5c: 4619         	mov	r1, r3
  42ed5e: f748 fb2d    	bl	0x3773bc <cocos2d::extension::CCHttpRequest::setTag(char const*)> @ imm = #-0xb79a6
  42ed62: f029 fe6b    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0x29cd6
  42ed66: 4603         	mov	r3, r0
  42ed68: 4618         	mov	r0, r3
  42ed6a: 990b         	ldr	r1, [sp, #0x2c]
  42ed6c: f029 ffc6    	bl	0x458cfc <cocos2d::extension::CCHttpClient::send(cocos2d::extension::CCHttpRequest*)> @ imm = #0x29f8c
  42ed70: 9b0b         	ldr	r3, [sp, #0x2c]
  42ed72: 4618         	mov	r0, r3
  42ed74: f169 f8a0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x169140
  42ed78: ab07         	add	r3, sp, #0x1c
  42ed7a: 4618         	mov	r0, r3
  42ed7c: f386 fdca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b94
  42ed80: ab05         	add	r3, sp, #0x14
  42ed82: 4618         	mov	r0, r3
  42ed84: f386 fdc6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b8c
  42ed88: e02b         	b	0x42ede2 <IapManager::purchaseProduct(std::string)+0x23e> @ imm = #0x56
  42ed8a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x42edec <IapManager::purchaseProduct(std::string)+0x248>
  42ed8c: 58e3         	ldr	r3, [r4, r3]
  42ed8e: 4618         	mov	r0, r3
  42ed90: 9900         	ldr	r1, [sp]
  42ed92: f000 fe13    	bl	0x42f9bc <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::count(std::string const&) const> @ imm = #0xc26
  42ed96: e024         	b	0x42ede2 <IapManager::purchaseProduct(std::string)+0x23e> @ imm = #0x48
  42ed98: ab0c         	add	r3, sp, #0x30
  42ed9a: 4618         	mov	r0, r3
  42ed9c: f7fe fed8    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x1250
  42eda0: ab07         	add	r3, sp, #0x1c
  42eda2: 4618         	mov	r0, r3
  42eda4: f386 fdb6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b6c
  42eda8: f359 f980    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x359300
  42edac: ab0e         	add	r3, sp, #0x38
  42edae: 4618         	mov	r0, r3
  42edb0: f386 fdb0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b60
  42edb4: f359 f97a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3592f4
  42edb8: ab0c         	add	r3, sp, #0x30
  42edba: 4618         	mov	r0, r3
  42edbc: f386 fdaa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b54
  42edc0: e7ff         	b	0x42edc2 <IapManager::purchaseProduct(std::string)+0x21e> @ imm = #-0x2
  42edc2: ab0e         	add	r3, sp, #0x38
  42edc4: 4618         	mov	r0, r3
  42edc6: f35b fb19    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b632
  42edca: e004         	b	0x42edd6 <IapManager::purchaseProduct(std::string)+0x232> @ imm = #0x8
  42edcc: ab07         	add	r3, sp, #0x1c
  42edce: 4618         	mov	r0, r3
  42edd0: f386 fda0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b40
  42edd4: e7ff         	b	0x42edd6 <IapManager::purchaseProduct(std::string)+0x232> @ imm = #-0x2
  42edd6: ab05         	add	r3, sp, #0x14
  42edd8: 4618         	mov	r0, r3
  42edda: f386 fd9b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386b36
  42edde: f359 f965    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3592ca
  42ede2: b010         	add	sp, #0x40
  42ede4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x42ede5); words below are literal-pool data ---
  42ede6: bf00         	nop
  42ede8: 3e5a         	subs	r6, #0x5a
  42edea: 0050         	lsls	r0, r2, #0x1
  42edec: e038         	b	0x42ee60 <IapManager::registerPurchase(std::string, std::string, std::string)+0x64> @ imm = #0x70
  42edee: ffff efbc    	<unknown>
  42edf2: 003a         	movs	r2, r7
  42edf4: e05c         	b	0x42eeb0 <IapManager::registerPurchase(std::string, std::string, std::string)+0xb4> @ imm = #0xb8
  42edf6: ffff ef96    	<unknown>
  42edfa: 003a         	movs	r2, r7

// ==== IapManager::registerPurchase
//      file offset 0x42edfc (= ELF address; Ghidra 0x43edfc), 844 bytes, Thumb-2
  42edfc: b570         	push	{r4, r5, r6, lr}
  42edfe: b0b2         	sub	sp, #0xc8
  42ee00: 9003         	str	r0, [sp, #0xc]
  42ee02: 9102         	str	r1, [sp, #0x8]
  42ee04: 9201         	str	r2, [sp, #0x4]
  42ee06: 9300         	str	r3, [sp]
  42ee08: 4cc8         	ldr	r4, [pc, #0x320]        @ 0x42f12c <IapManager::registerPurchase(std::string, std::string, std::string)+0x330>
  42ee0a: 447c         	add	r4, pc
  42ee0c: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x42f130 <IapManager::registerPurchase(std::string, std::string, std::string)+0x334>
  42ee0e: 58e3         	ldr	r3, [r4, r3]
  42ee10: 4618         	mov	r0, r3
  42ee12: f7fe fec5    	bl	0x42dba0 <initPurchasedSkusLookup(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>*)> @ imm = #-0x1276
  42ee16: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x42f130 <IapManager::registerPurchase(std::string, std::string, std::string)+0x334>
  42ee18: 58e3         	ldr	r3, [r4, r3]
  42ee1a: 4618         	mov	r0, r3
  42ee1c: 9900         	ldr	r1, [sp]
  42ee1e: f000 fe15    	bl	0x42fa4c <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::lower_bound(std::string const&)> @ imm = #0xc2a
  42ee22: 4603         	mov	r3, r0
  42ee24: 9305         	str	r3, [sp, #0x14]
  42ee26: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x42f130 <IapManager::registerPurchase(std::string, std::string, std::string)+0x334>
  42ee28: 58e3         	ldr	r3, [r4, r3]
  42ee2a: 4618         	mov	r0, r3
  42ee2c: f000 fe1c    	bl	0x42fa68 <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::end()> @ imm = #0xc38
  42ee30: 4603         	mov	r3, r0
  42ee32: 9306         	str	r3, [sp, #0x18]
  42ee34: 2501         	movs	r5, #0x1
  42ee36: aa05         	add	r2, sp, #0x14
  42ee38: ab06         	add	r3, sp, #0x18
  42ee3a: 4610         	mov	r0, r2
  42ee3c: 4619         	mov	r1, r3
  42ee3e: f000 fe1f    	bl	0x42fa80 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator==(std::_Rb_tree_iterator<std::pair<std::string const, bool>> const&) const> @ imm = #0xc3e
  42ee42: 4603         	mov	r3, r0
  42ee44: 2b00         	cmp	r3, #0x0
  42ee46: d10b         	bne	0x42ee60 <IapManager::registerPurchase(std::string, std::string, std::string)+0x64> @ imm = #0x16
  42ee48: ab05         	add	r3, sp, #0x14
  42ee4a: 4618         	mov	r0, r3
  42ee4c: f000 fdf0    	bl	0x42fa30 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator->() const> @ imm = #0xbe0
  42ee50: 4603         	mov	r3, r0
  42ee52: 9800         	ldr	r0, [sp]
  42ee54: 4619         	mov	r1, r3
  42ee56: f6ff fd71    	bl	0x32e93c <bool std::operator<<char, std::char_traits<char>, std::allocator<char>>(std::basic_string<char, std::char_traits<char>, std::allocator<char>> const&, std::basic_string<char, std::char_traits<char>, std::allocator<char>> const&)> @ imm = #-0x10051e
  42ee5a: 4603         	mov	r3, r0
  42ee5c: 2b00         	cmp	r3, #0x0
  42ee5e: d001         	beq	0x42ee64 <IapManager::registerPurchase(std::string, std::string, std::string)+0x68> @ imm = #0x2
  42ee60: 2301         	movs	r3, #0x1
  42ee62: e000         	b	0x42ee66 <IapManager::registerPurchase(std::string, std::string, std::string)+0x6a> @ imm = #0x0
  42ee64: 2300         	movs	r3, #0x0
  42ee66: 2d00         	cmp	r5, #0x0
  42ee68: 2b00         	cmp	r3, #0x0
  42ee6a: d108         	bne	0x42ee7e <IapManager::registerPurchase(std::string, std::string, std::string)+0x82> @ imm = #0x10
  42ee6c: ab05         	add	r3, sp, #0x14
  42ee6e: 4618         	mov	r0, r3
  42ee70: f000 fdde    	bl	0x42fa30 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator->() const> @ imm = #0xbbc
  42ee74: 4603         	mov	r3, r0
  42ee76: 791b         	ldrb	r3, [r3, #0x4]
  42ee78: 2b00         	cmp	r3, #0x0
  42ee7a: d000         	beq	0x42ee7e <IapManager::registerPurchase(std::string, std::string, std::string)+0x82> @ imm = #0x0
  42ee7c: e153         	b	0x42f126 <IapManager::registerPurchase(std::string, std::string, std::string)+0x32a> @ imm = #0x2a6
  42ee7e: f748 fe5f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb7342
  42ee82: 4603         	mov	r3, r0
  42ee84: 4618         	mov	r0, r3
  42ee86: f74c f8b1    	bl	0x37afec <NetworkManager::hasCompletedSessionRequest()> @ imm = #-0xb3e9e
  42ee8a: 4603         	mov	r3, r0
  42ee8c: f083 0301    	eor	r3, r3, #0x1
  42ee90: b2db         	uxtb	r3, r3
  42ee92: 2b00         	cmp	r3, #0x0
  42ee94: d000         	beq	0x42ee98 <IapManager::registerPurchase(std::string, std::string, std::string)+0x9c> @ imm = #0x0
  42ee96: e146         	b	0x42f126 <IapManager::registerPurchase(std::string, std::string, std::string)+0x32a> @ imm = #0x28c
  42ee98: f748 fe52    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb735c
  42ee9c: 4603         	mov	r3, r0
  42ee9e: aa07         	add	r2, sp, #0x1c
  42eea0: 4610         	mov	r0, r2
  42eea2: 4619         	mov	r1, r3
  42eea4: f74c f8c2    	bl	0x37b02c <NetworkManager::getPrivateClientToken()> @ imm = #-0xb3e7c
  42eea8: 9800         	ldr	r0, [sp]
  42eeaa: f386 fa29    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x386452
  42eeae: 900b         	str	r0, [sp, #0x2c]
  42eeb0: 9800         	ldr	r0, [sp]
  42eeb2: f386 f8d3    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3861a6
  42eeb6: 900c         	str	r0, [sp, #0x30]
  42eeb8: ab08         	add	r3, sp, #0x20
  42eeba: 980b         	ldr	r0, [sp, #0x2c]
  42eebc: 990c         	ldr	r1, [sp, #0x30]
  42eebe: 461a         	mov	r2, r3
  42eec0: f1b3 fed2    	bl	0x5e2c68 <base64Encode> @ imm = #0x1b3da4
  42eec4: f748 fe3c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb7388
  42eec8: 4605         	mov	r5, r0
  42eeca: 9e08         	ldr	r6, [sp, #0x20]
  42eecc: ab26         	add	r3, sp, #0x98
  42eece: 4618         	mov	r0, r3
  42eed0: f35b fa90    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35b520
  42eed4: aa0a         	add	r2, sp, #0x28
  42eed6: ab26         	add	r3, sp, #0x98
  42eed8: 4610         	mov	r0, r2
  42eeda: 4631         	mov	r1, r6
  42eedc: 461a         	mov	r2, r3
  42eede: f387 fdbf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x387b7e
  42eee2: aa09         	add	r2, sp, #0x24
  42eee4: ab0a         	add	r3, sp, #0x28
  42eee6: 4610         	mov	r0, r2
  42eee8: 4629         	mov	r1, r5
  42eeea: 461a         	mov	r2, r3
  42eeec: f748 fd68    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #-0xb7530
  42eef0: ab0a         	add	r3, sp, #0x28
  42eef2: 4618         	mov	r0, r3
  42eef4: f386 fd0e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386a1c
  42eef8: ab26         	add	r3, sp, #0x98
  42eefa: 4618         	mov	r0, r3
  42eefc: f35b fa7e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b4fc
  42ef00: ab07         	add	r3, sp, #0x1c
  42ef02: 4618         	mov	r0, r3
  42ef04: f386 f9fc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3863f8
  42ef08: 4606         	mov	r6, r0
  42ef0a: f7f3 fb23    	bl	0x422554 <ApplicationInterface::getPlatformId()> @ imm = #-0xc9ba
  42ef0e: 4605         	mov	r5, r0
  42ef10: ab09         	add	r3, sp, #0x24
  42ef12: 4618         	mov	r0, r3
  42ef14: f386 f9f4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3863e8
  42ef18: 4603         	mov	r3, r0
  42ef1a: 4a86         	ldr	r2, [pc, #0x218]        @ 0x42f134 <IapManager::registerPurchase(std::string, std::string, std::string)+0x338>
  42ef1c: 447a         	add	r2, pc
  42ef1e: 4610         	mov	r0, r2
  42ef20: 4631         	mov	r1, r6
  42ef22: 462a         	mov	r2, r5
  42ef24: f16a fdf4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x16abe8
  42ef28: 4603         	mov	r3, r0
  42ef2a: 930d         	str	r3, [sp, #0x34]
  42ef2c: f748 fe08    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb73f0
  42ef30: 4605         	mov	r5, r0
  42ef32: 980d         	ldr	r0, [sp, #0x34]
  42ef34: f16a fcf8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x16a9f0
  42ef38: 4603         	mov	r3, r0
  42ef3a: 4628         	mov	r0, r5
  42ef3c: 4619         	mov	r1, r3
  42ef3e: f748 fdab    	bl	0x377a98 <NetworkManager::createAppsomniacsRequest(char const*)> @ imm = #-0xb74aa
  42ef42: 4603         	mov	r3, r0
  42ef44: 930e         	str	r3, [sp, #0x38]
  42ef46: 980e         	ldr	r0, [sp, #0x38]
  42ef48: 2101         	movs	r1, #0x1
  42ef4a: f748 fa0d    	bl	0x377368 <cocos2d::extension::CCHttpRequest::setRequestType(cocos2d::extension::CCHttpRequest::HttpRequestType)> @ imm = #-0xb7be6
  42ef4e: 9b03         	ldr	r3, [sp, #0xc]
  42ef50: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x42f138 <IapManager::registerPurchase(std::string, std::string, std::string)+0x33c>
  42ef52: 58a2         	ldr	r2, [r4, r2]
  42ef54: 920f         	str	r2, [sp, #0x3c]
  42ef56: 2200         	movs	r2, #0x0
  42ef58: 9210         	str	r2, [sp, #0x40]
  42ef5a: 980e         	ldr	r0, [sp, #0x38]
  42ef5c: 4619         	mov	r1, r3
  42ef5e: ab0f         	add	r3, sp, #0x3c
  42ef60: cb0c         	ldm	r3, {r2, r3}
  42ef62: f748 fa39    	bl	0x3773d8 <cocos2d::extension::CCHttpRequest::setResponseCallback(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*))> @ imm = #-0xb7b8e
  42ef66: 9801         	ldr	r0, [sp, #0x4]
  42ef68: f386 f878    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3860f0
  42ef6c: 4603         	mov	r3, r0
  42ef6e: 2b00         	cmp	r3, #0x0
  42ef70: bf14         	ite	ne
  42ef72: 2300         	movne	r3, #0x0
  42ef74: 2301         	moveq	r3, #0x1
  42ef76: b2db         	uxtb	r3, r3
  42ef78: 2b00         	cmp	r3, #0x0
  42ef7a: d004         	beq	0x42ef86 <IapManager::registerPurchase(std::string, std::string, std::string)+0x18a> @ imm = #0x8
  42ef7c: ab07         	add	r3, sp, #0x1c
  42ef7e: 9801         	ldr	r0, [sp, #0x4]
  42ef80: 4619         	mov	r1, r3
  42ef82: f387 fb17    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x38762e
  42ef86: 9802         	ldr	r0, [sp, #0x8]
  42ef88: f386 f868    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3860d0
  42ef8c: 4603         	mov	r3, r0
  42ef8e: 2b00         	cmp	r3, #0x0
  42ef90: bf14         	ite	ne
  42ef92: 2300         	movne	r3, #0x0
  42ef94: 2301         	moveq	r3, #0x1
  42ef96: b2db         	uxtb	r3, r3
  42ef98: 2b00         	cmp	r3, #0x0
  42ef9a: d005         	beq	0x42efa8 <IapManager::registerPurchase(std::string, std::string, std::string)+0x1ac> @ imm = #0xa
  42ef9c: 9802         	ldr	r0, [sp, #0x8]
  42ef9e: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x42f13c <IapManager::registerPurchase(std::string, std::string, std::string)+0x340>
  42efa0: 447b         	add	r3, pc
  42efa2: 4619         	mov	r1, r3
  42efa4: f386 ff64    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x386ec8
  42efa8: ab26         	add	r3, sp, #0x98
  42efaa: 4618         	mov	r0, r3
  42efac: 2100         	movs	r1, #0x0
  42efae: f44f 6280    	mov.w	r2, #0x400
  42efb2: f74c ffe3    	bl	0x37bf7c <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericDocument(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #-0xb303a
  42efb6: ab26         	add	r3, sp, #0x98
  42efb8: 4618         	mov	r0, r3
  42efba: f7f4 fa4d    	bl	0x423458 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetObject()> @ imm = #-0xbb66
  42efbe: ab11         	add	r3, sp, #0x44
  42efc0: 4618         	mov	r0, r3
  42efc2: f74d fca9    	bl	0x37c918 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue()> @ imm = #-0xb26ae
  42efc6: 9801         	ldr	r0, [sp, #0x4]
  42efc8: f386 f99a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x386334
  42efcc: 4603         	mov	r3, r0
  42efce: aa11         	add	r2, sp, #0x44
  42efd0: 4610         	mov	r0, r2
  42efd2: 4619         	mov	r1, r3
  42efd4: f000 fd64    	bl	0x42faa0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetString(char const*)> @ imm = #0xac8
  42efd8: ab26         	add	r3, sp, #0x98
  42efda: 4618         	mov	r0, r3
  42efdc: f750 fa6a    	bl	0x37f4b4 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetAllocator()> @ imm = #-0xafb2c
  42efe0: 4603         	mov	r3, r0
  42efe2: a926         	add	r1, sp, #0x98
  42efe4: aa11         	add	r2, sp, #0x44
  42efe6: 4608         	mov	r0, r1
  42efe8: 4955         	ldr	r1, [pc, #0x154]        @ 0x42f140 <IapManager::registerPurchase(std::string, std::string, std::string)+0x344>
  42efea: 4479         	add	r1, pc
  42efec: f000 fd6a    	bl	0x42fac4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::AddMember(char const*, rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>&, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&)> @ imm = #0xad4
  42eff0: ab15         	add	r3, sp, #0x54
  42eff2: 4618         	mov	r0, r3
  42eff4: f74d fc90    	bl	0x37c918 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue()> @ imm = #-0xb26e0
  42eff8: 9802         	ldr	r0, [sp, #0x8]
  42effa: f386 f981    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x386302
  42effe: 4603         	mov	r3, r0
  42f000: aa15         	add	r2, sp, #0x54
  42f002: 4610         	mov	r0, r2
  42f004: 4619         	mov	r1, r3
  42f006: f000 fd4b    	bl	0x42faa0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetString(char const*)> @ imm = #0xa96
  42f00a: ab26         	add	r3, sp, #0x98
  42f00c: 4618         	mov	r0, r3
  42f00e: f750 fa51    	bl	0x37f4b4 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetAllocator()> @ imm = #-0xafb5e
  42f012: 4603         	mov	r3, r0
  42f014: a926         	add	r1, sp, #0x98
  42f016: aa15         	add	r2, sp, #0x54
  42f018: 4608         	mov	r0, r1
  42f01a: 494a         	ldr	r1, [pc, #0x128]        @ 0x42f144 <IapManager::registerPurchase(std::string, std::string, std::string)+0x348>
  42f01c: 4479         	add	r1, pc
  42f01e: f000 fd51    	bl	0x42fac4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::AddMember(char const*, rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>&, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&)> @ imm = #0xaa2
  42f022: ab19         	add	r3, sp, #0x64
  42f024: 4618         	mov	r0, r3
  42f026: 2100         	movs	r1, #0x0
  42f028: f44f 7280    	mov.w	r2, #0x100
  42f02c: f7f4 fa32    	bl	0x423494 <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::GenericStringBuffer(rapidjson::CrtAllocator*, unsigned int)> @ imm = #-0xbb9c
  42f030: aa1f         	add	r2, sp, #0x7c
  42f032: ab19         	add	r3, sp, #0x64
  42f034: 4610         	mov	r0, r2
  42f036: 4619         	mov	r1, r3
  42f038: 2200         	movs	r2, #0x0
  42f03a: 2320         	movs	r3, #0x20
  42f03c: f7f4 fa4c    	bl	0x4234d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Writer(rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>&, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #-0xbb68
  42f040: aa26         	add	r2, sp, #0x98
  42f042: ab1f         	add	r3, sp, #0x7c
  42f044: 4610         	mov	r0, r2
  42f046: 4619         	mov	r1, r3
  42f048: f7f4 fa5e    	bl	0x423508 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> const& rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>&) const> @ imm = #-0xbb44
  42f04c: ab19         	add	r3, sp, #0x64
  42f04e: 4618         	mov	r0, r3
  42f050: f7f4 fbaa    	bl	0x4237a8 <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::GetString() const> @ imm = #-0xb8ac
  42f054: 4604         	mov	r4, r0
  42f056: ab19         	add	r3, sp, #0x64
  42f058: 4618         	mov	r0, r3
  42f05a: f7f4 fba5    	bl	0x4237a8 <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::GetString() const> @ imm = #-0xb8b6
  42f05e: 4603         	mov	r3, r0
  42f060: 4618         	mov	r0, r3
  42f062: f6a6 ef6a    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0x15912c
  42f066: 4603         	mov	r3, r0
  42f068: 980e         	ldr	r0, [sp, #0x38]
  42f06a: 4621         	mov	r1, r4
  42f06c: 461a         	mov	r2, r3
  42f06e: f748 f991    	bl	0x377394 <cocos2d::extension::CCHttpRequest::setRequestData(char const*, unsigned int)> @ imm = #-0xb7cde
  42f072: f029 fce3    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0x299c6
  42f076: 4603         	mov	r3, r0
  42f078: 4618         	mov	r0, r3
  42f07a: 990e         	ldr	r1, [sp, #0x38]
  42f07c: f029 fe3e    	bl	0x458cfc <cocos2d::extension::CCHttpClient::send(cocos2d::extension::CCHttpRequest*)> @ imm = #0x29c7c
  42f080: 9b0e         	ldr	r3, [sp, #0x38]
  42f082: 4618         	mov	r0, r3
  42f084: f168 ff18    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x168e30
  42f088: ab1f         	add	r3, sp, #0x7c
  42f08a: 4618         	mov	r0, r3
  42f08c: f7f3 fa72    	bl	0x422574 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Writer()> @ imm = #-0xcb1c
  42f090: ab19         	add	r3, sp, #0x64
  42f092: 4618         	mov	r0, r3
  42f094: f7f3 fa62    	bl	0x42255c <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::~GenericStringBuffer()> @ imm = #-0xcb3c
  42f098: ab15         	add	r3, sp, #0x54
  42f09a: 4618         	mov	r0, r3
  42f09c: f74c ff90    	bl	0x37bfc0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericValue()> @ imm = #-0xb30e0
  42f0a0: ab11         	add	r3, sp, #0x44
  42f0a2: 4618         	mov	r0, r3
  42f0a4: f74c ff8c    	bl	0x37bfc0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericValue()> @ imm = #-0xb30e8
  42f0a8: ab26         	add	r3, sp, #0x98
  42f0aa: 4618         	mov	r0, r3
  42f0ac: f74b fc3a    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0xb478c
  42f0b0: ab09         	add	r3, sp, #0x24
  42f0b2: 4618         	mov	r0, r3
  42f0b4: f386 fc2e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38685c
  42f0b8: ab07         	add	r3, sp, #0x1c
  42f0ba: 4618         	mov	r0, r3
  42f0bc: f386 fc2a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386854
  42f0c0: e031         	b	0x42f126 <IapManager::registerPurchase(std::string, std::string, std::string)+0x32a> @ imm = #0x62
  42f0c2: 2d00         	cmp	r5, #0x0
  42f0c4: bf00         	nop
  42f0c6: f358 fff1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x358fe2
  42f0ca: ab0a         	add	r3, sp, #0x28
  42f0cc: 4618         	mov	r0, r3
  42f0ce: f386 fc21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386842
  42f0d2: e7ff         	b	0x42f0d4 <IapManager::registerPurchase(std::string, std::string, std::string)+0x2d8> @ imm = #-0x2
  42f0d4: ab26         	add	r3, sp, #0x98
  42f0d6: 4618         	mov	r0, r3
  42f0d8: f35b f990    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b320
  42f0dc: e01d         	b	0x42f11a <IapManager::registerPurchase(std::string, std::string, std::string)+0x31e> @ imm = #0x3a
  42f0de: ab1f         	add	r3, sp, #0x7c
  42f0e0: 4618         	mov	r0, r3
  42f0e2: f7f3 fa47    	bl	0x422574 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Writer()> @ imm = #-0xcb72
  42f0e6: e7ff         	b	0x42f0e8 <IapManager::registerPurchase(std::string, std::string, std::string)+0x2ec> @ imm = #-0x2
  42f0e8: ab19         	add	r3, sp, #0x64
  42f0ea: 4618         	mov	r0, r3
  42f0ec: f7f3 fa36    	bl	0x42255c <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::~GenericStringBuffer()> @ imm = #-0xcb94
  42f0f0: e7ff         	b	0x42f0f2 <IapManager::registerPurchase(std::string, std::string, std::string)+0x2f6> @ imm = #-0x2
  42f0f2: ab15         	add	r3, sp, #0x54
  42f0f4: 4618         	mov	r0, r3
  42f0f6: f74c ff63    	bl	0x37bfc0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericValue()> @ imm = #-0xb313a
  42f0fa: e7ff         	b	0x42f0fc <IapManager::registerPurchase(std::string, std::string, std::string)+0x300> @ imm = #-0x2
  42f0fc: ab11         	add	r3, sp, #0x44
  42f0fe: 4618         	mov	r0, r3
  42f100: f74c ff5e    	bl	0x37bfc0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericValue()> @ imm = #-0xb3144
  42f104: e7ff         	b	0x42f106 <IapManager::registerPurchase(std::string, std::string, std::string)+0x30a> @ imm = #-0x2
  42f106: ab26         	add	r3, sp, #0x98
  42f108: 4618         	mov	r0, r3
  42f10a: f74b fc0b    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0xb47ea
  42f10e: e7ff         	b	0x42f110 <IapManager::registerPurchase(std::string, std::string, std::string)+0x314> @ imm = #-0x2
  42f110: ab09         	add	r3, sp, #0x24
  42f112: 4618         	mov	r0, r3
  42f114: f386 fbfe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3867fc
  42f118: e7ff         	b	0x42f11a <IapManager::registerPurchase(std::string, std::string, std::string)+0x31e> @ imm = #-0x2
  42f11a: ab07         	add	r3, sp, #0x1c
  42f11c: 4618         	mov	r0, r3
  42f11e: f386 fbf9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3867f2
  42f122: f358 ffc3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x358f86
  42f126: b032         	add	sp, #0xc8
  42f128: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x42f129); words below are literal-pool data ---
  42f12a: bf00         	nop
  42f12c: 3bfe         	subs	r3, #0xfe
  42f12e: 0050         	lsls	r0, r2, #0x1
  42f130: e038         	b	0x42f1a4 <IapManager::isProductPurchased(std::string)+0x5c> @ imm = #0x70
  42f132: ffff edec    	<unknown>
  42f136: 003a         	movs	r2, r7
  42f138: e060         	b	0x42f1fc <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x28> @ imm = #0xc0
  42f13a: ffff ed94    	<unknown>
  42f13e: 003a         	movs	r2, r7
  42f140: ed4e 003a    	stcl	p0, c0, [lr, #-232]
  42f144: ed28 003a    	stc	p0, c0, [r8, #-232]!

// ==== IapManager::isProductPurchased
//      file offset 0x42f148 (= ELF address; Ghidra 0x43f148), 140 bytes, Thumb-2
  42f148: b510         	push	{r4, lr}
  42f14a: b084         	sub	sp, #0x10
  42f14c: 9001         	str	r0, [sp, #0x4]
  42f14e: 9100         	str	r1, [sp]
  42f150: 4c1e         	ldr	r4, [pc, #0x78]         @ 0x42f1cc <IapManager::isProductPurchased(std::string)+0x84>
  42f152: 447c         	add	r4, pc
  42f154: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x42f1d0 <IapManager::isProductPurchased(std::string)+0x88>
  42f156: 58e3         	ldr	r3, [r4, r3]
  42f158: 4618         	mov	r0, r3
  42f15a: f7fe fd21    	bl	0x42dba0 <initPurchasedSkusLookup(std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>*)> @ imm = #-0x15be
  42f15e: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x42f1d0 <IapManager::isProductPurchased(std::string)+0x88>
  42f160: 58e3         	ldr	r3, [r4, r3]
  42f162: 4618         	mov	r0, r3
  42f164: 9900         	ldr	r1, [sp]
  42f166: f000 fc29    	bl	0x42f9bc <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::count(std::string const&) const> @ imm = #0x852
  42f16a: 4603         	mov	r3, r0
  42f16c: 2b00         	cmp	r3, #0x0
  42f16e: bf14         	ite	ne
  42f170: 2300         	movne	r3, #0x0
  42f172: 2301         	moveq	r3, #0x1
  42f174: b2db         	uxtb	r3, r3
  42f176: 2b00         	cmp	r3, #0x0
  42f178: d001         	beq	0x42f17e <IapManager::isProductPurchased(std::string)+0x36> @ imm = #0x2
  42f17a: 2300         	movs	r3, #0x0
  42f17c: e023         	b	0x42f1c6 <IapManager::isProductPurchased(std::string)+0x7e> @ imm = #0x46
  42f17e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x42f1d0 <IapManager::isProductPurchased(std::string)+0x88>
  42f180: 58e3         	ldr	r3, [r4, r3]
  42f182: 4618         	mov	r0, r3
  42f184: 9900         	ldr	r1, [sp]
  42f186: f000 fc19    	bl	0x42f9bc <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::count(std::string const&) const> @ imm = #0x832
  42f18a: 4603         	mov	r3, r0
  42f18c: 2b01         	cmp	r3, #0x1
  42f18e: bf14         	ite	ne
  42f190: 2300         	movne	r3, #0x0
  42f192: 2301         	moveq	r3, #0x1
  42f194: b2db         	uxtb	r3, r3
  42f196: 2b00         	cmp	r3, #0x0
  42f198: d00e         	beq	0x42f1b8 <IapManager::isProductPurchased(std::string)+0x70> @ imm = #0x1c
  42f19a: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x42f1d0 <IapManager::isProductPurchased(std::string)+0x88>
  42f19c: 58e3         	ldr	r3, [r4, r3]
  42f19e: 4618         	mov	r0, r3
  42f1a0: 9900         	ldr	r1, [sp]
  42f1a2: f000 fc37    	bl	0x42fa14 <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::find(std::string const&)> @ imm = #0x86e
  42f1a6: 4603         	mov	r3, r0
  42f1a8: 9303         	str	r3, [sp, #0xc]
  42f1aa: ab03         	add	r3, sp, #0xc
  42f1ac: 4618         	mov	r0, r3
  42f1ae: f000 fc3f    	bl	0x42fa30 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator->() const> @ imm = #0x87e
  42f1b2: 4603         	mov	r3, r0
  42f1b4: 791b         	ldrb	r3, [r3, #0x4]
  42f1b6: e006         	b	0x42f1c6 <IapManager::isProductPurchased(std::string)+0x7e> @ imm = #0xc
  42f1b8: 4b05         	ldr	r3, [pc, #0x14]         @ 0x42f1d0 <IapManager::isProductPurchased(std::string)+0x88>
  42f1ba: 58e3         	ldr	r3, [r4, r3]
  42f1bc: 4618         	mov	r0, r3
  42f1be: 9900         	ldr	r1, [sp]
  42f1c0: f000 fbfc    	bl	0x42f9bc <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::count(std::string const&) const> @ imm = #0x7f8
  42f1c4: 2300         	movs	r3, #0x0
  42f1c6: 4618         	mov	r0, r3
  42f1c8: b004         	add	sp, #0x10
  42f1ca: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42f1cb); words below are literal-pool data ---
  42f1cc: 38b6         	subs	r0, #0xb6
  42f1ce: 0050         	lsls	r0, r2, #0x1
  42f1d0: e038         	b	0x42f244 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x70> @ imm = #0x70
  42f1d2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== IapManager::onAppsomniacsPayloadHttpRequestCompleted
//      file offset 0x42f1d4 (= ELF address; Ghidra 0x43f1d4), 648 bytes, Thumb-2
  42f1d4: b530         	push	{r4, r5, lr}
  42f1d6: b099         	sub	sp, #0x64
  42f1d8: 9003         	str	r0, [sp, #0xc]
  42f1da: 9102         	str	r1, [sp, #0x8]
  42f1dc: 9201         	str	r2, [sp, #0x4]
  42f1de: 9801         	ldr	r0, [sp, #0x4]
  42f1e0: f748 f92e    	bl	0x377440 <cocos2d::extension::CCHttpResponse::getResponseCode()> @ imm = #-0xb7da4
  42f1e4: 4603         	mov	r3, r0
  42f1e6: 930a         	str	r3, [sp, #0x28]
  42f1e8: 9801         	ldr	r0, [sp, #0x4]
  42f1ea: f748 f921    	bl	0x377430 <cocos2d::extension::CCHttpResponse::getResponseData()> @ imm = #-0xb7dbe
  42f1ee: 4603         	mov	r3, r0
  42f1f0: 930b         	str	r3, [sp, #0x2c]
  42f1f2: 980b         	ldr	r0, [sp, #0x2c]
  42f1f4: f74c fe8e    	bl	0x37bf14 <std::vector<char, std::allocator<char>>::begin()> @ imm = #-0xb32e4
  42f1f8: 4605         	mov	r5, r0
  42f1fa: 980b         	ldr	r0, [sp, #0x2c]
  42f1fc: f74c fe98    	bl	0x37bf30 <std::vector<char, std::allocator<char>>::end()> @ imm = #-0xb32d0
  42f200: 4604         	mov	r4, r0
  42f202: ab0c         	add	r3, sp, #0x30
  42f204: 4618         	mov	r0, r3
  42f206: f35b f8f5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35b1ea
  42f20a: aa05         	add	r2, sp, #0x14
  42f20c: ab0c         	add	r3, sp, #0x30
  42f20e: 4610         	mov	r0, r2
  42f210: 4629         	mov	r1, r5
  42f212: 4622         	mov	r2, r4
  42f214: f74c fe9c    	bl	0x37bf50 <std::basic_string<char, std::char_traits<char>, std::allocator<char>>::basic_string<__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>>(__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, std::allocator<char> const&)> @ imm = #-0xb32c8
  42f218: ab0c         	add	r3, sp, #0x30
  42f21a: 4618         	mov	r0, r3
  42f21c: f35b f8ee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b1dc
  42f220: ab0c         	add	r3, sp, #0x30
  42f222: 4618         	mov	r0, r3
  42f224: 2100         	movs	r1, #0x0
  42f226: f44f 6280    	mov.w	r2, #0x400
  42f22a: f74c fea7    	bl	0x37bf7c <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericDocument(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #-0xb32b2
  42f22e: ab05         	add	r3, sp, #0x14
  42f230: 4618         	mov	r0, r3
  42f232: f386 f865    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3860ca
  42f236: 4603         	mov	r3, r0
  42f238: aa0c         	add	r2, sp, #0x30
  42f23a: 4610         	mov	r0, r2
  42f23c: 4619         	mov	r1, r3
  42f23e: f74c fedb    	bl	0x37bff8 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>& rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Parse<0u>(char const*)> @ imm = #-0xb324a
  42f242: f748 fc7d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb7706
  42f246: 4602         	mov	r2, r0
  42f248: ab0c         	add	r3, sp, #0x30
  42f24a: 4610         	mov	r0, r2
  42f24c: 4619         	mov	r1, r3
  42f24e: f74c f879    	bl	0x37b344 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)> @ imm = #-0xb3f0e
  42f252: 4603         	mov	r3, r0
  42f254: 2b00         	cmp	r3, #0x0
  42f256: d001         	beq	0x42f25c <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x88> @ imm = #0x2
  42f258: 2400         	movs	r4, #0x0
  42f25a: e0b4         	b	0x42f3c6 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1f2> @ imm = #0x168
  42f25c: 9b0a         	ldr	r3, [sp, #0x28]
  42f25e: 2bc8         	cmp	r3, #0xc8
  42f260: f040 80b0    	bne.w	0x42f3c4 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1f0> @ imm = #0x160
  42f264: ab0c         	add	r3, sp, #0x30
  42f266: 4618         	mov	r0, r3
  42f268: f74c feda    	bl	0x37c020 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsObject() const> @ imm = #-0xb324c
  42f26c: 4603         	mov	r3, r0
  42f26e: 2b00         	cmp	r3, #0x0
  42f270: f000 80a8    	beq.w	0x42f3c4 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1f0> @ imm = #0x150
  42f274: ab06         	add	r3, sp, #0x18
  42f276: 4618         	mov	r0, r3
  42f278: f385 ff9a    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x385f34
  42f27c: ab07         	add	r3, sp, #0x1c
  42f27e: 4618         	mov	r0, r3
  42f280: f385 ff96    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x385f2c
  42f284: ab0c         	add	r3, sp, #0x30
  42f286: 4618         	mov	r0, r3
  42f288: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x42f43c <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x268>
  42f28a: 447b         	add	r3, pc
  42f28c: 4619         	mov	r1, r3
  42f28e: f74c fed3    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #-0xb325a
  42f292: 4603         	mov	r3, r0
  42f294: 2b00         	cmp	r3, #0x0
  42f296: d020         	beq	0x42f2da <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x106> @ imm = #0x40
  42f298: ab0c         	add	r3, sp, #0x30
  42f29a: 4618         	mov	r0, r3
  42f29c: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x42f440 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x26c>
  42f29e: 447b         	add	r3, pc
  42f2a0: 4619         	mov	r1, r3
  42f2a2: f74c fedb    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #-0xb324a
  42f2a6: 4603         	mov	r3, r0
  42f2a8: 4618         	mov	r0, r3
  42f2aa: f74c ff4d    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #-0xb3166
  42f2ae: 4603         	mov	r3, r0
  42f2b0: f083 0301    	eor	r3, r3, #0x1
  42f2b4: b2db         	uxtb	r3, r3
  42f2b6: 2b00         	cmp	r3, #0x0
  42f2b8: d00f         	beq	0x42f2da <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x106> @ imm = #0x1e
  42f2ba: ab0c         	add	r3, sp, #0x30
  42f2bc: 4618         	mov	r0, r3
  42f2be: 4b61         	ldr	r3, [pc, #0x184]        @ 0x42f444 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x270>
  42f2c0: 447b         	add	r3, pc
  42f2c2: 4619         	mov	r1, r3
  42f2c4: f74c feca    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #-0xb326c
  42f2c8: 4603         	mov	r3, r0
  42f2ca: 4618         	mov	r0, r3
  42f2cc: f74d f802    	bl	0x37c2d4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength() const> @ imm = #-0xb2ffc
  42f2d0: 4603         	mov	r3, r0
  42f2d2: 2b00         	cmp	r3, #0x0
  42f2d4: d001         	beq	0x42f2da <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x106> @ imm = #0x2
  42f2d6: 2301         	movs	r3, #0x1
  42f2d8: e000         	b	0x42f2dc <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x108> @ imm = #0x0
  42f2da: 2300         	movs	r3, #0x0
  42f2dc: 2b00         	cmp	r3, #0x0
  42f2de: d010         	beq	0x42f302 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x12e> @ imm = #0x20
  42f2e0: ab0c         	add	r3, sp, #0x30
  42f2e2: 4618         	mov	r0, r3
  42f2e4: 4b58         	ldr	r3, [pc, #0x160]        @ 0x42f448 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x274>
  42f2e6: 447b         	add	r3, pc
  42f2e8: 4619         	mov	r1, r3
  42f2ea: f74c feb7    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #-0xb3292
  42f2ee: 4603         	mov	r3, r0
  42f2f0: 4618         	mov	r0, r3
  42f2f2: f74c ff71    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #-0xb311e
  42f2f6: 4603         	mov	r3, r0
  42f2f8: aa06         	add	r2, sp, #0x18
  42f2fa: 4610         	mov	r0, r2
  42f2fc: 4619         	mov	r1, r3
  42f2fe: f386 fdb7    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x386b6e
  42f302: ab0c         	add	r3, sp, #0x30
  42f304: 4618         	mov	r0, r3
  42f306: 4b51         	ldr	r3, [pc, #0x144]        @ 0x42f44c <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x278>
  42f308: 447b         	add	r3, pc
  42f30a: 4619         	mov	r1, r3
  42f30c: f74c fe94    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #-0xb32d8
  42f310: 4603         	mov	r3, r0
  42f312: 2b00         	cmp	r3, #0x0
  42f314: d020         	beq	0x42f358 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x184> @ imm = #0x40
  42f316: ab0c         	add	r3, sp, #0x30
  42f318: 4618         	mov	r0, r3
  42f31a: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x42f450 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x27c>
  42f31c: 447b         	add	r3, pc
  42f31e: 4619         	mov	r1, r3
  42f320: f74c fe9c    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #-0xb32c8
  42f324: 4603         	mov	r3, r0
  42f326: 4618         	mov	r0, r3
  42f328: f74c ff0e    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #-0xb31e4
  42f32c: 4603         	mov	r3, r0
  42f32e: f083 0301    	eor	r3, r3, #0x1
  42f332: b2db         	uxtb	r3, r3
  42f334: 2b00         	cmp	r3, #0x0
  42f336: d00f         	beq	0x42f358 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x184> @ imm = #0x1e
  42f338: ab0c         	add	r3, sp, #0x30
  42f33a: 4618         	mov	r0, r3
  42f33c: 4b45         	ldr	r3, [pc, #0x114]        @ 0x42f454 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x280>
  42f33e: 447b         	add	r3, pc
  42f340: 4619         	mov	r1, r3
  42f342: f74c fe8b    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #-0xb32ea
  42f346: 4603         	mov	r3, r0
  42f348: 4618         	mov	r0, r3
  42f34a: f74c ffc3    	bl	0x37c2d4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength() const> @ imm = #-0xb307a
  42f34e: 4603         	mov	r3, r0
  42f350: 2b00         	cmp	r3, #0x0
  42f352: d001         	beq	0x42f358 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x184> @ imm = #0x2
  42f354: 2301         	movs	r3, #0x1
  42f356: e000         	b	0x42f35a <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x186> @ imm = #0x0
  42f358: 2300         	movs	r3, #0x0
  42f35a: 2b00         	cmp	r3, #0x0
  42f35c: d010         	beq	0x42f380 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1ac> @ imm = #0x20
  42f35e: ab0c         	add	r3, sp, #0x30
  42f360: 4618         	mov	r0, r3
  42f362: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x42f458 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x284>
  42f364: 447b         	add	r3, pc
  42f366: 4619         	mov	r1, r3
  42f368: f74c fe78    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #-0xb3310
  42f36c: 4603         	mov	r3, r0
  42f36e: 4618         	mov	r0, r3
  42f370: f74c ff32    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #-0xb319c
  42f374: 4603         	mov	r3, r0
  42f376: aa07         	add	r2, sp, #0x1c
  42f378: 4610         	mov	r0, r2
  42f37a: 4619         	mov	r1, r3
  42f37c: f386 fd78    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x386af0
  42f380: aa08         	add	r2, sp, #0x20
  42f382: ab06         	add	r3, sp, #0x18
  42f384: 4610         	mov	r0, r2
  42f386: 4619         	mov	r1, r3
  42f388: f387 f8ae    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38715c
  42f38c: aa09         	add	r2, sp, #0x24
  42f38e: ab07         	add	r3, sp, #0x1c
  42f390: 4610         	mov	r0, r2
  42f392: 4619         	mov	r1, r3
  42f394: f387 f8a8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x387150
  42f398: aa08         	add	r2, sp, #0x20
  42f39a: ab09         	add	r3, sp, #0x24
  42f39c: 4610         	mov	r0, r2
  42f39e: 4619         	mov	r1, r3
  42f3a0: f7ff fb76    	bl	0x42ea90 <requestPurchaseFromPlatform(std::string, std::string)> @ imm = #-0x914
  42f3a4: ab09         	add	r3, sp, #0x24
  42f3a6: 4618         	mov	r0, r3
  42f3a8: f386 fab4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386568
  42f3ac: ab08         	add	r3, sp, #0x20
  42f3ae: 4618         	mov	r0, r3
  42f3b0: f386 fab0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386560
  42f3b4: ab07         	add	r3, sp, #0x1c
  42f3b6: 4618         	mov	r0, r3
  42f3b8: f386 faac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386558
  42f3bc: ab06         	add	r3, sp, #0x18
  42f3be: 4618         	mov	r0, r3
  42f3c0: f386 faa8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386550
  42f3c4: 2401         	movs	r4, #0x1
  42f3c6: ab0c         	add	r3, sp, #0x30
  42f3c8: 4618         	mov	r0, r3
  42f3ca: f74b faab    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0xb4aaa
  42f3ce: 2c01         	cmp	r4, #0x1
  42f3d0: d001         	beq	0x42f3d6 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x202> @ imm = #0x2
  42f3d2: 2400         	movs	r4, #0x0
  42f3d4: e001         	b	0x42f3da <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x206> @ imm = #0x2
  42f3d6: bf00         	nop
  42f3d8: 2401         	movs	r4, #0x1
  42f3da: ab05         	add	r3, sp, #0x14
  42f3dc: 4618         	mov	r0, r3
  42f3de: f386 fa99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386532
  42f3e2: 2c01         	cmp	r4, #0x1
  42f3e4: d000         	beq	0x42f3e8 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x214> @ imm = #0x0
  42f3e6: e026         	b	0x42f436 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x262> @ imm = #0x4c
  42f3e8: bf00         	nop
  42f3ea: e024         	b	0x42f436 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x262> @ imm = #0x48
  42f3ec: ab0c         	add	r3, sp, #0x30
  42f3ee: 4618         	mov	r0, r3
  42f3f0: f35b f804    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35b008
  42f3f4: f358 fe5a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x358cb4
  42f3f8: ab09         	add	r3, sp, #0x24
  42f3fa: 4618         	mov	r0, r3
  42f3fc: f386 fa8a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386514
  42f400: e7ff         	b	0x42f402 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x22e> @ imm = #-0x2
  42f402: ab08         	add	r3, sp, #0x20
  42f404: 4618         	mov	r0, r3
  42f406: f386 fa85    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38650a
  42f40a: e7ff         	b	0x42f40c <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x238> @ imm = #-0x2
  42f40c: ab07         	add	r3, sp, #0x1c
  42f40e: 4618         	mov	r0, r3
  42f410: f386 fa80    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386500
  42f414: e7ff         	b	0x42f416 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x242> @ imm = #-0x2
  42f416: ab06         	add	r3, sp, #0x18
  42f418: 4618         	mov	r0, r3
  42f41a: f386 fa7b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3864f6
  42f41e: e7ff         	b	0x42f420 <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x24c> @ imm = #-0x2
  42f420: ab0c         	add	r3, sp, #0x30
  42f422: 4618         	mov	r0, r3
  42f424: f74b fa7e    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0xb4b04
  42f428: e7ff         	b	0x42f42a <IapManager::onAppsomniacsPayloadHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x256> @ imm = #-0x2
  42f42a: ab05         	add	r3, sp, #0x14
  42f42c: 4618         	mov	r0, r3
  42f42e: f386 fa71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3864e2
  42f432: f358 fe3b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x358c76
  42f436: b019         	add	sp, #0x64
  42f438: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x42f439); words below are literal-pool data ---
  42f43a: bf00         	nop
  42f43c: eac2 003a    	<unknown>
  42f440: eaae 003a    	<unknown>
  42f444: ea8c 003a    	eor.w	r0, r12, r10, rrx
  42f448: ea66 003a    	orn	r0, r6, r10, rrx
  42f44c: ea48 003a    	orr.w	r0, r8, r10, rrx
  42f450: ea34 003a    	bics.w	r0, r4, r10, rrx
  42f454: ea12 003a    	ands.w	r0, r2, r10, rrx
  42f458: e9ec 003a    	strd	r0, r0, [r12, #232]!

// ==== IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted
//      file offset 0x42f490 (= ELF address; Ghidra 0x43f490), 1204 bytes, Thumb-2
  42f490: b570         	push	{r4, r5, r6, lr}
  42f492: b098         	sub	sp, #0x60
  42f494: 9003         	str	r0, [sp, #0xc]
  42f496: 9102         	str	r1, [sp, #0x8]
  42f498: 9201         	str	r2, [sp, #0x4]
  42f49a: f8df 448c    	ldr.w	r4, [pc, #0x48c]        @ 0x42f928 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x498>
  42f49e: 447c         	add	r4, pc
  42f4a0: 9801         	ldr	r0, [sp, #0x4]
  42f4a2: f747 ffcd    	bl	0x377440 <cocos2d::extension::CCHttpResponse::getResponseCode()> @ imm = #-0xb8066
  42f4a6: 4603         	mov	r3, r0
  42f4a8: 9310         	str	r3, [sp, #0x40]
  42f4aa: 9801         	ldr	r0, [sp, #0x4]
  42f4ac: f747 ffc0    	bl	0x377430 <cocos2d::extension::CCHttpResponse::getResponseData()> @ imm = #-0xb8080
  42f4b0: 4603         	mov	r3, r0
  42f4b2: 9311         	str	r3, [sp, #0x44]
  42f4b4: 9811         	ldr	r0, [sp, #0x44]
  42f4b6: f74c fd2d    	bl	0x37bf14 <std::vector<char, std::allocator<char>>::begin()> @ imm = #-0xb35a6
  42f4ba: 4606         	mov	r6, r0
  42f4bc: 9811         	ldr	r0, [sp, #0x44]
  42f4be: f74c fd37    	bl	0x37bf30 <std::vector<char, std::allocator<char>>::end()> @ imm = #-0xb3592
  42f4c2: 4605         	mov	r5, r0
  42f4c4: ab16         	add	r3, sp, #0x58
  42f4c6: 4618         	mov	r0, r3
  42f4c8: f35a ff94    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35af28
  42f4cc: aa05         	add	r2, sp, #0x14
  42f4ce: ab16         	add	r3, sp, #0x58
  42f4d0: 4610         	mov	r0, r2
  42f4d2: 4631         	mov	r1, r6
  42f4d4: 462a         	mov	r2, r5
  42f4d6: f74c fd3b    	bl	0x37bf50 <std::basic_string<char, std::char_traits<char>, std::allocator<char>>::basic_string<__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>>(__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, std::allocator<char> const&)> @ imm = #-0xb358a
  42f4da: ab16         	add	r3, sp, #0x58
  42f4dc: 4618         	mov	r0, r3
  42f4de: f35a ff8d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35af1a
  42f4e2: f748 fb2d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb79a6
  42f4e6: 4605         	mov	r5, r0
  42f4e8: aa07         	add	r2, sp, #0x1c
  42f4ea: ab05         	add	r3, sp, #0x14
  42f4ec: 4610         	mov	r0, r2
  42f4ee: 4619         	mov	r1, r3
  42f4f0: f386 fffa    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x386ff4
  42f4f4: aa06         	add	r2, sp, #0x18
  42f4f6: ab07         	add	r3, sp, #0x1c
  42f4f8: 4610         	mov	r0, r2
  42f4fa: 4629         	mov	r1, r5
  42f4fc: 461a         	mov	r2, r3
  42f4fe: f748 fa97    	bl	0x377a30 <NetworkManager::urlDecode(std::string)> @ imm = #-0xb7ad2
  42f502: ab07         	add	r3, sp, #0x1c
  42f504: 4618         	mov	r0, r3
  42f506: f386 fa05    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38640a
  42f50a: 9b10         	ldr	r3, [sp, #0x40]
  42f50c: 2bc8         	cmp	r3, #0xc8
  42f50e: f040 80fc    	bne.w	0x42f70a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x27a> @ imm = #0x1f8
  42f512: ab05         	add	r3, sp, #0x14
  42f514: 4618         	mov	r0, r3
  42f516: f385 fda1    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x385b42
  42f51a: 4603         	mov	r3, r0
  42f51c: 2b00         	cmp	r3, #0x0
  42f51e: bf0c         	ite	eq
  42f520: 2300         	moveq	r3, #0x0
  42f522: 2301         	movne	r3, #0x1
  42f524: b2db         	uxtb	r3, r3
  42f526: 2b00         	cmp	r3, #0x0
  42f528: f000 80d3    	beq.w	0x42f6d2 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x242> @ imm = #0x1a6
  42f52c: ab06         	add	r3, sp, #0x18
  42f52e: 4618         	mov	r0, r3
  42f530: f385 fee6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x385dcc
  42f534: 4605         	mov	r5, r0
  42f536: ab06         	add	r3, sp, #0x18
  42f538: 4618         	mov	r0, r3
  42f53a: f385 fd8f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x385b1e
  42f53e: 4602         	mov	r2, r0
  42f540: ab0d         	add	r3, sp, #0x34
  42f542: 4628         	mov	r0, r5
  42f544: 4611         	mov	r1, r2
  42f546: 461a         	mov	r2, r3
  42f548: f1b3 fb44    	bl	0x5e2bd4 <base64Decode> @ imm = #0x1b3688
  42f54c: 4603         	mov	r3, r0
  42f54e: 9312         	str	r3, [sp, #0x48]
  42f550: 9b0d         	ldr	r3, [sp, #0x34]
  42f552: 2b00         	cmp	r3, #0x0
  42f554: d111         	bne	0x42f57a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xea> @ imm = #0x22
  42f556: aa08         	add	r2, sp, #0x20
  42f558: ab06         	add	r3, sp, #0x18
  42f55a: 4610         	mov	r0, r2
  42f55c: 4619         	mov	r1, r3
  42f55e: f386 ffc3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x386f86
  42f562: ab08         	add	r3, sp, #0x20
  42f564: 2000         	movs	r0, #0x0
  42f566: 9910         	ldr	r1, [sp, #0x40]
  42f568: 461a         	mov	r2, r3
  42f56a: f7fe fd57    	bl	0x42e01c <signalValidationOperationCompleted(bool, int, std::string)> @ imm = #-0x1552
  42f56e: ab08         	add	r3, sp, #0x20
  42f570: 4618         	mov	r0, r3
  42f572: f386 f9cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38639e
  42f576: bf00         	nop
  42f578: e167         	b	0x42f84a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3ba> @ imm = #0x2ce
  42f57a: 9d0d         	ldr	r5, [sp, #0x34]
  42f57c: ab16         	add	r3, sp, #0x58
  42f57e: 4618         	mov	r0, r3
  42f580: f35a ff38    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35ae70
  42f584: aa0e         	add	r2, sp, #0x38
  42f586: ab16         	add	r3, sp, #0x58
  42f588: 4610         	mov	r0, r2
  42f58a: 4629         	mov	r1, r5
  42f58c: 9a12         	ldr	r2, [sp, #0x48]
  42f58e: f387 f93f    	bl	0x7b6810 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19d60> @ imm = #0x38727e
  42f592: ab16         	add	r3, sp, #0x58
  42f594: 4618         	mov	r0, r3
  42f596: f35a ff31    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ae62
  42f59a: 9b0d         	ldr	r3, [sp, #0x34]
  42f59c: 4618         	mov	r0, r3
  42f59e: f358 fd81    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x358b02
  42f5a2: ab0e         	add	r3, sp, #0x38
  42f5a4: 4ae1         	ldr	r2, [pc, #0x384]        @ 0x42f92c <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x49c>
  42f5a6: 58a2         	ldr	r2, [r4, r2]
  42f5a8: 4610         	mov	r0, r2
  42f5aa: 4619         	mov	r1, r3
  42f5ac: f000 fa4e    	bl	0x42fa4c <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::lower_bound(std::string const&)> @ imm = #0x49c
  42f5b0: 4603         	mov	r3, r0
  42f5b2: 930f         	str	r3, [sp, #0x3c]
  42f5b4: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x42f92c <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x49c>
  42f5b6: 58e3         	ldr	r3, [r4, r3]
  42f5b8: 4618         	mov	r0, r3
  42f5ba: f000 fa55    	bl	0x42fa68 <std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::end()> @ imm = #0x4aa
  42f5be: 4603         	mov	r3, r0
  42f5c0: 9309         	str	r3, [sp, #0x24]
  42f5c2: 2501         	movs	r5, #0x1
  42f5c4: aa0f         	add	r2, sp, #0x3c
  42f5c6: ab09         	add	r3, sp, #0x24
  42f5c8: 4610         	mov	r0, r2
  42f5ca: 4619         	mov	r1, r3
  42f5cc: f000 fa58    	bl	0x42fa80 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator==(std::_Rb_tree_iterator<std::pair<std::string const, bool>> const&) const> @ imm = #0x4b0
  42f5d0: 4603         	mov	r3, r0
  42f5d2: 2b00         	cmp	r3, #0x0
  42f5d4: d10c         	bne	0x42f5f0 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x160> @ imm = #0x18
  42f5d6: ab0f         	add	r3, sp, #0x3c
  42f5d8: 4618         	mov	r0, r3
  42f5da: f000 fa29    	bl	0x42fa30 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator->() const> @ imm = #0x452
  42f5de: 4603         	mov	r3, r0
  42f5e0: aa0e         	add	r2, sp, #0x38
  42f5e2: 4610         	mov	r0, r2
  42f5e4: 4619         	mov	r1, r3
  42f5e6: f6ff f9a9    	bl	0x32e93c <bool std::operator<<char, std::char_traits<char>, std::allocator<char>>(std::basic_string<char, std::char_traits<char>, std::allocator<char>> const&, std::basic_string<char, std::char_traits<char>, std::allocator<char>> const&)> @ imm = #-0x100cae
  42f5ea: 4603         	mov	r3, r0
  42f5ec: 2b00         	cmp	r3, #0x0
  42f5ee: d001         	beq	0x42f5f4 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x164> @ imm = #0x2
  42f5f0: 2301         	movs	r3, #0x1
  42f5f2: e000         	b	0x42f5f6 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x166> @ imm = #0x0
  42f5f4: 2300         	movs	r3, #0x0
  42f5f6: 2d00         	cmp	r5, #0x0
  42f5f8: 2b00         	cmp	r3, #0x0
  42f5fa: d018         	beq	0x42f62e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x19e> @ imm = #0x30
  42f5fc: 2301         	movs	r3, #0x1
  42f5fe: f88d 3030    	strb.w	r3, [sp, #0x30]
  42f602: a914         	add	r1, sp, #0x50
  42f604: aa0e         	add	r2, sp, #0x38
  42f606: ab0c         	add	r3, sp, #0x30
  42f608: 4608         	mov	r0, r1
  42f60a: 4611         	mov	r1, r2
  42f60c: 461a         	mov	r2, r3
  42f60e: f7ff ff25    	bl	0x42f45c <std::pair<std::string, bool>::pair<std::string&, bool, void>(std::string&, bool&&)> @ imm = #-0x1b6
  42f612: aa16         	add	r2, sp, #0x58
  42f614: ab14         	add	r3, sp, #0x50
  42f616: 4610         	mov	r0, r2
  42f618: 4ac4         	ldr	r2, [pc, #0x310]        @ 0x42f92c <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x49c>
  42f61a: 58a2         	ldr	r2, [r4, r2]
  42f61c: 4611         	mov	r1, r2
  42f61e: 461a         	mov	r2, r3
  42f620: f000 f9b8    	bl	0x42f994 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)> @ imm = #0x370
  42f624: ab14         	add	r3, sp, #0x50
  42f626: 4618         	mov	r0, r3
  42f628: f7fe fa92    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x1adc
  42f62c: e006         	b	0x42f63c <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1ac> @ imm = #0xc
  42f62e: ab0f         	add	r3, sp, #0x3c
  42f630: 4618         	mov	r0, r3
  42f632: f000 f9fd    	bl	0x42fa30 <std::_Rb_tree_iterator<std::pair<std::string const, bool>>::operator->() const> @ imm = #0x3fa
  42f636: 4603         	mov	r3, r0
  42f638: 2201         	movs	r2, #0x1
  42f63a: 711a         	strb	r2, [r3, #0x4]
  42f63c: ab16         	add	r3, sp, #0x58
  42f63e: 4618         	mov	r0, r3
  42f640: f35a fed8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35adb0
  42f644: aa0a         	add	r2, sp, #0x28
  42f646: ab16         	add	r3, sp, #0x58
  42f648: 4610         	mov	r0, r2
  42f64a: 4ab9         	ldr	r2, [pc, #0x2e4]        @ 0x42f930 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a0>
  42f64c: 447a         	add	r2, pc
  42f64e: 4611         	mov	r1, r2
  42f650: 461a         	mov	r2, r3
  42f652: f387 fa05    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38740a
  42f656: aa0a         	add	r2, sp, #0x28
  42f658: ab0e         	add	r3, sp, #0x38
  42f65a: 4610         	mov	r0, r2
  42f65c: 4619         	mov	r1, r3
  42f65e: f386 f80d    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x38601a
  42f662: 4603         	mov	r3, r0
  42f664: 2b00         	cmp	r3, #0x0
  42f666: bf14         	ite	ne
  42f668: 2300         	movne	r3, #0x0
  42f66a: 2301         	moveq	r3, #0x1
  42f66c: b2dd         	uxtb	r5, r3
  42f66e: ab0a         	add	r3, sp, #0x28
  42f670: 4618         	mov	r0, r3
  42f672: f386 f94f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38629e
  42f676: ab16         	add	r3, sp, #0x58
  42f678: 4618         	mov	r0, r3
  42f67a: f35a febf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ad7e
  42f67e: 2d00         	cmp	r5, #0x0
  42f680: d011         	beq	0x42f6a6 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x216> @ imm = #0x22
  42f682: f1b2 ffd3    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1b2fa6
  42f686: 4605         	mov	r5, r0
  42f688: 4baa         	ldr	r3, [pc, #0x2a8]        @ 0x42f934 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a4>
  42f68a: 58e3         	ldr	r3, [r4, r3]
  42f68c: 4618         	mov	r0, r3
  42f68e: f385 fe37    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x385c6e
  42f692: 4603         	mov	r3, r0
  42f694: 4628         	mov	r0, r5
  42f696: 4619         	mov	r1, r3
  42f698: 2201         	movs	r2, #0x1
  42f69a: f1b2 ff6d    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x1b2eda
  42f69e: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x42f938 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a8>
  42f6a0: 58e3         	ldr	r3, [r4, r3]
  42f6a2: 2200         	movs	r2, #0x0
  42f6a4: 701a         	strb	r2, [r3]
  42f6a6: aa0b         	add	r2, sp, #0x2c
  42f6a8: ab0e         	add	r3, sp, #0x38
  42f6aa: 4610         	mov	r0, r2
  42f6ac: 4619         	mov	r1, r3
  42f6ae: f386 ff1b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x386e36
  42f6b2: ab0b         	add	r3, sp, #0x2c
  42f6b4: 2001         	movs	r0, #0x1
  42f6b6: 9910         	ldr	r1, [sp, #0x40]
  42f6b8: 461a         	mov	r2, r3
  42f6ba: f7fe fcaf    	bl	0x42e01c <signalValidationOperationCompleted(bool, int, std::string)> @ imm = #-0x16a2
  42f6be: ab0b         	add	r3, sp, #0x2c
  42f6c0: 4618         	mov	r0, r3
  42f6c2: f386 f927    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38624e
  42f6c6: bf00         	nop
  42f6c8: ab0e         	add	r3, sp, #0x38
  42f6ca: 4618         	mov	r0, r3
  42f6cc: f386 f922    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386244
  42f6d0: e0bb         	b	0x42f84a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3ba> @ imm = #0x176
  42f6d2: ab16         	add	r3, sp, #0x58
  42f6d4: 4618         	mov	r0, r3
  42f6d6: f35a fe8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35ad1a
  42f6da: aa0c         	add	r2, sp, #0x30
  42f6dc: ab16         	add	r3, sp, #0x58
  42f6de: 4610         	mov	r0, r2
  42f6e0: 4a96         	ldr	r2, [pc, #0x258]        @ 0x42f93c <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4ac>
  42f6e2: 447a         	add	r2, pc
  42f6e4: 4611         	mov	r1, r2
  42f6e6: 461a         	mov	r2, r3
  42f6e8: f387 f9ba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x387374
  42f6ec: ab0c         	add	r3, sp, #0x30
  42f6ee: 2001         	movs	r0, #0x1
  42f6f0: 9910         	ldr	r1, [sp, #0x40]
  42f6f2: 461a         	mov	r2, r3
  42f6f4: f7fe fc92    	bl	0x42e01c <signalValidationOperationCompleted(bool, int, std::string)> @ imm = #-0x16dc
  42f6f8: ab0c         	add	r3, sp, #0x30
  42f6fa: 4618         	mov	r0, r3
  42f6fc: f386 f90a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386214
  42f700: ab16         	add	r3, sp, #0x58
  42f702: 4618         	mov	r0, r3
  42f704: f35a fe7a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35acf4
  42f708: e09f         	b	0x42f84a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3ba> @ imm = #0x13e
  42f70a: ab05         	add	r3, sp, #0x14
  42f70c: 4618         	mov	r0, r3
  42f70e: f385 fca5    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x38594a
  42f712: 4603         	mov	r3, r0
  42f714: 2b00         	cmp	r3, #0x0
  42f716: bf0c         	ite	eq
  42f718: 2300         	moveq	r3, #0x0
  42f71a: 2301         	movne	r3, #0x1
  42f71c: b2db         	uxtb	r3, r3
  42f71e: 2b00         	cmp	r3, #0x0
  42f720: d071         	beq	0x42f806 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x376> @ imm = #0xe2
  42f722: ab06         	add	r3, sp, #0x18
  42f724: 4618         	mov	r0, r3
  42f726: f385 fdeb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x385bd6
  42f72a: 4605         	mov	r5, r0
  42f72c: ab06         	add	r3, sp, #0x18
  42f72e: 4618         	mov	r0, r3
  42f730: f385 fc94    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x385928
  42f734: 4602         	mov	r2, r0
  42f736: ab14         	add	r3, sp, #0x50
  42f738: 4628         	mov	r0, r5
  42f73a: 4611         	mov	r1, r2
  42f73c: 461a         	mov	r2, r3
  42f73e: f1b3 fa49    	bl	0x5e2bd4 <base64Decode> @ imm = #0x1b3492
  42f742: 4603         	mov	r3, r0
  42f744: 9313         	str	r3, [sp, #0x4c]
  42f746: 9b14         	ldr	r3, [sp, #0x50]
  42f748: 2b00         	cmp	r3, #0x0
  42f74a: d117         	bne	0x42f77c <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2ec> @ imm = #0x2e
  42f74c: 9b10         	ldr	r3, [sp, #0x40]
  42f74e: 2bcc         	cmp	r3, #0xcc
  42f750: bf14         	ite	ne
  42f752: 2300         	movne	r3, #0x0
  42f754: 2301         	moveq	r3, #0x1
  42f756: b2dc         	uxtb	r4, r3
  42f758: aa0d         	add	r2, sp, #0x34
  42f75a: ab06         	add	r3, sp, #0x18
  42f75c: 4610         	mov	r0, r2
  42f75e: 4619         	mov	r1, r3
  42f760: f386 fec2    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x386d84
  42f764: ab0d         	add	r3, sp, #0x34
  42f766: 4620         	mov	r0, r4
  42f768: 9910         	ldr	r1, [sp, #0x40]
  42f76a: 461a         	mov	r2, r3
  42f76c: f7fe fc56    	bl	0x42e01c <signalValidationOperationCompleted(bool, int, std::string)> @ imm = #-0x1754
  42f770: ab0d         	add	r3, sp, #0x34
  42f772: 4618         	mov	r0, r3
  42f774: f386 f8ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38619c
  42f778: bf00         	nop
  42f77a: e066         	b	0x42f84a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3ba> @ imm = #0xcc
  42f77c: 9d14         	ldr	r5, [sp, #0x50]
  42f77e: ab0f         	add	r3, sp, #0x3c
  42f780: 4618         	mov	r0, r3
  42f782: f35a fe37    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35ac6e
  42f786: aa16         	add	r2, sp, #0x58
  42f788: ab0f         	add	r3, sp, #0x3c
  42f78a: 4610         	mov	r0, r2
  42f78c: 4629         	mov	r1, r5
  42f78e: 9a13         	ldr	r2, [sp, #0x4c]
  42f790: f387 f83e    	bl	0x7b6810 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19d60> @ imm = #0x38707c
  42f794: ab0f         	add	r3, sp, #0x3c
  42f796: 4618         	mov	r0, r3
  42f798: f35a fe30    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ac60
  42f79c: 9b14         	ldr	r3, [sp, #0x50]
  42f79e: 4618         	mov	r0, r3
  42f7a0: f358 fc80    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x358900
  42f7a4: f1b2 ff42    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1b2e84
  42f7a8: 4605         	mov	r5, r0
  42f7aa: 4b62         	ldr	r3, [pc, #0x188]        @ 0x42f934 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a4>
  42f7ac: 58e3         	ldr	r3, [r4, r3]
  42f7ae: 4618         	mov	r0, r3
  42f7b0: f385 fda6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x385b4c
  42f7b4: 4603         	mov	r3, r0
  42f7b6: 4628         	mov	r0, r5
  42f7b8: 4619         	mov	r1, r3
  42f7ba: 2200         	movs	r2, #0x0
  42f7bc: f1b2 fccc    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x1b2998
  42f7c0: 4603         	mov	r3, r0
  42f7c2: 2b00         	cmp	r3, #0x0
  42f7c4: d003         	beq	0x42f7ce <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x33e> @ imm = #0x6
  42f7c6: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x42f938 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a8>
  42f7c8: 58e3         	ldr	r3, [r4, r3]
  42f7ca: 2201         	movs	r2, #0x1
  42f7cc: 701a         	strb	r2, [r3]
  42f7ce: 9b10         	ldr	r3, [sp, #0x40]
  42f7d0: 2bcc         	cmp	r3, #0xcc
  42f7d2: bf14         	ite	ne
  42f7d4: 2300         	movne	r3, #0x0
  42f7d6: 2301         	moveq	r3, #0x1
  42f7d8: b2dc         	uxtb	r4, r3
  42f7da: aa0e         	add	r2, sp, #0x38
  42f7dc: ab16         	add	r3, sp, #0x58
  42f7de: 4610         	mov	r0, r2
  42f7e0: 4619         	mov	r1, r3
  42f7e2: f386 fe81    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x386d02
  42f7e6: ab0e         	add	r3, sp, #0x38
  42f7e8: 4620         	mov	r0, r4
  42f7ea: 9910         	ldr	r1, [sp, #0x40]
  42f7ec: 461a         	mov	r2, r3
  42f7ee: f7fe fc15    	bl	0x42e01c <signalValidationOperationCompleted(bool, int, std::string)> @ imm = #-0x17d6
  42f7f2: ab0e         	add	r3, sp, #0x38
  42f7f4: 4618         	mov	r0, r3
  42f7f6: f386 f88d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38611a
  42f7fa: bf00         	nop
  42f7fc: ab16         	add	r3, sp, #0x58
  42f7fe: 4618         	mov	r0, r3
  42f800: f386 f888    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386110
  42f804: e021         	b	0x42f84a <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3ba> @ imm = #0x42
  42f806: 9b10         	ldr	r3, [sp, #0x40]
  42f808: 2bcc         	cmp	r3, #0xcc
  42f80a: bf14         	ite	ne
  42f80c: 2300         	movne	r3, #0x0
  42f80e: 2301         	moveq	r3, #0x1
  42f810: b2dc         	uxtb	r4, r3
  42f812: ab16         	add	r3, sp, #0x58
  42f814: 4618         	mov	r0, r3
  42f816: f35a fded    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35abda
  42f81a: aa0f         	add	r2, sp, #0x3c
  42f81c: ab16         	add	r3, sp, #0x58
  42f81e: 4610         	mov	r0, r2
  42f820: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x42f940 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4b0>
  42f822: 447a         	add	r2, pc
  42f824: 4611         	mov	r1, r2
  42f826: 461a         	mov	r2, r3
  42f828: f387 f91a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x387234
  42f82c: ab0f         	add	r3, sp, #0x3c
  42f82e: 4620         	mov	r0, r4
  42f830: 9910         	ldr	r1, [sp, #0x40]
  42f832: 461a         	mov	r2, r3
  42f834: f7fe fbf2    	bl	0x42e01c <signalValidationOperationCompleted(bool, int, std::string)> @ imm = #-0x181c
  42f838: ab0f         	add	r3, sp, #0x3c
  42f83a: 4618         	mov	r0, r3
  42f83c: f386 f86a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3860d4
  42f840: ab16         	add	r3, sp, #0x58
  42f842: 4618         	mov	r0, r3
  42f844: f35a fdda    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35abb4
  42f848: bf00         	nop
  42f84a: ab06         	add	r3, sp, #0x18
  42f84c: 4618         	mov	r0, r3
  42f84e: f386 f861    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3860c2
  42f852: ab05         	add	r3, sp, #0x14
  42f854: 4618         	mov	r0, r3
  42f856: f386 f85d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3860ba
  42f85a: e063         	b	0x42f924 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x494> @ imm = #0xc6
  42f85c: ab16         	add	r3, sp, #0x58
  42f85e: 4618         	mov	r0, r3
  42f860: f35a fdcc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ab98
  42f864: f358 fc22    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x358844
  42f868: ab07         	add	r3, sp, #0x1c
  42f86a: 4618         	mov	r0, r3
  42f86c: f386 f852    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3860a4
  42f870: e052         	b	0x42f918 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x488> @ imm = #0xa4
  42f872: ab08         	add	r3, sp, #0x20
  42f874: 4618         	mov	r0, r3
  42f876: f386 f84d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38609a
  42f87a: e048         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x90
  42f87c: ab16         	add	r3, sp, #0x58
  42f87e: 4618         	mov	r0, r3
  42f880: f35a fdbc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ab78
  42f884: e043         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x86
  42f886: 2d00         	cmp	r5, #0x0
  42f888: bf00         	nop
  42f88a: e013         	b	0x42f8b4 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x424> @ imm = #0x26
  42f88c: ab14         	add	r3, sp, #0x50
  42f88e: 4618         	mov	r0, r3
  42f890: f7fe f95e    	bl	0x42db50 <std::pair<std::string, bool>::~pair()> @ imm = #-0x1d44
  42f894: e00e         	b	0x42f8b4 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x424> @ imm = #0x1c
  42f896: ab0a         	add	r3, sp, #0x28
  42f898: 4618         	mov	r0, r3
  42f89a: f386 f83b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386076
  42f89e: e7ff         	b	0x42f8a0 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x410> @ imm = #-0x2
  42f8a0: ab16         	add	r3, sp, #0x58
  42f8a2: 4618         	mov	r0, r3
  42f8a4: f35a fdaa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ab54
  42f8a8: e004         	b	0x42f8b4 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x424> @ imm = #0x8
  42f8aa: ab0b         	add	r3, sp, #0x2c
  42f8ac: 4618         	mov	r0, r3
  42f8ae: f386 f831    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386062
  42f8b2: e7ff         	b	0x42f8b4 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x424> @ imm = #-0x2
  42f8b4: ab0e         	add	r3, sp, #0x38
  42f8b6: 4618         	mov	r0, r3
  42f8b8: f386 f82c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386058
  42f8bc: e027         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x4e
  42f8be: ab0c         	add	r3, sp, #0x30
  42f8c0: 4618         	mov	r0, r3
  42f8c2: f386 f827    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38604e
  42f8c6: e7ff         	b	0x42f8c8 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x438> @ imm = #-0x2
  42f8c8: ab16         	add	r3, sp, #0x58
  42f8ca: 4618         	mov	r0, r3
  42f8cc: f35a fd96    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ab2c
  42f8d0: e01d         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x3a
  42f8d2: ab0d         	add	r3, sp, #0x34
  42f8d4: 4618         	mov	r0, r3
  42f8d6: f386 f81d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38603a
  42f8da: e018         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x30
  42f8dc: ab0f         	add	r3, sp, #0x3c
  42f8de: 4618         	mov	r0, r3
  42f8e0: f35a fd8c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ab18
  42f8e4: e013         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x26
  42f8e6: ab0e         	add	r3, sp, #0x38
  42f8e8: 4618         	mov	r0, r3
  42f8ea: f386 f813    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386026
  42f8ee: e7ff         	b	0x42f8f0 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x460> @ imm = #-0x2
  42f8f0: ab16         	add	r3, sp, #0x58
  42f8f2: 4618         	mov	r0, r3
  42f8f4: f386 f80e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38601c
  42f8f8: e009         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #0x12
  42f8fa: ab0f         	add	r3, sp, #0x3c
  42f8fc: 4618         	mov	r0, r3
  42f8fe: f386 f809    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x386012
  42f902: e7ff         	b	0x42f904 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x474> @ imm = #-0x2
  42f904: ab16         	add	r3, sp, #0x58
  42f906: 4618         	mov	r0, r3
  42f908: f35a fd78    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35aaf0
  42f90c: e7ff         	b	0x42f90e <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47e> @ imm = #-0x2
  42f90e: ab06         	add	r3, sp, #0x18
  42f910: 4618         	mov	r0, r3
  42f912: f385 ffff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x385ffe
  42f916: e7ff         	b	0x42f918 <IapManager::onAppsomniacsPurchaseValidationHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x488> @ imm = #-0x2
  42f918: ab05         	add	r3, sp, #0x14
  42f91a: 4618         	mov	r0, r3
  42f91c: f385 fffa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x385ff4
  42f920: f358 fbc4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x358788
  42f924: b018         	add	sp, #0x60
  42f926: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x42f927); words below are literal-pool data ---
  42f928: 356a         	adds	r5, #0x6a
  42f92a: 0050         	lsls	r0, r2, #0x1
  42f92c: e038         	b	0x42f9a0 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)+0xc> @ imm = #0x70
  42f92e: ffff e508    	<unknown>
  42f932: 003a         	movs	r2, r7
  42f934: e03c         	b	0x42f9b0 <std::pair<std::_Rb_tree_iterator<std::pair<std::string const, bool>>, bool> std::map<std::string, bool, std::less<std::string>, std::allocator<std::pair<std::string const, bool>>>::insert<std::pair<std::string, bool>, void>(std::pair<std::string, bool>&&)+0x1c> @ imm = #0x78
  42f936: ffff e040    	<unknown>
  42f93a: ffff e562    	<unknown>
  42f93e: 003a         	movs	r2, r7
  42f940: e422         	b	0x42f188 <IapManager::isProductPurchased(std::string)+0x40> @ imm = #-0x7bc
  42f942: 003a         	movs	r2, r7
