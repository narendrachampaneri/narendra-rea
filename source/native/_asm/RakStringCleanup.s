// RakStringCleanup: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 1 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../RakStringCleanup.cpp

// ==== RakStringCleanup::~RakStringCleanup
//      file offset 0x4b2ec4 (= ELF address; Ghidra 0x4c2ec4), 20 bytes, Thumb-2
  4b2ec4: b500         	push	{lr}
  4b2ec6: b083         	sub	sp, #0xc
  4b2ec8: 9001         	str	r0, [sp, #0x4]
  4b2eca: f001 ff4f    	bl	0x4b4d6c <RakNet::RakString::FreeMemoryNoMutex()> @ imm = #0x1e9e
  4b2ece: 9b01         	ldr	r3, [sp, #0x4]
  4b2ed0: 4618         	mov	r0, r3
  4b2ed2: b003         	add	sp, #0xc
  4b2ed4: f85d fb04    	ldr	pc, [sp], #4
