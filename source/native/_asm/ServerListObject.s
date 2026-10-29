// ServerListObject: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 5 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ServerListObject.cpp

// ==== ServerListObject::~ServerListObject
//      file offset 0x37a5e0 (= ELF address; Ghidra 0x38a5e0), 34 bytes, Thumb-2
  37a5e0: b500         	push	{lr}
  37a5e2: b083         	sub	sp, #0xc
  37a5e4: 9001         	str	r0, [sp, #0x4]
  37a5e6: 9b01         	ldr	r3, [sp, #0x4]
  37a5e8: 3304         	adds	r3, #0x4
  37a5ea: 4618         	mov	r0, r3
  37a5ec: f03b f192    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b324
  37a5f0: 9b01         	ldr	r3, [sp, #0x4]
  37a5f2: 4618         	mov	r0, r3
  37a5f4: f03b f18e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b31c
  37a5f8: 9b01         	ldr	r3, [sp, #0x4]
  37a5fa: 4618         	mov	r0, r3
  37a5fc: b003         	add	sp, #0xc
  37a5fe: f85d fb04    	ldr	pc, [sp], #4

// ==== ServerListObject::ServerListObject
//      file offset 0x37ef38 (= ELF address; Ghidra 0x38ef38), 46 bytes, Thumb-2
  37ef38: b500         	push	{lr}
  37ef3a: b083         	sub	sp, #0xc
  37ef3c: 9001         	str	r0, [sp, #0x4]
  37ef3e: 9100         	str	r1, [sp]
  37ef40: 9a01         	ldr	r2, [sp, #0x4]
  37ef42: 9b00         	ldr	r3, [sp]
  37ef44: 4610         	mov	r0, r2
  37ef46: 4619         	mov	r1, r3
  37ef48: f036 f13a    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x436274
  37ef4c: 9b01         	ldr	r3, [sp, #0x4]
  37ef4e: 1d1a         	adds	r2, r3, #0x4
  37ef50: 9b00         	ldr	r3, [sp]
  37ef52: 3304         	adds	r3, #0x4
  37ef54: 4610         	mov	r0, r2
  37ef56: 4619         	mov	r1, r3
  37ef58: f036 f132    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x436264
  37ef5c: 9b01         	ldr	r3, [sp, #0x4]
  37ef5e: 4618         	mov	r0, r3
  37ef60: b003         	add	sp, #0xc
  37ef62: f85d fb04    	ldr	pc, [sp], #4

// ==== ServerListObject::ServerListObject
//      file offset 0x37f0b4 (= ELF address; Ghidra 0x38f0b4), 60 bytes, Thumb-2
  37f0b4: b500         	push	{lr}
  37f0b6: b083         	sub	sp, #0xc
  37f0b8: 9001         	str	r0, [sp, #0x4]
  37f0ba: 9100         	str	r1, [sp]
  37f0bc: 9a01         	ldr	r2, [sp, #0x4]
  37f0be: 9b00         	ldr	r3, [sp]
  37f0c0: 4610         	mov	r0, r2
  37f0c2: 4619         	mov	r1, r3
  37f0c4: f037 f210    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x437420
  37f0c8: 9b01         	ldr	r3, [sp, #0x4]
  37f0ca: 1d1a         	adds	r2, r3, #0x4
  37f0cc: 9b00         	ldr	r3, [sp]
  37f0ce: 3304         	adds	r3, #0x4
  37f0d0: 4610         	mov	r0, r2
  37f0d2: 4619         	mov	r1, r3
  37f0d4: f037 f208    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x437410
  37f0d8: 9b01         	ldr	r3, [sp, #0x4]
  37f0da: e005         	b	0x37f0e8 <ServerListObject::ServerListObject(ServerListObject const&)+0x34> @ imm = #0xa
  37f0dc: 9b01         	ldr	r3, [sp, #0x4]
  37f0de: 4618         	mov	r0, r3
  37f0e0: f036 f418    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x436830
  37f0e4: f008 f7e2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x408fc4
  37f0e8: 4618         	mov	r0, r3
  37f0ea: b003         	add	sp, #0xc
  37f0ec: f85d fb04    	ldr	pc, [sp], #4

// ==== ServerListObject::operator=
//      file offset 0x3c49ec (= ELF address; Ghidra 0x3d49ec), 46 bytes, Thumb-2
  3c49ec: b500         	push	{lr}
  3c49ee: b083         	sub	sp, #0xc
  3c49f0: 9001         	str	r0, [sp, #0x4]
  3c49f2: 9100         	str	r1, [sp]
  3c49f4: 9a01         	ldr	r2, [sp, #0x4]
  3c49f6: 9b00         	ldr	r3, [sp]
  3c49f8: 4610         	mov	r0, r2
  3c49fa: 4619         	mov	r1, r3
  3c49fc: f3f0 fc74    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x3f08e8
  3c4a00: 9b01         	ldr	r3, [sp, #0x4]
  3c4a02: 1d1a         	adds	r2, r3, #0x4
  3c4a04: 9b00         	ldr	r3, [sp]
  3c4a06: 3304         	adds	r3, #0x4
  3c4a08: 4610         	mov	r0, r2
  3c4a0a: 4619         	mov	r1, r3
  3c4a0c: f3f0 fc6c    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x3f08d8
  3c4a10: 9b01         	ldr	r3, [sp, #0x4]
  3c4a12: 4618         	mov	r0, r3
  3c4a14: b003         	add	sp, #0xc
  3c4a16: f85d fb04    	ldr	pc, [sp], #4

// ==== ServerListObject::operator=
//      file offset 0x3c4fb4 (= ELF address; Ghidra 0x3d4fb4), 46 bytes, Thumb-2
  3c4fb4: b500         	push	{lr}
  3c4fb6: b083         	sub	sp, #0xc
  3c4fb8: 9001         	str	r0, [sp, #0x4]
  3c4fba: 9100         	str	r1, [sp]
  3c4fbc: 9a01         	ldr	r2, [sp, #0x4]
  3c4fbe: 9b00         	ldr	r3, [sp]
  3c4fc0: 4610         	mov	r0, r2
  3c4fc2: 4619         	mov	r1, r3
  3c4fc4: f3f1 faf6    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3f15ec
  3c4fc8: 9b01         	ldr	r3, [sp, #0x4]
  3c4fca: 1d1a         	adds	r2, r3, #0x4
  3c4fcc: 9b00         	ldr	r3, [sp]
  3c4fce: 3304         	adds	r3, #0x4
  3c4fd0: 4610         	mov	r0, r2
  3c4fd2: 4619         	mov	r1, r3
  3c4fd4: f3f1 faee    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3f15dc
  3c4fd8: 9b01         	ldr	r3, [sp, #0x4]
  3c4fda: 4618         	mov	r0, r3
  3c4fdc: b003         	add	sp, #0xc
  3c4fde: f85d fb04    	ldr	pc, [sp], #4
