// DatagramHeaderFormat: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../DatagramHeaderFormat.cpp

// ==== DatagramHeaderFormat::GetDataHeaderByteLength
//      file offset 0x4bc490 (= ELF address; Ghidra 0x4cc490), 6 bytes, Thumb-2
  4bc490: 2309         	movs	r3, #0x9
  4bc492: 4618         	mov	r0, r3
  4bc494: 4770         	bx	lr

// ==== DatagramHeaderFormat::Serialize
//      file offset 0x4bc498 (= ELF address; Ghidra 0x4cc498), 232 bytes, Thumb-2
  4bc498: b500         	push	{lr}
  4bc49a: b085         	sub	sp, #0x14
  4bc49c: 9001         	str	r0, [sp, #0x4]
  4bc49e: 9100         	str	r1, [sp]
  4bc4a0: 2301         	movs	r3, #0x1
  4bc4a2: f88d 300f    	strb.w	r3, [sp, #0xf]
  4bc4a6: f10d 030f    	add.w	r3, sp, #0xf
  4bc4aa: 9800         	ldr	r0, [sp]
  4bc4ac: 4619         	mov	r1, r3
  4bc4ae: f79f f90f    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60de2
  4bc4b2: 9b01         	ldr	r3, [sp, #0x4]
  4bc4b4: 7a1b         	ldrb	r3, [r3, #0x8]
  4bc4b6: 2b00         	cmp	r3, #0x0
  4bc4b8: d01c         	beq	0x4bc4f4 <DatagramHeaderFormat::Serialize(RakNet::BitStream*)+0x5c> @ imm = #0x38
  4bc4ba: 2301         	movs	r3, #0x1
  4bc4bc: f88d 300f    	strb.w	r3, [sp, #0xf]
  4bc4c0: f10d 030f    	add.w	r3, sp, #0xf
  4bc4c4: 9800         	ldr	r0, [sp]
  4bc4c6: 4619         	mov	r1, r3
  4bc4c8: f79f f902    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60dfc
  4bc4cc: 9b01         	ldr	r3, [sp, #0x4]
  4bc4ce: 330b         	adds	r3, #0xb
  4bc4d0: 9800         	ldr	r0, [sp]
  4bc4d2: 4619         	mov	r1, r3
  4bc4d4: f79f f8fc    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e08
  4bc4d8: 9800         	ldr	r0, [sp]
  4bc4da: f79f f8dd    	bl	0x45b698 <RakNet::BitStream::AlignWriteToByteBoundary()> @ imm = #-0x60e46
  4bc4de: 9b01         	ldr	r3, [sp, #0x4]
  4bc4e0: 7adb         	ldrb	r3, [r3, #0xb]
  4bc4e2: 2b00         	cmp	r3, #0x0
  4bc4e4: d049         	beq	0x4bc57a <DatagramHeaderFormat::Serialize(RakNet::BitStream*)+0xe2> @ imm = #0x92
  4bc4e6: 9b01         	ldr	r3, [sp, #0x4]
  4bc4e8: 3304         	adds	r3, #0x4
  4bc4ea: 9800         	ldr	r0, [sp]
  4bc4ec: 4619         	mov	r1, r3
  4bc4ee: f006 f951    	bl	0x4c2794 <void RakNet::BitStream::Write<float>(float const&)> @ imm = #0x62a2
  4bc4f2: e042         	b	0x4bc57a <DatagramHeaderFormat::Serialize(RakNet::BitStream*)+0xe2> @ imm = #0x84
  4bc4f4: 9b01         	ldr	r3, [sp, #0x4]
  4bc4f6: 7a5b         	ldrb	r3, [r3, #0x9]
  4bc4f8: 2b00         	cmp	r3, #0x0
  4bc4fa: d012         	beq	0x4bc522 <DatagramHeaderFormat::Serialize(RakNet::BitStream*)+0x8a> @ imm = #0x24
  4bc4fc: 2300         	movs	r3, #0x0
  4bc4fe: f88d 300f    	strb.w	r3, [sp, #0xf]
  4bc502: f10d 030f    	add.w	r3, sp, #0xf
  4bc506: 9800         	ldr	r0, [sp]
  4bc508: 4619         	mov	r1, r3
  4bc50a: f79f f8e1    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e3e
  4bc50e: 2301         	movs	r3, #0x1
  4bc510: f88d 300f    	strb.w	r3, [sp, #0xf]
  4bc514: f10d 030f    	add.w	r3, sp, #0xf
  4bc518: 9800         	ldr	r0, [sp]
  4bc51a: 4619         	mov	r1, r3
  4bc51c: f79f f8d8    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e50
  4bc520: e02b         	b	0x4bc57a <DatagramHeaderFormat::Serialize(RakNet::BitStream*)+0xe2> @ imm = #0x56
  4bc522: 2300         	movs	r3, #0x0
  4bc524: f88d 300f    	strb.w	r3, [sp, #0xf]
  4bc528: f10d 030f    	add.w	r3, sp, #0xf
  4bc52c: 9800         	ldr	r0, [sp]
  4bc52e: 4619         	mov	r1, r3
  4bc530: f79f f8ce    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e64
  4bc534: 2300         	movs	r3, #0x0
  4bc536: f88d 300f    	strb.w	r3, [sp, #0xf]
  4bc53a: f10d 030f    	add.w	r3, sp, #0xf
  4bc53e: 9800         	ldr	r0, [sp]
  4bc540: 4619         	mov	r1, r3
  4bc542: f79f f8c5    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e76
  4bc546: 9b01         	ldr	r3, [sp, #0x4]
  4bc548: 330a         	adds	r3, #0xa
  4bc54a: 9800         	ldr	r0, [sp]
  4bc54c: 4619         	mov	r1, r3
  4bc54e: f79f f8bf    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e82
  4bc552: 9b01         	ldr	r3, [sp, #0x4]
  4bc554: 330c         	adds	r3, #0xc
  4bc556: 9800         	ldr	r0, [sp]
  4bc558: 4619         	mov	r1, r3
  4bc55a: f79f f8b9    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e8e
  4bc55e: 9b01         	ldr	r3, [sp, #0x4]
  4bc560: 330d         	adds	r3, #0xd
  4bc562: 9800         	ldr	r0, [sp]
  4bc564: 4619         	mov	r1, r3
  4bc566: f79f f8b3    	bl	0x45b6d0 <void RakNet::BitStream::Write<bool>(bool const&)> @ imm = #-0x60e9a
  4bc56a: 9800         	ldr	r0, [sp]
  4bc56c: f79f f894    	bl	0x45b698 <RakNet::BitStream::AlignWriteToByteBoundary()> @ imm = #-0x60ed8
  4bc570: 9b01         	ldr	r3, [sp, #0x4]
  4bc572: 9800         	ldr	r0, [sp]
  4bc574: 4619         	mov	r1, r3
  4bc576: f7ff fd27    	bl	0x4bbfc8 <void RakNet::BitStream::Write<RakNet::uint24_t>(RakNet::uint24_t const&)> @ imm = #-0x5b2
  4bc57a: b005         	add	sp, #0x14
  4bc57c: f85d fb04    	ldr	pc, [sp], #4

// ==== DatagramHeaderFormat::Deserialize
//      file offset 0x4bc580 (= ELF address; Ghidra 0x4cc580), 178 bytes, Thumb-2
  4bc580: b500         	push	{lr}
  4bc582: b083         	sub	sp, #0xc
  4bc584: 9001         	str	r0, [sp, #0x4]
  4bc586: 9100         	str	r1, [sp]
  4bc588: 9b01         	ldr	r3, [sp, #0x4]
  4bc58a: 330e         	adds	r3, #0xe
  4bc58c: 9800         	ldr	r0, [sp]
  4bc58e: 4619         	mov	r1, r3
  4bc590: f79f f8b0    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60ea0
  4bc594: 9b01         	ldr	r3, [sp, #0x4]
  4bc596: 3308         	adds	r3, #0x8
  4bc598: 9800         	ldr	r0, [sp]
  4bc59a: 4619         	mov	r1, r3
  4bc59c: f79f f8aa    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60eac
  4bc5a0: 9b01         	ldr	r3, [sp, #0x4]
  4bc5a2: 7a1b         	ldrb	r3, [r3, #0x8]
  4bc5a4: 2b00         	cmp	r3, #0x0
  4bc5a6: d019         	beq	0x4bc5dc <DatagramHeaderFormat::Deserialize(RakNet::BitStream*)+0x5c> @ imm = #0x32
  4bc5a8: 9b01         	ldr	r3, [sp, #0x4]
  4bc5aa: 2200         	movs	r2, #0x0
  4bc5ac: 725a         	strb	r2, [r3, #0x9]
  4bc5ae: 9b01         	ldr	r3, [sp, #0x4]
  4bc5b0: 2200         	movs	r2, #0x0
  4bc5b2: 729a         	strb	r2, [r3, #0xa]
  4bc5b4: 9b01         	ldr	r3, [sp, #0x4]
  4bc5b6: 330b         	adds	r3, #0xb
  4bc5b8: 9800         	ldr	r0, [sp]
  4bc5ba: 4619         	mov	r1, r3
  4bc5bc: f79f f89a    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60ecc
  4bc5c0: 9800         	ldr	r0, [sp]
  4bc5c2: f79f f877    	bl	0x45b6b4 <RakNet::BitStream::AlignReadToByteBoundary()> @ imm = #-0x60f12
  4bc5c6: 9b01         	ldr	r3, [sp, #0x4]
  4bc5c8: 7adb         	ldrb	r3, [r3, #0xb]
  4bc5ca: 2b00         	cmp	r3, #0x0
  4bc5cc: d02e         	beq	0x4bc62c <DatagramHeaderFormat::Deserialize(RakNet::BitStream*)+0xac> @ imm = #0x5c
  4bc5ce: 9b01         	ldr	r3, [sp, #0x4]
  4bc5d0: 3304         	adds	r3, #0x4
  4bc5d2: 9800         	ldr	r0, [sp]
  4bc5d4: 4619         	mov	r1, r3
  4bc5d6: f006 f8ff    	bl	0x4c27d8 <bool RakNet::BitStream::Read<float>(float&)> @ imm = #0x61fe
  4bc5da: e027         	b	0x4bc62c <DatagramHeaderFormat::Deserialize(RakNet::BitStream*)+0xac> @ imm = #0x4e
  4bc5dc: 9b01         	ldr	r3, [sp, #0x4]
  4bc5de: 3309         	adds	r3, #0x9
  4bc5e0: 9800         	ldr	r0, [sp]
  4bc5e2: 4619         	mov	r1, r3
  4bc5e4: f79f f886    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60ef4
  4bc5e8: 9b01         	ldr	r3, [sp, #0x4]
  4bc5ea: 7a5b         	ldrb	r3, [r3, #0x9]
  4bc5ec: 2b00         	cmp	r3, #0x0
  4bc5ee: d003         	beq	0x4bc5f8 <DatagramHeaderFormat::Deserialize(RakNet::BitStream*)+0x78> @ imm = #0x6
  4bc5f0: 9b01         	ldr	r3, [sp, #0x4]
  4bc5f2: 2200         	movs	r2, #0x0
  4bc5f4: 729a         	strb	r2, [r3, #0xa]
  4bc5f6: e019         	b	0x4bc62c <DatagramHeaderFormat::Deserialize(RakNet::BitStream*)+0xac> @ imm = #0x32
  4bc5f8: 9b01         	ldr	r3, [sp, #0x4]
  4bc5fa: 330a         	adds	r3, #0xa
  4bc5fc: 9800         	ldr	r0, [sp]
  4bc5fe: 4619         	mov	r1, r3
  4bc600: f79f f878    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60f10
  4bc604: 9b01         	ldr	r3, [sp, #0x4]
  4bc606: 330c         	adds	r3, #0xc
  4bc608: 9800         	ldr	r0, [sp]
  4bc60a: 4619         	mov	r1, r3
  4bc60c: f79f f872    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60f1c
  4bc610: 9b01         	ldr	r3, [sp, #0x4]
  4bc612: 330d         	adds	r3, #0xd
  4bc614: 9800         	ldr	r0, [sp]
  4bc616: 4619         	mov	r1, r3
  4bc618: f79f f86c    	bl	0x45b6f4 <bool RakNet::BitStream::Read<bool>(bool&)> @ imm = #-0x60f28
  4bc61c: 9800         	ldr	r0, [sp]
  4bc61e: f79f f849    	bl	0x45b6b4 <RakNet::BitStream::AlignReadToByteBoundary()> @ imm = #-0x60f6e
  4bc622: 9b01         	ldr	r3, [sp, #0x4]
  4bc624: 9800         	ldr	r0, [sp]
  4bc626: 4619         	mov	r1, r3
  4bc628: f7ff fd2a    	bl	0x4bc080 <bool RakNet::BitStream::Read<RakNet::uint24_t>(RakNet::uint24_t&)> @ imm = #-0x5ac
  4bc62c: b003         	add	sp, #0xc
  4bc62e: f85d fb04    	ldr	pc, [sp], #4

// ==== DatagramHeaderFormat::DatagramHeaderFormat
//      file offset 0x4bd3f4 (= ELF address; Ghidra 0x4cd3f4), 24 bytes, Thumb-2
  4bd3f4: b500         	push	{lr}
  4bd3f6: b083         	sub	sp, #0xc
  4bd3f8: 9001         	str	r0, [sp, #0x4]
  4bd3fa: 9b01         	ldr	r3, [sp, #0x4]
  4bd3fc: 4618         	mov	r0, r3
  4bd3fe: f7a0 f84d    	bl	0x45d49c <RakNet::uint24_t::uint24_t()> @ imm = #-0x5ff66
  4bd402: 9b01         	ldr	r3, [sp, #0x4]
  4bd404: 4618         	mov	r0, r3
  4bd406: b003         	add	sp, #0xc
  4bd408: f85d fb04    	ldr	pc, [sp], #4
