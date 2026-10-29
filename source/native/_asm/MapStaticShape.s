// MapStaticShape: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 3 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MapStaticShape.cpp

// ==== MapStaticShape::MapStaticShape
//      file offset 0x368a80 (= ELF address; Ghidra 0x378a80), 44 bytes, Thumb-2
  368a80: b510         	push	{r4, lr}
  368a82: b082         	sub	sp, #0x8
  368a84: 9001         	str	r0, [sp, #0x4]
  368a86: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x368aa4 <MapStaticShape::MapStaticShape()+0x24>
  368a88: 447c         	add	r4, pc
  368a8a: 9b01         	ldr	r3, [sp, #0x4]
  368a8c: 4618         	mov	r0, r3
  368a8e: f22f f96d    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x22f2da
  368a92: 9b01         	ldr	r3, [sp, #0x4]
  368a94: 4a04         	ldr	r2, [pc, #0x10]         @ 0x368aa8 <MapStaticShape::MapStaticShape()+0x28>
  368a96: 58a2         	ldr	r2, [r4, r2]
  368a98: 3208         	adds	r2, #0x8
  368a9a: 601a         	str	r2, [r3]
  368a9c: 9b01         	ldr	r3, [sp, #0x4]
  368a9e: 4618         	mov	r0, r3
  368aa0: b002         	add	sp, #0x8
  368aa2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x368aa3); words below are literal-pool data ---
  368aa4: 9f80         	ldr	r7, [sp, #0x200]
  368aa6: 005c         	lsls	r4, r3, #0x1
  368aa8: dbbc         	blt	0x368a24 <MapShapeTriangle::~MapShapeTriangle()+0x24> @ imm = #-0x88
  368aaa: ffff b500    	<unknown>

// ==== MapStaticShape::~MapStaticShape
//      file offset 0x368aac (= ELF address; Ghidra 0x378aac), 60 bytes, Thumb-2
  368aac: b500         	push	{lr}
  368aae: b083         	sub	sp, #0xc
  368ab0: 9001         	str	r0, [sp, #0x4]
  368ab2: 490b         	ldr	r1, [pc, #0x2c]         @ 0x368ae0 <MapStaticShape::~MapStaticShape()+0x34>
  368ab4: 4479         	add	r1, pc
  368ab6: 9b01         	ldr	r3, [sp, #0x4]
  368ab8: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x368ae4 <MapStaticShape::~MapStaticShape()+0x38>
  368aba: 588a         	ldr	r2, [r1, r2]
  368abc: 3208         	adds	r2, #0x8
  368abe: 601a         	str	r2, [r3]
  368ac0: 9b01         	ldr	r3, [sp, #0x4]
  368ac2: 4618         	mov	r0, r3
  368ac4: f22f f984    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x22f308
  368ac8: 2300         	movs	r3, #0x0
  368aca: 2b00         	cmp	r3, #0x0
  368acc: d002         	beq	0x368ad4 <MapStaticShape::~MapStaticShape()+0x28> @ imm = #0x4
  368ace: 9801         	ldr	r0, [sp, #0x4]
  368ad0: f01f f2e8    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41f5d0
  368ad4: 9b01         	ldr	r3, [sp, #0x4]
  368ad6: 4618         	mov	r0, r3
  368ad8: b003         	add	sp, #0xc
  368ada: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x368add); words below are literal-pool data ---
  368ade: bf00         	nop
  368ae0: 9f54         	ldr	r7, [sp, #0x150]
  368ae2: 005c         	lsls	r4, r3, #0x1
  368ae4: dbbc         	blt	0x368a60 <MapShapeTriangle::addBodyShape(cpSpace*)+0x8> @ imm = #-0x88
  368ae6: ffff b500    	<unknown>

// ==== MapStaticShape::~MapStaticShape
//      file offset 0x368ae8 (= ELF address; Ghidra 0x378ae8), 28 bytes, Thumb-2
  368ae8: b500         	push	{lr}
  368aea: b083         	sub	sp, #0xc
  368aec: 9001         	str	r0, [sp, #0x4]
  368aee: 9801         	ldr	r0, [sp, #0x4]
  368af0: f7ff ffdc    	bl	0x368aac <MapStaticShape::~MapStaticShape()> @ imm = #-0x48
  368af4: 9801         	ldr	r0, [sp, #0x4]
  368af6: f01f f2d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41f5aa
  368afa: 9b01         	ldr	r3, [sp, #0x4]
  368afc: 4618         	mov	r0, r3
  368afe: b003         	add	sp, #0xc
  368b00: f85d fb04    	ldr	pc, [sp], #4
