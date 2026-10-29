// CkEffectBus: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 2 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CkEffectBus.cpp

// ==== CkEffectBus::~CkEffectBus
//      file offset 0x767500 (= ELF address; Ghidra 0x777500), 2 bytes, Thumb-2
  767500: 4770         	bx	lr

// ==== CkEffectBus::~CkEffectBus
//      file offset 0x767504 (= ELF address; Ghidra 0x777504), 4 bytes, Thumb-2
  767504: f020 bdce    	b.w	0x7880a4 <operator delete(void*)> @ imm = #0x20b9c
