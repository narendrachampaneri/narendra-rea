// SoldierController: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 61 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SoldierController.cpp

// ==== SoldierController::SoldierController
//      file offset 0x3e3e1c (= ELF address; Ghidra 0x3f3e1c), 152 bytes, Thumb-2
  3e3e1c: b510         	push	{r4, lr}
  3e3e1e: b082         	sub	sp, #0x8
  3e3e20: 9001         	str	r0, [sp, #0x4]
  3e3e22: 4c22         	ldr	r4, [pc, #0x88]         @ 0x3e3eac <SoldierController::SoldierController()+0x90>
  3e3e24: 447c         	add	r4, pc
  3e3e26: 9b01         	ldr	r3, [sp, #0x4]
  3e3e28: 4618         	mov	r0, r3
  3e3e2a: f71c fed9    	bl	0x300be0 <CollisionObject::CollisionObject()> @ imm = #-0xe324e
  3e3e2e: 9b01         	ldr	r3, [sp, #0x4]
  3e3e30: 33f8         	adds	r3, #0xf8
  3e3e32: 4618         	mov	r0, r3
  3e3e34: f75b fc36    	bl	0x33f6a4 <WeaponFireDelegate::WeaponFireDelegate()> @ imm = #-0xa4794
  3e3e38: 9b01         	ldr	r3, [sp, #0x4]
  3e3e3a: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x3e3eb0 <SoldierController::SoldierController()+0x94>
  3e3e3c: 58a2         	ldr	r2, [r4, r2]
  3e3e3e: 3208         	adds	r2, #0x8
  3e3e40: 601a         	str	r2, [r3]
  3e3e42: 9b01         	ldr	r3, [sp, #0x4]
  3e3e44: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3e3eb0 <SoldierController::SoldierController()+0x94>
  3e3e46: 58a2         	ldr	r2, [r4, r2]
  3e3e48: f502 722c    	add.w	r2, r2, #0x2b0
  3e3e4c: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3e3e50: 9b01         	ldr	r3, [sp, #0x4]
  3e3e52: f503 7380    	add.w	r3, r3, #0x100
  3e3e56: 4618         	mov	r0, r3
  3e3e58: f3d1 f9aa    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3d1354
  3e3e5c: 9b01         	ldr	r3, [sp, #0x4]
  3e3e5e: f503 738a    	add.w	r3, r3, #0x114
  3e3e62: 4618         	mov	r0, r3
  3e3e64: f1ae ff36    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1aee6c
  3e3e68: 9b01         	ldr	r3, [sp, #0x4]
  3e3e6a: 2200         	movs	r2, #0x0
  3e3e6c: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e3e70: 9b01         	ldr	r3, [sp, #0x4]
  3e3e72: 2200         	movs	r2, #0x0
  3e3e74: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e3e78: 9b01         	ldr	r3, [sp, #0x4]
  3e3e7a: 2200         	movs	r2, #0x0
  3e3e7c: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e3e80: 9b01         	ldr	r3, [sp, #0x4]
  3e3e82: 2200         	movs	r2, #0x0
  3e3e84: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e3e88: 9b01         	ldr	r3, [sp, #0x4]
  3e3e8a: e00c         	b	0x3e3ea6 <SoldierController::SoldierController()+0x8a> @ imm = #0x18
  3e3e8c: 9b01         	ldr	r3, [sp, #0x4]
  3e3e8e: f503 7380    	add.w	r3, r3, #0x100
  3e3e92: 4618         	mov	r0, r3
  3e3e94: f3d1 fd3e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d1a7c
  3e3e98: e7ff         	b	0x3e3e9a <SoldierController::SoldierController()+0x7e> @ imm = #-0x2
  3e3e9a: 9b01         	ldr	r3, [sp, #0x4]
  3e3e9c: 4618         	mov	r0, r3
  3e3e9e: f71c fef3    	bl	0x300c88 <CollisionObject::~CollisionObject()> @ imm = #-0xe321a
  3e3ea2: f3a4 f903    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a4206
  3e3ea6: 4618         	mov	r0, r3
  3e3ea8: b002         	add	sp, #0x8
  3e3eaa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e3eab); words below are literal-pool data ---
  3e3eac: ebe4 0054    	<unknown>
  3e3eb0: df0c         	svc	#0xc
  3e3eb2: ffff b500    	<unknown>

// ==== SoldierController::init
//      file offset 0x3e3eb4 (= ELF address; Ghidra 0x3f3eb4), 204 bytes, Thumb-2
  3e3eb4: b500         	push	{lr}
  3e3eb6: b085         	sub	sp, #0x14
  3e3eb8: 9001         	str	r0, [sp, #0x4]
  3e3eba: 9b01         	ldr	r3, [sp, #0x4]
  3e3ebc: 4618         	mov	r0, r3
  3e3ebe: f71c feb1    	bl	0x300c24 <CollisionObject::init()> @ imm = #-0xe329e
  3e3ec2: 4603         	mov	r3, r0
  3e3ec4: f88d 300f    	strb.w	r3, [sp, #0xf]
  3e3ec8: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3e3ecc: f083 0301    	eor	r3, r3, #0x1
  3e3ed0: b2db         	uxtb	r3, r3
  3e3ed2: 2b00         	cmp	r3, #0x0
  3e3ed4: d001         	beq	0x3e3eda <SoldierController::init()+0x26> @ imm = #0x2
  3e3ed6: 2300         	movs	r3, #0x0
  3e3ed8: e04c         	b	0x3e3f74 <SoldierController::init()+0xc0> @ imm = #0x98
  3e3eda: 9b01         	ldr	r3, [sp, #0x4]
  3e3edc: f04f 0200    	mov.w	r2, #0x0
  3e3ee0: f2c4 22c8    	movt	r2, #0x42c8
  3e3ee4: f8c3 2144    	str.w	r2, [r3, #0x144]
  3e3ee8: 9b01         	ldr	r3, [sp, #0x4]
  3e3eea: f503 7380    	add.w	r3, r3, #0x100
  3e3eee: 4618         	mov	r0, r3
  3e3ef0: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3e3f7c <SoldierController::init()+0xc8>
  3e3ef2: 447b         	add	r3, pc
  3e3ef4: 4619         	mov	r1, r3
  3e3ef6: f3d1 ffbb    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3d1f76
  3e3efa: 9b01         	ldr	r3, [sp, #0x4]
  3e3efc: 2200         	movs	r2, #0x0
  3e3efe: f883 2158    	strb.w	r2, [r3, #0x158]
  3e3f02: 9b01         	ldr	r3, [sp, #0x4]
  3e3f04: 2200         	movs	r2, #0x0
  3e3f06: f883 2159    	strb.w	r2, [r3, #0x159]
  3e3f0a: 9b01         	ldr	r3, [sp, #0x4]
  3e3f0c: 2200         	movs	r2, #0x0
  3e3f0e: f883 215a    	strb.w	r2, [r3, #0x15a]
  3e3f12: 9b01         	ldr	r3, [sp, #0x4]
  3e3f14: 2200         	movs	r2, #0x0
  3e3f16: f883 20e6    	strb.w	r2, [r3, #0xe6]
  3e3f1a: 9b01         	ldr	r3, [sp, #0x4]
  3e3f1c: f04f 0200    	mov.w	r2, #0x0
  3e3f20: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3e3f24: 9b01         	ldr	r3, [sp, #0x4]
  3e3f26: 2200         	movs	r2, #0x0
  3e3f28: f8c3 2160    	str.w	r2, [r3, #0x160]
  3e3f2c: 9b01         	ldr	r3, [sp, #0x4]
  3e3f2e: 2200         	movs	r2, #0x0
  3e3f30: f883 215b    	strb.w	r2, [r3, #0x15b]
  3e3f34: 9b01         	ldr	r3, [sp, #0x4]
  3e3f36: 2206         	movs	r2, #0x6
  3e3f38: f8a3 2164    	strh.w	r2, [r3, #0x164]
  3e3f3c: 9b01         	ldr	r3, [sp, #0x4]
  3e3f3e: 2200         	movs	r2, #0x0
  3e3f40: f883 2166    	strb.w	r2, [r3, #0x166]
  3e3f44: 9901         	ldr	r1, [sp, #0x4]
  3e3f46: f04f 0200    	mov.w	r2, #0x0
  3e3f4a: f04f 0300    	mov.w	r3, #0x0
  3e3f4e: e9c1 235a    	strd	r2, r3, [r1, #360]
  3e3f52: 9901         	ldr	r1, [sp, #0x4]
  3e3f54: f04f 0200    	mov.w	r2, #0x0
  3e3f58: f04f 0300    	mov.w	r3, #0x0
  3e3f5c: e9c1 235c    	strd	r2, r3, [r1, #368]
  3e3f60: 9b01         	ldr	r3, [sp, #0x4]
  3e3f62: f04f 0200    	mov.w	r2, #0x0
  3e3f66: f8c3 2178    	str.w	r2, [r3, #0x178]
  3e3f6a: 9b01         	ldr	r3, [sp, #0x4]
  3e3f6c: 2201         	movs	r2, #0x1
  3e3f6e: f883 217c    	strb.w	r2, [r3, #0x17c]
  3e3f72: 2301         	movs	r3, #0x1
  3e3f74: 4618         	mov	r0, r3
  3e3f76: b005         	add	sp, #0x14
  3e3f78: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e3f7b); words below are literal-pool data ---
  3e3f7c: 42a2         	cmp	r2, r4
  3e3f7e: 003f         	movs	r7, r7

// ==== SoldierController::~SoldierController
//      file offset 0x3e3f80 (= ELF address; Ghidra 0x3f3f80), 196 bytes, Thumb-2
  3e3f80: b500         	push	{lr}
  3e3f82: b083         	sub	sp, #0xc
  3e3f84: 9001         	str	r0, [sp, #0x4]
  3e3f86: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3e403c <SoldierController::~SoldierController()+0xbc>
  3e3f88: 447b         	add	r3, pc
  3e3f8a: 9a01         	ldr	r2, [sp, #0x4]
  3e3f8c: 492c         	ldr	r1, [pc, #0xb0]         @ 0x3e4040 <SoldierController::~SoldierController()+0xc0>
  3e3f8e: 5859         	ldr	r1, [r3, r1]
  3e3f90: 3108         	adds	r1, #0x8
  3e3f92: 6011         	str	r1, [r2]
  3e3f94: 9a01         	ldr	r2, [sp, #0x4]
  3e3f96: 492a         	ldr	r1, [pc, #0xa8]         @ 0x3e4040 <SoldierController::~SoldierController()+0xc0>
  3e3f98: 585b         	ldr	r3, [r3, r1]
  3e3f9a: f503 732c    	add.w	r3, r3, #0x2b0
  3e3f9e: f8c2 30f8    	str.w	r3, [r2, #0xf8]
  3e3fa2: 9801         	ldr	r0, [sp, #0x4]
  3e3fa4: f000 f87e    	bl	0x3e40a4 <SoldierController::unSyncBody()> @ imm = #0xfc
  3e3fa8: 9801         	ldr	r0, [sp, #0x4]
  3e3faa: f000 f8cb    	bl	0x3e4144 <SoldierController::removeBodyShape()> @ imm = #0x196
  3e3fae: 9b01         	ldr	r3, [sp, #0x4]
  3e3fb0: 2200         	movs	r2, #0x0
  3e3fb2: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e3fb6: 9b01         	ldr	r3, [sp, #0x4]
  3e3fb8: 2200         	movs	r2, #0x0
  3e3fba: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e3fbe: 9b01         	ldr	r3, [sp, #0x4]
  3e3fc0: 2200         	movs	r2, #0x0
  3e3fc2: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e3fc6: 9b01         	ldr	r3, [sp, #0x4]
  3e3fc8: 2200         	movs	r2, #0x0
  3e3fca: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3e3fce: 9b01         	ldr	r3, [sp, #0x4]
  3e3fd0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e3fd4: 2b00         	cmp	r3, #0x0
  3e3fd6: d005         	beq	0x3e3fe4 <SoldierController::~SoldierController()+0x64> @ imm = #0xa
  3e3fd8: 9b01         	ldr	r3, [sp, #0x4]
  3e3fda: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e3fde: 4618         	mov	r0, r3
  3e3fe0: f2f1 f804    	bl	0x6d4fec <cpShapeFree>  @ imm = #0x2f1008
  3e3fe4: 9b01         	ldr	r3, [sp, #0x4]
  3e3fe6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e3fea: 2b00         	cmp	r3, #0x0
  3e3fec: d005         	beq	0x3e3ffa <SoldierController::~SoldierController()+0x7a> @ imm = #0xa
  3e3fee: 9b01         	ldr	r3, [sp, #0x4]
  3e3ff0: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e3ff4: 4618         	mov	r0, r3
  3e3ff6: f2f0 fff9    	bl	0x6d4fec <cpShapeFree>  @ imm = #0x2f0ff2
  3e3ffa: 9b01         	ldr	r3, [sp, #0x4]
  3e3ffc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e4000: 2b00         	cmp	r3, #0x0
  3e4002: d005         	beq	0x3e4010 <SoldierController::~SoldierController()+0x90> @ imm = #0xa
  3e4004: 9b01         	ldr	r3, [sp, #0x4]
  3e4006: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e400a: 4618         	mov	r0, r3
  3e400c: f2ef f8a0    	bl	0x6d3150 <cpBodyFree>   @ imm = #0x2ef140
  3e4010: 9b01         	ldr	r3, [sp, #0x4]
  3e4012: f503 7380    	add.w	r3, r3, #0x100
  3e4016: 4618         	mov	r0, r3
  3e4018: f3d1 fc7c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d18f8
  3e401c: 9b01         	ldr	r3, [sp, #0x4]
  3e401e: 4618         	mov	r0, r3
  3e4020: f71c fe32    	bl	0x300c88 <CollisionObject::~CollisionObject()> @ imm = #-0xe339c
  3e4024: 2300         	movs	r3, #0x0
  3e4026: 2b00         	cmp	r3, #0x0
  3e4028: d002         	beq	0x3e4030 <SoldierController::~SoldierController()+0xb0> @ imm = #0x4
  3e402a: 9801         	ldr	r0, [sp, #0x4]
  3e402c: f3a4 f83a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3a4074
  3e4030: 9b01         	ldr	r3, [sp, #0x4]
  3e4032: 4618         	mov	r0, r3
  3e4034: b003         	add	sp, #0xc
  3e4036: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e4039); words below are literal-pool data ---
  3e403a: bf00         	nop
  3e403c: ea80 0054    	eor.w	r0, r0, r4, lsr #1
  3e4040: df0c         	svc	#0xc
  3e4042: ffff b500    	<unknown>

// ==== SoldierController::~SoldierController
//      file offset 0x3e4044 (= ELF address; Ghidra 0x3f4044), 28 bytes, Thumb-2
  3e4044: b500         	push	{lr}
  3e4046: b083         	sub	sp, #0xc
  3e4048: 9001         	str	r0, [sp, #0x4]
  3e404a: 9801         	ldr	r0, [sp, #0x4]
  3e404c: f7ff ff98    	bl	0x3e3f80 <SoldierController::~SoldierController()> @ imm = #-0xd0
  3e4050: 9801         	ldr	r0, [sp, #0x4]
  3e4052: f3a4 f827    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3a404e
  3e4056: 9b01         	ldr	r3, [sp, #0x4]
  3e4058: 4618         	mov	r0, r3
  3e405a: b003         	add	sp, #0xc
  3e405c: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::reset
//      file offset 0x3e4060 (= ELF address; Ghidra 0x3f4060), 68 bytes, Thumb-2
  3e4060: b082         	sub	sp, #0x8
  3e4062: 9001         	str	r0, [sp, #0x4]
  3e4064: 9b01         	ldr	r3, [sp, #0x4]
  3e4066: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e406a: f04f 0200    	mov.w	r2, #0x0
  3e406e: f04f 0300    	mov.w	r3, #0x0
  3e4072: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e4076: f04f 0200    	mov.w	r2, #0x0
  3e407a: f04f 0300    	mov.w	r3, #0x0
  3e407e: e9c1 2310    	strd	r2, r3, [r1, #64]
  3e4082: 9b01         	ldr	r3, [sp, #0x4]
  3e4084: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e4088: f04f 0200    	mov.w	r2, #0x0
  3e408c: f04f 0300    	mov.w	r3, #0x0
  3e4090: e9c1 2312    	strd	r2, r3, [r1, #72]
  3e4094: f04f 0200    	mov.w	r2, #0x0
  3e4098: f04f 0300    	mov.w	r3, #0x0
  3e409c: e9c1 2314    	strd	r2, r3, [r1, #80]
  3e40a0: b002         	add	sp, #0x8
  3e40a2: 4770         	bx	lr

// ==== SoldierController::unSyncBody
//      file offset 0x3e40a4 (= ELF address; Ghidra 0x3f40a4), 50 bytes, Thumb-2
  3e40a4: b082         	sub	sp, #0x8
  3e40a6: 9001         	str	r0, [sp, #0x4]
  3e40a8: 9b01         	ldr	r3, [sp, #0x4]
  3e40aa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e40ae: 2b00         	cmp	r3, #0x0
  3e40b0: d00f         	beq	0x3e40d2 <SoldierController::unSyncBody()+0x2e> @ imm = #0x1e
  3e40b2: 9b01         	ldr	r3, [sp, #0x4]
  3e40b4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e40b8: 2200         	movs	r2, #0x0
  3e40ba: f8c3 2090    	str.w	r2, [r3, #0x90]
  3e40be: 9b01         	ldr	r3, [sp, #0x4]
  3e40c0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e40c4: 2200         	movs	r2, #0x0
  3e40c6: 651a         	str	r2, [r3, #0x50]
  3e40c8: 9b01         	ldr	r3, [sp, #0x4]
  3e40ca: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e40ce: 2200         	movs	r2, #0x0
  3e40d0: 651a         	str	r2, [r3, #0x50]
  3e40d2: b002         	add	sp, #0x8
  3e40d4: 4770         	bx	lr

// ==== SoldierController::addBodyShape
//      file offset 0x3e40d8 (= ELF address; Ghidra 0x3f40d8), 108 bytes, Thumb-2
  3e40d8: b510         	push	{r4, lr}
  3e40da: b082         	sub	sp, #0x8
  3e40dc: 9001         	str	r0, [sp, #0x4]
  3e40de: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x3e413c <SoldierController::addBodyShape()+0x64>
  3e40e0: 447c         	add	r4, pc
  3e40e2: 9b01         	ldr	r3, [sp, #0x4]
  3e40e4: f893 3158    	ldrb.w	r3, [r3, #0x158]
  3e40e8: f083 0301    	eor	r3, r3, #0x1
  3e40ec: b2db         	uxtb	r3, r3
  3e40ee: 2b00         	cmp	r3, #0x0
  3e40f0: d021         	beq	0x3e4136 <SoldierController::addBodyShape()+0x5e> @ imm = #0x42
  3e40f2: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3e4140 <SoldierController::addBodyShape()+0x68>
  3e40f4: 58e3         	ldr	r3, [r4, r3]
  3e40f6: 681a         	ldr	r2, [r3]
  3e40f8: 9b01         	ldr	r3, [sp, #0x4]
  3e40fa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e40fe: 4610         	mov	r0, r2
  3e4100: 4619         	mov	r1, r3
  3e4102: f2f1 fe47    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x2f1c8e
  3e4106: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3e4140 <SoldierController::addBodyShape()+0x68>
  3e4108: 58e3         	ldr	r3, [r4, r3]
  3e410a: 681a         	ldr	r2, [r3]
  3e410c: 9b01         	ldr	r3, [sp, #0x4]
  3e410e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e4112: 4610         	mov	r0, r2
  3e4114: 4619         	mov	r1, r3
  3e4116: f2f2 f877    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x2f20ee
  3e411a: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3e4140 <SoldierController::addBodyShape()+0x68>
  3e411c: 58e3         	ldr	r3, [r4, r3]
  3e411e: 681a         	ldr	r2, [r3]
  3e4120: 9b01         	ldr	r3, [sp, #0x4]
  3e4122: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e4126: 4610         	mov	r0, r2
  3e4128: 4619         	mov	r1, r3
  3e412a: f2f2 f86d    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x2f20da
  3e412e: 9b01         	ldr	r3, [sp, #0x4]
  3e4130: 2201         	movs	r2, #0x1
  3e4132: f883 2158    	strb.w	r2, [r3, #0x158]
  3e4136: b002         	add	sp, #0x8
  3e4138: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e4139); words below are literal-pool data ---
  3e413a: bf00         	nop
  3e413c: e928 0054    	stmdb	r8!, {r2, r4, r6}
  3e4140: da00         	bge	0x3e4144 <SoldierController::removeBodyShape()> @ imm = #0x0
  3e4142: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SoldierController::removeBodyShape
//      file offset 0x3e4144 (= ELF address; Ghidra 0x3f4144), 100 bytes, Thumb-2
  3e4144: b510         	push	{r4, lr}
  3e4146: b082         	sub	sp, #0x8
  3e4148: 9001         	str	r0, [sp, #0x4]
  3e414a: 4c15         	ldr	r4, [pc, #0x54]         @ 0x3e41a0 <SoldierController::removeBodyShape()+0x5c>
  3e414c: 447c         	add	r4, pc
  3e414e: 9b01         	ldr	r3, [sp, #0x4]
  3e4150: f893 3158    	ldrb.w	r3, [r3, #0x158]
  3e4154: 2b00         	cmp	r3, #0x0
  3e4156: d021         	beq	0x3e419c <SoldierController::removeBodyShape()+0x58> @ imm = #0x42
  3e4158: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3e41a4 <SoldierController::removeBodyShape()+0x60>
  3e415a: 58e3         	ldr	r3, [r4, r3]
  3e415c: 681a         	ldr	r2, [r3]
  3e415e: 9b01         	ldr	r3, [sp, #0x4]
  3e4160: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e4164: 4610         	mov	r0, r2
  3e4166: 4619         	mov	r1, r3
  3e4168: f2f2 f8c1    	bl	0x6d62ee <cpSpaceRemoveBody> @ imm = #0x2f2182
  3e416c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3e41a4 <SoldierController::removeBodyShape()+0x60>
  3e416e: 58e3         	ldr	r3, [r4, r3]
  3e4170: 681a         	ldr	r2, [r3]
  3e4172: 9b01         	ldr	r3, [sp, #0x4]
  3e4174: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e4178: 4610         	mov	r0, r2
  3e417a: 4619         	mov	r1, r3
  3e417c: f2f2 f87e    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x2f20fc
  3e4180: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3e41a4 <SoldierController::removeBodyShape()+0x60>
  3e4182: 58e3         	ldr	r3, [r4, r3]
  3e4184: 681a         	ldr	r2, [r3]
  3e4186: 9b01         	ldr	r3, [sp, #0x4]
  3e4188: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e418c: 4610         	mov	r0, r2
  3e418e: 4619         	mov	r1, r3
  3e4190: f2f2 f874    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x2f20e8
  3e4194: 9b01         	ldr	r3, [sp, #0x4]
  3e4196: 2200         	movs	r2, #0x0
  3e4198: f883 2158    	strb.w	r2, [r3, #0x158]
  3e419c: b002         	add	sp, #0x8
  3e419e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e419f); words below are literal-pool data ---
  3e41a0: e8bc 0054    	ldm.w	r12!, {r2, r4, r6}
  3e41a4: da00         	bge	0x3e41a8 <SoldierController::initBody()> @ imm = #0x0
  3e41a6: ffff b082    	<unknown>

// ==== SoldierController::initBody
//      file offset 0x3e41a8 (= ELF address; Ghidra 0x3f41a8), 8 bytes, Thumb-2
  3e41a8: b082         	sub	sp, #0x8
  3e41aa: 9001         	str	r0, [sp, #0x4]
  3e41ac: b002         	add	sp, #0x8
  3e41ae: 4770         	bx	lr

// ==== SoldierController::initShape
//      file offset 0x3e41b0 (= ELF address; Ghidra 0x3f41b0), 8 bytes, Thumb-2
  3e41b0: b082         	sub	sp, #0x8
  3e41b2: 9001         	str	r0, [sp, #0x4]
  3e41b4: b002         	add	sp, #0x8
  3e41b6: 4770         	bx	lr

// ==== SoldierController::updateStep
//      file offset 0x3e41b8 (= ELF address; Ghidra 0x3f41b8), 10 bytes, Thumb-2
  3e41b8: b082         	sub	sp, #0x8
  3e41ba: 9001         	str	r0, [sp, #0x4]
  3e41bc: 9100         	str	r1, [sp]
  3e41be: b002         	add	sp, #0x8
  3e41c0: 4770         	bx	lr

// ==== SoldierController::setMaxPower
//      file offset 0x3e41c4 (= ELF address; Ghidra 0x3f41c4), 18 bytes, Thumb-2
  3e41c4: b082         	sub	sp, #0x8
  3e41c6: 9001         	str	r0, [sp, #0x4]
  3e41c8: 9100         	str	r1, [sp]
  3e41ca: 9b01         	ldr	r3, [sp, #0x4]
  3e41cc: 9a00         	ldr	r2, [sp]
  3e41ce: f8c3 2180    	str.w	r2, [r3, #0x180]
  3e41d2: b002         	add	sp, #0x8
  3e41d4: 4770         	bx	lr

// ==== SoldierController::getMaxPower
//      file offset 0x3e41d8 (= ELF address; Ghidra 0x3f41d8), 16 bytes, Thumb-2
  3e41d8: b082         	sub	sp, #0x8
  3e41da: 9001         	str	r0, [sp, #0x4]
  3e41dc: 9b01         	ldr	r3, [sp, #0x4]
  3e41de: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  3e41e2: 4618         	mov	r0, r3
  3e41e4: b002         	add	sp, #0x8
  3e41e6: 4770         	bx	lr

// ==== SoldierController::setFireAngle
//      file offset 0x3e41e8 (= ELF address; Ghidra 0x3f41e8), 18 bytes, Thumb-2
  3e41e8: b082         	sub	sp, #0x8
  3e41ea: 9001         	str	r0, [sp, #0x4]
  3e41ec: 9100         	str	r1, [sp]
  3e41ee: 9b01         	ldr	r3, [sp, #0x4]
  3e41f0: 9a00         	ldr	r2, [sp]
  3e41f2: f8c3 2110    	str.w	r2, [r3, #0x110]
  3e41f6: b002         	add	sp, #0x8
  3e41f8: 4770         	bx	lr

// ==== SoldierController::getDualFireAngle
//      file offset 0x3e41fc (= ELF address; Ghidra 0x3f41fc), 16 bytes, Thumb-2
  3e41fc: b082         	sub	sp, #0x8
  3e41fe: 9001         	str	r0, [sp, #0x4]
  3e4200: 9b01         	ldr	r3, [sp, #0x4]
  3e4202: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e4206: 4618         	mov	r0, r3
  3e4208: b002         	add	sp, #0x8
  3e420a: 4770         	bx	lr

// ==== SoldierController::getFireAngle
//      file offset 0x3e420c (= ELF address; Ghidra 0x3f420c), 16 bytes, Thumb-2
  3e420c: b082         	sub	sp, #0x8
  3e420e: 9001         	str	r0, [sp, #0x4]
  3e4210: 9b01         	ldr	r3, [sp, #0x4]
  3e4212: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e4216: 4618         	mov	r0, r3
  3e4218: b002         	add	sp, #0x8
  3e421a: 4770         	bx	lr

// ==== SoldierController::setThrust
//      file offset 0x3e421c (= ELF address; Ghidra 0x3f421c), 24 bytes, Thumb-2
  3e421c: b082         	sub	sp, #0x8
  3e421e: 9001         	str	r0, [sp, #0x4]
  3e4220: 460b         	mov	r3, r1
  3e4222: f88d 3003    	strb.w	r3, [sp, #0x3]
  3e4226: 9b01         	ldr	r3, [sp, #0x4]
  3e4228: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3e422c: f883 2104    	strb.w	r2, [r3, #0x104]
  3e4230: b002         	add	sp, #0x8
  3e4232: 4770         	bx	lr

// ==== SoldierController::getThrust
//      file offset 0x3e4234 (= ELF address; Ghidra 0x3f4234), 16 bytes, Thumb-2
  3e4234: b082         	sub	sp, #0x8
  3e4236: 9001         	str	r0, [sp, #0x4]
  3e4238: 9b01         	ldr	r3, [sp, #0x4]
  3e423a: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e423e: 4618         	mov	r0, r3
  3e4240: b002         	add	sp, #0x8
  3e4242: 4770         	bx	lr

// ==== SoldierController::getMove
//      file offset 0x3e4244 (= ELF address; Ghidra 0x3f4244), 16 bytes, Thumb-2
  3e4244: b082         	sub	sp, #0x8
  3e4246: 9001         	str	r0, [sp, #0x4]
  3e4248: 9b01         	ldr	r3, [sp, #0x4]
  3e424a: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e424e: 4618         	mov	r0, r3
  3e4250: b002         	add	sp, #0x8
  3e4252: 4770         	bx	lr

// ==== SoldierController::getThrustFactor
//      file offset 0x3e4254 (= ELF address; Ghidra 0x3f4254), 26 bytes, Thumb-2
  3e4254: b082         	sub	sp, #0x8
  3e4256: 9001         	str	r0, [sp, #0x4]
  3e4258: 9b01         	ldr	r3, [sp, #0x4]
  3e425a: edd3 7a43    	vldr	s15, [r3, #268]
  3e425e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e4262: ec53 2b17    	vmov	r2, r3, d7
  3e4266: 4610         	mov	r0, r2
  3e4268: 4619         	mov	r1, r3
  3e426a: b002         	add	sp, #0x8
  3e426c: 4770         	bx	lr

// ==== SoldierController::setSoldierView
//      file offset 0x3e4270 (= ELF address; Ghidra 0x3f4270), 18 bytes, Thumb-2
  3e4270: b082         	sub	sp, #0x8
  3e4272: 9001         	str	r0, [sp, #0x4]
  3e4274: 9100         	str	r1, [sp]
  3e4276: 9b01         	ldr	r3, [sp, #0x4]
  3e4278: 9a00         	ldr	r2, [sp]
  3e427a: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3e427e: b002         	add	sp, #0x8
  3e4280: 4770         	bx	lr

// ==== SoldierController::getSoldierView
//      file offset 0x3e4284 (= ELF address; Ghidra 0x3f4284), 16 bytes, Thumb-2
  3e4284: b082         	sub	sp, #0x8
  3e4286: 9001         	str	r0, [sp, #0x4]
  3e4288: 9b01         	ldr	r3, [sp, #0x4]
  3e428a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e428e: 4618         	mov	r0, r3
  3e4290: b002         	add	sp, #0x8
  3e4292: 4770         	bx	lr

// ==== SoldierController::setJoyOffset
//      file offset 0x3e4294 (= ELF address; Ghidra 0x3f4294), 72 bytes, Thumb-2
  3e4294: b082         	sub	sp, #0x8
  3e4296: b510         	push	{r4, lr}
  3e4298: b084         	sub	sp, #0x10
  3e429a: 9001         	str	r0, [sp, #0x4]
  3e429c: a906         	add	r1, sp, #0x18
  3e429e: e881 000c    	stm.w	r1, {r2, r3}
  3e42a2: 9b01         	ldr	r3, [sp, #0x4]
  3e42a4: f503 748a    	add.w	r4, r3, #0x114
  3e42a8: ed9d 7b06    	vldr	d7, [sp, #24]
  3e42ac: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3e42b0: ed9d 7b08    	vldr	d7, [sp, #32]
  3e42b4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e42b8: ab02         	add	r3, sp, #0x8
  3e42ba: 4618         	mov	r0, r3
  3e42bc: ee16 1a90    	vmov	r1, s13
  3e42c0: ee17 2a90    	vmov	r2, s15
  3e42c4: f1ae fd14    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1aea28
  3e42c8: ab02         	add	r3, sp, #0x8
  3e42ca: 4620         	mov	r0, r4
  3e42cc: 4619         	mov	r1, r3
  3e42ce: f1ae fd3d    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1aea7a
  3e42d2: b004         	add	sp, #0x10
  3e42d4: e8bd 4010    	pop.w	{r4, lr}
  3e42d8: b002         	add	sp, #0x8
  3e42da: 4770         	bx	lr

// ==== SoldierController::getJoyPadOffset
//      file offset 0x3e42dc (= ELF address; Ghidra 0x3f42dc), 52 bytes, Thumb-2
  3e42dc: b500         	push	{lr}
  3e42de: b083         	sub	sp, #0xc
  3e42e0: 9001         	str	r0, [sp, #0x4]
  3e42e2: 9100         	str	r1, [sp]
  3e42e4: 9b00         	ldr	r3, [sp]
  3e42e6: edd3 7a45    	vldr	s15, [r3, #276]
  3e42ea: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e42ee: 9b00         	ldr	r3, [sp]
  3e42f0: edd3 7a46    	vldr	s15, [r3, #280]
  3e42f4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e42f8: 9b01         	ldr	r3, [sp, #0x4]
  3e42fa: 4618         	mov	r0, r3
  3e42fc: eeb0 0b46    	vmov.f64	d0, d6
  3e4300: eeb0 1b47    	vmov.f64	d1, d7
  3e4304: f7fe fd12    	bl	0x3e2d2c <non-virtual thunk to SoldierAIController::weaponDidFire(Item*)+0x220> @ imm = #-0x15dc
  3e4308: 9801         	ldr	r0, [sp, #0x4]
  3e430a: b003         	add	sp, #0xc
  3e430c: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::getShellPoint
//      file offset 0x3e4310 (= ELF address; Ghidra 0x3f4310), 84 bytes, Thumb-2
  3e4310: b500         	push	{lr}
  3e4312: b083         	sub	sp, #0xc
  3e4314: 9001         	str	r0, [sp, #0x4]
  3e4316: 9100         	str	r1, [sp]
  3e4318: 9b00         	ldr	r3, [sp]
  3e431a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e431e: 2b00         	cmp	r3, #0x0
  3e4320: d00e         	beq	0x3e4340 <SoldierController::getShellPoint()+0x30> @ imm = #0x1c
  3e4322: 9b00         	ldr	r3, [sp]
  3e4324: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e4328: 681b         	ldr	r3, [r3]
  3e432a: f503 7319    	add.w	r3, r3, #0x264
  3e432e: 681b         	ldr	r3, [r3]
  3e4330: 9a00         	ldr	r2, [sp]
  3e4332: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e4336: 9901         	ldr	r1, [sp, #0x4]
  3e4338: 4608         	mov	r0, r1
  3e433a: 4611         	mov	r1, r2
  3e433c: 4798         	blx	r3
  3e433e: e00d         	b	0x3e435c <SoldierController::getShellPoint()+0x4c> @ imm = #0x1a
  3e4340: 9901         	ldr	r1, [sp, #0x4]
  3e4342: f04f 0200    	mov.w	r2, #0x0
  3e4346: f04f 0300    	mov.w	r3, #0x0
  3e434a: e9c1 2300    	strd	r2, r3, [r1]
  3e434e: 9901         	ldr	r1, [sp, #0x4]
  3e4350: f04f 0200    	mov.w	r2, #0x0
  3e4354: f04f 0300    	mov.w	r3, #0x0
  3e4358: e9c1 2302    	strd	r2, r3, [r1, #8]
  3e435c: 9801         	ldr	r0, [sp, #0x4]
  3e435e: b003         	add	sp, #0xc
  3e4360: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::getFiringPoint
//      file offset 0x3e4364 (= ELF address; Ghidra 0x3f4364), 84 bytes, Thumb-2
  3e4364: b500         	push	{lr}
  3e4366: b083         	sub	sp, #0xc
  3e4368: 9001         	str	r0, [sp, #0x4]
  3e436a: 9100         	str	r1, [sp]
  3e436c: 9b00         	ldr	r3, [sp]
  3e436e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e4372: 2b00         	cmp	r3, #0x0
  3e4374: d00e         	beq	0x3e4394 <SoldierController::getFiringPoint()+0x30> @ imm = #0x1c
  3e4376: 9b00         	ldr	r3, [sp]
  3e4378: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e437c: 681b         	ldr	r3, [r3]
  3e437e: f503 7348    	add.w	r3, r3, #0x320
  3e4382: 681b         	ldr	r3, [r3]
  3e4384: 9a00         	ldr	r2, [sp]
  3e4386: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e438a: 9901         	ldr	r1, [sp, #0x4]
  3e438c: 4608         	mov	r0, r1
  3e438e: 4611         	mov	r1, r2
  3e4390: 4798         	blx	r3
  3e4392: e00d         	b	0x3e43b0 <SoldierController::getFiringPoint()+0x4c> @ imm = #0x1a
  3e4394: 9901         	ldr	r1, [sp, #0x4]
  3e4396: f04f 0200    	mov.w	r2, #0x0
  3e439a: f04f 0300    	mov.w	r3, #0x0
  3e439e: e9c1 2300    	strd	r2, r3, [r1]
  3e43a2: 9901         	ldr	r1, [sp, #0x4]
  3e43a4: f04f 0200    	mov.w	r2, #0x0
  3e43a8: f04f 0300    	mov.w	r3, #0x0
  3e43ac: e9c1 2302    	strd	r2, r3, [r1, #8]
  3e43b0: 9801         	ldr	r0, [sp, #0x4]
  3e43b2: b003         	add	sp, #0xc
  3e43b4: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::addPrimaryWeapon
//      file offset 0x3e43b8 (= ELF address; Ghidra 0x3f43b8), 10 bytes, Thumb-2
  3e43b8: b082         	sub	sp, #0x8
  3e43ba: 9001         	str	r0, [sp, #0x4]
  3e43bc: 9100         	str	r1, [sp]
  3e43be: b002         	add	sp, #0x8
  3e43c0: 4770         	bx	lr

// ==== SoldierController::addSecondaryWeapon
//      file offset 0x3e43c4 (= ELF address; Ghidra 0x3f43c4), 10 bytes, Thumb-2
  3e43c4: b082         	sub	sp, #0x8
  3e43c6: 9001         	str	r0, [sp, #0x4]
  3e43c8: 9100         	str	r1, [sp]
  3e43ca: b002         	add	sp, #0x8
  3e43cc: 4770         	bx	lr

// ==== SoldierController::addDualWeapon
//      file offset 0x3e43d0 (= ELF address; Ghidra 0x3f43d0), 10 bytes, Thumb-2
  3e43d0: b082         	sub	sp, #0x8
  3e43d2: 9001         	str	r0, [sp, #0x4]
  3e43d4: 9100         	str	r1, [sp]
  3e43d6: b002         	add	sp, #0x8
  3e43d8: 4770         	bx	lr

// ==== SoldierController::addSideWeapon
//      file offset 0x3e43dc (= ELF address; Ghidra 0x3f43dc), 10 bytes, Thumb-2
  3e43dc: b082         	sub	sp, #0x8
  3e43de: 9001         	str	r0, [sp, #0x4]
  3e43e0: 9100         	str	r1, [sp]
  3e43e2: b002         	add	sp, #0x8
  3e43e4: 4770         	bx	lr

// ==== SoldierController::removeAllWeapons
//      file offset 0x3e43e8 (= ELF address; Ghidra 0x3f43e8), 68 bytes, Thumb-2
  3e43e8: b500         	push	{lr}
  3e43ea: b083         	sub	sp, #0xc
  3e43ec: 9001         	str	r0, [sp, #0x4]
  3e43ee: 9b01         	ldr	r3, [sp, #0x4]
  3e43f0: 681b         	ldr	r3, [r3]
  3e43f2: f503 7302    	add.w	r3, r3, #0x208
  3e43f6: 681b         	ldr	r3, [r3]
  3e43f8: 9801         	ldr	r0, [sp, #0x4]
  3e43fa: 4798         	blx	r3
  3e43fc: 9b01         	ldr	r3, [sp, #0x4]
  3e43fe: 681b         	ldr	r3, [r3]
  3e4400: f503 7301    	add.w	r3, r3, #0x204
  3e4404: 681b         	ldr	r3, [r3]
  3e4406: 9801         	ldr	r0, [sp, #0x4]
  3e4408: 4798         	blx	r3
  3e440a: 9b01         	ldr	r3, [sp, #0x4]
  3e440c: 681b         	ldr	r3, [r3]
  3e440e: f503 7304    	add.w	r3, r3, #0x210
  3e4412: 681b         	ldr	r3, [r3]
  3e4414: 9801         	ldr	r0, [sp, #0x4]
  3e4416: 4798         	blx	r3
  3e4418: 9b01         	ldr	r3, [sp, #0x4]
  3e441a: 681b         	ldr	r3, [r3]
  3e441c: f503 7303    	add.w	r3, r3, #0x20c
  3e4420: 681b         	ldr	r3, [r3]
  3e4422: 9801         	ldr	r0, [sp, #0x4]
  3e4424: 4798         	blx	r3
  3e4426: b003         	add	sp, #0xc
  3e4428: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::removeAllDependencies
//      file offset 0x3e442c (= ELF address; Ghidra 0x3f442c), 42 bytes, Thumb-2
  3e442c: b500         	push	{lr}
  3e442e: b083         	sub	sp, #0xc
  3e4430: 9001         	str	r0, [sp, #0x4]
  3e4432: 9b01         	ldr	r3, [sp, #0x4]
  3e4434: 681b         	ldr	r3, [r3]
  3e4436: f503 7324    	add.w	r3, r3, #0x290
  3e443a: 681b         	ldr	r3, [r3]
  3e443c: 9801         	ldr	r0, [sp, #0x4]
  3e443e: 4798         	blx	r3
  3e4440: 9b01         	ldr	r3, [sp, #0x4]
  3e4442: 681b         	ldr	r3, [r3]
  3e4444: f503 73ea    	add.w	r3, r3, #0x1d4
  3e4448: 681b         	ldr	r3, [r3]
  3e444a: 9801         	ldr	r0, [sp, #0x4]
  3e444c: 2100         	movs	r1, #0x0
  3e444e: 4798         	blx	r3
  3e4450: b003         	add	sp, #0xc
  3e4452: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::removeSideWeapon
//      file offset 0x3e4458 (= ELF address; Ghidra 0x3f4458), 8 bytes, Thumb-2
  3e4458: b082         	sub	sp, #0x8
  3e445a: 9001         	str	r0, [sp, #0x4]
  3e445c: b002         	add	sp, #0x8
  3e445e: 4770         	bx	lr

// ==== SoldierController::removePrimaryWeapon
//      file offset 0x3e4460 (= ELF address; Ghidra 0x3f4460), 8 bytes, Thumb-2
  3e4460: b082         	sub	sp, #0x8
  3e4462: 9001         	str	r0, [sp, #0x4]
  3e4464: b002         	add	sp, #0x8
  3e4466: 4770         	bx	lr

// ==== SoldierController::removeSecondaryWeapon
//      file offset 0x3e4468 (= ELF address; Ghidra 0x3f4468), 8 bytes, Thumb-2
  3e4468: b082         	sub	sp, #0x8
  3e446a: 9001         	str	r0, [sp, #0x4]
  3e446c: b002         	add	sp, #0x8
  3e446e: 4770         	bx	lr

// ==== SoldierController::removeDualWeapon
//      file offset 0x3e4470 (= ELF address; Ghidra 0x3f4470), 8 bytes, Thumb-2
  3e4470: b082         	sub	sp, #0x8
  3e4472: 9001         	str	r0, [sp, #0x4]
  3e4474: b002         	add	sp, #0x8
  3e4476: 4770         	bx	lr

// ==== SoldierController::getPrimaryWeapon
//      file offset 0x3e4478 (= ELF address; Ghidra 0x3f4478), 16 bytes, Thumb-2
  3e4478: b082         	sub	sp, #0x8
  3e447a: 9001         	str	r0, [sp, #0x4]
  3e447c: 9b01         	ldr	r3, [sp, #0x4]
  3e447e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e4482: 4618         	mov	r0, r3
  3e4484: b002         	add	sp, #0x8
  3e4486: 4770         	bx	lr

// ==== SoldierController::getSecondaryWeapon
//      file offset 0x3e4488 (= ELF address; Ghidra 0x3f4488), 16 bytes, Thumb-2
  3e4488: b082         	sub	sp, #0x8
  3e448a: 9001         	str	r0, [sp, #0x4]
  3e448c: 9b01         	ldr	r3, [sp, #0x4]
  3e448e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e4492: 4618         	mov	r0, r3
  3e4494: b002         	add	sp, #0x8
  3e4496: 4770         	bx	lr

// ==== SoldierController::getDualWeapon
//      file offset 0x3e4498 (= ELF address; Ghidra 0x3f4498), 16 bytes, Thumb-2
  3e4498: b082         	sub	sp, #0x8
  3e449a: 9001         	str	r0, [sp, #0x4]
  3e449c: 9b01         	ldr	r3, [sp, #0x4]
  3e449e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e44a2: 4618         	mov	r0, r3
  3e44a4: b002         	add	sp, #0x8
  3e44a6: 4770         	bx	lr

// ==== SoldierController::getSideWeapon
//      file offset 0x3e44a8 (= ELF address; Ghidra 0x3f44a8), 16 bytes, Thumb-2
  3e44a8: b082         	sub	sp, #0x8
  3e44aa: 9001         	str	r0, [sp, #0x4]
  3e44ac: 9b01         	ldr	r3, [sp, #0x4]
  3e44ae: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e44b2: 4618         	mov	r0, r3
  3e44b4: b002         	add	sp, #0x8
  3e44b6: 4770         	bx	lr

// ==== SoldierController::fire
//      file offset 0x3e44b8 (= ELF address; Ghidra 0x3f44b8), 50 bytes, Thumb-2
  3e44b8: b500         	push	{lr}
  3e44ba: b083         	sub	sp, #0xc
  3e44bc: 9001         	str	r0, [sp, #0x4]
  3e44be: 9100         	str	r1, [sp]
  3e44c0: 9b01         	ldr	r3, [sp, #0x4]
  3e44c2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e44c6: 2b00         	cmp	r3, #0x0
  3e44c8: d00c         	beq	0x3e44e4 <SoldierController::fire(float)+0x2c> @ imm = #0x18
  3e44ca: 9b01         	ldr	r3, [sp, #0x4]
  3e44cc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e44d0: 681b         	ldr	r3, [r3]
  3e44d2: f503 7317    	add.w	r3, r3, #0x25c
  3e44d6: 681b         	ldr	r3, [r3]
  3e44d8: 9a01         	ldr	r2, [sp, #0x4]
  3e44da: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e44de: 4610         	mov	r0, r2
  3e44e0: 9900         	ldr	r1, [sp]
  3e44e2: 4798         	blx	r3
  3e44e4: b003         	add	sp, #0xc
  3e44e6: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::setPeerName
//      file offset 0x3e44ec (= ELF address; Ghidra 0x3f44ec), 60 bytes, Thumb-2
  3e44ec: b510         	push	{r4, lr}
  3e44ee: b084         	sub	sp, #0x10
  3e44f0: 9001         	str	r0, [sp, #0x4]
  3e44f2: 9100         	str	r1, [sp]
  3e44f4: 9b01         	ldr	r3, [sp, #0x4]
  3e44f6: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e44fa: ab03         	add	r3, sp, #0xc
  3e44fc: 4618         	mov	r0, r3
  3e44fe: 9900         	ldr	r1, [sp]
  3e4500: f3d1 fff2    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1fe4
  3e4504: ab03         	add	r3, sp, #0xc
  3e4506: 4620         	mov	r0, r4
  3e4508: 4619         	mov	r1, r3
  3e450a: f00f fd2b    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #0xfa56
  3e450e: ab03         	add	r3, sp, #0xc
  3e4510: 4618         	mov	r0, r3
  3e4512: f3d1 f9ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d13fe
  3e4516: e005         	b	0x3e4524 <SoldierController::setPeerName(std::string)+0x38> @ imm = #0xa
  3e4518: ab03         	add	r3, sp, #0xc
  3e451a: 4618         	mov	r0, r3
  3e451c: f3d1 f9fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d13f4
  3e4520: f3a3 fdc4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a3b88
  3e4524: b004         	add	sp, #0x10
  3e4526: bd10         	pop	{r4, pc}

// ==== SoldierController::setPeerID
//      file offset 0x3e4528 (= ELF address; Ghidra 0x3f4528), 284 bytes, Thumb-2
  3e4528: b530         	push	{r4, r5, lr}
  3e452a: b085         	sub	sp, #0x14
  3e452c: 9001         	str	r0, [sp, #0x4]
  3e452e: 9100         	str	r1, [sp]
  3e4530: 9b01         	ldr	r3, [sp, #0x4]
  3e4532: f503 7380    	add.w	r3, r3, #0x100
  3e4536: 4618         	mov	r0, r3
  3e4538: 9900         	ldr	r1, [sp]
  3e453a: f3d2 f83b    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3d2076
  3e453e: 9b01         	ldr	r3, [sp, #0x4]
  3e4540: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e4544: ab03         	add	r3, sp, #0xc
  3e4546: 4618         	mov	r0, r3
  3e4548: 9900         	ldr	r1, [sp]
  3e454a: f3d1 ffcd    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1f9a
  3e454e: ab03         	add	r3, sp, #0xc
  3e4550: 4620         	mov	r0, r4
  3e4552: 4619         	mov	r1, r3
  3e4554: f00f fca2    	bl	0x3f3e9c <SoldierView::setUUID(std::string)> @ imm = #0xf944
  3e4558: ab03         	add	r3, sp, #0xc
  3e455a: 4618         	mov	r0, r3
  3e455c: f3d1 f9da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d13b4
  3e4560: 9b01         	ldr	r3, [sp, #0x4]
  3e4562: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e4566: 2b00         	cmp	r3, #0x0
  3e4568: d017         	beq	0x3e459a <SoldierController::setPeerID(std::string)+0x72> @ imm = #0x2e
  3e456a: 9b01         	ldr	r3, [sp, #0x4]
  3e456c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e4570: 681b         	ldr	r3, [r3]
  3e4572: f503 73f8    	add.w	r3, r3, #0x1f0
  3e4576: 681c         	ldr	r4, [r3]
  3e4578: 9b01         	ldr	r3, [sp, #0x4]
  3e457a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e457e: 461d         	mov	r5, r3
  3e4580: ab03         	add	r3, sp, #0xc
  3e4582: 4618         	mov	r0, r3
  3e4584: 9900         	ldr	r1, [sp]
  3e4586: f3d1 ffaf    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1f5e
  3e458a: ab03         	add	r3, sp, #0xc
  3e458c: 4628         	mov	r0, r5
  3e458e: 4619         	mov	r1, r3
  3e4590: 47a0         	blx	r4
  3e4592: ab03         	add	r3, sp, #0xc
  3e4594: 4618         	mov	r0, r3
  3e4596: f3d1 f9bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d137a
  3e459a: 9b01         	ldr	r3, [sp, #0x4]
  3e459c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e45a0: 2b00         	cmp	r3, #0x0
  3e45a2: d017         	beq	0x3e45d4 <SoldierController::setPeerID(std::string)+0xac> @ imm = #0x2e
  3e45a4: 9b01         	ldr	r3, [sp, #0x4]
  3e45a6: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e45aa: 681b         	ldr	r3, [r3]
  3e45ac: f503 73f8    	add.w	r3, r3, #0x1f0
  3e45b0: 681c         	ldr	r4, [r3]
  3e45b2: 9b01         	ldr	r3, [sp, #0x4]
  3e45b4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e45b8: 461d         	mov	r5, r3
  3e45ba: ab03         	add	r3, sp, #0xc
  3e45bc: 4618         	mov	r0, r3
  3e45be: 9900         	ldr	r1, [sp]
  3e45c0: f3d1 ff92    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1f24
  3e45c4: ab03         	add	r3, sp, #0xc
  3e45c6: 4628         	mov	r0, r5
  3e45c8: 4619         	mov	r1, r3
  3e45ca: 47a0         	blx	r4
  3e45cc: ab03         	add	r3, sp, #0xc
  3e45ce: 4618         	mov	r0, r3
  3e45d0: f3d1 f9a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d1340
  3e45d4: 9b01         	ldr	r3, [sp, #0x4]
  3e45d6: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e45da: 2b00         	cmp	r3, #0x0
  3e45dc: d030         	beq	0x3e4640 <SoldierController::setPeerID(std::string)+0x118> @ imm = #0x60
  3e45de: 9b01         	ldr	r3, [sp, #0x4]
  3e45e0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e45e4: 681b         	ldr	r3, [r3]
  3e45e6: f503 73f8    	add.w	r3, r3, #0x1f0
  3e45ea: 681c         	ldr	r4, [r3]
  3e45ec: 9b01         	ldr	r3, [sp, #0x4]
  3e45ee: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e45f2: 461d         	mov	r5, r3
  3e45f4: ab03         	add	r3, sp, #0xc
  3e45f6: 4618         	mov	r0, r3
  3e45f8: 9900         	ldr	r1, [sp]
  3e45fa: f3d1 ff75    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1eea
  3e45fe: ab03         	add	r3, sp, #0xc
  3e4600: 4628         	mov	r0, r5
  3e4602: 4619         	mov	r1, r3
  3e4604: 47a0         	blx	r4
  3e4606: ab03         	add	r3, sp, #0xc
  3e4608: 4618         	mov	r0, r3
  3e460a: f3d1 f983    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d1306
  3e460e: e017         	b	0x3e4640 <SoldierController::setPeerID(std::string)+0x118> @ imm = #0x2e
  3e4610: ab03         	add	r3, sp, #0xc
  3e4612: 4618         	mov	r0, r3
  3e4614: f3d1 f97e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d12fc
  3e4618: f3a3 fd48    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a3a90
  3e461c: ab03         	add	r3, sp, #0xc
  3e461e: 4618         	mov	r0, r3
  3e4620: f3d1 f978    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d12f0
  3e4624: f3a3 fd42    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a3a84
  3e4628: ab03         	add	r3, sp, #0xc
  3e462a: 4618         	mov	r0, r3
  3e462c: f3d1 f972    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d12e4
  3e4630: f3a3 fd3c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a3a78
  3e4634: ab03         	add	r3, sp, #0xc
  3e4636: 4618         	mov	r0, r3
  3e4638: f3d1 f96c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d12d8
  3e463c: f3a3 fd36    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a3a6c
  3e4640: b005         	add	sp, #0x14
  3e4642: bd30         	pop	{r4, r5, pc}

// ==== SoldierController::getPeerID
//      file offset 0x3e4644 (= ELF address; Ghidra 0x3f4644), 30 bytes, Thumb-2
  3e4644: b500         	push	{lr}
  3e4646: b083         	sub	sp, #0xc
  3e4648: 9001         	str	r0, [sp, #0x4]
  3e464a: 9100         	str	r1, [sp]
  3e464c: 9b00         	ldr	r3, [sp]
  3e464e: f503 7380    	add.w	r3, r3, #0x100
  3e4652: 9801         	ldr	r0, [sp, #0x4]
  3e4654: 4619         	mov	r1, r3
  3e4656: f3d1 ff47    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1e8e
  3e465a: 9801         	ldr	r0, [sp, #0x4]
  3e465c: b003         	add	sp, #0xc
  3e465e: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::isRight
//      file offset 0x3e4664 (= ELF address; Ghidra 0x3f4664), 28 bytes, Thumb-2
  3e4664: b500         	push	{lr}
  3e4666: b083         	sub	sp, #0xc
  3e4668: 9001         	str	r0, [sp, #0x4]
  3e466a: 9b01         	ldr	r3, [sp, #0x4]
  3e466c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e4670: 4618         	mov	r0, r3
  3e4672: f00f fca5    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0xf94a
  3e4676: 4603         	mov	r3, r0
  3e4678: 4618         	mov	r0, r3
  3e467a: b003         	add	sp, #0xc
  3e467c: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierController::addDamage
//      file offset 0x3e4680 (= ELF address; Ghidra 0x3f4680), 484 bytes, Thumb-2
  3e4680: b5f0         	push	{r4, r5, r6, r7, lr}
  3e4682: b08b         	sub	sp, #0x2c
  3e4684: 9007         	str	r0, [sp, #0x1c]
  3e4686: 9106         	str	r1, [sp, #0x18]
  3e4688: 9205         	str	r2, [sp, #0x14]
  3e468a: 9304         	str	r3, [sp, #0x10]
  3e468c: 4c73         	ldr	r4, [pc, #0x1cc]        @ 0x3e485c <SoldierController::addDamage(float, std::string, int, bool)+0x1dc>
  3e468e: 447c         	add	r4, pc
  3e4690: 9b07         	ldr	r3, [sp, #0x1c]
  3e4692: f893 315b    	ldrb.w	r3, [r3, #0x15b]
  3e4696: 2b00         	cmp	r3, #0x0
  3e4698: d000         	beq	0x3e469c <SoldierController::addDamage(float, std::string, int, bool)+0x1c> @ imm = #0x0
  3e469a: e0d8         	b	0x3e484e <SoldierController::addDamage(float, std::string, int, bool)+0x1ce> @ imm = #0x1b0
  3e469c: 9b07         	ldr	r3, [sp, #0x1c]
  3e469e: edd3 7a51    	vldr	s15, [r3, #324]
  3e46a2: eef5 7ac0    	vcmpe.f32	s15, #0
  3e46a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e46aa: f340 80b0    	ble.w	0x3e480e <SoldierController::addDamage(float, std::string, int, bool)+0x18e> @ imm = #0x160
  3e46ae: 9b07         	ldr	r3, [sp, #0x1c]
  3e46b0: 681b         	ldr	r3, [r3]
  3e46b2: f503 73de    	add.w	r3, r3, #0x1bc
  3e46b6: 681d         	ldr	r5, [r3]
  3e46b8: 9e07         	ldr	r6, [sp, #0x1c]
  3e46ba: ab09         	add	r3, sp, #0x24
  3e46bc: 4618         	mov	r0, r3
  3e46be: 9905         	ldr	r1, [sp, #0x14]
  3e46c0: f3d1 ff12    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d1e24
  3e46c4: ab09         	add	r3, sp, #0x24
  3e46c6: 4630         	mov	r0, r6
  3e46c8: 4619         	mov	r1, r3
  3e46ca: 47a8         	blx	r5
  3e46cc: ab09         	add	r3, sp, #0x24
  3e46ce: 4618         	mov	r0, r3
  3e46d0: f3d1 f920    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d1240
  3e46d4: 9b07         	ldr	r3, [sp, #0x1c]
  3e46d6: 9a04         	ldr	r2, [sp, #0x10]
  3e46d8: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3e46dc: f89d 3040    	ldrb.w	r3, [sp, #0x40]
  3e46e0: 2b00         	cmp	r3, #0x0
  3e46e2: f000 8094    	beq.w	0x3e480e <SoldierController::addDamage(float, std::string, int, bool)+0x18e> @ imm = #0x128
  3e46e6: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x3e4860 <SoldierController::addDamage(float, std::string, int, bool)+0x1e0>
  3e46e8: 58e3         	ldr	r3, [r4, r3]
  3e46ea: 681f         	ldr	r7, [r3]
  3e46ec: 9b07         	ldr	r3, [sp, #0x1c]
  3e46ee: f8b3 3164    	ldrh.w	r3, [r3, #0x164]
  3e46f2: b21e         	sxth	r6, r3
  3e46f4: 9b07         	ldr	r3, [sp, #0x1c]
  3e46f6: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e46fa: eddd 7a06    	vldr	s15, [sp, #24]
  3e46fe: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e4702: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e4706: ee26 6b07    	vmul.f64	d6, d6, d7
  3e470a: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  3e470e: ee86 6b07    	vdiv.f64	d6, d6, d7
  3e4712: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3e4716: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e471a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e471e: d501         	bpl	0x3e4724 <SoldierController::addDamage(float, std::string, int, bool)+0xa4> @ imm = #0x2
  3e4720: 2300         	movs	r3, #0x0
  3e4722: e019         	b	0x3e4758 <SoldierController::addDamage(float, std::string, int, bool)+0xd8> @ imm = #0x32
  3e4724: eddd 7a06    	vldr	s15, [sp, #24]
  3e4728: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e472c: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e4730: ee26 6b07    	vmul.f64	d6, d6, d7
  3e4734: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  3e4738: ee86 6b07    	vdiv.f64	d6, d6, d7
  3e473c: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3e4740: ee36 6b07    	vadd.f64	d6, d6, d7
  3e4744: eeb0 7b00    	vmov.f64	d7, #2.000000e+00
  3e4748: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e474c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e4750: bfd4         	ite	le
  3e4752: 2300         	movle	r3, #0x0
  3e4754: 2301         	movgt	r3, #0x1
  3e4756: b2db         	uxtb	r3, r3
  3e4758: 2b00         	cmp	r3, #0x0
  3e475a: d002         	beq	0x3e4762 <SoldierController::addDamage(float, std::string, int, bool)+0xe2> @ imm = #0x4
  3e475c: f04f 4580    	mov.w	r5, #0x40000000
  3e4760: e029         	b	0x3e47b6 <SoldierController::addDamage(float, std::string, int, bool)+0x136> @ imm = #0x52
  3e4762: eddd 7a06    	vldr	s15, [sp, #24]
  3e4766: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e476a: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e476e: ee26 6b07    	vmul.f64	d6, d6, d7
  3e4772: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  3e4776: ee86 6b07    	vdiv.f64	d6, d6, d7
  3e477a: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3e477e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e4782: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e4786: d502         	bpl	0x3e478e <SoldierController::addDamage(float, std::string, int, bool)+0x10e> @ imm = #0x4
  3e4788: eef7 7a04    	vmov.f32	s15, #1.250000e+00
  3e478c: e011         	b	0x3e47b2 <SoldierController::addDamage(float, std::string, int, bool)+0x132> @ imm = #0x22
  3e478e: eddd 7a06    	vldr	s15, [sp, #24]
  3e4792: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e4796: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e479a: ee26 6b07    	vmul.f64	d6, d6, d7
  3e479e: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  3e47a2: ee86 6b07    	vdiv.f64	d6, d6, d7
  3e47a6: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3e47aa: ee36 7b07    	vadd.f64	d7, d6, d7
  3e47ae: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e47b2: ee17 5a90    	vmov	r5, s15
  3e47b6: f7fe fa33    	bl	0x3e2c20 <non-virtual thunk to SoldierAIController::weaponDidFire(Item*)+0x114> @ imm = #-0x1b9a
  3e47ba: 4603         	mov	r3, r0
  3e47bc: ee07 3a90    	vmov	s15, r3
  3e47c0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e47c4: eddf 7a23    	vldr	s15, [pc, #140]         @ 0x3e4854 <SoldierController::addDamage(float, std::string, int, bool)+0x1d4>
  3e47c8: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e47cc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e47d0: ee77 7a67    	vsub.f32	s15, s14, s15
  3e47d4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e47d8: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e47dc: ee26 6b07    	vmul.f64	d6, d6, d7
  3e47e0: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  3e47e4: ee36 7b07    	vadd.f64	d7, d6, d7
  3e47e8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e47ec: 9502         	str	r5, [sp, #0x8]
  3e47ee: edcd 7a03    	vstr	s15, [sp, #12]
  3e47f2: 466b         	mov	r3, sp
  3e47f4: f104 0230    	add.w	r2, r4, #0x30
  3e47f8: e892 0003    	ldm.w	r2, {r0, r1}
  3e47fc: e883 0003    	stm.w	r3, {r0, r1}
  3e4800: f104 0328    	add.w	r3, r4, #0x28
  3e4804: cb0c         	ldm	r3, {r2, r3}
  3e4806: 4638         	mov	r0, r7
  3e4808: 4631         	mov	r1, r6
  3e480a: f013 fc1b    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x13836
  3e480e: 9b07         	ldr	r3, [sp, #0x1c]
  3e4810: ed93 7a51    	vldr	s14, [r3, #324]
  3e4814: eddd 7a06    	vldr	s15, [sp, #24]
  3e4818: ee77 7a67    	vsub.f32	s15, s14, s15
  3e481c: eef5 7ac0    	vcmpe.f32	s15, #0
  3e4820: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e4824: dd07         	ble	0x3e4836 <SoldierController::addDamage(float, std::string, int, bool)+0x1b6> @ imm = #0xe
  3e4826: 9b07         	ldr	r3, [sp, #0x1c]
  3e4828: ed93 7a51    	vldr	s14, [r3, #324]
  3e482c: eddd 7a06    	vldr	s15, [sp, #24]
  3e4830: ee77 7a67    	vsub.f32	s15, s14, s15
  3e4834: e001         	b	0x3e483a <SoldierController::addDamage(float, std::string, int, bool)+0x1ba> @ imm = #0x2
  3e4836: eddf 7a08    	vldr	s15, [pc, #32]          @ 0x3e4858 <SoldierController::addDamage(float, std::string, int, bool)+0x1d8>
  3e483a: 9b07         	ldr	r3, [sp, #0x1c]
  3e483c: edc3 7a51    	vstr	s15, [r3, #324]
  3e4840: e005         	b	0x3e484e <SoldierController::addDamage(float, std::string, int, bool)+0x1ce> @ imm = #0xa
  3e4842: ab09         	add	r3, sp, #0x24
  3e4844: 4618         	mov	r0, r3
  3e4846: f3d1 f865    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d10ca
  3e484a: f3a3 fc2f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a385e
  3e484e: b00b         	add	sp, #0x2c
  3e4850: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3e4851); words below are literal-pool data ---
  3e4852: bf00         	nop
  3e4854: 0000         	movs	r0, r0
  3e4856: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e4a58 <SoldierController::setAlive(bool)+0xd0>
  3e4858: 0000         	movs	r0, r0
  3e485a: 0000         	movs	r0, r0
  3e485c: e37a         	b	0x3e4f54 <SoldierController::setAlive(bool)+0x5cc> @ imm = #0x6f4
  3e485e: 0054         	lsls	r4, r2, #0x1
  3e4860: d730         	bvc	0x3e48c4 <SoldierController::isDucked()+0x4> @ imm = #0x60
  3e4862: ffff b082    	<unknown>

// ==== SoldierController::getHP
//      file offset 0x3e4864 (= ELF address; Ghidra 0x3f4864), 24 bytes, Thumb-2
  3e4864: b082         	sub	sp, #0x8
  3e4866: 9001         	str	r0, [sp, #0x4]
  3e4868: 9b01         	ldr	r3, [sp, #0x4]
  3e486a: edd3 7a51    	vldr	s15, [r3, #324]
  3e486e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3e4872: ee17 3a90    	vmov	r3, s15
  3e4876: 4618         	mov	r0, r3
  3e4878: b002         	add	sp, #0x8
  3e487a: 4770         	bx	lr

// ==== SoldierController::setHP
//      file offset 0x3e487c (= ELF address; Ghidra 0x3f487c), 26 bytes, Thumb-2
  3e487c: b082         	sub	sp, #0x8
  3e487e: 9001         	str	r0, [sp, #0x4]
  3e4880: 9100         	str	r1, [sp]
  3e4882: 9b00         	ldr	r3, [sp]
  3e4884: ee07 3a10    	vmov	s14, r3
  3e4888: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e488c: 9b01         	ldr	r3, [sp, #0x4]
  3e488e: edc3 7a51    	vstr	s15, [r3, #324]
  3e4892: b002         	add	sp, #0x8
  3e4894: 4770         	bx	lr

// ==== SoldierController::isDead
//      file offset 0x3e4898 (= ELF address; Ghidra 0x3f4898), 16 bytes, Thumb-2
  3e4898: b082         	sub	sp, #0x8
  3e489a: 9001         	str	r0, [sp, #0x4]
  3e489c: 9b01         	ldr	r3, [sp, #0x4]
  3e489e: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3e48a2: 4618         	mov	r0, r3
  3e48a4: b002         	add	sp, #0x8
  3e48a6: 4770         	bx	lr

// ==== SoldierController::setIsDead
//      file offset 0x3e48a8 (= ELF address; Ghidra 0x3f48a8), 24 bytes, Thumb-2
  3e48a8: b082         	sub	sp, #0x8
  3e48aa: 9001         	str	r0, [sp, #0x4]
  3e48ac: 460b         	mov	r3, r1
  3e48ae: f88d 3003    	strb.w	r3, [sp, #0x3]
  3e48b2: 9b01         	ldr	r3, [sp, #0x4]
  3e48b4: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3e48b8: f883 2159    	strb.w	r2, [r3, #0x159]
  3e48bc: b002         	add	sp, #0x8
  3e48be: 4770         	bx	lr

// ==== SoldierController::isDucked
//      file offset 0x3e48c0 (= ELF address; Ghidra 0x3f48c0), 16 bytes, Thumb-2
  3e48c0: b082         	sub	sp, #0x8
  3e48c2: 9001         	str	r0, [sp, #0x4]
  3e48c4: 9b01         	ldr	r3, [sp, #0x4]
  3e48c6: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3e48ca: 4618         	mov	r0, r3
  3e48cc: b002         	add	sp, #0x8
  3e48ce: 4770         	bx	lr

// ==== SoldierController::setDucked
//      file offset 0x3e48d0 (= ELF address; Ghidra 0x3f48d0), 24 bytes, Thumb-2
  3e48d0: b082         	sub	sp, #0x8
  3e48d2: 9001         	str	r0, [sp, #0x4]
  3e48d4: 460b         	mov	r3, r1
  3e48d6: f88d 3003    	strb.w	r3, [sp, #0x3]
  3e48da: 9b01         	ldr	r3, [sp, #0x4]
  3e48dc: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3e48e0: f883 215a    	strb.w	r2, [r3, #0x15a]
  3e48e4: b002         	add	sp, #0x8
  3e48e6: 4770         	bx	lr

// ==== SoldierController::throwDual
//      file offset 0x3e48e8 (= ELF address; Ghidra 0x3f48e8), 8 bytes, Thumb-2
  3e48e8: b082         	sub	sp, #0x8
  3e48ea: 9001         	str	r0, [sp, #0x4]
  3e48ec: b002         	add	sp, #0x8
  3e48ee: 4770         	bx	lr

// ==== SoldierController::weaponDidFire
//      file offset 0x3e48f0 (= ELF address; Ghidra 0x3f48f0), 10 bytes, Thumb-2
  3e48f0: b082         	sub	sp, #0x8
  3e48f2: 9001         	str	r0, [sp, #0x4]
  3e48f4: 9100         	str	r1, [sp]
  3e48f6: b002         	add	sp, #0x8
  3e48f8: 4770         	bx	lr

// ==== SoldierController::weaponDidFire
//      file offset 0x3e48fc (= ELF address; Ghidra 0x3f48fc), 8 bytes, Thumb-2
  3e48fc: f1a0 00f8    	sub.w	r0, r0, #0xf8
  3e4900: f7ff bff6    	b.w	0x3e48f0 <SoldierController::weaponDidFire(Item*)> @ imm = #-0x14

// ==== SoldierController::setHitSound
//      file offset 0x3e4904 (= ELF address; Ghidra 0x3f4904), 24 bytes, Thumb-2
  3e4904: b082         	sub	sp, #0x8
  3e4906: 9001         	str	r0, [sp, #0x4]
  3e4908: 460b         	mov	r3, r1
  3e490a: f8ad 3002    	strh.w	r3, [sp, #0x2]
  3e490e: 9b01         	ldr	r3, [sp, #0x4]
  3e4910: f8bd 2002    	ldrh.w	r2, [sp, #0x2]
  3e4914: f8a3 2164    	strh.w	r2, [r3, #0x164]
  3e4918: b002         	add	sp, #0x8
  3e491a: 4770         	bx	lr

// ==== SoldierController::getBodyPosition
//      file offset 0x3e491c (= ELF address; Ghidra 0x3f491c), 36 bytes, Thumb-2
  3e491c: b410         	push	{r4}
  3e491e: b083         	sub	sp, #0xc
  3e4920: 9001         	str	r0, [sp, #0x4]
  3e4922: 9100         	str	r1, [sp]
  3e4924: 9b00         	ldr	r3, [sp]
  3e4926: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e492a: 9a01         	ldr	r2, [sp, #0x4]
  3e492c: 4614         	mov	r4, r2
  3e492e: 3328         	adds	r3, #0x28
  3e4930: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e4932: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e4936: 9801         	ldr	r0, [sp, #0x4]
  3e4938: b003         	add	sp, #0xc
  3e493a: f85d 4b04    	ldr	r4, [sp], #4
  3e493e: 4770         	bx	lr

// ==== SoldierController::getBodyVelocity
//      file offset 0x3e4940 (= ELF address; Ghidra 0x3f4940), 36 bytes, Thumb-2
  3e4940: b410         	push	{r4}
  3e4942: b083         	sub	sp, #0xc
  3e4944: 9001         	str	r0, [sp, #0x4]
  3e4946: 9100         	str	r1, [sp]
  3e4948: 9b00         	ldr	r3, [sp]
  3e494a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e494e: 9a01         	ldr	r2, [sp, #0x4]
  3e4950: 4614         	mov	r4, r2
  3e4952: 3338         	adds	r3, #0x38
  3e4954: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e4956: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e495a: 9801         	ldr	r0, [sp, #0x4]
  3e495c: b003         	add	sp, #0xc
  3e495e: f85d 4b04    	ldr	r4, [sp], #4
  3e4962: 4770         	bx	lr

// ==== SoldierController::setThrustFactor
//      file offset 0x3e4964 (= ELF address; Ghidra 0x3f4964), 18 bytes, Thumb-2
  3e4964: b082         	sub	sp, #0x8
  3e4966: 9001         	str	r0, [sp, #0x4]
  3e4968: 9100         	str	r1, [sp]
  3e496a: 9b01         	ldr	r3, [sp, #0x4]
  3e496c: 9a00         	ldr	r2, [sp]
  3e496e: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3e4972: b002         	add	sp, #0x8
  3e4974: 4770         	bx	lr

// ==== SoldierController::getAlive
//      file offset 0x3e4978 (= ELF address; Ghidra 0x3f4978), 16 bytes, Thumb-2
  3e4978: b082         	sub	sp, #0x8
  3e497a: 9001         	str	r0, [sp, #0x4]
  3e497c: 9b01         	ldr	r3, [sp, #0x4]
  3e497e: f893 317c    	ldrb.w	r3, [r3, #0x17c]
  3e4982: 4618         	mov	r0, r3
  3e4984: b002         	add	sp, #0x8
  3e4986: 4770         	bx	lr

// ==== SoldierController::setAlive
//      file offset 0x3e4988 (= ELF address; Ghidra 0x3f4988), 24 bytes, Thumb-2
  3e4988: b082         	sub	sp, #0x8
  3e498a: 9001         	str	r0, [sp, #0x4]
  3e498c: 460b         	mov	r3, r1
  3e498e: f88d 3003    	strb.w	r3, [sp, #0x3]
  3e4992: 9b01         	ldr	r3, [sp, #0x4]
  3e4994: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3e4998: f883 217c    	strb.w	r2, [r3, #0x17c]
  3e499c: b002         	add	sp, #0x8
  3e499e: 4770         	bx	lr
