// CkEffect: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 2 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CkEffect.cpp

// ==== CkEffect::~CkEffect
//      file offset 0x77a2c8 (= ELF address; Ghidra 0x78a2c8), 2 bytes, Thumb-2
  77a2c8: 4770         	bx	lr

// ==== CkEffect::~CkEffect
//      file offset 0x77a2cc (= ELF address; Ghidra 0x78a2cc), 4 bytes, Thumb-2
  77a2cc: f00d beea    	b.w	0x7880a4 <operator delete(void*)> @ imm = #0xddd4
