// CkEffectProcessor: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CkEffectProcessor.cpp

// ==== CkEffectProcessor::~CkEffectProcessor
//      file offset 0x77a5ac (= ELF address; Ghidra 0x78a5ac), 2 bytes, Thumb-2
  77a5ac: 4770         	bx	lr

// ==== CkEffectProcessor::getSampleRate
//      file offset 0x77e234 (= ELF address; Ghidra 0x78e234), 20 bytes, Thumb-2
  77e234: 4802         	ldr	r0, [pc, #0x8]          @ 0x77e240 <CkEffectProcessor::getSampleRate()+0xc>
  77e236: 4903         	ldr	r1, [pc, #0xc]          @ 0x77e244 <CkEffectProcessor::getSampleRate()+0x10>
  77e238: 4478         	add	r0, pc
  77e23a: 5808         	ldr	r0, [r1, r0]
  77e23c: 6800         	ldr	r0, [r0]
  77e23e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x77e23f); words below are literal-pool data ---
  77e240: 47d0         	blx	r10
  77e242: 001b         	movs	r3, r3
  77e244: f9d0 ffff    	<unknown>

// ==== CkEffectProcessor::process
//      file offset 0x77e248 (= ELF address; Ghidra 0x78e248), 32 bytes, Thumb-2
  77e248: b570         	push	{r4, r5, r6, lr}
  77e24a: 460c         	mov	r4, r1
  77e24c: 6801         	ldr	r1, [r0]
  77e24e: 461e         	mov	r6, r3
  77e250: 4615         	mov	r5, r2
  77e252: 6909         	ldr	r1, [r1, #0x10]
  77e254: 4788         	blx	r1
  77e256: 2800         	cmp	r0, #0x0
  77e258: bf18         	it	ne
  77e25a: bd70         	popne	{r4, r5, r6, pc}
  77e25c: 00f2         	lsls	r2, r6, #0x3
  77e25e: 4628         	mov	r0, r5
  77e260: 4621         	mov	r1, r4
  77e262: f758 e614    	blx	0x2d6e8c <.plt+0xfbc>   @ imm = #-0x4a73d8
  77e266: bd70         	pop	{r4, r5, r6, pc}

// ==== CkEffectProcessor::~CkEffectProcessor
//      file offset 0x77e268 (= ELF address; Ghidra 0x78e268), 4 bytes, Thumb-2
  77e268: f009 bf1c    	b.w	0x7880a4 <operator delete(void*)> @ imm = #0x9e38
