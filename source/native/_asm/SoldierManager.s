// SoldierManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 15 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SoldierManager.cpp

// ==== SoldierManager::SoldierManager
//      file offset 0x3eba08 (= ELF address; Ghidra 0x3fba08), 88 bytes, Thumb-2
  3eba08: b510         	push	{r4, lr}
  3eba0a: b082         	sub	sp, #0x8
  3eba0c: 9001         	str	r0, [sp, #0x4]
  3eba0e: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3eba58 <SoldierManager::SoldierManager()+0x50>
  3eba10: 447c         	add	r4, pc
  3eba12: 9b01         	ldr	r3, [sp, #0x4]
  3eba14: 4618         	mov	r0, r3
  3eba16: f1ac f9a9    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1ac352
  3eba1a: 9b01         	ldr	r3, [sp, #0x4]
  3eba1c: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3eba5c <SoldierManager::SoldierManager()+0x54>
  3eba1e: 58a2         	ldr	r2, [r4, r2]
  3eba20: 3208         	adds	r2, #0x8
  3eba22: 601a         	str	r2, [r3]
  3eba24: 9b01         	ldr	r3, [sp, #0x4]
  3eba26: 3320         	adds	r3, #0x20
  3eba28: 4618         	mov	r0, r3
  3eba2a: f3c9 fbc1    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3c9782
  3eba2e: 9801         	ldr	r0, [sp, #0x4]
  3eba30: f000 f816    	bl	0x3eba60 <SoldierManager::init()> @ imm = #0x2c
  3eba34: 9b01         	ldr	r3, [sp, #0x4]
  3eba36: e00b         	b	0x3eba50 <SoldierManager::SoldierManager()+0x48> @ imm = #0x16
  3eba38: 9b01         	ldr	r3, [sp, #0x4]
  3eba3a: 3320         	adds	r3, #0x20
  3eba3c: 4618         	mov	r0, r3
  3eba3e: f3c9 ff69    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9ed2
  3eba42: e7ff         	b	0x3eba44 <SoldierManager::SoldierManager()+0x3c> @ imm = #-0x2
  3eba44: 9b01         	ldr	r3, [sp, #0x4]
  3eba46: 4618         	mov	r0, r3
  3eba48: f1ac f9c2    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1ac384
  3eba4c: f39c fb2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39c65c
  3eba50: 4618         	mov	r0, r3
  3eba52: b002         	add	sp, #0x8
  3eba54: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3eba55); words below are literal-pool data ---
  3eba56: bf00         	nop
  3eba58: 6ff8         	ldr	r0, [r7, #0x7c]
  3eba5a: 0054         	lsls	r4, r2, #0x1
  3eba5c: df18         	svc	#0x18
  3eba5e: ffff b570    	<unknown>

// ==== SoldierManager::init
//      file offset 0x3eba60 (= ELF address; Ghidra 0x3fba60), 624 bytes, Thumb-2
  3eba60: b570         	push	{r4, r5, r6, lr}
  3eba62: b088         	sub	sp, #0x20
  3eba64: 9003         	str	r0, [sp, #0xc]
  3eba66: 4c90         	ldr	r4, [pc, #0x240]        @ 0x3ebca8 <SoldierManager::init()+0x248>
  3eba68: 447c         	add	r4, pc
  3eba6a: 9b03         	ldr	r3, [sp, #0xc]
  3eba6c: 2200         	movs	r2, #0x0
  3eba6e: f883 2034    	strb.w	r2, [r3, #0x34]
  3eba72: 9b03         	ldr	r3, [sp, #0xc]
  3eba74: 2200         	movs	r2, #0x0
  3eba76: 625a         	str	r2, [r3, #0x24]
  3eba78: 9b03         	ldr	r3, [sp, #0xc]
  3eba7a: 2200         	movs	r2, #0x0
  3eba7c: f883 2035    	strb.w	r2, [r3, #0x35]
  3eba80: 9b03         	ldr	r3, [sp, #0xc]
  3eba82: 2200         	movs	r2, #0x0
  3eba84: 751a         	strb	r2, [r3, #0x14]
  3eba86: 9b03         	ldr	r3, [sp, #0xc]
  3eba88: 2200         	movs	r2, #0x0
  3eba8a: 755a         	strb	r2, [r3, #0x15]
  3eba8c: 9b03         	ldr	r3, [sp, #0xc]
  3eba8e: 2200         	movs	r2, #0x0
  3eba90: 759a         	strb	r2, [r3, #0x16]
  3eba92: 9b03         	ldr	r3, [sp, #0xc]
  3eba94: 2201         	movs	r2, #0x1
  3eba96: f883 2034    	strb.w	r2, [r3, #0x34]
  3eba9a: f1ab fc89    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1ab912
  3eba9e: 4603         	mov	r3, r0
  3ebaa0: 461a         	mov	r2, r3
  3ebaa2: 4b82         	ldr	r3, [pc, #0x208]        @ 0x3ebcac <SoldierManager::init()+0x24c>
  3ebaa4: 58e3         	ldr	r3, [r4, r3]
  3ebaa6: 601a         	str	r2, [r3]
  3ebaa8: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3ebcac <SoldierManager::init()+0x24c>
  3ebaaa: 58e3         	ldr	r3, [r4, r3]
  3ebaac: 681b         	ldr	r3, [r3]
  3ebaae: 4618         	mov	r0, r3
  3ebab0: f1ac fa1a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ac434
  3ebab4: f1ab fc7c    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1ab8f8
  3ebab8: 4602         	mov	r2, r0
  3ebaba: 9b03         	ldr	r3, [sp, #0xc]
  3ebabc: 629a         	str	r2, [r3, #0x28]
  3ebabe: 9b03         	ldr	r3, [sp, #0xc]
  3ebac0: 6a9b         	ldr	r3, [r3, #0x28]
  3ebac2: 4618         	mov	r0, r3
  3ebac4: f1ac fa10    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ac420
  3ebac8: f7ff fefc    	bl	0x3eb8c4 <SoldierHostController::create()> @ imm = #-0x208
  3ebacc: 4603         	mov	r3, r0
  3ebace: 461a         	mov	r2, r3
  3ebad0: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebad2: 58e3         	ldr	r3, [r4, r3]
  3ebad4: 601a         	str	r2, [r3]
  3ebad6: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebad8: 58e3         	ldr	r3, [r4, r3]
  3ebada: 681b         	ldr	r3, [r3]
  3ebadc: 4618         	mov	r0, r3
  3ebade: f1ac fa03    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ac406
  3ebae2: f6fe fbeb    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x10182a
  3ebae6: 4602         	mov	r2, r0
  3ebae8: 9b03         	ldr	r3, [sp, #0xc]
  3ebaea: 631a         	str	r2, [r3, #0x30]
  3ebaec: 9b03         	ldr	r3, [sp, #0xc]
  3ebaee: 6b1b         	ldr	r3, [r3, #0x30]
  3ebaf0: 4618         	mov	r0, r3
  3ebaf2: f1ac f9f9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ac3f2
  3ebaf6: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebaf8: 58e3         	ldr	r3, [r4, r3]
  3ebafa: 681b         	ldr	r3, [r3]
  3ebafc: 681b         	ldr	r3, [r3]
  3ebafe: f503 730a    	add.w	r3, r3, #0x228
  3ebb02: 681b         	ldr	r3, [r3]
  3ebb04: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb06: 58a2         	ldr	r2, [r4, r2]
  3ebb08: 6812         	ldr	r2, [r2]
  3ebb0a: 4610         	mov	r0, r2
  3ebb0c: 4798         	blx	r3
  3ebb0e: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb10: 58e3         	ldr	r3, [r4, r3]
  3ebb12: 681b         	ldr	r3, [r3]
  3ebb14: 681b         	ldr	r3, [r3]
  3ebb16: f503 73ea    	add.w	r3, r3, #0x1d4
  3ebb1a: 681b         	ldr	r3, [r3]
  3ebb1c: 4a64         	ldr	r2, [pc, #0x190]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb1e: 58a2         	ldr	r2, [r4, r2]
  3ebb20: 6811         	ldr	r1, [r2]
  3ebb22: 9a03         	ldr	r2, [sp, #0xc]
  3ebb24: 6b12         	ldr	r2, [r2, #0x30]
  3ebb26: 4608         	mov	r0, r1
  3ebb28: 4611         	mov	r1, r2
  3ebb2a: 4798         	blx	r3
  3ebb2c: 4b60         	ldr	r3, [pc, #0x180]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb2e: 58e3         	ldr	r3, [r4, r3]
  3ebb30: 681b         	ldr	r3, [r3]
  3ebb32: 681b         	ldr	r3, [r3]
  3ebb34: f503 73ec    	add.w	r3, r3, #0x1d8
  3ebb38: 681b         	ldr	r3, [r3]
  3ebb3a: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb3c: 58a2         	ldr	r2, [r4, r2]
  3ebb3e: 6812         	ldr	r2, [r2]
  3ebb40: 4610         	mov	r0, r2
  3ebb42: 4798         	blx	r3
  3ebb44: 4603         	mov	r3, r0
  3ebb46: 4618         	mov	r0, r3
  3ebb48: f008 fb86    	bl	0x3f4258 <SoldierView::showSight()> @ imm = #0x870c
  3ebb4c: 4b58         	ldr	r3, [pc, #0x160]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb4e: 58e3         	ldr	r3, [r4, r3]
  3ebb50: 681b         	ldr	r3, [r3]
  3ebb52: 681b         	ldr	r3, [r3]
  3ebb54: f503 73ec    	add.w	r3, r3, #0x1d8
  3ebb58: 681b         	ldr	r3, [r3]
  3ebb5a: 4a55         	ldr	r2, [pc, #0x154]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb5c: 58a2         	ldr	r2, [r4, r2]
  3ebb5e: 6812         	ldr	r2, [r2]
  3ebb60: 4610         	mov	r0, r2
  3ebb62: 4798         	blx	r3
  3ebb64: 4603         	mov	r3, r0
  3ebb66: 4618         	mov	r0, r3
  3ebb68: 2101         	movs	r1, #0x1
  3ebb6a: f008 f99d    	bl	0x3f3ea8 <SoldierView::hidePlayerLabel(bool)> @ imm = #0x833a
  3ebb6e: 4b50         	ldr	r3, [pc, #0x140]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb70: 58e3         	ldr	r3, [r4, r3]
  3ebb72: 681b         	ldr	r3, [r3]
  3ebb74: 681b         	ldr	r3, [r3]
  3ebb76: f503 73e4    	add.w	r3, r3, #0x1c8
  3ebb7a: 681b         	ldr	r3, [r3]
  3ebb7c: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb7e: 58a2         	ldr	r2, [r4, r2]
  3ebb80: 6812         	ldr	r2, [r2]
  3ebb82: 4611         	mov	r1, r2
  3ebb84: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x3ebcb4 <SoldierManager::init()+0x254>
  3ebb86: 58a2         	ldr	r2, [r4, r2]
  3ebb88: 6812         	ldr	r2, [r2]
  3ebb8a: 4608         	mov	r0, r1
  3ebb8c: 4611         	mov	r1, r2
  3ebb8e: 4798         	blx	r3
  3ebb90: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebb92: 58e3         	ldr	r3, [r4, r3]
  3ebb94: 681b         	ldr	r3, [r3]
  3ebb96: 4618         	mov	r0, r3
  3ebb98: f75e f952    	bl	0x349e40 <ItemLibrary::applyItems(SoldierHostController*)> @ imm = #-0xa1d5c
  3ebb9c: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3ebcb8 <SoldierManager::init()+0x258>
  3ebb9e: 58e3         	ldr	r3, [r4, r3]
  3ebba0: 681b         	ldr	r3, [r3]
  3ebba2: 681b         	ldr	r3, [r3]
  3ebba4: 33cc         	adds	r3, #0xcc
  3ebba6: 681d         	ldr	r5, [r3]
  3ebba8: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x3ebcb8 <SoldierManager::init()+0x258>
  3ebbaa: 58e3         	ldr	r3, [r4, r3]
  3ebbac: 681b         	ldr	r3, [r3]
  3ebbae: 461e         	mov	r6, r3
  3ebbb0: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebbb2: 58e3         	ldr	r3, [r4, r3]
  3ebbb4: 681b         	ldr	r3, [r3]
  3ebbb6: 681b         	ldr	r3, [r3]
  3ebbb8: f503 73ec    	add.w	r3, r3, #0x1d8
  3ebbbc: 681b         	ldr	r3, [r3]
  3ebbbe: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x3ebcb0 <SoldierManager::init()+0x250>
  3ebbc0: 58a2         	ldr	r2, [r4, r2]
  3ebbc2: 6812         	ldr	r2, [r2]
  3ebbc4: 4610         	mov	r0, r2
  3ebbc6: 4798         	blx	r3
  3ebbc8: 4603         	mov	r3, r0
  3ebbca: 4630         	mov	r0, r6
  3ebbcc: 4619         	mov	r1, r3
  3ebbce: 2203         	movs	r2, #0x3
  3ebbd0: 47a8         	blx	r5
  3ebbd2: f1f6 fd2b    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1f6a56
  3ebbd6: 4603         	mov	r3, r0
  3ebbd8: 4618         	mov	r0, r3
  3ebbda: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x3ebcbc <SoldierManager::init()+0x25c>
  3ebbdc: 447b         	add	r3, pc
  3ebbde: 4619         	mov	r1, r3
  3ebbe0: 2200         	movs	r2, #0x0
  3ebbe2: f1f6 fb21    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x1f6642
  3ebbe6: 4602         	mov	r2, r0
  3ebbe8: 9b03         	ldr	r3, [sp, #0xc]
  3ebbea: 61da         	str	r2, [r3, #0x1c]
  3ebbec: 9b03         	ldr	r3, [sp, #0xc]
  3ebbee: f103 0520    	add.w	r5, r3, #0x20
  3ebbf2: f1f6 fd1b    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1f6a36
  3ebbf6: 4606         	mov	r6, r0
  3ebbf8: ab04         	add	r3, sp, #0x10
  3ebbfa: 4618         	mov	r0, r3
  3ebbfc: f39e fbfa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39e7f4
  3ebc00: aa05         	add	r2, sp, #0x14
  3ebc02: ab04         	add	r3, sp, #0x10
  3ebc04: 4610         	mov	r0, r2
  3ebc06: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3ebcc0 <SoldierManager::init()+0x260>
  3ebc08: 447a         	add	r2, pc
  3ebc0a: 4611         	mov	r1, r2
  3ebc0c: 461a         	mov	r2, r3
  3ebc0e: f3ca ff27    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3cae4e
  3ebc12: aa06         	add	r2, sp, #0x18
  3ebc14: ab05         	add	r3, sp, #0x14
  3ebc16: 4610         	mov	r0, r2
  3ebc18: 4631         	mov	r1, r6
  3ebc1a: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x3ebcc4 <SoldierManager::init()+0x264>
  3ebc1c: 447a         	add	r2, pc
  3ebc1e: f1f6 fc3d    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x1f687a
  3ebc22: ab06         	add	r3, sp, #0x18
  3ebc24: 4628         	mov	r0, r5
  3ebc26: 4619         	mov	r1, r3
  3ebc28: f3c9 fb5e    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x3c96bc
  3ebc2c: ab06         	add	r3, sp, #0x18
  3ebc2e: 4618         	mov	r0, r3
  3ebc30: f3c9 fe70    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9ce0
  3ebc34: ab05         	add	r3, sp, #0x14
  3ebc36: 4618         	mov	r0, r3
  3ebc38: f3c9 fe6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9cd8
  3ebc3c: ab04         	add	r3, sp, #0x10
  3ebc3e: 4618         	mov	r0, r3
  3ebc40: f39e fbdc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39e7b8
  3ebc44: 9b03         	ldr	r3, [sp, #0xc]
  3ebc46: f04f 32ff    	mov.w	r2, #0xffffffff
  3ebc4a: 625a         	str	r2, [r3, #0x24]
  3ebc4c: 9b03         	ldr	r3, [sp, #0xc]
  3ebc4e: 2201         	movs	r2, #0x1
  3ebc50: f883 2035    	strb.w	r2, [r3, #0x35]
  3ebc54: f1f4 fd2c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f4a58
  3ebc58: 4602         	mov	r2, r0
  3ebc5a: 9b03         	ldr	r3, [sp, #0xc]
  3ebc5c: 491a         	ldr	r1, [pc, #0x68]         @ 0x3ebcc8 <SoldierManager::init()+0x268>
  3ebc5e: 5861         	ldr	r1, [r4, r1]
  3ebc60: 9106         	str	r1, [sp, #0x18]
  3ebc62: 2100         	movs	r1, #0x0
  3ebc64: 9107         	str	r1, [sp, #0x1c]
  3ebc66: 4919         	ldr	r1, [pc, #0x64]         @ 0x3ebccc <SoldierManager::init()+0x26c>
  3ebc68: 4479         	add	r1, pc
  3ebc6a: 9100         	str	r1, [sp]
  3ebc6c: 2100         	movs	r1, #0x0
  3ebc6e: 9101         	str	r1, [sp, #0x4]
  3ebc70: 4610         	mov	r0, r2
  3ebc72: 4619         	mov	r1, r3
  3ebc74: ab06         	add	r3, sp, #0x18
  3ebc76: cb0c         	ldm	r3, {r2, r3}
  3ebc78: f1f4 fdb6    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1f4b6c
  3ebc7c: 2301         	movs	r3, #0x1
  3ebc7e: e00f         	b	0x3ebca0 <SoldierManager::init()+0x240> @ imm = #0x1e
  3ebc80: ab06         	add	r3, sp, #0x18
  3ebc82: 4618         	mov	r0, r3
  3ebc84: f3c9 fe46    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9c8c
  3ebc88: e7ff         	b	0x3ebc8a <SoldierManager::init()+0x22a> @ imm = #-0x2
  3ebc8a: ab05         	add	r3, sp, #0x14
  3ebc8c: 4618         	mov	r0, r3
  3ebc8e: f3c9 fe41    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9c82
  3ebc92: e7ff         	b	0x3ebc94 <SoldierManager::init()+0x234> @ imm = #-0x2
  3ebc94: ab04         	add	r3, sp, #0x10
  3ebc96: 4618         	mov	r0, r3
  3ebc98: f39e fbb0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39e760
  3ebc9c: f39c fa06    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39c40c
  3ebca0: 4618         	mov	r0, r3
  3ebca2: b008         	add	sp, #0x20
  3ebca4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3ebca5); words below are literal-pool data ---
  3ebca6: bf00         	nop
  3ebca8: 6fa0         	ldr	r0, [r4, #0x78]
  3ebcaa: 0054         	lsls	r4, r2, #0x1
  3ebcac: d920         	bls	0x3ebcf0 <SoldierManager::~SoldierManager()+0x20> @ imm = #0x40
  3ebcae: ffff d784    	<unknown>
  3ebcb2: ffff d7d0    	<unknown>
  3ebcb6: ffff d744    	<unknown>
  3ebcba: ffff cab0    	<unknown>
  3ebcbe: 003e         	movs	r6, r7
  3ebcc0: ca90         	ldm	r2!, {r4, r7}
  3ebcc2: 003e         	movs	r6, r7
  3ebcc4: ca84         	ldm	r2, {r2, r7}
  3ebcc6: 003e         	movs	r6, r7
  3ebcc8: df1c         	svc	#0x1c
  3ebcca: ffff ca44    	vtbx.8	d28, {d15, d16, d17}, d4
  3ebcce: 003e         	movs	r6, r7

// ==== SoldierManager::~SoldierManager
//      file offset 0x3ebcd0 (= ELF address; Ghidra 0x3fbcd0), 168 bytes, Thumb-2
  3ebcd0: b510         	push	{r4, lr}
  3ebcd2: b082         	sub	sp, #0x8
  3ebcd4: 9001         	str	r0, [sp, #0x4]
  3ebcd6: 4c24         	ldr	r4, [pc, #0x90]         @ 0x3ebd68 <SoldierManager::~SoldierManager()+0x98>
  3ebcd8: 447c         	add	r4, pc
  3ebcda: 9b01         	ldr	r3, [sp, #0x4]
  3ebcdc: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3ebd6c <SoldierManager::~SoldierManager()+0x9c>
  3ebcde: 58a2         	ldr	r2, [r4, r2]
  3ebce0: 3208         	adds	r2, #0x8
  3ebce2: 601a         	str	r2, [r3]
  3ebce4: f1f4 fce4    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f49c8
  3ebce8: 4602         	mov	r2, r0
  3ebcea: 9b01         	ldr	r3, [sp, #0x4]
  3ebcec: 4610         	mov	r0, r2
  3ebcee: 4619         	mov	r1, r3
  3ebcf0: f1f4 fe16    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x1f4c2c
  3ebcf4: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3ebd70 <SoldierManager::~SoldierManager()+0xa0>
  3ebcf6: 58e3         	ldr	r3, [r4, r3]
  3ebcf8: 681b         	ldr	r3, [r3]
  3ebcfa: 681b         	ldr	r3, [r3]
  3ebcfc: f503 7325    	add.w	r3, r3, #0x294
  3ebd00: 681b         	ldr	r3, [r3]
  3ebd02: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x3ebd70 <SoldierManager::~SoldierManager()+0xa0>
  3ebd04: 58a2         	ldr	r2, [r4, r2]
  3ebd06: 6812         	ldr	r2, [r2]
  3ebd08: 4610         	mov	r0, r2
  3ebd0a: 4798         	blx	r3
  3ebd0c: 9b01         	ldr	r3, [sp, #0x4]
  3ebd0e: 6b1b         	ldr	r3, [r3, #0x30]
  3ebd10: 4618         	mov	r0, r3
  3ebd12: f1ac f8d1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ac1a2
  3ebd16: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3ebd70 <SoldierManager::~SoldierManager()+0xa0>
  3ebd18: 58e3         	ldr	r3, [r4, r3]
  3ebd1a: 681b         	ldr	r3, [r3]
  3ebd1c: 4618         	mov	r0, r3
  3ebd1e: f1ac f8cb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ac196
  3ebd22: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3ebd70 <SoldierManager::~SoldierManager()+0xa0>
  3ebd24: 58e3         	ldr	r3, [r4, r3]
  3ebd26: 2200         	movs	r2, #0x0
  3ebd28: 601a         	str	r2, [r3]
  3ebd2a: 9b01         	ldr	r3, [sp, #0x4]
  3ebd2c: 6a9b         	ldr	r3, [r3, #0x28]
  3ebd2e: 4618         	mov	r0, r3
  3ebd30: f1ac f8c2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ac184
  3ebd34: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3ebd74 <SoldierManager::~SoldierManager()+0xa4>
  3ebd36: 58e3         	ldr	r3, [r4, r3]
  3ebd38: 681b         	ldr	r3, [r3]
  3ebd3a: 4618         	mov	r0, r3
  3ebd3c: f1ac f8bc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ac178
  3ebd40: 9b01         	ldr	r3, [sp, #0x4]
  3ebd42: 3320         	adds	r3, #0x20
  3ebd44: 4618         	mov	r0, r3
  3ebd46: f3c9 fde5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9bca
  3ebd4a: 9b01         	ldr	r3, [sp, #0x4]
  3ebd4c: 4618         	mov	r0, r3
  3ebd4e: f1ac f83f    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1ac07e
  3ebd52: 2300         	movs	r3, #0x0
  3ebd54: 2b00         	cmp	r3, #0x0
  3ebd56: d002         	beq	0x3ebd5e <SoldierManager::~SoldierManager()+0x8e> @ imm = #0x4
  3ebd58: 9801         	ldr	r0, [sp, #0x4]
  3ebd5a: f39c f9a3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39c346
  3ebd5e: 9b01         	ldr	r3, [sp, #0x4]
  3ebd60: 4618         	mov	r0, r3
  3ebd62: b002         	add	sp, #0x8
  3ebd64: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ebd65); words below are literal-pool data ---
  3ebd66: bf00         	nop
  3ebd68: 6d30         	ldr	r0, [r6, #0x50]
  3ebd6a: 0054         	lsls	r4, r2, #0x1
  3ebd6c: df18         	svc	#0x18
  3ebd6e: ffff d784    	<unknown>
  3ebd72: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  3ebd76: ffff b500    	<unknown>

// ==== SoldierManager::~SoldierManager
//      file offset 0x3ebd78 (= ELF address; Ghidra 0x3fbd78), 28 bytes, Thumb-2
  3ebd78: b500         	push	{lr}
  3ebd7a: b083         	sub	sp, #0xc
  3ebd7c: 9001         	str	r0, [sp, #0x4]
  3ebd7e: 9801         	ldr	r0, [sp, #0x4]
  3ebd80: f7ff ffa6    	bl	0x3ebcd0 <SoldierManager::~SoldierManager()> @ imm = #-0xb4
  3ebd84: 9801         	ldr	r0, [sp, #0x4]
  3ebd86: f39c f98d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39c31a
  3ebd8a: 9b01         	ldr	r3, [sp, #0x4]
  3ebd8c: 4618         	mov	r0, r3
  3ebd8e: b003         	add	sp, #0xc
  3ebd90: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierManager::removeRemotePlayers
//      file offset 0x3ebd94 (= ELF address; Ghidra 0x3fbd94), 200 bytes, Thumb-2
  3ebd94: b510         	push	{r4, lr}
  3ebd96: b086         	sub	sp, #0x18
  3ebd98: 9001         	str	r0, [sp, #0x4]
  3ebd9a: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3ebe54 <SoldierManager::removeRemotePlayers()+0xc0>
  3ebd9c: 447c         	add	r4, pc
  3ebd9e: 2300         	movs	r3, #0x0
  3ebda0: 9303         	str	r3, [sp, #0xc]
  3ebda2: 2300         	movs	r3, #0x0
  3ebda4: 9304         	str	r3, [sp, #0x10]
  3ebda6: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3ebe58 <SoldierManager::removeRemotePlayers()+0xc4>
  3ebda8: 58e3         	ldr	r3, [r4, r3]
  3ebdaa: 681b         	ldr	r3, [r3]
  3ebdac: 2b00         	cmp	r3, #0x0
  3ebdae: d00a         	beq	0x3ebdc6 <SoldierManager::removeRemotePlayers()+0x32> @ imm = #0x14
  3ebdb0: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3ebe58 <SoldierManager::removeRemotePlayers()+0xc4>
  3ebdb2: 58e3         	ldr	r3, [r4, r3]
  3ebdb4: 681b         	ldr	r3, [r3]
  3ebdb6: 4618         	mov	r0, r3
  3ebdb8: f1a7 ff58    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1a7eb0
  3ebdbc: 4603         	mov	r3, r0
  3ebdbe: 2b00         	cmp	r3, #0x0
  3ebdc0: d001         	beq	0x3ebdc6 <SoldierManager::removeRemotePlayers()+0x32> @ imm = #0x2
  3ebdc2: 2301         	movs	r3, #0x1
  3ebdc4: e000         	b	0x3ebdc8 <SoldierManager::removeRemotePlayers()+0x34> @ imm = #0x0
  3ebdc6: 2300         	movs	r3, #0x0
  3ebdc8: 2b00         	cmp	r3, #0x0
  3ebdca: d041         	beq	0x3ebe50 <SoldierManager::removeRemotePlayers()+0xbc> @ imm = #0x82
  3ebdcc: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3ebe58 <SoldierManager::removeRemotePlayers()+0xc4>
  3ebdce: 58e3         	ldr	r3, [r4, r3]
  3ebdd0: 681b         	ldr	r3, [r3]
  3ebdd2: 695b         	ldr	r3, [r3, #0x14]
  3ebdd4: 9303         	str	r3, [sp, #0xc]
  3ebdd6: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3ebe58 <SoldierManager::removeRemotePlayers()+0xc4>
  3ebdd8: 58e3         	ldr	r3, [r4, r3]
  3ebdda: 681b         	ldr	r3, [r3]
  3ebddc: 695b         	ldr	r3, [r3, #0x14]
  3ebdde: 2b00         	cmp	r3, #0x0
  3ebde0: d006         	beq	0x3ebdf0 <SoldierManager::removeRemotePlayers()+0x5c> @ imm = #0xc
  3ebde2: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3ebe58 <SoldierManager::removeRemotePlayers()+0xc4>
  3ebde4: 58e3         	ldr	r3, [r4, r3]
  3ebde6: 681b         	ldr	r3, [r3]
  3ebde8: 695b         	ldr	r3, [r3, #0x14]
  3ebdea: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ebdee: e000         	b	0x3ebdf2 <SoldierManager::removeRemotePlayers()+0x5e> @ imm = #0x0
  3ebdf0: 2300         	movs	r3, #0x0
  3ebdf2: 9304         	str	r3, [sp, #0x10]
  3ebdf4: e022         	b	0x3ebe3c <SoldierManager::removeRemotePlayers()+0xa8> @ imm = #0x44
  3ebdf6: 9803         	ldr	r0, [sp, #0xc]
  3ebdf8: f712 fc1c    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xed7c8
  3ebdfc: 4603         	mov	r3, r0
  3ebdfe: 9305         	str	r3, [sp, #0x14]
  3ebe00: 9b05         	ldr	r3, [sp, #0x14]
  3ebe02: 681b         	ldr	r3, [r3]
  3ebe04: f503 73e0    	add.w	r3, r3, #0x1c0
  3ebe08: 681b         	ldr	r3, [r3]
  3ebe0a: 9a05         	ldr	r2, [sp, #0x14]
  3ebe0c: a902         	add	r1, sp, #0x8
  3ebe0e: 4608         	mov	r0, r1
  3ebe10: 4611         	mov	r1, r2
  3ebe12: 4798         	blx	r3
  3ebe14: ab02         	add	r3, sp, #0x8
  3ebe16: 9801         	ldr	r0, [sp, #0x4]
  3ebe18: 4619         	mov	r1, r3
  3ebe1a: f000 faaf    	bl	0x3ec37c <SoldierManager::removeRemotePlayer(std::string)> @ imm = #0x55e
  3ebe1e: ab02         	add	r3, sp, #0x8
  3ebe20: 4618         	mov	r0, r3
  3ebe22: f3c9 fd77    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9aee
  3ebe26: 9b04         	ldr	r3, [sp, #0x10]
  3ebe28: 9303         	str	r3, [sp, #0xc]
  3ebe2a: 9b04         	ldr	r3, [sp, #0x10]
  3ebe2c: 2b00         	cmp	r3, #0x0
  3ebe2e: d003         	beq	0x3ebe38 <SoldierManager::removeRemotePlayers()+0xa4> @ imm = #0x6
  3ebe30: 9b04         	ldr	r3, [sp, #0x10]
  3ebe32: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ebe36: e000         	b	0x3ebe3a <SoldierManager::removeRemotePlayers()+0xa6> @ imm = #0x0
  3ebe38: 2300         	movs	r3, #0x0
  3ebe3a: 9304         	str	r3, [sp, #0x10]
  3ebe3c: 9b03         	ldr	r3, [sp, #0xc]
  3ebe3e: 2b00         	cmp	r3, #0x0
  3ebe40: d1d9         	bne	0x3ebdf6 <SoldierManager::removeRemotePlayers()+0x62> @ imm = #-0x4e
  3ebe42: e005         	b	0x3ebe50 <SoldierManager::removeRemotePlayers()+0xbc> @ imm = #0xa
  3ebe44: ab02         	add	r3, sp, #0x8
  3ebe46: 4618         	mov	r0, r3
  3ebe48: f3c9 fd64    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9ac8
  3ebe4c: f39c f92e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39c25c
  3ebe50: b006         	add	sp, #0x18
  3ebe52: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ebe53); words below are literal-pool data ---
  3ebe54: 6c6c         	ldr	r4, [r5, #0x44]
  3ebe56: 0054         	lsls	r4, r2, #0x1
  3ebe58: d920         	bls	0x3ebe9c <SoldierManager::updateStep(float)+0x40> @ imm = #0x40
  3ebe5a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SoldierManager::updateStep
//      file offset 0x3ebe5c (= ELF address; Ghidra 0x3fbe5c), 1088 bytes, Thumb-2
  3ebe5c: b530         	push	{r4, r5, lr}
  3ebe5e: ed2d 8b02    	vpush	{d8}
  3ebe62: b08f         	sub	sp, #0x3c
  3ebe64: 9001         	str	r0, [sp, #0x4]
  3ebe66: 9100         	str	r1, [sp]
  3ebe68: f8df 4408    	ldr.w	r4, [pc, #0x408]        @ 0x3ec274 <SoldierManager::updateStep(float)+0x418>
  3ebe6c: 447c         	add	r4, pc
  3ebe6e: 9b01         	ldr	r3, [sp, #0x4]
  3ebe70: ed93 7a06    	vldr	s14, [r3, #24]
  3ebe74: eddd 7a00    	vldr	s15, [sp]
  3ebe78: ee77 7a67    	vsub.f32	s15, s14, s15
  3ebe7c: 9b01         	ldr	r3, [sp, #0x4]
  3ebe7e: edc3 7a06    	vstr	s15, [r3, #24]
  3ebe82: 9b01         	ldr	r3, [sp, #0x4]
  3ebe84: 7d1b         	ldrb	r3, [r3, #0x14]
  3ebe86: 2b00         	cmp	r3, #0x0
  3ebe88: d019         	beq	0x3ebebe <SoldierManager::updateStep(float)+0x62> @ imm = #0x32
  3ebe8a: 9b01         	ldr	r3, [sp, #0x4]
  3ebe8c: edd3 7a06    	vldr	s15, [r3, #24]
  3ebe90: eef5 7ac0    	vcmpe.f32	s15, #0
  3ebe94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ebe98: d811         	bhi	0x3ebebe <SoldierManager::updateStep(float)+0x62> @ imm = #0x22
  3ebe9a: 9b01         	ldr	r3, [sp, #0x4]
  3ebe9c: 2200         	movs	r2, #0x0
  3ebe9e: 751a         	strb	r2, [r3, #0x14]
  3ebea0: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x3ec278 <SoldierManager::updateStep(float)+0x41c>
  3ebea2: 58e3         	ldr	r3, [r4, r3]
  3ebea4: 681b         	ldr	r3, [r3]
  3ebea6: 681b         	ldr	r3, [r3]
  3ebea8: f503 7330    	add.w	r3, r3, #0x2c0
  3ebeac: 681b         	ldr	r3, [r3]
  3ebeae: 4af2         	ldr	r2, [pc, #0x3c8]        @ 0x3ec278 <SoldierManager::updateStep(float)+0x41c>
  3ebeb0: 58a2         	ldr	r2, [r4, r2]
  3ebeb2: 6812         	ldr	r2, [r2]
  3ebeb4: 4610         	mov	r0, r2
  3ebeb6: 4798         	blx	r3
  3ebeb8: 9801         	ldr	r0, [sp, #0x4]
  3ebeba: f000 fca1    	bl	0x3ec800 <SoldierManager::spawnPlayer()> @ imm = #0x942
  3ebebe: 2300         	movs	r3, #0x0
  3ebec0: 9305         	str	r3, [sp, #0x14]
  3ebec2: 2300         	movs	r3, #0x0
  3ebec4: 9306         	str	r3, [sp, #0x18]
  3ebec6: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x3ec27c <SoldierManager::updateStep(float)+0x420>
  3ebec8: 58e3         	ldr	r3, [r4, r3]
  3ebeca: 681b         	ldr	r3, [r3]
  3ebecc: 2b00         	cmp	r3, #0x0
  3ebece: d00a         	beq	0x3ebee6 <SoldierManager::updateStep(float)+0x8a> @ imm = #0x14
  3ebed0: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x3ec27c <SoldierManager::updateStep(float)+0x420>
  3ebed2: 58e3         	ldr	r3, [r4, r3]
  3ebed4: 681b         	ldr	r3, [r3]
  3ebed6: 4618         	mov	r0, r3
  3ebed8: f1a7 fec8    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1a7d90
  3ebedc: 4603         	mov	r3, r0
  3ebede: 2b00         	cmp	r3, #0x0
  3ebee0: d001         	beq	0x3ebee6 <SoldierManager::updateStep(float)+0x8a> @ imm = #0x2
  3ebee2: 2301         	movs	r3, #0x1
  3ebee4: e000         	b	0x3ebee8 <SoldierManager::updateStep(float)+0x8c> @ imm = #0x0
  3ebee6: 2300         	movs	r3, #0x0
  3ebee8: 2b00         	cmp	r3, #0x0
  3ebeea: f000 81be    	beq.w	0x3ec26a <SoldierManager::updateStep(float)+0x40e> @ imm = #0x37c
  3ebeee: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x3ec27c <SoldierManager::updateStep(float)+0x420>
  3ebef0: 58e3         	ldr	r3, [r4, r3]
  3ebef2: 681b         	ldr	r3, [r3]
  3ebef4: 695b         	ldr	r3, [r3, #0x14]
  3ebef6: 9305         	str	r3, [sp, #0x14]
  3ebef8: 4be0         	ldr	r3, [pc, #0x380]        @ 0x3ec27c <SoldierManager::updateStep(float)+0x420>
  3ebefa: 58e3         	ldr	r3, [r4, r3]
  3ebefc: 681b         	ldr	r3, [r3]
  3ebefe: 695b         	ldr	r3, [r3, #0x14]
  3ebf00: 2b00         	cmp	r3, #0x0
  3ebf02: d006         	beq	0x3ebf12 <SoldierManager::updateStep(float)+0xb6> @ imm = #0xc
  3ebf04: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x3ec27c <SoldierManager::updateStep(float)+0x420>
  3ebf06: 58e3         	ldr	r3, [r4, r3]
  3ebf08: 681b         	ldr	r3, [r3]
  3ebf0a: 695b         	ldr	r3, [r3, #0x14]
  3ebf0c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ebf10: e000         	b	0x3ebf14 <SoldierManager::updateStep(float)+0xb8> @ imm = #0x0
  3ebf12: 2300         	movs	r3, #0x0
  3ebf14: 9306         	str	r3, [sp, #0x18]
  3ebf16: e17a         	b	0x3ec20e <SoldierManager::updateStep(float)+0x3b2> @ imm = #0x2f4
  3ebf18: 9805         	ldr	r0, [sp, #0x14]
  3ebf1a: f712 fb8b    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xed8ea
  3ebf1e: 4603         	mov	r3, r0
  3ebf20: 9307         	str	r3, [sp, #0x1c]
  3ebf22: 9b07         	ldr	r3, [sp, #0x1c]
  3ebf24: 681b         	ldr	r3, [r3]
  3ebf26: f503 73ee    	add.w	r3, r3, #0x1dc
  3ebf2a: 681b         	ldr	r3, [r3]
  3ebf2c: 9807         	ldr	r0, [sp, #0x1c]
  3ebf2e: 9900         	ldr	r1, [sp]
  3ebf30: 4798         	blx	r3
  3ebf32: 2400         	movs	r4, #0x0
  3ebf34: f78b fe04    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x743f8
  3ebf38: 4605         	mov	r5, r0
  3ebf3a: 9b07         	ldr	r3, [sp, #0x1c]
  3ebf3c: 681b         	ldr	r3, [r3]
  3ebf3e: f503 73e0    	add.w	r3, r3, #0x1c0
  3ebf42: 681b         	ldr	r3, [r3]
  3ebf44: 9a07         	ldr	r2, [sp, #0x1c]
  3ebf46: a903         	add	r1, sp, #0xc
  3ebf48: 4608         	mov	r0, r1
  3ebf4a: 4611         	mov	r1, r2
  3ebf4c: 4798         	blx	r3
  3ebf4e: 2401         	movs	r4, #0x1
  3ebf50: ab03         	add	r3, sp, #0xc
  3ebf52: 4628         	mov	r0, r5
  3ebf54: 4619         	mov	r1, r3
  3ebf56: f78d fe05    	bl	0x379b64 <NetworkManager::getPingTimeFor(std::string)> @ imm = #-0x723f6
  3ebf5a: ec41 0b18    	vmov	d8, r0, r1
  3ebf5e: f78b fdef    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x74422
  3ebf62: 4603         	mov	r3, r0
  3ebf64: 4618         	mov	r0, r3
  3ebf66: f78e fa89    	bl	0x37a47c <NetworkManager::getPlayerTimeout()> @ imm = #-0x71aee
  3ebf6a: 4602         	mov	r2, r0
  3ebf6c: 4613         	mov	r3, r2
  3ebf6e: 005b         	lsls	r3, r3, #0x1
  3ebf70: 4413         	add	r3, r2
  3ebf72: ee06 3a90    	vmov	s13, r3
  3ebf76: eeb8 7be6    	vcvt.f64.s32	d7, s13
  3ebf7a: eeb4 8bc7    	vcmpe.f64	d8, d7
  3ebf7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ebf82: dd14         	ble	0x3ebfae <SoldierManager::updateStep(float)+0x152> @ imm = #0x28
  3ebf84: f78b fddc    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x74448
  3ebf88: 4603         	mov	r3, r0
  3ebf8a: 4618         	mov	r0, r3
  3ebf8c: f78e fbca    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0x7186c
  3ebf90: 4603         	mov	r3, r0
  3ebf92: f083 0301    	eor	r3, r3, #0x1
  3ebf96: b2db         	uxtb	r3, r3
  3ebf98: 2b00         	cmp	r3, #0x0
  3ebf9a: d008         	beq	0x3ebfae <SoldierManager::updateStep(float)+0x152> @ imm = #0x10
  3ebf9c: 9b01         	ldr	r3, [sp, #0x4]
  3ebf9e: 7d5b         	ldrb	r3, [r3, #0x15]
  3ebfa0: f083 0301    	eor	r3, r3, #0x1
  3ebfa4: b2db         	uxtb	r3, r3
  3ebfa6: 2b00         	cmp	r3, #0x0
  3ebfa8: d001         	beq	0x3ebfae <SoldierManager::updateStep(float)+0x152> @ imm = #0x2
  3ebfaa: 2301         	movs	r3, #0x1
  3ebfac: e000         	b	0x3ebfb0 <SoldierManager::updateStep(float)+0x154> @ imm = #0x0
  3ebfae: 2300         	movs	r3, #0x0
  3ebfb0: 461d         	mov	r5, r3
  3ebfb2: 2c00         	cmp	r4, #0x0
  3ebfb4: d004         	beq	0x3ebfc0 <SoldierManager::updateStep(float)+0x164> @ imm = #0x8
  3ebfb6: bf00         	nop
  3ebfb8: ab03         	add	r3, sp, #0xc
  3ebfba: 4618         	mov	r0, r3
  3ebfbc: f3c9 fcaa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9954
  3ebfc0: 2d00         	cmp	r5, #0x0
  3ebfc2: d00d         	beq	0x3ebfe0 <SoldierManager::updateStep(float)+0x184> @ imm = #0x1a
  3ebfc4: f1f4 fb74    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f46e8
  3ebfc8: 4603         	mov	r3, r0
  3ebfca: 4618         	mov	r0, r3
  3ebfcc: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x3ec280 <SoldierManager::updateStep(float)+0x424>
  3ebfce: 447b         	add	r3, pc
  3ebfd0: 4619         	mov	r1, r3
  3ebfd2: 2200         	movs	r2, #0x0
  3ebfd4: f1f4 fdaa    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f4b54
  3ebfd8: 9b01         	ldr	r3, [sp, #0x4]
  3ebfda: 2201         	movs	r2, #0x1
  3ebfdc: 755a         	strb	r2, [r3, #0x15]
  3ebfde: e10b         	b	0x3ec1f8 <SoldierManager::updateStep(float)+0x39c> @ imm = #0x216
  3ebfe0: f78b fdae    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x744a4
  3ebfe4: 4604         	mov	r4, r0
  3ebfe6: 9b07         	ldr	r3, [sp, #0x1c]
  3ebfe8: 681b         	ldr	r3, [r3]
  3ebfea: f503 73e0    	add.w	r3, r3, #0x1c0
  3ebfee: 681b         	ldr	r3, [r3]
  3ebff0: 9a07         	ldr	r2, [sp, #0x1c]
  3ebff2: a904         	add	r1, sp, #0x10
  3ebff4: 4608         	mov	r0, r1
  3ebff6: 4611         	mov	r1, r2
  3ebff8: 4798         	blx	r3
  3ebffa: ab04         	add	r3, sp, #0x10
  3ebffc: 4620         	mov	r0, r4
  3ebffe: 4619         	mov	r1, r3
  3ec000: f78d fdb0    	bl	0x379b64 <NetworkManager::getPingTimeFor(std::string)> @ imm = #-0x724a0
  3ec004: ec41 0b18    	vmov	d8, r0, r1
  3ec008: f78b fd9a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x744cc
  3ec00c: 4603         	mov	r3, r0
  3ec00e: 4618         	mov	r0, r3
  3ec010: f78e fa34    	bl	0x37a47c <NetworkManager::getPlayerTimeout()> @ imm = #-0x71b98
  3ec014: 4603         	mov	r3, r0
  3ec016: 0fda         	lsrs	r2, r3, #0x1f
  3ec018: 4413         	add	r3, r2
  3ec01a: 105b         	asrs	r3, r3, #0x1
  3ec01c: ee06 3a90    	vmov	s13, r3
  3ec020: eeb8 7be6    	vcvt.f64.s32	d7, s13
  3ec024: eeb4 8bc7    	vcmpe.f64	d8, d7
  3ec028: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ec02c: bfd4         	ite	le
  3ec02e: 2300         	movle	r3, #0x0
  3ec030: 2301         	movgt	r3, #0x1
  3ec032: b2dc         	uxtb	r4, r3
  3ec034: ab04         	add	r3, sp, #0x10
  3ec036: 4618         	mov	r0, r3
  3ec038: f3c9 fc6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c98d8
  3ec03c: 2c00         	cmp	r4, #0x0
  3ec03e: d06c         	beq	0x3ec11a <SoldierManager::updateStep(float)+0x2be> @ imm = #0xd8
  3ec040: 9b07         	ldr	r3, [sp, #0x1c]
  3ec042: 681b         	ldr	r3, [r3]
  3ec044: f503 731f    	add.w	r3, r3, #0x27c
  3ec048: 681b         	ldr	r3, [r3]
  3ec04a: 9a07         	ldr	r2, [sp, #0x1c]
  3ec04c: 4610         	mov	r0, r2
  3ec04e: 4798         	blx	r3
  3ec050: 4603         	mov	r3, r0
  3ec052: 2b00         	cmp	r3, #0x0
  3ec054: d057         	beq	0x3ec106 <SoldierManager::updateStep(float)+0x2aa> @ imm = #0xae
  3ec056: f78b fd73    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x7451a
  3ec05a: 4603         	mov	r3, r0
  3ec05c: 4618         	mov	r0, r3
  3ec05e: f78c fb0b    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x739ea
  3ec062: 4604         	mov	r4, r0
  3ec064: 9b07         	ldr	r3, [sp, #0x1c]
  3ec066: 681b         	ldr	r3, [r3]
  3ec068: f503 73e0    	add.w	r3, r3, #0x1c0
  3ec06c: 681b         	ldr	r3, [r3]
  3ec06e: 9a07         	ldr	r2, [sp, #0x1c]
  3ec070: a904         	add	r1, sp, #0x10
  3ec072: 4608         	mov	r0, r1
  3ec074: 4611         	mov	r1, r2
  3ec076: 4798         	blx	r3
  3ec078: ab04         	add	r3, sp, #0x10
  3ec07a: 4620         	mov	r0, r4
  3ec07c: 4619         	mov	r1, r3
  3ec07e: f1a7 ff37    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1a7e6e
  3ec082: 4603         	mov	r3, r0
  3ec084: 9308         	str	r3, [sp, #0x20]
  3ec086: ab04         	add	r3, sp, #0x10
  3ec088: 4618         	mov	r0, r3
  3ec08a: f3c9 fc43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9886
  3ec08e: 9b08         	ldr	r3, [sp, #0x20]
  3ec090: 2b00         	cmp	r3, #0x0
  3ec092: d01b         	beq	0x3ec0cc <SoldierManager::updateStep(float)+0x270> @ imm = #0x36
  3ec094: 9808         	ldr	r0, [sp, #0x20]
  3ec096: 2101         	movs	r1, #0x1
  3ec098: f1ae f842    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1ae084
  3ec09c: 4603         	mov	r3, r0
  3ec09e: 9309         	str	r3, [sp, #0x24]
  3ec0a0: 9809         	ldr	r0, [sp, #0x24]
  3ec0a2: f1ad fc41    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ad882
  3ec0a6: 4603         	mov	r3, r0
  3ec0a8: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x3ec284 <SoldierManager::updateStep(float)+0x428>
  3ec0aa: 447a         	add	r2, pc
  3ec0ac: 4610         	mov	r0, r2
  3ec0ae: 4619         	mov	r1, r3
  3ec0b0: f1ad fd2e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ada5c
  3ec0b4: 4603         	mov	r3, r0
  3ec0b6: 930a         	str	r3, [sp, #0x28]
  3ec0b8: f1f4 fafa    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f45f4
  3ec0bc: 4603         	mov	r3, r0
  3ec0be: 4618         	mov	r0, r3
  3ec0c0: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x3ec288 <SoldierManager::updateStep(float)+0x42c>
  3ec0c2: 447b         	add	r3, pc
  3ec0c4: 4619         	mov	r1, r3
  3ec0c6: 9a0a         	ldr	r2, [sp, #0x28]
  3ec0c8: f1f4 fd30    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f4a60
  3ec0cc: f1f4 faf0    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f45e0
  3ec0d0: 4604         	mov	r4, r0
  3ec0d2: 9b07         	ldr	r3, [sp, #0x1c]
  3ec0d4: 681b         	ldr	r3, [r3]
  3ec0d6: f503 73e0    	add.w	r3, r3, #0x1c0
  3ec0da: 681b         	ldr	r3, [r3]
  3ec0dc: 9a07         	ldr	r2, [sp, #0x1c]
  3ec0de: a904         	add	r1, sp, #0x10
  3ec0e0: 4608         	mov	r0, r1
  3ec0e2: 4611         	mov	r1, r2
  3ec0e4: 4798         	blx	r3
  3ec0e6: ab04         	add	r3, sp, #0x10
  3ec0e8: 4618         	mov	r0, r3
  3ec0ea: f1ad fca7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ad94e
  3ec0ee: 4603         	mov	r3, r0
  3ec0f0: 4620         	mov	r0, r4
  3ec0f2: 4a66         	ldr	r2, [pc, #0x198]        @ 0x3ec28c <SoldierManager::updateStep(float)+0x430>
  3ec0f4: 447a         	add	r2, pc
  3ec0f6: 4611         	mov	r1, r2
  3ec0f8: 461a         	mov	r2, r3
  3ec0fa: f1f4 fd17    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f4a2e
  3ec0fe: ab04         	add	r3, sp, #0x10
  3ec100: 4618         	mov	r0, r3
  3ec102: f3c9 fc07    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c980e
  3ec106: 9b07         	ldr	r3, [sp, #0x1c]
  3ec108: 681b         	ldr	r3, [r3]
  3ec10a: f503 7320    	add.w	r3, r3, #0x280
  3ec10e: 681b         	ldr	r3, [r3]
  3ec110: 9a07         	ldr	r2, [sp, #0x1c]
  3ec112: 4610         	mov	r0, r2
  3ec114: 2100         	movs	r1, #0x0
  3ec116: 4798         	blx	r3
  3ec118: e06e         	b	0x3ec1f8 <SoldierManager::updateStep(float)+0x39c> @ imm = #0xdc
  3ec11a: 9b07         	ldr	r3, [sp, #0x1c]
  3ec11c: 681b         	ldr	r3, [r3]
  3ec11e: f503 731f    	add.w	r3, r3, #0x27c
  3ec122: 681b         	ldr	r3, [r3]
  3ec124: 9a07         	ldr	r2, [sp, #0x1c]
  3ec126: 4610         	mov	r0, r2
  3ec128: 4798         	blx	r3
  3ec12a: 4603         	mov	r3, r0
  3ec12c: f083 0301    	eor	r3, r3, #0x1
  3ec130: b2db         	uxtb	r3, r3
  3ec132: 2b00         	cmp	r3, #0x0
  3ec134: d060         	beq	0x3ec1f8 <SoldierManager::updateStep(float)+0x39c> @ imm = #0xc0
  3ec136: f78b fd03    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x745fa
  3ec13a: 4603         	mov	r3, r0
  3ec13c: 4618         	mov	r0, r3
  3ec13e: f78c fa9b    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x73aca
  3ec142: 4604         	mov	r4, r0
  3ec144: 9b07         	ldr	r3, [sp, #0x1c]
  3ec146: 681b         	ldr	r3, [r3]
  3ec148: f503 73e0    	add.w	r3, r3, #0x1c0
  3ec14c: 681b         	ldr	r3, [r3]
  3ec14e: 9a07         	ldr	r2, [sp, #0x1c]
  3ec150: a904         	add	r1, sp, #0x10
  3ec152: 4608         	mov	r0, r1
  3ec154: 4611         	mov	r1, r2
  3ec156: 4798         	blx	r3
  3ec158: ab04         	add	r3, sp, #0x10
  3ec15a: 4620         	mov	r0, r4
  3ec15c: 4619         	mov	r1, r3
  3ec15e: f1a7 fec7    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1a7d8e
  3ec162: 4603         	mov	r3, r0
  3ec164: 930b         	str	r3, [sp, #0x2c]
  3ec166: ab04         	add	r3, sp, #0x10
  3ec168: 4618         	mov	r0, r3
  3ec16a: f3c9 fbd3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c97a6
  3ec16e: 9b0b         	ldr	r3, [sp, #0x2c]
  3ec170: 2b00         	cmp	r3, #0x0
  3ec172: d01b         	beq	0x3ec1ac <SoldierManager::updateStep(float)+0x350> @ imm = #0x36
  3ec174: 980b         	ldr	r0, [sp, #0x2c]
  3ec176: 2101         	movs	r1, #0x1
  3ec178: f1ad ffd2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1adfa4
  3ec17c: 4603         	mov	r3, r0
  3ec17e: 930c         	str	r3, [sp, #0x30]
  3ec180: 980c         	ldr	r0, [sp, #0x30]
  3ec182: f1ad fbd1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ad7a2
  3ec186: 4603         	mov	r3, r0
  3ec188: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3ec290 <SoldierManager::updateStep(float)+0x434>
  3ec18a: 447a         	add	r2, pc
  3ec18c: 4610         	mov	r0, r2
  3ec18e: 4619         	mov	r1, r3
  3ec190: f1ad fcbe    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ad97c
  3ec194: 4603         	mov	r3, r0
  3ec196: 930d         	str	r3, [sp, #0x34]
  3ec198: f1f4 fa8a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f4514
  3ec19c: 4603         	mov	r3, r0
  3ec19e: 4618         	mov	r0, r3
  3ec1a0: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x3ec294 <SoldierManager::updateStep(float)+0x438>
  3ec1a2: 447b         	add	r3, pc
  3ec1a4: 4619         	mov	r1, r3
  3ec1a6: 9a0d         	ldr	r2, [sp, #0x34]
  3ec1a8: f1f4 fcc0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f4980
  3ec1ac: f1f4 fa80    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f4500
  3ec1b0: 4604         	mov	r4, r0
  3ec1b2: 9b07         	ldr	r3, [sp, #0x1c]
  3ec1b4: 681b         	ldr	r3, [r3]
  3ec1b6: f503 73e0    	add.w	r3, r3, #0x1c0
  3ec1ba: 681b         	ldr	r3, [r3]
  3ec1bc: 9a07         	ldr	r2, [sp, #0x1c]
  3ec1be: a904         	add	r1, sp, #0x10
  3ec1c0: 4608         	mov	r0, r1
  3ec1c2: 4611         	mov	r1, r2
  3ec1c4: 4798         	blx	r3
  3ec1c6: ab04         	add	r3, sp, #0x10
  3ec1c8: 4618         	mov	r0, r3
  3ec1ca: f1ad fc37    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ad86e
  3ec1ce: 4603         	mov	r3, r0
  3ec1d0: 4620         	mov	r0, r4
  3ec1d2: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x3ec298 <SoldierManager::updateStep(float)+0x43c>
  3ec1d4: 447a         	add	r2, pc
  3ec1d6: 4611         	mov	r1, r2
  3ec1d8: 461a         	mov	r2, r3
  3ec1da: f1f4 fca7    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f494e
  3ec1de: ab04         	add	r3, sp, #0x10
  3ec1e0: 4618         	mov	r0, r3
  3ec1e2: f3c9 fb97    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c972e
  3ec1e6: 9b07         	ldr	r3, [sp, #0x1c]
  3ec1e8: 681b         	ldr	r3, [r3]
  3ec1ea: f503 7320    	add.w	r3, r3, #0x280
  3ec1ee: 681b         	ldr	r3, [r3]
  3ec1f0: 9a07         	ldr	r2, [sp, #0x1c]
  3ec1f2: 4610         	mov	r0, r2
  3ec1f4: 2101         	movs	r1, #0x1
  3ec1f6: 4798         	blx	r3
  3ec1f8: 9b06         	ldr	r3, [sp, #0x18]
  3ec1fa: 9305         	str	r3, [sp, #0x14]
  3ec1fc: 9b06         	ldr	r3, [sp, #0x18]
  3ec1fe: 2b00         	cmp	r3, #0x0
  3ec200: d003         	beq	0x3ec20a <SoldierManager::updateStep(float)+0x3ae> @ imm = #0x6
  3ec202: 9b06         	ldr	r3, [sp, #0x18]
  3ec204: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ec208: e000         	b	0x3ec20c <SoldierManager::updateStep(float)+0x3b0> @ imm = #0x0
  3ec20a: 2300         	movs	r3, #0x0
  3ec20c: 9306         	str	r3, [sp, #0x18]
  3ec20e: 9b05         	ldr	r3, [sp, #0x14]
  3ec210: 2b00         	cmp	r3, #0x0
  3ec212: f47f ae81    	bne.w	0x3ebf18 <SoldierManager::updateStep(float)+0xbc> @ imm = #-0x2fe
  3ec216: e028         	b	0x3ec26a <SoldierManager::updateStep(float)+0x40e> @ imm = #0x50
  3ec218: 2c00         	cmp	r4, #0x0
  3ec21a: d005         	beq	0x3ec228 <SoldierManager::updateStep(float)+0x3cc> @ imm = #0xa
  3ec21c: bf00         	nop
  3ec21e: ab03         	add	r3, sp, #0xc
  3ec220: 4618         	mov	r0, r3
  3ec222: f3c9 fb77    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c96ee
  3ec226: e000         	b	0x3ec22a <SoldierManager::updateStep(float)+0x3ce> @ imm = #0x0
  3ec228: bf00         	nop
  3ec22a: f39b ff3f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39be7e
  3ec22e: ab04         	add	r3, sp, #0x10
  3ec230: 4618         	mov	r0, r3
  3ec232: f3c9 fb6f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c96de
  3ec236: f39b ff39    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39be72
  3ec23a: ab04         	add	r3, sp, #0x10
  3ec23c: 4618         	mov	r0, r3
  3ec23e: f3c9 fb69    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c96d2
  3ec242: f39b ff33    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39be66
  3ec246: ab04         	add	r3, sp, #0x10
  3ec248: 4618         	mov	r0, r3
  3ec24a: f3c9 fb63    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c96c6
  3ec24e: f39b ff2d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39be5a
  3ec252: ab04         	add	r3, sp, #0x10
  3ec254: 4618         	mov	r0, r3
  3ec256: f3c9 fb5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c96ba
  3ec25a: f39b ff27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39be4e
  3ec25e: ab04         	add	r3, sp, #0x10
  3ec260: 4618         	mov	r0, r3
  3ec262: f3c9 fb57    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c96ae
  3ec266: f39b ff21    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39be42
  3ec26a: b00f         	add	sp, #0x3c
  3ec26c: ecbd 8b02    	vpop	{d8}
  3ec270: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ec271); words below are literal-pool data ---
  3ec272: bf00         	nop
  3ec274: 6b9c         	ldr	r4, [r3, #0x38]
  3ec276: 0054         	lsls	r4, r2, #0x1
  3ec278: d784         	bvc	0x3ec184 <SoldierManager::updateStep(float)+0x328> @ imm = #-0xf8
  3ec27a: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  3ec27e: ffff c6ea    	<unknown>
  3ec282: 003e         	movs	r6, r7
  3ec284: c61e         	stm	r6!, {r1, r2, r3, r4}
  3ec286: 003e         	movs	r6, r7
  3ec288: c61a         	stm	r6!, {r1, r3, r4}
  3ec28a: 003e         	movs	r6, r7
  3ec28c: c600         	<unknown>
  3ec28e: 003e         	movs	r6, r7
  3ec290: c57e         	stm	r5!, {r1, r2, r3, r4, r5, r6}
  3ec292: 003e         	movs	r6, r7
  3ec294: c53a         	stm	r5!, {r1, r3, r4, r5}
  3ec296: 003e         	movs	r6, r7
  3ec298: c54c         	stm	r5!, {r2, r3, r6}
  3ec29a: 003e         	movs	r6, r7

// ==== SoldierManager::addRemotePlayer
//      file offset 0x3ec29c (= ELF address; Ghidra 0x3fc29c), 224 bytes, Thumb-2
  3ec29c: b570         	push	{r4, r5, r6, lr}
  3ec29e: b086         	sub	sp, #0x18
  3ec2a0: 9001         	str	r0, [sp, #0x4]
  3ec2a2: 9100         	str	r1, [sp]
  3ec2a4: 4c32         	ldr	r4, [pc, #0xc8]         @ 0x3ec370 <SoldierManager::addRemotePlayer(std::string)+0xd4>
  3ec2a6: 447c         	add	r4, pc
  3ec2a8: f6fe f808    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x101ff0
  3ec2ac: 4603         	mov	r3, r0
  3ec2ae: 9304         	str	r3, [sp, #0x10]
  3ec2b0: 9b04         	ldr	r3, [sp, #0x10]
  3ec2b2: 4618         	mov	r0, r3
  3ec2b4: f1ab fe18    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1abc30
  3ec2b8: f7ff facc    	bl	0x3eb854 <SoldierRemoteController::create()> @ imm = #-0xa68
  3ec2bc: 4603         	mov	r3, r0
  3ec2be: 9305         	str	r3, [sp, #0x14]
  3ec2c0: 9b05         	ldr	r3, [sp, #0x14]
  3ec2c2: 681b         	ldr	r3, [r3]
  3ec2c4: f503 730a    	add.w	r3, r3, #0x228
  3ec2c8: 681b         	ldr	r3, [r3]
  3ec2ca: 9a05         	ldr	r2, [sp, #0x14]
  3ec2cc: 4610         	mov	r0, r2
  3ec2ce: 4798         	blx	r3
  3ec2d0: 9b05         	ldr	r3, [sp, #0x14]
  3ec2d2: 681b         	ldr	r3, [r3]
  3ec2d4: f503 73ea    	add.w	r3, r3, #0x1d4
  3ec2d8: 681b         	ldr	r3, [r3]
  3ec2da: 9805         	ldr	r0, [sp, #0x14]
  3ec2dc: 9904         	ldr	r1, [sp, #0x10]
  3ec2de: 4798         	blx	r3
  3ec2e0: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3ec374 <SoldierManager::addRemotePlayer(std::string)+0xd8>
  3ec2e2: 58e3         	ldr	r3, [r4, r3]
  3ec2e4: 681b         	ldr	r3, [r3]
  3ec2e6: 681b         	ldr	r3, [r3]
  3ec2e8: 33cc         	adds	r3, #0xcc
  3ec2ea: 681b         	ldr	r3, [r3]
  3ec2ec: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3ec374 <SoldierManager::addRemotePlayer(std::string)+0xd8>
  3ec2ee: 58a2         	ldr	r2, [r4, r2]
  3ec2f0: 6812         	ldr	r2, [r2]
  3ec2f2: 4610         	mov	r0, r2
  3ec2f4: 9904         	ldr	r1, [sp, #0x10]
  3ec2f6: 2203         	movs	r2, #0x3
  3ec2f8: 4798         	blx	r3
  3ec2fa: 9b05         	ldr	r3, [sp, #0x14]
  3ec2fc: 681b         	ldr	r3, [r3]
  3ec2fe: f503 7313    	add.w	r3, r3, #0x24c
  3ec302: 681d         	ldr	r5, [r3]
  3ec304: 9e05         	ldr	r6, [sp, #0x14]
  3ec306: ab03         	add	r3, sp, #0xc
  3ec308: 4618         	mov	r0, r3
  3ec30a: 9900         	ldr	r1, [sp]
  3ec30c: f3ca f8ec    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3ca1d8
  3ec310: ab03         	add	r3, sp, #0xc
  3ec312: 4630         	mov	r0, r6
  3ec314: 4619         	mov	r1, r3
  3ec316: 47a8         	blx	r5
  3ec318: ab03         	add	r3, sp, #0xc
  3ec31a: 4618         	mov	r0, r3
  3ec31c: f3c9 fafa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c95f4
  3ec320: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3ec378 <SoldierManager::addRemotePlayer(std::string)+0xdc>
  3ec322: 58e3         	ldr	r3, [r4, r3]
  3ec324: 681c         	ldr	r4, [r3]
  3ec326: 9b05         	ldr	r3, [sp, #0x14]
  3ec328: 681b         	ldr	r3, [r3]
  3ec32a: f503 73e0    	add.w	r3, r3, #0x1c0
  3ec32e: 681b         	ldr	r3, [r3]
  3ec330: 9a05         	ldr	r2, [sp, #0x14]
  3ec332: a903         	add	r1, sp, #0xc
  3ec334: 4608         	mov	r0, r1
  3ec336: 4611         	mov	r1, r2
  3ec338: 4798         	blx	r3
  3ec33a: ab03         	add	r3, sp, #0xc
  3ec33c: 4620         	mov	r0, r4
  3ec33e: 9905         	ldr	r1, [sp, #0x14]
  3ec340: 461a         	mov	r2, r3
  3ec342: f1a8 faf9    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1a85f2
  3ec346: ab03         	add	r3, sp, #0xc
  3ec348: 4618         	mov	r0, r3
  3ec34a: f3c9 fae3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c95c6
  3ec34e: 9b05         	ldr	r3, [sp, #0x14]
  3ec350: e00b         	b	0x3ec36a <SoldierManager::addRemotePlayer(std::string)+0xce> @ imm = #0x16
  3ec352: ab03         	add	r3, sp, #0xc
  3ec354: 4618         	mov	r0, r3
  3ec356: f3c9 fadd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c95ba
  3ec35a: f39b fea7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39bd4e
  3ec35e: ab03         	add	r3, sp, #0xc
  3ec360: 4618         	mov	r0, r3
  3ec362: f3c9 fad7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c95ae
  3ec366: f39b fea1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39bd42
  3ec36a: 4618         	mov	r0, r3
  3ec36c: b006         	add	sp, #0x18
  3ec36e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3ec36f); words below are literal-pool data ---
  3ec370: 6762         	str	r2, [r4, #0x74]
  3ec372: 0054         	lsls	r4, r2, #0x1
  3ec374: d744         	bvc	0x3ec400 <SoldierManager::removeRemotePlayer(std::string)+0x84> @ imm = #0x88
  3ec376: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  3ec37a: ffff b570    	<unknown>

// ==== SoldierManager::removeRemotePlayer
//      file offset 0x3ec37c (= ELF address; Ghidra 0x3fc37c), 224 bytes, Thumb-2
  3ec37c: b570         	push	{r4, r5, r6, lr}
  3ec37e: b086         	sub	sp, #0x18
  3ec380: 9001         	str	r0, [sp, #0x4]
  3ec382: 9100         	str	r1, [sp]
  3ec384: 4c32         	ldr	r4, [pc, #0xc8]         @ 0x3ec450 <SoldierManager::removeRemotePlayer(std::string)+0xd4>
  3ec386: 447c         	add	r4, pc
  3ec388: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3ec454 <SoldierManager::removeRemotePlayer(std::string)+0xd8>
  3ec38a: 58e3         	ldr	r3, [r4, r3]
  3ec38c: 681d         	ldr	r5, [r3]
  3ec38e: 9800         	ldr	r0, [sp]
  3ec390: f3c8 ffb6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3c8f6c
  3ec394: 4606         	mov	r6, r0
  3ec396: ab02         	add	r3, sp, #0x8
  3ec398: 4618         	mov	r0, r3
  3ec39a: f39e f82b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39e056
  3ec39e: aa03         	add	r2, sp, #0xc
  3ec3a0: ab02         	add	r3, sp, #0x8
  3ec3a2: 4610         	mov	r0, r2
  3ec3a4: 4631         	mov	r1, r6
  3ec3a6: 461a         	mov	r2, r3
  3ec3a8: f3ca fb5a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ca6b4
  3ec3ac: ab03         	add	r3, sp, #0xc
  3ec3ae: 4628         	mov	r0, r5
  3ec3b0: 4619         	mov	r1, r3
  3ec3b2: f1a7 fd9d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1a7b3a
  3ec3b6: 4603         	mov	r3, r0
  3ec3b8: 9304         	str	r3, [sp, #0x10]
  3ec3ba: ab03         	add	r3, sp, #0xc
  3ec3bc: 4618         	mov	r0, r3
  3ec3be: f3c9 faa9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c9552
  3ec3c2: ab02         	add	r3, sp, #0x8
  3ec3c4: 4618         	mov	r0, r3
  3ec3c6: f39e f819    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39e032
  3ec3ca: 9b04         	ldr	r3, [sp, #0x10]
  3ec3cc: 2b00         	cmp	r3, #0x0
  3ec3ce: d03c         	beq	0x3ec44a <SoldierManager::removeRemotePlayer(std::string)+0xce> @ imm = #0x78
  3ec3d0: 9b04         	ldr	r3, [sp, #0x10]
  3ec3d2: 681b         	ldr	r3, [r3]
  3ec3d4: f503 7324    	add.w	r3, r3, #0x290
  3ec3d8: 681b         	ldr	r3, [r3]
  3ec3da: 9a04         	ldr	r2, [sp, #0x10]
  3ec3dc: 4610         	mov	r0, r2
  3ec3de: 4798         	blx	r3
  3ec3e0: 9b04         	ldr	r3, [sp, #0x10]
  3ec3e2: 681b         	ldr	r3, [r3]
  3ec3e4: f503 73ec    	add.w	r3, r3, #0x1d8
  3ec3e8: 681b         	ldr	r3, [r3]
  3ec3ea: 9804         	ldr	r0, [sp, #0x10]
  3ec3ec: 4798         	blx	r3
  3ec3ee: 4603         	mov	r3, r0
  3ec3f0: 9305         	str	r3, [sp, #0x14]
  3ec3f2: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3ec458 <SoldierManager::removeRemotePlayer(std::string)+0xdc>
  3ec3f4: 58e3         	ldr	r3, [r4, r3]
  3ec3f6: 681b         	ldr	r3, [r3]
  3ec3f8: 681b         	ldr	r3, [r3]
  3ec3fa: 33f4         	adds	r3, #0xf4
  3ec3fc: 681b         	ldr	r3, [r3]
  3ec3fe: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3ec458 <SoldierManager::removeRemotePlayer(std::string)+0xdc>
  3ec400: 58a2         	ldr	r2, [r4, r2]
  3ec402: 6812         	ldr	r2, [r2]
  3ec404: 4610         	mov	r0, r2
  3ec406: 9905         	ldr	r1, [sp, #0x14]
  3ec408: 2200         	movs	r2, #0x0
  3ec40a: 4798         	blx	r3
  3ec40c: 9b04         	ldr	r3, [sp, #0x10]
  3ec40e: 681b         	ldr	r3, [r3]
  3ec410: f503 73ea    	add.w	r3, r3, #0x1d4
  3ec414: 681b         	ldr	r3, [r3]
  3ec416: 9804         	ldr	r0, [sp, #0x10]
  3ec418: 2100         	movs	r1, #0x0
  3ec41a: 4798         	blx	r3
  3ec41c: 9b05         	ldr	r3, [sp, #0x14]
  3ec41e: 4618         	mov	r0, r3
  3ec420: f1ab fd4a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1aba94
  3ec424: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x3ec454 <SoldierManager::removeRemotePlayer(std::string)+0xd8>
  3ec426: 58e3         	ldr	r3, [r4, r3]
  3ec428: 681b         	ldr	r3, [r3]
  3ec42a: 4618         	mov	r0, r3
  3ec42c: 9900         	ldr	r1, [sp]
  3ec42e: f1a8 ff43    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x1a8e86
  3ec432: e00a         	b	0x3ec44a <SoldierManager::removeRemotePlayer(std::string)+0xce> @ imm = #0x14
  3ec434: ab03         	add	r3, sp, #0xc
  3ec436: 4618         	mov	r0, r3
  3ec438: f3c9 fa6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c94d8
  3ec43c: e7ff         	b	0x3ec43e <SoldierManager::removeRemotePlayer(std::string)+0xc2> @ imm = #-0x2
  3ec43e: ab02         	add	r3, sp, #0x8
  3ec440: 4618         	mov	r0, r3
  3ec442: f39d ffdb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39dfb6
  3ec446: f39b fe31    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39bc62
  3ec44a: b006         	add	sp, #0x18
  3ec44c: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3ec44d); words below are literal-pool data ---
  3ec44e: bf00         	nop
  3ec450: 6682         	str	r2, [r0, #0x68]
  3ec452: 0054         	lsls	r4, r2, #0x1
  3ec454: d920         	bls	0x3ec498 <SoldierManager::respawnPlayer(cocos2d::CCObject*)+0x20> @ imm = #0x40
  3ec456: ffff d744    	<unknown>
  3ec45a: ffff b082    	<unknown>

// ==== SoldierManager::getHostController
//      file offset 0x3ec45c (= ELF address; Ghidra 0x3fc45c), 28 bytes, Thumb-2
  3ec45c: b082         	sub	sp, #0x8
  3ec45e: 9001         	str	r0, [sp, #0x4]
  3ec460: 4a03         	ldr	r2, [pc, #0xc]          @ 0x3ec470 <SoldierManager::getHostController()+0x14>
  3ec462: 447a         	add	r2, pc
  3ec464: 4b03         	ldr	r3, [pc, #0xc]          @ 0x3ec474 <SoldierManager::getHostController()+0x18>
  3ec466: 58d3         	ldr	r3, [r2, r3]
  3ec468: 681b         	ldr	r3, [r3]
  3ec46a: 4618         	mov	r0, r3
  3ec46c: b002         	add	sp, #0x8
  3ec46e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3ec46f); words below are literal-pool data ---
  3ec470: 65a6         	str	r6, [r4, #0x58]
  3ec472: 0054         	lsls	r4, r2, #0x1
  3ec474: d784         	bvc	0x3ec380 <SoldierManager::removeRemotePlayer(std::string)+0x4> @ imm = #-0xf8
  3ec476: ffff b082    	<unknown>

// ==== SoldierManager::respawnPlayer
//      file offset 0x3ec478 (= ELF address; Ghidra 0x3fc478), 56 bytes, Thumb-2
  3ec478: b082         	sub	sp, #0x8
  3ec47a: 9001         	str	r0, [sp, #0x4]
  3ec47c: 9100         	str	r1, [sp]
  3ec47e: 9b01         	ldr	r3, [sp, #0x4]
  3ec480: 6a5b         	ldr	r3, [r3, #0x24]
  3ec482: 1e5a         	subs	r2, r3, #0x1
  3ec484: 9b01         	ldr	r3, [sp, #0x4]
  3ec486: 625a         	str	r2, [r3, #0x24]
  3ec488: 9b01         	ldr	r3, [sp, #0x4]
  3ec48a: f893 3035    	ldrb.w	r3, [r3, #0x35]
  3ec48e: 2b00         	cmp	r3, #0x0
  3ec490: d103         	bne	0x3ec49a <SoldierManager::respawnPlayer(cocos2d::CCObject*)+0x22> @ imm = #0x6
  3ec492: 9b01         	ldr	r3, [sp, #0x4]
  3ec494: 6a5b         	ldr	r3, [r3, #0x24]
  3ec496: 2b00         	cmp	r3, #0x0
  3ec498: dd08         	ble	0x3ec4ac <SoldierManager::respawnPlayer(cocos2d::CCObject*)+0x34> @ imm = #0x10
  3ec49a: 9b01         	ldr	r3, [sp, #0x4]
  3ec49c: 2201         	movs	r2, #0x1
  3ec49e: 751a         	strb	r2, [r3, #0x14]
  3ec4a0: 9b01         	ldr	r3, [sp, #0x4]
  3ec4a2: f04f 0200    	mov.w	r2, #0x0
  3ec4a6: f2c4 1210    	movt	r2, #0x4110
  3ec4aa: 619a         	str	r2, [r3, #0x18]
  3ec4ac: b002         	add	sp, #0x8
  3ec4ae: 4770         	bx	lr

// ==== SoldierManager::scoreSpawnPoint
//      file offset 0x3ec4b0 (= ELF address; Ghidra 0x3fc4b0), 256 bytes, Thumb-2
  3ec4b0: b082         	sub	sp, #0x8
  3ec4b2: b510         	push	{r4, lr}
  3ec4b4: b08e         	sub	sp, #0x38
  3ec4b6: 9001         	str	r0, [sp, #0x4]
  3ec4b8: a910         	add	r1, sp, #0x40
  3ec4ba: e881 000c    	stm.w	r1, {r2, r3}
  3ec4be: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x3ec5a8 <SoldierManager::scoreSpawnPoint(cpVect)+0xf8>
  3ec4c0: 447c         	add	r4, pc
  3ec4c2: 2300         	movs	r3, #0x0
  3ec4c4: 9302         	str	r3, [sp, #0x8]
  3ec4c6: 2300         	movs	r3, #0x0
  3ec4c8: 9303         	str	r3, [sp, #0xc]
  3ec4ca: 2300         	movs	r3, #0x0
  3ec4cc: 9304         	str	r3, [sp, #0x10]
  3ec4ce: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3ec5ac <SoldierManager::scoreSpawnPoint(cpVect)+0xfc>
  3ec4d0: 58e3         	ldr	r3, [r4, r3]
  3ec4d2: 681b         	ldr	r3, [r3]
  3ec4d4: 2b00         	cmp	r3, #0x0
  3ec4d6: d00a         	beq	0x3ec4ee <SoldierManager::scoreSpawnPoint(cpVect)+0x3e> @ imm = #0x14
  3ec4d8: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3ec5ac <SoldierManager::scoreSpawnPoint(cpVect)+0xfc>
  3ec4da: 58e3         	ldr	r3, [r4, r3]
  3ec4dc: 681b         	ldr	r3, [r3]
  3ec4de: 4618         	mov	r0, r3
  3ec4e0: f1a7 fbc4    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1a7788
  3ec4e4: 4603         	mov	r3, r0
  3ec4e6: 2b00         	cmp	r3, #0x0
  3ec4e8: d001         	beq	0x3ec4ee <SoldierManager::scoreSpawnPoint(cpVect)+0x3e> @ imm = #0x2
  3ec4ea: 2301         	movs	r3, #0x1
  3ec4ec: e000         	b	0x3ec4f0 <SoldierManager::scoreSpawnPoint(cpVect)+0x40> @ imm = #0x0
  3ec4ee: 2300         	movs	r3, #0x0
  3ec4f0: 2b00         	cmp	r3, #0x0
  3ec4f2: d051         	beq	0x3ec598 <SoldierManager::scoreSpawnPoint(cpVect)+0xe8> @ imm = #0xa2
  3ec4f4: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3ec5ac <SoldierManager::scoreSpawnPoint(cpVect)+0xfc>
  3ec4f6: 58e3         	ldr	r3, [r4, r3]
  3ec4f8: 681b         	ldr	r3, [r3]
  3ec4fa: 695b         	ldr	r3, [r3, #0x14]
  3ec4fc: 9303         	str	r3, [sp, #0xc]
  3ec4fe: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3ec5ac <SoldierManager::scoreSpawnPoint(cpVect)+0xfc>
  3ec500: 58e3         	ldr	r3, [r4, r3]
  3ec502: 681b         	ldr	r3, [r3]
  3ec504: 695b         	ldr	r3, [r3, #0x14]
  3ec506: 2b00         	cmp	r3, #0x0
  3ec508: d006         	beq	0x3ec518 <SoldierManager::scoreSpawnPoint(cpVect)+0x68> @ imm = #0xc
  3ec50a: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3ec5ac <SoldierManager::scoreSpawnPoint(cpVect)+0xfc>
  3ec50c: 58e3         	ldr	r3, [r4, r3]
  3ec50e: 681b         	ldr	r3, [r3]
  3ec510: 695b         	ldr	r3, [r3, #0x14]
  3ec512: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ec516: e000         	b	0x3ec51a <SoldierManager::scoreSpawnPoint(cpVect)+0x6a> @ imm = #0x0
  3ec518: 2300         	movs	r3, #0x0
  3ec51a: 9304         	str	r3, [sp, #0x10]
  3ec51c: e039         	b	0x3ec592 <SoldierManager::scoreSpawnPoint(cpVect)+0xe2> @ imm = #0x72
  3ec51e: 9803         	ldr	r0, [sp, #0xc]
  3ec520: f712 f888    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xedef0
  3ec524: 4603         	mov	r3, r0
  3ec526: 9305         	str	r3, [sp, #0x14]
  3ec528: 9b05         	ldr	r3, [sp, #0x14]
  3ec52a: 681b         	ldr	r3, [r3]
  3ec52c: f503 73d6    	add.w	r3, r3, #0x1ac
  3ec530: 681b         	ldr	r3, [r3]
  3ec532: aa06         	add	r2, sp, #0x18
  3ec534: 4610         	mov	r0, r2
  3ec536: 9905         	ldr	r1, [sp, #0x14]
  3ec538: 4798         	blx	r3
  3ec53a: ab0a         	add	r3, sp, #0x28
  3ec53c: ed9d 4b10    	vldr	d4, [sp, #64]
  3ec540: ed9d 5b12    	vldr	d5, [sp, #72]
  3ec544: ed9d 6b06    	vldr	d6, [sp, #24]
  3ec548: ed9d 7b08    	vldr	d7, [sp, #32]
  3ec54c: 4618         	mov	r0, r3
  3ec54e: eeb0 0b44    	vmov.f64	d0, d4
  3ec552: eeb0 1b45    	vmov.f64	d1, d5
  3ec556: eeb0 2b46    	vmov.f64	d2, d6
  3ec55a: eeb0 3b47    	vmov.f64	d3, d7
  3ec55e: f7fe faa3    	bl	0x3eaaa8 <SoldierHostController::getBackupNadeWeapon()+0x1ac> @ imm = #-0x1aba
  3ec562: ab0a         	add	r3, sp, #0x28
  3ec564: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ec566: f2ea fda7    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2eab4e
  3ec56a: ec41 0b17    	vmov	d7, r0, r1
  3ec56e: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3ec572: ee16 2a90    	vmov	r2, s13
  3ec576: 9b02         	ldr	r3, [sp, #0x8]
  3ec578: 4413         	add	r3, r2
  3ec57a: 9302         	str	r3, [sp, #0x8]
  3ec57c: 9b04         	ldr	r3, [sp, #0x10]
  3ec57e: 9303         	str	r3, [sp, #0xc]
  3ec580: 9b04         	ldr	r3, [sp, #0x10]
  3ec582: 2b00         	cmp	r3, #0x0
  3ec584: d003         	beq	0x3ec58e <SoldierManager::scoreSpawnPoint(cpVect)+0xde> @ imm = #0x6
  3ec586: 9b04         	ldr	r3, [sp, #0x10]
  3ec588: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ec58c: e000         	b	0x3ec590 <SoldierManager::scoreSpawnPoint(cpVect)+0xe0> @ imm = #0x0
  3ec58e: 2300         	movs	r3, #0x0
  3ec590: 9304         	str	r3, [sp, #0x10]
  3ec592: 9b03         	ldr	r3, [sp, #0xc]
  3ec594: 2b00         	cmp	r3, #0x0
  3ec596: d1c2         	bne	0x3ec51e <SoldierManager::scoreSpawnPoint(cpVect)+0x6e> @ imm = #-0x7c
  3ec598: 9b02         	ldr	r3, [sp, #0x8]
  3ec59a: 4618         	mov	r0, r3
  3ec59c: b00e         	add	sp, #0x38
  3ec59e: e8bd 4010    	pop.w	{r4, lr}
  3ec5a2: b002         	add	sp, #0x8
  3ec5a4: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3ec5a5); words below are literal-pool data ---
  3ec5a6: bf00         	nop
  3ec5a8: 6548         	str	r0, [r1, #0x54]
  3ec5aa: 0054         	lsls	r4, r2, #0x1
  3ec5ac: d920         	bls	0x3ec5f0 <SoldierManager::getRandomSafeSpawnPoint()+0x20> @ imm = #0x40
  3ec5ae: ffff b082    	<unknown>

// ==== SoldierManager::getRandomSafeSpawnPoint
//      file offset 0x3ec5d0 (= ELF address; Ghidra 0x3fc5d0), 556 bytes, Thumb-2
  3ec5d0: b530         	push	{r4, r5, lr}
  3ec5d2: b091         	sub	sp, #0x44
  3ec5d4: 9001         	str	r0, [sp, #0x4]
  3ec5d6: 9100         	str	r1, [sp]
  3ec5d8: 4c85         	ldr	r4, [pc, #0x214]        @ 0x3ec7f0 <SoldierManager::getRandomSafeSpawnPoint()+0x220>
  3ec5da: 447c         	add	r4, pc
  3ec5dc: ab0d         	add	r3, sp, #0x34
  3ec5de: 4618         	mov	r0, r3
  3ec5e0: f000 fb86    	bl	0x3eccf0 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::vector()> @ imm = #0x70c
  3ec5e4: 2300         	movs	r3, #0x0
  3ec5e6: 9304         	str	r3, [sp, #0x10]
  3ec5e8: 2300         	movs	r3, #0x0
  3ec5ea: 9305         	str	r3, [sp, #0x14]
  3ec5ec: 9b00         	ldr	r3, [sp]
  3ec5ee: 6a9b         	ldr	r3, [r3, #0x28]
  3ec5f0: 2b00         	cmp	r3, #0x0
  3ec5f2: d009         	beq	0x3ec608 <SoldierManager::getRandomSafeSpawnPoint()+0x38> @ imm = #0x12
  3ec5f4: 9b00         	ldr	r3, [sp]
  3ec5f6: 6a9b         	ldr	r3, [r3, #0x28]
  3ec5f8: 4618         	mov	r0, r3
  3ec5fa: f1a7 fb37    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1a766e
  3ec5fe: 4603         	mov	r3, r0
  3ec600: 2b00         	cmp	r3, #0x0
  3ec602: d001         	beq	0x3ec608 <SoldierManager::getRandomSafeSpawnPoint()+0x38> @ imm = #0x2
  3ec604: 2301         	movs	r3, #0x1
  3ec606: e000         	b	0x3ec60a <SoldierManager::getRandomSafeSpawnPoint()+0x3a> @ imm = #0x0
  3ec608: 2300         	movs	r3, #0x0
  3ec60a: 2b00         	cmp	r3, #0x0
  3ec60c: d02a         	beq	0x3ec664 <SoldierManager::getRandomSafeSpawnPoint()+0x94> @ imm = #0x54
  3ec60e: 9b00         	ldr	r3, [sp]
  3ec610: 6a9b         	ldr	r3, [r3, #0x28]
  3ec612: 695b         	ldr	r3, [r3, #0x14]
  3ec614: 9304         	str	r3, [sp, #0x10]
  3ec616: 9b00         	ldr	r3, [sp]
  3ec618: 6a9b         	ldr	r3, [r3, #0x28]
  3ec61a: 695b         	ldr	r3, [r3, #0x14]
  3ec61c: 2b00         	cmp	r3, #0x0
  3ec61e: d005         	beq	0x3ec62c <SoldierManager::getRandomSafeSpawnPoint()+0x5c> @ imm = #0xa
  3ec620: 9b00         	ldr	r3, [sp]
  3ec622: 6a9b         	ldr	r3, [r3, #0x28]
  3ec624: 695b         	ldr	r3, [r3, #0x14]
  3ec626: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ec62a: e000         	b	0x3ec62e <SoldierManager::getRandomSafeSpawnPoint()+0x5e> @ imm = #0x0
  3ec62c: 2300         	movs	r3, #0x0
  3ec62e: 9305         	str	r3, [sp, #0x14]
  3ec630: e015         	b	0x3ec65e <SoldierManager::getRandomSafeSpawnPoint()+0x8e> @ imm = #0x2a
  3ec632: 9804         	ldr	r0, [sp, #0x10]
  3ec634: f711 fffe    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xee004
  3ec638: 4603         	mov	r3, r0
  3ec63a: 9303         	str	r3, [sp, #0xc]
  3ec63c: aa0d         	add	r2, sp, #0x34
  3ec63e: ab03         	add	r3, sp, #0xc
  3ec640: 4610         	mov	r0, r2
  3ec642: 4619         	mov	r1, r3
  3ec644: f000 fb80    	bl	0x3ecd48 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::push_back(SpawnRow* const&)> @ imm = #0x700
  3ec648: 9b05         	ldr	r3, [sp, #0x14]
  3ec64a: 9304         	str	r3, [sp, #0x10]
  3ec64c: 9b05         	ldr	r3, [sp, #0x14]
  3ec64e: 2b00         	cmp	r3, #0x0
  3ec650: d003         	beq	0x3ec65a <SoldierManager::getRandomSafeSpawnPoint()+0x8a> @ imm = #0x6
  3ec652: 9b05         	ldr	r3, [sp, #0x14]
  3ec654: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ec658: e000         	b	0x3ec65c <SoldierManager::getRandomSafeSpawnPoint()+0x8c> @ imm = #0x0
  3ec65a: 2300         	movs	r3, #0x0
  3ec65c: 9305         	str	r3, [sp, #0x14]
  3ec65e: 9b04         	ldr	r3, [sp, #0x10]
  3ec660: 2b00         	cmp	r3, #0x0
  3ec662: d1e6         	bne	0x3ec632 <SoldierManager::getRandomSafeSpawnPoint()+0x62> @ imm = #-0x34
  3ec664: ab0d         	add	r3, sp, #0x34
  3ec666: 4618         	mov	r0, r3
  3ec668: f000 fb8e    	bl	0x3ecd88 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::begin()> @ imm = #0x71c
  3ec66c: 4605         	mov	r5, r0
  3ec66e: ab0d         	add	r3, sp, #0x34
  3ec670: 4618         	mov	r0, r3
  3ec672: f000 fb97    	bl	0x3ecda4 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::end()> @ imm = #0x72e
  3ec676: 4603         	mov	r3, r0
  3ec678: 4628         	mov	r0, r5
  3ec67a: 4619         	mov	r1, r3
  3ec67c: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x3ec7f4 <SoldierManager::getRandomSafeSpawnPoint()+0x224>
  3ec67e: 58e3         	ldr	r3, [r4, r3]
  3ec680: 461a         	mov	r2, r3
  3ec682: f000 fb9f    	bl	0x3ecdc4 <void std::sort<__gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*>>>, bool (*)(SpawnRow*, SpawnRow*)>(__gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*>>>, __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*>>>, bool (*)(SpawnRow*, SpawnRow*))> @ imm = #0x73e
  3ec686: ab0d         	add	r3, sp, #0x34
  3ec688: 4618         	mov	r0, r3
  3ec68a: f000 fbc3    	bl	0x3ece14 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::size() const> @ imm = #0x786
  3ec68e: 4603         	mov	r3, r0
  3ec690: 2b01         	cmp	r3, #0x1
  3ec692: d906         	bls	0x3ec6a2 <SoldierManager::getRandomSafeSpawnPoint()+0xd2> @ imm = #0xc
  3ec694: ab0d         	add	r3, sp, #0x34
  3ec696: 4618         	mov	r0, r3
  3ec698: f000 fbbc    	bl	0x3ece14 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::size() const> @ imm = #0x778
  3ec69c: 4603         	mov	r3, r0
  3ec69e: 085b         	lsrs	r3, r3, #0x1
  3ec6a0: e000         	b	0x3ec6a4 <SoldierManager::getRandomSafeSpawnPoint()+0xd4> @ imm = #0x0
  3ec6a2: 2301         	movs	r3, #0x1
  3ec6a4: 9308         	str	r3, [sp, #0x20]
  3ec6a6: f1ae ff65    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1aeeca
  3ec6aa: 4603         	mov	r3, r0
  3ec6ac: 681a         	ldr	r2, [r3]
  3ec6ae: 3258         	adds	r2, #0x58
  3ec6b0: 6812         	ldr	r2, [r2]
  3ec6b2: 4618         	mov	r0, r3
  3ec6b4: 4790         	blx	r2
  3ec6b6: ee07 0a90    	vmov	s15, r0
  3ec6ba: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ec6be: ed8d 7b0a    	vstr	d7, [sp, #40]
  3ec6c2: ed9d 6b0a    	vldr	d6, [sp, #40]
  3ec6c6: ed9f 7b48    	vldr	d7, [pc, #288]          @ 0x3ec7e8 <SoldierManager::getRandomSafeSpawnPoint()+0x218>
  3ec6ca: ee26 7b07    	vmul.f64	d7, d6, d7
  3ec6ce: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3ec6d2: ee16 3a90    	vmov	r3, s13
  3ec6d6: 9309         	str	r3, [sp, #0x24]
  3ec6d8: 9b09         	ldr	r3, [sp, #0x24]
  3ec6da: 4618         	mov	r0, r3
  3ec6dc: 9908         	ldr	r1, [sp, #0x20]
  3ec6de: f3d2 f9ed    	bl	0x7beabc <__aeabi_idivmod> @ imm = #0x3d23da
  3ec6e2: 460b         	mov	r3, r1
  3ec6e4: 9306         	str	r3, [sp, #0x18]
  3ec6e6: 9a06         	ldr	r2, [sp, #0x18]
  3ec6e8: 9b08         	ldr	r3, [sp, #0x20]
  3ec6ea: 429a         	cmp	r2, r3
  3ec6ec: db01         	blt	0x3ec6f2 <SoldierManager::getRandomSafeSpawnPoint()+0x122> @ imm = #0x2
  3ec6ee: 2300         	movs	r3, #0x0
  3ec6f0: 9306         	str	r3, [sp, #0x18]
  3ec6f2: 9b06         	ldr	r3, [sp, #0x18]
  3ec6f4: aa0d         	add	r2, sp, #0x34
  3ec6f6: 4610         	mov	r0, r2
  3ec6f8: 4619         	mov	r1, r3
  3ec6fa: f000 fb97    	bl	0x3ece2c <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::operator[](unsigned int)> @ imm = #0x72e
  3ec6fe: 4603         	mov	r3, r0
  3ec700: 681b         	ldr	r3, [r3]
  3ec702: 9307         	str	r3, [sp, #0x1c]
  3ec704: 9b00         	ldr	r3, [sp]
  3ec706: 7d9b         	ldrb	r3, [r3, #0x16]
  3ec708: f083 0301    	eor	r3, r3, #0x1
  3ec70c: b2db         	uxtb	r3, r3
  3ec70e: 2b00         	cmp	r3, #0x0
  3ec710: d01b         	beq	0x3ec74a <SoldierManager::getRandomSafeSpawnPoint()+0x17a> @ imm = #0x36
  3ec712: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x3ec7f8 <SoldierManager::getRandomSafeSpawnPoint()+0x228>
  3ec714: 58e3         	ldr	r3, [r4, r3]
  3ec716: 681b         	ldr	r3, [r3]
  3ec718: 461c         	mov	r4, r3
  3ec71a: ab0d         	add	r3, sp, #0x34
  3ec71c: 4618         	mov	r0, r3
  3ec71e: f000 fb79    	bl	0x3ece14 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::size() const> @ imm = #0x6f2
  3ec722: 4603         	mov	r3, r0
  3ec724: 4620         	mov	r0, r4
  3ec726: 4619         	mov	r1, r3
  3ec728: f3d2 f958    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x3d22b0
  3ec72c: 460b         	mov	r3, r1
  3ec72e: 9306         	str	r3, [sp, #0x18]
  3ec730: 9b06         	ldr	r3, [sp, #0x18]
  3ec732: aa0d         	add	r2, sp, #0x34
  3ec734: 4610         	mov	r0, r2
  3ec736: 4619         	mov	r1, r3
  3ec738: f000 fb78    	bl	0x3ece2c <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::operator[](unsigned int)> @ imm = #0x6f0
  3ec73c: 4603         	mov	r3, r0
  3ec73e: 681b         	ldr	r3, [r3]
  3ec740: 9307         	str	r3, [sp, #0x1c]
  3ec742: 9b00         	ldr	r3, [sp]
  3ec744: 2201         	movs	r2, #0x1
  3ec746: 759a         	strb	r2, [r3, #0x16]
  3ec748: e031         	b	0x3ec7ae <SoldierManager::getRandomSafeSpawnPoint()+0x1de> @ imm = #0x62
  3ec74a: 9b07         	ldr	r3, [sp, #0x1c]
  3ec74c: 695b         	ldr	r3, [r3, #0x14]
  3ec74e: 2b00         	cmp	r3, #0x0
  3ec750: d124         	bne	0x3ec79c <SoldierManager::getRandomSafeSpawnPoint()+0x1cc> @ imm = #0x48
  3ec752: 9c09         	ldr	r4, [sp, #0x24]
  3ec754: ab0d         	add	r3, sp, #0x34
  3ec756: 4618         	mov	r0, r3
  3ec758: f000 fb5c    	bl	0x3ece14 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::size() const> @ imm = #0x6b8
  3ec75c: 4603         	mov	r3, r0
  3ec75e: 4620         	mov	r0, r4
  3ec760: 4619         	mov	r1, r3
  3ec762: f3d2 f93b    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x3d2276
  3ec766: 460b         	mov	r3, r1
  3ec768: 9306         	str	r3, [sp, #0x18]
  3ec76a: 9c06         	ldr	r4, [sp, #0x18]
  3ec76c: ab0d         	add	r3, sp, #0x34
  3ec76e: 4618         	mov	r0, r3
  3ec770: f000 fb50    	bl	0x3ece14 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::size() const> @ imm = #0x6a0
  3ec774: 4603         	mov	r3, r0
  3ec776: 429c         	cmp	r4, r3
  3ec778: bf34         	ite	lo
  3ec77a: 2300         	movlo	r3, #0x0
  3ec77c: 2301         	movhs	r3, #0x1
  3ec77e: b2db         	uxtb	r3, r3
  3ec780: 2b00         	cmp	r3, #0x0
  3ec782: d001         	beq	0x3ec788 <SoldierManager::getRandomSafeSpawnPoint()+0x1b8> @ imm = #0x2
  3ec784: 2300         	movs	r3, #0x0
  3ec786: 9306         	str	r3, [sp, #0x18]
  3ec788: 9b06         	ldr	r3, [sp, #0x18]
  3ec78a: aa0d         	add	r2, sp, #0x34
  3ec78c: 4610         	mov	r0, r2
  3ec78e: 4619         	mov	r1, r3
  3ec790: f000 fb4c    	bl	0x3ece2c <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::operator[](unsigned int)> @ imm = #0x698
  3ec794: 4603         	mov	r3, r0
  3ec796: 681b         	ldr	r3, [r3]
  3ec798: 9307         	str	r3, [sp, #0x1c]
  3ec79a: e008         	b	0x3ec7ae <SoldierManager::getRandomSafeSpawnPoint()+0x1de> @ imm = #0x10
  3ec79c: 9b06         	ldr	r3, [sp, #0x18]
  3ec79e: aa0d         	add	r2, sp, #0x34
  3ec7a0: 4610         	mov	r0, r2
  3ec7a2: 4619         	mov	r1, r3
  3ec7a4: f000 fb42    	bl	0x3ece2c <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::operator[](unsigned int)> @ imm = #0x684
  3ec7a8: 4603         	mov	r3, r0
  3ec7aa: 681b         	ldr	r3, [r3]
  3ec7ac: 9307         	str	r3, [sp, #0x1c]
  3ec7ae: 9a01         	ldr	r2, [sp, #0x4]
  3ec7b0: 9b07         	ldr	r3, [sp, #0x1c]
  3ec7b2: 4614         	mov	r4, r2
  3ec7b4: 3318         	adds	r3, #0x18
  3ec7b6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ec7b8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3ec7bc: 9b00         	ldr	r3, [sp]
  3ec7be: 6a9b         	ldr	r3, [r3, #0x28]
  3ec7c0: 4618         	mov	r0, r3
  3ec7c2: f1aa fc01    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x1aa802
  3ec7c6: bf00         	nop
  3ec7c8: ab0d         	add	r3, sp, #0x34
  3ec7ca: 4618         	mov	r0, r3
  3ec7cc: f000 fa9c    	bl	0x3ecd08 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::~vector()> @ imm = #0x538
  3ec7d0: e005         	b	0x3ec7de <SoldierManager::getRandomSafeSpawnPoint()+0x20e> @ imm = #0xa
  3ec7d2: ab0d         	add	r3, sp, #0x34
  3ec7d4: 4618         	mov	r0, r3
  3ec7d6: f000 fa97    	bl	0x3ecd08 <std::vector<SpawnRow*, std::allocator<SpawnRow*>>::~vector()> @ imm = #0x52e
  3ec7da: f39b fc67    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39b8ce
  3ec7de: 9801         	ldr	r0, [sp, #0x4]
  3ec7e0: b011         	add	sp, #0x44
  3ec7e2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ec7e3); words below are literal-pool data ---
  3ec7e4: f3af 8000    	nop.w
  3ec7e8: 0000         	movs	r0, r0
  3ec7ea: 0000         	movs	r0, r0
  3ec7ec: 4000         	ands	r0, r0
  3ec7ee: 408f         	lsls	r7, r1
  3ec7f0: 642e         	str	r6, [r5, #0x40]
  3ec7f2: 0054         	lsls	r4, r2, #0x1
  3ec7f4: df20         	svc	#0x20
  3ec7f6: ffff dd58    	<unknown>
  3ec7fa: ffff f3af    	<unknown>

// ==== SoldierManager::spawnPlayer
//      file offset 0x3ec800 (= ELF address; Ghidra 0x3fc800), 1228 bytes, Thumb-2
  3ec800: b5f0         	push	{r4, r5, r6, r7, lr}
  3ec802: b0a1         	sub	sp, #0x84
  3ec804: 9007         	str	r0, [sp, #0x1c]
  3ec806: 4c23         	ldr	r4, [pc, #0x8c]         @ 0x3ec894 <SoldierManager::spawnPlayer()+0x94>
  3ec808: 447c         	add	r4, pc
  3ec80a: f7fe f905    	bl	0x3eaa18 <SoldierHostController::getBackupNadeWeapon()+0x11c> @ imm = #-0x1df6
  3ec80e: 4603         	mov	r3, r0
  3ec810: ee07 3a90    	vmov	s15, r3
  3ec814: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3ec818: eddf 7a1b    	vldr	s15, [pc, #108]         @ 0x3ec888 <SoldierManager::spawnPlayer()+0x88>
  3ec81c: ee87 7a27    	vdiv.f32	s14, s14, s15
  3ec820: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3ec824: ee37 7a67    	vsub.f32	s14, s14, s15
  3ec828: eddf 7a18    	vldr	s15, [pc, #96]          @ 0x3ec88c <SoldierManager::spawnPlayer()+0x8c>
  3ec82c: ee27 7a27    	vmul.f32	s14, s14, s15
  3ec830: eddf 7a17    	vldr	s15, [pc, #92]          @ 0x3ec890 <SoldierManager::spawnPlayer()+0x90>
  3ec834: ee77 7a27    	vadd.f32	s15, s14, s15
  3ec838: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ec83c: ab18         	add	r3, sp, #0x60
  3ec83e: 4618         	mov	r0, r3
  3ec840: eeb0 0b47    	vmov.f64	d0, d7
  3ec844: ed9f 1b0e    	vldr	d1, [pc, #56]           @ 0x3ec880 <SoldierManager::spawnPlayer()+0x80>
  3ec848: f7fe f91a    	bl	0x3eaa80 <SoldierHostController::getBackupNadeWeapon()+0x184> @ imm = #-0x1dcc
  3ec84c: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3ec898 <SoldierManager::spawnPlayer()+0x98>
  3ec84e: 58e3         	ldr	r3, [r4, r3]
  3ec850: 681b         	ldr	r3, [r3]
  3ec852: 4618         	mov	r0, r3
  3ec854: f778 fdd8    	bl	0x365408 <MapManager::getPlayerSpawnPoints()> @ imm = #-0x87450
  3ec858: 4603         	mov	r3, r0
  3ec85a: 930c         	str	r3, [sp, #0x30]
  3ec85c: 980c         	ldr	r0, [sp, #0x30]
  3ec85e: f1ad fc3f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1ad87e
  3ec862: 4603         	mov	r3, r0
  3ec864: 2b00         	cmp	r3, #0x0
  3ec866: bf0c         	ite	eq
  3ec868: 2300         	moveq	r3, #0x0
  3ec86a: 2301         	movne	r3, #0x1
  3ec86c: b2db         	uxtb	r3, r3
  3ec86e: 2b00         	cmp	r3, #0x0
  3ec870: f000 8087    	beq.w	0x3ec982 <SoldierManager::spawnPlayer()+0x182> @ imm = #0x10e
  3ec874: 2300         	movs	r3, #0x0
  3ec876: 930b         	str	r3, [sp, #0x2c]
  3ec878: e06d         	b	0x3ec956 <SoldierManager::spawnPlayer()+0x156> @ imm = #0xda
  3ec87a: bf00         	nop
  3ec87c: f3af 8000    	nop.w
  3ec880: 0000         	movs	r0, r0
  3ec882: 0000         	movs	r0, r0
  3ec884: 3000         	adds	r0, #0x0
  3ec886: 4091         	lsls	r1, r2
  3ec888: 0000         	movs	r0, r0
  3ec88a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3eca8c <SoldierManager::spawnPlayer()+0x28c>
  3ec88c: 8000         	strh	r0, [r0]
  3ec88e: 44bb         	add	r11, r7
  3ec890: 0000         	movs	r0, r0
  3ec892: 44c8         	add	r8, r9
  3ec894: 6200         	str	r0, [r0, #0x20]
  3ec896: 0054         	lsls	r4, r2, #0x1
  3ec898: df04         	svc	#0x4
  3ec89a: ffff 980c    	vtbl.8	d25, {d15}, d12
  3ec89e: 990b         	ldr	r1, [sp, #0x2c]
  3ec8a0: f1ad fc3e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1ad87c
  3ec8a4: 4603         	mov	r3, r0
  3ec8a6: 930d         	str	r3, [sp, #0x34]
  3ec8a8: f8df 3410    	ldr.w	r3, [pc, #0x410]        @ 0x3eccbc <SoldierManager::spawnPlayer()+0x4bc>
  3ec8ac: 58e3         	ldr	r3, [r4, r3]
  3ec8ae: 681b         	ldr	r3, [r3]
  3ec8b0: aa1c         	add	r2, sp, #0x70
  3ec8b2: 4610         	mov	r0, r2
  3ec8b4: 4619         	mov	r1, r3
  3ec8b6: 9a0d         	ldr	r2, [sp, #0x34]
  3ec8b8: f778 feb6    	bl	0x365628 <MapManager::objectLocation(cocos2d::CCDictionary*)> @ imm = #-0x87294
  3ec8bc: 466b         	mov	r3, sp
  3ec8be: aa1e         	add	r2, sp, #0x78
  3ec8c0: e892 0003    	ldm.w	r2, {r0, r1}
  3ec8c4: e883 0003    	stm.w	r3, {r0, r1}
  3ec8c8: ab1c         	add	r3, sp, #0x70
  3ec8ca: cb0c         	ldm	r3, {r2, r3}
  3ec8cc: 9807         	ldr	r0, [sp, #0x1c]
  3ec8ce: f7ff fdef    	bl	0x3ec4b0 <SoldierManager::scoreSpawnPoint(cpVect)> @ imm = #-0x422
  3ec8d2: 4603         	mov	r3, r0
  3ec8d4: 930e         	str	r3, [sp, #0x38]
  3ec8d6: 2028         	movs	r0, #0x28
  3ec8d8: f39b f844    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x39b088
  3ec8dc: 4603         	mov	r3, r0
  3ec8de: 461d         	mov	r5, r3
  3ec8e0: 4628         	mov	r0, r5
  3ec8e2: f7ff f827    	bl	0x3eb934 <SpawnRow::SpawnRow()> @ imm = #-0xfb2
  3ec8e6: 950f         	str	r5, [sp, #0x3c]
  3ec8e8: 9b0f         	ldr	r3, [sp, #0x3c]
  3ec8ea: 4618         	mov	r0, r3
  3ec8ec: f1ab fb06    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1ab60c
  3ec8f0: 9b0f         	ldr	r3, [sp, #0x3c]
  3ec8f2: 9a0e         	ldr	r2, [sp, #0x38]
  3ec8f4: 615a         	str	r2, [r3, #0x14]
  3ec8f6: 9b0f         	ldr	r3, [sp, #0x3c]
  3ec8f8: f103 0518    	add.w	r5, r3, #0x18
  3ec8fc: ab1c         	add	r3, sp, #0x70
  3ec8fe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ec900: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3ec904: 9b07         	ldr	r3, [sp, #0x1c]
  3ec906: 6a9d         	ldr	r5, [r3, #0x28]
  3ec908: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x3eccc0 <SoldierManager::spawnPlayer()+0x4c0>
  3ec90a: 447b         	add	r3, pc
  3ec90c: 4618         	mov	r0, r3
  3ec90e: 990b         	ldr	r1, [sp, #0x2c]
  3ec910: f1ad f8fe    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ad1fc
  3ec914: 4603         	mov	r3, r0
  3ec916: 4618         	mov	r0, r3
  3ec918: f1ad f806    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ad00c
  3ec91c: 4606         	mov	r6, r0
  3ec91e: ab09         	add	r3, sp, #0x24
  3ec920: 4618         	mov	r0, r3
  3ec922: f39d fd67    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39dace
  3ec926: aa0a         	add	r2, sp, #0x28
  3ec928: ab09         	add	r3, sp, #0x24
  3ec92a: 4610         	mov	r0, r2
  3ec92c: 4631         	mov	r1, r6
  3ec92e: 461a         	mov	r2, r3
  3ec930: f3ca f896    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ca12c
  3ec934: ab0a         	add	r3, sp, #0x28
  3ec936: 4628         	mov	r0, r5
  3ec938: 990f         	ldr	r1, [sp, #0x3c]
  3ec93a: 461a         	mov	r2, r3
  3ec93c: f1a7 fffc    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1a7ff8
  3ec940: ab0a         	add	r3, sp, #0x28
  3ec942: 4618         	mov	r0, r3
  3ec944: f3c8 ffe6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c8fcc
  3ec948: ab09         	add	r3, sp, #0x24
  3ec94a: 4618         	mov	r0, r3
  3ec94c: f39d fd56    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39daac
  3ec950: 9b0b         	ldr	r3, [sp, #0x2c]
  3ec952: 3301         	adds	r3, #0x1
  3ec954: 930b         	str	r3, [sp, #0x2c]
  3ec956: 980c         	ldr	r0, [sp, #0x30]
  3ec958: f1ad fbc2    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1ad784
  3ec95c: 4602         	mov	r2, r0
  3ec95e: 9b0b         	ldr	r3, [sp, #0x2c]
  3ec960: 429a         	cmp	r2, r3
  3ec962: bf94         	ite	ls
  3ec964: 2300         	movls	r3, #0x0
  3ec966: 2301         	movhi	r3, #0x1
  3ec968: b2db         	uxtb	r3, r3
  3ec96a: 2b00         	cmp	r3, #0x0
  3ec96c: d196         	bne	0x3ec89c <SoldierManager::spawnPlayer()+0x9c> @ imm = #-0xd4
  3ec96e: ab02         	add	r3, sp, #0x8
  3ec970: 4618         	mov	r0, r3
  3ec972: 9907         	ldr	r1, [sp, #0x1c]
  3ec974: f7ff fe2c    	bl	0x3ec5d0 <SoldierManager::getRandomSafeSpawnPoint()> @ imm = #-0x3a8
  3ec978: ad18         	add	r5, sp, #0x60
  3ec97a: ab02         	add	r3, sp, #0x8
  3ec97c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ec97e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3ec982: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec984: 58e3         	ldr	r3, [r4, r3]
  3ec986: 681b         	ldr	r3, [r3]
  3ec988: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ec98c: f103 0528    	add.w	r5, r3, #0x28
  3ec990: ab18         	add	r3, sp, #0x60
  3ec992: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ec994: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3ec998: 9b07         	ldr	r3, [sp, #0x1c]
  3ec99a: f893 3034    	ldrb.w	r3, [r3, #0x34]
  3ec99e: 2b00         	cmp	r3, #0x0
  3ec9a0: f000 8094    	beq.w	0x3ecacc <SoldierManager::spawnPlayer()+0x2cc> @ imm = #0x128
  3ec9a4: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec9a6: 58e3         	ldr	r3, [r4, r3]
  3ec9a8: 681b         	ldr	r3, [r3]
  3ec9aa: 681b         	ldr	r3, [r3]
  3ec9ac: f503 732a    	add.w	r3, r3, #0x2a8
  3ec9b0: 681d         	ldr	r5, [r3]
  3ec9b2: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec9b4: 58e3         	ldr	r3, [r4, r3]
  3ec9b6: 681e         	ldr	r6, [r3]
  3ec9b8: f02a ffe4    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2afc8
  3ec9bc: 4607         	mov	r7, r0
  3ec9be: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec9c0: 58e3         	ldr	r3, [r4, r3]
  3ec9c2: 681b         	ldr	r3, [r3]
  3ec9c4: 681b         	ldr	r3, [r3]
  3ec9c6: f503 7346    	add.w	r3, r3, #0x318
  3ec9ca: 681b         	ldr	r3, [r3]
  3ec9cc: 4abd         	ldr	r2, [pc, #0x2f4]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec9ce: 58a2         	ldr	r2, [r4, r2]
  3ec9d0: 6812         	ldr	r2, [r2]
  3ec9d2: 4610         	mov	r0, r2
  3ec9d4: 4798         	blx	r3
  3ec9d6: 4603         	mov	r3, r0
  3ec9d8: 4638         	mov	r0, r7
  3ec9da: 4619         	mov	r1, r3
  3ec9dc: f02b fe8e    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x2bd1c
  3ec9e0: 4603         	mov	r3, r0
  3ec9e2: 4630         	mov	r0, r6
  3ec9e4: 4619         	mov	r1, r3
  3ec9e6: 47a8         	blx	r5
  3ec9e8: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec9ea: 58e3         	ldr	r3, [r4, r3]
  3ec9ec: 681b         	ldr	r3, [r3]
  3ec9ee: 681b         	ldr	r3, [r3]
  3ec9f0: f503 732a    	add.w	r3, r3, #0x2a8
  3ec9f4: 681d         	ldr	r5, [r3]
  3ec9f6: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ec9f8: 58e3         	ldr	r3, [r4, r3]
  3ec9fa: 681e         	ldr	r6, [r3]
  3ec9fc: f02a ffc2    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2af84
  3eca00: 4603         	mov	r3, r0
  3eca02: 4618         	mov	r0, r3
  3eca04: f02b fd9c    	bl	0x418540 <WeaponFactory::createRandomStartWeapon()> @ imm = #0x2bb38
  3eca08: 4603         	mov	r3, r0
  3eca0a: 4630         	mov	r0, r6
  3eca0c: 4619         	mov	r1, r3
  3eca0e: 47a8         	blx	r5
  3eca10: f02a ffb8    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2af70
  3eca14: 4603         	mov	r3, r0
  3eca16: 4618         	mov	r0, r3
  3eca18: 2102         	movs	r1, #0x2
  3eca1a: f02b fe6f    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x2bcde
  3eca1e: 4603         	mov	r3, r0
  3eca20: 9310         	str	r3, [sp, #0x40]
  3eca22: 9b10         	ldr	r3, [sp, #0x40]
  3eca24: 681b         	ldr	r3, [r3]
  3eca26: f503 731e    	add.w	r3, r3, #0x278
  3eca2a: 681b         	ldr	r3, [r3]
  3eca2c: 9810         	ldr	r0, [sp, #0x40]
  3eca2e: 2103         	movs	r1, #0x3
  3eca30: 4798         	blx	r3
  3eca32: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3eca34: 58e3         	ldr	r3, [r4, r3]
  3eca36: 681b         	ldr	r3, [r3]
  3eca38: 681b         	ldr	r3, [r3]
  3eca3a: f503 7308    	add.w	r3, r3, #0x220
  3eca3e: 681b         	ldr	r3, [r3]
  3eca40: 4aa0         	ldr	r2, [pc, #0x280]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3eca42: 58a2         	ldr	r2, [r4, r2]
  3eca44: 6812         	ldr	r2, [r2]
  3eca46: 4610         	mov	r0, r2
  3eca48: 9910         	ldr	r1, [sp, #0x40]
  3eca4a: 4798         	blx	r3
  3eca4c: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3eca4e: 58e3         	ldr	r3, [r4, r3]
  3eca50: 681b         	ldr	r3, [r3]
  3eca52: 681b         	ldr	r3, [r3]
  3eca54: f503 7347    	add.w	r3, r3, #0x31c
  3eca58: 681b         	ldr	r3, [r3]
  3eca5a: 4a9a         	ldr	r2, [pc, #0x268]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3eca5c: 58a2         	ldr	r2, [r4, r2]
  3eca5e: 6812         	ldr	r2, [r2]
  3eca60: 4610         	mov	r0, r2
  3eca62: 4798         	blx	r3
  3eca64: 4603         	mov	r3, r0
  3eca66: f1b3 3fff    	cmp.w	r3, #0xffffffff
  3eca6a: bf0c         	ite	eq
  3eca6c: 2300         	moveq	r3, #0x0
  3eca6e: 2301         	movne	r3, #0x1
  3eca70: b2db         	uxtb	r3, r3
  3eca72: 2b00         	cmp	r3, #0x0
  3eca74: d02a         	beq	0x3ecacc <SoldierManager::spawnPlayer()+0x2cc> @ imm = #0x54
  3eca76: f02a ff85    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2af0a
  3eca7a: 4605         	mov	r5, r0
  3eca7c: 4b91         	ldr	r3, [pc, #0x244]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3eca7e: 58e3         	ldr	r3, [r4, r3]
  3eca80: 681b         	ldr	r3, [r3]
  3eca82: 681b         	ldr	r3, [r3]
  3eca84: f503 7347    	add.w	r3, r3, #0x31c
  3eca88: 681b         	ldr	r3, [r3]
  3eca8a: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3eca8c: 58a2         	ldr	r2, [r4, r2]
  3eca8e: 6812         	ldr	r2, [r2]
  3eca90: 4610         	mov	r0, r2
  3eca92: 4798         	blx	r3
  3eca94: 4603         	mov	r3, r0
  3eca96: 4628         	mov	r0, r5
  3eca98: 4619         	mov	r1, r3
  3eca9a: f02b fe2f    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x2bc5e
  3eca9e: 4603         	mov	r3, r0
  3ecaa0: 9311         	str	r3, [sp, #0x44]
  3ecaa2: 9b11         	ldr	r3, [sp, #0x44]
  3ecaa4: 681b         	ldr	r3, [r3]
  3ecaa6: f503 731e    	add.w	r3, r3, #0x278
  3ecaaa: 681b         	ldr	r3, [r3]
  3ecaac: 9811         	ldr	r0, [sp, #0x44]
  3ecaae: 2101         	movs	r1, #0x1
  3ecab0: 4798         	blx	r3
  3ecab2: 4b84         	ldr	r3, [pc, #0x210]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecab4: 58e3         	ldr	r3, [r4, r3]
  3ecab6: 681b         	ldr	r3, [r3]
  3ecab8: 681b         	ldr	r3, [r3]
  3ecaba: f503 7308    	add.w	r3, r3, #0x220
  3ecabe: 681b         	ldr	r3, [r3]
  3ecac0: 4a80         	ldr	r2, [pc, #0x200]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecac2: 58a2         	ldr	r2, [r4, r2]
  3ecac4: 6812         	ldr	r2, [r2]
  3ecac6: 4610         	mov	r0, r2
  3ecac8: 9911         	ldr	r1, [sp, #0x44]
  3ecaca: 4798         	blx	r3
  3ecacc: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecace: 58e3         	ldr	r3, [r4, r3]
  3ecad0: 681b         	ldr	r3, [r3]
  3ecad2: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3ecad6: f04f 0200    	mov.w	r2, #0x0
  3ecada: f04f 0300    	mov.w	r3, #0x0
  3ecade: e9c1 230e    	strd	r2, r3, [r1, #56]
  3ecae2: f04f 0200    	mov.w	r2, #0x0
  3ecae6: f04f 0300    	mov.w	r3, #0x0
  3ecaea: e9c1 2310    	strd	r2, r3, [r1, #64]
  3ecaee: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecaf0: 58e3         	ldr	r3, [r4, r3]
  3ecaf2: 681b         	ldr	r3, [r3]
  3ecaf4: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3ecaf8: f04f 0200    	mov.w	r2, #0x0
  3ecafc: f04f 0300    	mov.w	r3, #0x0
  3ecb00: e9c1 2312    	strd	r2, r3, [r1, #72]
  3ecb04: f04f 0200    	mov.w	r2, #0x0
  3ecb08: f04f 0300    	mov.w	r3, #0x0
  3ecb0c: e9c1 2314    	strd	r2, r3, [r1, #80]
  3ecb10: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecb12: 58e3         	ldr	r3, [r4, r3]
  3ecb14: 681b         	ldr	r3, [r3]
  3ecb16: 681b         	ldr	r3, [r3]
  3ecb18: f503 73de    	add.w	r3, r3, #0x1bc
  3ecb1c: 681d         	ldr	r5, [r3]
  3ecb1e: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecb20: 58e3         	ldr	r3, [r4, r3]
  3ecb22: 681b         	ldr	r3, [r3]
  3ecb24: 461e         	mov	r6, r3
  3ecb26: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecb28: 58e3         	ldr	r3, [r4, r3]
  3ecb2a: 681b         	ldr	r3, [r3]
  3ecb2c: 681b         	ldr	r3, [r3]
  3ecb2e: f503 73e0    	add.w	r3, r3, #0x1c0
  3ecb32: 681b         	ldr	r3, [r3]
  3ecb34: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecb36: 58a2         	ldr	r2, [r4, r2]
  3ecb38: 6812         	ldr	r2, [r2]
  3ecb3a: a91c         	add	r1, sp, #0x70
  3ecb3c: 4608         	mov	r0, r1
  3ecb3e: 4611         	mov	r1, r2
  3ecb40: 4798         	blx	r3
  3ecb42: ab1c         	add	r3, sp, #0x70
  3ecb44: 4630         	mov	r0, r6
  3ecb46: 4619         	mov	r1, r3
  3ecb48: 47a8         	blx	r5
  3ecb4a: ab1c         	add	r3, sp, #0x70
  3ecb4c: 4618         	mov	r0, r3
  3ecb4e: f3c8 fee1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c8dc2
  3ecb52: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecb54: 58e3         	ldr	r3, [r4, r3]
  3ecb56: 681b         	ldr	r3, [r3]
  3ecb58: 681b         	ldr	r3, [r3]
  3ecb5a: f503 732e    	add.w	r3, r3, #0x2b8
  3ecb5e: 681b         	ldr	r3, [r3]
  3ecb60: 4a58         	ldr	r2, [pc, #0x160]        @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecb62: 58a2         	ldr	r2, [r4, r2]
  3ecb64: 6812         	ldr	r2, [r2]
  3ecb66: 4610         	mov	r0, r2
  3ecb68: 2100         	movs	r1, #0x0
  3ecb6a: 4798         	blx	r3
  3ecb6c: f706 ffa4    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xf90b8
  3ecb70: 4603         	mov	r3, r0
  3ecb72: 4618         	mov	r0, r3
  3ecb74: f70b fbec    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #-0xf4828
  3ecb78: 4603         	mov	r3, r0
  3ecb7a: 9312         	str	r3, [sp, #0x48]
  3ecb7c: f706 ff9c    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xf90c8
  3ecb80: 4602         	mov	r2, r0
  3ecb82: 9b07         	ldr	r3, [sp, #0x1c]
  3ecb84: 69db         	ldr	r3, [r3, #0x1c]
  3ecb86: 4610         	mov	r0, r2
  3ecb88: 9912         	ldr	r1, [sp, #0x48]
  3ecb8a: 461a         	mov	r2, r3
  3ecb8c: f70a fa70    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0xf5b20
  3ecb90: 4603         	mov	r3, r0
  3ecb92: 9313         	str	r3, [sp, #0x4c]
  3ecb94: f706 ff90    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xf90e0
  3ecb98: 4602         	mov	r2, r0
  3ecb9a: 9b07         	ldr	r3, [sp, #0x1c]
  3ecb9c: 69db         	ldr	r3, [r3, #0x1c]
  3ecb9e: 4610         	mov	r0, r2
  3ecba0: 9912         	ldr	r1, [sp, #0x48]
  3ecba2: 461a         	mov	r2, r3
  3ecba4: f70b f96e    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #-0xf4d24
  3ecba8: 4603         	mov	r3, r0
  3ecbaa: 9314         	str	r3, [sp, #0x50]
  3ecbac: f706 ff84    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xf90f8
  3ecbb0: 4602         	mov	r2, r0
  3ecbb2: 9b07         	ldr	r3, [sp, #0x1c]
  3ecbb4: 69db         	ldr	r3, [r3, #0x1c]
  3ecbb6: 4610         	mov	r0, r2
  3ecbb8: 9912         	ldr	r1, [sp, #0x48]
  3ecbba: 461a         	mov	r2, r3
  3ecbbc: f70b fa00    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #-0xf4c00
  3ecbc0: 4603         	mov	r3, r0
  3ecbc2: 9315         	str	r3, [sp, #0x54]
  3ecbc4: f706 ff78    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xf9110
  3ecbc8: 4602         	mov	r2, r0
  3ecbca: 9b07         	ldr	r3, [sp, #0x1c]
  3ecbcc: 69db         	ldr	r3, [r3, #0x1c]
  3ecbce: 4610         	mov	r0, r2
  3ecbd0: 9912         	ldr	r1, [sp, #0x48]
  3ecbd2: 461a         	mov	r2, r3
  3ecbd4: f70b fa92    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #-0xf4adc
  3ecbd8: 4603         	mov	r3, r0
  3ecbda: 9316         	str	r3, [sp, #0x58]
  3ecbdc: f706 ff6c    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xf9128
  3ecbe0: 4602         	mov	r2, r0
  3ecbe2: 9b07         	ldr	r3, [sp, #0x1c]
  3ecbe4: 69db         	ldr	r3, [r3, #0x1c]
  3ecbe6: 4610         	mov	r0, r2
  3ecbe8: 9912         	ldr	r1, [sp, #0x48]
  3ecbea: 461a         	mov	r2, r3
  3ecbec: f70b fb24    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #-0xf49b8
  3ecbf0: 4603         	mov	r3, r0
  3ecbf2: 9317         	str	r3, [sp, #0x5c]
  3ecbf4: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecbf6: 58e3         	ldr	r3, [r4, r3]
  3ecbf8: 681b         	ldr	r3, [r3]
  3ecbfa: 681b         	ldr	r3, [r3]
  3ecbfc: f503 73ec    	add.w	r3, r3, #0x1d8
  3ecc00: 681b         	ldr	r3, [r3]
  3ecc02: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecc04: 58a2         	ldr	r2, [r4, r2]
  3ecc06: 6812         	ldr	r2, [r2]
  3ecc08: 4610         	mov	r0, r2
  3ecc0a: 4798         	blx	r3
  3ecc0c: 4603         	mov	r3, r0
  3ecc0e: 9a15         	ldr	r2, [sp, #0x54]
  3ecc10: 9200         	str	r2, [sp]
  3ecc12: 9a16         	ldr	r2, [sp, #0x58]
  3ecc14: 9201         	str	r2, [sp, #0x4]
  3ecc16: 4618         	mov	r0, r3
  3ecc18: 9917         	ldr	r1, [sp, #0x5c]
  3ecc1a: 9a13         	ldr	r2, [sp, #0x4c]
  3ecc1c: 9b14         	ldr	r3, [sp, #0x50]
  3ecc1e: f007 fa31    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x7462
  3ecc22: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecc24: 58e3         	ldr	r3, [r4, r3]
  3ecc26: 681b         	ldr	r3, [r3]
  3ecc28: 681b         	ldr	r3, [r3]
  3ecc2a: f503 73ec    	add.w	r3, r3, #0x1d8
  3ecc2e: 681b         	ldr	r3, [r3]
  3ecc30: 4a24         	ldr	r2, [pc, #0x90]         @ 0x3eccc4 <SoldierManager::spawnPlayer()+0x4c4>
  3ecc32: 58a2         	ldr	r2, [r4, r2]
  3ecc34: 6812         	ldr	r2, [r2]
  3ecc36: 4610         	mov	r0, r2
  3ecc38: 4798         	blx	r3
  3ecc3a: 4604         	mov	r4, r0
  3ecc3c: 9b07         	ldr	r3, [sp, #0x1c]
  3ecc3e: 3320         	adds	r3, #0x20
  3ecc40: aa1c         	add	r2, sp, #0x70
  3ecc42: 4610         	mov	r0, r2
  3ecc44: 4619         	mov	r1, r3
  3ecc46: f3c9 fc4f    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3c989e
  3ecc4a: ab1c         	add	r3, sp, #0x70
  3ecc4c: 4620         	mov	r0, r4
  3ecc4e: 4619         	mov	r1, r3
  3ecc50: f007 f988    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #0x7310
  3ecc54: ab1c         	add	r3, sp, #0x70
  3ecc56: 4618         	mov	r0, r3
  3ecc58: f3c8 fe5c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c8cb8
  3ecc5c: f1f3 fd28    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f3a50
  3ecc60: 4604         	mov	r4, r0
  3ecc62: 9b07         	ldr	r3, [sp, #0x1c]
  3ecc64: 6a5b         	ldr	r3, [r3, #0x24]
  3ecc66: 4618         	mov	r0, r3
  3ecc68: f6f8 f84e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x107f64
  3ecc6c: 4603         	mov	r3, r0
  3ecc6e: 4620         	mov	r0, r4
  3ecc70: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3eccc8 <SoldierManager::spawnPlayer()+0x4c8>
  3ecc72: 447a         	add	r2, pc
  3ecc74: 4611         	mov	r1, r2
  3ecc76: 461a         	mov	r2, r3
  3ecc78: f1f3 ff58    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f3eb0
  3ecc7c: e01b         	b	0x3eccb6 <SoldierManager::spawnPlayer()+0x4b6> @ imm = #0x36
  3ecc7e: 4628         	mov	r0, r5
  3ecc80: f39b fa10    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39b420
  3ecc84: f39b fa12    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39b424
  3ecc88: ab0a         	add	r3, sp, #0x28
  3ecc8a: 4618         	mov	r0, r3
  3ecc8c: f3c8 fe42    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c8c84
  3ecc90: e7ff         	b	0x3ecc92 <SoldierManager::spawnPlayer()+0x492> @ imm = #-0x2
  3ecc92: ab09         	add	r3, sp, #0x24
  3ecc94: 4618         	mov	r0, r3
  3ecc96: f39d fbb1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39d762
  3ecc9a: f39b fa07    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39b40e
  3ecc9e: ab1c         	add	r3, sp, #0x70
  3ecca0: 4618         	mov	r0, r3
  3ecca2: f3c8 fe37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c8c6e
  3ecca6: f39b fa01    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39b402
  3eccaa: ab1c         	add	r3, sp, #0x70
  3eccac: 4618         	mov	r0, r3
  3eccae: f3c8 fe31    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c8c62
  3eccb2: f39b f9fb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39b3f6
  3eccb6: b021         	add	sp, #0x84
  3eccb8: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3eccb9); words below are literal-pool data ---
  3eccba: bf00         	nop
  3eccbc: df04         	svc	#0x4
  3eccbe: ffff be2a    	<unknown>
  3eccc2: 003e         	movs	r6, r7
  3eccc4: d784         	bvc	0x3ecbd0 <SoldierManager::spawnPlayer()+0x3d0> @ imm = #-0xf8
  3eccc6: ffff bac6    	vtbx.8	d27, {d31, fpinst2, mvfr0}, d6
  3eccca: 003e         	movs	r6, r7

// ==== SoldierManager::getRespawnTime
//      file offset 0x3eccd0 (= ELF address; Ghidra 0x3fccd0), 14 bytes, Thumb-2
  3eccd0: b082         	sub	sp, #0x8
  3eccd2: 9001         	str	r0, [sp, #0x4]
  3eccd4: 9b01         	ldr	r3, [sp, #0x4]
  3eccd6: 699b         	ldr	r3, [r3, #0x18]
  3eccd8: 4618         	mov	r0, r3
  3eccda: b002         	add	sp, #0x8
  3eccdc: 4770         	bx	lr

// ==== SoldierManager::isRespawning
//      file offset 0x3ecce0 (= ELF address; Ghidra 0x3fcce0), 14 bytes, Thumb-2
  3ecce0: b082         	sub	sp, #0x8
  3ecce2: 9001         	str	r0, [sp, #0x4]
  3ecce4: 9b01         	ldr	r3, [sp, #0x4]
  3ecce6: 7d1b         	ldrb	r3, [r3, #0x14]
  3ecce8: 4618         	mov	r0, r3
  3eccea: b002         	add	sp, #0x8
  3eccec: 4770         	bx	lr
