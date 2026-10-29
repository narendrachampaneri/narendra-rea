// FileListNodeContext: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 3 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FileListNodeContext.cpp

// ==== FileListNodeContext::FileListNodeContext
//      file offset 0x476f74 (= ELF address; Ghidra 0x486f74), 60 bytes, Thumb-2
  476f74: b084         	sub	sp, #0x10
  476f76: 9003         	str	r0, [sp, #0xc]
  476f78: 9201         	str	r2, [sp, #0x4]
  476f7a: 9300         	str	r3, [sp]
  476f7c: 460b         	mov	r3, r1
  476f7e: f88d 300b    	strb.w	r3, [sp, #0xb]
  476f82: 9b03         	ldr	r3, [sp, #0xc]
  476f84: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  476f88: 701a         	strb	r2, [r3]
  476f8a: 9b03         	ldr	r3, [sp, #0xc]
  476f8c: 9a01         	ldr	r2, [sp, #0x4]
  476f8e: 605a         	str	r2, [r3, #0x4]
  476f90: 9b03         	ldr	r3, [sp, #0xc]
  476f92: 9a00         	ldr	r2, [sp]
  476f94: 609a         	str	r2, [r3, #0x8]
  476f96: 9b03         	ldr	r3, [sp, #0xc]
  476f98: 9a04         	ldr	r2, [sp, #0x10]
  476f9a: 60da         	str	r2, [r3, #0xc]
  476f9c: 9b03         	ldr	r3, [sp, #0xc]
  476f9e: 2200         	movs	r2, #0x0
  476fa0: 611a         	str	r2, [r3, #0x10]
  476fa2: 9b03         	ldr	r3, [sp, #0xc]
  476fa4: 2200         	movs	r2, #0x0
  476fa6: 615a         	str	r2, [r3, #0x14]
  476fa8: 9b03         	ldr	r3, [sp, #0xc]
  476faa: 4618         	mov	r0, r3
  476fac: b004         	add	sp, #0x10
  476fae: 4770         	bx	lr

// ==== FileListNodeContext::~FileListNodeContext
//      file offset 0x476fb0 (= ELF address; Ghidra 0x486fb0), 12 bytes, Thumb-2
  476fb0: b082         	sub	sp, #0x8
  476fb2: 9001         	str	r0, [sp, #0x4]
  476fb4: 9b01         	ldr	r3, [sp, #0x4]
  476fb6: 4618         	mov	r0, r3
  476fb8: b002         	add	sp, #0x8
  476fba: 4770         	bx	lr

// ==== FileListNodeContext::FileListNodeContext
//      file offset 0x4796c0 (= ELF address; Ghidra 0x4896c0), 24 bytes, Thumb-2
  4796c0: b082         	sub	sp, #0x8
  4796c2: 9001         	str	r0, [sp, #0x4]
  4796c4: 9b01         	ldr	r3, [sp, #0x4]
  4796c6: 2200         	movs	r2, #0x0
  4796c8: 611a         	str	r2, [r3, #0x10]
  4796ca: 9b01         	ldr	r3, [sp, #0x4]
  4796cc: 2200         	movs	r2, #0x0
  4796ce: 615a         	str	r2, [r3, #0x14]
  4796d0: 9b01         	ldr	r3, [sp, #0x4]
  4796d2: 4618         	mov	r0, r3
  4796d4: b002         	add	sp, #0x8
  4796d6: 4770         	bx	lr
