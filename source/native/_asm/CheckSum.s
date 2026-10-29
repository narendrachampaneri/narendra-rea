// CheckSum: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CheckSum.cpp

// ==== CheckSum::Add
//      file offset 0x45e034 (= ELF address; Ghidra 0x46e034), 52 bytes, Thumb-2
  45e034: b500         	push	{lr}
  45e036: b085         	sub	sp, #0x14
  45e038: 9001         	str	r0, [sp, #0x4]
  45e03a: 9100         	str	r1, [sp]
  45e03c: 9b00         	ldr	r3, [sp]
  45e03e: 9302         	str	r3, [sp, #0x8]
  45e040: 2300         	movs	r3, #0x0
  45e042: 9303         	str	r3, [sp, #0xc]
  45e044: e00a         	b	0x45e05c <CheckSum::Add(unsigned int)+0x28> @ imm = #0x14
  45e046: aa02         	add	r2, sp, #0x8
  45e048: 9b03         	ldr	r3, [sp, #0xc]
  45e04a: 4413         	add	r3, r2
  45e04c: 781b         	ldrb	r3, [r3]
  45e04e: 9801         	ldr	r0, [sp, #0x4]
  45e050: 4619         	mov	r1, r3
  45e052: f000 f827    	bl	0x45e0a4 <CheckSum::Add(unsigned char)> @ imm = #0x4e
  45e056: 9b03         	ldr	r3, [sp, #0xc]
  45e058: 3301         	adds	r3, #0x1
  45e05a: 9303         	str	r3, [sp, #0xc]
  45e05c: 9b03         	ldr	r3, [sp, #0xc]
  45e05e: 2b04         	cmp	r3, #0x4
  45e060: d3f1         	blo	0x45e046 <CheckSum::Add(unsigned int)+0x12> @ imm = #-0x1e
  45e062: b005         	add	sp, #0x14
  45e064: f85d fb04    	ldr	pc, [sp], #4

// ==== CheckSum::Add
//      file offset 0x45e068 (= ELF address; Ghidra 0x46e068), 60 bytes, Thumb-2
  45e068: b500         	push	{lr}
  45e06a: b085         	sub	sp, #0x14
  45e06c: 9001         	str	r0, [sp, #0x4]
  45e06e: 460b         	mov	r3, r1
  45e070: f8ad 3002    	strh.w	r3, [sp, #0x2]
  45e074: f8bd 3002    	ldrh.w	r3, [sp, #0x2]
  45e078: f8ad 3008    	strh.w	r3, [sp, #0x8]
  45e07c: 2300         	movs	r3, #0x0
  45e07e: 9303         	str	r3, [sp, #0xc]
  45e080: e00a         	b	0x45e098 <CheckSum::Add(unsigned short)+0x30> @ imm = #0x14
  45e082: aa02         	add	r2, sp, #0x8
  45e084: 9b03         	ldr	r3, [sp, #0xc]
  45e086: 4413         	add	r3, r2
  45e088: 781b         	ldrb	r3, [r3]
  45e08a: 9801         	ldr	r0, [sp, #0x4]
  45e08c: 4619         	mov	r1, r3
  45e08e: f000 f809    	bl	0x45e0a4 <CheckSum::Add(unsigned char)> @ imm = #0x12
  45e092: 9b03         	ldr	r3, [sp, #0xc]
  45e094: 3301         	adds	r3, #0x1
  45e096: 9303         	str	r3, [sp, #0xc]
  45e098: 9b03         	ldr	r3, [sp, #0xc]
  45e09a: 2b02         	cmp	r3, #0x2
  45e09c: d3f1         	blo	0x45e082 <CheckSum::Add(unsigned short)+0x1a> @ imm = #-0x1e
  45e09e: b005         	add	sp, #0x14
  45e0a0: f85d fb04    	ldr	pc, [sp], #4

// ==== CheckSum::Add
//      file offset 0x45e0a4 (= ELF address; Ghidra 0x46e0a4), 82 bytes, Thumb-2
  45e0a4: b084         	sub	sp, #0x10
  45e0a6: 9001         	str	r0, [sp, #0x4]
  45e0a8: 460b         	mov	r3, r1
  45e0aa: f88d 3003    	strb.w	r3, [sp, #0x3]
  45e0ae: 9b01         	ldr	r3, [sp, #0x4]
  45e0b0: 881b         	ldrh	r3, [r3]
  45e0b2: 121b         	asrs	r3, r3, #0x8
  45e0b4: b2da         	uxtb	r2, r3
  45e0b6: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  45e0ba: 4053         	eors	r3, r2
  45e0bc: b2db         	uxtb	r3, r3
  45e0be: f88d 300f    	strb.w	r3, [sp, #0xf]
  45e0c2: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  45e0c6: 9b01         	ldr	r3, [sp, #0x4]
  45e0c8: 881b         	ldrh	r3, [r3]
  45e0ca: 4413         	add	r3, r2
  45e0cc: b29b         	uxth	r3, r3
  45e0ce: 9a01         	ldr	r2, [sp, #0x4]
  45e0d0: 8852         	ldrh	r2, [r2, #0x2]
  45e0d2: fb02 f303    	mul	r3, r2, r3
  45e0d6: b29a         	uxth	r2, r3
  45e0d8: 9b01         	ldr	r3, [sp, #0x4]
  45e0da: 889b         	ldrh	r3, [r3, #0x4]
  45e0dc: 4413         	add	r3, r2
  45e0de: b29a         	uxth	r2, r3
  45e0e0: 9b01         	ldr	r3, [sp, #0x4]
  45e0e2: 801a         	strh	r2, [r3]
  45e0e4: 9b01         	ldr	r3, [sp, #0x4]
  45e0e6: 689a         	ldr	r2, [r3, #0x8]
  45e0e8: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  45e0ec: 441a         	add	r2, r3
  45e0ee: 9b01         	ldr	r3, [sp, #0x4]
  45e0f0: 609a         	str	r2, [r3, #0x8]
  45e0f2: b004         	add	sp, #0x10
  45e0f4: 4770         	bx	lr

// ==== CheckSum::Add
//      file offset 0x45e0f8 (= ELF address; Ghidra 0x46e0f8), 52 bytes, Thumb-2
  45e0f8: b500         	push	{lr}
  45e0fa: b087         	sub	sp, #0x1c
  45e0fc: 9003         	str	r0, [sp, #0xc]
  45e0fe: 9102         	str	r1, [sp, #0x8]
  45e100: 9201         	str	r2, [sp, #0x4]
  45e102: 2300         	movs	r3, #0x0
  45e104: 9305         	str	r3, [sp, #0x14]
  45e106: e00a         	b	0x45e11e <CheckSum::Add(unsigned char*, unsigned int)+0x26> @ imm = #0x14
  45e108: 9a02         	ldr	r2, [sp, #0x8]
  45e10a: 9b05         	ldr	r3, [sp, #0x14]
  45e10c: 4413         	add	r3, r2
  45e10e: 781b         	ldrb	r3, [r3]
  45e110: 9803         	ldr	r0, [sp, #0xc]
  45e112: 4619         	mov	r1, r3
  45e114: f7ff ffc6    	bl	0x45e0a4 <CheckSum::Add(unsigned char)> @ imm = #-0x74
  45e118: 9b05         	ldr	r3, [sp, #0x14]
  45e11a: 3301         	adds	r3, #0x1
  45e11c: 9305         	str	r3, [sp, #0x14]
  45e11e: 9a05         	ldr	r2, [sp, #0x14]
  45e120: 9b01         	ldr	r3, [sp, #0x4]
  45e122: 429a         	cmp	r2, r3
  45e124: d3f0         	blo	0x45e108 <CheckSum::Add(unsigned char*, unsigned int)+0x10> @ imm = #-0x20
  45e126: b007         	add	sp, #0x1c
  45e128: f85d fb04    	ldr	pc, [sp], #4
