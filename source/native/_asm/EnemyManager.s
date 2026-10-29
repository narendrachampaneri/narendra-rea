// EnemyManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 36 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../EnemyManager.cpp

// ==== EnemyManager::EnemyManager
//      file offset 0x318d6c (= ELF address; Ghidra 0x328d6c), 64 bytes, Thumb-2
  318d6c: b510         	push	{r4, lr}
  318d6e: b082         	sub	sp, #0x8
  318d70: 9001         	str	r0, [sp, #0x4]
  318d72: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x318da4 <EnemyManager::EnemyManager()+0x38>
  318d74: 447c         	add	r4, pc
  318d76: 9b01         	ldr	r3, [sp, #0x4]
  318d78: 4618         	mov	r0, r3
  318d7a: f27e fff7    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x27efee
  318d7e: 9b01         	ldr	r3, [sp, #0x4]
  318d80: 4a09         	ldr	r2, [pc, #0x24]         @ 0x318da8 <EnemyManager::EnemyManager()+0x3c>
  318d82: 58a2         	ldr	r2, [r4, r2]
  318d84: 3208         	adds	r2, #0x8
  318d86: 601a         	str	r2, [r3]
  318d88: 9801         	ldr	r0, [sp, #0x4]
  318d8a: f000 f811    	bl	0x318db0 <EnemyManager::init()> @ imm = #0x22
  318d8e: 9b01         	ldr	r3, [sp, #0x4]
  318d90: e005         	b	0x318d9e <EnemyManager::EnemyManager()+0x32> @ imm = #0xa
  318d92: 9b01         	ldr	r3, [sp, #0x4]
  318d94: 4618         	mov	r0, r3
  318d96: f27f f81b    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x27f036
  318d9a: f06f f187    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46f30e
  318d9e: 4618         	mov	r0, r3
  318da0: b002         	add	sp, #0x8
  318da2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x318da3); words below are literal-pool data ---
  318da4: 9c94         	ldr	r4, [sp, #0x250]
  318da6: 0061         	lsls	r1, r4, #0x1
  318da8: da04         	bge	0x318db4 <EnemyManager::init()+0x4> @ imm = #0x8
  318daa: ffff 0000    	<unknown>

// ==== EnemyManager::init
//      file offset 0x318db0 (= ELF address; Ghidra 0x328db0), 516 bytes, Thumb-2
  318db0: b530         	push	{r4, r5, lr}
  318db2: b093         	sub	sp, #0x4c
  318db4: 9007         	str	r0, [sp, #0x1c]
  318db6: 4c72         	ldr	r4, [pc, #0x1c8]        @ 0x318f80 <EnemyManager::init()+0x1d0>
  318db8: 447c         	add	r4, pc
  318dba: f27e faf9    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e5f2
  318dbe: 4603         	mov	r3, r0
  318dc0: 461a         	mov	r2, r3
  318dc2: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x318f84 <EnemyManager::init()+0x1d4>
  318dc4: 58e3         	ldr	r3, [r4, r3]
  318dc6: 601a         	str	r2, [r3]
  318dc8: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x318f84 <EnemyManager::init()+0x1d4>
  318dca: 58e3         	ldr	r3, [r4, r3]
  318dcc: 681b         	ldr	r3, [r3]
  318dce: 4618         	mov	r0, r3
  318dd0: f27f f88a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f114
  318dd4: f27e faec    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e5d8
  318dd8: 4603         	mov	r3, r0
  318dda: 461a         	mov	r2, r3
  318ddc: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x318f88 <EnemyManager::init()+0x1d8>
  318dde: 58e3         	ldr	r3, [r4, r3]
  318de0: 601a         	str	r2, [r3]
  318de2: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x318f88 <EnemyManager::init()+0x1d8>
  318de4: 58e3         	ldr	r3, [r4, r3]
  318de6: 681b         	ldr	r3, [r3]
  318de8: 4618         	mov	r0, r3
  318dea: f27f f87d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f0fa
  318dee: f27e fadf    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e5be
  318df2: 4602         	mov	r2, r0
  318df4: 9b07         	ldr	r3, [sp, #0x1c]
  318df6: 615a         	str	r2, [r3, #0x14]
  318df8: 9b07         	ldr	r3, [sp, #0x1c]
  318dfa: 695b         	ldr	r3, [r3, #0x14]
  318dfc: 4618         	mov	r0, r3
  318dfe: f27f f873    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f0e6
  318e02: f27e fad5    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e5aa
  318e06: 4602         	mov	r2, r0
  318e08: 9b07         	ldr	r3, [sp, #0x1c]
  318e0a: 619a         	str	r2, [r3, #0x18]
  318e0c: 9b07         	ldr	r3, [sp, #0x1c]
  318e0e: 699b         	ldr	r3, [r3, #0x18]
  318e10: 4618         	mov	r0, r3
  318e12: f27f f869    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f0d2
  318e16: f27e facb    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e596
  318e1a: 4602         	mov	r2, r0
  318e1c: 9b07         	ldr	r3, [sp, #0x1c]
  318e1e: 61da         	str	r2, [r3, #0x1c]
  318e20: 9b07         	ldr	r3, [sp, #0x1c]
  318e22: 69db         	ldr	r3, [r3, #0x1c]
  318e24: 4618         	mov	r0, r3
  318e26: f27f f85f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f0be
  318e2a: f27e fac1    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e582
  318e2e: 4602         	mov	r2, r0
  318e30: 9b07         	ldr	r3, [sp, #0x1c]
  318e32: 621a         	str	r2, [r3, #0x20]
  318e34: 9b07         	ldr	r3, [sp, #0x1c]
  318e36: 6a1b         	ldr	r3, [r3, #0x20]
  318e38: 4618         	mov	r0, r3
  318e3a: f27f f855    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f0aa
  318e3e: f27e fab7    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e56e
  318e42: 4602         	mov	r2, r0
  318e44: 9b07         	ldr	r3, [sp, #0x1c]
  318e46: 625a         	str	r2, [r3, #0x24]
  318e48: 9b07         	ldr	r3, [sp, #0x1c]
  318e4a: 6a5b         	ldr	r3, [r3, #0x24]
  318e4c: 4618         	mov	r0, r3
  318e4e: f27f f84b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f096
  318e52: f27e faad    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x27e55a
  318e56: 4602         	mov	r2, r0
  318e58: 9b07         	ldr	r3, [sp, #0x1c]
  318e5a: 629a         	str	r2, [r3, #0x28]
  318e5c: 9b07         	ldr	r3, [sp, #0x1c]
  318e5e: 6a9b         	ldr	r3, [r3, #0x28]
  318e60: 4618         	mov	r0, r3
  318e62: f27f f841    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27f082
  318e66: 9b07         	ldr	r3, [sp, #0x1c]
  318e68: 2201         	movs	r2, #0x1
  318e6a: 62da         	str	r2, [r3, #0x2c]
  318e6c: 9b07         	ldr	r3, [sp, #0x1c]
  318e6e: 2200         	movs	r2, #0x0
  318e70: 631a         	str	r2, [r3, #0x30]
  318e72: 9b07         	ldr	r3, [sp, #0x1c]
  318e74: 2200         	movs	r2, #0x0
  318e76: 635a         	str	r2, [r3, #0x34]
  318e78: 9b07         	ldr	r3, [sp, #0x1c]
  318e7a: 2200         	movs	r2, #0x0
  318e7c: 639a         	str	r2, [r3, #0x38]
  318e7e: 9b07         	ldr	r3, [sp, #0x1c]
  318e80: 2200         	movs	r2, #0x0
  318e82: 63da         	str	r2, [r3, #0x3c]
  318e84: 9d07         	ldr	r5, [sp, #0x1c]
  318e86: ab02         	add	r3, sp, #0x8
  318e88: 4618         	mov	r0, r3
  318e8a: ed9f 0b39    	vldr	d0, [pc, #228]          @ 0x318f70 <EnemyManager::init()+0x1c0>
  318e8e: ed9f 1b3a    	vldr	d1, [pc, #232]          @ 0x318f78 <EnemyManager::init()+0x1c8>
  318e92: f7fe ffd7    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x1052
  318e96: 3540         	adds	r5, #0x40
  318e98: ab02         	add	r3, sp, #0x8
  318e9a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  318e9c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  318ea0: f2c7 fc06    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c780c
  318ea4: 4602         	mov	r2, r0
  318ea6: 9b07         	ldr	r3, [sp, #0x1c]
  318ea8: 4938         	ldr	r1, [pc, #0xe0]         @ 0x318f8c <EnemyManager::init()+0x1dc>
  318eaa: 5861         	ldr	r1, [r4, r1]
  318eac: 9108         	str	r1, [sp, #0x20]
  318eae: 2100         	movs	r1, #0x0
  318eb0: 9109         	str	r1, [sp, #0x24]
  318eb2: 4937         	ldr	r1, [pc, #0xdc]         @ 0x318f90 <EnemyManager::init()+0x1e0>
  318eb4: 4479         	add	r1, pc
  318eb6: 9100         	str	r1, [sp]
  318eb8: 2100         	movs	r1, #0x0
  318eba: 9101         	str	r1, [sp, #0x4]
  318ebc: 4610         	mov	r0, r2
  318ebe: 4619         	mov	r1, r3
  318ec0: ab08         	add	r3, sp, #0x20
  318ec2: cb0c         	ldm	r3, {r2, r3}
  318ec4: f2c7 fc90    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2c7920
  318ec8: f2c7 fbf2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c77e4
  318ecc: 4602         	mov	r2, r0
  318ece: 9b07         	ldr	r3, [sp, #0x1c]
  318ed0: 4930         	ldr	r1, [pc, #0xc0]         @ 0x318f94 <EnemyManager::init()+0x1e4>
  318ed2: 5861         	ldr	r1, [r4, r1]
  318ed4: 910a         	str	r1, [sp, #0x28]
  318ed6: 2100         	movs	r1, #0x0
  318ed8: 910b         	str	r1, [sp, #0x2c]
  318eda: 492f         	ldr	r1, [pc, #0xbc]         @ 0x318f98 <EnemyManager::init()+0x1e8>
  318edc: 4479         	add	r1, pc
  318ede: 9100         	str	r1, [sp]
  318ee0: 2100         	movs	r1, #0x0
  318ee2: 9101         	str	r1, [sp, #0x4]
  318ee4: 4610         	mov	r0, r2
  318ee6: 4619         	mov	r1, r3
  318ee8: ab0a         	add	r3, sp, #0x28
  318eea: cb0c         	ldm	r3, {r2, r3}
  318eec: f2c7 fc7c    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2c78f8
  318ef0: f2c7 fbde    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c77bc
  318ef4: 4602         	mov	r2, r0
  318ef6: 9b07         	ldr	r3, [sp, #0x1c]
  318ef8: 4928         	ldr	r1, [pc, #0xa0]         @ 0x318f9c <EnemyManager::init()+0x1ec>
  318efa: 5861         	ldr	r1, [r4, r1]
  318efc: 910c         	str	r1, [sp, #0x30]
  318efe: 2100         	movs	r1, #0x0
  318f00: 910d         	str	r1, [sp, #0x34]
  318f02: 4927         	ldr	r1, [pc, #0x9c]         @ 0x318fa0 <EnemyManager::init()+0x1f0>
  318f04: 4479         	add	r1, pc
  318f06: 9100         	str	r1, [sp]
  318f08: 2100         	movs	r1, #0x0
  318f0a: 9101         	str	r1, [sp, #0x4]
  318f0c: 4610         	mov	r0, r2
  318f0e: 4619         	mov	r1, r3
  318f10: ab0c         	add	r3, sp, #0x30
  318f12: cb0c         	ldm	r3, {r2, r3}
  318f14: f2c7 fc68    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2c78d0
  318f18: f2c7 fbca    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c7794
  318f1c: 4602         	mov	r2, r0
  318f1e: 9b07         	ldr	r3, [sp, #0x1c]
  318f20: 4920         	ldr	r1, [pc, #0x80]         @ 0x318fa4 <EnemyManager::init()+0x1f4>
  318f22: 5861         	ldr	r1, [r4, r1]
  318f24: 910e         	str	r1, [sp, #0x38]
  318f26: 2100         	movs	r1, #0x0
  318f28: 910f         	str	r1, [sp, #0x3c]
  318f2a: 491f         	ldr	r1, [pc, #0x7c]         @ 0x318fa8 <EnemyManager::init()+0x1f8>
  318f2c: 4479         	add	r1, pc
  318f2e: 9100         	str	r1, [sp]
  318f30: 2100         	movs	r1, #0x0
  318f32: 9101         	str	r1, [sp, #0x4]
  318f34: 4610         	mov	r0, r2
  318f36: 4619         	mov	r1, r3
  318f38: ab0e         	add	r3, sp, #0x38
  318f3a: cb0c         	ldm	r3, {r2, r3}
  318f3c: f2c7 fc54    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2c78a8
  318f40: f2c7 fbb6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c776c
  318f44: 4602         	mov	r2, r0
  318f46: 9b07         	ldr	r3, [sp, #0x1c]
  318f48: 4918         	ldr	r1, [pc, #0x60]         @ 0x318fac <EnemyManager::init()+0x1fc>
  318f4a: 5861         	ldr	r1, [r4, r1]
  318f4c: 9110         	str	r1, [sp, #0x40]
  318f4e: 2100         	movs	r1, #0x0
  318f50: 9111         	str	r1, [sp, #0x44]
  318f52: 4917         	ldr	r1, [pc, #0x5c]         @ 0x318fb0 <EnemyManager::init()+0x200>
  318f54: 4479         	add	r1, pc
  318f56: 9100         	str	r1, [sp]
  318f58: 2100         	movs	r1, #0x0
  318f5a: 9101         	str	r1, [sp, #0x4]
  318f5c: 4610         	mov	r0, r2
  318f5e: 4619         	mov	r1, r3
  318f60: ab10         	add	r3, sp, #0x40
  318f62: cb0c         	ldm	r3, {r2, r3}
  318f64: f2c7 fc40    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2c7880
  318f68: 2301         	movs	r3, #0x1
  318f6a: 4618         	mov	r0, r3
  318f6c: b013         	add	sp, #0x4c
  318f6e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x318f6f); words below are literal-pool data ---
  318f70: 0000         	movs	r0, r0
  318f72: 0000         	movs	r0, r0
  318f74: 4000         	ands	r0, r0
  318f76: 408f         	lsls	r7, r1
  318f78: 0000         	movs	r0, r0
  318f7a: 0000         	movs	r0, r0
  318f7c: 6a00         	ldr	r0, [r0, #0x20]
  318f7e: 40f8         	lsrs	r0, r7
  318f80: 9c50         	ldr	r4, [sp, #0x140]
  318f82: 0061         	lsls	r1, r4, #0x1
  318f84: da08         	bge	0x318f98 <EnemyManager::init()+0x1e8> @ imm = #0x10
  318f86: ffff d9f8    	<unknown>
  318f8a: ffff da0c    	vtbl.8	d29, {d15, d16, d17}, d12
  318f8e: ffff e100    	<unknown>
  318f92: 004a         	lsls	r2, r1, #0x1
  318f94: da10         	bge	0x318fb8 <EnemyManager::~EnemyManager()> @ imm = #0x20
  318f96: ffff e0e8    	<unknown>
  318f9a: 004a         	lsls	r2, r1, #0x1
  318f9c: da14         	bge	0x318fc8 <EnemyManager::~EnemyManager()+0x10> @ imm = #0x28
  318f9e: ffff e0cc    	<unknown>
  318fa2: 004a         	lsls	r2, r1, #0x1
  318fa4: da18         	bge	0x318fd8 <EnemyManager::~EnemyManager()+0x20> @ imm = #0x30
  318fa6: ffff e0b4    	vshr.u64	d30, d20, #0x1
  318faa: 004a         	lsls	r2, r1, #0x1
  318fac: da1c         	bge	0x318fe8 <EnemyManager::~EnemyManager()+0x30> @ imm = #0x38
  318fae: ffff e09c    	vshr.u64	d30, d12, #0x1
  318fb2: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::~EnemyManager
//      file offset 0x318fb8 (= ELF address; Ghidra 0x328fb8), 196 bytes, Thumb-2
  318fb8: b510         	push	{r4, lr}
  318fba: b082         	sub	sp, #0x8
  318fbc: 9001         	str	r0, [sp, #0x4]
  318fbe: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x31906c <EnemyManager::~EnemyManager()+0xb4>
  318fc0: 447c         	add	r4, pc
  318fc2: 9b01         	ldr	r3, [sp, #0x4]
  318fc4: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x319070 <EnemyManager::~EnemyManager()+0xb8>
  318fc6: 58a2         	ldr	r2, [r4, r2]
  318fc8: 3208         	adds	r2, #0x8
  318fca: 601a         	str	r2, [r3]
  318fcc: f2c7 fb70    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c76e0
  318fd0: 4602         	mov	r2, r0
  318fd2: 9b01         	ldr	r3, [sp, #0x4]
  318fd4: 4610         	mov	r0, r2
  318fd6: 4619         	mov	r1, r3
  318fd8: f2c7 fca2    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2c7944
  318fdc: 4b25         	ldr	r3, [pc, #0x94]         @ 0x319074 <EnemyManager::~EnemyManager()+0xbc>
  318fde: 58e3         	ldr	r3, [r4, r3]
  318fe0: 681b         	ldr	r3, [r3]
  318fe2: 4618         	mov	r0, r3
  318fe4: f27d fff0    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x27dfe0
  318fe8: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x319078 <EnemyManager::~EnemyManager()+0xc0>
  318fea: 58e3         	ldr	r3, [r4, r3]
  318fec: 681b         	ldr	r3, [r3]
  318fee: 4618         	mov	r0, r3
  318ff0: f27d ffea    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x27dfd4
  318ff4: 4b20         	ldr	r3, [pc, #0x80]         @ 0x319078 <EnemyManager::~EnemyManager()+0xc0>
  318ff6: 58e3         	ldr	r3, [r4, r3]
  318ff8: 681b         	ldr	r3, [r3]
  318ffa: 4618         	mov	r0, r3
  318ffc: f27e ff5c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27eeb8
  319000: 9b01         	ldr	r3, [sp, #0x4]
  319002: 69db         	ldr	r3, [r3, #0x1c]
  319004: 4618         	mov	r0, r3
  319006: f27e ff57    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27eeae
  31900a: 9b01         	ldr	r3, [sp, #0x4]
  31900c: 695b         	ldr	r3, [r3, #0x14]
  31900e: 4618         	mov	r0, r3
  319010: f27e ff52    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27eea4
  319014: 9b01         	ldr	r3, [sp, #0x4]
  319016: 699b         	ldr	r3, [r3, #0x18]
  319018: 4618         	mov	r0, r3
  31901a: f27e ff4d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27ee9a
  31901e: 9b01         	ldr	r3, [sp, #0x4]
  319020: 6a1b         	ldr	r3, [r3, #0x20]
  319022: 4618         	mov	r0, r3
  319024: f27e ff48    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27ee90
  319028: 9b01         	ldr	r3, [sp, #0x4]
  31902a: 6a5b         	ldr	r3, [r3, #0x24]
  31902c: 4618         	mov	r0, r3
  31902e: f27e ff43    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27ee86
  319032: 9b01         	ldr	r3, [sp, #0x4]
  319034: 6a9b         	ldr	r3, [r3, #0x28]
  319036: 4618         	mov	r0, r3
  319038: f27e ff3e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27ee7c
  31903c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x319074 <EnemyManager::~EnemyManager()+0xbc>
  31903e: 58e3         	ldr	r3, [r4, r3]
  319040: 681b         	ldr	r3, [r3]
  319042: 4618         	mov	r0, r3
  319044: f27e ff38    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27ee70
  319048: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x319074 <EnemyManager::~EnemyManager()+0xbc>
  31904a: 58e3         	ldr	r3, [r4, r3]
  31904c: 2200         	movs	r2, #0x0
  31904e: 601a         	str	r2, [r3]
  319050: 9b01         	ldr	r3, [sp, #0x4]
  319052: 4618         	mov	r0, r3
  319054: f27e febc    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x27ed78
  319058: 2300         	movs	r3, #0x0
  31905a: 2b00         	cmp	r3, #0x0
  31905c: d002         	beq	0x319064 <EnemyManager::~EnemyManager()+0xac> @ imm = #0x4
  31905e: 9801         	ldr	r0, [sp, #0x4]
  319060: f06f f020    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46f040
  319064: 9b01         	ldr	r3, [sp, #0x4]
  319066: 4618         	mov	r0, r3
  319068: b002         	add	sp, #0x8
  31906a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x31906b); words below are literal-pool data ---
  31906c: 9a48         	ldr	r2, [sp, #0x120]
  31906e: 0061         	lsls	r1, r4, #0x1
  319070: da04         	bge	0x31907c <EnemyManager::~EnemyManager()> @ imm = #0x8
  319072: ffff d9f8    	<unknown>
  319076: ffff da08    	vtbl.8	d29, {d15, d16, d17}, d8
  31907a: ffff b500    	<unknown>

// ==== EnemyManager::~EnemyManager
//      file offset 0x31907c (= ELF address; Ghidra 0x32907c), 28 bytes, Thumb-2
  31907c: b500         	push	{lr}
  31907e: b083         	sub	sp, #0xc
  319080: 9001         	str	r0, [sp, #0x4]
  319082: 9801         	ldr	r0, [sp, #0x4]
  319084: f7ff ff98    	bl	0x318fb8 <EnemyManager::~EnemyManager()> @ imm = #-0xd0
  319088: 9801         	ldr	r0, [sp, #0x4]
  31908a: f06f f00b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46f016
  31908e: 9b01         	ldr	r3, [sp, #0x4]
  319090: 4618         	mov	r0, r3
  319092: b003         	add	sp, #0xc
  319094: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::initEnemies
//      file offset 0x319098 (= ELF address; Ghidra 0x329098), 138 bytes, Thumb-2
  319098: b500         	push	{lr}
  31909a: b089         	sub	sp, #0x24
  31909c: 9003         	str	r0, [sp, #0xc]
  31909e: 2300         	movs	r3, #0x0
  3190a0: 9305         	str	r3, [sp, #0x14]
  3190a2: e00e         	b	0x3190c2 <EnemyManager::initEnemies()+0x2a> @ imm = #0x1c
  3190a4: 9b03         	ldr	r3, [sp, #0xc]
  3190a6: 466a         	mov	r2, sp
  3190a8: f103 0148    	add.w	r1, r3, #0x48
  3190ac: c903         	ldm	r1, {r0, r1}
  3190ae: e882 0003    	stm.w	r2, {r0, r1}
  3190b2: 3340         	adds	r3, #0x40
  3190b4: cb0c         	ldm	r3, {r2, r3}
  3190b6: 9803         	ldr	r0, [sp, #0xc]
  3190b8: f001 f9bc    	bl	0x31a434 <EnemyManager::createWormDrone(cpVect)> @ imm = #0x1378
  3190bc: 9b05         	ldr	r3, [sp, #0x14]
  3190be: 3301         	adds	r3, #0x1
  3190c0: 9305         	str	r3, [sp, #0x14]
  3190c2: 9b05         	ldr	r3, [sp, #0x14]
  3190c4: 2b02         	cmp	r3, #0x2
  3190c6: dded         	ble	0x3190a4 <EnemyManager::initEnemies()+0xc> @ imm = #-0x26
  3190c8: 2300         	movs	r3, #0x0
  3190ca: 9306         	str	r3, [sp, #0x18]
  3190cc: e00e         	b	0x3190ec <EnemyManager::initEnemies()+0x54> @ imm = #0x1c
  3190ce: 9b03         	ldr	r3, [sp, #0xc]
  3190d0: 466a         	mov	r2, sp
  3190d2: f103 0148    	add.w	r1, r3, #0x48
  3190d6: c903         	ldm	r1, {r0, r1}
  3190d8: e882 0003    	stm.w	r2, {r0, r1}
  3190dc: 3340         	adds	r3, #0x40
  3190de: cb0c         	ldm	r3, {r2, r3}
  3190e0: 9803         	ldr	r0, [sp, #0xc]
  3190e2: f000 ff81    	bl	0x319fe8 <EnemyManager::createHawkDrone(cpVect)> @ imm = #0xf02
  3190e6: 9b06         	ldr	r3, [sp, #0x18]
  3190e8: 3301         	adds	r3, #0x1
  3190ea: 9306         	str	r3, [sp, #0x18]
  3190ec: 9b06         	ldr	r3, [sp, #0x18]
  3190ee: 2b04         	cmp	r3, #0x4
  3190f0: dded         	ble	0x3190ce <EnemyManager::initEnemies()+0x36> @ imm = #-0x26
  3190f2: 2300         	movs	r3, #0x0
  3190f4: 9307         	str	r3, [sp, #0x1c]
  3190f6: e00e         	b	0x319116 <EnemyManager::initEnemies()+0x7e> @ imm = #0x1c
  3190f8: 9b03         	ldr	r3, [sp, #0xc]
  3190fa: 466a         	mov	r2, sp
  3190fc: f103 0148    	add.w	r1, r3, #0x48
  319100: c903         	ldm	r1, {r0, r1}
  319102: e882 0003    	stm.w	r2, {r0, r1}
  319106: 3340         	adds	r3, #0x40
  319108: cb0c         	ldm	r3, {r2, r3}
  31910a: 9803         	ldr	r0, [sp, #0xc]
  31910c: f001 f864    	bl	0x31a1d8 <EnemyManager::createHumanoidDrone(cpVect)> @ imm = #0x10c8
  319110: 9b07         	ldr	r3, [sp, #0x1c]
  319112: 3301         	adds	r3, #0x1
  319114: 9307         	str	r3, [sp, #0x1c]
  319116: 9b07         	ldr	r3, [sp, #0x1c]
  319118: 2b04         	cmp	r3, #0x4
  31911a: dded         	ble	0x3190f8 <EnemyManager::initEnemies()+0x60> @ imm = #-0x26
  31911c: b009         	add	sp, #0x24
  31911e: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::awardPoints
//      file offset 0x319124 (= ELF address; Ghidra 0x329124), 360 bytes, Thumb-2
  319124: b5f0         	push	{r4, r5, r6, r7, lr}
  319126: b08b         	sub	sp, #0x2c
  319128: 9005         	str	r0, [sp, #0x14]
  31912a: 9104         	str	r1, [sp, #0x10]
  31912c: 9203         	str	r2, [sp, #0xc]
  31912e: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x31927c <EnemyManager::awardPoints(Enemy*, int)+0x158>
  319130: 447c         	add	r4, pc
  319132: 9b04         	ldr	r3, [sp, #0x10]
  319134: 681b         	ldr	r3, [r3]
  319136: f503 73dc    	add.w	r3, r3, #0x1b8
  31913a: 681b         	ldr	r3, [r3]
  31913c: 9a04         	ldr	r2, [sp, #0x10]
  31913e: a907         	add	r1, sp, #0x1c
  319140: 4608         	mov	r0, r1
  319142: 4611         	mov	r1, r2
  319144: 4798         	blx	r3
  319146: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x319280 <EnemyManager::awardPoints(Enemy*, int)+0x15c>
  319148: 58e3         	ldr	r3, [r4, r3]
  31914a: 681b         	ldr	r3, [r3]
  31914c: 681b         	ldr	r3, [r3]
  31914e: f503 73e0    	add.w	r3, r3, #0x1c0
  319152: 681b         	ldr	r3, [r3]
  319154: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x319280 <EnemyManager::awardPoints(Enemy*, int)+0x15c>
  319156: 58a2         	ldr	r2, [r4, r2]
  319158: 6812         	ldr	r2, [r2]
  31915a: a908         	add	r1, sp, #0x20
  31915c: 4608         	mov	r0, r1
  31915e: 4611         	mov	r1, r2
  319160: 4798         	blx	r3
  319162: aa07         	add	r2, sp, #0x1c
  319164: ab08         	add	r3, sp, #0x20
  319166: 4610         	mov	r0, r2
  319168: 4619         	mov	r1, r3
  31916a: f09c f287    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x49c50e
  31916e: 4603         	mov	r3, r0
  319170: 2b00         	cmp	r3, #0x0
  319172: bf0c         	ite	eq
  319174: 2300         	moveq	r3, #0x0
  319176: 2301         	movne	r3, #0x1
  319178: b2dc         	uxtb	r4, r3
  31917a: ab08         	add	r3, sp, #0x20
  31917c: 4618         	mov	r0, r3
  31917e: f09c f3c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c792
  319182: ab07         	add	r3, sp, #0x1c
  319184: 4618         	mov	r0, r3
  319186: f09c f3c5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c78a
  31918a: 2c00         	cmp	r4, #0x0
  31918c: d001         	beq	0x319192 <EnemyManager::awardPoints(Enemy*, int)+0x6e> @ imm = #0x2
  31918e: 2300         	movs	r3, #0x0
  319190: 9303         	str	r3, [sp, #0xc]
  319192: 9b04         	ldr	r3, [sp, #0x10]
  319194: 681b         	ldr	r3, [r3]
  319196: f503 73dc    	add.w	r3, r3, #0x1b8
  31919a: 681b         	ldr	r3, [r3]
  31919c: 9a04         	ldr	r2, [sp, #0x10]
  31919e: a907         	add	r1, sp, #0x1c
  3191a0: 4608         	mov	r0, r1
  3191a2: 4611         	mov	r1, r2
  3191a4: 4798         	blx	r3
  3191a6: ab07         	add	r3, sp, #0x1c
  3191a8: 4618         	mov	r0, r3
  3191aa: f280 fc47    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28088e
  3191ae: 4607         	mov	r7, r0
  3191b0: ab06         	add	r3, sp, #0x18
  3191b2: 4618         	mov	r0, r3
  3191b4: f071 f11e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47123c
  3191b8: aa08         	add	r2, sp, #0x20
  3191ba: ab06         	add	r3, sp, #0x18
  3191bc: 4610         	mov	r0, r2
  3191be: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x319284 <EnemyManager::awardPoints(Enemy*, int)+0x160>
  3191c0: 447a         	add	r2, pc
  3191c2: 4611         	mov	r1, r2
  3191c4: 461a         	mov	r2, r3
  3191c6: f09d f44b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49d896
  3191ca: ab08         	add	r3, sp, #0x20
  3191cc: 4618         	mov	r0, r3
  3191ce: f280 fc35    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28086a
  3191d2: 4606         	mov	r6, r0
  3191d4: 9803         	ldr	r0, [sp, #0xc]
  3191d6: f7cb fd97    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x344d2
  3191da: 4605         	mov	r5, r0
  3191dc: 9b04         	ldr	r3, [sp, #0x10]
  3191de: 681b         	ldr	r3, [r3]
  3191e0: f503 73da    	add.w	r3, r3, #0x1b4
  3191e4: 681b         	ldr	r3, [r3]
  3191e6: 9a04         	ldr	r2, [sp, #0x10]
  3191e8: 4610         	mov	r0, r2
  3191ea: 4798         	blx	r3
  3191ec: 4603         	mov	r3, r0
  3191ee: 4618         	mov	r0, r3
  3191f0: f7cb fd8a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x344ec
  3191f4: 4604         	mov	r4, r0
  3191f6: 2001         	movs	r0, #0x1
  3191f8: f7cb fd86    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x344f4
  3191fc: 4603         	mov	r3, r0
  3191fe: 9300         	str	r3, [sp]
  319200: 2300         	movs	r3, #0x0
  319202: 9301         	str	r3, [sp, #0x4]
  319204: 4638         	mov	r0, r7
  319206: 4631         	mov	r1, r6
  319208: 462a         	mov	r2, r5
  31920a: 4623         	mov	r3, r4
  31920c: f280 fe00    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x280c00
  319210: 4603         	mov	r3, r0
  319212: 9309         	str	r3, [sp, #0x24]
  319214: ab08         	add	r3, sp, #0x20
  319216: 4618         	mov	r0, r3
  319218: f09c f37c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c6f8
  31921c: ab06         	add	r3, sp, #0x18
  31921e: 4618         	mov	r0, r3
  319220: f071 f0ec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4711d8
  319224: ab07         	add	r3, sp, #0x1c
  319226: 4618         	mov	r0, r3
  319228: f09c f374    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c6e8
  31922c: f2c7 fa40    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c7480
  319230: 4603         	mov	r3, r0
  319232: 4618         	mov	r0, r3
  319234: 4b14         	ldr	r3, [pc, #0x50]         @ 0x319288 <EnemyManager::awardPoints(Enemy*, int)+0x164>
  319236: 447b         	add	r3, pc
  319238: 4619         	mov	r1, r3
  31923a: 9a09         	ldr	r2, [sp, #0x24]
  31923c: f2c7 fc76    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c78ec
  319240: e01a         	b	0x319278 <EnemyManager::awardPoints(Enemy*, int)+0x154> @ imm = #0x34
  319242: ab08         	add	r3, sp, #0x20
  319244: 4618         	mov	r0, r3
  319246: f09c f365    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c6ca
  31924a: e7ff         	b	0x31924c <EnemyManager::awardPoints(Enemy*, int)+0x128> @ imm = #-0x2
  31924c: ab07         	add	r3, sp, #0x1c
  31924e: 4618         	mov	r0, r3
  319250: f09c f360    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c6c0
  319254: f06e f72a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46ee54
  319258: ab08         	add	r3, sp, #0x20
  31925a: 4618         	mov	r0, r3
  31925c: f09c f35a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c6b4
  319260: e7ff         	b	0x319262 <EnemyManager::awardPoints(Enemy*, int)+0x13e> @ imm = #-0x2
  319262: ab06         	add	r3, sp, #0x18
  319264: 4618         	mov	r0, r3
  319266: f071 f0c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x471192
  31926a: e7ff         	b	0x31926c <EnemyManager::awardPoints(Enemy*, int)+0x148> @ imm = #-0x2
  31926c: ab07         	add	r3, sp, #0x1c
  31926e: 4618         	mov	r0, r3
  319270: f09c f350    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c6a0
  319274: f06e f71a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46ee34
  319278: b00b         	add	sp, #0x2c
  31927a: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x31927b); words below are literal-pool data ---
  31927c: 98d8         	ldr	r0, [sp, #0x360]
  31927e: 0061         	lsls	r1, r4, #0x1
  319280: d784         	bvc	0x31918c <EnemyManager::awardPoints(Enemy*, int)+0x68> @ imm = #-0xf8
  319282: ffff de48    	<unknown>
  319286: 004a         	lsls	r2, r1, #0x1
  319288: ddda         	ble	0x319240 <EnemyManager::awardPoints(Enemy*, int)+0x11c> @ imm = #-0x4c
  31928a: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::destroyHawk
//      file offset 0x31928c (= ELF address; Ghidra 0x32928c), 252 bytes, Thumb-2
  31928c: b530         	push	{r4, r5, lr}
  31928e: b087         	sub	sp, #0x1c
  319290: 9001         	str	r0, [sp, #0x4]
  319292: 9100         	str	r1, [sp]
  319294: 9b00         	ldr	r3, [sp]
  319296: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  31929a: ed93 7b0a    	vldr	d7, [r3, #40]
  31929e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3192a2: ee17 0a90    	vmov	r0, s15
  3192a6: f7c3 fced    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c626
  3192aa: 4605         	mov	r5, r0
  3192ac: 9b00         	ldr	r3, [sp]
  3192ae: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  3192b2: ed93 7b0c    	vldr	d7, [r3, #48]
  3192b6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3192ba: ee17 0a90    	vmov	r0, s15
  3192be: f7c3 fce1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c63e
  3192c2: 4604         	mov	r4, r0
  3192c4: f04f 507c    	mov.w	r0, #0x3f000000
  3192c8: f7c3 fcdc    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c648
  3192cc: 4603         	mov	r3, r0
  3192ce: 4628         	mov	r0, r5
  3192d0: 4621         	mov	r1, r4
  3192d2: 461a         	mov	r2, r3
  3192d4: 2300         	movs	r3, #0x0
  3192d6: f280 fd9b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x280b36
  3192da: 4603         	mov	r3, r0
  3192dc: 9304         	str	r3, [sp, #0x10]
  3192de: f2c7 f9e7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c73ce
  3192e2: 4603         	mov	r3, r0
  3192e4: 4618         	mov	r0, r3
  3192e6: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x319384 <EnemyManager::destroyHawk(HawkDrone*)+0xf8>
  3192e8: 447b         	add	r3, pc
  3192ea: 4619         	mov	r1, r3
  3192ec: 9a04         	ldr	r2, [sp, #0x10]
  3192ee: f2c7 fc1d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c783a
  3192f2: 9b00         	ldr	r3, [sp]
  3192f4: 681b         	ldr	r3, [r3]
  3192f6: f503 73e0    	add.w	r3, r3, #0x1c0
  3192fa: 681b         	ldr	r3, [r3]
  3192fc: aa03         	add	r2, sp, #0xc
  3192fe: 4610         	mov	r0, r2
  319300: 9900         	ldr	r1, [sp]
  319302: 4798         	blx	r3
  319304: ab03         	add	r3, sp, #0xc
  319306: 4618         	mov	r0, r3
  319308: f280 fb98    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x280730
  31930c: 4603         	mov	r3, r0
  31930e: 9305         	str	r3, [sp, #0x14]
  319310: ab03         	add	r3, sp, #0xc
  319312: 4618         	mov	r0, r3
  319314: f09c f2fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c5fc
  319318: 9801         	ldr	r0, [sp, #0x4]
  31931a: 9900         	ldr	r1, [sp]
  31931c: 2219         	movs	r2, #0x19
  31931e: f7ff ff01    	bl	0x319124 <EnemyManager::awardPoints(Enemy*, int)> @ imm = #-0x1fe
  319322: 9805         	ldr	r0, [sp, #0x14]
  319324: f280 fb00    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x280600
  319328: 4604         	mov	r4, r0
  31932a: ab02         	add	r3, sp, #0x8
  31932c: 4618         	mov	r0, r3
  31932e: f071 f061    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4710c2
  319332: aa03         	add	r2, sp, #0xc
  319334: ab02         	add	r3, sp, #0x8
  319336: 4610         	mov	r0, r2
  319338: 4621         	mov	r1, r4
  31933a: 461a         	mov	r2, r3
  31933c: f09d f390    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49d720
  319340: ab03         	add	r3, sp, #0xc
  319342: 9801         	ldr	r0, [sp, #0x4]
  319344: 4619         	mov	r1, r3
  319346: f000 fd4b    	bl	0x319de0 <EnemyManager::removeHawkDrone(std::string)> @ imm = #0xa96
  31934a: ab03         	add	r3, sp, #0xc
  31934c: 4618         	mov	r0, r3
  31934e: f09c f2e1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c5c2
  319352: ab02         	add	r3, sp, #0x8
  319354: 4618         	mov	r0, r3
  319356: f071 f051    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4710a2
  31935a: e010         	b	0x31937e <EnemyManager::destroyHawk(HawkDrone*)+0xf2> @ imm = #0x20
  31935c: ab03         	add	r3, sp, #0xc
  31935e: 4618         	mov	r0, r3
  319360: f09c f2d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c5b0
  319364: f06e f6a2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46ed44
  319368: ab03         	add	r3, sp, #0xc
  31936a: 4618         	mov	r0, r3
  31936c: f09c f2d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c5a4
  319370: e7ff         	b	0x319372 <EnemyManager::destroyHawk(HawkDrone*)+0xe6> @ imm = #-0x2
  319372: ab02         	add	r3, sp, #0x8
  319374: 4618         	mov	r0, r3
  319376: f071 f041    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x471082
  31937a: f06e f697    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46ed2e
  31937e: b007         	add	sp, #0x1c
  319380: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x319381); words below are literal-pool data ---
  319382: bf00         	nop
  319384: dd38         	ble	0x3193f8 <EnemyManager::destroyWorm(WormDrone*)+0x70> @ imm = #0x70
  319386: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::destroyWorm
//      file offset 0x319388 (= ELF address; Ghidra 0x329388), 252 bytes, Thumb-2
  319388: b530         	push	{r4, r5, lr}
  31938a: b087         	sub	sp, #0x1c
  31938c: 9001         	str	r0, [sp, #0x4]
  31938e: 9100         	str	r1, [sp]
  319390: 9b00         	ldr	r3, [sp]
  319392: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  319396: ed93 7b0a    	vldr	d7, [r3, #40]
  31939a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31939e: ee17 0a90    	vmov	r0, s15
  3193a2: f7c3 fc6f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c722
  3193a6: 4605         	mov	r5, r0
  3193a8: 9b00         	ldr	r3, [sp]
  3193aa: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  3193ae: ed93 7b0c    	vldr	d7, [r3, #48]
  3193b2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3193b6: ee17 0a90    	vmov	r0, s15
  3193ba: f7c3 fc63    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c73a
  3193be: 4604         	mov	r4, r0
  3193c0: f04f 507c    	mov.w	r0, #0x3f000000
  3193c4: f7c3 fc5e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c744
  3193c8: 4603         	mov	r3, r0
  3193ca: 4628         	mov	r0, r5
  3193cc: 4621         	mov	r1, r4
  3193ce: 461a         	mov	r2, r3
  3193d0: 2300         	movs	r3, #0x0
  3193d2: f280 fd1d    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x280a3a
  3193d6: 4603         	mov	r3, r0
  3193d8: 9304         	str	r3, [sp, #0x10]
  3193da: f2c7 f969    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c72d2
  3193de: 4603         	mov	r3, r0
  3193e0: 4618         	mov	r0, r3
  3193e2: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x319480 <EnemyManager::destroyWorm(WormDrone*)+0xf8>
  3193e4: 447b         	add	r3, pc
  3193e6: 4619         	mov	r1, r3
  3193e8: 9a04         	ldr	r2, [sp, #0x10]
  3193ea: f2c7 fb9f    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c773e
  3193ee: 9b00         	ldr	r3, [sp]
  3193f0: 681b         	ldr	r3, [r3]
  3193f2: f503 73e0    	add.w	r3, r3, #0x1c0
  3193f6: 681b         	ldr	r3, [r3]
  3193f8: aa03         	add	r2, sp, #0xc
  3193fa: 4610         	mov	r0, r2
  3193fc: 9900         	ldr	r1, [sp]
  3193fe: 4798         	blx	r3
  319400: ab03         	add	r3, sp, #0xc
  319402: 4618         	mov	r0, r3
  319404: f280 fb1a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x280634
  319408: 4603         	mov	r3, r0
  31940a: 9305         	str	r3, [sp, #0x14]
  31940c: ab03         	add	r3, sp, #0xc
  31940e: 4618         	mov	r0, r3
  319410: f09c f280    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c500
  319414: 9801         	ldr	r0, [sp, #0x4]
  319416: 9900         	ldr	r1, [sp]
  319418: 2232         	movs	r2, #0x32
  31941a: f7ff fe83    	bl	0x319124 <EnemyManager::awardPoints(Enemy*, int)> @ imm = #-0x2fa
  31941e: 9805         	ldr	r0, [sp, #0x14]
  319420: f280 fa82    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x280504
  319424: 4604         	mov	r4, r0
  319426: ab02         	add	r3, sp, #0x8
  319428: 4618         	mov	r0, r3
  31942a: f070 f7e3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x470fc6
  31942e: aa03         	add	r2, sp, #0xc
  319430: ab02         	add	r3, sp, #0x8
  319432: 4610         	mov	r0, r2
  319434: 4621         	mov	r1, r4
  319436: 461a         	mov	r2, r3
  319438: f09d f312    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49d624
  31943c: ab03         	add	r3, sp, #0xc
  31943e: 9801         	ldr	r0, [sp, #0x4]
  319440: 4619         	mov	r1, r3
  319442: f000 fc5b    	bl	0x319cfc <EnemyManager::removeWormDrone(std::string)> @ imm = #0x8b6
  319446: ab03         	add	r3, sp, #0xc
  319448: 4618         	mov	r0, r3
  31944a: f09c f263    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c4c6
  31944e: ab02         	add	r3, sp, #0x8
  319450: 4618         	mov	r0, r3
  319452: f070 f7d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470fa6
  319456: e010         	b	0x31947a <EnemyManager::destroyWorm(WormDrone*)+0xf2> @ imm = #0x20
  319458: ab03         	add	r3, sp, #0xc
  31945a: 4618         	mov	r0, r3
  31945c: f09c f25a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c4b4
  319460: f06e f624    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46ec48
  319464: ab03         	add	r3, sp, #0xc
  319466: 4618         	mov	r0, r3
  319468: f09c f254    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c4a8
  31946c: e7ff         	b	0x31946e <EnemyManager::destroyWorm(WormDrone*)+0xe6> @ imm = #-0x2
  31946e: ab02         	add	r3, sp, #0x8
  319470: 4618         	mov	r0, r3
  319472: f070 f7c3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470f86
  319476: f06e f619    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46ec32
  31947a: b007         	add	sp, #0x1c
  31947c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31947d); words below are literal-pool data ---
  31947e: bf00         	nop
  319480: dc3c         	bgt	0x3194fc <EnemyManager::destroyHumanoid(HumanoidDrone*)+0x78> @ imm = #0x78
  319482: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::destroyHumanoid
//      file offset 0x319484 (= ELF address; Ghidra 0x329484), 292 bytes, Thumb-2
  319484: b530         	push	{r4, r5, lr}
  319486: b087         	sub	sp, #0x1c
  319488: 9001         	str	r0, [sp, #0x4]
  31948a: 9100         	str	r1, [sp]
  31948c: 9b00         	ldr	r3, [sp]
  31948e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319492: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  319496: ed93 7b0a    	vldr	d7, [r3, #40]
  31949a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31949e: ee17 0a90    	vmov	r0, s15
  3194a2: f7c3 fbef    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c822
  3194a6: 4605         	mov	r5, r0
  3194a8: 9b00         	ldr	r3, [sp]
  3194aa: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3194ae: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3194b2: ed93 7b0c    	vldr	d7, [r3, #48]
  3194b6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3194ba: ee17 0a90    	vmov	r0, s15
  3194be: f7c3 fbe1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c83e
  3194c2: 4604         	mov	r4, r0
  3194c4: f243 3033    	movw	r0, #0x3333
  3194c8: f6c3 7033    	movt	r0, #0x3f33
  3194cc: f7c3 fbda    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3c84c
  3194d0: 4603         	mov	r3, r0
  3194d2: 4628         	mov	r0, r5
  3194d4: 4621         	mov	r1, r4
  3194d6: 461a         	mov	r2, r3
  3194d8: 2300         	movs	r3, #0x0
  3194da: f280 fc99    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x280932
  3194de: 4603         	mov	r3, r0
  3194e0: 9304         	str	r3, [sp, #0x10]
  3194e2: f2c7 f8e5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c71ca
  3194e6: 4603         	mov	r3, r0
  3194e8: 4618         	mov	r0, r3
  3194ea: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3195a0 <EnemyManager::destroyHumanoid(HumanoidDrone*)+0x11c>
  3194ec: 447b         	add	r3, pc
  3194ee: 4619         	mov	r1, r3
  3194f0: 9a04         	ldr	r2, [sp, #0x10]
  3194f2: f2c7 fb1b    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c7636
  3194f6: f2c7 f8db    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c71b6
  3194fa: 4602         	mov	r2, r0
  3194fc: 9b00         	ldr	r3, [sp]
  3194fe: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319502: 4610         	mov	r0, r2
  319504: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3195a4 <EnemyManager::destroyHumanoid(HumanoidDrone*)+0x120>
  319506: 447a         	add	r2, pc
  319508: 4611         	mov	r1, r2
  31950a: 461a         	mov	r2, r3
  31950c: f2c7 fb0e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c761c
  319510: 9b00         	ldr	r3, [sp]
  319512: 681b         	ldr	r3, [r3]
  319514: f503 73e0    	add.w	r3, r3, #0x1c0
  319518: 681b         	ldr	r3, [r3]
  31951a: aa03         	add	r2, sp, #0xc
  31951c: 4610         	mov	r0, r2
  31951e: 9900         	ldr	r1, [sp]
  319520: 4798         	blx	r3
  319522: ab03         	add	r3, sp, #0xc
  319524: 4618         	mov	r0, r3
  319526: f280 fa89    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x280512
  31952a: 4603         	mov	r3, r0
  31952c: 9305         	str	r3, [sp, #0x14]
  31952e: ab03         	add	r3, sp, #0xc
  319530: 4618         	mov	r0, r3
  319532: f09c f1ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c3de
  319536: 9801         	ldr	r0, [sp, #0x4]
  319538: 9900         	ldr	r1, [sp]
  31953a: 224b         	movs	r2, #0x4b
  31953c: f7ff fdf2    	bl	0x319124 <EnemyManager::awardPoints(Enemy*, int)> @ imm = #-0x41c
  319540: 9805         	ldr	r0, [sp, #0x14]
  319542: f280 f9f1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2803e2
  319546: 4604         	mov	r4, r0
  319548: ab02         	add	r3, sp, #0x8
  31954a: 4618         	mov	r0, r3
  31954c: f070 f752    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x470ea4
  319550: aa03         	add	r2, sp, #0xc
  319552: ab02         	add	r3, sp, #0x8
  319554: 4610         	mov	r0, r2
  319556: 4621         	mov	r1, r4
  319558: 461a         	mov	r2, r3
  31955a: f09d f281    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49d502
  31955e: ab03         	add	r3, sp, #0xc
  319560: 9801         	ldr	r0, [sp, #0x4]
  319562: 4619         	mov	r1, r3
  319564: f000 fcb4    	bl	0x319ed0 <EnemyManager::removeHumanoidDrone(std::string)> @ imm = #0x968
  319568: ab03         	add	r3, sp, #0xc
  31956a: 4618         	mov	r0, r3
  31956c: f09c f1d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c3a4
  319570: ab02         	add	r3, sp, #0x8
  319572: 4618         	mov	r0, r3
  319574: f070 f742    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470e84
  319578: e010         	b	0x31959c <EnemyManager::destroyHumanoid(HumanoidDrone*)+0x118> @ imm = #0x20
  31957a: ab03         	add	r3, sp, #0xc
  31957c: 4618         	mov	r0, r3
  31957e: f09c f1c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c392
  319582: f06e f593    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46eb26
  319586: ab03         	add	r3, sp, #0xc
  319588: 4618         	mov	r0, r3
  31958a: f09c f1c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c386
  31958e: e7ff         	b	0x319590 <EnemyManager::destroyHumanoid(HumanoidDrone*)+0x10c> @ imm = #-0x2
  319590: ab02         	add	r3, sp, #0x8
  319592: 4618         	mov	r0, r3
  319594: f070 f732    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470e64
  319598: f06e f588    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46eb10
  31959c: b007         	add	sp, #0x1c
  31959e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31959f); words below are literal-pool data ---
  3195a0: db34         	blt	0x31960c <EnemyManager::updateRemoteStep(float)+0x64> @ imm = #0x68
  3195a2: 004a         	lsls	r2, r1, #0x1
  3195a4: db26         	blt	0x3195f4 <EnemyManager::updateRemoteStep(float)+0x4c> @ imm = #0x4c
  3195a6: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::updateRemoteStep
//      file offset 0x3195a8 (= ELF address; Ghidra 0x3295a8), 402 bytes, Thumb-2
  3195a8: b500         	push	{lr}
  3195aa: b08b         	sub	sp, #0x2c
  3195ac: 9001         	str	r0, [sp, #0x4]
  3195ae: 9100         	str	r1, [sp]
  3195b0: 2300         	movs	r3, #0x0
  3195b2: 9303         	str	r3, [sp, #0xc]
  3195b4: 2300         	movs	r3, #0x0
  3195b6: 9304         	str	r3, [sp, #0x10]
  3195b8: 9b01         	ldr	r3, [sp, #0x4]
  3195ba: 695b         	ldr	r3, [r3, #0x14]
  3195bc: 2b00         	cmp	r3, #0x0
  3195be: d009         	beq	0x3195d4 <EnemyManager::updateRemoteStep(float)+0x2c> @ imm = #0x12
  3195c0: 9b01         	ldr	r3, [sp, #0x4]
  3195c2: 695b         	ldr	r3, [r3, #0x14]
  3195c4: 4618         	mov	r0, r3
  3195c6: f27a fb51    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27a6a2
  3195ca: 4603         	mov	r3, r0
  3195cc: 2b00         	cmp	r3, #0x0
  3195ce: d001         	beq	0x3195d4 <EnemyManager::updateRemoteStep(float)+0x2c> @ imm = #0x2
  3195d0: 2301         	movs	r3, #0x1
  3195d2: e000         	b	0x3195d6 <EnemyManager::updateRemoteStep(float)+0x2e> @ imm = #0x0
  3195d4: 2300         	movs	r3, #0x0
  3195d6: 2b00         	cmp	r3, #0x0
  3195d8: d02c         	beq	0x319634 <EnemyManager::updateRemoteStep(float)+0x8c> @ imm = #0x58
  3195da: 9b01         	ldr	r3, [sp, #0x4]
  3195dc: 695b         	ldr	r3, [r3, #0x14]
  3195de: 695b         	ldr	r3, [r3, #0x14]
  3195e0: 9303         	str	r3, [sp, #0xc]
  3195e2: 9b01         	ldr	r3, [sp, #0x4]
  3195e4: 695b         	ldr	r3, [r3, #0x14]
  3195e6: 695b         	ldr	r3, [r3, #0x14]
  3195e8: 2b00         	cmp	r3, #0x0
  3195ea: d005         	beq	0x3195f8 <EnemyManager::updateRemoteStep(float)+0x50> @ imm = #0xa
  3195ec: 9b01         	ldr	r3, [sp, #0x4]
  3195ee: 695b         	ldr	r3, [r3, #0x14]
  3195f0: 695b         	ldr	r3, [r3, #0x14]
  3195f2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3195f6: e000         	b	0x3195fa <EnemyManager::updateRemoteStep(float)+0x52> @ imm = #0x0
  3195f8: 2300         	movs	r3, #0x0
  3195fa: 9304         	str	r3, [sp, #0x10]
  3195fc: e017         	b	0x31962e <EnemyManager::updateRemoteStep(float)+0x86> @ imm = #0x2e
  3195fe: 9803         	ldr	r0, [sp, #0xc]
  319600: f7e5 f818    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1afd0
  319604: 4603         	mov	r3, r0
  319606: 9307         	str	r3, [sp, #0x1c]
  319608: 9b07         	ldr	r3, [sp, #0x1c]
  31960a: 681b         	ldr	r3, [r3]
  31960c: f503 73ea    	add.w	r3, r3, #0x1d4
  319610: 681b         	ldr	r3, [r3]
  319612: 9807         	ldr	r0, [sp, #0x1c]
  319614: 9900         	ldr	r1, [sp]
  319616: 4798         	blx	r3
  319618: 9b04         	ldr	r3, [sp, #0x10]
  31961a: 9303         	str	r3, [sp, #0xc]
  31961c: 9b04         	ldr	r3, [sp, #0x10]
  31961e: 2b00         	cmp	r3, #0x0
  319620: d003         	beq	0x31962a <EnemyManager::updateRemoteStep(float)+0x82> @ imm = #0x6
  319622: 9b04         	ldr	r3, [sp, #0x10]
  319624: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  319628: e000         	b	0x31962c <EnemyManager::updateRemoteStep(float)+0x84> @ imm = #0x0
  31962a: 2300         	movs	r3, #0x0
  31962c: 9304         	str	r3, [sp, #0x10]
  31962e: 9b03         	ldr	r3, [sp, #0xc]
  319630: 2b00         	cmp	r3, #0x0
  319632: d1e4         	bne	0x3195fe <EnemyManager::updateRemoteStep(float)+0x56> @ imm = #-0x38
  319634: 2300         	movs	r3, #0x0
  319636: 9305         	str	r3, [sp, #0x14]
  319638: 9b01         	ldr	r3, [sp, #0x4]
  31963a: 69db         	ldr	r3, [r3, #0x1c]
  31963c: 2b00         	cmp	r3, #0x0
  31963e: d009         	beq	0x319654 <EnemyManager::updateRemoteStep(float)+0xac> @ imm = #0x12
  319640: 9b01         	ldr	r3, [sp, #0x4]
  319642: 69db         	ldr	r3, [r3, #0x1c]
  319644: 4618         	mov	r0, r3
  319646: f27a fb11    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27a622
  31964a: 4603         	mov	r3, r0
  31964c: 2b00         	cmp	r3, #0x0
  31964e: d001         	beq	0x319654 <EnemyManager::updateRemoteStep(float)+0xac> @ imm = #0x2
  319650: 2301         	movs	r3, #0x1
  319652: e000         	b	0x319656 <EnemyManager::updateRemoteStep(float)+0xae> @ imm = #0x0
  319654: 2300         	movs	r3, #0x0
  319656: 2b00         	cmp	r3, #0x0
  319658: d02c         	beq	0x3196b4 <EnemyManager::updateRemoteStep(float)+0x10c> @ imm = #0x58
  31965a: 9b01         	ldr	r3, [sp, #0x4]
  31965c: 69db         	ldr	r3, [r3, #0x1c]
  31965e: 695b         	ldr	r3, [r3, #0x14]
  319660: 9303         	str	r3, [sp, #0xc]
  319662: 9b01         	ldr	r3, [sp, #0x4]
  319664: 69db         	ldr	r3, [r3, #0x1c]
  319666: 695b         	ldr	r3, [r3, #0x14]
  319668: 2b00         	cmp	r3, #0x0
  31966a: d005         	beq	0x319678 <EnemyManager::updateRemoteStep(float)+0xd0> @ imm = #0xa
  31966c: 9b01         	ldr	r3, [sp, #0x4]
  31966e: 69db         	ldr	r3, [r3, #0x1c]
  319670: 695b         	ldr	r3, [r3, #0x14]
  319672: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  319676: e000         	b	0x31967a <EnemyManager::updateRemoteStep(float)+0xd2> @ imm = #0x0
  319678: 2300         	movs	r3, #0x0
  31967a: 9305         	str	r3, [sp, #0x14]
  31967c: e017         	b	0x3196ae <EnemyManager::updateRemoteStep(float)+0x106> @ imm = #0x2e
  31967e: 9803         	ldr	r0, [sp, #0xc]
  319680: f7e4 ffd8    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1b050
  319684: 4603         	mov	r3, r0
  319686: 9308         	str	r3, [sp, #0x20]
  319688: 9b08         	ldr	r3, [sp, #0x20]
  31968a: 681b         	ldr	r3, [r3]
  31968c: f503 73ea    	add.w	r3, r3, #0x1d4
  319690: 681b         	ldr	r3, [r3]
  319692: 9808         	ldr	r0, [sp, #0x20]
  319694: 9900         	ldr	r1, [sp]
  319696: 4798         	blx	r3
  319698: 9b05         	ldr	r3, [sp, #0x14]
  31969a: 9303         	str	r3, [sp, #0xc]
  31969c: 9b05         	ldr	r3, [sp, #0x14]
  31969e: 2b00         	cmp	r3, #0x0
  3196a0: d003         	beq	0x3196aa <EnemyManager::updateRemoteStep(float)+0x102> @ imm = #0x6
  3196a2: 9b05         	ldr	r3, [sp, #0x14]
  3196a4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3196a8: e000         	b	0x3196ac <EnemyManager::updateRemoteStep(float)+0x104> @ imm = #0x0
  3196aa: 2300         	movs	r3, #0x0
  3196ac: 9305         	str	r3, [sp, #0x14]
  3196ae: 9b03         	ldr	r3, [sp, #0xc]
  3196b0: 2b00         	cmp	r3, #0x0
  3196b2: d1e4         	bne	0x31967e <EnemyManager::updateRemoteStep(float)+0xd6> @ imm = #-0x38
  3196b4: 2300         	movs	r3, #0x0
  3196b6: 9306         	str	r3, [sp, #0x18]
  3196b8: 9b01         	ldr	r3, [sp, #0x4]
  3196ba: 699b         	ldr	r3, [r3, #0x18]
  3196bc: 2b00         	cmp	r3, #0x0
  3196be: d009         	beq	0x3196d4 <EnemyManager::updateRemoteStep(float)+0x12c> @ imm = #0x12
  3196c0: 9b01         	ldr	r3, [sp, #0x4]
  3196c2: 699b         	ldr	r3, [r3, #0x18]
  3196c4: 4618         	mov	r0, r3
  3196c6: f27a fad1    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27a5a2
  3196ca: 4603         	mov	r3, r0
  3196cc: 2b00         	cmp	r3, #0x0
  3196ce: d001         	beq	0x3196d4 <EnemyManager::updateRemoteStep(float)+0x12c> @ imm = #0x2
  3196d0: 2301         	movs	r3, #0x1
  3196d2: e000         	b	0x3196d6 <EnemyManager::updateRemoteStep(float)+0x12e> @ imm = #0x0
  3196d4: 2300         	movs	r3, #0x0
  3196d6: 2b00         	cmp	r3, #0x0
  3196d8: d02c         	beq	0x319734 <EnemyManager::updateRemoteStep(float)+0x18c> @ imm = #0x58
  3196da: 9b01         	ldr	r3, [sp, #0x4]
  3196dc: 699b         	ldr	r3, [r3, #0x18]
  3196de: 695b         	ldr	r3, [r3, #0x14]
  3196e0: 9303         	str	r3, [sp, #0xc]
  3196e2: 9b01         	ldr	r3, [sp, #0x4]
  3196e4: 699b         	ldr	r3, [r3, #0x18]
  3196e6: 695b         	ldr	r3, [r3, #0x14]
  3196e8: 2b00         	cmp	r3, #0x0
  3196ea: d005         	beq	0x3196f8 <EnemyManager::updateRemoteStep(float)+0x150> @ imm = #0xa
  3196ec: 9b01         	ldr	r3, [sp, #0x4]
  3196ee: 699b         	ldr	r3, [r3, #0x18]
  3196f0: 695b         	ldr	r3, [r3, #0x14]
  3196f2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3196f6: e000         	b	0x3196fa <EnemyManager::updateRemoteStep(float)+0x152> @ imm = #0x0
  3196f8: 2300         	movs	r3, #0x0
  3196fa: 9306         	str	r3, [sp, #0x18]
  3196fc: e017         	b	0x31972e <EnemyManager::updateRemoteStep(float)+0x186> @ imm = #0x2e
  3196fe: 9803         	ldr	r0, [sp, #0xc]
  319700: f7e4 ff98    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1b0d0
  319704: 4603         	mov	r3, r0
  319706: 9309         	str	r3, [sp, #0x24]
  319708: 9b09         	ldr	r3, [sp, #0x24]
  31970a: 681b         	ldr	r3, [r3]
  31970c: f503 73ea    	add.w	r3, r3, #0x1d4
  319710: 681b         	ldr	r3, [r3]
  319712: 9809         	ldr	r0, [sp, #0x24]
  319714: 9900         	ldr	r1, [sp]
  319716: 4798         	blx	r3
  319718: 9b06         	ldr	r3, [sp, #0x18]
  31971a: 9303         	str	r3, [sp, #0xc]
  31971c: 9b06         	ldr	r3, [sp, #0x18]
  31971e: 2b00         	cmp	r3, #0x0
  319720: d003         	beq	0x31972a <EnemyManager::updateRemoteStep(float)+0x182> @ imm = #0x6
  319722: 9b06         	ldr	r3, [sp, #0x18]
  319724: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  319728: e000         	b	0x31972c <EnemyManager::updateRemoteStep(float)+0x184> @ imm = #0x0
  31972a: 2300         	movs	r3, #0x0
  31972c: 9306         	str	r3, [sp, #0x18]
  31972e: 9b03         	ldr	r3, [sp, #0xc]
  319730: 2b00         	cmp	r3, #0x0
  319732: d1e4         	bne	0x3196fe <EnemyManager::updateRemoteStep(float)+0x156> @ imm = #-0x38
  319734: b00b         	add	sp, #0x2c
  319736: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::updateStep
//      file offset 0x31973c (= ELF address; Ghidra 0x32973c), 756 bytes, Thumb-2
  31973c: b510         	push	{r4, lr}
  31973e: b08a         	sub	sp, #0x28
  319740: 9001         	str	r0, [sp, #0x4]
  319742: 9100         	str	r1, [sp]
  319744: 2300         	movs	r3, #0x0
  319746: 9303         	str	r3, [sp, #0xc]
  319748: 2300         	movs	r3, #0x0
  31974a: 9304         	str	r3, [sp, #0x10]
  31974c: 9b01         	ldr	r3, [sp, #0x4]
  31974e: 695b         	ldr	r3, [r3, #0x14]
  319750: 2b00         	cmp	r3, #0x0
  319752: d009         	beq	0x319768 <EnemyManager::updateStep(float)+0x2c> @ imm = #0x12
  319754: 9b01         	ldr	r3, [sp, #0x4]
  319756: 695b         	ldr	r3, [r3, #0x14]
  319758: 4618         	mov	r0, r3
  31975a: f27a fa87    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27a50e
  31975e: 4603         	mov	r3, r0
  319760: 2b00         	cmp	r3, #0x0
  319762: d001         	beq	0x319768 <EnemyManager::updateStep(float)+0x2c> @ imm = #0x2
  319764: 2301         	movs	r3, #0x1
  319766: e000         	b	0x31976a <EnemyManager::updateStep(float)+0x2e> @ imm = #0x0
  319768: 2300         	movs	r3, #0x0
  31976a: 2b00         	cmp	r3, #0x0
  31976c: d05b         	beq	0x319826 <EnemyManager::updateStep(float)+0xea> @ imm = #0xb6
  31976e: 9b01         	ldr	r3, [sp, #0x4]
  319770: 695b         	ldr	r3, [r3, #0x14]
  319772: 695b         	ldr	r3, [r3, #0x14]
  319774: 9303         	str	r3, [sp, #0xc]
  319776: 9b01         	ldr	r3, [sp, #0x4]
  319778: 695b         	ldr	r3, [r3, #0x14]
  31977a: 695b         	ldr	r3, [r3, #0x14]
  31977c: 2b00         	cmp	r3, #0x0
  31977e: d005         	beq	0x31978c <EnemyManager::updateStep(float)+0x50> @ imm = #0xa
  319780: 9b01         	ldr	r3, [sp, #0x4]
  319782: 695b         	ldr	r3, [r3, #0x14]
  319784: 695b         	ldr	r3, [r3, #0x14]
  319786: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31978a: e000         	b	0x31978e <EnemyManager::updateStep(float)+0x52> @ imm = #0x0
  31978c: 2300         	movs	r3, #0x0
  31978e: 9304         	str	r3, [sp, #0x10]
  319790: e046         	b	0x319820 <EnemyManager::updateStep(float)+0xe4> @ imm = #0x8c
  319792: 9803         	ldr	r0, [sp, #0xc]
  319794: f7e4 ff4e    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1b164
  319798: 4603         	mov	r3, r0
  31979a: 9307         	str	r3, [sp, #0x1c]
  31979c: 9b07         	ldr	r3, [sp, #0x1c]
  31979e: 681b         	ldr	r3, [r3]
  3197a0: f503 73e8    	add.w	r3, r3, #0x1d0
  3197a4: 681b         	ldr	r3, [r3]
  3197a6: 9807         	ldr	r0, [sp, #0x1c]
  3197a8: 9900         	ldr	r1, [sp]
  3197aa: 4798         	blx	r3
  3197ac: 9b07         	ldr	r3, [sp, #0x1c]
  3197ae: 681b         	ldr	r3, [r3]
  3197b0: f503 73f2    	add.w	r3, r3, #0x1e4
  3197b4: 681b         	ldr	r3, [r3]
  3197b6: 9807         	ldr	r0, [sp, #0x1c]
  3197b8: 4798         	blx	r3
  3197ba: 4603         	mov	r3, r0
  3197bc: 2b00         	cmp	r3, #0x0
  3197be: bf14         	ite	ne
  3197c0: 2300         	movne	r3, #0x0
  3197c2: 2301         	moveq	r3, #0x1
  3197c4: b2db         	uxtb	r3, r3
  3197c6: 2b00         	cmp	r3, #0x0
  3197c8: d01f         	beq	0x31980a <EnemyManager::updateStep(float)+0xce> @ imm = #0x3e
  3197ca: 9801         	ldr	r0, [sp, #0x4]
  3197cc: 9907         	ldr	r1, [sp, #0x1c]
  3197ce: f7ff fd5d    	bl	0x31928c <EnemyManager::destroyHawk(HawkDrone*)> @ imm = #-0x546
  3197d2: f2c6 ff6d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c6eda
  3197d6: 4604         	mov	r4, r0
  3197d8: 9b07         	ldr	r3, [sp, #0x1c]
  3197da: 681b         	ldr	r3, [r3]
  3197dc: f503 73e0    	add.w	r3, r3, #0x1c0
  3197e0: 681b         	ldr	r3, [r3]
  3197e2: aa02         	add	r2, sp, #0x8
  3197e4: 4610         	mov	r0, r2
  3197e6: 9907         	ldr	r1, [sp, #0x1c]
  3197e8: 4798         	blx	r3
  3197ea: ab02         	add	r3, sp, #0x8
  3197ec: 4618         	mov	r0, r3
  3197ee: f280 f925    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28024a
  3197f2: 4603         	mov	r3, r0
  3197f4: 4620         	mov	r0, r4
  3197f6: 4a8b         	ldr	r2, [pc, #0x22c]        @ 0x319a24 <EnemyManager::updateStep(float)+0x2e8>
  3197f8: 447a         	add	r2, pc
  3197fa: 4611         	mov	r1, r2
  3197fc: 461a         	mov	r2, r3
  3197fe: f2c7 f995    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c732a
  319802: ab02         	add	r3, sp, #0x8
  319804: 4618         	mov	r0, r3
  319806: f09c f085    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c10a
  31980a: 9b04         	ldr	r3, [sp, #0x10]
  31980c: 9303         	str	r3, [sp, #0xc]
  31980e: 9b04         	ldr	r3, [sp, #0x10]
  319810: 2b00         	cmp	r3, #0x0
  319812: d003         	beq	0x31981c <EnemyManager::updateStep(float)+0xe0> @ imm = #0x6
  319814: 9b04         	ldr	r3, [sp, #0x10]
  319816: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31981a: e000         	b	0x31981e <EnemyManager::updateStep(float)+0xe2> @ imm = #0x0
  31981c: 2300         	movs	r3, #0x0
  31981e: 9304         	str	r3, [sp, #0x10]
  319820: 9b03         	ldr	r3, [sp, #0xc]
  319822: 2b00         	cmp	r3, #0x0
  319824: d1b5         	bne	0x319792 <EnemyManager::updateStep(float)+0x56> @ imm = #-0x96
  319826: 2300         	movs	r3, #0x0
  319828: 9305         	str	r3, [sp, #0x14]
  31982a: 9b01         	ldr	r3, [sp, #0x4]
  31982c: 69db         	ldr	r3, [r3, #0x1c]
  31982e: 2b00         	cmp	r3, #0x0
  319830: d009         	beq	0x319846 <EnemyManager::updateStep(float)+0x10a> @ imm = #0x12
  319832: 9b01         	ldr	r3, [sp, #0x4]
  319834: 69db         	ldr	r3, [r3, #0x1c]
  319836: 4618         	mov	r0, r3
  319838: f27a fa18    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27a430
  31983c: 4603         	mov	r3, r0
  31983e: 2b00         	cmp	r3, #0x0
  319840: d001         	beq	0x319846 <EnemyManager::updateStep(float)+0x10a> @ imm = #0x2
  319842: 2301         	movs	r3, #0x1
  319844: e000         	b	0x319848 <EnemyManager::updateStep(float)+0x10c> @ imm = #0x0
  319846: 2300         	movs	r3, #0x0
  319848: 2b00         	cmp	r3, #0x0
  31984a: d05b         	beq	0x319904 <EnemyManager::updateStep(float)+0x1c8> @ imm = #0xb6
  31984c: 9b01         	ldr	r3, [sp, #0x4]
  31984e: 69db         	ldr	r3, [r3, #0x1c]
  319850: 695b         	ldr	r3, [r3, #0x14]
  319852: 9303         	str	r3, [sp, #0xc]
  319854: 9b01         	ldr	r3, [sp, #0x4]
  319856: 69db         	ldr	r3, [r3, #0x1c]
  319858: 695b         	ldr	r3, [r3, #0x14]
  31985a: 2b00         	cmp	r3, #0x0
  31985c: d005         	beq	0x31986a <EnemyManager::updateStep(float)+0x12e> @ imm = #0xa
  31985e: 9b01         	ldr	r3, [sp, #0x4]
  319860: 69db         	ldr	r3, [r3, #0x1c]
  319862: 695b         	ldr	r3, [r3, #0x14]
  319864: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  319868: e000         	b	0x31986c <EnemyManager::updateStep(float)+0x130> @ imm = #0x0
  31986a: 2300         	movs	r3, #0x0
  31986c: 9305         	str	r3, [sp, #0x14]
  31986e: e046         	b	0x3198fe <EnemyManager::updateStep(float)+0x1c2> @ imm = #0x8c
  319870: 9803         	ldr	r0, [sp, #0xc]
  319872: f7e4 fedf    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1b242
  319876: 4603         	mov	r3, r0
  319878: 9308         	str	r3, [sp, #0x20]
  31987a: 9b08         	ldr	r3, [sp, #0x20]
  31987c: 681b         	ldr	r3, [r3]
  31987e: f503 73e8    	add.w	r3, r3, #0x1d0
  319882: 681b         	ldr	r3, [r3]
  319884: 9808         	ldr	r0, [sp, #0x20]
  319886: 9900         	ldr	r1, [sp]
  319888: 4798         	blx	r3
  31988a: 9b08         	ldr	r3, [sp, #0x20]
  31988c: 681b         	ldr	r3, [r3]
  31988e: f503 73f2    	add.w	r3, r3, #0x1e4
  319892: 681b         	ldr	r3, [r3]
  319894: 9808         	ldr	r0, [sp, #0x20]
  319896: 4798         	blx	r3
  319898: 4603         	mov	r3, r0
  31989a: 2b00         	cmp	r3, #0x0
  31989c: bf14         	ite	ne
  31989e: 2300         	movne	r3, #0x0
  3198a0: 2301         	moveq	r3, #0x1
  3198a2: b2db         	uxtb	r3, r3
  3198a4: 2b00         	cmp	r3, #0x0
  3198a6: d01f         	beq	0x3198e8 <EnemyManager::updateStep(float)+0x1ac> @ imm = #0x3e
  3198a8: 9801         	ldr	r0, [sp, #0x4]
  3198aa: 9908         	ldr	r1, [sp, #0x20]
  3198ac: f7ff fd6c    	bl	0x319388 <EnemyManager::destroyWorm(WormDrone*)> @ imm = #-0x528
  3198b0: f2c6 fefe    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c6dfc
  3198b4: 4604         	mov	r4, r0
  3198b6: 9b08         	ldr	r3, [sp, #0x20]
  3198b8: 681b         	ldr	r3, [r3]
  3198ba: f503 73e0    	add.w	r3, r3, #0x1c0
  3198be: 681b         	ldr	r3, [r3]
  3198c0: aa02         	add	r2, sp, #0x8
  3198c2: 4610         	mov	r0, r2
  3198c4: 9908         	ldr	r1, [sp, #0x20]
  3198c6: 4798         	blx	r3
  3198c8: ab02         	add	r3, sp, #0x8
  3198ca: 4618         	mov	r0, r3
  3198cc: f280 f8b6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28016c
  3198d0: 4603         	mov	r3, r0
  3198d2: 4620         	mov	r0, r4
  3198d4: 4a54         	ldr	r2, [pc, #0x150]        @ 0x319a28 <EnemyManager::updateStep(float)+0x2ec>
  3198d6: 447a         	add	r2, pc
  3198d8: 4611         	mov	r1, r2
  3198da: 461a         	mov	r2, r3
  3198dc: f2c7 f926    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c724c
  3198e0: ab02         	add	r3, sp, #0x8
  3198e2: 4618         	mov	r0, r3
  3198e4: f09c f016    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49c02c
  3198e8: 9b05         	ldr	r3, [sp, #0x14]
  3198ea: 9303         	str	r3, [sp, #0xc]
  3198ec: 9b05         	ldr	r3, [sp, #0x14]
  3198ee: 2b00         	cmp	r3, #0x0
  3198f0: d003         	beq	0x3198fa <EnemyManager::updateStep(float)+0x1be> @ imm = #0x6
  3198f2: 9b05         	ldr	r3, [sp, #0x14]
  3198f4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3198f8: e000         	b	0x3198fc <EnemyManager::updateStep(float)+0x1c0> @ imm = #0x0
  3198fa: 2300         	movs	r3, #0x0
  3198fc: 9305         	str	r3, [sp, #0x14]
  3198fe: 9b03         	ldr	r3, [sp, #0xc]
  319900: 2b00         	cmp	r3, #0x0
  319902: d1b5         	bne	0x319870 <EnemyManager::updateStep(float)+0x134> @ imm = #-0x96
  319904: 2300         	movs	r3, #0x0
  319906: 9306         	str	r3, [sp, #0x18]
  319908: 9b01         	ldr	r3, [sp, #0x4]
  31990a: 699b         	ldr	r3, [r3, #0x18]
  31990c: 2b00         	cmp	r3, #0x0
  31990e: d009         	beq	0x319924 <EnemyManager::updateStep(float)+0x1e8> @ imm = #0x12
  319910: 9b01         	ldr	r3, [sp, #0x4]
  319912: 699b         	ldr	r3, [r3, #0x18]
  319914: 4618         	mov	r0, r3
  319916: f27a f9a9    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27a352
  31991a: 4603         	mov	r3, r0
  31991c: 2b00         	cmp	r3, #0x0
  31991e: d001         	beq	0x319924 <EnemyManager::updateStep(float)+0x1e8> @ imm = #0x2
  319920: 2301         	movs	r3, #0x1
  319922: e000         	b	0x319926 <EnemyManager::updateStep(float)+0x1ea> @ imm = #0x0
  319924: 2300         	movs	r3, #0x0
  319926: 2b00         	cmp	r3, #0x0
  319928: d07a         	beq	0x319a20 <EnemyManager::updateStep(float)+0x2e4> @ imm = #0xf4
  31992a: 9b01         	ldr	r3, [sp, #0x4]
  31992c: 699b         	ldr	r3, [r3, #0x18]
  31992e: 695b         	ldr	r3, [r3, #0x14]
  319930: 9303         	str	r3, [sp, #0xc]
  319932: 9b01         	ldr	r3, [sp, #0x4]
  319934: 699b         	ldr	r3, [r3, #0x18]
  319936: 695b         	ldr	r3, [r3, #0x14]
  319938: 2b00         	cmp	r3, #0x0
  31993a: d005         	beq	0x319948 <EnemyManager::updateStep(float)+0x20c> @ imm = #0xa
  31993c: 9b01         	ldr	r3, [sp, #0x4]
  31993e: 699b         	ldr	r3, [r3, #0x18]
  319940: 695b         	ldr	r3, [r3, #0x14]
  319942: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  319946: e000         	b	0x31994a <EnemyManager::updateStep(float)+0x20e> @ imm = #0x0
  319948: 2300         	movs	r3, #0x0
  31994a: 9306         	str	r3, [sp, #0x18]
  31994c: e052         	b	0x3199f4 <EnemyManager::updateStep(float)+0x2b8> @ imm = #0xa4
  31994e: 9803         	ldr	r0, [sp, #0xc]
  319950: f7e4 fe70    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1b320
  319954: 4603         	mov	r3, r0
  319956: 9309         	str	r3, [sp, #0x24]
  319958: 9b09         	ldr	r3, [sp, #0x24]
  31995a: 681b         	ldr	r3, [r3]
  31995c: f503 73e8    	add.w	r3, r3, #0x1d0
  319960: 681b         	ldr	r3, [r3]
  319962: 9809         	ldr	r0, [sp, #0x24]
  319964: 9900         	ldr	r1, [sp]
  319966: 4798         	blx	r3
  319968: 9b09         	ldr	r3, [sp, #0x24]
  31996a: 681b         	ldr	r3, [r3]
  31996c: f503 73f2    	add.w	r3, r3, #0x1e4
  319970: 681b         	ldr	r3, [r3]
  319972: 9809         	ldr	r0, [sp, #0x24]
  319974: 4798         	blx	r3
  319976: 4603         	mov	r3, r0
  319978: 2b00         	cmp	r3, #0x0
  31997a: bf14         	ite	ne
  31997c: 2300         	movne	r3, #0x0
  31997e: 2301         	moveq	r3, #0x1
  319980: b2db         	uxtb	r3, r3
  319982: 2b00         	cmp	r3, #0x0
  319984: d02b         	beq	0x3199de <EnemyManager::updateStep(float)+0x2a2> @ imm = #0x56
  319986: 9801         	ldr	r0, [sp, #0x4]
  319988: 9909         	ldr	r1, [sp, #0x24]
  31998a: f7ff fd7b    	bl	0x319484 <EnemyManager::destroyHumanoid(HumanoidDrone*)> @ imm = #-0x50a
  31998e: f2c6 fe8f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c6d1e
  319992: 4604         	mov	r4, r0
  319994: 9b09         	ldr	r3, [sp, #0x24]
  319996: 681b         	ldr	r3, [r3]
  319998: f503 73e0    	add.w	r3, r3, #0x1c0
  31999c: 681b         	ldr	r3, [r3]
  31999e: aa02         	add	r2, sp, #0x8
  3199a0: 4610         	mov	r0, r2
  3199a2: 9909         	ldr	r1, [sp, #0x24]
  3199a4: 4798         	blx	r3
  3199a6: ab02         	add	r3, sp, #0x8
  3199a8: 4618         	mov	r0, r3
  3199aa: f280 f847    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28008e
  3199ae: 4603         	mov	r3, r0
  3199b0: 4620         	mov	r0, r4
  3199b2: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x319a2c <EnemyManager::updateStep(float)+0x2f0>
  3199b4: 447a         	add	r2, pc
  3199b6: 4611         	mov	r1, r2
  3199b8: 461a         	mov	r2, r3
  3199ba: f2c7 f8b7    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c716e
  3199be: ab02         	add	r3, sp, #0x8
  3199c0: 4618         	mov	r0, r3
  3199c2: f09b f7a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bf4e
  3199c6: 9b09         	ldr	r3, [sp, #0x24]
  3199c8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3199cc: 681b         	ldr	r3, [r3]
  3199ce: f503 7302    	add.w	r3, r3, #0x208
  3199d2: 681b         	ldr	r3, [r3]
  3199d4: 9a09         	ldr	r2, [sp, #0x24]
  3199d6: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3199da: 4610         	mov	r0, r2
  3199dc: 4798         	blx	r3
  3199de: 9b06         	ldr	r3, [sp, #0x18]
  3199e0: 9303         	str	r3, [sp, #0xc]
  3199e2: 9b06         	ldr	r3, [sp, #0x18]
  3199e4: 2b00         	cmp	r3, #0x0
  3199e6: d003         	beq	0x3199f0 <EnemyManager::updateStep(float)+0x2b4> @ imm = #0x6
  3199e8: 9b06         	ldr	r3, [sp, #0x18]
  3199ea: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3199ee: e000         	b	0x3199f2 <EnemyManager::updateStep(float)+0x2b6> @ imm = #0x0
  3199f0: 2300         	movs	r3, #0x0
  3199f2: 9306         	str	r3, [sp, #0x18]
  3199f4: 9b03         	ldr	r3, [sp, #0xc]
  3199f6: 2b00         	cmp	r3, #0x0
  3199f8: d1a9         	bne	0x31994e <EnemyManager::updateStep(float)+0x212> @ imm = #-0xae
  3199fa: e011         	b	0x319a20 <EnemyManager::updateStep(float)+0x2e4> @ imm = #0x22
  3199fc: ab02         	add	r3, sp, #0x8
  3199fe: 4618         	mov	r0, r3
  319a00: f09b f788    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bf10
  319a04: f06e f352    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46e6a4
  319a08: ab02         	add	r3, sp, #0x8
  319a0a: 4618         	mov	r0, r3
  319a0c: f09b f782    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bf04
  319a10: f06e f34c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46e698
  319a14: ab02         	add	r3, sp, #0x8
  319a16: 4618         	mov	r0, r3
  319a18: f09b f77c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bef8
  319a1c: f06e f346    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46e68c
  319a20: b00a         	add	sp, #0x28
  319a22: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x319a23); words below are literal-pool data ---
  319a24: d844         	bhi	0x319ab0 <EnemyManager::spawnWormDrone(WormDrone*)+0x80> @ imm = #0x88
  319a26: 004a         	lsls	r2, r1, #0x1
  319a28: d766         	bvc	0x319af8 <EnemyManager::spawnWormDrone(WormDrone*)+0xc8> @ imm = #0xcc
  319a2a: 004a         	lsls	r2, r1, #0x1
  319a2c: d688         	bvs	0x319940 <EnemyManager::updateStep(float)+0x204> @ imm = #-0xf0
  319a2e: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::spawnWormDrone
//      file offset 0x319a30 (= ELF address; Ghidra 0x329a30), 240 bytes, Thumb-2
  319a30: b530         	push	{r4, r5, lr}
  319a32: b08b         	sub	sp, #0x2c
  319a34: 9003         	str	r0, [sp, #0xc]
  319a36: 9102         	str	r1, [sp, #0x8]
  319a38: 4c37         	ldr	r4, [pc, #0xdc]         @ 0x319b18 <EnemyManager::spawnWormDrone(WormDrone*)+0xe8>
  319a3a: 447c         	add	r4, pc
  319a3c: 9b02         	ldr	r3, [sp, #0x8]
  319a3e: 2b00         	cmp	r3, #0x0
  319a40: d05f         	beq	0x319b02 <EnemyManager::spawnWormDrone(WormDrone*)+0xd2> @ imm = #0xbe
  319a42: 9b02         	ldr	r3, [sp, #0x8]
  319a44: 681b         	ldr	r3, [r3]
  319a46: f503 73e0    	add.w	r3, r3, #0x1c0
  319a4a: 681b         	ldr	r3, [r3]
  319a4c: aa05         	add	r2, sp, #0x14
  319a4e: 4610         	mov	r0, r2
  319a50: 9902         	ldr	r1, [sp, #0x8]
  319a52: 4798         	blx	r3
  319a54: 9b03         	ldr	r3, [sp, #0xc]
  319a56: 69da         	ldr	r2, [r3, #0x1c]
  319a58: ab05         	add	r3, sp, #0x14
  319a5a: 4610         	mov	r0, r2
  319a5c: 9902         	ldr	r1, [sp, #0x8]
  319a5e: 461a         	mov	r2, r3
  319a60: f27a ff6a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27aed4
  319a64: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x319b1c <EnemyManager::spawnWormDrone(WormDrone*)+0xec>
  319a66: 58e3         	ldr	r3, [r4, r3]
  319a68: 681a         	ldr	r2, [r3]
  319a6a: ab05         	add	r3, sp, #0x14
  319a6c: 4610         	mov	r0, r2
  319a6e: 9902         	ldr	r1, [sp, #0x8]
  319a70: 461a         	mov	r2, r3
  319a72: f27a ff61    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27aec2
  319a76: 9b03         	ldr	r3, [sp, #0xc]
  319a78: 6a9a         	ldr	r2, [r3, #0x28]
  319a7a: ab05         	add	r3, sp, #0x14
  319a7c: 4610         	mov	r0, r2
  319a7e: 4619         	mov	r1, r3
  319a80: f27b fc1a    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b834
  319a84: 9b02         	ldr	r3, [sp, #0x8]
  319a86: 681b         	ldr	r3, [r3]
  319a88: f503 7305    	add.w	r3, r3, #0x214
  319a8c: 681b         	ldr	r3, [r3]
  319a8e: 9802         	ldr	r0, [sp, #0x8]
  319a90: f240 2141    	movw	r1, #0x241
  319a94: 4798         	blx	r3
  319a96: 9b02         	ldr	r3, [sp, #0x8]
  319a98: 2201         	movs	r2, #0x1
  319a9a: f883 216c    	strb.w	r2, [r3, #0x16c]
  319a9e: 9b02         	ldr	r3, [sp, #0x8]
  319aa0: 681b         	ldr	r3, [r3]
  319aa2: f503 73e6    	add.w	r3, r3, #0x1cc
  319aa6: 681b         	ldr	r3, [r3]
  319aa8: 9802         	ldr	r0, [sp, #0x8]
  319aaa: 4798         	blx	r3
  319aac: 9b02         	ldr	r3, [sp, #0x8]
  319aae: 681b         	ldr	r3, [r3]
  319ab0: f503 73f4    	add.w	r3, r3, #0x1e8
  319ab4: 681b         	ldr	r3, [r3]
  319ab6: 9802         	ldr	r0, [sp, #0x8]
  319ab8: 214b         	movs	r1, #0x4b
  319aba: 4798         	blx	r3
  319abc: 9b02         	ldr	r3, [sp, #0x8]
  319abe: 681b         	ldr	r3, [r3]
  319ac0: f503 7306    	add.w	r3, r3, #0x218
  319ac4: 681c         	ldr	r4, [r3]
  319ac6: 9d02         	ldr	r5, [sp, #0x8]
  319ac8: ab06         	add	r3, sp, #0x18
  319aca: 4618         	mov	r0, r3
  319acc: ed9f 0b0e    	vldr	d0, [pc, #56]           @ 0x319b08 <EnemyManager::spawnWormDrone(WormDrone*)+0xd8>
  319ad0: ed9f 1b0f    	vldr	d1, [pc, #60]           @ 0x319b10 <EnemyManager::spawnWormDrone(WormDrone*)+0xe0>
  319ad4: f7fe f9b6    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x1c94
  319ad8: 466b         	mov	r3, sp
  319ada: aa08         	add	r2, sp, #0x20
  319adc: e892 0003    	ldm.w	r2, {r0, r1}
  319ae0: e883 0003    	stm.w	r3, {r0, r1}
  319ae4: ab06         	add	r3, sp, #0x18
  319ae6: cb0c         	ldm	r3, {r2, r3}
  319ae8: 4628         	mov	r0, r5
  319aea: 47a0         	blx	r4
  319aec: ab05         	add	r3, sp, #0x14
  319aee: 4618         	mov	r0, r3
  319af0: f09b f710    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49be20
  319af4: e005         	b	0x319b02 <EnemyManager::spawnWormDrone(WormDrone*)+0xd2> @ imm = #0xa
  319af6: ab05         	add	r3, sp, #0x14
  319af8: 4618         	mov	r0, r3
  319afa: f09b f70b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49be16
  319afe: f06e f2d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46e5aa
  319b02: b00b         	add	sp, #0x2c
  319b04: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x319b05); words below are literal-pool data ---
  319b06: bf00         	nop
  319b14: 0000         	movs	r0, r0
  319b16: c069         	stm	r0!, {r0, r3, r5, r6}
  319b18: 8fce         	ldrh	r6, [r1, #0x3e]
  319b1a: 0061         	lsls	r1, r4, #0x1
  319b1c: da08         	bge	0x319b30 <EnemyManager::spawnHawkDrone(HawkDrone*)+0x10> @ imm = #0x10
  319b1e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== EnemyManager::spawnHawkDrone
//      file offset 0x319b20 (= ELF address; Ghidra 0x329b20), 232 bytes, Thumb-2
  319b20: b530         	push	{r4, r5, lr}
  319b22: b08b         	sub	sp, #0x2c
  319b24: 9003         	str	r0, [sp, #0xc]
  319b26: 9102         	str	r1, [sp, #0x8]
  319b28: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x319c00 <EnemyManager::spawnHawkDrone(HawkDrone*)+0xe0>
  319b2a: 447c         	add	r4, pc
  319b2c: 9b02         	ldr	r3, [sp, #0x8]
  319b2e: 2b00         	cmp	r3, #0x0
  319b30: d05f         	beq	0x319bf2 <EnemyManager::spawnHawkDrone(HawkDrone*)+0xd2> @ imm = #0xbe
  319b32: 9b02         	ldr	r3, [sp, #0x8]
  319b34: 681b         	ldr	r3, [r3]
  319b36: f503 73e0    	add.w	r3, r3, #0x1c0
  319b3a: 681b         	ldr	r3, [r3]
  319b3c: aa05         	add	r2, sp, #0x14
  319b3e: 4610         	mov	r0, r2
  319b40: 9902         	ldr	r1, [sp, #0x8]
  319b42: 4798         	blx	r3
  319b44: 9b03         	ldr	r3, [sp, #0xc]
  319b46: 695a         	ldr	r2, [r3, #0x14]
  319b48: ab05         	add	r3, sp, #0x14
  319b4a: 4610         	mov	r0, r2
  319b4c: 9902         	ldr	r1, [sp, #0x8]
  319b4e: 461a         	mov	r2, r3
  319b50: f27a fef2    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27ade4
  319b54: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x319c04 <EnemyManager::spawnHawkDrone(HawkDrone*)+0xe4>
  319b56: 58e3         	ldr	r3, [r4, r3]
  319b58: 681a         	ldr	r2, [r3]
  319b5a: ab05         	add	r3, sp, #0x14
  319b5c: 4610         	mov	r0, r2
  319b5e: 9902         	ldr	r1, [sp, #0x8]
  319b60: 461a         	mov	r2, r3
  319b62: f27a fee9    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27add2
  319b66: 9b03         	ldr	r3, [sp, #0xc]
  319b68: 6a1a         	ldr	r2, [r3, #0x20]
  319b6a: ab05         	add	r3, sp, #0x14
  319b6c: 4610         	mov	r0, r2
  319b6e: 4619         	mov	r1, r3
  319b70: f27b fba2    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b744
  319b74: 9b02         	ldr	r3, [sp, #0x8]
  319b76: 681b         	ldr	r3, [r3]
  319b78: f503 7305    	add.w	r3, r3, #0x214
  319b7c: 681b         	ldr	r3, [r3]
  319b7e: 9802         	ldr	r0, [sp, #0x8]
  319b80: f240 2141    	movw	r1, #0x241
  319b84: 4798         	blx	r3
  319b86: 9b02         	ldr	r3, [sp, #0x8]
  319b88: 2201         	movs	r2, #0x1
  319b8a: f883 216c    	strb.w	r2, [r3, #0x16c]
  319b8e: 9b02         	ldr	r3, [sp, #0x8]
  319b90: 681b         	ldr	r3, [r3]
  319b92: f503 73e6    	add.w	r3, r3, #0x1cc
  319b96: 681b         	ldr	r3, [r3]
  319b98: 9802         	ldr	r0, [sp, #0x8]
  319b9a: 4798         	blx	r3
  319b9c: 9b02         	ldr	r3, [sp, #0x8]
  319b9e: 681b         	ldr	r3, [r3]
  319ba0: f503 73f4    	add.w	r3, r3, #0x1e8
  319ba4: 681b         	ldr	r3, [r3]
  319ba6: 9802         	ldr	r0, [sp, #0x8]
  319ba8: 2132         	movs	r1, #0x32
  319baa: 4798         	blx	r3
  319bac: 9b02         	ldr	r3, [sp, #0x8]
  319bae: 681b         	ldr	r3, [r3]
  319bb0: f503 7306    	add.w	r3, r3, #0x218
  319bb4: 681c         	ldr	r4, [r3]
  319bb6: 9d02         	ldr	r5, [sp, #0x8]
  319bb8: ab06         	add	r3, sp, #0x18
  319bba: 4618         	mov	r0, r3
  319bbc: ed9f 0b0e    	vldr	d0, [pc, #56]           @ 0x319bf8 <EnemyManager::spawnHawkDrone(HawkDrone*)+0xd8>
  319bc0: ed9f 1b0d    	vldr	d1, [pc, #52]           @ 0x319bf8 <EnemyManager::spawnHawkDrone(HawkDrone*)+0xd8>
  319bc4: f7fe f93e    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x1d84
  319bc8: 466b         	mov	r3, sp
  319bca: aa08         	add	r2, sp, #0x20
  319bcc: e892 0003    	ldm.w	r2, {r0, r1}
  319bd0: e883 0003    	stm.w	r3, {r0, r1}
  319bd4: ab06         	add	r3, sp, #0x18
  319bd6: cb0c         	ldm	r3, {r2, r3}
  319bd8: 4628         	mov	r0, r5
  319bda: 47a0         	blx	r4
  319bdc: ab05         	add	r3, sp, #0x14
  319bde: 4618         	mov	r0, r3
  319be0: f09b f698    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bd30
  319be4: e005         	b	0x319bf2 <EnemyManager::spawnHawkDrone(HawkDrone*)+0xd2> @ imm = #0xa
  319be6: ab05         	add	r3, sp, #0x14
  319be8: 4618         	mov	r0, r3
  319bea: f09b f693    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bd26
  319bee: f06e f25d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46e4ba
  319bf2: b00b         	add	sp, #0x2c
  319bf4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x319bf5); words below are literal-pool data ---
  319bf6: bf00         	nop
  319c00: 8ede         	ldrh	r6, [r3, #0x36]
  319c02: 0061         	lsls	r1, r4, #0x1
  319c04: da08         	bge	0x319c18 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)+0x10> @ imm = #0x10
  319c06: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== EnemyManager::spawnHumanoidDrone
//      file offset 0x319c08 (= ELF address; Ghidra 0x329c08), 244 bytes, Thumb-2
  319c08: b510         	push	{r4, lr}
  319c0a: b084         	sub	sp, #0x10
  319c0c: 9001         	str	r0, [sp, #0x4]
  319c0e: 9100         	str	r1, [sp]
  319c10: 4c38         	ldr	r4, [pc, #0xe0]         @ 0x319cf4 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)+0xec>
  319c12: 447c         	add	r4, pc
  319c14: 9b00         	ldr	r3, [sp]
  319c16: 2b00         	cmp	r3, #0x0
  319c18: d06a         	beq	0x319cf0 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)+0xe8> @ imm = #0xd4
  319c1a: 9b00         	ldr	r3, [sp]
  319c1c: 681b         	ldr	r3, [r3]
  319c1e: f503 73e0    	add.w	r3, r3, #0x1c0
  319c22: 681b         	ldr	r3, [r3]
  319c24: aa03         	add	r2, sp, #0xc
  319c26: 4610         	mov	r0, r2
  319c28: 9900         	ldr	r1, [sp]
  319c2a: 4798         	blx	r3
  319c2c: 9b01         	ldr	r3, [sp, #0x4]
  319c2e: 699a         	ldr	r2, [r3, #0x18]
  319c30: ab03         	add	r3, sp, #0xc
  319c32: 4610         	mov	r0, r2
  319c34: 9900         	ldr	r1, [sp]
  319c36: 461a         	mov	r2, r3
  319c38: f27a fe7e    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27acfc
  319c3c: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x319cf8 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)+0xf0>
  319c3e: 58e3         	ldr	r3, [r4, r3]
  319c40: 681a         	ldr	r2, [r3]
  319c42: ab03         	add	r3, sp, #0xc
  319c44: 4610         	mov	r0, r2
  319c46: 9900         	ldr	r1, [sp]
  319c48: 461a         	mov	r2, r3
  319c4a: f27a fe75    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27acea
  319c4e: 9b01         	ldr	r3, [sp, #0x4]
  319c50: 6a5a         	ldr	r2, [r3, #0x24]
  319c52: ab03         	add	r3, sp, #0xc
  319c54: 4610         	mov	r0, r2
  319c56: 4619         	mov	r1, r3
  319c58: f27b fb2e    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b65c
  319c5c: 9b00         	ldr	r3, [sp]
  319c5e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319c62: 681b         	ldr	r3, [r3]
  319c64: f503 73ec    	add.w	r3, r3, #0x1d8
  319c68: 681b         	ldr	r3, [r3]
  319c6a: 9a00         	ldr	r2, [sp]
  319c6c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  319c70: 4610         	mov	r0, r2
  319c72: 4798         	blx	r3
  319c74: 4603         	mov	r3, r0
  319c76: 4618         	mov	r0, r3
  319c78: 2101         	movs	r1, #0x1
  319c7a: f0da fa21    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0xda442
  319c7e: 9b00         	ldr	r3, [sp]
  319c80: 681b         	ldr	r3, [r3]
  319c82: f503 7305    	add.w	r3, r3, #0x214
  319c86: 681b         	ldr	r3, [r3]
  319c88: 9800         	ldr	r0, [sp]
  319c8a: f240 2141    	movw	r1, #0x241
  319c8e: 4798         	blx	r3
  319c90: 9b00         	ldr	r3, [sp]
  319c92: 681b         	ldr	r3, [r3]
  319c94: f503 73e6    	add.w	r3, r3, #0x1cc
  319c98: 681b         	ldr	r3, [r3]
  319c9a: 9800         	ldr	r0, [sp]
  319c9c: 4798         	blx	r3
  319c9e: 9b00         	ldr	r3, [sp]
  319ca0: 681b         	ldr	r3, [r3]
  319ca2: f503 73f4    	add.w	r3, r3, #0x1e8
  319ca6: 681b         	ldr	r3, [r3]
  319ca8: 9800         	ldr	r0, [sp]
  319caa: 2164         	movs	r1, #0x64
  319cac: 4798         	blx	r3
  319cae: 9b00         	ldr	r3, [sp]
  319cb0: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319cb4: 2200         	movs	r2, #0x0
  319cb6: f883 2159    	strb.w	r2, [r3, #0x159]
  319cba: 9b00         	ldr	r3, [sp]
  319cbc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319cc0: 681b         	ldr	r3, [r3]
  319cc2: f503 73ec    	add.w	r3, r3, #0x1d8
  319cc6: 681b         	ldr	r3, [r3]
  319cc8: 9a00         	ldr	r2, [sp]
  319cca: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  319cce: 4610         	mov	r0, r2
  319cd0: 4798         	blx	r3
  319cd2: 4603         	mov	r3, r0
  319cd4: 4618         	mov	r0, r3
  319cd6: f0da fac7    	bl	0x3f4268 <SoldierView::resetStreak()> @ imm = #0xda58e
  319cda: ab03         	add	r3, sp, #0xc
  319cdc: 4618         	mov	r0, r3
  319cde: f09b f619    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bc32
  319ce2: e005         	b	0x319cf0 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)+0xe8> @ imm = #0xa
  319ce4: ab03         	add	r3, sp, #0xc
  319ce6: 4618         	mov	r0, r3
  319ce8: f09b f614    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49bc28
  319cec: f06e f1de    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46e3bc
  319cf0: b004         	add	sp, #0x10
  319cf2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x319cf3); words below are literal-pool data ---
  319cf4: 8df6         	ldrh	r6, [r6, #0x2e]
  319cf6: 0061         	lsls	r1, r4, #0x1
  319cf8: da08         	bge	0x319d0c <EnemyManager::removeWormDrone(std::string)+0x10> @ imm = #0x10
  319cfa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== EnemyManager::removeWormDrone
//      file offset 0x319cfc (= ELF address; Ghidra 0x329cfc), 228 bytes, Thumb-2
  319cfc: b530         	push	{r4, r5, lr}
  319cfe: b089         	sub	sp, #0x24
  319d00: 9003         	str	r0, [sp, #0xc]
  319d02: 9102         	str	r1, [sp, #0x8]
  319d04: 4c33         	ldr	r4, [pc, #0xcc]         @ 0x319dd4 <EnemyManager::removeWormDrone(std::string)+0xd8>
  319d06: 447c         	add	r4, pc
  319d08: 9b03         	ldr	r3, [sp, #0xc]
  319d0a: 69db         	ldr	r3, [r3, #0x1c]
  319d0c: 4618         	mov	r0, r3
  319d0e: 9902         	ldr	r1, [sp, #0x8]
  319d10: f27a f8ee    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27a1dc
  319d14: 4603         	mov	r3, r0
  319d16: 9305         	str	r3, [sp, #0x14]
  319d18: 9b05         	ldr	r3, [sp, #0x14]
  319d1a: 2b00         	cmp	r3, #0x0
  319d1c: d055         	beq	0x319dca <EnemyManager::removeWormDrone(std::string)+0xce> @ imm = #0xaa
  319d1e: 9b03         	ldr	r3, [sp, #0xc]
  319d20: 6a9b         	ldr	r3, [r3, #0x28]
  319d22: 4618         	mov	r0, r3
  319d24: 9905         	ldr	r1, [sp, #0x14]
  319d26: 9a02         	ldr	r2, [sp, #0x8]
  319d28: f27a fe06    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27ac0c
  319d2c: 9b03         	ldr	r3, [sp, #0xc]
  319d2e: 69db         	ldr	r3, [r3, #0x1c]
  319d30: 4618         	mov	r0, r3
  319d32: 9902         	ldr	r1, [sp, #0x8]
  319d34: f27b fac0    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b580
  319d38: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x319dd8 <EnemyManager::removeWormDrone(std::string)+0xdc>
  319d3a: 58e3         	ldr	r3, [r4, r3]
  319d3c: 681b         	ldr	r3, [r3]
  319d3e: 4618         	mov	r0, r3
  319d40: 9902         	ldr	r1, [sp, #0x8]
  319d42: f27b fab9    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b572
  319d46: 9b05         	ldr	r3, [sp, #0x14]
  319d48: 681b         	ldr	r3, [r3]
  319d4a: f503 7305    	add.w	r3, r3, #0x214
  319d4e: 681b         	ldr	r3, [r3]
  319d50: 9805         	ldr	r0, [sp, #0x14]
  319d52: 2100         	movs	r1, #0x0
  319d54: 4798         	blx	r3
  319d56: 9b05         	ldr	r3, [sp, #0x14]
  319d58: 681b         	ldr	r3, [r3]
  319d5a: f503 7306    	add.w	r3, r3, #0x218
  319d5e: 681c         	ldr	r4, [r3]
  319d60: 9d05         	ldr	r5, [sp, #0x14]
  319d62: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x319ddc <EnemyManager::removeWormDrone(std::string)+0xe0>
  319d64: 447b         	add	r3, pc
  319d66: 466a         	mov	r2, sp
  319d68: f103 0108    	add.w	r1, r3, #0x8
  319d6c: c903         	ldm	r1, {r0, r1}
  319d6e: e882 0003    	stm.w	r2, {r0, r1}
  319d72: cb0c         	ldm	r3, {r2, r3}
  319d74: 4628         	mov	r0, r5
  319d76: 47a0         	blx	r4
  319d78: 9b05         	ldr	r3, [sp, #0x14]
  319d7a: 2200         	movs	r2, #0x0
  319d7c: f883 216c    	strb.w	r2, [r3, #0x16c]
  319d80: 9b05         	ldr	r3, [sp, #0x14]
  319d82: f8d3 21c0    	ldr.w	r2, [r3, #0x1c0]
  319d86: 9b03         	ldr	r3, [sp, #0xc]
  319d88: f102 0428    	add.w	r4, r2, #0x28
  319d8c: 3340         	adds	r3, #0x40
  319d8e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  319d90: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  319d94: 9b05         	ldr	r3, [sp, #0x14]
  319d96: 681b         	ldr	r3, [r3]
  319d98: 334c         	adds	r3, #0x4c
  319d9a: 681c         	ldr	r4, [r3]
  319d9c: 9d05         	ldr	r5, [sp, #0x14]
  319d9e: 9b03         	ldr	r3, [sp, #0xc]
  319da0: ed93 7b10    	vldr	d7, [r3, #64]
  319da4: eef7 6bc7    	vcvt.f32.f64	s13, d7
  319da8: 9b03         	ldr	r3, [sp, #0xc]
  319daa: ed93 7b12    	vldr	d7, [r3, #72]
  319dae: eef7 7bc7    	vcvt.f32.f64	s15, d7
  319db2: ab06         	add	r3, sp, #0x18
  319db4: 4618         	mov	r0, r3
  319db6: ee16 1a90    	vmov	r1, s13
  319dba: ee17 2a90    	vmov	r2, s15
  319dbe: f278 ff97    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x278f2e
  319dc2: ab06         	add	r3, sp, #0x18
  319dc4: 4628         	mov	r0, r5
  319dc6: 4619         	mov	r1, r3
  319dc8: 47a0         	blx	r4
  319dca: 2300         	movs	r3, #0x0
  319dcc: 9305         	str	r3, [sp, #0x14]
  319dce: b009         	add	sp, #0x24
  319dd0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x319dd1); words below are literal-pool data ---
  319dd2: bf00         	nop
  319dd4: 8d02         	ldrh	r2, [r0, #0x28]
  319dd6: 0061         	lsls	r1, r4, #0x1
  319dd8: da08         	bge	0x319dec <EnemyManager::removeHawkDrone(std::string)+0xc> @ imm = #0x10
  319dda: ffff d358    	<unknown>
  319dde: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::removeHawkDrone
//      file offset 0x319de0 (= ELF address; Ghidra 0x329de0), 240 bytes, Thumb-2
  319de0: b530         	push	{r4, r5, lr}
  319de2: b089         	sub	sp, #0x24
  319de4: 9003         	str	r0, [sp, #0xc]
  319de6: 9102         	str	r1, [sp, #0x8]
  319de8: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x319ec4 <EnemyManager::removeHawkDrone(std::string)+0xe4>
  319dea: 447c         	add	r4, pc
  319dec: 9b03         	ldr	r3, [sp, #0xc]
  319dee: 695b         	ldr	r3, [r3, #0x14]
  319df0: 4618         	mov	r0, r3
  319df2: 9902         	ldr	r1, [sp, #0x8]
  319df4: f27a f87c    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27a0f8
  319df8: 4603         	mov	r3, r0
  319dfa: 9305         	str	r3, [sp, #0x14]
  319dfc: 9b05         	ldr	r3, [sp, #0x14]
  319dfe: 2b00         	cmp	r3, #0x0
  319e00: d05b         	beq	0x319eba <EnemyManager::removeHawkDrone(std::string)+0xda> @ imm = #0xb6
  319e02: 9b03         	ldr	r3, [sp, #0xc]
  319e04: 6a1b         	ldr	r3, [r3, #0x20]
  319e06: 4618         	mov	r0, r3
  319e08: 9905         	ldr	r1, [sp, #0x14]
  319e0a: 9a02         	ldr	r2, [sp, #0x8]
  319e0c: f27a fd94    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27ab28
  319e10: 9b03         	ldr	r3, [sp, #0xc]
  319e12: 695b         	ldr	r3, [r3, #0x14]
  319e14: 4618         	mov	r0, r3
  319e16: 9902         	ldr	r1, [sp, #0x8]
  319e18: f27b fa4e    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b49c
  319e1c: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x319ec8 <EnemyManager::removeHawkDrone(std::string)+0xe8>
  319e1e: 58e3         	ldr	r3, [r4, r3]
  319e20: 681b         	ldr	r3, [r3]
  319e22: 4618         	mov	r0, r3
  319e24: 9902         	ldr	r1, [sp, #0x8]
  319e26: f27b fa47    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b48e
  319e2a: 9b05         	ldr	r3, [sp, #0x14]
  319e2c: 681b         	ldr	r3, [r3]
  319e2e: f503 7305    	add.w	r3, r3, #0x214
  319e32: 681b         	ldr	r3, [r3]
  319e34: 9805         	ldr	r0, [sp, #0x14]
  319e36: 2100         	movs	r1, #0x0
  319e38: 4798         	blx	r3
  319e3a: 9b05         	ldr	r3, [sp, #0x14]
  319e3c: 681b         	ldr	r3, [r3]
  319e3e: f503 7306    	add.w	r3, r3, #0x218
  319e42: 681c         	ldr	r4, [r3]
  319e44: 9d05         	ldr	r5, [sp, #0x14]
  319e46: 4b21         	ldr	r3, [pc, #0x84]         @ 0x319ecc <EnemyManager::removeHawkDrone(std::string)+0xec>
  319e48: 447b         	add	r3, pc
  319e4a: 466a         	mov	r2, sp
  319e4c: f103 0108    	add.w	r1, r3, #0x8
  319e50: c903         	ldm	r1, {r0, r1}
  319e52: e882 0003    	stm.w	r2, {r0, r1}
  319e56: cb0c         	ldm	r3, {r2, r3}
  319e58: 4628         	mov	r0, r5
  319e5a: 47a0         	blx	r4
  319e5c: 9b05         	ldr	r3, [sp, #0x14]
  319e5e: 2200         	movs	r2, #0x0
  319e60: f883 216c    	strb.w	r2, [r3, #0x16c]
  319e64: 9b05         	ldr	r3, [sp, #0x14]
  319e66: f8d3 21c8    	ldr.w	r2, [r3, #0x1c8]
  319e6a: 9b03         	ldr	r3, [sp, #0xc]
  319e6c: f102 0428    	add.w	r4, r2, #0x28
  319e70: 3340         	adds	r3, #0x40
  319e72: cb0f         	ldm	r3, {r0, r1, r2, r3}
  319e74: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  319e78: 9b05         	ldr	r3, [sp, #0x14]
  319e7a: 681b         	ldr	r3, [r3]
  319e7c: 334c         	adds	r3, #0x4c
  319e7e: 681c         	ldr	r4, [r3]
  319e80: 9d05         	ldr	r5, [sp, #0x14]
  319e82: 9b03         	ldr	r3, [sp, #0xc]
  319e84: ed93 7b10    	vldr	d7, [r3, #64]
  319e88: eef7 6bc7    	vcvt.f32.f64	s13, d7
  319e8c: 9b03         	ldr	r3, [sp, #0xc]
  319e8e: ed93 7b12    	vldr	d7, [r3, #72]
  319e92: eef7 7bc7    	vcvt.f32.f64	s15, d7
  319e96: ab06         	add	r3, sp, #0x18
  319e98: 4618         	mov	r0, r3
  319e9a: ee16 1a90    	vmov	r1, s13
  319e9e: ee17 2a90    	vmov	r2, s15
  319ea2: f278 ff25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x278e4a
  319ea6: ab06         	add	r3, sp, #0x18
  319ea8: 4628         	mov	r0, r5
  319eaa: 4619         	mov	r1, r3
  319eac: 47a0         	blx	r4
  319eae: 9b05         	ldr	r3, [sp, #0x14]
  319eb0: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  319eb4: 4618         	mov	r0, r3
  319eb6: f2a8 fe81    	bl	0x5c2bbc <cocos2d::CCParticleSystem::stopSystem()> @ imm = #0x2a8d02
  319eba: 2300         	movs	r3, #0x0
  319ebc: 9305         	str	r3, [sp, #0x14]
  319ebe: b009         	add	sp, #0x24
  319ec0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x319ec1); words below are literal-pool data ---
  319ec2: bf00         	nop
  319ec4: 8c1e         	ldrh	r6, [r3, #0x20]
  319ec6: 0061         	lsls	r1, r4, #0x1
  319ec8: da08         	bge	0x319edc <EnemyManager::removeHumanoidDrone(std::string)+0xc> @ imm = #0x10
  319eca: ffff d274    	<unknown>
  319ece: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::removeHumanoidDrone
//      file offset 0x319ed0 (= ELF address; Ghidra 0x329ed0), 280 bytes, Thumb-2
  319ed0: b530         	push	{r4, r5, lr}
  319ed2: b089         	sub	sp, #0x24
  319ed4: 9003         	str	r0, [sp, #0xc]
  319ed6: 9102         	str	r1, [sp, #0x8]
  319ed8: 4c40         	ldr	r4, [pc, #0x100]        @ 0x319fdc <EnemyManager::removeHumanoidDrone(std::string)+0x10c>
  319eda: 447c         	add	r4, pc
  319edc: 9b03         	ldr	r3, [sp, #0xc]
  319ede: 699b         	ldr	r3, [r3, #0x18]
  319ee0: 4618         	mov	r0, r3
  319ee2: 9902         	ldr	r1, [sp, #0x8]
  319ee4: f27a f804    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27a008
  319ee8: 4603         	mov	r3, r0
  319eea: 9305         	str	r3, [sp, #0x14]
  319eec: 9b05         	ldr	r3, [sp, #0x14]
  319eee: 2b00         	cmp	r3, #0x0
  319ef0: d06f         	beq	0x319fd2 <EnemyManager::removeHumanoidDrone(std::string)+0x102> @ imm = #0xde
  319ef2: 9b03         	ldr	r3, [sp, #0xc]
  319ef4: 6a5b         	ldr	r3, [r3, #0x24]
  319ef6: 4618         	mov	r0, r3
  319ef8: 9905         	ldr	r1, [sp, #0x14]
  319efa: 9a02         	ldr	r2, [sp, #0x8]
  319efc: f27a fd1c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27aa38
  319f00: 9b03         	ldr	r3, [sp, #0xc]
  319f02: 699b         	ldr	r3, [r3, #0x18]
  319f04: 4618         	mov	r0, r3
  319f06: 9902         	ldr	r1, [sp, #0x8]
  319f08: f27b f9d6    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b3ac
  319f0c: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x319fe0 <EnemyManager::removeHumanoidDrone(std::string)+0x110>
  319f0e: 58e3         	ldr	r3, [r4, r3]
  319f10: 681b         	ldr	r3, [r3]
  319f12: 4618         	mov	r0, r3
  319f14: 9902         	ldr	r1, [sp, #0x8]
  319f16: f27b f9cf    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x27b39e
  319f1a: 9b05         	ldr	r3, [sp, #0x14]
  319f1c: 681b         	ldr	r3, [r3]
  319f1e: f503 7305    	add.w	r3, r3, #0x214
  319f22: 681b         	ldr	r3, [r3]
  319f24: 9805         	ldr	r0, [sp, #0x14]
  319f26: 2100         	movs	r1, #0x0
  319f28: 4798         	blx	r3
  319f2a: 9b05         	ldr	r3, [sp, #0x14]
  319f2c: 681b         	ldr	r3, [r3]
  319f2e: f503 7306    	add.w	r3, r3, #0x218
  319f32: 681c         	ldr	r4, [r3]
  319f34: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x319fe4 <EnemyManager::removeHumanoidDrone(std::string)+0x114>
  319f36: 447b         	add	r3, pc
  319f38: 466a         	mov	r2, sp
  319f3a: f103 0108    	add.w	r1, r3, #0x8
  319f3e: c903         	ldm	r1, {r0, r1}
  319f40: e882 0003    	stm.w	r2, {r0, r1}
  319f44: cb0c         	ldm	r3, {r2, r3}
  319f46: 9805         	ldr	r0, [sp, #0x14]
  319f48: 47a0         	blx	r4
  319f4a: 9b05         	ldr	r3, [sp, #0x14]
  319f4c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319f50: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  319f54: 9b03         	ldr	r3, [sp, #0xc]
  319f56: f102 0428    	add.w	r4, r2, #0x28
  319f5a: 3340         	adds	r3, #0x40
  319f5c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  319f5e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  319f62: 9b05         	ldr	r3, [sp, #0x14]
  319f64: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319f68: 681b         	ldr	r3, [r3]
  319f6a: f503 73ec    	add.w	r3, r3, #0x1d8
  319f6e: 681b         	ldr	r3, [r3]
  319f70: 9a05         	ldr	r2, [sp, #0x14]
  319f72: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  319f76: 4610         	mov	r0, r2
  319f78: 4798         	blx	r3
  319f7a: 4603         	mov	r3, r0
  319f7c: 461c         	mov	r4, r3
  319f7e: 6823         	ldr	r3, [r4]
  319f80: 334c         	adds	r3, #0x4c
  319f82: 681d         	ldr	r5, [r3]
  319f84: 9b03         	ldr	r3, [sp, #0xc]
  319f86: ed93 7b10    	vldr	d7, [r3, #64]
  319f8a: eef7 6bc7    	vcvt.f32.f64	s13, d7
  319f8e: 9b03         	ldr	r3, [sp, #0xc]
  319f90: ed93 7b12    	vldr	d7, [r3, #72]
  319f94: eef7 7bc7    	vcvt.f32.f64	s15, d7
  319f98: ab06         	add	r3, sp, #0x18
  319f9a: 4618         	mov	r0, r3
  319f9c: ee16 1a90    	vmov	r1, s13
  319fa0: ee17 2a90    	vmov	r2, s15
  319fa4: f278 fea4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x278d48
  319fa8: ab06         	add	r3, sp, #0x18
  319faa: 4620         	mov	r0, r4
  319fac: 4619         	mov	r1, r3
  319fae: 47a8         	blx	r5
  319fb0: 9b05         	ldr	r3, [sp, #0x14]
  319fb2: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  319fb6: 681b         	ldr	r3, [r3]
  319fb8: f503 73ec    	add.w	r3, r3, #0x1d8
  319fbc: 681b         	ldr	r3, [r3]
  319fbe: 9a05         	ldr	r2, [sp, #0x14]
  319fc0: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  319fc4: 4610         	mov	r0, r2
  319fc6: 4798         	blx	r3
  319fc8: 4603         	mov	r3, r0
  319fca: 4618         	mov	r0, r3
  319fcc: 2100         	movs	r1, #0x0
  319fce: f0da f877    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0xda0ee
  319fd2: 2300         	movs	r3, #0x0
  319fd4: 9305         	str	r3, [sp, #0x14]
  319fd6: b009         	add	sp, #0x24
  319fd8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x319fd9); words below are literal-pool data ---
  319fda: bf00         	nop
  319fdc: 8b2e         	ldrh	r6, [r5, #0x18]
  319fde: 0061         	lsls	r1, r4, #0x1
  319fe0: da08         	bge	0x319ff4 <EnemyManager::createHawkDrone(cpVect)+0xc> @ imm = #0x10
  319fe2: ffff d186    	<unknown>
  319fe6: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::createHawkDrone
//      file offset 0x319fe8 (= ELF address; Ghidra 0x329fe8), 496 bytes, Thumb-2
  319fe8: b082         	sub	sp, #0x8
  319fea: b570         	push	{r4, r5, r6, lr}
  319fec: b088         	sub	sp, #0x20
  319fee: 9003         	str	r0, [sp, #0xc]
  319ff0: a90c         	add	r1, sp, #0x30
  319ff2: e881 000c    	stm.w	r1, {r2, r3}
  319ff6: 4c72         	ldr	r4, [pc, #0x1c8]        @ 0x31a1c0 <EnemyManager::createHawkDrone(cpVect)+0x1d8>
  319ff8: 447c         	add	r4, pc
  319ffa: 9b03         	ldr	r3, [sp, #0xc]
  319ffc: 6adb         	ldr	r3, [r3, #0x2c]
  319ffe: 1c5a         	adds	r2, r3, #0x1
  31a000: 9b03         	ldr	r3, [sp, #0xc]
  31a002: 62da         	str	r2, [r3, #0x2c]
  31a004: f7fe fe0a    	bl	0x318c1c <HawkDrone::create()> @ imm = #-0x13ec
  31a008: 4603         	mov	r3, r0
  31a00a: 9306         	str	r3, [sp, #0x18]
  31a00c: 9b03         	ldr	r3, [sp, #0xc]
  31a00e: 6adb         	ldr	r3, [r3, #0x2c]
  31a010: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x31a1c4 <EnemyManager::createHawkDrone(cpVect)+0x1dc>
  31a012: 447a         	add	r2, pc
  31a014: 4610         	mov	r0, r2
  31a016: 4619         	mov	r1, r3
  31a018: f27f fd7a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x27faf4
  31a01c: 4603         	mov	r3, r0
  31a01e: 9307         	str	r3, [sp, #0x1c]
  31a020: 9b03         	ldr	r3, [sp, #0xc]
  31a022: 6a1d         	ldr	r5, [r3, #0x20]
  31a024: 9807         	ldr	r0, [sp, #0x1c]
  31a026: f27f fc7f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f8fe
  31a02a: 4606         	mov	r6, r0
  31a02c: ab04         	add	r3, sp, #0x10
  31a02e: 4618         	mov	r0, r3
  31a030: f070 f1e0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4703c0
  31a034: aa05         	add	r2, sp, #0x14
  31a036: ab04         	add	r3, sp, #0x10
  31a038: 4610         	mov	r0, r2
  31a03a: 4631         	mov	r1, r6
  31a03c: 461a         	mov	r2, r3
  31a03e: f09c f50f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49ca1e
  31a042: ab05         	add	r3, sp, #0x14
  31a044: 4628         	mov	r0, r5
  31a046: 9906         	ldr	r1, [sp, #0x18]
  31a048: 461a         	mov	r2, r3
  31a04a: f27a fc75    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27a8ea
  31a04e: ab05         	add	r3, sp, #0x14
  31a050: 4618         	mov	r0, r3
  31a052: f09b f45f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b8be
  31a056: ab04         	add	r3, sp, #0x10
  31a058: 4618         	mov	r0, r3
  31a05a: f070 f1cf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47039e
  31a05e: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x31a1c8 <EnemyManager::createHawkDrone(cpVect)+0x1e0>
  31a060: 58e3         	ldr	r3, [r4, r3]
  31a062: 681d         	ldr	r5, [r3]
  31a064: 9807         	ldr	r0, [sp, #0x1c]
  31a066: f27f fc5f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f8be
  31a06a: 4606         	mov	r6, r0
  31a06c: ab04         	add	r3, sp, #0x10
  31a06e: 4618         	mov	r0, r3
  31a070: f070 f1c0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x470380
  31a074: aa05         	add	r2, sp, #0x14
  31a076: ab04         	add	r3, sp, #0x10
  31a078: 4610         	mov	r0, r2
  31a07a: 4631         	mov	r1, r6
  31a07c: 461a         	mov	r2, r3
  31a07e: f09c f4ef    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c9de
  31a082: ab05         	add	r3, sp, #0x14
  31a084: 4628         	mov	r0, r5
  31a086: 9906         	ldr	r1, [sp, #0x18]
  31a088: 461a         	mov	r2, r3
  31a08a: f27a fc55    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27a8aa
  31a08e: ab05         	add	r3, sp, #0x14
  31a090: 4618         	mov	r0, r3
  31a092: f09b f43f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b87e
  31a096: ab04         	add	r3, sp, #0x10
  31a098: 4618         	mov	r0, r3
  31a09a: f070 f1af    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47035e
  31a09e: 9b06         	ldr	r3, [sp, #0x18]
  31a0a0: 681b         	ldr	r3, [r3]
  31a0a2: f503 7307    	add.w	r3, r3, #0x21c
  31a0a6: 681d         	ldr	r5, [r3]
  31a0a8: 9807         	ldr	r0, [sp, #0x1c]
  31a0aa: f27f fc3d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f87a
  31a0ae: 4606         	mov	r6, r0
  31a0b0: ab04         	add	r3, sp, #0x10
  31a0b2: 4618         	mov	r0, r3
  31a0b4: f070 f19e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47033c
  31a0b8: aa05         	add	r2, sp, #0x14
  31a0ba: ab04         	add	r3, sp, #0x10
  31a0bc: 4610         	mov	r0, r2
  31a0be: 4631         	mov	r1, r6
  31a0c0: 461a         	mov	r2, r3
  31a0c2: f09c f4cd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c99a
  31a0c6: ab05         	add	r3, sp, #0x14
  31a0c8: 9806         	ldr	r0, [sp, #0x18]
  31a0ca: 4619         	mov	r1, r3
  31a0cc: 47a8         	blx	r5
  31a0ce: ab05         	add	r3, sp, #0x14
  31a0d0: 4618         	mov	r0, r3
  31a0d2: f09b f41f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b83e
  31a0d6: ab04         	add	r3, sp, #0x10
  31a0d8: 4618         	mov	r0, r3
  31a0da: f070 f18f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47031e
  31a0de: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x31a1cc <EnemyManager::createHawkDrone(cpVect)+0x1e4>
  31a0e0: 58e3         	ldr	r3, [r4, r3]
  31a0e2: 681b         	ldr	r3, [r3]
  31a0e4: 681b         	ldr	r3, [r3]
  31a0e6: 33cc         	adds	r3, #0xcc
  31a0e8: 681b         	ldr	r3, [r3]
  31a0ea: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x31a1cc <EnemyManager::createHawkDrone(cpVect)+0x1e4>
  31a0ec: 58a2         	ldr	r2, [r4, r2]
  31a0ee: 6812         	ldr	r2, [r2]
  31a0f0: 4610         	mov	r0, r2
  31a0f2: 9906         	ldr	r1, [sp, #0x18]
  31a0f4: 2203         	movs	r2, #0x3
  31a0f6: 4798         	blx	r3
  31a0f8: 9b06         	ldr	r3, [sp, #0x18]
  31a0fa: 681b         	ldr	r3, [r3]
  31a0fc: f503 73ec    	add.w	r3, r3, #0x1d8
  31a100: 681b         	ldr	r3, [r3]
  31a102: 9806         	ldr	r0, [sp, #0x18]
  31a104: 4798         	blx	r3
  31a106: 9b06         	ldr	r3, [sp, #0x18]
  31a108: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  31a10c: f103 0428    	add.w	r4, r3, #0x28
  31a110: ab0c         	add	r3, sp, #0x30
  31a112: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31a114: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31a118: 9b06         	ldr	r3, [sp, #0x18]
  31a11a: 681b         	ldr	r3, [r3]
  31a11c: 3390         	adds	r3, #0x90
  31a11e: 681b         	ldr	r3, [r3]
  31a120: 9a06         	ldr	r2, [sp, #0x18]
  31a122: 4610         	mov	r0, r2
  31a124: 2100         	movs	r1, #0x0
  31a126: 4798         	blx	r3
  31a128: 9b06         	ldr	r3, [sp, #0x18]
  31a12a: 681b         	ldr	r3, [r3]
  31a12c: f503 7305    	add.w	r3, r3, #0x214
  31a130: 681b         	ldr	r3, [r3]
  31a132: 9806         	ldr	r0, [sp, #0x18]
  31a134: 2100         	movs	r1, #0x0
  31a136: 4798         	blx	r3
  31a138: 9b06         	ldr	r3, [sp, #0x18]
  31a13a: 681b         	ldr	r3, [r3]
  31a13c: f503 7306    	add.w	r3, r3, #0x218
  31a140: 681c         	ldr	r4, [r3]
  31a142: 9d06         	ldr	r5, [sp, #0x18]
  31a144: 4b22         	ldr	r3, [pc, #0x88]         @ 0x31a1d0 <EnemyManager::createHawkDrone(cpVect)+0x1e8>
  31a146: 447b         	add	r3, pc
  31a148: 466a         	mov	r2, sp
  31a14a: f103 0108    	add.w	r1, r3, #0x8
  31a14e: c903         	ldm	r1, {r0, r1}
  31a150: e882 0003    	stm.w	r2, {r0, r1}
  31a154: cb0c         	ldm	r3, {r2, r3}
  31a156: 4628         	mov	r0, r5
  31a158: 47a0         	blx	r4
  31a15a: f2c6 faa9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c6552
  31a15e: 4603         	mov	r3, r0
  31a160: 4618         	mov	r0, r3
  31a162: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x31a1d4 <EnemyManager::createHawkDrone(cpVect)+0x1ec>
  31a164: 447b         	add	r3, pc
  31a166: 4619         	mov	r1, r3
  31a168: 9a07         	ldr	r2, [sp, #0x1c]
  31a16a: f2c6 fcdf    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c69be
  31a16e: 9b06         	ldr	r3, [sp, #0x18]
  31a170: e020         	b	0x31a1b4 <EnemyManager::createHawkDrone(cpVect)+0x1cc> @ imm = #0x40
  31a172: ab05         	add	r3, sp, #0x14
  31a174: 4618         	mov	r0, r3
  31a176: f09b f3cd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b79a
  31a17a: e7ff         	b	0x31a17c <EnemyManager::createHawkDrone(cpVect)+0x194> @ imm = #-0x2
  31a17c: ab04         	add	r3, sp, #0x10
  31a17e: 4618         	mov	r0, r3
  31a180: f070 f13c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470278
  31a184: f06d f792    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46df24
  31a188: ab05         	add	r3, sp, #0x14
  31a18a: 4618         	mov	r0, r3
  31a18c: f09b f3c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b784
  31a190: e7ff         	b	0x31a192 <EnemyManager::createHawkDrone(cpVect)+0x1aa> @ imm = #-0x2
  31a192: ab04         	add	r3, sp, #0x10
  31a194: 4618         	mov	r0, r3
  31a196: f070 f131    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470262
  31a19a: f06d f787    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46df0e
  31a19e: ab05         	add	r3, sp, #0x14
  31a1a0: 4618         	mov	r0, r3
  31a1a2: f09b f3b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b76e
  31a1a6: e7ff         	b	0x31a1a8 <EnemyManager::createHawkDrone(cpVect)+0x1c0> @ imm = #-0x2
  31a1a8: ab04         	add	r3, sp, #0x10
  31a1aa: 4618         	mov	r0, r3
  31a1ac: f070 f126    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47024c
  31a1b0: f06d f77c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46def8
  31a1b4: 4618         	mov	r0, r3
  31a1b6: b008         	add	sp, #0x20
  31a1b8: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  31a1bc: b002         	add	sp, #0x8
  31a1be: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31a1bf); words below are literal-pool data ---
  31a1c0: 8a10         	ldrh	r0, [r2, #0x10]
  31a1c2: 0061         	lsls	r1, r4, #0x1
  31a1c4: d03e         	beq	0x31a244 <EnemyManager::createHumanoidDrone(cpVect)+0x6c> @ imm = #0x7c
  31a1c6: 004a         	lsls	r2, r1, #0x1
  31a1c8: d9f8         	bls	0x31a1bc <EnemyManager::createHawkDrone(cpVect)+0x1d4> @ imm = #-0x10
  31a1ca: ffff d744    	<unknown>
  31a1ce: ffff cf76    	vcvt.u32.f32	q14, q11, #0x1
  31a1d2: 004a         	lsls	r2, r1, #0x1
  31a1d4: cef4         	ldm	r6, {r2, r4, r5, r6, r7}
  31a1d6: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::createHumanoidDrone
//      file offset 0x31a1d8 (= ELF address; Ghidra 0x32a1d8), 604 bytes, Thumb-2
  31a1d8: b082         	sub	sp, #0x8
  31a1da: b570         	push	{r4, r5, r6, lr}
  31a1dc: b08a         	sub	sp, #0x28
  31a1de: 9003         	str	r0, [sp, #0xc]
  31a1e0: a90e         	add	r1, sp, #0x38
  31a1e2: e881 000c    	stm.w	r1, {r2, r3}
  31a1e6: 4c8d         	ldr	r4, [pc, #0x234]        @ 0x31a41c <EnemyManager::createHumanoidDrone(cpVect)+0x244>
  31a1e8: 447c         	add	r4, pc
  31a1ea: 9b03         	ldr	r3, [sp, #0xc]
  31a1ec: 6adb         	ldr	r3, [r3, #0x2c]
  31a1ee: 1c5a         	adds	r2, r3, #0x1
  31a1f0: 9b03         	ldr	r3, [sp, #0xc]
  31a1f2: 62da         	str	r2, [r3, #0x2c]
  31a1f4: f7fe fd4a    	bl	0x318c8c <HumanoidDrone::create()> @ imm = #-0x156c
  31a1f8: 4603         	mov	r3, r0
  31a1fa: 9306         	str	r3, [sp, #0x18]
  31a1fc: 9b03         	ldr	r3, [sp, #0xc]
  31a1fe: 6adb         	ldr	r3, [r3, #0x2c]
  31a200: 4a87         	ldr	r2, [pc, #0x21c]        @ 0x31a420 <EnemyManager::createHumanoidDrone(cpVect)+0x248>
  31a202: 447a         	add	r2, pc
  31a204: 4610         	mov	r0, r2
  31a206: 4619         	mov	r1, r3
  31a208: f27f fc82    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x27f904
  31a20c: 4603         	mov	r3, r0
  31a20e: 9307         	str	r3, [sp, #0x1c]
  31a210: 9b03         	ldr	r3, [sp, #0xc]
  31a212: 6a5d         	ldr	r5, [r3, #0x24]
  31a214: 9807         	ldr	r0, [sp, #0x1c]
  31a216: f27f fb87    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f70e
  31a21a: 4606         	mov	r6, r0
  31a21c: ab05         	add	r3, sp, #0x14
  31a21e: 4618         	mov	r0, r3
  31a220: f070 f0e8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4701d0
  31a224: aa08         	add	r2, sp, #0x20
  31a226: ab05         	add	r3, sp, #0x14
  31a228: 4610         	mov	r0, r2
  31a22a: 4631         	mov	r1, r6
  31a22c: 461a         	mov	r2, r3
  31a22e: f09c f417    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c82e
  31a232: ab08         	add	r3, sp, #0x20
  31a234: 4628         	mov	r0, r5
  31a236: 9906         	ldr	r1, [sp, #0x18]
  31a238: 461a         	mov	r2, r3
  31a23a: f27a fb7d    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27a6fa
  31a23e: ab08         	add	r3, sp, #0x20
  31a240: 4618         	mov	r0, r3
  31a242: f09b f367    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b6ce
  31a246: ab05         	add	r3, sp, #0x14
  31a248: 4618         	mov	r0, r3
  31a24a: f070 f0d7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4701ae
  31a24e: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x31a424 <EnemyManager::createHumanoidDrone(cpVect)+0x24c>
  31a250: 58e3         	ldr	r3, [r4, r3]
  31a252: 681d         	ldr	r5, [r3]
  31a254: 9807         	ldr	r0, [sp, #0x1c]
  31a256: f27f fb67    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f6ce
  31a25a: 4606         	mov	r6, r0
  31a25c: ab05         	add	r3, sp, #0x14
  31a25e: 4618         	mov	r0, r3
  31a260: f070 f0c8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x470190
  31a264: aa08         	add	r2, sp, #0x20
  31a266: ab05         	add	r3, sp, #0x14
  31a268: 4610         	mov	r0, r2
  31a26a: 4631         	mov	r1, r6
  31a26c: 461a         	mov	r2, r3
  31a26e: f09c f3f7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c7ee
  31a272: ab08         	add	r3, sp, #0x20
  31a274: 4628         	mov	r0, r5
  31a276: 9906         	ldr	r1, [sp, #0x18]
  31a278: 461a         	mov	r2, r3
  31a27a: f27a fb5d    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27a6ba
  31a27e: ab08         	add	r3, sp, #0x20
  31a280: 4618         	mov	r0, r3
  31a282: f09b f347    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b68e
  31a286: ab05         	add	r3, sp, #0x14
  31a288: 4618         	mov	r0, r3
  31a28a: f070 f0b7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47016e
  31a28e: 9b06         	ldr	r3, [sp, #0x18]
  31a290: 681b         	ldr	r3, [r3]
  31a292: f503 7307    	add.w	r3, r3, #0x21c
  31a296: 681d         	ldr	r5, [r3]
  31a298: 9807         	ldr	r0, [sp, #0x1c]
  31a29a: f27f fb45    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f68a
  31a29e: 4606         	mov	r6, r0
  31a2a0: ab05         	add	r3, sp, #0x14
  31a2a2: 4618         	mov	r0, r3
  31a2a4: f070 f0a6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47014c
  31a2a8: aa08         	add	r2, sp, #0x20
  31a2aa: ab05         	add	r3, sp, #0x14
  31a2ac: 4610         	mov	r0, r2
  31a2ae: 4631         	mov	r1, r6
  31a2b0: 461a         	mov	r2, r3
  31a2b2: f09c f3d5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c7aa
  31a2b6: ab08         	add	r3, sp, #0x20
  31a2b8: 9806         	ldr	r0, [sp, #0x18]
  31a2ba: 4619         	mov	r1, r3
  31a2bc: 47a8         	blx	r5
  31a2be: ab08         	add	r3, sp, #0x20
  31a2c0: 4618         	mov	r0, r3
  31a2c2: f09b f327    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b64e
  31a2c6: ab05         	add	r3, sp, #0x14
  31a2c8: 4618         	mov	r0, r3
  31a2ca: f070 f097    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47012e
  31a2ce: 4b56         	ldr	r3, [pc, #0x158]        @ 0x31a428 <EnemyManager::createHumanoidDrone(cpVect)+0x250>
  31a2d0: 58e3         	ldr	r3, [r4, r3]
  31a2d2: 681b         	ldr	r3, [r3]
  31a2d4: 681b         	ldr	r3, [r3]
  31a2d6: 33cc         	adds	r3, #0xcc
  31a2d8: 681b         	ldr	r3, [r3]
  31a2da: 4a53         	ldr	r2, [pc, #0x14c]        @ 0x31a428 <EnemyManager::createHumanoidDrone(cpVect)+0x250>
  31a2dc: 58a2         	ldr	r2, [r4, r2]
  31a2de: 6812         	ldr	r2, [r2]
  31a2e0: 4611         	mov	r1, r2
  31a2e2: 9a06         	ldr	r2, [sp, #0x18]
  31a2e4: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  31a2e8: 4608         	mov	r0, r1
  31a2ea: 4611         	mov	r1, r2
  31a2ec: 2203         	movs	r2, #0x3
  31a2ee: 4798         	blx	r3
  31a2f0: 9b06         	ldr	r3, [sp, #0x18]
  31a2f2: 681b         	ldr	r3, [r3]
  31a2f4: f503 73ec    	add.w	r3, r3, #0x1d8
  31a2f8: 681b         	ldr	r3, [r3]
  31a2fa: 9806         	ldr	r0, [sp, #0x18]
  31a2fc: 4798         	blx	r3
  31a2fe: 9b06         	ldr	r3, [sp, #0x18]
  31a300: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a304: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  31a308: f103 0428    	add.w	r4, r3, #0x28
  31a30c: ab0e         	add	r3, sp, #0x38
  31a30e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31a310: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31a314: 9b06         	ldr	r3, [sp, #0x18]
  31a316: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a31a: 681b         	ldr	r3, [r3]
  31a31c: f503 73ec    	add.w	r3, r3, #0x1d8
  31a320: 681b         	ldr	r3, [r3]
  31a322: 9a06         	ldr	r2, [sp, #0x18]
  31a324: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  31a328: 4610         	mov	r0, r2
  31a32a: 4798         	blx	r3
  31a32c: 4603         	mov	r3, r0
  31a32e: 681a         	ldr	r2, [r3]
  31a330: 3290         	adds	r2, #0x90
  31a332: 6812         	ldr	r2, [r2]
  31a334: 4618         	mov	r0, r3
  31a336: 2100         	movs	r1, #0x0
  31a338: 4790         	blx	r2
  31a33a: 9b06         	ldr	r3, [sp, #0x18]
  31a33c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a340: 681b         	ldr	r3, [r3]
  31a342: f503 73ec    	add.w	r3, r3, #0x1d8
  31a346: 681b         	ldr	r3, [r3]
  31a348: 9a06         	ldr	r2, [sp, #0x18]
  31a34a: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  31a34e: 4610         	mov	r0, r2
  31a350: 4798         	blx	r3
  31a352: 4603         	mov	r3, r0
  31a354: 461c         	mov	r4, r3
  31a356: 6823         	ldr	r3, [r4]
  31a358: 334c         	adds	r3, #0x4c
  31a35a: 681d         	ldr	r5, [r3]
  31a35c: ed9d 7b0e    	vldr	d7, [sp, #56]
  31a360: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31a364: ed9d 7b10    	vldr	d7, [sp, #64]
  31a368: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31a36c: ab08         	add	r3, sp, #0x20
  31a36e: 4618         	mov	r0, r3
  31a370: ee16 1a90    	vmov	r1, s13
  31a374: ee17 2a90    	vmov	r2, s15
  31a378: f278 fcba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x278974
  31a37c: ab08         	add	r3, sp, #0x20
  31a37e: 4620         	mov	r0, r4
  31a380: 4619         	mov	r1, r3
  31a382: 47a8         	blx	r5
  31a384: 9b06         	ldr	r3, [sp, #0x18]
  31a386: 681b         	ldr	r3, [r3]
  31a388: f503 7305    	add.w	r3, r3, #0x214
  31a38c: 681b         	ldr	r3, [r3]
  31a38e: 9806         	ldr	r0, [sp, #0x18]
  31a390: 2100         	movs	r1, #0x0
  31a392: 4798         	blx	r3
  31a394: 9b06         	ldr	r3, [sp, #0x18]
  31a396: 681b         	ldr	r3, [r3]
  31a398: f503 7306    	add.w	r3, r3, #0x218
  31a39c: 681c         	ldr	r4, [r3]
  31a39e: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x31a42c <EnemyManager::createHumanoidDrone(cpVect)+0x254>
  31a3a0: 447b         	add	r3, pc
  31a3a2: 466a         	mov	r2, sp
  31a3a4: f103 0108    	add.w	r1, r3, #0x8
  31a3a8: c903         	ldm	r1, {r0, r1}
  31a3aa: e882 0003    	stm.w	r2, {r0, r1}
  31a3ae: cb0c         	ldm	r3, {r2, r3}
  31a3b0: 9806         	ldr	r0, [sp, #0x18]
  31a3b2: 47a0         	blx	r4
  31a3b4: f2c6 f97c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c62f8
  31a3b8: 4603         	mov	r3, r0
  31a3ba: 4618         	mov	r0, r3
  31a3bc: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x31a430 <EnemyManager::createHumanoidDrone(cpVect)+0x258>
  31a3be: 447b         	add	r3, pc
  31a3c0: 4619         	mov	r1, r3
  31a3c2: 9a07         	ldr	r2, [sp, #0x1c]
  31a3c4: f2c6 fbb2    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c6764
  31a3c8: 9b06         	ldr	r3, [sp, #0x18]
  31a3ca: e020         	b	0x31a40e <EnemyManager::createHumanoidDrone(cpVect)+0x236> @ imm = #0x40
  31a3cc: ab08         	add	r3, sp, #0x20
  31a3ce: 4618         	mov	r0, r3
  31a3d0: f09b f2a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b540
  31a3d4: e7ff         	b	0x31a3d6 <EnemyManager::createHumanoidDrone(cpVect)+0x1fe> @ imm = #-0x2
  31a3d6: ab05         	add	r3, sp, #0x14
  31a3d8: 4618         	mov	r0, r3
  31a3da: f070 f00f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47001e
  31a3de: f06d f665    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46dcca
  31a3e2: ab08         	add	r3, sp, #0x20
  31a3e4: 4618         	mov	r0, r3
  31a3e6: f09b f295    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b52a
  31a3ea: e7ff         	b	0x31a3ec <EnemyManager::createHumanoidDrone(cpVect)+0x214> @ imm = #-0x2
  31a3ec: ab05         	add	r3, sp, #0x14
  31a3ee: 4618         	mov	r0, r3
  31a3f0: f070 f004    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x470008
  31a3f4: f06d f65a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46dcb4
  31a3f8: ab08         	add	r3, sp, #0x20
  31a3fa: 4618         	mov	r0, r3
  31a3fc: f09b f28a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b514
  31a400: e7ff         	b	0x31a402 <EnemyManager::createHumanoidDrone(cpVect)+0x22a> @ imm = #-0x2
  31a402: ab05         	add	r3, sp, #0x14
  31a404: 4618         	mov	r0, r3
  31a406: f06f f7f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fff2
  31a40a: f06d f64f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46dc9e
  31a40e: 4618         	mov	r0, r3
  31a410: b00a         	add	sp, #0x28
  31a412: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  31a416: b002         	add	sp, #0x8
  31a418: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31a419); words below are literal-pool data ---
  31a41a: bf00         	nop
  31a41c: 8820         	ldrh	r0, [r4]
  31a41e: 0061         	lsls	r1, r4, #0x1
  31a420: ce4e         	ldm	r6, {r1, r2, r3, r6}
  31a422: 004a         	lsls	r2, r1, #0x1
  31a424: d9f8         	bls	0x31a418 <EnemyManager::createHumanoidDrone(cpVect)+0x240> @ imm = #-0x10
  31a426: ffff d744    	<unknown>
  31a42a: ffff cd1c    	<unknown>
  31a42e: 004a         	lsls	r2, r1, #0x1
  31a430: cc9a         	ldm	r4, {r1, r3, r4, r7}
  31a432: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::createWormDrone
//      file offset 0x31a434 (= ELF address; Ghidra 0x32a434), 496 bytes, Thumb-2
  31a434: b082         	sub	sp, #0x8
  31a436: b570         	push	{r4, r5, r6, lr}
  31a438: b088         	sub	sp, #0x20
  31a43a: 9003         	str	r0, [sp, #0xc]
  31a43c: a90c         	add	r1, sp, #0x30
  31a43e: e881 000c    	stm.w	r1, {r2, r3}
  31a442: 4c72         	ldr	r4, [pc, #0x1c8]        @ 0x31a60c <EnemyManager::createWormDrone(cpVect)+0x1d8>
  31a444: 447c         	add	r4, pc
  31a446: 9b03         	ldr	r3, [sp, #0xc]
  31a448: 6adb         	ldr	r3, [r3, #0x2c]
  31a44a: 1c5a         	adds	r2, r3, #0x1
  31a44c: 9b03         	ldr	r3, [sp, #0xc]
  31a44e: 62da         	str	r2, [r3, #0x2c]
  31a450: f7fe fc54    	bl	0x318cfc <WormDrone::create()> @ imm = #-0x1758
  31a454: 4603         	mov	r3, r0
  31a456: 9306         	str	r3, [sp, #0x18]
  31a458: 9b03         	ldr	r3, [sp, #0xc]
  31a45a: 6adb         	ldr	r3, [r3, #0x2c]
  31a45c: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x31a610 <EnemyManager::createWormDrone(cpVect)+0x1dc>
  31a45e: 447a         	add	r2, pc
  31a460: 4610         	mov	r0, r2
  31a462: 4619         	mov	r1, r3
  31a464: f27f fb54    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x27f6a8
  31a468: 4603         	mov	r3, r0
  31a46a: 9307         	str	r3, [sp, #0x1c]
  31a46c: 9b03         	ldr	r3, [sp, #0xc]
  31a46e: 6a9d         	ldr	r5, [r3, #0x28]
  31a470: 9807         	ldr	r0, [sp, #0x1c]
  31a472: f27f fa59    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f4b2
  31a476: 4606         	mov	r6, r0
  31a478: ab04         	add	r3, sp, #0x10
  31a47a: 4618         	mov	r0, r3
  31a47c: f06f f7ba    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46ff74
  31a480: aa05         	add	r2, sp, #0x14
  31a482: ab04         	add	r3, sp, #0x10
  31a484: 4610         	mov	r0, r2
  31a486: 4631         	mov	r1, r6
  31a488: 461a         	mov	r2, r3
  31a48a: f09c f2e9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c5d2
  31a48e: ab05         	add	r3, sp, #0x14
  31a490: 4628         	mov	r0, r5
  31a492: 9906         	ldr	r1, [sp, #0x18]
  31a494: 461a         	mov	r2, r3
  31a496: f27a fa4f    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27a49e
  31a49a: ab05         	add	r3, sp, #0x14
  31a49c: 4618         	mov	r0, r3
  31a49e: f09b f239    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b472
  31a4a2: ab04         	add	r3, sp, #0x10
  31a4a4: 4618         	mov	r0, r3
  31a4a6: f06f f7a9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ff52
  31a4aa: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x31a614 <EnemyManager::createWormDrone(cpVect)+0x1e0>
  31a4ac: 58e3         	ldr	r3, [r4, r3]
  31a4ae: 681d         	ldr	r5, [r3]
  31a4b0: 9807         	ldr	r0, [sp, #0x1c]
  31a4b2: f27f fa39    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f472
  31a4b6: 4606         	mov	r6, r0
  31a4b8: ab04         	add	r3, sp, #0x10
  31a4ba: 4618         	mov	r0, r3
  31a4bc: f06f f79a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46ff34
  31a4c0: aa05         	add	r2, sp, #0x14
  31a4c2: ab04         	add	r3, sp, #0x10
  31a4c4: 4610         	mov	r0, r2
  31a4c6: 4631         	mov	r1, r6
  31a4c8: 461a         	mov	r2, r3
  31a4ca: f09c f2c9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c592
  31a4ce: ab05         	add	r3, sp, #0x14
  31a4d0: 4628         	mov	r0, r5
  31a4d2: 9906         	ldr	r1, [sp, #0x18]
  31a4d4: 461a         	mov	r2, r3
  31a4d6: f27a fa2f    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x27a45e
  31a4da: ab05         	add	r3, sp, #0x14
  31a4dc: 4618         	mov	r0, r3
  31a4de: f09b f219    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b432
  31a4e2: ab04         	add	r3, sp, #0x10
  31a4e4: 4618         	mov	r0, r3
  31a4e6: f06f f789    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ff12
  31a4ea: 9b06         	ldr	r3, [sp, #0x18]
  31a4ec: 681b         	ldr	r3, [r3]
  31a4ee: f503 7307    	add.w	r3, r3, #0x21c
  31a4f2: 681d         	ldr	r5, [r3]
  31a4f4: 9807         	ldr	r0, [sp, #0x1c]
  31a4f6: f27f fa17    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f42e
  31a4fa: 4606         	mov	r6, r0
  31a4fc: ab04         	add	r3, sp, #0x10
  31a4fe: 4618         	mov	r0, r3
  31a500: f06f f778    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46fef0
  31a504: aa05         	add	r2, sp, #0x14
  31a506: ab04         	add	r3, sp, #0x10
  31a508: 4610         	mov	r0, r2
  31a50a: 4631         	mov	r1, r6
  31a50c: 461a         	mov	r2, r3
  31a50e: f09c f2a7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c54e
  31a512: ab05         	add	r3, sp, #0x14
  31a514: 9806         	ldr	r0, [sp, #0x18]
  31a516: 4619         	mov	r1, r3
  31a518: 47a8         	blx	r5
  31a51a: ab05         	add	r3, sp, #0x14
  31a51c: 4618         	mov	r0, r3
  31a51e: f09b f1f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b3f2
  31a522: ab04         	add	r3, sp, #0x10
  31a524: 4618         	mov	r0, r3
  31a526: f06f f769    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fed2
  31a52a: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x31a618 <EnemyManager::createWormDrone(cpVect)+0x1e4>
  31a52c: 58e3         	ldr	r3, [r4, r3]
  31a52e: 681b         	ldr	r3, [r3]
  31a530: 681b         	ldr	r3, [r3]
  31a532: 33cc         	adds	r3, #0xcc
  31a534: 681b         	ldr	r3, [r3]
  31a536: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x31a618 <EnemyManager::createWormDrone(cpVect)+0x1e4>
  31a538: 58a2         	ldr	r2, [r4, r2]
  31a53a: 6812         	ldr	r2, [r2]
  31a53c: 4610         	mov	r0, r2
  31a53e: 9906         	ldr	r1, [sp, #0x18]
  31a540: 2203         	movs	r2, #0x3
  31a542: 4798         	blx	r3
  31a544: 9b06         	ldr	r3, [sp, #0x18]
  31a546: 681b         	ldr	r3, [r3]
  31a548: f503 73ec    	add.w	r3, r3, #0x1d8
  31a54c: 681b         	ldr	r3, [r3]
  31a54e: 9806         	ldr	r0, [sp, #0x18]
  31a550: 4798         	blx	r3
  31a552: 9b06         	ldr	r3, [sp, #0x18]
  31a554: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  31a558: f103 0428    	add.w	r4, r3, #0x28
  31a55c: ab0c         	add	r3, sp, #0x30
  31a55e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31a560: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31a564: 9b06         	ldr	r3, [sp, #0x18]
  31a566: 681b         	ldr	r3, [r3]
  31a568: 3390         	adds	r3, #0x90
  31a56a: 681b         	ldr	r3, [r3]
  31a56c: 9a06         	ldr	r2, [sp, #0x18]
  31a56e: 4610         	mov	r0, r2
  31a570: 2100         	movs	r1, #0x0
  31a572: 4798         	blx	r3
  31a574: 9b06         	ldr	r3, [sp, #0x18]
  31a576: 681b         	ldr	r3, [r3]
  31a578: f503 7305    	add.w	r3, r3, #0x214
  31a57c: 681b         	ldr	r3, [r3]
  31a57e: 9806         	ldr	r0, [sp, #0x18]
  31a580: 2100         	movs	r1, #0x0
  31a582: 4798         	blx	r3
  31a584: 9b06         	ldr	r3, [sp, #0x18]
  31a586: 681b         	ldr	r3, [r3]
  31a588: f503 7306    	add.w	r3, r3, #0x218
  31a58c: 681c         	ldr	r4, [r3]
  31a58e: 9d06         	ldr	r5, [sp, #0x18]
  31a590: 4b22         	ldr	r3, [pc, #0x88]         @ 0x31a61c <EnemyManager::createWormDrone(cpVect)+0x1e8>
  31a592: 447b         	add	r3, pc
  31a594: 466a         	mov	r2, sp
  31a596: f103 0108    	add.w	r1, r3, #0x8
  31a59a: c903         	ldm	r1, {r0, r1}
  31a59c: e882 0003    	stm.w	r2, {r0, r1}
  31a5a0: cb0c         	ldm	r3, {r2, r3}
  31a5a2: 4628         	mov	r0, r5
  31a5a4: 47a0         	blx	r4
  31a5a6: f2c6 f883    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c6106
  31a5aa: 4603         	mov	r3, r0
  31a5ac: 4618         	mov	r0, r3
  31a5ae: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x31a620 <EnemyManager::createWormDrone(cpVect)+0x1ec>
  31a5b0: 447b         	add	r3, pc
  31a5b2: 4619         	mov	r1, r3
  31a5b4: 9a07         	ldr	r2, [sp, #0x1c]
  31a5b6: f2c6 fab9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c6572
  31a5ba: 9b06         	ldr	r3, [sp, #0x18]
  31a5bc: e020         	b	0x31a600 <EnemyManager::createWormDrone(cpVect)+0x1cc> @ imm = #0x40
  31a5be: ab05         	add	r3, sp, #0x14
  31a5c0: 4618         	mov	r0, r3
  31a5c2: f09b f1a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b34e
  31a5c6: e7ff         	b	0x31a5c8 <EnemyManager::createWormDrone(cpVect)+0x194> @ imm = #-0x2
  31a5c8: ab04         	add	r3, sp, #0x10
  31a5ca: 4618         	mov	r0, r3
  31a5cc: f06f f716    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fe2c
  31a5d0: f06d f56c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46dad8
  31a5d4: ab05         	add	r3, sp, #0x14
  31a5d6: 4618         	mov	r0, r3
  31a5d8: f09b f19c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b338
  31a5dc: e7ff         	b	0x31a5de <EnemyManager::createWormDrone(cpVect)+0x1aa> @ imm = #-0x2
  31a5de: ab04         	add	r3, sp, #0x10
  31a5e0: 4618         	mov	r0, r3
  31a5e2: f06f f70b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fe16
  31a5e6: f06d f561    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46dac2
  31a5ea: ab05         	add	r3, sp, #0x14
  31a5ec: 4618         	mov	r0, r3
  31a5ee: f09b f191    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b322
  31a5f2: e7ff         	b	0x31a5f4 <EnemyManager::createWormDrone(cpVect)+0x1c0> @ imm = #-0x2
  31a5f4: ab04         	add	r3, sp, #0x10
  31a5f6: 4618         	mov	r0, r3
  31a5f8: f06f f700    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fe00
  31a5fc: f06d f556    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46daac
  31a600: 4618         	mov	r0, r3
  31a602: b008         	add	sp, #0x20
  31a604: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  31a608: b002         	add	sp, #0x8
  31a60a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31a60b); words below are literal-pool data ---
  31a60c: 85c4         	strh	r4, [r0, #0x2e]
  31a60e: 0061         	lsls	r1, r4, #0x1
  31a610: cbf2         	ldm	r3!, {r1, r4, r5, r6, r7}
  31a612: 004a         	lsls	r2, r1, #0x1
  31a614: d9f8         	bls	0x31a608 <EnemyManager::createWormDrone(cpVect)+0x1d4> @ imm = #-0x10
  31a616: ffff d744    	<unknown>
  31a61a: ffff cb2a    	vtbl.8	d28, {d15, d16, d17, d18}, d26
  31a61e: 004a         	lsls	r2, r1, #0x1
  31a620: caa8         	ldm	r2!, {r3, r5, r7}
  31a622: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::addWormDrone
//      file offset 0x31a624 (= ELF address; Ghidra 0x32a624), 292 bytes, Thumb-2
  31a624: b082         	sub	sp, #0x8
  31a626: b530         	push	{r4, r5, lr}
  31a628: b089         	sub	sp, #0x24
  31a62a: 9001         	str	r0, [sp, #0x4]
  31a62c: a90c         	add	r1, sp, #0x30
  31a62e: e881 000c    	stm.w	r1, {r2, r3}
  31a632: 9b01         	ldr	r3, [sp, #0x4]
  31a634: 6a9b         	ldr	r3, [r3, #0x28]
  31a636: 4618         	mov	r0, r3
  31a638: f279 fb18    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x279630
  31a63c: 4603         	mov	r3, r0
  31a63e: 2b00         	cmp	r3, #0x0
  31a640: bf0c         	ite	eq
  31a642: 2300         	moveq	r3, #0x0
  31a644: 2301         	movne	r3, #0x1
  31a646: b2db         	uxtb	r3, r3
  31a648: 2b00         	cmp	r3, #0x0
  31a64a: d061         	beq	0x31a710 <EnemyManager::addWormDrone(cpVect)+0xec> @ imm = #0xc2
  31a64c: 9b01         	ldr	r3, [sp, #0x4]
  31a64e: 6a9b         	ldr	r3, [r3, #0x28]
  31a650: 4618         	mov	r0, r3
  31a652: f279 fb1b    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x279636
  31a656: 4603         	mov	r3, r0
  31a658: 4618         	mov	r0, r3
  31a65a: f27f fd6f    	bl	0x59a13c <cocos2d::CCArray::lastObject()> @ imm = #0x27fade
  31a65e: 4603         	mov	r3, r0
  31a660: 9305         	str	r3, [sp, #0x14]
  31a662: 9b01         	ldr	r3, [sp, #0x4]
  31a664: 6a9c         	ldr	r4, [r3, #0x28]
  31a666: 9805         	ldr	r0, [sp, #0x14]
  31a668: f27f f95e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f2bc
  31a66c: 4605         	mov	r5, r0
  31a66e: ab03         	add	r3, sp, #0xc
  31a670: 4618         	mov	r0, r3
  31a672: f06f f6bf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46fd7e
  31a676: aa04         	add	r2, sp, #0x10
  31a678: ab03         	add	r3, sp, #0xc
  31a67a: 4610         	mov	r0, r2
  31a67c: 4629         	mov	r1, r5
  31a67e: 461a         	mov	r2, r3
  31a680: f09c f1ee    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c3dc
  31a684: ab04         	add	r3, sp, #0x10
  31a686: 4620         	mov	r0, r4
  31a688: 4619         	mov	r1, r3
  31a68a: f279 fc31    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x279862
  31a68e: 4603         	mov	r3, r0
  31a690: 9306         	str	r3, [sp, #0x18]
  31a692: ab04         	add	r3, sp, #0x10
  31a694: 4618         	mov	r0, r3
  31a696: f09b f13d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b27a
  31a69a: ab03         	add	r3, sp, #0xc
  31a69c: 4618         	mov	r0, r3
  31a69e: f06f f6ad    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fd5a
  31a6a2: 9801         	ldr	r0, [sp, #0x4]
  31a6a4: 9906         	ldr	r1, [sp, #0x18]
  31a6a6: f7ff f9c3    	bl	0x319a30 <EnemyManager::spawnWormDrone(WormDrone*)> @ imm = #-0xc7a
  31a6aa: 9b06         	ldr	r3, [sp, #0x18]
  31a6ac: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  31a6b0: f103 0428    	add.w	r4, r3, #0x28
  31a6b4: ab0c         	add	r3, sp, #0x30
  31a6b6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31a6b8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31a6bc: 9b06         	ldr	r3, [sp, #0x18]
  31a6be: 681b         	ldr	r3, [r3]
  31a6c0: f503 73e0    	add.w	r3, r3, #0x1c0
  31a6c4: 681b         	ldr	r3, [r3]
  31a6c6: aa04         	add	r2, sp, #0x10
  31a6c8: 4610         	mov	r0, r2
  31a6ca: 9906         	ldr	r1, [sp, #0x18]
  31a6cc: 4798         	blx	r3
  31a6ce: ab04         	add	r3, sp, #0x10
  31a6d0: 4618         	mov	r0, r3
  31a6d2: f27f f9b3    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x27f366
  31a6d6: 4604         	mov	r4, r0
  31a6d8: f04f 0000    	mov.w	r0, #0x0
  31a6dc: f7c2 fad2    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3da5c
  31a6e0: 4603         	mov	r3, r0
  31a6e2: 4620         	mov	r0, r4
  31a6e4: 4619         	mov	r1, r3
  31a6e6: 2200         	movs	r2, #0x0
  31a6e8: f27f fb92    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x27f724
  31a6ec: 4603         	mov	r3, r0
  31a6ee: 9307         	str	r3, [sp, #0x1c]
  31a6f0: ab04         	add	r3, sp, #0x10
  31a6f2: 4618         	mov	r0, r3
  31a6f4: f09b f10e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b21c
  31a6f8: f2c5 ffda    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c5fb4
  31a6fc: 4603         	mov	r3, r0
  31a6fe: 4618         	mov	r0, r3
  31a700: 4b10         	ldr	r3, [pc, #0x40]         @ 0x31a744 <EnemyManager::addWormDrone(cpVect)+0x120>
  31a702: 447b         	add	r3, pc
  31a704: 4619         	mov	r1, r3
  31a706: 9a07         	ldr	r2, [sp, #0x1c]
  31a708: f2c6 fa10    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c6420
  31a70c: 9b06         	ldr	r3, [sp, #0x18]
  31a70e: e012         	b	0x31a736 <EnemyManager::addWormDrone(cpVect)+0x112> @ imm = #0x24
  31a710: 2300         	movs	r3, #0x0
  31a712: e010         	b	0x31a736 <EnemyManager::addWormDrone(cpVect)+0x112> @ imm = #0x20
  31a714: ab04         	add	r3, sp, #0x10
  31a716: 4618         	mov	r0, r3
  31a718: f09b f0fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b1f8
  31a71c: e7ff         	b	0x31a71e <EnemyManager::addWormDrone(cpVect)+0xfa> @ imm = #-0x2
  31a71e: ab03         	add	r3, sp, #0xc
  31a720: 4618         	mov	r0, r3
  31a722: f06f f66b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fcd6
  31a726: f06d f4c1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d982
  31a72a: ab04         	add	r3, sp, #0x10
  31a72c: 4618         	mov	r0, r3
  31a72e: f09b f0f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b1e2
  31a732: f06d f4bb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d976
  31a736: 4618         	mov	r0, r3
  31a738: b009         	add	sp, #0x24
  31a73a: e8bd 4030    	pop.w	{r4, r5, lr}
  31a73e: b002         	add	sp, #0x8
  31a740: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31a741); words below are literal-pool data ---
  31a742: bf00         	nop
  31a744: c962         	ldm	r1, {r1, r5, r6}
  31a746: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::addHawkDrone
//      file offset 0x31a748 (= ELF address; Ghidra 0x32a748), 292 bytes, Thumb-2
  31a748: b082         	sub	sp, #0x8
  31a74a: b530         	push	{r4, r5, lr}
  31a74c: b089         	sub	sp, #0x24
  31a74e: 9001         	str	r0, [sp, #0x4]
  31a750: a90c         	add	r1, sp, #0x30
  31a752: e881 000c    	stm.w	r1, {r2, r3}
  31a756: 9b01         	ldr	r3, [sp, #0x4]
  31a758: 6a1b         	ldr	r3, [r3, #0x20]
  31a75a: 4618         	mov	r0, r3
  31a75c: f279 fa86    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27950c
  31a760: 4603         	mov	r3, r0
  31a762: 2b00         	cmp	r3, #0x0
  31a764: bf0c         	ite	eq
  31a766: 2300         	moveq	r3, #0x0
  31a768: 2301         	movne	r3, #0x1
  31a76a: b2db         	uxtb	r3, r3
  31a76c: 2b00         	cmp	r3, #0x0
  31a76e: d061         	beq	0x31a834 <EnemyManager::addHawkDrone(cpVect)+0xec> @ imm = #0xc2
  31a770: 9b01         	ldr	r3, [sp, #0x4]
  31a772: 6a1b         	ldr	r3, [r3, #0x20]
  31a774: 4618         	mov	r0, r3
  31a776: f279 fa89    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x279512
  31a77a: 4603         	mov	r3, r0
  31a77c: 4618         	mov	r0, r3
  31a77e: f27f fcdd    	bl	0x59a13c <cocos2d::CCArray::lastObject()> @ imm = #0x27f9ba
  31a782: 4603         	mov	r3, r0
  31a784: 9305         	str	r3, [sp, #0x14]
  31a786: 9b01         	ldr	r3, [sp, #0x4]
  31a788: 6a1c         	ldr	r4, [r3, #0x20]
  31a78a: 9805         	ldr	r0, [sp, #0x14]
  31a78c: f27f f8cc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f198
  31a790: 4605         	mov	r5, r0
  31a792: ab03         	add	r3, sp, #0xc
  31a794: 4618         	mov	r0, r3
  31a796: f06f f62d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46fc5a
  31a79a: aa04         	add	r2, sp, #0x10
  31a79c: ab03         	add	r3, sp, #0xc
  31a79e: 4610         	mov	r0, r2
  31a7a0: 4629         	mov	r1, r5
  31a7a2: 461a         	mov	r2, r3
  31a7a4: f09c f15c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c2b8
  31a7a8: ab04         	add	r3, sp, #0x10
  31a7aa: 4620         	mov	r0, r4
  31a7ac: 4619         	mov	r1, r3
  31a7ae: f279 fb9f    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27973e
  31a7b2: 4603         	mov	r3, r0
  31a7b4: 9306         	str	r3, [sp, #0x18]
  31a7b6: ab04         	add	r3, sp, #0x10
  31a7b8: 4618         	mov	r0, r3
  31a7ba: f09b f0ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b156
  31a7be: ab03         	add	r3, sp, #0xc
  31a7c0: 4618         	mov	r0, r3
  31a7c2: f06f f61b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fc36
  31a7c6: 9801         	ldr	r0, [sp, #0x4]
  31a7c8: 9906         	ldr	r1, [sp, #0x18]
  31a7ca: f7ff f9a9    	bl	0x319b20 <EnemyManager::spawnHawkDrone(HawkDrone*)> @ imm = #-0xcae
  31a7ce: 9b06         	ldr	r3, [sp, #0x18]
  31a7d0: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  31a7d4: f103 0428    	add.w	r4, r3, #0x28
  31a7d8: ab0c         	add	r3, sp, #0x30
  31a7da: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31a7dc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31a7e0: 9b06         	ldr	r3, [sp, #0x18]
  31a7e2: 681b         	ldr	r3, [r3]
  31a7e4: f503 73e0    	add.w	r3, r3, #0x1c0
  31a7e8: 681b         	ldr	r3, [r3]
  31a7ea: aa04         	add	r2, sp, #0x10
  31a7ec: 4610         	mov	r0, r2
  31a7ee: 9906         	ldr	r1, [sp, #0x18]
  31a7f0: 4798         	blx	r3
  31a7f2: ab04         	add	r3, sp, #0x10
  31a7f4: 4618         	mov	r0, r3
  31a7f6: f27f f921    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x27f242
  31a7fa: 4604         	mov	r4, r0
  31a7fc: f04f 0000    	mov.w	r0, #0x0
  31a800: f7c2 fa40    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3db80
  31a804: 4603         	mov	r3, r0
  31a806: 4620         	mov	r0, r4
  31a808: 4619         	mov	r1, r3
  31a80a: 2200         	movs	r2, #0x0
  31a80c: f27f fb00    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x27f600
  31a810: 4603         	mov	r3, r0
  31a812: 9307         	str	r3, [sp, #0x1c]
  31a814: ab04         	add	r3, sp, #0x10
  31a816: 4618         	mov	r0, r3
  31a818: f09b f07c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b0f8
  31a81c: f2c5 ff48    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c5e90
  31a820: 4603         	mov	r3, r0
  31a822: 4618         	mov	r0, r3
  31a824: 4b10         	ldr	r3, [pc, #0x40]         @ 0x31a868 <EnemyManager::addHawkDrone(cpVect)+0x120>
  31a826: 447b         	add	r3, pc
  31a828: 4619         	mov	r1, r3
  31a82a: 9a07         	ldr	r2, [sp, #0x1c]
  31a82c: f2c6 f97e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c62fc
  31a830: 9b06         	ldr	r3, [sp, #0x18]
  31a832: e012         	b	0x31a85a <EnemyManager::addHawkDrone(cpVect)+0x112> @ imm = #0x24
  31a834: 2300         	movs	r3, #0x0
  31a836: e010         	b	0x31a85a <EnemyManager::addHawkDrone(cpVect)+0x112> @ imm = #0x20
  31a838: ab04         	add	r3, sp, #0x10
  31a83a: 4618         	mov	r0, r3
  31a83c: f09b f06a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b0d4
  31a840: e7ff         	b	0x31a842 <EnemyManager::addHawkDrone(cpVect)+0xfa> @ imm = #-0x2
  31a842: ab03         	add	r3, sp, #0xc
  31a844: 4618         	mov	r0, r3
  31a846: f06f f5d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fbb2
  31a84a: f06d f42f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d85e
  31a84e: ab04         	add	r3, sp, #0x10
  31a850: 4618         	mov	r0, r3
  31a852: f09b f05f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b0be
  31a856: f06d f429    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d852
  31a85a: 4618         	mov	r0, r3
  31a85c: b009         	add	sp, #0x24
  31a85e: e8bd 4030    	pop.w	{r4, r5, lr}
  31a862: b002         	add	sp, #0x8
  31a864: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31a865); words below are literal-pool data ---
  31a866: bf00         	nop
  31a868: c83e         	ldm	r0!, {r1, r2, r3, r4, r5}
  31a86a: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::addHumanoidDrone
//      file offset 0x31a86c (= ELF address; Ghidra 0x32a86c), 444 bytes, Thumb-2
  31a86c: b082         	sub	sp, #0x8
  31a86e: b530         	push	{r4, r5, lr}
  31a870: b089         	sub	sp, #0x24
  31a872: 9001         	str	r0, [sp, #0x4]
  31a874: a90c         	add	r1, sp, #0x30
  31a876: e881 000c    	stm.w	r1, {r2, r3}
  31a87a: 9b01         	ldr	r3, [sp, #0x4]
  31a87c: 6a5b         	ldr	r3, [r3, #0x24]
  31a87e: 4618         	mov	r0, r3
  31a880: f279 f9f4    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x2793e8
  31a884: 4603         	mov	r3, r0
  31a886: 2b00         	cmp	r3, #0x0
  31a888: bf0c         	ite	eq
  31a88a: 2300         	moveq	r3, #0x0
  31a88c: 2301         	movne	r3, #0x1
  31a88e: b2db         	uxtb	r3, r3
  31a890: 2b00         	cmp	r3, #0x0
  31a892: f000 80ad    	beq.w	0x31a9f0 <EnemyManager::addHumanoidDrone(cpVect)+0x184> @ imm = #0x15a
  31a896: 9b01         	ldr	r3, [sp, #0x4]
  31a898: 6a5b         	ldr	r3, [r3, #0x24]
  31a89a: 4618         	mov	r0, r3
  31a89c: f279 f9f6    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x2793ec
  31a8a0: 4603         	mov	r3, r0
  31a8a2: 4618         	mov	r0, r3
  31a8a4: f27f fc4a    	bl	0x59a13c <cocos2d::CCArray::lastObject()> @ imm = #0x27f894
  31a8a8: 4603         	mov	r3, r0
  31a8aa: 9303         	str	r3, [sp, #0xc]
  31a8ac: 9b01         	ldr	r3, [sp, #0x4]
  31a8ae: 6a5c         	ldr	r4, [r3, #0x24]
  31a8b0: 9803         	ldr	r0, [sp, #0xc]
  31a8b2: f27f f839    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27f072
  31a8b6: 4605         	mov	r5, r0
  31a8b8: ab02         	add	r3, sp, #0x8
  31a8ba: 4618         	mov	r0, r3
  31a8bc: f06f f59a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46fb34
  31a8c0: aa06         	add	r2, sp, #0x18
  31a8c2: ab02         	add	r3, sp, #0x8
  31a8c4: 4610         	mov	r0, r2
  31a8c6: 4629         	mov	r1, r5
  31a8c8: 461a         	mov	r2, r3
  31a8ca: f09c f0c9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49c192
  31a8ce: ab06         	add	r3, sp, #0x18
  31a8d0: 4620         	mov	r0, r4
  31a8d2: 4619         	mov	r1, r3
  31a8d4: f279 fb0c    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x279618
  31a8d8: 4603         	mov	r3, r0
  31a8da: 9304         	str	r3, [sp, #0x10]
  31a8dc: ab06         	add	r3, sp, #0x18
  31a8de: 4618         	mov	r0, r3
  31a8e0: f09b f018    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49b030
  31a8e4: ab02         	add	r3, sp, #0x8
  31a8e6: 4618         	mov	r0, r3
  31a8e8: f06f f588    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46fb10
  31a8ec: 9801         	ldr	r0, [sp, #0x4]
  31a8ee: 9904         	ldr	r1, [sp, #0x10]
  31a8f0: f7ff f98a    	bl	0x319c08 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)> @ imm = #-0xcec
  31a8f4: 9b04         	ldr	r3, [sp, #0x10]
  31a8f6: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a8fa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  31a8fe: f103 0428    	add.w	r4, r3, #0x28
  31a902: ab0c         	add	r3, sp, #0x30
  31a904: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31a906: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31a90a: 9b04         	ldr	r3, [sp, #0x10]
  31a90c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a910: 681b         	ldr	r3, [r3]
  31a912: f503 73ec    	add.w	r3, r3, #0x1d8
  31a916: 681b         	ldr	r3, [r3]
  31a918: 9a04         	ldr	r2, [sp, #0x10]
  31a91a: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  31a91e: 4610         	mov	r0, r2
  31a920: 4798         	blx	r3
  31a922: 4603         	mov	r3, r0
  31a924: 461c         	mov	r4, r3
  31a926: 6823         	ldr	r3, [r4]
  31a928: 334c         	adds	r3, #0x4c
  31a92a: 681d         	ldr	r5, [r3]
  31a92c: ed9d 7b0c    	vldr	d7, [sp, #48]
  31a930: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31a934: ed9d 7b0e    	vldr	d7, [sp, #56]
  31a938: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31a93c: ab06         	add	r3, sp, #0x18
  31a93e: 4618         	mov	r0, r3
  31a940: ee16 1a90    	vmov	r1, s13
  31a944: ee17 2a90    	vmov	r2, s15
  31a948: f278 f9d2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2783a4
  31a94c: ab06         	add	r3, sp, #0x18
  31a94e: 4620         	mov	r0, r4
  31a950: 4619         	mov	r1, r3
  31a952: 47a8         	blx	r5
  31a954: 9b04         	ldr	r3, [sp, #0x10]
  31a956: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a95a: 681b         	ldr	r3, [r3]
  31a95c: f503 7305    	add.w	r3, r3, #0x214
  31a960: 681c         	ldr	r4, [r3]
  31a962: 9b04         	ldr	r3, [sp, #0x10]
  31a964: f8d3 51ac    	ldr.w	r5, [r3, #0x1ac]
  31a968: f0fd f80c    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xfd018
  31a96c: 4603         	mov	r3, r0
  31a96e: 4618         	mov	r0, r3
  31a970: f0fd fd92    	bl	0x418498 <WeaponFactory::createRandomPrimaryWeapon()> @ imm = #0xfdb24
  31a974: 4603         	mov	r3, r0
  31a976: 4628         	mov	r0, r5
  31a978: 4619         	mov	r1, r3
  31a97a: 47a0         	blx	r4
  31a97c: 9b04         	ldr	r3, [sp, #0x10]
  31a97e: 681b         	ldr	r3, [r3]
  31a980: f503 73e0    	add.w	r3, r3, #0x1c0
  31a984: 681b         	ldr	r3, [r3]
  31a986: aa06         	add	r2, sp, #0x18
  31a988: 4610         	mov	r0, r2
  31a98a: 9904         	ldr	r1, [sp, #0x10]
  31a98c: 4798         	blx	r3
  31a98e: ab06         	add	r3, sp, #0x18
  31a990: 4618         	mov	r0, r3
  31a992: f27f f853    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x27f0a6
  31a996: 4604         	mov	r4, r0
  31a998: 9b04         	ldr	r3, [sp, #0x10]
  31a99a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31a99e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  31a9a2: 681b         	ldr	r3, [r3]
  31a9a4: f503 731f    	add.w	r3, r3, #0x27c
  31a9a8: 681b         	ldr	r3, [r3]
  31a9aa: 9a04         	ldr	r2, [sp, #0x10]
  31a9ac: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  31a9b0: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  31a9b4: 4610         	mov	r0, r2
  31a9b6: 4798         	blx	r3
  31a9b8: 4603         	mov	r3, r0
  31a9ba: 4618         	mov	r0, r3
  31a9bc: f7ca f9a4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x35cb8
  31a9c0: 4603         	mov	r3, r0
  31a9c2: 4620         	mov	r0, r4
  31a9c4: 4619         	mov	r1, r3
  31a9c6: 2200         	movs	r2, #0x0
  31a9c8: f27f fa22    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x27f444
  31a9cc: 4603         	mov	r3, r0
  31a9ce: 9305         	str	r3, [sp, #0x14]
  31a9d0: ab06         	add	r3, sp, #0x18
  31a9d2: 4618         	mov	r0, r3
  31a9d4: f09a f79e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49af3c
  31a9d8: f2c5 fe6a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c5cd4
  31a9dc: 4603         	mov	r3, r0
  31a9de: 4618         	mov	r0, r3
  31a9e0: 4b10         	ldr	r3, [pc, #0x40]         @ 0x31aa24 <EnemyManager::addHumanoidDrone(cpVect)+0x1b8>
  31a9e2: 447b         	add	r3, pc
  31a9e4: 4619         	mov	r1, r3
  31a9e6: 9a05         	ldr	r2, [sp, #0x14]
  31a9e8: f2c6 f8a0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c6140
  31a9ec: 9b04         	ldr	r3, [sp, #0x10]
  31a9ee: e012         	b	0x31aa16 <EnemyManager::addHumanoidDrone(cpVect)+0x1aa> @ imm = #0x24
  31a9f0: 2300         	movs	r3, #0x0
  31a9f2: e010         	b	0x31aa16 <EnemyManager::addHumanoidDrone(cpVect)+0x1aa> @ imm = #0x20
  31a9f4: ab06         	add	r3, sp, #0x18
  31a9f6: 4618         	mov	r0, r3
  31a9f8: f09a f78c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49af18
  31a9fc: e7ff         	b	0x31a9fe <EnemyManager::addHumanoidDrone(cpVect)+0x192> @ imm = #-0x2
  31a9fe: ab02         	add	r3, sp, #0x8
  31aa00: 4618         	mov	r0, r3
  31aa02: f06f f4fb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f9f6
  31aa06: f06d f351    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d6a2
  31aa0a: ab06         	add	r3, sp, #0x18
  31aa0c: 4618         	mov	r0, r3
  31aa0e: f09a f781    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49af02
  31aa12: f06d f34b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d696
  31aa16: 4618         	mov	r0, r3
  31aa18: b009         	add	sp, #0x24
  31aa1a: e8bd 4030    	pop.w	{r4, r5, lr}
  31aa1e: b002         	add	sp, #0x8
  31aa20: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31aa21); words below are literal-pool data ---
  31aa22: bf00         	nop
  31aa24: c682         	stm	r6!, {r1, r7}
  31aa26: 004a         	lsls	r2, r1, #0x1

// ==== EnemyManager::onEnemyDamaged
//      file offset 0x31aa28 (= ELF address; Ghidra 0x32aa28), 276 bytes, Thumb-2
  31aa28: b570         	push	{r4, r5, r6, lr}
  31aa2a: b08a         	sub	sp, #0x28
  31aa2c: 9001         	str	r0, [sp, #0x4]
  31aa2e: 9100         	str	r1, [sp]
  31aa30: 4c40         	ldr	r4, [pc, #0x100]        @ 0x31ab34 <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0x10c>
  31aa32: 447c         	add	r4, pc
  31aa34: 9b00         	ldr	r3, [sp]
  31aa36: 9304         	str	r3, [sp, #0x10]
  31aa38: 9804         	ldr	r0, [sp, #0x10]
  31aa3a: 2104         	movs	r1, #0x4
  31aa3c: f27f fb70    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f6e0
  31aa40: 4603         	mov	r3, r0
  31aa42: 9305         	str	r3, [sp, #0x14]
  31aa44: 9804         	ldr	r0, [sp, #0x10]
  31aa46: 2105         	movs	r1, #0x5
  31aa48: f27f fb6a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f6d4
  31aa4c: 4603         	mov	r3, r0
  31aa4e: 9306         	str	r3, [sp, #0x18]
  31aa50: 9804         	ldr	r0, [sp, #0x10]
  31aa52: 2108         	movs	r1, #0x8
  31aa54: f27f fb64    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f6c8
  31aa58: 4603         	mov	r3, r0
  31aa5a: 9307         	str	r3, [sp, #0x1c]
  31aa5c: 9804         	ldr	r0, [sp, #0x10]
  31aa5e: 2109         	movs	r1, #0x9
  31aa60: f27f fb5e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f6bc
  31aa64: 4603         	mov	r3, r0
  31aa66: 9308         	str	r3, [sp, #0x20]
  31aa68: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x31ab38 <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0x110>
  31aa6a: 58e3         	ldr	r3, [r4, r3]
  31aa6c: 681c         	ldr	r4, [r3]
  31aa6e: 9807         	ldr	r0, [sp, #0x1c]
  31aa70: f27e ff5a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27eeb4
  31aa74: 4605         	mov	r5, r0
  31aa76: ab02         	add	r3, sp, #0x8
  31aa78: 4618         	mov	r0, r3
  31aa7a: f06f f4bb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f976
  31aa7e: aa03         	add	r2, sp, #0xc
  31aa80: ab02         	add	r3, sp, #0x8
  31aa82: 4610         	mov	r0, r2
  31aa84: 4629         	mov	r1, r5
  31aa86: 461a         	mov	r2, r3
  31aa88: f09b f7ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49bfd4
  31aa8c: ab03         	add	r3, sp, #0xc
  31aa8e: 4620         	mov	r0, r4
  31aa90: 4619         	mov	r1, r3
  31aa92: f279 fa2d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27945a
  31aa96: 4603         	mov	r3, r0
  31aa98: 9309         	str	r3, [sp, #0x24]
  31aa9a: ab03         	add	r3, sp, #0xc
  31aa9c: 4618         	mov	r0, r3
  31aa9e: f09a f739    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ae72
  31aaa2: ab02         	add	r3, sp, #0x8
  31aaa4: 4618         	mov	r0, r3
  31aaa6: f06f f4a9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f952
  31aaaa: 9b09         	ldr	r3, [sp, #0x24]
  31aaac: 2b00         	cmp	r3, #0x0
  31aaae: d03e         	beq	0x31ab2e <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0x106> @ imm = #0x7c
  31aab0: 9b09         	ldr	r3, [sp, #0x24]
  31aab2: 681b         	ldr	r3, [r3]
  31aab4: f503 73f0    	add.w	r3, r3, #0x1e0
  31aab8: 681c         	ldr	r4, [r3]
  31aaba: 9806         	ldr	r0, [sp, #0x18]
  31aabc: f7d2 f9ca    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2dc6c
  31aac0: 4605         	mov	r5, r0
  31aac2: 9808         	ldr	r0, [sp, #0x20]
  31aac4: f27e ff30    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27ee60
  31aac8: 4606         	mov	r6, r0
  31aaca: ab02         	add	r3, sp, #0x8
  31aacc: 4618         	mov	r0, r3
  31aace: f06f f491    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f922
  31aad2: aa03         	add	r2, sp, #0xc
  31aad4: ab02         	add	r3, sp, #0x8
  31aad6: 4610         	mov	r0, r2
  31aad8: 4631         	mov	r1, r6
  31aada: 461a         	mov	r2, r3
  31aadc: f09b f7c0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49bf80
  31aae0: 9805         	ldr	r0, [sp, #0x14]
  31aae2: f7d2 f9b7    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2dc92
  31aae6: 4603         	mov	r3, r0
  31aae8: aa03         	add	r2, sp, #0xc
  31aaea: 9809         	ldr	r0, [sp, #0x24]
  31aaec: 4629         	mov	r1, r5
  31aaee: 47a0         	blx	r4
  31aaf0: ab03         	add	r3, sp, #0xc
  31aaf2: 4618         	mov	r0, r3
  31aaf4: f09a f70e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ae1c
  31aaf8: ab02         	add	r3, sp, #0x8
  31aafa: 4618         	mov	r0, r3
  31aafc: f06f f47e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f8fc
  31ab00: e015         	b	0x31ab2e <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0x106> @ imm = #0x2a
  31ab02: ab03         	add	r3, sp, #0xc
  31ab04: 4618         	mov	r0, r3
  31ab06: f09a f705    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ae0a
  31ab0a: e7ff         	b	0x31ab0c <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0xe4> @ imm = #-0x2
  31ab0c: ab02         	add	r3, sp, #0x8
  31ab0e: 4618         	mov	r0, r3
  31ab10: f06f f474    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f8e8
  31ab14: f06d f2ca    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d594
  31ab18: ab03         	add	r3, sp, #0xc
  31ab1a: 4618         	mov	r0, r3
  31ab1c: f09a f6fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49adf4
  31ab20: e7ff         	b	0x31ab22 <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0xfa> @ imm = #-0x2
  31ab22: ab02         	add	r3, sp, #0x8
  31ab24: 4618         	mov	r0, r3
  31ab26: f06f f469    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f8d2
  31ab2a: f06d f2bf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d57e
  31ab2e: b00a         	add	sp, #0x28
  31ab30: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x31ab31); words below are literal-pool data ---
  31ab32: bf00         	nop
  31ab34: 7fd6         	ldrb	r6, [r2, #0x1f]
  31ab36: 0061         	lsls	r1, r4, #0x1
  31ab38: d9f8         	bls	0x31ab2c <EnemyManager::onEnemyDamaged(cocos2d::CCObject*)+0x104> @ imm = #-0x10
  31ab3a: ffff 0000    	<unknown>

// ==== EnemyManager::onExplosion
//      file offset 0x31ab40 (= ELF address; Ghidra 0x32ab40), 488 bytes, Thumb-2
  31ab40: b570         	push	{r4, r5, r6, lr}
  31ab42: ed2d 8b02    	vpush	{d8}
  31ab46: b09a         	sub	sp, #0x68
  31ab48: 9001         	str	r0, [sp, #0x4]
  31ab4a: 9100         	str	r1, [sp]
  31ab4c: 4c74         	ldr	r4, [pc, #0x1d0]        @ 0x31ad20 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1e0>
  31ab4e: 447c         	add	r4, pc
  31ab50: 9b00         	ldr	r3, [sp]
  31ab52: 9306         	str	r3, [sp, #0x18]
  31ab54: 9806         	ldr	r0, [sp, #0x18]
  31ab56: 2100         	movs	r1, #0x0
  31ab58: f27f fae2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f5c4
  31ab5c: 4603         	mov	r3, r0
  31ab5e: 9307         	str	r3, [sp, #0x1c]
  31ab60: 9806         	ldr	r0, [sp, #0x18]
  31ab62: 2101         	movs	r1, #0x1
  31ab64: f27f fadc    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f5b8
  31ab68: 4603         	mov	r3, r0
  31ab6a: 9308         	str	r3, [sp, #0x20]
  31ab6c: 9806         	ldr	r0, [sp, #0x18]
  31ab6e: 2104         	movs	r1, #0x4
  31ab70: f27f fad6    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f5ac
  31ab74: 4603         	mov	r3, r0
  31ab76: 9309         	str	r3, [sp, #0x24]
  31ab78: 9806         	ldr	r0, [sp, #0x18]
  31ab7a: 2107         	movs	r1, #0x7
  31ab7c: f27f fad0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f5a0
  31ab80: 4603         	mov	r3, r0
  31ab82: 930a         	str	r3, [sp, #0x28]
  31ab84: 9807         	ldr	r0, [sp, #0x1c]
  31ab86: f7c2 f875    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3df16
  31ab8a: ee07 0a90    	vmov	s15, r0
  31ab8e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31ab92: 9808         	ldr	r0, [sp, #0x20]
  31ab94: f7c2 f86e    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3df24
  31ab98: ee07 0a90    	vmov	s15, r0
  31ab9c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31aba0: ab0e         	add	r3, sp, #0x38
  31aba2: 4618         	mov	r0, r3
  31aba4: eeb0 0b48    	vmov.f64	d0, d8
  31aba8: eeb0 1b47    	vmov.f64	d1, d7
  31abac: f7fd f94a    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x2d6c
  31abb0: 2300         	movs	r3, #0x0
  31abb2: 9304         	str	r3, [sp, #0x10]
  31abb4: 2300         	movs	r3, #0x0
  31abb6: 9305         	str	r3, [sp, #0x14]
  31abb8: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x31ad24 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1e4>
  31abba: 58e3         	ldr	r3, [r4, r3]
  31abbc: 681b         	ldr	r3, [r3]
  31abbe: 2b00         	cmp	r3, #0x0
  31abc0: d00a         	beq	0x31abd8 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x98> @ imm = #0x14
  31abc2: 4b58         	ldr	r3, [pc, #0x160]        @ 0x31ad24 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1e4>
  31abc4: 58e3         	ldr	r3, [r4, r3]
  31abc6: 681b         	ldr	r3, [r3]
  31abc8: 4618         	mov	r0, r3
  31abca: f279 f84f    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x27909e
  31abce: 4603         	mov	r3, r0
  31abd0: 2b00         	cmp	r3, #0x0
  31abd2: d001         	beq	0x31abd8 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x98> @ imm = #0x2
  31abd4: 2301         	movs	r3, #0x1
  31abd6: e000         	b	0x31abda <EnemyManager::onExplosion(cocos2d::CCObject*)+0x9a> @ imm = #0x0
  31abd8: 2300         	movs	r3, #0x0
  31abda: 2b00         	cmp	r3, #0x0
  31abdc: f000 8094    	beq.w	0x31ad08 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1c8> @ imm = #0x128
  31abe0: 4b50         	ldr	r3, [pc, #0x140]        @ 0x31ad24 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1e4>
  31abe2: 58e3         	ldr	r3, [r4, r3]
  31abe4: 681b         	ldr	r3, [r3]
  31abe6: 695b         	ldr	r3, [r3, #0x14]
  31abe8: 9304         	str	r3, [sp, #0x10]
  31abea: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x31ad24 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1e4>
  31abec: 58e3         	ldr	r3, [r4, r3]
  31abee: 681b         	ldr	r3, [r3]
  31abf0: 695b         	ldr	r3, [r3, #0x14]
  31abf2: 2b00         	cmp	r3, #0x0
  31abf4: d006         	beq	0x31ac04 <EnemyManager::onExplosion(cocos2d::CCObject*)+0xc4> @ imm = #0xc
  31abf6: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x31ad24 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1e4>
  31abf8: 58e3         	ldr	r3, [r4, r3]
  31abfa: 681b         	ldr	r3, [r3]
  31abfc: 695b         	ldr	r3, [r3, #0x14]
  31abfe: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31ac02: e000         	b	0x31ac06 <EnemyManager::onExplosion(cocos2d::CCObject*)+0xc6> @ imm = #0x0
  31ac04: 2300         	movs	r3, #0x0
  31ac06: 9305         	str	r3, [sp, #0x14]
  31ac08: e06f         	b	0x31acea <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1aa> @ imm = #0xde
  31ac0a: 9804         	ldr	r0, [sp, #0x10]
  31ac0c: f7e3 fd12    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1c5dc
  31ac10: 4603         	mov	r3, r0
  31ac12: 930b         	str	r3, [sp, #0x2c]
  31ac14: 9b0b         	ldr	r3, [sp, #0x2c]
  31ac16: 681b         	ldr	r3, [r3]
  31ac18: f503 73d6    	add.w	r3, r3, #0x1ac
  31ac1c: 681b         	ldr	r3, [r3]
  31ac1e: aa12         	add	r2, sp, #0x48
  31ac20: 4610         	mov	r0, r2
  31ac22: 990b         	ldr	r1, [sp, #0x2c]
  31ac24: 4798         	blx	r3
  31ac26: ab16         	add	r3, sp, #0x58
  31ac28: ed9d 4b0e    	vldr	d4, [sp, #56]
  31ac2c: ed9d 5b10    	vldr	d5, [sp, #64]
  31ac30: ed9d 6b12    	vldr	d6, [sp, #72]
  31ac34: ed9d 7b14    	vldr	d7, [sp, #80]
  31ac38: 4618         	mov	r0, r3
  31ac3a: eeb0 0b44    	vmov.f64	d0, d4
  31ac3e: eeb0 1b45    	vmov.f64	d1, d5
  31ac42: eeb0 2b46    	vmov.f64	d2, d6
  31ac46: eeb0 3b47    	vmov.f64	d3, d7
  31ac4a: f7fd f90f    	bl	0x317e6c <Enemy::setRemoteMovement(cpVect)+0x1a4> @ imm = #-0x2de2
  31ac4e: ab16         	add	r3, sp, #0x58
  31ac50: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31ac52: f3bc fa31    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3bc462
  31ac56: 4602         	mov	r2, r0
  31ac58: 460b         	mov	r3, r1
  31ac5a: e9cd 230c    	strd	r2, r3, [sp, #48]
  31ac5e: ed9d 6b0c    	vldr	d6, [sp, #48]
  31ac62: ed9f 7b2b    	vldr	d7, [pc, #172]          @ 0x31ad10 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1d0>
  31ac66: eeb4 6bc7    	vcmpe.f64	d6, d7
  31ac6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31ac6e: d531         	bpl	0x31acd4 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x194> @ imm = #0x62
  31ac70: 9b0b         	ldr	r3, [sp, #0x2c]
  31ac72: 681b         	ldr	r3, [r3]
  31ac74: f503 73f0    	add.w	r3, r3, #0x1e0
  31ac78: 681c         	ldr	r4, [r3]
  31ac7a: ed9d 6b0c    	vldr	d6, [sp, #48]
  31ac7e: ed9f 7b26    	vldr	d7, [pc, #152]          @ 0x31ad18 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1d8>
  31ac82: ee26 6b07    	vmul.f64	d6, d6, d7
  31ac86: ed9f 7b22    	vldr	d7, [pc, #136]          @ 0x31ad10 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1d0>
  31ac8a: ee36 7b07    	vadd.f64	d7, d6, d7
  31ac8e: eefd 6bc7    	vcvt.s32.f64	s13, d7
  31ac92: ee16 6a90    	vmov	r6, s13
  31ac96: 980a         	ldr	r0, [sp, #0x28]
  31ac98: f27e fe46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27ec8c
  31ac9c: 4605         	mov	r5, r0
  31ac9e: ab02         	add	r3, sp, #0x8
  31aca0: 4618         	mov	r0, r3
  31aca2: f06f f3a7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f74e
  31aca6: aa03         	add	r2, sp, #0xc
  31aca8: ab02         	add	r3, sp, #0x8
  31acaa: 4610         	mov	r0, r2
  31acac: 4629         	mov	r1, r5
  31acae: 461a         	mov	r2, r3
  31acb0: f09b f6d6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49bdac
  31acb4: 9809         	ldr	r0, [sp, #0x24]
  31acb6: f7d2 f8cd    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2de66
  31acba: 4603         	mov	r3, r0
  31acbc: aa03         	add	r2, sp, #0xc
  31acbe: 980b         	ldr	r0, [sp, #0x2c]
  31acc0: 4631         	mov	r1, r6
  31acc2: 47a0         	blx	r4
  31acc4: ab03         	add	r3, sp, #0xc
  31acc6: 4618         	mov	r0, r3
  31acc8: f09a f624    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ac48
  31accc: ab02         	add	r3, sp, #0x8
  31acce: 4618         	mov	r0, r3
  31acd0: f06f f394    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f728
  31acd4: 9b05         	ldr	r3, [sp, #0x14]
  31acd6: 9304         	str	r3, [sp, #0x10]
  31acd8: 9b05         	ldr	r3, [sp, #0x14]
  31acda: 2b00         	cmp	r3, #0x0
  31acdc: d003         	beq	0x31ace6 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1a6> @ imm = #0x6
  31acde: 9b05         	ldr	r3, [sp, #0x14]
  31ace0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31ace4: e000         	b	0x31ace8 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1a8> @ imm = #0x0
  31ace6: 2300         	movs	r3, #0x0
  31ace8: 9305         	str	r3, [sp, #0x14]
  31acea: 9b04         	ldr	r3, [sp, #0x10]
  31acec: 2b00         	cmp	r3, #0x0
  31acee: d18c         	bne	0x31ac0a <EnemyManager::onExplosion(cocos2d::CCObject*)+0xca> @ imm = #-0xe8
  31acf0: e00a         	b	0x31ad08 <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1c8> @ imm = #0x14
  31acf2: ab03         	add	r3, sp, #0xc
  31acf4: 4618         	mov	r0, r3
  31acf6: f09a f60d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ac1a
  31acfa: e7ff         	b	0x31acfc <EnemyManager::onExplosion(cocos2d::CCObject*)+0x1bc> @ imm = #-0x2
  31acfc: ab02         	add	r3, sp, #0x8
  31acfe: 4618         	mov	r0, r3
  31ad00: f06f f37c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f6f8
  31ad04: f06d f1d2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d3a4
  31ad08: b01a         	add	sp, #0x68
  31ad0a: ecbd 8b02    	vpop	{d8}
  31ad0e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x31ad0f); words below are literal-pool data ---
  31ad10: 0000         	movs	r0, r0
  31ad12: 0000         	movs	r0, r0
  31ad14: 4000         	ands	r0, r0
  31ad16: 405f         	eors	r7, r3
  31ad18: 999a         	ldr	r1, [sp, #0x268]
  31ad1a: 9999         	ldr	r1, [sp, #0x264]
  31ad1c: 9999         	ldr	r1, [sp, #0x264]
  31ad1e: bfe9         	itett	al                      @ unpredictable IT predicate sequence
  31ad20: 7eba         	ldrb	r2, [r7, #0x1a]
  31ad22: 0061         	lsl<und>	r1, r4, #0x1
  31ad24: da08         	b	0x31ad38 <EnemyManager::getNextHawk()+0x10> @ imm = #0x10
  31ad26: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== EnemyManager::getNextHawk
//      file offset 0x31ad28 (= ELF address; Ghidra 0x32ad28), 208 bytes, Thumb-2
  31ad28: b530         	push	{r4, r5, lr}
  31ad2a: b087         	sub	sp, #0x1c
  31ad2c: 9001         	str	r0, [sp, #0x4]
  31ad2e: 9b01         	ldr	r3, [sp, #0x4]
  31ad30: 695b         	ldr	r3, [r3, #0x14]
  31ad32: 4618         	mov	r0, r3
  31ad34: f278 ff9a    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278f34
  31ad38: 4603         	mov	r3, r0
  31ad3a: 2b00         	cmp	r3, #0x0
  31ad3c: bf14         	ite	ne
  31ad3e: 2300         	movne	r3, #0x0
  31ad40: 2301         	moveq	r3, #0x1
  31ad42: b2db         	uxtb	r3, r3
  31ad44: 2b00         	cmp	r3, #0x0
  31ad46: d001         	beq	0x31ad4c <EnemyManager::getNextHawk()+0x24> @ imm = #0x2
  31ad48: 2400         	movs	r4, #0x0
  31ad4a: e045         	b	0x31add8 <EnemyManager::getNextHawk()+0xb0> @ imm = #0x8a
  31ad4c: 9b01         	ldr	r3, [sp, #0x4]
  31ad4e: 6b1b         	ldr	r3, [r3, #0x30]
  31ad50: 1c5a         	adds	r2, r3, #0x1
  31ad52: 9b01         	ldr	r3, [sp, #0x4]
  31ad54: 631a         	str	r2, [r3, #0x30]
  31ad56: 9b01         	ldr	r3, [sp, #0x4]
  31ad58: 6b1b         	ldr	r3, [r3, #0x30]
  31ad5a: 461c         	mov	r4, r3
  31ad5c: 9b01         	ldr	r3, [sp, #0x4]
  31ad5e: 695b         	ldr	r3, [r3, #0x14]
  31ad60: 4618         	mov	r0, r3
  31ad62: f278 ff83    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278f06
  31ad66: 4603         	mov	r3, r0
  31ad68: 429c         	cmp	r4, r3
  31ad6a: bf34         	ite	lo
  31ad6c: 2300         	movlo	r3, #0x0
  31ad6e: 2301         	movhs	r3, #0x1
  31ad70: b2db         	uxtb	r3, r3
  31ad72: 2b00         	cmp	r3, #0x0
  31ad74: d002         	beq	0x31ad7c <EnemyManager::getNextHawk()+0x54> @ imm = #0x4
  31ad76: 9b01         	ldr	r3, [sp, #0x4]
  31ad78: 2200         	movs	r2, #0x0
  31ad7a: 631a         	str	r2, [r3, #0x30]
  31ad7c: 9b01         	ldr	r3, [sp, #0x4]
  31ad7e: 695b         	ldr	r3, [r3, #0x14]
  31ad80: 4618         	mov	r0, r3
  31ad82: f278 ff83    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x278f06
  31ad86: 4603         	mov	r3, r0
  31ad88: 9304         	str	r3, [sp, #0x10]
  31ad8a: 9b01         	ldr	r3, [sp, #0x4]
  31ad8c: 6b1b         	ldr	r3, [r3, #0x30]
  31ad8e: 9804         	ldr	r0, [sp, #0x10]
  31ad90: 4619         	mov	r1, r3
  31ad92: f27f f9c5    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f38a
  31ad96: 4603         	mov	r3, r0
  31ad98: 9305         	str	r3, [sp, #0x14]
  31ad9a: 9b01         	ldr	r3, [sp, #0x4]
  31ad9c: 695c         	ldr	r4, [r3, #0x14]
  31ad9e: 9805         	ldr	r0, [sp, #0x14]
  31ada0: f27e fdc2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27eb84
  31ada4: 4605         	mov	r5, r0
  31ada6: ab02         	add	r3, sp, #0x8
  31ada8: 4618         	mov	r0, r3
  31adaa: f06f f323    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f646
  31adae: aa03         	add	r2, sp, #0xc
  31adb0: ab02         	add	r3, sp, #0x8
  31adb2: 4610         	mov	r0, r2
  31adb4: 4629         	mov	r1, r5
  31adb6: 461a         	mov	r2, r3
  31adb8: f09b f652    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49bca4
  31adbc: ab03         	add	r3, sp, #0xc
  31adbe: 4620         	mov	r0, r4
  31adc0: 4619         	mov	r1, r3
  31adc2: f279 f895    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27912a
  31adc6: 4604         	mov	r4, r0
  31adc8: ab03         	add	r3, sp, #0xc
  31adca: 4618         	mov	r0, r3
  31adcc: f09a f5a2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ab44
  31add0: ab02         	add	r3, sp, #0x8
  31add2: 4618         	mov	r0, r3
  31add4: f06f f312    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f624
  31add8: 4623         	mov	r3, r4
  31adda: e00a         	b	0x31adf2 <EnemyManager::getNextHawk()+0xca> @ imm = #0x14
  31addc: ab03         	add	r3, sp, #0xc
  31adde: 4618         	mov	r0, r3
  31ade0: f09a f598    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49ab30
  31ade4: e7ff         	b	0x31ade6 <EnemyManager::getNextHawk()+0xbe> @ imm = #-0x2
  31ade6: ab02         	add	r3, sp, #0x8
  31ade8: 4618         	mov	r0, r3
  31adea: f06f f307    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f60e
  31adee: f06d f15d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d2ba
  31adf2: 4618         	mov	r0, r3
  31adf4: b007         	add	sp, #0x1c
  31adf6: bd30         	pop	{r4, r5, pc}

// ==== EnemyManager::getNextHumanoid
//      file offset 0x31adf8 (= ELF address; Ghidra 0x32adf8), 208 bytes, Thumb-2
  31adf8: b530         	push	{r4, r5, lr}
  31adfa: b087         	sub	sp, #0x1c
  31adfc: 9001         	str	r0, [sp, #0x4]
  31adfe: 9b01         	ldr	r3, [sp, #0x4]
  31ae00: 699b         	ldr	r3, [r3, #0x18]
  31ae02: 4618         	mov	r0, r3
  31ae04: f278 ff32    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278e64
  31ae08: 4603         	mov	r3, r0
  31ae0a: 2b00         	cmp	r3, #0x0
  31ae0c: bf14         	ite	ne
  31ae0e: 2300         	movne	r3, #0x0
  31ae10: 2301         	moveq	r3, #0x1
  31ae12: b2db         	uxtb	r3, r3
  31ae14: 2b00         	cmp	r3, #0x0
  31ae16: d001         	beq	0x31ae1c <EnemyManager::getNextHumanoid()+0x24> @ imm = #0x2
  31ae18: 2400         	movs	r4, #0x0
  31ae1a: e045         	b	0x31aea8 <EnemyManager::getNextHumanoid()+0xb0> @ imm = #0x8a
  31ae1c: 9b01         	ldr	r3, [sp, #0x4]
  31ae1e: 6b9b         	ldr	r3, [r3, #0x38]
  31ae20: 1c5a         	adds	r2, r3, #0x1
  31ae22: 9b01         	ldr	r3, [sp, #0x4]
  31ae24: 639a         	str	r2, [r3, #0x38]
  31ae26: 9b01         	ldr	r3, [sp, #0x4]
  31ae28: 6b9b         	ldr	r3, [r3, #0x38]
  31ae2a: 461c         	mov	r4, r3
  31ae2c: 9b01         	ldr	r3, [sp, #0x4]
  31ae2e: 699b         	ldr	r3, [r3, #0x18]
  31ae30: 4618         	mov	r0, r3
  31ae32: f278 ff1b    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278e36
  31ae36: 4603         	mov	r3, r0
  31ae38: 429c         	cmp	r4, r3
  31ae3a: bf34         	ite	lo
  31ae3c: 2300         	movlo	r3, #0x0
  31ae3e: 2301         	movhs	r3, #0x1
  31ae40: b2db         	uxtb	r3, r3
  31ae42: 2b00         	cmp	r3, #0x0
  31ae44: d002         	beq	0x31ae4c <EnemyManager::getNextHumanoid()+0x54> @ imm = #0x4
  31ae46: 9b01         	ldr	r3, [sp, #0x4]
  31ae48: 2200         	movs	r2, #0x0
  31ae4a: 639a         	str	r2, [r3, #0x38]
  31ae4c: 9b01         	ldr	r3, [sp, #0x4]
  31ae4e: 699b         	ldr	r3, [r3, #0x18]
  31ae50: 4618         	mov	r0, r3
  31ae52: f278 ff1b    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x278e36
  31ae56: 4603         	mov	r3, r0
  31ae58: 9304         	str	r3, [sp, #0x10]
  31ae5a: 9b01         	ldr	r3, [sp, #0x4]
  31ae5c: 6b9b         	ldr	r3, [r3, #0x38]
  31ae5e: 9804         	ldr	r0, [sp, #0x10]
  31ae60: 4619         	mov	r1, r3
  31ae62: f27f f95d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f2ba
  31ae66: 4603         	mov	r3, r0
  31ae68: 9305         	str	r3, [sp, #0x14]
  31ae6a: 9b01         	ldr	r3, [sp, #0x4]
  31ae6c: 699c         	ldr	r4, [r3, #0x18]
  31ae6e: 9805         	ldr	r0, [sp, #0x14]
  31ae70: f27e fd5a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27eab4
  31ae74: 4605         	mov	r5, r0
  31ae76: ab02         	add	r3, sp, #0x8
  31ae78: 4618         	mov	r0, r3
  31ae7a: f06f f2bb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f576
  31ae7e: aa03         	add	r2, sp, #0xc
  31ae80: ab02         	add	r3, sp, #0x8
  31ae82: 4610         	mov	r0, r2
  31ae84: 4629         	mov	r1, r5
  31ae86: 461a         	mov	r2, r3
  31ae88: f09b f5ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49bbd4
  31ae8c: ab03         	add	r3, sp, #0xc
  31ae8e: 4620         	mov	r0, r4
  31ae90: 4619         	mov	r1, r3
  31ae92: f279 f82d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27905a
  31ae96: 4604         	mov	r4, r0
  31ae98: ab03         	add	r3, sp, #0xc
  31ae9a: 4618         	mov	r0, r3
  31ae9c: f09a f53a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49aa74
  31aea0: ab02         	add	r3, sp, #0x8
  31aea2: 4618         	mov	r0, r3
  31aea4: f06f f2aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f554
  31aea8: 4623         	mov	r3, r4
  31aeaa: e00a         	b	0x31aec2 <EnemyManager::getNextHumanoid()+0xca> @ imm = #0x14
  31aeac: ab03         	add	r3, sp, #0xc
  31aeae: 4618         	mov	r0, r3
  31aeb0: f09a f530    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49aa60
  31aeb4: e7ff         	b	0x31aeb6 <EnemyManager::getNextHumanoid()+0xbe> @ imm = #-0x2
  31aeb6: ab02         	add	r3, sp, #0x8
  31aeb8: 4618         	mov	r0, r3
  31aeba: f06f f29f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f53e
  31aebe: f06d f0f5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d1ea
  31aec2: 4618         	mov	r0, r3
  31aec4: b007         	add	sp, #0x1c
  31aec6: bd30         	pop	{r4, r5, pc}

// ==== EnemyManager::getNextWorm
//      file offset 0x31aec8 (= ELF address; Ghidra 0x32aec8), 208 bytes, Thumb-2
  31aec8: b530         	push	{r4, r5, lr}
  31aeca: b087         	sub	sp, #0x1c
  31aecc: 9001         	str	r0, [sp, #0x4]
  31aece: 9b01         	ldr	r3, [sp, #0x4]
  31aed0: 69db         	ldr	r3, [r3, #0x1c]
  31aed2: 4618         	mov	r0, r3
  31aed4: f278 feca    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278d94
  31aed8: 4603         	mov	r3, r0
  31aeda: 2b00         	cmp	r3, #0x0
  31aedc: bf14         	ite	ne
  31aede: 2300         	movne	r3, #0x0
  31aee0: 2301         	moveq	r3, #0x1
  31aee2: b2db         	uxtb	r3, r3
  31aee4: 2b00         	cmp	r3, #0x0
  31aee6: d001         	beq	0x31aeec <EnemyManager::getNextWorm()+0x24> @ imm = #0x2
  31aee8: 2400         	movs	r4, #0x0
  31aeea: e045         	b	0x31af78 <EnemyManager::getNextWorm()+0xb0> @ imm = #0x8a
  31aeec: 9b01         	ldr	r3, [sp, #0x4]
  31aeee: 6b5b         	ldr	r3, [r3, #0x34]
  31aef0: 1c5a         	adds	r2, r3, #0x1
  31aef2: 9b01         	ldr	r3, [sp, #0x4]
  31aef4: 635a         	str	r2, [r3, #0x34]
  31aef6: 9b01         	ldr	r3, [sp, #0x4]
  31aef8: 6b5b         	ldr	r3, [r3, #0x34]
  31aefa: 461c         	mov	r4, r3
  31aefc: 9b01         	ldr	r3, [sp, #0x4]
  31aefe: 69db         	ldr	r3, [r3, #0x1c]
  31af00: 4618         	mov	r0, r3
  31af02: f278 feb3    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278d66
  31af06: 4603         	mov	r3, r0
  31af08: 429c         	cmp	r4, r3
  31af0a: bf34         	ite	lo
  31af0c: 2300         	movlo	r3, #0x0
  31af0e: 2301         	movhs	r3, #0x1
  31af10: b2db         	uxtb	r3, r3
  31af12: 2b00         	cmp	r3, #0x0
  31af14: d002         	beq	0x31af1c <EnemyManager::getNextWorm()+0x54> @ imm = #0x4
  31af16: 9b01         	ldr	r3, [sp, #0x4]
  31af18: 2200         	movs	r2, #0x0
  31af1a: 635a         	str	r2, [r3, #0x34]
  31af1c: 9b01         	ldr	r3, [sp, #0x4]
  31af1e: 69db         	ldr	r3, [r3, #0x1c]
  31af20: 4618         	mov	r0, r3
  31af22: f278 feb3    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x278d66
  31af26: 4603         	mov	r3, r0
  31af28: 9304         	str	r3, [sp, #0x10]
  31af2a: 9b01         	ldr	r3, [sp, #0x4]
  31af2c: 6b5b         	ldr	r3, [r3, #0x34]
  31af2e: 9804         	ldr	r0, [sp, #0x10]
  31af30: 4619         	mov	r1, r3
  31af32: f27f f8f5    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f1ea
  31af36: 4603         	mov	r3, r0
  31af38: 9305         	str	r3, [sp, #0x14]
  31af3a: 9b01         	ldr	r3, [sp, #0x4]
  31af3c: 69dc         	ldr	r4, [r3, #0x1c]
  31af3e: 9805         	ldr	r0, [sp, #0x14]
  31af40: f27e fcf2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e9e4
  31af44: 4605         	mov	r5, r0
  31af46: ab02         	add	r3, sp, #0x8
  31af48: 4618         	mov	r0, r3
  31af4a: f06f f253    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f4a6
  31af4e: aa03         	add	r2, sp, #0xc
  31af50: ab02         	add	r3, sp, #0x8
  31af52: 4610         	mov	r0, r2
  31af54: 4629         	mov	r1, r5
  31af56: 461a         	mov	r2, r3
  31af58: f09b f582    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49bb04
  31af5c: ab03         	add	r3, sp, #0xc
  31af5e: 4620         	mov	r0, r4
  31af60: 4619         	mov	r1, r3
  31af62: f278 ffc5    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278f8a
  31af66: 4604         	mov	r4, r0
  31af68: ab03         	add	r3, sp, #0xc
  31af6a: 4618         	mov	r0, r3
  31af6c: f09a f4d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a9a4
  31af70: ab02         	add	r3, sp, #0x8
  31af72: 4618         	mov	r0, r3
  31af74: f06f f242    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f484
  31af78: 4623         	mov	r3, r4
  31af7a: e00a         	b	0x31af92 <EnemyManager::getNextWorm()+0xca> @ imm = #0x14
  31af7c: ab03         	add	r3, sp, #0xc
  31af7e: 4618         	mov	r0, r3
  31af80: f09a f4c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a990
  31af84: e7ff         	b	0x31af86 <EnemyManager::getNextWorm()+0xbe> @ imm = #-0x2
  31af86: ab02         	add	r3, sp, #0x8
  31af88: 4618         	mov	r0, r3
  31af8a: f06f f237    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f46e
  31af8e: f06d f08d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d11a
  31af92: 4618         	mov	r0, r3
  31af94: b007         	add	sp, #0x1c
  31af96: bd30         	pop	{r4, r5, pc}

// ==== EnemyManager::getNextEnemy
//      file offset 0x31af98 (= ELF address; Ghidra 0x32af98), 228 bytes, Thumb-2
  31af98: b530         	push	{r4, r5, lr}
  31af9a: b087         	sub	sp, #0x1c
  31af9c: 9001         	str	r0, [sp, #0x4]
  31af9e: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x31b074 <EnemyManager::getNextEnemy()+0xdc>
  31afa0: 447c         	add	r4, pc
  31afa2: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x31b078 <EnemyManager::getNextEnemy()+0xe0>
  31afa4: 58e3         	ldr	r3, [r4, r3]
  31afa6: 681b         	ldr	r3, [r3]
  31afa8: 4618         	mov	r0, r3
  31afaa: f278 fe5f    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278cbe
  31afae: 4603         	mov	r3, r0
  31afb0: 2b00         	cmp	r3, #0x0
  31afb2: bf14         	ite	ne
  31afb4: 2300         	movne	r3, #0x0
  31afb6: 2301         	moveq	r3, #0x1
  31afb8: b2db         	uxtb	r3, r3
  31afba: 2b00         	cmp	r3, #0x0
  31afbc: d001         	beq	0x31afc2 <EnemyManager::getNextEnemy()+0x2a> @ imm = #0x2
  31afbe: 2400         	movs	r4, #0x0
  31afc0: e048         	b	0x31b054 <EnemyManager::getNextEnemy()+0xbc> @ imm = #0x90
  31afc2: 9b01         	ldr	r3, [sp, #0x4]
  31afc4: 6bdb         	ldr	r3, [r3, #0x3c]
  31afc6: 1c5a         	adds	r2, r3, #0x1
  31afc8: 9b01         	ldr	r3, [sp, #0x4]
  31afca: 63da         	str	r2, [r3, #0x3c]
  31afcc: 9b01         	ldr	r3, [sp, #0x4]
  31afce: 6bdb         	ldr	r3, [r3, #0x3c]
  31afd0: 461d         	mov	r5, r3
  31afd2: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x31b078 <EnemyManager::getNextEnemy()+0xe0>
  31afd4: 58e3         	ldr	r3, [r4, r3]
  31afd6: 681b         	ldr	r3, [r3]
  31afd8: 4618         	mov	r0, r3
  31afda: f278 fe47    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278c8e
  31afde: 4603         	mov	r3, r0
  31afe0: 429d         	cmp	r5, r3
  31afe2: bf34         	ite	lo
  31afe4: 2300         	movlo	r3, #0x0
  31afe6: 2301         	movhs	r3, #0x1
  31afe8: b2db         	uxtb	r3, r3
  31afea: 2b00         	cmp	r3, #0x0
  31afec: d002         	beq	0x31aff4 <EnemyManager::getNextEnemy()+0x5c> @ imm = #0x4
  31afee: 9b01         	ldr	r3, [sp, #0x4]
  31aff0: 2200         	movs	r2, #0x0
  31aff2: 63da         	str	r2, [r3, #0x3c]
  31aff4: 4b20         	ldr	r3, [pc, #0x80]         @ 0x31b078 <EnemyManager::getNextEnemy()+0xe0>
  31aff6: 58e3         	ldr	r3, [r4, r3]
  31aff8: 681b         	ldr	r3, [r3]
  31affa: 4618         	mov	r0, r3
  31affc: f278 fe46    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x278c8c
  31b000: 4603         	mov	r3, r0
  31b002: 9304         	str	r3, [sp, #0x10]
  31b004: 9b01         	ldr	r3, [sp, #0x4]
  31b006: 6bdb         	ldr	r3, [r3, #0x3c]
  31b008: 9804         	ldr	r0, [sp, #0x10]
  31b00a: 4619         	mov	r1, r3
  31b00c: f27f f888    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27f110
  31b010: 4603         	mov	r3, r0
  31b012: 9305         	str	r3, [sp, #0x14]
  31b014: 4b18         	ldr	r3, [pc, #0x60]         @ 0x31b078 <EnemyManager::getNextEnemy()+0xe0>
  31b016: 58e3         	ldr	r3, [r4, r3]
  31b018: 681c         	ldr	r4, [r3]
  31b01a: 9805         	ldr	r0, [sp, #0x14]
  31b01c: f27e fc84    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e908
  31b020: 4605         	mov	r5, r0
  31b022: ab02         	add	r3, sp, #0x8
  31b024: 4618         	mov	r0, r3
  31b026: f06f f1e5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f3ca
  31b02a: aa03         	add	r2, sp, #0xc
  31b02c: ab02         	add	r3, sp, #0x8
  31b02e: 4610         	mov	r0, r2
  31b030: 4629         	mov	r1, r5
  31b032: 461a         	mov	r2, r3
  31b034: f09b f514    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49ba28
  31b038: ab03         	add	r3, sp, #0xc
  31b03a: 4620         	mov	r0, r4
  31b03c: 4619         	mov	r1, r3
  31b03e: f278 ff57    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278eae
  31b042: 4604         	mov	r4, r0
  31b044: ab03         	add	r3, sp, #0xc
  31b046: 4618         	mov	r0, r3
  31b048: f09a f464    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a8c8
  31b04c: ab02         	add	r3, sp, #0x8
  31b04e: 4618         	mov	r0, r3
  31b050: f06f f1d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f3a8
  31b054: 4623         	mov	r3, r4
  31b056: e00a         	b	0x31b06e <EnemyManager::getNextEnemy()+0xd6> @ imm = #0x14
  31b058: ab03         	add	r3, sp, #0xc
  31b05a: 4618         	mov	r0, r3
  31b05c: f09a f45a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a8b4
  31b060: e7ff         	b	0x31b062 <EnemyManager::getNextEnemy()+0xca> @ imm = #-0x2
  31b062: ab02         	add	r3, sp, #0x8
  31b064: 4618         	mov	r0, r3
  31b066: f06f f1c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f392
  31b06a: f06d f01f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46d03e
  31b06e: 4618         	mov	r0, r3
  31b070: b007         	add	sp, #0x1c
  31b072: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31b073); words below are literal-pool data ---
  31b074: 7a68         	ldrb	r0, [r5, #0x9]
  31b076: 0061         	lsls	r1, r4, #0x1
  31b078: da08         	bge	0x31b08c <EnemyManager::killAllEnemies()+0x10> @ imm = #0x10
  31b07a: ffff b500    	<unknown>

// ==== EnemyManager::killAllEnemies
//      file offset 0x31b07c (= ELF address; Ghidra 0x32b07c), 400 bytes, Thumb-2
  31b07c: b500         	push	{lr}
  31b07e: b08b         	sub	sp, #0x2c
  31b080: 9001         	str	r0, [sp, #0x4]
  31b082: 2300         	movs	r3, #0x0
  31b084: 9303         	str	r3, [sp, #0xc]
  31b086: 2300         	movs	r3, #0x0
  31b088: 9304         	str	r3, [sp, #0x10]
  31b08a: 9b01         	ldr	r3, [sp, #0x4]
  31b08c: 695b         	ldr	r3, [r3, #0x14]
  31b08e: 2b00         	cmp	r3, #0x0
  31b090: d009         	beq	0x31b0a6 <EnemyManager::killAllEnemies()+0x2a> @ imm = #0x12
  31b092: 9b01         	ldr	r3, [sp, #0x4]
  31b094: 695b         	ldr	r3, [r3, #0x14]
  31b096: 4618         	mov	r0, r3
  31b098: f278 fde8    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278bd0
  31b09c: 4603         	mov	r3, r0
  31b09e: 2b00         	cmp	r3, #0x0
  31b0a0: d001         	beq	0x31b0a6 <EnemyManager::killAllEnemies()+0x2a> @ imm = #0x2
  31b0a2: 2301         	movs	r3, #0x1
  31b0a4: e000         	b	0x31b0a8 <EnemyManager::killAllEnemies()+0x2c> @ imm = #0x0
  31b0a6: 2300         	movs	r3, #0x0
  31b0a8: 2b00         	cmp	r3, #0x0
  31b0aa: d02c         	beq	0x31b106 <EnemyManager::killAllEnemies()+0x8a> @ imm = #0x58
  31b0ac: 9b01         	ldr	r3, [sp, #0x4]
  31b0ae: 695b         	ldr	r3, [r3, #0x14]
  31b0b0: 695b         	ldr	r3, [r3, #0x14]
  31b0b2: 9303         	str	r3, [sp, #0xc]
  31b0b4: 9b01         	ldr	r3, [sp, #0x4]
  31b0b6: 695b         	ldr	r3, [r3, #0x14]
  31b0b8: 695b         	ldr	r3, [r3, #0x14]
  31b0ba: 2b00         	cmp	r3, #0x0
  31b0bc: d005         	beq	0x31b0ca <EnemyManager::killAllEnemies()+0x4e> @ imm = #0xa
  31b0be: 9b01         	ldr	r3, [sp, #0x4]
  31b0c0: 695b         	ldr	r3, [r3, #0x14]
  31b0c2: 695b         	ldr	r3, [r3, #0x14]
  31b0c4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31b0c8: e000         	b	0x31b0cc <EnemyManager::killAllEnemies()+0x50> @ imm = #0x0
  31b0ca: 2300         	movs	r3, #0x0
  31b0cc: 9304         	str	r3, [sp, #0x10]
  31b0ce: e017         	b	0x31b100 <EnemyManager::killAllEnemies()+0x84> @ imm = #0x2e
  31b0d0: 9803         	ldr	r0, [sp, #0xc]
  31b0d2: f7e3 faaf    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1caa2
  31b0d6: 4603         	mov	r3, r0
  31b0d8: 9307         	str	r3, [sp, #0x1c]
  31b0da: 9b07         	ldr	r3, [sp, #0x1c]
  31b0dc: 681b         	ldr	r3, [r3]
  31b0de: f503 73f4    	add.w	r3, r3, #0x1e8
  31b0e2: 681b         	ldr	r3, [r3]
  31b0e4: 9807         	ldr	r0, [sp, #0x1c]
  31b0e6: 2100         	movs	r1, #0x0
  31b0e8: 4798         	blx	r3
  31b0ea: 9b04         	ldr	r3, [sp, #0x10]
  31b0ec: 9303         	str	r3, [sp, #0xc]
  31b0ee: 9b04         	ldr	r3, [sp, #0x10]
  31b0f0: 2b00         	cmp	r3, #0x0
  31b0f2: d003         	beq	0x31b0fc <EnemyManager::killAllEnemies()+0x80> @ imm = #0x6
  31b0f4: 9b04         	ldr	r3, [sp, #0x10]
  31b0f6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31b0fa: e000         	b	0x31b0fe <EnemyManager::killAllEnemies()+0x82> @ imm = #0x0
  31b0fc: 2300         	movs	r3, #0x0
  31b0fe: 9304         	str	r3, [sp, #0x10]
  31b100: 9b03         	ldr	r3, [sp, #0xc]
  31b102: 2b00         	cmp	r3, #0x0
  31b104: d1e4         	bne	0x31b0d0 <EnemyManager::killAllEnemies()+0x54> @ imm = #-0x38
  31b106: 2300         	movs	r3, #0x0
  31b108: 9305         	str	r3, [sp, #0x14]
  31b10a: 9b01         	ldr	r3, [sp, #0x4]
  31b10c: 69db         	ldr	r3, [r3, #0x1c]
  31b10e: 2b00         	cmp	r3, #0x0
  31b110: d009         	beq	0x31b126 <EnemyManager::killAllEnemies()+0xaa> @ imm = #0x12
  31b112: 9b01         	ldr	r3, [sp, #0x4]
  31b114: 69db         	ldr	r3, [r3, #0x1c]
  31b116: 4618         	mov	r0, r3
  31b118: f278 fda8    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278b50
  31b11c: 4603         	mov	r3, r0
  31b11e: 2b00         	cmp	r3, #0x0
  31b120: d001         	beq	0x31b126 <EnemyManager::killAllEnemies()+0xaa> @ imm = #0x2
  31b122: 2301         	movs	r3, #0x1
  31b124: e000         	b	0x31b128 <EnemyManager::killAllEnemies()+0xac> @ imm = #0x0
  31b126: 2300         	movs	r3, #0x0
  31b128: 2b00         	cmp	r3, #0x0
  31b12a: d02c         	beq	0x31b186 <EnemyManager::killAllEnemies()+0x10a> @ imm = #0x58
  31b12c: 9b01         	ldr	r3, [sp, #0x4]
  31b12e: 69db         	ldr	r3, [r3, #0x1c]
  31b130: 695b         	ldr	r3, [r3, #0x14]
  31b132: 9303         	str	r3, [sp, #0xc]
  31b134: 9b01         	ldr	r3, [sp, #0x4]
  31b136: 69db         	ldr	r3, [r3, #0x1c]
  31b138: 695b         	ldr	r3, [r3, #0x14]
  31b13a: 2b00         	cmp	r3, #0x0
  31b13c: d005         	beq	0x31b14a <EnemyManager::killAllEnemies()+0xce> @ imm = #0xa
  31b13e: 9b01         	ldr	r3, [sp, #0x4]
  31b140: 69db         	ldr	r3, [r3, #0x1c]
  31b142: 695b         	ldr	r3, [r3, #0x14]
  31b144: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31b148: e000         	b	0x31b14c <EnemyManager::killAllEnemies()+0xd0> @ imm = #0x0
  31b14a: 2300         	movs	r3, #0x0
  31b14c: 9305         	str	r3, [sp, #0x14]
  31b14e: e017         	b	0x31b180 <EnemyManager::killAllEnemies()+0x104> @ imm = #0x2e
  31b150: 9803         	ldr	r0, [sp, #0xc]
  31b152: f7e3 fa6f    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1cb22
  31b156: 4603         	mov	r3, r0
  31b158: 9308         	str	r3, [sp, #0x20]
  31b15a: 9b08         	ldr	r3, [sp, #0x20]
  31b15c: 681b         	ldr	r3, [r3]
  31b15e: f503 73f4    	add.w	r3, r3, #0x1e8
  31b162: 681b         	ldr	r3, [r3]
  31b164: 9808         	ldr	r0, [sp, #0x20]
  31b166: 2100         	movs	r1, #0x0
  31b168: 4798         	blx	r3
  31b16a: 9b05         	ldr	r3, [sp, #0x14]
  31b16c: 9303         	str	r3, [sp, #0xc]
  31b16e: 9b05         	ldr	r3, [sp, #0x14]
  31b170: 2b00         	cmp	r3, #0x0
  31b172: d003         	beq	0x31b17c <EnemyManager::killAllEnemies()+0x100> @ imm = #0x6
  31b174: 9b05         	ldr	r3, [sp, #0x14]
  31b176: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31b17a: e000         	b	0x31b17e <EnemyManager::killAllEnemies()+0x102> @ imm = #0x0
  31b17c: 2300         	movs	r3, #0x0
  31b17e: 9305         	str	r3, [sp, #0x14]
  31b180: 9b03         	ldr	r3, [sp, #0xc]
  31b182: 2b00         	cmp	r3, #0x0
  31b184: d1e4         	bne	0x31b150 <EnemyManager::killAllEnemies()+0xd4> @ imm = #-0x38
  31b186: 2300         	movs	r3, #0x0
  31b188: 9306         	str	r3, [sp, #0x18]
  31b18a: 9b01         	ldr	r3, [sp, #0x4]
  31b18c: 699b         	ldr	r3, [r3, #0x18]
  31b18e: 2b00         	cmp	r3, #0x0
  31b190: d009         	beq	0x31b1a6 <EnemyManager::killAllEnemies()+0x12a> @ imm = #0x12
  31b192: 9b01         	ldr	r3, [sp, #0x4]
  31b194: 699b         	ldr	r3, [r3, #0x18]
  31b196: 4618         	mov	r0, r3
  31b198: f278 fd68    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x278ad0
  31b19c: 4603         	mov	r3, r0
  31b19e: 2b00         	cmp	r3, #0x0
  31b1a0: d001         	beq	0x31b1a6 <EnemyManager::killAllEnemies()+0x12a> @ imm = #0x2
  31b1a2: 2301         	movs	r3, #0x1
  31b1a4: e000         	b	0x31b1a8 <EnemyManager::killAllEnemies()+0x12c> @ imm = #0x0
  31b1a6: 2300         	movs	r3, #0x0
  31b1a8: 2b00         	cmp	r3, #0x0
  31b1aa: d02c         	beq	0x31b206 <EnemyManager::killAllEnemies()+0x18a> @ imm = #0x58
  31b1ac: 9b01         	ldr	r3, [sp, #0x4]
  31b1ae: 699b         	ldr	r3, [r3, #0x18]
  31b1b0: 695b         	ldr	r3, [r3, #0x14]
  31b1b2: 9303         	str	r3, [sp, #0xc]
  31b1b4: 9b01         	ldr	r3, [sp, #0x4]
  31b1b6: 699b         	ldr	r3, [r3, #0x18]
  31b1b8: 695b         	ldr	r3, [r3, #0x14]
  31b1ba: 2b00         	cmp	r3, #0x0
  31b1bc: d005         	beq	0x31b1ca <EnemyManager::killAllEnemies()+0x14e> @ imm = #0xa
  31b1be: 9b01         	ldr	r3, [sp, #0x4]
  31b1c0: 699b         	ldr	r3, [r3, #0x18]
  31b1c2: 695b         	ldr	r3, [r3, #0x14]
  31b1c4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31b1c8: e000         	b	0x31b1cc <EnemyManager::killAllEnemies()+0x150> @ imm = #0x0
  31b1ca: 2300         	movs	r3, #0x0
  31b1cc: 9306         	str	r3, [sp, #0x18]
  31b1ce: e017         	b	0x31b200 <EnemyManager::killAllEnemies()+0x184> @ imm = #0x2e
  31b1d0: 9803         	ldr	r0, [sp, #0xc]
  31b1d2: f7e3 fa2f    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1cba2
  31b1d6: 4603         	mov	r3, r0
  31b1d8: 9309         	str	r3, [sp, #0x24]
  31b1da: 9b09         	ldr	r3, [sp, #0x24]
  31b1dc: 681b         	ldr	r3, [r3]
  31b1de: f503 73f4    	add.w	r3, r3, #0x1e8
  31b1e2: 681b         	ldr	r3, [r3]
  31b1e4: 9809         	ldr	r0, [sp, #0x24]
  31b1e6: 2100         	movs	r1, #0x0
  31b1e8: 4798         	blx	r3
  31b1ea: 9b06         	ldr	r3, [sp, #0x18]
  31b1ec: 9303         	str	r3, [sp, #0xc]
  31b1ee: 9b06         	ldr	r3, [sp, #0x18]
  31b1f0: 2b00         	cmp	r3, #0x0
  31b1f2: d003         	beq	0x31b1fc <EnemyManager::killAllEnemies()+0x180> @ imm = #0x6
  31b1f4: 9b06         	ldr	r3, [sp, #0x18]
  31b1f6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31b1fa: e000         	b	0x31b1fe <EnemyManager::killAllEnemies()+0x182> @ imm = #0x0
  31b1fc: 2300         	movs	r3, #0x0
  31b1fe: 9306         	str	r3, [sp, #0x18]
  31b200: 9b03         	ldr	r3, [sp, #0xc]
  31b202: 2b00         	cmp	r3, #0x0
  31b204: d1e4         	bne	0x31b1d0 <EnemyManager::killAllEnemies()+0x154> @ imm = #-0x38
  31b206: b00b         	add	sp, #0x2c
  31b208: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::addHawkDroneById
//      file offset 0x31b20c (= ELF address; Ghidra 0x32b20c), 42 bytes, Thumb-2
  31b20c: b500         	push	{lr}
  31b20e: b085         	sub	sp, #0x14
  31b210: 9001         	str	r0, [sp, #0x4]
  31b212: 9100         	str	r1, [sp]
  31b214: 9b01         	ldr	r3, [sp, #0x4]
  31b216: 6a1b         	ldr	r3, [r3, #0x20]
  31b218: 4618         	mov	r0, r3
  31b21a: 9900         	ldr	r1, [sp]
  31b21c: f278 fe68    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278cd0
  31b220: 4603         	mov	r3, r0
  31b222: 9303         	str	r3, [sp, #0xc]
  31b224: 9801         	ldr	r0, [sp, #0x4]
  31b226: 9903         	ldr	r1, [sp, #0xc]
  31b228: f7fe fc7a    	bl	0x319b20 <EnemyManager::spawnHawkDrone(HawkDrone*)> @ imm = #-0x170c
  31b22c: 9b03         	ldr	r3, [sp, #0xc]
  31b22e: 4618         	mov	r0, r3
  31b230: b005         	add	sp, #0x14
  31b232: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::addWormDroneById
//      file offset 0x31b238 (= ELF address; Ghidra 0x32b238), 42 bytes, Thumb-2
  31b238: b500         	push	{lr}
  31b23a: b085         	sub	sp, #0x14
  31b23c: 9001         	str	r0, [sp, #0x4]
  31b23e: 9100         	str	r1, [sp]
  31b240: 9b01         	ldr	r3, [sp, #0x4]
  31b242: 6a9b         	ldr	r3, [r3, #0x28]
  31b244: 4618         	mov	r0, r3
  31b246: 9900         	ldr	r1, [sp]
  31b248: f278 fe52    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278ca4
  31b24c: 4603         	mov	r3, r0
  31b24e: 9303         	str	r3, [sp, #0xc]
  31b250: 9801         	ldr	r0, [sp, #0x4]
  31b252: 9903         	ldr	r1, [sp, #0xc]
  31b254: f7fe fbec    	bl	0x319a30 <EnemyManager::spawnWormDrone(WormDrone*)> @ imm = #-0x1828
  31b258: 9b03         	ldr	r3, [sp, #0xc]
  31b25a: 4618         	mov	r0, r3
  31b25c: b005         	add	sp, #0x14
  31b25e: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::addHumanoidDroneById
//      file offset 0x31b264 (= ELF address; Ghidra 0x32b264), 42 bytes, Thumb-2
  31b264: b500         	push	{lr}
  31b266: b085         	sub	sp, #0x14
  31b268: 9001         	str	r0, [sp, #0x4]
  31b26a: 9100         	str	r1, [sp]
  31b26c: 9b01         	ldr	r3, [sp, #0x4]
  31b26e: 6a5b         	ldr	r3, [r3, #0x24]
  31b270: 4618         	mov	r0, r3
  31b272: 9900         	ldr	r1, [sp]
  31b274: f278 fe3c    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278c78
  31b278: 4603         	mov	r3, r0
  31b27a: 9303         	str	r3, [sp, #0xc]
  31b27c: 9801         	ldr	r0, [sp, #0x4]
  31b27e: 9903         	ldr	r1, [sp, #0xc]
  31b280: f7fe fcc2    	bl	0x319c08 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)> @ imm = #-0x167c
  31b284: 9b03         	ldr	r3, [sp, #0xc]
  31b286: 4618         	mov	r0, r3
  31b288: b005         	add	sp, #0x14
  31b28a: f85d fb04    	ldr	pc, [sp], #4

// ==== EnemyManager::onEnemySpawned
//      file offset 0x31b290 (= ELF address; Ghidra 0x32b290), 624 bytes, Thumb-2
  31b290: b570         	push	{r4, r5, r6, lr}
  31b292: b088         	sub	sp, #0x20
  31b294: 9001         	str	r0, [sp, #0x4]
  31b296: 9100         	str	r1, [sp]
  31b298: 9b00         	ldr	r3, [sp]
  31b29a: 9304         	str	r3, [sp, #0x10]
  31b29c: 9804         	ldr	r0, [sp, #0x10]
  31b29e: 2100         	movs	r1, #0x0
  31b2a0: f27e ff3e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27ee7c
  31b2a4: 4603         	mov	r3, r0
  31b2a6: 9305         	str	r3, [sp, #0x14]
  31b2a8: 9804         	ldr	r0, [sp, #0x10]
  31b2aa: 2101         	movs	r1, #0x1
  31b2ac: f27e ff38    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27ee70
  31b2b0: 4603         	mov	r3, r0
  31b2b2: 9306         	str	r3, [sp, #0x18]
  31b2b4: 9b01         	ldr	r3, [sp, #0x4]
  31b2b6: 6a1c         	ldr	r4, [r3, #0x20]
  31b2b8: 9805         	ldr	r0, [sp, #0x14]
  31b2ba: f27e fb35    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e66a
  31b2be: 4605         	mov	r5, r0
  31b2c0: ab02         	add	r3, sp, #0x8
  31b2c2: 4618         	mov	r0, r3
  31b2c4: f06f f096    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f12c
  31b2c8: aa03         	add	r2, sp, #0xc
  31b2ca: ab02         	add	r3, sp, #0x8
  31b2cc: 4610         	mov	r0, r2
  31b2ce: 4629         	mov	r1, r5
  31b2d0: 461a         	mov	r2, r3
  31b2d2: f09b f3c5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b78a
  31b2d6: ab03         	add	r3, sp, #0xc
  31b2d8: 4620         	mov	r0, r4
  31b2da: 4619         	mov	r1, r3
  31b2dc: f278 fe08    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278c10
  31b2e0: 4603         	mov	r3, r0
  31b2e2: 2b00         	cmp	r3, #0x0
  31b2e4: bf0c         	ite	eq
  31b2e6: 2300         	moveq	r3, #0x0
  31b2e8: 2301         	movne	r3, #0x1
  31b2ea: b2dc         	uxtb	r4, r3
  31b2ec: ab03         	add	r3, sp, #0xc
  31b2ee: 4618         	mov	r0, r3
  31b2f0: f09a f310    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a620
  31b2f4: ab02         	add	r3, sp, #0x8
  31b2f6: 4618         	mov	r0, r3
  31b2f8: f06f f080    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f100
  31b2fc: 2c00         	cmp	r4, #0x0
  31b2fe: d01b         	beq	0x31b338 <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0xa8> @ imm = #0x36
  31b300: 9805         	ldr	r0, [sp, #0x14]
  31b302: f27e fb11    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e622
  31b306: 4604         	mov	r4, r0
  31b308: ab02         	add	r3, sp, #0x8
  31b30a: 4618         	mov	r0, r3
  31b30c: f06f f072    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f0e4
  31b310: aa03         	add	r2, sp, #0xc
  31b312: ab02         	add	r3, sp, #0x8
  31b314: 4610         	mov	r0, r2
  31b316: 4621         	mov	r1, r4
  31b318: 461a         	mov	r2, r3
  31b31a: f09b f3a1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b742
  31b31e: ab03         	add	r3, sp, #0xc
  31b320: 9801         	ldr	r0, [sp, #0x4]
  31b322: 4619         	mov	r1, r3
  31b324: f7ff ff72    	bl	0x31b20c <EnemyManager::addHawkDroneById(std::string)> @ imm = #-0x11c
  31b328: ab03         	add	r3, sp, #0xc
  31b32a: 4618         	mov	r0, r3
  31b32c: f09a f2f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a5e4
  31b330: ab02         	add	r3, sp, #0x8
  31b332: 4618         	mov	r0, r3
  31b334: f06f f062    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f0c4
  31b338: 9b01         	ldr	r3, [sp, #0x4]
  31b33a: 6a9c         	ldr	r4, [r3, #0x28]
  31b33c: 9805         	ldr	r0, [sp, #0x14]
  31b33e: f27e faf3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e5e6
  31b342: 4605         	mov	r5, r0
  31b344: ab02         	add	r3, sp, #0x8
  31b346: 4618         	mov	r0, r3
  31b348: f06f f054    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f0a8
  31b34c: aa03         	add	r2, sp, #0xc
  31b34e: ab02         	add	r3, sp, #0x8
  31b350: 4610         	mov	r0, r2
  31b352: 4629         	mov	r1, r5
  31b354: 461a         	mov	r2, r3
  31b356: f09b f383    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b706
  31b35a: ab03         	add	r3, sp, #0xc
  31b35c: 4620         	mov	r0, r4
  31b35e: 4619         	mov	r1, r3
  31b360: f278 fdc6    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278b8c
  31b364: 4603         	mov	r3, r0
  31b366: 2b00         	cmp	r3, #0x0
  31b368: bf0c         	ite	eq
  31b36a: 2300         	moveq	r3, #0x0
  31b36c: 2301         	movne	r3, #0x1
  31b36e: b2dc         	uxtb	r4, r3
  31b370: ab03         	add	r3, sp, #0xc
  31b372: 4618         	mov	r0, r3
  31b374: f09a f2ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a59c
  31b378: ab02         	add	r3, sp, #0x8
  31b37a: 4618         	mov	r0, r3
  31b37c: f06f f03e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f07c
  31b380: 2c00         	cmp	r4, #0x0
  31b382: d01b         	beq	0x31b3bc <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x12c> @ imm = #0x36
  31b384: 9805         	ldr	r0, [sp, #0x14]
  31b386: f27e facf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e59e
  31b38a: 4604         	mov	r4, r0
  31b38c: ab02         	add	r3, sp, #0x8
  31b38e: 4618         	mov	r0, r3
  31b390: f06f f030    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f060
  31b394: aa03         	add	r2, sp, #0xc
  31b396: ab02         	add	r3, sp, #0x8
  31b398: 4610         	mov	r0, r2
  31b39a: 4621         	mov	r1, r4
  31b39c: 461a         	mov	r2, r3
  31b39e: f09b f35f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b6be
  31b3a2: ab03         	add	r3, sp, #0xc
  31b3a4: 9801         	ldr	r0, [sp, #0x4]
  31b3a6: 4619         	mov	r1, r3
  31b3a8: f7ff ff46    	bl	0x31b238 <EnemyManager::addWormDroneById(std::string)> @ imm = #-0x174
  31b3ac: ab03         	add	r3, sp, #0xc
  31b3ae: 4618         	mov	r0, r3
  31b3b0: f09a f2b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a560
  31b3b4: ab02         	add	r3, sp, #0x8
  31b3b6: 4618         	mov	r0, r3
  31b3b8: f06f f020    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46f040
  31b3bc: 9b01         	ldr	r3, [sp, #0x4]
  31b3be: 6a5c         	ldr	r4, [r3, #0x24]
  31b3c0: 9805         	ldr	r0, [sp, #0x14]
  31b3c2: f27e fab1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e562
  31b3c6: 4605         	mov	r5, r0
  31b3c8: ab02         	add	r3, sp, #0x8
  31b3ca: 4618         	mov	r0, r3
  31b3cc: f06f f012    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46f024
  31b3d0: aa03         	add	r2, sp, #0xc
  31b3d2: ab02         	add	r3, sp, #0x8
  31b3d4: 4610         	mov	r0, r2
  31b3d6: 4629         	mov	r1, r5
  31b3d8: 461a         	mov	r2, r3
  31b3da: f09b f341    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b682
  31b3de: ab03         	add	r3, sp, #0xc
  31b3e0: 4620         	mov	r0, r4
  31b3e2: 4619         	mov	r1, r3
  31b3e4: f278 fd84    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278b08
  31b3e8: 4603         	mov	r3, r0
  31b3ea: 2b00         	cmp	r3, #0x0
  31b3ec: bf0c         	ite	eq
  31b3ee: 2300         	moveq	r3, #0x0
  31b3f0: 2301         	movne	r3, #0x1
  31b3f2: b2dc         	uxtb	r4, r3
  31b3f4: ab03         	add	r3, sp, #0xc
  31b3f6: 4618         	mov	r0, r3
  31b3f8: f09a f28c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a518
  31b3fc: ab02         	add	r3, sp, #0x8
  31b3fe: 4618         	mov	r0, r3
  31b400: f06e f7fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46eff8
  31b404: 2c00         	cmp	r4, #0x0
  31b406: d079         	beq	0x31b4fc <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x26c> @ imm = #0xf2
  31b408: 9805         	ldr	r0, [sp, #0x14]
  31b40a: f27e fa8d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e51a
  31b40e: 4604         	mov	r4, r0
  31b410: ab02         	add	r3, sp, #0x8
  31b412: 4618         	mov	r0, r3
  31b414: f06e f7ee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46efdc
  31b418: aa03         	add	r2, sp, #0xc
  31b41a: ab02         	add	r3, sp, #0x8
  31b41c: 4610         	mov	r0, r2
  31b41e: 4621         	mov	r1, r4
  31b420: 461a         	mov	r2, r3
  31b422: f09b f31d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b63a
  31b426: ab03         	add	r3, sp, #0xc
  31b428: 9801         	ldr	r0, [sp, #0x4]
  31b42a: 4619         	mov	r1, r3
  31b42c: f7ff ff1a    	bl	0x31b264 <EnemyManager::addHumanoidDroneById(std::string)> @ imm = #-0x1cc
  31b430: 4603         	mov	r3, r0
  31b432: 9307         	str	r3, [sp, #0x1c]
  31b434: ab03         	add	r3, sp, #0xc
  31b436: 4618         	mov	r0, r3
  31b438: f09a f26c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a4d8
  31b43c: ab02         	add	r3, sp, #0x8
  31b43e: 4618         	mov	r0, r3
  31b440: f06e f7dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46efb8
  31b444: 9b07         	ldr	r3, [sp, #0x1c]
  31b446: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31b44a: 681b         	ldr	r3, [r3]
  31b44c: f503 7305    	add.w	r3, r3, #0x214
  31b450: 681c         	ldr	r4, [r3]
  31b452: 9b07         	ldr	r3, [sp, #0x1c]
  31b454: f8d3 51ac    	ldr.w	r5, [r3, #0x1ac]
  31b458: f0fc fa94    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xfc528
  31b45c: 4606         	mov	r6, r0
  31b45e: 9806         	ldr	r0, [sp, #0x18]
  31b460: f7d1 fcf8    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2e610
  31b464: 4603         	mov	r3, r0
  31b466: 4630         	mov	r0, r6
  31b468: 4619         	mov	r1, r3
  31b46a: f0fd f947    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0xfd28e
  31b46e: 4603         	mov	r3, r0
  31b470: 4628         	mov	r0, r5
  31b472: 4619         	mov	r1, r3
  31b474: 47a0         	blx	r4
  31b476: e041         	b	0x31b4fc <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x26c> @ imm = #0x82
  31b478: ab03         	add	r3, sp, #0xc
  31b47a: 4618         	mov	r0, r3
  31b47c: f09a f24a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a494
  31b480: e7ff         	b	0x31b482 <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x1f2> @ imm = #-0x2
  31b482: ab02         	add	r3, sp, #0x8
  31b484: 4618         	mov	r0, r3
  31b486: f06e f7b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ef72
  31b48a: f06c f60f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46cc1e
  31b48e: ab03         	add	r3, sp, #0xc
  31b490: 4618         	mov	r0, r3
  31b492: f09a f23f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a47e
  31b496: e7ff         	b	0x31b498 <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x208> @ imm = #-0x2
  31b498: ab02         	add	r3, sp, #0x8
  31b49a: 4618         	mov	r0, r3
  31b49c: f06e f7ae    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ef5c
  31b4a0: f06c f604    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46cc08
  31b4a4: ab03         	add	r3, sp, #0xc
  31b4a6: 4618         	mov	r0, r3
  31b4a8: f09a f234    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a468
  31b4ac: e7ff         	b	0x31b4ae <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x21e> @ imm = #-0x2
  31b4ae: ab02         	add	r3, sp, #0x8
  31b4b0: 4618         	mov	r0, r3
  31b4b2: f06e f7a3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ef46
  31b4b6: f06c f5f9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46cbf2
  31b4ba: ab03         	add	r3, sp, #0xc
  31b4bc: 4618         	mov	r0, r3
  31b4be: f09a f229    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a452
  31b4c2: e7ff         	b	0x31b4c4 <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x234> @ imm = #-0x2
  31b4c4: ab02         	add	r3, sp, #0x8
  31b4c6: 4618         	mov	r0, r3
  31b4c8: f06e f798    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ef30
  31b4cc: f06c f5ee    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46cbdc
  31b4d0: ab03         	add	r3, sp, #0xc
  31b4d2: 4618         	mov	r0, r3
  31b4d4: f09a f21e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a43c
  31b4d8: e7ff         	b	0x31b4da <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x24a> @ imm = #-0x2
  31b4da: ab02         	add	r3, sp, #0x8
  31b4dc: 4618         	mov	r0, r3
  31b4de: f06e f78d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ef1a
  31b4e2: f06c f5e3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46cbc6
  31b4e6: ab03         	add	r3, sp, #0xc
  31b4e8: 4618         	mov	r0, r3
  31b4ea: f09a f213    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a426
  31b4ee: e7ff         	b	0x31b4f0 <EnemyManager::onEnemySpawned(cocos2d::CCObject*)+0x260> @ imm = #-0x2
  31b4f0: ab02         	add	r3, sp, #0x8
  31b4f2: 4618         	mov	r0, r3
  31b4f4: f06e f782    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ef04
  31b4f8: f06c f5d8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46cbb0
  31b4fc: b008         	add	sp, #0x20
  31b4fe: bd70         	pop	{r4, r5, r6, pc}

// ==== EnemyManager::onEnemyDestroyed
//      file offset 0x31b500 (= ELF address; Ghidra 0x32b500), 614 bytes, Thumb-2
  31b500: b530         	push	{r4, r5, lr}
  31b502: b087         	sub	sp, #0x1c
  31b504: 9001         	str	r0, [sp, #0x4]
  31b506: 9100         	str	r1, [sp]
  31b508: 9b00         	ldr	r3, [sp]
  31b50a: 9304         	str	r3, [sp, #0x10]
  31b50c: 9b01         	ldr	r3, [sp, #0x4]
  31b50e: 695c         	ldr	r4, [r3, #0x14]
  31b510: 9804         	ldr	r0, [sp, #0x10]
  31b512: f27e fa09    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e412
  31b516: 4605         	mov	r5, r0
  31b518: ab02         	add	r3, sp, #0x8
  31b51a: 4618         	mov	r0, r3
  31b51c: f06e f76a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46eed4
  31b520: aa03         	add	r2, sp, #0xc
  31b522: ab02         	add	r3, sp, #0x8
  31b524: 4610         	mov	r0, r2
  31b526: 4629         	mov	r1, r5
  31b528: 461a         	mov	r2, r3
  31b52a: f09b f299    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b532
  31b52e: ab03         	add	r3, sp, #0xc
  31b530: 4620         	mov	r0, r4
  31b532: 4619         	mov	r1, r3
  31b534: f278 fcdc    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x2789b8
  31b538: 4603         	mov	r3, r0
  31b53a: 2b00         	cmp	r3, #0x0
  31b53c: bf0c         	ite	eq
  31b53e: 2300         	moveq	r3, #0x0
  31b540: 2301         	movne	r3, #0x1
  31b542: b2dc         	uxtb	r4, r3
  31b544: ab03         	add	r3, sp, #0xc
  31b546: 4618         	mov	r0, r3
  31b548: f09a f1e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a3c8
  31b54c: ab02         	add	r3, sp, #0x8
  31b54e: 4618         	mov	r0, r3
  31b550: f06e f754    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46eea8
  31b554: 2c00         	cmp	r4, #0x0
  31b556: d022         	beq	0x31b59e <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x9e> @ imm = #0x44
  31b558: 9b01         	ldr	r3, [sp, #0x4]
  31b55a: 695c         	ldr	r4, [r3, #0x14]
  31b55c: 9804         	ldr	r0, [sp, #0x10]
  31b55e: f27e f9e3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e3c6
  31b562: 4605         	mov	r5, r0
  31b564: ab02         	add	r3, sp, #0x8
  31b566: 4618         	mov	r0, r3
  31b568: f06e f744    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46ee88
  31b56c: aa03         	add	r2, sp, #0xc
  31b56e: ab02         	add	r3, sp, #0x8
  31b570: 4610         	mov	r0, r2
  31b572: 4629         	mov	r1, r5
  31b574: 461a         	mov	r2, r3
  31b576: f09b f273    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b4e6
  31b57a: ab03         	add	r3, sp, #0xc
  31b57c: 4620         	mov	r0, r4
  31b57e: 4619         	mov	r1, r3
  31b580: f278 fcb6    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27896c
  31b584: 4603         	mov	r3, r0
  31b586: 9801         	ldr	r0, [sp, #0x4]
  31b588: 4619         	mov	r1, r3
  31b58a: f7fd fe7f    	bl	0x31928c <EnemyManager::destroyHawk(HawkDrone*)> @ imm = #-0x2302
  31b58e: ab03         	add	r3, sp, #0xc
  31b590: 4618         	mov	r0, r3
  31b592: f09a f1bf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a37e
  31b596: ab02         	add	r3, sp, #0x8
  31b598: 4618         	mov	r0, r3
  31b59a: f06e f72f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ee5e
  31b59e: 9b01         	ldr	r3, [sp, #0x4]
  31b5a0: 69dc         	ldr	r4, [r3, #0x1c]
  31b5a2: 9804         	ldr	r0, [sp, #0x10]
  31b5a4: f27e f9c0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e380
  31b5a8: 4605         	mov	r5, r0
  31b5aa: ab02         	add	r3, sp, #0x8
  31b5ac: 4618         	mov	r0, r3
  31b5ae: f06e f721    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46ee42
  31b5b2: aa03         	add	r2, sp, #0xc
  31b5b4: ab02         	add	r3, sp, #0x8
  31b5b6: 4610         	mov	r0, r2
  31b5b8: 4629         	mov	r1, r5
  31b5ba: 461a         	mov	r2, r3
  31b5bc: f09b f250    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b4a0
  31b5c0: ab03         	add	r3, sp, #0xc
  31b5c2: 4620         	mov	r0, r4
  31b5c4: 4619         	mov	r1, r3
  31b5c6: f278 fc93    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278926
  31b5ca: 4603         	mov	r3, r0
  31b5cc: 2b00         	cmp	r3, #0x0
  31b5ce: bf0c         	ite	eq
  31b5d0: 2300         	moveq	r3, #0x0
  31b5d2: 2301         	movne	r3, #0x1
  31b5d4: b2dc         	uxtb	r4, r3
  31b5d6: ab03         	add	r3, sp, #0xc
  31b5d8: 4618         	mov	r0, r3
  31b5da: f09a f19b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a336
  31b5de: ab02         	add	r3, sp, #0x8
  31b5e0: 4618         	mov	r0, r3
  31b5e2: f06e f70b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ee16
  31b5e6: 2c00         	cmp	r4, #0x0
  31b5e8: d022         	beq	0x31b630 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x130> @ imm = #0x44
  31b5ea: 9b01         	ldr	r3, [sp, #0x4]
  31b5ec: 69dc         	ldr	r4, [r3, #0x1c]
  31b5ee: 9804         	ldr	r0, [sp, #0x10]
  31b5f0: f27e f99a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e334
  31b5f4: 4605         	mov	r5, r0
  31b5f6: ab02         	add	r3, sp, #0x8
  31b5f8: 4618         	mov	r0, r3
  31b5fa: f06e f6fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46edf6
  31b5fe: aa03         	add	r2, sp, #0xc
  31b600: ab02         	add	r3, sp, #0x8
  31b602: 4610         	mov	r0, r2
  31b604: 4629         	mov	r1, r5
  31b606: 461a         	mov	r2, r3
  31b608: f09b f22a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b454
  31b60c: ab03         	add	r3, sp, #0xc
  31b60e: 4620         	mov	r0, r4
  31b610: 4619         	mov	r1, r3
  31b612: f278 fc6d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x2788da
  31b616: 4603         	mov	r3, r0
  31b618: 9801         	ldr	r0, [sp, #0x4]
  31b61a: 4619         	mov	r1, r3
  31b61c: f7fd feb4    	bl	0x319388 <EnemyManager::destroyWorm(WormDrone*)> @ imm = #-0x2298
  31b620: ab03         	add	r3, sp, #0xc
  31b622: 4618         	mov	r0, r3
  31b624: f09a f176    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a2ec
  31b628: ab02         	add	r3, sp, #0x8
  31b62a: 4618         	mov	r0, r3
  31b62c: f06e f6e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46edcc
  31b630: 9b01         	ldr	r3, [sp, #0x4]
  31b632: 699c         	ldr	r4, [r3, #0x18]
  31b634: 9804         	ldr	r0, [sp, #0x10]
  31b636: f27e f977    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e2ee
  31b63a: 4605         	mov	r5, r0
  31b63c: ab02         	add	r3, sp, #0x8
  31b63e: 4618         	mov	r0, r3
  31b640: f06e f6d8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46edb0
  31b644: aa03         	add	r2, sp, #0xc
  31b646: ab02         	add	r3, sp, #0x8
  31b648: 4610         	mov	r0, r2
  31b64a: 4629         	mov	r1, r5
  31b64c: 461a         	mov	r2, r3
  31b64e: f09b f207    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b40e
  31b652: ab03         	add	r3, sp, #0xc
  31b654: 4620         	mov	r0, r4
  31b656: 4619         	mov	r1, r3
  31b658: f278 fc4a    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278894
  31b65c: 4603         	mov	r3, r0
  31b65e: 2b00         	cmp	r3, #0x0
  31b660: bf0c         	ite	eq
  31b662: 2300         	moveq	r3, #0x0
  31b664: 2301         	movne	r3, #0x1
  31b666: b2dc         	uxtb	r4, r3
  31b668: ab03         	add	r3, sp, #0xc
  31b66a: 4618         	mov	r0, r3
  31b66c: f09a f152    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a2a4
  31b670: ab02         	add	r3, sp, #0x8
  31b672: 4618         	mov	r0, r3
  31b674: f06e f6c2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ed84
  31b678: 2c00         	cmp	r4, #0x0
  31b67a: d072         	beq	0x31b762 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x262> @ imm = #0xe4
  31b67c: 9b01         	ldr	r3, [sp, #0x4]
  31b67e: 699c         	ldr	r4, [r3, #0x18]
  31b680: 9804         	ldr	r0, [sp, #0x10]
  31b682: f27e f951    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e2a2
  31b686: 4605         	mov	r5, r0
  31b688: ab02         	add	r3, sp, #0x8
  31b68a: 4618         	mov	r0, r3
  31b68c: f06e f6b2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46ed64
  31b690: aa03         	add	r2, sp, #0xc
  31b692: ab02         	add	r3, sp, #0x8
  31b694: 4610         	mov	r0, r2
  31b696: 4629         	mov	r1, r5
  31b698: 461a         	mov	r2, r3
  31b69a: f09b f1e1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b3c2
  31b69e: ab03         	add	r3, sp, #0xc
  31b6a0: 4620         	mov	r0, r4
  31b6a2: 4619         	mov	r1, r3
  31b6a4: f278 fc24    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x278848
  31b6a8: 4603         	mov	r3, r0
  31b6aa: 9305         	str	r3, [sp, #0x14]
  31b6ac: ab03         	add	r3, sp, #0xc
  31b6ae: 4618         	mov	r0, r3
  31b6b0: f09a f130    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a260
  31b6b4: ab02         	add	r3, sp, #0x8
  31b6b6: 4618         	mov	r0, r3
  31b6b8: f06e f6a0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ed40
  31b6bc: 9801         	ldr	r0, [sp, #0x4]
  31b6be: 9905         	ldr	r1, [sp, #0x14]
  31b6c0: f7fd fee0    	bl	0x319484 <EnemyManager::destroyHumanoid(HumanoidDrone*)> @ imm = #-0x2240
  31b6c4: 9b05         	ldr	r3, [sp, #0x14]
  31b6c6: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  31b6ca: 681b         	ldr	r3, [r3]
  31b6cc: f503 7336    	add.w	r3, r3, #0x2d8
  31b6d0: 681b         	ldr	r3, [r3]
  31b6d2: 9a05         	ldr	r2, [sp, #0x14]
  31b6d4: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  31b6d8: 4610         	mov	r0, r2
  31b6da: 4798         	blx	r3
  31b6dc: e041         	b	0x31b762 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x262> @ imm = #0x82
  31b6de: ab03         	add	r3, sp, #0xc
  31b6e0: 4618         	mov	r0, r3
  31b6e2: f09a f117    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a22e
  31b6e6: e7ff         	b	0x31b6e8 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x1e8> @ imm = #-0x2
  31b6e8: ab02         	add	r3, sp, #0x8
  31b6ea: 4618         	mov	r0, r3
  31b6ec: f06e f686    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ed0c
  31b6f0: f06c f4dc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c9b8
  31b6f4: ab03         	add	r3, sp, #0xc
  31b6f6: 4618         	mov	r0, r3
  31b6f8: f09a f10c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a218
  31b6fc: e7ff         	b	0x31b6fe <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x1fe> @ imm = #-0x2
  31b6fe: ab02         	add	r3, sp, #0x8
  31b700: 4618         	mov	r0, r3
  31b702: f06e f67b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ecf6
  31b706: f06c f4d1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c9a2
  31b70a: ab03         	add	r3, sp, #0xc
  31b70c: 4618         	mov	r0, r3
  31b70e: f09a f101    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a202
  31b712: e7ff         	b	0x31b714 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x214> @ imm = #-0x2
  31b714: ab02         	add	r3, sp, #0x8
  31b716: 4618         	mov	r0, r3
  31b718: f06e f670    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ece0
  31b71c: f06c f4c6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c98c
  31b720: ab03         	add	r3, sp, #0xc
  31b722: 4618         	mov	r0, r3
  31b724: f09a f0f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a1ec
  31b728: e7ff         	b	0x31b72a <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x22a> @ imm = #-0x2
  31b72a: ab02         	add	r3, sp, #0x8
  31b72c: 4618         	mov	r0, r3
  31b72e: f06e f665    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ecca
  31b732: f06c f4bb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c976
  31b736: ab03         	add	r3, sp, #0xc
  31b738: 4618         	mov	r0, r3
  31b73a: f09a f0eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a1d6
  31b73e: e7ff         	b	0x31b740 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x240> @ imm = #-0x2
  31b740: ab02         	add	r3, sp, #0x8
  31b742: 4618         	mov	r0, r3
  31b744: f06e f65a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ecb4
  31b748: f06c f4b0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c960
  31b74c: ab03         	add	r3, sp, #0xc
  31b74e: 4618         	mov	r0, r3
  31b750: f09a f0e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a1c0
  31b754: e7ff         	b	0x31b756 <EnemyManager::onEnemyDestroyed(cocos2d::CCObject*)+0x256> @ imm = #-0x2
  31b756: ab02         	add	r3, sp, #0x8
  31b758: 4618         	mov	r0, r3
  31b75a: f06e f64f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ec9e
  31b75e: f06c f4a5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c94a
  31b762: b007         	add	sp, #0x1c
  31b764: bd30         	pop	{r4, r5, pc}

// ==== EnemyManager::onEnemyPositionUpdate
//      file offset 0x31b768 (= ELF address; Ghidra 0x32b768), 616 bytes, Thumb-2
  31b768: b530         	push	{r4, r5, lr}
  31b76a: b0a1         	sub	sp, #0x84
  31b76c: 9003         	str	r0, [sp, #0xc]
  31b76e: 9102         	str	r1, [sp, #0x8]
  31b770: 4c95         	ldr	r4, [pc, #0x254]        @ 0x31b9c8 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x260>
  31b772: 447c         	add	r4, pc
  31b774: 9b02         	ldr	r3, [sp, #0x8]
  31b776: 9306         	str	r3, [sp, #0x18]
  31b778: 9806         	ldr	r0, [sp, #0x18]
  31b77a: 2100         	movs	r1, #0x0
  31b77c: f27e fcd0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e9a0
  31b780: 4603         	mov	r3, r0
  31b782: 9307         	str	r3, [sp, #0x1c]
  31b784: 4b91         	ldr	r3, [pc, #0x244]        @ 0x31b9cc <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x264>
  31b786: 58e3         	ldr	r3, [r4, r3]
  31b788: 681c         	ldr	r4, [r3]
  31b78a: 9807         	ldr	r0, [sp, #0x1c]
  31b78c: f27e f8cc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27e198
  31b790: 4605         	mov	r5, r0
  31b792: ab18         	add	r3, sp, #0x60
  31b794: 4618         	mov	r0, r3
  31b796: f06e f62d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46ec5a
  31b79a: aa1c         	add	r2, sp, #0x70
  31b79c: ab18         	add	r3, sp, #0x60
  31b79e: 4610         	mov	r0, r2
  31b7a0: 4629         	mov	r1, r5
  31b7a2: 461a         	mov	r2, r3
  31b7a4: f09b f15c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49b2b8
  31b7a8: ab1c         	add	r3, sp, #0x70
  31b7aa: 4620         	mov	r0, r4
  31b7ac: 4619         	mov	r1, r3
  31b7ae: f278 fb9f    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27873e
  31b7b2: 4603         	mov	r3, r0
  31b7b4: 9308         	str	r3, [sp, #0x20]
  31b7b6: ab1c         	add	r3, sp, #0x70
  31b7b8: 4618         	mov	r0, r3
  31b7ba: f09a f0ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49a156
  31b7be: ab18         	add	r3, sp, #0x60
  31b7c0: 4618         	mov	r0, r3
  31b7c2: f06e f61b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ec36
  31b7c6: 9806         	ldr	r0, [sp, #0x18]
  31b7c8: 2101         	movs	r1, #0x1
  31b7ca: f27e fca9    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e952
  31b7ce: 4603         	mov	r3, r0
  31b7d0: 4618         	mov	r0, r3
  31b7d2: f7c1 fa4f    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3eb62
  31b7d6: 4603         	mov	r3, r0
  31b7d8: 9309         	str	r3, [sp, #0x24]
  31b7da: 9806         	ldr	r0, [sp, #0x18]
  31b7dc: 2102         	movs	r1, #0x2
  31b7de: f27e fc9f    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e93e
  31b7e2: 4603         	mov	r3, r0
  31b7e4: 4618         	mov	r0, r3
  31b7e6: f7c1 fa45    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3eb76
  31b7ea: 4603         	mov	r3, r0
  31b7ec: 930a         	str	r3, [sp, #0x28]
  31b7ee: eddd 7a09    	vldr	s15, [sp, #36]
  31b7f2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31b7f6: eddd 7a0a    	vldr	s15, [sp, #40]
  31b7fa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31b7fe: ab14         	add	r3, sp, #0x50
  31b800: 4618         	mov	r0, r3
  31b802: eeb0 0b46    	vmov.f64	d0, d6
  31b806: eeb0 1b47    	vmov.f64	d1, d7
  31b80a: f7fc fb1b    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x39ca
  31b80e: 9806         	ldr	r0, [sp, #0x18]
  31b810: 2103         	movs	r1, #0x3
  31b812: f27e fc85    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e90a
  31b816: 4603         	mov	r3, r0
  31b818: 4618         	mov	r0, r3
  31b81a: f7c1 fa2b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ebaa
  31b81e: 4603         	mov	r3, r0
  31b820: 930b         	str	r3, [sp, #0x2c]
  31b822: 9806         	ldr	r0, [sp, #0x18]
  31b824: 2104         	movs	r1, #0x4
  31b826: f27e fc7b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e8f6
  31b82a: 4603         	mov	r3, r0
  31b82c: 4618         	mov	r0, r3
  31b82e: f7c1 fa21    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ebbe
  31b832: 4603         	mov	r3, r0
  31b834: 930c         	str	r3, [sp, #0x30]
  31b836: 9806         	ldr	r0, [sp, #0x18]
  31b838: 2105         	movs	r1, #0x5
  31b83a: f27e fc71    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e8e2
  31b83e: 4603         	mov	r3, r0
  31b840: 4618         	mov	r0, r3
  31b842: f7d1 fb07    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2e9f2
  31b846: 4603         	mov	r3, r0
  31b848: 930d         	str	r3, [sp, #0x34]
  31b84a: 9b0d         	ldr	r3, [sp, #0x34]
  31b84c: f88d 3017    	strb.w	r3, [sp, #0x17]
  31b850: 9806         	ldr	r0, [sp, #0x18]
  31b852: 2106         	movs	r1, #0x6
  31b854: f27e fc64    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e8c8
  31b858: 4603         	mov	r3, r0
  31b85a: 4618         	mov	r0, r3
  31b85c: f7c1 fa0a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ebec
  31b860: 4603         	mov	r3, r0
  31b862: 930e         	str	r3, [sp, #0x38]
  31b864: 9806         	ldr	r0, [sp, #0x18]
  31b866: 2107         	movs	r1, #0x7
  31b868: f27e fc5a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e8b4
  31b86c: 4603         	mov	r3, r0
  31b86e: 4618         	mov	r0, r3
  31b870: f7c1 fa00    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ec00
  31b874: 4603         	mov	r3, r0
  31b876: 930f         	str	r3, [sp, #0x3c]
  31b878: 9806         	ldr	r0, [sp, #0x18]
  31b87a: 2108         	movs	r1, #0x8
  31b87c: f27e fc50    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e8a0
  31b880: 4603         	mov	r3, r0
  31b882: 4618         	mov	r0, r3
  31b884: f7c1 f9f6    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ec14
  31b888: 4603         	mov	r3, r0
  31b88a: 9310         	str	r3, [sp, #0x40]
  31b88c: 9806         	ldr	r0, [sp, #0x18]
  31b88e: 2109         	movs	r1, #0x9
  31b890: f27e fc46    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e88c
  31b894: 4603         	mov	r3, r0
  31b896: 4618         	mov	r0, r3
  31b898: f7c1 f9ec    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ec28
  31b89c: 4603         	mov	r3, r0
  31b89e: 9311         	str	r3, [sp, #0x44]
  31b8a0: eddd 7a0e    	vldr	s15, [sp, #56]
  31b8a4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31b8a8: eddd 7a0f    	vldr	s15, [sp, #60]
  31b8ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31b8b0: ab18         	add	r3, sp, #0x60
  31b8b2: 4618         	mov	r0, r3
  31b8b4: eeb0 0b46    	vmov.f64	d0, d6
  31b8b8: eeb0 1b47    	vmov.f64	d1, d7
  31b8bc: f7fc fac2    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x3a7c
  31b8c0: eddd 7a10    	vldr	s15, [sp, #64]
  31b8c4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31b8c8: eddd 7a11    	vldr	s15, [sp, #68]
  31b8cc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31b8d0: ab1c         	add	r3, sp, #0x70
  31b8d2: 4618         	mov	r0, r3
  31b8d4: eeb0 0b46    	vmov.f64	d0, d6
  31b8d8: eeb0 1b47    	vmov.f64	d1, d7
  31b8dc: f7fc fab2    	bl	0x317e44 <Enemy::setRemoteMovement(cpVect)+0x17c> @ imm = #-0x3a9c
  31b8e0: 9806         	ldr	r0, [sp, #0x18]
  31b8e2: 210a         	movs	r1, #0xa
  31b8e4: f27e fc1c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x27e838
  31b8e8: 4603         	mov	r3, r0
  31b8ea: 4618         	mov	r0, r3
  31b8ec: f7c1 f9c2    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3ec7c
  31b8f0: 4603         	mov	r3, r0
  31b8f2: 9312         	str	r3, [sp, #0x48]
  31b8f4: 9b08         	ldr	r3, [sp, #0x20]
  31b8f6: 681b         	ldr	r3, [r3]
  31b8f8: f503 7309    	add.w	r3, r3, #0x224
  31b8fc: 681c         	ldr	r4, [r3]
  31b8fe: 466b         	mov	r3, sp
  31b900: aa16         	add	r2, sp, #0x58
  31b902: e892 0003    	ldm.w	r2, {r0, r1}
  31b906: e883 0003    	stm.w	r3, {r0, r1}
  31b90a: ab14         	add	r3, sp, #0x50
  31b90c: cb0c         	ldm	r3, {r2, r3}
  31b90e: 9808         	ldr	r0, [sp, #0x20]
  31b910: 47a0         	blx	r4
  31b912: 9b08         	ldr	r3, [sp, #0x20]
  31b914: 681b         	ldr	r3, [r3]
  31b916: f503 730b    	add.w	r3, r3, #0x22c
  31b91a: 681b         	ldr	r3, [r3]
  31b91c: 9808         	ldr	r0, [sp, #0x20]
  31b91e: 990b         	ldr	r1, [sp, #0x2c]
  31b920: 4798         	blx	r3
  31b922: 9b08         	ldr	r3, [sp, #0x20]
  31b924: 681b         	ldr	r3, [r3]
  31b926: f503 730c    	add.w	r3, r3, #0x230
  31b92a: 681b         	ldr	r3, [r3]
  31b92c: 9808         	ldr	r0, [sp, #0x20]
  31b92e: 990c         	ldr	r1, [sp, #0x30]
  31b930: 4798         	blx	r3
  31b932: 9b08         	ldr	r3, [sp, #0x20]
  31b934: 681b         	ldr	r3, [r3]
  31b936: f503 730a    	add.w	r3, r3, #0x228
  31b93a: 681c         	ldr	r4, [r3]
  31b93c: 466b         	mov	r3, sp
  31b93e: aa1a         	add	r2, sp, #0x68
  31b940: e892 0003    	ldm.w	r2, {r0, r1}
  31b944: e883 0003    	stm.w	r3, {r0, r1}
  31b948: ab18         	add	r3, sp, #0x60
  31b94a: cb0c         	ldm	r3, {r2, r3}
  31b94c: 9808         	ldr	r0, [sp, #0x20]
  31b94e: 47a0         	blx	r4
  31b950: 9b08         	ldr	r3, [sp, #0x20]
  31b952: 681b         	ldr	r3, [r3]
  31b954: f503 730f    	add.w	r3, r3, #0x23c
  31b958: 681c         	ldr	r4, [r3]
  31b95a: 466b         	mov	r3, sp
  31b95c: aa1e         	add	r2, sp, #0x78
  31b95e: e892 0003    	ldm.w	r2, {r0, r1}
  31b962: e883 0003    	stm.w	r3, {r0, r1}
  31b966: ab1c         	add	r3, sp, #0x70
  31b968: cb0c         	ldm	r3, {r2, r3}
  31b96a: 9808         	ldr	r0, [sp, #0x20]
  31b96c: 47a0         	blx	r4
  31b96e: 9b08         	ldr	r3, [sp, #0x20]
  31b970: 681b         	ldr	r3, [r3]
  31b972: f503 730e    	add.w	r3, r3, #0x238
  31b976: 681b         	ldr	r3, [r3]
  31b978: 9808         	ldr	r0, [sp, #0x20]
  31b97a: 9912         	ldr	r1, [sp, #0x48]
  31b97c: 4798         	blx	r3
  31b97e: 9b08         	ldr	r3, [sp, #0x20]
  31b980: 681b         	ldr	r3, [r3]
  31b982: f503 7303    	add.w	r3, r3, #0x20c
  31b986: 681b         	ldr	r3, [r3]
  31b988: 9808         	ldr	r0, [sp, #0x20]
  31b98a: 4798         	blx	r3
  31b98c: 4603         	mov	r3, r0
  31b98e: 9313         	str	r3, [sp, #0x4c]
  31b990: 9b13         	ldr	r3, [sp, #0x4c]
  31b992: 2b00         	cmp	r3, #0x0
  31b994: d015         	beq	0x31b9c2 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x25a> @ imm = #0x2a
  31b996: 9b13         	ldr	r3, [sp, #0x4c]
  31b998: 681b         	ldr	r3, [r3]
  31b99a: f503 7312    	add.w	r3, r3, #0x248
  31b99e: 681b         	ldr	r3, [r3]
  31b9a0: f89d 2017    	ldrb.w	r2, [sp, #0x17]
  31b9a4: 9813         	ldr	r0, [sp, #0x4c]
  31b9a6: 4611         	mov	r1, r2
  31b9a8: 4798         	blx	r3
  31b9aa: e00a         	b	0x31b9c2 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x25a> @ imm = #0x14
  31b9ac: ab1c         	add	r3, sp, #0x70
  31b9ae: 4618         	mov	r0, r3
  31b9b0: f099 f7b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x499f60
  31b9b4: e7ff         	b	0x31b9b6 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x24e> @ imm = #-0x2
  31b9b6: ab18         	add	r3, sp, #0x60
  31b9b8: 4618         	mov	r0, r3
  31b9ba: f06e f51f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46ea3e
  31b9be: f06c f375    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46c6ea
  31b9c2: b021         	add	sp, #0x84
  31b9c4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31b9c5); words below are literal-pool data ---
  31b9c6: bf00         	nop
  31b9c8: 7296         	strb	r6, [r2, #0xa]
  31b9ca: 0061         	lsls	r1, r4, #0x1
  31b9cc: d9f8         	bls	0x31b9c0 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x258> @ imm = #-0x10
  31b9ce: ffff b510    	vsli.32	d27, d0, #0x1f
