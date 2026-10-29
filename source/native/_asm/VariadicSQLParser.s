// VariadicSQLParser: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../VariadicSQLParser.cpp

// ==== VariadicSQLParser::GetTypeMappingAtIndex
//      file offset 0x4f471c (= ELF address; Ghidra 0x50471c), 36 bytes, Thumb-2
  4f471c: b082         	sub	sp, #0x8
  4f471e: 9001         	str	r0, [sp, #0x4]
  4f4720: 4a05         	ldr	r2, [pc, #0x14]         @ 0x4f4738 <VariadicSQLParser::GetTypeMappingAtIndex(int)+0x1c>
  4f4722: 447a         	add	r2, pc
  4f4724: 4b05         	ldr	r3, [pc, #0x14]         @ 0x4f473c <VariadicSQLParser::GetTypeMappingAtIndex(int)+0x20>
  4f4726: 58d3         	ldr	r3, [r2, r3]
  4f4728: 461a         	mov	r2, r3
  4f472a: 9b01         	ldr	r3, [sp, #0x4]
  4f472c: 00db         	lsls	r3, r3, #0x3
  4f472e: 4413         	add	r3, r2
  4f4730: 685b         	ldr	r3, [r3, #0x4]
  4f4732: 4618         	mov	r0, r3
  4f4734: b002         	add	sp, #0x8
  4f4736: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x4f4737); words below are literal-pool data ---
  4f4738: e2e6         	b	0x4f4d08 <DataStructures::List<VariadicSQLParser::IndexAndType>::Insert(VariadicSQLParser::IndexAndType const&, char const*, unsigned int)+0x74> @ imm = #0x5cc
  4f473a: 0043         	lsls	r3, r0, #0x1
  4f473c: e428         	b	0x4f3f90 <DataStructures::MemoryPool<RakNet::VariableDeltaSerializer::ChangedVariablesList>::InitPage(DataStructures::MemoryPool<RakNet::VariableDeltaSerializer::ChangedVariablesList>::Page*, DataStructures::MemoryPool<RakNet::VariableDeltaSerializer::ChangedVariablesList>::Page*, char const*, unsigned int)+0x8> @ imm = #-0x7b0
  4f473e: ffff b500    	<unknown>

// ==== VariadicSQLParser::GetTypeMappingIndices
//      file offset 0x4f4740 (= ELF address; Ghidra 0x504740), 156 bytes, Thumb-2
  4f4740: b500         	push	{lr}
  4f4742: b089         	sub	sp, #0x24
  4f4744: 9001         	str	r0, [sp, #0x4]
  4f4746: 9100         	str	r1, [sp]
  4f4748: 9800         	ldr	r0, [sp]
  4f474a: 2100         	movs	r1, #0x0
  4f474c: 4b21         	ldr	r3, [pc, #0x84]         @ 0x4f47d4 <VariadicSQLParser::GetTypeMappingIndices(char const*, DataStructures::List<VariadicSQLParser::IndexAndType>&)+0x94>
  4f474e: 447b         	add	r3, pc
  4f4750: 461a         	mov	r2, r3
  4f4752: 2332         	movs	r3, #0x32
  4f4754: f000 fa72    	bl	0x4f4c3c <DataStructures::List<VariadicSQLParser::IndexAndType>::Clear(bool, char const*, unsigned int)> @ imm = #0x4e4
  4f4758: 9801         	ldr	r0, [sp, #0x4]
  4f475a: f5e1 ebee    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0x21e824
  4f475e: 9004         	str	r0, [sp, #0x10]
  4f4760: 2300         	movs	r3, #0x0
  4f4762: f88d 300b    	strb.w	r3, [sp, #0xb]
  4f4766: 2300         	movs	r3, #0x0
  4f4768: 9303         	str	r3, [sp, #0xc]
  4f476a: e02b         	b	0x4f47c4 <VariadicSQLParser::GetTypeMappingIndices(char const*, DataStructures::List<VariadicSQLParser::IndexAndType>&)+0x84> @ imm = #0x56
  4f476c: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  4f4770: 2b00         	cmp	r3, #0x0
  4f4772: d01a         	beq	0x4f47aa <VariadicSQLParser::GetTypeMappingIndices(char const*, DataStructures::List<VariadicSQLParser::IndexAndType>&)+0x6a> @ imm = #0x34
  4f4774: 9a01         	ldr	r2, [sp, #0x4]
  4f4776: 9b03         	ldr	r3, [sp, #0xc]
  4f4778: 4413         	add	r3, r2
  4f477a: 781b         	ldrb	r3, [r3]
  4f477c: 4618         	mov	r0, r3
  4f477e: f7ff ffa9    	bl	0x4f46d4 <GetTypeMappingIndex(char)> @ imm = #-0xae
  4f4782: 4603         	mov	r3, r0
  4f4784: 9305         	str	r3, [sp, #0x14]
  4f4786: 9b05         	ldr	r3, [sp, #0x14]
  4f4788: f1b3 3fff    	cmp.w	r3, #0xffffffff
  4f478c: d00d         	beq	0x4f47aa <VariadicSQLParser::GetTypeMappingIndices(char const*, DataStructures::List<VariadicSQLParser::IndexAndType>&)+0x6a> @ imm = #0x1a
  4f478e: 9b03         	ldr	r3, [sp, #0xc]
  4f4790: 3b01         	subs	r3, #0x1
  4f4792: 9306         	str	r3, [sp, #0x18]
  4f4794: 9b05         	ldr	r3, [sp, #0x14]
  4f4796: 9307         	str	r3, [sp, #0x1c]
  4f4798: ab06         	add	r3, sp, #0x18
  4f479a: 9800         	ldr	r0, [sp]
  4f479c: 4619         	mov	r1, r3
  4f479e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x4f47d8 <VariadicSQLParser::GetTypeMappingIndices(char const*, DataStructures::List<VariadicSQLParser::IndexAndType>&)+0x98>
  4f47a0: 447b         	add	r3, pc
  4f47a2: 461a         	mov	r2, r3
  4f47a4: 233f         	movs	r3, #0x3f
  4f47a6: f000 fa75    	bl	0x4f4c94 <DataStructures::List<VariadicSQLParser::IndexAndType>::Insert(VariadicSQLParser::IndexAndType const&, char const*, unsigned int)> @ imm = #0x4ea
  4f47aa: 9a01         	ldr	r2, [sp, #0x4]
  4f47ac: 9b03         	ldr	r3, [sp, #0xc]
  4f47ae: 4413         	add	r3, r2
  4f47b0: 781b         	ldrb	r3, [r3]
  4f47b2: 2b25         	cmp	r3, #0x25
  4f47b4: bf14         	ite	ne
  4f47b6: 2300         	movne	r3, #0x0
  4f47b8: 2301         	moveq	r3, #0x1
  4f47ba: f88d 300b    	strb.w	r3, [sp, #0xb]
  4f47be: 9b03         	ldr	r3, [sp, #0xc]
  4f47c0: 3301         	adds	r3, #0x1
  4f47c2: 9303         	str	r3, [sp, #0xc]
  4f47c4: 9a03         	ldr	r2, [sp, #0xc]
  4f47c6: 9b04         	ldr	r3, [sp, #0x10]
  4f47c8: 429a         	cmp	r2, r3
  4f47ca: d3cf         	blo	0x4f476c <VariadicSQLParser::GetTypeMappingIndices(char const*, DataStructures::List<VariadicSQLParser::IndexAndType>&)+0x2c> @ imm = #-0x62
  4f47cc: b009         	add	sp, #0x24
  4f47ce: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4f47d1); words below are literal-pool data ---
  4f47d2: bf00         	nop
  4f47d4: b80e         	<unknown>
  4f47d6: 002f         	movs	r7, r5
  4f47d8: b7bc         	<unknown>
  4f47da: 002f         	movs	r7, r5

// ==== VariadicSQLParser::ExtractArguments
//      file offset 0x4f47dc (= ELF address; Ghidra 0x5047dc), 964 bytes, Thumb-2
  4f47dc: b530         	push	{r4, r5, lr}
  4f47de: b08d         	sub	sp, #0x34
  4f47e0: 9003         	str	r0, [sp, #0xc]
  4f47e2: 9102         	str	r1, [sp, #0x8]
  4f47e4: 9201         	str	r2, [sp, #0x4]
  4f47e6: 9300         	str	r3, [sp]
  4f47e8: 4ce3         	ldr	r4, [pc, #0x38c]        @ 0x4f4b78 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x39c>
  4f47ea: 447c         	add	r4, pc
  4f47ec: 9802         	ldr	r0, [sp, #0x8]
  4f47ee: f000 faad    	bl	0x4f4d4c <DataStructures::List<VariadicSQLParser::IndexAndType>::Size() const> @ imm = #0x55a
  4f47f2: 4603         	mov	r3, r0
  4f47f4: 2b00         	cmp	r3, #0x0
  4f47f6: bf14         	ite	ne
  4f47f8: 2300         	movne	r3, #0x0
  4f47fa: 2301         	moveq	r3, #0x1
  4f47fc: b2db         	uxtb	r3, r3
  4f47fe: 2b00         	cmp	r3, #0x0
  4f4800: d000         	beq	0x4f4804 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x28> @ imm = #0x0
  4f4802: e1b6         	b	0x4f4b72 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x396> @ imm = #0x36c
  4f4804: 9802         	ldr	r0, [sp, #0x8]
  4f4806: f000 faa1    	bl	0x4f4d4c <DataStructures::List<VariadicSQLParser::IndexAndType>::Size() const> @ imm = #0x542
  4f480a: 4603         	mov	r3, r0
  4f480c: 4618         	mov	r0, r3
  4f480e: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x4f4b7c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3a0>
  4f4810: 447b         	add	r3, pc
  4f4812: 4619         	mov	r1, r3
  4f4814: 224c         	movs	r2, #0x4c
  4f4816: f787 fc93    	bl	0x47c140 <char** RakNet::OP_NEW_ARRAY<char*>(int, char const*, unsigned int)> @ imm = #-0x786da
  4f481a: 4602         	mov	r2, r0
  4f481c: 9b01         	ldr	r3, [sp, #0x4]
  4f481e: 601a         	str	r2, [r3]
  4f4820: 9802         	ldr	r0, [sp, #0x8]
  4f4822: f000 fa93    	bl	0x4f4d4c <DataStructures::List<VariadicSQLParser::IndexAndType>::Size() const> @ imm = #0x526
  4f4826: 4603         	mov	r3, r0
  4f4828: 4618         	mov	r0, r3
  4f482a: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x4f4b80 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3a4>
  4f482c: 447b         	add	r3, pc
  4f482e: 4619         	mov	r1, r3
  4f4830: 224d         	movs	r2, #0x4d
  4f4832: f78d f9a5    	bl	0x481b80 <int* RakNet::OP_NEW_ARRAY<int>(int, char const*, unsigned int)> @ imm = #-0x72cb6
  4f4836: 4602         	mov	r2, r0
  4f4838: 9b00         	ldr	r3, [sp]
  4f483a: 601a         	str	r2, [r3]
  4f483c: 9b01         	ldr	r3, [sp, #0x4]
  4f483e: 681b         	ldr	r3, [r3]
  4f4840: 9306         	str	r3, [sp, #0x18]
  4f4842: 9b00         	ldr	r3, [sp]
  4f4844: 681b         	ldr	r3, [r3]
  4f4846: 9307         	str	r3, [sp, #0x1c]
  4f4848: 2300         	movs	r3, #0x0
  4f484a: 9305         	str	r3, [sp, #0x14]
  4f484c: 2300         	movs	r3, #0x0
  4f484e: 9304         	str	r3, [sp, #0x10]
  4f4850: e182         	b	0x4f4b58 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x37c> @ imm = #0x304
  4f4852: 9802         	ldr	r0, [sp, #0x8]
  4f4854: 9904         	ldr	r1, [sp, #0x10]
  4f4856: f000 fa81    	bl	0x4f4d5c <DataStructures::List<VariadicSQLParser::IndexAndType>::operator[](unsigned int) const> @ imm = #0x502
  4f485a: 4603         	mov	r3, r0
  4f485c: 685a         	ldr	r2, [r3, #0x4]
  4f485e: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x4f4b84 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3a8>
  4f4860: 58e3         	ldr	r3, [r4, r3]
  4f4862: f813 3032    	ldrb.w	r3, [r3, r2, lsl #3]
  4f4866: 3b61         	subs	r3, #0x61
  4f4868: 2b12         	cmp	r3, #0x12
  4f486a: f200 816f    	bhi.w	0x4f4b4c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x370> @ imm = #0x2de
  4f486e: a102         	adr	r1, #8 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x98>
  4f4870: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  4f4874: 4411         	add	r1, r2
  4f4876: 4708         	bx	r1
  4f4878: 0271         	lsls	r1, r6, #0x9
  4f487a: 0000         	movs	r0, r0
  4f487c: 0141         	lsls	r1, r0, #0x5
  4f487e: 0000         	movs	r0, r0
  4f4880: 02d5         	lsls	r5, r2, #0xb
  4f4882: 0000         	movs	r0, r0
  4f4884: 004d         	lsls	r5, r1, #0x1
  4f4886: 0000         	movs	r0, r0
  4f4888: 02d5         	lsls	r5, r2, #0xb
  4f488a: 0000         	movs	r0, r0
  4f488c: 01d9         	lsls	r1, r3, #0x7
  4f488e: 0000         	movs	r0, r0
  4f4890: 01d9         	lsls	r1, r3, #0x7
  4f4892: 0000         	movs	r0, r0
  4f4894: 02d5         	lsls	r5, r2, #0xb
  4f4896: 0000         	movs	r0, r0
  4f4898: 004d         	lsls	r5, r1, #0x1
  4f489a: 0000         	movs	r0, r0
  4f489c: 02d5         	lsls	r5, r2, #0xb
  4f489e: 0000         	movs	r0, r0
  4f48a0: 02d5         	lsls	r5, r2, #0xb
  4f48a2: 0000         	movs	r0, r0
  4f48a4: 02d5         	lsls	r5, r2, #0xb
  4f48a6: 0000         	movs	r0, r0
  4f48a8: 02d5         	lsls	r5, r2, #0xb
  4f48aa: 0000         	movs	r0, r0
  4f48ac: 02d5         	lsls	r5, r2, #0xb
  4f48ae: 0000         	movs	r0, r0
  4f48b0: 02d5         	lsls	r5, r2, #0xb
  4f48b2: 0000         	movs	r0, r0
  4f48b4: 02d5         	lsls	r5, r2, #0xb
  4f48b6: 0000         	movs	r0, r0
  4f48b8: 02d5         	lsls	r5, r2, #0xb
  4f48ba: 0000         	movs	r0, r0
  4f48bc: 02d5         	lsls	r5, r2, #0xb
  4f48be: 0000         	movs	r0, r0
  4f48c0: 00d9         	lsls	r1, r3, #0x3
  4f48c2: 0000         	movs	r0, r0
  4f48c4: 9b03         	ldr	r3, [sp, #0xc]
  4f48c6: 1d1a         	adds	r2, r3, #0x4
  4f48c8: 9203         	str	r2, [sp, #0xc]
  4f48ca: 681b         	ldr	r3, [r3]
  4f48cc: 930a         	str	r3, [sp, #0x28]
  4f48ce: 9b04         	ldr	r3, [sp, #0x10]
  4f48d0: 009b         	lsls	r3, r3, #0x2
  4f48d2: 9a07         	ldr	r2, [sp, #0x1c]
  4f48d4: 4413         	add	r3, r2
  4f48d6: 2204         	movs	r2, #0x4
  4f48d8: 601a         	str	r2, [r3]
  4f48da: 9b04         	ldr	r3, [sp, #0x10]
  4f48dc: 009b         	lsls	r3, r3, #0x2
  4f48de: 9a06         	ldr	r2, [sp, #0x18]
  4f48e0: 18d5         	adds	r5, r2, r3
  4f48e2: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x4f4b88 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3ac>
  4f48e4: 58e3         	ldr	r3, [r4, r3]
  4f48e6: 681b         	ldr	r3, [r3]
  4f48e8: 9a04         	ldr	r2, [sp, #0x10]
  4f48ea: 0092         	lsls	r2, r2, #0x2
  4f48ec: 9907         	ldr	r1, [sp, #0x1c]
  4f48ee: 440a         	add	r2, r1
  4f48f0: 6812         	ldr	r2, [r2]
  4f48f2: 4610         	mov	r0, r2
  4f48f4: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x4f4b8c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3b0>
  4f48f6: 447a         	add	r2, pc
  4f48f8: 4611         	mov	r1, r2
  4f48fa: 225c         	movs	r2, #0x5c
  4f48fc: 4798         	blx	r3
  4f48fe: 4603         	mov	r3, r0
  4f4900: 602b         	str	r3, [r5]
  4f4902: 9b04         	ldr	r3, [sp, #0x10]
  4f4904: 009b         	lsls	r3, r3, #0x2
  4f4906: 9a06         	ldr	r2, [sp, #0x18]
  4f4908: 4413         	add	r3, r2
  4f490a: 6819         	ldr	r1, [r3]
  4f490c: 9b04         	ldr	r3, [sp, #0x10]
  4f490e: 009b         	lsls	r3, r3, #0x2
  4f4910: 9a07         	ldr	r2, [sp, #0x1c]
  4f4912: 4413         	add	r3, r2
  4f4914: 681b         	ldr	r3, [r3]
  4f4916: aa0a         	add	r2, sp, #0x28
  4f4918: 4608         	mov	r0, r1
  4f491a: 4611         	mov	r1, r2
  4f491c: 461a         	mov	r2, r3
  4f491e: f5e1 eb12    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0x21e9dc
  4f4922: f6d0 fdbb    	bl	0x3c549c <RakNet::BitStream::IsNetworkOrder()> @ imm = #-0x12f48a
  4f4926: 4603         	mov	r3, r0
  4f4928: f083 0301    	eor	r3, r3, #0x1
  4f492c: b2db         	uxtb	r3, r3
  4f492e: 2b00         	cmp	r3, #0x0
  4f4930: d00d         	beq	0x4f494e <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x172> @ imm = #0x1a
  4f4932: 9b04         	ldr	r3, [sp, #0x10]
  4f4934: 009b         	lsls	r3, r3, #0x2
  4f4936: 9a06         	ldr	r2, [sp, #0x18]
  4f4938: 4413         	add	r3, r2
  4f493a: 681a         	ldr	r2, [r3]
  4f493c: 9b04         	ldr	r3, [sp, #0x10]
  4f493e: 009b         	lsls	r3, r3, #0x2
  4f4940: 9907         	ldr	r1, [sp, #0x1c]
  4f4942: 440b         	add	r3, r1
  4f4944: 681b         	ldr	r3, [r3]
  4f4946: 4610         	mov	r0, r2
  4f4948: 4619         	mov	r1, r3
  4f494a: f768 fa23    	bl	0x45cd94 <RakNet::BitStream::ReverseBytesInPlace(unsigned char*, unsigned int)> @ imm = #-0x97bba
  4f494e: e0fd         	b	0x4f4b4c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x370> @ imm = #0x1fa
  4f4950: 9b03         	ldr	r3, [sp, #0xc]
  4f4952: 1d1a         	adds	r2, r3, #0x4
  4f4954: 9203         	str	r2, [sp, #0xc]
  4f4956: 681b         	ldr	r3, [r3]
  4f4958: 9308         	str	r3, [sp, #0x20]
  4f495a: 9b04         	ldr	r3, [sp, #0x10]
  4f495c: 009b         	lsls	r3, r3, #0x2
  4f495e: 9a07         	ldr	r2, [sp, #0x1c]
  4f4960: 18d5         	adds	r5, r2, r3
  4f4962: 9808         	ldr	r0, [sp, #0x20]
  4f4964: f5e1 eae8    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0x21ea30
  4f4968: 4603         	mov	r3, r0
  4f496a: 602b         	str	r3, [r5]
  4f496c: 9b04         	ldr	r3, [sp, #0x10]
  4f496e: 009b         	lsls	r3, r3, #0x2
  4f4970: 9a06         	ldr	r2, [sp, #0x18]
  4f4972: 18d5         	adds	r5, r2, r3
  4f4974: 4b84         	ldr	r3, [pc, #0x210]        @ 0x4f4b88 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3ac>
  4f4976: 58e3         	ldr	r3, [r4, r3]
  4f4978: 681b         	ldr	r3, [r3]
  4f497a: 9a04         	ldr	r2, [sp, #0x10]
  4f497c: 0092         	lsls	r2, r2, #0x2
  4f497e: 9907         	ldr	r1, [sp, #0x1c]
  4f4980: 440a         	add	r2, r1
  4f4982: 6812         	ldr	r2, [r2]
  4f4984: 3201         	adds	r2, #0x1
  4f4986: 4610         	mov	r0, r2
  4f4988: 4a81         	ldr	r2, [pc, #0x204]        @ 0x4f4b90 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3b4>
  4f498a: 447a         	add	r2, pc
  4f498c: 4611         	mov	r1, r2
  4f498e: 2265         	movs	r2, #0x65
  4f4990: 4798         	blx	r3
  4f4992: 4603         	mov	r3, r0
  4f4994: 602b         	str	r3, [r5]
  4f4996: 9b04         	ldr	r3, [sp, #0x10]
  4f4998: 009b         	lsls	r3, r3, #0x2
  4f499a: 9a06         	ldr	r2, [sp, #0x18]
  4f499c: 4413         	add	r3, r2
  4f499e: 681a         	ldr	r2, [r3]
  4f49a0: 9b04         	ldr	r3, [sp, #0x10]
  4f49a2: 009b         	lsls	r3, r3, #0x2
  4f49a4: 9907         	ldr	r1, [sp, #0x1c]
  4f49a6: 440b         	add	r3, r1
  4f49a8: 681b         	ldr	r3, [r3]
  4f49aa: 3301         	adds	r3, #0x1
  4f49ac: 4610         	mov	r0, r2
  4f49ae: 9908         	ldr	r1, [sp, #0x20]
  4f49b0: 461a         	mov	r2, r3
  4f49b2: f5e1 eac8    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0x21ea70
  4f49b6: e0c9         	b	0x4f4b4c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x370> @ imm = #0x192
  4f49b8: 9b03         	ldr	r3, [sp, #0xc]
  4f49ba: 1d1a         	adds	r2, r3, #0x4
  4f49bc: 9203         	str	r2, [sp, #0xc]
  4f49be: 681b         	ldr	r3, [r3]
  4f49c0: 2b00         	cmp	r3, #0x0
  4f49c2: bf0c         	ite	eq
  4f49c4: 2300         	moveq	r3, #0x0
  4f49c6: 2301         	movne	r3, #0x1
  4f49c8: b2db         	uxtb	r3, r3
  4f49ca: f88d 3028    	strb.w	r3, [sp, #0x28]
  4f49ce: 9b04         	ldr	r3, [sp, #0x10]
  4f49d0: 009b         	lsls	r3, r3, #0x2
  4f49d2: 9a07         	ldr	r2, [sp, #0x1c]
  4f49d4: 4413         	add	r3, r2
  4f49d6: 2201         	movs	r2, #0x1
  4f49d8: 601a         	str	r2, [r3]
  4f49da: 9b04         	ldr	r3, [sp, #0x10]
  4f49dc: 009b         	lsls	r3, r3, #0x2
  4f49de: 9a06         	ldr	r2, [sp, #0x18]
  4f49e0: 18d5         	adds	r5, r2, r3
  4f49e2: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x4f4b88 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3ac>
  4f49e4: 58e3         	ldr	r3, [r4, r3]
  4f49e6: 681b         	ldr	r3, [r3]
  4f49e8: 9a04         	ldr	r2, [sp, #0x10]
  4f49ea: 0092         	lsls	r2, r2, #0x2
  4f49ec: 9907         	ldr	r1, [sp, #0x1c]
  4f49ee: 440a         	add	r2, r1
  4f49f0: 6812         	ldr	r2, [r2]
  4f49f2: 4610         	mov	r0, r2
  4f49f4: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x4f4b94 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3b8>
  4f49f6: 447a         	add	r2, pc
  4f49f8: 4611         	mov	r1, r2
  4f49fa: 226d         	movs	r2, #0x6d
  4f49fc: 4798         	blx	r3
  4f49fe: 4603         	mov	r3, r0
  4f4a00: 602b         	str	r3, [r5]
  4f4a02: 9b04         	ldr	r3, [sp, #0x10]
  4f4a04: 009b         	lsls	r3, r3, #0x2
  4f4a06: 9a06         	ldr	r2, [sp, #0x18]
  4f4a08: 4413         	add	r3, r2
  4f4a0a: 6819         	ldr	r1, [r3]
  4f4a0c: 9b04         	ldr	r3, [sp, #0x10]
  4f4a0e: 009b         	lsls	r3, r3, #0x2
  4f4a10: 9a07         	ldr	r2, [sp, #0x1c]
  4f4a12: 4413         	add	r3, r2
  4f4a14: 681b         	ldr	r3, [r3]
  4f4a16: aa0a         	add	r2, sp, #0x28
  4f4a18: 4608         	mov	r0, r1
  4f4a1a: 4611         	mov	r1, r2
  4f4a1c: 461a         	mov	r2, r3
  4f4a1e: f5e1 ea92    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0x21eadc
  4f4a22: f6d0 fd3b    	bl	0x3c549c <RakNet::BitStream::IsNetworkOrder()> @ imm = #-0x12f58a
  4f4a26: 4603         	mov	r3, r0
  4f4a28: f083 0301    	eor	r3, r3, #0x1
  4f4a2c: b2db         	uxtb	r3, r3
  4f4a2e: 2b00         	cmp	r3, #0x0
  4f4a30: d00d         	beq	0x4f4a4e <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x272> @ imm = #0x1a
  4f4a32: 9b04         	ldr	r3, [sp, #0x10]
  4f4a34: 009b         	lsls	r3, r3, #0x2
  4f4a36: 9a06         	ldr	r2, [sp, #0x18]
  4f4a38: 4413         	add	r3, r2
  4f4a3a: 681a         	ldr	r2, [r3]
  4f4a3c: 9b04         	ldr	r3, [sp, #0x10]
  4f4a3e: 009b         	lsls	r3, r3, #0x2
  4f4a40: 9907         	ldr	r1, [sp, #0x1c]
  4f4a42: 440b         	add	r3, r1
  4f4a44: 681b         	ldr	r3, [r3]
  4f4a46: 4610         	mov	r0, r2
  4f4a48: 4619         	mov	r1, r3
  4f4a4a: f768 f9a3    	bl	0x45cd94 <RakNet::BitStream::ReverseBytesInPlace(unsigned char*, unsigned int)> @ imm = #-0x97cba
  4f4a4e: e07d         	b	0x4f4b4c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x370> @ imm = #0xfa
  4f4a50: 9b03         	ldr	r3, [sp, #0xc]
  4f4a52: 3307         	adds	r3, #0x7
  4f4a54: f023 0307    	bic	r3, r3, #0x7
  4f4a58: f103 0208    	add.w	r2, r3, #0x8
  4f4a5c: 9203         	str	r2, [sp, #0xc]
  4f4a5e: e9d3 2300    	ldrd	r2, r3, [r3]
  4f4a62: e9cd 230a    	strd	r2, r3, [sp, #40]
  4f4a66: 9b04         	ldr	r3, [sp, #0x10]
  4f4a68: 009b         	lsls	r3, r3, #0x2
  4f4a6a: 9a07         	ldr	r2, [sp, #0x1c]
  4f4a6c: 4413         	add	r3, r2
  4f4a6e: 2208         	movs	r2, #0x8
  4f4a70: 601a         	str	r2, [r3]
  4f4a72: 9b04         	ldr	r3, [sp, #0x10]
  4f4a74: 009b         	lsls	r3, r3, #0x2
  4f4a76: 9a06         	ldr	r2, [sp, #0x18]
  4f4a78: 18d5         	adds	r5, r2, r3
  4f4a7a: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x4f4b88 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3ac>
  4f4a7c: 58e3         	ldr	r3, [r4, r3]
  4f4a7e: 681b         	ldr	r3, [r3]
  4f4a80: 9a04         	ldr	r2, [sp, #0x10]
  4f4a82: 0092         	lsls	r2, r2, #0x2
  4f4a84: 9907         	ldr	r1, [sp, #0x1c]
  4f4a86: 440a         	add	r2, r1
  4f4a88: 6812         	ldr	r2, [r2]
  4f4a8a: 4610         	mov	r0, r2
  4f4a8c: 4a42         	ldr	r2, [pc, #0x108]        @ 0x4f4b98 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3bc>
  4f4a8e: 447a         	add	r2, pc
  4f4a90: 4611         	mov	r1, r2
  4f4a92: 2285         	movs	r2, #0x85
  4f4a94: 4798         	blx	r3
  4f4a96: 4603         	mov	r3, r0
  4f4a98: 602b         	str	r3, [r5]
  4f4a9a: 9b04         	ldr	r3, [sp, #0x10]
  4f4a9c: 009b         	lsls	r3, r3, #0x2
  4f4a9e: 9a06         	ldr	r2, [sp, #0x18]
  4f4aa0: 4413         	add	r3, r2
  4f4aa2: 6819         	ldr	r1, [r3]
  4f4aa4: 9b04         	ldr	r3, [sp, #0x10]
  4f4aa6: 009b         	lsls	r3, r3, #0x2
  4f4aa8: 9a07         	ldr	r2, [sp, #0x1c]
  4f4aaa: 4413         	add	r3, r2
  4f4aac: 681b         	ldr	r3, [r3]
  4f4aae: aa0a         	add	r2, sp, #0x28
  4f4ab0: 4608         	mov	r0, r1
  4f4ab2: 4611         	mov	r1, r2
  4f4ab4: 461a         	mov	r2, r3
  4f4ab6: f5e1 ea46    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0x21eb74
  4f4aba: f6d0 fcef    	bl	0x3c549c <RakNet::BitStream::IsNetworkOrder()> @ imm = #-0x12f622
  4f4abe: 4603         	mov	r3, r0
  4f4ac0: f083 0301    	eor	r3, r3, #0x1
  4f4ac4: b2db         	uxtb	r3, r3
  4f4ac6: 2b00         	cmp	r3, #0x0
  4f4ac8: d00d         	beq	0x4f4ae6 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x30a> @ imm = #0x1a
  4f4aca: 9b04         	ldr	r3, [sp, #0x10]
  4f4acc: 009b         	lsls	r3, r3, #0x2
  4f4ace: 9a06         	ldr	r2, [sp, #0x18]
  4f4ad0: 4413         	add	r3, r2
  4f4ad2: 681a         	ldr	r2, [r3]
  4f4ad4: 9b04         	ldr	r3, [sp, #0x10]
  4f4ad6: 009b         	lsls	r3, r3, #0x2
  4f4ad8: 9907         	ldr	r1, [sp, #0x1c]
  4f4ada: 440b         	add	r3, r1
  4f4adc: 681b         	ldr	r3, [r3]
  4f4ade: 4610         	mov	r0, r2
  4f4ae0: 4619         	mov	r1, r3
  4f4ae2: f768 f957    	bl	0x45cd94 <RakNet::BitStream::ReverseBytesInPlace(unsigned char*, unsigned int)> @ imm = #-0x97d52
  4f4ae6: e031         	b	0x4f4b4c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x370> @ imm = #0x62
  4f4ae8: 9b03         	ldr	r3, [sp, #0xc]
  4f4aea: 1d1a         	adds	r2, r3, #0x4
  4f4aec: 9203         	str	r2, [sp, #0xc]
  4f4aee: 681b         	ldr	r3, [r3]
  4f4af0: 9309         	str	r3, [sp, #0x24]
  4f4af2: 9b04         	ldr	r3, [sp, #0x10]
  4f4af4: 009b         	lsls	r3, r3, #0x2
  4f4af6: 9a07         	ldr	r2, [sp, #0x1c]
  4f4af8: 441a         	add	r2, r3
  4f4afa: 9b03         	ldr	r3, [sp, #0xc]
  4f4afc: 1d19         	adds	r1, r3, #0x4
  4f4afe: 9103         	str	r1, [sp, #0xc]
  4f4b00: 681b         	ldr	r3, [r3]
  4f4b02: 6013         	str	r3, [r2]
  4f4b04: 9b04         	ldr	r3, [sp, #0x10]
  4f4b06: 009b         	lsls	r3, r3, #0x2
  4f4b08: 9a06         	ldr	r2, [sp, #0x18]
  4f4b0a: 18d5         	adds	r5, r2, r3
  4f4b0c: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x4f4b88 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3ac>
  4f4b0e: 58e3         	ldr	r3, [r4, r3]
  4f4b10: 681b         	ldr	r3, [r3]
  4f4b12: 9a04         	ldr	r2, [sp, #0x10]
  4f4b14: 0092         	lsls	r2, r2, #0x2
  4f4b16: 9907         	ldr	r1, [sp, #0x1c]
  4f4b18: 440a         	add	r2, r1
  4f4b1a: 6812         	ldr	r2, [r2]
  4f4b1c: 4610         	mov	r0, r2
  4f4b1e: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x4f4b9c <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x3c0>
  4f4b20: 447a         	add	r2, pc
  4f4b22: 4611         	mov	r1, r2
  4f4b24: 228e         	movs	r2, #0x8e
  4f4b26: 4798         	blx	r3
  4f4b28: 4603         	mov	r3, r0
  4f4b2a: 602b         	str	r3, [r5]
  4f4b2c: 9b04         	ldr	r3, [sp, #0x10]
  4f4b2e: 009b         	lsls	r3, r3, #0x2
  4f4b30: 9a06         	ldr	r2, [sp, #0x18]
  4f4b32: 4413         	add	r3, r2
  4f4b34: 681a         	ldr	r2, [r3]
  4f4b36: 9b04         	ldr	r3, [sp, #0x10]
  4f4b38: 009b         	lsls	r3, r3, #0x2
  4f4b3a: 9907         	ldr	r1, [sp, #0x1c]
  4f4b3c: 440b         	add	r3, r1
  4f4b3e: 681b         	ldr	r3, [r3]
  4f4b40: 4610         	mov	r0, r2
  4f4b42: 9909         	ldr	r1, [sp, #0x24]
  4f4b44: 461a         	mov	r2, r3
  4f4b46: f5e1 e9fe    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0x21ec04
  4f4b4a: bf00         	nop
  4f4b4c: 9b04         	ldr	r3, [sp, #0x10]
  4f4b4e: 3301         	adds	r3, #0x1
  4f4b50: 9304         	str	r3, [sp, #0x10]
  4f4b52: 9b05         	ldr	r3, [sp, #0x14]
  4f4b54: 3301         	adds	r3, #0x1
  4f4b56: 9305         	str	r3, [sp, #0x14]
  4f4b58: 9802         	ldr	r0, [sp, #0x8]
  4f4b5a: f000 f8f7    	bl	0x4f4d4c <DataStructures::List<VariadicSQLParser::IndexAndType>::Size() const> @ imm = #0x1ee
  4f4b5e: 4602         	mov	r2, r0
  4f4b60: 9b04         	ldr	r3, [sp, #0x10]
  4f4b62: 429a         	cmp	r2, r3
  4f4b64: bf94         	ite	ls
  4f4b66: 2300         	movls	r3, #0x0
  4f4b68: 2301         	movhi	r3, #0x1
  4f4b6a: b2db         	uxtb	r3, r3
  4f4b6c: 2b00         	cmp	r3, #0x0
  4f4b6e: f47f ae70    	bne.w	0x4f4852 <VariadicSQLParser::ExtractArguments(std::__va_list, DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**)+0x76> @ imm = #-0x320
  4f4b72: b00d         	add	sp, #0x34
  4f4b74: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4f4b75); words below are literal-pool data ---
  4f4b76: bf00         	nop
  4f4b78: e21e         	b	0x4f4fb8 <_findnext(long, _finddata_t*)+0x20> @ imm = #0x43c
  4f4b7a: 0043         	lsls	r3, r0, #0x1
  4f4b7c: b74c         	<unknown>
  4f4b7e: 002f         	movs	r7, r5
  4f4b80: b730         	<unknown>
  4f4b82: 002f         	movs	r7, r5
  4f4b84: e428         	b	0x4f43d8 <RakNet::VariableDeltaSerializer::RemoteSystemVariableHistory** RakNet::OP_NEW_ARRAY<RakNet::VariableDeltaSerializer::RemoteSystemVariableHistory*>(int, char const*, unsigned int)+0x40> @ imm = #-0x7b0
  4f4b86: ffff e1f0    	vsra.u64	q15, q8, #0x1
  4f4b8a: ffff b666    	<unknown>
  4f4b8e: 002f         	movs	r7, r5
  4f4b90: b5d2         	push	{r1, r4, r6, r7, lr}
  4f4b92: 002f         	movs	r7, r5
  4f4b94: b566         	push	{r1, r2, r5, r6, lr}
  4f4b96: 002f         	movs	r7, r5
  4f4b98: b4ce         	push	{r1, r2, r3, r6, r7}
  4f4b9a: 002f         	movs	r7, r5
  4f4b9c: b43c         	push	{r2, r3, r4, r5}
  4f4b9e: 002f         	movs	r7, r5

// ==== VariadicSQLParser::FreeArguments
//      file offset 0x4f4ba0 (= ELF address; Ghidra 0x504ba0), 156 bytes, Thumb-2
  4f4ba0: b510         	push	{r4, lr}
  4f4ba2: b086         	sub	sp, #0x18
  4f4ba4: 9003         	str	r0, [sp, #0xc]
  4f4ba6: 9102         	str	r1, [sp, #0x8]
  4f4ba8: 9201         	str	r2, [sp, #0x4]
  4f4baa: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x4f4c28 <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x88>
  4f4bac: 447c         	add	r4, pc
  4f4bae: 9803         	ldr	r0, [sp, #0xc]
  4f4bb0: f000 f8cc    	bl	0x4f4d4c <DataStructures::List<VariadicSQLParser::IndexAndType>::Size() const> @ imm = #0x198
  4f4bb4: 4603         	mov	r3, r0
  4f4bb6: 2b00         	cmp	r3, #0x0
  4f4bb8: bf14         	ite	ne
  4f4bba: 2300         	movne	r3, #0x0
  4f4bbc: 2301         	moveq	r3, #0x1
  4f4bbe: b2db         	uxtb	r3, r3
  4f4bc0: 2b00         	cmp	r3, #0x0
  4f4bc2: d000         	beq	0x4f4bc6 <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x26> @ imm = #0x0
  4f4bc4: e02d         	b	0x4f4c22 <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x82> @ imm = #0x5a
  4f4bc6: 2300         	movs	r3, #0x0
  4f4bc8: 9305         	str	r3, [sp, #0x14]
  4f4bca: e010         	b	0x4f4bee <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x4e> @ imm = #0x20
  4f4bcc: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x4f4c2c <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x8c>
  4f4bce: 58e3         	ldr	r3, [r4, r3]
  4f4bd0: 681b         	ldr	r3, [r3]
  4f4bd2: 9a05         	ldr	r2, [sp, #0x14]
  4f4bd4: 0092         	lsls	r2, r2, #0x2
  4f4bd6: 9902         	ldr	r1, [sp, #0x8]
  4f4bd8: 440a         	add	r2, r1
  4f4bda: 6812         	ldr	r2, [r2]
  4f4bdc: 4610         	mov	r0, r2
  4f4bde: 4a14         	ldr	r2, [pc, #0x50]         @ 0x4f4c30 <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x90>
  4f4be0: 447a         	add	r2, pc
  4f4be2: 4611         	mov	r1, r2
  4f4be4: 229d         	movs	r2, #0x9d
  4f4be6: 4798         	blx	r3
  4f4be8: 9b05         	ldr	r3, [sp, #0x14]
  4f4bea: 3301         	adds	r3, #0x1
  4f4bec: 9305         	str	r3, [sp, #0x14]
  4f4bee: 9803         	ldr	r0, [sp, #0xc]
  4f4bf0: f000 f8ac    	bl	0x4f4d4c <DataStructures::List<VariadicSQLParser::IndexAndType>::Size() const> @ imm = #0x158
  4f4bf4: 4602         	mov	r2, r0
  4f4bf6: 9b05         	ldr	r3, [sp, #0x14]
  4f4bf8: 429a         	cmp	r2, r3
  4f4bfa: bf94         	ite	ls
  4f4bfc: 2300         	movls	r3, #0x0
  4f4bfe: 2301         	movhi	r3, #0x1
  4f4c00: b2db         	uxtb	r3, r3
  4f4c02: 2b00         	cmp	r3, #0x0
  4f4c04: d1e2         	bne	0x4f4bcc <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x2c> @ imm = #-0x3c
  4f4c06: 9802         	ldr	r0, [sp, #0x8]
  4f4c08: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x4f4c34 <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x94>
  4f4c0a: 447b         	add	r3, pc
  4f4c0c: 4619         	mov	r1, r3
  4f4c0e: 229e         	movs	r2, #0x9e
  4f4c10: f787 fa88    	bl	0x47c124 <void RakNet::OP_DELETE_ARRAY<char*>(char**, char const*, unsigned int)> @ imm = #-0x78af0
  4f4c14: 9801         	ldr	r0, [sp, #0x4]
  4f4c16: 4b08         	ldr	r3, [pc, #0x20]         @ 0x4f4c38 <VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&, char**, int*)+0x98>
  4f4c18: 447b         	add	r3, pc
  4f4c1a: 4619         	mov	r1, r3
  4f4c1c: 229f         	movs	r2, #0x9f
  4f4c1e: f78c fb89    	bl	0x481334 <void RakNet::OP_DELETE_ARRAY<int>(int*, char const*, unsigned int)> @ imm = #-0x738ee
  4f4c22: b006         	add	sp, #0x18
  4f4c24: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4f4c25); words below are literal-pool data ---
  4f4c26: bf00         	nop
  4f4c28: de5c         	udf	#0x5c
  4f4c2a: 0043         	lsls	r3, r0, #0x1
  4f4c2c: e1f4         	b	0x4f5018 <_findnext(long, _finddata_t*)+0x80> @ imm = #0x3e8
  4f4c2e: ffff b37c    	<unknown>
  4f4c32: 002f         	movs	r7, r5
  4f4c34: b352         	cbz	r2, 0x4f4c8c <DataStructures::List<VariadicSQLParser::IndexAndType>::Clear(bool, char const*, unsigned int)+0x50> @ imm = #0x54
  4f4c36: 002f         	movs	r7, r5
  4f4c38: b344         	cbz	r4, 0x4f4c8c <DataStructures::List<VariadicSQLParser::IndexAndType>::Clear(bool, char const*, unsigned int)+0x50> @ imm = #0x50
  4f4c3a: 002f         	movs	r7, r5
