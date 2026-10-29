// GPGSEventObject: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 5 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GPGSEventObject.cpp

// ==== GPGSEventObject::GPGSEventObject
//      file offset 0x32ab5c (= ELF address; Ghidra 0x33ab5c), 140 bytes, Thumb-2
  32ab5c: b510         	push	{r4, lr}
  32ab5e: b084         	sub	sp, #0x10
  32ab60: 9001         	str	r0, [sp, #0x4]
  32ab62: 9b01         	ldr	r3, [sp, #0x4]
  32ab64: 2200         	movs	r2, #0x0
  32ab66: 601a         	str	r2, [r3]
  32ab68: 9b01         	ldr	r3, [sp, #0x4]
  32ab6a: 1d1c         	adds	r4, r3, #0x4
  32ab6c: ab03         	add	r3, sp, #0xc
  32ab6e: 4618         	mov	r0, r3
  32ab70: f05f f440    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45f880
  32ab74: ab03         	add	r3, sp, #0xc
  32ab76: 4620         	mov	r0, r4
  32ab78: 4a19         	ldr	r2, [pc, #0x64]         @ 0x32abe0 <GPGSEventObject::GPGSEventObject()+0x84>
  32ab7a: 447a         	add	r2, pc
  32ab7c: 4611         	mov	r1, r2
  32ab7e: 461a         	mov	r2, r3
  32ab80: f08b f76e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48bedc
  32ab84: ab03         	add	r3, sp, #0xc
  32ab86: 4618         	mov	r0, r3
  32ab88: f05f f438    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45f870
  32ab8c: 9b01         	ldr	r3, [sp, #0x4]
  32ab8e: f103 0408    	add.w	r4, r3, #0x8
  32ab92: ab03         	add	r3, sp, #0xc
  32ab94: 4618         	mov	r0, r3
  32ab96: f05f f42d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45f85a
  32ab9a: ab03         	add	r3, sp, #0xc
  32ab9c: 4620         	mov	r0, r4
  32ab9e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x32abe4 <GPGSEventObject::GPGSEventObject()+0x88>
  32aba0: 447a         	add	r2, pc
  32aba2: 4611         	mov	r1, r2
  32aba4: 461a         	mov	r2, r3
  32aba6: f08b f75b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48beb6
  32abaa: ab03         	add	r3, sp, #0xc
  32abac: 4618         	mov	r0, r3
  32abae: f05f f425    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45f84a
  32abb2: 9b01         	ldr	r3, [sp, #0x4]
  32abb4: e010         	b	0x32abd8 <GPGSEventObject::GPGSEventObject()+0x7c> @ imm = #0x20
  32abb6: ab03         	add	r3, sp, #0xc
  32abb8: 4618         	mov	r0, r3
  32abba: f05f f41f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45f83e
  32abbe: f05d f275    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d4ea
  32abc2: ab03         	add	r3, sp, #0xc
  32abc4: 4618         	mov	r0, r3
  32abc6: f05f f419    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45f832
  32abca: 9b01         	ldr	r3, [sp, #0x4]
  32abcc: 3304         	adds	r3, #0x4
  32abce: 4618         	mov	r0, r3
  32abd0: f08a f6a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48ad40
  32abd4: f05d f26a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d4d4
  32abd8: 4618         	mov	r0, r3
  32abda: b004         	add	sp, #0x10
  32abdc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x32abdd); words below are literal-pool data ---
  32abde: bf00         	nop
  32abe0: d926         	bls	0x32ac30 <GPGSEventObject::~GPGSEventObject()+0x48> @ imm = #0x4c
  32abe2: 0049         	lsls	r1, r1, #0x1
  32abe4: d900         	bls	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #0x0
  32abe6: 0049         	lsls	r1, r1, #0x1

// ==== GPGSEventObject::~GPGSEventObject
//      file offset 0x32abe8 (= ELF address; Ghidra 0x33abe8), 36 bytes, Thumb-2
  32abe8: b500         	push	{lr}
  32abea: b083         	sub	sp, #0xc
  32abec: 9001         	str	r0, [sp, #0x4]
  32abee: 9b01         	ldr	r3, [sp, #0x4]
  32abf0: 3308         	adds	r3, #0x8
  32abf2: 4618         	mov	r0, r3
  32abf4: f08a f68e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48ad1c
  32abf8: 9b01         	ldr	r3, [sp, #0x4]
  32abfa: 3304         	adds	r3, #0x4
  32abfc: 4618         	mov	r0, r3
  32abfe: f08a f689    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48ad12
  32ac02: 9b01         	ldr	r3, [sp, #0x4]
  32ac04: 4618         	mov	r0, r3
  32ac06: b003         	add	sp, #0xc
  32ac08: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSEventObject::GPGSEventObject
//      file offset 0x32ffe4 (= ELF address; Ghidra 0x33ffe4), 76 bytes, Thumb-2
  32ffe4: b500         	push	{lr}
  32ffe6: b083         	sub	sp, #0xc
  32ffe8: 9001         	str	r0, [sp, #0x4]
  32ffea: 9100         	str	r1, [sp]
  32ffec: 9b00         	ldr	r3, [sp]
  32ffee: 681a         	ldr	r2, [r3]
  32fff0: 9b01         	ldr	r3, [sp, #0x4]
  32fff2: 601a         	str	r2, [r3]
  32fff4: 9b01         	ldr	r3, [sp, #0x4]
  32fff6: 1d1a         	adds	r2, r3, #0x4
  32fff8: 9b00         	ldr	r3, [sp]
  32fffa: 3304         	adds	r3, #0x4
  32fffc: 4610         	mov	r0, r2
  32fffe: 4619         	mov	r1, r3
  330000: f086 f272    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4864e4
  330004: 9b01         	ldr	r3, [sp, #0x4]
  330006: f103 0208    	add.w	r2, r3, #0x8
  33000a: 9b00         	ldr	r3, [sp]
  33000c: 3308         	adds	r3, #0x8
  33000e: 4610         	mov	r0, r2
  330010: 4619         	mov	r1, r3
  330012: f086 f269    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4864d2
  330016: 9b01         	ldr	r3, [sp, #0x4]
  330018: e006         	b	0x330028 <GPGSEventObject::GPGSEventObject(GPGSEventObject const&)+0x44> @ imm = #0xc
  33001a: 9b01         	ldr	r3, [sp, #0x4]
  33001c: 3304         	adds	r3, #0x4
  33001e: 4618         	mov	r0, r3
  330020: f085 f478    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4858f0
  330024: f058 f042    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x458084
  330028: 4618         	mov	r0, r3
  33002a: b003         	add	sp, #0xc
  33002c: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSEventObject::operator=
//      file offset 0x331424 (= ELF address; Ghidra 0x341424), 60 bytes, Thumb-2
  331424: b500         	push	{lr}
  331426: b083         	sub	sp, #0xc
  331428: 9001         	str	r0, [sp, #0x4]
  33142a: 9100         	str	r1, [sp]
  33142c: 9b00         	ldr	r3, [sp]
  33142e: 681a         	ldr	r2, [r3]
  331430: 9b01         	ldr	r3, [sp, #0x4]
  331432: 601a         	str	r2, [r3]
  331434: 9b01         	ldr	r3, [sp, #0x4]
  331436: 1d1a         	adds	r2, r3, #0x4
  331438: 9b00         	ldr	r3, [sp]
  33143a: 3304         	adds	r3, #0x4
  33143c: 4610         	mov	r0, r2
  33143e: 4619         	mov	r1, r3
  331440: f085 f0b8    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x485170
  331444: 9b01         	ldr	r3, [sp, #0x4]
  331446: f103 0208    	add.w	r2, r3, #0x8
  33144a: 9b00         	ldr	r3, [sp]
  33144c: 3308         	adds	r3, #0x8
  33144e: 4610         	mov	r0, r2
  331450: 4619         	mov	r1, r3
  331452: f085 f0af    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48515e
  331456: 9b01         	ldr	r3, [sp, #0x4]
  331458: 4618         	mov	r0, r3
  33145a: b003         	add	sp, #0xc
  33145c: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSEventObject::GPGSEventObject
//      file offset 0x331ab4 (= ELF address; Ghidra 0x341ab4), 60 bytes, Thumb-2
  331ab4: b500         	push	{lr}
  331ab6: b083         	sub	sp, #0xc
  331ab8: 9001         	str	r0, [sp, #0x4]
  331aba: 9100         	str	r1, [sp]
  331abc: 9b00         	ldr	r3, [sp]
  331abe: 681a         	ldr	r2, [r3]
  331ac0: 9b01         	ldr	r3, [sp, #0x4]
  331ac2: 601a         	str	r2, [r3]
  331ac4: 9b01         	ldr	r3, [sp, #0x4]
  331ac6: 1d1a         	adds	r2, r3, #0x4
  331ac8: 9b00         	ldr	r3, [sp]
  331aca: 3304         	adds	r3, #0x4
  331acc: 4610         	mov	r0, r2
  331ace: 4619         	mov	r1, r3
  331ad0: f083 f376    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x4836ec
  331ad4: 9b01         	ldr	r3, [sp, #0x4]
  331ad6: f103 0208    	add.w	r2, r3, #0x8
  331ada: 9b00         	ldr	r3, [sp]
  331adc: 3308         	adds	r3, #0x8
  331ade: 4610         	mov	r0, r2
  331ae0: 4619         	mov	r1, r3
  331ae2: f083 f36d    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x4836da
  331ae6: 9b01         	ldr	r3, [sp, #0x4]
  331ae8: 4618         	mov	r0, r3
  331aea: b003         	add	sp, #0xc
  331aec: f85d fb04    	ldr	pc, [sp], #4
