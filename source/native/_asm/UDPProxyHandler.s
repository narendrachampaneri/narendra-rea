// UDPProxyHandler: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../UDPProxyHandler.cpp

// ==== UDPProxyHandler::OnForwardingSuccess
//      file offset 0x3bf3c8 (= ELF address; Ghidra 0x3cf3c8), 364 bytes, Thumb-2
  3bf3c8: b082         	sub	sp, #0x8
  3bf3ca: b530         	push	{r4, r5, lr}
  3bf3cc: b093         	sub	sp, #0x4c
  3bf3ce: 9009         	str	r0, [sp, #0x24]
  3bf3d0: 9108         	str	r1, [sp, #0x20]
  3bf3d2: 9317         	str	r3, [sp, #0x5c]
  3bf3d4: 4613         	mov	r3, r2
  3bf3d6: f8ad 301e    	strh.w	r3, [sp, #0x1e]
  3bf3da: 9b2a         	ldr	r3, [sp, #0xa8]
  3bf3dc: 9306         	str	r3, [sp, #0x18]
  3bf3de: 4c47         	ldr	r4, [pc, #0x11c]        @ 0x3bf4fc <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x134>
  3bf3e0: 447c         	add	r4, pc
  3bf3e2: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x3bf500 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x138>
  3bf3e4: 58e3         	ldr	r3, [r4, r3]
  3bf3e6: 681b         	ldr	r3, [r3]
  3bf3e8: 9311         	str	r3, [sp, #0x44]
  3bf3ea: f8bd 501e    	ldrh.w	r5, [sp, #0x1e]
  3bf3ee: ab21         	add	r3, sp, #0x84
  3bf3f0: 4618         	mov	r0, r3
  3bf3f2: 2100         	movs	r1, #0x0
  3bf3f4: 227c         	movs	r2, #0x7c
  3bf3f6: f0e4 fe71    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe4ce2
  3bf3fa: 4603         	mov	r3, r0
  3bf3fc: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3bf504 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x13c>
  3bf3fe: 447a         	add	r2, pc
  3bf400: 4610         	mov	r0, r2
  3bf402: 9908         	ldr	r1, [sp, #0x20]
  3bf404: 462a         	mov	r2, r5
  3bf406: f716 edf8    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xe9410
  3bf40a: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3bf508 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x140>
  3bf40c: 447b         	add	r3, pc
  3bf40e: 4618         	mov	r0, r3
  3bf410: f716 ee1c    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe93c8
  3bf414: aa0c         	add	r2, sp, #0x30
  3bf416: f8bd 301e    	ldrh.w	r3, [sp, #0x1e]
  3bf41a: 4610         	mov	r0, r2
  3bf41c: 9908         	ldr	r1, [sp, #0x20]
  3bf41e: 461a         	mov	r2, r3
  3bf420: f0e4 feea    	bl	0x4a41f8 <RakNet::SystemAddress::SystemAddress(char const*, unsigned short)> @ imm = #0xe4dd4
  3bf424: ab0c         	add	r3, sp, #0x30
  3bf426: 4618         	mov	r0, r3
  3bf428: 2101         	movs	r1, #0x1
  3bf42a: 227c         	movs	r2, #0x7c
  3bf42c: f0e4 fe56    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe4cac
  3bf430: 4603         	mov	r3, r0
  3bf432: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x3bf50c <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x144>
  3bf434: 447a         	add	r2, pc
  3bf436: 4610         	mov	r0, r2
  3bf438: 4619         	mov	r1, r3
  3bf43a: f716 edde    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xe9444
  3bf43e: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3bf510 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x148>
  3bf440: 447b         	add	r3, pc
  3bf442: 681b         	ldr	r3, [r3]
  3bf444: 681b         	ldr	r3, [r3]
  3bf446: 3338         	adds	r3, #0x38
  3bf448: 681d         	ldr	r5, [r3]
  3bf44a: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3bf514 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x14c>
  3bf44c: 447b         	add	r3, pc
  3bf44e: 681a         	ldr	r2, [r3]
  3bf450: f8bd 301e    	ldrh.w	r3, [sp, #0x1e]
  3bf454: 211a         	movs	r1, #0x1a
  3bf456: 9100         	str	r1, [sp]
  3bf458: 2100         	movs	r1, #0x0
  3bf45a: 9101         	str	r1, [sp, #0x4]
  3bf45c: 2100         	movs	r1, #0x0
  3bf45e: 9102         	str	r1, [sp, #0x8]
  3bf460: 210c         	movs	r1, #0xc
  3bf462: 9103         	str	r1, [sp, #0xc]
  3bf464: f44f 71fa    	mov.w	r1, #0x1f4
  3bf468: 9104         	str	r1, [sp, #0x10]
  3bf46a: 2100         	movs	r1, #0x0
  3bf46c: 9105         	str	r1, [sp, #0x14]
  3bf46e: 4610         	mov	r0, r2
  3bf470: 9908         	ldr	r1, [sp, #0x20]
  3bf472: 461a         	mov	r2, r3
  3bf474: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3bf518 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x150>
  3bf476: 447b         	add	r3, pc
  3bf478: 47a8         	blx	r5
  3bf47a: 4603         	mov	r3, r0
  3bf47c: 930b         	str	r3, [sp, #0x2c]
  3bf47e: 9b0b         	ldr	r3, [sp, #0x2c]
  3bf480: 2b00         	cmp	r3, #0x0
  3bf482: d004         	beq	0x3bf48e <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0xc6> @ imm = #0x8
  3bf484: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3bf51c <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x154>
  3bf486: 447b         	add	r3, pc
  3bf488: 4618         	mov	r0, r3
  3bf48a: f716 ede0    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe9440
  3bf48e: ab21         	add	r3, sp, #0x84
  3bf490: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3bf520 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x158>
  3bf492: 447a         	add	r2, pc
  3bf494: 4610         	mov	r0, r2
  3bf496: 4619         	mov	r1, r3
  3bf498: f003 fb18    	bl	0x3c2acc <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Has(RakNet::SystemAddress const&) const> @ imm = #0x3630
  3bf49c: 4603         	mov	r3, r0
  3bf49e: 2b00         	cmp	r3, #0x0
  3bf4a0: d01a         	beq	0x3bf4d8 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x110> @ imm = #0x34
  3bf4a2: ab21         	add	r3, sp, #0x84
  3bf4a4: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x3bf524 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x15c>
  3bf4a6: 447a         	add	r2, pc
  3bf4a8: 4610         	mov	r0, r2
  3bf4aa: 4619         	mov	r1, r3
  3bf4ac: f003 fb3c    	bl	0x3c2b28 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Get(RakNet::SystemAddress const&) const> @ imm = #0x3678
  3bf4b0: 4603         	mov	r3, r0
  3bf4b2: 681b         	ldr	r3, [r3]
  3bf4b4: 930a         	str	r3, [sp, #0x28]
  3bf4b6: 9b0a         	ldr	r3, [sp, #0x28]
  3bf4b8: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x3bf528 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x160>
  3bf4ba: 447a         	add	r2, pc
  3bf4bc: 4610         	mov	r0, r2
  3bf4be: 4619         	mov	r1, r3
  3bf4c0: f716 ed9a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xe94cc
  3bf4c4: aa0c         	add	r2, sp, #0x30
  3bf4c6: ab0a         	add	r3, sp, #0x28
  3bf4c8: 4918         	ldr	r1, [pc, #0x60]         @ 0x3bf52c <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x164>
  3bf4ca: 4479         	add	r1, pc
  3bf4cc: 4608         	mov	r0, r1
  3bf4ce: 4611         	mov	r1, r2
  3bf4d0: 461a         	mov	r2, r3
  3bf4d2: f003 fb5f    	bl	0x3c2b94 <DataStructures::Map<RakNet::SystemAddress, int, &int DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress const&, RakNet::SystemAddress const&)>::Set(RakNet::SystemAddress const&, int const&)> @ imm = #0x36be
  3bf4d6: e004         	b	0x3bf4e2 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x11a> @ imm = #0x8
  3bf4d8: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3bf530 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x168>
  3bf4da: 447b         	add	r3, pc
  3bf4dc: 4618         	mov	r0, r3
  3bf4de: f716 edb6    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe9494
  3bf4e2: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3bf500 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x138>
  3bf4e4: 58e3         	ldr	r3, [r4, r3]
  3bf4e6: 9a11         	ldr	r2, [sp, #0x44]
  3bf4e8: 681b         	ldr	r3, [r3]
  3bf4ea: 429a         	cmp	r2, r3
  3bf4ec: d001         	beq	0x3bf4f2 <UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x12a> @ imm = #0x2
  3bf4ee: f716 ed3c    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xe9588
  3bf4f2: b013         	add	sp, #0x4c
  3bf4f4: e8bd 4030    	pop.w	{r4, r5, lr}
  3bf4f8: b002         	add	sp, #0x8
  3bf4fa: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf4fb); words below are literal-pool data ---
  3bf4fc: 3628         	adds	r6, #0x28
  3bf4fe: 0057         	lsls	r7, r2, #0x1
  3bf500: d72c         	bvc	0x3bf55c <UDPProxyHandler::OnForwardingNotification(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x28> @ imm = #0x58
  3bf502: ffff 5b56    	<unknown>
  3bf506: 0041         	lsls	r1, r0, #0x1
  3bf508: 5b7c         	ldrh	r4, [r7, r5]
  3bf50a: 0041         	lsls	r1, r0, #0x1
  3bf50c: 5b8c         	ldrh	r4, [r1, r6]
  3bf50e: 0041         	lsls	r1, r0, #0x1
  3bf510: 1fc4         	subs	r4, r0, #0x7
  3bf512: 0058         	lsls	r0, r3, #0x1
  3bf514: 1fb8         	subs	r0, r7, #0x6
  3bf516: 0058         	lsls	r0, r3, #0x1
  3bf518: 5b6a         	ldrh	r2, [r5, r5]
  3bf51a: 0041         	lsls	r1, r0, #0x1
  3bf51c: 5b76         	ldrh	r6, [r6, r5]
  3bf51e: 0041         	lsls	r1, r0, #0x1
  3bf520: 2012         	movs	r0, #0x12
  3bf522: 0058         	lsls	r0, r3, #0x1
  3bf524: 1ffe         	subs	r6, r7, #0x7
  3bf526: 0058         	lsls	r0, r3, #0x1
  3bf528: 5b6e         	ldrh	r6, [r5, r5]
  3bf52a: 0041         	lsls	r1, r0, #0x1
  3bf52c: 1f86         	subs	r6, r0, #0x6
  3bf52e: 0058         	lsls	r0, r3, #0x1
  3bf530: 5b66         	ldrh	r6, [r4, r5]
  3bf532: 0041         	lsls	r1, r0, #0x1

// ==== UDPProxyHandler::OnForwardingNotification
//      file offset 0x3bf534 (= ELF address; Ghidra 0x3cf534), 64 bytes, Thumb-2
  3bf534: b082         	sub	sp, #0x8
  3bf536: b500         	push	{lr}
  3bf538: b085         	sub	sp, #0x14
  3bf53a: 9003         	str	r0, [sp, #0xc]
  3bf53c: 9102         	str	r1, [sp, #0x8]
  3bf53e: 9307         	str	r3, [sp, #0x1c]
  3bf540: 4613         	mov	r3, r2
  3bf542: f8ad 3006    	strh.w	r3, [sp, #0x6]
  3bf546: ab0c         	add	r3, sp, #0x30
  3bf548: 4618         	mov	r0, r3
  3bf54a: 2100         	movs	r1, #0x0
  3bf54c: 227c         	movs	r2, #0x7c
  3bf54e: f0e4 fdc5    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xe4b8a
  3bf552: 4602         	mov	r2, r0
  3bf554: f8bd 3006    	ldrh.w	r3, [sp, #0x6]
  3bf558: 4905         	ldr	r1, [pc, #0x14]         @ 0x3bf570 <UDPProxyHandler::OnForwardingNotification(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x3c>
  3bf55a: 4479         	add	r1, pc
  3bf55c: 4608         	mov	r0, r1
  3bf55e: 4611         	mov	r1, r2
  3bf560: 9a02         	ldr	r2, [sp, #0x8]
  3bf562: f716 ed4a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xe956c
  3bf566: b005         	add	sp, #0x14
  3bf568: f85d eb04    	ldr	lr, [sp], #4
  3bf56c: b002         	add	sp, #0x8
  3bf56e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf56f); words below are literal-pool data ---
  3bf570: 5b0a         	ldrh	r2, [r1, r4]
  3bf572: 0041         	lsls	r1, r0, #0x1

// ==== UDPProxyHandler::OnNoServersOnline
//      file offset 0x3bf574 (= ELF address; Ghidra 0x3cf574), 40 bytes, Thumb-2
  3bf574: b084         	sub	sp, #0x10
  3bf576: b500         	push	{lr}
  3bf578: b083         	sub	sp, #0xc
  3bf57a: 9001         	str	r0, [sp, #0x4]
  3bf57c: a805         	add	r0, sp, #0x14
  3bf57e: e880 000e    	stm.w	r0, {r1, r2, r3}
  3bf582: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3bf598 <UDPProxyHandler::OnNoServersOnline(RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x24>
  3bf584: 447b         	add	r3, pc
  3bf586: 4618         	mov	r0, r3
  3bf588: f716 ed60    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe9540
  3bf58c: b003         	add	sp, #0xc
  3bf58e: f85d eb04    	ldr	lr, [sp], #4
  3bf592: b004         	add	sp, #0x10
  3bf594: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf595); words below are literal-pool data ---
  3bf596: bf00         	nop
  3bf598: 5b1c         	ldrh	r4, [r3, r4]
  3bf59a: 0041         	lsls	r1, r0, #0x1

// ==== UDPProxyHandler::OnRecipientNotConnected
//      file offset 0x3bf59c (= ELF address; Ghidra 0x3cf59c), 40 bytes, Thumb-2
  3bf59c: b084         	sub	sp, #0x10
  3bf59e: b500         	push	{lr}
  3bf5a0: b083         	sub	sp, #0xc
  3bf5a2: 9001         	str	r0, [sp, #0x4]
  3bf5a4: a805         	add	r0, sp, #0x14
  3bf5a6: e880 000e    	stm.w	r0, {r1, r2, r3}
  3bf5aa: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3bf5c0 <UDPProxyHandler::OnRecipientNotConnected(RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x24>
  3bf5ac: 447b         	add	r3, pc
  3bf5ae: 4618         	mov	r0, r3
  3bf5b0: f716 ed4c    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe9568
  3bf5b4: b003         	add	sp, #0xc
  3bf5b6: f85d eb04    	ldr	lr, [sp], #4
  3bf5ba: b004         	add	sp, #0x10
  3bf5bc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf5bd); words below are literal-pool data ---
  3bf5be: bf00         	nop
  3bf5c0: 5b24         	ldrh	r4, [r4, r4]
  3bf5c2: 0041         	lsls	r1, r0, #0x1

// ==== UDPProxyHandler::OnAllServersBusy
//      file offset 0x3bf5c4 (= ELF address; Ghidra 0x3cf5c4), 40 bytes, Thumb-2
  3bf5c4: b084         	sub	sp, #0x10
  3bf5c6: b500         	push	{lr}
  3bf5c8: b083         	sub	sp, #0xc
  3bf5ca: 9001         	str	r0, [sp, #0x4]
  3bf5cc: a805         	add	r0, sp, #0x14
  3bf5ce: e880 000e    	stm.w	r0, {r1, r2, r3}
  3bf5d2: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3bf5e8 <UDPProxyHandler::OnAllServersBusy(RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x24>
  3bf5d4: 447b         	add	r3, pc
  3bf5d6: 4618         	mov	r0, r3
  3bf5d8: f716 ed38    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe9590
  3bf5dc: b003         	add	sp, #0xc
  3bf5de: f85d eb04    	ldr	lr, [sp], #4
  3bf5e2: b004         	add	sp, #0x10
  3bf5e4: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf5e5); words below are literal-pool data ---
  3bf5e6: bf00         	nop
  3bf5e8: 5b30         	ldrh	r0, [r6, r4]
  3bf5ea: 0041         	lsls	r1, r0, #0x1

// ==== UDPProxyHandler::OnForwardingInProgress
//      file offset 0x3bf5ec (= ELF address; Ghidra 0x3cf5ec), 44 bytes, Thumb-2
  3bf5ec: b082         	sub	sp, #0x8
  3bf5ee: b500         	push	{lr}
  3bf5f0: b085         	sub	sp, #0x14
  3bf5f2: 9003         	str	r0, [sp, #0xc]
  3bf5f4: 9102         	str	r1, [sp, #0x8]
  3bf5f6: 9307         	str	r3, [sp, #0x1c]
  3bf5f8: 4613         	mov	r3, r2
  3bf5fa: f8ad 3006    	strh.w	r3, [sp, #0x6]
  3bf5fe: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3bf614 <UDPProxyHandler::OnForwardingInProgress(char const*, unsigned short, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*)+0x28>
  3bf600: 447b         	add	r3, pc
  3bf602: 4618         	mov	r0, r3
  3bf604: f716 ed22    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xe95bc
  3bf608: b005         	add	sp, #0x14
  3bf60a: f85d eb04    	ldr	lr, [sp], #4
  3bf60e: b002         	add	sp, #0x8
  3bf610: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3bf611); words below are literal-pool data ---
  3bf612: bf00         	nop
  3bf614: 5b3c         	ldrh	r4, [r7, r4]
  3bf616: 0041         	lsls	r1, r0, #0x1

// ==== UDPProxyHandler::UDPProxyHandler
//      file offset 0x3bf618 (= ELF address; Ghidra 0x3cf618), 44 bytes, Thumb-2
  3bf618: b510         	push	{r4, lr}
  3bf61a: b082         	sub	sp, #0x8
  3bf61c: 9001         	str	r0, [sp, #0x4]
  3bf61e: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3bf63c <UDPProxyHandler::UDPProxyHandler()+0x24>
  3bf620: 447c         	add	r4, pc
  3bf622: 9b01         	ldr	r3, [sp, #0x4]
  3bf624: 4618         	mov	r0, r3
  3bf626: f7fe ffaf    	bl	0x3be588 <RakNet::UDPProxyClientResultHandler::UDPProxyClientResultHandler()> @ imm = #-0x10a2
  3bf62a: 9b01         	ldr	r3, [sp, #0x4]
  3bf62c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3bf640 <UDPProxyHandler::UDPProxyHandler()+0x28>
  3bf62e: 58a2         	ldr	r2, [r4, r2]
  3bf630: 3208         	adds	r2, #0x8
  3bf632: 601a         	str	r2, [r3]
  3bf634: 9b01         	ldr	r3, [sp, #0x4]
  3bf636: 4618         	mov	r0, r3
  3bf638: b002         	add	sp, #0x8
  3bf63a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bf63b); words below are literal-pool data ---
  3bf63c: 33e8         	adds	r3, #0xe8
  3bf63e: 0057         	lsls	r7, r2, #0x1
  3bf640: de48         	udf	#0x48
  3bf642: ffff b084    	<unknown>

// ==== UDPProxyHandler::~UDPProxyHandler
//      file offset 0x3c50ac (= ELF address; Ghidra 0x3d50ac), 60 bytes, Thumb-2
  3c50ac: b500         	push	{lr}
  3c50ae: b083         	sub	sp, #0xc
  3c50b0: 9001         	str	r0, [sp, #0x4]
  3c50b2: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3c50e0 <UDPProxyHandler::~UDPProxyHandler()+0x34>
  3c50b4: 4479         	add	r1, pc
  3c50b6: 9b01         	ldr	r3, [sp, #0x4]
  3c50b8: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3c50e4 <UDPProxyHandler::~UDPProxyHandler()+0x38>
  3c50ba: 588a         	ldr	r2, [r1, r2]
  3c50bc: 3208         	adds	r2, #0x8
  3c50be: 601a         	str	r2, [r3]
  3c50c0: 9b01         	ldr	r3, [sp, #0x4]
  3c50c2: 4618         	mov	r0, r3
  3c50c4: f7f9 fa72    	bl	0x3be5ac <RakNet::UDPProxyClientResultHandler::~UDPProxyClientResultHandler()> @ imm = #-0x6b1c
  3c50c8: 2300         	movs	r3, #0x0
  3c50ca: 2b00         	cmp	r3, #0x0
  3c50cc: d002         	beq	0x3c50d4 <UDPProxyHandler::~UDPProxyHandler()+0x28> @ imm = #0x4
  3c50ce: 9801         	ldr	r0, [sp, #0x4]
  3c50d0: f3c2 ffe8    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c2fd0
  3c50d4: 9b01         	ldr	r3, [sp, #0x4]
  3c50d6: 4618         	mov	r0, r3
  3c50d8: b003         	add	sp, #0xc
  3c50da: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c50dd); words below are literal-pool data ---
  3c50de: bf00         	nop
  3c50e0: d954         	bls	0x3c518c <RakNet::NatPunchthroughDebugInterface_Printf::~NatPunchthroughDebugInterface_Printf()+0x4c> @ imm = #0xa8
  3c50e2: 0056         	lsls	r6, r2, #0x1
  3c50e4: de48         	udf	#0x48
  3c50e6: ffff b500    	<unknown>

// ==== UDPProxyHandler::~UDPProxyHandler
//      file offset 0x3c50e8 (= ELF address; Ghidra 0x3d50e8), 28 bytes, Thumb-2
  3c50e8: b500         	push	{lr}
  3c50ea: b083         	sub	sp, #0xc
  3c50ec: 9001         	str	r0, [sp, #0x4]
  3c50ee: 9801         	ldr	r0, [sp, #0x4]
  3c50f0: f7ff ffdc    	bl	0x3c50ac <UDPProxyHandler::~UDPProxyHandler()> @ imm = #-0x48
  3c50f4: 9801         	ldr	r0, [sp, #0x4]
  3c50f6: f3c2 ffd5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c2faa
  3c50fa: 9b01         	ldr	r3, [sp, #0x4]
  3c50fc: 4618         	mov	r0, r3
  3c50fe: b003         	add	sp, #0xc
  3c5100: f85d fb04    	ldr	pc, [sp], #4
