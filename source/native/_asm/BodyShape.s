// BodyShape: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 3 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../BodyShape.cpp

// ==== BodyShape::BodyShape
//      file offset 0x396e6c (= ELF address; Ghidra 0x3a6e6c), 44 bytes, Thumb-2
  396e6c: b510         	push	{r4, lr}
  396e6e: b082         	sub	sp, #0x8
  396e70: 9001         	str	r0, [sp, #0x4]
  396e72: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x396e90 <BodyShape::BodyShape()+0x24>
  396e74: 447c         	add	r4, pc
  396e76: 9b01         	ldr	r3, [sp, #0x4]
  396e78: 4618         	mov	r0, r3
  396e7a: f200 ff77    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x200eee
  396e7e: 9b01         	ldr	r3, [sp, #0x4]
  396e80: 4a04         	ldr	r2, [pc, #0x10]         @ 0x396e94 <BodyShape::BodyShape()+0x28>
  396e82: 58a2         	ldr	r2, [r4, r2]
  396e84: 3208         	adds	r2, #0x8
  396e86: 601a         	str	r2, [r3]
  396e88: 9b01         	ldr	r3, [sp, #0x4]
  396e8a: 4618         	mov	r0, r3
  396e8c: b002         	add	sp, #0x8
  396e8e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x396e8f); words below are literal-pool data ---
  396e90: bb94         	cbnz	r4, 0x396ef8 <BodyShape::~BodyShape()+0x24> @ imm = #0x64
  396e92: 0059         	lsls	r1, r3, #0x1
  396e94: dd24         	ble	0x396ee0 <BodyShape::~BodyShape()+0xc> @ imm = #0x48
  396e96: ffff b500    	<unknown>

// ==== BodyShape::~BodyShape
//      file offset 0x396e98 (= ELF address; Ghidra 0x3a6e98), 60 bytes, Thumb-2
  396e98: b500         	push	{lr}
  396e9a: b083         	sub	sp, #0xc
  396e9c: 9001         	str	r0, [sp, #0x4]
  396e9e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x396ecc <BodyShape::~BodyShape()+0x34>
  396ea0: 4479         	add	r1, pc
  396ea2: 9b01         	ldr	r3, [sp, #0x4]
  396ea4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x396ed0 <BodyShape::~BodyShape()+0x38>
  396ea6: 588a         	ldr	r2, [r1, r2]
  396ea8: 3208         	adds	r2, #0x8
  396eaa: 601a         	str	r2, [r3]
  396eac: 9b01         	ldr	r3, [sp, #0x4]
  396eae: 4618         	mov	r0, r3
  396eb0: f200 ff8e    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x200f1c
  396eb4: 2300         	movs	r3, #0x0
  396eb6: 2b00         	cmp	r3, #0x0
  396eb8: d002         	beq	0x396ec0 <BodyShape::~BodyShape()+0x28> @ imm = #0x4
  396eba: 9801         	ldr	r0, [sp, #0x4]
  396ebc: f3f1 f8f2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f11e4
  396ec0: 9b01         	ldr	r3, [sp, #0x4]
  396ec2: 4618         	mov	r0, r3
  396ec4: b003         	add	sp, #0xc
  396ec6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x396ec9); words below are literal-pool data ---
  396eca: bf00         	nop
  396ecc: bb68         	cbnz	r0, 0x396f2a <BodyShape::~BodyShape()+0x56> @ imm = #0x5a
  396ece: 0059         	lsls	r1, r3, #0x1
  396ed0: dd24         	ble	0x396f1c <BodyShape::~BodyShape()+0x48> @ imm = #0x48
  396ed2: ffff b500    	<unknown>

// ==== BodyShape::~BodyShape
//      file offset 0x396ed4 (= ELF address; Ghidra 0x3a6ed4), 28 bytes, Thumb-2
  396ed4: b500         	push	{lr}
  396ed6: b083         	sub	sp, #0xc
  396ed8: 9001         	str	r0, [sp, #0x4]
  396eda: 9801         	ldr	r0, [sp, #0x4]
  396edc: f7ff ffdc    	bl	0x396e98 <BodyShape::~BodyShape()> @ imm = #-0x48
  396ee0: 9801         	ldr	r0, [sp, #0x4]
  396ee2: f3f1 f8df    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f11be
  396ee6: 9b01         	ldr	r3, [sp, #0x4]
  396ee8: 4618         	mov	r0, r3
  396eea: b003         	add	sp, #0xc
  396eec: f85d fb04    	ldr	pc, [sp], #4
