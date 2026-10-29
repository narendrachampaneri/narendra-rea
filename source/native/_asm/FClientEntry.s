// FClientEntry: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 1 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FClientEntry.cpp

// ==== FClientEntry::FClientEntry
//      file offset 0x3c7d7c (= ELF address; Ghidra 0x3d7d7c), 48 bytes, Thumb-2
  3c7d7c: b500         	push	{lr}
  3c7d7e: b083         	sub	sp, #0xc
  3c7d80: 9001         	str	r0, [sp, #0x4]
  3c7d82: 9b01         	ldr	r3, [sp, #0x4]
  3c7d84: 4618         	mov	r0, r3
  3c7d86: f0dc fc21    	bl	0x4a45cc <RakNet::RakNetGUID::RakNetGUID()> @ imm = #0xdc842
  3c7d8a: 9b01         	ldr	r3, [sp, #0x4]
  3c7d8c: 4618         	mov	r0, r3
  3c7d8e: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c7da8 <FClientEntry::FClientEntry()+0x2c>
  3c7d90: 447b         	add	r3, pc
  3c7d92: 4619         	mov	r1, r3
  3c7d94: f7f6 fb58    	bl	0x3be448 <RakNet::RakNetGUID::operator=(RakNet::RakNetGUID const&)> @ imm = #-0x9950
  3c7d98: 9b01         	ldr	r3, [sp, #0x4]
  3c7d9a: 22ff         	movs	r2, #0xff
  3c7d9c: 741a         	strb	r2, [r3, #0x10]
  3c7d9e: 9b01         	ldr	r3, [sp, #0x4]
  3c7da0: 4618         	mov	r0, r3
  3c7da2: b003         	add	sp, #0xc
  3c7da4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c7da7); words below are literal-pool data ---
  3c7da8: a3b4         	adr	r3, #720 <RakNetLocalServer::~RakNetLocalServer()+0x30>
  3c7daa: 0057         	lsls	r7, r2, #0x1
