// CkMixer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 5 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CkMixer.cpp

// ==== CkMixer::getMaster
//      file offset 0x7644e0 (= ELF address; Ghidra 0x7744e0), 4 bytes, Thumb-2
  7644e0: f005 b820    	b.w	0x769524 <Cki::Mixer::getMaster()> @ imm = #0x5040

// ==== CkMixer::newMixer
//      file offset 0x7644e4 (= ELF address; Ghidra 0x7744e4), 4 bytes, Thumb-2
  7644e4: f005 b896    	b.w	0x769614 <Cki::Mixer::newMixer(char const*, Cki::Mixer*)> @ imm = #0x512c

// ==== CkMixer::find
//      file offset 0x7644e8 (= ELF address; Ghidra 0x7744e8), 4 bytes, Thumb-2
  7644e8: f005 b8a6    	b.w	0x769638 <Cki::Mixer::find(char const*)> @ imm = #0x514c

// ==== CkMixer::~CkMixer
//      file offset 0x7696f0 (= ELF address; Ghidra 0x7796f0), 2 bytes, Thumb-2
  7696f0: 4770         	bx	lr

// ==== CkMixer::~CkMixer
//      file offset 0x7696f4 (= ELF address; Ghidra 0x7796f4), 4 bytes, Thumb-2
  7696f4: f01e bcd6    	b.w	0x7880a4 <operator delete(void*)> @ imm = #0x1e9ac
