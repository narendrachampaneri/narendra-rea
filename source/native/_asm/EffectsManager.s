// EffectsManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 29 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../EffectsManager.cpp

// ==== EffectsManager::EffectsManager
//      file offset 0x313d14 (= ELF address; Ghidra 0x323d14), 72 bytes, Thumb-2
  313d14: b510         	push	{r4, lr}
  313d16: b082         	sub	sp, #0x8
  313d18: 9001         	str	r0, [sp, #0x4]
  313d1a: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x313d54 <EffectsManager::EffectsManager()+0x40>
  313d1c: 447c         	add	r4, pc
  313d1e: 9b01         	ldr	r3, [sp, #0x4]
  313d20: 4618         	mov	r0, r3
  313d22: f27b fc89    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x27b912
  313d26: 9b01         	ldr	r3, [sp, #0x4]
  313d28: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x313d58 <EffectsManager::EffectsManager()+0x44>
  313d2a: 58a2         	ldr	r2, [r4, r2]
  313d2c: 3208         	adds	r2, #0x8
  313d2e: 601a         	str	r2, [r3]
  313d30: 9b01         	ldr	r3, [sp, #0x4]
  313d32: f503 7396    	add.w	r3, r3, #0x12c
  313d36: 4618         	mov	r0, r3
  313d38: f27e ffcc    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x27ef98
  313d3c: 9b01         	ldr	r3, [sp, #0x4]
  313d3e: e005         	b	0x313d4c <EffectsManager::EffectsManager()+0x38> @ imm = #0xa
  313d40: 9b01         	ldr	r3, [sp, #0x4]
  313d42: 4618         	mov	r0, r3
  313d44: f27b fd7e    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x27bafc
  313d48: f074 f1b0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x474360
  313d4c: 4618         	mov	r0, r3
  313d4e: b002         	add	sp, #0x8
  313d50: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x313d51); words below are literal-pool data ---
  313d52: bf00         	nop
  313d54: ecec 0061    	stcl	p0, c0, [r12], #388
  313d58: d9c8         	bls	0x313cec <PlayerDeath::getBlood()> @ imm = #-0x70
  313d5a: ffff b570    	<unknown>

// ==== EffectsManager::init
//      file offset 0x313d5c (= ELF address; Ghidra 0x323d5c), 1880 bytes, Thumb-2
  313d5c: b570         	push	{r4, r5, r6, lr}
  313d5e: b0a4         	sub	sp, #0x90
  313d60: 9003         	str	r0, [sp, #0xc]
  313d62: f8df 46d8    	ldr.w	r4, [pc, #0x6d8]        @ 0x31443c <EffectsManager::init()+0x6e0>
  313d66: 447c         	add	r4, pc
  313d68: 9b03         	ldr	r3, [sp, #0xc]
  313d6a: 4618         	mov	r0, r3
  313d6c: f27b fe6e    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x27bcdc
  313d70: 4603         	mov	r3, r0
  313d72: f88d 3017    	strb.w	r3, [sp, #0x17]
  313d76: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  313d7a: f083 0301    	eor	r3, r3, #0x1
  313d7e: b2db         	uxtb	r3, r3
  313d80: 2b00         	cmp	r3, #0x0
  313d82: d001         	beq	0x313d88 <EffectsManager::init()+0x2c> @ imm = #0x2
  313d84: 2300         	movs	r3, #0x0
  313d86: e355         	b	0x314434 <EffectsManager::init()+0x6d8> @ imm = #0x6aa
  313d88: f2cc fc92    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc924
  313d8c: 4602         	mov	r2, r0
  313d8e: 9b03         	ldr	r3, [sp, #0xc]
  313d90: f8df 16ac    	ldr.w	r1, [pc, #0x6ac]        @ 0x314440 <EffectsManager::init()+0x6e4>
  313d94: 5861         	ldr	r1, [r4, r1]
  313d96: 910c         	str	r1, [sp, #0x30]
  313d98: 2100         	movs	r1, #0x0
  313d9a: 910d         	str	r1, [sp, #0x34]
  313d9c: f8df 16a4    	ldr.w	r1, [pc, #0x6a4]        @ 0x314444 <EffectsManager::init()+0x6e8>
  313da0: 4479         	add	r1, pc
  313da2: 9100         	str	r1, [sp]
  313da4: 2100         	movs	r1, #0x0
  313da6: 9101         	str	r1, [sp, #0x4]
  313da8: 4610         	mov	r0, r2
  313daa: 4619         	mov	r1, r3
  313dac: ab0c         	add	r3, sp, #0x30
  313dae: cb0c         	ldm	r3, {r2, r3}
  313db0: f2cc fd1a    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cca34
  313db4: f2cc fc7c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc8f8
  313db8: 4602         	mov	r2, r0
  313dba: 9b03         	ldr	r3, [sp, #0xc]
  313dbc: f8df 1688    	ldr.w	r1, [pc, #0x688]        @ 0x314448 <EffectsManager::init()+0x6ec>
  313dc0: 5861         	ldr	r1, [r4, r1]
  313dc2: 910e         	str	r1, [sp, #0x38]
  313dc4: 2100         	movs	r1, #0x0
  313dc6: 910f         	str	r1, [sp, #0x3c]
  313dc8: f8df 1680    	ldr.w	r1, [pc, #0x680]        @ 0x31444c <EffectsManager::init()+0x6f0>
  313dcc: 4479         	add	r1, pc
  313dce: 9100         	str	r1, [sp]
  313dd0: 2100         	movs	r1, #0x0
  313dd2: 9101         	str	r1, [sp, #0x4]
  313dd4: 4610         	mov	r0, r2
  313dd6: 4619         	mov	r1, r3
  313dd8: ab0e         	add	r3, sp, #0x38
  313dda: cb0c         	ldm	r3, {r2, r3}
  313ddc: f2cc fd04    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cca08
  313de0: f2cc fc66    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc8cc
  313de4: 4602         	mov	r2, r0
  313de6: 9b03         	ldr	r3, [sp, #0xc]
  313de8: f8df 1664    	ldr.w	r1, [pc, #0x664]        @ 0x314450 <EffectsManager::init()+0x6f4>
  313dec: 5861         	ldr	r1, [r4, r1]
  313dee: 9110         	str	r1, [sp, #0x40]
  313df0: 2100         	movs	r1, #0x0
  313df2: 9111         	str	r1, [sp, #0x44]
  313df4: f8df 165c    	ldr.w	r1, [pc, #0x65c]        @ 0x314454 <EffectsManager::init()+0x6f8>
  313df8: 4479         	add	r1, pc
  313dfa: 9100         	str	r1, [sp]
  313dfc: 2100         	movs	r1, #0x0
  313dfe: 9101         	str	r1, [sp, #0x4]
  313e00: 4610         	mov	r0, r2
  313e02: 4619         	mov	r1, r3
  313e04: ab10         	add	r3, sp, #0x40
  313e06: cb0c         	ldm	r3, {r2, r3}
  313e08: f2cc fcee    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc9dc
  313e0c: f2cc fc50    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc8a0
  313e10: 4602         	mov	r2, r0
  313e12: 9b03         	ldr	r3, [sp, #0xc]
  313e14: f8df 1640    	ldr.w	r1, [pc, #0x640]        @ 0x314458 <EffectsManager::init()+0x6fc>
  313e18: 5861         	ldr	r1, [r4, r1]
  313e1a: 9112         	str	r1, [sp, #0x48]
  313e1c: 2100         	movs	r1, #0x0
  313e1e: 9113         	str	r1, [sp, #0x4c]
  313e20: f8df 1638    	ldr.w	r1, [pc, #0x638]        @ 0x31445c <EffectsManager::init()+0x700>
  313e24: 4479         	add	r1, pc
  313e26: 9100         	str	r1, [sp]
  313e28: 2100         	movs	r1, #0x0
  313e2a: 9101         	str	r1, [sp, #0x4]
  313e2c: 4610         	mov	r0, r2
  313e2e: 4619         	mov	r1, r3
  313e30: ab12         	add	r3, sp, #0x48
  313e32: cb0c         	ldm	r3, {r2, r3}
  313e34: f2cc fcd8    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc9b0
  313e38: f2cc fc3a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc874
  313e3c: 4602         	mov	r2, r0
  313e3e: 9b03         	ldr	r3, [sp, #0xc]
  313e40: f8df 161c    	ldr.w	r1, [pc, #0x61c]        @ 0x314460 <EffectsManager::init()+0x704>
  313e44: 5861         	ldr	r1, [r4, r1]
  313e46: 9114         	str	r1, [sp, #0x50]
  313e48: 2100         	movs	r1, #0x0
  313e4a: 9115         	str	r1, [sp, #0x54]
  313e4c: f8df 1614    	ldr.w	r1, [pc, #0x614]        @ 0x314464 <EffectsManager::init()+0x708>
  313e50: 4479         	add	r1, pc
  313e52: 9100         	str	r1, [sp]
  313e54: 2100         	movs	r1, #0x0
  313e56: 9101         	str	r1, [sp, #0x4]
  313e58: 4610         	mov	r0, r2
  313e5a: 4619         	mov	r1, r3
  313e5c: ab14         	add	r3, sp, #0x50
  313e5e: cb0c         	ldm	r3, {r2, r3}
  313e60: f2cc fcc2    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc984
  313e64: f2cc fc24    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc848
  313e68: 4602         	mov	r2, r0
  313e6a: 9b03         	ldr	r3, [sp, #0xc]
  313e6c: f8df 15f8    	ldr.w	r1, [pc, #0x5f8]        @ 0x314468 <EffectsManager::init()+0x70c>
  313e70: 5861         	ldr	r1, [r4, r1]
  313e72: 9116         	str	r1, [sp, #0x58]
  313e74: 2100         	movs	r1, #0x0
  313e76: 9117         	str	r1, [sp, #0x5c]
  313e78: f8df 15f0    	ldr.w	r1, [pc, #0x5f0]        @ 0x31446c <EffectsManager::init()+0x710>
  313e7c: 4479         	add	r1, pc
  313e7e: 9100         	str	r1, [sp]
  313e80: 2100         	movs	r1, #0x0
  313e82: 9101         	str	r1, [sp, #0x4]
  313e84: 4610         	mov	r0, r2
  313e86: 4619         	mov	r1, r3
  313e88: ab16         	add	r3, sp, #0x58
  313e8a: cb0c         	ldm	r3, {r2, r3}
  313e8c: f2cc fcac    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc958
  313e90: f2cc fc0e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc81c
  313e94: 4602         	mov	r2, r0
  313e96: 9b03         	ldr	r3, [sp, #0xc]
  313e98: f8df 15d4    	ldr.w	r1, [pc, #0x5d4]        @ 0x314470 <EffectsManager::init()+0x714>
  313e9c: 5861         	ldr	r1, [r4, r1]
  313e9e: 9118         	str	r1, [sp, #0x60]
  313ea0: 2100         	movs	r1, #0x0
  313ea2: 9119         	str	r1, [sp, #0x64]
  313ea4: f8df 15cc    	ldr.w	r1, [pc, #0x5cc]        @ 0x314474 <EffectsManager::init()+0x718>
  313ea8: 4479         	add	r1, pc
  313eaa: 9100         	str	r1, [sp]
  313eac: 2100         	movs	r1, #0x0
  313eae: 9101         	str	r1, [sp, #0x4]
  313eb0: 4610         	mov	r0, r2
  313eb2: 4619         	mov	r1, r3
  313eb4: ab18         	add	r3, sp, #0x60
  313eb6: cb0c         	ldm	r3, {r2, r3}
  313eb8: f2cc fc96    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc92c
  313ebc: f2cc fbf8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc7f0
  313ec0: 4602         	mov	r2, r0
  313ec2: 9b03         	ldr	r3, [sp, #0xc]
  313ec4: f8df 15b0    	ldr.w	r1, [pc, #0x5b0]        @ 0x314478 <EffectsManager::init()+0x71c>
  313ec8: 5861         	ldr	r1, [r4, r1]
  313eca: 911a         	str	r1, [sp, #0x68]
  313ecc: 2100         	movs	r1, #0x0
  313ece: 911b         	str	r1, [sp, #0x6c]
  313ed0: f8df 15a8    	ldr.w	r1, [pc, #0x5a8]        @ 0x31447c <EffectsManager::init()+0x720>
  313ed4: 4479         	add	r1, pc
  313ed6: 9100         	str	r1, [sp]
  313ed8: 2100         	movs	r1, #0x0
  313eda: 9101         	str	r1, [sp, #0x4]
  313edc: 4610         	mov	r0, r2
  313ede: 4619         	mov	r1, r3
  313ee0: ab1a         	add	r3, sp, #0x68
  313ee2: cb0c         	ldm	r3, {r2, r3}
  313ee4: f2cc fc80    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc900
  313ee8: f2cc fbe2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc7c4
  313eec: 4602         	mov	r2, r0
  313eee: 9b03         	ldr	r3, [sp, #0xc]
  313ef0: f8df 1584    	ldr.w	r1, [pc, #0x584]        @ 0x314478 <EffectsManager::init()+0x71c>
  313ef4: 5861         	ldr	r1, [r4, r1]
  313ef6: 911c         	str	r1, [sp, #0x70]
  313ef8: 2100         	movs	r1, #0x0
  313efa: 911d         	str	r1, [sp, #0x74]
  313efc: f8df 1580    	ldr.w	r1, [pc, #0x580]        @ 0x314480 <EffectsManager::init()+0x724>
  313f00: 4479         	add	r1, pc
  313f02: 9100         	str	r1, [sp]
  313f04: 2100         	movs	r1, #0x0
  313f06: 9101         	str	r1, [sp, #0x4]
  313f08: 4610         	mov	r0, r2
  313f0a: 4619         	mov	r1, r3
  313f0c: ab1c         	add	r3, sp, #0x70
  313f0e: cb0c         	ldm	r3, {r2, r3}
  313f10: f2cc fc6a    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc8d4
  313f14: f2cc fbcc    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc798
  313f18: 4602         	mov	r2, r0
  313f1a: 9b03         	ldr	r3, [sp, #0xc]
  313f1c: f8df 1564    	ldr.w	r1, [pc, #0x564]        @ 0x314484 <EffectsManager::init()+0x728>
  313f20: 5861         	ldr	r1, [r4, r1]
  313f22: 911e         	str	r1, [sp, #0x78]
  313f24: 2100         	movs	r1, #0x0
  313f26: 911f         	str	r1, [sp, #0x7c]
  313f28: f8df 155c    	ldr.w	r1, [pc, #0x55c]        @ 0x314488 <EffectsManager::init()+0x72c>
  313f2c: 4479         	add	r1, pc
  313f2e: 9100         	str	r1, [sp]
  313f30: 2100         	movs	r1, #0x0
  313f32: 9101         	str	r1, [sp, #0x4]
  313f34: 4610         	mov	r0, r2
  313f36: 4619         	mov	r1, r3
  313f38: ab1e         	add	r3, sp, #0x78
  313f3a: cb0c         	ldm	r3, {r2, r3}
  313f3c: f2cc fc54    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc8a8
  313f40: f2cc fbb6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc76c
  313f44: 4602         	mov	r2, r0
  313f46: 9b03         	ldr	r3, [sp, #0xc]
  313f48: f8df 1540    	ldr.w	r1, [pc, #0x540]        @ 0x31448c <EffectsManager::init()+0x730>
  313f4c: 5861         	ldr	r1, [r4, r1]
  313f4e: 9120         	str	r1, [sp, #0x80]
  313f50: 2100         	movs	r1, #0x0
  313f52: 9121         	str	r1, [sp, #0x84]
  313f54: f8df 1538    	ldr.w	r1, [pc, #0x538]        @ 0x314490 <EffectsManager::init()+0x734>
  313f58: 4479         	add	r1, pc
  313f5a: 9100         	str	r1, [sp]
  313f5c: 2100         	movs	r1, #0x0
  313f5e: 9101         	str	r1, [sp, #0x4]
  313f60: 4610         	mov	r0, r2
  313f62: 4619         	mov	r1, r3
  313f64: ab20         	add	r3, sp, #0x80
  313f66: cb0c         	ldm	r3, {r2, r3}
  313f68: f2cc fc3e    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc87c
  313f6c: f2cc fba0    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc740
  313f70: 4602         	mov	r2, r0
  313f72: 9b03         	ldr	r3, [sp, #0xc]
  313f74: f8df 151c    	ldr.w	r1, [pc, #0x51c]        @ 0x314494 <EffectsManager::init()+0x738>
  313f78: 5861         	ldr	r1, [r4, r1]
  313f7a: 9122         	str	r1, [sp, #0x88]
  313f7c: 2100         	movs	r1, #0x0
  313f7e: 9123         	str	r1, [sp, #0x8c]
  313f80: f8df 1514    	ldr.w	r1, [pc, #0x514]        @ 0x314498 <EffectsManager::init()+0x73c>
  313f84: 4479         	add	r1, pc
  313f86: 9100         	str	r1, [sp]
  313f88: 2100         	movs	r1, #0x0
  313f8a: 9101         	str	r1, [sp, #0x4]
  313f8c: 4610         	mov	r0, r2
  313f8e: 4619         	mov	r1, r3
  313f90: ab22         	add	r3, sp, #0x88
  313f92: cb0c         	ldm	r3, {r2, r3}
  313f94: f2cc fc28    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2cc850
  313f98: f285 fecc    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x285d98
  313f9c: 4602         	mov	r2, r0
  313f9e: 9b03         	ldr	r3, [sp, #0xc]
  313fa0: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  313fa4: 9b03         	ldr	r3, [sp, #0xc]
  313fa6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  313faa: 4618         	mov	r0, r3
  313fac: f283 ff9c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283f38
  313fb0: 9b03         	ldr	r3, [sp, #0xc]
  313fb2: 2204         	movs	r2, #0x4
  313fb4: f8c3 2120    	str.w	r2, [r3, #0x120]
  313fb8: 2300         	movs	r3, #0x0
  313fba: 9306         	str	r3, [sp, #0x18]
  313fbc: e016         	b	0x313fec <EffectsManager::init()+0x290> @ imm = #0x2c
  313fbe: 2050         	movs	r0, #0x50
  313fc0: f073 f4d0    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4739a0
  313fc4: 4603         	mov	r3, r0
  313fc6: 461d         	mov	r5, r3
  313fc8: 4628         	mov	r0, r5
  313fca: f081 ffb9    	bl	0x395f40 <PlayerDeath::PlayerDeath()> @ imm = #0x81f72
  313fce: 9508         	str	r5, [sp, #0x20]
  313fd0: 9b08         	ldr	r3, [sp, #0x20]
  313fd2: 4618         	mov	r0, r3
  313fd4: f283 ff92    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x283f24
  313fd8: 9b03         	ldr	r3, [sp, #0xc]
  313fda: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  313fde: 4618         	mov	r0, r3
  313fe0: 9908         	ldr	r1, [sp, #0x20]
  313fe2: f286 f943    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x286286
  313fe6: 9b06         	ldr	r3, [sp, #0x18]
  313fe8: 3301         	adds	r3, #0x1
  313fea: 9306         	str	r3, [sp, #0x18]
  313fec: 9b03         	ldr	r3, [sp, #0xc]
  313fee: f8d3 2120    	ldr.w	r2, [r3, #0x120]
  313ff2: 9b06         	ldr	r3, [sp, #0x18]
  313ff4: 429a         	cmp	r2, r3
  313ff6: dce2         	bgt	0x313fbe <EffectsManager::init()+0x262> @ imm = #-0x3c
  313ff8: 9b03         	ldr	r3, [sp, #0xc]
  313ffa: f04f 0200    	mov.w	r2, #0x0
  313ffe: f8c3 2114    	str.w	r2, [r3, #0x114]
  314002: f8df 3498    	ldr.w	r3, [pc, #0x498]        @ 0x31449c <EffectsManager::init()+0x740>
  314006: 447b         	add	r3, pc
  314008: 4618         	mov	r0, r3
  31400a: f2c4 f8bb    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2c4176
  31400e: 4602         	mov	r2, r0
  314010: 9b03         	ldr	r3, [sp, #0xc]
  314012: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  314016: 9b03         	ldr	r3, [sp, #0xc]
  314018: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31401c: 4618         	mov	r0, r3
  31401e: f283 ff63    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283ec6
  314022: 9b03         	ldr	r3, [sp, #0xc]
  314024: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  314028: 681b         	ldr	r3, [r3]
  31402a: 337c         	adds	r3, #0x7c
  31402c: 681d         	ldr	r5, [r3]
  31402e: 9b03         	ldr	r3, [sp, #0xc]
  314030: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  314034: ab0a         	add	r3, sp, #0x28
  314036: 4618         	mov	r0, r3
  314038: f64c 41cd    	movw	r1, #0xcccd
  31403c: f6c3 714c    	movt	r1, #0x3f4c
  314040: f04f 527c    	mov.w	r2, #0x3f000000
  314044: f27e fe54    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27eca8
  314048: ab0a         	add	r3, sp, #0x28
  31404a: 4630         	mov	r0, r6
  31404c: 4619         	mov	r1, r3
  31404e: 47a8         	blx	r5
  314050: f8df 344c    	ldr.w	r3, [pc, #0x44c]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314054: 58e3         	ldr	r3, [r4, r3]
  314056: 681b         	ldr	r3, [r3]
  314058: 681b         	ldr	r3, [r3]
  31405a: 33cc         	adds	r3, #0xcc
  31405c: 681b         	ldr	r3, [r3]
  31405e: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314062: 58a2         	ldr	r2, [r4, r2]
  314064: 6812         	ldr	r2, [r2]
  314066: 4611         	mov	r1, r2
  314068: 9a03         	ldr	r2, [sp, #0xc]
  31406a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31406e: 4608         	mov	r0, r1
  314070: 4611         	mov	r1, r2
  314072: 2204         	movs	r2, #0x4
  314074: 4798         	blx	r3
  314076: 9b03         	ldr	r3, [sp, #0xc]
  314078: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31407c: 681b         	ldr	r3, [r3]
  31407e: 3340         	adds	r3, #0x40
  314080: 681b         	ldr	r3, [r3]
  314082: 9a03         	ldr	r2, [sp, #0xc]
  314084: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  314088: 4610         	mov	r0, r2
  31408a: f649 119a    	movw	r1, #0x999a
  31408e: f6c3 7119    	movt	r1, #0x3f19
  314092: 4798         	blx	r3
  314094: 9b03         	ldr	r3, [sp, #0xc]
  314096: f04f 0200    	mov.w	r2, #0x0
  31409a: f8c3 2118    	str.w	r2, [r3, #0x118]
  31409e: f8df 3404    	ldr.w	r3, [pc, #0x404]        @ 0x3144a4 <EffectsManager::init()+0x748>
  3140a2: 447b         	add	r3, pc
  3140a4: 4618         	mov	r0, r3
  3140a6: f2c4 f86d    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2c40da
  3140aa: 4602         	mov	r2, r0
  3140ac: 9b03         	ldr	r3, [sp, #0xc]
  3140ae: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3140b2: 9b03         	ldr	r3, [sp, #0xc]
  3140b4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3140b8: 4618         	mov	r0, r3
  3140ba: f283 ff15    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283e2a
  3140be: 9b03         	ldr	r3, [sp, #0xc]
  3140c0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3140c4: 681b         	ldr	r3, [r3]
  3140c6: 337c         	adds	r3, #0x7c
  3140c8: 681d         	ldr	r5, [r3]
  3140ca: 9b03         	ldr	r3, [sp, #0xc]
  3140cc: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  3140d0: ab0a         	add	r3, sp, #0x28
  3140d2: 4618         	mov	r0, r3
  3140d4: f64c 41cd    	movw	r1, #0xcccd
  3140d8: f6c3 714c    	movt	r1, #0x3f4c
  3140dc: f04f 527c    	mov.w	r2, #0x3f000000
  3140e0: f27e fe06    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27ec0c
  3140e4: ab0a         	add	r3, sp, #0x28
  3140e6: 4630         	mov	r0, r6
  3140e8: 4619         	mov	r1, r3
  3140ea: 47a8         	blx	r5
  3140ec: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3144a0 <EffectsManager::init()+0x744>
  3140ee: 58e3         	ldr	r3, [r4, r3]
  3140f0: 681b         	ldr	r3, [r3]
  3140f2: 681b         	ldr	r3, [r3]
  3140f4: 33cc         	adds	r3, #0xcc
  3140f6: 681b         	ldr	r3, [r3]
  3140f8: 4ae9         	ldr	r2, [pc, #0x3a4]        @ 0x3144a0 <EffectsManager::init()+0x744>
  3140fa: 58a2         	ldr	r2, [r4, r2]
  3140fc: 6812         	ldr	r2, [r2]
  3140fe: 4611         	mov	r1, r2
  314100: 9a03         	ldr	r2, [sp, #0xc]
  314102: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  314106: 4608         	mov	r0, r1
  314108: 4611         	mov	r1, r2
  31410a: 2204         	movs	r2, #0x4
  31410c: 4798         	blx	r3
  31410e: 9b03         	ldr	r3, [sp, #0xc]
  314110: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  314114: 681b         	ldr	r3, [r3]
  314116: 3340         	adds	r3, #0x40
  314118: 681b         	ldr	r3, [r3]
  31411a: 9a03         	ldr	r2, [sp, #0xc]
  31411c: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  314120: 4610         	mov	r0, r2
  314122: f649 119a    	movw	r1, #0x999a
  314126: f6c3 7119    	movt	r1, #0x3f19
  31412a: 4798         	blx	r3
  31412c: 9b03         	ldr	r3, [sp, #0xc]
  31412e: f04f 0200    	mov.w	r2, #0x0
  314132: f8c3 2128    	str.w	r2, [r3, #0x128]
  314136: 9b03         	ldr	r3, [sp, #0xc]
  314138: f503 7596    	add.w	r5, r3, #0x12c
  31413c: ab0a         	add	r3, sp, #0x28
  31413e: 4618         	mov	r0, r3
  314140: f04f 0100    	mov.w	r1, #0x0
  314144: f04f 0200    	mov.w	r2, #0x0
  314148: f27e fdd2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27eba4
  31414c: ab0a         	add	r3, sp, #0x28
  31414e: 4628         	mov	r0, r5
  314150: 4619         	mov	r1, r3
  314152: f27e fdfb    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x27ebf6
  314156: 9b03         	ldr	r3, [sp, #0xc]
  314158: f04f 0200    	mov.w	r2, #0x0
  31415c: f8c3 2134    	str.w	r2, [r3, #0x134]
  314160: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x3144a8 <EffectsManager::init()+0x74c>
  314162: 447b         	add	r3, pc
  314164: 4618         	mov	r0, r3
  314166: f2b0 fed9    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x2b0db2
  31416a: 4602         	mov	r2, r0
  31416c: 9b03         	ldr	r3, [sp, #0xc]
  31416e: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  314172: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314174: 58e3         	ldr	r3, [r4, r3]
  314176: 681b         	ldr	r3, [r3]
  314178: 681b         	ldr	r3, [r3]
  31417a: 33cc         	adds	r3, #0xcc
  31417c: 681b         	ldr	r3, [r3]
  31417e: 4ac8         	ldr	r2, [pc, #0x320]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314180: 58a2         	ldr	r2, [r4, r2]
  314182: 6812         	ldr	r2, [r2]
  314184: 4611         	mov	r1, r2
  314186: 9a03         	ldr	r2, [sp, #0xc]
  314188: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  31418c: 4608         	mov	r0, r1
  31418e: 4611         	mov	r1, r2
  314190: 2204         	movs	r2, #0x4
  314192: 4798         	blx	r3
  314194: 9b03         	ldr	r3, [sp, #0xc]
  314196: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  31419a: 4618         	mov	r0, r3
  31419c: f2ae fd22    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x2aea44
  3141a0: 9b03         	ldr	r3, [sp, #0xc]
  3141a2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3141a6: 681b         	ldr	r3, [r3]
  3141a8: f503 733c    	add.w	r3, r3, #0x2f0
  3141ac: 681b         	ldr	r3, [r3]
  3141ae: 9a03         	ldr	r2, [sp, #0xc]
  3141b0: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3141b4: 4610         	mov	r0, r2
  3141b6: 2102         	movs	r1, #0x2
  3141b8: 4798         	blx	r3
  3141ba: 9b03         	ldr	r3, [sp, #0xc]
  3141bc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3141c0: 681b         	ldr	r3, [r3]
  3141c2: f503 73da    	add.w	r3, r3, #0x1b4
  3141c6: 681b         	ldr	r3, [r3]
  3141c8: 9a03         	ldr	r2, [sp, #0xc]
  3141ca: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3141ce: 4610         	mov	r0, r2
  3141d0: f04f 0100    	mov.w	r1, #0x0
  3141d4: f6cb 7180    	movt	r1, #0xbf80
  3141d8: 4798         	blx	r3
  3141da: 9b03         	ldr	r3, [sp, #0xc]
  3141dc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3141e0: 681b         	ldr	r3, [r3]
  3141e2: f503 7332    	add.w	r3, r3, #0x2c8
  3141e6: 681b         	ldr	r3, [r3]
  3141e8: 9a03         	ldr	r2, [sp, #0xc]
  3141ea: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3141ee: 4610         	mov	r0, r2
  3141f0: f04f 0100    	mov.w	r1, #0x0
  3141f4: 4798         	blx	r3
  3141f6: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x3144ac <EffectsManager::init()+0x750>
  3141f8: 447b         	add	r3, pc
  3141fa: 4618         	mov	r0, r3
  3141fc: f2b0 fe8e    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x2b0d1c
  314200: 4602         	mov	r2, r0
  314202: 9b03         	ldr	r3, [sp, #0xc]
  314204: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  314208: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x3144a0 <EffectsManager::init()+0x744>
  31420a: 58e3         	ldr	r3, [r4, r3]
  31420c: 681b         	ldr	r3, [r3]
  31420e: 681b         	ldr	r3, [r3]
  314210: 33cc         	adds	r3, #0xcc
  314212: 681b         	ldr	r3, [r3]
  314214: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314216: 58a2         	ldr	r2, [r4, r2]
  314218: 6812         	ldr	r2, [r2]
  31421a: 4611         	mov	r1, r2
  31421c: 9a03         	ldr	r2, [sp, #0xc]
  31421e: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  314222: 4608         	mov	r0, r1
  314224: 4611         	mov	r1, r2
  314226: 2204         	movs	r2, #0x4
  314228: 4798         	blx	r3
  31422a: 9b03         	ldr	r3, [sp, #0xc]
  31422c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  314230: 4618         	mov	r0, r3
  314232: f2ae fcd7    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x2ae9ae
  314236: 9b03         	ldr	r3, [sp, #0xc]
  314238: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  31423c: 681b         	ldr	r3, [r3]
  31423e: f503 733c    	add.w	r3, r3, #0x2f0
  314242: 681b         	ldr	r3, [r3]
  314244: 9a03         	ldr	r2, [sp, #0xc]
  314246: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  31424a: 4610         	mov	r0, r2
  31424c: 2102         	movs	r1, #0x2
  31424e: 4798         	blx	r3
  314250: 9b03         	ldr	r3, [sp, #0xc]
  314252: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  314256: 681b         	ldr	r3, [r3]
  314258: f503 73da    	add.w	r3, r3, #0x1b4
  31425c: 681b         	ldr	r3, [r3]
  31425e: 9a03         	ldr	r2, [sp, #0xc]
  314260: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  314264: 4610         	mov	r0, r2
  314266: f04f 0100    	mov.w	r1, #0x0
  31426a: f6cb 7180    	movt	r1, #0xbf80
  31426e: 4798         	blx	r3
  314270: 9b03         	ldr	r3, [sp, #0xc]
  314272: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  314276: 681b         	ldr	r3, [r3]
  314278: f503 7332    	add.w	r3, r3, #0x2c8
  31427c: 681b         	ldr	r3, [r3]
  31427e: 9a03         	ldr	r2, [sp, #0xc]
  314280: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  314284: 4610         	mov	r0, r2
  314286: f04f 0100    	mov.w	r1, #0x0
  31428a: 4798         	blx	r3
  31428c: 4b88         	ldr	r3, [pc, #0x220]        @ 0x3144b0 <EffectsManager::init()+0x754>
  31428e: 447b         	add	r3, pc
  314290: 4618         	mov	r0, r3
  314292: f2b0 fe43    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x2b0c86
  314296: 4602         	mov	r2, r0
  314298: 9b03         	ldr	r3, [sp, #0xc]
  31429a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  31429e: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3144a0 <EffectsManager::init()+0x744>
  3142a0: 58e3         	ldr	r3, [r4, r3]
  3142a2: 681b         	ldr	r3, [r3]
  3142a4: 681b         	ldr	r3, [r3]
  3142a6: 33cc         	adds	r3, #0xcc
  3142a8: 681b         	ldr	r3, [r3]
  3142aa: 4a7d         	ldr	r2, [pc, #0x1f4]        @ 0x3144a0 <EffectsManager::init()+0x744>
  3142ac: 58a2         	ldr	r2, [r4, r2]
  3142ae: 6812         	ldr	r2, [r2]
  3142b0: 4611         	mov	r1, r2
  3142b2: 9a03         	ldr	r2, [sp, #0xc]
  3142b4: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3142b8: 4608         	mov	r0, r1
  3142ba: 4611         	mov	r1, r2
  3142bc: 2204         	movs	r2, #0x4
  3142be: 4798         	blx	r3
  3142c0: 9b03         	ldr	r3, [sp, #0xc]
  3142c2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3142c6: 4618         	mov	r0, r3
  3142c8: f2ae fc8c    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x2ae918
  3142cc: 9b03         	ldr	r3, [sp, #0xc]
  3142ce: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3142d2: 681b         	ldr	r3, [r3]
  3142d4: f503 733c    	add.w	r3, r3, #0x2f0
  3142d8: 681b         	ldr	r3, [r3]
  3142da: 9a03         	ldr	r2, [sp, #0xc]
  3142dc: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3142e0: 4610         	mov	r0, r2
  3142e2: 2102         	movs	r1, #0x2
  3142e4: 4798         	blx	r3
  3142e6: 9b03         	ldr	r3, [sp, #0xc]
  3142e8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3142ec: 681b         	ldr	r3, [r3]
  3142ee: f503 73da    	add.w	r3, r3, #0x1b4
  3142f2: 681b         	ldr	r3, [r3]
  3142f4: 9a03         	ldr	r2, [sp, #0xc]
  3142f6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3142fa: 4610         	mov	r0, r2
  3142fc: f04f 0100    	mov.w	r1, #0x0
  314300: f6cb 7180    	movt	r1, #0xbf80
  314304: 4798         	blx	r3
  314306: 9b03         	ldr	r3, [sp, #0xc]
  314308: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31430c: 681b         	ldr	r3, [r3]
  31430e: f503 7332    	add.w	r3, r3, #0x2c8
  314312: 681b         	ldr	r3, [r3]
  314314: 9a03         	ldr	r2, [sp, #0xc]
  314316: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  31431a: 4610         	mov	r0, r2
  31431c: f04f 0100    	mov.w	r1, #0x0
  314320: 4798         	blx	r3
  314322: f285 fd07    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x285a0e
  314326: 4602         	mov	r2, r0
  314328: 9b03         	ldr	r3, [sp, #0xc]
  31432a: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  31432e: 9b03         	ldr	r3, [sp, #0xc]
  314330: 2205         	movs	r2, #0x5
  314332: f8c3 211c    	str.w	r2, [r3, #0x11c]
  314336: 2300         	movs	r3, #0x0
  314338: 9307         	str	r3, [sp, #0x1c]
  31433a: e023         	b	0x314384 <EffectsManager::init()+0x628> @ imm = #0x46
  31433c: 20fc         	movs	r0, #0xfc
  31433e: f073 f311    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x473622
  314342: 4603         	mov	r3, r0
  314344: 461d         	mov	r5, r3
  314346: 4628         	mov	r0, r5
  314348: f008 fc64    	bl	0x31cc14 <Explosion::Explosion()> @ imm = #0x88c8
  31434c: 9509         	str	r5, [sp, #0x24]
  31434e: 9b09         	ldr	r3, [sp, #0x24]
  314350: 4618         	mov	r0, r3
  314352: f283 fdd3    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x283ba6
  314356: 9b03         	ldr	r3, [sp, #0xc]
  314358: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  31435c: 4618         	mov	r0, r3
  31435e: 9909         	ldr	r1, [sp, #0x24]
  314360: f285 ff84    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x285f08
  314364: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314366: 58e3         	ldr	r3, [r4, r3]
  314368: 681b         	ldr	r3, [r3]
  31436a: 681b         	ldr	r3, [r3]
  31436c: 33cc         	adds	r3, #0xcc
  31436e: 681b         	ldr	r3, [r3]
  314370: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x3144a0 <EffectsManager::init()+0x744>
  314372: 58a2         	ldr	r2, [r4, r2]
  314374: 6812         	ldr	r2, [r2]
  314376: 4610         	mov	r0, r2
  314378: 9909         	ldr	r1, [sp, #0x24]
  31437a: 2204         	movs	r2, #0x4
  31437c: 4798         	blx	r3
  31437e: 9b07         	ldr	r3, [sp, #0x1c]
  314380: 3301         	adds	r3, #0x1
  314382: 9307         	str	r3, [sp, #0x1c]
  314384: 9b03         	ldr	r3, [sp, #0xc]
  314386: f8d3 211c    	ldr.w	r2, [r3, #0x11c]
  31438a: 9b07         	ldr	r3, [sp, #0x1c]
  31438c: 429a         	cmp	r2, r3
  31438e: dcd5         	bgt	0x31433c <EffectsManager::init()+0x5e0> @ imm = #-0x56
  314390: f285 fcd0    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2859a0
  314394: 4602         	mov	r2, r0
  314396: 9b03         	ldr	r3, [sp, #0xc]
  314398: f8c3 2100    	str.w	r2, [r3, #0x100]
  31439c: f285 fcca    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x285994
  3143a0: 4602         	mov	r2, r0
  3143a2: 9b03         	ldr	r3, [sp, #0xc]
  3143a4: f8c3 2104    	str.w	r2, [r3, #0x104]
  3143a8: f285 fcc4    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x285988
  3143ac: 4602         	mov	r2, r0
  3143ae: 9b03         	ldr	r3, [sp, #0xc]
  3143b0: f8c3 2108    	str.w	r2, [r3, #0x108]
  3143b4: f285 fcbe    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x28597c
  3143b8: 4602         	mov	r2, r0
  3143ba: 9b03         	ldr	r3, [sp, #0xc]
  3143bc: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3143c0: f285 fcb8    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x285970
  3143c4: 4602         	mov	r2, r0
  3143c6: 9b03         	ldr	r3, [sp, #0xc]
  3143c8: f8c3 2110    	str.w	r2, [r3, #0x110]
  3143cc: 9b03         	ldr	r3, [sp, #0xc]
  3143ce: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3143d2: 4618         	mov	r0, r3
  3143d4: f283 fd88    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283b10
  3143d8: 9b03         	ldr	r3, [sp, #0xc]
  3143da: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3143de: 4618         	mov	r0, r3
  3143e0: f283 fd82    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283b04
  3143e4: 9b03         	ldr	r3, [sp, #0xc]
  3143e6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3143ea: 4618         	mov	r0, r3
  3143ec: f283 fd7c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283af8
  3143f0: 9b03         	ldr	r3, [sp, #0xc]
  3143f2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3143f6: 4618         	mov	r0, r3
  3143f8: f283 fd76    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283aec
  3143fc: 9b03         	ldr	r3, [sp, #0xc]
  3143fe: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  314402: 4618         	mov	r0, r3
  314404: f283 fd70    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283ae0
  314408: 9b03         	ldr	r3, [sp, #0xc]
  31440a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31440e: 4618         	mov	r0, r3
  314410: f283 fd6a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x283ad4
  314414: 9b03         	ldr	r3, [sp, #0xc]
  314416: 2201         	movs	r2, #0x1
  314418: f883 2138    	strb.w	r2, [r3, #0x138]
  31441c: 2301         	movs	r3, #0x1
  31441e: e009         	b	0x314434 <EffectsManager::init()+0x6d8> @ imm = #0x12
  314420: 4628         	mov	r0, r5
  314422: f073 f63f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x473c7e
  314426: f073 f641    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x473c82
  31442a: 4628         	mov	r0, r5
  31442c: f073 f63a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x473c74
  314430: f073 f63c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x473c78
  314434: 4618         	mov	r0, r3
  314436: b024         	add	sp, #0x90
  314438: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x314439); words below are literal-pool data ---
  31443a: bf00         	nop
  31443c: eca2 0061    	stc	p0, c0, [r2], #388
  314440: d9cc         	bls	0x3143dc <EffectsManager::init()+0x680> @ imm = #-0x68
  314442: ffff 2ccc    	<unknown>
  314446: 004b         	lsls	r3, r1, #0x1
  314448: d9d0         	bls	0x3143ec <EffectsManager::init()+0x690> @ imm = #-0x60
  31444a: ffff 2ca8    	<unknown>
  31444e: 004b         	lsls	r3, r1, #0x1
  314450: d9d4         	bls	0x3143fc <EffectsManager::init()+0x6a0> @ imm = #-0x58
  314452: ffff 2c84    	<unknown>
  314456: 004b         	lsls	r3, r1, #0x1
  314458: d9d8         	bls	0x31440c <EffectsManager::init()+0x6b0> @ imm = #-0x50
  31445a: ffff 2c64    	vdup.8	q9, d20[7]
  31445e: 004b         	lsls	r3, r1, #0x1
  314460: d9dc         	bls	0x31441c <EffectsManager::init()+0x6c0> @ imm = #-0x48
  314462: ffff 2c44    	vdup.8	q9, d4[7]
  314466: 004b         	lsls	r3, r1, #0x1
  314468: d9e0         	bls	0x31442c <EffectsManager::init()+0x6d0> @ imm = #-0x40
  31446a: ffff 2c2c    	vdup.8	d18, d28[7]
  31446e: 004b         	lsls	r3, r1, #0x1
  314470: d9e4         	bls	0x31443c <EffectsManager::init()+0x6e0> @ imm = #-0x38
  314472: ffff 2c0c    	vdup.8	d18, d12[7]
  314476: 004b         	lsls	r3, r1, #0x1
  314478: d9e8         	bls	0x31444c <EffectsManager::init()+0x6f0> @ imm = #-0x30
  31447a: ffff 2bec    	vtbx.8	d18, {d31, fpinst2, mvfr0, mvfr1}, d28
  31447e: 004b         	lsls	r3, r1, #0x1
  314480: 2bcc         	cmp	r3, #0xcc
  314482: 004b         	lsls	r3, r1, #0x1
  314484: d9ec         	bls	0x314460 <EffectsManager::init()+0x704> @ imm = #-0x28
  314486: ffff 2bb0    	<unknown>
  31448a: 004b         	lsls	r3, r1, #0x1
  31448c: d9f0         	bls	0x314470 <EffectsManager::init()+0x714> @ imm = #-0x20
  31448e: ffff 2b94    	<unknown>
  314492: 004b         	lsls	r3, r1, #0x1
  314494: d9f4         	bls	0x314480 <EffectsManager::init()+0x724> @ imm = #-0x18
  314496: ffff 2b74    	<unknown>
  31449a: 004b         	lsls	r3, r1, #0x1
  31449c: 2afe         	cmp	r2, #0xfe
  31449e: 004b         	lsls	r3, r1, #0x1
  3144a0: d744         	bvc	0x31452c <EffectsManager::~EffectsManager()+0x78> @ imm = #0x88
  3144a2: ffff 2a76    	<unknown>
  3144a6: 004b         	lsls	r3, r1, #0x1
  3144a8: 29c6         	cmp	r1, #0xc6
  3144aa: 004b         	lsls	r3, r1, #0x1
  3144ac: 293c         	cmp	r1, #0x3c
  3144ae: 004b         	lsls	r3, r1, #0x1
  3144b0: 28b2         	cmp	r0, #0xb2
  3144b2: 004b         	lsls	r3, r1, #0x1

// ==== EffectsManager::~EffectsManager
//      file offset 0x3144b4 (= ELF address; Ghidra 0x3244b4), 276 bytes, Thumb-2
  3144b4: b500         	push	{lr}
  3144b6: b083         	sub	sp, #0xc
  3144b8: 9001         	str	r0, [sp, #0x4]
  3144ba: 4941         	ldr	r1, [pc, #0x104]        @ 0x3145c0 <EffectsManager::~EffectsManager()+0x10c>
  3144bc: 4479         	add	r1, pc
  3144be: 9b01         	ldr	r3, [sp, #0x4]
  3144c0: 4a40         	ldr	r2, [pc, #0x100]        @ 0x3145c4 <EffectsManager::~EffectsManager()+0x110>
  3144c2: 588a         	ldr	r2, [r1, r2]
  3144c4: 3208         	adds	r2, #0x8
  3144c6: 601a         	str	r2, [r3]
  3144c8: f2cc f8f2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cc1e4
  3144cc: 4602         	mov	r2, r0
  3144ce: 9b01         	ldr	r3, [sp, #0x4]
  3144d0: 4610         	mov	r0, r2
  3144d2: 4619         	mov	r1, r3
  3144d4: f2cc fa24    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2cc448
  3144d8: 9b01         	ldr	r3, [sp, #0x4]
  3144da: 4618         	mov	r0, r3
  3144dc: f27c f8a6    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x27c14c
  3144e0: 9b01         	ldr	r3, [sp, #0x4]
  3144e2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3144e6: 4618         	mov	r0, r3
  3144e8: f283 fce6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2839cc
  3144ec: 9b01         	ldr	r3, [sp, #0x4]
  3144ee: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3144f2: 4618         	mov	r0, r3
  3144f4: f283 fce0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2839c0
  3144f8: 9b01         	ldr	r3, [sp, #0x4]
  3144fa: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3144fe: 4618         	mov	r0, r3
  314500: f285 ff30    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e60
  314504: 9b01         	ldr	r3, [sp, #0x4]
  314506: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  31450a: 4618         	mov	r0, r3
  31450c: f285 ff2a    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e54
  314510: 9b01         	ldr	r3, [sp, #0x4]
  314512: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  314516: 4618         	mov	r0, r3
  314518: f285 ff24    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e48
  31451c: 9b01         	ldr	r3, [sp, #0x4]
  31451e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  314522: 4618         	mov	r0, r3
  314524: f285 ff1e    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e3c
  314528: 9b01         	ldr	r3, [sp, #0x4]
  31452a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  31452e: 4618         	mov	r0, r3
  314530: f285 ff18    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e30
  314534: 9b01         	ldr	r3, [sp, #0x4]
  314536: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  31453a: 4618         	mov	r0, r3
  31453c: f285 ff12    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e24
  314540: 9b01         	ldr	r3, [sp, #0x4]
  314542: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314546: 4618         	mov	r0, r3
  314548: f285 ff0c    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285e18
  31454c: 9b01         	ldr	r3, [sp, #0x4]
  31454e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  314552: 4618         	mov	r0, r3
  314554: f283 fcb0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x283960
  314558: 9b01         	ldr	r3, [sp, #0x4]
  31455a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  31455e: 4618         	mov	r0, r3
  314560: f283 fcaa    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x283954
  314564: 9b01         	ldr	r3, [sp, #0x4]
  314566: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  31456a: 4618         	mov	r0, r3
  31456c: f283 fca4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x283948
  314570: 9b01         	ldr	r3, [sp, #0x4]
  314572: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  314576: 4618         	mov	r0, r3
  314578: f283 fc9e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28393c
  31457c: 9b01         	ldr	r3, [sp, #0x4]
  31457e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  314582: 4618         	mov	r0, r3
  314584: f283 fc98    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x283930
  314588: 9b01         	ldr	r3, [sp, #0x4]
  31458a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  31458e: 4618         	mov	r0, r3
  314590: f283 fc92    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x283924
  314594: 9b01         	ldr	r3, [sp, #0x4]
  314596: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31459a: 4618         	mov	r0, r3
  31459c: f283 fc8c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x283918
  3145a0: 9b01         	ldr	r3, [sp, #0x4]
  3145a2: 4618         	mov	r0, r3
  3145a4: f27b f94e    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x27b29c
  3145a8: 2300         	movs	r3, #0x0
  3145aa: 2b00         	cmp	r3, #0x0
  3145ac: d002         	beq	0x3145b4 <EffectsManager::~EffectsManager()+0x100> @ imm = #0x4
  3145ae: 9801         	ldr	r0, [sp, #0x4]
  3145b0: f073 f578    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x473af0
  3145b4: 9b01         	ldr	r3, [sp, #0x4]
  3145b6: 4618         	mov	r0, r3
  3145b8: b003         	add	sp, #0xc
  3145ba: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3145bd); words below are literal-pool data ---
  3145be: bf00         	nop
  3145c0: e54c         	b	0x31405c <EffectsManager::init()+0x300> @ imm = #-0x568
  3145c2: 0061         	lsls	r1, r4, #0x1
  3145c4: d9c8         	bls	0x314558 <EffectsManager::~EffectsManager()+0xa4> @ imm = #-0x70
  3145c6: ffff b500    	<unknown>

// ==== EffectsManager::~EffectsManager
//      file offset 0x3145c8 (= ELF address; Ghidra 0x3245c8), 28 bytes, Thumb-2
  3145c8: b500         	push	{lr}
  3145ca: b083         	sub	sp, #0xc
  3145cc: 9001         	str	r0, [sp, #0x4]
  3145ce: 9801         	ldr	r0, [sp, #0x4]
  3145d0: f7ff ff70    	bl	0x3144b4 <EffectsManager::~EffectsManager()> @ imm = #-0x120
  3145d4: 9801         	ldr	r0, [sp, #0x4]
  3145d6: f073 f565    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x473aca
  3145da: 9b01         	ldr	r3, [sp, #0x4]
  3145dc: 4618         	mov	r0, r3
  3145de: b003         	add	sp, #0xc
  3145e0: f85d fb04    	ldr	pc, [sp], #4

// ==== EffectsManager::updateStep
//      file offset 0x3145e8 (= ELF address; Ghidra 0x3245e8), 1764 bytes, Thumb-2
  3145e8: b530         	push	{r4, r5, lr}
  3145ea: ed2d 8b02    	vpush	{d8}
  3145ee: b0a3         	sub	sp, #0x8c
  3145f0: 9005         	str	r0, [sp, #0x14]
  3145f2: 9104         	str	r1, [sp, #0x10]
  3145f4: 4cb2         	ldr	r4, [pc, #0x2c8]        @ 0x3148c0 <EffectsManager::updateStep(float)+0x2d8>
  3145f6: 447c         	add	r4, pc
  3145f8: 9b05         	ldr	r3, [sp, #0x14]
  3145fa: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3145fe: 681b         	ldr	r3, [r3]
  314600: 3390         	adds	r3, #0x90
  314602: 681b         	ldr	r3, [r3]
  314604: 9a05         	ldr	r2, [sp, #0x14]
  314606: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31460a: 4610         	mov	r0, r2
  31460c: 2100         	movs	r1, #0x0
  31460e: 4798         	blx	r3
  314610: 9b05         	ldr	r3, [sp, #0x14]
  314612: ed93 7a45    	vldr	s14, [r3, #276]
  314616: eddd 7a04    	vldr	s15, [sp, #16]
  31461a: ee77 7a27    	vadd.f32	s15, s14, s15
  31461e: 9b05         	ldr	r3, [sp, #0x14]
  314620: edc3 7a45    	vstr	s15, [r3, #276]
  314624: 9b05         	ldr	r3, [sp, #0x14]
  314626: edd3 7a45    	vldr	s15, [r3, #276]
  31462a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31462e: ed9f 7ba2    	vldr	d7, [pc, #648]          @ 0x3148b8 <EffectsManager::updateStep(float)+0x2d0>
  314632: eeb4 6bc7    	vcmpe.f64	d6, d7
  314636: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31463a: dd0b         	ble	0x314654 <EffectsManager::updateStep(float)+0x6c> @ imm = #0x16
  31463c: 9b05         	ldr	r3, [sp, #0x14]
  31463e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  314642: 681b         	ldr	r3, [r3]
  314644: 3390         	adds	r3, #0x90
  314646: 681b         	ldr	r3, [r3]
  314648: 9a05         	ldr	r2, [sp, #0x14]
  31464a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31464e: 4610         	mov	r0, r2
  314650: 2100         	movs	r1, #0x0
  314652: 4798         	blx	r3
  314654: 2300         	movs	r3, #0x0
  314656: 9307         	str	r3, [sp, #0x1c]
  314658: e010         	b	0x31467c <EffectsManager::updateStep(float)+0x94> @ imm = #0x20
  31465a: 9b05         	ldr	r3, [sp, #0x14]
  31465c: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  314660: 9b07         	ldr	r3, [sp, #0x1c]
  314662: 4610         	mov	r0, r2
  314664: 4619         	mov	r1, r3
  314666: f285 fd5b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285ab6
  31466a: 4603         	mov	r3, r0
  31466c: 9312         	str	r3, [sp, #0x48]
  31466e: 9812         	ldr	r0, [sp, #0x48]
  314670: 9904         	ldr	r1, [sp, #0x10]
  314672: f009 f8c1    	bl	0x31d7f8 <Explosion::updateStep(float)> @ imm = #0x9182
  314676: 9b07         	ldr	r3, [sp, #0x1c]
  314678: 3301         	adds	r3, #0x1
  31467a: 9307         	str	r3, [sp, #0x1c]
  31467c: 9d07         	ldr	r5, [sp, #0x1c]
  31467e: 9b05         	ldr	r3, [sp, #0x14]
  314680: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  314684: 4618         	mov	r0, r3
  314686: f285 fd2b    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285a56
  31468a: 4603         	mov	r3, r0
  31468c: 429d         	cmp	r5, r3
  31468e: bf2c         	ite	hs
  314690: 2300         	movhs	r3, #0x0
  314692: 2301         	movlo	r3, #0x1
  314694: b2db         	uxtb	r3, r3
  314696: 2b00         	cmp	r3, #0x0
  314698: d1df         	bne	0x31465a <EffectsManager::updateStep(float)+0x72> @ imm = #-0x42
  31469a: 2300         	movs	r3, #0x0
  31469c: 9308         	str	r3, [sp, #0x20]
  31469e: e02c         	b	0x3146fa <EffectsManager::updateStep(float)+0x112> @ imm = #0x58
  3146a0: 9b05         	ldr	r3, [sp, #0x14]
  3146a2: f8d3 2100    	ldr.w	r2, [r3, #0x100]
  3146a6: 9b08         	ldr	r3, [sp, #0x20]
  3146a8: 4610         	mov	r0, r2
  3146aa: 4619         	mov	r1, r3
  3146ac: f285 fd38    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285a70
  3146b0: 4603         	mov	r3, r0
  3146b2: 9313         	str	r3, [sp, #0x4c]
  3146b4: 9813         	ldr	r0, [sp, #0x4c]
  3146b6: 9904         	ldr	r1, [sp, #0x10]
  3146b8: f024 fafe    	bl	0x338cb8 <GasCloud::updateStep(float)> @ imm = #0x245fc
  3146bc: 9b13         	ldr	r3, [sp, #0x4c]
  3146be: f893 30f9    	ldrb.w	r3, [r3, #0xf9]
  3146c2: f083 0301    	eor	r3, r3, #0x1
  3146c6: b2db         	uxtb	r3, r3
  3146c8: 2b00         	cmp	r3, #0x0
  3146ca: d013         	beq	0x3146f4 <EffectsManager::updateStep(float)+0x10c> @ imm = #0x26
  3146cc: 9b05         	ldr	r3, [sp, #0x14]
  3146ce: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3146d2: 4618         	mov	r0, r3
  3146d4: 9913         	ldr	r1, [sp, #0x4c]
  3146d6: f285 fdc9    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x285b92
  3146da: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x3148c4 <EffectsManager::updateStep(float)+0x2dc>
  3146dc: 58e3         	ldr	r3, [r4, r3]
  3146de: 681b         	ldr	r3, [r3]
  3146e0: 681b         	ldr	r3, [r3]
  3146e2: 33f4         	adds	r3, #0xf4
  3146e4: 681b         	ldr	r3, [r3]
  3146e6: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x3148c4 <EffectsManager::updateStep(float)+0x2dc>
  3146e8: 58a2         	ldr	r2, [r4, r2]
  3146ea: 6812         	ldr	r2, [r2]
  3146ec: 4610         	mov	r0, r2
  3146ee: 9913         	ldr	r1, [sp, #0x4c]
  3146f0: 2200         	movs	r2, #0x0
  3146f2: 4798         	blx	r3
  3146f4: 9b08         	ldr	r3, [sp, #0x20]
  3146f6: 3301         	adds	r3, #0x1
  3146f8: 9308         	str	r3, [sp, #0x20]
  3146fa: 9d08         	ldr	r5, [sp, #0x20]
  3146fc: 9b05         	ldr	r3, [sp, #0x14]
  3146fe: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  314702: 4618         	mov	r0, r3
  314704: f285 fcec    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2859d8
  314708: 4603         	mov	r3, r0
  31470a: 429d         	cmp	r5, r3
  31470c: bf2c         	ite	hs
  31470e: 2300         	movhs	r3, #0x0
  314710: 2301         	movlo	r3, #0x1
  314712: b2db         	uxtb	r3, r3
  314714: 2b00         	cmp	r3, #0x0
  314716: d1c3         	bne	0x3146a0 <EffectsManager::updateStep(float)+0xb8> @ imm = #-0x7a
  314718: 2300         	movs	r3, #0x0
  31471a: 9309         	str	r3, [sp, #0x24]
  31471c: e014         	b	0x314748 <EffectsManager::updateStep(float)+0x160> @ imm = #0x28
  31471e: 9b05         	ldr	r3, [sp, #0x14]
  314720: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  314724: 9b09         	ldr	r3, [sp, #0x24]
  314726: 4610         	mov	r0, r2
  314728: 4619         	mov	r1, r3
  31472a: f285 fcf9    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2859f2
  31472e: 4603         	mov	r3, r0
  314730: 9314         	str	r3, [sp, #0x50]
  314732: 9b05         	ldr	r3, [sp, #0x14]
  314734: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  314738: 4618         	mov	r0, r3
  31473a: 9914         	ldr	r1, [sp, #0x50]
  31473c: 2201         	movs	r2, #0x1
  31473e: f285 fdd9    	bl	0x59a2f4 <cocos2d::CCArray::removeObject(cocos2d::CCObject*, bool)> @ imm = #0x285bb2
  314742: 9b09         	ldr	r3, [sp, #0x24]
  314744: 3301         	adds	r3, #0x1
  314746: 9309         	str	r3, [sp, #0x24]
  314748: 9d09         	ldr	r5, [sp, #0x24]
  31474a: 9b05         	ldr	r3, [sp, #0x14]
  31474c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314750: 4618         	mov	r0, r3
  314752: f285 fcc5    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x28598a
  314756: 4603         	mov	r3, r0
  314758: 429d         	cmp	r5, r3
  31475a: bf2c         	ite	hs
  31475c: 2300         	movhs	r3, #0x0
  31475e: 2301         	movlo	r3, #0x1
  314760: b2db         	uxtb	r3, r3
  314762: 2b00         	cmp	r3, #0x0
  314764: d1db         	bne	0x31471e <EffectsManager::updateStep(float)+0x136> @ imm = #-0x4a
  314766: 9b05         	ldr	r3, [sp, #0x14]
  314768: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31476c: 4618         	mov	r0, r3
  31476e: f285 fdf9    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285bf2
  314772: 2300         	movs	r3, #0x0
  314774: 930a         	str	r3, [sp, #0x28]
  314776: e02c         	b	0x3147d2 <EffectsManager::updateStep(float)+0x1ea> @ imm = #0x58
  314778: 9b05         	ldr	r3, [sp, #0x14]
  31477a: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  31477e: 9b0a         	ldr	r3, [sp, #0x28]
  314780: 4610         	mov	r0, r2
  314782: 4619         	mov	r1, r3
  314784: f285 fccc    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285998
  314788: 4603         	mov	r3, r0
  31478a: 9315         	str	r3, [sp, #0x54]
  31478c: 9815         	ldr	r0, [sp, #0x54]
  31478e: 9904         	ldr	r1, [sp, #0x10]
  314790: f0a1 fc3a    	bl	0x3b6008 <ProxyMine::updateStep(float)> @ imm = #0xa1874
  314794: 9b15         	ldr	r3, [sp, #0x54]
  314796: f893 3134    	ldrb.w	r3, [r3, #0x134]
  31479a: f083 0301    	eor	r3, r3, #0x1
  31479e: b2db         	uxtb	r3, r3
  3147a0: 2b00         	cmp	r3, #0x0
  3147a2: d013         	beq	0x3147cc <EffectsManager::updateStep(float)+0x1e4> @ imm = #0x26
  3147a4: 9b05         	ldr	r3, [sp, #0x14]
  3147a6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3147aa: 4618         	mov	r0, r3
  3147ac: 9915         	ldr	r1, [sp, #0x54]
  3147ae: f285 fd5d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x285aba
  3147b2: 4b44         	ldr	r3, [pc, #0x110]        @ 0x3148c4 <EffectsManager::updateStep(float)+0x2dc>
  3147b4: 58e3         	ldr	r3, [r4, r3]
  3147b6: 681b         	ldr	r3, [r3]
  3147b8: 681b         	ldr	r3, [r3]
  3147ba: 33f4         	adds	r3, #0xf4
  3147bc: 681b         	ldr	r3, [r3]
  3147be: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3148c4 <EffectsManager::updateStep(float)+0x2dc>
  3147c0: 58a2         	ldr	r2, [r4, r2]
  3147c2: 6812         	ldr	r2, [r2]
  3147c4: 4610         	mov	r0, r2
  3147c6: 9915         	ldr	r1, [sp, #0x54]
  3147c8: 2200         	movs	r2, #0x0
  3147ca: 4798         	blx	r3
  3147cc: 9b0a         	ldr	r3, [sp, #0x28]
  3147ce: 3301         	adds	r3, #0x1
  3147d0: 930a         	str	r3, [sp, #0x28]
  3147d2: 9d0a         	ldr	r5, [sp, #0x28]
  3147d4: 9b05         	ldr	r3, [sp, #0x14]
  3147d6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3147da: 4618         	mov	r0, r3
  3147dc: f285 fc80    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285900
  3147e0: 4603         	mov	r3, r0
  3147e2: 429d         	cmp	r5, r3
  3147e4: bf2c         	ite	hs
  3147e6: 2300         	movhs	r3, #0x0
  3147e8: 2301         	movlo	r3, #0x1
  3147ea: b2db         	uxtb	r3, r3
  3147ec: 2b00         	cmp	r3, #0x0
  3147ee: d1c3         	bne	0x314778 <EffectsManager::updateStep(float)+0x190> @ imm = #-0x7a
  3147f0: 2300         	movs	r3, #0x0
  3147f2: 930b         	str	r3, [sp, #0x2c]
  3147f4: e014         	b	0x314820 <EffectsManager::updateStep(float)+0x238> @ imm = #0x28
  3147f6: 9b05         	ldr	r3, [sp, #0x14]
  3147f8: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  3147fc: 9b0b         	ldr	r3, [sp, #0x2c]
  3147fe: 4610         	mov	r0, r2
  314800: 4619         	mov	r1, r3
  314802: f285 fc8d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x28591a
  314806: 4603         	mov	r3, r0
  314808: 9316         	str	r3, [sp, #0x58]
  31480a: 9b05         	ldr	r3, [sp, #0x14]
  31480c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  314810: 4618         	mov	r0, r3
  314812: 9916         	ldr	r1, [sp, #0x58]
  314814: 2201         	movs	r2, #0x1
  314816: f285 fd6d    	bl	0x59a2f4 <cocos2d::CCArray::removeObject(cocos2d::CCObject*, bool)> @ imm = #0x285ada
  31481a: 9b0b         	ldr	r3, [sp, #0x2c]
  31481c: 3301         	adds	r3, #0x1
  31481e: 930b         	str	r3, [sp, #0x2c]
  314820: 9d0b         	ldr	r5, [sp, #0x2c]
  314822: 9b05         	ldr	r3, [sp, #0x14]
  314824: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314828: 4618         	mov	r0, r3
  31482a: f285 fc59    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2858b2
  31482e: 4603         	mov	r3, r0
  314830: 429d         	cmp	r5, r3
  314832: bf2c         	ite	hs
  314834: 2300         	movhs	r3, #0x0
  314836: 2301         	movlo	r3, #0x1
  314838: b2db         	uxtb	r3, r3
  31483a: 2b00         	cmp	r3, #0x0
  31483c: d1db         	bne	0x3147f6 <EffectsManager::updateStep(float)+0x20e> @ imm = #-0x4a
  31483e: 9b05         	ldr	r3, [sp, #0x14]
  314840: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314844: 4618         	mov	r0, r3
  314846: f285 fd8d    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285b1a
  31484a: 2300         	movs	r3, #0x0
  31484c: 930c         	str	r3, [sp, #0x30]
  31484e: e01f         	b	0x314890 <EffectsManager::updateStep(float)+0x2a8> @ imm = #0x3e
  314850: 9b05         	ldr	r3, [sp, #0x14]
  314852: f8d3 2108    	ldr.w	r2, [r3, #0x108]
  314856: 9b0c         	ldr	r3, [sp, #0x30]
  314858: 4610         	mov	r0, r2
  31485a: 4619         	mov	r1, r3
  31485c: f285 fc60    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2858c0
  314860: 4603         	mov	r3, r0
  314862: 9317         	str	r3, [sp, #0x5c]
  314864: 9817         	ldr	r0, [sp, #0x5c]
  314866: 9904         	ldr	r1, [sp, #0x10]
  314868: f07f fff6    	bl	0x394858 <PlasmaEnergy::updateStep(float)> @ imm = #0x7ffec
  31486c: 9b17         	ldr	r3, [sp, #0x5c]
  31486e: f893 30e8    	ldrb.w	r3, [r3, #0xe8]
  314872: f083 0301    	eor	r3, r3, #0x1
  314876: b2db         	uxtb	r3, r3
  314878: 2b00         	cmp	r3, #0x0
  31487a: d006         	beq	0x31488a <EffectsManager::updateStep(float)+0x2a2> @ imm = #0xc
  31487c: 9b05         	ldr	r3, [sp, #0x14]
  31487e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314882: 4618         	mov	r0, r3
  314884: 9917         	ldr	r1, [sp, #0x5c]
  314886: f285 fcf1    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2859e2
  31488a: 9b0c         	ldr	r3, [sp, #0x30]
  31488c: 3301         	adds	r3, #0x1
  31488e: 930c         	str	r3, [sp, #0x30]
  314890: 9d0c         	ldr	r5, [sp, #0x30]
  314892: 9b05         	ldr	r3, [sp, #0x14]
  314894: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  314898: 4618         	mov	r0, r3
  31489a: f285 fc21    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285842
  31489e: 4603         	mov	r3, r0
  3148a0: 429d         	cmp	r5, r3
  3148a2: bf2c         	ite	hs
  3148a4: 2300         	movhs	r3, #0x0
  3148a6: 2301         	movlo	r3, #0x1
  3148a8: b2db         	uxtb	r3, r3
  3148aa: 2b00         	cmp	r3, #0x0
  3148ac: d1d0         	bne	0x314850 <EffectsManager::updateStep(float)+0x268> @ imm = #-0x60
  3148ae: 2300         	movs	r3, #0x0
  3148b0: 930d         	str	r3, [sp, #0x34]
  3148b2: e024         	b	0x3148fe <EffectsManager::updateStep(float)+0x316> @ imm = #0x48
  3148b4: f3af 8000    	nop.w
  3148b8: 999a         	ldr	r1, [sp, #0x268]
  3148ba: 9999         	ldr	r1, [sp, #0x264]
  3148bc: 9999         	ldr	r1, [sp, #0x264]
  3148be: 3fa9         	subs	r7, #0xa9
  3148c0: e412         	b	0x3140e8 <EffectsManager::init()+0x38c> @ imm = #-0x7dc
  3148c2: 0061         	lsls	r1, r4, #0x1
  3148c4: d744         	bvc	0x314950 <EffectsManager::updateStep(float)+0x368> @ imm = #0x88
  3148c6: ffff 9b05    	vtbl.8	d25, {d15, d16, d17, d18}, d5
  3148ca: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  3148ce: 9b0d         	ldr	r3, [sp, #0x34]
  3148d0: 4610         	mov	r0, r2
  3148d2: 4619         	mov	r1, r3
  3148d4: f285 fc24    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285848
  3148d8: 4603         	mov	r3, r0
  3148da: 9318         	str	r3, [sp, #0x60]
  3148dc: 9b18         	ldr	r3, [sp, #0x60]
  3148de: 681b         	ldr	r3, [r3]
  3148e0: 33e8         	adds	r3, #0xe8
  3148e2: 681b         	ldr	r3, [r3]
  3148e4: 9818         	ldr	r0, [sp, #0x60]
  3148e6: 4798         	blx	r3
  3148e8: 9b05         	ldr	r3, [sp, #0x14]
  3148ea: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3148ee: 4618         	mov	r0, r3
  3148f0: 9918         	ldr	r1, [sp, #0x60]
  3148f2: 2201         	movs	r2, #0x1
  3148f4: f285 fcfe    	bl	0x59a2f4 <cocos2d::CCArray::removeObject(cocos2d::CCObject*, bool)> @ imm = #0x2859fc
  3148f8: 9b0d         	ldr	r3, [sp, #0x34]
  3148fa: 3301         	adds	r3, #0x1
  3148fc: 930d         	str	r3, [sp, #0x34]
  3148fe: 9d0d         	ldr	r5, [sp, #0x34]
  314900: 9b05         	ldr	r3, [sp, #0x14]
  314902: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314906: 4618         	mov	r0, r3
  314908: f285 fbea    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2857d4
  31490c: 4603         	mov	r3, r0
  31490e: 429d         	cmp	r5, r3
  314910: bf2c         	ite	hs
  314912: 2300         	movhs	r3, #0x0
  314914: 2301         	movlo	r3, #0x1
  314916: b2db         	uxtb	r3, r3
  314918: 2b00         	cmp	r3, #0x0
  31491a: d1d5         	bne	0x3148c8 <EffectsManager::updateStep(float)+0x2e0> @ imm = #-0x56
  31491c: 9b05         	ldr	r3, [sp, #0x14]
  31491e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314922: 4618         	mov	r0, r3
  314924: f285 fd1e    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285a3c
  314928: 2300         	movs	r3, #0x0
  31492a: 930e         	str	r3, [sp, #0x38]
  31492c: e097         	b	0x314a5e <EffectsManager::updateStep(float)+0x476> @ imm = #0x12e
  31492e: 9b05         	ldr	r3, [sp, #0x14]
  314930: f8d3 2104    	ldr.w	r2, [r3, #0x104]
  314934: 9b0e         	ldr	r3, [sp, #0x38]
  314936: 4610         	mov	r0, r2
  314938: 4619         	mov	r1, r3
  31493a: f285 fbf1    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2857e2
  31493e: 4603         	mov	r3, r0
  314940: 9319         	str	r3, [sp, #0x64]
  314942: 9819         	ldr	r0, [sp, #0x64]
  314944: 9904         	ldr	r1, [sp, #0x10]
  314946: f07e fc0f    	bl	0x393168 <PlasmaBall::updateStep(float)> @ imm = #0x7e81e
  31494a: 9b19         	ldr	r3, [sp, #0x64]
  31494c: f893 3148    	ldrb.w	r3, [r3, #0x148]
  314950: f083 0301    	eor	r3, r3, #0x1
  314954: b2db         	uxtb	r3, r3
  314956: 2b00         	cmp	r3, #0x0
  314958: d007         	beq	0x31496a <EffectsManager::updateStep(float)+0x382> @ imm = #0xe
  31495a: 9b05         	ldr	r3, [sp, #0x14]
  31495c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314960: 4618         	mov	r0, r3
  314962: 9919         	ldr	r1, [sp, #0x64]
  314964: f285 fc82    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x285904
  314968: e076         	b	0x314a58 <EffectsManager::updateStep(float)+0x470> @ imm = #0xec
  31496a: 2300         	movs	r3, #0x0
  31496c: 930f         	str	r3, [sp, #0x3c]
  31496e: e064         	b	0x314a3a <EffectsManager::updateStep(float)+0x452> @ imm = #0xc8
  314970: 9b05         	ldr	r3, [sp, #0x14]
  314972: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  314976: 9b0f         	ldr	r3, [sp, #0x3c]
  314978: 4610         	mov	r0, r2
  31497a: 4619         	mov	r1, r3
  31497c: f285 fbd0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2857a0
  314980: 4603         	mov	r3, r0
  314982: 931a         	str	r3, [sp, #0x68]
  314984: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x314cc8 <EffectsManager::updateStep(float)+0x6e0>
  314986: 58e3         	ldr	r3, [r4, r3]
  314988: 681b         	ldr	r3, [r3]
  31498a: 681b         	ldr	r3, [r3]
  31498c: f503 73e0    	add.w	r3, r3, #0x1c0
  314990: 681b         	ldr	r3, [r3]
  314992: 4acd         	ldr	r2, [pc, #0x334]        @ 0x314cc8 <EffectsManager::updateStep(float)+0x6e0>
  314994: 58a2         	ldr	r2, [r4, r2]
  314996: 6812         	ldr	r2, [r2]
  314998: a91e         	add	r1, sp, #0x78
  31499a: 4608         	mov	r0, r1
  31499c: 4611         	mov	r1, r2
  31499e: 4798         	blx	r3
  3149a0: 9b1a         	ldr	r3, [sp, #0x68]
  3149a2: 33e8         	adds	r3, #0xe8
  3149a4: aa1e         	add	r2, sp, #0x78
  3149a6: 4610         	mov	r0, r2
  3149a8: 4619         	mov	r1, r3
  3149aa: f0a0 f667    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x4a0cce
  3149ae: 4603         	mov	r3, r0
  3149b0: 2b00         	cmp	r3, #0x0
  3149b2: bf14         	ite	ne
  3149b4: 2300         	movne	r3, #0x0
  3149b6: 2301         	moveq	r3, #0x1
  3149b8: b2dd         	uxtb	r5, r3
  3149ba: ab1e         	add	r3, sp, #0x78
  3149bc: 4618         	mov	r0, r3
  3149be: f0a0 f7a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0f52
  3149c2: 2d00         	cmp	r5, #0x0
  3149c4: d036         	beq	0x314a34 <EffectsManager::updateStep(float)+0x44c> @ imm = #0x6c
  3149c6: 9b1a         	ldr	r3, [sp, #0x68]
  3149c8: 681b         	ldr	r3, [r3]
  3149ca: 3350         	adds	r3, #0x50
  3149cc: 681b         	ldr	r3, [r3]
  3149ce: 9a1a         	ldr	r2, [sp, #0x68]
  3149d0: 4610         	mov	r0, r2
  3149d2: 4798         	blx	r3
  3149d4: 4603         	mov	r3, r0
  3149d6: edd3 7a00    	vldr	s15, [r3]
  3149da: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3149de: 9b1a         	ldr	r3, [sp, #0x68]
  3149e0: 681b         	ldr	r3, [r3]
  3149e2: 3350         	adds	r3, #0x50
  3149e4: 681b         	ldr	r3, [r3]
  3149e6: 9a1a         	ldr	r2, [sp, #0x68]
  3149e8: 4610         	mov	r0, r2
  3149ea: 4798         	blx	r3
  3149ec: 4603         	mov	r3, r0
  3149ee: edd3 7a01    	vldr	s15, [r3, #4]
  3149f2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3149f6: ab1e         	add	r3, sp, #0x78
  3149f8: 4618         	mov	r0, r3
  3149fa: eeb0 0b48    	vmov.f64	d0, d8
  3149fe: eeb0 1b47    	vmov.f64	d1, d7
  314a02: f7fe faad    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x1aa6
  314a06: 9819         	ldr	r0, [sp, #0x64]
  314a08: f07e fabe    	bl	0x392f88 <PlasmaBall::getRadius()> @ imm = #0x7e57c
  314a0c: 4603         	mov	r3, r0
  314a0e: 9302         	str	r3, [sp, #0x8]
  314a10: 466b         	mov	r3, sp
  314a12: aa20         	add	r2, sp, #0x80
  314a14: e892 0003    	ldm.w	r2, {r0, r1}
  314a18: e883 0003    	stm.w	r3, {r0, r1}
  314a1c: ab1e         	add	r3, sp, #0x78
  314a1e: cb0c         	ldm	r3, {r2, r3}
  314a20: 9819         	ldr	r0, [sp, #0x64]
  314a22: f07e fb55    	bl	0x3930d0 <PlasmaBall::checkCollision(cpVect, float)> @ imm = #0x7e6aa
  314a26: 4603         	mov	r3, r0
  314a28: 2b00         	cmp	r3, #0x0
  314a2a: d003         	beq	0x314a34 <EffectsManager::updateStep(float)+0x44c> @ imm = #0x6
  314a2c: 981a         	ldr	r0, [sp, #0x68]
  314a2e: 2100         	movs	r1, #0x0
  314a30: f0a1 fc2a    	bl	0x3b6288 <ProxyMine::removeMine(bool)> @ imm = #0xa1854
  314a34: 9b0f         	ldr	r3, [sp, #0x3c]
  314a36: 3301         	adds	r3, #0x1
  314a38: 930f         	str	r3, [sp, #0x3c]
  314a3a: 9d0f         	ldr	r5, [sp, #0x3c]
  314a3c: 9b05         	ldr	r3, [sp, #0x14]
  314a3e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  314a42: 4618         	mov	r0, r3
  314a44: f285 fb4c    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285698
  314a48: 4603         	mov	r3, r0
  314a4a: 429d         	cmp	r5, r3
  314a4c: bf2c         	ite	hs
  314a4e: 2300         	movhs	r3, #0x0
  314a50: 2301         	movlo	r3, #0x1
  314a52: b2db         	uxtb	r3, r3
  314a54: 2b00         	cmp	r3, #0x0
  314a56: d18b         	bne	0x314970 <EffectsManager::updateStep(float)+0x388> @ imm = #-0xea
  314a58: 9b0e         	ldr	r3, [sp, #0x38]
  314a5a: 3301         	adds	r3, #0x1
  314a5c: 930e         	str	r3, [sp, #0x38]
  314a5e: 9d0e         	ldr	r5, [sp, #0x38]
  314a60: 9b05         	ldr	r3, [sp, #0x14]
  314a62: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  314a66: 4618         	mov	r0, r3
  314a68: f285 fb3a    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285674
  314a6c: 4603         	mov	r3, r0
  314a6e: 429d         	cmp	r5, r3
  314a70: bf2c         	ite	hs
  314a72: 2300         	movhs	r3, #0x0
  314a74: 2301         	movlo	r3, #0x1
  314a76: b2db         	uxtb	r3, r3
  314a78: 2b00         	cmp	r3, #0x0
  314a7a: f47f af58    	bne.w	0x31492e <EffectsManager::updateStep(float)+0x346> @ imm = #-0x150
  314a7e: 2300         	movs	r3, #0x0
  314a80: 9310         	str	r3, [sp, #0x40]
  314a82: e01a         	b	0x314aba <EffectsManager::updateStep(float)+0x4d2> @ imm = #0x34
  314a84: 9b05         	ldr	r3, [sp, #0x14]
  314a86: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  314a8a: 9b10         	ldr	r3, [sp, #0x40]
  314a8c: 4610         	mov	r0, r2
  314a8e: 4619         	mov	r1, r3
  314a90: f285 fb46    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x28568c
  314a94: 4603         	mov	r3, r0
  314a96: 931b         	str	r3, [sp, #0x6c]
  314a98: 9b1b         	ldr	r3, [sp, #0x6c]
  314a9a: 681b         	ldr	r3, [r3]
  314a9c: 33e8         	adds	r3, #0xe8
  314a9e: 681b         	ldr	r3, [r3]
  314aa0: 981b         	ldr	r0, [sp, #0x6c]
  314aa2: 4798         	blx	r3
  314aa4: 9b05         	ldr	r3, [sp, #0x14]
  314aa6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  314aaa: 4618         	mov	r0, r3
  314aac: 991b         	ldr	r1, [sp, #0x6c]
  314aae: 2201         	movs	r2, #0x1
  314ab0: f285 fc20    	bl	0x59a2f4 <cocos2d::CCArray::removeObject(cocos2d::CCObject*, bool)> @ imm = #0x285840
  314ab4: 9b10         	ldr	r3, [sp, #0x40]
  314ab6: 3301         	adds	r3, #0x1
  314ab8: 9310         	str	r3, [sp, #0x40]
  314aba: 9c10         	ldr	r4, [sp, #0x40]
  314abc: 9b05         	ldr	r3, [sp, #0x14]
  314abe: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314ac2: 4618         	mov	r0, r3
  314ac4: f285 fb0c    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285618
  314ac8: 4603         	mov	r3, r0
  314aca: 429c         	cmp	r4, r3
  314acc: bf2c         	ite	hs
  314ace: 2300         	movhs	r3, #0x0
  314ad0: 2301         	movlo	r3, #0x1
  314ad2: b2db         	uxtb	r3, r3
  314ad4: 2b00         	cmp	r3, #0x0
  314ad6: d1d5         	bne	0x314a84 <EffectsManager::updateStep(float)+0x49c> @ imm = #-0x56
  314ad8: 9b05         	ldr	r3, [sp, #0x14]
  314ada: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  314ade: 4618         	mov	r0, r3
  314ae0: f285 fc40    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x285880
  314ae4: 2300         	movs	r3, #0x0
  314ae6: 9311         	str	r3, [sp, #0x44]
  314ae8: e074         	b	0x314bd4 <EffectsManager::updateStep(float)+0x5ec> @ imm = #0xe8
  314aea: 9b05         	ldr	r3, [sp, #0x14]
  314aec: f8d3 20f8    	ldr.w	r2, [r3, #0xf8]
  314af0: 9b11         	ldr	r3, [sp, #0x44]
  314af2: 4610         	mov	r0, r2
  314af4: 4619         	mov	r1, r3
  314af6: f285 fb13    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285626
  314afa: 4603         	mov	r3, r0
  314afc: 931c         	str	r3, [sp, #0x70]
  314afe: 981c         	ldr	r0, [sp, #0x70]
  314b00: 9904         	ldr	r1, [sp, #0x10]
  314b02: f082 f8dd    	bl	0x396cc0 <PlayerDeath::updateStep(float)> @ imm = #0x821ba
  314b06: 981c         	ldr	r0, [sp, #0x70]
  314b08: f082 f9a8    	bl	0x396e5c <PlayerDeath::isInWorld()> @ imm = #0x82350
  314b0c: 4603         	mov	r3, r0
  314b0e: 2b00         	cmp	r3, #0x0
  314b10: d007         	beq	0x314b22 <EffectsManager::updateStep(float)+0x53a> @ imm = #0xe
  314b12: 981c         	ldr	r0, [sp, #0x70]
  314b14: f7ff f8ea    	bl	0x313cec <PlayerDeath::getBlood()> @ imm = #-0xe2c
  314b18: 4603         	mov	r3, r0
  314b1a: 2b00         	cmp	r3, #0x0
  314b1c: d001         	beq	0x314b22 <EffectsManager::updateStep(float)+0x53a> @ imm = #0x2
  314b1e: 2301         	movs	r3, #0x1
  314b20: e000         	b	0x314b24 <EffectsManager::updateStep(float)+0x53c> @ imm = #0x0
  314b22: 2300         	movs	r3, #0x0
  314b24: 2b00         	cmp	r3, #0x0
  314b26: d052         	beq	0x314bce <EffectsManager::updateStep(float)+0x5e6> @ imm = #0xa4
  314b28: 9b05         	ldr	r3, [sp, #0x14]
  314b2a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  314b2e: 1c5a         	adds	r2, r3, #0x1
  314b30: 9b05         	ldr	r3, [sp, #0x14]
  314b32: f8c3 2124    	str.w	r2, [r3, #0x124]
  314b36: 9b05         	ldr	r3, [sp, #0x14]
  314b38: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  314b3c: 461c         	mov	r4, r3
  314b3e: 981c         	ldr	r0, [sp, #0x70]
  314b40: f082 f984    	bl	0x396e4c <PlayerDeath::getBodyShapes()> @ imm = #0x82308
  314b44: 4603         	mov	r3, r0
  314b46: 4618         	mov	r0, r3
  314b48: f285 faca    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x285594
  314b4c: 4603         	mov	r3, r0
  314b4e: 429c         	cmp	r4, r3
  314b50: bf34         	ite	lo
  314b52: 2300         	movlo	r3, #0x0
  314b54: 2301         	movhs	r3, #0x1
  314b56: b2db         	uxtb	r3, r3
  314b58: 2b00         	cmp	r3, #0x0
  314b5a: d003         	beq	0x314b64 <EffectsManager::updateStep(float)+0x57c> @ imm = #0x6
  314b5c: 9b05         	ldr	r3, [sp, #0x14]
  314b5e: 2200         	movs	r2, #0x0
  314b60: f8c3 2124    	str.w	r2, [r3, #0x124]
  314b64: 981c         	ldr	r0, [sp, #0x70]
  314b66: f082 f971    	bl	0x396e4c <PlayerDeath::getBodyShapes()> @ imm = #0x822e2
  314b6a: 4603         	mov	r3, r0
  314b6c: 4618         	mov	r0, r3
  314b6e: f285 fab7    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x28556e
  314b72: 4603         	mov	r3, r0
  314b74: 2b00         	cmp	r3, #0x0
  314b76: bf0c         	ite	eq
  314b78: 2300         	moveq	r3, #0x0
  314b7a: 2301         	movne	r3, #0x1
  314b7c: b2db         	uxtb	r3, r3
  314b7e: 2b00         	cmp	r3, #0x0
  314b80: d025         	beq	0x314bce <EffectsManager::updateStep(float)+0x5e6> @ imm = #0x4a
  314b82: 981c         	ldr	r0, [sp, #0x70]
  314b84: f082 f962    	bl	0x396e4c <PlayerDeath::getBodyShapes()> @ imm = #0x822c4
  314b88: 4602         	mov	r2, r0
  314b8a: 9b05         	ldr	r3, [sp, #0x14]
  314b8c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  314b90: 4610         	mov	r0, r2
  314b92: 4619         	mov	r1, r3
  314b94: f285 fac4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285588
  314b98: 4603         	mov	r3, r0
  314b9a: 931d         	str	r3, [sp, #0x74]
  314b9c: 9b1d         	ldr	r3, [sp, #0x74]
  314b9e: 695b         	ldr	r3, [r3, #0x14]
  314ba0: 2b00         	cmp	r3, #0x0
  314ba2: d014         	beq	0x314bce <EffectsManager::updateStep(float)+0x5e6> @ imm = #0x28
  314ba4: 9b1d         	ldr	r3, [sp, #0x74]
  314ba6: 695b         	ldr	r3, [r3, #0x14]
  314ba8: f04f 0200    	mov.w	r2, #0x0
  314bac: f2c4 2248    	movt	r2, #0x4248
  314bb0: 9202         	str	r2, [sp, #0x8]
  314bb2: f04f 527e    	mov.w	r2, #0x3f800000
  314bb6: 9203         	str	r2, [sp, #0xc]
  314bb8: 466a         	mov	r2, sp
  314bba: f103 0130    	add.w	r1, r3, #0x30
  314bbe: c903         	ldm	r1, {r0, r1}
  314bc0: e882 0003    	stm.w	r2, {r0, r1}
  314bc4: 3328         	adds	r3, #0x28
  314bc6: cb0c         	ldm	r3, {r2, r3}
  314bc8: 9805         	ldr	r0, [sp, #0x14]
  314bca: f001 fa75    	bl	0x3160b8 <EffectsManager::addBloodAt(cpVect, float, float)> @ imm = #0x14ea
  314bce: 9b11         	ldr	r3, [sp, #0x44]
  314bd0: 3301         	adds	r3, #0x1
  314bd2: 9311         	str	r3, [sp, #0x44]
  314bd4: 9c11         	ldr	r4, [sp, #0x44]
  314bd6: 9b05         	ldr	r3, [sp, #0x14]
  314bd8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  314bdc: 4618         	mov	r0, r3
  314bde: f285 fa7f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2854fe
  314be2: 4603         	mov	r3, r0
  314be4: 429c         	cmp	r4, r3
  314be6: bf2c         	ite	hs
  314be8: 2300         	movhs	r3, #0x0
  314bea: 2301         	movlo	r3, #0x1
  314bec: b2db         	uxtb	r3, r3
  314bee: 2b00         	cmp	r3, #0x0
  314bf0: f47f af7b    	bne.w	0x314aea <EffectsManager::updateStep(float)+0x502> @ imm = #-0x10a
  314bf4: 9b05         	ldr	r3, [sp, #0x14]
  314bf6: ed93 7a4a    	vldr	s14, [r3, #296]
  314bfa: eddd 7a04    	vldr	s15, [sp, #16]
  314bfe: ee77 7a27    	vadd.f32	s15, s14, s15
  314c02: 9b05         	ldr	r3, [sp, #0x14]
  314c04: edc3 7a4a    	vstr	s15, [r3, #296]
  314c08: 9b05         	ldr	r3, [sp, #0x14]
  314c0a: ed93 7a4a    	vldr	s14, [r3, #296]
  314c0e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  314c12: eeb4 7ae7    	vcmpe.f32	s14, s15
  314c16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  314c1a: dd10         	ble	0x314c3e <EffectsManager::updateStep(float)+0x656> @ imm = #0x20
  314c1c: 9b05         	ldr	r3, [sp, #0x14]
  314c1e: f503 7496    	add.w	r4, r3, #0x12c
  314c22: ab1e         	add	r3, sp, #0x78
  314c24: 4618         	mov	r0, r3
  314c26: f04f 0100    	mov.w	r1, #0x0
  314c2a: f04f 0200    	mov.w	r2, #0x0
  314c2e: f27e f85f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27e0be
  314c32: ab1e         	add	r3, sp, #0x78
  314c34: 4620         	mov	r0, r4
  314c36: 4619         	mov	r1, r3
  314c38: f27e f888    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x27e110
  314c3c: e03c         	b	0x314cb8 <EffectsManager::updateStep(float)+0x6d0> @ imm = #0x78
  314c3e: 9b05         	ldr	r3, [sp, #0x14]
  314c40: edd3 7a4d    	vldr	s15, [r3, #308]
  314c44: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  314c48: ed9f 7b1d    	vldr	d7, [pc, #116]          @ 0x314cc0 <EffectsManager::updateStep(float)+0x6d8>
  314c4c: ee26 7b07    	vmul.f64	d7, d6, d7
  314c50: eef7 7bc7    	vcvt.f32.f64	s15, d7
  314c54: 9b05         	ldr	r3, [sp, #0x14]
  314c56: edc3 7a4d    	vstr	s15, [r3, #308]
  314c5a: 9b05         	ldr	r3, [sp, #0x14]
  314c5c: f503 7496    	add.w	r4, r3, #0x12c
  314c60: 9b05         	ldr	r3, [sp, #0x14]
  314c62: edd3 7a4d    	vldr	s15, [r3, #308]
  314c66: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  314c6a: 9b05         	ldr	r3, [sp, #0x14]
  314c6c: ed93 7a4a    	vldr	s14, [r3, #296]
  314c70: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  314c74: ee67 7a27    	vmul.f32	s15, s14, s15
  314c78: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  314c7c: ec51 0b17    	vmov	r0, r1, d7
  314c80: f7c1 e942    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x3ed7c
  314c84: ec41 0b17    	vmov	d7, r0, r1
  314c88: ee28 7b07    	vmul.f64	d7, d8, d7
  314c8c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  314c90: ab1e         	add	r3, sp, #0x78
  314c92: 4618         	mov	r0, r3
  314c94: ee17 1a90    	vmov	r1, s15
  314c98: f04f 0200    	mov.w	r2, #0x0
  314c9c: f27e f828    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27e050
  314ca0: ab1e         	add	r3, sp, #0x78
  314ca2: 4620         	mov	r0, r4
  314ca4: 4619         	mov	r1, r3
  314ca6: f27e f851    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x27e0a2
  314caa: e005         	b	0x314cb8 <EffectsManager::updateStep(float)+0x6d0> @ imm = #0xa
  314cac: ab1e         	add	r3, sp, #0x78
  314cae: 4618         	mov	r0, r3
  314cb0: f0a0 f630    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0c60
  314cb4: f073 f1fa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4733f4
  314cb8: b023         	add	sp, #0x8c
  314cba: ecbd 8b02    	vpop	{d8}
  314cbe: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x314cbf); words below are literal-pool data ---
  314cc0: 6666         	str	r6, [r4, #0x64]
  314cc2: 6666         	str	r6, [r4, #0x64]
  314cc4: 6666         	str	r6, [r4, #0x64]
  314cc6: 3fee         	subs	r7, #0xee
  314cc8: d784         	bvc	0x314bd4 <EffectsManager::updateStep(float)+0x5ec> @ imm = #-0xf8
  314cca: ffff f3af    	<unknown>

// ==== EffectsManager::getShakeOffset
//      file offset 0x314cd0 (= ELF address; Ghidra 0x324cd0), 30 bytes, Thumb-2
  314cd0: b500         	push	{lr}
  314cd2: b083         	sub	sp, #0xc
  314cd4: 9001         	str	r0, [sp, #0x4]
  314cd6: 9100         	str	r1, [sp]
  314cd8: 9b00         	ldr	r3, [sp]
  314cda: f503 7396    	add.w	r3, r3, #0x12c
  314cde: 9801         	ldr	r0, [sp, #0x4]
  314ce0: 4619         	mov	r1, r3
  314ce2: f27e f813    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x27e026
  314ce6: 9801         	ldr	r0, [sp, #0x4]
  314ce8: b003         	add	sp, #0xc
  314cea: f85d fb04    	ldr	pc, [sp], #4

// ==== EffectsManager::onShakeScreen
//      file offset 0x314cf0 (= ELF address; Ghidra 0x324cf0), 38 bytes, Thumb-2
  314cf0: b500         	push	{lr}
  314cf2: b083         	sub	sp, #0xc
  314cf4: 9001         	str	r0, [sp, #0x4]
  314cf6: 9100         	str	r1, [sp]
  314cf8: 9b01         	ldr	r3, [sp, #0x4]
  314cfa: f04f 0200    	mov.w	r2, #0x0
  314cfe: f8c3 2128    	str.w	r2, [r3, #0x128]
  314d02: 9800         	ldr	r0, [sp]
  314d04: f7c7 ffb6    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38094
  314d08: 4602         	mov	r2, r0
  314d0a: 9b01         	ldr	r3, [sp, #0x4]
  314d0c: f8c3 2134    	str.w	r2, [r3, #0x134]
  314d10: b003         	add	sp, #0xc
  314d12: f85d fb04    	ldr	pc, [sp], #4

// ==== EffectsManager::onSplatter
//      file offset 0x314d18 (= ELF address; Ghidra 0x324d18), 146 bytes, Thumb-2
  314d18: b500         	push	{lr}
  314d1a: ed2d 8b02    	vpush	{d8}
  314d1e: b08f         	sub	sp, #0x3c
  314d20: 9005         	str	r0, [sp, #0x14]
  314d22: 9104         	str	r1, [sp, #0x10]
  314d24: 9b04         	ldr	r3, [sp, #0x10]
  314d26: 9306         	str	r3, [sp, #0x18]
  314d28: 9806         	ldr	r0, [sp, #0x18]
  314d2a: 2100         	movs	r1, #0x0
  314d2c: f285 f9f8    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2853f0
  314d30: 4603         	mov	r3, r0
  314d32: 9307         	str	r3, [sp, #0x1c]
  314d34: 9806         	ldr	r0, [sp, #0x18]
  314d36: 2101         	movs	r1, #0x1
  314d38: f285 f9f2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2853e4
  314d3c: 4603         	mov	r3, r0
  314d3e: 9308         	str	r3, [sp, #0x20]
  314d40: 9806         	ldr	r0, [sp, #0x18]
  314d42: 2102         	movs	r1, #0x2
  314d44: f285 f9ec    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2853d8
  314d48: 4603         	mov	r3, r0
  314d4a: 9309         	str	r3, [sp, #0x24]
  314d4c: 9807         	ldr	r0, [sp, #0x1c]
  314d4e: f7c7 ff91    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x380de
  314d52: ee07 0a90    	vmov	s15, r0
  314d56: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  314d5a: 9808         	ldr	r0, [sp, #0x20]
  314d5c: f7c7 ff8a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x380ec
  314d60: ee07 0a90    	vmov	s15, r0
  314d64: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  314d68: ab0a         	add	r3, sp, #0x28
  314d6a: 4618         	mov	r0, r3
  314d6c: eeb0 0b48    	vmov.f64	d0, d8
  314d70: eeb0 1b47    	vmov.f64	d1, d7
  314d74: f7fe f8f4    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x1e18
  314d78: 9809         	ldr	r0, [sp, #0x24]
  314d7a: f7c7 ff7b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3810a
  314d7e: ee07 0a90    	vmov	s15, r0
  314d82: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  314d86: ed8d 7b02    	vstr	d7, [sp, #8]
  314d8a: 466b         	mov	r3, sp
  314d8c: aa0c         	add	r2, sp, #0x30
  314d8e: e892 0003    	ldm.w	r2, {r0, r1}
  314d92: e883 0003    	stm.w	r3, {r0, r1}
  314d96: ab0a         	add	r3, sp, #0x28
  314d98: cb0c         	ldm	r3, {r2, r3}
  314d9a: 9805         	ldr	r0, [sp, #0x14]
  314d9c: f000 fd0c    	bl	0x3157b8 <EffectsManager::addSplatterAt(cpVect, double)> @ imm = #0xa18
  314da0: b00f         	add	sp, #0x3c
  314da2: ecbd 8b02    	vpop	{d8}
  314da6: f85d fb04    	ldr	pc, [sp], #4

// ==== EffectsManager::onGroundImpact
//      file offset 0x314dac (= ELF address; Ghidra 0x324dac), 456 bytes, Thumb-2
  314dac: b500         	push	{lr}
  314dae: ed2d 8b02    	vpush	{d8}
  314db2: b09d         	sub	sp, #0x74
  314db4: 9007         	str	r0, [sp, #0x1c]
  314db6: 9106         	str	r1, [sp, #0x18]
  314db8: 9b06         	ldr	r3, [sp, #0x18]
  314dba: 930a         	str	r3, [sp, #0x28]
  314dbc: 980a         	ldr	r0, [sp, #0x28]
  314dbe: 2100         	movs	r1, #0x0
  314dc0: f285 f9ae    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x28535c
  314dc4: 4603         	mov	r3, r0
  314dc6: 4618         	mov	r0, r3
  314dc8: f7c7 ff54    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38158
  314dcc: 4603         	mov	r3, r0
  314dce: 930b         	str	r3, [sp, #0x2c]
  314dd0: 980a         	ldr	r0, [sp, #0x28]
  314dd2: 2101         	movs	r1, #0x1
  314dd4: f285 f9a4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285348
  314dd8: 4603         	mov	r3, r0
  314dda: 4618         	mov	r0, r3
  314ddc: f7c7 ff4a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3816c
  314de0: 4603         	mov	r3, r0
  314de2: 930c         	str	r3, [sp, #0x30]
  314de4: 980a         	ldr	r0, [sp, #0x28]
  314de6: 2102         	movs	r1, #0x2
  314de8: f285 f99a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285334
  314dec: 4603         	mov	r3, r0
  314dee: 4618         	mov	r0, r3
  314df0: f7c7 ff40    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38180
  314df4: 4603         	mov	r3, r0
  314df6: 930d         	str	r3, [sp, #0x34]
  314df8: 980a         	ldr	r0, [sp, #0x28]
  314dfa: 2103         	movs	r1, #0x3
  314dfc: f285 f990    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x285320
  314e00: 4603         	mov	r3, r0
  314e02: 4618         	mov	r0, r3
  314e04: f7c7 ff36    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38194
  314e08: 4603         	mov	r3, r0
  314e0a: 930e         	str	r3, [sp, #0x38]
  314e0c: 980a         	ldr	r0, [sp, #0x28]
  314e0e: 2104         	movs	r1, #0x4
  314e10: f285 f986    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x28530c
  314e14: 4603         	mov	r3, r0
  314e16: 4618         	mov	r0, r3
  314e18: f7d8 f81c    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x27fc8
  314e1c: 4603         	mov	r3, r0
  314e1e: 930f         	str	r3, [sp, #0x3c]
  314e20: 980a         	ldr	r0, [sp, #0x28]
  314e22: 2105         	movs	r1, #0x5
  314e24: f285 f97c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2852f8
  314e28: 4603         	mov	r3, r0
  314e2a: 4618         	mov	r0, r3
  314e2c: f7d8 f812    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x27fdc
  314e30: 4603         	mov	r3, r0
  314e32: 9310         	str	r3, [sp, #0x40]
  314e34: 980a         	ldr	r0, [sp, #0x28]
  314e36: 2106         	movs	r1, #0x6
  314e38: f285 f972    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2852e4
  314e3c: 4603         	mov	r3, r0
  314e3e: 4618         	mov	r0, r3
  314e40: f7d8 f808    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x27ff0
  314e44: 4603         	mov	r3, r0
  314e46: 9311         	str	r3, [sp, #0x44]
  314e48: 980a         	ldr	r0, [sp, #0x28]
  314e4a: 2107         	movs	r1, #0x7
  314e4c: f285 f968    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2852d0
  314e50: 4603         	mov	r3, r0
  314e52: 4618         	mov	r0, r3
  314e54: f7d7 fffe    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x28004
  314e58: 4603         	mov	r3, r0
  314e5a: 9312         	str	r3, [sp, #0x48]
  314e5c: eddd 7a0b    	vldr	s15, [sp, #44]
  314e60: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  314e64: eddd 7a0c    	vldr	s15, [sp, #48]
  314e68: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  314e6c: ab18         	add	r3, sp, #0x60
  314e6e: 4618         	mov	r0, r3
  314e70: eeb0 0b46    	vmov.f64	d0, d6
  314e74: eeb0 1b47    	vmov.f64	d1, d7
  314e78: f7fe f872    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x1f1c
  314e7c: ab18         	add	r3, sp, #0x60
  314e7e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  314e80: f7fe f8b2    	bl	0x312fe8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x210> @ imm = #-0x1e9c
  314e84: 9013         	str	r0, [sp, #0x4c]
  314e86: eddd 7a0d    	vldr	s15, [sp, #52]
  314e8a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  314e8e: eddd 7a0e    	vldr	s15, [sp, #56]
  314e92: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  314e96: ab14         	add	r3, sp, #0x50
  314e98: 4618         	mov	r0, r3
  314e9a: eeb0 0b46    	vmov.f64	d0, d6
  314e9e: eeb0 1b47    	vmov.f64	d1, d7
  314ea2: f7fe f85d    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x1f46
  314ea6: f7fe f827    	bl	0x312ef8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x120> @ imm = #-0x1fb2
  314eaa: 4603         	mov	r3, r0
  314eac: ee07 3a90    	vmov	s15, r3
  314eb0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  314eb4: eddf 7a2d    	vldr	s15, [pc, #180]         @ 0x314f6c <EffectsManager::onGroundImpact(cocos2d::CCObject*)+0x1c0>
  314eb8: ee87 7a27    	vdiv.f32	s14, s14, s15
  314ebc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  314ec0: ee37 7a67    	vsub.f32	s14, s14, s15
  314ec4: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  314ec8: ee27 7a27    	vmul.f32	s14, s14, s15
  314ecc: eddd 7a13    	vldr	s15, [sp, #76]
  314ed0: ee77 7a27    	vadd.f32	s15, s14, s15
  314ed4: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  314ed8: 9b0f         	ldr	r3, [sp, #0x3c]
  314eda: b2d9         	uxtb	r1, r3
  314edc: 9b10         	ldr	r3, [sp, #0x40]
  314ede: b2da         	uxtb	r2, r3
  314ee0: 9b11         	ldr	r3, [sp, #0x44]
  314ee2: b2db         	uxtb	r3, r3
  314ee4: 4608         	mov	r0, r1
  314ee6: 4611         	mov	r1, r2
  314ee8: 461a         	mov	r2, r3
  314eea: f7fe f80b    	bl	0x312f04 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x12c> @ imm = #-0x1fea
  314eee: 4603         	mov	r3, r0
  314ef0: 461a         	mov	r2, r3
  314ef2: f88d 2024    	strb.w	r2, [sp, #0x24]
  314ef6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  314efa: f88d 2025    	strb.w	r2, [sp, #0x25]
  314efe: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  314f02: f88d 3026    	strb.w	r3, [sp, #0x26]
  314f06: ed8d 8b02    	vstr	d8, [sp, #8]
  314f0a: ab04         	add	r3, sp, #0x10
  314f0c: aa09         	add	r2, sp, #0x24
  314f0e: 6812         	ldr	r2, [r2]
  314f10: 4611         	mov	r1, r2
  314f12: 8019         	strh	r1, [r3]
  314f14: 3302         	adds	r3, #0x2
  314f16: 0c12         	lsrs	r2, r2, #0x10
  314f18: 701a         	strb	r2, [r3]
  314f1a: 466b         	mov	r3, sp
  314f1c: aa16         	add	r2, sp, #0x58
  314f1e: e892 0003    	ldm.w	r2, {r0, r1}
  314f22: e883 0003    	stm.w	r3, {r0, r1}
  314f26: ab14         	add	r3, sp, #0x50
  314f28: cb0c         	ldm	r3, {r2, r3}
  314f2a: 9807         	ldr	r0, [sp, #0x1c]
  314f2c: f000 fce4    	bl	0x3158f8 <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)> @ imm = #0x9c8
  314f30: 9b12         	ldr	r3, [sp, #0x48]
  314f32: 2b00         	cmp	r3, #0x0
  314f34: d114         	bne	0x314f60 <EffectsManager::onGroundImpact(cocos2d::CCObject*)+0x1b4> @ imm = #0x28
  314f36: ed9f 7a0e    	vldr	s14, [pc, #56]          @ 0x314f70 <EffectsManager::onGroundImpact(cocos2d::CCObject*)+0x1c4>
  314f3a: eddd 7a13    	vldr	s15, [sp, #76]
  314f3e: ee77 7a67    	vsub.f32	s15, s14, s15
  314f42: edcd 7a02    	vstr	s15, [sp, #8]
  314f46: 2303         	movs	r3, #0x3
  314f48: 9303         	str	r3, [sp, #0xc]
  314f4a: 466b         	mov	r3, sp
  314f4c: aa16         	add	r2, sp, #0x58
  314f4e: e892 0003    	ldm.w	r2, {r0, r1}
  314f52: e883 0003    	stm.w	r3, {r0, r1}
  314f56: ab14         	add	r3, sp, #0x50
  314f58: cb0c         	ldm	r3, {r2, r3}
  314f5a: 9807         	ldr	r0, [sp, #0x1c]
  314f5c: f001 fb64    	bl	0x316628 <EffectsManager::addGroundHitAt(cpVect, float, int)> @ imm = #0x16c8
  314f60: b01d         	add	sp, #0x74
  314f62: ecbd 8b02    	vpop	{d8}
  314f66: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x314f69); words below are literal-pool data ---
  314f6a: bf00         	nop
  314f6c: 0000         	movs	r0, r0
  314f6e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x315170 <EffectsManager::onExplosionRemove(cocos2d::CCObject*)+0x58>
  314f70: 0000         	movs	r0, r0
  314f72: 4334         	orrs	r4, r6

// ==== EffectsManager::onMetalImpact
//      file offset 0x314f74 (= ELF address; Ghidra 0x324f74), 200 bytes, Thumb-2
  314f74: b500         	push	{lr}
  314f76: ed2d 8b02    	vpush	{d8}
  314f7a: b095         	sub	sp, #0x54
  314f7c: 9007         	str	r0, [sp, #0x1c]
  314f7e: 9106         	str	r1, [sp, #0x18]
  314f80: 9b06         	ldr	r3, [sp, #0x18]
  314f82: 930a         	str	r3, [sp, #0x28]
  314f84: 9b0a         	ldr	r3, [sp, #0x28]
  314f86: 681b         	ldr	r3, [r3]
  314f88: 3334         	adds	r3, #0x34
  314f8a: 681b         	ldr	r3, [r3]
  314f8c: aa0c         	add	r2, sp, #0x30
  314f8e: 4610         	mov	r0, r2
  314f90: 990a         	ldr	r1, [sp, #0x28]
  314f92: 4798         	blx	r3
  314f94: ab0c         	add	r3, sp, #0x30
  314f96: cb0f         	ldm	r3, {r0, r1, r2, r3}
  314f98: f7fe f826    	bl	0x312fe8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x210> @ imm = #-0x1fb4
  314f9c: 900b         	str	r0, [sp, #0x2c]
  314f9e: 9b0a         	ldr	r3, [sp, #0x28]
  314fa0: 681b         	ldr	r3, [r3]
  314fa2: 3320         	adds	r3, #0x20
  314fa4: 681b         	ldr	r3, [r3]
  314fa6: aa10         	add	r2, sp, #0x40
  314fa8: 4610         	mov	r0, r2
  314faa: 990a         	ldr	r1, [sp, #0x28]
  314fac: 4798         	blx	r3
  314fae: f7fd ffa3    	bl	0x312ef8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x120> @ imm = #-0x20ba
  314fb2: 4603         	mov	r3, r0
  314fb4: ee07 3a90    	vmov	s15, r3
  314fb8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  314fbc: eddf 7a1e    	vldr	s15, [pc, #120]         @ 0x315038 <EffectsManager::onMetalImpact(cocos2d::CCObject*)+0xc4>
  314fc0: ee87 7a27    	vdiv.f32	s14, s14, s15
  314fc4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  314fc8: ee37 7a67    	vsub.f32	s14, s14, s15
  314fcc: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  314fd0: ee27 7a27    	vmul.f32	s14, s14, s15
  314fd4: eddd 7a0b    	vldr	s15, [sp, #44]
  314fd8: ee77 7a27    	vadd.f32	s15, s14, s15
  314fdc: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  314fe0: 20ff         	movs	r0, #0xff
  314fe2: 21ff         	movs	r1, #0xff
  314fe4: 22ff         	movs	r2, #0xff
  314fe6: f7fd ff8d    	bl	0x312f04 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x12c> @ imm = #-0x20e6
  314fea: 4603         	mov	r3, r0
  314fec: 461a         	mov	r2, r3
  314fee: f88d 2024    	strb.w	r2, [sp, #0x24]
  314ff2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  314ff6: f88d 2025    	strb.w	r2, [sp, #0x25]
  314ffa: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  314ffe: f88d 3026    	strb.w	r3, [sp, #0x26]
  315002: ed8d 8b02    	vstr	d8, [sp, #8]
  315006: ab04         	add	r3, sp, #0x10
  315008: aa09         	add	r2, sp, #0x24
  31500a: 6812         	ldr	r2, [r2]
  31500c: 4611         	mov	r1, r2
  31500e: 8019         	strh	r1, [r3]
  315010: 3302         	adds	r3, #0x2
  315012: 0c12         	lsrs	r2, r2, #0x10
  315014: 701a         	strb	r2, [r3]
  315016: 466b         	mov	r3, sp
  315018: aa12         	add	r2, sp, #0x48
  31501a: e892 0003    	ldm.w	r2, {r0, r1}
  31501e: e883 0003    	stm.w	r3, {r0, r1}
  315022: ab10         	add	r3, sp, #0x40
  315024: cb0c         	ldm	r3, {r2, r3}
  315026: 9807         	ldr	r0, [sp, #0x1c]
  315028: f000 fc66    	bl	0x3158f8 <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)> @ imm = #0x8cc
  31502c: b015         	add	sp, #0x54
  31502e: ecbd 8b02    	vpop	{d8}
  315032: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x315035); words below are literal-pool data ---
  315036: bf00         	nop
  315038: 0000         	movs	r0, r0
  31503a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x31523c <EffectsManager::onExplosion(cocos2d::CCObject*)+0x68>

// ==== EffectsManager::onExplosionNoDamage
//      file offset 0x31503c (= ELF address; Ghidra 0x32503c), 220 bytes, Thumb-2
  31503c: b510         	push	{r4, lr}
  31503e: ed2d 8b02    	vpush	{d8}
  315042: b092         	sub	sp, #0x48
  315044: 9007         	str	r0, [sp, #0x1c]
  315046: 9106         	str	r1, [sp, #0x18]
  315048: 9b06         	ldr	r3, [sp, #0x18]
  31504a: 930a         	str	r3, [sp, #0x28]
  31504c: 980a         	ldr	r0, [sp, #0x28]
  31504e: 2100         	movs	r1, #0x0
  315050: f285 f866    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2850cc
  315054: 4603         	mov	r3, r0
  315056: 930b         	str	r3, [sp, #0x2c]
  315058: 980a         	ldr	r0, [sp, #0x28]
  31505a: 2101         	movs	r1, #0x1
  31505c: f285 f860    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2850c0
  315060: 4603         	mov	r3, r0
  315062: 930c         	str	r3, [sp, #0x30]
  315064: 980a         	ldr	r0, [sp, #0x28]
  315066: 2102         	movs	r1, #0x2
  315068: f285 f85a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2850b4
  31506c: 4603         	mov	r3, r0
  31506e: 930d         	str	r3, [sp, #0x34]
  315070: 980b         	ldr	r0, [sp, #0x2c]
  315072: f7c7 fdff    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38402
  315076: ee07 0a90    	vmov	s15, r0
  31507a: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31507e: 980c         	ldr	r0, [sp, #0x30]
  315080: f7c7 fdf8    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38410
  315084: ee07 0a90    	vmov	s15, r0
  315088: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31508c: ab0e         	add	r3, sp, #0x38
  31508e: 4618         	mov	r0, r3
  315090: eeb0 0b48    	vmov.f64	d0, d8
  315094: eeb0 1b47    	vmov.f64	d1, d7
  315098: f7fd ff62    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x213c
  31509c: 980d         	ldr	r0, [sp, #0x34]
  31509e: f7c7 fde9    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3842e
  3150a2: 4604         	mov	r4, r0
  3150a4: ab08         	add	r3, sp, #0x20
  3150a6: 4618         	mov	r0, r3
  3150a8: f075 f1a4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x475348
  3150ac: aa09         	add	r2, sp, #0x24
  3150ae: ab08         	add	r3, sp, #0x20
  3150b0: 4610         	mov	r0, r2
  3150b2: 4a18         	ldr	r2, [pc, #0x60]         @ 0x315114 <EffectsManager::onExplosionNoDamage(cocos2d::CCObject*)+0xd8>
  3150b4: 447a         	add	r2, pc
  3150b6: 4611         	mov	r1, r2
  3150b8: 461a         	mov	r2, r3
  3150ba: f0a1 f4d1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a19a2
  3150be: 9402         	str	r4, [sp, #0x8]
  3150c0: ab09         	add	r3, sp, #0x24
  3150c2: 9303         	str	r3, [sp, #0xc]
  3150c4: 2302         	movs	r3, #0x2
  3150c6: 9304         	str	r3, [sp, #0x10]
  3150c8: 2300         	movs	r3, #0x0
  3150ca: 9305         	str	r3, [sp, #0x14]
  3150cc: 466b         	mov	r3, sp
  3150ce: aa10         	add	r2, sp, #0x40
  3150d0: e892 0003    	ldm.w	r2, {r0, r1}
  3150d4: e883 0003    	stm.w	r3, {r0, r1}
  3150d8: ab0e         	add	r3, sp, #0x38
  3150da: cb0c         	ldm	r3, {r2, r3}
  3150dc: 9807         	ldr	r0, [sp, #0x1c]
  3150de: f000 fcb7    	bl	0x315a50 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)> @ imm = #0x96e
  3150e2: ab09         	add	r3, sp, #0x24
  3150e4: 4618         	mov	r0, r3
  3150e6: f0a0 f415    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a082a
  3150ea: ab08         	add	r3, sp, #0x20
  3150ec: 4618         	mov	r0, r3
  3150ee: f075 f185    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47530a
  3150f2: e00a         	b	0x31510a <EffectsManager::onExplosionNoDamage(cocos2d::CCObject*)+0xce> @ imm = #0x14
  3150f4: ab09         	add	r3, sp, #0x24
  3150f6: 4618         	mov	r0, r3
  3150f8: f0a0 f40c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0818
  3150fc: e7ff         	b	0x3150fe <EffectsManager::onExplosionNoDamage(cocos2d::CCObject*)+0xc2> @ imm = #-0x2
  3150fe: ab08         	add	r3, sp, #0x20
  315100: 4618         	mov	r0, r3
  315102: f075 f17b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4752f6
  315106: f072 f7d1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472fa2
  31510a: b012         	add	sp, #0x48
  31510c: ecbd 8b02    	vpop	{d8}
  315110: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x315111); words below are literal-pool data ---
  315112: bf00         	nop
  315114: 1a98         	subs	r0, r3, r2
  315116: 004b         	lsls	r3, r1, #0x1

// ==== EffectsManager::onExplosionRemove
//      file offset 0x315118 (= ELF address; Ghidra 0x325118), 188 bytes, Thumb-2
  315118: b510         	push	{r4, lr}
  31511a: b08a         	sub	sp, #0x28
  31511c: 9001         	str	r0, [sp, #0x4]
  31511e: 9100         	str	r1, [sp]
  315120: 9b00         	ldr	r3, [sp]
  315122: 9305         	str	r3, [sp, #0x14]
  315124: 9805         	ldr	r0, [sp, #0x14]
  315126: 2100         	movs	r1, #0x0
  315128: f284 fffa    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284ff4
  31512c: 4603         	mov	r3, r0
  31512e: 9306         	str	r3, [sp, #0x18]
  315130: 9805         	ldr	r0, [sp, #0x14]
  315132: 2101         	movs	r1, #0x1
  315134: f284 fff4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284fe8
  315138: 4603         	mov	r3, r0
  31513a: 9307         	str	r3, [sp, #0x1c]
  31513c: 9805         	ldr	r0, [sp, #0x14]
  31513e: 2102         	movs	r1, #0x2
  315140: f284 ffee    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284fdc
  315144: 4603         	mov	r3, r0
  315146: 9308         	str	r3, [sp, #0x20]
  315148: 9808         	ldr	r0, [sp, #0x20]
  31514a: f284 fbed    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2847da
  31514e: 4604         	mov	r4, r0
  315150: 9807         	ldr	r0, [sp, #0x1c]
  315152: f7d7 fe7f    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x28302
  315156: 4603         	mov	r3, r0
  315158: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x3151d0 <EffectsManager::onExplosionRemove(cocos2d::CCObject*)+0xb8>
  31515a: 447a         	add	r2, pc
  31515c: 4610         	mov	r0, r2
  31515e: 4621         	mov	r1, r4
  315160: 461a         	mov	r2, r3
  315162: f284 fcd5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2849aa
  315166: 4603         	mov	r3, r0
  315168: 9309         	str	r3, [sp, #0x24]
  31516a: 9806         	ldr	r0, [sp, #0x18]
  31516c: f7d7 fe72    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2831c
  315170: 4603         	mov	r3, r0
  315172: 2b17         	cmp	r3, #0x17
  315174: d000         	beq	0x315178 <EffectsManager::onExplosionRemove(cocos2d::CCObject*)+0x60> @ imm = #0x0
  315176: e028         	b	0x3151ca <EffectsManager::onExplosionRemove(cocos2d::CCObject*)+0xb2> @ imm = #0x50
  315178: 9809         	ldr	r0, [sp, #0x24]
  31517a: f284 fbd5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2847aa
  31517e: 4604         	mov	r4, r0
  315180: ab03         	add	r3, sp, #0xc
  315182: 4618         	mov	r0, r3
  315184: f075 f136    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47526c
  315188: aa04         	add	r2, sp, #0x10
  31518a: ab03         	add	r3, sp, #0xc
  31518c: 4610         	mov	r0, r2
  31518e: 4621         	mov	r1, r4
  315190: 461a         	mov	r2, r3
  315192: f0a1 f465    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a18ca
  315196: ab04         	add	r3, sp, #0x10
  315198: 9801         	ldr	r0, [sp, #0x4]
  31519a: 4619         	mov	r1, r3
  31519c: f000 fdd0    	bl	0x315d40 <EffectsManager::removeProxyNade(std::string)> @ imm = #0xba0
  3151a0: ab04         	add	r3, sp, #0x10
  3151a2: 4618         	mov	r0, r3
  3151a4: f0a0 f3b6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a076c
  3151a8: ab03         	add	r3, sp, #0xc
  3151aa: 4618         	mov	r0, r3
  3151ac: f075 f126    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47524c
  3151b0: bf00         	nop
  3151b2: e00a         	b	0x3151ca <EffectsManager::onExplosionRemove(cocos2d::CCObject*)+0xb2> @ imm = #0x14
  3151b4: ab04         	add	r3, sp, #0x10
  3151b6: 4618         	mov	r0, r3
  3151b8: f0a0 f3ac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0758
  3151bc: e7ff         	b	0x3151be <EffectsManager::onExplosionRemove(cocos2d::CCObject*)+0xa6> @ imm = #-0x2
  3151be: ab03         	add	r3, sp, #0xc
  3151c0: 4618         	mov	r0, r3
  3151c2: f075 f11b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x475236
  3151c6: f072 f771    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472ee2
  3151ca: b00a         	add	sp, #0x28
  3151cc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3151cd); words below are literal-pool data ---
  3151ce: bf00         	nop
  3151d0: 19f6         	adds	r6, r6, r7
  3151d2: 004b         	lsls	r3, r1, #0x1

// ==== EffectsManager::onExplosion
//      file offset 0x3151d4 (= ELF address; Ghidra 0x3251d4), 836 bytes, Thumb-2
  3151d4: b570         	push	{r4, r5, r6, lr}
  3151d6: ed2d 8b02    	vpush	{d8}
  3151da: b0a0         	sub	sp, #0x80
  3151dc: 900b         	str	r0, [sp, #0x2c]
  3151de: 910a         	str	r1, [sp, #0x28]
  3151e0: 9b0a         	ldr	r3, [sp, #0x28]
  3151e2: 930e         	str	r3, [sp, #0x38]
  3151e4: 980e         	ldr	r0, [sp, #0x38]
  3151e6: 2100         	movs	r1, #0x0
  3151e8: f284 ff9a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284f34
  3151ec: 4603         	mov	r3, r0
  3151ee: 930f         	str	r3, [sp, #0x3c]
  3151f0: 980e         	ldr	r0, [sp, #0x38]
  3151f2: 2101         	movs	r1, #0x1
  3151f4: f284 ff94    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284f28
  3151f8: 4603         	mov	r3, r0
  3151fa: 9310         	str	r3, [sp, #0x40]
  3151fc: 980e         	ldr	r0, [sp, #0x38]
  3151fe: 2102         	movs	r1, #0x2
  315200: f284 ff8e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284f1c
  315204: 4603         	mov	r3, r0
  315206: 9311         	str	r3, [sp, #0x44]
  315208: 980e         	ldr	r0, [sp, #0x38]
  31520a: 2103         	movs	r1, #0x3
  31520c: f284 ff88    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284f10
  315210: 4603         	mov	r3, r0
  315212: 9312         	str	r3, [sp, #0x48]
  315214: 980e         	ldr	r0, [sp, #0x38]
  315216: 2104         	movs	r1, #0x4
  315218: f284 ff82    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284f04
  31521c: 4603         	mov	r3, r0
  31521e: 9313         	str	r3, [sp, #0x4c]
  315220: 980e         	ldr	r0, [sp, #0x38]
  315222: 2105         	movs	r1, #0x5
  315224: f284 ff7c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284ef8
  315228: 4603         	mov	r3, r0
  31522a: 9314         	str	r3, [sp, #0x50]
  31522c: 980e         	ldr	r0, [sp, #0x38]
  31522e: 2106         	movs	r1, #0x6
  315230: f284 ff76    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284eec
  315234: 4603         	mov	r3, r0
  315236: 9315         	str	r3, [sp, #0x54]
  315238: 980e         	ldr	r0, [sp, #0x38]
  31523a: 2107         	movs	r1, #0x7
  31523c: f284 ff70    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284ee0
  315240: 4603         	mov	r3, r0
  315242: 9316         	str	r3, [sp, #0x58]
  315244: 980f         	ldr	r0, [sp, #0x3c]
  315246: f7c7 fd15    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x385d6
  31524a: ee07 0a90    	vmov	s15, r0
  31524e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  315252: 9810         	ldr	r0, [sp, #0x40]
  315254: f7c7 fd0e    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x385e4
  315258: ee07 0a90    	vmov	s15, r0
  31525c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  315260: ab18         	add	r3, sp, #0x60
  315262: 4618         	mov	r0, r3
  315264: eeb0 0b48    	vmov.f64	d0, d8
  315268: eeb0 1b47    	vmov.f64	d1, d7
  31526c: f7fd fe78    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x2310
  315270: 9811         	ldr	r0, [sp, #0x44]
  315272: f7c7 fcff    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38602
  315276: ee07 0a90    	vmov	s15, r0
  31527a: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31527e: 9812         	ldr	r0, [sp, #0x48]
  315280: f7c7 fcf8    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x38610
  315284: ee07 0a90    	vmov	s15, r0
  315288: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31528c: ab1c         	add	r3, sp, #0x70
  31528e: 4618         	mov	r0, r3
  315290: eeb0 0b48    	vmov.f64	d0, d8
  315294: eeb0 1b47    	vmov.f64	d1, d7
  315298: f7fd fe62    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x233c
  31529c: 2300         	movs	r3, #0x0
  31529e: 9317         	str	r3, [sp, #0x5c]
  3152a0: 9813         	ldr	r0, [sp, #0x4c]
  3152a2: f7d7 fdd7    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x28452
  3152a6: 4603         	mov	r3, r0
  3152a8: 3b14         	subs	r3, #0x14
  3152aa: 2b03         	cmp	r3, #0x3
  3152ac: f200 80bd    	bhi.w	0x31542a <EffectsManager::onExplosion(cocos2d::CCObject*)+0x256> @ imm = #0x17a
  3152b0: a102         	adr	r1, #8 <EffectsManager::onExplosion(cocos2d::CCObject*)+0xe2>
  3152b2: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3152b6: 4411         	add	r1, r2
  3152b8: 4708         	bx	r1
  3152ba: bf00         	nop
  3152bc: 0011         	movs	r1, r2
  3152be: 0000         	movs	r0, r0
  3152c0: 006f         	lsls	r7, r5, #0x1
  3152c2: 0000         	movs	r0, r0
  3152c4: 00d7         	lsls	r7, r2, #0x3
  3152c6: 0000         	movs	r0, r0
  3152c8: 0111         	lsls	r1, r2, #0x4
  3152ca: 0000         	movs	r0, r0
  3152cc: 9814         	ldr	r0, [sp, #0x50]
  3152ce: f7c7 fcd1    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3865e
  3152d2: 4604         	mov	r4, r0
  3152d4: 9816         	ldr	r0, [sp, #0x58]
  3152d6: f284 fb27    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x28464e
  3152da: 4605         	mov	r5, r0
  3152dc: ab0c         	add	r3, sp, #0x30
  3152de: 4618         	mov	r0, r3
  3152e0: f075 f088    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x475110
  3152e4: aa0d         	add	r2, sp, #0x34
  3152e6: ab0c         	add	r3, sp, #0x30
  3152e8: 4610         	mov	r0, r2
  3152ea: 4629         	mov	r1, r5
  3152ec: 461a         	mov	r2, r3
  3152ee: f0a1 f3b7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a176e
  3152f2: 9813         	ldr	r0, [sp, #0x4c]
  3152f4: f7d7 fdae    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x284a4
  3152f8: 4603         	mov	r3, r0
  3152fa: 9402         	str	r4, [sp, #0x8]
  3152fc: aa0d         	add	r2, sp, #0x34
  3152fe: 9203         	str	r2, [sp, #0xc]
  315300: 9304         	str	r3, [sp, #0x10]
  315302: 466b         	mov	r3, sp
  315304: aa1a         	add	r2, sp, #0x68
  315306: e892 0003    	ldm.w	r2, {r0, r1}
  31530a: e883 0003    	stm.w	r3, {r0, r1}
  31530e: ab18         	add	r3, sp, #0x60
  315310: cb0c         	ldm	r3, {r2, r3}
  315312: 980b         	ldr	r0, [sp, #0x2c]
  315314: f000 fc98    	bl	0x315c48 <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)> @ imm = #0x930
  315318: ab0d         	add	r3, sp, #0x34
  31531a: 4618         	mov	r0, r3
  31531c: f0a0 f2fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a05f4
  315320: ab0c         	add	r3, sp, #0x30
  315322: 4618         	mov	r0, r3
  315324: f075 f06a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4750d4
  315328: e0f2         	b	0x315510 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x33c> @ imm = #0x1e4
  31532a: 9814         	ldr	r0, [sp, #0x50]
  31532c: f7c7 fca2    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x386bc
  315330: 4606         	mov	r6, r0
  315332: 9816         	ldr	r0, [sp, #0x58]
  315334: f284 faf8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2845f0
  315338: 4604         	mov	r4, r0
  31533a: ab0c         	add	r3, sp, #0x30
  31533c: 4618         	mov	r0, r3
  31533e: f075 f059    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4750b2
  315342: aa0d         	add	r2, sp, #0x34
  315344: ab0c         	add	r3, sp, #0x30
  315346: 4610         	mov	r0, r2
  315348: 4621         	mov	r1, r4
  31534a: 461a         	mov	r2, r3
  31534c: f0a1 f388    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a1710
  315350: 9813         	ldr	r0, [sp, #0x4c]
  315352: f7d7 fd7f    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x28502
  315356: 4605         	mov	r5, r0
  315358: ac02         	add	r4, sp, #0x8
  31535a: ab1c         	add	r3, sp, #0x70
  31535c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31535e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  315362: 9606         	str	r6, [sp, #0x18]
  315364: ab0d         	add	r3, sp, #0x34
  315366: 9307         	str	r3, [sp, #0x1c]
  315368: 9508         	str	r5, [sp, #0x20]
  31536a: 466b         	mov	r3, sp
  31536c: aa1a         	add	r2, sp, #0x68
  31536e: e892 0003    	ldm.w	r2, {r0, r1}
  315372: e883 0003    	stm.w	r3, {r0, r1}
  315376: ab18         	add	r3, sp, #0x60
  315378: cb0c         	ldm	r3, {r2, r3}
  31537a: 980b         	ldr	r0, [sp, #0x2c]
  31537c: f000 fdea    	bl	0x315f54 <EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int)> @ imm = #0xbd4
  315380: ab0d         	add	r3, sp, #0x34
  315382: 4618         	mov	r0, r3
  315384: f0a0 f2c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a058c
  315388: ab0c         	add	r3, sp, #0x30
  31538a: 4618         	mov	r0, r3
  31538c: f075 f036    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47506c
  315390: e0be         	b	0x315510 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x33c> @ imm = #0x17c
  315392: 9816         	ldr	r0, [sp, #0x58]
  315394: f284 fac8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x284590
  315398: 4604         	mov	r4, r0
  31539a: ab0c         	add	r3, sp, #0x30
  31539c: 4618         	mov	r0, r3
  31539e: f075 f029    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x475052
  3153a2: aa0d         	add	r2, sp, #0x34
  3153a4: ab0c         	add	r3, sp, #0x30
  3153a6: 4610         	mov	r0, r2
  3153a8: 4621         	mov	r1, r4
  3153aa: 461a         	mov	r2, r3
  3153ac: f0a1 f358    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a16b0
  3153b0: ab0d         	add	r3, sp, #0x34
  3153b2: 980b         	ldr	r0, [sp, #0x2c]
  3153b4: 4619         	mov	r1, r3
  3153b6: f000 fe35    	bl	0x316024 <EffectsManager::addPlasmaField(std::string)> @ imm = #0xc6a
  3153ba: ab0d         	add	r3, sp, #0x34
  3153bc: 4618         	mov	r0, r3
  3153be: f0a0 f2a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0552
  3153c2: ab0c         	add	r3, sp, #0x30
  3153c4: 4618         	mov	r0, r3
  3153c6: f075 f019    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x475032
  3153ca: e0a1         	b	0x315510 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x33c> @ imm = #0x142
  3153cc: 9816         	ldr	r0, [sp, #0x58]
  3153ce: f284 faab    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x284556
  3153d2: 4604         	mov	r4, r0
  3153d4: ab0c         	add	r3, sp, #0x30
  3153d6: 4618         	mov	r0, r3
  3153d8: f075 f00c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x475018
  3153dc: aa0d         	add	r2, sp, #0x34
  3153de: ab0c         	add	r3, sp, #0x30
  3153e0: 4610         	mov	r0, r2
  3153e2: 4621         	mov	r1, r4
  3153e4: 461a         	mov	r2, r3
  3153e6: f0a1 f33b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a1676
  3153ea: 9813         	ldr	r0, [sp, #0x4c]
  3153ec: f7d7 fd32    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x2859c
  3153f0: 4604         	mov	r4, r0
  3153f2: 9815         	ldr	r0, [sp, #0x54]
  3153f4: f7d7 fd2e    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x285a4
  3153f8: 4603         	mov	r3, r0
  3153fa: aa0d         	add	r2, sp, #0x34
  3153fc: 9202         	str	r2, [sp, #0x8]
  3153fe: 9403         	str	r4, [sp, #0xc]
  315400: 9304         	str	r3, [sp, #0x10]
  315402: 466b         	mov	r3, sp
  315404: aa1a         	add	r2, sp, #0x68
  315406: e892 0003    	ldm.w	r2, {r0, r1}
  31540a: e883 0003    	stm.w	r3, {r0, r1}
  31540e: ab18         	add	r3, sp, #0x60
  315410: cb0c         	ldm	r3, {r2, r3}
  315412: 980b         	ldr	r0, [sp, #0x2c]
  315414: f000 fd40    	bl	0x315e98 <EffectsManager::addProxyNade(cpVect, std::string, int, int)> @ imm = #0xa80
  315418: ab0d         	add	r3, sp, #0x34
  31541a: 4618         	mov	r0, r3
  31541c: f0a0 f27a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a04f4
  315420: ab0c         	add	r3, sp, #0x30
  315422: 4618         	mov	r0, r3
  315424: f074 f7ea    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474fd4
  315428: e072         	b	0x315510 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x33c> @ imm = #0xe4
  31542a: 9814         	ldr	r0, [sp, #0x50]
  31542c: f7c7 fc22    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x387bc
  315430: 4604         	mov	r4, r0
  315432: 9816         	ldr	r0, [sp, #0x58]
  315434: f284 fa78    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2844f0
  315438: 4605         	mov	r5, r0
  31543a: ab0c         	add	r3, sp, #0x30
  31543c: 4618         	mov	r0, r3
  31543e: f074 f7d9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x474fb2
  315442: aa0d         	add	r2, sp, #0x34
  315444: ab0c         	add	r3, sp, #0x30
  315446: 4610         	mov	r0, r2
  315448: 4629         	mov	r1, r5
  31544a: 461a         	mov	r2, r3
  31544c: f0a1 f308    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a1610
  315450: 9813         	ldr	r0, [sp, #0x4c]
  315452: f7d7 fcff    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x28602
  315456: 4603         	mov	r3, r0
  315458: 9402         	str	r4, [sp, #0x8]
  31545a: aa0d         	add	r2, sp, #0x34
  31545c: 9203         	str	r2, [sp, #0xc]
  31545e: 9304         	str	r3, [sp, #0x10]
  315460: 2301         	movs	r3, #0x1
  315462: 9305         	str	r3, [sp, #0x14]
  315464: 466b         	mov	r3, sp
  315466: aa1a         	add	r2, sp, #0x68
  315468: e892 0003    	ldm.w	r2, {r0, r1}
  31546c: e883 0003    	stm.w	r3, {r0, r1}
  315470: ab18         	add	r3, sp, #0x60
  315472: cb0c         	ldm	r3, {r2, r3}
  315474: 980b         	ldr	r0, [sp, #0x2c]
  315476: f000 faeb    	bl	0x315a50 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)> @ imm = #0x5d6
  31547a: 4603         	mov	r3, r0
  31547c: 9317         	str	r3, [sp, #0x5c]
  31547e: ab0d         	add	r3, sp, #0x34
  315480: 4618         	mov	r0, r3
  315482: f0a0 f247    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a048e
  315486: ab0c         	add	r3, sp, #0x30
  315488: 4618         	mov	r0, r3
  31548a: f074 f7b7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474f6e
  31548e: 9b17         	ldr	r3, [sp, #0x5c]
  315490: 2b00         	cmp	r3, #0x0
  315492: d004         	beq	0x31549e <EffectsManager::onExplosion(cocos2d::CCObject*)+0x2ca> @ imm = #0x8
  315494: 9817         	ldr	r0, [sp, #0x5c]
  315496: f04f 0100    	mov.w	r1, #0x0
  31549a: f007 fdbd    	bl	0x31d018 <Explosion::applyDamage(float)> @ imm = #0x7b7a
  31549e: bf00         	nop
  3154a0: e036         	b	0x315510 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x33c> @ imm = #0x6c
  3154a2: ab0d         	add	r3, sp, #0x34
  3154a4: 4618         	mov	r0, r3
  3154a6: f0a0 f235    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a046a
  3154aa: e7ff         	b	0x3154ac <EffectsManager::onExplosion(cocos2d::CCObject*)+0x2d8> @ imm = #-0x2
  3154ac: ab0c         	add	r3, sp, #0x30
  3154ae: 4618         	mov	r0, r3
  3154b0: f074 f7a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474f48
  3154b4: f072 f5fa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472bf4
  3154b8: ab0d         	add	r3, sp, #0x34
  3154ba: 4618         	mov	r0, r3
  3154bc: f0a0 f22a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0454
  3154c0: e7ff         	b	0x3154c2 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x2ee> @ imm = #-0x2
  3154c2: ab0c         	add	r3, sp, #0x30
  3154c4: 4618         	mov	r0, r3
  3154c6: f074 f799    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474f32
  3154ca: f072 f5ef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472bde
  3154ce: ab0d         	add	r3, sp, #0x34
  3154d0: 4618         	mov	r0, r3
  3154d2: f0a0 f21f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a043e
  3154d6: e7ff         	b	0x3154d8 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x304> @ imm = #-0x2
  3154d8: ab0c         	add	r3, sp, #0x30
  3154da: 4618         	mov	r0, r3
  3154dc: f074 f78e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474f1c
  3154e0: f072 f5e4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472bc8
  3154e4: ab0d         	add	r3, sp, #0x34
  3154e6: 4618         	mov	r0, r3
  3154e8: f0a0 f214    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0428
  3154ec: e7ff         	b	0x3154ee <EffectsManager::onExplosion(cocos2d::CCObject*)+0x31a> @ imm = #-0x2
  3154ee: ab0c         	add	r3, sp, #0x30
  3154f0: 4618         	mov	r0, r3
  3154f2: f074 f783    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474f06
  3154f6: f072 f5d9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472bb2
  3154fa: ab0d         	add	r3, sp, #0x34
  3154fc: 4618         	mov	r0, r3
  3154fe: f0a0 f209    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0412
  315502: e7ff         	b	0x315504 <EffectsManager::onExplosion(cocos2d::CCObject*)+0x330> @ imm = #-0x2
  315504: ab0c         	add	r3, sp, #0x30
  315506: 4618         	mov	r0, r3
  315508: f074 f778    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474ef0
  31550c: f072 f5ce    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472b9c
  315510: b020         	add	sp, #0x80
  315512: ecbd 8b02    	vpop	{d8}
  315516: bd70         	pop	{r4, r5, r6, pc}

// ==== EffectsManager::onPlasmaField
//      file offset 0x315518 (= ELF address; Ghidra 0x325518), 108 bytes, Thumb-2
  315518: b510         	push	{r4, lr}
  31551a: b086         	sub	sp, #0x18
  31551c: 9001         	str	r0, [sp, #0x4]
  31551e: 9100         	str	r1, [sp]
  315520: 9b00         	ldr	r3, [sp]
  315522: 9304         	str	r3, [sp, #0x10]
  315524: 9804         	ldr	r0, [sp, #0x10]
  315526: 2100         	movs	r1, #0x0
  315528: f284 fdfa    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284bf4
  31552c: 4603         	mov	r3, r0
  31552e: 9305         	str	r3, [sp, #0x14]
  315530: 9805         	ldr	r0, [sp, #0x14]
  315532: f284 f9f9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2843f2
  315536: 4604         	mov	r4, r0
  315538: ab02         	add	r3, sp, #0x8
  31553a: 4618         	mov	r0, r3
  31553c: f074 f75a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x474eb4
  315540: aa03         	add	r2, sp, #0xc
  315542: ab02         	add	r3, sp, #0x8
  315544: 4610         	mov	r0, r2
  315546: 4621         	mov	r1, r4
  315548: 461a         	mov	r2, r3
  31554a: f0a1 f289    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a1512
  31554e: ab03         	add	r3, sp, #0xc
  315550: 9801         	ldr	r0, [sp, #0x4]
  315552: 4619         	mov	r1, r3
  315554: f000 fd66    	bl	0x316024 <EffectsManager::addPlasmaField(std::string)> @ imm = #0xacc
  315558: ab03         	add	r3, sp, #0xc
  31555a: 4618         	mov	r0, r3
  31555c: f0a0 f1da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a03b4
  315560: ab02         	add	r3, sp, #0x8
  315562: 4618         	mov	r0, r3
  315564: f074 f74a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474e94
  315568: e00a         	b	0x315580 <EffectsManager::onPlasmaField(cocos2d::CCObject*)+0x68> @ imm = #0x14
  31556a: ab03         	add	r3, sp, #0xc
  31556c: 4618         	mov	r0, r3
  31556e: f0a0 f1d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a03a2
  315572: e7ff         	b	0x315574 <EffectsManager::onPlasmaField(cocos2d::CCObject*)+0x5c> @ imm = #-0x2
  315574: ab02         	add	r3, sp, #0x8
  315576: 4618         	mov	r0, r3
  315578: f074 f740    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x474e80
  31557c: f072 f596    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472b2c
  315580: b006         	add	sp, #0x18
  315582: bd10         	pop	{r4, pc}

// ==== EffectsManager::onPlayerDead
//      file offset 0x315588 (= ELF address; Ghidra 0x325588), 560 bytes, Thumb-2
  315588: b570         	push	{r4, r5, r6, lr}
  31558a: b09c         	sub	sp, #0x70
  31558c: 9007         	str	r0, [sp, #0x1c]
  31558e: 9106         	str	r1, [sp, #0x18]
  315590: 4c87         	ldr	r4, [pc, #0x21c]        @ 0x3157b0 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x228>
  315592: 447c         	add	r4, pc
  315594: 9b06         	ldr	r3, [sp, #0x18]
  315596: 930a         	str	r3, [sp, #0x28]
  315598: 9b0a         	ldr	r3, [sp, #0x28]
  31559a: 681b         	ldr	r3, [r3]
  31559c: f503 73d6    	add.w	r3, r3, #0x1ac
  3155a0: 681b         	ldr	r3, [r3]
  3155a2: aa0c         	add	r2, sp, #0x30
  3155a4: 4610         	mov	r0, r2
  3155a6: 990a         	ldr	r1, [sp, #0x28]
  3155a8: 4798         	blx	r3
  3155aa: ab10         	add	r3, sp, #0x40
  3155ac: 4618         	mov	r0, r3
  3155ae: ed9f 0b7e    	vldr	d0, [pc, #504]          @ 0x3157a8 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x220>
  3155b2: ed9f 1b7d    	vldr	d1, [pc, #500]          @ 0x3157a8 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x220>
  3155b6: f7fd fcd3    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x265a
  3155ba: 466d         	mov	r5, sp
  3155bc: ab10         	add	r3, sp, #0x40
  3155be: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3155c0: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3155c4: ab0c         	add	r3, sp, #0x30
  3155c6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3155c8: f7fd fe56    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x2354
  3155cc: 4603         	mov	r3, r0
  3155ce: f083 0301    	eor	r3, r3, #0x1
  3155d2: b2db         	uxtb	r3, r3
  3155d4: 2b00         	cmp	r3, #0x0
  3155d6: d000         	beq	0x3155da <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x52> @ imm = #0x0
  3155d8: e0e0         	b	0x31579c <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x214> @ imm = #0x1c0
  3155da: 9b0a         	ldr	r3, [sp, #0x28]
  3155dc: 2b00         	cmp	r3, #0x0
  3155de: f000 80dd    	beq.w	0x31579c <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x214> @ imm = #0x1ba
  3155e2: 9b0a         	ldr	r3, [sp, #0x28]
  3155e4: 681b         	ldr	r3, [r3]
  3155e6: f503 73ec    	add.w	r3, r3, #0x1d8
  3155ea: 681b         	ldr	r3, [r3]
  3155ec: 980a         	ldr	r0, [sp, #0x28]
  3155ee: 4798         	blx	r3
  3155f0: 4603         	mov	r3, r0
  3155f2: 4618         	mov	r0, r3
  3155f4: f7fe fb72    	bl	0x313cdc <SoldierView::getBlood()> @ imm = #-0x191c
  3155f8: 4603         	mov	r3, r0
  3155fa: f88d 3027    	strb.w	r3, [sp, #0x27]
  3155fe: f89d 3027    	ldrb.w	r3, [sp, #0x27]
  315602: 2b00         	cmp	r3, #0x0
  315604: d015         	beq	0x315632 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0xaa> @ imm = #0x2a
  315606: 9b0a         	ldr	r3, [sp, #0x28]
  315608: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  31560c: f04f 0200    	mov.w	r2, #0x0
  315610: f2c4 3248    	movt	r2, #0x4348
  315614: 9202         	str	r2, [sp, #0x8]
  315616: f04f 4282    	mov.w	r2, #0x41000000
  31561a: 9203         	str	r2, [sp, #0xc]
  31561c: 466a         	mov	r2, sp
  31561e: f103 0130    	add.w	r1, r3, #0x30
  315622: c903         	ldm	r1, {r0, r1}
  315624: e882 0003    	stm.w	r2, {r0, r1}
  315628: 3328         	adds	r3, #0x28
  31562a: cb0c         	ldm	r3, {r2, r3}
  31562c: 9807         	ldr	r0, [sp, #0x1c]
  31562e: f000 fd43    	bl	0x3160b8 <EffectsManager::addBloodAt(cpVect, float, float)> @ imm = #0xa86
  315632: 9b07         	ldr	r3, [sp, #0x1c]
  315634: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  315638: 1c5a         	adds	r2, r3, #0x1
  31563a: 9b07         	ldr	r3, [sp, #0x1c]
  31563c: f8c3 2120    	str.w	r2, [r3, #0x120]
  315640: 9b07         	ldr	r3, [sp, #0x1c]
  315642: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  315646: 461d         	mov	r5, r3
  315648: 9b07         	ldr	r3, [sp, #0x1c]
  31564a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  31564e: 4618         	mov	r0, r3
  315650: f284 fd46    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x284a8c
  315654: 4603         	mov	r3, r0
  315656: 429d         	cmp	r5, r3
  315658: bf34         	ite	lo
  31565a: 2300         	movlo	r3, #0x0
  31565c: 2301         	movhs	r3, #0x1
  31565e: b2db         	uxtb	r3, r3
  315660: 2b00         	cmp	r3, #0x0
  315662: d003         	beq	0x31566c <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0xe4> @ imm = #0x6
  315664: 9b07         	ldr	r3, [sp, #0x1c]
  315666: 2200         	movs	r2, #0x0
  315668: f8c3 2120    	str.w	r2, [r3, #0x120]
  31566c: 9b07         	ldr	r3, [sp, #0x1c]
  31566e: f8d3 20f8    	ldr.w	r2, [r3, #0xf8]
  315672: 9b07         	ldr	r3, [sp, #0x1c]
  315674: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  315678: 4610         	mov	r0, r2
  31567a: 4619         	mov	r1, r3
  31567c: f284 fd50    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284aa0
  315680: 4603         	mov	r3, r0
  315682: 930b         	str	r3, [sp, #0x2c]
  315684: f89d 3027    	ldrb.w	r3, [sp, #0x27]
  315688: 980b         	ldr	r0, [sp, #0x2c]
  31568a: 4619         	mov	r1, r3
  31568c: f7fe fb36    	bl	0x313cfc <PlayerDeath::setBlood(bool)> @ imm = #-0x1994
  315690: 9b0a         	ldr	r3, [sp, #0x28]
  315692: 681b         	ldr	r3, [r3]
  315694: f503 73e0    	add.w	r3, r3, #0x1c0
  315698: 681b         	ldr	r3, [r3]
  31569a: aa14         	add	r2, sp, #0x50
  31569c: 4610         	mov	r0, r2
  31569e: 990a         	ldr	r1, [sp, #0x28]
  3156a0: 4798         	blx	r3
  3156a2: 4b44         	ldr	r3, [pc, #0x110]        @ 0x3157b4 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x22c>
  3156a4: 58e3         	ldr	r3, [r4, r3]
  3156a6: 681b         	ldr	r3, [r3]
  3156a8: 681b         	ldr	r3, [r3]
  3156aa: f503 73e0    	add.w	r3, r3, #0x1c0
  3156ae: 681b         	ldr	r3, [r3]
  3156b0: 4a40         	ldr	r2, [pc, #0x100]        @ 0x3157b4 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x22c>
  3156b2: 58a2         	ldr	r2, [r4, r2]
  3156b4: 6812         	ldr	r2, [r2]
  3156b6: a918         	add	r1, sp, #0x60
  3156b8: 4608         	mov	r0, r1
  3156ba: 4611         	mov	r1, r2
  3156bc: 4798         	blx	r3
  3156be: aa14         	add	r2, sp, #0x50
  3156c0: ab18         	add	r3, sp, #0x60
  3156c2: 4610         	mov	r0, r2
  3156c4: 4619         	mov	r1, r3
  3156c6: f09f f7d9    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x49ffb2
  3156ca: 4603         	mov	r3, r0
  3156cc: 2b00         	cmp	r3, #0x0
  3156ce: bf14         	ite	ne
  3156d0: 2300         	movne	r3, #0x0
  3156d2: 2301         	moveq	r3, #0x1
  3156d4: b2dc         	uxtb	r4, r3
  3156d6: ab18         	add	r3, sp, #0x60
  3156d8: 4618         	mov	r0, r3
  3156da: f0a0 f11b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0236
  3156de: ab14         	add	r3, sp, #0x50
  3156e0: 4618         	mov	r0, r3
  3156e2: f0a0 f117    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a022e
  3156e6: 2c00         	cmp	r4, #0x0
  3156e8: d021         	beq	0x31572e <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x1a6> @ imm = #0x42
  3156ea: 9b0a         	ldr	r3, [sp, #0x28]
  3156ec: 681b         	ldr	r3, [r3]
  3156ee: f503 73ec    	add.w	r3, r3, #0x1d8
  3156f2: 681b         	ldr	r3, [r3]
  3156f4: 980a         	ldr	r0, [sp, #0x28]
  3156f6: 4798         	blx	r3
  3156f8: 4606         	mov	r6, r0
  3156fa: 9b0a         	ldr	r3, [sp, #0x28]
  3156fc: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  315700: 9b0a         	ldr	r3, [sp, #0x28]
  315702: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  315706: ad02         	add	r5, sp, #0x8
  315708: 3338         	adds	r3, #0x38
  31570a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31570c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  315710: 466b         	mov	r3, sp
  315712: f104 0230    	add.w	r2, r4, #0x30
  315716: e892 0003    	ldm.w	r2, {r0, r1}
  31571a: e883 0003    	stm.w	r3, {r0, r1}
  31571e: f104 0328    	add.w	r3, r4, #0x28
  315722: cb0c         	ldm	r3, {r2, r3}
  315724: 980b         	ldr	r0, [sp, #0x2c]
  315726: 4631         	mov	r1, r6
  315728: f081 f99c    	bl	0x396a64 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)> @ imm = #0x81338
  31572c: e037         	b	0x31579e <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x216> @ imm = #0x6e
  31572e: 9b0a         	ldr	r3, [sp, #0x28]
  315730: 681b         	ldr	r3, [r3]
  315732: f503 73ec    	add.w	r3, r3, #0x1d8
  315736: 681b         	ldr	r3, [r3]
  315738: 980a         	ldr	r0, [sp, #0x28]
  31573a: 4798         	blx	r3
  31573c: 4605         	mov	r5, r0
  31573e: 9b0a         	ldr	r3, [sp, #0x28]
  315740: 681b         	ldr	r3, [r3]
  315742: f503 73d6    	add.w	r3, r3, #0x1ac
  315746: 681b         	ldr	r3, [r3]
  315748: aa14         	add	r2, sp, #0x50
  31574a: 4610         	mov	r0, r2
  31574c: 990a         	ldr	r1, [sp, #0x28]
  31574e: 4798         	blx	r3
  315750: 9b0a         	ldr	r3, [sp, #0x28]
  315752: 681b         	ldr	r3, [r3]
  315754: f503 73d8    	add.w	r3, r3, #0x1b0
  315758: 681b         	ldr	r3, [r3]
  31575a: aa18         	add	r2, sp, #0x60
  31575c: 4610         	mov	r0, r2
  31575e: 990a         	ldr	r1, [sp, #0x28]
  315760: 4798         	blx	r3
  315762: ac02         	add	r4, sp, #0x8
  315764: ab18         	add	r3, sp, #0x60
  315766: cb0f         	ldm	r3, {r0, r1, r2, r3}
  315768: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31576c: 466b         	mov	r3, sp
  31576e: aa16         	add	r2, sp, #0x58
  315770: e892 0003    	ldm.w	r2, {r0, r1}
  315774: e883 0003    	stm.w	r3, {r0, r1}
  315778: ab14         	add	r3, sp, #0x50
  31577a: cb0c         	ldm	r3, {r2, r3}
  31577c: 980b         	ldr	r0, [sp, #0x2c]
  31577e: 4629         	mov	r1, r5
  315780: f081 f970    	bl	0x396a64 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)> @ imm = #0x812e0
  315784: e00b         	b	0x31579e <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x216> @ imm = #0x16
  315786: ab18         	add	r3, sp, #0x60
  315788: 4618         	mov	r0, r3
  31578a: f0a0 f0c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a0186
  31578e: e7ff         	b	0x315790 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x208> @ imm = #-0x2
  315790: ab14         	add	r3, sp, #0x50
  315792: 4618         	mov	r0, r3
  315794: f0a0 f0be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a017c
  315798: f072 f488    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472910
  31579c: bf00         	nop
  31579e: b01c         	add	sp, #0x70
  3157a0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3157a1); words below are literal-pool data ---
  3157a2: bf00         	nop
  3157a4: f3af 8000    	nop.w
  3157a8: 0000         	movs	r0, r0
  3157aa: 0000         	movs	r0, r0
  3157ac: c000         	<unknown>
  3157ae: 4062         	eors	r2, r4
  3157b0: d476         	bmi	0x3158a0 <EffectsManager::addSplatterAt(cpVect, double)+0xe8> @ imm = #0xec
  3157b2: 0061         	lsls	r1, r4, #0x1
  3157b4: d784         	bvc	0x3156c0 <EffectsManager::onPlayerDead(cocos2d::CCObject*)+0x138> @ imm = #-0xf8
  3157b6: ffff b082    	<unknown>

// ==== EffectsManager::addSplatterAt
//      file offset 0x3157b8 (= ELF address; Ghidra 0x3257b8), 320 bytes, Thumb-2
  3157b8: b082         	sub	sp, #0x8
  3157ba: b530         	push	{r4, r5, lr}
  3157bc: b08d         	sub	sp, #0x34
  3157be: 9005         	str	r0, [sp, #0x14]
  3157c0: a910         	add	r1, sp, #0x40
  3157c2: e881 000c    	stm.w	r1, {r2, r3}
  3157c6: 9b05         	ldr	r3, [sp, #0x14]
  3157c8: f893 3138    	ldrb.w	r3, [r3, #0x138]
  3157cc: f083 0301    	eor	r3, r3, #0x1
  3157d0: b2db         	uxtb	r3, r3
  3157d2: 2b00         	cmp	r3, #0x0
  3157d4: d118         	bne	0x315808 <EffectsManager::addSplatterAt(cpVect, double)+0x50> @ imm = #0x30
  3157d6: ab08         	add	r3, sp, #0x20
  3157d8: 4618         	mov	r0, r3
  3157da: eeb3 0b09    	vmov.f64	d0, #2.500000e+01
  3157de: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  3157e2: f7fd fbbd    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x2886
  3157e6: 466c         	mov	r4, sp
  3157e8: ab08         	add	r3, sp, #0x20
  3157ea: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3157ec: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3157f0: f10d 0c40    	add.w	r12, sp, #0x40
  3157f4: e89c 000f    	ldm.w	r12, {r0, r1, r2, r3}
  3157f8: f7fd fd3e    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x2584
  3157fc: 4603         	mov	r3, r0
  3157fe: f083 0301    	eor	r3, r3, #0x1
  315802: b2db         	uxtb	r3, r3
  315804: 2b00         	cmp	r3, #0x0
  315806: d001         	beq	0x31580c <EffectsManager::addSplatterAt(cpVect, double)+0x54> @ imm = #0x2
  315808: 2301         	movs	r3, #0x1
  31580a: e000         	b	0x31580e <EffectsManager::addSplatterAt(cpVect, double)+0x56> @ imm = #0x0
  31580c: 2300         	movs	r3, #0x0
  31580e: 2b00         	cmp	r3, #0x0
  315810: d000         	beq	0x315814 <EffectsManager::addSplatterAt(cpVect, double)+0x5c> @ imm = #0x0
  315812: e06c         	b	0x3158ee <EffectsManager::addSplatterAt(cpVect, double)+0x136> @ imm = #0xd8
  315814: 9b05         	ldr	r3, [sp, #0x14]
  315816: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31581a: 681b         	ldr	r3, [r3]
  31581c: 334c         	adds	r3, #0x4c
  31581e: 681c         	ldr	r4, [r3]
  315820: 9b05         	ldr	r3, [sp, #0x14]
  315822: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  315826: ed9d 7b10    	vldr	d7, [sp, #64]
  31582a: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31582e: ed9d 7b12    	vldr	d7, [sp, #72]
  315832: eef7 7bc7    	vcvt.f32.f64	s15, d7
  315836: ab06         	add	r3, sp, #0x18
  315838: 4618         	mov	r0, r3
  31583a: ee16 1a90    	vmov	r1, s13
  31583e: ee17 2a90    	vmov	r2, s15
  315842: f27d fa55    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27d4aa
  315846: ab06         	add	r3, sp, #0x18
  315848: 4628         	mov	r0, r5
  31584a: 4619         	mov	r1, r3
  31584c: 47a0         	blx	r4
  31584e: 9b05         	ldr	r3, [sp, #0x14]
  315850: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  315854: 681b         	ldr	r3, [r3]
  315856: 3398         	adds	r3, #0x98
  315858: 681b         	ldr	r3, [r3]
  31585a: 9a05         	ldr	r2, [sp, #0x14]
  31585c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  315860: ed9d 7b14    	vldr	d7, [sp, #80]
  315864: eef7 7bc7    	vcvt.f32.f64	s15, d7
  315868: 4610         	mov	r0, r2
  31586a: ee17 1a90    	vmov	r1, s15
  31586e: 4798         	blx	r3
  315870: 9b05         	ldr	r3, [sp, #0x14]
  315872: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  315876: 681b         	ldr	r3, [r3]
  315878: 3338         	adds	r3, #0x38
  31587a: 681c         	ldr	r4, [r3]
  31587c: 9b05         	ldr	r3, [sp, #0x14]
  31587e: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  315882: 9b05         	ldr	r3, [sp, #0x14]
  315884: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  315888: 681b         	ldr	r3, [r3]
  31588a: 333c         	adds	r3, #0x3c
  31588c: 681b         	ldr	r3, [r3]
  31588e: 9a05         	ldr	r2, [sp, #0x14]
  315890: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  315894: 4610         	mov	r0, r2
  315896: 4798         	blx	r3
  315898: 4603         	mov	r3, r0
  31589a: f083 4300    	eor	r3, r3, #0x80000000
  31589e: 4628         	mov	r0, r5
  3158a0: 4619         	mov	r1, r3
  3158a2: 47a0         	blx	r4
  3158a4: 9b05         	ldr	r3, [sp, #0x14]
  3158a6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3158aa: 681b         	ldr	r3, [r3]
  3158ac: 3390         	adds	r3, #0x90
  3158ae: 681b         	ldr	r3, [r3]
  3158b0: 9a05         	ldr	r2, [sp, #0x14]
  3158b2: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3158b6: 4610         	mov	r0, r2
  3158b8: 2101         	movs	r1, #0x1
  3158ba: 4798         	blx	r3
  3158bc: f04f 0300    	mov.w	r3, #0x0
  3158c0: f2c4 3348    	movt	r3, #0x4348
  3158c4: 9302         	str	r3, [sp, #0x8]
  3158c6: f04f 4382    	mov.w	r3, #0x41000000
  3158ca: 9303         	str	r3, [sp, #0xc]
  3158cc: 466b         	mov	r3, sp
  3158ce: aa12         	add	r2, sp, #0x48
  3158d0: e892 0003    	ldm.w	r2, {r0, r1}
  3158d4: e883 0003    	stm.w	r3, {r0, r1}
  3158d8: a910         	add	r1, sp, #0x40
  3158da: e891 000c    	ldm.w	r1, {r2, r3}
  3158de: 9805         	ldr	r0, [sp, #0x14]
  3158e0: f000 fbea    	bl	0x3160b8 <EffectsManager::addBloodAt(cpVect, float, float)> @ imm = #0x7d4
  3158e4: 9b05         	ldr	r3, [sp, #0x14]
  3158e6: f04f 0200    	mov.w	r2, #0x0
  3158ea: f8c3 2114    	str.w	r2, [r3, #0x114]
  3158ee: b00d         	add	sp, #0x34
  3158f0: e8bd 4030    	pop.w	{r4, r5, lr}
  3158f4: b002         	add	sp, #0x8
  3158f6: 4770         	bx	lr

// ==== EffectsManager::addSparkAt
//      file offset 0x3158f8 (= ELF address; Ghidra 0x3258f8), 344 bytes, Thumb-2
  3158f8: b082         	sub	sp, #0x8
  3158fa: b530         	push	{r4, r5, lr}
  3158fc: b08d         	sub	sp, #0x34
  3158fe: 9005         	str	r0, [sp, #0x14]
  315900: a910         	add	r1, sp, #0x40
  315902: e881 000c    	stm.w	r1, {r2, r3}
  315906: 4a50         	ldr	r2, [pc, #0x140]        @ 0x315a48 <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)+0x150>
  315908: 447a         	add	r2, pc
  31590a: 4b50         	ldr	r3, [pc, #0x140]        @ 0x315a4c <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)+0x154>
  31590c: 58d3         	ldr	r3, [r2, r3]
  31590e: 681c         	ldr	r4, [r3]
  315910: f7fd faf2    	bl	0x312ef8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x120> @ imm = #-0x2a1c
  315914: 4603         	mov	r3, r0
  315916: ee07 3a90    	vmov	s15, r3
  31591a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  31591e: eddf 7a49    	vldr	s15, [pc, #292]         @ 0x315a44 <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)+0x14c>
  315922: ee87 7a27    	vdiv.f32	s14, s14, s15
  315926: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  31592a: ee77 7a67    	vsub.f32	s15, s14, s15
  31592e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  315932: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  315936: ee26 6b07    	vmul.f64	d6, d6, d7
  31593a: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  31593e: ee36 7b07    	vadd.f64	d7, d6, d7
  315942: eef7 7bc7    	vcvt.f32.f64	s15, d7
  315946: f04f 537e    	mov.w	r3, #0x3f800000
  31594a: 9302         	str	r3, [sp, #0x8]
  31594c: edcd 7a03    	vstr	s15, [sp, #12]
  315950: 466b         	mov	r3, sp
  315952: aa12         	add	r2, sp, #0x48
  315954: e892 0003    	ldm.w	r2, {r0, r1}
  315958: e883 0003    	stm.w	r3, {r0, r1}
  31595c: a910         	add	r1, sp, #0x40
  31595e: e891 000c    	ldm.w	r1, {r2, r3}
  315962: 4620         	mov	r0, r4
  315964: 210c         	movs	r1, #0xc
  315966: f0e2 fb6d    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0xe26da
  31596a: ab08         	add	r3, sp, #0x20
  31596c: 4618         	mov	r0, r3
  31596e: eeb3 0b09    	vmov.f64	d0, #2.500000e+01
  315972: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  315976: f7fd faf3    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x2a1a
  31597a: 466c         	mov	r4, sp
  31597c: ab08         	add	r3, sp, #0x20
  31597e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  315980: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  315984: f10d 0c40    	add.w	r12, sp, #0x40
  315988: e89c 000f    	ldm.w	r12, {r0, r1, r2, r3}
  31598c: f7fd fc74    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x2718
  315990: 4603         	mov	r3, r0
  315992: f083 0301    	eor	r3, r3, #0x1
  315996: b2db         	uxtb	r3, r3
  315998: 2b00         	cmp	r3, #0x0
  31599a: d000         	beq	0x31599e <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)+0xa6> @ imm = #0x0
  31599c: e04c         	b	0x315a38 <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)+0x140> @ imm = #0x98
  31599e: 9b05         	ldr	r3, [sp, #0x14]
  3159a0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3159a4: 681b         	ldr	r3, [r3]
  3159a6: 334c         	adds	r3, #0x4c
  3159a8: 681c         	ldr	r4, [r3]
  3159aa: 9b05         	ldr	r3, [sp, #0x14]
  3159ac: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3159b0: ed9d 7b10    	vldr	d7, [sp, #64]
  3159b4: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3159b8: ed9d 7b12    	vldr	d7, [sp, #72]
  3159bc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3159c0: ab06         	add	r3, sp, #0x18
  3159c2: 4618         	mov	r0, r3
  3159c4: ee16 1a90    	vmov	r1, s13
  3159c8: ee17 2a90    	vmov	r2, s15
  3159cc: f27d f990    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27d320
  3159d0: ab06         	add	r3, sp, #0x18
  3159d2: 4628         	mov	r0, r5
  3159d4: 4619         	mov	r1, r3
  3159d6: 47a0         	blx	r4
  3159d8: 9b05         	ldr	r3, [sp, #0x14]
  3159da: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3159de: 681b         	ldr	r3, [r3]
  3159e0: 3398         	adds	r3, #0x98
  3159e2: 681b         	ldr	r3, [r3]
  3159e4: 9a05         	ldr	r2, [sp, #0x14]
  3159e6: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3159ea: ed9d 7b14    	vldr	d7, [sp, #80]
  3159ee: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3159f2: 4610         	mov	r0, r2
  3159f4: ee17 1a90    	vmov	r1, s15
  3159f8: 4798         	blx	r3
  3159fa: 9b05         	ldr	r3, [sp, #0x14]
  3159fc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  315a00: 681b         	ldr	r3, [r3]
  315a02: 3390         	adds	r3, #0x90
  315a04: 681b         	ldr	r3, [r3]
  315a06: 9a05         	ldr	r2, [sp, #0x14]
  315a08: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  315a0c: 4610         	mov	r0, r2
  315a0e: 2101         	movs	r1, #0x1
  315a10: 4798         	blx	r3
  315a12: 9b05         	ldr	r3, [sp, #0x14]
  315a14: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  315a18: 681b         	ldr	r3, [r3]
  315a1a: f503 73de    	add.w	r3, r3, #0x1bc
  315a1e: 681b         	ldr	r3, [r3]
  315a20: 9a05         	ldr	r2, [sp, #0x14]
  315a22: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  315a26: aa16         	add	r2, sp, #0x58
  315a28: 4608         	mov	r0, r1
  315a2a: 4611         	mov	r1, r2
  315a2c: 4798         	blx	r3
  315a2e: 9b05         	ldr	r3, [sp, #0x14]
  315a30: f04f 0200    	mov.w	r2, #0x0
  315a34: f8c3 2118    	str.w	r2, [r3, #0x118]
  315a38: b00d         	add	sp, #0x34
  315a3a: e8bd 4030    	pop.w	{r4, r5, lr}
  315a3e: b002         	add	sp, #0x8
  315a40: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x315a41); words below are literal-pool data ---
  315a42: bf00         	nop
  315a44: 0000         	movs	r0, r0
  315a46: 4e80         	ldr	r6, [pc, #0x200]        @ 0x315c48 <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)>
  315a48: d100         	bne	0x315a4c <EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B)+0x154> @ imm = #0x0
  315a4a: 0061         	lsls	r1, r4, #0x1
  315a4c: d730         	bvc	0x315ab0 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x60> @ imm = #0x60
  315a4e: ffff b082    	<unknown>

// ==== EffectsManager::addExplosionAt
//      file offset 0x315a50 (= ELF address; Ghidra 0x325a50), 504 bytes, Thumb-2
  315a50: b082         	sub	sp, #0x8
  315a52: b510         	push	{r4, lr}
  315a54: ed2d 8b02    	vpush	{d8}
  315a58: b092         	sub	sp, #0x48
  315a5a: 9005         	str	r0, [sp, #0x14]
  315a5c: a916         	add	r1, sp, #0x58
  315a5e: e881 000c    	stm.w	r1, {r2, r3}
  315a62: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x315c40 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1f0>
  315a64: 447a         	add	r2, pc
  315a66: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x315c44 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1f4>
  315a68: 58d3         	ldr	r3, [r2, r3]
  315a6a: 681c         	ldr	r4, [r3]
  315a6c: f04f 537e    	mov.w	r3, #0x3f800000
  315a70: 9302         	str	r3, [sp, #0x8]
  315a72: f04f 537e    	mov.w	r3, #0x3f800000
  315a76: 9303         	str	r3, [sp, #0xc]
  315a78: 466b         	mov	r3, sp
  315a7a: aa18         	add	r2, sp, #0x60
  315a7c: e892 0003    	ldm.w	r2, {r0, r1}
  315a80: e883 0003    	stm.w	r3, {r0, r1}
  315a84: f10d 0c58    	add.w	r12, sp, #0x58
  315a88: e89c 000c    	ldm.w	r12, {r2, r3}
  315a8c: 4620         	mov	r0, r4
  315a8e: 2109         	movs	r1, #0x9
  315a90: f0e2 fad8    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0xe25b0
  315a94: ab0e         	add	r3, sp, #0x38
  315a96: 4618         	mov	r0, r3
  315a98: ed9f 0b67    	vldr	d0, [pc, #412]          @ 0x315c38 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1e8>
  315a9c: ed9f 1b66    	vldr	d1, [pc, #408]          @ 0x315c38 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1e8>
  315aa0: f7fd fa5e    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x2b44
  315aa4: 466c         	mov	r4, sp
  315aa6: ab0e         	add	r3, sp, #0x38
  315aa8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  315aaa: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  315aae: f10d 0c58    	add.w	r12, sp, #0x58
  315ab2: e89c 000f    	ldm.w	r12, {r0, r1, r2, r3}
  315ab6: f7fd fbdf    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x2842
  315aba: 4603         	mov	r3, r0
  315abc: f083 0301    	eor	r3, r3, #0x1
  315ac0: b2db         	uxtb	r3, r3
  315ac2: 2b00         	cmp	r3, #0x0
  315ac4: d001         	beq	0x315aca <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x7a> @ imm = #0x2
  315ac6: 2300         	movs	r3, #0x0
  315ac8: e0ab         	b	0x315c22 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1d2> @ imm = #0x156
  315aca: 9b05         	ldr	r3, [sp, #0x14]
  315acc: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  315ad0: 1c5a         	adds	r2, r3, #0x1
  315ad2: 9b05         	ldr	r3, [sp, #0x14]
  315ad4: f8c3 211c    	str.w	r2, [r3, #0x11c]
  315ad8: 9b05         	ldr	r3, [sp, #0x14]
  315ada: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  315ade: 461c         	mov	r4, r3
  315ae0: 9b05         	ldr	r3, [sp, #0x14]
  315ae2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  315ae6: 4618         	mov	r0, r3
  315ae8: f284 fafa    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2845f4
  315aec: 4603         	mov	r3, r0
  315aee: 429c         	cmp	r4, r3
  315af0: bf34         	ite	lo
  315af2: 2300         	movlo	r3, #0x0
  315af4: 2301         	movhs	r3, #0x1
  315af6: b2db         	uxtb	r3, r3
  315af8: 2b00         	cmp	r3, #0x0
  315afa: d003         	beq	0x315b04 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0xb4> @ imm = #0x6
  315afc: 9b05         	ldr	r3, [sp, #0x14]
  315afe: 2200         	movs	r2, #0x0
  315b00: f8c3 211c    	str.w	r2, [r3, #0x11c]
  315b04: 9b05         	ldr	r3, [sp, #0x14]
  315b06: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  315b0a: 9b05         	ldr	r3, [sp, #0x14]
  315b0c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  315b10: 4610         	mov	r0, r2
  315b12: 4619         	mov	r1, r3
  315b14: f284 fb04    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x284608
  315b18: 4603         	mov	r3, r0
  315b1a: 9308         	str	r3, [sp, #0x20]
  315b1c: 9b08         	ldr	r3, [sp, #0x20]
  315b1e: 681b         	ldr	r3, [r3]
  315b20: 3340         	adds	r3, #0x40
  315b22: 681b         	ldr	r3, [r3]
  315b24: 9a08         	ldr	r2, [sp, #0x20]
  315b26: 4610         	mov	r0, r2
  315b28: 991a         	ldr	r1, [sp, #0x68]
  315b2a: 4798         	blx	r3
  315b2c: ab0a         	add	r3, sp, #0x28
  315b2e: 4618         	mov	r0, r3
  315b30: 991b         	ldr	r1, [sp, #0x6c]
  315b32: f0a0 f4d9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4a09b2
  315b36: ab0a         	add	r3, sp, #0x28
  315b38: 9302         	str	r3, [sp, #0x8]
  315b3a: 9b1c         	ldr	r3, [sp, #0x70]
  315b3c: 9303         	str	r3, [sp, #0xc]
  315b3e: 466b         	mov	r3, sp
  315b40: aa18         	add	r2, sp, #0x60
  315b42: e892 0003    	ldm.w	r2, {r0, r1}
  315b46: e883 0003    	stm.w	r3, {r0, r1}
  315b4a: a916         	add	r1, sp, #0x58
  315b4c: e891 000c    	ldm.w	r1, {r2, r3}
  315b50: 9808         	ldr	r0, [sp, #0x20]
  315b52: f007 f981    	bl	0x31ce58 <Explosion::reset(cpVect, std::string, int)> @ imm = #0x7302
  315b56: ab0a         	add	r3, sp, #0x28
  315b58: 4618         	mov	r0, r3
  315b5a: f09f f6db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49fdb6
  315b5e: f89d 3074    	ldrb.w	r3, [sp, #0x74]
  315b62: 2b00         	cmp	r3, #0x0
  315b64: d055         	beq	0x315c12 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1c2> @ imm = #0xaa
  315b66: 2300         	movs	r3, #0x0
  315b68: 9307         	str	r3, [sp, #0x1c]
  315b6a: e043         	b	0x315bf4 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1a4> @ imm = #0x86
  315b6c: 9b05         	ldr	r3, [sp, #0x14]
  315b6e: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  315b72: 9b07         	ldr	r3, [sp, #0x1c]
  315b74: 4610         	mov	r0, r2
  315b76: 4619         	mov	r1, r3
  315b78: f284 fad2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2845a4
  315b7c: 4603         	mov	r3, r0
  315b7e: 9309         	str	r3, [sp, #0x24]
  315b80: 9b09         	ldr	r3, [sp, #0x24]
  315b82: 681b         	ldr	r3, [r3]
  315b84: 3350         	adds	r3, #0x50
  315b86: 681b         	ldr	r3, [r3]
  315b88: 9a09         	ldr	r2, [sp, #0x24]
  315b8a: 4610         	mov	r0, r2
  315b8c: 4798         	blx	r3
  315b8e: 4603         	mov	r3, r0
  315b90: edd3 7a00    	vldr	s15, [r3]
  315b94: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  315b98: 9b09         	ldr	r3, [sp, #0x24]
  315b9a: 681b         	ldr	r3, [r3]
  315b9c: 3350         	adds	r3, #0x50
  315b9e: 681b         	ldr	r3, [r3]
  315ba0: 9a09         	ldr	r2, [sp, #0x24]
  315ba2: 4610         	mov	r0, r2
  315ba4: 4798         	blx	r3
  315ba6: 4603         	mov	r3, r0
  315ba8: edd3 7a01    	vldr	s15, [r3, #4]
  315bac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  315bb0: ab0a         	add	r3, sp, #0x28
  315bb2: 4618         	mov	r0, r3
  315bb4: eeb0 0b48    	vmov.f64	d0, d8
  315bb8: eeb0 1b47    	vmov.f64	d1, d7
  315bbc: f7fd f9d0    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x2c60
  315bc0: f04f 0300    	mov.w	r3, #0x0
  315bc4: f2c4 3307    	movt	r3, #0x4307
  315bc8: 9302         	str	r3, [sp, #0x8]
  315bca: 466b         	mov	r3, sp
  315bcc: aa0c         	add	r2, sp, #0x30
  315bce: e892 0003    	ldm.w	r2, {r0, r1}
  315bd2: e883 0003    	stm.w	r3, {r0, r1}
  315bd6: ab0a         	add	r3, sp, #0x28
  315bd8: cb0c         	ldm	r3, {r2, r3}
  315bda: 9808         	ldr	r0, [sp, #0x20]
  315bdc: f007 f9d8    	bl	0x31cf90 <Explosion::checkCollision(cpVect, float)> @ imm = #0x73b0
  315be0: 4603         	mov	r3, r0
  315be2: 2b00         	cmp	r3, #0x0
  315be4: d003         	beq	0x315bee <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x19e> @ imm = #0x6
  315be6: 9809         	ldr	r0, [sp, #0x24]
  315be8: 2100         	movs	r1, #0x0
  315bea: f0a0 fb4d    	bl	0x3b6288 <ProxyMine::removeMine(bool)> @ imm = #0xa069a
  315bee: 9b07         	ldr	r3, [sp, #0x1c]
  315bf0: 3301         	adds	r3, #0x1
  315bf2: 9307         	str	r3, [sp, #0x1c]
  315bf4: 9c07         	ldr	r4, [sp, #0x1c]
  315bf6: 9b05         	ldr	r3, [sp, #0x14]
  315bf8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  315bfc: 4618         	mov	r0, r3
  315bfe: f284 fa6f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2844de
  315c02: 4603         	mov	r3, r0
  315c04: 429c         	cmp	r4, r3
  315c06: bf2c         	ite	hs
  315c08: 2300         	movhs	r3, #0x0
  315c0a: 2301         	movlo	r3, #0x1
  315c0c: b2db         	uxtb	r3, r3
  315c0e: 2b00         	cmp	r3, #0x0
  315c10: d1ac         	bne	0x315b6c <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x11c> @ imm = #-0xa8
  315c12: 9b08         	ldr	r3, [sp, #0x20]
  315c14: e005         	b	0x315c22 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)+0x1d2> @ imm = #0xa
  315c16: ab0a         	add	r3, sp, #0x28
  315c18: 4618         	mov	r0, r3
  315c1a: f09f f67b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49fcf6
  315c1e: f072 f245    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47248a
  315c22: 4618         	mov	r0, r3
  315c24: b012         	add	sp, #0x48
  315c26: ecbd 8b02    	vpop	{d8}
  315c2a: e8bd 4010    	pop.w	{r4, lr}
  315c2e: b002         	add	sp, #0x8
  315c30: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x315c31); words below are literal-pool data ---
  315c32: bf00         	nop
  315c34: f3af 8000    	nop.w
  315c38: 0000         	movs	r0, r0
  315c3a: 0000         	movs	r0, r0
  315c3c: c000         	<unknown>
  315c3e: 4062         	eors	r2, r4
  315c40: cfa4         	ldm	r7, {r2, r5, r7}
  315c42: 0061         	lsls	r1, r4, #0x1
  315c44: d730         	bvc	0x315ca8 <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)+0x60> @ imm = #0x60
  315c46: ffff b082    	<unknown>

// ==== EffectsManager::addGasCloudAt
//      file offset 0x315c48 (= ELF address; Ghidra 0x325c48), 248 bytes, Thumb-2
  315c48: b082         	sub	sp, #0x8
  315c4a: b530         	push	{r4, r5, lr}
  315c4c: b089         	sub	sp, #0x24
  315c4e: 9005         	str	r0, [sp, #0x14]
  315c50: a90c         	add	r1, sp, #0x30
  315c52: e881 000c    	stm.w	r1, {r2, r3}
  315c56: 4d37         	ldr	r5, [pc, #0xdc]         @ 0x315d34 <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)+0xec>
  315c58: 447d         	add	r5, pc
  315c5a: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x315d38 <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)+0xf0>
  315c5c: 58eb         	ldr	r3, [r5, r3]
  315c5e: 681c         	ldr	r4, [r3]
  315c60: f04f 537d    	mov.w	r3, #0x3f400000
  315c64: 9302         	str	r3, [sp, #0x8]
  315c66: f04f 537e    	mov.w	r3, #0x3f800000
  315c6a: 9303         	str	r3, [sp, #0xc]
  315c6c: 466b         	mov	r3, sp
  315c6e: aa0e         	add	r2, sp, #0x38
  315c70: e892 0003    	ldm.w	r2, {r0, r1}
  315c74: e883 0003    	stm.w	r3, {r0, r1}
  315c78: a90c         	add	r1, sp, #0x30
  315c7a: e891 000c    	ldm.w	r1, {r2, r3}
  315c7e: 4620         	mov	r0, r4
  315c80: 2109         	movs	r1, #0x9
  315c82: f0e2 f9df    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0xe23be
  315c86: f44f 7082    	mov.w	r0, #0x104
  315c8a: f071 f66b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x471cd6
  315c8e: 4603         	mov	r3, r0
  315c90: 461c         	mov	r4, r3
  315c92: 4620         	mov	r0, r4
  315c94: f022 fdae    	bl	0x3387f4 <GasCloud::GasCloud()> @ imm = #0x22b5c
  315c98: 9407         	str	r4, [sp, #0x1c]
  315c9a: 9b07         	ldr	r3, [sp, #0x1c]
  315c9c: 4618         	mov	r0, r3
  315c9e: f282 f92d    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x28225a
  315ca2: 9b05         	ldr	r3, [sp, #0x14]
  315ca4: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  315ca8: 4618         	mov	r0, r3
  315caa: 9907         	ldr	r1, [sp, #0x1c]
  315cac: f284 fade    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2845bc
  315cb0: 4b22         	ldr	r3, [pc, #0x88]         @ 0x315d3c <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)+0xf4>
  315cb2: 58eb         	ldr	r3, [r5, r3]
  315cb4: 681b         	ldr	r3, [r3]
  315cb6: 681b         	ldr	r3, [r3]
  315cb8: 33cc         	adds	r3, #0xcc
  315cba: 681b         	ldr	r3, [r3]
  315cbc: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x315d3c <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)+0xf4>
  315cbe: 58aa         	ldr	r2, [r5, r2]
  315cc0: 6812         	ldr	r2, [r2]
  315cc2: 4610         	mov	r0, r2
  315cc4: 9907         	ldr	r1, [sp, #0x1c]
  315cc6: 2204         	movs	r2, #0x4
  315cc8: 4798         	blx	r3
  315cca: 9b07         	ldr	r3, [sp, #0x1c]
  315ccc: 681b         	ldr	r3, [r3]
  315cce: 3340         	adds	r3, #0x40
  315cd0: 681b         	ldr	r3, [r3]
  315cd2: 9a07         	ldr	r2, [sp, #0x1c]
  315cd4: 4610         	mov	r0, r2
  315cd6: 9910         	ldr	r1, [sp, #0x40]
  315cd8: 4798         	blx	r3
  315cda: ab06         	add	r3, sp, #0x18
  315cdc: 4618         	mov	r0, r3
  315cde: 9911         	ldr	r1, [sp, #0x44]
  315ce0: f0a0 f402    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4a0804
  315ce4: ab06         	add	r3, sp, #0x18
  315ce6: 9302         	str	r3, [sp, #0x8]
  315ce8: 9b12         	ldr	r3, [sp, #0x48]
  315cea: 9303         	str	r3, [sp, #0xc]
  315cec: 466b         	mov	r3, sp
  315cee: aa0e         	add	r2, sp, #0x38
  315cf0: e892 0003    	ldm.w	r2, {r0, r1}
  315cf4: e883 0003    	stm.w	r3, {r0, r1}
  315cf8: a90c         	add	r1, sp, #0x30
  315cfa: e891 000c    	ldm.w	r1, {r2, r3}
  315cfe: 9807         	ldr	r0, [sp, #0x1c]
  315d00: f022 fe4c    	bl	0x33899c <GasCloud::reset(cpVect, std::string, int)> @ imm = #0x22c98
  315d04: ab06         	add	r3, sp, #0x18
  315d06: 4618         	mov	r0, r3
  315d08: f09f f604    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49fc08
  315d0c: 9b07         	ldr	r3, [sp, #0x1c]
  315d0e: e00a         	b	0x315d26 <EffectsManager::addGasCloudAt(cpVect, float, std::string, int)+0xde> @ imm = #0x14
  315d10: 4620         	mov	r0, r4
  315d12: f072 f1c7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47238e
  315d16: f072 f1c9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472392
  315d1a: ab06         	add	r3, sp, #0x18
  315d1c: 4618         	mov	r0, r3
  315d1e: f09f f5f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49fbf2
  315d22: f072 f1c3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472386
  315d26: 4618         	mov	r0, r3
  315d28: b009         	add	sp, #0x24
  315d2a: e8bd 4030    	pop.w	{r4, r5, lr}
  315d2e: b002         	add	sp, #0x8
  315d30: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x315d31); words below are literal-pool data ---
  315d32: bf00         	nop
  315d34: cdb0         	ldm	r5, {r4, r5, r7}
  315d36: 0061         	lsls	r1, r4, #0x1
  315d38: d730         	bvc	0x315d9c <EffectsManager::removeProxyNade(std::string)+0x5c> @ imm = #0x60
  315d3a: ffff d744    	<unknown>
  315d3e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== EffectsManager::removeProxyNade
//      file offset 0x315d40 (= ELF address; Ghidra 0x325d40), 344 bytes, Thumb-2
  315d40: b510         	push	{r4, lr}
  315d42: ed2d 8b02    	vpush	{d8}
  315d46: b092         	sub	sp, #0x48
  315d48: 9007         	str	r0, [sp, #0x1c]
  315d4a: 9106         	str	r1, [sp, #0x18]
  315d4c: 2300         	movs	r3, #0x0
  315d4e: 930b         	str	r3, [sp, #0x2c]
  315d50: e07d         	b	0x315e4e <EffectsManager::removeProxyNade(std::string)+0x10e> @ imm = #0xfa
  315d52: 9b07         	ldr	r3, [sp, #0x1c]
  315d54: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  315d58: 9b0b         	ldr	r3, [sp, #0x2c]
  315d5a: 4610         	mov	r0, r2
  315d5c: 4619         	mov	r1, r3
  315d5e: f284 f9df    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2843be
  315d62: 4603         	mov	r3, r0
  315d64: 930c         	str	r3, [sp, #0x30]
  315d66: 9b0c         	ldr	r3, [sp, #0x30]
  315d68: 33e8         	adds	r3, #0xe8
  315d6a: 4618         	mov	r0, r3
  315d6c: f09f f2c8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x49f590
  315d70: 4602         	mov	r2, r0
  315d72: 9b0c         	ldr	r3, [sp, #0x30]
  315d74: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  315d78: 4945         	ldr	r1, [pc, #0x114]        @ 0x315e90 <EffectsManager::removeProxyNade(std::string)+0x150>
  315d7a: 4479         	add	r1, pc
  315d7c: 4608         	mov	r0, r1
  315d7e: 4611         	mov	r1, r2
  315d80: 461a         	mov	r2, r3
  315d82: f283 fec5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x283d8a
  315d86: 4603         	mov	r3, r0
  315d88: 930d         	str	r3, [sp, #0x34]
  315d8a: 980d         	ldr	r0, [sp, #0x34]
  315d8c: f283 fdcc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x283b98
  315d90: 4603         	mov	r3, r0
  315d92: 9806         	ldr	r0, [sp, #0x18]
  315d94: 4619         	mov	r1, r3
  315d96: f09f f4c5    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x49f98a
  315d9a: 4603         	mov	r3, r0
  315d9c: 2b00         	cmp	r3, #0x0
  315d9e: bf14         	ite	ne
  315da0: 2300         	movne	r3, #0x0
  315da2: 2301         	moveq	r3, #0x1
  315da4: b2db         	uxtb	r3, r3
  315da6: 2b00         	cmp	r3, #0x0
  315da8: d04e         	beq	0x315e48 <EffectsManager::removeProxyNade(std::string)+0x108> @ imm = #0x9c
  315daa: 9b0c         	ldr	r3, [sp, #0x30]
  315dac: 2200         	movs	r2, #0x0
  315dae: f883 2134    	strb.w	r2, [r3, #0x134]
  315db2: 9b0c         	ldr	r3, [sp, #0x30]
  315db4: 681b         	ldr	r3, [r3]
  315db6: 3350         	adds	r3, #0x50
  315db8: 681b         	ldr	r3, [r3]
  315dba: 9a0c         	ldr	r2, [sp, #0x30]
  315dbc: 4610         	mov	r0, r2
  315dbe: 4798         	blx	r3
  315dc0: 4603         	mov	r3, r0
  315dc2: edd3 7a00    	vldr	s15, [r3]
  315dc6: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  315dca: 9b0c         	ldr	r3, [sp, #0x30]
  315dcc: 681b         	ldr	r3, [r3]
  315dce: 3350         	adds	r3, #0x50
  315dd0: 681b         	ldr	r3, [r3]
  315dd2: 9a0c         	ldr	r2, [sp, #0x30]
  315dd4: 4610         	mov	r0, r2
  315dd6: 4798         	blx	r3
  315dd8: 4603         	mov	r3, r0
  315dda: edd3 7a01    	vldr	s15, [r3, #4]
  315dde: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  315de2: ab0e         	add	r3, sp, #0x38
  315de4: 4618         	mov	r0, r3
  315de6: eeb0 0b48    	vmov.f64	d0, d8
  315dea: eeb0 1b47    	vmov.f64	d1, d7
  315dee: f7fd f8b7    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x2e92
  315df2: ab09         	add	r3, sp, #0x24
  315df4: 4618         	mov	r0, r3
  315df6: f074 f2fd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4745fa
  315dfa: aa0a         	add	r2, sp, #0x28
  315dfc: ab09         	add	r3, sp, #0x24
  315dfe: 4610         	mov	r0, r2
  315e00: 4a24         	ldr	r2, [pc, #0x90]         @ 0x315e94 <EffectsManager::removeProxyNade(std::string)+0x154>
  315e02: 447a         	add	r2, pc
  315e04: 4611         	mov	r1, r2
  315e06: 461a         	mov	r2, r3
  315e08: f0a0 f62a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a0c54
  315e0c: f64c 43cd    	movw	r3, #0xcccd
  315e10: f6c3 63cc    	movt	r3, #0x3ecc
  315e14: 9302         	str	r3, [sp, #0x8]
  315e16: ab0a         	add	r3, sp, #0x28
  315e18: 9303         	str	r3, [sp, #0xc]
  315e1a: 2302         	movs	r3, #0x2
  315e1c: 9304         	str	r3, [sp, #0x10]
  315e1e: 2300         	movs	r3, #0x0
  315e20: 9305         	str	r3, [sp, #0x14]
  315e22: 466b         	mov	r3, sp
  315e24: aa10         	add	r2, sp, #0x40
  315e26: e892 0003    	ldm.w	r2, {r0, r1}
  315e2a: e883 0003    	stm.w	r3, {r0, r1}
  315e2e: ab0e         	add	r3, sp, #0x38
  315e30: cb0c         	ldm	r3, {r2, r3}
  315e32: 9807         	ldr	r0, [sp, #0x1c]
  315e34: f7ff fe0c    	bl	0x315a50 <EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool)> @ imm = #-0x3e8
  315e38: ab0a         	add	r3, sp, #0x28
  315e3a: 4618         	mov	r0, r3
  315e3c: f09f f56a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49fad4
  315e40: ab09         	add	r3, sp, #0x24
  315e42: 4618         	mov	r0, r3
  315e44: f074 f2da    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4745b4
  315e48: 9b0b         	ldr	r3, [sp, #0x2c]
  315e4a: 3301         	adds	r3, #0x1
  315e4c: 930b         	str	r3, [sp, #0x2c]
  315e4e: 9c0b         	ldr	r4, [sp, #0x2c]
  315e50: 9b07         	ldr	r3, [sp, #0x1c]
  315e52: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  315e56: 4618         	mov	r0, r3
  315e58: f284 f942    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x284284
  315e5c: 4603         	mov	r3, r0
  315e5e: 429c         	cmp	r4, r3
  315e60: bf2c         	ite	hs
  315e62: 2300         	movhs	r3, #0x0
  315e64: 2301         	movlo	r3, #0x1
  315e66: b2db         	uxtb	r3, r3
  315e68: 2b00         	cmp	r3, #0x0
  315e6a: f47f af72    	bne.w	0x315d52 <EffectsManager::removeProxyNade(std::string)+0x12> @ imm = #-0x11c
  315e6e: e00a         	b	0x315e86 <EffectsManager::removeProxyNade(std::string)+0x146> @ imm = #0x14
  315e70: ab0a         	add	r3, sp, #0x28
  315e72: 4618         	mov	r0, r3
  315e74: f09f f54e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49fa9c
  315e78: e7ff         	b	0x315e7a <EffectsManager::removeProxyNade(std::string)+0x13a> @ imm = #-0x2
  315e7a: ab09         	add	r3, sp, #0x24
  315e7c: 4618         	mov	r0, r3
  315e7e: f074 f2bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47457a
  315e82: f072 f113    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472226
  315e86: b012         	add	sp, #0x48
  315e88: ecbd 8b02    	vpop	{d8}
  315e8c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x315e8d); words below are literal-pool data ---
  315e8e: bf00         	nop
  315e90: 0dd6         	lsrs	r6, r2, #0x17
  315e92: 004b         	lsls	r3, r1, #0x1
  315e94: 0d4a         	lsrs	r2, r1, #0x15
  315e96: 004b         	lsls	r3, r1, #0x1

// ==== EffectsManager::addProxyNade
//      file offset 0x315e98 (= ELF address; Ghidra 0x325e98), 188 bytes, Thumb-2
  315e98: b082         	sub	sp, #0x8
  315e9a: b530         	push	{r4, r5, lr}
  315e9c: b08b         	sub	sp, #0x2c
  315e9e: 9007         	str	r0, [sp, #0x1c]
  315ea0: a90e         	add	r1, sp, #0x38
  315ea2: e881 000c    	stm.w	r1, {r2, r3}
  315ea6: 4d29         	ldr	r5, [pc, #0xa4]         @ 0x315f4c <EffectsManager::addProxyNade(cpVect, std::string, int, int)+0xb4>
  315ea8: 447d         	add	r5, pc
  315eaa: f44f 709c    	mov.w	r0, #0x138
  315eae: f071 f559    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x471ab2
  315eb2: 4603         	mov	r3, r0
  315eb4: 461c         	mov	r4, r3
  315eb6: 4620         	mov	r0, r4
  315eb8: f09f ff3c    	bl	0x3b5d34 <ProxyMine::ProxyMine()> @ imm = #0x9fe78
  315ebc: 9409         	str	r4, [sp, #0x24]
  315ebe: 9b09         	ldr	r3, [sp, #0x24]
  315ec0: 4618         	mov	r0, r3
  315ec2: f282 f81b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x282036
  315ec6: 9b07         	ldr	r3, [sp, #0x1c]
  315ec8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  315ecc: 4618         	mov	r0, r3
  315ece: 9909         	ldr	r1, [sp, #0x24]
  315ed0: f284 f9cc    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x284398
  315ed4: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x315f50 <EffectsManager::addProxyNade(cpVect, std::string, int, int)+0xb8>
  315ed6: 58eb         	ldr	r3, [r5, r3]
  315ed8: 681b         	ldr	r3, [r3]
  315eda: 681b         	ldr	r3, [r3]
  315edc: 33cc         	adds	r3, #0xcc
  315ede: 681b         	ldr	r3, [r3]
  315ee0: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x315f50 <EffectsManager::addProxyNade(cpVect, std::string, int, int)+0xb8>
  315ee2: 58aa         	ldr	r2, [r5, r2]
  315ee4: 6812         	ldr	r2, [r2]
  315ee6: 4610         	mov	r0, r2
  315ee8: 9909         	ldr	r1, [sp, #0x24]
  315eea: 2204         	movs	r2, #0x4
  315eec: 4798         	blx	r3
  315eee: ab08         	add	r3, sp, #0x20
  315ef0: 4618         	mov	r0, r3
  315ef2: 9912         	ldr	r1, [sp, #0x48]
  315ef4: f0a0 f2f8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4a05f0
  315ef8: ab08         	add	r3, sp, #0x20
  315efa: 9302         	str	r3, [sp, #0x8]
  315efc: 9b13         	ldr	r3, [sp, #0x4c]
  315efe: 9303         	str	r3, [sp, #0xc]
  315f00: 9b14         	ldr	r3, [sp, #0x50]
  315f02: 9304         	str	r3, [sp, #0x10]
  315f04: 466b         	mov	r3, sp
  315f06: aa10         	add	r2, sp, #0x40
  315f08: e892 0003    	ldm.w	r2, {r0, r1}
  315f0c: e883 0003    	stm.w	r3, {r0, r1}
  315f10: a90e         	add	r1, sp, #0x38
  315f12: e891 000c    	ldm.w	r1, {r2, r3}
  315f16: 9809         	ldr	r0, [sp, #0x24]
  315f18: f09f fffe    	bl	0x3b5f18 <ProxyMine::reset(cpVect, std::string, int, int)> @ imm = #0x9fffc
  315f1c: ab08         	add	r3, sp, #0x20
  315f1e: 4618         	mov	r0, r3
  315f20: f09f f4f8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f9f0
  315f24: 9b09         	ldr	r3, [sp, #0x24]
  315f26: e00a         	b	0x315f3e <EffectsManager::addProxyNade(cpVect, std::string, int, int)+0xa6> @ imm = #0x14
  315f28: 4620         	mov	r0, r4
  315f2a: f072 f0bb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x472176
  315f2e: f072 f0bd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47217a
  315f32: ab08         	add	r3, sp, #0x20
  315f34: 4618         	mov	r0, r3
  315f36: f09f f4ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f9da
  315f3a: f072 f0b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47216e
  315f3e: 4618         	mov	r0, r3
  315f40: b00b         	add	sp, #0x2c
  315f42: e8bd 4030    	pop.w	{r4, r5, lr}
  315f46: b002         	add	sp, #0x8
  315f48: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x315f49); words below are literal-pool data ---
  315f4a: bf00         	nop
  315f4c: cb60         	ldm	r3!, {r5, r6}
  315f4e: 0061         	lsls	r1, r4, #0x1
  315f50: d744         	bvc	0x315fdc <EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int)+0x88> @ imm = #0x88
  315f52: ffff b082    	<unknown>

// ==== EffectsManager::addPlasmaBallAt
//      file offset 0x315f54 (= ELF address; Ghidra 0x325f54), 208 bytes, Thumb-2
  315f54: b082         	sub	sp, #0x8
  315f56: b530         	push	{r4, r5, lr}
  315f58: b08d         	sub	sp, #0x34
  315f5a: 9009         	str	r0, [sp, #0x24]
  315f5c: a910         	add	r1, sp, #0x40
  315f5e: e881 000c    	stm.w	r1, {r2, r3}
  315f62: 4d2e         	ldr	r5, [pc, #0xb8]         @ 0x31601c <EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int)+0xc8>
  315f64: 447d         	add	r5, pc
  315f66: f44f 70a8    	mov.w	r0, #0x150
  315f6a: f071 f4fb    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4719f6
  315f6e: 4603         	mov	r3, r0
  315f70: 461c         	mov	r4, r3
  315f72: 4620         	mov	r0, r4
  315f74: f07c fe02    	bl	0x392b7c <PlasmaBall::PlasmaBall()> @ imm = #0x7cc04
  315f78: 940b         	str	r4, [sp, #0x2c]
  315f7a: 9b0b         	ldr	r3, [sp, #0x2c]
  315f7c: 4618         	mov	r0, r3
  315f7e: f281 ffbd    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x281f7a
  315f82: 9b09         	ldr	r3, [sp, #0x24]
  315f84: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  315f88: 4618         	mov	r0, r3
  315f8a: 990b         	ldr	r1, [sp, #0x2c]
  315f8c: f284 f96e    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2842dc
  315f90: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x316020 <EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int)+0xcc>
  315f92: 58eb         	ldr	r3, [r5, r3]
  315f94: 681b         	ldr	r3, [r3]
  315f96: 681b         	ldr	r3, [r3]
  315f98: 33cc         	adds	r3, #0xcc
  315f9a: 681b         	ldr	r3, [r3]
  315f9c: 4a20         	ldr	r2, [pc, #0x80]         @ 0x316020 <EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int)+0xcc>
  315f9e: 58aa         	ldr	r2, [r5, r2]
  315fa0: 6812         	ldr	r2, [r2]
  315fa2: 4610         	mov	r0, r2
  315fa4: 990b         	ldr	r1, [sp, #0x2c]
  315fa6: 2204         	movs	r2, #0x4
  315fa8: 4798         	blx	r3
  315faa: 9b0b         	ldr	r3, [sp, #0x2c]
  315fac: 681b         	ldr	r3, [r3]
  315fae: 3340         	adds	r3, #0x40
  315fb0: 681b         	ldr	r3, [r3]
  315fb2: 9a0b         	ldr	r2, [sp, #0x2c]
  315fb4: 4610         	mov	r0, r2
  315fb6: 9918         	ldr	r1, [sp, #0x60]
  315fb8: 4798         	blx	r3
  315fba: ab0a         	add	r3, sp, #0x28
  315fbc: 4618         	mov	r0, r3
  315fbe: 9919         	ldr	r1, [sp, #0x64]
  315fc0: f0a0 f292    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4a0524
  315fc4: ac02         	add	r4, sp, #0x8
  315fc6: ab14         	add	r3, sp, #0x50
  315fc8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  315fca: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  315fce: ab0a         	add	r3, sp, #0x28
  315fd0: 9306         	str	r3, [sp, #0x18]
  315fd2: 9b1a         	ldr	r3, [sp, #0x68]
  315fd4: 9307         	str	r3, [sp, #0x1c]
  315fd6: 466b         	mov	r3, sp
  315fd8: aa12         	add	r2, sp, #0x48
  315fda: e892 0003    	ldm.w	r2, {r0, r1}
  315fde: e883 0003    	stm.w	r3, {r0, r1}
  315fe2: a910         	add	r1, sp, #0x40
  315fe4: e891 000c    	ldm.w	r1, {r2, r3}
  315fe8: 980b         	ldr	r0, [sp, #0x2c]
  315fea: f07c fefb    	bl	0x392de4 <PlasmaBall::reset(cpVect, cpVect, std::string, int)> @ imm = #0x7cdf6
  315fee: ab0a         	add	r3, sp, #0x28
  315ff0: 4618         	mov	r0, r3
  315ff2: f09f f48f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f91e
  315ff6: 9b0b         	ldr	r3, [sp, #0x2c]
  315ff8: e00a         	b	0x316010 <EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int)+0xbc> @ imm = #0x14
  315ffa: 4620         	mov	r0, r4
  315ffc: f072 f052    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4720a4
  316000: f072 f054    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4720a8
  316004: ab0a         	add	r3, sp, #0x28
  316006: 4618         	mov	r0, r3
  316008: f09f f484    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f908
  31600c: f072 f04e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47209c
  316010: 4618         	mov	r0, r3
  316012: b00d         	add	sp, #0x34
  316014: e8bd 4030    	pop.w	{r4, r5, lr}
  316018: b002         	add	sp, #0x8
  31601a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31601b); words below are literal-pool data ---
  31601c: caa4         	ldm	r2, {r2, r5, r7}
  31601e: 0061         	lsls	r1, r4, #0x1
  316020: d744         	bvc	0x3160ac <EffectsManager::addPlasmaField(std::string)+0x88> @ imm = #0x88
  316022: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== EffectsManager::addPlasmaField
//      file offset 0x316024 (= ELF address; Ghidra 0x326024), 148 bytes, Thumb-2
  316024: b530         	push	{r4, r5, lr}
  316026: b085         	sub	sp, #0x14
  316028: 9001         	str	r0, [sp, #0x4]
  31602a: 9100         	str	r1, [sp]
  31602c: 4d20         	ldr	r5, [pc, #0x80]         @ 0x3160b0 <EffectsManager::addPlasmaField(std::string)+0x8c>
  31602e: 447d         	add	r5, pc
  316030: f44f 7092    	mov.w	r0, #0x124
  316034: f071 f496    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x47192c
  316038: 4603         	mov	r3, r0
  31603a: 461c         	mov	r4, r3
  31603c: 4620         	mov	r0, r4
  31603e: f07e fa9d    	bl	0x39457c <PlasmaEnergy::PlasmaEnergy()> @ imm = #0x7e53a
  316042: 9403         	str	r4, [sp, #0xc]
  316044: 9b03         	ldr	r3, [sp, #0xc]
  316046: 4618         	mov	r0, r3
  316048: f281 ff58    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x281eb0
  31604c: 9b01         	ldr	r3, [sp, #0x4]
  31604e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  316052: 4618         	mov	r0, r3
  316054: 9903         	ldr	r1, [sp, #0xc]
  316056: f284 f909    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x284212
  31605a: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3160b4 <EffectsManager::addPlasmaField(std::string)+0x90>
  31605c: 58eb         	ldr	r3, [r5, r3]
  31605e: 681b         	ldr	r3, [r3]
  316060: 681b         	ldr	r3, [r3]
  316062: 33cc         	adds	r3, #0xcc
  316064: 681b         	ldr	r3, [r3]
  316066: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3160b4 <EffectsManager::addPlasmaField(std::string)+0x90>
  316068: 58aa         	ldr	r2, [r5, r2]
  31606a: 6812         	ldr	r2, [r2]
  31606c: 4610         	mov	r0, r2
  31606e: 9903         	ldr	r1, [sp, #0xc]
  316070: 2204         	movs	r2, #0x4
  316072: 4798         	blx	r3
  316074: ab02         	add	r3, sp, #0x8
  316076: 4618         	mov	r0, r3
  316078: 9900         	ldr	r1, [sp]
  31607a: f0a0 f235    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4a046a
  31607e: ab02         	add	r3, sp, #0x8
  316080: 9803         	ldr	r0, [sp, #0xc]
  316082: 4619         	mov	r1, r3
  316084: f07e fb8e    	bl	0x3947a4 <PlasmaEnergy::reset(std::string)> @ imm = #0x7e71c
  316088: ab02         	add	r3, sp, #0x8
  31608a: 4618         	mov	r0, r3
  31608c: f09f f442    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f884
  316090: 9b03         	ldr	r3, [sp, #0xc]
  316092: e00a         	b	0x3160aa <EffectsManager::addPlasmaField(std::string)+0x86> @ imm = #0x14
  316094: 4620         	mov	r0, r4
  316096: f072 f005    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47200a
  31609a: f072 f007    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47200e
  31609e: ab02         	add	r3, sp, #0x8
  3160a0: 4618         	mov	r0, r3
  3160a2: f09f f437    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f86e
  3160a6: f072 f001    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x472002
  3160aa: 4618         	mov	r0, r3
  3160ac: b005         	add	sp, #0x14
  3160ae: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3160af); words below are literal-pool data ---
  3160b0: c9da         	ldm	r1, {r1, r3, r4, r6, r7}
  3160b2: 0061         	lsls	r1, r4, #0x1
  3160b4: d744         	bvc	0x316140 <EffectsManager::addBloodAt(cpVect, float, float)+0x88> @ imm = #0x88
  3160b6: ffff b082    	<unknown>

// ==== EffectsManager::addBloodAt
//      file offset 0x3160b8 (= ELF address; Ghidra 0x3260b8), 272 bytes, Thumb-2
  3160b8: b082         	sub	sp, #0x8
  3160ba: b530         	push	{r4, r5, lr}
  3160bc: b08d         	sub	sp, #0x34
  3160be: 9005         	str	r0, [sp, #0x14]
  3160c0: a910         	add	r1, sp, #0x40
  3160c2: e881 000c    	stm.w	r1, {r2, r3}
  3160c6: 9b05         	ldr	r3, [sp, #0x14]
  3160c8: f893 3138    	ldrb.w	r3, [r3, #0x138]
  3160cc: f083 0301    	eor	r3, r3, #0x1
  3160d0: b2db         	uxtb	r3, r3
  3160d2: 2b00         	cmp	r3, #0x0
  3160d4: d118         	bne	0x316108 <EffectsManager::addBloodAt(cpVect, float, float)+0x50> @ imm = #0x30
  3160d6: ab08         	add	r3, sp, #0x20
  3160d8: 4618         	mov	r0, r3
  3160da: eeb3 0b09    	vmov.f64	d0, #2.500000e+01
  3160de: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  3160e2: f7fc ff3d    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x3186
  3160e6: 466c         	mov	r4, sp
  3160e8: ab08         	add	r3, sp, #0x20
  3160ea: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3160ec: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3160f0: f10d 0c40    	add.w	r12, sp, #0x40
  3160f4: e89c 000f    	ldm.w	r12, {r0, r1, r2, r3}
  3160f8: f7fd f8be    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x2e84
  3160fc: 4603         	mov	r3, r0
  3160fe: f083 0301    	eor	r3, r3, #0x1
  316102: b2db         	uxtb	r3, r3
  316104: 2b00         	cmp	r3, #0x0
  316106: d001         	beq	0x31610c <EffectsManager::addBloodAt(cpVect, float, float)+0x54> @ imm = #0x2
  316108: 2301         	movs	r3, #0x1
  31610a: e000         	b	0x31610e <EffectsManager::addBloodAt(cpVect, float, float)+0x56> @ imm = #0x0
  31610c: 2300         	movs	r3, #0x0
  31610e: 2b00         	cmp	r3, #0x0
  316110: d000         	beq	0x316114 <EffectsManager::addBloodAt(cpVect, float, float)+0x5c> @ imm = #0x0
  316112: e054         	b	0x3161be <EffectsManager::addBloodAt(cpVect, float, float)+0x106> @ imm = #0xa8
  316114: 9b05         	ldr	r3, [sp, #0x14]
  316116: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31611a: 681b         	ldr	r3, [r3]
  31611c: f503 73fa    	add.w	r3, r3, #0x1f4
  316120: 681b         	ldr	r3, [r3]
  316122: 9a05         	ldr	r2, [sp, #0x14]
  316124: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  316128: 4610         	mov	r0, r2
  31612a: 9914         	ldr	r1, [sp, #0x50]
  31612c: 4798         	blx	r3
  31612e: 9b05         	ldr	r3, [sp, #0x14]
  316130: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  316134: 681b         	ldr	r3, [r3]
  316136: f503 73fe    	add.w	r3, r3, #0x1fc
  31613a: 681b         	ldr	r3, [r3]
  31613c: 9a05         	ldr	r2, [sp, #0x14]
  31613e: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  316142: ed9d 7a14    	vldr	s14, [sp, #80]
  316146: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  31614a: ee67 7a27    	vmul.f32	s15, s14, s15
  31614e: 4610         	mov	r0, r2
  316150: ee17 1a90    	vmov	r1, s15
  316154: 4798         	blx	r3
  316156: 9b05         	ldr	r3, [sp, #0x14]
  316158: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31615c: 681b         	ldr	r3, [r3]
  31615e: f503 73de    	add.w	r3, r3, #0x1bc
  316162: 681c         	ldr	r4, [r3]
  316164: 9b05         	ldr	r3, [sp, #0x14]
  316166: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  31616a: ed9d 7b10    	vldr	d7, [sp, #64]
  31616e: eef7 6bc7    	vcvt.f32.f64	s13, d7
  316172: ed9d 7b12    	vldr	d7, [sp, #72]
  316176: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31617a: ab06         	add	r3, sp, #0x18
  31617c: 4618         	mov	r0, r3
  31617e: ee16 1a90    	vmov	r1, s13
  316182: ee17 2a90    	vmov	r2, s15
  316186: f27c fdb3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27cb66
  31618a: ab06         	add	r3, sp, #0x18
  31618c: 4628         	mov	r0, r5
  31618e: 4619         	mov	r1, r3
  316190: 47a0         	blx	r4
  316192: e00d         	b	0x3161b0 <EffectsManager::addBloodAt(cpVect, float, float)+0xf8> @ imm = #0x1a
  316194: 9b05         	ldr	r3, [sp, #0x14]
  316196: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31619a: 4618         	mov	r0, r3
  31619c: f2ac f8ec    	bl	0x5c2378 <cocos2d::CCParticleSystem::addParticle()> @ imm = #0x2ac1d8
  3161a0: ed9d 7a15    	vldr	s14, [sp, #84]
  3161a4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3161a8: ee77 7a67    	vsub.f32	s15, s14, s15
  3161ac: edcd 7a15    	vstr	s15, [sp, #84]
  3161b0: eddd 7a15    	vldr	s15, [sp, #84]
  3161b4: eef5 7ac0    	vcmpe.f32	s15, #0
  3161b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3161bc: dcea         	bgt	0x316194 <EffectsManager::addBloodAt(cpVect, float, float)+0xdc> @ imm = #-0x2c
  3161be: b00d         	add	sp, #0x34
  3161c0: e8bd 4030    	pop.w	{r4, r5, lr}
  3161c4: b002         	add	sp, #0x8
  3161c6: 4770         	bx	lr

// ==== EffectsManager::weaponFired
//      file offset 0x3161c8 (= ELF address; Ghidra 0x3261c8), 672 bytes, Thumb-2
  3161c8: b530         	push	{r4, r5, lr}
  3161ca: b09b         	sub	sp, #0x6c
  3161cc: 9005         	str	r0, [sp, #0x14]
  3161ce: 9104         	str	r1, [sp, #0x10]
  3161d0: 4ca1         	ldr	r4, [pc, #0x284]        @ 0x316458 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x290>
  3161d2: 447c         	add	r4, pc
  3161d4: 9b04         	ldr	r3, [sp, #0x10]
  3161d6: 9307         	str	r3, [sp, #0x1c]
  3161d8: 9b07         	ldr	r3, [sp, #0x1c]
  3161da: 2b00         	cmp	r3, #0x0
  3161dc: d100         	bne	0x3161e0 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3161de: e135         	b	0x31644c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x284> @ imm = #0x26a
  3161e0: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x31645c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x294>
  3161e2: 58e3         	ldr	r3, [r4, r3]
  3161e4: 681b         	ldr	r3, [r3]
  3161e6: 681b         	ldr	r3, [r3]
  3161e8: f503 73e0    	add.w	r3, r3, #0x1c0
  3161ec: 681b         	ldr	r3, [r3]
  3161ee: 4a9b         	ldr	r2, [pc, #0x26c]        @ 0x31645c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x294>
  3161f0: 58a2         	ldr	r2, [r4, r2]
  3161f2: 6812         	ldr	r2, [r2]
  3161f4: a912         	add	r1, sp, #0x48
  3161f6: 4608         	mov	r0, r1
  3161f8: 4611         	mov	r1, r2
  3161fa: 4798         	blx	r3
  3161fc: 9b07         	ldr	r3, [sp, #0x1c]
  3161fe: 681b         	ldr	r3, [r3]
  316200: f503 73fa    	add.w	r3, r3, #0x1f4
  316204: 681b         	ldr	r3, [r3]
  316206: 9a07         	ldr	r2, [sp, #0x1c]
  316208: a916         	add	r1, sp, #0x58
  31620a: 4608         	mov	r0, r1
  31620c: 4611         	mov	r1, r2
  31620e: 4798         	blx	r3
  316210: aa12         	add	r2, sp, #0x48
  316212: ab16         	add	r3, sp, #0x58
  316214: 4610         	mov	r0, r2
  316216: 4619         	mov	r1, r3
  316218: f09f f230    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x49f460
  31621c: 4603         	mov	r3, r0
  31621e: 2b00         	cmp	r3, #0x0
  316220: bf14         	ite	ne
  316222: 2300         	movne	r3, #0x0
  316224: 2301         	moveq	r3, #0x1
  316226: b2dd         	uxtb	r5, r3
  316228: ab16         	add	r3, sp, #0x58
  31622a: 4618         	mov	r0, r3
  31622c: f09f f372    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f6e4
  316230: ab12         	add	r3, sp, #0x48
  316232: 4618         	mov	r0, r3
  316234: f09f f36e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f6dc
  316238: 2d00         	cmp	r5, #0x0
  31623a: d041         	beq	0x3162c0 <EffectsManager::weaponFired(cocos2d::CCObject*)+0xf8> @ imm = #0x82
  31623c: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x31645c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x294>
  31623e: 58e3         	ldr	r3, [r4, r3]
  316240: 681b         	ldr	r3, [r3]
  316242: 9308         	str	r3, [sp, #0x20]
  316244: 9b08         	ldr	r3, [sp, #0x20]
  316246: 681b         	ldr	r3, [r3]
  316248: f503 730f    	add.w	r3, r3, #0x23c
  31624c: 681b         	ldr	r3, [r3]
  31624e: 9808         	ldr	r0, [sp, #0x20]
  316250: 4798         	blx	r3
  316252: 4603         	mov	r3, r0
  316254: ee07 3a10    	vmov	s14, r3
  316258: eef1 7a47    	vneg.f32	s15, s14
  31625c: edcd 7a09    	vstr	s15, [sp, #36]
  316260: 9b08         	ldr	r3, [sp, #0x20]
  316262: 681b         	ldr	r3, [r3]
  316264: f503 7315    	add.w	r3, r3, #0x254
  316268: 681b         	ldr	r3, [r3]
  31626a: 9a08         	ldr	r2, [sp, #0x20]
  31626c: 4610         	mov	r0, r2
  31626e: 4798         	blx	r3
  316270: 4603         	mov	r3, r0
  316272: 2b00         	cmp	r3, #0x0
  316274: d001         	beq	0x31627a <EffectsManager::weaponFired(cocos2d::CCObject*)+0xb2> @ imm = #0x2
  316276: 235a         	movs	r3, #0x5a
  316278: e001         	b	0x31627e <EffectsManager::weaponFired(cocos2d::CCObject*)+0xb6> @ imm = #0x2
  31627a: f06f 0359    	mvn	r3, #0x59
  31627e: ee07 3a10    	vmov	s14, r3
  316282: eef8 7ac7    	vcvt.f32.s32	s15, s14
  316286: ed9d 7a09    	vldr	s14, [sp, #36]
  31628a: ee77 7a27    	vadd.f32	s15, s14, s15
  31628e: edcd 7a09    	vstr	s15, [sp, #36]
  316292: 9b07         	ldr	r3, [sp, #0x1c]
  316294: 681b         	ldr	r3, [r3]
  316296: f503 7319    	add.w	r3, r3, #0x264
  31629a: 681b         	ldr	r3, [r3]
  31629c: aa0e         	add	r2, sp, #0x38
  31629e: 4610         	mov	r0, r2
  3162a0: 9907         	ldr	r1, [sp, #0x1c]
  3162a2: 4798         	blx	r3
  3162a4: 9b09         	ldr	r3, [sp, #0x24]
  3162a6: 9302         	str	r3, [sp, #0x8]
  3162a8: 466b         	mov	r3, sp
  3162aa: aa10         	add	r2, sp, #0x40
  3162ac: e892 0003    	ldm.w	r2, {r0, r1}
  3162b0: e883 0003    	stm.w	r3, {r0, r1}
  3162b4: ab0e         	add	r3, sp, #0x38
  3162b6: cb0c         	ldm	r3, {r2, r3}
  3162b8: 9805         	ldr	r0, [sp, #0x14]
  3162ba: f000 f8d5    	bl	0x316468 <EffectsManager::addShellAt(cpVect, float)> @ imm = #0x1aa
  3162be: e0c5         	b	0x31644c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x284> @ imm = #0x18a
  3162c0: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x316460 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x298>
  3162c2: 58e3         	ldr	r3, [r4, r3]
  3162c4: 681d         	ldr	r5, [r3]
  3162c6: 9b07         	ldr	r3, [sp, #0x1c]
  3162c8: 681b         	ldr	r3, [r3]
  3162ca: f503 73fa    	add.w	r3, r3, #0x1f4
  3162ce: 681b         	ldr	r3, [r3]
  3162d0: 9a07         	ldr	r2, [sp, #0x1c]
  3162d2: a916         	add	r1, sp, #0x58
  3162d4: 4608         	mov	r0, r1
  3162d6: 4611         	mov	r1, r2
  3162d8: 4798         	blx	r3
  3162da: ab16         	add	r3, sp, #0x58
  3162dc: 4628         	mov	r0, r5
  3162de: 4619         	mov	r1, r3
  3162e0: f27d fe06    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27dc0c
  3162e4: 4603         	mov	r3, r0
  3162e6: 930a         	str	r3, [sp, #0x28]
  3162e8: ab16         	add	r3, sp, #0x58
  3162ea: 4618         	mov	r0, r3
  3162ec: f09f f312    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f624
  3162f0: 9b0a         	ldr	r3, [sp, #0x28]
  3162f2: 2b00         	cmp	r3, #0x0
  3162f4: d03d         	beq	0x316372 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x1aa> @ imm = #0x7a
  3162f6: 9b0a         	ldr	r3, [sp, #0x28]
  3162f8: 681b         	ldr	r3, [r3]
  3162fa: f503 730f    	add.w	r3, r3, #0x23c
  3162fe: 681b         	ldr	r3, [r3]
  316300: 980a         	ldr	r0, [sp, #0x28]
  316302: 4798         	blx	r3
  316304: 4603         	mov	r3, r0
  316306: ee07 3a10    	vmov	s14, r3
  31630a: eef1 7a47    	vneg.f32	s15, s14
  31630e: edcd 7a0b    	vstr	s15, [sp, #44]
  316312: 9b0a         	ldr	r3, [sp, #0x28]
  316314: 681b         	ldr	r3, [r3]
  316316: f503 7315    	add.w	r3, r3, #0x254
  31631a: 681b         	ldr	r3, [r3]
  31631c: 9a0a         	ldr	r2, [sp, #0x28]
  31631e: 4610         	mov	r0, r2
  316320: 4798         	blx	r3
  316322: 4603         	mov	r3, r0
  316324: 2b00         	cmp	r3, #0x0
  316326: d001         	beq	0x31632c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x164> @ imm = #0x2
  316328: 235a         	movs	r3, #0x5a
  31632a: e001         	b	0x316330 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x168> @ imm = #0x2
  31632c: f06f 0359    	mvn	r3, #0x59
  316330: ee07 3a10    	vmov	s14, r3
  316334: eef8 7ac7    	vcvt.f32.s32	s15, s14
  316338: ed9d 7a0b    	vldr	s14, [sp, #44]
  31633c: ee77 7a27    	vadd.f32	s15, s14, s15
  316340: edcd 7a0b    	vstr	s15, [sp, #44]
  316344: 9b07         	ldr	r3, [sp, #0x1c]
  316346: 681b         	ldr	r3, [r3]
  316348: f503 7319    	add.w	r3, r3, #0x264
  31634c: 681b         	ldr	r3, [r3]
  31634e: aa12         	add	r2, sp, #0x48
  316350: 4610         	mov	r0, r2
  316352: 9907         	ldr	r1, [sp, #0x1c]
  316354: 4798         	blx	r3
  316356: 9b0b         	ldr	r3, [sp, #0x2c]
  316358: 9302         	str	r3, [sp, #0x8]
  31635a: 466b         	mov	r3, sp
  31635c: aa14         	add	r2, sp, #0x50
  31635e: e892 0003    	ldm.w	r2, {r0, r1}
  316362: e883 0003    	stm.w	r3, {r0, r1}
  316366: ab12         	add	r3, sp, #0x48
  316368: cb0c         	ldm	r3, {r2, r3}
  31636a: 9805         	ldr	r0, [sp, #0x14]
  31636c: f000 f87c    	bl	0x316468 <EffectsManager::addShellAt(cpVect, float)> @ imm = #0xf8
  316370: e06c         	b	0x31644c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x284> @ imm = #0xd8
  316372: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x316464 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x29c>
  316374: 58e3         	ldr	r3, [r4, r3]
  316376: 681b         	ldr	r3, [r3]
  316378: 2b00         	cmp	r3, #0x0
  31637a: d067         	beq	0x31644c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x284> @ imm = #0xce
  31637c: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x316464 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x29c>
  31637e: 58e3         	ldr	r3, [r4, r3]
  316380: 681c         	ldr	r4, [r3]
  316382: 9b07         	ldr	r3, [sp, #0x1c]
  316384: 681b         	ldr	r3, [r3]
  316386: f503 73fa    	add.w	r3, r3, #0x1f4
  31638a: 681b         	ldr	r3, [r3]
  31638c: 9a07         	ldr	r2, [sp, #0x1c]
  31638e: a916         	add	r1, sp, #0x58
  316390: 4608         	mov	r0, r1
  316392: 4611         	mov	r1, r2
  316394: 4798         	blx	r3
  316396: ab16         	add	r3, sp, #0x58
  316398: 4620         	mov	r0, r4
  31639a: 4619         	mov	r1, r3
  31639c: f27d fda8    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x27db50
  3163a0: 4603         	mov	r3, r0
  3163a2: 930c         	str	r3, [sp, #0x30]
  3163a4: ab16         	add	r3, sp, #0x58
  3163a6: 4618         	mov	r0, r3
  3163a8: f09f f2b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f568
  3163ac: 9b0c         	ldr	r3, [sp, #0x30]
  3163ae: 2b00         	cmp	r3, #0x0
  3163b0: d034         	beq	0x31641c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x254> @ imm = #0x68
  3163b2: 9b0c         	ldr	r3, [sp, #0x30]
  3163b4: 681b         	ldr	r3, [r3]
  3163b6: f503 7302    	add.w	r3, r3, #0x208
  3163ba: 681b         	ldr	r3, [r3]
  3163bc: 980c         	ldr	r0, [sp, #0x30]
  3163be: 4798         	blx	r3
  3163c0: 4603         	mov	r3, r0
  3163c2: ee07 3a10    	vmov	s14, r3
  3163c6: eef1 7a47    	vneg.f32	s15, s14
  3163ca: edcd 7a0d    	vstr	s15, [sp, #52]
  3163ce: 9b0c         	ldr	r3, [sp, #0x30]
  3163d0: f893 31a4    	ldrb.w	r3, [r3, #0x1a4]
  3163d4: 2b00         	cmp	r3, #0x0
  3163d6: d002         	beq	0x3163de <EffectsManager::weaponFired(cocos2d::CCObject*)+0x216> @ imm = #0x4
  3163d8: eddf 7a1d    	vldr	s15, [pc, #116]         @ 0x316450 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x288>
  3163dc: e001         	b	0x3163e2 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x21a> @ imm = #0x2
  3163de: eddf 7a1d    	vldr	s15, [pc, #116]         @ 0x316454 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x28c>
  3163e2: ed9d 7a0d    	vldr	s14, [sp, #52]
  3163e6: ee77 7a27    	vadd.f32	s15, s14, s15
  3163ea: edcd 7a0d    	vstr	s15, [sp, #52]
  3163ee: 9b07         	ldr	r3, [sp, #0x1c]
  3163f0: 681b         	ldr	r3, [r3]
  3163f2: f503 7319    	add.w	r3, r3, #0x264
  3163f6: 681b         	ldr	r3, [r3]
  3163f8: aa16         	add	r2, sp, #0x58
  3163fa: 4610         	mov	r0, r2
  3163fc: 9907         	ldr	r1, [sp, #0x1c]
  3163fe: 4798         	blx	r3
  316400: 9b0d         	ldr	r3, [sp, #0x34]
  316402: 9302         	str	r3, [sp, #0x8]
  316404: 466b         	mov	r3, sp
  316406: aa18         	add	r2, sp, #0x60
  316408: e892 0003    	ldm.w	r2, {r0, r1}
  31640c: e883 0003    	stm.w	r3, {r0, r1}
  316410: ab16         	add	r3, sp, #0x58
  316412: cb0c         	ldm	r3, {r2, r3}
  316414: 9805         	ldr	r0, [sp, #0x14]
  316416: f000 f827    	bl	0x316468 <EffectsManager::addShellAt(cpVect, float)> @ imm = #0x4e
  31641a: e017         	b	0x31644c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x284> @ imm = #0x2e
  31641c: e016         	b	0x31644c <EffectsManager::weaponFired(cocos2d::CCObject*)+0x284> @ imm = #0x2c
  31641e: ab16         	add	r3, sp, #0x58
  316420: 4618         	mov	r0, r3
  316422: f09f f277    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f4ee
  316426: e7ff         	b	0x316428 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x260> @ imm = #-0x2
  316428: ab12         	add	r3, sp, #0x48
  31642a: 4618         	mov	r0, r3
  31642c: f09f f272    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f4e4
  316430: f071 f63c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x471c78
  316434: ab16         	add	r3, sp, #0x58
  316436: 4618         	mov	r0, r3
  316438: f09f f26c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f4d8
  31643c: f071 f636    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x471c6c
  316440: ab16         	add	r3, sp, #0x58
  316442: 4618         	mov	r0, r3
  316444: f09f f266    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49f4cc
  316448: f071 f630    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x471c60
  31644c: b01b         	add	sp, #0x6c
  31644e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31644f); words below are literal-pool data ---
  316450: 0000         	movs	r0, r0
  316452: 42b4         	cmp	r4, r6
  316454: 0000         	movs	r0, r0
  316456: c2b4         	stm	r2!, {r2, r4, r5, r7}
  316458: c836         	ldm	r0!, {r1, r2, r4, r5}
  31645a: 0061         	lsls	r1, r4, #0x1
  31645c: d784         	bvc	0x316368 <EffectsManager::weaponFired(cocos2d::CCObject*)+0x1a0> @ imm = #-0xf8
  31645e: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  316462: ffff d9f8    	<unknown>
  316466: ffff b082    	<unknown>

// ==== EffectsManager::addShellAt
//      file offset 0x316468 (= ELF address; Ghidra 0x326468), 304 bytes, Thumb-2
  316468: b082         	sub	sp, #0x8
  31646a: b530         	push	{r4, r5, lr}
  31646c: b08d         	sub	sp, #0x34
  31646e: 9005         	str	r0, [sp, #0x14]
  316470: a910         	add	r1, sp, #0x40
  316472: e881 000c    	stm.w	r1, {r2, r3}
  316476: ab08         	add	r3, sp, #0x20
  316478: 4618         	mov	r0, r3
  31647a: eeb3 0b09    	vmov.f64	d0, #2.500000e+01
  31647e: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  316482: f7fc fd6d    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x3526
  316486: 466c         	mov	r4, sp
  316488: ab08         	add	r3, sp, #0x20
  31648a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31648c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  316490: f10d 0c40    	add.w	r12, sp, #0x40
  316494: e89c 000f    	ldm.w	r12, {r0, r1, r2, r3}
  316498: f7fc feee    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x3224
  31649c: 4603         	mov	r3, r0
  31649e: f083 0301    	eor	r3, r3, #0x1
  3164a2: b2db         	uxtb	r3, r3
  3164a4: 2b00         	cmp	r3, #0x0
  3164a6: d000         	beq	0x3164aa <EffectsManager::addShellAt(cpVect, float)+0x42> @ imm = #0x0
  3164a8: e06d         	b	0x316586 <EffectsManager::addShellAt(cpVect, float)+0x11e> @ imm = #0xda
  3164aa: 9b05         	ldr	r3, [sp, #0x14]
  3164ac: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3164b0: 681b         	ldr	r3, [r3]
  3164b2: f503 73ee    	add.w	r3, r3, #0x1dc
  3164b6: 681b         	ldr	r3, [r3]
  3164b8: 9a05         	ldr	r2, [sp, #0x14]
  3164ba: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3164be: 4610         	mov	r0, r2
  3164c0: 9914         	ldr	r1, [sp, #0x50]
  3164c2: 4798         	blx	r3
  3164c4: 9b05         	ldr	r3, [sp, #0x14]
  3164c6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3164ca: 681b         	ldr	r3, [r3]
  3164cc: f503 73f2    	add.w	r3, r3, #0x1e4
  3164d0: 681b         	ldr	r3, [r3]
  3164d2: 9a05         	ldr	r2, [sp, #0x14]
  3164d4: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3164d8: 4610         	mov	r0, r2
  3164da: f04f 0100    	mov.w	r1, #0x0
  3164de: 4798         	blx	r3
  3164e0: 9b05         	ldr	r3, [sp, #0x14]
  3164e2: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3164e6: 681b         	ldr	r3, [r3]
  3164e8: f503 73de    	add.w	r3, r3, #0x1bc
  3164ec: 681c         	ldr	r4, [r3]
  3164ee: 9b05         	ldr	r3, [sp, #0x14]
  3164f0: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3164f4: ed9d 7b10    	vldr	d7, [sp, #64]
  3164f8: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3164fc: ed9d 7b12    	vldr	d7, [sp, #72]
  316500: eef7 7bc7    	vcvt.f32.f64	s15, d7
  316504: ab06         	add	r3, sp, #0x18
  316506: 4618         	mov	r0, r3
  316508: ee16 1a90    	vmov	r1, s13
  31650c: ee17 2a90    	vmov	r2, s15
  316510: f27c fbee    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27c7dc
  316514: ab06         	add	r3, sp, #0x18
  316516: 4628         	mov	r0, r5
  316518: 4619         	mov	r1, r3
  31651a: 47a0         	blx	r4
  31651c: 9b05         	ldr	r3, [sp, #0x14]
  31651e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  316522: 681b         	ldr	r3, [r3]
  316524: f503 732a    	add.w	r3, r3, #0x2a8
  316528: 681b         	ldr	r3, [r3]
  31652a: 9a05         	ldr	r2, [sp, #0x14]
  31652c: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  316530: 4610         	mov	r0, r2
  316532: f04f 0100    	mov.w	r1, #0x0
  316536: 4798         	blx	r3
  316538: 9b05         	ldr	r3, [sp, #0x14]
  31653a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  31653e: 681b         	ldr	r3, [r3]
  316540: f503 732e    	add.w	r3, r3, #0x2b8
  316544: 681c         	ldr	r4, [r3]
  316546: 9b05         	ldr	r3, [sp, #0x14]
  316548: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  31654c: f7fc fcd4    	bl	0x312ef8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x120> @ imm = #-0x3658
  316550: 4603         	mov	r3, r0
  316552: ee07 3a90    	vmov	s15, r3
  316556: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  31655a: eddf 7a0d    	vldr	s15, [pc, #52]          @ 0x316590 <EffectsManager::addShellAt(cpVect, float)+0x128>
  31655e: ee87 7a27    	vdiv.f32	s14, s14, s15
  316562: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  316566: ee37 7a67    	vsub.f32	s14, s14, s15
  31656a: eddf 7a0a    	vldr	s15, [pc, #40]          @ 0x316594 <EffectsManager::addShellAt(cpVect, float)+0x12c>
  31656e: ee67 7a27    	vmul.f32	s15, s14, s15
  316572: 4628         	mov	r0, r5
  316574: ee17 1a90    	vmov	r1, s15
  316578: 47a0         	blx	r4
  31657a: 9b05         	ldr	r3, [sp, #0x14]
  31657c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  316580: 4618         	mov	r0, r3
  316582: f2ab fef9    	bl	0x5c2378 <cocos2d::CCParticleSystem::addParticle()> @ imm = #0x2abdf2
  316586: b00d         	add	sp, #0x34
  316588: e8bd 4030    	pop.w	{r4, r5, lr}
  31658c: b002         	add	sp, #0x8
  31658e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31658f); words below are literal-pool data ---
  316590: 0000         	movs	r0, r0
  316592: 4e80         	ldr	r6, [pc, #0x200]        @ 0x316794 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x16c>
  316594: 0000         	movs	r0, r0
  316596: 4416         	add	r6, r2

// ==== EffectsManager::onGroundHit
//      file offset 0x316598 (= ELF address; Ghidra 0x326598), 142 bytes, Thumb-2
  316598: b500         	push	{lr}
  31659a: ed2d 8b02    	vpush	{d8}
  31659e: b08f         	sub	sp, #0x3c
  3165a0: 9005         	str	r0, [sp, #0x14]
  3165a2: 9104         	str	r1, [sp, #0x10]
  3165a4: 9b04         	ldr	r3, [sp, #0x10]
  3165a6: 9306         	str	r3, [sp, #0x18]
  3165a8: 9806         	ldr	r0, [sp, #0x18]
  3165aa: 2100         	movs	r1, #0x0
  3165ac: f283 fdb8    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x283b70
  3165b0: 4603         	mov	r3, r0
  3165b2: 9307         	str	r3, [sp, #0x1c]
  3165b4: 9806         	ldr	r0, [sp, #0x18]
  3165b6: 2101         	movs	r1, #0x1
  3165b8: f283 fdb2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x283b64
  3165bc: 4603         	mov	r3, r0
  3165be: 9308         	str	r3, [sp, #0x20]
  3165c0: 9806         	ldr	r0, [sp, #0x18]
  3165c2: 2102         	movs	r1, #0x2
  3165c4: f283 fdac    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x283b58
  3165c8: 4603         	mov	r3, r0
  3165ca: 9309         	str	r3, [sp, #0x24]
  3165cc: 9807         	ldr	r0, [sp, #0x1c]
  3165ce: f7c6 fb51    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3995e
  3165d2: ee07 0a90    	vmov	s15, r0
  3165d6: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3165da: 9808         	ldr	r0, [sp, #0x20]
  3165dc: f7c6 fb4a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3996c
  3165e0: ee07 0a90    	vmov	s15, r0
  3165e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3165e8: ab0a         	add	r3, sp, #0x28
  3165ea: 4618         	mov	r0, r3
  3165ec: eeb0 0b48    	vmov.f64	d0, d8
  3165f0: eeb0 1b47    	vmov.f64	d1, d7
  3165f4: f7fc fcb4    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x3698
  3165f8: 9809         	ldr	r0, [sp, #0x24]
  3165fa: f7c6 fb3b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3998a
  3165fe: 4603         	mov	r3, r0
  316600: 9302         	str	r3, [sp, #0x8]
  316602: 2303         	movs	r3, #0x3
  316604: 9303         	str	r3, [sp, #0xc]
  316606: 466b         	mov	r3, sp
  316608: aa0c         	add	r2, sp, #0x30
  31660a: e892 0003    	ldm.w	r2, {r0, r1}
  31660e: e883 0003    	stm.w	r3, {r0, r1}
  316612: ab0a         	add	r3, sp, #0x28
  316614: cb0c         	ldm	r3, {r2, r3}
  316616: 9805         	ldr	r0, [sp, #0x14]
  316618: f000 f806    	bl	0x316628 <EffectsManager::addGroundHitAt(cpVect, float, int)> @ imm = #0xc
  31661c: b00f         	add	sp, #0x3c
  31661e: ecbd 8b02    	vpop	{d8}
  316622: f85d fb04    	ldr	pc, [sp], #4

// ==== EffectsManager::addGroundHitAt
//      file offset 0x316628 (= ELF address; Ghidra 0x326628), 328 bytes, Thumb-2
  316628: b082         	sub	sp, #0x8
  31662a: b530         	push	{r4, r5, lr}
  31662c: b08d         	sub	sp, #0x34
  31662e: 9005         	str	r0, [sp, #0x14]
  316630: a910         	add	r1, sp, #0x40
  316632: e881 000c    	stm.w	r1, {r2, r3}
  316636: ab08         	add	r3, sp, #0x20
  316638: 4618         	mov	r0, r3
  31663a: eeb3 0b09    	vmov.f64	d0, #2.500000e+01
  31663e: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  316642: f7fc fc8d    	bl	0x312f60 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x188> @ imm = #-0x36e6
  316646: 466c         	mov	r4, sp
  316648: ab08         	add	r3, sp, #0x20
  31664a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31664c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  316650: f10d 0c40    	add.w	r12, sp, #0x40
  316654: e89c 000f    	ldm.w	r12, {r0, r1, r2, r3}
  316658: f7fc fe0e    	bl	0x313278 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x4a0> @ imm = #-0x33e4
  31665c: 4603         	mov	r3, r0
  31665e: f083 0301    	eor	r3, r3, #0x1
  316662: b2db         	uxtb	r3, r3
  316664: 2b00         	cmp	r3, #0x0
  316666: d000         	beq	0x31666a <EffectsManager::addGroundHitAt(cpVect, float, int)+0x42> @ imm = #0x0
  316668: e079         	b	0x31675e <EffectsManager::addGroundHitAt(cpVect, float, int)+0x136> @ imm = #0xf2
  31666a: 9b05         	ldr	r3, [sp, #0x14]
  31666c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  316670: 681b         	ldr	r3, [r3]
  316672: f503 73de    	add.w	r3, r3, #0x1bc
  316676: 681c         	ldr	r4, [r3]
  316678: 9b05         	ldr	r3, [sp, #0x14]
  31667a: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  31667e: ed9d 7b10    	vldr	d7, [sp, #64]
  316682: eef7 6bc7    	vcvt.f32.f64	s13, d7
  316686: ed9d 7b12    	vldr	d7, [sp, #72]
  31668a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31668e: ab06         	add	r3, sp, #0x18
  316690: 4618         	mov	r0, r3
  316692: ee16 1a90    	vmov	r1, s13
  316696: ee17 2a90    	vmov	r2, s15
  31669a: f27c fb29    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27c652
  31669e: ab06         	add	r3, sp, #0x18
  3166a0: 4628         	mov	r0, r5
  3166a2: 4619         	mov	r1, r3
  3166a4: 47a0         	blx	r4
  3166a6: 9b05         	ldr	r3, [sp, #0x14]
  3166a8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3166ac: 681b         	ldr	r3, [r3]
  3166ae: f503 73ee    	add.w	r3, r3, #0x1dc
  3166b2: 681b         	ldr	r3, [r3]
  3166b4: 9a05         	ldr	r2, [sp, #0x14]
  3166b6: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3166ba: 4610         	mov	r0, r2
  3166bc: 9914         	ldr	r1, [sp, #0x50]
  3166be: 4798         	blx	r3
  3166c0: 9b05         	ldr	r3, [sp, #0x14]
  3166c2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3166c6: 681b         	ldr	r3, [r3]
  3166c8: f503 732a    	add.w	r3, r3, #0x2a8
  3166cc: 681c         	ldr	r4, [r3]
  3166ce: 9b05         	ldr	r3, [sp, #0x14]
  3166d0: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  3166d4: f7fc fc10    	bl	0x312ef8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x120> @ imm = #-0x37e0
  3166d8: 4603         	mov	r3, r0
  3166da: ee07 3a90    	vmov	s15, r3
  3166de: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3166e2: eddf 7a21    	vldr	s15, [pc, #132]         @ 0x316768 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x140>
  3166e6: ee87 7a27    	vdiv.f32	s14, s14, s15
  3166ea: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3166ee: ee37 7a67    	vsub.f32	s14, s14, s15
  3166f2: eddf 7a1e    	vldr	s15, [pc, #120]         @ 0x31676c <EffectsManager::addGroundHitAt(cpVect, float, int)+0x144>
  3166f6: ee67 7a27    	vmul.f32	s15, s14, s15
  3166fa: 4628         	mov	r0, r5
  3166fc: ee17 1a90    	vmov	r1, s15
  316700: 47a0         	blx	r4
  316702: 9b05         	ldr	r3, [sp, #0x14]
  316704: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  316708: 681b         	ldr	r3, [r3]
  31670a: f503 732e    	add.w	r3, r3, #0x2b8
  31670e: 681c         	ldr	r4, [r3]
  316710: 9b05         	ldr	r3, [sp, #0x14]
  316712: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  316716: f7fc fbef    	bl	0x312ef8 <EMP::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x120> @ imm = #-0x3822
  31671a: 4603         	mov	r3, r0
  31671c: ee07 3a90    	vmov	s15, r3
  316720: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  316724: eddf 7a10    	vldr	s15, [pc, #64]          @ 0x316768 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x140>
  316728: ee87 7a27    	vdiv.f32	s14, s14, s15
  31672c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  316730: ee37 7a67    	vsub.f32	s14, s14, s15
  316734: eddf 7a0d    	vldr	s15, [pc, #52]          @ 0x31676c <EffectsManager::addGroundHitAt(cpVect, float, int)+0x144>
  316738: ee67 7a27    	vmul.f32	s15, s14, s15
  31673c: 4628         	mov	r0, r5
  31673e: ee17 1a90    	vmov	r1, s15
  316742: 47a0         	blx	r4
  316744: e008         	b	0x316758 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x130> @ imm = #0x10
  316746: 9b05         	ldr	r3, [sp, #0x14]
  316748: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  31674c: 4618         	mov	r0, r3
  31674e: f2ab fe13    	bl	0x5c2378 <cocos2d::CCParticleSystem::addParticle()> @ imm = #0x2abc26
  316752: 9b15         	ldr	r3, [sp, #0x54]
  316754: 3b01         	subs	r3, #0x1
  316756: 9315         	str	r3, [sp, #0x54]
  316758: 9b15         	ldr	r3, [sp, #0x54]
  31675a: 2b00         	cmp	r3, #0x0
  31675c: dcf3         	bgt	0x316746 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x11e> @ imm = #-0x1a
  31675e: b00d         	add	sp, #0x34
  316760: e8bd 4030    	pop.w	{r4, r5, lr}
  316764: b002         	add	sp, #0x8
  316766: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x316767); words below are literal-pool data ---
  316768: 0000         	movs	r0, r0
  31676a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x31696c <EffectsManager::addGroundHitAt(cpVect, float, int)+0x344>
  31676c: 0000         	movs	r0, r0
  31676e: 4416         	add	r6, r2

// ==== EffectsManager::create
//      file offset 0x3fadec (= ELF address; Ghidra 0x40adec), 112 bytes, Thumb-2
  3fadec: b510         	push	{r4, lr}
  3fadee: b082         	sub	sp, #0x8
  3fadf0: f44f 709e    	mov.w	r0, #0x13c
  3fadf4: f38c fdb6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38cb6c
  3fadf8: 4603         	mov	r3, r0
  3fadfa: 461c         	mov	r4, r3
  3fadfc: 4620         	mov	r0, r4
  3fadfe: f718 ff89    	bl	0x313d14 <EffectsManager::EffectsManager()> @ imm = #-0xe70ee
  3fae02: 9401         	str	r4, [sp, #0x4]
  3fae04: 9b01         	ldr	r3, [sp, #0x4]
  3fae06: 2b00         	cmp	r3, #0x0
  3fae08: d00a         	beq	0x3fae20 <EffectsManager::create()+0x34> @ imm = #0x14
  3fae0a: 9b01         	ldr	r3, [sp, #0x4]
  3fae0c: 681b         	ldr	r3, [r3]
  3fae0e: 3318         	adds	r3, #0x18
  3fae10: 681b         	ldr	r3, [r3]
  3fae12: 9801         	ldr	r0, [sp, #0x4]
  3fae14: 4798         	blx	r3
  3fae16: 4603         	mov	r3, r0
  3fae18: 2b00         	cmp	r3, #0x0
  3fae1a: d001         	beq	0x3fae20 <EffectsManager::create()+0x34> @ imm = #0x2
  3fae1c: 2301         	movs	r3, #0x1
  3fae1e: e000         	b	0x3fae22 <EffectsManager::create()+0x36> @ imm = #0x0
  3fae20: 2300         	movs	r3, #0x0
  3fae22: 2b00         	cmp	r3, #0x0
  3fae24: d005         	beq	0x3fae32 <EffectsManager::create()+0x46> @ imm = #0xa
  3fae26: 9b01         	ldr	r3, [sp, #0x4]
  3fae28: 4618         	mov	r0, r3
  3fae2a: f19d f867    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19d0ce
  3fae2e: 9b01         	ldr	r3, [sp, #0x4]
  3fae30: e011         	b	0x3fae56 <EffectsManager::create()+0x6a> @ imm = #0x22
  3fae32: 9b01         	ldr	r3, [sp, #0x4]
  3fae34: 2b00         	cmp	r3, #0x0
  3fae36: d005         	beq	0x3fae44 <EffectsManager::create()+0x58> @ imm = #0xa
  3fae38: 9b01         	ldr	r3, [sp, #0x4]
  3fae3a: 681b         	ldr	r3, [r3]
  3fae3c: 3308         	adds	r3, #0x8
  3fae3e: 681b         	ldr	r3, [r3]
  3fae40: 9801         	ldr	r0, [sp, #0x4]
  3fae42: 4798         	blx	r3
  3fae44: 2300         	movs	r3, #0x0
  3fae46: 9301         	str	r3, [sp, #0x4]
  3fae48: 2300         	movs	r3, #0x0
  3fae4a: e004         	b	0x3fae56 <EffectsManager::create()+0x6a> @ imm = #0x8
  3fae4c: 4620         	mov	r0, r4
  3fae4e: f38d f929    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38d252
  3fae52: f38d f92b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38d256
  3fae56: 4618         	mov	r0, r3
  3fae58: b002         	add	sp, #0x8
  3fae5a: bd10         	pop	{r4, pc}
