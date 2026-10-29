// Item: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 44 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Item.cpp

// ==== Item::getIsGrabable
//      file offset 0x2ddab4 (= ELF address; Ghidra 0x2edab4), 16 bytes, Thumb-2
  2ddab4: b082         	sub	sp, #0x8
  2ddab6: 9001         	str	r0, [sp, #0x4]
  2ddab8: 9b01         	ldr	r3, [sp, #0x4]
  2ddaba: f893 313c    	ldrb.w	r3, [r3, #0x13c]
  2ddabe: 4618         	mov	r0, r3
  2ddac0: b002         	add	sp, #0x8
  2ddac2: 4770         	bx	lr

// ==== Item::getIsManaged
//      file offset 0x2ddac4 (= ELF address; Ghidra 0x2edac4), 16 bytes, Thumb-2
  2ddac4: b082         	sub	sp, #0x8
  2ddac6: 9001         	str	r0, [sp, #0x4]
  2ddac8: 9b01         	ldr	r3, [sp, #0x4]
  2ddaca: f893 313d    	ldrb.w	r3, [r3, #0x13d]
  2ddace: 4618         	mov	r0, r3
  2ddad0: b002         	add	sp, #0x8
  2ddad2: 4770         	bx	lr

// ==== Item::setIsGrabable
//      file offset 0x2ddad4 (= ELF address; Ghidra 0x2edad4), 24 bytes, Thumb-2
  2ddad4: b082         	sub	sp, #0x8
  2ddad6: 9001         	str	r0, [sp, #0x4]
  2ddad8: 460b         	mov	r3, r1
  2ddada: f88d 3003    	strb.w	r3, [sp, #0x3]
  2ddade: 9b01         	ldr	r3, [sp, #0x4]
  2ddae0: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  2ddae4: f883 213c    	strb.w	r2, [r3, #0x13c]
  2ddae8: b002         	add	sp, #0x8
  2ddaea: 4770         	bx	lr

// ==== Item::setIsManaged
//      file offset 0x2ddaec (= ELF address; Ghidra 0x2edaec), 24 bytes, Thumb-2
  2ddaec: b082         	sub	sp, #0x8
  2ddaee: 9001         	str	r0, [sp, #0x4]
  2ddaf0: 460b         	mov	r3, r1
  2ddaf2: f88d 3003    	strb.w	r3, [sp, #0x3]
  2ddaf6: 9b01         	ldr	r3, [sp, #0x4]
  2ddaf8: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  2ddafc: f883 213d    	strb.w	r2, [r3, #0x13d]
  2ddb00: b002         	add	sp, #0x8
  2ddb02: 4770         	bx	lr

// ==== Item::Item
//      file offset 0x347cdc (= ELF address; Ghidra 0x357cdc), 124 bytes, Thumb-2
  347cdc: b510         	push	{r4, lr}
  347cde: b082         	sub	sp, #0x8
  347ce0: 9001         	str	r0, [sp, #0x4]
  347ce2: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x347d50 <Item::Item()+0x74>
  347ce4: 447c         	add	r4, pc
  347ce6: 9b01         	ldr	r3, [sp, #0x4]
  347ce8: 4618         	mov	r0, r3
  347cea: f247 fca5    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x24794a
  347cee: 9b01         	ldr	r3, [sp, #0x4]
  347cf0: 4a18         	ldr	r2, [pc, #0x60]         @ 0x347d54 <Item::Item()+0x78>
  347cf2: 58a2         	ldr	r2, [r4, r2]
  347cf4: 3208         	adds	r2, #0x8
  347cf6: 601a         	str	r2, [r3]
  347cf8: 9b01         	ldr	r3, [sp, #0x4]
  347cfa: f503 7384    	add.w	r3, r3, #0x108
  347cfe: 4618         	mov	r0, r3
  347d00: f06d f256    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46d4ac
  347d04: 9b01         	ldr	r3, [sp, #0x4]
  347d06: f503 7386    	add.w	r3, r3, #0x10c
  347d0a: 4618         	mov	r0, r3
  347d0c: f06d f250    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46d4a0
  347d10: 9b01         	ldr	r3, [sp, #0x4]
  347d12: f503 73a0    	add.w	r3, r3, #0x140
  347d16: 4618         	mov	r0, r3
  347d18: f06d f24a    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46d494
  347d1c: 9b01         	ldr	r3, [sp, #0x4]
  347d1e: e013         	b	0x347d48 <Item::Item()+0x6c> @ imm = #0x26
  347d20: 9b01         	ldr	r3, [sp, #0x4]
  347d22: f503 7386    	add.w	r3, r3, #0x10c
  347d26: 4618         	mov	r0, r3
  347d28: f06d f5f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46dbe8
  347d2c: e7ff         	b	0x347d2e <Item::Item()+0x52> @ imm = #-0x2
  347d2e: 9b01         	ldr	r3, [sp, #0x4]
  347d30: f503 7384    	add.w	r3, r3, #0x108
  347d34: 4618         	mov	r0, r3
  347d36: f06d f5ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46dbda
  347d3a: e7ff         	b	0x347d3c <Item::Item()+0x60> @ imm = #-0x2
  347d3c: 9b01         	ldr	r3, [sp, #0x4]
  347d3e: 4618         	mov	r0, r3
  347d40: f247 fd80    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x247b00
  347d44: f040 f1b2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x440364
  347d48: 4618         	mov	r0, r3
  347d4a: b002         	add	sp, #0x8
  347d4c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x347d4d); words below are literal-pool data ---
  347d4e: bf00         	nop
  347d50: ad24         	add	r5, sp, #0x90
  347d52: 005e         	lsls	r6, r3, #0x1
  347d54: db3c         	blt	0x347dd0 <Item::init()+0x78> @ imm = #0x78
  347d56: ffff b500    	<unknown>

// ==== Item::init
//      file offset 0x347d58 (= ELF address; Ghidra 0x357d58), 316 bytes, Thumb-2
  347d58: b500         	push	{lr}
  347d5a: b085         	sub	sp, #0x14
  347d5c: 9001         	str	r0, [sp, #0x4]
  347d5e: 9b01         	ldr	r3, [sp, #0x4]
  347d60: 4618         	mov	r0, r3
  347d62: f247 fe73    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x247ce6
  347d66: 4603         	mov	r3, r0
  347d68: f88d 300f    	strb.w	r3, [sp, #0xf]
  347d6c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  347d70: f083 0301    	eor	r3, r3, #0x1
  347d74: b2db         	uxtb	r3, r3
  347d76: 2b00         	cmp	r3, #0x0
  347d78: d001         	beq	0x347d7e <Item::init()+0x26> @ imm = #0x2
  347d7a: 2300         	movs	r3, #0x0
  347d7c: e07f         	b	0x347e7e <Item::init()+0x126> @ imm = #0xfe
  347d7e: 9b01         	ldr	r3, [sp, #0x4]
  347d80: 2200         	movs	r2, #0x0
  347d82: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  347d86: 9b01         	ldr	r3, [sp, #0x4]
  347d88: 2200         	movs	r2, #0x0
  347d8a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  347d8e: 9901         	ldr	r1, [sp, #0x4]
  347d90: f04f 0200    	mov.w	r2, #0x0
  347d94: f04f 0300    	mov.w	r3, #0x0
  347d98: e9c1 233c    	strd	r2, r3, [r1, #240]
  347d9c: 9901         	ldr	r1, [sp, #0x4]
  347d9e: f04f 0200    	mov.w	r2, #0x0
  347da2: f04f 0300    	mov.w	r3, #0x0
  347da6: e9c1 233e    	strd	r2, r3, [r1, #248]
  347daa: 9901         	ldr	r1, [sp, #0x4]
  347dac: f04f 0200    	mov.w	r2, #0x0
  347db0: f04f 0300    	mov.w	r3, #0x0
  347db4: e9c1 2340    	strd	r2, r3, [r1, #256]
  347db8: 9b01         	ldr	r3, [sp, #0x4]
  347dba: f04f 0200    	mov.w	r2, #0x0
  347dbe: f8c3 2114    	str.w	r2, [r3, #0x114]
  347dc2: 9b01         	ldr	r3, [sp, #0x4]
  347dc4: 2200         	movs	r2, #0x0
  347dc6: f8c3 2130    	str.w	r2, [r3, #0x130]
  347dca: 9b01         	ldr	r3, [sp, #0x4]
  347dcc: 2200         	movs	r2, #0x0
  347dce: f883 2135    	strb.w	r2, [r3, #0x135]
  347dd2: 9b01         	ldr	r3, [sp, #0x4]
  347dd4: f04f 0200    	mov.w	r2, #0x0
  347dd8: f8c3 2138    	str.w	r2, [r3, #0x138]
  347ddc: 9b01         	ldr	r3, [sp, #0x4]
  347dde: 2200         	movs	r2, #0x0
  347de0: f883 20e5    	strb.w	r2, [r3, #0xe5]
  347de4: 9b01         	ldr	r3, [sp, #0x4]
  347de6: 2200         	movs	r2, #0x0
  347de8: f883 20e4    	strb.w	r2, [r3, #0xe4]
  347dec: 9b01         	ldr	r3, [sp, #0x4]
  347dee: 2200         	movs	r2, #0x0
  347df0: f883 20e6    	strb.w	r2, [r3, #0xe6]
  347df4: 9b01         	ldr	r3, [sp, #0x4]
  347df6: f04f 0200    	mov.w	r2, #0x0
  347dfa: f8c3 2110    	str.w	r2, [r3, #0x110]
  347dfe: 9b01         	ldr	r3, [sp, #0x4]
  347e00: f503 73a0    	add.w	r3, r3, #0x140
  347e04: 4618         	mov	r0, r3
  347e06: 4b20         	ldr	r3, [pc, #0x80]         @ 0x347e88 <Item::init()+0x130>
  347e08: 447b         	add	r3, pc
  347e0a: 4619         	mov	r1, r3
  347e0c: f06e f030    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46e060
  347e10: 9b01         	ldr	r3, [sp, #0x4]
  347e12: f503 7386    	add.w	r3, r3, #0x10c
  347e16: 4618         	mov	r0, r3
  347e18: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x347e8c <Item::init()+0x134>
  347e1a: 447b         	add	r3, pc
  347e1c: 4619         	mov	r1, r3
  347e1e: f06e f027    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46e04e
  347e22: 9b01         	ldr	r3, [sp, #0x4]
  347e24: f503 7384    	add.w	r3, r3, #0x108
  347e28: 4618         	mov	r0, r3
  347e2a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x347e90 <Item::init()+0x138>
  347e2c: 447b         	add	r3, pc
  347e2e: 4619         	mov	r1, r3
  347e30: f06e f01e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46e03c
  347e34: 9b01         	ldr	r3, [sp, #0x4]
  347e36: 2201         	movs	r2, #0x1
  347e38: f883 213c    	strb.w	r2, [r3, #0x13c]
  347e3c: 9b01         	ldr	r3, [sp, #0x4]
  347e3e: 2200         	movs	r2, #0x0
  347e40: f883 213d    	strb.w	r2, [r3, #0x13d]
  347e44: 9b01         	ldr	r3, [sp, #0x4]
  347e46: f04f 0200    	mov.w	r2, #0x0
  347e4a: f8c3 2118    	str.w	r2, [r3, #0x118]
  347e4e: 9b01         	ldr	r3, [sp, #0x4]
  347e50: f04f 0200    	mov.w	r2, #0x0
  347e54: f8c3 211c    	str.w	r2, [r3, #0x11c]
  347e58: 9901         	ldr	r1, [sp, #0x4]
  347e5a: f04f 0200    	mov.w	r2, #0x0
  347e5e: f04f 0300    	mov.w	r3, #0x0
  347e62: e9c1 2348    	strd	r2, r3, [r1, #288]
  347e66: 9901         	ldr	r1, [sp, #0x4]
  347e68: f04f 0200    	mov.w	r2, #0x0
  347e6c: f04f 0300    	mov.w	r3, #0x0
  347e70: e9c1 234a    	strd	r2, r3, [r1, #296]
  347e74: 9b01         	ldr	r3, [sp, #0x4]
  347e76: 2201         	movs	r2, #0x1
  347e78: f883 2134    	strb.w	r2, [r3, #0x134]
  347e7c: 2301         	movs	r3, #0x1
  347e7e: 4618         	mov	r0, r3
  347e80: b005         	add	sp, #0x14
  347e82: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x347e85); words below are literal-pool data ---
  347e86: bf00         	nop
  347e88: 2a34         	cmp	r2, #0x34
  347e8a: 0048         	lsls	r0, r1, #0x1
  347e8c: 2a26         	cmp	r2, #0x26
  347e8e: 0048         	lsls	r0, r1, #0x1
  347e90: 2a10         	cmp	r2, #0x10
  347e92: 0048         	lsls	r0, r1, #0x1

// ==== Item::~Item
//      file offset 0x347e94 (= ELF address; Ghidra 0x357e94), 140 bytes, Thumb-2
  347e94: b500         	push	{lr}
  347e96: b083         	sub	sp, #0xc
  347e98: 9001         	str	r0, [sp, #0x4]
  347e9a: 491f         	ldr	r1, [pc, #0x7c]         @ 0x347f18 <Item::~Item()+0x84>
  347e9c: 4479         	add	r1, pc
  347e9e: 9b01         	ldr	r3, [sp, #0x4]
  347ea0: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x347f1c <Item::~Item()+0x88>
  347ea2: 588a         	ldr	r2, [r1, r2]
  347ea4: 3208         	adds	r2, #0x8
  347ea6: 601a         	str	r2, [r3]
  347ea8: 9b01         	ldr	r3, [sp, #0x4]
  347eaa: 4618         	mov	r0, r3
  347eac: 2100         	movs	r1, #0x0
  347eae: f248 fbcb    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x248796
  347eb2: 9801         	ldr	r0, [sp, #0x4]
  347eb4: f000 f866    	bl	0x347f84 <Item::unSyncBody()> @ imm = #0xcc
  347eb8: 9801         	ldr	r0, [sp, #0x4]
  347eba: f000 f8a3    	bl	0x348004 <Item::removeBodyShape()> @ imm = #0x146
  347ebe: 9b01         	ldr	r3, [sp, #0x4]
  347ec0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  347ec4: 4618         	mov	r0, r3
  347ec6: f38d f891    	bl	0x6d4fec <cpShapeFree>  @ imm = #0x38d122
  347eca: 9b01         	ldr	r3, [sp, #0x4]
  347ecc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  347ed0: 4618         	mov	r0, r3
  347ed2: f38b f93d    	bl	0x6d3150 <cpBodyFree>   @ imm = #0x38b27a
  347ed6: 9b01         	ldr	r3, [sp, #0x4]
  347ed8: f503 73a0    	add.w	r3, r3, #0x140
  347edc: 4618         	mov	r0, r3
  347ede: f06d f519    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46da32
  347ee2: 9b01         	ldr	r3, [sp, #0x4]
  347ee4: f503 7386    	add.w	r3, r3, #0x10c
  347ee8: 4618         	mov	r0, r3
  347eea: f06d f513    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46da26
  347eee: 9b01         	ldr	r3, [sp, #0x4]
  347ef0: f503 7384    	add.w	r3, r3, #0x108
  347ef4: 4618         	mov	r0, r3
  347ef6: f06d f50d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46da1a
  347efa: 9b01         	ldr	r3, [sp, #0x4]
  347efc: 4618         	mov	r0, r3
  347efe: f247 fca1    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x247942
  347f02: 2300         	movs	r3, #0x0
  347f04: 2b00         	cmp	r3, #0x0
  347f06: d002         	beq	0x347f0e <Item::~Item()+0x7a> @ imm = #0x4
  347f08: 9801         	ldr	r0, [sp, #0x4]
  347f0a: f040 f0cb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x440196
  347f0e: 9b01         	ldr	r3, [sp, #0x4]
  347f10: 4618         	mov	r0, r3
  347f12: b003         	add	sp, #0xc
  347f14: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x347f17); words below are literal-pool data ---
  347f18: ab6c         	add	r3, sp, #0x1b0
  347f1a: 005e         	lsls	r6, r3, #0x1
  347f1c: db3c         	blt	0x347f98 <Item::unSyncBody()+0x14> @ imm = #0x78
  347f1e: ffff b500    	<unknown>

// ==== Item::~Item
//      file offset 0x347f20 (= ELF address; Ghidra 0x357f20), 28 bytes, Thumb-2
  347f20: b500         	push	{lr}
  347f22: b083         	sub	sp, #0xc
  347f24: 9001         	str	r0, [sp, #0x4]
  347f26: 9801         	ldr	r0, [sp, #0x4]
  347f28: f7ff ffb4    	bl	0x347e94 <Item::~Item()> @ imm = #-0x98
  347f2c: 9801         	ldr	r0, [sp, #0x4]
  347f2e: f040 f0b9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x440172
  347f32: 9b01         	ldr	r3, [sp, #0x4]
  347f34: 4618         	mov	r0, r3
  347f36: b003         	add	sp, #0xc
  347f38: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::initBody
//      file offset 0x347f3c (= ELF address; Ghidra 0x357f3c), 8 bytes, Thumb-2
  347f3c: b082         	sub	sp, #0x8
  347f3e: 9001         	str	r0, [sp, #0x4]
  347f40: b002         	add	sp, #0x8
  347f42: 4770         	bx	lr

// ==== Item::updateRemoteItemStep
//      file offset 0x347f44 (= ELF address; Ghidra 0x357f44), 10 bytes, Thumb-2
  347f44: b082         	sub	sp, #0x8
  347f46: 9001         	str	r0, [sp, #0x4]
  347f48: 9100         	str	r1, [sp]
  347f4a: b002         	add	sp, #0x8
  347f4c: 4770         	bx	lr

// ==== Item::updateItemStep
//      file offset 0x347f50 (= ELF address; Ghidra 0x357f50), 10 bytes, Thumb-2
  347f50: b082         	sub	sp, #0x8
  347f52: 9001         	str	r0, [sp, #0x4]
  347f54: 9100         	str	r1, [sp]
  347f56: b002         	add	sp, #0x8
  347f58: 4770         	bx	lr

// ==== Item::syncBody
//      file offset 0x347f5c (= ELF address; Ghidra 0x357f5c), 40 bytes, Thumb-2
  347f5c: b082         	sub	sp, #0x8
  347f5e: 9001         	str	r0, [sp, #0x4]
  347f60: 9b01         	ldr	r3, [sp, #0x4]
  347f62: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  347f66: 2b00         	cmp	r3, #0x0
  347f68: d00a         	beq	0x347f80 <Item::syncBody()+0x24> @ imm = #0x14
  347f6a: 9b01         	ldr	r3, [sp, #0x4]
  347f6c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  347f70: 9a01         	ldr	r2, [sp, #0x4]
  347f72: 651a         	str	r2, [r3, #0x50]
  347f74: 9b01         	ldr	r3, [sp, #0x4]
  347f76: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  347f7a: 9a01         	ldr	r2, [sp, #0x4]
  347f7c: f8c3 2090    	str.w	r2, [r3, #0x90]
  347f80: b002         	add	sp, #0x8
  347f82: 4770         	bx	lr

// ==== Item::unSyncBody
//      file offset 0x347f84 (= ELF address; Ghidra 0x357f84), 40 bytes, Thumb-2
  347f84: b082         	sub	sp, #0x8
  347f86: 9001         	str	r0, [sp, #0x4]
  347f88: 9b01         	ldr	r3, [sp, #0x4]
  347f8a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  347f8e: 2b00         	cmp	r3, #0x0
  347f90: d00a         	beq	0x347fa8 <Item::unSyncBody()+0x24> @ imm = #0x14
  347f92: 9b01         	ldr	r3, [sp, #0x4]
  347f94: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  347f98: 2200         	movs	r2, #0x0
  347f9a: 651a         	str	r2, [r3, #0x50]
  347f9c: 9b01         	ldr	r3, [sp, #0x4]
  347f9e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  347fa2: 2200         	movs	r2, #0x0
  347fa4: f8c3 2090    	str.w	r2, [r3, #0x90]
  347fa8: b002         	add	sp, #0x8
  347faa: 4770         	bx	lr

// ==== Item::addBodyShape
//      file offset 0x347fac (= ELF address; Ghidra 0x357fac), 88 bytes, Thumb-2
  347fac: b510         	push	{r4, lr}
  347fae: b082         	sub	sp, #0x8
  347fb0: 9001         	str	r0, [sp, #0x4]
  347fb2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x347ffc <Item::addBodyShape()+0x50>
  347fb4: 447c         	add	r4, pc
  347fb6: 9b01         	ldr	r3, [sp, #0x4]
  347fb8: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  347fbc: f083 0301    	eor	r3, r3, #0x1
  347fc0: b2db         	uxtb	r3, r3
  347fc2: 2b00         	cmp	r3, #0x0
  347fc4: d017         	beq	0x347ff6 <Item::addBodyShape()+0x4a> @ imm = #0x2e
  347fc6: 9b01         	ldr	r3, [sp, #0x4]
  347fc8: 2201         	movs	r2, #0x1
  347fca: f883 20e6    	strb.w	r2, [r3, #0xe6]
  347fce: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x348000 <Item::addBodyShape()+0x54>
  347fd0: 58e3         	ldr	r3, [r4, r3]
  347fd2: 681a         	ldr	r2, [r3]
  347fd4: 9b01         	ldr	r3, [sp, #0x4]
  347fd6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  347fda: 4610         	mov	r0, r2
  347fdc: 4619         	mov	r1, r3
  347fde: f38d fed9    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x38ddb2
  347fe2: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x348000 <Item::addBodyShape()+0x54>
  347fe4: 58e3         	ldr	r3, [r4, r3]
  347fe6: 681a         	ldr	r2, [r3]
  347fe8: 9b01         	ldr	r3, [sp, #0x4]
  347fea: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  347fee: 4610         	mov	r0, r2
  347ff0: 4619         	mov	r1, r3
  347ff2: f38e f909    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x38e212
  347ff6: b002         	add	sp, #0x8
  347ff8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x347ff9); words below are literal-pool data ---
  347ffa: bf00         	nop
  347ffc: aa54         	add	r2, sp, #0x150
  347ffe: 005e         	lsls	r6, r3, #0x1
  348000: da00         	bge	0x348004 <Item::removeBodyShape()> @ imm = #0x0
  348002: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Item::removeBodyShape
//      file offset 0x348004 (= ELF address; Ghidra 0x358004), 80 bytes, Thumb-2
  348004: b510         	push	{r4, lr}
  348006: b082         	sub	sp, #0x8
  348008: 9001         	str	r0, [sp, #0x4]
  34800a: 4c10         	ldr	r4, [pc, #0x40]         @ 0x34804c <Item::removeBodyShape()+0x48>
  34800c: 447c         	add	r4, pc
  34800e: 9b01         	ldr	r3, [sp, #0x4]
  348010: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  348014: 2b00         	cmp	r3, #0x0
  348016: d013         	beq	0x348040 <Item::removeBodyShape()+0x3c> @ imm = #0x26
  348018: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x348050 <Item::removeBodyShape()+0x4c>
  34801a: 58e3         	ldr	r3, [r4, r3]
  34801c: 681a         	ldr	r2, [r3]
  34801e: 9b01         	ldr	r3, [sp, #0x4]
  348020: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  348024: 4610         	mov	r0, r2
  348026: 4619         	mov	r1, r3
  348028: f38e f961    	bl	0x6d62ee <cpSpaceRemoveBody> @ imm = #0x38e2c2
  34802c: 4b08         	ldr	r3, [pc, #0x20]         @ 0x348050 <Item::removeBodyShape()+0x4c>
  34802e: 58e3         	ldr	r3, [r4, r3]
  348030: 681a         	ldr	r2, [r3]
  348032: 9b01         	ldr	r3, [sp, #0x4]
  348034: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  348038: 4610         	mov	r0, r2
  34803a: 4619         	mov	r1, r3
  34803c: f38e f91e    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x38e23c
  348040: 9b01         	ldr	r3, [sp, #0x4]
  348042: 2200         	movs	r2, #0x0
  348044: f883 20e6    	strb.w	r2, [r3, #0xe6]
  348048: b002         	add	sp, #0x8
  34804a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34804b); words below are literal-pool data ---
  34804c: a9fc         	add	r1, sp, #0x3f0
  34804e: 005e         	lsls	r6, r3, #0x1
  348050: da00         	bge	0x348054 <Item::setPrimaryConfiguration()> @ imm = #0x0
  348052: ffff b082    	<unknown>

// ==== Item::setPrimaryConfiguration
//      file offset 0x348054 (= ELF address; Ghidra 0x358054), 8 bytes, Thumb-2
  348054: b082         	sub	sp, #0x8
  348056: 9001         	str	r0, [sp, #0x4]
  348058: b002         	add	sp, #0x8
  34805a: 4770         	bx	lr

// ==== Item::setSecondaryConfiguration
//      file offset 0x34805c (= ELF address; Ghidra 0x35805c), 8 bytes, Thumb-2
  34805c: b082         	sub	sp, #0x8
  34805e: 9001         	str	r0, [sp, #0x4]
  348060: b002         	add	sp, #0x8
  348062: 4770         	bx	lr

// ==== Item::setDualConfiguration
//      file offset 0x348064 (= ELF address; Ghidra 0x358064), 8 bytes, Thumb-2
  348064: b082         	sub	sp, #0x8
  348066: 9001         	str	r0, [sp, #0x4]
  348068: b002         	add	sp, #0x8
  34806a: 4770         	bx	lr

// ==== Item::setMapConfiguration
//      file offset 0x34806c (= ELF address; Ghidra 0x35806c), 8 bytes, Thumb-2
  34806c: b082         	sub	sp, #0x8
  34806e: 9001         	str	r0, [sp, #0x4]
  348070: b002         	add	sp, #0x8
  348072: 4770         	bx	lr

// ==== Item::setHostDualConfiguration
//      file offset 0x348074 (= ELF address; Ghidra 0x358074), 26 bytes, Thumb-2
  348074: b500         	push	{lr}
  348076: b083         	sub	sp, #0xc
  348078: 9001         	str	r0, [sp, #0x4]
  34807a: 9b01         	ldr	r3, [sp, #0x4]
  34807c: 681b         	ldr	r3, [r3]
  34807e: f503 73ee    	add.w	r3, r3, #0x1dc
  348082: 681b         	ldr	r3, [r3]
  348084: 9801         	ldr	r0, [sp, #0x4]
  348086: 4798         	blx	r3
  348088: b003         	add	sp, #0xc
  34808a: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::setUUID
//      file offset 0x348090 (= ELF address; Ghidra 0x358090), 28 bytes, Thumb-2
  348090: b500         	push	{lr}
  348092: b083         	sub	sp, #0xc
  348094: 9001         	str	r0, [sp, #0x4]
  348096: 9100         	str	r1, [sp]
  348098: 9b01         	ldr	r3, [sp, #0x4]
  34809a: f503 73a0    	add.w	r3, r3, #0x140
  34809e: 4618         	mov	r0, r3
  3480a0: 9900         	ldr	r1, [sp]
  3480a2: f06e f287    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x46e50e
  3480a6: b003         	add	sp, #0xc
  3480a8: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::getUUID
//      file offset 0x3480ac (= ELF address; Ghidra 0x3580ac), 30 bytes, Thumb-2
  3480ac: b500         	push	{lr}
  3480ae: b083         	sub	sp, #0xc
  3480b0: 9001         	str	r0, [sp, #0x4]
  3480b2: 9100         	str	r1, [sp]
  3480b4: 9b00         	ldr	r3, [sp]
  3480b6: f503 73a0    	add.w	r3, r3, #0x140
  3480ba: 9801         	ldr	r0, [sp, #0x4]
  3480bc: 4619         	mov	r1, r3
  3480be: f06e f213    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46e426
  3480c2: 9801         	ldr	r0, [sp, #0x4]
  3480c4: b003         	add	sp, #0xc
  3480c6: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::getHostID
//      file offset 0x3480cc (= ELF address; Ghidra 0x3580cc), 30 bytes, Thumb-2
  3480cc: b500         	push	{lr}
  3480ce: b083         	sub	sp, #0xc
  3480d0: 9001         	str	r0, [sp, #0x4]
  3480d2: 9100         	str	r1, [sp]
  3480d4: 9b00         	ldr	r3, [sp]
  3480d6: f503 7386    	add.w	r3, r3, #0x10c
  3480da: 9801         	ldr	r0, [sp, #0x4]
  3480dc: 4619         	mov	r1, r3
  3480de: f06e f203    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46e406
  3480e2: 9801         	ldr	r0, [sp, #0x4]
  3480e4: b003         	add	sp, #0xc
  3480e6: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::setHostID
//      file offset 0x3480ec (= ELF address; Ghidra 0x3580ec), 28 bytes, Thumb-2
  3480ec: b500         	push	{lr}
  3480ee: b083         	sub	sp, #0xc
  3480f0: 9001         	str	r0, [sp, #0x4]
  3480f2: 9100         	str	r1, [sp]
  3480f4: 9b01         	ldr	r3, [sp, #0x4]
  3480f6: f503 7386    	add.w	r3, r3, #0x10c
  3480fa: 4618         	mov	r0, r3
  3480fc: 9900         	ldr	r1, [sp]
  3480fe: f06e f259    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x46e4b2
  348102: b003         	add	sp, #0xc
  348104: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::isFiring
//      file offset 0x348108 (= ELF address; Ghidra 0x358108), 16 bytes, Thumb-2
  348108: b082         	sub	sp, #0x8
  34810a: 9001         	str	r0, [sp, #0x4]
  34810c: 9b01         	ldr	r3, [sp, #0x4]
  34810e: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  348112: 4618         	mov	r0, r3
  348114: b002         	add	sp, #0x8
  348116: 4770         	bx	lr

// ==== Item::setFiring
//      file offset 0x348118 (= ELF address; Ghidra 0x358118), 24 bytes, Thumb-2
  348118: b082         	sub	sp, #0x8
  34811a: 9001         	str	r0, [sp, #0x4]
  34811c: 460b         	mov	r3, r1
  34811e: f88d 3003    	strb.w	r3, [sp, #0x3]
  348122: 9b01         	ldr	r3, [sp, #0x4]
  348124: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  348128: f883 20e5    	strb.w	r2, [r3, #0xe5]
  34812c: b002         	add	sp, #0x8
  34812e: 4770         	bx	lr

// ==== Item::setContact
//      file offset 0x348130 (= ELF address; Ghidra 0x358130), 36 bytes, Thumb-2
  348130: b084         	sub	sp, #0x10
  348132: 9003         	str	r0, [sp, #0xc]
  348134: 9201         	str	r2, [sp, #0x4]
  348136: 9300         	str	r3, [sp]
  348138: 460b         	mov	r3, r1
  34813a: f88d 300b    	strb.w	r3, [sp, #0xb]
  34813e: 9b03         	ldr	r3, [sp, #0xc]
  348140: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  348144: f883 20e4    	strb.w	r2, [r3, #0xe4]
  348148: 9b03         	ldr	r3, [sp, #0xc]
  34814a: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  34814e: 4618         	mov	r0, r3
  348150: b004         	add	sp, #0x10
  348152: 4770         	bx	lr

// ==== Item::getContact
//      file offset 0x348154 (= ELF address; Ghidra 0x358154), 16 bytes, Thumb-2
  348154: b082         	sub	sp, #0x8
  348156: 9001         	str	r0, [sp, #0x4]
  348158: 9b01         	ldr	r3, [sp, #0x4]
  34815a: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  34815e: 4618         	mov	r0, r3
  348160: b002         	add	sp, #0x8
  348162: 4770         	bx	lr

// ==== Item::isInSpace
//      file offset 0x348164 (= ELF address; Ghidra 0x358164), 16 bytes, Thumb-2
  348164: b082         	sub	sp, #0x8
  348166: 9001         	str	r0, [sp, #0x4]
  348168: 9b01         	ldr	r3, [sp, #0x4]
  34816a: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  34816e: 4618         	mov	r0, r3
  348170: b002         	add	sp, #0x8
  348172: 4770         	bx	lr

// ==== Item::setPlayerID
//      file offset 0x348174 (= ELF address; Ghidra 0x358174), 28 bytes, Thumb-2
  348174: b500         	push	{lr}
  348176: b083         	sub	sp, #0xc
  348178: 9001         	str	r0, [sp, #0x4]
  34817a: 9100         	str	r1, [sp]
  34817c: 9b01         	ldr	r3, [sp, #0x4]
  34817e: f503 7384    	add.w	r3, r3, #0x108
  348182: 4618         	mov	r0, r3
  348184: 9900         	ldr	r1, [sp]
  348186: f06e f215    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x46e42a
  34818a: b003         	add	sp, #0xc
  34818c: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::getPlayerID
//      file offset 0x348190 (= ELF address; Ghidra 0x358190), 30 bytes, Thumb-2
  348190: b500         	push	{lr}
  348192: b083         	sub	sp, #0xc
  348194: 9001         	str	r0, [sp, #0x4]
  348196: 9100         	str	r1, [sp]
  348198: 9b00         	ldr	r3, [sp]
  34819a: f503 7384    	add.w	r3, r3, #0x108
  34819e: 9801         	ldr	r0, [sp, #0x4]
  3481a0: 4619         	mov	r1, r3
  3481a2: f06e f1a1    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46e342
  3481a6: 9801         	ldr	r0, [sp, #0x4]
  3481a8: b003         	add	sp, #0xc
  3481aa: f85d fb04    	ldr	pc, [sp], #4

// ==== Item::isRight
//      file offset 0x3481b0 (= ELF address; Ghidra 0x3581b0), 12 bytes, Thumb-2
  3481b0: b082         	sub	sp, #0x8
  3481b2: 9001         	str	r0, [sp, #0x4]
  3481b4: 2301         	movs	r3, #0x1
  3481b6: 4618         	mov	r0, r3
  3481b8: b002         	add	sp, #0x8
  3481ba: 4770         	bx	lr

// ==== Item::setRight
//      file offset 0x3481bc (= ELF address; Ghidra 0x3581bc), 14 bytes, Thumb-2
  3481bc: b082         	sub	sp, #0x8
  3481be: 9001         	str	r0, [sp, #0x4]
  3481c0: 460b         	mov	r3, r1
  3481c2: f88d 3003    	strb.w	r3, [sp, #0x3]
  3481c6: b002         	add	sp, #0x8
  3481c8: 4770         	bx	lr

// ==== Item::getUpdateElapsed
//      file offset 0x3481cc (= ELF address; Ghidra 0x3581cc), 16 bytes, Thumb-2
  3481cc: b082         	sub	sp, #0x8
  3481ce: 9001         	str	r0, [sp, #0x4]
  3481d0: 9b01         	ldr	r3, [sp, #0x4]
  3481d2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3481d6: 4618         	mov	r0, r3
  3481d8: b002         	add	sp, #0x8
  3481da: 4770         	bx	lr

// ==== Item::setUpdateElapsed
//      file offset 0x3481dc (= ELF address; Ghidra 0x3581dc), 18 bytes, Thumb-2
  3481dc: b082         	sub	sp, #0x8
  3481de: 9001         	str	r0, [sp, #0x4]
  3481e0: 9100         	str	r1, [sp]
  3481e2: 9b01         	ldr	r3, [sp, #0x4]
  3481e4: 9a00         	ldr	r2, [sp]
  3481e6: f8c3 2114    	str.w	r2, [r3, #0x114]
  3481ea: b002         	add	sp, #0x8
  3481ec: 4770         	bx	lr

// ==== Item::setNormal
//      file offset 0x3481f0 (= ELF address; Ghidra 0x3581f0), 38 bytes, Thumb-2
  3481f0: b082         	sub	sp, #0x8
  3481f2: b410         	push	{r4}
  3481f4: b083         	sub	sp, #0xc
  3481f6: 9001         	str	r0, [sp, #0x4]
  3481f8: a904         	add	r1, sp, #0x10
  3481fa: e881 000c    	stm.w	r1, {r2, r3}
  3481fe: 9b01         	ldr	r3, [sp, #0x4]
  348200: f503 7490    	add.w	r4, r3, #0x120
  348204: ab04         	add	r3, sp, #0x10
  348206: cb0f         	ldm	r3, {r0, r1, r2, r3}
  348208: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34820c: b003         	add	sp, #0xc
  34820e: f85d 4b04    	ldr	r4, [sp], #4
  348212: b002         	add	sp, #0x8
  348214: 4770         	bx	lr

// ==== Item::getNormal
//      file offset 0x348218 (= ELF address; Ghidra 0x358218), 34 bytes, Thumb-2
  348218: b410         	push	{r4}
  34821a: b083         	sub	sp, #0xc
  34821c: 9001         	str	r0, [sp, #0x4]
  34821e: 9100         	str	r1, [sp]
  348220: 9a01         	ldr	r2, [sp, #0x4]
  348222: 9b00         	ldr	r3, [sp]
  348224: 4614         	mov	r4, r2
  348226: f503 7390    	add.w	r3, r3, #0x120
  34822a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34822c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  348230: 9801         	ldr	r0, [sp, #0x4]
  348232: b003         	add	sp, #0xc
  348234: f85d 4b04    	ldr	r4, [sp], #4
  348238: 4770         	bx	lr

// ==== Item::isNew
//      file offset 0x34823c (= ELF address; Ghidra 0x35823c), 16 bytes, Thumb-2
  34823c: b082         	sub	sp, #0x8
  34823e: 9001         	str	r0, [sp, #0x4]
  348240: 9b01         	ldr	r3, [sp, #0x4]
  348242: f893 3134    	ldrb.w	r3, [r3, #0x134]
  348246: 4618         	mov	r0, r3
  348248: b002         	add	sp, #0x8
  34824a: 4770         	bx	lr

// ==== Item::setIsNew
//      file offset 0x34824c (= ELF address; Ghidra 0x35824c), 24 bytes, Thumb-2
  34824c: b082         	sub	sp, #0x8
  34824e: 9001         	str	r0, [sp, #0x4]
  348250: 460b         	mov	r3, r1
  348252: f88d 3003    	strb.w	r3, [sp, #0x3]
  348256: 9b01         	ldr	r3, [sp, #0x4]
  348258: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  34825c: f883 2134    	strb.w	r2, [r3, #0x134]
  348260: b002         	add	sp, #0x8
  348262: 4770         	bx	lr

// ==== Item::canPlayerBeModed
//      file offset 0x348264 (= ELF address; Ghidra 0x358264), 12 bytes, Thumb-2
  348264: b082         	sub	sp, #0x8
  348266: 9001         	str	r0, [sp, #0x4]
  348268: 2300         	movs	r3, #0x0
  34826a: 4618         	mov	r0, r3
  34826c: b002         	add	sp, #0x8
  34826e: 4770         	bx	lr

// ==== Item::startPlayerMod
//      file offset 0x348270 (= ELF address; Ghidra 0x358270), 8 bytes, Thumb-2
  348270: b082         	sub	sp, #0x8
  348272: 9001         	str	r0, [sp, #0x4]
  348274: b002         	add	sp, #0x8
  348276: 4770         	bx	lr

// ==== Item::stopPlayerMod
//      file offset 0x348278 (= ELF address; Ghidra 0x358278), 8 bytes, Thumb-2
  348278: b082         	sub	sp, #0x8
  34827a: 9001         	str	r0, [sp, #0x4]
  34827c: b002         	add	sp, #0x8
  34827e: 4770         	bx	lr

// ==== Item::doPlayerMod
//      file offset 0x348280 (= ELF address; Ghidra 0x358280), 14 bytes, Thumb-2
  348280: b082         	sub	sp, #0x8
  348282: 9001         	str	r0, [sp, #0x4]
  348284: 9100         	str	r1, [sp]
  348286: 2300         	movs	r3, #0x0
  348288: 4618         	mov	r0, r3
  34828a: b002         	add	sp, #0x8
  34828c: 4770         	bx	lr

// ==== Item::isModItem
//      file offset 0x348290 (= ELF address; Ghidra 0x358290), 12 bytes, Thumb-2
  348290: b082         	sub	sp, #0x8
  348292: 9001         	str	r0, [sp, #0x4]
  348294: 2300         	movs	r3, #0x0
  348296: 4618         	mov	r0, r3
  348298: b002         	add	sp, #0x8
  34829a: 4770         	bx	lr
