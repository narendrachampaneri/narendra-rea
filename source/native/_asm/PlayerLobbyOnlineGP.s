// PlayerLobbyOnlineGP: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlayerLobbyOnlineGP.cpp

// ==== PlayerLobbyOnlineGP::PlayerLobbyOnlineGP
//      file offset 0x3a370c (= ELF address; Ghidra 0x3b370c), 88 bytes, Thumb-2
  3a370c: b510         	push	{r4, lr}
  3a370e: b082         	sub	sp, #0x8
  3a3710: 9001         	str	r0, [sp, #0x4]
  3a3712: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3a375c <PlayerLobbyOnlineGP::PlayerLobbyOnlineGP()+0x50>
  3a3714: 447c         	add	r4, pc
  3a3716: 9b01         	ldr	r3, [sp, #0x4]
  3a3718: 4618         	mov	r0, r3
  3a371a: f7f6 fb77    	bl	0x399e0c <PlayerLobby::PlayerLobby()> @ imm = #-0x9912
  3a371e: 9b01         	ldr	r3, [sp, #0x4]
  3a3720: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a3760 <PlayerLobbyOnlineGP::PlayerLobbyOnlineGP()+0x54>
  3a3722: 58a2         	ldr	r2, [r4, r2]
  3a3724: 3208         	adds	r2, #0x8
  3a3726: 601a         	str	r2, [r3]
  3a3728: 9b01         	ldr	r3, [sp, #0x4]
  3a372a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a3760 <PlayerLobbyOnlineGP::PlayerLobbyOnlineGP()+0x54>
  3a372c: 58a2         	ldr	r2, [r4, r2]
  3a372e: f502 7219    	add.w	r2, r2, #0x264
  3a3732: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3a3736: 9b01         	ldr	r3, [sp, #0x4]
  3a3738: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3a3760 <PlayerLobbyOnlineGP::PlayerLobbyOnlineGP()+0x54>
  3a373a: 58a2         	ldr	r2, [r4, r2]
  3a373c: f502 7223    	add.w	r2, r2, #0x28c
  3a3740: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a3744: 9b01         	ldr	r3, [sp, #0x4]
  3a3746: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a3760 <PlayerLobbyOnlineGP::PlayerLobbyOnlineGP()+0x54>
  3a3748: 58a2         	ldr	r2, [r4, r2]
  3a374a: f502 722b    	add.w	r2, r2, #0x2ac
  3a374e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3a3752: 9b01         	ldr	r3, [sp, #0x4]
  3a3754: 4618         	mov	r0, r3
  3a3756: b002         	add	sp, #0x8
  3a3758: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a3759); words below are literal-pool data ---
  3a375a: bf00         	nop
  3a375c: f2f4 0058    	<unknown>
  3a3760: dd6c         	ble	0x3a383c <PlayerLobbyOnlineGP::init()+0xd8> @ imm = #0xd8
  3a3762: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineGP::init
//      file offset 0x3a3764 (= ELF address; Ghidra 0x3b3764), 228 bytes, Thumb-2
  3a3764: b530         	push	{r4, r5, lr}
  3a3766: b087         	sub	sp, #0x1c
  3a3768: 9001         	str	r0, [sp, #0x4]
  3a376a: 4c32         	ldr	r4, [pc, #0xc8]         @ 0x3a3834 <PlayerLobbyOnlineGP::init()+0xd0>
  3a376c: 447c         	add	r4, pc
  3a376e: 9b01         	ldr	r3, [sp, #0x4]
  3a3770: 4618         	mov	r0, r3
  3a3772: f7f6 fbbb    	bl	0x399eec <PlayerLobby::init()> @ imm = #-0x988a
  3a3776: 4603         	mov	r3, r0
  3a3778: f88d 300b    	strb.w	r3, [sp, #0xb]
  3a377c: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3a3780: f083 0301    	eor	r3, r3, #0x1
  3a3784: b2db         	uxtb	r3, r3
  3a3786: 2b00         	cmp	r3, #0x0
  3a3788: d001         	beq	0x3a378e <PlayerLobbyOnlineGP::init()+0x2a> @ imm = #0x2
  3a378a: 2300         	movs	r3, #0x0
  3a378c: e04f         	b	0x3a382e <PlayerLobbyOnlineGP::init()+0xca> @ imm = #0x9e
  3a378e: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x3a3838 <PlayerLobbyOnlineGP::init()+0xd4>
  3a3790: 58e3         	ldr	r3, [r4, r3]
  3a3792: 681b         	ldr	r3, [r3]
  3a3794: 2b04         	cmp	r3, #0x4
  3a3796: d134         	bne	0x3a3802 <PlayerLobbyOnlineGP::init()+0x9e> @ imm = #0x68
  3a3798: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3a383c <PlayerLobbyOnlineGP::init()+0xd8>
  3a379a: 58e3         	ldr	r3, [r4, r3]
  3a379c: 681b         	ldr	r3, [r3]
  3a379e: 4618         	mov	r0, r3
  3a37a0: f1f0 fa74    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x1f04e8
  3a37a4: 4603         	mov	r3, r0
  3a37a6: 9304         	str	r3, [sp, #0x10]
  3a37a8: 2000         	movs	r0, #0x0
  3a37aa: f732 ec2c    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0xcd7a8
  3a37ae: 9005         	str	r0, [sp, #0x14]
  3a37b0: 9d05         	ldr	r5, [sp, #0x14]
  3a37b2: 9804         	ldr	r0, [sp, #0x10]
  3a37b4: f1f6 fc94    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1f6928
  3a37b8: 4603         	mov	r3, r0
  3a37ba: 4628         	mov	r0, r5
  3a37bc: 4619         	mov	r1, r3
  3a37be: f01b f10d    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x41b21a
  3a37c2: 460b         	mov	r3, r1
  3a37c4: 9303         	str	r3, [sp, #0xc]
  3a37c6: 9d03         	ldr	r5, [sp, #0xc]
  3a37c8: 9804         	ldr	r0, [sp, #0x10]
  3a37ca: f1f6 fc89    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1f6912
  3a37ce: 4603         	mov	r3, r0
  3a37d0: 429d         	cmp	r5, r3
  3a37d2: bf34         	ite	lo
  3a37d4: 2300         	movlo	r3, #0x0
  3a37d6: 2301         	movhs	r3, #0x1
  3a37d8: b2db         	uxtb	r3, r3
  3a37da: 2b00         	cmp	r3, #0x0
  3a37dc: d001         	beq	0x3a37e2 <PlayerLobbyOnlineGP::init()+0x7e> @ imm = #0x2
  3a37de: 2300         	movs	r3, #0x0
  3a37e0: 9303         	str	r3, [sp, #0xc]
  3a37e2: 9b03         	ldr	r3, [sp, #0xc]
  3a37e4: 9804         	ldr	r0, [sp, #0x10]
  3a37e6: 4619         	mov	r1, r3
  3a37e8: f1f6 fc9a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f6934
  3a37ec: 4603         	mov	r3, r0
  3a37ee: 4618         	mov	r0, r3
  3a37f0: f1f6 f89a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f6134
  3a37f4: 4603         	mov	r3, r0
  3a37f6: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3a3840 <PlayerLobbyOnlineGP::init()+0xdc>
  3a37f8: 58a2         	ldr	r2, [r4, r2]
  3a37fa: 4610         	mov	r0, r2
  3a37fc: 4619         	mov	r1, r3
  3a37fe: f012 f337    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x41266e
  3a3802: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3a3838 <PlayerLobbyOnlineGP::init()+0xd4>
  3a3804: 58e3         	ldr	r3, [r4, r3]
  3a3806: 681b         	ldr	r3, [r3]
  3a3808: 2b02         	cmp	r3, #0x2
  3a380a: d10f         	bne	0x3a382c <PlayerLobbyOnlineGP::init()+0xc8> @ imm = #0x1e
  3a380c: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3a3840 <PlayerLobbyOnlineGP::init()+0xdc>
  3a380e: 58e3         	ldr	r3, [r4, r3]
  3a3810: 4618         	mov	r0, r3
  3a3812: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3a3844 <PlayerLobbyOnlineGP::init()+0xe0>
  3a3814: 447b         	add	r3, pc
  3a3816: 4619         	mov	r1, r3
  3a3818: f012 f32a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x412654
  3a381c: 9b01         	ldr	r3, [sp, #0x4]
  3a381e: 681b         	ldr	r3, [r3]
  3a3820: f503 73e2    	add.w	r3, r3, #0x1c4
  3a3824: 681b         	ldr	r3, [r3]
  3a3826: 9a01         	ldr	r2, [sp, #0x4]
  3a3828: 4610         	mov	r0, r2
  3a382a: 4798         	blx	r3
  3a382c: 2301         	movs	r3, #0x1
  3a382e: 4618         	mov	r0, r3
  3a3830: b007         	add	sp, #0x1c
  3a3832: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a3833); words below are literal-pool data ---
  3a3834: f29c 0058    	<unknown>
  3a3838: d838         	bhi	0x3a38ac <non-virtual thunk to PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #0x70
  3a383a: ffff d7cc    	<unknown>
  3a383e: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  3a3842: ffff f2d8    	<unknown>
  3a3846: 0042         	lsls	r2, r0, #0x1

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a3848 (= ELF address; Ghidra 0x3b3848), 100 bytes, Thumb-2
  3a3848: b500         	push	{lr}
  3a384a: b083         	sub	sp, #0xc
  3a384c: 9001         	str	r0, [sp, #0x4]
  3a384e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3a38a4 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()+0x5c>
  3a3850: 447b         	add	r3, pc
  3a3852: 9a01         	ldr	r2, [sp, #0x4]
  3a3854: 4914         	ldr	r1, [pc, #0x50]         @ 0x3a38a8 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()+0x60>
  3a3856: 5859         	ldr	r1, [r3, r1]
  3a3858: 3108         	adds	r1, #0x8
  3a385a: 6011         	str	r1, [r2]
  3a385c: 9a01         	ldr	r2, [sp, #0x4]
  3a385e: 4912         	ldr	r1, [pc, #0x48]         @ 0x3a38a8 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()+0x60>
  3a3860: 5859         	ldr	r1, [r3, r1]
  3a3862: f501 7119    	add.w	r1, r1, #0x264
  3a3866: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3a386a: 9a01         	ldr	r2, [sp, #0x4]
  3a386c: 490e         	ldr	r1, [pc, #0x38]         @ 0x3a38a8 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()+0x60>
  3a386e: 5859         	ldr	r1, [r3, r1]
  3a3870: f501 7123    	add.w	r1, r1, #0x28c
  3a3874: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3a3878: 9a01         	ldr	r2, [sp, #0x4]
  3a387a: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3a38a8 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()+0x60>
  3a387c: 585b         	ldr	r3, [r3, r1]
  3a387e: f503 732b    	add.w	r3, r3, #0x2ac
  3a3882: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3a3886: 9b01         	ldr	r3, [sp, #0x4]
  3a3888: 4618         	mov	r0, r3
  3a388a: f7f6 fec7    	bl	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x9272
  3a388e: 2300         	movs	r3, #0x0
  3a3890: 2b00         	cmp	r3, #0x0
  3a3892: d002         	beq	0x3a389a <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()+0x52> @ imm = #0x4
  3a3894: 9801         	ldr	r0, [sp, #0x4]
  3a3896: f3e4 fc05    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e480a
  3a389a: 9b01         	ldr	r3, [sp, #0x4]
  3a389c: 4618         	mov	r0, r3
  3a389e: b003         	add	sp, #0xc
  3a38a0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a38a3); words below are literal-pool data ---
  3a38a4: f1b8 0058    	subs.w	r0, r8, #0x58
  3a38a8: dd6c         	ble	0x3a3984 <PlayerLobbyOnlineGP::updateCountDown(float)+0x34> @ imm = #0xd8
  3a38aa: ffff f1a0    	<unknown>

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38ac (= ELF address; Ghidra 0x3b38ac), 8 bytes, Thumb-2
  3a38ac: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a38b0: f7ff bfca    	b.w	0x3a3848 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x6c

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38b4 (= ELF address; Ghidra 0x3b38b4), 8 bytes, Thumb-2
  3a38b4: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a38b8: f7ff bfc6    	b.w	0x3a3848 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x74

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38bc (= ELF address; Ghidra 0x3b38bc), 8 bytes, Thumb-2
  3a38bc: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a38c0: f7ff bfc2    	b.w	0x3a3848 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x7c

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38c4 (= ELF address; Ghidra 0x3b38c4), 28 bytes, Thumb-2
  3a38c4: b500         	push	{lr}
  3a38c6: b083         	sub	sp, #0xc
  3a38c8: 9001         	str	r0, [sp, #0x4]
  3a38ca: 9801         	ldr	r0, [sp, #0x4]
  3a38cc: f7ff ffbc    	bl	0x3a3848 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x88
  3a38d0: 9801         	ldr	r0, [sp, #0x4]
  3a38d2: f3e4 fbe7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e47ce
  3a38d6: 9b01         	ldr	r3, [sp, #0x4]
  3a38d8: 4618         	mov	r0, r3
  3a38da: b003         	add	sp, #0xc
  3a38dc: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38e0 (= ELF address; Ghidra 0x3b38e0), 8 bytes, Thumb-2
  3a38e0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a38e4: f7ff bfee    	b.w	0x3a38c4 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x24

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38e8 (= ELF address; Ghidra 0x3b38e8), 8 bytes, Thumb-2
  3a38e8: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a38ec: f7ff bfea    	b.w	0x3a38c4 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x2c

// ==== PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP
//      file offset 0x3a38f0 (= ELF address; Ghidra 0x3b38f0), 8 bytes, Thumb-2
  3a38f0: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a38f4: f7ff bfe6    	b.w	0x3a38c4 <PlayerLobbyOnlineGP::~PlayerLobbyOnlineGP()> @ imm = #-0x34

// ==== PlayerLobbyOnlineGP::onPlayerDisconnected
//      file offset 0x3a38f8 (= ELF address; Ghidra 0x3b38f8), 88 bytes, Thumb-2
  3a38f8: b500         	push	{lr}
  3a38fa: b083         	sub	sp, #0xc
  3a38fc: 9001         	str	r0, [sp, #0x4]
  3a38fe: 9100         	str	r1, [sp]
  3a3900: 4b11         	ldr	r3, [pc, #0x44]         @ 0x3a3948 <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x50>
  3a3902: 447b         	add	r3, pc
  3a3904: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3a394c <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x54>
  3a3906: 589a         	ldr	r2, [r3, r2]
  3a3908: 6812         	ldr	r2, [r2]
  3a390a: 2a04         	cmp	r2, #0x4
  3a390c: d004         	beq	0x3a3918 <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x20> @ imm = #0x8
  3a390e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a394c <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x54>
  3a3910: 589b         	ldr	r3, [r3, r2]
  3a3912: 681b         	ldr	r3, [r3]
  3a3914: 2b02         	cmp	r3, #0x2
  3a3916: d10a         	bne	0x3a392e <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x36> @ imm = #0x14
  3a3918: f7d4 f912    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2bddc
  3a391c: 4603         	mov	r3, r0
  3a391e: 4618         	mov	r0, r3
  3a3920: f7d4 feb2    	bl	0x378688 <NetworkManager::getPeerCount()> @ imm = #-0x2b29c
  3a3924: 4603         	mov	r3, r0
  3a3926: 2b00         	cmp	r3, #0x0
  3a3928: d101         	bne	0x3a392e <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x36> @ imm = #0x2
  3a392a: 2301         	movs	r3, #0x1
  3a392c: e000         	b	0x3a3930 <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x38> @ imm = #0x0
  3a392e: 2300         	movs	r3, #0x0
  3a3930: 2b00         	cmp	r3, #0x0
  3a3932: d005         	beq	0x3a3940 <PlayerLobbyOnlineGP::onPlayerDisconnected(cocos2d::CCObject*)+0x48> @ imm = #0xa
  3a3934: f7d4 f904    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2bdf8
  3a3938: 4603         	mov	r3, r0
  3a393a: 4618         	mov	r0, r3
  3a393c: f7d6 f9b2    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #-0x29c9c
  3a3940: b003         	add	sp, #0xc
  3a3942: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a3945); words below are literal-pool data ---
  3a3946: bf00         	nop
  3a3948: f106 0058    	add.w	r0, r6, #0x58
  3a394c: d838         	bhi	0x3a39c0 <PlayerLobbyOnlineGP::updateCountDown(float)+0x70> @ imm = #0x70
  3a394e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnlineGP::updateCountDown
//      file offset 0x3a3950 (= ELF address; Ghidra 0x3b3950), 952 bytes, Thumb-2
  3a3950: b530         	push	{r4, r5, lr}
  3a3952: b087         	sub	sp, #0x1c
  3a3954: 9001         	str	r0, [sp, #0x4]
  3a3956: 9100         	str	r1, [sp]
  3a3958: 4ce5         	ldr	r4, [pc, #0x394]        @ 0x3a3cf0 <PlayerLobbyOnlineGP::updateCountDown(float)+0x3a0>
  3a395a: 447c         	add	r4, pc
  3a395c: 9b01         	ldr	r3, [sp, #0x4]
  3a395e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3962: 4618         	mov	r0, r3
  3a3964: f1f0 f982    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f0304
  3a3968: 4603         	mov	r3, r0
  3a396a: 2b01         	cmp	r3, #0x1
  3a396c: bf8c         	ite	hi
  3a396e: 2300         	movhi	r3, #0x0
  3a3970: 2301         	movls	r3, #0x1
  3a3972: b2db         	uxtb	r3, r3
  3a3974: 2b00         	cmp	r3, #0x0
  3a3976: d03c         	beq	0x3a39f2 <PlayerLobbyOnlineGP::updateCountDown(float)+0xa2> @ imm = #0x78
  3a3978: 9b01         	ldr	r3, [sp, #0x4]
  3a397a: 681b         	ldr	r3, [r3]
  3a397c: f503 73ee    	add.w	r3, r3, #0x1dc
  3a3980: 681b         	ldr	r3, [r3]
  3a3982: 9a01         	ldr	r2, [sp, #0x4]
  3a3984: 4610         	mov	r0, r2
  3a3986: 4798         	blx	r3
  3a3988: 4603         	mov	r3, r0
  3a398a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a398e: 2b03         	cmp	r3, #0x3
  3a3990: bf14         	ite	ne
  3a3992: 2300         	movne	r3, #0x0
  3a3994: 2301         	moveq	r3, #0x1
  3a3996: b2db         	uxtb	r3, r3
  3a3998: 2b00         	cmp	r3, #0x0
  3a399a: d00b         	beq	0x3a39b4 <PlayerLobbyOnlineGP::updateCountDown(float)+0x64> @ imm = #0x16
  3a399c: 9b01         	ldr	r3, [sp, #0x4]
  3a399e: 681b         	ldr	r3, [r3]
  3a39a0: f503 73ee    	add.w	r3, r3, #0x1dc
  3a39a4: 681b         	ldr	r3, [r3]
  3a39a6: 9a01         	ldr	r2, [sp, #0x4]
  3a39a8: 4610         	mov	r0, r2
  3a39aa: 4798         	blx	r3
  3a39ac: 4603         	mov	r3, r0
  3a39ae: 2201         	movs	r2, #0x1
  3a39b0: f8c3 2118    	str.w	r2, [r3, #0x118]
  3a39b4: 9b01         	ldr	r3, [sp, #0x4]
  3a39b6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a39ba: 681b         	ldr	r3, [r3]
  3a39bc: f503 73fc    	add.w	r3, r3, #0x1f8
  3a39c0: 681b         	ldr	r3, [r3]
  3a39c2: 9a01         	ldr	r2, [sp, #0x4]
  3a39c4: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a39c8: 4610         	mov	r0, r2
  3a39ca: 4aca         	ldr	r2, [pc, #0x328]        @ 0x3a3cf4 <PlayerLobbyOnlineGP::updateCountDown(float)+0x3a4>
  3a39cc: 447a         	add	r2, pc
  3a39ce: 4611         	mov	r1, r2
  3a39d0: 4798         	blx	r3
  3a39d2: 9b01         	ldr	r3, [sp, #0x4]
  3a39d4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a39d8: 681b         	ldr	r3, [r3]
  3a39da: 334c         	adds	r3, #0x4c
  3a39dc: 681b         	ldr	r3, [r3]
  3a39de: 9a01         	ldr	r2, [sp, #0x4]
  3a39e0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a39e4: 4611         	mov	r1, r2
  3a39e6: 9a01         	ldr	r2, [sp, #0x4]
  3a39e8: f502 72ae    	add.w	r2, r2, #0x15c
  3a39ec: 4608         	mov	r0, r1
  3a39ee: 4611         	mov	r1, r2
  3a39f0: 4798         	blx	r3
  3a39f2: 9b01         	ldr	r3, [sp, #0x4]
  3a39f4: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a39f8: 4618         	mov	r0, r3
  3a39fa: f1f0 f937    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f026e
  3a39fe: 4603         	mov	r3, r0
  3a3a00: 2b01         	cmp	r3, #0x1
  3a3a02: bf94         	ite	ls
  3a3a04: 2300         	movls	r3, #0x0
  3a3a06: 2301         	movhi	r3, #0x1
  3a3a08: b2da         	uxtb	r2, r3
  3a3a0a: 9b01         	ldr	r3, [sp, #0x4]
  3a3a0c: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a3a10: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x3a3cf8 <PlayerLobbyOnlineGP::updateCountDown(float)+0x3a8>
  3a3a12: 58e3         	ldr	r3, [r4, r3]
  3a3a14: 681b         	ldr	r3, [r3]
  3a3a16: 2b04         	cmp	r3, #0x4
  3a3a18: d10d         	bne	0x3a3a36 <PlayerLobbyOnlineGP::updateCountDown(float)+0xe6> @ imm = #0x1a
  3a3a1a: f7d4 f891    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2bede
  3a3a1e: 4603         	mov	r3, r0
  3a3a20: 4618         	mov	r0, r3
  3a3a22: f7d6 fb7b    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x2990a
  3a3a26: 4603         	mov	r3, r0
  3a3a28: f083 0301    	eor	r3, r3, #0x1
  3a3a2c: b2db         	uxtb	r3, r3
  3a3a2e: 2b00         	cmp	r3, #0x0
  3a3a30: d001         	beq	0x3a3a36 <PlayerLobbyOnlineGP::updateCountDown(float)+0xe6> @ imm = #0x2
  3a3a32: 2301         	movs	r3, #0x1
  3a3a34: e000         	b	0x3a3a38 <PlayerLobbyOnlineGP::updateCountDown(float)+0xe8> @ imm = #0x0
  3a3a36: 2300         	movs	r3, #0x0
  3a3a38: 2b00         	cmp	r3, #0x0
  3a3a3a: d004         	beq	0x3a3a46 <PlayerLobbyOnlineGP::updateCountDown(float)+0xf6> @ imm = #0x8
  3a3a3c: 9b01         	ldr	r3, [sp, #0x4]
  3a3a3e: 2200         	movs	r2, #0x0
  3a3a40: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a3a44: e04e         	b	0x3a3ae4 <PlayerLobbyOnlineGP::updateCountDown(float)+0x194> @ imm = #0x9c
  3a3a46: 2300         	movs	r3, #0x0
  3a3a48: 9303         	str	r3, [sp, #0xc]
  3a3a4a: 2300         	movs	r3, #0x0
  3a3a4c: 9304         	str	r3, [sp, #0x10]
  3a3a4e: 9b01         	ldr	r3, [sp, #0x4]
  3a3a50: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3a54: 2b00         	cmp	r3, #0x0
  3a3a56: d00a         	beq	0x3a3a6e <PlayerLobbyOnlineGP::updateCountDown(float)+0x11e> @ imm = #0x14
  3a3a58: 9b01         	ldr	r3, [sp, #0x4]
  3a3a5a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3a5e: 4618         	mov	r0, r3
  3a3a60: f1f0 f904    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f0208
  3a3a64: 4603         	mov	r3, r0
  3a3a66: 2b00         	cmp	r3, #0x0
  3a3a68: d001         	beq	0x3a3a6e <PlayerLobbyOnlineGP::updateCountDown(float)+0x11e> @ imm = #0x2
  3a3a6a: 2301         	movs	r3, #0x1
  3a3a6c: e000         	b	0x3a3a70 <PlayerLobbyOnlineGP::updateCountDown(float)+0x120> @ imm = #0x0
  3a3a6e: 2300         	movs	r3, #0x0
  3a3a70: 2b00         	cmp	r3, #0x0
  3a3a72: d037         	beq	0x3a3ae4 <PlayerLobbyOnlineGP::updateCountDown(float)+0x194> @ imm = #0x6e
  3a3a74: 9b01         	ldr	r3, [sp, #0x4]
  3a3a76: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3a7a: 695b         	ldr	r3, [r3, #0x14]
  3a3a7c: 9303         	str	r3, [sp, #0xc]
  3a3a7e: 9b01         	ldr	r3, [sp, #0x4]
  3a3a80: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3a84: 695b         	ldr	r3, [r3, #0x14]
  3a3a86: 2b00         	cmp	r3, #0x0
  3a3a88: d006         	beq	0x3a3a98 <PlayerLobbyOnlineGP::updateCountDown(float)+0x148> @ imm = #0xc
  3a3a8a: 9b01         	ldr	r3, [sp, #0x4]
  3a3a8c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3a90: 695b         	ldr	r3, [r3, #0x14]
  3a3a92: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a3a96: e000         	b	0x3a3a9a <PlayerLobbyOnlineGP::updateCountDown(float)+0x14a> @ imm = #0x0
  3a3a98: 2300         	movs	r3, #0x0
  3a3a9a: 9304         	str	r3, [sp, #0x10]
  3a3a9c: e01f         	b	0x3a3ade <PlayerLobbyOnlineGP::updateCountDown(float)+0x18e> @ imm = #0x3e
  3a3a9e: 9803         	ldr	r0, [sp, #0xc]
  3a3aa0: f75a fdc8    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xa5470
  3a3aa4: 4603         	mov	r3, r0
  3a3aa6: 9305         	str	r3, [sp, #0x14]
  3a3aa8: 9b01         	ldr	r3, [sp, #0x4]
  3a3aaa: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a3aae: 2b00         	cmp	r3, #0x0
  3a3ab0: d006         	beq	0x3a3ac0 <PlayerLobbyOnlineGP::updateCountDown(float)+0x170> @ imm = #0xc
  3a3ab2: 9b05         	ldr	r3, [sp, #0x14]
  3a3ab4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a3ab8: 2b03         	cmp	r3, #0x3
  3a3aba: d101         	bne	0x3a3ac0 <PlayerLobbyOnlineGP::updateCountDown(float)+0x170> @ imm = #0x2
  3a3abc: 2301         	movs	r3, #0x1
  3a3abe: e000         	b	0x3a3ac2 <PlayerLobbyOnlineGP::updateCountDown(float)+0x172> @ imm = #0x0
  3a3ac0: 2300         	movs	r3, #0x0
  3a3ac2: 9a01         	ldr	r2, [sp, #0x4]
  3a3ac4: f882 314c    	strb.w	r3, [r2, #0x14c]
  3a3ac8: 9b04         	ldr	r3, [sp, #0x10]
  3a3aca: 9303         	str	r3, [sp, #0xc]
  3a3acc: 9b04         	ldr	r3, [sp, #0x10]
  3a3ace: 2b00         	cmp	r3, #0x0
  3a3ad0: d003         	beq	0x3a3ada <PlayerLobbyOnlineGP::updateCountDown(float)+0x18a> @ imm = #0x6
  3a3ad2: 9b04         	ldr	r3, [sp, #0x10]
  3a3ad4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a3ad8: e000         	b	0x3a3adc <PlayerLobbyOnlineGP::updateCountDown(float)+0x18c> @ imm = #0x0
  3a3ada: 2300         	movs	r3, #0x0
  3a3adc: 9304         	str	r3, [sp, #0x10]
  3a3ade: 9b03         	ldr	r3, [sp, #0xc]
  3a3ae0: 2b00         	cmp	r3, #0x0
  3a3ae2: d1dc         	bne	0x3a3a9e <PlayerLobbyOnlineGP::updateCountDown(float)+0x14e> @ imm = #-0x48
  3a3ae4: f7d4 f82c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2bfa8
  3a3ae8: 4603         	mov	r3, r0
  3a3aea: 4618         	mov	r0, r3
  3a3aec: f7d6 fe1a    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0x293cc
  3a3af0: 4603         	mov	r3, r0
  3a3af2: f083 0301    	eor	r3, r3, #0x1
  3a3af6: b2db         	uxtb	r3, r3
  3a3af8: 2b00         	cmp	r3, #0x0
  3a3afa: d016         	beq	0x3a3b2a <PlayerLobbyOnlineGP::updateCountDown(float)+0x1da> @ imm = #0x2c
  3a3afc: f7d4 f820    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2bfc0
  3a3b00: 4603         	mov	r3, r0
  3a3b02: 4618         	mov	r0, r3
  3a3b04: f7d6 fd02    	bl	0x37a50c <NetworkManager::isConnected()> @ imm = #-0x295fc
  3a3b08: 4603         	mov	r3, r0
  3a3b0a: 2b00         	cmp	r3, #0x0
  3a3b0c: d00d         	beq	0x3a3b2a <PlayerLobbyOnlineGP::updateCountDown(float)+0x1da> @ imm = #0x1a
  3a3b0e: f7d4 f817    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2bfd2
  3a3b12: 4603         	mov	r3, r0
  3a3b14: 4618         	mov	r0, r3
  3a3b16: f7d6 fb01    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x299fe
  3a3b1a: 4603         	mov	r3, r0
  3a3b1c: f083 0301    	eor	r3, r3, #0x1
  3a3b20: b2db         	uxtb	r3, r3
  3a3b22: 2b00         	cmp	r3, #0x0
  3a3b24: d001         	beq	0x3a3b2a <PlayerLobbyOnlineGP::updateCountDown(float)+0x1da> @ imm = #0x2
  3a3b26: 2301         	movs	r3, #0x1
  3a3b28: e000         	b	0x3a3b2c <PlayerLobbyOnlineGP::updateCountDown(float)+0x1dc> @ imm = #0x0
  3a3b2a: 2300         	movs	r3, #0x0
  3a3b2c: 2b00         	cmp	r3, #0x0
  3a3b2e: d00f         	beq	0x3a3b50 <PlayerLobbyOnlineGP::updateCountDown(float)+0x200> @ imm = #0x1e
  3a3b30: 9b01         	ldr	r3, [sp, #0x4]
  3a3b32: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a3b36: 681b         	ldr	r3, [r3]
  3a3b38: f503 730f    	add.w	r3, r3, #0x23c
  3a3b3c: 681b         	ldr	r3, [r3]
  3a3b3e: 9a01         	ldr	r2, [sp, #0x4]
  3a3b40: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a3b44: 4610         	mov	r0, r2
  3a3b46: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x3a3cfc <PlayerLobbyOnlineGP::updateCountDown(float)+0x3ac>
  3a3b48: 447a         	add	r2, pc
  3a3b4a: 4611         	mov	r1, r2
  3a3b4c: 4798         	blx	r3
  3a3b4e: e01a         	b	0x3a3b86 <PlayerLobbyOnlineGP::updateCountDown(float)+0x236> @ imm = #0x34
  3a3b50: 9b01         	ldr	r3, [sp, #0x4]
  3a3b52: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a3b56: 681b         	ldr	r3, [r3]
  3a3b58: f503 730f    	add.w	r3, r3, #0x23c
  3a3b5c: 681c         	ldr	r4, [r3]
  3a3b5e: 9b01         	ldr	r3, [sp, #0x4]
  3a3b60: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  3a3b64: 9b01         	ldr	r3, [sp, #0x4]
  3a3b66: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3a3b6a: 4a65         	ldr	r2, [pc, #0x194]        @ 0x3a3d00 <PlayerLobbyOnlineGP::updateCountDown(float)+0x3b0>
  3a3b6c: 447a         	add	r2, pc
  3a3b6e: 4610         	mov	r0, r2
  3a3b70: 4619         	mov	r1, r3
  3a3b72: f1f5 ffcd    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f5f9a
  3a3b76: 4603         	mov	r3, r0
  3a3b78: 4618         	mov	r0, r3
  3a3b7a: f1f5 fed5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f5daa
  3a3b7e: 4603         	mov	r3, r0
  3a3b80: 4628         	mov	r0, r5
  3a3b82: 4619         	mov	r1, r3
  3a3b84: 47a0         	blx	r4
  3a3b86: 9b01         	ldr	r3, [sp, #0x4]
  3a3b88: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a3b8c: 2b00         	cmp	r3, #0x0
  3a3b8e: f000 80a3    	beq.w	0x3a3cd8 <PlayerLobbyOnlineGP::updateCountDown(float)+0x388> @ imm = #0x146
  3a3b92: 9b01         	ldr	r3, [sp, #0x4]
  3a3b94: ed93 7a52    	vldr	s14, [r3, #328]
  3a3b98: eddd 7a00    	vldr	s15, [sp]
  3a3b9c: ee77 7a67    	vsub.f32	s15, s14, s15
  3a3ba0: eef5 7ac0    	vcmpe.f32	s15, #0
  3a3ba4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a3ba8: dd07         	ble	0x3a3bba <PlayerLobbyOnlineGP::updateCountDown(float)+0x26a> @ imm = #0xe
  3a3baa: 9b01         	ldr	r3, [sp, #0x4]
  3a3bac: ed93 7a52    	vldr	s14, [r3, #328]
  3a3bb0: eddd 7a00    	vldr	s15, [sp]
  3a3bb4: ee77 7a67    	vsub.f32	s15, s14, s15
  3a3bb8: e001         	b	0x3a3bbe <PlayerLobbyOnlineGP::updateCountDown(float)+0x26e> @ imm = #0x2
  3a3bba: eddf 7a4c    	vldr	s15, [pc, #304]         @ 0x3a3cec <PlayerLobbyOnlineGP::updateCountDown(float)+0x39c>
  3a3bbe: 9b01         	ldr	r3, [sp, #0x4]
  3a3bc0: edc3 7a52    	vstr	s15, [r3, #328]
  3a3bc4: 9b01         	ldr	r3, [sp, #0x4]
  3a3bc6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a3bca: 681b         	ldr	r3, [r3]
  3a3bcc: f503 730f    	add.w	r3, r3, #0x23c
  3a3bd0: 681c         	ldr	r4, [r3]
  3a3bd2: 9b01         	ldr	r3, [sp, #0x4]
  3a3bd4: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  3a3bd8: 9b01         	ldr	r3, [sp, #0x4]
  3a3bda: edd3 7a52    	vldr	s15, [r3, #328]
  3a3bde: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a3be2: ee17 2a90    	vmov	r2, s15
  3a3be6: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x3a3d04 <PlayerLobbyOnlineGP::updateCountDown(float)+0x3b4>
  3a3be8: 447b         	add	r3, pc
  3a3bea: 4618         	mov	r0, r3
  3a3bec: 4611         	mov	r1, r2
  3a3bee: f1f5 ff8f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f5f1e
  3a3bf2: 4603         	mov	r3, r0
  3a3bf4: 4618         	mov	r0, r3
  3a3bf6: f1f5 fe97    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f5d2e
  3a3bfa: 4603         	mov	r3, r0
  3a3bfc: 4628         	mov	r0, r5
  3a3bfe: 4619         	mov	r1, r3
  3a3c00: 47a0         	blx	r4
  3a3c02: 9b01         	ldr	r3, [sp, #0x4]
  3a3c04: ed93 7a52    	vldr	s14, [r3, #328]
  3a3c08: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a3c0c: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a3c10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a3c14: d54f         	bpl	0x3a3cb6 <PlayerLobbyOnlineGP::updateCountDown(float)+0x366> @ imm = #0x9e
  3a3c16: 9b01         	ldr	r3, [sp, #0x4]
  3a3c18: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a3c1c: 681b         	ldr	r3, [r3]
  3a3c1e: f503 73de    	add.w	r3, r3, #0x1bc
  3a3c22: 681c         	ldr	r4, [r3]
  3a3c24: 9b01         	ldr	r3, [sp, #0x4]
  3a3c26: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a3c2a: 461d         	mov	r5, r3
  3a3c2c: 20ff         	movs	r0, #0xff
  3a3c2e: 2100         	movs	r1, #0x0
  3a3c30: 2200         	movs	r2, #0x0
  3a3c32: f7fe fe7f    	bl	0x3a2934 <PlayerLobbyOnline::onServerPlayerCountUpdate(cocos2d::CCObject*)+0x14c> @ imm = #-0x1302
  3a3c36: 4603         	mov	r3, r0
  3a3c38: 461a         	mov	r2, r3
  3a3c3a: f88d 2008    	strb.w	r2, [sp, #0x8]
  3a3c3e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a3c42: f88d 2009    	strb.w	r2, [sp, #0x9]
  3a3c46: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a3c4a: f88d 300a    	strb.w	r3, [sp, #0xa]
  3a3c4e: ab02         	add	r3, sp, #0x8
  3a3c50: 4628         	mov	r0, r5
  3a3c52: 4619         	mov	r1, r3
  3a3c54: 47a0         	blx	r4
  3a3c56: 9b01         	ldr	r3, [sp, #0x4]
  3a3c58: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a3c5c: 681b         	ldr	r3, [r3]
  3a3c5e: 3390         	adds	r3, #0x90
  3a3c60: 681b         	ldr	r3, [r3]
  3a3c62: 9a01         	ldr	r2, [sp, #0x4]
  3a3c64: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a3c68: 4610         	mov	r0, r2
  3a3c6a: 2100         	movs	r1, #0x0
  3a3c6c: 4798         	blx	r3
  3a3c6e: 9b01         	ldr	r3, [sp, #0x4]
  3a3c70: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a3c74: 681b         	ldr	r3, [r3]
  3a3c76: 3390         	adds	r3, #0x90
  3a3c78: 681b         	ldr	r3, [r3]
  3a3c7a: 9a01         	ldr	r2, [sp, #0x4]
  3a3c7c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a3c80: 4610         	mov	r0, r2
  3a3c82: 2100         	movs	r1, #0x0
  3a3c84: 4798         	blx	r3
  3a3c86: 9b01         	ldr	r3, [sp, #0x4]
  3a3c88: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a3c8c: 681b         	ldr	r3, [r3]
  3a3c8e: 3390         	adds	r3, #0x90
  3a3c90: 681b         	ldr	r3, [r3]
  3a3c92: 9a01         	ldr	r2, [sp, #0x4]
  3a3c94: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a3c98: 4610         	mov	r0, r2
  3a3c9a: 2100         	movs	r1, #0x0
  3a3c9c: 4798         	blx	r3
  3a3c9e: 9b01         	ldr	r3, [sp, #0x4]
  3a3ca0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a3ca4: 681b         	ldr	r3, [r3]
  3a3ca6: 3390         	adds	r3, #0x90
  3a3ca8: 681b         	ldr	r3, [r3]
  3a3caa: 9a01         	ldr	r2, [sp, #0x4]
  3a3cac: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a3cb0: 4610         	mov	r0, r2
  3a3cb2: 2100         	movs	r1, #0x0
  3a3cb4: 4798         	blx	r3
  3a3cb6: 9b01         	ldr	r3, [sp, #0x4]
  3a3cb8: edd3 7a52    	vldr	s15, [r3, #328]
  3a3cbc: eef5 7a40    	vcmp.f32	s15, #0
  3a3cc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a3cc4: d10f         	bne	0x3a3ce6 <PlayerLobbyOnlineGP::updateCountDown(float)+0x396> @ imm = #0x1e
  3a3cc6: 9b01         	ldr	r3, [sp, #0x4]
  3a3cc8: 681b         	ldr	r3, [r3]
  3a3cca: f503 73dc    	add.w	r3, r3, #0x1b8
  3a3cce: 681b         	ldr	r3, [r3]
  3a3cd0: 9a01         	ldr	r2, [sp, #0x4]
  3a3cd2: 4610         	mov	r0, r2
  3a3cd4: 4798         	blx	r3
  3a3cd6: e006         	b	0x3a3ce6 <PlayerLobbyOnlineGP::updateCountDown(float)+0x396> @ imm = #0xc
  3a3cd8: 9b01         	ldr	r3, [sp, #0x4]
  3a3cda: f04f 0200    	mov.w	r2, #0x0
  3a3cde: f2c4 1220    	movt	r2, #0x4120
  3a3ce2: f8c3 2148    	str.w	r2, [r3, #0x148]
  3a3ce6: b007         	add	sp, #0x1c
  3a3ce8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a3ce9); words below are literal-pool data ---
  3a3cea: bf00         	nop
  3a3cec: 0000         	movs	r0, r0
  3a3cee: 0000         	movs	r0, r0
  3a3cf0: f0ae 0058    	<unknown>
  3a3cf4: f12c 0042    	<unknown>
  3a3cf8: d838         	bhi	0x3a3d6c <PlayerLobbyOnlineGP::alertResponse(int)+0x64> @ imm = #0x70
  3a3cfa: ffff efb8    	<unknown>
  3a3cfe: 0042         	lsls	r2, r0, #0x1
  3a3d00: efa4 0042    	vmla.i32	d0, d4, d2[0]
  3a3d04: ef40 0042    	vhadd.s8	q8, q0, q1

// ==== PlayerLobbyOnlineGP::alertResponse
//      file offset 0x3a3d08 (= ELF address; Ghidra 0x3b3d08), 112 bytes, Thumb-2
  3a3d08: b510         	push	{r4, lr}
  3a3d0a: b082         	sub	sp, #0x8
  3a3d0c: 9001         	str	r0, [sp, #0x4]
  3a3d0e: 9100         	str	r1, [sp]
  3a3d10: 4c16         	ldr	r4, [pc, #0x58]         @ 0x3a3d6c <PlayerLobbyOnlineGP::alertResponse(int)+0x64>
  3a3d12: 447c         	add	r4, pc
  3a3d14: 9b01         	ldr	r3, [sp, #0x4]
  3a3d16: 4618         	mov	r0, r3
  3a3d18: 9900         	ldr	r1, [sp]
  3a3d1a: f7f9 f92b    	bl	0x39cf74 <PlayerLobby::alertResponse(int)> @ imm = #-0x6daa
  3a3d1e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a3d70 <PlayerLobbyOnlineGP::alertResponse(int)+0x68>
  3a3d20: 58e3         	ldr	r3, [r4, r3]
  3a3d22: 781b         	ldrb	r3, [r3]
  3a3d24: 2b00         	cmp	r3, #0x0
  3a3d26: d00a         	beq	0x3a3d3e <PlayerLobbyOnlineGP::alertResponse(int)+0x36> @ imm = #0x14
  3a3d28: 9b01         	ldr	r3, [sp, #0x4]
  3a3d2a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a3d2e: 4618         	mov	r0, r3
  3a3d30: f1ef ff9c    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1eff38
  3a3d34: 4603         	mov	r3, r0
  3a3d36: 2b01         	cmp	r3, #0x1
  3a3d38: d101         	bne	0x3a3d3e <PlayerLobbyOnlineGP::alertResponse(int)+0x36> @ imm = #0x2
  3a3d3a: 2301         	movs	r3, #0x1
  3a3d3c: e000         	b	0x3a3d40 <PlayerLobbyOnlineGP::alertResponse(int)+0x38> @ imm = #0x0
  3a3d3e: 2300         	movs	r3, #0x0
  3a3d40: 2b00         	cmp	r3, #0x0
  3a3d42: d011         	beq	0x3a3d68 <PlayerLobbyOnlineGP::alertResponse(int)+0x60> @ imm = #0x22
  3a3d44: 9b00         	ldr	r3, [sp]
  3a3d46: 2b01         	cmp	r3, #0x1
  3a3d48: d10e         	bne	0x3a3d68 <PlayerLobbyOnlineGP::alertResponse(int)+0x60> @ imm = #0x1c
  3a3d4a: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3a3d74 <PlayerLobbyOnlineGP::alertResponse(int)+0x6c>
  3a3d4c: 58e3         	ldr	r3, [r4, r3]
  3a3d4e: 681b         	ldr	r3, [r3]
  3a3d50: 4618         	mov	r0, r3
  3a3d52: 210d         	movs	r1, #0xd
  3a3d54: f054 f834    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x54068
  3a3d58: 9b01         	ldr	r3, [sp, #0x4]
  3a3d5a: 681b         	ldr	r3, [r3]
  3a3d5c: f503 73de    	add.w	r3, r3, #0x1bc
  3a3d60: 681b         	ldr	r3, [r3]
  3a3d62: 9a01         	ldr	r2, [sp, #0x4]
  3a3d64: 4610         	mov	r0, r2
  3a3d66: 4798         	blx	r3
  3a3d68: b002         	add	sp, #0x8
  3a3d6a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a3d6b); words below are literal-pool data ---
  3a3d6c: ecf6 0058    	ldcl	p0, c0, [r6], #352
  3a3d70: da54         	bge	0x3a3e1c <PlayerLobbyOnlineGP::updateReadyLabel()+0xa4> @ imm = #0xa8
  3a3d72: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3a3d76: ffff b500    	<unknown>

// ==== PlayerLobbyOnlineGP::updateReadyLabel
//      file offset 0x3a3d78 (= ELF address; Ghidra 0x3b3d78), 104 bytes, Thumb-2
  3a3d78: b500         	push	{lr}
  3a3d7a: b083         	sub	sp, #0xc
  3a3d7c: 9001         	str	r0, [sp, #0x4]
  3a3d7e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3a3dd0 <PlayerLobbyOnlineGP::updateReadyLabel()+0x58>
  3a3d80: 447a         	add	r2, pc
  3a3d82: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a3dd4 <PlayerLobbyOnlineGP::updateReadyLabel()+0x5c>
  3a3d84: 58d3         	ldr	r3, [r2, r3]
  3a3d86: 781b         	ldrb	r3, [r3]
  3a3d88: 2b00         	cmp	r3, #0x0
  3a3d8a: d00f         	beq	0x3a3dac <PlayerLobbyOnlineGP::updateReadyLabel()+0x34> @ imm = #0x1e
  3a3d8c: 9b01         	ldr	r3, [sp, #0x4]
  3a3d8e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a3d92: 681b         	ldr	r3, [r3]
  3a3d94: f503 73fc    	add.w	r3, r3, #0x1f8
  3a3d98: 681b         	ldr	r3, [r3]
  3a3d9a: 9a01         	ldr	r2, [sp, #0x4]
  3a3d9c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a3da0: 4610         	mov	r0, r2
  3a3da2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a3dd8 <PlayerLobbyOnlineGP::updateReadyLabel()+0x60>
  3a3da4: 447a         	add	r2, pc
  3a3da6: 4611         	mov	r1, r2
  3a3da8: 4798         	blx	r3
  3a3daa: e00e         	b	0x3a3dca <PlayerLobbyOnlineGP::updateReadyLabel()+0x52> @ imm = #0x1c
  3a3dac: 9b01         	ldr	r3, [sp, #0x4]
  3a3dae: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a3db2: 681b         	ldr	r3, [r3]
  3a3db4: f503 73fc    	add.w	r3, r3, #0x1f8
  3a3db8: 681b         	ldr	r3, [r3]
  3a3dba: 9a01         	ldr	r2, [sp, #0x4]
  3a3dbc: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a3dc0: 4610         	mov	r0, r2
  3a3dc2: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a3ddc <PlayerLobbyOnlineGP::updateReadyLabel()+0x64>
  3a3dc4: 447a         	add	r2, pc
  3a3dc6: 4611         	mov	r1, r2
  3a3dc8: 4798         	blx	r3
  3a3dca: b003         	add	sp, #0xc
  3a3dcc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a3dcf); words below are literal-pool data ---
  3a3dd0: ec88 0058    	stc	p0, c0, [r8], {88}
  3a3dd4: da54         	bge	0x3a3e80 <PlayerLobbyOnlineGP::updateReadyLabel()+0x108> @ imm = #0xa8
  3a3dd6: ffff ed98    	<unknown>
  3a3dda: 0042         	lsls	r2, r0, #0x1
  3a3ddc: ed34 0042    	ldc	p0, c0, [r4, #-264]!
