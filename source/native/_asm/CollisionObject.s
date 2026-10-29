// CollisionObject: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 17 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CollisionObject.cpp

// ==== CollisionObject::CollisionObject
//      file offset 0x300be0 (= ELF address; Ghidra 0x310be0), 68 bytes, Thumb-2
  300be0: b510         	push	{r4, lr}
  300be2: b082         	sub	sp, #0x8
  300be4: 9001         	str	r0, [sp, #0x4]
  300be6: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x300c1c <CollisionObject::CollisionObject()+0x3c>
  300be8: 447c         	add	r4, pc
  300bea: 9b01         	ldr	r3, [sp, #0x4]
  300bec: 4618         	mov	r0, r3
  300bee: f28e fd23    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x28ea46
  300bf2: 9b01         	ldr	r3, [sp, #0x4]
  300bf4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x300c20 <CollisionObject::CollisionObject()+0x40>
  300bf6: 58a2         	ldr	r2, [r4, r2]
  300bf8: 3208         	adds	r2, #0x8
  300bfa: 601a         	str	r2, [r3]
  300bfc: 9b01         	ldr	r3, [sp, #0x4]
  300bfe: 33ec         	adds	r3, #0xec
  300c00: 4618         	mov	r0, r3
  300c02: f0b4 f2d5    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x4b45aa
  300c06: 9b01         	ldr	r3, [sp, #0x4]
  300c08: e005         	b	0x300c16 <CollisionObject::CollisionObject()+0x36> @ imm = #0xa
  300c0a: 9b01         	ldr	r3, [sp, #0x4]
  300c0c: 4618         	mov	r0, r3
  300c0e: f28e fe19    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x28ec32
  300c12: f087 f24b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x487496
  300c16: 4618         	mov	r0, r3
  300c18: b002         	add	sp, #0x8
  300c1a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x300c1b); words below are literal-pool data ---
  300c1c: 1e20         	subs	r0, r4, #0x0
  300c1e: 0063         	lsls	r3, r4, #0x1
  300c20: d924         	bls	0x300c6c <CollisionObject::init()+0x48> @ imm = #0x48
  300c22: ffff b500    	<unknown>

// ==== CollisionObject::init
//      file offset 0x300c24 (= ELF address; Ghidra 0x310c24), 100 bytes, Thumb-2
  300c24: b500         	push	{lr}
  300c26: b085         	sub	sp, #0x14
  300c28: 9001         	str	r0, [sp, #0x4]
  300c2a: 9b01         	ldr	r3, [sp, #0x4]
  300c2c: 4618         	mov	r0, r3
  300c2e: f28e ff0d    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x28ee1a
  300c32: 4603         	mov	r3, r0
  300c34: f88d 300f    	strb.w	r3, [sp, #0xf]
  300c38: 9b01         	ldr	r3, [sp, #0x4]
  300c3a: 2200         	movs	r2, #0x0
  300c3c: f883 20e8    	strb.w	r2, [r3, #0xe8]
  300c40: 9b01         	ldr	r3, [sp, #0x4]
  300c42: 2200         	movs	r2, #0x0
  300c44: f883 20e9    	strb.w	r2, [r3, #0xe9]
  300c48: 9b01         	ldr	r3, [sp, #0x4]
  300c4a: 2200         	movs	r2, #0x0
  300c4c: f883 20e6    	strb.w	r2, [r3, #0xe6]
  300c50: 9b01         	ldr	r3, [sp, #0x4]
  300c52: 2200         	movs	r2, #0x0
  300c54: f883 20e7    	strb.w	r2, [r3, #0xe7]
  300c58: 9b01         	ldr	r3, [sp, #0x4]
  300c5a: 33ec         	adds	r3, #0xec
  300c5c: 4618         	mov	r0, r3
  300c5e: 4b09         	ldr	r3, [pc, #0x24]         @ 0x300c84 <CollisionObject::init()+0x60>
  300c60: 447b         	add	r3, pc
  300c62: 4619         	mov	r1, r3
  300c64: f0b5 f104    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4b5208
  300c68: 9b01         	ldr	r3, [sp, #0x4]
  300c6a: 2200         	movs	r2, #0x0
  300c6c: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  300c70: 9b01         	ldr	r3, [sp, #0x4]
  300c72: 2200         	movs	r2, #0x0
  300c74: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  300c78: 2301         	movs	r3, #0x1
  300c7a: 4618         	mov	r0, r3
  300c7c: b005         	add	sp, #0x14
  300c7e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x300c81); words below are literal-pool data ---
  300c82: bf00         	nop
  300c84: 4378         	muls	r0, r7, r0
  300c86: 004c         	lsls	r4, r1, #0x1

// ==== CollisionObject::~CollisionObject
//      file offset 0x300c88 (= ELF address; Ghidra 0x310c88), 68 bytes, Thumb-2
  300c88: b500         	push	{lr}
  300c8a: b083         	sub	sp, #0xc
  300c8c: 9001         	str	r0, [sp, #0x4]
  300c8e: 490d         	ldr	r1, [pc, #0x34]         @ 0x300cc4 <CollisionObject::~CollisionObject()+0x3c>
  300c90: 4479         	add	r1, pc
  300c92: 9b01         	ldr	r3, [sp, #0x4]
  300c94: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x300cc8 <CollisionObject::~CollisionObject()+0x40>
  300c96: 588a         	ldr	r2, [r1, r2]
  300c98: 3208         	adds	r2, #0x8
  300c9a: 601a         	str	r2, [r3]
  300c9c: 9b01         	ldr	r3, [sp, #0x4]
  300c9e: 33ec         	adds	r3, #0xec
  300ca0: 4618         	mov	r0, r3
  300ca2: f0b4 f637    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b4c6e
  300ca6: 9b01         	ldr	r3, [sp, #0x4]
  300ca8: 4618         	mov	r0, r3
  300caa: f28e fdcb    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x28eb96
  300cae: 2300         	movs	r3, #0x0
  300cb0: 2b00         	cmp	r3, #0x0
  300cb2: d002         	beq	0x300cba <CollisionObject::~CollisionObject()+0x32> @ imm = #0x4
  300cb4: 9801         	ldr	r0, [sp, #0x4]
  300cb6: f087 f1f5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4873ea
  300cba: 9b01         	ldr	r3, [sp, #0x4]
  300cbc: 4618         	mov	r0, r3
  300cbe: b003         	add	sp, #0xc
  300cc0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x300cc3); words below are literal-pool data ---
  300cc4: 1d78         	adds	r0, r7, #0x5
  300cc6: 0063         	lsls	r3, r4, #0x1
  300cc8: d924         	bls	0x300d14 <CollisionObject::getBodyVelocity()+0x4> @ imm = #0x48
  300cca: ffff b500    	<unknown>

// ==== CollisionObject::~CollisionObject
//      file offset 0x300ccc (= ELF address; Ghidra 0x310ccc), 28 bytes, Thumb-2
  300ccc: b500         	push	{lr}
  300cce: b083         	sub	sp, #0xc
  300cd0: 9001         	str	r0, [sp, #0x4]
  300cd2: 9801         	ldr	r0, [sp, #0x4]
  300cd4: f7ff ffd8    	bl	0x300c88 <CollisionObject::~CollisionObject()> @ imm = #-0x50
  300cd8: 9801         	ldr	r0, [sp, #0x4]
  300cda: f087 f1e3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4873c6
  300cde: 9b01         	ldr	r3, [sp, #0x4]
  300ce0: 4618         	mov	r0, r3
  300ce2: b003         	add	sp, #0xc
  300ce4: f85d fb04    	ldr	pc, [sp], #4

// ==== CollisionObject::getBodyPosition
//      file offset 0x300ce8 (= ELF address; Ghidra 0x310ce8), 40 bytes, Thumb-2
  300ce8: b082         	sub	sp, #0x8
  300cea: 9001         	str	r0, [sp, #0x4]
  300cec: 9100         	str	r1, [sp]
  300cee: 9901         	ldr	r1, [sp, #0x4]
  300cf0: f04f 0200    	mov.w	r2, #0x0
  300cf4: f04f 0300    	mov.w	r3, #0x0
  300cf8: e9c1 2300    	strd	r2, r3, [r1]
  300cfc: 9901         	ldr	r1, [sp, #0x4]
  300cfe: f04f 0200    	mov.w	r2, #0x0
  300d02: f04f 0300    	mov.w	r3, #0x0
  300d06: e9c1 2302    	strd	r2, r3, [r1, #8]
  300d0a: 9801         	ldr	r0, [sp, #0x4]
  300d0c: b002         	add	sp, #0x8
  300d0e: 4770         	bx	lr

// ==== CollisionObject::getBodyVelocity
//      file offset 0x300d10 (= ELF address; Ghidra 0x310d10), 40 bytes, Thumb-2
  300d10: b082         	sub	sp, #0x8
  300d12: 9001         	str	r0, [sp, #0x4]
  300d14: 9100         	str	r1, [sp]
  300d16: 9901         	ldr	r1, [sp, #0x4]
  300d18: f04f 0200    	mov.w	r2, #0x0
  300d1c: f04f 0300    	mov.w	r3, #0x0
  300d20: e9c1 2300    	strd	r2, r3, [r1]
  300d24: 9901         	ldr	r1, [sp, #0x4]
  300d26: f04f 0200    	mov.w	r2, #0x0
  300d2a: f04f 0300    	mov.w	r3, #0x0
  300d2e: e9c1 2302    	strd	r2, r3, [r1, #8]
  300d32: 9801         	ldr	r0, [sp, #0x4]
  300d34: b002         	add	sp, #0x8
  300d36: 4770         	bx	lr

// ==== CollisionObject::setContact
//      file offset 0x300d38 (= ELF address; Ghidra 0x310d38), 24 bytes, Thumb-2
  300d38: b082         	sub	sp, #0x8
  300d3a: 9001         	str	r0, [sp, #0x4]
  300d3c: 460b         	mov	r3, r1
  300d3e: f88d 3003    	strb.w	r3, [sp, #0x3]
  300d42: 9b01         	ldr	r3, [sp, #0x4]
  300d44: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  300d48: f883 20e6    	strb.w	r2, [r3, #0xe6]
  300d4c: b002         	add	sp, #0x8
  300d4e: 4770         	bx	lr

// ==== CollisionObject::getContact
//      file offset 0x300d50 (= ELF address; Ghidra 0x310d50), 16 bytes, Thumb-2
  300d50: b082         	sub	sp, #0x8
  300d52: 9001         	str	r0, [sp, #0x4]
  300d54: 9b01         	ldr	r3, [sp, #0x4]
  300d56: f893 30e8    	ldrb.w	r3, [r3, #0xe8]
  300d5a: 4618         	mov	r0, r3
  300d5c: b002         	add	sp, #0x8
  300d5e: 4770         	bx	lr

// ==== CollisionObject::setFootContact
//      file offset 0x300d60 (= ELF address; Ghidra 0x310d60), 24 bytes, Thumb-2
  300d60: b082         	sub	sp, #0x8
  300d62: 9001         	str	r0, [sp, #0x4]
  300d64: 460b         	mov	r3, r1
  300d66: f88d 3003    	strb.w	r3, [sp, #0x3]
  300d6a: 9b01         	ldr	r3, [sp, #0x4]
  300d6c: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  300d70: f883 20e7    	strb.w	r2, [r3, #0xe7]
  300d74: b002         	add	sp, #0x8
  300d76: 4770         	bx	lr

// ==== CollisionObject::getFootContact
//      file offset 0x300d78 (= ELF address; Ghidra 0x310d78), 16 bytes, Thumb-2
  300d78: b082         	sub	sp, #0x8
  300d7a: 9001         	str	r0, [sp, #0x4]
  300d7c: 9b01         	ldr	r3, [sp, #0x4]
  300d7e: f893 30e9    	ldrb.w	r3, [r3, #0xe9]
  300d82: 4618         	mov	r0, r3
  300d84: b002         	add	sp, #0x8
  300d86: 4770         	bx	lr

// ==== CollisionObject::getDamageAmmoType
//      file offset 0x300d88 (= ELF address; Ghidra 0x310d88), 16 bytes, Thumb-2
  300d88: b082         	sub	sp, #0x8
  300d8a: 9001         	str	r0, [sp, #0x4]
  300d8c: 9b01         	ldr	r3, [sp, #0x4]
  300d8e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  300d92: 4618         	mov	r0, r3
  300d94: b002         	add	sp, #0x8
  300d96: 4770         	bx	lr

// ==== CollisionObject::getDamagePeerId
//      file offset 0x300d98 (= ELF address; Ghidra 0x310d98), 28 bytes, Thumb-2
  300d98: b500         	push	{lr}
  300d9a: b083         	sub	sp, #0xc
  300d9c: 9001         	str	r0, [sp, #0x4]
  300d9e: 9100         	str	r1, [sp]
  300da0: 9b00         	ldr	r3, [sp]
  300da2: 33ec         	adds	r3, #0xec
  300da4: 9801         	ldr	r0, [sp, #0x4]
  300da6: 4619         	mov	r1, r3
  300da8: f0b5 f39e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4b573c
  300dac: 9801         	ldr	r0, [sp, #0x4]
  300dae: b003         	add	sp, #0xc
  300db0: f85d fb04    	ldr	pc, [sp], #4

// ==== CollisionObject::setDamagePeerId
//      file offset 0x300db4 (= ELF address; Ghidra 0x310db4), 26 bytes, Thumb-2
  300db4: b500         	push	{lr}
  300db6: b083         	sub	sp, #0xc
  300db8: 9001         	str	r0, [sp, #0x4]
  300dba: 9100         	str	r1, [sp]
  300dbc: 9b01         	ldr	r3, [sp, #0x4]
  300dbe: 33ec         	adds	r3, #0xec
  300dc0: 4618         	mov	r0, r3
  300dc2: 9900         	ldr	r1, [sp]
  300dc4: f0b5 f3f6    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x4b57ec
  300dc8: b003         	add	sp, #0xc
  300dca: f85d fb04    	ldr	pc, [sp], #4

// ==== CollisionObject::getPeerID
//      file offset 0x300dd0 (= ELF address; Ghidra 0x310dd0), 68 bytes, Thumb-2
  300dd0: b500         	push	{lr}
  300dd2: b085         	sub	sp, #0x14
  300dd4: 9001         	str	r0, [sp, #0x4]
  300dd6: 9100         	str	r1, [sp]
  300dd8: ab03         	add	r3, sp, #0xc
  300dda: 4618         	mov	r0, r3
  300ddc: f089 f30a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x489614
  300de0: ab03         	add	r3, sp, #0xc
  300de2: 9801         	ldr	r0, [sp, #0x4]
  300de4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x300e10 <CollisionObject::getPeerID()+0x40>
  300de6: 447a         	add	r2, pc
  300de8: 4611         	mov	r1, r2
  300dea: 461a         	mov	r2, r3
  300dec: f0b5 f638    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b5c70
  300df0: ab03         	add	r3, sp, #0xc
  300df2: 4618         	mov	r0, r3
  300df4: f089 f302    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x489604
  300df8: e005         	b	0x300e06 <CollisionObject::getPeerID()+0x36> @ imm = #0xa
  300dfa: ab03         	add	r3, sp, #0xc
  300dfc: 4618         	mov	r0, r3
  300dfe: f089 f2fd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4895fa
  300e02: f087 f153    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4872a6
  300e06: 9801         	ldr	r0, [sp, #0x4]
  300e08: b005         	add	sp, #0x14
  300e0a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x300e0d); words below are literal-pool data ---
  300e0e: bf00         	nop
  300e10: 41f6         	rors	r6, r6
  300e12: 004c         	lsls	r4, r1, #0x1

// ==== CollisionObject::getTeamId
//      file offset 0x300e14 (= ELF address; Ghidra 0x310e14), 16 bytes, Thumb-2
  300e14: b082         	sub	sp, #0x8
  300e16: 9001         	str	r0, [sp, #0x4]
  300e18: 9b01         	ldr	r3, [sp, #0x4]
  300e1a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  300e1e: 4618         	mov	r0, r3
  300e20: b002         	add	sp, #0x8
  300e22: 4770         	bx	lr

// ==== CollisionObject::setTeamId
//      file offset 0x300e24 (= ELF address; Ghidra 0x310e24), 18 bytes, Thumb-2
  300e24: b082         	sub	sp, #0x8
  300e26: 9001         	str	r0, [sp, #0x4]
  300e28: 9100         	str	r1, [sp]
  300e2a: 9b01         	ldr	r3, [sp, #0x4]
  300e2c: 9a00         	ldr	r2, [sp]
  300e2e: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  300e32: b002         	add	sp, #0x8
  300e34: 4770         	bx	lr

// ==== CollisionObject::getIsCONTACT
//      file offset 0x345b14 (= ELF address; Ghidra 0x355b14), 16 bytes, Thumb-2
  345b14: b082         	sub	sp, #0x8
  345b16: 9001         	str	r0, [sp, #0x4]
  345b18: 9b01         	ldr	r3, [sp, #0x4]
  345b1a: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  345b1e: 4618         	mov	r0, r3
  345b20: b002         	add	sp, #0x8
  345b22: 4770         	bx	lr
