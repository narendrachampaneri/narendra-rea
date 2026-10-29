// PlayerLobbyOnlineHosted: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 36 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlayerLobbyOnlineHosted.cpp

// ==== PlayerLobbyOnlineHosted::create
//      file offset 0x350ea4 (= ELF address; Ghidra 0x360ea4), 112 bytes, Thumb-2
  350ea4: b510         	push	{r4, lr}
  350ea6: b082         	sub	sp, #0x8
  350ea8: f44f 70ce    	mov.w	r0, #0x19c
  350eac: f036 f55a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x436ab4
  350eb0: 4603         	mov	r3, r0
  350eb2: 461c         	mov	r4, r3
  350eb4: 4620         	mov	r0, r4
  350eb6: f055 fe65    	bl	0x3a6b84 <PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted()> @ imm = #0x55cca
  350eba: 9401         	str	r4, [sp, #0x4]
  350ebc: 9b01         	ldr	r3, [sp, #0x4]
  350ebe: 2b00         	cmp	r3, #0x0
  350ec0: d00a         	beq	0x350ed8 <PlayerLobbyOnlineHosted::create()+0x34> @ imm = #0x14
  350ec2: 9b01         	ldr	r3, [sp, #0x4]
  350ec4: 681b         	ldr	r3, [r3]
  350ec6: 3318         	adds	r3, #0x18
  350ec8: 681b         	ldr	r3, [r3]
  350eca: 9801         	ldr	r0, [sp, #0x4]
  350ecc: 4798         	blx	r3
  350ece: 4603         	mov	r3, r0
  350ed0: 2b00         	cmp	r3, #0x0
  350ed2: d001         	beq	0x350ed8 <PlayerLobbyOnlineHosted::create()+0x34> @ imm = #0x2
  350ed4: 2301         	movs	r3, #0x1
  350ed6: e000         	b	0x350eda <PlayerLobbyOnlineHosted::create()+0x36> @ imm = #0x0
  350ed8: 2300         	movs	r3, #0x0
  350eda: 2b00         	cmp	r3, #0x0
  350edc: d005         	beq	0x350eea <PlayerLobbyOnlineHosted::create()+0x46> @ imm = #0xa
  350ede: 9b01         	ldr	r3, [sp, #0x4]
  350ee0: 4618         	mov	r0, r3
  350ee2: f247 f80b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x247016
  350ee6: 9b01         	ldr	r3, [sp, #0x4]
  350ee8: e011         	b	0x350f0e <PlayerLobbyOnlineHosted::create()+0x6a> @ imm = #0x22
  350eea: 9b01         	ldr	r3, [sp, #0x4]
  350eec: 2b00         	cmp	r3, #0x0
  350eee: d005         	beq	0x350efc <PlayerLobbyOnlineHosted::create()+0x58> @ imm = #0xa
  350ef0: 9b01         	ldr	r3, [sp, #0x4]
  350ef2: 681b         	ldr	r3, [r3]
  350ef4: 3308         	adds	r3, #0x8
  350ef6: 681b         	ldr	r3, [r3]
  350ef8: 9801         	ldr	r0, [sp, #0x4]
  350efa: 4798         	blx	r3
  350efc: 2300         	movs	r3, #0x0
  350efe: 9301         	str	r3, [sp, #0x4]
  350f00: 2300         	movs	r3, #0x0
  350f02: e004         	b	0x350f0e <PlayerLobbyOnlineHosted::create()+0x6a> @ imm = #0x8
  350f04: 4620         	mov	r0, r4
  350f06: f037 f0cd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43719a
  350f0a: f037 f0cf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43719e
  350f0e: 4618         	mov	r0, r3
  350f10: b002         	add	sp, #0x8
  350f12: bd10         	pop	{r4, pc}

// ==== PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted
//      file offset 0x3a6b84 (= ELF address; Ghidra 0x3b6b84), 88 bytes, Thumb-2
  3a6b84: b510         	push	{r4, lr}
  3a6b86: b082         	sub	sp, #0x8
  3a6b88: 9001         	str	r0, [sp, #0x4]
  3a6b8a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3a6bd4 <PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted()+0x50>
  3a6b8c: 447c         	add	r4, pc
  3a6b8e: 9b01         	ldr	r3, [sp, #0x4]
  3a6b90: 4618         	mov	r0, r3
  3a6b92: f7f3 f93b    	bl	0x399e0c <PlayerLobby::PlayerLobby()> @ imm = #-0xcd8a
  3a6b96: 9b01         	ldr	r3, [sp, #0x4]
  3a6b98: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a6bd8 <PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted()+0x54>
  3a6b9a: 58a2         	ldr	r2, [r4, r2]
  3a6b9c: 3208         	adds	r2, #0x8
  3a6b9e: 601a         	str	r2, [r3]
  3a6ba0: 9b01         	ldr	r3, [sp, #0x4]
  3a6ba2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a6bd8 <PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted()+0x54>
  3a6ba4: 58a2         	ldr	r2, [r4, r2]
  3a6ba6: f502 7219    	add.w	r2, r2, #0x264
  3a6baa: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3a6bae: 9b01         	ldr	r3, [sp, #0x4]
  3a6bb0: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3a6bd8 <PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted()+0x54>
  3a6bb2: 58a2         	ldr	r2, [r4, r2]
  3a6bb4: f502 7223    	add.w	r2, r2, #0x28c
  3a6bb8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a6bbc: 9b01         	ldr	r3, [sp, #0x4]
  3a6bbe: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a6bd8 <PlayerLobbyOnlineHosted::PlayerLobbyOnlineHosted()+0x54>
  3a6bc0: 58a2         	ldr	r2, [r4, r2]
  3a6bc2: f502 722b    	add.w	r2, r2, #0x2ac
  3a6bc6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3a6bca: 9b01         	ldr	r3, [sp, #0x4]
  3a6bcc: 4618         	mov	r0, r3
  3a6bce: b002         	add	sp, #0x8
  3a6bd0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a6bd1); words below are literal-pool data ---
  3a6bd2: bf00         	nop
  3a6bd4: be7c         	bkpt	#0x7c
  3a6bd6: 0058         	lsls	r0, r3, #0x1
  3a6bd8: dd84         	ble	0x3a6ae4 <MapVoteLayer::updateMapVote()+0x754> @ imm = #-0xf8
  3a6bda: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineHosted::init
//      file offset 0x3a6bdc (= ELF address; Ghidra 0x3b6bdc), 880 bytes, Thumb-2
  3a6bdc: b530         	push	{r4, r5, lr}
  3a6bde: b09f         	sub	sp, #0x7c
  3a6be0: 9003         	str	r0, [sp, #0xc]
  3a6be2: 4cbe         	ldr	r4, [pc, #0x2f8]        @ 0x3a6edc <PlayerLobbyOnlineHosted::init()+0x300>
  3a6be4: 447c         	add	r4, pc
  3a6be6: 9b03         	ldr	r3, [sp, #0xc]
  3a6be8: 4618         	mov	r0, r3
  3a6bea: f7f3 f97f    	bl	0x399eec <PlayerLobby::init()> @ imm = #-0xcd02
  3a6bee: 4603         	mov	r3, r0
  3a6bf0: f88d 3013    	strb.w	r3, [sp, #0x13]
  3a6bf4: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  3a6bf8: f083 0301    	eor	r3, r3, #0x1
  3a6bfc: b2db         	uxtb	r3, r3
  3a6bfe: 2b00         	cmp	r3, #0x0
  3a6c00: d001         	beq	0x3a6c06 <PlayerLobbyOnlineHosted::init()+0x2a> @ imm = #0x2
  3a6c02: 2300         	movs	r3, #0x0
  3a6c04: e166         	b	0x3a6ed4 <PlayerLobbyOnlineHosted::init()+0x2f8> @ imm = #0x2cc
  3a6c06: f7fe f881    	bl	0x3a4d0c <MapVoteLayer::create()> @ imm = #-0x1efe
  3a6c0a: 4602         	mov	r2, r0
  3a6c0c: 9b03         	ldr	r3, [sp, #0xc]
  3a6c0e: f8c3 2198    	str.w	r2, [r3, #0x198]
  3a6c12: 9b03         	ldr	r3, [sp, #0xc]
  3a6c14: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a6c18: 4618         	mov	r0, r3
  3a6c1a: f1f1 f965    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f12ca
  3a6c1e: 9b03         	ldr	r3, [sp, #0xc]
  3a6c20: 681b         	ldr	r3, [r3]
  3a6c22: 33c8         	adds	r3, #0xc8
  3a6c24: 681b         	ldr	r3, [r3]
  3a6c26: 9903         	ldr	r1, [sp, #0xc]
  3a6c28: 9a03         	ldr	r2, [sp, #0xc]
  3a6c2a: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a6c2e: 4608         	mov	r0, r1
  3a6c30: 4611         	mov	r1, r2
  3a6c32: 4798         	blx	r3
  3a6c34: 9b03         	ldr	r3, [sp, #0xc]
  3a6c36: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a6c3a: 681b         	ldr	r3, [r3]
  3a6c3c: 3390         	adds	r3, #0x90
  3a6c3e: 681b         	ldr	r3, [r3]
  3a6c40: 9a03         	ldr	r2, [sp, #0xc]
  3a6c42: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a6c46: 4610         	mov	r0, r2
  3a6c48: 2100         	movs	r1, #0x0
  3a6c4a: 4798         	blx	r3
  3a6c4c: 9b03         	ldr	r3, [sp, #0xc]
  3a6c4e: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a6c52: 681b         	ldr	r3, [r3]
  3a6c54: 334c         	adds	r3, #0x4c
  3a6c56: 681b         	ldr	r3, [r3]
  3a6c58: 9a03         	ldr	r2, [sp, #0xc]
  3a6c5a: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a6c5e: 4610         	mov	r0, r2
  3a6c60: 4a9f         	ldr	r2, [pc, #0x27c]        @ 0x3a6ee0 <PlayerLobbyOnlineHosted::init()+0x304>
  3a6c62: 58a2         	ldr	r2, [r4, r2]
  3a6c64: 4611         	mov	r1, r2
  3a6c66: 4798         	blx	r3
  3a6c68: 9b03         	ldr	r3, [sp, #0xc]
  3a6c6a: f04f 0200    	mov.w	r2, #0x0
  3a6c6e: f8c3 217c    	str.w	r2, [r3, #0x17c]
  3a6c72: 9b03         	ldr	r3, [sp, #0xc]
  3a6c74: 2200         	movs	r2, #0x0
  3a6c76: f883 2188    	strb.w	r2, [r3, #0x188]
  3a6c7a: 9b03         	ldr	r3, [sp, #0xc]
  3a6c7c: 2200         	movs	r2, #0x0
  3a6c7e: f883 2189    	strb.w	r2, [r3, #0x189]
  3a6c82: 9b03         	ldr	r3, [sp, #0xc]
  3a6c84: f04f 0200    	mov.w	r2, #0x0
  3a6c88: f2c4 12c8    	movt	r2, #0x41c8
  3a6c8c: f8c3 2180    	str.w	r2, [r3, #0x180]
  3a6c90: 9b03         	ldr	r3, [sp, #0xc]
  3a6c92: 2200         	movs	r2, #0x0
  3a6c94: f8c3 2184    	str.w	r2, [r3, #0x184]
  3a6c98: 9b03         	ldr	r3, [sp, #0xc]
  3a6c9a: 2200         	movs	r2, #0x0
  3a6c9c: f883 218a    	strb.w	r2, [r3, #0x18a]
  3a6ca0: 4b90         	ldr	r3, [pc, #0x240]        @ 0x3a6ee4 <PlayerLobbyOnlineHosted::init()+0x308>
  3a6ca2: 58e3         	ldr	r3, [r4, r3]
  3a6ca4: 2204         	movs	r2, #0x4
  3a6ca6: 601a         	str	r2, [r3]
  3a6ca8: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x3a6ee8 <PlayerLobbyOnlineHosted::init()+0x30c>
  3a6caa: 58e3         	ldr	r3, [r4, r3]
  3a6cac: 2203         	movs	r2, #0x3
  3a6cae: 601a         	str	r2, [r3]
  3a6cb0: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x3a6eec <PlayerLobbyOnlineHosted::init()+0x310>
  3a6cb2: 58e3         	ldr	r3, [r4, r3]
  3a6cb4: 681b         	ldr	r3, [r3]
  3a6cb6: 4618         	mov	r0, r3
  3a6cb8: f1ec ffe8    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x1ecfd0
  3a6cbc: 4603         	mov	r3, r0
  3a6cbe: 9306         	str	r3, [sp, #0x18]
  3a6cc0: 2000         	movs	r0, #0x0
  3a6cc2: f72f e9a0    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0xd0cc0
  3a6cc6: 9007         	str	r0, [sp, #0x1c]
  3a6cc8: 9d07         	ldr	r5, [sp, #0x1c]
  3a6cca: 9806         	ldr	r0, [sp, #0x18]
  3a6ccc: f1f3 fa08    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1f3410
  3a6cd0: 4603         	mov	r3, r0
  3a6cd2: 4628         	mov	r0, r5
  3a6cd4: 4619         	mov	r1, r3
  3a6cd6: f017 f681    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x417d02
  3a6cda: 460b         	mov	r3, r1
  3a6cdc: 9305         	str	r3, [sp, #0x14]
  3a6cde: 9d05         	ldr	r5, [sp, #0x14]
  3a6ce0: 9806         	ldr	r0, [sp, #0x18]
  3a6ce2: f1f3 f9fd    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1f33fa
  3a6ce6: 4603         	mov	r3, r0
  3a6ce8: 429d         	cmp	r5, r3
  3a6cea: bf34         	ite	lo
  3a6cec: 2300         	movlo	r3, #0x0
  3a6cee: 2301         	movhs	r3, #0x1
  3a6cf0: b2db         	uxtb	r3, r3
  3a6cf2: 2b00         	cmp	r3, #0x0
  3a6cf4: d001         	beq	0x3a6cfa <PlayerLobbyOnlineHosted::init()+0x11e> @ imm = #0x2
  3a6cf6: 2300         	movs	r3, #0x0
  3a6cf8: 9305         	str	r3, [sp, #0x14]
  3a6cfa: 9b05         	ldr	r3, [sp, #0x14]
  3a6cfc: 9806         	ldr	r0, [sp, #0x18]
  3a6cfe: 4619         	mov	r1, r3
  3a6d00: f1f3 fa0e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f341c
  3a6d04: 4603         	mov	r3, r0
  3a6d06: 4618         	mov	r0, r3
  3a6d08: f1f2 fe0e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f2c1c
  3a6d0c: 4603         	mov	r3, r0
  3a6d0e: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x3a6ef0 <PlayerLobbyOnlineHosted::init()+0x314>
  3a6d10: 58a2         	ldr	r2, [r4, r2]
  3a6d12: 4610         	mov	r0, r2
  3a6d14: 4619         	mov	r1, r3
  3a6d16: f00f f0ab    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x40f156
  3a6d1a: f239 fcc9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x239992
  3a6d1e: 4602         	mov	r2, r0
  3a6d20: 9b03         	ldr	r3, [sp, #0xc]
  3a6d22: 4974         	ldr	r1, [pc, #0x1d0]        @ 0x3a6ef4 <PlayerLobbyOnlineHosted::init()+0x318>
  3a6d24: 5861         	ldr	r1, [r4, r1]
  3a6d26: 9108         	str	r1, [sp, #0x20]
  3a6d28: 2100         	movs	r1, #0x0
  3a6d2a: 9109         	str	r1, [sp, #0x24]
  3a6d2c: 4972         	ldr	r1, [pc, #0x1c8]        @ 0x3a6ef8 <PlayerLobbyOnlineHosted::init()+0x31c>
  3a6d2e: 4479         	add	r1, pc
  3a6d30: 9100         	str	r1, [sp]
  3a6d32: 2100         	movs	r1, #0x0
  3a6d34: 9101         	str	r1, [sp, #0x4]
  3a6d36: 4610         	mov	r0, r2
  3a6d38: 4619         	mov	r1, r3
  3a6d3a: ab08         	add	r3, sp, #0x20
  3a6d3c: cb0c         	ldm	r3, {r2, r3}
  3a6d3e: f239 fd53    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239aa6
  3a6d42: f239 fcb5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23996a
  3a6d46: 4602         	mov	r2, r0
  3a6d48: 9b03         	ldr	r3, [sp, #0xc]
  3a6d4a: 496c         	ldr	r1, [pc, #0x1b0]        @ 0x3a6efc <PlayerLobbyOnlineHosted::init()+0x320>
  3a6d4c: 5861         	ldr	r1, [r4, r1]
  3a6d4e: 910a         	str	r1, [sp, #0x28]
  3a6d50: 2100         	movs	r1, #0x0
  3a6d52: 910b         	str	r1, [sp, #0x2c]
  3a6d54: 496a         	ldr	r1, [pc, #0x1a8]        @ 0x3a6f00 <PlayerLobbyOnlineHosted::init()+0x324>
  3a6d56: 4479         	add	r1, pc
  3a6d58: 9100         	str	r1, [sp]
  3a6d5a: 2100         	movs	r1, #0x0
  3a6d5c: 9101         	str	r1, [sp, #0x4]
  3a6d5e: 4610         	mov	r0, r2
  3a6d60: 4619         	mov	r1, r3
  3a6d62: ab0a         	add	r3, sp, #0x28
  3a6d64: cb0c         	ldm	r3, {r2, r3}
  3a6d66: f239 fd3f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239a7e
  3a6d6a: f239 fca1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x239942
  3a6d6e: 4602         	mov	r2, r0
  3a6d70: 9b03         	ldr	r3, [sp, #0xc]
  3a6d72: 4964         	ldr	r1, [pc, #0x190]        @ 0x3a6f04 <PlayerLobbyOnlineHosted::init()+0x328>
  3a6d74: 5861         	ldr	r1, [r4, r1]
  3a6d76: 910c         	str	r1, [sp, #0x30]
  3a6d78: 2100         	movs	r1, #0x0
  3a6d7a: 910d         	str	r1, [sp, #0x34]
  3a6d7c: 4962         	ldr	r1, [pc, #0x188]        @ 0x3a6f08 <PlayerLobbyOnlineHosted::init()+0x32c>
  3a6d7e: 4479         	add	r1, pc
  3a6d80: 9100         	str	r1, [sp]
  3a6d82: 2100         	movs	r1, #0x0
  3a6d84: 9101         	str	r1, [sp, #0x4]
  3a6d86: 4610         	mov	r0, r2
  3a6d88: 4619         	mov	r1, r3
  3a6d8a: ab0c         	add	r3, sp, #0x30
  3a6d8c: cb0c         	ldm	r3, {r2, r3}
  3a6d8e: f239 fd2b    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239a56
  3a6d92: f239 fc8d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23991a
  3a6d96: 4602         	mov	r2, r0
  3a6d98: 9b03         	ldr	r3, [sp, #0xc]
  3a6d9a: 495c         	ldr	r1, [pc, #0x170]        @ 0x3a6f0c <PlayerLobbyOnlineHosted::init()+0x330>
  3a6d9c: 5861         	ldr	r1, [r4, r1]
  3a6d9e: 910e         	str	r1, [sp, #0x38]
  3a6da0: 2100         	movs	r1, #0x0
  3a6da2: 910f         	str	r1, [sp, #0x3c]
  3a6da4: 495a         	ldr	r1, [pc, #0x168]        @ 0x3a6f10 <PlayerLobbyOnlineHosted::init()+0x334>
  3a6da6: 4479         	add	r1, pc
  3a6da8: 9100         	str	r1, [sp]
  3a6daa: 2100         	movs	r1, #0x0
  3a6dac: 9101         	str	r1, [sp, #0x4]
  3a6dae: 4610         	mov	r0, r2
  3a6db0: 4619         	mov	r1, r3
  3a6db2: ab0e         	add	r3, sp, #0x38
  3a6db4: cb0c         	ldm	r3, {r2, r3}
  3a6db6: f239 fd17    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239a2e
  3a6dba: f239 fc79    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2398f2
  3a6dbe: 4602         	mov	r2, r0
  3a6dc0: 9b03         	ldr	r3, [sp, #0xc]
  3a6dc2: 4954         	ldr	r1, [pc, #0x150]        @ 0x3a6f14 <PlayerLobbyOnlineHosted::init()+0x338>
  3a6dc4: 5861         	ldr	r1, [r4, r1]
  3a6dc6: 9110         	str	r1, [sp, #0x40]
  3a6dc8: 2100         	movs	r1, #0x0
  3a6dca: 9111         	str	r1, [sp, #0x44]
  3a6dcc: 4952         	ldr	r1, [pc, #0x148]        @ 0x3a6f18 <PlayerLobbyOnlineHosted::init()+0x33c>
  3a6dce: 4479         	add	r1, pc
  3a6dd0: 9100         	str	r1, [sp]
  3a6dd2: 2100         	movs	r1, #0x0
  3a6dd4: 9101         	str	r1, [sp, #0x4]
  3a6dd6: 4610         	mov	r0, r2
  3a6dd8: 4619         	mov	r1, r3
  3a6dda: ab10         	add	r3, sp, #0x40
  3a6ddc: cb0c         	ldm	r3, {r2, r3}
  3a6dde: f239 fd03    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239a06
  3a6de2: f239 fc65    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2398ca
  3a6de6: 4602         	mov	r2, r0
  3a6de8: 9b03         	ldr	r3, [sp, #0xc]
  3a6dea: 494c         	ldr	r1, [pc, #0x130]        @ 0x3a6f1c <PlayerLobbyOnlineHosted::init()+0x340>
  3a6dec: 5861         	ldr	r1, [r4, r1]
  3a6dee: 9112         	str	r1, [sp, #0x48]
  3a6df0: 2100         	movs	r1, #0x0
  3a6df2: 9113         	str	r1, [sp, #0x4c]
  3a6df4: 494a         	ldr	r1, [pc, #0x128]        @ 0x3a6f20 <PlayerLobbyOnlineHosted::init()+0x344>
  3a6df6: 4479         	add	r1, pc
  3a6df8: 9100         	str	r1, [sp]
  3a6dfa: 2100         	movs	r1, #0x0
  3a6dfc: 9101         	str	r1, [sp, #0x4]
  3a6dfe: 4610         	mov	r0, r2
  3a6e00: 4619         	mov	r1, r3
  3a6e02: ab12         	add	r3, sp, #0x48
  3a6e04: cb0c         	ldm	r3, {r2, r3}
  3a6e06: f239 fcef    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2399de
  3a6e0a: f239 fc51    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2398a2
  3a6e0e: 4602         	mov	r2, r0
  3a6e10: 9b03         	ldr	r3, [sp, #0xc]
  3a6e12: 4944         	ldr	r1, [pc, #0x110]        @ 0x3a6f24 <PlayerLobbyOnlineHosted::init()+0x348>
  3a6e14: 5861         	ldr	r1, [r4, r1]
  3a6e16: 9114         	str	r1, [sp, #0x50]
  3a6e18: 2100         	movs	r1, #0x0
  3a6e1a: 9115         	str	r1, [sp, #0x54]
  3a6e1c: 4942         	ldr	r1, [pc, #0x108]        @ 0x3a6f28 <PlayerLobbyOnlineHosted::init()+0x34c>
  3a6e1e: 4479         	add	r1, pc
  3a6e20: 9100         	str	r1, [sp]
  3a6e22: 2100         	movs	r1, #0x0
  3a6e24: 9101         	str	r1, [sp, #0x4]
  3a6e26: 4610         	mov	r0, r2
  3a6e28: 4619         	mov	r1, r3
  3a6e2a: ab14         	add	r3, sp, #0x50
  3a6e2c: cb0c         	ldm	r3, {r2, r3}
  3a6e2e: f239 fcdb    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2399b6
  3a6e32: f239 fc3d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23987a
  3a6e36: 4602         	mov	r2, r0
  3a6e38: 9b03         	ldr	r3, [sp, #0xc]
  3a6e3a: 493c         	ldr	r1, [pc, #0xf0]         @ 0x3a6f2c <PlayerLobbyOnlineHosted::init()+0x350>
  3a6e3c: 5861         	ldr	r1, [r4, r1]
  3a6e3e: 9116         	str	r1, [sp, #0x58]
  3a6e40: 2100         	movs	r1, #0x0
  3a6e42: 9117         	str	r1, [sp, #0x5c]
  3a6e44: 493a         	ldr	r1, [pc, #0xe8]         @ 0x3a6f30 <PlayerLobbyOnlineHosted::init()+0x354>
  3a6e46: 4479         	add	r1, pc
  3a6e48: 9100         	str	r1, [sp]
  3a6e4a: 2100         	movs	r1, #0x0
  3a6e4c: 9101         	str	r1, [sp, #0x4]
  3a6e4e: 4610         	mov	r0, r2
  3a6e50: 4619         	mov	r1, r3
  3a6e52: ab16         	add	r3, sp, #0x58
  3a6e54: cb0c         	ldm	r3, {r2, r3}
  3a6e56: f239 fcc7    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x23998e
  3a6e5a: f239 fc29    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x239852
  3a6e5e: 4602         	mov	r2, r0
  3a6e60: 9b03         	ldr	r3, [sp, #0xc]
  3a6e62: 4934         	ldr	r1, [pc, #0xd0]         @ 0x3a6f34 <PlayerLobbyOnlineHosted::init()+0x358>
  3a6e64: 5861         	ldr	r1, [r4, r1]
  3a6e66: 9118         	str	r1, [sp, #0x60]
  3a6e68: 2100         	movs	r1, #0x0
  3a6e6a: 9119         	str	r1, [sp, #0x64]
  3a6e6c: 4932         	ldr	r1, [pc, #0xc8]         @ 0x3a6f38 <PlayerLobbyOnlineHosted::init()+0x35c>
  3a6e6e: 4479         	add	r1, pc
  3a6e70: 9100         	str	r1, [sp]
  3a6e72: 2100         	movs	r1, #0x0
  3a6e74: 9101         	str	r1, [sp, #0x4]
  3a6e76: 4610         	mov	r0, r2
  3a6e78: 4619         	mov	r1, r3
  3a6e7a: ab18         	add	r3, sp, #0x60
  3a6e7c: cb0c         	ldm	r3, {r2, r3}
  3a6e7e: f239 fcb3    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239966
  3a6e82: f239 fc15    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23982a
  3a6e86: 4602         	mov	r2, r0
  3a6e88: 9b03         	ldr	r3, [sp, #0xc]
  3a6e8a: 492c         	ldr	r1, [pc, #0xb0]         @ 0x3a6f3c <PlayerLobbyOnlineHosted::init()+0x360>
  3a6e8c: 5861         	ldr	r1, [r4, r1]
  3a6e8e: 911a         	str	r1, [sp, #0x68]
  3a6e90: 2100         	movs	r1, #0x0
  3a6e92: 911b         	str	r1, [sp, #0x6c]
  3a6e94: 492a         	ldr	r1, [pc, #0xa8]         @ 0x3a6f40 <PlayerLobbyOnlineHosted::init()+0x364>
  3a6e96: 4479         	add	r1, pc
  3a6e98: 9100         	str	r1, [sp]
  3a6e9a: 2100         	movs	r1, #0x0
  3a6e9c: 9101         	str	r1, [sp, #0x4]
  3a6e9e: 4610         	mov	r0, r2
  3a6ea0: 4619         	mov	r1, r3
  3a6ea2: ab1a         	add	r3, sp, #0x68
  3a6ea4: cb0c         	ldm	r3, {r2, r3}
  3a6ea6: f239 fc9f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x23993e
  3a6eaa: f239 fc01    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x239802
  3a6eae: 4602         	mov	r2, r0
  3a6eb0: 9b03         	ldr	r3, [sp, #0xc]
  3a6eb2: 4924         	ldr	r1, [pc, #0x90]         @ 0x3a6f44 <PlayerLobbyOnlineHosted::init()+0x368>
  3a6eb4: 5861         	ldr	r1, [r4, r1]
  3a6eb6: 911c         	str	r1, [sp, #0x70]
  3a6eb8: 2100         	movs	r1, #0x0
  3a6eba: 911d         	str	r1, [sp, #0x74]
  3a6ebc: 4922         	ldr	r1, [pc, #0x88]         @ 0x3a6f48 <PlayerLobbyOnlineHosted::init()+0x36c>
  3a6ebe: 4479         	add	r1, pc
  3a6ec0: 9100         	str	r1, [sp]
  3a6ec2: 2100         	movs	r1, #0x0
  3a6ec4: 9101         	str	r1, [sp, #0x4]
  3a6ec6: 4610         	mov	r0, r2
  3a6ec8: 4619         	mov	r1, r3
  3a6eca: ab1c         	add	r3, sp, #0x70
  3a6ecc: cb0c         	ldm	r3, {r2, r3}
  3a6ece: f239 fc8b    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x239916
  3a6ed2: 2301         	movs	r3, #0x1
  3a6ed4: 4618         	mov	r0, r3
  3a6ed6: b01f         	add	sp, #0x7c
  3a6ed8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a6ed9); words below are literal-pool data ---
  3a6eda: bf00         	nop
  3a6edc: be24         	bkpt	#0x24
  3a6ede: 0058         	lsls	r0, r3, #0x1
  3a6ee0: d954         	bls	0x3a6f8c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0x40> @ imm = #0xa8
  3a6ee2: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3a6ee6: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  3a6eea: ffff d7cc    	<unknown>
  3a6eee: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  3a6ef2: ffff dd88    	<unknown>
  3a6ef6: ffff c0ea    	<unknown>
  3a6efa: 0042         	lsls	r2, r0, #0x1
  3a6efc: dd8c         	ble	0x3a6e18 <PlayerLobbyOnlineHosted::init()+0x23c> @ imm = #-0xe8
  3a6efe: ffff c0d2    	vshr.u64	q14, q1, #0x1
  3a6f02: 0042         	lsls	r2, r0, #0x1
  3a6f04: dd90         	ble	0x3a6e28 <PlayerLobbyOnlineHosted::init()+0x24c> @ imm = #-0xe0
  3a6f06: ffff c0ba    	vshr.u64	d28, d26, #0x1
  3a6f0a: 0042         	lsls	r2, r0, #0x1
  3a6f0c: dd94         	ble	0x3a6e38 <PlayerLobbyOnlineHosted::init()+0x25c> @ imm = #-0xd8
  3a6f0e: ffff c0a2    	<unknown>
  3a6f12: 0042         	lsls	r2, r0, #0x1
  3a6f14: dd98         	ble	0x3a6e48 <PlayerLobbyOnlineHosted::init()+0x26c> @ imm = #-0xd0
  3a6f16: ffff c096    	vshr.u64	d28, d6, #0x1
  3a6f1a: 0042         	lsls	r2, r0, #0x1
  3a6f1c: dd9c         	ble	0x3a6e58 <PlayerLobbyOnlineHosted::init()+0x27c> @ imm = #-0xc8
  3a6f1e: ffff c07a    	vshr.u32	q14, q13, #0x1
  3a6f22: 0042         	lsls	r2, r0, #0x1
  3a6f24: dda0         	ble	0x3a6e68 <PlayerLobbyOnlineHosted::init()+0x28c> @ imm = #-0xc0
  3a6f26: ffff c066    	<unknown>
  3a6f2a: 0042         	lsls	r2, r0, #0x1
  3a6f2c: dda4         	ble	0x3a6e78 <PlayerLobbyOnlineHosted::init()+0x29c> @ imm = #-0xb8
  3a6f2e: ffff c04e    	<unknown>
  3a6f32: 0042         	lsls	r2, r0, #0x1
  3a6f34: dda8         	ble	0x3a6e88 <PlayerLobbyOnlineHosted::init()+0x2ac> @ imm = #-0xb0
  3a6f36: ffff c03a    	vshr.u32	d28, d26, #0x1
  3a6f3a: 0042         	lsls	r2, r0, #0x1
  3a6f3c: ddac         	ble	0x3a6e98 <PlayerLobbyOnlineHosted::init()+0x2bc> @ imm = #-0xa8
  3a6f3e: ffff bf4e    	<unknown>
  3a6f42: 0042         	lsls	r2, r0, #0x1
  3a6f44: ddb0         	ble	0x3a6ea8 <PlayerLobbyOnlineHosted::init()+0x2cc> @ imm = #-0xa0
  3a6f46: ffff bffa    	<unknown>
  3a6f4a: 0042         	lsls	r2, r0, #0x1

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a6f4c (= ELF address; Ghidra 0x3b6f4c), 216 bytes, Thumb-2
  3a6f4c: b500         	push	{lr}
  3a6f4e: b083         	sub	sp, #0xc
  3a6f50: 9001         	str	r0, [sp, #0x4]
  3a6f52: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3a701c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0xd0>
  3a6f54: 447b         	add	r3, pc
  3a6f56: 9a01         	ldr	r2, [sp, #0x4]
  3a6f58: 4931         	ldr	r1, [pc, #0xc4]         @ 0x3a7020 <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0xd4>
  3a6f5a: 5859         	ldr	r1, [r3, r1]
  3a6f5c: 3108         	adds	r1, #0x8
  3a6f5e: 6011         	str	r1, [r2]
  3a6f60: 9a01         	ldr	r2, [sp, #0x4]
  3a6f62: 492f         	ldr	r1, [pc, #0xbc]         @ 0x3a7020 <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0xd4>
  3a6f64: 5859         	ldr	r1, [r3, r1]
  3a6f66: f501 7119    	add.w	r1, r1, #0x264
  3a6f6a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3a6f6e: 9a01         	ldr	r2, [sp, #0x4]
  3a6f70: 492b         	ldr	r1, [pc, #0xac]         @ 0x3a7020 <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0xd4>
  3a6f72: 5859         	ldr	r1, [r3, r1]
  3a6f74: f501 7123    	add.w	r1, r1, #0x28c
  3a6f78: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3a6f7c: 9a01         	ldr	r2, [sp, #0x4]
  3a6f7e: 4928         	ldr	r1, [pc, #0xa0]         @ 0x3a7020 <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0xd4>
  3a6f80: 585b         	ldr	r3, [r3, r1]
  3a6f82: f503 732b    	add.w	r3, r3, #0x2ac
  3a6f86: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3a6f8a: 9b01         	ldr	r3, [sp, #0x4]
  3a6f8c: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a6f90: 4618         	mov	r0, r3
  3a6f92: f1f0 ff91    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f0f22
  3a6f96: 9b01         	ldr	r3, [sp, #0x4]
  3a6f98: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a6f9c: 681b         	ldr	r3, [r3]
  3a6f9e: 33e8         	adds	r3, #0xe8
  3a6fa0: 681b         	ldr	r3, [r3]
  3a6fa2: 9a01         	ldr	r2, [sp, #0x4]
  3a6fa4: f8d2 218c    	ldr.w	r2, [r2, #0x18c]
  3a6fa8: 4610         	mov	r0, r2
  3a6faa: 4798         	blx	r3
  3a6fac: 9b01         	ldr	r3, [sp, #0x4]
  3a6fae: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a6fb2: 681b         	ldr	r3, [r3]
  3a6fb4: 33e8         	adds	r3, #0xe8
  3a6fb6: 681b         	ldr	r3, [r3]
  3a6fb8: 9a01         	ldr	r2, [sp, #0x4]
  3a6fba: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a6fbe: 4610         	mov	r0, r2
  3a6fc0: 4798         	blx	r3
  3a6fc2: 9b01         	ldr	r3, [sp, #0x4]
  3a6fc4: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a6fc8: 681b         	ldr	r3, [r3]
  3a6fca: 33e8         	adds	r3, #0xe8
  3a6fcc: 681b         	ldr	r3, [r3]
  3a6fce: 9a01         	ldr	r2, [sp, #0x4]
  3a6fd0: f8d2 2194    	ldr.w	r2, [r2, #0x194]
  3a6fd4: 4610         	mov	r0, r2
  3a6fd6: 4798         	blx	r3
  3a6fd8: 9b01         	ldr	r3, [sp, #0x4]
  3a6fda: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a6fde: 4618         	mov	r0, r3
  3a6fe0: f1f0 ff6a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f0ed4
  3a6fe4: 9b01         	ldr	r3, [sp, #0x4]
  3a6fe6: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a6fea: 4618         	mov	r0, r3
  3a6fec: f1f0 ff64    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f0ec8
  3a6ff0: 9b01         	ldr	r3, [sp, #0x4]
  3a6ff2: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a6ff6: 4618         	mov	r0, r3
  3a6ff8: f1f0 ff5e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f0ebc
  3a6ffc: 9b01         	ldr	r3, [sp, #0x4]
  3a6ffe: 4618         	mov	r0, r3
  3a7000: f7f3 fb0c    	bl	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0xc9e8
  3a7004: 2300         	movs	r3, #0x0
  3a7006: 2b00         	cmp	r3, #0x0
  3a7008: d002         	beq	0x3a7010 <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()+0xc4> @ imm = #0x4
  3a700a: 9801         	ldr	r0, [sp, #0x4]
  3a700c: f3e1 f84a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e1094
  3a7010: 9b01         	ldr	r3, [sp, #0x4]
  3a7012: 4618         	mov	r0, r3
  3a7014: b003         	add	sp, #0xc
  3a7016: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a7019); words below are literal-pool data ---
  3a701a: bf00         	nop
  3a701c: bab4         	<unknown>
  3a701e: 0058         	lsls	r0, r3, #0x1
  3a7020: dd84         	ble	0x3a6f2c <PlayerLobbyOnlineHosted::init()+0x350> @ imm = #-0xf8
  3a7022: ffff f1a0    	<unknown>

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a7024 (= ELF address; Ghidra 0x3b7024), 8 bytes, Thumb-2
  3a7024: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a7028: f7ff bf90    	b.w	0x3a6f4c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0xe0

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a702c (= ELF address; Ghidra 0x3b702c), 8 bytes, Thumb-2
  3a702c: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a7030: f7ff bf8c    	b.w	0x3a6f4c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0xe8

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a7034 (= ELF address; Ghidra 0x3b7034), 8 bytes, Thumb-2
  3a7034: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a7038: f7ff bf88    	b.w	0x3a6f4c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0xf0

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a703c (= ELF address; Ghidra 0x3b703c), 28 bytes, Thumb-2
  3a703c: b500         	push	{lr}
  3a703e: b083         	sub	sp, #0xc
  3a7040: 9001         	str	r0, [sp, #0x4]
  3a7042: 9801         	ldr	r0, [sp, #0x4]
  3a7044: f7ff ff82    	bl	0x3a6f4c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0xfc
  3a7048: 9801         	ldr	r0, [sp, #0x4]
  3a704a: f3e1 f82b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e1056
  3a704e: 9b01         	ldr	r3, [sp, #0x4]
  3a7050: 4618         	mov	r0, r3
  3a7052: b003         	add	sp, #0xc
  3a7054: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a7058 (= ELF address; Ghidra 0x3b7058), 8 bytes, Thumb-2
  3a7058: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a705c: f7ff bfee    	b.w	0x3a703c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0x24

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a7060 (= ELF address; Ghidra 0x3b7060), 8 bytes, Thumb-2
  3a7060: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a7064: f7ff bfea    	b.w	0x3a703c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0x2c

// ==== PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted
//      file offset 0x3a7068 (= ELF address; Ghidra 0x3b7068), 8 bytes, Thumb-2
  3a7068: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a706c: f7ff bfe6    	b.w	0x3a703c <PlayerLobbyOnlineHosted::~PlayerLobbyOnlineHosted()> @ imm = #-0x34

// ==== PlayerLobbyOnlineHosted::initMenu
//      file offset 0x3a7070 (= ELF address; Ghidra 0x3b7070), 5292 bytes, Thumb-2
  3a7070: b5f0         	push	{r4, r5, r6, r7, lr}
  3a7072: ed2d 8b02    	vpush	{d8}
  3a7076: b0bf         	sub	sp, #0xfc
  3a7078: 9003         	str	r0, [sp, #0xc]
  3a707a: f8df 4704    	ldr.w	r4, [pc, #0x704]        @ 0x3a7780 <PlayerLobbyOnlineHosted::initMenu()+0x710>
  3a707e: 447c         	add	r4, pc
  3a7080: 9b03         	ldr	r3, [sp, #0xc]
  3a7082: f503 75b8    	add.w	r5, r3, #0x170
  3a7086: f8df 36fc    	ldr.w	r3, [pc, #0x6fc]        @ 0x3a7784 <PlayerLobbyOnlineHosted::initMenu()+0x714>
  3a708a: 58e3         	ldr	r3, [r4, r3]
  3a708c: ed93 7a00    	vldr	s14, [r3]
  3a7090: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a7094: eec7 6a27    	vdiv.f32	s13, s14, s15
  3a7098: f8df 36e8    	ldr.w	r3, [pc, #0x6e8]        @ 0x3a7784 <PlayerLobbyOnlineHosted::initMenu()+0x714>
  3a709c: 58e3         	ldr	r3, [r4, r3]
  3a709e: ed93 7a01    	vldr	s14, [r3, #4]
  3a70a2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a70a6: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a70aa: ab3a         	add	r3, sp, #0xe8
  3a70ac: 4618         	mov	r0, r3
  3a70ae: ee16 1a90    	vmov	r1, s13
  3a70b2: ee17 2a90    	vmov	r2, s15
  3a70b6: f1eb fe1b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ebc36
  3a70ba: ab3a         	add	r3, sp, #0xe8
  3a70bc: 4628         	mov	r0, r5
  3a70be: 4619         	mov	r1, r3
  3a70c0: f1eb fe44    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1ebc88
  3a70c4: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x3a7784 <PlayerLobbyOnlineHosted::initMenu()+0x714>
  3a70c8: 58e3         	ldr	r3, [r4, r3]
  3a70ca: 681b         	ldr	r3, [r3]
  3a70cc: f8df 26b4    	ldr.w	r2, [pc, #0x6b4]        @ 0x3a7784 <PlayerLobbyOnlineHosted::initMenu()+0x714>
  3a70d0: 58a2         	ldr	r2, [r4, r2]
  3a70d2: ed92 7a01    	vldr	s14, [r2, #4]
  3a70d6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a70da: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a70de: aa20         	add	r2, sp, #0x80
  3a70e0: 4610         	mov	r0, r2
  3a70e2: 4619         	mov	r1, r3
  3a70e4: ee17 2a90    	vmov	r2, s15
  3a70e8: f1eb fe02    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ebc04
  3a70ec: f04f 0300    	mov.w	r3, #0x0
  3a70f0: f2cc 23b4    	movt	r3, #0xc2b4
  3a70f4: 9306         	str	r3, [sp, #0x18]
  3a70f6: 9b03         	ldr	r3, [sp, #0xc]
  3a70f8: f04f 0200    	mov.w	r2, #0x0
  3a70fc: f2c4 1220    	movt	r2, #0x4120
  3a7100: f8c3 2148    	str.w	r2, [r3, #0x148]
  3a7104: f8df 3680    	ldr.w	r3, [pc, #0x680]        @ 0x3a7788 <PlayerLobbyOnlineHosted::initMenu()+0x718>
  3a7108: 447b         	add	r3, pc
  3a710a: 4618         	mov	r0, r3
  3a710c: f231 f8fa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2311f4
  3a7110: 4603         	mov	r3, r0
  3a7112: 9307         	str	r3, [sp, #0x1c]
  3a7114: f8df 3674    	ldr.w	r3, [pc, #0x674]        @ 0x3a778c <PlayerLobbyOnlineHosted::initMenu()+0x71c>
  3a7118: 447b         	add	r3, pc
  3a711a: 4618         	mov	r0, r3
  3a711c: f231 f8f2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2311e4
  3a7120: 4603         	mov	r3, r0
  3a7122: 9308         	str	r3, [sp, #0x20]
  3a7124: f8df 3668    	ldr.w	r3, [pc, #0x668]        @ 0x3a7790 <PlayerLobbyOnlineHosted::initMenu()+0x720>
  3a7128: 447b         	add	r3, pc
  3a712a: 4618         	mov	r0, r3
  3a712c: f231 f8ea    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2311d4
  3a7130: 4603         	mov	r3, r0
  3a7132: 9309         	str	r3, [sp, #0x24]
  3a7134: f8df 365c    	ldr.w	r3, [pc, #0x65c]        @ 0x3a7794 <PlayerLobbyOnlineHosted::initMenu()+0x724>
  3a7138: 447b         	add	r3, pc
  3a713a: 4618         	mov	r0, r3
  3a713c: f231 f8e2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2311c4
  3a7140: 4603         	mov	r3, r0
  3a7142: 930a         	str	r3, [sp, #0x28]
  3a7144: f8df 3650    	ldr.w	r3, [pc, #0x650]        @ 0x3a7798 <PlayerLobbyOnlineHosted::initMenu()+0x728>
  3a7148: 447b         	add	r3, pc
  3a714a: 4618         	mov	r0, r3
  3a714c: f231 f8da    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2311b4
  3a7150: 4603         	mov	r3, r0
  3a7152: 930b         	str	r3, [sp, #0x2c]
  3a7154: f8df 3644    	ldr.w	r3, [pc, #0x644]        @ 0x3a779c <PlayerLobbyOnlineHosted::initMenu()+0x72c>
  3a7158: 447b         	add	r3, pc
  3a715a: 4618         	mov	r0, r3
  3a715c: f231 f8d2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2311a4
  3a7160: 4603         	mov	r3, r0
  3a7162: 930c         	str	r3, [sp, #0x30]
  3a7164: f8df 3638    	ldr.w	r3, [pc, #0x638]        @ 0x3a77a0 <PlayerLobbyOnlineHosted::initMenu()+0x730>
  3a7168: 447b         	add	r3, pc
  3a716a: 4618         	mov	r0, r3
  3a716c: f231 f8ca    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231194
  3a7170: 4603         	mov	r3, r0
  3a7172: 930d         	str	r3, [sp, #0x34]
  3a7174: f8df 362c    	ldr.w	r3, [pc, #0x62c]        @ 0x3a77a4 <PlayerLobbyOnlineHosted::initMenu()+0x734>
  3a7178: 447b         	add	r3, pc
  3a717a: 4618         	mov	r0, r3
  3a717c: f231 f8c2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231184
  3a7180: 4603         	mov	r3, r0
  3a7182: 930e         	str	r3, [sp, #0x38]
  3a7184: f8df 3620    	ldr.w	r3, [pc, #0x620]        @ 0x3a77a8 <PlayerLobbyOnlineHosted::initMenu()+0x738>
  3a7188: 447b         	add	r3, pc
  3a718a: 4618         	mov	r0, r3
  3a718c: f231 f8ba    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231174
  3a7190: 4603         	mov	r3, r0
  3a7192: 930f         	str	r3, [sp, #0x3c]
  3a7194: f8df 3614    	ldr.w	r3, [pc, #0x614]        @ 0x3a77ac <PlayerLobbyOnlineHosted::initMenu()+0x73c>
  3a7198: 447b         	add	r3, pc
  3a719a: 4618         	mov	r0, r3
  3a719c: f231 f8b2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231164
  3a71a0: 4603         	mov	r3, r0
  3a71a2: 9310         	str	r3, [sp, #0x40]
  3a71a4: f8df 3608    	ldr.w	r3, [pc, #0x608]        @ 0x3a77b0 <PlayerLobbyOnlineHosted::initMenu()+0x740>
  3a71a8: 447b         	add	r3, pc
  3a71aa: 4618         	mov	r0, r3
  3a71ac: f231 f8aa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231154
  3a71b0: 4603         	mov	r3, r0
  3a71b2: 9311         	str	r3, [sp, #0x44]
  3a71b4: f8df 35fc    	ldr.w	r3, [pc, #0x5fc]        @ 0x3a77b4 <PlayerLobbyOnlineHosted::initMenu()+0x744>
  3a71b8: 447b         	add	r3, pc
  3a71ba: 4618         	mov	r0, r3
  3a71bc: f231 f8a2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231144
  3a71c0: 4603         	mov	r3, r0
  3a71c2: 9312         	str	r3, [sp, #0x48]
  3a71c4: f8df 35f0    	ldr.w	r3, [pc, #0x5f0]        @ 0x3a77b8 <PlayerLobbyOnlineHosted::initMenu()+0x748>
  3a71c8: 447b         	add	r3, pc
  3a71ca: 4618         	mov	r0, r3
  3a71cc: f231 f89a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231134
  3a71d0: 4603         	mov	r3, r0
  3a71d2: 9313         	str	r3, [sp, #0x4c]
  3a71d4: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x3a77bc <PlayerLobbyOnlineHosted::initMenu()+0x74c>
  3a71d8: 447b         	add	r3, pc
  3a71da: 4618         	mov	r0, r3
  3a71dc: f231 f892    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x231124
  3a71e0: 4603         	mov	r3, r0
  3a71e2: 9314         	str	r3, [sp, #0x50]
  3a71e4: 9a03         	ldr	r2, [sp, #0xc]
  3a71e6: f8df 35d8    	ldr.w	r3, [pc, #0x5d8]        @ 0x3a77c0 <PlayerLobbyOnlineHosted::initMenu()+0x750>
  3a71ea: 58e3         	ldr	r3, [r4, r3]
  3a71ec: 9328         	str	r3, [sp, #0xa0]
  3a71ee: 2300         	movs	r3, #0x0
  3a71f0: 9329         	str	r3, [sp, #0xa4]
  3a71f2: 9b29         	ldr	r3, [sp, #0xa4]
  3a71f4: 9300         	str	r3, [sp]
  3a71f6: 9b28         	ldr	r3, [sp, #0xa0]
  3a71f8: 9807         	ldr	r0, [sp, #0x1c]
  3a71fa: 9908         	ldr	r1, [sp, #0x20]
  3a71fc: f211 f896    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21112c
  3a7200: 4603         	mov	r3, r0
  3a7202: 9315         	str	r3, [sp, #0x54]
  3a7204: 9a03         	ldr	r2, [sp, #0xc]
  3a7206: f8df 35bc    	ldr.w	r3, [pc, #0x5bc]        @ 0x3a77c4 <PlayerLobbyOnlineHosted::initMenu()+0x754>
  3a720a: 447b         	add	r3, pc
  3a720c: 4619         	mov	r1, r3
  3a720e: ab2a         	add	r3, sp, #0xa8
  3a7210: c903         	ldm	r1, {r0, r1}
  3a7212: e883 0003    	stm.w	r3, {r0, r1}
  3a7216: 9b2b         	ldr	r3, [sp, #0xac]
  3a7218: 9300         	str	r3, [sp]
  3a721a: 9b2a         	ldr	r3, [sp, #0xa8]
  3a721c: 980d         	ldr	r0, [sp, #0x34]
  3a721e: 990e         	ldr	r1, [sp, #0x38]
  3a7220: f211 f884    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x211108
  3a7224: 4603         	mov	r3, r0
  3a7226: 9316         	str	r3, [sp, #0x58]
  3a7228: 9a03         	ldr	r2, [sp, #0xc]
  3a722a: f8df 359c    	ldr.w	r3, [pc, #0x59c]        @ 0x3a77c8 <PlayerLobbyOnlineHosted::initMenu()+0x758>
  3a722e: 447b         	add	r3, pc
  3a7230: 4619         	mov	r1, r3
  3a7232: ab2c         	add	r3, sp, #0xb0
  3a7234: c903         	ldm	r1, {r0, r1}
  3a7236: e883 0003    	stm.w	r3, {r0, r1}
  3a723a: 9b2d         	ldr	r3, [sp, #0xb4]
  3a723c: 9300         	str	r3, [sp]
  3a723e: 9b2c         	ldr	r3, [sp, #0xb0]
  3a7240: 980f         	ldr	r0, [sp, #0x3c]
  3a7242: 9910         	ldr	r1, [sp, #0x40]
  3a7244: f211 f872    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2110e4
  3a7248: 4603         	mov	r3, r0
  3a724a: 9317         	str	r3, [sp, #0x5c]
  3a724c: 9a03         	ldr	r2, [sp, #0xc]
  3a724e: f8df 357c    	ldr.w	r3, [pc, #0x57c]        @ 0x3a77cc <PlayerLobbyOnlineHosted::initMenu()+0x75c>
  3a7252: 447b         	add	r3, pc
  3a7254: 4619         	mov	r1, r3
  3a7256: ab2e         	add	r3, sp, #0xb8
  3a7258: c903         	ldm	r1, {r0, r1}
  3a725a: e883 0003    	stm.w	r3, {r0, r1}
  3a725e: 9b2f         	ldr	r3, [sp, #0xbc]
  3a7260: 9300         	str	r3, [sp]
  3a7262: 9b2e         	ldr	r3, [sp, #0xb8]
  3a7264: 9809         	ldr	r0, [sp, #0x24]
  3a7266: 990a         	ldr	r1, [sp, #0x28]
  3a7268: f211 f860    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2110c0
  3a726c: 4603         	mov	r3, r0
  3a726e: 9318         	str	r3, [sp, #0x60]
  3a7270: 9a03         	ldr	r2, [sp, #0xc]
  3a7272: f8df 355c    	ldr.w	r3, [pc, #0x55c]        @ 0x3a77d0 <PlayerLobbyOnlineHosted::initMenu()+0x760>
  3a7276: 447b         	add	r3, pc
  3a7278: 4619         	mov	r1, r3
  3a727a: ab30         	add	r3, sp, #0xc0
  3a727c: c903         	ldm	r1, {r0, r1}
  3a727e: e883 0003    	stm.w	r3, {r0, r1}
  3a7282: 9b31         	ldr	r3, [sp, #0xc4]
  3a7284: 9300         	str	r3, [sp]
  3a7286: 9b30         	ldr	r3, [sp, #0xc0]
  3a7288: 980b         	ldr	r0, [sp, #0x2c]
  3a728a: 990c         	ldr	r1, [sp, #0x30]
  3a728c: f211 f84e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21109c
  3a7290: 4603         	mov	r3, r0
  3a7292: 9319         	str	r3, [sp, #0x64]
  3a7294: 9a03         	ldr	r2, [sp, #0xc]
  3a7296: f8df 353c    	ldr.w	r3, [pc, #0x53c]        @ 0x3a77d4 <PlayerLobbyOnlineHosted::initMenu()+0x764>
  3a729a: 447b         	add	r3, pc
  3a729c: 4619         	mov	r1, r3
  3a729e: ab32         	add	r3, sp, #0xc8
  3a72a0: c903         	ldm	r1, {r0, r1}
  3a72a2: e883 0003    	stm.w	r3, {r0, r1}
  3a72a6: 9b33         	ldr	r3, [sp, #0xcc]
  3a72a8: 9300         	str	r3, [sp]
  3a72aa: 9b32         	ldr	r3, [sp, #0xc8]
  3a72ac: 9811         	ldr	r0, [sp, #0x44]
  3a72ae: 9912         	ldr	r1, [sp, #0x48]
  3a72b0: f211 f83c    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x211078
  3a72b4: 4603         	mov	r3, r0
  3a72b6: 931a         	str	r3, [sp, #0x68]
  3a72b8: 9a03         	ldr	r2, [sp, #0xc]
  3a72ba: f8df 351c    	ldr.w	r3, [pc, #0x51c]        @ 0x3a77d8 <PlayerLobbyOnlineHosted::initMenu()+0x768>
  3a72be: 58e3         	ldr	r3, [r4, r3]
  3a72c0: 9334         	str	r3, [sp, #0xd0]
  3a72c2: 2300         	movs	r3, #0x0
  3a72c4: 9335         	str	r3, [sp, #0xd4]
  3a72c6: 9b35         	ldr	r3, [sp, #0xd4]
  3a72c8: 9300         	str	r3, [sp]
  3a72ca: 9b34         	ldr	r3, [sp, #0xd0]
  3a72cc: 9813         	ldr	r0, [sp, #0x4c]
  3a72ce: 9914         	ldr	r1, [sp, #0x50]
  3a72d0: f211 f82c    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x211058
  3a72d4: 4603         	mov	r3, r0
  3a72d6: 931b         	str	r3, [sp, #0x6c]
  3a72d8: 9819         	ldr	r0, [sp, #0x64]
  3a72da: 2100         	movs	r1, #0x0
  3a72dc: f20d ff2e    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20de5c
  3a72e0: 4602         	mov	r2, r0
  3a72e2: 9b03         	ldr	r3, [sp, #0xc]
  3a72e4: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3a72e8: 9b03         	ldr	r3, [sp, #0xc]
  3a72ea: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a72ee: 4618         	mov	r0, r3
  3a72f0: f1f0 fdfa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0bf4
  3a72f4: 9b03         	ldr	r3, [sp, #0xc]
  3a72f6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a72fa: 681b         	ldr	r3, [r3]
  3a72fc: 334c         	adds	r3, #0x4c
  3a72fe: 681d         	ldr	r5, [r3]
  3a7300: 9b03         	ldr	r3, [sp, #0xc]
  3a7302: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a7306: 461e         	mov	r6, r3
  3a7308: ed9d 7a20    	vldr	s14, [sp, #128]
  3a730c: eddd 7a06    	vldr	s15, [sp, #24]
  3a7310: ee77 6a27    	vadd.f32	s13, s14, s15
  3a7314: ed9d 7a21    	vldr	s14, [sp, #132]
  3a7318: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3a731c: ee77 7a27    	vadd.f32	s15, s14, s15
  3a7320: ab3a         	add	r3, sp, #0xe8
  3a7322: 4618         	mov	r0, r3
  3a7324: ee16 1a90    	vmov	r1, s13
  3a7328: ee17 2a90    	vmov	r2, s15
  3a732c: f1eb fce0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb9c0
  3a7330: ab3a         	add	r3, sp, #0xe8
  3a7332: 4630         	mov	r0, r6
  3a7334: 4619         	mov	r1, r3
  3a7336: 47a8         	blx	r5
  3a7338: 9b03         	ldr	r3, [sp, #0xc]
  3a733a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a733e: 681b         	ldr	r3, [r3]
  3a7340: 33c8         	adds	r3, #0xc8
  3a7342: 681b         	ldr	r3, [r3]
  3a7344: 9a03         	ldr	r2, [sp, #0xc]
  3a7346: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a734a: 9a03         	ldr	r2, [sp, #0xc]
  3a734c: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a7350: 4608         	mov	r0, r1
  3a7352: 4611         	mov	r1, r2
  3a7354: 4798         	blx	r3
  3a7356: 9815         	ldr	r0, [sp, #0x54]
  3a7358: 2100         	movs	r1, #0x0
  3a735a: f20d feef    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20ddde
  3a735e: 4602         	mov	r2, r0
  3a7360: 9b03         	ldr	r3, [sp, #0xc]
  3a7362: f8c3 2104    	str.w	r2, [r3, #0x104]
  3a7366: 9b03         	ldr	r3, [sp, #0xc]
  3a7368: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a736c: 4618         	mov	r0, r3
  3a736e: f1f0 fdbb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0b76
  3a7372: 9b03         	ldr	r3, [sp, #0xc]
  3a7374: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a7378: 681b         	ldr	r3, [r3]
  3a737a: 334c         	adds	r3, #0x4c
  3a737c: 681d         	ldr	r5, [r3]
  3a737e: 9b03         	ldr	r3, [sp, #0xc]
  3a7380: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a7384: 461e         	mov	r6, r3
  3a7386: ed9d 7a20    	vldr	s14, [sp, #128]
  3a738a: eddd 7a06    	vldr	s15, [sp, #24]
  3a738e: ee77 6a27    	vadd.f32	s13, s14, s15
  3a7392: ed9d 7a21    	vldr	s14, [sp, #132]
  3a7396: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3a739a: ee77 7a67    	vsub.f32	s15, s14, s15
  3a739e: ab3a         	add	r3, sp, #0xe8
  3a73a0: 4618         	mov	r0, r3
  3a73a2: ee16 1a90    	vmov	r1, s13
  3a73a6: ee17 2a90    	vmov	r2, s15
  3a73aa: f1eb fca1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb942
  3a73ae: ab3a         	add	r3, sp, #0xe8
  3a73b0: 4630         	mov	r0, r6
  3a73b2: 4619         	mov	r1, r3
  3a73b4: 47a8         	blx	r5
  3a73b6: 9b03         	ldr	r3, [sp, #0xc]
  3a73b8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a73bc: 681b         	ldr	r3, [r3]
  3a73be: 33c8         	adds	r3, #0xc8
  3a73c0: 681b         	ldr	r3, [r3]
  3a73c2: 9a03         	ldr	r2, [sp, #0xc]
  3a73c4: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a73c8: 9a03         	ldr	r2, [sp, #0xc]
  3a73ca: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a73ce: 4608         	mov	r0, r1
  3a73d0: 4611         	mov	r1, r2
  3a73d2: 4798         	blx	r3
  3a73d4: 9818         	ldr	r0, [sp, #0x60]
  3a73d6: 2100         	movs	r1, #0x0
  3a73d8: f20d feb0    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20dd60
  3a73dc: 4602         	mov	r2, r0
  3a73de: 9b03         	ldr	r3, [sp, #0xc]
  3a73e0: f8c3 2114    	str.w	r2, [r3, #0x114]
  3a73e4: 9b03         	ldr	r3, [sp, #0xc]
  3a73e6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a73ea: 4618         	mov	r0, r3
  3a73ec: f1f0 fd7c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0af8
  3a73f0: 9b03         	ldr	r3, [sp, #0xc]
  3a73f2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a73f6: 681b         	ldr	r3, [r3]
  3a73f8: 334c         	adds	r3, #0x4c
  3a73fa: 681d         	ldr	r5, [r3]
  3a73fc: 9b03         	ldr	r3, [sp, #0xc]
  3a73fe: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a7402: 461e         	mov	r6, r3
  3a7404: ed9d 7a20    	vldr	s14, [sp, #128]
  3a7408: eddd 7a06    	vldr	s15, [sp, #24]
  3a740c: ee77 6a27    	vadd.f32	s13, s14, s15
  3a7410: ed9d 7a21    	vldr	s14, [sp, #132]
  3a7414: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3a7418: ee77 7a67    	vsub.f32	s15, s14, s15
  3a741c: ab3a         	add	r3, sp, #0xe8
  3a741e: 4618         	mov	r0, r3
  3a7420: ee16 1a90    	vmov	r1, s13
  3a7424: ee17 2a90    	vmov	r2, s15
  3a7428: f1eb fc62    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb8c4
  3a742c: ab3a         	add	r3, sp, #0xe8
  3a742e: 4630         	mov	r0, r6
  3a7430: 4619         	mov	r1, r3
  3a7432: 47a8         	blx	r5
  3a7434: 9b03         	ldr	r3, [sp, #0xc]
  3a7436: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a743a: 681b         	ldr	r3, [r3]
  3a743c: 33c8         	adds	r3, #0xc8
  3a743e: 681b         	ldr	r3, [r3]
  3a7440: 9a03         	ldr	r2, [sp, #0xc]
  3a7442: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a7446: 9a03         	ldr	r2, [sp, #0xc]
  3a7448: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a744c: 4608         	mov	r0, r1
  3a744e: 4611         	mov	r1, r2
  3a7450: 4798         	blx	r3
  3a7452: 981a         	ldr	r0, [sp, #0x68]
  3a7454: 2100         	movs	r1, #0x0
  3a7456: f20d fe71    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20dce2
  3a745a: 4602         	mov	r2, r0
  3a745c: 9b03         	ldr	r3, [sp, #0xc]
  3a745e: f8c3 2134    	str.w	r2, [r3, #0x134]
  3a7462: 9b03         	ldr	r3, [sp, #0xc]
  3a7464: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a7468: 4618         	mov	r0, r3
  3a746a: f1f0 fd3d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0a7a
  3a746e: 9b03         	ldr	r3, [sp, #0xc]
  3a7470: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a7474: 681b         	ldr	r3, [r3]
  3a7476: 334c         	adds	r3, #0x4c
  3a7478: 681d         	ldr	r5, [r3]
  3a747a: 9b03         	ldr	r3, [sp, #0xc]
  3a747c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a7480: 461e         	mov	r6, r3
  3a7482: ed9d 7a20    	vldr	s14, [sp, #128]
  3a7486: eddd 7a06    	vldr	s15, [sp, #24]
  3a748a: ee37 7a27    	vadd.f32	s14, s14, s15
  3a748e: eddf 7ab8    	vldr	s15, [pc, #736]         @ 0x3a7770 <PlayerLobbyOnlineHosted::initMenu()+0x700>
  3a7492: ee77 6a27    	vadd.f32	s13, s14, s15
  3a7496: ed9d 7a21    	vldr	s14, [sp, #132]
  3a749a: eddf 7ab6    	vldr	s15, [pc, #728]         @ 0x3a7774 <PlayerLobbyOnlineHosted::initMenu()+0x704>
  3a749e: ee77 7a67    	vsub.f32	s15, s14, s15
  3a74a2: ab3a         	add	r3, sp, #0xe8
  3a74a4: 4618         	mov	r0, r3
  3a74a6: ee16 1a90    	vmov	r1, s13
  3a74aa: ee17 2a90    	vmov	r2, s15
  3a74ae: f1eb fc1f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb83e
  3a74b2: ab3a         	add	r3, sp, #0xe8
  3a74b4: 4630         	mov	r0, r6
  3a74b6: 4619         	mov	r1, r3
  3a74b8: 47a8         	blx	r5
  3a74ba: 9b03         	ldr	r3, [sp, #0xc]
  3a74bc: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a74c0: 681b         	ldr	r3, [r3]
  3a74c2: 33c8         	adds	r3, #0xc8
  3a74c4: 681b         	ldr	r3, [r3]
  3a74c6: 9a03         	ldr	r2, [sp, #0xc]
  3a74c8: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a74cc: 9a03         	ldr	r2, [sp, #0xc]
  3a74ce: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a74d2: 4608         	mov	r0, r1
  3a74d4: 4611         	mov	r1, r2
  3a74d6: 4798         	blx	r3
  3a74d8: 981b         	ldr	r0, [sp, #0x6c]
  3a74da: 2100         	movs	r1, #0x0
  3a74dc: f20d fe2e    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20dc5c
  3a74e0: 4602         	mov	r2, r0
  3a74e2: 9b03         	ldr	r3, [sp, #0xc]
  3a74e4: f8c3 2194    	str.w	r2, [r3, #0x194]
  3a74e8: 9b03         	ldr	r3, [sp, #0xc]
  3a74ea: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a74ee: 4618         	mov	r0, r3
  3a74f0: f1f0 fcfa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f09f4
  3a74f4: 9b03         	ldr	r3, [sp, #0xc]
  3a74f6: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a74fa: 681b         	ldr	r3, [r3]
  3a74fc: 334c         	adds	r3, #0x4c
  3a74fe: 681d         	ldr	r5, [r3]
  3a7500: 9b03         	ldr	r3, [sp, #0xc]
  3a7502: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a7506: 461e         	mov	r6, r3
  3a7508: ed9d 7a20    	vldr	s14, [sp, #128]
  3a750c: eddd 7a06    	vldr	s15, [sp, #24]
  3a7510: ee37 7a27    	vadd.f32	s14, s14, s15
  3a7514: eddf 7a98    	vldr	s15, [pc, #608]         @ 0x3a7778 <PlayerLobbyOnlineHosted::initMenu()+0x708>
  3a7518: ee77 6a67    	vsub.f32	s13, s14, s15
  3a751c: ed9d 7a21    	vldr	s14, [sp, #132]
  3a7520: eddf 7a94    	vldr	s15, [pc, #592]         @ 0x3a7774 <PlayerLobbyOnlineHosted::initMenu()+0x704>
  3a7524: ee77 7a67    	vsub.f32	s15, s14, s15
  3a7528: ab3a         	add	r3, sp, #0xe8
  3a752a: 4618         	mov	r0, r3
  3a752c: ee16 1a90    	vmov	r1, s13
  3a7530: ee17 2a90    	vmov	r2, s15
  3a7534: f1eb fbdc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb7b8
  3a7538: ab3a         	add	r3, sp, #0xe8
  3a753a: 4630         	mov	r0, r6
  3a753c: 4619         	mov	r1, r3
  3a753e: 47a8         	blx	r5
  3a7540: 9b03         	ldr	r3, [sp, #0xc]
  3a7542: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a7546: 681b         	ldr	r3, [r3]
  3a7548: 33c8         	adds	r3, #0xc8
  3a754a: 681b         	ldr	r3, [r3]
  3a754c: 9a03         	ldr	r2, [sp, #0xc]
  3a754e: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a7552: 9a03         	ldr	r2, [sp, #0xc]
  3a7554: f8d2 2194    	ldr.w	r2, [r2, #0x194]
  3a7558: 4608         	mov	r0, r1
  3a755a: 4611         	mov	r1, r2
  3a755c: 4798         	blx	r3
  3a755e: 9816         	ldr	r0, [sp, #0x58]
  3a7560: 2100         	movs	r1, #0x0
  3a7562: f20d fdeb    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20dbd6
  3a7566: 4602         	mov	r2, r0
  3a7568: 9b03         	ldr	r3, [sp, #0xc]
  3a756a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3a756e: 9b03         	ldr	r3, [sp, #0xc]
  3a7570: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a7574: 4618         	mov	r0, r3
  3a7576: f1f0 fcb7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f096e
  3a757a: 9b03         	ldr	r3, [sp, #0xc]
  3a757c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a7580: 681b         	ldr	r3, [r3]
  3a7582: 334c         	adds	r3, #0x4c
  3a7584: 681d         	ldr	r5, [r3]
  3a7586: 9b03         	ldr	r3, [sp, #0xc]
  3a7588: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a758c: 461e         	mov	r6, r3
  3a758e: ed9d 7a20    	vldr	s14, [sp, #128]
  3a7592: eddd 7a06    	vldr	s15, [sp, #24]
  3a7596: ee37 7a27    	vadd.f32	s14, s14, s15
  3a759a: eddf 7a77    	vldr	s15, [pc, #476]         @ 0x3a7778 <PlayerLobbyOnlineHosted::initMenu()+0x708>
  3a759e: ee77 6a67    	vsub.f32	s13, s14, s15
  3a75a2: ed9d 7a21    	vldr	s14, [sp, #132]
  3a75a6: eddf 7a75    	vldr	s15, [pc, #468]         @ 0x3a777c <PlayerLobbyOnlineHosted::initMenu()+0x70c>
  3a75aa: ee77 7a67    	vsub.f32	s15, s14, s15
  3a75ae: ab3a         	add	r3, sp, #0xe8
  3a75b0: 4618         	mov	r0, r3
  3a75b2: ee16 1a90    	vmov	r1, s13
  3a75b6: ee17 2a90    	vmov	r2, s15
  3a75ba: f1eb fb99    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb732
  3a75be: ab3a         	add	r3, sp, #0xe8
  3a75c0: 4630         	mov	r0, r6
  3a75c2: 4619         	mov	r1, r3
  3a75c4: 47a8         	blx	r5
  3a75c6: 9b03         	ldr	r3, [sp, #0xc]
  3a75c8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a75cc: 681b         	ldr	r3, [r3]
  3a75ce: 33c8         	adds	r3, #0xc8
  3a75d0: 681b         	ldr	r3, [r3]
  3a75d2: 9a03         	ldr	r2, [sp, #0xc]
  3a75d4: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a75d8: 9a03         	ldr	r2, [sp, #0xc]
  3a75da: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a75de: 4608         	mov	r0, r1
  3a75e0: 4611         	mov	r1, r2
  3a75e2: 4798         	blx	r3
  3a75e4: 9817         	ldr	r0, [sp, #0x5c]
  3a75e6: 2100         	movs	r1, #0x0
  3a75e8: f20d fda8    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20db50
  3a75ec: 4602         	mov	r2, r0
  3a75ee: 9b03         	ldr	r3, [sp, #0xc]
  3a75f0: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3a75f4: 9b03         	ldr	r3, [sp, #0xc]
  3a75f6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a75fa: 4618         	mov	r0, r3
  3a75fc: f1f0 fc74    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f08e8
  3a7600: 9b03         	ldr	r3, [sp, #0xc]
  3a7602: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a7606: 681b         	ldr	r3, [r3]
  3a7608: 334c         	adds	r3, #0x4c
  3a760a: 681d         	ldr	r5, [r3]
  3a760c: 9b03         	ldr	r3, [sp, #0xc]
  3a760e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a7612: 461e         	mov	r6, r3
  3a7614: ed9d 7a20    	vldr	s14, [sp, #128]
  3a7618: eddd 7a06    	vldr	s15, [sp, #24]
  3a761c: ee37 7a27    	vadd.f32	s14, s14, s15
  3a7620: eddf 7a53    	vldr	s15, [pc, #332]         @ 0x3a7770 <PlayerLobbyOnlineHosted::initMenu()+0x700>
  3a7624: ee77 6a27    	vadd.f32	s13, s14, s15
  3a7628: ed9d 7a21    	vldr	s14, [sp, #132]
  3a762c: eddf 7a53    	vldr	s15, [pc, #332]         @ 0x3a777c <PlayerLobbyOnlineHosted::initMenu()+0x70c>
  3a7630: ee77 7a67    	vsub.f32	s15, s14, s15
  3a7634: ab3a         	add	r3, sp, #0xe8
  3a7636: 4618         	mov	r0, r3
  3a7638: ee16 1a90    	vmov	r1, s13
  3a763c: ee17 2a90    	vmov	r2, s15
  3a7640: f1eb fb56    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb6ac
  3a7644: ab3a         	add	r3, sp, #0xe8
  3a7646: 4630         	mov	r0, r6
  3a7648: 4619         	mov	r1, r3
  3a764a: 47a8         	blx	r5
  3a764c: 9b03         	ldr	r3, [sp, #0xc]
  3a764e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a7652: 681b         	ldr	r3, [r3]
  3a7654: 33c8         	adds	r3, #0xc8
  3a7656: 681b         	ldr	r3, [r3]
  3a7658: 9a03         	ldr	r2, [sp, #0xc]
  3a765a: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a765e: 9a03         	ldr	r2, [sp, #0xc]
  3a7660: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3a7664: 4608         	mov	r0, r1
  3a7666: 4611         	mov	r1, r2
  3a7668: 4798         	blx	r3
  3a766a: f64c 43cd    	movw	r3, #0xcccd
  3a766e: f6c3 730c    	movt	r3, #0x3f0c
  3a7672: 931c         	str	r3, [sp, #0x70]
  3a7674: f04f 0300    	mov.w	r3, #0x0
  3a7678: f2c4 13c0    	movt	r3, #0x41c0
  3a767c: 931d         	str	r3, [sp, #0x74]
  3a767e: f04f 4341    	mov.w	r3, #0xc1000000
  3a7682: 931e         	str	r3, [sp, #0x78]
  3a7684: 4b55         	ldr	r3, [pc, #0x154]        @ 0x3a77dc <PlayerLobbyOnlineHosted::initMenu()+0x76c>
  3a7686: 447b         	add	r3, pc
  3a7688: 4618         	mov	r0, r3
  3a768a: f00d f639    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40dc72
  3a768e: 4603         	mov	r3, r0
  3a7690: 2220         	movs	r2, #0x20
  3a7692: 9200         	str	r2, [sp]
  3a7694: 4a52         	ldr	r2, [pc, #0x148]        @ 0x3a77e0 <PlayerLobbyOnlineHosted::initMenu()+0x770>
  3a7696: 447a         	add	r2, pc
  3a7698: 4610         	mov	r0, r2
  3a769a: 4619         	mov	r1, r3
  3a769c: 2220         	movs	r2, #0x20
  3a769e: 2320         	movs	r3, #0x20
  3a76a0: f1fd fe6a    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fdcd4
  3a76a4: 4602         	mov	r2, r0
  3a76a6: 9b03         	ldr	r3, [sp, #0xc]
  3a76a8: f8c3 2108    	str.w	r2, [r3, #0x108]
  3a76ac: 9b03         	ldr	r3, [sp, #0xc]
  3a76ae: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a76b2: 4618         	mov	r0, r3
  3a76b4: f1f0 fc18    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0830
  3a76b8: 9b03         	ldr	r3, [sp, #0xc]
  3a76ba: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a76be: eddd 7a1d    	vldr	s15, [sp, #116]
  3a76c2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a76c6: ee17 2a90    	vmov	r2, s15
  3a76ca: 4618         	mov	r0, r3
  3a76cc: 4611         	mov	r1, r2
  3a76ce: f1fe fb59    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fe6b2
  3a76d2: 9b03         	ldr	r3, [sp, #0xc]
  3a76d4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a76d8: 681b         	ldr	r3, [r3]
  3a76da: 3340         	adds	r3, #0x40
  3a76dc: 681b         	ldr	r3, [r3]
  3a76de: 9a03         	ldr	r2, [sp, #0xc]
  3a76e0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a76e4: 4610         	mov	r0, r2
  3a76e6: 991c         	ldr	r1, [sp, #0x70]
  3a76e8: 4798         	blx	r3
  3a76ea: 9b03         	ldr	r3, [sp, #0xc]
  3a76ec: f503 75ae    	add.w	r5, r3, #0x15c
  3a76f0: 9b03         	ldr	r3, [sp, #0xc]
  3a76f2: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a76f6: 681b         	ldr	r3, [r3]
  3a76f8: 3350         	adds	r3, #0x50
  3a76fa: 681b         	ldr	r3, [r3]
  3a76fc: 9a03         	ldr	r2, [sp, #0xc]
  3a76fe: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a7702: 4610         	mov	r0, r2
  3a7704: 4798         	blx	r3
  3a7706: 4603         	mov	r3, r0
  3a7708: 681e         	ldr	r6, [r3]
  3a770a: 9b03         	ldr	r3, [sp, #0xc]
  3a770c: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a7710: 681b         	ldr	r3, [r3]
  3a7712: 3350         	adds	r3, #0x50
  3a7714: 681b         	ldr	r3, [r3]
  3a7716: 9a03         	ldr	r2, [sp, #0xc]
  3a7718: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a771c: 4610         	mov	r0, r2
  3a771e: 4798         	blx	r3
  3a7720: 4603         	mov	r3, r0
  3a7722: 685b         	ldr	r3, [r3, #0x4]
  3a7724: aa22         	add	r2, sp, #0x88
  3a7726: 4610         	mov	r0, r2
  3a7728: 4631         	mov	r1, r6
  3a772a: 461a         	mov	r2, r3
  3a772c: f1eb fae0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb5c0
  3a7730: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7734: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7738: ab36         	add	r3, sp, #0xd8
  3a773a: 4618         	mov	r0, r3
  3a773c: ed9f 0b0a    	vldr	d0, [pc, #40]           @ 0x3a7768 <PlayerLobbyOnlineHosted::initMenu()+0x6f8>
  3a7740: eeb0 1b47    	vmov.f64	d1, d7
  3a7744: f7fc fc22    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x37bc
  3a7748: ed9d 8b36    	vldr	d8, [sp, #216]
  3a774c: 9b03         	ldr	r3, [sp, #0xc]
  3a774e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a7752: 681b         	ldr	r3, [r3]
  3a7754: f503 73fe    	add.w	r3, r3, #0x1fc
  3a7758: 681b         	ldr	r3, [r3]
  3a775a: 9a03         	ldr	r2, [sp, #0xc]
  3a775c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a7760: 4610         	mov	r0, r2
  3a7762: 4798         	blx	r3
  3a7764: e03e         	b	0x3a77e4 <PlayerLobbyOnlineHosted::initMenu()+0x774> @ imm = #0x7c
  3a7766: bf00         	nop
  3a7770: 0000         	movs	r0, r0
  3a7772: 4220         	tst	r0, r4
  3a7774: 0000         	movs	r0, r0
  3a7776: 4282         	cmp	r2, r0
  3a7778: 0000         	movs	r0, r0
  3a777a: 425c         	rsbs	r4, r3, #0
  3a777c: 0000         	movs	r0, r0
  3a777e: 42dc         	cmn	r4, r3
  3a7780: b98a         	cbnz	r2, 0x3a77a6 <PlayerLobbyOnlineHosted::initMenu()+0x736> @ imm = #0x22
  3a7782: 0058         	lsls	r0, r3, #0x1
  3a7784: d724         	bvc	0x3a77d0 <PlayerLobbyOnlineHosted::initMenu()+0x760> @ imm = #0x48
  3a7786: ffff bcb4    	<unknown>
  3a778a: 0042         	lsls	r2, r0, #0x1
  3a778c: bca4         	pop	{r2, r5, r7}
  3a778e: 0042         	lsls	r2, r0, #0x1
  3a7790: bc94         	pop	{r2, r4, r7}
  3a7792: 0042         	lsls	r2, r0, #0x1
  3a7794: bc84         	pop	{r2, r7}
  3a7796: 0042         	lsls	r2, r0, #0x1
  3a7798: bc74         	pop	{r2, r4, r5, r6}
  3a779a: 0042         	lsls	r2, r0, #0x1
  3a779c: bc64         	pop	{r2, r5, r6}
  3a779e: 0042         	lsls	r2, r0, #0x1
  3a77a0: bd64         	pop	{r2, r5, r6, pc}
  3a77a2: 0042         	lsls	r2, r0, #0x1
  3a77a4: bd54         	pop	{r2, r4, r6, pc}
  3a77a6: 0042         	lsls	r2, r0, #0x1
  3a77a8: bd44         	pop	{r2, r6, pc}
  3a77aa: 0042         	lsls	r2, r0, #0x1
  3a77ac: bd34         	pop	{r2, r4, r5, pc}
  3a77ae: 0042         	lsls	r2, r0, #0x1
  3a77b0: bd24         	pop	{r2, r5, pc}
  3a77b2: 0042         	lsls	r2, r0, #0x1
  3a77b4: bd14         	pop	{r2, r4, pc}
  3a77b6: 0042         	lsls	r2, r0, #0x1
  3a77b8: bd04         	pop	{r2, pc}
  3a77ba: 0042         	lsls	r2, r0, #0x1
  3a77bc: bcf4         	pop	{r2, r4, r5, r6, r7}
  3a77be: 0042         	lsls	r2, r0, #0x1
  3a77c0: ddb4         	ble	0x3a772c <PlayerLobbyOnlineHosted::initMenu()+0x6bc> @ imm = #-0x98
  3a77c2: ffff bd5e    	<unknown>
  3a77c6: 0042         	lsls	r2, r0, #0x1
  3a77c8: bd42         	pop	{r1, r6, pc}
  3a77ca: 0042         	lsls	r2, r0, #0x1
  3a77cc: bd26         	pop	{r1, r2, r5, pc}
  3a77ce: 0042         	lsls	r2, r0, #0x1
  3a77d0: bd0a         	pop	{r1, r3, pc}
  3a77d2: 0042         	lsls	r2, r0, #0x1
  3a77d4: bcee         	pop	{r1, r2, r3, r5, r6, r7}
  3a77d6: 0042         	lsls	r2, r0, #0x1
  3a77d8: ddb8         	ble	0x3a774c <PlayerLobbyOnlineHosted::initMenu()+0x6dc> @ imm = #-0x90
  3a77da: ffff 9b0a    	vtbl.8	d25, {d15, d16, d17, d18}, d10
  3a77de: 0059         	lsls	r1, r3, #0x1
  3a77e0: b842         	<unknown>
  3a77e2: 0042         	lsls	r2, r0, #0x1
  3a77e4: 4606         	mov	r6, r0
  3a77e6: ab04         	add	r3, sp, #0x10
  3a77e8: 4618         	mov	r0, r3
  3a77ea: f3e2 fe03    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e2c06
  3a77ee: aa05         	add	r2, sp, #0x14
  3a77f0: ab04         	add	r3, sp, #0x10
  3a77f2: 4610         	mov	r0, r2
  3a77f4: 4631         	mov	r1, r6
  3a77f6: 461a         	mov	r2, r3
  3a77f8: f00f f132    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40f264
  3a77fc: ab05         	add	r3, sp, #0x14
  3a77fe: 4618         	mov	r0, r3
  3a7800: f00d f42c    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40d858
  3a7804: 4603         	mov	r3, r0
  3a7806: ee07 3a90    	vmov	s15, r3
  3a780a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a780e: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7812: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7816: eddd 7a1c    	vldr	s15, [sp, #112]
  3a781a: ee27 7a27    	vmul.f32	s14, s14, s15
  3a781e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a7822: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a7826: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a782a: ee38 7b47    	vsub.f64	d7, d8, d7
  3a782e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a7832: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7836: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a783a: ab3a         	add	r3, sp, #0xe8
  3a783c: 4618         	mov	r0, r3
  3a783e: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x3a7b08 <PlayerLobbyOnlineHosted::initMenu()+0xa98>
  3a7842: eeb0 1b47    	vmov.f64	d1, d7
  3a7846: f7fc fba1    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x38be
  3a784a: ed9d 7b3c    	vldr	d7, [sp, #240]
  3a784e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a7852: ab24         	add	r3, sp, #0x90
  3a7854: 4618         	mov	r0, r3
  3a7856: ee18 1a10    	vmov	r1, s16
  3a785a: ee17 2a90    	vmov	r2, s15
  3a785e: f1eb fa47    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb48e
  3a7862: a926         	add	r1, sp, #0x98
  3a7864: aa22         	add	r2, sp, #0x88
  3a7866: ab24         	add	r3, sp, #0x90
  3a7868: 4608         	mov	r0, r1
  3a786a: 4611         	mov	r1, r2
  3a786c: 461a         	mov	r2, r3
  3a786e: f7fc fb7d    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x3906
  3a7872: ab26         	add	r3, sp, #0x98
  3a7874: 4628         	mov	r0, r5
  3a7876: 4619         	mov	r1, r3
  3a7878: f1eb fa68    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1eb4d0
  3a787c: ab05         	add	r3, sp, #0x14
  3a787e: 4618         	mov	r0, r3
  3a7880: f00e f048    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40e090
  3a7884: ab04         	add	r3, sp, #0x10
  3a7886: 4618         	mov	r0, r3
  3a7888: f3e2 fdb8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e2b70
  3a788c: 9b03         	ldr	r3, [sp, #0xc]
  3a788e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a7892: 681b         	ldr	r3, [r3]
  3a7894: 334c         	adds	r3, #0x4c
  3a7896: 681b         	ldr	r3, [r3]
  3a7898: 9a03         	ldr	r2, [sp, #0xc]
  3a789a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a789e: 4611         	mov	r1, r2
  3a78a0: 9a03         	ldr	r2, [sp, #0xc]
  3a78a2: f502 72ae    	add.w	r2, r2, #0x15c
  3a78a6: 4608         	mov	r0, r1
  3a78a8: 4611         	mov	r1, r2
  3a78aa: 4798         	blx	r3
  3a78ac: 9b03         	ldr	r3, [sp, #0xc]
  3a78ae: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a78b2: 681b         	ldr	r3, [r3]
  3a78b4: 33c8         	adds	r3, #0xc8
  3a78b6: 681b         	ldr	r3, [r3]
  3a78b8: 9a03         	ldr	r2, [sp, #0xc]
  3a78ba: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a78be: 9a03         	ldr	r2, [sp, #0xc]
  3a78c0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a78c4: 4608         	mov	r0, r1
  3a78c6: 4611         	mov	r1, r2
  3a78c8: 4798         	blx	r3
  3a78ca: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x3a7b18 <PlayerLobbyOnlineHosted::initMenu()+0xaa8>
  3a78cc: 447b         	add	r3, pc
  3a78ce: 4618         	mov	r0, r3
  3a78d0: f00d f516    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40da2c
  3a78d4: 4603         	mov	r3, r0
  3a78d6: 2220         	movs	r2, #0x20
  3a78d8: 9200         	str	r2, [sp]
  3a78da: 4a90         	ldr	r2, [pc, #0x240]        @ 0x3a7b1c <PlayerLobbyOnlineHosted::initMenu()+0xaac>
  3a78dc: 447a         	add	r2, pc
  3a78de: 4610         	mov	r0, r2
  3a78e0: 4619         	mov	r1, r3
  3a78e2: 2220         	movs	r2, #0x20
  3a78e4: 2320         	movs	r3, #0x20
  3a78e6: f1fd fd47    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fda8e
  3a78ea: 4602         	mov	r2, r0
  3a78ec: 9b03         	ldr	r3, [sp, #0xc]
  3a78ee: f8c3 2130    	str.w	r2, [r3, #0x130]
  3a78f2: 9b03         	ldr	r3, [sp, #0xc]
  3a78f4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a78f8: 4618         	mov	r0, r3
  3a78fa: f1f0 faf5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f05ea
  3a78fe: 9b03         	ldr	r3, [sp, #0xc]
  3a7900: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a7904: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7908: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a790c: ee17 2a90    	vmov	r2, s15
  3a7910: 4618         	mov	r0, r3
  3a7912: 4611         	mov	r1, r2
  3a7914: f1fe fa36    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fe46c
  3a7918: 9b03         	ldr	r3, [sp, #0xc]
  3a791a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a791e: 681b         	ldr	r3, [r3]
  3a7920: 3340         	adds	r3, #0x40
  3a7922: 681b         	ldr	r3, [r3]
  3a7924: 9a03         	ldr	r2, [sp, #0xc]
  3a7926: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a792a: 4610         	mov	r0, r2
  3a792c: f243 3133    	movw	r1, #0x3333
  3a7930: f6c3 61b3    	movt	r1, #0x3eb3
  3a7934: 4798         	blx	r3
  3a7936: 9b03         	ldr	r3, [sp, #0xc]
  3a7938: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a793c: 681b         	ldr	r3, [r3]
  3a793e: 334c         	adds	r3, #0x4c
  3a7940: 681d         	ldr	r5, [r3]
  3a7942: 9b03         	ldr	r3, [sp, #0xc]
  3a7944: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a7948: 461e         	mov	r6, r3
  3a794a: 9b03         	ldr	r3, [sp, #0xc]
  3a794c: ed93 7a5c    	vldr	s14, [r3, #368]
  3a7950: eddf 7a6f    	vldr	s15, [pc, #444]         @ 0x3a7b10 <PlayerLobbyOnlineHosted::initMenu()+0xaa0>
  3a7954: ee77 6a27    	vadd.f32	s13, s14, s15
  3a7958: 9b03         	ldr	r3, [sp, #0xc]
  3a795a: ed93 7a5d    	vldr	s14, [r3, #372]
  3a795e: eddf 7a6d    	vldr	s15, [pc, #436]         @ 0x3a7b14 <PlayerLobbyOnlineHosted::initMenu()+0xaa4>
  3a7962: ee77 7a27    	vadd.f32	s15, s14, s15
  3a7966: ab3a         	add	r3, sp, #0xe8
  3a7968: 4618         	mov	r0, r3
  3a796a: ee16 1a90    	vmov	r1, s13
  3a796e: ee17 2a90    	vmov	r2, s15
  3a7972: f1eb f9bd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb37a
  3a7976: ab3a         	add	r3, sp, #0xe8
  3a7978: 4630         	mov	r0, r6
  3a797a: 4619         	mov	r1, r3
  3a797c: 47a8         	blx	r5
  3a797e: 9b03         	ldr	r3, [sp, #0xc]
  3a7980: 681b         	ldr	r3, [r3]
  3a7982: 33c8         	adds	r3, #0xc8
  3a7984: 681b         	ldr	r3, [r3]
  3a7986: 9903         	ldr	r1, [sp, #0xc]
  3a7988: 9a03         	ldr	r2, [sp, #0xc]
  3a798a: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a798e: 4608         	mov	r0, r1
  3a7990: 4611         	mov	r1, r2
  3a7992: 4798         	blx	r3
  3a7994: 9b03         	ldr	r3, [sp, #0xc]
  3a7996: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a799a: 681b         	ldr	r3, [r3]
  3a799c: f503 73de    	add.w	r3, r3, #0x1bc
  3a79a0: 681d         	ldr	r5, [r3]
  3a79a2: 9b03         	ldr	r3, [sp, #0xc]
  3a79a4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a79a8: 461e         	mov	r6, r3
  3a79aa: 20ff         	movs	r0, #0xff
  3a79ac: 2100         	movs	r1, #0x0
  3a79ae: 2200         	movs	r2, #0x0
  3a79b0: f7fc faae    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x3aa4
  3a79b4: 4603         	mov	r3, r0
  3a79b6: 461a         	mov	r2, r3
  3a79b8: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3a79bc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a79c0: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3a79c4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a79c8: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3a79cc: ab3a         	add	r3, sp, #0xe8
  3a79ce: 4630         	mov	r0, r6
  3a79d0: 4619         	mov	r1, r3
  3a79d2: 47a8         	blx	r5
  3a79d4: 9b03         	ldr	r3, [sp, #0xc]
  3a79d6: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a79da: 681b         	ldr	r3, [r3]
  3a79dc: 3390         	adds	r3, #0x90
  3a79de: 681b         	ldr	r3, [r3]
  3a79e0: 9a03         	ldr	r2, [sp, #0xc]
  3a79e2: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a79e6: 4610         	mov	r0, r2
  3a79e8: 2100         	movs	r1, #0x0
  3a79ea: 4798         	blx	r3
  3a79ec: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x3a7b20 <PlayerLobbyOnlineHosted::initMenu()+0xab0>
  3a79ee: 447b         	add	r3, pc
  3a79f0: 4618         	mov	r0, r3
  3a79f2: f00d f485    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40d90a
  3a79f6: 4603         	mov	r3, r0
  3a79f8: 2220         	movs	r2, #0x20
  3a79fa: 9200         	str	r2, [sp]
  3a79fc: 4a49         	ldr	r2, [pc, #0x124]        @ 0x3a7b24 <PlayerLobbyOnlineHosted::initMenu()+0xab4>
  3a79fe: 447a         	add	r2, pc
  3a7a00: 4610         	mov	r0, r2
  3a7a02: 4619         	mov	r1, r3
  3a7a04: 2220         	movs	r2, #0x20
  3a7a06: 2320         	movs	r3, #0x20
  3a7a08: f1fd fcb6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fd96c
  3a7a0c: 4602         	mov	r2, r0
  3a7a0e: 9b03         	ldr	r3, [sp, #0xc]
  3a7a10: f8c3 2120    	str.w	r2, [r3, #0x120]
  3a7a14: 9b03         	ldr	r3, [sp, #0xc]
  3a7a16: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a7a1a: 4618         	mov	r0, r3
  3a7a1c: f1f0 fa64    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f04c8
  3a7a20: 9b03         	ldr	r3, [sp, #0xc]
  3a7a22: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a7a26: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7a2a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a7a2e: ee17 2a90    	vmov	r2, s15
  3a7a32: 4618         	mov	r0, r3
  3a7a34: 4611         	mov	r1, r2
  3a7a36: f1fe f9a5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fe34a
  3a7a3a: 9b03         	ldr	r3, [sp, #0xc]
  3a7a3c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a7a40: 681b         	ldr	r3, [r3]
  3a7a42: 3340         	adds	r3, #0x40
  3a7a44: 681b         	ldr	r3, [r3]
  3a7a46: 9a03         	ldr	r2, [sp, #0xc]
  3a7a48: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a7a4c: 4610         	mov	r0, r2
  3a7a4e: 991c         	ldr	r1, [sp, #0x70]
  3a7a50: 4798         	blx	r3
  3a7a52: 9b03         	ldr	r3, [sp, #0xc]
  3a7a54: f503 75aa    	add.w	r5, r3, #0x154
  3a7a58: 9b03         	ldr	r3, [sp, #0xc]
  3a7a5a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a7a5e: 681b         	ldr	r3, [r3]
  3a7a60: 3350         	adds	r3, #0x50
  3a7a62: 681b         	ldr	r3, [r3]
  3a7a64: 9a03         	ldr	r2, [sp, #0xc]
  3a7a66: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a7a6a: 4610         	mov	r0, r2
  3a7a6c: 4798         	blx	r3
  3a7a6e: 4603         	mov	r3, r0
  3a7a70: 681e         	ldr	r6, [r3]
  3a7a72: 9b03         	ldr	r3, [sp, #0xc]
  3a7a74: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a7a78: 681b         	ldr	r3, [r3]
  3a7a7a: 3350         	adds	r3, #0x50
  3a7a7c: 681b         	ldr	r3, [r3]
  3a7a7e: 9a03         	ldr	r2, [sp, #0xc]
  3a7a80: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a7a84: 4610         	mov	r0, r2
  3a7a86: 4798         	blx	r3
  3a7a88: 4603         	mov	r3, r0
  3a7a8a: 685b         	ldr	r3, [r3, #0x4]
  3a7a8c: aa22         	add	r2, sp, #0x88
  3a7a8e: 4610         	mov	r0, r2
  3a7a90: 4631         	mov	r1, r6
  3a7a92: 461a         	mov	r2, r3
  3a7a94: f1eb f92c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb258
  3a7a98: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7a9c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7aa0: ab36         	add	r3, sp, #0xd8
  3a7aa2: 4618         	mov	r0, r3
  3a7aa4: ed9f 0b18    	vldr	d0, [pc, #96]           @ 0x3a7b08 <PlayerLobbyOnlineHosted::initMenu()+0xa98>
  3a7aa8: eeb0 1b47    	vmov.f64	d1, d7
  3a7aac: f7fc fa6e    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x3b24
  3a7ab0: ed9d 8b36    	vldr	d8, [sp, #216]
  3a7ab4: 9b03         	ldr	r3, [sp, #0xc]
  3a7ab6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a7aba: 681b         	ldr	r3, [r3]
  3a7abc: f503 73fe    	add.w	r3, r3, #0x1fc
  3a7ac0: 681b         	ldr	r3, [r3]
  3a7ac2: 9a03         	ldr	r2, [sp, #0xc]
  3a7ac4: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a7ac8: 4610         	mov	r0, r2
  3a7aca: 4798         	blx	r3
  3a7acc: 4606         	mov	r6, r0
  3a7ace: ab04         	add	r3, sp, #0x10
  3a7ad0: 4618         	mov	r0, r3
  3a7ad2: f3e2 fc8f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e291e
  3a7ad6: aa05         	add	r2, sp, #0x14
  3a7ad8: ab04         	add	r3, sp, #0x10
  3a7ada: 4610         	mov	r0, r2
  3a7adc: 4631         	mov	r1, r6
  3a7ade: 461a         	mov	r2, r3
  3a7ae0: f00e f7be    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40ef7c
  3a7ae4: ab05         	add	r3, sp, #0x14
  3a7ae6: 4618         	mov	r0, r3
  3a7ae8: f00d f2b8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40d570
  3a7aec: 4603         	mov	r3, r0
  3a7aee: ee07 3a90    	vmov	s15, r3
  3a7af2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a7af6: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7afa: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7afe: eddd 7a1c    	vldr	s15, [sp, #112]
  3a7b02: e011         	b	0x3a7b28 <PlayerLobbyOnlineHosted::initMenu()+0xab8> @ imm = #0x22
  3a7b04: f3af 8000    	nop.w
  3a7b10: 0000         	movs	r0, r0
  3a7b12: 4234         	tst	r4, r6
  3a7b14: 0000         	movs	r0, r0
  3a7b16: 4248         	rsbs	r0, r1, #0
  3a7b18: 98c4         	ldr	r0, [sp, #0x310]
  3a7b1a: 0059         	lsls	r1, r3, #0x1
  3a7b1c: b604         	<unknown>
  3a7b1e: 0042         	lsls	r2, r0, #0x1
  3a7b20: 97a2         	str	r7, [sp, #0x288]
  3a7b22: 0059         	lsls	r1, r3, #0x1
  3a7b24: b4fa         	push	{r1, r3, r4, r5, r6, r7}
  3a7b26: 0042         	lsls	r2, r0, #0x1
  3a7b28: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7b2c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a7b30: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a7b34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7b38: ee38 7b47    	vsub.f64	d7, d8, d7
  3a7b3c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a7b40: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7b44: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7b48: ab3a         	add	r3, sp, #0xe8
  3a7b4a: 4618         	mov	r0, r3
  3a7b4c: ed9f 0bb0    	vldr	d0, [pc, #704]          @ 0x3a7e10 <PlayerLobbyOnlineHosted::initMenu()+0xda0>
  3a7b50: eeb0 1b47    	vmov.f64	d1, d7
  3a7b54: f7fc fa1a    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x3bcc
  3a7b58: ed9d 7b3c    	vldr	d7, [sp, #240]
  3a7b5c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a7b60: ab24         	add	r3, sp, #0x90
  3a7b62: 4618         	mov	r0, r3
  3a7b64: ee18 1a10    	vmov	r1, s16
  3a7b68: ee17 2a90    	vmov	r2, s15
  3a7b6c: f1eb f8c0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb180
  3a7b70: a926         	add	r1, sp, #0x98
  3a7b72: aa22         	add	r2, sp, #0x88
  3a7b74: ab24         	add	r3, sp, #0x90
  3a7b76: 4608         	mov	r0, r1
  3a7b78: 4611         	mov	r1, r2
  3a7b7a: 461a         	mov	r2, r3
  3a7b7c: f7fc f9f6    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x3c14
  3a7b80: ab26         	add	r3, sp, #0x98
  3a7b82: 4628         	mov	r0, r5
  3a7b84: 4619         	mov	r1, r3
  3a7b86: f1eb f8e1    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1eb1c2
  3a7b8a: ab05         	add	r3, sp, #0x14
  3a7b8c: 4618         	mov	r0, r3
  3a7b8e: f00d f6c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40dd82
  3a7b92: ab04         	add	r3, sp, #0x10
  3a7b94: 4618         	mov	r0, r3
  3a7b96: f3e2 fc31    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e2862
  3a7b9a: 9b03         	ldr	r3, [sp, #0xc]
  3a7b9c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a7ba0: 681b         	ldr	r3, [r3]
  3a7ba2: 334c         	adds	r3, #0x4c
  3a7ba4: 681b         	ldr	r3, [r3]
  3a7ba6: 9a03         	ldr	r2, [sp, #0xc]
  3a7ba8: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a7bac: 4611         	mov	r1, r2
  3a7bae: 9a03         	ldr	r2, [sp, #0xc]
  3a7bb0: f502 72aa    	add.w	r2, r2, #0x154
  3a7bb4: 4608         	mov	r0, r1
  3a7bb6: 4611         	mov	r1, r2
  3a7bb8: 4798         	blx	r3
  3a7bba: 9b03         	ldr	r3, [sp, #0xc]
  3a7bbc: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a7bc0: 681b         	ldr	r3, [r3]
  3a7bc2: 33c8         	adds	r3, #0xc8
  3a7bc4: 681b         	ldr	r3, [r3]
  3a7bc6: 9a03         	ldr	r2, [sp, #0xc]
  3a7bc8: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a7bcc: 9a03         	ldr	r2, [sp, #0xc]
  3a7bce: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a7bd2: 4608         	mov	r0, r1
  3a7bd4: 4611         	mov	r1, r2
  3a7bd6: 4798         	blx	r3
  3a7bd8: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x3a7e18 <PlayerLobbyOnlineHosted::initMenu()+0xda8>
  3a7bda: 447b         	add	r3, pc
  3a7bdc: 4618         	mov	r0, r3
  3a7bde: f00d f38f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40d71e
  3a7be2: 4603         	mov	r3, r0
  3a7be4: 2220         	movs	r2, #0x20
  3a7be6: 9200         	str	r2, [sp]
  3a7be8: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x3a7e1c <PlayerLobbyOnlineHosted::initMenu()+0xdac>
  3a7bea: 447a         	add	r2, pc
  3a7bec: 4610         	mov	r0, r2
  3a7bee: 4619         	mov	r1, r3
  3a7bf0: 2220         	movs	r2, #0x20
  3a7bf2: 2320         	movs	r3, #0x20
  3a7bf4: f1fd fbc0    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fd780
  3a7bf8: 4602         	mov	r2, r0
  3a7bfa: 9b03         	ldr	r3, [sp, #0xc]
  3a7bfc: f8c3 2118    	str.w	r2, [r3, #0x118]
  3a7c00: 9b03         	ldr	r3, [sp, #0xc]
  3a7c02: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a7c06: 4618         	mov	r0, r3
  3a7c08: f1f0 f96e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f02dc
  3a7c0c: 9b03         	ldr	r3, [sp, #0xc]
  3a7c0e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a7c12: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7c16: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a7c1a: ee17 2a90    	vmov	r2, s15
  3a7c1e: 4618         	mov	r0, r3
  3a7c20: 4611         	mov	r1, r2
  3a7c22: f1fe f8af    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fe15e
  3a7c26: 9b03         	ldr	r3, [sp, #0xc]
  3a7c28: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a7c2c: 681b         	ldr	r3, [r3]
  3a7c2e: 3340         	adds	r3, #0x40
  3a7c30: 681b         	ldr	r3, [r3]
  3a7c32: 9a03         	ldr	r2, [sp, #0xc]
  3a7c34: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a7c38: 4610         	mov	r0, r2
  3a7c3a: 991c         	ldr	r1, [sp, #0x70]
  3a7c3c: 4798         	blx	r3
  3a7c3e: 9b03         	ldr	r3, [sp, #0xc]
  3a7c40: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a7c44: 681b         	ldr	r3, [r3]
  3a7c46: 334c         	adds	r3, #0x4c
  3a7c48: 681d         	ldr	r5, [r3]
  3a7c4a: 9b03         	ldr	r3, [sp, #0xc]
  3a7c4c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a7c50: 461e         	mov	r6, r3
  3a7c52: 9b03         	ldr	r3, [sp, #0xc]
  3a7c54: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a7c58: 681b         	ldr	r3, [r3]
  3a7c5a: 3350         	adds	r3, #0x50
  3a7c5c: 681b         	ldr	r3, [r3]
  3a7c5e: 9a03         	ldr	r2, [sp, #0xc]
  3a7c60: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a7c64: 4610         	mov	r0, r2
  3a7c66: 4798         	blx	r3
  3a7c68: 4603         	mov	r3, r0
  3a7c6a: 681f         	ldr	r7, [r3]
  3a7c6c: 9b03         	ldr	r3, [sp, #0xc]
  3a7c6e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a7c72: 681b         	ldr	r3, [r3]
  3a7c74: 3350         	adds	r3, #0x50
  3a7c76: 681b         	ldr	r3, [r3]
  3a7c78: 9a03         	ldr	r2, [sp, #0xc]
  3a7c7a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a7c7e: 4610         	mov	r0, r2
  3a7c80: 4798         	blx	r3
  3a7c82: 4603         	mov	r3, r0
  3a7c84: 685b         	ldr	r3, [r3, #0x4]
  3a7c86: aa22         	add	r2, sp, #0x88
  3a7c88: 4610         	mov	r0, r2
  3a7c8a: 4639         	mov	r1, r7
  3a7c8c: 461a         	mov	r2, r3
  3a7c8e: f1eb f82f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eb05e
  3a7c92: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7c96: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7c9a: ab36         	add	r3, sp, #0xd8
  3a7c9c: 4618         	mov	r0, r3
  3a7c9e: ed9f 0b5c    	vldr	d0, [pc, #368]          @ 0x3a7e10 <PlayerLobbyOnlineHosted::initMenu()+0xda0>
  3a7ca2: eeb0 1b47    	vmov.f64	d1, d7
  3a7ca6: f7fc f971    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x3d1e
  3a7caa: ed9d 8b36    	vldr	d8, [sp, #216]
  3a7cae: 9b03         	ldr	r3, [sp, #0xc]
  3a7cb0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a7cb4: 681b         	ldr	r3, [r3]
  3a7cb6: f503 73fe    	add.w	r3, r3, #0x1fc
  3a7cba: 681b         	ldr	r3, [r3]
  3a7cbc: 9a03         	ldr	r2, [sp, #0xc]
  3a7cbe: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a7cc2: 4610         	mov	r0, r2
  3a7cc4: 4798         	blx	r3
  3a7cc6: 4607         	mov	r7, r0
  3a7cc8: ab04         	add	r3, sp, #0x10
  3a7cca: 4618         	mov	r0, r3
  3a7ccc: f3e2 fb92    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e2724
  3a7cd0: aa05         	add	r2, sp, #0x14
  3a7cd2: ab04         	add	r3, sp, #0x10
  3a7cd4: 4610         	mov	r0, r2
  3a7cd6: 4639         	mov	r1, r7
  3a7cd8: 461a         	mov	r2, r3
  3a7cda: f00e f6c1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40ed82
  3a7cde: ab05         	add	r3, sp, #0x14
  3a7ce0: 4618         	mov	r0, r3
  3a7ce2: f00d f1bb    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40d376
  3a7ce6: 4603         	mov	r3, r0
  3a7ce8: ee07 3a90    	vmov	s15, r3
  3a7cec: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a7cf0: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7cf4: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7cf8: eddd 7a1c    	vldr	s15, [sp, #112]
  3a7cfc: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7d00: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a7d04: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a7d08: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7d0c: ee38 7b47    	vsub.f64	d7, d8, d7
  3a7d10: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a7d14: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7d18: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7d1c: ab3a         	add	r3, sp, #0xe8
  3a7d1e: 4618         	mov	r0, r3
  3a7d20: ed9f 0b3b    	vldr	d0, [pc, #236]          @ 0x3a7e10 <PlayerLobbyOnlineHosted::initMenu()+0xda0>
  3a7d24: eeb0 1b47    	vmov.f64	d1, d7
  3a7d28: f7fc f930    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x3da0
  3a7d2c: ed9d 7b3c    	vldr	d7, [sp, #240]
  3a7d30: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a7d34: ab24         	add	r3, sp, #0x90
  3a7d36: 4618         	mov	r0, r3
  3a7d38: ee18 1a10    	vmov	r1, s16
  3a7d3c: ee17 2a90    	vmov	r2, s15
  3a7d40: f1ea ffd6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eafac
  3a7d44: a926         	add	r1, sp, #0x98
  3a7d46: aa22         	add	r2, sp, #0x88
  3a7d48: ab24         	add	r3, sp, #0x90
  3a7d4a: 4608         	mov	r0, r1
  3a7d4c: 4611         	mov	r1, r2
  3a7d4e: 461a         	mov	r2, r3
  3a7d50: f7fc f90c    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x3de8
  3a7d54: ab26         	add	r3, sp, #0x98
  3a7d56: 4630         	mov	r0, r6
  3a7d58: 4619         	mov	r1, r3
  3a7d5a: 47a8         	blx	r5
  3a7d5c: ab05         	add	r3, sp, #0x14
  3a7d5e: 4618         	mov	r0, r3
  3a7d60: f00d f5d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40dbb0
  3a7d64: ab04         	add	r3, sp, #0x10
  3a7d66: 4618         	mov	r0, r3
  3a7d68: f3e2 fb48    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e2690
  3a7d6c: 9b03         	ldr	r3, [sp, #0xc]
  3a7d6e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a7d72: 681b         	ldr	r3, [r3]
  3a7d74: 33c8         	adds	r3, #0xc8
  3a7d76: 681b         	ldr	r3, [r3]
  3a7d78: 9a03         	ldr	r2, [sp, #0xc]
  3a7d7a: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a7d7e: 9a03         	ldr	r2, [sp, #0xc]
  3a7d80: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a7d84: 4608         	mov	r0, r1
  3a7d86: 4611         	mov	r1, r2
  3a7d88: 4798         	blx	r3
  3a7d8a: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3a7e20 <PlayerLobbyOnlineHosted::initMenu()+0xdb0>
  3a7d8c: 447b         	add	r3, pc
  3a7d8e: 4618         	mov	r0, r3
  3a7d90: f230 fab8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x230570
  3a7d94: 4602         	mov	r2, r0
  3a7d96: 9b03         	ldr	r3, [sp, #0xc]
  3a7d98: f8c3 2138    	str.w	r2, [r3, #0x138]
  3a7d9c: 9b03         	ldr	r3, [sp, #0xc]
  3a7d9e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a7da2: 4618         	mov	r0, r3
  3a7da4: f1f0 f8a0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0140
  3a7da8: 9b03         	ldr	r3, [sp, #0xc]
  3a7daa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a7dae: 681b         	ldr	r3, [r3]
  3a7db0: 334c         	adds	r3, #0x4c
  3a7db2: 681d         	ldr	r5, [r3]
  3a7db4: 9b03         	ldr	r3, [sp, #0xc]
  3a7db6: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  3a7dba: 9b03         	ldr	r3, [sp, #0xc]
  3a7dbc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a7dc0: 681b         	ldr	r3, [r3]
  3a7dc2: 3350         	adds	r3, #0x50
  3a7dc4: 681b         	ldr	r3, [r3]
  3a7dc6: 9a03         	ldr	r2, [sp, #0xc]
  3a7dc8: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a7dcc: 4610         	mov	r0, r2
  3a7dce: 4798         	blx	r3
  3a7dd0: 4603         	mov	r3, r0
  3a7dd2: 4630         	mov	r0, r6
  3a7dd4: 4619         	mov	r1, r3
  3a7dd6: 47a8         	blx	r5
  3a7dd8: 9b03         	ldr	r3, [sp, #0xc]
  3a7dda: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a7dde: 681b         	ldr	r3, [r3]
  3a7de0: 33c8         	adds	r3, #0xc8
  3a7de2: 681b         	ldr	r3, [r3]
  3a7de4: 9a03         	ldr	r2, [sp, #0xc]
  3a7de6: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a7dea: 9a03         	ldr	r2, [sp, #0xc]
  3a7dec: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a7df0: 4608         	mov	r0, r1
  3a7df2: 4611         	mov	r1, r2
  3a7df4: 4798         	blx	r3
  3a7df6: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x3a7e24 <PlayerLobbyOnlineHosted::initMenu()+0xdb4>
  3a7df8: 447b         	add	r3, pc
  3a7dfa: 4618         	mov	r0, r3
  3a7dfc: f230 fa82    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x230504
  3a7e00: 4602         	mov	r2, r0
  3a7e02: 9b03         	ldr	r3, [sp, #0xc]
  3a7e04: f8c3 2140    	str.w	r2, [r3, #0x140]
  3a7e08: e00e         	b	0x3a7e28 <PlayerLobbyOnlineHosted::initMenu()+0xdb8> @ imm = #0x1c
  3a7e0a: bf00         	nop
  3a7e0c: f3af 8000    	nop.w
  3a7e18: 95b6         	str	r5, [sp, #0x2d8]
  3a7e1a: 0059         	lsls	r1, r3, #0x1
  3a7e1c: b316         	cbz	r6, 0x3a7e64 <PlayerLobbyOnlineHosted::initMenu()+0xdf4> @ imm = #0x44
  3a7e1e: 0042         	lsls	r2, r0, #0x1
  3a7e20: b17c         	cbz	r4, 0x3a7e42 <PlayerLobbyOnlineHosted::initMenu()+0xdd2> @ imm = #0x1e
  3a7e22: 0042         	lsls	r2, r0, #0x1
  3a7e24: b118         	cbz	r0, 0x3a7e2e <PlayerLobbyOnlineHosted::initMenu()+0xdbe> @ imm = #0x6
  3a7e26: 0042         	lsls	r2, r0, #0x1
  3a7e28: 9b03         	ldr	r3, [sp, #0xc]
  3a7e2a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3a7e2e: 4618         	mov	r0, r3
  3a7e30: f1f0 f85a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f00b4
  3a7e34: 9b03         	ldr	r3, [sp, #0xc]
  3a7e36: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3a7e3a: 681b         	ldr	r3, [r3]
  3a7e3c: 334c         	adds	r3, #0x4c
  3a7e3e: 681d         	ldr	r5, [r3]
  3a7e40: 9b03         	ldr	r3, [sp, #0xc]
  3a7e42: f8d3 6140    	ldr.w	r6, [r3, #0x140]
  3a7e46: 9b03         	ldr	r3, [sp, #0xc]
  3a7e48: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a7e4c: 681b         	ldr	r3, [r3]
  3a7e4e: 3350         	adds	r3, #0x50
  3a7e50: 681b         	ldr	r3, [r3]
  3a7e52: 9a03         	ldr	r2, [sp, #0xc]
  3a7e54: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3a7e58: 4610         	mov	r0, r2
  3a7e5a: 4798         	blx	r3
  3a7e5c: 4603         	mov	r3, r0
  3a7e5e: 4630         	mov	r0, r6
  3a7e60: 4619         	mov	r1, r3
  3a7e62: 47a8         	blx	r5
  3a7e64: 9b03         	ldr	r3, [sp, #0xc]
  3a7e66: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a7e6a: 681b         	ldr	r3, [r3]
  3a7e6c: 33c8         	adds	r3, #0xc8
  3a7e6e: 681b         	ldr	r3, [r3]
  3a7e70: 9a03         	ldr	r2, [sp, #0xc]
  3a7e72: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a7e76: 9a03         	ldr	r2, [sp, #0xc]
  3a7e78: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3a7e7c: 4608         	mov	r0, r1
  3a7e7e: 4611         	mov	r1, r2
  3a7e80: 4798         	blx	r3
  3a7e82: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x3a8220 <PlayerLobbyOnlineHosted::initMenu()+0x11b0>
  3a7e84: 447b         	add	r3, pc
  3a7e86: 4618         	mov	r0, r3
  3a7e88: f00d f23a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40d474
  3a7e8c: 4603         	mov	r3, r0
  3a7e8e: 2220         	movs	r2, #0x20
  3a7e90: 9200         	str	r2, [sp]
  3a7e92: 4ae4         	ldr	r2, [pc, #0x390]        @ 0x3a8224 <PlayerLobbyOnlineHosted::initMenu()+0x11b4>
  3a7e94: 447a         	add	r2, pc
  3a7e96: 4610         	mov	r0, r2
  3a7e98: 4619         	mov	r1, r3
  3a7e9a: 2220         	movs	r2, #0x20
  3a7e9c: 2320         	movs	r3, #0x20
  3a7e9e: f1fd fa6b    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fd4d6
  3a7ea2: 4602         	mov	r2, r0
  3a7ea4: 9b03         	ldr	r3, [sp, #0xc]
  3a7ea6: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3a7eaa: 9b03         	ldr	r3, [sp, #0xc]
  3a7eac: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a7eb0: 4618         	mov	r0, r3
  3a7eb2: f1f0 f819    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f0032
  3a7eb6: 9b03         	ldr	r3, [sp, #0xc]
  3a7eb8: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a7ebc: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7ec0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a7ec4: ee17 2a90    	vmov	r2, s15
  3a7ec8: 4618         	mov	r0, r3
  3a7eca: 4611         	mov	r1, r2
  3a7ecc: f1fd ff5a    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fdeb4
  3a7ed0: 9b03         	ldr	r3, [sp, #0xc]
  3a7ed2: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a7ed6: 681b         	ldr	r3, [r3]
  3a7ed8: 3340         	adds	r3, #0x40
  3a7eda: 681b         	ldr	r3, [r3]
  3a7edc: 9a03         	ldr	r2, [sp, #0xc]
  3a7ede: f8d2 218c    	ldr.w	r2, [r2, #0x18c]
  3a7ee2: 4610         	mov	r0, r2
  3a7ee4: 991c         	ldr	r1, [sp, #0x70]
  3a7ee6: 4798         	blx	r3
  3a7ee8: 9b03         	ldr	r3, [sp, #0xc]
  3a7eea: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a7eee: 681b         	ldr	r3, [r3]
  3a7ef0: 334c         	adds	r3, #0x4c
  3a7ef2: 681d         	ldr	r5, [r3]
  3a7ef4: 9b03         	ldr	r3, [sp, #0xc]
  3a7ef6: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a7efa: 461e         	mov	r6, r3
  3a7efc: 9b03         	ldr	r3, [sp, #0xc]
  3a7efe: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a7f02: 681b         	ldr	r3, [r3]
  3a7f04: 3350         	adds	r3, #0x50
  3a7f06: 681b         	ldr	r3, [r3]
  3a7f08: 9a03         	ldr	r2, [sp, #0xc]
  3a7f0a: f8d2 2194    	ldr.w	r2, [r2, #0x194]
  3a7f0e: 4610         	mov	r0, r2
  3a7f10: 4798         	blx	r3
  3a7f12: 4603         	mov	r3, r0
  3a7f14: 681f         	ldr	r7, [r3]
  3a7f16: 9b03         	ldr	r3, [sp, #0xc]
  3a7f18: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a7f1c: 681b         	ldr	r3, [r3]
  3a7f1e: 3350         	adds	r3, #0x50
  3a7f20: 681b         	ldr	r3, [r3]
  3a7f22: 9a03         	ldr	r2, [sp, #0xc]
  3a7f24: f8d2 2194    	ldr.w	r2, [r2, #0x194]
  3a7f28: 4610         	mov	r0, r2
  3a7f2a: 4798         	blx	r3
  3a7f2c: 4603         	mov	r3, r0
  3a7f2e: 685b         	ldr	r3, [r3, #0x4]
  3a7f30: aa22         	add	r2, sp, #0x88
  3a7f32: 4610         	mov	r0, r2
  3a7f34: 4639         	mov	r1, r7
  3a7f36: 461a         	mov	r2, r3
  3a7f38: f1ea feda    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eadb4
  3a7f3c: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7f40: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7f44: ab36         	add	r3, sp, #0xd8
  3a7f46: 4618         	mov	r0, r3
  3a7f48: ed9f 0bb3    	vldr	d0, [pc, #716]          @ 0x3a8218 <PlayerLobbyOnlineHosted::initMenu()+0x11a8>
  3a7f4c: eeb0 1b47    	vmov.f64	d1, d7
  3a7f50: f7fc f81c    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x3fc8
  3a7f54: ed9d 8b36    	vldr	d8, [sp, #216]
  3a7f58: 9b03         	ldr	r3, [sp, #0xc]
  3a7f5a: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a7f5e: 681b         	ldr	r3, [r3]
  3a7f60: f503 73fe    	add.w	r3, r3, #0x1fc
  3a7f64: 681b         	ldr	r3, [r3]
  3a7f66: 9a03         	ldr	r2, [sp, #0xc]
  3a7f68: f8d2 218c    	ldr.w	r2, [r2, #0x18c]
  3a7f6c: 4610         	mov	r0, r2
  3a7f6e: 4798         	blx	r3
  3a7f70: 4607         	mov	r7, r0
  3a7f72: ab04         	add	r3, sp, #0x10
  3a7f74: 4618         	mov	r0, r3
  3a7f76: f3e2 fa3d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e247a
  3a7f7a: aa05         	add	r2, sp, #0x14
  3a7f7c: ab04         	add	r3, sp, #0x10
  3a7f7e: 4610         	mov	r0, r2
  3a7f80: 4639         	mov	r1, r7
  3a7f82: 461a         	mov	r2, r3
  3a7f84: f00e f56c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40ead8
  3a7f88: ab05         	add	r3, sp, #0x14
  3a7f8a: 4618         	mov	r0, r3
  3a7f8c: f00d f066    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40d0cc
  3a7f90: 4603         	mov	r3, r0
  3a7f92: ee07 3a90    	vmov	s15, r3
  3a7f96: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a7f9a: eddd 7a1d    	vldr	s15, [sp, #116]
  3a7f9e: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7fa2: eddd 7a1c    	vldr	s15, [sp, #112]
  3a7fa6: ee27 7a27    	vmul.f32	s14, s14, s15
  3a7faa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a7fae: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a7fb2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7fb6: ee38 7b47    	vsub.f64	d7, d8, d7
  3a7fba: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a7fbe: eddd 7a1e    	vldr	s15, [sp, #120]
  3a7fc2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a7fc6: ab3a         	add	r3, sp, #0xe8
  3a7fc8: 4618         	mov	r0, r3
  3a7fca: ed9f 0b93    	vldr	d0, [pc, #588]          @ 0x3a8218 <PlayerLobbyOnlineHosted::initMenu()+0x11a8>
  3a7fce: eeb0 1b47    	vmov.f64	d1, d7
  3a7fd2: f7fb ffdb    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x404a
  3a7fd6: ed9d 7b3c    	vldr	d7, [sp, #240]
  3a7fda: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a7fde: ab24         	add	r3, sp, #0x90
  3a7fe0: 4618         	mov	r0, r3
  3a7fe2: ee18 1a10    	vmov	r1, s16
  3a7fe6: ee17 2a90    	vmov	r2, s15
  3a7fea: f1ea fe81    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ead02
  3a7fee: a926         	add	r1, sp, #0x98
  3a7ff0: aa22         	add	r2, sp, #0x88
  3a7ff2: ab24         	add	r3, sp, #0x90
  3a7ff4: 4608         	mov	r0, r1
  3a7ff6: 4611         	mov	r1, r2
  3a7ff8: 461a         	mov	r2, r3
  3a7ffa: f7fb ffb7    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x4092
  3a7ffe: ab26         	add	r3, sp, #0x98
  3a8000: 4630         	mov	r0, r6
  3a8002: 4619         	mov	r1, r3
  3a8004: 47a8         	blx	r5
  3a8006: ab05         	add	r3, sp, #0x14
  3a8008: 4618         	mov	r0, r3
  3a800a: f00d f483    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d906
  3a800e: ab04         	add	r3, sp, #0x10
  3a8010: 4618         	mov	r0, r3
  3a8012: f3e2 f9f3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e23e6
  3a8016: 9b03         	ldr	r3, [sp, #0xc]
  3a8018: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a801c: 681b         	ldr	r3, [r3]
  3a801e: 33c8         	adds	r3, #0xc8
  3a8020: 681b         	ldr	r3, [r3]
  3a8022: 9a03         	ldr	r2, [sp, #0xc]
  3a8024: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a8028: 9a03         	ldr	r2, [sp, #0xc]
  3a802a: f8d2 218c    	ldr.w	r2, [r2, #0x18c]
  3a802e: 4608         	mov	r0, r1
  3a8030: 4611         	mov	r1, r2
  3a8032: 4798         	blx	r3
  3a8034: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3a8228 <PlayerLobbyOnlineHosted::initMenu()+0x11b8>
  3a8036: 447b         	add	r3, pc
  3a8038: 4618         	mov	r0, r3
  3a803a: f00d f161    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40d2c2
  3a803e: 4603         	mov	r3, r0
  3a8040: 2220         	movs	r2, #0x20
  3a8042: 9200         	str	r2, [sp]
  3a8044: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x3a822c <PlayerLobbyOnlineHosted::initMenu()+0x11bc>
  3a8046: 447a         	add	r2, pc
  3a8048: 4610         	mov	r0, r2
  3a804a: 4619         	mov	r1, r3
  3a804c: 2220         	movs	r2, #0x20
  3a804e: 2320         	movs	r3, #0x20
  3a8050: f1fd f992    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fd324
  3a8054: 4602         	mov	r2, r0
  3a8056: 9b03         	ldr	r3, [sp, #0xc]
  3a8058: f8c3 2110    	str.w	r2, [r3, #0x110]
  3a805c: 9b03         	ldr	r3, [sp, #0xc]
  3a805e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a8062: 4618         	mov	r0, r3
  3a8064: f1ef ff40    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1efe80
  3a8068: 9b03         	ldr	r3, [sp, #0xc]
  3a806a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a806e: eddd 7a1d    	vldr	s15, [sp, #116]
  3a8072: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a8076: ee17 2a90    	vmov	r2, s15
  3a807a: 4618         	mov	r0, r3
  3a807c: 4611         	mov	r1, r2
  3a807e: f1fd fe81    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fdd02
  3a8082: 9b03         	ldr	r3, [sp, #0xc]
  3a8084: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a8088: 681b         	ldr	r3, [r3]
  3a808a: 3340         	adds	r3, #0x40
  3a808c: 681b         	ldr	r3, [r3]
  3a808e: 9a03         	ldr	r2, [sp, #0xc]
  3a8090: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a8094: 4610         	mov	r0, r2
  3a8096: 991c         	ldr	r1, [sp, #0x70]
  3a8098: 4798         	blx	r3
  3a809a: 9b03         	ldr	r3, [sp, #0xc]
  3a809c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a80a0: 681b         	ldr	r3, [r3]
  3a80a2: 334c         	adds	r3, #0x4c
  3a80a4: 681d         	ldr	r5, [r3]
  3a80a6: 9b03         	ldr	r3, [sp, #0xc]
  3a80a8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a80ac: 461e         	mov	r6, r3
  3a80ae: 9b03         	ldr	r3, [sp, #0xc]
  3a80b0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a80b4: 681b         	ldr	r3, [r3]
  3a80b6: 3350         	adds	r3, #0x50
  3a80b8: 681b         	ldr	r3, [r3]
  3a80ba: 9a03         	ldr	r2, [sp, #0xc]
  3a80bc: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a80c0: 4610         	mov	r0, r2
  3a80c2: 4798         	blx	r3
  3a80c4: 4603         	mov	r3, r0
  3a80c6: 681f         	ldr	r7, [r3]
  3a80c8: 9b03         	ldr	r3, [sp, #0xc]
  3a80ca: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a80ce: 681b         	ldr	r3, [r3]
  3a80d0: 3350         	adds	r3, #0x50
  3a80d2: 681b         	ldr	r3, [r3]
  3a80d4: 9a03         	ldr	r2, [sp, #0xc]
  3a80d6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a80da: 4610         	mov	r0, r2
  3a80dc: 4798         	blx	r3
  3a80de: 4603         	mov	r3, r0
  3a80e0: 685b         	ldr	r3, [r3, #0x4]
  3a80e2: aa22         	add	r2, sp, #0x88
  3a80e4: 4610         	mov	r0, r2
  3a80e6: 4639         	mov	r1, r7
  3a80e8: 461a         	mov	r2, r3
  3a80ea: f1ea fe01    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eac02
  3a80ee: eddd 7a1e    	vldr	s15, [sp, #120]
  3a80f2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a80f6: ab36         	add	r3, sp, #0xd8
  3a80f8: 4618         	mov	r0, r3
  3a80fa: ed9f 0b47    	vldr	d0, [pc, #284]          @ 0x3a8218 <PlayerLobbyOnlineHosted::initMenu()+0x11a8>
  3a80fe: eeb0 1b47    	vmov.f64	d1, d7
  3a8102: f7fb ff43    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x417a
  3a8106: ed9d 8b36    	vldr	d8, [sp, #216]
  3a810a: 9b03         	ldr	r3, [sp, #0xc]
  3a810c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a8110: 681b         	ldr	r3, [r3]
  3a8112: f503 73fe    	add.w	r3, r3, #0x1fc
  3a8116: 681b         	ldr	r3, [r3]
  3a8118: 9a03         	ldr	r2, [sp, #0xc]
  3a811a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a811e: 4610         	mov	r0, r2
  3a8120: 4798         	blx	r3
  3a8122: 4607         	mov	r7, r0
  3a8124: ab04         	add	r3, sp, #0x10
  3a8126: 4618         	mov	r0, r3
  3a8128: f3e2 f964    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e22c8
  3a812c: aa05         	add	r2, sp, #0x14
  3a812e: ab04         	add	r3, sp, #0x10
  3a8130: 4610         	mov	r0, r2
  3a8132: 4639         	mov	r1, r7
  3a8134: 461a         	mov	r2, r3
  3a8136: f00e f493    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40e926
  3a813a: ab05         	add	r3, sp, #0x14
  3a813c: 4618         	mov	r0, r3
  3a813e: f00c f78d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40cf1a
  3a8142: 4603         	mov	r3, r0
  3a8144: ee07 3a90    	vmov	s15, r3
  3a8148: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a814c: eddd 7a1d    	vldr	s15, [sp, #116]
  3a8150: ee27 7a27    	vmul.f32	s14, s14, s15
  3a8154: eddd 7a1c    	vldr	s15, [sp, #112]
  3a8158: ee27 7a27    	vmul.f32	s14, s14, s15
  3a815c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a8160: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a8164: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a8168: ee38 7b47    	vsub.f64	d7, d8, d7
  3a816c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a8170: eddd 7a1e    	vldr	s15, [sp, #120]
  3a8174: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a8178: ab3a         	add	r3, sp, #0xe8
  3a817a: 4618         	mov	r0, r3
  3a817c: ed9f 0b26    	vldr	d0, [pc, #152]          @ 0x3a8218 <PlayerLobbyOnlineHosted::initMenu()+0x11a8>
  3a8180: eeb0 1b47    	vmov.f64	d1, d7
  3a8184: f7fb ff02    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x41fc
  3a8188: ed9d 7b3c    	vldr	d7, [sp, #240]
  3a818c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a8190: ab24         	add	r3, sp, #0x90
  3a8192: 4618         	mov	r0, r3
  3a8194: ee18 1a10    	vmov	r1, s16
  3a8198: ee17 2a90    	vmov	r2, s15
  3a819c: f1ea fda8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eab50
  3a81a0: a926         	add	r1, sp, #0x98
  3a81a2: aa22         	add	r2, sp, #0x88
  3a81a4: ab24         	add	r3, sp, #0x90
  3a81a6: 4608         	mov	r0, r1
  3a81a8: 4611         	mov	r1, r2
  3a81aa: 461a         	mov	r2, r3
  3a81ac: f7fb fede    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x4244
  3a81b0: ab26         	add	r3, sp, #0x98
  3a81b2: 4630         	mov	r0, r6
  3a81b4: 4619         	mov	r1, r3
  3a81b6: 47a8         	blx	r5
  3a81b8: ab05         	add	r3, sp, #0x14
  3a81ba: 4618         	mov	r0, r3
  3a81bc: f00d f3aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d754
  3a81c0: ab04         	add	r3, sp, #0x10
  3a81c2: 4618         	mov	r0, r3
  3a81c4: f3e2 f91a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e2234
  3a81c8: 9b03         	ldr	r3, [sp, #0xc]
  3a81ca: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a81ce: 681b         	ldr	r3, [r3]
  3a81d0: 33c8         	adds	r3, #0xc8
  3a81d2: 681b         	ldr	r3, [r3]
  3a81d4: 9a03         	ldr	r2, [sp, #0xc]
  3a81d6: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  3a81da: 9a03         	ldr	r2, [sp, #0xc]
  3a81dc: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a81e0: 4608         	mov	r0, r1
  3a81e2: 4611         	mov	r1, r2
  3a81e4: 4798         	blx	r3
  3a81e6: ab3a         	add	r3, sp, #0xe8
  3a81e8: 4618         	mov	r0, r3
  3a81ea: f3e2 f903    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e2206
  3a81ee: aa36         	add	r2, sp, #0xd8
  3a81f0: ab3a         	add	r3, sp, #0xe8
  3a81f2: 4610         	mov	r0, r2
  3a81f4: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3a8230 <PlayerLobbyOnlineHosted::initMenu()+0x11c0>
  3a81f6: 447a         	add	r2, pc
  3a81f8: 4611         	mov	r1, r2
  3a81fa: 461a         	mov	r2, r3
  3a81fc: f00e f430    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40e860
  3a8200: ab3a         	add	r3, sp, #0xe8
  3a8202: 4618         	mov	r0, r3
  3a8204: f3e2 f8fa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e21f4
  3a8208: f7cf fc9a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x306cc
  3a820c: 4603         	mov	r3, r0
  3a820e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a8212: 2b00         	cmp	r3, #0x0
  3a8214: e00e         	b	0x3a8234 <PlayerLobbyOnlineHosted::initMenu()+0x11c4> @ imm = #0x1c
  3a8216: bf00         	nop
  3a8220: 930c         	str	r3, [sp, #0x30]
  3a8222: 0059         	lsls	r1, r3, #0x1
  3a8224: b084         	sub	sp, #0x10
  3a8226: 0042         	lsls	r2, r0, #0x1
  3a8228: 915a         	str	r1, [sp, #0x168]
  3a822a: 0059         	lsls	r1, r3, #0x1
  3a822c: aed6         	add	r6, sp, #0x358
  3a822e: 0042         	lsls	r2, r0, #0x1
  3a8230: ad2e         	add	r5, sp, #0xb8
  3a8232: 0042         	lsls	r2, r0, #0x1
  3a8234: bf0c         	ite	eq
  3a8236: 2300         	moveq	r3, #0x0
  3a8238: 2301         	movne	r3, #0x1
  3a823a: b2db         	uxtb	r3, r3
  3a823c: 2b00         	cmp	r3, #0x0
  3a823e: d013         	beq	0x3a8268 <PlayerLobbyOnlineHosted::initMenu()+0x11f8> @ imm = #0x26
  3a8240: f7cf fc7e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x30704
  3a8244: 4603         	mov	r3, r0
  3a8246: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a824a: aa3a         	add	r2, sp, #0xe8
  3a824c: 4610         	mov	r0, r2
  3a824e: 4619         	mov	r1, r3
  3a8250: f01a faaa    	bl	0x3c27a8 <RakNetDelegate::getCurrentServerName()> @ imm = #0x1a554
  3a8254: aa36         	add	r2, sp, #0xd8
  3a8256: ab3a         	add	r3, sp, #0xe8
  3a8258: 4610         	mov	r0, r2
  3a825a: 4619         	mov	r1, r3
  3a825c: f00d f760    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x40dec0
  3a8260: ab3a         	add	r3, sp, #0xe8
  3a8262: 4618         	mov	r0, r3
  3a8264: f00d f356    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d6ac
  3a8268: ab36         	add	r3, sp, #0xd8
  3a826a: 4618         	mov	r0, r3
  3a826c: f00d f048    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40d090
  3a8270: 4603         	mov	r3, r0
  3a8272: 4618         	mov	r0, r3
  3a8274: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x3a8508 <PlayerLobbyOnlineHosted::initMenu()+0x1498>
  3a8276: 447b         	add	r3, pc
  3a8278: 4619         	mov	r1, r3
  3a827a: f04f 0200    	mov.w	r2, #0x0
  3a827e: f2c4 1220    	movt	r2, #0x4120
  3a8282: f203 fecd    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x203d9a
  3a8286: 4602         	mov	r2, r0
  3a8288: 9b03         	ldr	r3, [sp, #0xc]
  3a828a: f8c3 2190    	str.w	r2, [r3, #0x190]
  3a828e: 9b03         	ldr	r3, [sp, #0xc]
  3a8290: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a8294: 4618         	mov	r0, r3
  3a8296: f1ef fe27    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1efc4e
  3a829a: 9b03         	ldr	r3, [sp, #0xc]
  3a829c: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a82a0: 681b         	ldr	r3, [r3]
  3a82a2: 337c         	adds	r3, #0x7c
  3a82a4: 681d         	ldr	r5, [r3]
  3a82a6: 9b03         	ldr	r3, [sp, #0xc]
  3a82a8: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a82ac: 461e         	mov	r6, r3
  3a82ae: ab3a         	add	r3, sp, #0xe8
  3a82b0: 4618         	mov	r0, r3
  3a82b2: f04f 517e    	mov.w	r1, #0x3f800000
  3a82b6: f04f 527c    	mov.w	r2, #0x3f000000
  3a82ba: f1ea fd19    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eaa32
  3a82be: ab3a         	add	r3, sp, #0xe8
  3a82c0: 4630         	mov	r0, r6
  3a82c2: 4619         	mov	r1, r3
  3a82c4: 47a8         	blx	r5
  3a82c6: 9b03         	ldr	r3, [sp, #0xc]
  3a82c8: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a82cc: 681b         	ldr	r3, [r3]
  3a82ce: 334c         	adds	r3, #0x4c
  3a82d0: 681d         	ldr	r5, [r3]
  3a82d2: 9b03         	ldr	r3, [sp, #0xc]
  3a82d4: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a82d8: 461e         	mov	r6, r3
  3a82da: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x3a850c <PlayerLobbyOnlineHosted::initMenu()+0x149c>
  3a82dc: 58e3         	ldr	r3, [r4, r3]
  3a82de: ed93 7a00    	vldr	s14, [r3]
  3a82e2: eef2 7a08    	vmov.f32	s15, #1.200000e+01
  3a82e6: ee77 7a67    	vsub.f32	s15, s14, s15
  3a82ea: ab3a         	add	r3, sp, #0xe8
  3a82ec: 4618         	mov	r0, r3
  3a82ee: ee17 1a90    	vmov	r1, s15
  3a82f2: f04f 0200    	mov.w	r2, #0x0
  3a82f6: f2c4 12b0    	movt	r2, #0x41b0
  3a82fa: f1ea fcf9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ea9f2
  3a82fe: ab3a         	add	r3, sp, #0xe8
  3a8300: 4630         	mov	r0, r6
  3a8302: 4619         	mov	r1, r3
  3a8304: 47a8         	blx	r5
  3a8306: 9b03         	ldr	r3, [sp, #0xc]
  3a8308: 681b         	ldr	r3, [r3]
  3a830a: 33c8         	adds	r3, #0xc8
  3a830c: 681b         	ldr	r3, [r3]
  3a830e: 9903         	ldr	r1, [sp, #0xc]
  3a8310: 9a03         	ldr	r2, [sp, #0xc]
  3a8312: f8d2 2190    	ldr.w	r2, [r2, #0x190]
  3a8316: 4608         	mov	r0, r1
  3a8318: 4611         	mov	r1, r2
  3a831a: 4798         	blx	r3
  3a831c: f7cf fc10    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x307e0
  3a8320: 4603         	mov	r3, r0
  3a8322: 4618         	mov	r0, r3
  3a8324: f7d2 fe40    	bl	0x37afa8 <NetworkManager::getQuickplayPopulation()> @ imm = #-0x2d380
  3a8328: 4602         	mov	r2, r0
  3a832a: 9b03         	ldr	r3, [sp, #0xc]
  3a832c: f8c3 2184    	str.w	r2, [r3, #0x184]
  3a8330: 9b03         	ldr	r3, [sp, #0xc]
  3a8332: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  3a8336: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x3a8510 <PlayerLobbyOnlineHosted::initMenu()+0x14a0>
  3a8338: 447a         	add	r2, pc
  3a833a: 4610         	mov	r0, r2
  3a833c: 4619         	mov	r1, r3
  3a833e: f1f1 fbe7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f17ce
  3a8342: 4603         	mov	r3, r0
  3a8344: 4618         	mov	r0, r3
  3a8346: f1f1 faef    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f15de
  3a834a: 4603         	mov	r3, r0
  3a834c: 4618         	mov	r0, r3
  3a834e: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x3a8514 <PlayerLobbyOnlineHosted::initMenu()+0x14a4>
  3a8350: 447b         	add	r3, pc
  3a8352: 4619         	mov	r1, r3
  3a8354: f04f 0200    	mov.w	r2, #0x0
  3a8358: f2c4 1240    	movt	r2, #0x4140
  3a835c: f203 fe60    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x203cc0
  3a8360: 4602         	mov	r2, r0
  3a8362: 9b03         	ldr	r3, [sp, #0xc]
  3a8364: f8c3 2128    	str.w	r2, [r3, #0x128]
  3a8368: 9b03         	ldr	r3, [sp, #0xc]
  3a836a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a836e: 4618         	mov	r0, r3
  3a8370: f1ef fdba    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1efb74
  3a8374: 9b03         	ldr	r3, [sp, #0xc]
  3a8376: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a837a: 681b         	ldr	r3, [r3]
  3a837c: 337c         	adds	r3, #0x7c
  3a837e: 681d         	ldr	r5, [r3]
  3a8380: 9b03         	ldr	r3, [sp, #0xc]
  3a8382: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a8386: 461e         	mov	r6, r3
  3a8388: ab3a         	add	r3, sp, #0xe8
  3a838a: 4618         	mov	r0, r3
  3a838c: f04f 517e    	mov.w	r1, #0x3f800000
  3a8390: f04f 527c    	mov.w	r2, #0x3f000000
  3a8394: f1ea fcac    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ea958
  3a8398: ab3a         	add	r3, sp, #0xe8
  3a839a: 4630         	mov	r0, r6
  3a839c: 4619         	mov	r1, r3
  3a839e: 47a8         	blx	r5
  3a83a0: 9b03         	ldr	r3, [sp, #0xc]
  3a83a2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a83a6: 681b         	ldr	r3, [r3]
  3a83a8: 334c         	adds	r3, #0x4c
  3a83aa: 681d         	ldr	r5, [r3]
  3a83ac: 9b03         	ldr	r3, [sp, #0xc]
  3a83ae: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a83b2: 461e         	mov	r6, r3
  3a83b4: 4b55         	ldr	r3, [pc, #0x154]        @ 0x3a850c <PlayerLobbyOnlineHosted::initMenu()+0x149c>
  3a83b6: 58e3         	ldr	r3, [r4, r3]
  3a83b8: ed93 7a00    	vldr	s14, [r3]
  3a83bc: eef2 7a08    	vmov.f32	s15, #1.200000e+01
  3a83c0: ee77 7a67    	vsub.f32	s15, s14, s15
  3a83c4: ab3a         	add	r3, sp, #0xe8
  3a83c6: 4618         	mov	r0, r3
  3a83c8: ee17 1a90    	vmov	r1, s15
  3a83cc: f04f 0200    	mov.w	r2, #0x0
  3a83d0: f2c4 1210    	movt	r2, #0x4110
  3a83d4: f1ea fc8c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ea918
  3a83d8: ab3a         	add	r3, sp, #0xe8
  3a83da: 4630         	mov	r0, r6
  3a83dc: 4619         	mov	r1, r3
  3a83de: 47a8         	blx	r5
  3a83e0: 9b03         	ldr	r3, [sp, #0xc]
  3a83e2: 681b         	ldr	r3, [r3]
  3a83e4: 33c8         	adds	r3, #0xc8
  3a83e6: 681b         	ldr	r3, [r3]
  3a83e8: 9903         	ldr	r1, [sp, #0xc]
  3a83ea: 9a03         	ldr	r2, [sp, #0xc]
  3a83ec: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a83f0: 4608         	mov	r0, r1
  3a83f2: 4611         	mov	r1, r2
  3a83f4: 4798         	blx	r3
  3a83f6: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3a8518 <PlayerLobbyOnlineHosted::initMenu()+0x14a8>
  3a83f8: 447b         	add	r3, pc
  3a83fa: 4618         	mov	r0, r3
  3a83fc: f22f fec2    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x22fd84
  3a8400: 4603         	mov	r3, r0
  3a8402: 931f         	str	r3, [sp, #0x7c]
  3a8404: 9b1f         	ldr	r3, [sp, #0x7c]
  3a8406: 681b         	ldr	r3, [r3]
  3a8408: 334c         	adds	r3, #0x4c
  3a840a: 681d         	ldr	r5, [r3]
  3a840c: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3a850c <PlayerLobbyOnlineHosted::initMenu()+0x149c>
  3a840e: 58e3         	ldr	r3, [r4, r3]
  3a8410: ed93 7a00    	vldr	s14, [r3]
  3a8414: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a8418: eec7 6a27    	vdiv.f32	s13, s14, s15
  3a841c: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x3a850c <PlayerLobbyOnlineHosted::initMenu()+0x149c>
  3a841e: 58e3         	ldr	r3, [r4, r3]
  3a8420: ed93 7a01    	vldr	s14, [r3, #4]
  3a8424: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a8428: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a842c: ab3a         	add	r3, sp, #0xe8
  3a842e: 4618         	mov	r0, r3
  3a8430: ee16 1a90    	vmov	r1, s13
  3a8434: ee17 2a90    	vmov	r2, s15
  3a8438: f1ea fc5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ea8b4
  3a843c: ab3a         	add	r3, sp, #0xe8
  3a843e: 981f         	ldr	r0, [sp, #0x7c]
  3a8440: 4619         	mov	r1, r3
  3a8442: 47a8         	blx	r5
  3a8444: 9b1f         	ldr	r3, [sp, #0x7c]
  3a8446: 681b         	ldr	r3, [r3]
  3a8448: f503 73d2    	add.w	r3, r3, #0x1a4
  3a844c: 681b         	ldr	r3, [r3]
  3a844e: 981f         	ldr	r0, [sp, #0x7c]
  3a8450: 2123         	movs	r1, #0x23
  3a8452: 4798         	blx	r3
  3a8454: 9b03         	ldr	r3, [sp, #0xc]
  3a8456: 681b         	ldr	r3, [r3]
  3a8458: 33c8         	adds	r3, #0xc8
  3a845a: 681b         	ldr	r3, [r3]
  3a845c: 9a03         	ldr	r2, [sp, #0xc]
  3a845e: 4610         	mov	r0, r2
  3a8460: 991f         	ldr	r1, [sp, #0x7c]
  3a8462: 4798         	blx	r3
  3a8464: ab36         	add	r3, sp, #0xd8
  3a8466: 4618         	mov	r0, r3
  3a8468: f00d f254    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d4a8
  3a846c: e047         	b	0x3a84fe <PlayerLobbyOnlineHosted::initMenu()+0x148e> @ imm = #0x8e
  3a846e: ab05         	add	r3, sp, #0x14
  3a8470: 4618         	mov	r0, r3
  3a8472: f00d f24f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d49e
  3a8476: e7ff         	b	0x3a8478 <PlayerLobbyOnlineHosted::initMenu()+0x1408> @ imm = #-0x2
  3a8478: ab04         	add	r3, sp, #0x10
  3a847a: 4618         	mov	r0, r3
  3a847c: f3e1 ffbe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1f7c
  3a8480: f3df fe14    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfc28
  3a8484: ab05         	add	r3, sp, #0x14
  3a8486: 4618         	mov	r0, r3
  3a8488: f00d f244    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d488
  3a848c: e7ff         	b	0x3a848e <PlayerLobbyOnlineHosted::initMenu()+0x141e> @ imm = #-0x2
  3a848e: ab04         	add	r3, sp, #0x10
  3a8490: 4618         	mov	r0, r3
  3a8492: f3e1 ffb3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1f66
  3a8496: f3df fe09    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfc12
  3a849a: ab05         	add	r3, sp, #0x14
  3a849c: 4618         	mov	r0, r3
  3a849e: f00d f239    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d472
  3a84a2: e7ff         	b	0x3a84a4 <PlayerLobbyOnlineHosted::initMenu()+0x1434> @ imm = #-0x2
  3a84a4: ab04         	add	r3, sp, #0x10
  3a84a6: 4618         	mov	r0, r3
  3a84a8: f3e1 ffa8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1f50
  3a84ac: f3df fdfe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfbfc
  3a84b0: ab05         	add	r3, sp, #0x14
  3a84b2: 4618         	mov	r0, r3
  3a84b4: f00d f22e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d45c
  3a84b8: e7ff         	b	0x3a84ba <PlayerLobbyOnlineHosted::initMenu()+0x144a> @ imm = #-0x2
  3a84ba: ab04         	add	r3, sp, #0x10
  3a84bc: 4618         	mov	r0, r3
  3a84be: f3e1 ff9d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1f3a
  3a84c2: f3df fdf3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfbe6
  3a84c6: ab05         	add	r3, sp, #0x14
  3a84c8: 4618         	mov	r0, r3
  3a84ca: f00d f223    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d446
  3a84ce: e7ff         	b	0x3a84d0 <PlayerLobbyOnlineHosted::initMenu()+0x1460> @ imm = #-0x2
  3a84d0: ab04         	add	r3, sp, #0x10
  3a84d2: 4618         	mov	r0, r3
  3a84d4: f3e1 ff92    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1f24
  3a84d8: f3df fde8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfbd0
  3a84dc: ab3a         	add	r3, sp, #0xe8
  3a84de: 4618         	mov	r0, r3
  3a84e0: f3e1 ff8c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1f18
  3a84e4: f3df fde2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfbc4
  3a84e8: ab3a         	add	r3, sp, #0xe8
  3a84ea: 4618         	mov	r0, r3
  3a84ec: f00d f212    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d424
  3a84f0: e7ff         	b	0x3a84f2 <PlayerLobbyOnlineHosted::initMenu()+0x1482> @ imm = #-0x2
  3a84f2: ab36         	add	r3, sp, #0xd8
  3a84f4: 4618         	mov	r0, r3
  3a84f6: f00d f20d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d41a
  3a84fa: f3df fdd7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dfbae
  3a84fe: b03f         	add	sp, #0xfc
  3a8500: ecbd 8b02    	vpop	{d8}
  3a8504: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3a8505); words below are literal-pool data ---
  3a8506: bf00         	nop
  3a8508: acba         	add	r4, sp, #0x2e8
  3a850a: 0042         	lsls	r2, r0, #0x1
  3a850c: d724         	bvc	0x3a8558 <PlayerLobbyOnlineHosted::entered()+0x38> @ imm = #0x48
  3a850e: ffff ac08    	vdup.8	d26, d8[7]
  3a8512: 0042         	lsls	r2, r0, #0x1
  3a8514: abe0         	add	r3, sp, #0x380
  3a8516: 0042         	lsls	r2, r0, #0x1
  3a8518: ab5c         	add	r3, sp, #0x170
  3a851a: 0042         	lsls	r2, r0, #0x1

// ==== PlayerLobbyOnlineHosted::entered
//      file offset 0x3a8520 (= ELF address; Ghidra 0x3b8520), 58 bytes, Thumb-2
  3a8520: b500         	push	{lr}
  3a8522: b083         	sub	sp, #0xc
  3a8524: 9001         	str	r0, [sp, #0x4]
  3a8526: f7cf fb0b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x309ea
  3a852a: 4603         	mov	r3, r0
  3a852c: 4618         	mov	r0, r3
  3a852e: f7d1 ffed    	bl	0x37a50c <NetworkManager::isConnected()> @ imm = #-0x2e026
  3a8532: 4603         	mov	r3, r0
  3a8534: f083 0301    	eor	r3, r3, #0x1
  3a8538: b2db         	uxtb	r3, r3
  3a853a: 2b00         	cmp	r3, #0x0
  3a853c: d006         	beq	0x3a854c <PlayerLobbyOnlineHosted::entered()+0x2c> @ imm = #0xc
  3a853e: f7cf faff    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x30a02
  3a8542: 4603         	mov	r3, r0
  3a8544: 4618         	mov	r0, r3
  3a8546: 2101         	movs	r1, #0x1
  3a8548: f7d1 ffb0    	bl	0x37a4ac <NetworkManager::connectToServer(bool)> @ imm = #-0x2e0a0
  3a854c: 9b01         	ldr	r3, [sp, #0x4]
  3a854e: 4618         	mov	r0, r3
  3a8550: f7f3 f9b6    	bl	0x39b8c0 <PlayerLobby::entered()> @ imm = #-0xcc94
  3a8554: b003         	add	sp, #0xc
  3a8556: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::onPlayerDisconnected
//      file offset 0x3a855c (= ELF address; Ghidra 0x3b855c), 10 bytes, Thumb-2
  3a855c: b082         	sub	sp, #0x8
  3a855e: 9001         	str	r0, [sp, #0x4]
  3a8560: 9100         	str	r1, [sp]
  3a8562: b002         	add	sp, #0x8
  3a8564: 4770         	bx	lr

// ==== PlayerLobbyOnlineHosted::onExitGame
//      file offset 0x3a8568 (= ELF address; Ghidra 0x3b8568), 380 bytes, Thumb-2
  3a8568: b530         	push	{r4, r5, lr}
  3a856a: b08d         	sub	sp, #0x34
  3a856c: 9003         	str	r0, [sp, #0xc]
  3a856e: 9102         	str	r1, [sp, #0x8]
  3a8570: 4c55         	ldr	r4, [pc, #0x154]        @ 0x3a86c8 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x160>
  3a8572: 447c         	add	r4, pc
  3a8574: 9b03         	ldr	r3, [sp, #0xc]
  3a8576: f893 30f0    	ldrb.w	r3, [r3, #0xf0]
  3a857a: 2b00         	cmp	r3, #0x0
  3a857c: d000         	beq	0x3a8580 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3a857e: e0a0         	b	0x3a86c2 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x15a> @ imm = #0x140
  3a8580: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3a86cc <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x164>
  3a8582: 58e3         	ldr	r3, [r4, r3]
  3a8584: 681b         	ldr	r3, [r3]
  3a8586: 4618         	mov	r0, r3
  3a8588: 210e         	movs	r1, #0xe
  3a858a: f04f fc19    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4f832
  3a858e: 9b03         	ldr	r3, [sp, #0xc]
  3a8590: 2201         	movs	r2, #0x1
  3a8592: f883 20f1    	strb.w	r2, [r3, #0xf1]
  3a8596: ab06         	add	r3, sp, #0x18
  3a8598: 4618         	mov	r0, r3
  3a859a: f3e1 ff2b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1e56
  3a859e: aa0a         	add	r2, sp, #0x28
  3a85a0: ab06         	add	r3, sp, #0x18
  3a85a2: 4610         	mov	r0, r2
  3a85a4: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x3a86d0 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x168>
  3a85a6: 447a         	add	r2, pc
  3a85a8: 4611         	mov	r1, r2
  3a85aa: 461a         	mov	r2, r3
  3a85ac: f00e f258    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40e4b0
  3a85b0: ab07         	add	r3, sp, #0x1c
  3a85b2: 4618         	mov	r0, r3
  3a85b4: f3e1 ff1e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1e3c
  3a85b8: aa0b         	add	r2, sp, #0x2c
  3a85ba: ab07         	add	r3, sp, #0x1c
  3a85bc: 4610         	mov	r0, r2
  3a85be: 4a45         	ldr	r2, [pc, #0x114]        @ 0x3a86d4 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x16c>
  3a85c0: 447a         	add	r2, pc
  3a85c2: 4611         	mov	r1, r2
  3a85c4: 461a         	mov	r2, r3
  3a85c6: f00e f24b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40e496
  3a85ca: ab04         	add	r3, sp, #0x10
  3a85cc: 4618         	mov	r0, r3
  3a85ce: f3e1 ff11    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1e22
  3a85d2: aa08         	add	r2, sp, #0x20
  3a85d4: ab04         	add	r3, sp, #0x10
  3a85d6: 4610         	mov	r0, r2
  3a85d8: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x3a86d8 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x170>
  3a85da: 447a         	add	r2, pc
  3a85dc: 4611         	mov	r1, r2
  3a85de: 461a         	mov	r2, r3
  3a85e0: f00e f23e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40e47c
  3a85e4: ab08         	add	r3, sp, #0x20
  3a85e6: 4618         	mov	r0, r3
  3a85e8: f1f1 fa28    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f1450
  3a85ec: 4605         	mov	r5, r0
  3a85ee: ab05         	add	r3, sp, #0x14
  3a85f0: 4618         	mov	r0, r3
  3a85f2: f3e1 feff    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1dfe
  3a85f6: aa09         	add	r2, sp, #0x24
  3a85f8: ab05         	add	r3, sp, #0x14
  3a85fa: 4610         	mov	r0, r2
  3a85fc: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x3a86dc <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x174>
  3a85fe: 447a         	add	r2, pc
  3a8600: 4611         	mov	r1, r2
  3a8602: 461a         	mov	r2, r3
  3a8604: f00e f22c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40e458
  3a8608: ab09         	add	r3, sp, #0x24
  3a860a: 4618         	mov	r0, r3
  3a860c: f1f1 fa16    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f142c
  3a8610: 4603         	mov	r3, r0
  3a8612: 4628         	mov	r0, r5
  3a8614: 4619         	mov	r1, r3
  3a8616: 2200         	movs	r2, #0x0
  3a8618: f1f1 fbfa    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1f17f4
  3a861c: 4603         	mov	r3, r0
  3a861e: 9803         	ldr	r0, [sp, #0xc]
  3a8620: a90a         	add	r1, sp, #0x28
  3a8622: aa0b         	add	r2, sp, #0x2c
  3a8624: 2500         	movs	r5, #0x0
  3a8626: 9500         	str	r5, [sp]
  3a8628: 9001         	str	r0, [sp, #0x4]
  3a862a: 482d         	ldr	r0, [pc, #0xb4]         @ 0x3a86e0 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x178>
  3a862c: 5820         	ldr	r0, [r4, r0]
  3a862e: f737 f8e1    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xc8e3e
  3a8632: ab09         	add	r3, sp, #0x24
  3a8634: 4618         	mov	r0, r3
  3a8636: f00d f16d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d2da
  3a863a: ab05         	add	r3, sp, #0x14
  3a863c: 4618         	mov	r0, r3
  3a863e: f3e1 fedd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1dba
  3a8642: ab08         	add	r3, sp, #0x20
  3a8644: 4618         	mov	r0, r3
  3a8646: f00d f165    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d2ca
  3a864a: ab04         	add	r3, sp, #0x10
  3a864c: 4618         	mov	r0, r3
  3a864e: f3e1 fed5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1daa
  3a8652: ab0b         	add	r3, sp, #0x2c
  3a8654: 4618         	mov	r0, r3
  3a8656: f00d f15d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d2ba
  3a865a: ab07         	add	r3, sp, #0x1c
  3a865c: 4618         	mov	r0, r3
  3a865e: f3e1 fecd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1d9a
  3a8662: ab0a         	add	r3, sp, #0x28
  3a8664: 4618         	mov	r0, r3
  3a8666: f00d f155    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d2aa
  3a866a: ab06         	add	r3, sp, #0x18
  3a866c: 4618         	mov	r0, r3
  3a866e: f3e1 fec5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1d8a
  3a8672: e026         	b	0x3a86c2 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x15a> @ imm = #0x4c
  3a8674: ab09         	add	r3, sp, #0x24
  3a8676: 4618         	mov	r0, r3
  3a8678: f00d f14c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d298
  3a867c: e7ff         	b	0x3a867e <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x116> @ imm = #-0x2
  3a867e: ab05         	add	r3, sp, #0x14
  3a8680: 4618         	mov	r0, r3
  3a8682: f3e1 febb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1d76
  3a8686: e7ff         	b	0x3a8688 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x120> @ imm = #-0x2
  3a8688: ab08         	add	r3, sp, #0x20
  3a868a: 4618         	mov	r0, r3
  3a868c: f00d f142    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d284
  3a8690: e7ff         	b	0x3a8692 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x12a> @ imm = #-0x2
  3a8692: ab04         	add	r3, sp, #0x10
  3a8694: 4618         	mov	r0, r3
  3a8696: f3e1 feb1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1d62
  3a869a: ab0b         	add	r3, sp, #0x2c
  3a869c: 4618         	mov	r0, r3
  3a869e: f00d f139    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d272
  3a86a2: e7ff         	b	0x3a86a4 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x13c> @ imm = #-0x2
  3a86a4: ab07         	add	r3, sp, #0x1c
  3a86a6: 4618         	mov	r0, r3
  3a86a8: f3e1 fea8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1d50
  3a86ac: ab0a         	add	r3, sp, #0x28
  3a86ae: 4618         	mov	r0, r3
  3a86b0: f00d f130    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40d260
  3a86b4: e7ff         	b	0x3a86b6 <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0x14e> @ imm = #-0x2
  3a86b6: ab06         	add	r3, sp, #0x18
  3a86b8: 4618         	mov	r0, r3
  3a86ba: f3e1 fe9f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1d3e
  3a86be: f3df fcf5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3df9ea
  3a86c2: b00d         	add	sp, #0x34
  3a86c4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a86c5); words below are literal-pool data ---
  3a86c6: bf00         	nop
  3a86c8: a496         	adr	r4, #600 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x7e>
  3a86ca: 0058         	lsls	r0, r3, #0x1
  3a86cc: d730         	bvc	0x3a8730 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x4c> @ imm = #0x60
  3a86ce: ffff a9ea    	<unknown>
  3a86d2: 0042         	lsls	r2, r0, #0x1
  3a86d4: a9e0         	add	r1, sp, #0x380
  3a86d6: 0042         	lsls	r2, r0, #0x1
  3a86d8: a9f2         	add	r1, sp, #0x3c8
  3a86da: 0042         	lsls	r2, r0, #0x1
  3a86dc: a91e         	add	r1, sp, #0x78
  3a86de: 0042         	lsls	r2, r0, #0x1
  3a86e0: ddbc         	ble	0x3a865c <PlayerLobbyOnlineHosted::onExitGame(cocos2d::CCObject*)+0xf4> @ imm = #-0x88
  3a86e2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineHosted::updateCountDown
//      file offset 0x3a86e4 (= ELF address; Ghidra 0x3b86e4), 888 bytes, Thumb-2
  3a86e4: b530         	push	{r4, r5, lr}
  3a86e6: b085         	sub	sp, #0x14
  3a86e8: 9001         	str	r0, [sp, #0x4]
  3a86ea: 9100         	str	r1, [sp]
  3a86ec: 9b01         	ldr	r3, [sp, #0x4]
  3a86ee: ed93 7a60    	vldr	s14, [r3, #384]
  3a86f2: eddd 7a00    	vldr	s15, [sp]
  3a86f6: ee77 7a27    	vadd.f32	s15, s14, s15
  3a86fa: 9b01         	ldr	r3, [sp, #0x4]
  3a86fc: edc3 7a60    	vstr	s15, [r3, #384]
  3a8700: 9b01         	ldr	r3, [sp, #0x4]
  3a8702: ed93 7a60    	vldr	s14, [r3, #384]
  3a8706: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3a870a: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a870e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a8712: dd32         	ble	0x3a877a <PlayerLobbyOnlineHosted::updateCountDown(float)+0x96> @ imm = #0x64
  3a8714: f7cf fa14    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x30bd8
  3a8718: 4603         	mov	r3, r0
  3a871a: 4618         	mov	r0, r3
  3a871c: f7d1 fef6    	bl	0x37a50c <NetworkManager::isConnected()> @ imm = #-0x2e214
  3a8720: 4603         	mov	r3, r0
  3a8722: 2b00         	cmp	r3, #0x0
  3a8724: d006         	beq	0x3a8734 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x50> @ imm = #0xc
  3a8726: f7cf fa0b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x30bea
  3a872a: 4603         	mov	r3, r0
  3a872c: 4618         	mov	r0, r3
  3a872e: f7d1 fecf    	bl	0x37a4d0 <NetworkManager::requestNumPlayers()> @ imm = #-0x2e262
  3a8732: e01d         	b	0x3a8770 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x8c> @ imm = #0x3a
  3a8734: 9b01         	ldr	r3, [sp, #0x4]
  3a8736: f893 3189    	ldrb.w	r3, [r3, #0x189]
  3a873a: f083 0301    	eor	r3, r3, #0x1
  3a873e: b2db         	uxtb	r3, r3
  3a8740: 2b00         	cmp	r3, #0x0
  3a8742: d015         	beq	0x3a8770 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x8c> @ imm = #0x2a
  3a8744: 9b01         	ldr	r3, [sp, #0x4]
  3a8746: f893 3188    	ldrb.w	r3, [r3, #0x188]
  3a874a: f083 0301    	eor	r3, r3, #0x1
  3a874e: b2db         	uxtb	r3, r3
  3a8750: 2b00         	cmp	r3, #0x0
  3a8752: d00d         	beq	0x3a8770 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x8c> @ imm = #0x1a
  3a8754: f7cf f9f4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x30c18
  3a8758: 4602         	mov	r2, r0
  3a875a: 9b01         	ldr	r3, [sp, #0x4]
  3a875c: f893 318a    	ldrb.w	r3, [r3, #0x18a]
  3a8760: 4610         	mov	r0, r2
  3a8762: 4619         	mov	r1, r3
  3a8764: f7d1 fea2    	bl	0x37a4ac <NetworkManager::connectToServer(bool)> @ imm = #-0x2e2bc
  3a8768: 9b01         	ldr	r3, [sp, #0x4]
  3a876a: 2200         	movs	r2, #0x0
  3a876c: f883 218a    	strb.w	r2, [r3, #0x18a]
  3a8770: 9b01         	ldr	r3, [sp, #0x4]
  3a8772: f04f 0200    	mov.w	r2, #0x0
  3a8776: f8c3 2180    	str.w	r2, [r3, #0x180]
  3a877a: 9b01         	ldr	r3, [sp, #0x4]
  3a877c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a8780: 4618         	mov	r0, r3
  3a8782: f1eb fa73    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1eb4e6
  3a8786: 4603         	mov	r3, r0
  3a8788: 2b01         	cmp	r3, #0x1
  3a878a: bf8c         	ite	hi
  3a878c: 2300         	movhi	r3, #0x0
  3a878e: 2301         	movls	r3, #0x1
  3a8790: b2db         	uxtb	r3, r3
  3a8792: 2b00         	cmp	r3, #0x0
  3a8794: d03c         	beq	0x3a8810 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x12c> @ imm = #0x78
  3a8796: 9b01         	ldr	r3, [sp, #0x4]
  3a8798: 681b         	ldr	r3, [r3]
  3a879a: f503 73ee    	add.w	r3, r3, #0x1dc
  3a879e: 681b         	ldr	r3, [r3]
  3a87a0: 9a01         	ldr	r2, [sp, #0x4]
  3a87a2: 4610         	mov	r0, r2
  3a87a4: 4798         	blx	r3
  3a87a6: 4603         	mov	r3, r0
  3a87a8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a87ac: 2b03         	cmp	r3, #0x3
  3a87ae: bf14         	ite	ne
  3a87b0: 2300         	movne	r3, #0x0
  3a87b2: 2301         	moveq	r3, #0x1
  3a87b4: b2db         	uxtb	r3, r3
  3a87b6: 2b00         	cmp	r3, #0x0
  3a87b8: d00b         	beq	0x3a87d2 <PlayerLobbyOnlineHosted::updateCountDown(float)+0xee> @ imm = #0x16
  3a87ba: 9b01         	ldr	r3, [sp, #0x4]
  3a87bc: 681b         	ldr	r3, [r3]
  3a87be: f503 73ee    	add.w	r3, r3, #0x1dc
  3a87c2: 681b         	ldr	r3, [r3]
  3a87c4: 9a01         	ldr	r2, [sp, #0x4]
  3a87c6: 4610         	mov	r0, r2
  3a87c8: 4798         	blx	r3
  3a87ca: 4603         	mov	r3, r0
  3a87cc: 2201         	movs	r2, #0x1
  3a87ce: f8c3 2118    	str.w	r2, [r3, #0x118]
  3a87d2: 9b01         	ldr	r3, [sp, #0x4]
  3a87d4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a87d8: 681b         	ldr	r3, [r3]
  3a87da: f503 73fc    	add.w	r3, r3, #0x1f8
  3a87de: 681b         	ldr	r3, [r3]
  3a87e0: 9a01         	ldr	r2, [sp, #0x4]
  3a87e2: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a87e6: 4610         	mov	r0, r2
  3a87e8: 4a98         	ldr	r2, [pc, #0x260]        @ 0x3a8a4c <PlayerLobbyOnlineHosted::updateCountDown(float)+0x368>
  3a87ea: 447a         	add	r2, pc
  3a87ec: 4611         	mov	r1, r2
  3a87ee: 4798         	blx	r3
  3a87f0: 9b01         	ldr	r3, [sp, #0x4]
  3a87f2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a87f6: 681b         	ldr	r3, [r3]
  3a87f8: 334c         	adds	r3, #0x4c
  3a87fa: 681b         	ldr	r3, [r3]
  3a87fc: 9a01         	ldr	r2, [sp, #0x4]
  3a87fe: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a8802: 4611         	mov	r1, r2
  3a8804: 9a01         	ldr	r2, [sp, #0x4]
  3a8806: f502 72ae    	add.w	r2, r2, #0x15c
  3a880a: 4608         	mov	r0, r1
  3a880c: 4611         	mov	r1, r2
  3a880e: 4798         	blx	r3
  3a8810: 9b01         	ldr	r3, [sp, #0x4]
  3a8812: ed93 7a5f    	vldr	s14, [r3, #380]
  3a8816: eddd 7a00    	vldr	s15, [sp]
  3a881a: ee77 7a27    	vadd.f32	s15, s14, s15
  3a881e: 9b01         	ldr	r3, [sp, #0x4]
  3a8820: edc3 7a5f    	vstr	s15, [r3, #380]
  3a8824: 9b01         	ldr	r3, [sp, #0x4]
  3a8826: ed93 7a5f    	vldr	s14, [r3, #380]
  3a882a: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3a882e: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a8832: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a8836: dd05         	ble	0x3a8844 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x160> @ imm = #0xa
  3a8838: 9b01         	ldr	r3, [sp, #0x4]
  3a883a: f04f 0200    	mov.w	r2, #0x0
  3a883e: f8c3 217c    	str.w	r2, [r3, #0x17c]
  3a8842: e034         	b	0x3a88ae <PlayerLobbyOnlineHosted::updateCountDown(float)+0x1ca> @ imm = #0x68
  3a8844: 9b01         	ldr	r3, [sp, #0x4]
  3a8846: ed93 7a5f    	vldr	s14, [r3, #380]
  3a884a: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a884e: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a8852: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a8856: dd1b         	ble	0x3a8890 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x1ac> @ imm = #0x36
  3a8858: 9b01         	ldr	r3, [sp, #0x4]
  3a885a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a885e: 681b         	ldr	r3, [r3]
  3a8860: f503 730f    	add.w	r3, r3, #0x23c
  3a8864: 681c         	ldr	r4, [r3]
  3a8866: 9b01         	ldr	r3, [sp, #0x4]
  3a8868: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  3a886c: 9b01         	ldr	r3, [sp, #0x4]
  3a886e: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  3a8872: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x3a8a50 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x36c>
  3a8874: 447a         	add	r2, pc
  3a8876: 4610         	mov	r0, r2
  3a8878: 4619         	mov	r1, r3
  3a887a: f1f1 f949    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f1292
  3a887e: 4603         	mov	r3, r0
  3a8880: 4618         	mov	r0, r3
  3a8882: f1f1 f851    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f10a2
  3a8886: 4603         	mov	r3, r0
  3a8888: 4628         	mov	r0, r5
  3a888a: 4619         	mov	r1, r3
  3a888c: 47a0         	blx	r4
  3a888e: e00e         	b	0x3a88ae <PlayerLobbyOnlineHosted::updateCountDown(float)+0x1ca> @ imm = #0x1c
  3a8890: 9b01         	ldr	r3, [sp, #0x4]
  3a8892: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a8896: 681b         	ldr	r3, [r3]
  3a8898: f503 730f    	add.w	r3, r3, #0x23c
  3a889c: 681b         	ldr	r3, [r3]
  3a889e: 9a01         	ldr	r2, [sp, #0x4]
  3a88a0: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a88a4: 4610         	mov	r0, r2
  3a88a6: 4a6b         	ldr	r2, [pc, #0x1ac]        @ 0x3a8a54 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x370>
  3a88a8: 447a         	add	r2, pc
  3a88aa: 4611         	mov	r1, r2
  3a88ac: 4798         	blx	r3
  3a88ae: 9b01         	ldr	r3, [sp, #0x4]
  3a88b0: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a88b4: 2b00         	cmp	r3, #0x0
  3a88b6: f000 80bd    	beq.w	0x3a8a34 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x350> @ imm = #0x17a
  3a88ba: 9b01         	ldr	r3, [sp, #0x4]
  3a88bc: ed93 7a52    	vldr	s14, [r3, #328]
  3a88c0: eddd 7a00    	vldr	s15, [sp]
  3a88c4: ee77 7a67    	vsub.f32	s15, s14, s15
  3a88c8: eef5 7ac0    	vcmpe.f32	s15, #0
  3a88cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a88d0: dd07         	ble	0x3a88e2 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x1fe> @ imm = #0xe
  3a88d2: 9b01         	ldr	r3, [sp, #0x4]
  3a88d4: ed93 7a52    	vldr	s14, [r3, #328]
  3a88d8: eddd 7a00    	vldr	s15, [sp]
  3a88dc: ee77 7a67    	vsub.f32	s15, s14, s15
  3a88e0: e001         	b	0x3a88e6 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x202> @ imm = #0x2
  3a88e2: eddf 7a59    	vldr	s15, [pc, #356]         @ 0x3a8a48 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x364>
  3a88e6: 9b01         	ldr	r3, [sp, #0x4]
  3a88e8: edc3 7a52    	vstr	s15, [r3, #328]
  3a88ec: 9b01         	ldr	r3, [sp, #0x4]
  3a88ee: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a88f2: 681b         	ldr	r3, [r3]
  3a88f4: f503 730f    	add.w	r3, r3, #0x23c
  3a88f8: 681c         	ldr	r4, [r3]
  3a88fa: 9b01         	ldr	r3, [sp, #0x4]
  3a88fc: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  3a8900: 9b01         	ldr	r3, [sp, #0x4]
  3a8902: edd3 7a52    	vldr	s15, [r3, #328]
  3a8906: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a890a: ee17 2a90    	vmov	r2, s15
  3a890e: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3a8a58 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x374>
  3a8910: 447b         	add	r3, pc
  3a8912: 4618         	mov	r0, r3
  3a8914: 4611         	mov	r1, r2
  3a8916: f1f1 f8fb    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f11f6
  3a891a: 4603         	mov	r3, r0
  3a891c: 4618         	mov	r0, r3
  3a891e: f1f1 f803    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f1006
  3a8922: 4603         	mov	r3, r0
  3a8924: 4628         	mov	r0, r5
  3a8926: 4619         	mov	r1, r3
  3a8928: 47a0         	blx	r4
  3a892a: 9b01         	ldr	r3, [sp, #0x4]
  3a892c: ed93 7a52    	vldr	s14, [r3, #328]
  3a8930: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a8934: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a8938: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a893c: f140 8081    	bpl.w	0x3a8a42 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x35e> @ imm = #0x102
  3a8940: 9b01         	ldr	r3, [sp, #0x4]
  3a8942: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a8946: 681b         	ldr	r3, [r3]
  3a8948: f503 73de    	add.w	r3, r3, #0x1bc
  3a894c: 681c         	ldr	r4, [r3]
  3a894e: 9b01         	ldr	r3, [sp, #0x4]
  3a8950: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a8954: 461d         	mov	r5, r3
  3a8956: 20ff         	movs	r0, #0xff
  3a8958: 2100         	movs	r1, #0x0
  3a895a: 2200         	movs	r2, #0x0
  3a895c: f7fb fad8    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x4a50
  3a8960: 4603         	mov	r3, r0
  3a8962: 461a         	mov	r2, r3
  3a8964: f88d 200c    	strb.w	r2, [sp, #0xc]
  3a8968: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a896c: f88d 200d    	strb.w	r2, [sp, #0xd]
  3a8970: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a8974: f88d 300e    	strb.w	r3, [sp, #0xe]
  3a8978: ab03         	add	r3, sp, #0xc
  3a897a: 4628         	mov	r0, r5
  3a897c: 4619         	mov	r1, r3
  3a897e: 47a0         	blx	r4
  3a8980: 9b01         	ldr	r3, [sp, #0x4]
  3a8982: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a8986: 681b         	ldr	r3, [r3]
  3a8988: 3390         	adds	r3, #0x90
  3a898a: 681b         	ldr	r3, [r3]
  3a898c: 9a01         	ldr	r2, [sp, #0x4]
  3a898e: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a8992: 4610         	mov	r0, r2
  3a8994: 2100         	movs	r1, #0x0
  3a8996: 4798         	blx	r3
  3a8998: 9b01         	ldr	r3, [sp, #0x4]
  3a899a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a899e: 681b         	ldr	r3, [r3]
  3a89a0: 3390         	adds	r3, #0x90
  3a89a2: 681b         	ldr	r3, [r3]
  3a89a4: 9a01         	ldr	r2, [sp, #0x4]
  3a89a6: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a89aa: 4610         	mov	r0, r2
  3a89ac: 2100         	movs	r1, #0x0
  3a89ae: 4798         	blx	r3
  3a89b0: 9b01         	ldr	r3, [sp, #0x4]
  3a89b2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a89b6: 681b         	ldr	r3, [r3]
  3a89b8: 3390         	adds	r3, #0x90
  3a89ba: 681b         	ldr	r3, [r3]
  3a89bc: 9a01         	ldr	r2, [sp, #0x4]
  3a89be: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a89c2: 4610         	mov	r0, r2
  3a89c4: 2100         	movs	r1, #0x0
  3a89c6: 4798         	blx	r3
  3a89c8: 9b01         	ldr	r3, [sp, #0x4]
  3a89ca: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a89ce: 681b         	ldr	r3, [r3]
  3a89d0: 3390         	adds	r3, #0x90
  3a89d2: 681b         	ldr	r3, [r3]
  3a89d4: 9a01         	ldr	r2, [sp, #0x4]
  3a89d6: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a89da: 4610         	mov	r0, r2
  3a89dc: 2100         	movs	r1, #0x0
  3a89de: 4798         	blx	r3
  3a89e0: 9b01         	ldr	r3, [sp, #0x4]
  3a89e2: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  3a89e6: 681b         	ldr	r3, [r3]
  3a89e8: 3394         	adds	r3, #0x94
  3a89ea: 681b         	ldr	r3, [r3]
  3a89ec: 9a01         	ldr	r2, [sp, #0x4]
  3a89ee: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  3a89f2: 4610         	mov	r0, r2
  3a89f4: 4798         	blx	r3
  3a89f6: 4603         	mov	r3, r0
  3a89f8: 2b00         	cmp	r3, #0x0
  3a89fa: d008         	beq	0x3a8a0e <PlayerLobbyOnlineHosted::updateCountDown(float)+0x32a> @ imm = #0x10
  3a89fc: 9b01         	ldr	r3, [sp, #0x4]
  3a89fe: 681b         	ldr	r3, [r3]
  3a8a00: f503 73f4    	add.w	r3, r3, #0x1e8
  3a8a04: 681b         	ldr	r3, [r3]
  3a8a06: 9a01         	ldr	r2, [sp, #0x4]
  3a8a08: 4610         	mov	r0, r2
  3a8a0a: 2100         	movs	r1, #0x0
  3a8a0c: 4798         	blx	r3
  3a8a0e: 9b01         	ldr	r3, [sp, #0x4]
  3a8a10: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a8a14: 681b         	ldr	r3, [r3]
  3a8a16: 3394         	adds	r3, #0x94
  3a8a18: 681b         	ldr	r3, [r3]
  3a8a1a: 9a01         	ldr	r2, [sp, #0x4]
  3a8a1c: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a8a20: 4610         	mov	r0, r2
  3a8a22: 4798         	blx	r3
  3a8a24: 4603         	mov	r3, r0
  3a8a26: 2b00         	cmp	r3, #0x0
  3a8a28: d00b         	beq	0x3a8a42 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x35e> @ imm = #0x16
  3a8a2a: 9801         	ldr	r0, [sp, #0x4]
  3a8a2c: 2100         	movs	r1, #0x0
  3a8a2e: f000 fd25    	bl	0x3a947c <PlayerLobbyOnlineHosted::onAfterMapVote(cocos2d::CCObject*)> @ imm = #0xa4a
  3a8a32: e006         	b	0x3a8a42 <PlayerLobbyOnlineHosted::updateCountDown(float)+0x35e> @ imm = #0xc
  3a8a34: 9b01         	ldr	r3, [sp, #0x4]
  3a8a36: f04f 0200    	mov.w	r2, #0x0
  3a8a3a: f2c4 1220    	movt	r2, #0x4120
  3a8a3e: f8c3 2148    	str.w	r2, [r3, #0x148]
  3a8a42: b005         	add	sp, #0x14
  3a8a44: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a8a45); words below are literal-pool data ---
  3a8a46: bf00         	nop
  3a8a48: 0000         	movs	r0, r0
  3a8a4a: 0000         	movs	r0, r0
  3a8a4c: a6ee         	adr	r6, #952 <PlayerLobbyOnlineHosted::alertResponse(int)+0x8e>
  3a8a4e: 0042         	lsls	r2, r0, #0x1
  3a8a50: a6cc         	adr	r6, #816 <PlayerLobbyOnlineHosted::alertResponse(int)+0x70>
  3a8a52: 0042         	lsls	r2, r0, #0x1
  3a8a54: a72c         	adr	r7, #176 <PlayerLobbyOnlineHosted::switchToPeer2Peer()>
  3a8a56: 0042         	lsls	r2, r0, #0x1
  3a8a58: a6d4         	adr	r6, #848 <PlayerLobbyOnlineHosted::alertResponse(int)+0x80>
  3a8a5a: 0042         	lsls	r2, r0, #0x1

// ==== PlayerLobbyOnlineHosted::onStartCountDown
//      file offset 0x3a8a5c (= ELF address; Ghidra 0x3b8a5c), 18 bytes, Thumb-2
  3a8a5c: b082         	sub	sp, #0x8
  3a8a5e: 9001         	str	r0, [sp, #0x4]
  3a8a60: 9100         	str	r1, [sp]
  3a8a62: 9b01         	ldr	r3, [sp, #0x4]
  3a8a64: 2201         	movs	r2, #0x1
  3a8a66: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a8a6a: b002         	add	sp, #0x8
  3a8a6c: 4770         	bx	lr

// ==== PlayerLobbyOnlineHosted::onCancelCountDown
//      file offset 0x3a8a70 (= ELF address; Ghidra 0x3b8a70), 18 bytes, Thumb-2
  3a8a70: b082         	sub	sp, #0x8
  3a8a72: 9001         	str	r0, [sp, #0x4]
  3a8a74: 9100         	str	r1, [sp]
  3a8a76: 9b01         	ldr	r3, [sp, #0x4]
  3a8a78: 2200         	movs	r2, #0x0
  3a8a7a: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a8a7e: b002         	add	sp, #0x8
  3a8a80: 4770         	bx	lr

// ==== PlayerLobbyOnlineHosted::switchToPeer2Peer
//      file offset 0x3a8a84 (= ELF address; Ghidra 0x3b8a84), 44 bytes, Thumb-2
  3a8a84: b500         	push	{lr}
  3a8a86: b083         	sub	sp, #0xc
  3a8a88: 9001         	str	r0, [sp, #0x4]
  3a8a8a: 9b01         	ldr	r3, [sp, #0x4]
  3a8a8c: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  3a8a90: 2b00         	cmp	r3, #0x0
  3a8a92: d00a         	beq	0x3a8aaa <PlayerLobbyOnlineHosted::switchToPeer2Peer()+0x26> @ imm = #0x14
  3a8a94: 9b01         	ldr	r3, [sp, #0x4]
  3a8a96: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  3a8a9a: 681b         	ldr	r3, [r3]
  3a8a9c: 3308         	adds	r3, #0x8
  3a8a9e: 681b         	ldr	r3, [r3]
  3a8aa0: 9a01         	ldr	r2, [sp, #0x4]
  3a8aa2: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  3a8aa6: 4610         	mov	r0, r2
  3a8aa8: 4798         	blx	r3
  3a8aaa: b003         	add	sp, #0xc
  3a8aac: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::alertResponse
//      file offset 0x3a8ab0 (= ELF address; Ghidra 0x3b8ab0), 188 bytes, Thumb-2
  3a8ab0: b510         	push	{r4, lr}
  3a8ab2: b082         	sub	sp, #0x8
  3a8ab4: 9001         	str	r0, [sp, #0x4]
  3a8ab6: 9100         	str	r1, [sp]
  3a8ab8: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x3a8b60 <PlayerLobbyOnlineHosted::alertResponse(int)+0xb0>
  3a8aba: 447c         	add	r4, pc
  3a8abc: 9b01         	ldr	r3, [sp, #0x4]
  3a8abe: 4618         	mov	r0, r3
  3a8ac0: 9900         	ldr	r1, [sp]
  3a8ac2: f7f4 fa57    	bl	0x39cf74 <PlayerLobby::alertResponse(int)> @ imm = #-0xbb52
  3a8ac6: 9b01         	ldr	r3, [sp, #0x4]
  3a8ac8: f893 3189    	ldrb.w	r3, [r3, #0x189]
  3a8acc: 2b00         	cmp	r3, #0x0
  3a8ace: d016         	beq	0x3a8afe <PlayerLobbyOnlineHosted::alertResponse(int)+0x4e> @ imm = #0x2c
  3a8ad0: 9b01         	ldr	r3, [sp, #0x4]
  3a8ad2: 2200         	movs	r2, #0x0
  3a8ad4: f883 2189    	strb.w	r2, [r3, #0x189]
  3a8ad8: 9b00         	ldr	r3, [sp]
  3a8ada: 2b00         	cmp	r3, #0x0
  3a8adc: d10b         	bne	0x3a8af6 <PlayerLobbyOnlineHosted::alertResponse(int)+0x46> @ imm = #0x16
  3a8ade: 9b01         	ldr	r3, [sp, #0x4]
  3a8ae0: 2201         	movs	r2, #0x1
  3a8ae2: f883 218a    	strb.w	r2, [r3, #0x18a]
  3a8ae6: 9b01         	ldr	r3, [sp, #0x4]
  3a8ae8: f04f 0200    	mov.w	r2, #0x0
  3a8aec: f2c4 12c8    	movt	r2, #0x41c8
  3a8af0: f8c3 2180    	str.w	r2, [r3, #0x180]
  3a8af4: e031         	b	0x3a8b5a <PlayerLobbyOnlineHosted::alertResponse(int)+0xaa> @ imm = #0x62
  3a8af6: 9801         	ldr	r0, [sp, #0x4]
  3a8af8: f7ff ffc4    	bl	0x3a8a84 <PlayerLobbyOnlineHosted::switchToPeer2Peer()> @ imm = #-0x78
  3a8afc: e02d         	b	0x3a8b5a <PlayerLobbyOnlineHosted::alertResponse(int)+0xaa> @ imm = #0x5a
  3a8afe: 9b01         	ldr	r3, [sp, #0x4]
  3a8b00: f893 3188    	ldrb.w	r3, [r3, #0x188]
  3a8b04: 2b00         	cmp	r3, #0x0
  3a8b06: d003         	beq	0x3a8b10 <PlayerLobbyOnlineHosted::alertResponse(int)+0x60> @ imm = #0x6
  3a8b08: 9801         	ldr	r0, [sp, #0x4]
  3a8b0a: f7ff ffbb    	bl	0x3a8a84 <PlayerLobbyOnlineHosted::switchToPeer2Peer()> @ imm = #-0x8a
  3a8b0e: e024         	b	0x3a8b5a <PlayerLobbyOnlineHosted::alertResponse(int)+0xaa> @ imm = #0x48
  3a8b10: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a8b64 <PlayerLobbyOnlineHosted::alertResponse(int)+0xb4>
  3a8b12: 58e3         	ldr	r3, [r4, r3]
  3a8b14: 781b         	ldrb	r3, [r3]
  3a8b16: 2b00         	cmp	r3, #0x0
  3a8b18: d00a         	beq	0x3a8b30 <PlayerLobbyOnlineHosted::alertResponse(int)+0x80> @ imm = #0x14
  3a8b1a: 9b01         	ldr	r3, [sp, #0x4]
  3a8b1c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a8b20: 4618         	mov	r0, r3
  3a8b22: f1eb f8a3    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1eb146
  3a8b26: 4603         	mov	r3, r0
  3a8b28: 2b01         	cmp	r3, #0x1
  3a8b2a: d101         	bne	0x3a8b30 <PlayerLobbyOnlineHosted::alertResponse(int)+0x80> @ imm = #0x2
  3a8b2c: 2301         	movs	r3, #0x1
  3a8b2e: e000         	b	0x3a8b32 <PlayerLobbyOnlineHosted::alertResponse(int)+0x82> @ imm = #0x0
  3a8b30: 2300         	movs	r3, #0x0
  3a8b32: 2b00         	cmp	r3, #0x0
  3a8b34: d011         	beq	0x3a8b5a <PlayerLobbyOnlineHosted::alertResponse(int)+0xaa> @ imm = #0x22
  3a8b36: 9b00         	ldr	r3, [sp]
  3a8b38: 2b01         	cmp	r3, #0x1
  3a8b3a: d10e         	bne	0x3a8b5a <PlayerLobbyOnlineHosted::alertResponse(int)+0xaa> @ imm = #0x1c
  3a8b3c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3a8b68 <PlayerLobbyOnlineHosted::alertResponse(int)+0xb8>
  3a8b3e: 58e3         	ldr	r3, [r4, r3]
  3a8b40: 681b         	ldr	r3, [r3]
  3a8b42: 4618         	mov	r0, r3
  3a8b44: 210d         	movs	r1, #0xd
  3a8b46: f04f f93b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4f276
  3a8b4a: 9b01         	ldr	r3, [sp, #0x4]
  3a8b4c: 681b         	ldr	r3, [r3]
  3a8b4e: f503 73de    	add.w	r3, r3, #0x1bc
  3a8b52: 681b         	ldr	r3, [r3]
  3a8b54: 9a01         	ldr	r2, [sp, #0x4]
  3a8b56: 4610         	mov	r0, r2
  3a8b58: 4798         	blx	r3
  3a8b5a: b002         	add	sp, #0x8
  3a8b5c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a8b5d); words below are literal-pool data ---
  3a8b5e: bf00         	nop
  3a8b60: 9f4e         	ldr	r7, [sp, #0x138]
  3a8b62: 0058         	lsls	r0, r3, #0x1
  3a8b64: da54         	bge	0x3a8c10 <PlayerLobbyOnlineHosted::updateMenuVisibility()+0x3c> @ imm = #0xa8
  3a8b66: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3a8b6a: ffff b500    	<unknown>

// ==== PlayerLobbyOnlineHosted::updateReadyLabel
//      file offset 0x3a8b6c (= ELF address; Ghidra 0x3b8b6c), 104 bytes, Thumb-2
  3a8b6c: b500         	push	{lr}
  3a8b6e: b083         	sub	sp, #0xc
  3a8b70: 9001         	str	r0, [sp, #0x4]
  3a8b72: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3a8bc4 <PlayerLobbyOnlineHosted::updateReadyLabel()+0x58>
  3a8b74: 447a         	add	r2, pc
  3a8b76: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a8bc8 <PlayerLobbyOnlineHosted::updateReadyLabel()+0x5c>
  3a8b78: 58d3         	ldr	r3, [r2, r3]
  3a8b7a: 781b         	ldrb	r3, [r3]
  3a8b7c: 2b00         	cmp	r3, #0x0
  3a8b7e: d00f         	beq	0x3a8ba0 <PlayerLobbyOnlineHosted::updateReadyLabel()+0x34> @ imm = #0x1e
  3a8b80: 9b01         	ldr	r3, [sp, #0x4]
  3a8b82: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a8b86: 681b         	ldr	r3, [r3]
  3a8b88: f503 73fc    	add.w	r3, r3, #0x1f8
  3a8b8c: 681b         	ldr	r3, [r3]
  3a8b8e: 9a01         	ldr	r2, [sp, #0x4]
  3a8b90: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a8b94: 4610         	mov	r0, r2
  3a8b96: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a8bcc <PlayerLobbyOnlineHosted::updateReadyLabel()+0x60>
  3a8b98: 447a         	add	r2, pc
  3a8b9a: 4611         	mov	r1, r2
  3a8b9c: 4798         	blx	r3
  3a8b9e: e00e         	b	0x3a8bbe <PlayerLobbyOnlineHosted::updateReadyLabel()+0x52> @ imm = #0x1c
  3a8ba0: 9b01         	ldr	r3, [sp, #0x4]
  3a8ba2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a8ba6: 681b         	ldr	r3, [r3]
  3a8ba8: f503 73fc    	add.w	r3, r3, #0x1f8
  3a8bac: 681b         	ldr	r3, [r3]
  3a8bae: 9a01         	ldr	r2, [sp, #0x4]
  3a8bb0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a8bb4: 4610         	mov	r0, r2
  3a8bb6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a8bd0 <PlayerLobbyOnlineHosted::updateReadyLabel()+0x64>
  3a8bb8: 447a         	add	r2, pc
  3a8bba: 4611         	mov	r1, r2
  3a8bbc: 4798         	blx	r3
  3a8bbe: b003         	add	sp, #0xc
  3a8bc0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a8bc3); words below are literal-pool data ---
  3a8bc4: 9e94         	ldr	r6, [sp, #0x250]
  3a8bc6: 0058         	lsls	r0, r3, #0x1
  3a8bc8: da54         	bge	0x3a8c74 <PlayerLobbyOnlineHosted::updateButtonVisibility()+0x34> @ imm = #0xa8
  3a8bca: ffff a460    	<unknown>
  3a8bce: 0042         	lsls	r2, r0, #0x1
  3a8bd0: a320         	adr	r3, #128 <PlayerLobbyOnlineHosted::updateMenuVisibility()+0x20>
  3a8bd2: 0042         	lsls	r2, r0, #0x1

// ==== PlayerLobbyOnlineHosted::updateMenuVisibility
//      file offset 0x3a8bd4 (= ELF address; Ghidra 0x3b8bd4), 108 bytes, Thumb-2
  3a8bd4: b500         	push	{lr}
  3a8bd6: b083         	sub	sp, #0xc
  3a8bd8: 9001         	str	r0, [sp, #0x4]
  3a8bda: 9b01         	ldr	r3, [sp, #0x4]
  3a8bdc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a8be0: 681b         	ldr	r3, [r3]
  3a8be2: 3390         	adds	r3, #0x90
  3a8be4: 681b         	ldr	r3, [r3]
  3a8be6: 9a01         	ldr	r2, [sp, #0x4]
  3a8be8: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a8bec: 4610         	mov	r0, r2
  3a8bee: 2100         	movs	r1, #0x0
  3a8bf0: 4798         	blx	r3
  3a8bf2: 9b01         	ldr	r3, [sp, #0x4]
  3a8bf4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a8bf8: 681b         	ldr	r3, [r3]
  3a8bfa: 3390         	adds	r3, #0x90
  3a8bfc: 681b         	ldr	r3, [r3]
  3a8bfe: 9a01         	ldr	r2, [sp, #0x4]
  3a8c00: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a8c04: 4610         	mov	r0, r2
  3a8c06: 2100         	movs	r1, #0x0
  3a8c08: 4798         	blx	r3
  3a8c0a: 9b01         	ldr	r3, [sp, #0x4]
  3a8c0c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a8c10: 681b         	ldr	r3, [r3]
  3a8c12: 3390         	adds	r3, #0x90
  3a8c14: 681b         	ldr	r3, [r3]
  3a8c16: 9a01         	ldr	r2, [sp, #0x4]
  3a8c18: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a8c1c: 4610         	mov	r0, r2
  3a8c1e: 2100         	movs	r1, #0x0
  3a8c20: 4798         	blx	r3
  3a8c22: 9b01         	ldr	r3, [sp, #0x4]
  3a8c24: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a8c28: 681b         	ldr	r3, [r3]
  3a8c2a: 3390         	adds	r3, #0x90
  3a8c2c: 681b         	ldr	r3, [r3]
  3a8c2e: 9a01         	ldr	r2, [sp, #0x4]
  3a8c30: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a8c34: 4610         	mov	r0, r2
  3a8c36: 2100         	movs	r1, #0x0
  3a8c38: 4798         	blx	r3
  3a8c3a: b003         	add	sp, #0xc
  3a8c3c: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::updateButtonVisibility
//      file offset 0x3a8c40 (= ELF address; Ghidra 0x3b8c40), 456 bytes, Thumb-2
  3a8c40: b530         	push	{r4, r5, lr}
  3a8c42: b083         	sub	sp, #0xc
  3a8c44: 9001         	str	r0, [sp, #0x4]
  3a8c46: 9b01         	ldr	r3, [sp, #0x4]
  3a8c48: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a8c4c: 4618         	mov	r0, r3
  3a8c4e: f1eb f80d    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1eb01a
  3a8c52: 4603         	mov	r3, r0
  3a8c54: 2b01         	cmp	r3, #0x1
  3a8c56: bf94         	ite	ls
  3a8c58: 2300         	movls	r3, #0x0
  3a8c5a: 2301         	movhi	r3, #0x1
  3a8c5c: b2db         	uxtb	r3, r3
  3a8c5e: 2b00         	cmp	r3, #0x0
  3a8c60: d042         	beq	0x3a8ce8 <PlayerLobbyOnlineHosted::updateButtonVisibility()+0xa8> @ imm = #0x84
  3a8c62: 9b01         	ldr	r3, [sp, #0x4]
  3a8c64: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a8c68: 681b         	ldr	r3, [r3]
  3a8c6a: 3390         	adds	r3, #0x90
  3a8c6c: 681b         	ldr	r3, [r3]
  3a8c6e: 9a01         	ldr	r2, [sp, #0x4]
  3a8c70: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a8c74: 4610         	mov	r0, r2
  3a8c76: 2101         	movs	r1, #0x1
  3a8c78: 4798         	blx	r3
  3a8c7a: 9b01         	ldr	r3, [sp, #0x4]
  3a8c7c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a8c80: 681b         	ldr	r3, [r3]
  3a8c82: 3390         	adds	r3, #0x90
  3a8c84: 681b         	ldr	r3, [r3]
  3a8c86: 9a01         	ldr	r2, [sp, #0x4]
  3a8c88: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a8c8c: 4610         	mov	r0, r2
  3a8c8e: 2101         	movs	r1, #0x1
  3a8c90: 4798         	blx	r3
  3a8c92: 9b01         	ldr	r3, [sp, #0x4]
  3a8c94: 681b         	ldr	r3, [r3]
  3a8c96: f503 73ee    	add.w	r3, r3, #0x1dc
  3a8c9a: 681b         	ldr	r3, [r3]
  3a8c9c: 9a01         	ldr	r2, [sp, #0x4]
  3a8c9e: 4610         	mov	r0, r2
  3a8ca0: 4798         	blx	r3
  3a8ca2: 4603         	mov	r3, r0
  3a8ca4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a8ca8: 2b03         	cmp	r3, #0x3
  3a8caa: bf0c         	ite	eq
  3a8cac: 2300         	moveq	r3, #0x0
  3a8cae: 2301         	movne	r3, #0x1
  3a8cb0: b2db         	uxtb	r3, r3
  3a8cb2: 2b00         	cmp	r3, #0x0
  3a8cb4: d060         	beq	0x3a8d78 <PlayerLobbyOnlineHosted::updateButtonVisibility()+0x138> @ imm = #0xc0
  3a8cb6: 9b01         	ldr	r3, [sp, #0x4]
  3a8cb8: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a8cbc: 681b         	ldr	r3, [r3]
  3a8cbe: 3390         	adds	r3, #0x90
  3a8cc0: 681b         	ldr	r3, [r3]
  3a8cc2: 9a01         	ldr	r2, [sp, #0x4]
  3a8cc4: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a8cc8: 4610         	mov	r0, r2
  3a8cca: 2101         	movs	r1, #0x1
  3a8ccc: 4798         	blx	r3
  3a8cce: 9b01         	ldr	r3, [sp, #0x4]
  3a8cd0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a8cd4: 681b         	ldr	r3, [r3]
  3a8cd6: 3390         	adds	r3, #0x90
  3a8cd8: 681b         	ldr	r3, [r3]
  3a8cda: 9a01         	ldr	r2, [sp, #0x4]
  3a8cdc: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a8ce0: 4610         	mov	r0, r2
  3a8ce2: 2101         	movs	r1, #0x1
  3a8ce4: 4798         	blx	r3
  3a8ce6: e047         	b	0x3a8d78 <PlayerLobbyOnlineHosted::updateButtonVisibility()+0x138> @ imm = #0x8e
  3a8ce8: 9b01         	ldr	r3, [sp, #0x4]
  3a8cea: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a8cee: 681b         	ldr	r3, [r3]
  3a8cf0: 3390         	adds	r3, #0x90
  3a8cf2: 681b         	ldr	r3, [r3]
  3a8cf4: 9a01         	ldr	r2, [sp, #0x4]
  3a8cf6: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a8cfa: 4610         	mov	r0, r2
  3a8cfc: 2100         	movs	r1, #0x0
  3a8cfe: 4798         	blx	r3
  3a8d00: 9b01         	ldr	r3, [sp, #0x4]
  3a8d02: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a8d06: 681b         	ldr	r3, [r3]
  3a8d08: 3390         	adds	r3, #0x90
  3a8d0a: 681b         	ldr	r3, [r3]
  3a8d0c: 9a01         	ldr	r2, [sp, #0x4]
  3a8d0e: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a8d12: 4610         	mov	r0, r2
  3a8d14: 2100         	movs	r1, #0x0
  3a8d16: 4798         	blx	r3
  3a8d18: 9b01         	ldr	r3, [sp, #0x4]
  3a8d1a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a8d1e: 681b         	ldr	r3, [r3]
  3a8d20: 3390         	adds	r3, #0x90
  3a8d22: 681b         	ldr	r3, [r3]
  3a8d24: 9a01         	ldr	r2, [sp, #0x4]
  3a8d26: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a8d2a: 4610         	mov	r0, r2
  3a8d2c: 2100         	movs	r1, #0x0
  3a8d2e: 4798         	blx	r3
  3a8d30: 9b01         	ldr	r3, [sp, #0x4]
  3a8d32: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a8d36: 681b         	ldr	r3, [r3]
  3a8d38: 3390         	adds	r3, #0x90
  3a8d3a: 681b         	ldr	r3, [r3]
  3a8d3c: 9a01         	ldr	r2, [sp, #0x4]
  3a8d3e: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a8d42: 4610         	mov	r0, r2
  3a8d44: 2100         	movs	r1, #0x0
  3a8d46: 4798         	blx	r3
  3a8d48: 9b01         	ldr	r3, [sp, #0x4]
  3a8d4a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a8d4e: 681b         	ldr	r3, [r3]
  3a8d50: 3390         	adds	r3, #0x90
  3a8d52: 681b         	ldr	r3, [r3]
  3a8d54: 9a01         	ldr	r2, [sp, #0x4]
  3a8d56: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a8d5a: 4610         	mov	r0, r2
  3a8d5c: 2101         	movs	r1, #0x1
  3a8d5e: 4798         	blx	r3
  3a8d60: 9b01         	ldr	r3, [sp, #0x4]
  3a8d62: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a8d66: 681b         	ldr	r3, [r3]
  3a8d68: 3390         	adds	r3, #0x90
  3a8d6a: 681b         	ldr	r3, [r3]
  3a8d6c: 9a01         	ldr	r2, [sp, #0x4]
  3a8d6e: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a8d72: 4610         	mov	r0, r2
  3a8d74: 2101         	movs	r1, #0x1
  3a8d76: 4798         	blx	r3
  3a8d78: 9b01         	ldr	r3, [sp, #0x4]
  3a8d7a: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a8d7e: 681b         	ldr	r3, [r3]
  3a8d80: 3390         	adds	r3, #0x90
  3a8d82: 681c         	ldr	r4, [r3]
  3a8d84: 9b01         	ldr	r3, [sp, #0x4]
  3a8d86: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a8d8a: 461d         	mov	r5, r3
  3a8d8c: 9b01         	ldr	r3, [sp, #0x4]
  3a8d8e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a8d92: 681b         	ldr	r3, [r3]
  3a8d94: 3394         	adds	r3, #0x94
  3a8d96: 681b         	ldr	r3, [r3]
  3a8d98: 9a01         	ldr	r2, [sp, #0x4]
  3a8d9a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a8d9e: 4610         	mov	r0, r2
  3a8da0: 4798         	blx	r3
  3a8da2: 4603         	mov	r3, r0
  3a8da4: 4628         	mov	r0, r5
  3a8da6: 4619         	mov	r1, r3
  3a8da8: 47a0         	blx	r4
  3a8daa: 9b01         	ldr	r3, [sp, #0x4]
  3a8dac: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a8db0: 681b         	ldr	r3, [r3]
  3a8db2: 3390         	adds	r3, #0x90
  3a8db4: 681c         	ldr	r4, [r3]
  3a8db6: 9b01         	ldr	r3, [sp, #0x4]
  3a8db8: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  3a8dbc: 461d         	mov	r5, r3
  3a8dbe: 9b01         	ldr	r3, [sp, #0x4]
  3a8dc0: f8d3 3194    	ldr.w	r3, [r3, #0x194]
  3a8dc4: 681b         	ldr	r3, [r3]
  3a8dc6: 3394         	adds	r3, #0x94
  3a8dc8: 681b         	ldr	r3, [r3]
  3a8dca: 9a01         	ldr	r2, [sp, #0x4]
  3a8dcc: f8d2 2194    	ldr.w	r2, [r2, #0x194]
  3a8dd0: 4610         	mov	r0, r2
  3a8dd2: 4798         	blx	r3
  3a8dd4: 4603         	mov	r3, r0
  3a8dd6: 4628         	mov	r0, r5
  3a8dd8: 4619         	mov	r1, r3
  3a8dda: 47a0         	blx	r4
  3a8ddc: 9b01         	ldr	r3, [sp, #0x4]
  3a8dde: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a8de2: 681b         	ldr	r3, [r3]
  3a8de4: 3394         	adds	r3, #0x94
  3a8de6: 681b         	ldr	r3, [r3]
  3a8de8: 9a01         	ldr	r2, [sp, #0x4]
  3a8dea: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a8dee: 4610         	mov	r0, r2
  3a8df0: 4798         	blx	r3
  3a8df2: 4603         	mov	r3, r0
  3a8df4: 2b00         	cmp	r3, #0x0
  3a8df6: d005         	beq	0x3a8e04 <PlayerLobbyOnlineHosted::updateButtonVisibility()+0x1c4> @ imm = #0xa
  3a8df8: 9b01         	ldr	r3, [sp, #0x4]
  3a8dfa: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a8dfe: 4618         	mov	r0, r3
  3a8e00: f7fd fac6    	bl	0x3a6390 <MapVoteLayer::updateMapVote()> @ imm = #-0x2a74
  3a8e04: b003         	add	sp, #0xc
  3a8e06: bd30         	pop	{r4, r5, pc}

// ==== PlayerLobbyOnlineHosted::onStartGame
//      file offset 0x3a8e08 (= ELF address; Ghidra 0x3b8e08), 30 bytes, Thumb-2
  3a8e08: b500         	push	{lr}
  3a8e0a: b083         	sub	sp, #0xc
  3a8e0c: 9001         	str	r0, [sp, #0x4]
  3a8e0e: 9100         	str	r1, [sp]
  3a8e10: 9b01         	ldr	r3, [sp, #0x4]
  3a8e12: 681b         	ldr	r3, [r3]
  3a8e14: f503 73dc    	add.w	r3, r3, #0x1b8
  3a8e18: 681b         	ldr	r3, [r3]
  3a8e1a: 9a01         	ldr	r2, [sp, #0x4]
  3a8e1c: 4610         	mov	r0, r2
  3a8e1e: 4798         	blx	r3
  3a8e20: b003         	add	sp, #0xc
  3a8e22: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::onConnectionFalied
//      file offset 0x3a8e28 (= ELF address; Ghidra 0x3b8e28), 380 bytes, Thumb-2
  3a8e28: b530         	push	{r4, r5, lr}
  3a8e2a: b08d         	sub	sp, #0x34
  3a8e2c: 9003         	str	r0, [sp, #0xc]
  3a8e2e: 9102         	str	r1, [sp, #0x8]
  3a8e30: 4c56         	ldr	r4, [pc, #0x158]        @ 0x3a8f8c <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x164>
  3a8e32: 447c         	add	r4, pc
  3a8e34: 9b03         	ldr	r3, [sp, #0xc]
  3a8e36: f893 3189    	ldrb.w	r3, [r3, #0x189]
  3a8e3a: f083 0301    	eor	r3, r3, #0x1
  3a8e3e: b2db         	uxtb	r3, r3
  3a8e40: 2b00         	cmp	r3, #0x0
  3a8e42: f000 80a0    	beq.w	0x3a8f86 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x15e> @ imm = #0x140
  3a8e46: ab06         	add	r3, sp, #0x18
  3a8e48: 4618         	mov	r0, r3
  3a8e4a: f3e1 fad3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e15a6
  3a8e4e: aa0a         	add	r2, sp, #0x28
  3a8e50: ab06         	add	r3, sp, #0x18
  3a8e52: 4610         	mov	r0, r2
  3a8e54: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x3a8f90 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x168>
  3a8e56: 447a         	add	r2, pc
  3a8e58: 4611         	mov	r1, r2
  3a8e5a: 461a         	mov	r2, r3
  3a8e5c: f00d f600    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40dc00
  3a8e60: ab07         	add	r3, sp, #0x1c
  3a8e62: 4618         	mov	r0, r3
  3a8e64: f3e1 fac6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e158c
  3a8e68: aa0b         	add	r2, sp, #0x2c
  3a8e6a: ab07         	add	r3, sp, #0x1c
  3a8e6c: 4610         	mov	r0, r2
  3a8e6e: 4a49         	ldr	r2, [pc, #0x124]        @ 0x3a8f94 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x16c>
  3a8e70: 447a         	add	r2, pc
  3a8e72: 4611         	mov	r1, r2
  3a8e74: 461a         	mov	r2, r3
  3a8e76: f00d f5f3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40dbe6
  3a8e7a: ab04         	add	r3, sp, #0x10
  3a8e7c: 4618         	mov	r0, r3
  3a8e7e: f3e1 fab9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1572
  3a8e82: aa08         	add	r2, sp, #0x20
  3a8e84: ab04         	add	r3, sp, #0x10
  3a8e86: 4610         	mov	r0, r2
  3a8e88: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x3a8f98 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x170>
  3a8e8a: 447a         	add	r2, pc
  3a8e8c: 4611         	mov	r1, r2
  3a8e8e: 461a         	mov	r2, r3
  3a8e90: f00d f5e6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40dbcc
  3a8e94: ab08         	add	r3, sp, #0x20
  3a8e96: 4618         	mov	r0, r3
  3a8e98: f1f0 fdd0    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f0ba0
  3a8e9c: 4605         	mov	r5, r0
  3a8e9e: ab05         	add	r3, sp, #0x14
  3a8ea0: 4618         	mov	r0, r3
  3a8ea2: f3e1 faa7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e154e
  3a8ea6: aa09         	add	r2, sp, #0x24
  3a8ea8: ab05         	add	r3, sp, #0x14
  3a8eaa: 4610         	mov	r0, r2
  3a8eac: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3a8f9c <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x174>
  3a8eae: 447a         	add	r2, pc
  3a8eb0: 4611         	mov	r1, r2
  3a8eb2: 461a         	mov	r2, r3
  3a8eb4: f00d f5d4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40dba8
  3a8eb8: ab09         	add	r3, sp, #0x24
  3a8eba: 4618         	mov	r0, r3
  3a8ebc: f1f0 fdbe    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f0b7c
  3a8ec0: 4603         	mov	r3, r0
  3a8ec2: 4628         	mov	r0, r5
  3a8ec4: 4619         	mov	r1, r3
  3a8ec6: 2200         	movs	r2, #0x0
  3a8ec8: f1f0 ffa2    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1f0f44
  3a8ecc: 4603         	mov	r3, r0
  3a8ece: 9803         	ldr	r0, [sp, #0xc]
  3a8ed0: a90a         	add	r1, sp, #0x28
  3a8ed2: aa0b         	add	r2, sp, #0x2c
  3a8ed4: 2500         	movs	r5, #0x0
  3a8ed6: 9500         	str	r5, [sp]
  3a8ed8: 9001         	str	r0, [sp, #0x4]
  3a8eda: 4831         	ldr	r0, [pc, #0xc4]         @ 0x3a8fa0 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x178>
  3a8edc: 5820         	ldr	r0, [r4, r0]
  3a8ede: f736 fc89    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xc96ee
  3a8ee2: ab09         	add	r3, sp, #0x24
  3a8ee4: 4618         	mov	r0, r3
  3a8ee6: f00c f515    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40ca2a
  3a8eea: ab05         	add	r3, sp, #0x14
  3a8eec: 4618         	mov	r0, r3
  3a8eee: f3e1 fa85    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e150a
  3a8ef2: ab08         	add	r3, sp, #0x20
  3a8ef4: 4618         	mov	r0, r3
  3a8ef6: f00c f50d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40ca1a
  3a8efa: ab04         	add	r3, sp, #0x10
  3a8efc: 4618         	mov	r0, r3
  3a8efe: f3e1 fa7d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e14fa
  3a8f02: ab0b         	add	r3, sp, #0x2c
  3a8f04: 4618         	mov	r0, r3
  3a8f06: f00c f505    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40ca0a
  3a8f0a: ab07         	add	r3, sp, #0x1c
  3a8f0c: 4618         	mov	r0, r3
  3a8f0e: f3e1 fa75    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e14ea
  3a8f12: ab0a         	add	r3, sp, #0x28
  3a8f14: 4618         	mov	r0, r3
  3a8f16: f00c f4fd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c9fa
  3a8f1a: ab06         	add	r3, sp, #0x18
  3a8f1c: 4618         	mov	r0, r3
  3a8f1e: f3e1 fa6d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e14da
  3a8f22: f7ce fe0d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x313e6
  3a8f26: 4603         	mov	r3, r0
  3a8f28: 4618         	mov	r0, r3
  3a8f2a: f7d1 fc2b    	bl	0x37a784 <NetworkManager::updateServerConfig()> @ imm = #-0x2e7aa
  3a8f2e: 9b03         	ldr	r3, [sp, #0xc]
  3a8f30: 2201         	movs	r2, #0x1
  3a8f32: f883 2189    	strb.w	r2, [r3, #0x189]
  3a8f36: e026         	b	0x3a8f86 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x15e> @ imm = #0x4c
  3a8f38: ab09         	add	r3, sp, #0x24
  3a8f3a: 4618         	mov	r0, r3
  3a8f3c: f00c f4ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c9d4
  3a8f40: e7ff         	b	0x3a8f42 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x11a> @ imm = #-0x2
  3a8f42: ab05         	add	r3, sp, #0x14
  3a8f44: 4618         	mov	r0, r3
  3a8f46: f3e1 fa59    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e14b2
  3a8f4a: e7ff         	b	0x3a8f4c <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x124> @ imm = #-0x2
  3a8f4c: ab08         	add	r3, sp, #0x20
  3a8f4e: 4618         	mov	r0, r3
  3a8f50: f00c f4e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c9c0
  3a8f54: e7ff         	b	0x3a8f56 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x12e> @ imm = #-0x2
  3a8f56: ab04         	add	r3, sp, #0x10
  3a8f58: 4618         	mov	r0, r3
  3a8f5a: f3e1 fa4f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e149e
  3a8f5e: ab0b         	add	r3, sp, #0x2c
  3a8f60: 4618         	mov	r0, r3
  3a8f62: f00c f4d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c9ae
  3a8f66: e7ff         	b	0x3a8f68 <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x140> @ imm = #-0x2
  3a8f68: ab07         	add	r3, sp, #0x1c
  3a8f6a: 4618         	mov	r0, r3
  3a8f6c: f3e1 fa46    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e148c
  3a8f70: ab0a         	add	r3, sp, #0x28
  3a8f72: 4618         	mov	r0, r3
  3a8f74: f00c f4ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c99c
  3a8f78: e7ff         	b	0x3a8f7a <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0x152> @ imm = #-0x2
  3a8f7a: ab06         	add	r3, sp, #0x18
  3a8f7c: 4618         	mov	r0, r3
  3a8f7e: f3e1 fa3d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e147a
  3a8f82: f3df f893    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3df126
  3a8f86: b00d         	add	sp, #0x34
  3a8f88: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a8f89); words below are literal-pool data ---
  3a8f8a: bf00         	nop
  3a8f8c: 9bd6         	ldr	r3, [sp, #0x358]
  3a8f8e: 0058         	lsls	r0, r3, #0x1
  3a8f90: a1aa         	adr	r1, #680 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x9a>
  3a8f92: 0042         	lsls	r2, r0, #0x1
  3a8f94: a1ac         	adr	r1, #688 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0xa0>
  3a8f96: 0042         	lsls	r2, r0, #0x1
  3a8f98: a1f2         	adr	r1, #968 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0xea>
  3a8f9a: 0042         	lsls	r2, r0, #0x1
  3a8f9c: a1d6         	adr	r1, #856 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0xd2>
  3a8f9e: 0042         	lsls	r2, r0, #0x1
  3a8fa0: ddbc         	ble	0x3a8f1c <PlayerLobbyOnlineHosted::onConnectionFalied(cocos2d::CCObject*)+0xf4> @ imm = #-0x88
  3a8fa2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineHosted::onServerFull
//      file offset 0x3a8fa4 (= ELF address; Ghidra 0x3b8fa4), 380 bytes, Thumb-2
  3a8fa4: b530         	push	{r4, r5, lr}
  3a8fa6: b08d         	sub	sp, #0x34
  3a8fa8: 9003         	str	r0, [sp, #0xc]
  3a8faa: 9102         	str	r1, [sp, #0x8]
  3a8fac: 4c56         	ldr	r4, [pc, #0x158]        @ 0x3a9108 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x164>
  3a8fae: 447c         	add	r4, pc
  3a8fb0: 9b03         	ldr	r3, [sp, #0xc]
  3a8fb2: f893 3189    	ldrb.w	r3, [r3, #0x189]
  3a8fb6: f083 0301    	eor	r3, r3, #0x1
  3a8fba: b2db         	uxtb	r3, r3
  3a8fbc: 2b00         	cmp	r3, #0x0
  3a8fbe: f000 80a0    	beq.w	0x3a9102 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x15e> @ imm = #0x140
  3a8fc2: ab06         	add	r3, sp, #0x18
  3a8fc4: 4618         	mov	r0, r3
  3a8fc6: f3e1 fa15    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e142a
  3a8fca: aa0a         	add	r2, sp, #0x28
  3a8fcc: ab06         	add	r3, sp, #0x18
  3a8fce: 4610         	mov	r0, r2
  3a8fd0: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x3a910c <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x168>
  3a8fd2: 447a         	add	r2, pc
  3a8fd4: 4611         	mov	r1, r2
  3a8fd6: 461a         	mov	r2, r3
  3a8fd8: f00d f542    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40da84
  3a8fdc: ab07         	add	r3, sp, #0x1c
  3a8fde: 4618         	mov	r0, r3
  3a8fe0: f3e1 fa08    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1410
  3a8fe4: aa0b         	add	r2, sp, #0x2c
  3a8fe6: ab07         	add	r3, sp, #0x1c
  3a8fe8: 4610         	mov	r0, r2
  3a8fea: 4a49         	ldr	r2, [pc, #0x124]        @ 0x3a9110 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x16c>
  3a8fec: 447a         	add	r2, pc
  3a8fee: 4611         	mov	r1, r2
  3a8ff0: 461a         	mov	r2, r3
  3a8ff2: f00d f535    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40da6a
  3a8ff6: ab04         	add	r3, sp, #0x10
  3a8ff8: 4618         	mov	r0, r3
  3a8ffa: f3e1 f9fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e13f6
  3a8ffe: aa08         	add	r2, sp, #0x20
  3a9000: ab04         	add	r3, sp, #0x10
  3a9002: 4610         	mov	r0, r2
  3a9004: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x3a9114 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x170>
  3a9006: 447a         	add	r2, pc
  3a9008: 4611         	mov	r1, r2
  3a900a: 461a         	mov	r2, r3
  3a900c: f00d f528    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40da50
  3a9010: ab08         	add	r3, sp, #0x20
  3a9012: 4618         	mov	r0, r3
  3a9014: f1f0 fd12    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f0a24
  3a9018: 4605         	mov	r5, r0
  3a901a: ab05         	add	r3, sp, #0x14
  3a901c: 4618         	mov	r0, r3
  3a901e: f3e1 f9e9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e13d2
  3a9022: aa09         	add	r2, sp, #0x24
  3a9024: ab05         	add	r3, sp, #0x14
  3a9026: 4610         	mov	r0, r2
  3a9028: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3a9118 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x174>
  3a902a: 447a         	add	r2, pc
  3a902c: 4611         	mov	r1, r2
  3a902e: 461a         	mov	r2, r3
  3a9030: f00d f516    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40da2c
  3a9034: ab09         	add	r3, sp, #0x24
  3a9036: 4618         	mov	r0, r3
  3a9038: f1f0 fd00    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f0a00
  3a903c: 4603         	mov	r3, r0
  3a903e: 4628         	mov	r0, r5
  3a9040: 4619         	mov	r1, r3
  3a9042: 2200         	movs	r2, #0x0
  3a9044: f1f0 fee4    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1f0dc8
  3a9048: 4603         	mov	r3, r0
  3a904a: 9803         	ldr	r0, [sp, #0xc]
  3a904c: a90a         	add	r1, sp, #0x28
  3a904e: aa0b         	add	r2, sp, #0x2c
  3a9050: 2500         	movs	r5, #0x0
  3a9052: 9500         	str	r5, [sp]
  3a9054: 9001         	str	r0, [sp, #0x4]
  3a9056: 4831         	ldr	r0, [pc, #0xc4]         @ 0x3a911c <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x178>
  3a9058: 5820         	ldr	r0, [r4, r0]
  3a905a: f736 fbcb    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xc986a
  3a905e: ab09         	add	r3, sp, #0x24
  3a9060: 4618         	mov	r0, r3
  3a9062: f00c f457    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c8ae
  3a9066: ab05         	add	r3, sp, #0x14
  3a9068: 4618         	mov	r0, r3
  3a906a: f3e1 f9c7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e138e
  3a906e: ab08         	add	r3, sp, #0x20
  3a9070: 4618         	mov	r0, r3
  3a9072: f00c f44f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c89e
  3a9076: ab04         	add	r3, sp, #0x10
  3a9078: 4618         	mov	r0, r3
  3a907a: f3e1 f9bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e137e
  3a907e: ab0b         	add	r3, sp, #0x2c
  3a9080: 4618         	mov	r0, r3
  3a9082: f00c f447    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c88e
  3a9086: ab07         	add	r3, sp, #0x1c
  3a9088: 4618         	mov	r0, r3
  3a908a: f3e1 f9b7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e136e
  3a908e: ab0a         	add	r3, sp, #0x28
  3a9090: 4618         	mov	r0, r3
  3a9092: f00c f43f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c87e
  3a9096: ab06         	add	r3, sp, #0x18
  3a9098: 4618         	mov	r0, r3
  3a909a: f3e1 f9af    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e135e
  3a909e: f7ce fd4f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x31562
  3a90a2: 4603         	mov	r3, r0
  3a90a4: 4618         	mov	r0, r3
  3a90a6: f7d1 fb6d    	bl	0x37a784 <NetworkManager::updateServerConfig()> @ imm = #-0x2e926
  3a90aa: 9b03         	ldr	r3, [sp, #0xc]
  3a90ac: 2201         	movs	r2, #0x1
  3a90ae: f883 2189    	strb.w	r2, [r3, #0x189]
  3a90b2: e026         	b	0x3a9102 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x15e> @ imm = #0x4c
  3a90b4: ab09         	add	r3, sp, #0x24
  3a90b6: 4618         	mov	r0, r3
  3a90b8: f00c f42c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c858
  3a90bc: e7ff         	b	0x3a90be <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x11a> @ imm = #-0x2
  3a90be: ab05         	add	r3, sp, #0x14
  3a90c0: 4618         	mov	r0, r3
  3a90c2: f3e1 f99b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1336
  3a90c6: e7ff         	b	0x3a90c8 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x124> @ imm = #-0x2
  3a90c8: ab08         	add	r3, sp, #0x20
  3a90ca: 4618         	mov	r0, r3
  3a90cc: f00c f422    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c844
  3a90d0: e7ff         	b	0x3a90d2 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x12e> @ imm = #-0x2
  3a90d2: ab04         	add	r3, sp, #0x10
  3a90d4: 4618         	mov	r0, r3
  3a90d6: f3e1 f991    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1322
  3a90da: ab0b         	add	r3, sp, #0x2c
  3a90dc: 4618         	mov	r0, r3
  3a90de: f00c f419    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c832
  3a90e2: e7ff         	b	0x3a90e4 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x140> @ imm = #-0x2
  3a90e4: ab07         	add	r3, sp, #0x1c
  3a90e6: 4618         	mov	r0, r3
  3a90e8: f3e1 f988    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e1310
  3a90ec: ab0a         	add	r3, sp, #0x28
  3a90ee: 4618         	mov	r0, r3
  3a90f0: f00c f410    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c820
  3a90f4: e7ff         	b	0x3a90f6 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0x152> @ imm = #-0x2
  3a90f6: ab06         	add	r3, sp, #0x18
  3a90f8: 4618         	mov	r0, r3
  3a90fa: f3e1 f97f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e12fe
  3a90fe: f3de ffd5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3defaa
  3a9102: b00d         	add	sp, #0x34
  3a9104: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a9105); words below are literal-pool data ---
  3a9106: bf00         	nop
  3a9108: 9a5a         	ldr	r2, [sp, #0x168]
  3a910a: 0058         	lsls	r0, r3, #0x1
  3a910c: a0ba         	adr	r0, #744 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0xaa>
  3a910e: 0042         	lsls	r2, r0, #0x1
  3a9110: a0ac         	adr	r0, #688 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0xa0>
  3a9112: 0042         	lsls	r2, r0, #0x1
  3a9114: a076         	adr	r0, #472 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x6e>
  3a9116: 0042         	lsls	r2, r0, #0x1
  3a9118: a05a         	adr	r0, #360 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x56>
  3a911a: 0042         	lsls	r2, r0, #0x1
  3a911c: ddbc         	ble	0x3a9098 <PlayerLobbyOnlineHosted::onServerFull(cocos2d::CCObject*)+0xf4> @ imm = #-0x88
  3a911e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineHosted::onConnectionLost
//      file offset 0x3a9120 (= ELF address; Ghidra 0x3b9120), 288 bytes, Thumb-2
  3a9120: b530         	push	{r4, r5, lr}
  3a9122: b08b         	sub	sp, #0x2c
  3a9124: 9003         	str	r0, [sp, #0xc]
  3a9126: 9102         	str	r1, [sp, #0x8]
  3a9128: 4c40         	ldr	r4, [pc, #0x100]        @ 0x3a922c <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x10c>
  3a912a: 447c         	add	r4, pc
  3a912c: 9b03         	ldr	r3, [sp, #0xc]
  3a912e: f893 3188    	ldrb.w	r3, [r3, #0x188]
  3a9132: f083 0301    	eor	r3, r3, #0x1
  3a9136: b2db         	uxtb	r3, r3
  3a9138: 2b00         	cmp	r3, #0x0
  3a913a: d074         	beq	0x3a9226 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x106> @ imm = #0xe8
  3a913c: ab05         	add	r3, sp, #0x14
  3a913e: 4618         	mov	r0, r3
  3a9140: f3e1 f958    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e12b0
  3a9144: aa08         	add	r2, sp, #0x20
  3a9146: ab05         	add	r3, sp, #0x14
  3a9148: 4610         	mov	r0, r2
  3a914a: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x3a9230 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x110>
  3a914c: 447a         	add	r2, pc
  3a914e: 4611         	mov	r1, r2
  3a9150: 461a         	mov	r2, r3
  3a9152: f00d f485    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40d90a
  3a9156: ab06         	add	r3, sp, #0x18
  3a9158: 4618         	mov	r0, r3
  3a915a: f3e1 f94b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e1296
  3a915e: aa09         	add	r2, sp, #0x24
  3a9160: ab06         	add	r3, sp, #0x18
  3a9162: 4610         	mov	r0, r2
  3a9164: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x3a9234 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x114>
  3a9166: 447a         	add	r2, pc
  3a9168: 4611         	mov	r1, r2
  3a916a: 461a         	mov	r2, r3
  3a916c: f00d f478    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40d8f0
  3a9170: ab04         	add	r3, sp, #0x10
  3a9172: 4618         	mov	r0, r3
  3a9174: f3e1 f93e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e127c
  3a9178: aa07         	add	r2, sp, #0x1c
  3a917a: ab04         	add	r3, sp, #0x10
  3a917c: 4610         	mov	r0, r2
  3a917e: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3a9238 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x118>
  3a9180: 447a         	add	r2, pc
  3a9182: 4611         	mov	r1, r2
  3a9184: 461a         	mov	r2, r3
  3a9186: f00d f46b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40d8d6
  3a918a: ab07         	add	r3, sp, #0x1c
  3a918c: 4618         	mov	r0, r3
  3a918e: f1f0 fc55    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f08aa
  3a9192: 4603         	mov	r3, r0
  3a9194: 4618         	mov	r0, r3
  3a9196: 2100         	movs	r1, #0x0
  3a9198: f1f0 fe3a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1f0c74
  3a919c: 4603         	mov	r3, r0
  3a919e: 9803         	ldr	r0, [sp, #0xc]
  3a91a0: a908         	add	r1, sp, #0x20
  3a91a2: aa09         	add	r2, sp, #0x24
  3a91a4: 2500         	movs	r5, #0x0
  3a91a6: 9500         	str	r5, [sp]
  3a91a8: 9001         	str	r0, [sp, #0x4]
  3a91aa: 4824         	ldr	r0, [pc, #0x90]         @ 0x3a923c <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x11c>
  3a91ac: 5820         	ldr	r0, [r4, r0]
  3a91ae: f736 fb21    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xc99be
  3a91b2: ab07         	add	r3, sp, #0x1c
  3a91b4: 4618         	mov	r0, r3
  3a91b6: f00c f3ad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c75a
  3a91ba: ab04         	add	r3, sp, #0x10
  3a91bc: 4618         	mov	r0, r3
  3a91be: f3e1 f91d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e123a
  3a91c2: ab09         	add	r3, sp, #0x24
  3a91c4: 4618         	mov	r0, r3
  3a91c6: f00c f3a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c74a
  3a91ca: ab06         	add	r3, sp, #0x18
  3a91cc: 4618         	mov	r0, r3
  3a91ce: f3e1 f915    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e122a
  3a91d2: ab08         	add	r3, sp, #0x20
  3a91d4: 4618         	mov	r0, r3
  3a91d6: f00c f39d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c73a
  3a91da: ab05         	add	r3, sp, #0x14
  3a91dc: 4618         	mov	r0, r3
  3a91de: f3e1 f90d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e121a
  3a91e2: 9b03         	ldr	r3, [sp, #0xc]
  3a91e4: 2201         	movs	r2, #0x1
  3a91e6: f883 2188    	strb.w	r2, [r3, #0x188]
  3a91ea: e01c         	b	0x3a9226 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x106> @ imm = #0x38
  3a91ec: ab07         	add	r3, sp, #0x1c
  3a91ee: 4618         	mov	r0, r3
  3a91f0: f00c f390    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c720
  3a91f4: e7ff         	b	0x3a91f6 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0xd6> @ imm = #-0x2
  3a91f6: ab04         	add	r3, sp, #0x10
  3a91f8: 4618         	mov	r0, r3
  3a91fa: f3e1 f8ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e11fe
  3a91fe: ab09         	add	r3, sp, #0x24
  3a9200: 4618         	mov	r0, r3
  3a9202: f00c f387    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c70e
  3a9206: e7ff         	b	0x3a9208 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0xe8> @ imm = #-0x2
  3a9208: ab06         	add	r3, sp, #0x18
  3a920a: 4618         	mov	r0, r3
  3a920c: f3e1 f8f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e11ec
  3a9210: ab08         	add	r3, sp, #0x20
  3a9212: 4618         	mov	r0, r3
  3a9214: f00c f37e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40c6fc
  3a9218: e7ff         	b	0x3a921a <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0xfa> @ imm = #-0x2
  3a921a: ab05         	add	r3, sp, #0x14
  3a921c: 4618         	mov	r0, r3
  3a921e: f3e1 f8ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e11da
  3a9222: f3de ff43    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dee86
  3a9226: b00b         	add	sp, #0x2c
  3a9228: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a9229); words below are literal-pool data ---
  3a922a: bf00         	nop
  3a922c: 98de         	ldr	r0, [sp, #0x378]
  3a922e: 0058         	lsls	r0, r3, #0x1
  3a9230: 9fa8         	ldr	r7, [sp, #0x2a0]
  3a9232: 0042         	lsls	r2, r0, #0x1
  3a9234: 9fa6         	ldr	r7, [sp, #0x298]
  3a9236: 0042         	lsls	r2, r0, #0x1
  3a9238: 9fe0         	ldr	r7, [sp, #0x380]
  3a923a: 0042         	lsls	r2, r0, #0x1
  3a923c: ddbc         	ble	0x3a91b8 <PlayerLobbyOnlineHosted::onConnectionLost(cocos2d::CCObject*)+0x98> @ imm = #-0x88
  3a923e: ffff b500    	<unknown>

// ==== PlayerLobbyOnlineHosted::onServerPlayerCountUpdate
//      file offset 0x3a9240 (= ELF address; Ghidra 0x3b9240), 28 bytes, Thumb-2
  3a9240: b500         	push	{lr}
  3a9242: b083         	sub	sp, #0xc
  3a9244: 9001         	str	r0, [sp, #0x4]
  3a9246: 9100         	str	r1, [sp]
  3a9248: 9800         	ldr	r0, [sp]
  3a924a: f743 fe03    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc3fa
  3a924e: 4602         	mov	r2, r0
  3a9250: 9b01         	ldr	r3, [sp, #0x4]
  3a9252: f8c3 2184    	str.w	r2, [r3, #0x184]
  3a9256: b003         	add	sp, #0xc
  3a9258: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::onLobbyClosed
//      file offset 0x3a925c (= ELF address; Ghidra 0x3b925c), 26 bytes, Thumb-2
  3a925c: b500         	push	{lr}
  3a925e: b083         	sub	sp, #0xc
  3a9260: 9001         	str	r0, [sp, #0x4]
  3a9262: 9100         	str	r1, [sp]
  3a9264: f7ce fc6c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x31728
  3a9268: 4603         	mov	r3, r0
  3a926a: 4618         	mov	r0, r3
  3a926c: f7d1 f8ec    	bl	0x37a448 <NetworkManager::removeAllPlayers()> @ imm = #-0x2ee28
  3a9270: b003         	add	sp, #0xc
  3a9272: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::onSetServerMap
//      file offset 0x3a9278 (= ELF address; Ghidra 0x3b9278), 256 bytes, Thumb-2
  3a9278: b5f0         	push	{r4, r5, r6, r7, lr}
  3a927a: b08f         	sub	sp, #0x3c
  3a927c: 9003         	str	r0, [sp, #0xc]
  3a927e: 9102         	str	r1, [sp, #0x8]
  3a9280: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x3a936c <PlayerLobbyOnlineHosted::onSetServerMap(cocos2d::CCObject*)+0xf4>
  3a9282: 447c         	add	r4, pc
  3a9284: 9b02         	ldr	r3, [sp, #0x8]
  3a9286: 9305         	str	r3, [sp, #0x14]
  3a9288: 9805         	ldr	r0, [sp, #0x14]
  3a928a: 2100         	movs	r1, #0x0
  3a928c: f1f0 ff48    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e90
  3a9290: 4603         	mov	r3, r0
  3a9292: 9306         	str	r3, [sp, #0x18]
  3a9294: 9805         	ldr	r0, [sp, #0x14]
  3a9296: 2101         	movs	r1, #0x1
  3a9298: f1f0 ff42    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e84
  3a929c: 4603         	mov	r3, r0
  3a929e: 9307         	str	r3, [sp, #0x1c]
  3a92a0: 9805         	ldr	r0, [sp, #0x14]
  3a92a2: 2102         	movs	r1, #0x2
  3a92a4: f1f0 ff3c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e78
  3a92a8: 4603         	mov	r3, r0
  3a92aa: 9308         	str	r3, [sp, #0x20]
  3a92ac: 9805         	ldr	r0, [sp, #0x14]
  3a92ae: 2103         	movs	r1, #0x3
  3a92b0: f1f0 ff36    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e6c
  3a92b4: 4603         	mov	r3, r0
  3a92b6: 9309         	str	r3, [sp, #0x24]
  3a92b8: 9805         	ldr	r0, [sp, #0x14]
  3a92ba: 2104         	movs	r1, #0x4
  3a92bc: f1f0 ff30    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e60
  3a92c0: 4603         	mov	r3, r0
  3a92c2: 930a         	str	r3, [sp, #0x28]
  3a92c4: 9805         	ldr	r0, [sp, #0x14]
  3a92c6: 2105         	movs	r1, #0x5
  3a92c8: f1f0 ff2a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e54
  3a92cc: 4603         	mov	r3, r0
  3a92ce: 930b         	str	r3, [sp, #0x2c]
  3a92d0: 9805         	ldr	r0, [sp, #0x14]
  3a92d2: 2106         	movs	r1, #0x6
  3a92d4: f1f0 ff24    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e48
  3a92d8: 4603         	mov	r3, r0
  3a92da: 930c         	str	r3, [sp, #0x30]
  3a92dc: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3a9370 <PlayerLobbyOnlineHosted::onSetServerMap(cocos2d::CCObject*)+0xf8>
  3a92de: 58e3         	ldr	r3, [r4, r3]
  3a92e0: 681d         	ldr	r5, [r3]
  3a92e2: 9806         	ldr	r0, [sp, #0x18]
  3a92e4: f743 fdb6    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc494
  3a92e8: 4603         	mov	r3, r0
  3a92ea: 4628         	mov	r0, r5
  3a92ec: 4619         	mov	r1, r3
  3a92ee: f1f0 ff17    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f0e2e
  3a92f2: 4603         	mov	r3, r0
  3a92f4: 930d         	str	r3, [sp, #0x34]
  3a92f6: 980d         	ldr	r0, [sp, #0x34]
  3a92f8: f1f0 fb16    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f062c
  3a92fc: 4603         	mov	r3, r0
  3a92fe: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x3a9374 <PlayerLobbyOnlineHosted::onSetServerMap(cocos2d::CCObject*)+0xfc>
  3a9300: 58a2         	ldr	r2, [r4, r2]
  3a9302: 4610         	mov	r0, r2
  3a9304: 4619         	mov	r1, r3
  3a9306: f00c f5b3    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x40cb66
  3a930a: 9b03         	ldr	r3, [sp, #0xc]
  3a930c: f8d3 7198    	ldr.w	r7, [r3, #0x198]
  3a9310: 9806         	ldr	r0, [sp, #0x18]
  3a9312: f743 fd9f    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc4c2
  3a9316: 4606         	mov	r6, r0
  3a9318: 9807         	ldr	r0, [sp, #0x1c]
  3a931a: f743 fd9b    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc4ca
  3a931e: 4605         	mov	r5, r0
  3a9320: 9809         	ldr	r0, [sp, #0x24]
  3a9322: f743 fd97    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc4d2
  3a9326: 4604         	mov	r4, r0
  3a9328: 980b         	ldr	r0, [sp, #0x2c]
  3a932a: f743 fd93    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc4da
  3a932e: 4603         	mov	r3, r0
  3a9330: 9300         	str	r3, [sp]
  3a9332: 4638         	mov	r0, r7
  3a9334: 4631         	mov	r1, r6
  3a9336: 462a         	mov	r2, r5
  3a9338: 4623         	mov	r3, r4
  3a933a: f7fc fffd    	bl	0x3a6338 <MapVoteLayer::updateMaps(int, int, int, int)> @ imm = #-0x3006
  3a933e: 9b03         	ldr	r3, [sp, #0xc]
  3a9340: f8d3 6198    	ldr.w	r6, [r3, #0x198]
  3a9344: 9808         	ldr	r0, [sp, #0x20]
  3a9346: f743 fd85    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc4f6
  3a934a: 4605         	mov	r5, r0
  3a934c: 980a         	ldr	r0, [sp, #0x28]
  3a934e: f743 fd81    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc4fe
  3a9352: 4604         	mov	r4, r0
  3a9354: 980c         	ldr	r0, [sp, #0x30]
  3a9356: f743 fd7d    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xbc506
  3a935a: 4603         	mov	r3, r0
  3a935c: 4630         	mov	r0, r6
  3a935e: 4629         	mov	r1, r5
  3a9360: 4622         	mov	r2, r4
  3a9362: f7fd f801    	bl	0x3a6368 <MapVoteLayer::updateVotes(int, int, int)> @ imm = #-0x2ffe
  3a9366: b00f         	add	sp, #0x3c
  3a9368: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3a9369); words below are literal-pool data ---
  3a936a: bf00         	nop
  3a936c: 9786         	str	r7, [sp, #0x218]
  3a936e: 0058         	lsls	r0, r3, #0x1
  3a9370: d7c8         	bvc	0x3a9304 <PlayerLobbyOnlineHosted::onSetServerMap(cocos2d::CCObject*)+0x8c> @ imm = #-0x70
  3a9372: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  3a9376: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerLobbyOnlineHosted::setMapName
//      file offset 0x3a9378 (= ELF address; Ghidra 0x3b9378), 68 bytes, Thumb-2
  3a9378: b510         	push	{r4, lr}
  3a937a: b084         	sub	sp, #0x10
  3a937c: 9003         	str	r0, [sp, #0xc]
  3a937e: 9102         	str	r1, [sp, #0x8]
  3a9380: 9201         	str	r2, [sp, #0x4]
  3a9382: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x3a93b4 <PlayerLobbyOnlineHosted::setMapName(std::string, int)+0x3c>
  3a9384: 447c         	add	r4, pc
  3a9386: 9b01         	ldr	r3, [sp, #0x4]
  3a9388: 2b00         	cmp	r3, #0x0
  3a938a: d107         	bne	0x3a939c <PlayerLobbyOnlineHosted::setMapName(std::string, int)+0x24> @ imm = #0xe
  3a938c: 9802         	ldr	r0, [sp, #0x8]
  3a938e: f00b f665    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40bcca
  3a9392: 4603         	mov	r3, r0
  3a9394: 2b00         	cmp	r3, #0x0
  3a9396: d001         	beq	0x3a939c <PlayerLobbyOnlineHosted::setMapName(std::string, int)+0x24> @ imm = #0x2
  3a9398: 2301         	movs	r3, #0x1
  3a939a: e000         	b	0x3a939e <PlayerLobbyOnlineHosted::setMapName(std::string, int)+0x26> @ imm = #0x0
  3a939c: 2300         	movs	r3, #0x0
  3a939e: 2b00         	cmp	r3, #0x0
  3a93a0: d005         	beq	0x3a93ae <PlayerLobbyOnlineHosted::setMapName(std::string, int)+0x36> @ imm = #0xa
  3a93a2: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3a93b8 <PlayerLobbyOnlineHosted::setMapName(std::string, int)+0x40>
  3a93a4: 58e3         	ldr	r3, [r4, r3]
  3a93a6: 4618         	mov	r0, r3
  3a93a8: 9902         	ldr	r1, [sp, #0x8]
  3a93aa: f00d f103    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x40d206
  3a93ae: b004         	add	sp, #0x10
  3a93b0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a93b1); words below are literal-pool data ---
  3a93b2: bf00         	nop
  3a93b4: 9684         	str	r6, [sp, #0x210]
  3a93b6: 0058         	lsls	r0, r3, #0x1
  3a93b8: d958         	bls	0x3a946c <PlayerLobbyOnlineHosted::onVote(cocos2d::CCObject*)+0xb0> @ imm = #0xb0
  3a93ba: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineHosted::onVote
//      file offset 0x3a93bc (= ELF address; Ghidra 0x3b93bc), 192 bytes, Thumb-2
  3a93bc: b530         	push	{r4, r5, lr}
  3a93be: b087         	sub	sp, #0x1c
  3a93c0: 9001         	str	r0, [sp, #0x4]
  3a93c2: 9100         	str	r1, [sp]
  3a93c4: 4c2a         	ldr	r4, [pc, #0xa8]         @ 0x3a9470 <PlayerLobbyOnlineHosted::onVote(cocos2d::CCObject*)+0xb4>
  3a93c6: 447c         	add	r4, pc
  3a93c8: 9b01         	ldr	r3, [sp, #0x4]
  3a93ca: 681b         	ldr	r3, [r3]
  3a93cc: f503 73ee    	add.w	r3, r3, #0x1dc
  3a93d0: 681b         	ldr	r3, [r3]
  3a93d2: 9a01         	ldr	r2, [sp, #0x4]
  3a93d4: 4610         	mov	r0, r2
  3a93d6: 4798         	blx	r3
  3a93d8: 4603         	mov	r3, r0
  3a93da: 9303         	str	r3, [sp, #0xc]
  3a93dc: 9b03         	ldr	r3, [sp, #0xc]
  3a93de: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a93e2: 2b03         	cmp	r3, #0x3
  3a93e4: d042         	beq	0x3a946c <PlayerLobbyOnlineHosted::onVote(cocos2d::CCObject*)+0xb0> @ imm = #0x84
  3a93e6: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3a9474 <PlayerLobbyOnlineHosted::onVote(cocos2d::CCObject*)+0xb8>
  3a93e8: 58e3         	ldr	r3, [r4, r3]
  3a93ea: 681b         	ldr	r3, [r3]
  3a93ec: 4618         	mov	r0, r3
  3a93ee: 210e         	movs	r1, #0xe
  3a93f0: f04e fce6    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4e9cc
  3a93f4: 9b01         	ldr	r3, [sp, #0x4]
  3a93f6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a93fa: 681b         	ldr	r3, [r3]
  3a93fc: 3390         	adds	r3, #0x90
  3a93fe: 681b         	ldr	r3, [r3]
  3a9400: 9a01         	ldr	r2, [sp, #0x4]
  3a9402: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3a9406: 4610         	mov	r0, r2
  3a9408: 2100         	movs	r1, #0x0
  3a940a: 4798         	blx	r3
  3a940c: 9b01         	ldr	r3, [sp, #0x4]
  3a940e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a9412: 681b         	ldr	r3, [r3]
  3a9414: 334c         	adds	r3, #0x4c
  3a9416: 681b         	ldr	r3, [r3]
  3a9418: 9a01         	ldr	r2, [sp, #0x4]
  3a941a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3a941e: 4610         	mov	r0, r2
  3a9420: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3a9478 <PlayerLobbyOnlineHosted::onVote(cocos2d::CCObject*)+0xbc>
  3a9422: 58a2         	ldr	r2, [r4, r2]
  3a9424: 4611         	mov	r1, r2
  3a9426: 4798         	blx	r3
  3a9428: 9b01         	ldr	r3, [sp, #0x4]
  3a942a: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a942e: 681b         	ldr	r3, [r3]
  3a9430: 3390         	adds	r3, #0x90
  3a9432: 681b         	ldr	r3, [r3]
  3a9434: 9a01         	ldr	r2, [sp, #0x4]
  3a9436: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a943a: 4610         	mov	r0, r2
  3a943c: 2101         	movs	r1, #0x1
  3a943e: 4798         	blx	r3
  3a9440: 9b01         	ldr	r3, [sp, #0x4]
  3a9442: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a9446: 681b         	ldr	r3, [r3]
  3a9448: 334c         	adds	r3, #0x4c
  3a944a: 681c         	ldr	r4, [r3]
  3a944c: 9b01         	ldr	r3, [sp, #0x4]
  3a944e: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a9452: 461d         	mov	r5, r3
  3a9454: ab04         	add	r3, sp, #0x10
  3a9456: 4618         	mov	r0, r3
  3a9458: f04f 0100    	mov.w	r1, #0x0
  3a945c: f04f 0200    	mov.w	r2, #0x0
  3a9460: f1e9 fc46    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e988c
  3a9464: ab04         	add	r3, sp, #0x10
  3a9466: 4628         	mov	r0, r5
  3a9468: 4619         	mov	r1, r3
  3a946a: 47a0         	blx	r4
  3a946c: b007         	add	sp, #0x1c
  3a946e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a946f); words below are literal-pool data ---
  3a9470: 9642         	str	r6, [sp, #0x108]
  3a9472: 0058         	lsls	r0, r3, #0x1
  3a9474: d730         	bvc	0x3a94d8 <PlayerLobbyOnlineHosted::onAfterMapVote(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3a9476: ffff d954    	vqrshrn.u64	d29, q2, #0x1
  3a947a: ffff b570    	<unknown>

// ==== PlayerLobbyOnlineHosted::onAfterMapVote
//      file offset 0x3a947c (= ELF address; Ghidra 0x3b947c), 144 bytes, Thumb-2
  3a947c: b570         	push	{r4, r5, r6, lr}
  3a947e: b084         	sub	sp, #0x10
  3a9480: 9001         	str	r0, [sp, #0x4]
  3a9482: 9100         	str	r1, [sp]
  3a9484: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x3a9504 <PlayerLobbyOnlineHosted::onAfterMapVote(cocos2d::CCObject*)+0x88>
  3a9486: 447c         	add	r4, pc
  3a9488: 9b01         	ldr	r3, [sp, #0x4]
  3a948a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a948e: 681b         	ldr	r3, [r3]
  3a9490: 3390         	adds	r3, #0x90
  3a9492: 681b         	ldr	r3, [r3]
  3a9494: 9a01         	ldr	r2, [sp, #0x4]
  3a9496: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3a949a: 4610         	mov	r0, r2
  3a949c: 2101         	movs	r1, #0x1
  3a949e: 4798         	blx	r3
  3a94a0: 9b01         	ldr	r3, [sp, #0x4]
  3a94a2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3a94a6: 681b         	ldr	r3, [r3]
  3a94a8: 334c         	adds	r3, #0x4c
  3a94aa: 681d         	ldr	r5, [r3]
  3a94ac: 9b01         	ldr	r3, [sp, #0x4]
  3a94ae: f8d3 6144    	ldr.w	r6, [r3, #0x144]
  3a94b2: ab02         	add	r3, sp, #0x8
  3a94b4: 4618         	mov	r0, r3
  3a94b6: f04f 0100    	mov.w	r1, #0x0
  3a94ba: f04f 0200    	mov.w	r2, #0x0
  3a94be: f1e9 fc17    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e982e
  3a94c2: ab02         	add	r3, sp, #0x8
  3a94c4: 4630         	mov	r0, r6
  3a94c6: 4619         	mov	r1, r3
  3a94c8: 47a8         	blx	r5
  3a94ca: 9b01         	ldr	r3, [sp, #0x4]
  3a94cc: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a94d0: 681b         	ldr	r3, [r3]
  3a94d2: 3390         	adds	r3, #0x90
  3a94d4: 681b         	ldr	r3, [r3]
  3a94d6: 9a01         	ldr	r2, [sp, #0x4]
  3a94d8: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a94dc: 4610         	mov	r0, r2
  3a94de: 2100         	movs	r1, #0x0
  3a94e0: 4798         	blx	r3
  3a94e2: 9b01         	ldr	r3, [sp, #0x4]
  3a94e4: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a94e8: 681b         	ldr	r3, [r3]
  3a94ea: 334c         	adds	r3, #0x4c
  3a94ec: 681b         	ldr	r3, [r3]
  3a94ee: 9a01         	ldr	r2, [sp, #0x4]
  3a94f0: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a94f4: 4610         	mov	r0, r2
  3a94f6: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3a9508 <PlayerLobbyOnlineHosted::onAfterMapVote(cocos2d::CCObject*)+0x8c>
  3a94f8: 58a2         	ldr	r2, [r4, r2]
  3a94fa: 4611         	mov	r1, r2
  3a94fc: 4798         	blx	r3
  3a94fe: b004         	add	sp, #0x10
  3a9500: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3a9501); words below are literal-pool data ---
  3a9502: bf00         	nop
  3a9504: 9582         	str	r5, [sp, #0x208]
  3a9506: 0058         	lsls	r0, r3, #0x1
  3a9508: d954         	bls	0x3a95b4 <PlayerLobbyOnlineHosted::onReady()+0xa8> @ imm = #0xa8
  3a950a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerLobbyOnlineHosted::onReady
//      file offset 0x3a950c (= ELF address; Ghidra 0x3b950c), 188 bytes, Thumb-2
  3a950c: b510         	push	{r4, lr}
  3a950e: b082         	sub	sp, #0x8
  3a9510: 9001         	str	r0, [sp, #0x4]
  3a9512: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x3a95c0 <PlayerLobbyOnlineHosted::onReady()+0xb4>
  3a9514: 447c         	add	r4, pc
  3a9516: 9b01         	ldr	r3, [sp, #0x4]
  3a9518: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a951c: 681b         	ldr	r3, [r3]
  3a951e: 3394         	adds	r3, #0x94
  3a9520: 681b         	ldr	r3, [r3]
  3a9522: 9a01         	ldr	r2, [sp, #0x4]
  3a9524: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a9528: 4610         	mov	r0, r2
  3a952a: 4798         	blx	r3
  3a952c: 4603         	mov	r3, r0
  3a952e: f083 0301    	eor	r3, r3, #0x1
  3a9532: b2db         	uxtb	r3, r3
  3a9534: 2b00         	cmp	r3, #0x0
  3a9536: d12c         	bne	0x3a9592 <PlayerLobbyOnlineHosted::onReady()+0x86> @ imm = #0x58
  3a9538: 9b01         	ldr	r3, [sp, #0x4]
  3a953a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a953e: 681b         	ldr	r3, [r3]
  3a9540: 3394         	adds	r3, #0x94
  3a9542: 681b         	ldr	r3, [r3]
  3a9544: 9a01         	ldr	r2, [sp, #0x4]
  3a9546: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a954a: 4610         	mov	r0, r2
  3a954c: 4798         	blx	r3
  3a954e: 4603         	mov	r3, r0
  3a9550: f083 0301    	eor	r3, r3, #0x1
  3a9554: b2db         	uxtb	r3, r3
  3a9556: 2b00         	cmp	r3, #0x0
  3a9558: d11b         	bne	0x3a9592 <PlayerLobbyOnlineHosted::onReady()+0x86> @ imm = #0x36
  3a955a: 9b01         	ldr	r3, [sp, #0x4]
  3a955c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  3a9560: 681b         	ldr	r3, [r3]
  3a9562: 3394         	adds	r3, #0x94
  3a9564: 681b         	ldr	r3, [r3]
  3a9566: 9a01         	ldr	r2, [sp, #0x4]
  3a9568: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  3a956c: 4610         	mov	r0, r2
  3a956e: 4798         	blx	r3
  3a9570: 4603         	mov	r3, r0
  3a9572: 2b00         	cmp	r3, #0x0
  3a9574: d10d         	bne	0x3a9592 <PlayerLobbyOnlineHosted::onReady()+0x86> @ imm = #0x1a
  3a9576: 9b01         	ldr	r3, [sp, #0x4]
  3a9578: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3a957c: 681b         	ldr	r3, [r3]
  3a957e: 3394         	adds	r3, #0x94
  3a9580: 681b         	ldr	r3, [r3]
  3a9582: 9a01         	ldr	r2, [sp, #0x4]
  3a9584: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  3a9588: 4610         	mov	r0, r2
  3a958a: 4798         	blx	r3
  3a958c: 4603         	mov	r3, r0
  3a958e: 2b00         	cmp	r3, #0x0
  3a9590: d001         	beq	0x3a9596 <PlayerLobbyOnlineHosted::onReady()+0x8a> @ imm = #0x2
  3a9592: 2301         	movs	r3, #0x1
  3a9594: e000         	b	0x3a9598 <PlayerLobbyOnlineHosted::onReady()+0x8c> @ imm = #0x0
  3a9596: 2300         	movs	r3, #0x0
  3a9598: 2b00         	cmp	r3, #0x0
  3a959a: d000         	beq	0x3a959e <PlayerLobbyOnlineHosted::onReady()+0x92> @ imm = #0x0
  3a959c: e00e         	b	0x3a95bc <PlayerLobbyOnlineHosted::onReady()+0xb0> @ imm = #0x1c
  3a959e: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3a95c4 <PlayerLobbyOnlineHosted::onReady()+0xb8>
  3a95a0: 58e3         	ldr	r3, [r4, r3]
  3a95a2: 681b         	ldr	r3, [r3]
  3a95a4: 4618         	mov	r0, r3
  3a95a6: 210d         	movs	r1, #0xd
  3a95a8: f04e fc0a    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4e814
  3a95ac: 9b01         	ldr	r3, [sp, #0x4]
  3a95ae: 681b         	ldr	r3, [r3]
  3a95b0: f503 73de    	add.w	r3, r3, #0x1bc
  3a95b4: 681b         	ldr	r3, [r3]
  3a95b6: 9a01         	ldr	r2, [sp, #0x4]
  3a95b8: 4610         	mov	r0, r2
  3a95ba: 4798         	blx	r3
  3a95bc: b002         	add	sp, #0x8
  3a95be: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a95bf); words below are literal-pool data ---
  3a95c0: 94f4         	str	r4, [sp, #0x3d0]
  3a95c2: 0058         	lsls	r0, r3, #0x1
  3a95c4: d730         	bvc	0x3a9628 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x3c> @ imm = #0x60
  3a95c6: ffff b500    	<unknown>

// ==== PlayerLobbyOnlineHosted::messageBoxHandlerHosted
//      file offset 0x3a95c8 (= ELF address; Ghidra 0x3b95c8), 36 bytes, Thumb-2
  3a95c8: b500         	push	{lr}
  3a95ca: b087         	sub	sp, #0x1c
  3a95cc: 9003         	str	r0, [sp, #0xc]
  3a95ce: 9102         	str	r1, [sp, #0x8]
  3a95d0: 9201         	str	r2, [sp, #0x4]
  3a95d2: 9b01         	ldr	r3, [sp, #0x4]
  3a95d4: 9305         	str	r3, [sp, #0x14]
  3a95d6: 9b05         	ldr	r3, [sp, #0x14]
  3a95d8: 681b         	ldr	r3, [r3]
  3a95da: f503 73ce    	add.w	r3, r3, #0x19c
  3a95de: 681b         	ldr	r3, [r3]
  3a95e0: 9805         	ldr	r0, [sp, #0x14]
  3a95e2: 9903         	ldr	r1, [sp, #0xc]
  3a95e4: 4798         	blx	r3
  3a95e6: b007         	add	sp, #0x1c
  3a95e8: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineHosted::onServerStatus
//      file offset 0x3a95ec (= ELF address; Ghidra 0x3b95ec), 50 bytes, Thumb-2
  3a95ec: b530         	push	{r4, r5, lr}
  3a95ee: b085         	sub	sp, #0x14
  3a95f0: 9001         	str	r0, [sp, #0x4]
  3a95f2: 9100         	str	r1, [sp]
  3a95f4: 9b00         	ldr	r3, [sp]
  3a95f6: 9303         	str	r3, [sp, #0xc]
  3a95f8: 9b01         	ldr	r3, [sp, #0x4]
  3a95fa: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  3a95fe: 681b         	ldr	r3, [r3]
  3a9600: f503 730f    	add.w	r3, r3, #0x23c
  3a9604: 681c         	ldr	r4, [r3]
  3a9606: 9b01         	ldr	r3, [sp, #0x4]
  3a9608: f8d3 5190    	ldr.w	r5, [r3, #0x190]
  3a960c: 9803         	ldr	r0, [sp, #0xc]
  3a960e: f1f0 f98b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f0316
  3a9612: 4603         	mov	r3, r0
  3a9614: 4628         	mov	r0, r5
  3a9616: 4619         	mov	r1, r3
  3a9618: 47a0         	blx	r4
  3a961a: b005         	add	sp, #0x14
  3a961c: bd30         	pop	{r4, r5, pc}
