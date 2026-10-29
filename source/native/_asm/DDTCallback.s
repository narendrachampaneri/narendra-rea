// DDTCallback: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../DDTCallback.cpp

// ==== DDTCallback::DDTCallback
//      file offset 0x477054 (= ELF address; Ghidra 0x487054), 44 bytes, Thumb-2
  477054: b510         	push	{r4, lr}
  477056: b082         	sub	sp, #0x8
  477058: 9001         	str	r0, [sp, #0x4]
  47705a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x477078 <DDTCallback::DDTCallback()+0x24>
  47705c: 447c         	add	r4, pc
  47705e: 9b01         	ldr	r3, [sp, #0x4]
  477060: 4618         	mov	r0, r3
  477062: f7ff ffab    	bl	0x476fbc <RakNet::FileListTransferCBInterface::FileListTransferCBInterface()> @ imm = #-0xaa
  477066: 9b01         	ldr	r3, [sp, #0x4]
  477068: 4a04         	ldr	r2, [pc, #0x10]         @ 0x47707c <DDTCallback::DDTCallback()+0x28>
  47706a: 58a2         	ldr	r2, [r4, r2]
  47706c: 3208         	adds	r2, #0x8
  47706e: 601a         	str	r2, [r3]
  477070: 9b01         	ldr	r3, [sp, #0x4]
  477072: 4618         	mov	r0, r3
  477074: b002         	add	sp, #0x8
  477076: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x477077); words below are literal-pool data ---
  477078: b9ac         	cbnz	r4, 0x4770a6 <DDTCallback::~DDTCallback()+0x26> @ imm = #0x2a
  47707a: 004b         	lsls	r3, r1, #0x1
  47707c: e254         	b	0x477528 <RakNet::DirectoryDeltaTransfer::SetApplicationDirectory(char const*)+0x6c> @ imm = #0x4a8
  47707e: ffff b500    	<unknown>

// ==== DDTCallback::~DDTCallback
//      file offset 0x477080 (= ELF address; Ghidra 0x487080), 60 bytes, Thumb-2
  477080: b500         	push	{lr}
  477082: b083         	sub	sp, #0xc
  477084: 9001         	str	r0, [sp, #0x4]
  477086: 490b         	ldr	r1, [pc, #0x2c]         @ 0x4770b4 <DDTCallback::~DDTCallback()+0x34>
  477088: 4479         	add	r1, pc
  47708a: 9b01         	ldr	r3, [sp, #0x4]
  47708c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x4770b8 <DDTCallback::~DDTCallback()+0x38>
  47708e: 588a         	ldr	r2, [r1, r2]
  477090: 3208         	adds	r2, #0x8
  477092: 601a         	str	r2, [r3]
  477094: 9b01         	ldr	r3, [sp, #0x4]
  477096: 4618         	mov	r0, r3
  477098: f7ff ffa2    	bl	0x476fe0 <RakNet::FileListTransferCBInterface::~FileListTransferCBInterface()> @ imm = #-0xbc
  47709c: 2300         	movs	r3, #0x0
  47709e: 2b00         	cmp	r3, #0x0
  4770a0: d002         	beq	0x4770a8 <DDTCallback::~DDTCallback()+0x28> @ imm = #0x4
  4770a2: 9801         	ldr	r0, [sp, #0x4]
  4770a4: f310 fffe    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x310ffc
  4770a8: 9b01         	ldr	r3, [sp, #0x4]
  4770aa: 4618         	mov	r0, r3
  4770ac: b003         	add	sp, #0xc
  4770ae: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4770b1); words below are literal-pool data ---
  4770b2: bf00         	nop
  4770b4: b980         	cbnz	r0, 0x4770d8 <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)> @ imm = #0x20
  4770b6: 004b         	lsls	r3, r1, #0x1
  4770b8: e254         	b	0x477564 <RakNet::DirectoryDeltaTransfer::SetUploadSendParameters(PacketPriority, char)+0x20> @ imm = #0x4a8
  4770ba: ffff b500    	<unknown>

// ==== DDTCallback::~DDTCallback
//      file offset 0x4770bc (= ELF address; Ghidra 0x4870bc), 28 bytes, Thumb-2
  4770bc: b500         	push	{lr}
  4770be: b083         	sub	sp, #0xc
  4770c0: 9001         	str	r0, [sp, #0x4]
  4770c2: 9801         	ldr	r0, [sp, #0x4]
  4770c4: f7ff ffdc    	bl	0x477080 <DDTCallback::~DDTCallback()> @ imm = #-0x48
  4770c8: 9801         	ldr	r0, [sp, #0x4]
  4770ca: f310 ffeb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x310fd6
  4770ce: 9b01         	ldr	r3, [sp, #0x4]
  4770d0: 4618         	mov	r0, r3
  4770d2: b003         	add	sp, #0xc
  4770d4: f85d fb04    	ldr	pc, [sp], #4

// ==== DDTCallback::OnFile
//      file offset 0x4770d8 (= ELF address; Ghidra 0x4870d8), 216 bytes, Thumb-2
  4770d8: b530         	push	{r4, r5, lr}
  4770da: f2ad 4d14    	subw	sp, sp, #0x414
  4770de: ab01         	add	r3, sp, #0x4
  4770e0: 6018         	str	r0, [r3]
  4770e2: 466b         	mov	r3, sp
  4770e4: 6019         	str	r1, [r3]
  4770e6: 4c30         	ldr	r4, [pc, #0xc0]         @ 0x4771a8 <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0xd0>
  4770e8: 447c         	add	r4, pc
  4770ea: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x4771ac <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0xd4>
  4770ec: 58e3         	ldr	r3, [r4, r3]
  4770ee: 681b         	ldr	r3, [r3]
  4770f0: f8cd 340c    	str.w	r3, [sp, #0x40c]
  4770f4: 466b         	mov	r3, sp
  4770f6: 681b         	ldr	r3, [r3]
  4770f8: 3304         	adds	r3, #0x4
  4770fa: 2b00         	cmp	r3, #0x0
  4770fc: d034         	beq	0x477168 <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0x90> @ imm = #0x68
  4770fe: 466b         	mov	r3, sp
  477100: 681b         	ldr	r3, [r3]
  477102: f8d3 3204    	ldr.w	r3, [r3, #0x204]
  477106: 2b00         	cmp	r3, #0x0
  477108: d02e         	beq	0x477168 <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0x90> @ imm = #0x5c
  47710a: ab01         	add	r3, sp, #0x4
  47710c: 681b         	ldr	r3, [r3]
  47710e: 685d         	ldr	r5, [r3, #0x4]
  477110: 466b         	mov	r3, sp
  477112: 681b         	ldr	r3, [r3]
  477114: 3304         	adds	r3, #0x4
  477116: 4618         	mov	r0, r3
  477118: f65e ef0e    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0x1a11e4
  47711c: 4603         	mov	r3, r0
  47711e: 429d         	cmp	r5, r3
  477120: d222         	bhs	0x477168 <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0x90> @ imm = #0x44
  477122: ab01         	add	r3, sp, #0x4
  477124: 681b         	ldr	r3, [r3]
  477126: 3308         	adds	r3, #0x8
  477128: aa03         	add	r2, sp, #0xc
  47712a: 4610         	mov	r0, r2
  47712c: 4619         	mov	r1, r3
  47712e: f65f e85a    	blx	0x2d61e4 <.plt+0x314>   @ imm = #-0x1a0f4c
  477132: ab01         	add	r3, sp, #0x4
  477134: 681b         	ldr	r3, [r3]
  477136: 685b         	ldr	r3, [r3, #0x4]
  477138: 466a         	mov	r2, sp
  47713a: 6812         	ldr	r2, [r2]
  47713c: 4413         	add	r3, r2
  47713e: 3304         	adds	r3, #0x4
  477140: aa03         	add	r2, sp, #0xc
  477142: 4610         	mov	r0, r2
  477144: 4619         	mov	r1, r3
  477146: f65f e866    	blx	0x2d6214 <.plt+0x344>   @ imm = #-0x1a0f34
  47714a: 466b         	mov	r3, sp
  47714c: 681b         	ldr	r3, [r3]
  47714e: f8d3 2204    	ldr.w	r2, [r3, #0x204]
  477152: 466b         	mov	r3, sp
  477154: 681b         	ldr	r3, [r3]
  477156: f8d3 3208    	ldr.w	r3, [r3, #0x208]
  47715a: a903         	add	r1, sp, #0xc
  47715c: 4608         	mov	r0, r1
  47715e: 4611         	mov	r1, r2
  477160: 461a         	mov	r2, r3
  477162: f00a fdf7    	bl	0x481d54 <WriteFileWithDirectories(char const*, char*, unsigned int)> @ imm = #0xabee
  477166: e002         	b	0x47716e <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0x96> @ imm = #0x4
  477168: ab03         	add	r3, sp, #0xc
  47716a: 2200         	movs	r2, #0x0
  47716c: 701a         	strb	r2, [r3]
  47716e: ab01         	add	r3, sp, #0x4
  477170: 681b         	ldr	r3, [r3]
  477172: f8d3 3208    	ldr.w	r3, [r3, #0x208]
  477176: 681b         	ldr	r3, [r3]
  477178: 3308         	adds	r3, #0x8
  47717a: 681b         	ldr	r3, [r3]
  47717c: aa01         	add	r2, sp, #0x4
  47717e: 6812         	ldr	r2, [r2]
  477180: f8d2 1208    	ldr.w	r1, [r2, #0x208]
  477184: 466a         	mov	r2, sp
  477186: 4608         	mov	r0, r1
  477188: 6811         	ldr	r1, [r2]
  47718a: 4798         	blx	r3
  47718c: 4603         	mov	r3, r0
  47718e: 4618         	mov	r0, r3
  477190: 4b06         	ldr	r3, [pc, #0x18]         @ 0x4771ac <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0xd4>
  477192: 58e3         	ldr	r3, [r4, r3]
  477194: f8dd 240c    	ldr.w	r2, [sp, #0x40c]
  477198: 681b         	ldr	r3, [r3]
  47719a: 429a         	cmp	r2, r3
  47719c: d001         	beq	0x4771a2 <DDTCallback::OnFile(RakNet::FileListTransferCBInterface::OnFileStruct*)+0xca> @ imm = #0x2
  47719e: f65e eee4    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x1a1238
  4771a2: f20d 4d14    	addw	sp, sp, #0x414
  4771a6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4771a7); words below are literal-pool data ---
  4771a8: b920         	cbnz	r0, 0x4771b4 <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0x4> @ imm = #0x8
  4771aa: 004b         	lsls	r3, r1, #0x1
  4771ac: d72c         	bvc	0x477208 <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0x58> @ imm = #0x58
  4771ae: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== DDTCallback::OnFileProgress
//      file offset 0x4771b0 (= ELF address; Ghidra 0x4871b0), 180 bytes, Thumb-2
  4771b0: b530         	push	{r4, r5, lr}
  4771b2: f2ad 4d14    	subw	sp, sp, #0x414
  4771b6: ab01         	add	r3, sp, #0x4
  4771b8: 6018         	str	r0, [r3]
  4771ba: 466b         	mov	r3, sp
  4771bc: 6019         	str	r1, [r3]
  4771be: 4c27         	ldr	r4, [pc, #0x9c]         @ 0x47725c <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0xac>
  4771c0: 447c         	add	r4, pc
  4771c2: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x477260 <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0xb0>
  4771c4: 58e3         	ldr	r3, [r4, r3]
  4771c6: 681b         	ldr	r3, [r3]
  4771c8: f8cd 340c    	str.w	r3, [sp, #0x40c]
  4771cc: 466b         	mov	r3, sp
  4771ce: 681b         	ldr	r3, [r3]
  4771d0: 681b         	ldr	r3, [r3]
  4771d2: 3304         	adds	r3, #0x4
  4771d4: 2b00         	cmp	r3, #0x0
  4771d6: d022         	beq	0x47721e <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0x6e> @ imm = #0x44
  4771d8: ab01         	add	r3, sp, #0x4
  4771da: 681b         	ldr	r3, [r3]
  4771dc: 685d         	ldr	r5, [r3, #0x4]
  4771de: 466b         	mov	r3, sp
  4771e0: 681b         	ldr	r3, [r3]
  4771e2: 681b         	ldr	r3, [r3]
  4771e4: 3304         	adds	r3, #0x4
  4771e6: 4618         	mov	r0, r3
  4771e8: f65e eea6    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0x1a12b4
  4771ec: 4603         	mov	r3, r0
  4771ee: 429d         	cmp	r5, r3
  4771f0: d215         	bhs	0x47721e <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0x6e> @ imm = #0x2a
  4771f2: ab01         	add	r3, sp, #0x4
  4771f4: 681b         	ldr	r3, [r3]
  4771f6: 3308         	adds	r3, #0x8
  4771f8: aa03         	add	r2, sp, #0xc
  4771fa: 4610         	mov	r0, r2
  4771fc: 4619         	mov	r1, r3
  4771fe: f65e eff2    	blx	0x2d61e4 <.plt+0x314>   @ imm = #-0x1a101c
  477202: 466b         	mov	r3, sp
  477204: 681b         	ldr	r3, [r3]
  477206: 681a         	ldr	r2, [r3]
  477208: ab01         	add	r3, sp, #0x4
  47720a: 681b         	ldr	r3, [r3]
  47720c: 685b         	ldr	r3, [r3, #0x4]
  47720e: 4413         	add	r3, r2
  477210: 3304         	adds	r3, #0x4
  477212: aa03         	add	r2, sp, #0xc
  477214: 4610         	mov	r0, r2
  477216: 4619         	mov	r1, r3
  477218: f65e effc    	blx	0x2d6214 <.plt+0x344>   @ imm = #-0x1a1008
  47721c: e002         	b	0x477224 <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0x74> @ imm = #0x4
  47721e: ab03         	add	r3, sp, #0xc
  477220: 2200         	movs	r2, #0x0
  477222: 701a         	strb	r2, [r3]
  477224: ab01         	add	r3, sp, #0x4
  477226: 681b         	ldr	r3, [r3]
  477228: f8d3 3208    	ldr.w	r3, [r3, #0x208]
  47722c: 681b         	ldr	r3, [r3]
  47722e: 330c         	adds	r3, #0xc
  477230: 681b         	ldr	r3, [r3]
  477232: aa01         	add	r2, sp, #0x4
  477234: 6812         	ldr	r2, [r2]
  477236: f8d2 1208    	ldr.w	r1, [r2, #0x208]
  47723a: 466a         	mov	r2, sp
  47723c: 4608         	mov	r0, r1
  47723e: 6811         	ldr	r1, [r2]
  477240: 4798         	blx	r3
  477242: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x477260 <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0xb0>
  477244: 58e3         	ldr	r3, [r4, r3]
  477246: f8dd 240c    	ldr.w	r2, [sp, #0x40c]
  47724a: 681b         	ldr	r3, [r3]
  47724c: 429a         	cmp	r2, r3
  47724e: d001         	beq	0x477254 <DDTCallback::OnFileProgress(RakNet::FileListTransferCBInterface::FileProgressStruct*)+0xa4> @ imm = #0x2
  477250: f65e ee8a    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x1a12ec
  477254: f20d 4d14    	addw	sp, sp, #0x414
  477258: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x477259); words below are literal-pool data ---
  47725a: bf00         	nop
  47725c: b848         	<unknown>
  47725e: 004b         	lsls	r3, r1, #0x1
  477260: d72c         	bvc	0x4772bc <RakNet::DirectoryDeltaTransfer::DestroyInstance(RakNet::DirectoryDeltaTransfer*)+0x14> @ imm = #0x58
  477262: ffff b500    	<unknown>

// ==== DDTCallback::OnDownloadComplete
//      file offset 0x477264 (= ELF address; Ghidra 0x487264), 42 bytes, Thumb-2
  477264: b500         	push	{lr}
  477266: b083         	sub	sp, #0xc
  477268: 9001         	str	r0, [sp, #0x4]
  47726a: 9100         	str	r1, [sp]
  47726c: 9b01         	ldr	r3, [sp, #0x4]
  47726e: f8d3 3208    	ldr.w	r3, [r3, #0x208]
  477272: 681b         	ldr	r3, [r3]
  477274: 3314         	adds	r3, #0x14
  477276: 681b         	ldr	r3, [r3]
  477278: 9a01         	ldr	r2, [sp, #0x4]
  47727a: f8d2 2208    	ldr.w	r2, [r2, #0x208]
  47727e: 4610         	mov	r0, r2
  477280: 9900         	ldr	r1, [sp]
  477282: 4798         	blx	r3
  477284: 4603         	mov	r3, r0
  477286: 4618         	mov	r0, r3
  477288: b003         	add	sp, #0xc
  47728a: f85d fb04    	ldr	pc, [sp], #4
