// PlayerLobbyLocal: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlayerLobbyLocal.cpp

// ==== PlayerLobbyLocal::create
//      file offset 0x350e34 (= ELF address; Ghidra 0x360e34), 112 bytes, Thumb-2
  350e34: b510         	push	{r4, lr}
  350e36: b082         	sub	sp, #0x8
  350e38: f44f 70be    	mov.w	r0, #0x17c
  350e3c: f036 f592    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x436b24
  350e40: 4603         	mov	r3, r0
  350e42: 461c         	mov	r4, r3
  350e44: 4620         	mov	r0, r4
  350e46: f04f fdb1    	bl	0x3a09ac <PlayerLobbyLocal::PlayerLobbyLocal()> @ imm = #0x4fb62
  350e4a: 9401         	str	r4, [sp, #0x4]
  350e4c: 9b01         	ldr	r3, [sp, #0x4]
  350e4e: 2b00         	cmp	r3, #0x0
  350e50: d00a         	beq	0x350e68 <PlayerLobbyLocal::create()+0x34> @ imm = #0x14
  350e52: 9b01         	ldr	r3, [sp, #0x4]
  350e54: 681b         	ldr	r3, [r3]
  350e56: 3318         	adds	r3, #0x18
  350e58: 681b         	ldr	r3, [r3]
  350e5a: 9801         	ldr	r0, [sp, #0x4]
  350e5c: 4798         	blx	r3
  350e5e: 4603         	mov	r3, r0
  350e60: 2b00         	cmp	r3, #0x0
  350e62: d001         	beq	0x350e68 <PlayerLobbyLocal::create()+0x34> @ imm = #0x2
  350e64: 2301         	movs	r3, #0x1
  350e66: e000         	b	0x350e6a <PlayerLobbyLocal::create()+0x36> @ imm = #0x0
  350e68: 2300         	movs	r3, #0x0
  350e6a: 2b00         	cmp	r3, #0x0
  350e6c: d005         	beq	0x350e7a <PlayerLobbyLocal::create()+0x46> @ imm = #0xa
  350e6e: 9b01         	ldr	r3, [sp, #0x4]
  350e70: 4618         	mov	r0, r3
  350e72: f247 f843    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x247086
  350e76: 9b01         	ldr	r3, [sp, #0x4]
  350e78: e011         	b	0x350e9e <PlayerLobbyLocal::create()+0x6a> @ imm = #0x22
  350e7a: 9b01         	ldr	r3, [sp, #0x4]
  350e7c: 2b00         	cmp	r3, #0x0
  350e7e: d005         	beq	0x350e8c <PlayerLobbyLocal::create()+0x58> @ imm = #0xa
  350e80: 9b01         	ldr	r3, [sp, #0x4]
  350e82: 681b         	ldr	r3, [r3]
  350e84: 3308         	adds	r3, #0x8
  350e86: 681b         	ldr	r3, [r3]
  350e88: 9801         	ldr	r0, [sp, #0x4]
  350e8a: 4798         	blx	r3
  350e8c: 2300         	movs	r3, #0x0
  350e8e: 9301         	str	r3, [sp, #0x4]
  350e90: 2300         	movs	r3, #0x0
  350e92: e004         	b	0x350e9e <PlayerLobbyLocal::create()+0x6a> @ imm = #0x8
  350e94: 4620         	mov	r0, r4
  350e96: f037 f105    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43720a
  350e9a: f037 f107    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43720e
  350e9e: 4618         	mov	r0, r3
  350ea0: b002         	add	sp, #0x8
  350ea2: bd10         	pop	{r4, pc}

// ==== PlayerLobbyLocal::PlayerLobbyLocal
//      file offset 0x3a09ac (= ELF address; Ghidra 0x3b09ac), 88 bytes, Thumb-2
  3a09ac: b510         	push	{r4, lr}
  3a09ae: b082         	sub	sp, #0x8
  3a09b0: 9001         	str	r0, [sp, #0x4]
  3a09b2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3a09fc <PlayerLobbyLocal::PlayerLobbyLocal()+0x50>
  3a09b4: 447c         	add	r4, pc
  3a09b6: 9b01         	ldr	r3, [sp, #0x4]
  3a09b8: 4618         	mov	r0, r3
  3a09ba: f7f9 fa27    	bl	0x399e0c <PlayerLobby::PlayerLobby()> @ imm = #-0x6bb2
  3a09be: 9b01         	ldr	r3, [sp, #0x4]
  3a09c0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a0a00 <PlayerLobbyLocal::PlayerLobbyLocal()+0x54>
  3a09c2: 58a2         	ldr	r2, [r4, r2]
  3a09c4: 3208         	adds	r2, #0x8
  3a09c6: 601a         	str	r2, [r3]
  3a09c8: 9b01         	ldr	r3, [sp, #0x4]
  3a09ca: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a0a00 <PlayerLobbyLocal::PlayerLobbyLocal()+0x54>
  3a09cc: 58a2         	ldr	r2, [r4, r2]
  3a09ce: f502 7219    	add.w	r2, r2, #0x264
  3a09d2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3a09d6: 9b01         	ldr	r3, [sp, #0x4]
  3a09d8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3a0a00 <PlayerLobbyLocal::PlayerLobbyLocal()+0x54>
  3a09da: 58a2         	ldr	r2, [r4, r2]
  3a09dc: f502 7223    	add.w	r2, r2, #0x28c
  3a09e0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a09e4: 9b01         	ldr	r3, [sp, #0x4]
  3a09e6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a0a00 <PlayerLobbyLocal::PlayerLobbyLocal()+0x54>
  3a09e8: 58a2         	ldr	r2, [r4, r2]
  3a09ea: f502 722b    	add.w	r2, r2, #0x2ac
  3a09ee: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3a09f2: 9b01         	ldr	r3, [sp, #0x4]
  3a09f4: 4618         	mov	r0, r3
  3a09f6: b002         	add	sp, #0x8
  3a09f8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a09f9); words below are literal-pool data ---
  3a09fa: bf00         	nop
  3a09fc: 2054         	movs	r0, #0x54
  3a09fe: 0059         	lsls	r1, r3, #0x1
  3a0a00: dd5c         	ble	0x3a0abc <PlayerLobbyLocal::init()+0xb8> @ imm = #0xb8
  3a0a02: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerLobbyLocal::init
//      file offset 0x3a0a04 (= ELF address; Ghidra 0x3b0a04), 252 bytes, Thumb-2
  3a0a04: b510         	push	{r4, lr}
  3a0a06: b084         	sub	sp, #0x10
  3a0a08: 9001         	str	r0, [sp, #0x4]
  3a0a0a: 4c39         	ldr	r4, [pc, #0xe4]         @ 0x3a0af0 <PlayerLobbyLocal::init()+0xec>
  3a0a0c: 447c         	add	r4, pc
  3a0a0e: 9b01         	ldr	r3, [sp, #0x4]
  3a0a10: 4618         	mov	r0, r3
  3a0a12: f7f9 fa6b    	bl	0x399eec <PlayerLobby::init()> @ imm = #-0x6b2a
  3a0a16: 4603         	mov	r3, r0
  3a0a18: f88d 300f    	strb.w	r3, [sp, #0xf]
  3a0a1c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3a0a20: f083 0301    	eor	r3, r3, #0x1
  3a0a24: b2db         	uxtb	r3, r3
  3a0a26: 2b00         	cmp	r3, #0x0
  3a0a28: d001         	beq	0x3a0a2e <PlayerLobbyLocal::init()+0x2a> @ imm = #0x2
  3a0a2a: 2300         	movs	r3, #0x0
  3a0a2c: e05d         	b	0x3a0aea <PlayerLobbyLocal::init()+0xe6> @ imm = #0xba
  3a0a2e: 9b01         	ldr	r3, [sp, #0x4]
  3a0a30: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a0a34: 681b         	ldr	r3, [r3]
  3a0a36: 3390         	adds	r3, #0x90
  3a0a38: 681b         	ldr	r3, [r3]
  3a0a3a: 9a01         	ldr	r2, [sp, #0x4]
  3a0a3c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a0a40: 4610         	mov	r0, r2
  3a0a42: 2100         	movs	r1, #0x0
  3a0a44: 4798         	blx	r3
  3a0a46: 9b01         	ldr	r3, [sp, #0x4]
  3a0a48: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a0a4c: 681b         	ldr	r3, [r3]
  3a0a4e: 3390         	adds	r3, #0x90
  3a0a50: 681b         	ldr	r3, [r3]
  3a0a52: 9a01         	ldr	r2, [sp, #0x4]
  3a0a54: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a0a58: 4610         	mov	r0, r2
  3a0a5a: 2100         	movs	r1, #0x0
  3a0a5c: 4798         	blx	r3
  3a0a5e: 9b01         	ldr	r3, [sp, #0x4]
  3a0a60: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a0a64: 681b         	ldr	r3, [r3]
  3a0a66: 3390         	adds	r3, #0x90
  3a0a68: 681b         	ldr	r3, [r3]
  3a0a6a: 9a01         	ldr	r2, [sp, #0x4]
  3a0a6c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a0a70: 4610         	mov	r0, r2
  3a0a72: 2100         	movs	r1, #0x0
  3a0a74: 4798         	blx	r3
  3a0a76: 9b01         	ldr	r3, [sp, #0x4]
  3a0a78: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a0a7c: 681b         	ldr	r3, [r3]
  3a0a7e: 3390         	adds	r3, #0x90
  3a0a80: 681b         	ldr	r3, [r3]
  3a0a82: 9a01         	ldr	r2, [sp, #0x4]
  3a0a84: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a0a88: 4610         	mov	r0, r2
  3a0a8a: 2100         	movs	r1, #0x0
  3a0a8c: 4798         	blx	r3
  3a0a8e: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3a0af4 <PlayerLobbyLocal::init()+0xf0>
  3a0a90: 58e3         	ldr	r3, [r4, r3]
  3a0a92: 681b         	ldr	r3, [r3]
  3a0a94: 2b05         	cmp	r3, #0x5
  3a0a96: d127         	bne	0x3a0ae8 <PlayerLobbyLocal::init()+0xe4> @ imm = #0x4e
  3a0a98: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3a0af8 <PlayerLobbyLocal::init()+0xf4>
  3a0a9a: 58e3         	ldr	r3, [r4, r3]
  3a0a9c: 4618         	mov	r0, r3
  3a0a9e: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3a0afc <PlayerLobbyLocal::init()+0xf8>
  3a0aa0: 447b         	add	r3, pc
  3a0aa2: 4619         	mov	r1, r3
  3a0aa4: f015 f1e4    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4153c8
  3a0aa8: 9b01         	ldr	r3, [sp, #0x4]
  3a0aaa: 681b         	ldr	r3, [r3]
  3a0aac: f503 73e2    	add.w	r3, r3, #0x1c4
  3a0ab0: 681b         	ldr	r3, [r3]
  3a0ab2: 9a01         	ldr	r2, [sp, #0x4]
  3a0ab4: 4610         	mov	r0, r2
  3a0ab6: 4798         	blx	r3
  3a0ab8: 9b01         	ldr	r3, [sp, #0x4]
  3a0aba: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a0abe: 681b         	ldr	r3, [r3]
  3a0ac0: 3390         	adds	r3, #0x90
  3a0ac2: 681b         	ldr	r3, [r3]
  3a0ac4: 9a01         	ldr	r2, [sp, #0x4]
  3a0ac6: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a0aca: 4610         	mov	r0, r2
  3a0acc: 2100         	movs	r1, #0x0
  3a0ace: 4798         	blx	r3
  3a0ad0: 9b01         	ldr	r3, [sp, #0x4]
  3a0ad2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a0ad6: 681b         	ldr	r3, [r3]
  3a0ad8: 3390         	adds	r3, #0x90
  3a0ada: 681b         	ldr	r3, [r3]
  3a0adc: 9a01         	ldr	r2, [sp, #0x4]
  3a0ade: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a0ae2: 4610         	mov	r0, r2
  3a0ae4: 2100         	movs	r1, #0x0
  3a0ae6: 4798         	blx	r3
  3a0ae8: 2301         	movs	r3, #0x1
  3a0aea: 4618         	mov	r0, r3
  3a0aec: b004         	add	sp, #0x10
  3a0aee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a0aef); words below are literal-pool data ---
  3a0af0: 1ffc         	subs	r4, r7, #0x7
  3a0af2: 0059         	lsls	r1, r3, #0x1
  3a0af4: d838         	bhi	0x3a0b68 <non-virtual thunk to PlayerLobbyLocal::~PlayerLobbyLocal()+0x4> @ imm = #0x70
  3a0af6: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  3a0afa: ffff 1a5c    	<unknown>
  3a0afe: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0b00 (= ELF address; Ghidra 0x3b0b00), 100 bytes, Thumb-2
  3a0b00: b500         	push	{lr}
  3a0b02: b083         	sub	sp, #0xc
  3a0b04: 9001         	str	r0, [sp, #0x4]
  3a0b06: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3a0b5c <PlayerLobbyLocal::~PlayerLobbyLocal()+0x5c>
  3a0b08: 447b         	add	r3, pc
  3a0b0a: 9a01         	ldr	r2, [sp, #0x4]
  3a0b0c: 4914         	ldr	r1, [pc, #0x50]         @ 0x3a0b60 <PlayerLobbyLocal::~PlayerLobbyLocal()+0x60>
  3a0b0e: 5859         	ldr	r1, [r3, r1]
  3a0b10: 3108         	adds	r1, #0x8
  3a0b12: 6011         	str	r1, [r2]
  3a0b14: 9a01         	ldr	r2, [sp, #0x4]
  3a0b16: 4912         	ldr	r1, [pc, #0x48]         @ 0x3a0b60 <PlayerLobbyLocal::~PlayerLobbyLocal()+0x60>
  3a0b18: 5859         	ldr	r1, [r3, r1]
  3a0b1a: f501 7119    	add.w	r1, r1, #0x264
  3a0b1e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3a0b22: 9a01         	ldr	r2, [sp, #0x4]
  3a0b24: 490e         	ldr	r1, [pc, #0x38]         @ 0x3a0b60 <PlayerLobbyLocal::~PlayerLobbyLocal()+0x60>
  3a0b26: 5859         	ldr	r1, [r3, r1]
  3a0b28: f501 7123    	add.w	r1, r1, #0x28c
  3a0b2c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3a0b30: 9a01         	ldr	r2, [sp, #0x4]
  3a0b32: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3a0b60 <PlayerLobbyLocal::~PlayerLobbyLocal()+0x60>
  3a0b34: 585b         	ldr	r3, [r3, r1]
  3a0b36: f503 732b    	add.w	r3, r3, #0x2ac
  3a0b3a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3a0b3e: 9b01         	ldr	r3, [sp, #0x4]
  3a0b40: 4618         	mov	r0, r3
  3a0b42: f7f9 fd6b    	bl	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x652a
  3a0b46: 2300         	movs	r3, #0x0
  3a0b48: 2b00         	cmp	r3, #0x0
  3a0b4a: d002         	beq	0x3a0b52 <PlayerLobbyLocal::~PlayerLobbyLocal()+0x52> @ imm = #0x4
  3a0b4c: 9801         	ldr	r0, [sp, #0x4]
  3a0b4e: f3e7 faa9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e7552
  3a0b52: 9b01         	ldr	r3, [sp, #0x4]
  3a0b54: 4618         	mov	r0, r3
  3a0b56: b003         	add	sp, #0xc
  3a0b58: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a0b5b); words below are literal-pool data ---
  3a0b5c: 1f00         	subs	r0, r0, #0x4
  3a0b5e: 0059         	lsls	r1, r3, #0x1
  3a0b60: dd5c         	ble	0x3a0c1c <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x4c> @ imm = #0xb8
  3a0b62: ffff f1a0    	<unknown>

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0b64 (= ELF address; Ghidra 0x3b0b64), 8 bytes, Thumb-2
  3a0b64: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a0b68: f7ff bfca    	b.w	0x3a0b00 <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x6c

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0b6c (= ELF address; Ghidra 0x3b0b6c), 8 bytes, Thumb-2
  3a0b6c: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a0b70: f7ff bfc6    	b.w	0x3a0b00 <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x74

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0b74 (= ELF address; Ghidra 0x3b0b74), 8 bytes, Thumb-2
  3a0b74: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a0b78: f7ff bfc2    	b.w	0x3a0b00 <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x7c

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0b7c (= ELF address; Ghidra 0x3b0b7c), 28 bytes, Thumb-2
  3a0b7c: b500         	push	{lr}
  3a0b7e: b083         	sub	sp, #0xc
  3a0b80: 9001         	str	r0, [sp, #0x4]
  3a0b82: 9801         	ldr	r0, [sp, #0x4]
  3a0b84: f7ff ffbc    	bl	0x3a0b00 <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x88
  3a0b88: 9801         	ldr	r0, [sp, #0x4]
  3a0b8a: f3e7 fa8b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e7516
  3a0b8e: 9b01         	ldr	r3, [sp, #0x4]
  3a0b90: 4618         	mov	r0, r3
  3a0b92: b003         	add	sp, #0xc
  3a0b94: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0b98 (= ELF address; Ghidra 0x3b0b98), 8 bytes, Thumb-2
  3a0b98: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a0b9c: f7ff bfee    	b.w	0x3a0b7c <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x24

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0ba0 (= ELF address; Ghidra 0x3b0ba0), 8 bytes, Thumb-2
  3a0ba0: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a0ba4: f7ff bfea    	b.w	0x3a0b7c <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x2c

// ==== PlayerLobbyLocal::~PlayerLobbyLocal
//      file offset 0x3a0ba8 (= ELF address; Ghidra 0x3b0ba8), 8 bytes, Thumb-2
  3a0ba8: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a0bac: f7ff bfe6    	b.w	0x3a0b7c <PlayerLobbyLocal::~PlayerLobbyLocal()> @ imm = #-0x34

// ==== PlayerLobbyLocal::entered
//      file offset 0x3a0bb0 (= ELF address; Ghidra 0x3b0bb0), 32 bytes, Thumb-2
  3a0bb0: b500         	push	{lr}
  3a0bb2: b083         	sub	sp, #0xc
  3a0bb4: 9001         	str	r0, [sp, #0x4]
  3a0bb6: f7d6 ffc3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2907a
  3a0bba: 4603         	mov	r3, r0
  3a0bbc: 4618         	mov	r0, r3
  3a0bbe: f7d8 fff5    	bl	0x379bac <NetworkManager::updateSession()> @ imm = #-0x27016
  3a0bc2: 9b01         	ldr	r3, [sp, #0x4]
  3a0bc4: 4618         	mov	r0, r3
  3a0bc6: f7fa fe7b    	bl	0x39b8c0 <PlayerLobby::entered()> @ imm = #-0x530a
  3a0bca: b003         	add	sp, #0xc
  3a0bcc: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyLocal::onReady
//      file offset 0x3a0bd0 (= ELF address; Ghidra 0x3b0bd0), 524 bytes, Thumb-2
  3a0bd0: b530         	push	{r4, r5, lr}
  3a0bd2: b08d         	sub	sp, #0x34
  3a0bd4: 9003         	str	r0, [sp, #0xc]
  3a0bd6: 9102         	str	r1, [sp, #0x8]
  3a0bd8: 4c78         	ldr	r4, [pc, #0x1e0]        @ 0x3a0dbc <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1ec>
  3a0bda: 447c         	add	r4, pc
  3a0bdc: 9b03         	ldr	r3, [sp, #0xc]
  3a0bde: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a0be2: 681b         	ldr	r3, [r3]
  3a0be4: 3394         	adds	r3, #0x94
  3a0be6: 681b         	ldr	r3, [r3]
  3a0be8: 9a03         	ldr	r2, [sp, #0xc]
  3a0bea: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a0bee: 4610         	mov	r0, r2
  3a0bf0: 4798         	blx	r3
  3a0bf2: 4603         	mov	r3, r0
  3a0bf4: f083 0301    	eor	r3, r3, #0x1
  3a0bf8: b2db         	uxtb	r3, r3
  3a0bfa: 2b00         	cmp	r3, #0x0
  3a0bfc: d110         	bne	0x3a0c20 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x50> @ imm = #0x20
  3a0bfe: 9b03         	ldr	r3, [sp, #0xc]
  3a0c00: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a0c04: 681b         	ldr	r3, [r3]
  3a0c06: 3394         	adds	r3, #0x94
  3a0c08: 681b         	ldr	r3, [r3]
  3a0c0a: 9a03         	ldr	r2, [sp, #0xc]
  3a0c0c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a0c10: 4610         	mov	r0, r2
  3a0c12: 4798         	blx	r3
  3a0c14: 4603         	mov	r3, r0
  3a0c16: f083 0301    	eor	r3, r3, #0x1
  3a0c1a: b2db         	uxtb	r3, r3
  3a0c1c: 2b00         	cmp	r3, #0x0
  3a0c1e: d001         	beq	0x3a0c24 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x54> @ imm = #0x2
  3a0c20: 2301         	movs	r3, #0x1
  3a0c22: e000         	b	0x3a0c26 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x56> @ imm = #0x0
  3a0c24: 2300         	movs	r3, #0x0
  3a0c26: 2b00         	cmp	r3, #0x0
  3a0c28: d000         	beq	0x3a0c2c <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x5c> @ imm = #0x0
  3a0c2a: e0c5         	b	0x3a0db8 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1e8> @ imm = #0x18a
  3a0c2c: 4b64         	ldr	r3, [pc, #0x190]        @ 0x3a0dc0 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1f0>
  3a0c2e: 58e3         	ldr	r3, [r4, r3]
  3a0c30: 681b         	ldr	r3, [r3]
  3a0c32: 4618         	mov	r0, r3
  3a0c34: 210d         	movs	r1, #0xd
  3a0c36: f057 f8c3    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x57186
  3a0c3a: 4b62         	ldr	r3, [pc, #0x188]        @ 0x3a0dc4 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1f4>
  3a0c3c: 58e3         	ldr	r3, [r4, r3]
  3a0c3e: 781b         	ldrb	r3, [r3]
  3a0c40: 2b00         	cmp	r3, #0x0
  3a0c42: d017         	beq	0x3a0c74 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0xa4> @ imm = #0x2e
  3a0c44: 9b03         	ldr	r3, [sp, #0xc]
  3a0c46: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0c4a: 4618         	mov	r0, r3
  3a0c4c: f1f3 f80e    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f301c
  3a0c50: 4603         	mov	r3, r0
  3a0c52: 2b01         	cmp	r3, #0x1
  3a0c54: d10e         	bne	0x3a0c74 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0xa4> @ imm = #0x1c
  3a0c56: 9b03         	ldr	r3, [sp, #0xc]
  3a0c58: 681b         	ldr	r3, [r3]
  3a0c5a: f503 73ee    	add.w	r3, r3, #0x1dc
  3a0c5e: 681b         	ldr	r3, [r3]
  3a0c60: 9a03         	ldr	r2, [sp, #0xc]
  3a0c62: 4610         	mov	r0, r2
  3a0c64: 4798         	blx	r3
  3a0c66: 4603         	mov	r3, r0
  3a0c68: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a0c6c: 2b01         	cmp	r3, #0x1
  3a0c6e: d101         	bne	0x3a0c74 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0xa4> @ imm = #0x2
  3a0c70: 2301         	movs	r3, #0x1
  3a0c72: e000         	b	0x3a0c76 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0xa6> @ imm = #0x0
  3a0c74: 2300         	movs	r3, #0x0
  3a0c76: 2b00         	cmp	r3, #0x0
  3a0c78: d06e         	beq	0x3a0d58 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x188> @ imm = #0xdc
  3a0c7a: ab06         	add	r3, sp, #0x18
  3a0c7c: 4618         	mov	r0, r3
  3a0c7e: f3e9 fbb9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e9772
  3a0c82: aa0a         	add	r2, sp, #0x28
  3a0c84: ab06         	add	r3, sp, #0x18
  3a0c86: 4610         	mov	r0, r2
  3a0c88: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x3a0dc8 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1f8>
  3a0c8a: 447a         	add	r2, pc
  3a0c8c: 4611         	mov	r1, r2
  3a0c8e: 461a         	mov	r2, r3
  3a0c90: f015 f6e6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x415dcc
  3a0c94: ab07         	add	r3, sp, #0x1c
  3a0c96: 4618         	mov	r0, r3
  3a0c98: f3e9 fbac    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e9758
  3a0c9c: aa0b         	add	r2, sp, #0x2c
  3a0c9e: ab07         	add	r3, sp, #0x1c
  3a0ca0: 4610         	mov	r0, r2
  3a0ca2: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x3a0dcc <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1fc>
  3a0ca4: 447a         	add	r2, pc
  3a0ca6: 4611         	mov	r1, r2
  3a0ca8: 461a         	mov	r2, r3
  3a0caa: f015 f6d9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x415db2
  3a0cae: ab04         	add	r3, sp, #0x10
  3a0cb0: 4618         	mov	r0, r3
  3a0cb2: f3e9 fb9f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e973e
  3a0cb6: aa08         	add	r2, sp, #0x20
  3a0cb8: ab04         	add	r3, sp, #0x10
  3a0cba: 4610         	mov	r0, r2
  3a0cbc: 4a44         	ldr	r2, [pc, #0x110]        @ 0x3a0dd0 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x200>
  3a0cbe: 447a         	add	r2, pc
  3a0cc0: 4611         	mov	r1, r2
  3a0cc2: 461a         	mov	r2, r3
  3a0cc4: f015 f6cc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x415d98
  3a0cc8: ab08         	add	r3, sp, #0x20
  3a0cca: 4618         	mov	r0, r3
  3a0ccc: f1f8 feb6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f8d6c
  3a0cd0: 4605         	mov	r5, r0
  3a0cd2: ab05         	add	r3, sp, #0x14
  3a0cd4: 4618         	mov	r0, r3
  3a0cd6: f3e9 fb8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e971a
  3a0cda: aa09         	add	r2, sp, #0x24
  3a0cdc: ab05         	add	r3, sp, #0x14
  3a0cde: 4610         	mov	r0, r2
  3a0ce0: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x3a0dd4 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x204>
  3a0ce2: 447a         	add	r2, pc
  3a0ce4: 4611         	mov	r1, r2
  3a0ce6: 461a         	mov	r2, r3
  3a0ce8: f015 f6ba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x415d74
  3a0cec: ab09         	add	r3, sp, #0x24
  3a0cee: 4618         	mov	r0, r3
  3a0cf0: f1f8 fea4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1f8d48
  3a0cf4: 4603         	mov	r3, r0
  3a0cf6: 4628         	mov	r0, r5
  3a0cf8: 4619         	mov	r1, r3
  3a0cfa: 2200         	movs	r2, #0x0
  3a0cfc: f1f9 f888    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1f9110
  3a0d00: 4603         	mov	r3, r0
  3a0d02: 9803         	ldr	r0, [sp, #0xc]
  3a0d04: a90a         	add	r1, sp, #0x28
  3a0d06: aa0b         	add	r2, sp, #0x2c
  3a0d08: 2500         	movs	r5, #0x0
  3a0d0a: 9500         	str	r5, [sp]
  3a0d0c: 9001         	str	r0, [sp, #0x4]
  3a0d0e: 4832         	ldr	r0, [pc, #0xc8]         @ 0x3a0dd8 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x208>
  3a0d10: 5820         	ldr	r0, [r4, r0]
  3a0d12: f73e fd6f    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xc1522
  3a0d16: ab09         	add	r3, sp, #0x24
  3a0d18: 4618         	mov	r0, r3
  3a0d1a: f014 f5fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414bf6
  3a0d1e: ab05         	add	r3, sp, #0x14
  3a0d20: 4618         	mov	r0, r3
  3a0d22: f3e9 fb6b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e96d6
  3a0d26: ab08         	add	r3, sp, #0x20
  3a0d28: 4618         	mov	r0, r3
  3a0d2a: f014 f5f3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414be6
  3a0d2e: ab04         	add	r3, sp, #0x10
  3a0d30: 4618         	mov	r0, r3
  3a0d32: f3e9 fb63    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e96c6
  3a0d36: ab0b         	add	r3, sp, #0x2c
  3a0d38: 4618         	mov	r0, r3
  3a0d3a: f014 f5eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414bd6
  3a0d3e: ab07         	add	r3, sp, #0x1c
  3a0d40: 4618         	mov	r0, r3
  3a0d42: f3e9 fb5b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e96b6
  3a0d46: ab0a         	add	r3, sp, #0x28
  3a0d48: 4618         	mov	r0, r3
  3a0d4a: f014 f5e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414bc6
  3a0d4e: ab06         	add	r3, sp, #0x18
  3a0d50: 4618         	mov	r0, r3
  3a0d52: f3e9 fb53    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e96a6
  3a0d56: e02f         	b	0x3a0db8 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1e8> @ imm = #0x5e
  3a0d58: 9b03         	ldr	r3, [sp, #0xc]
  3a0d5a: 681b         	ldr	r3, [r3]
  3a0d5c: f503 73de    	add.w	r3, r3, #0x1bc
  3a0d60: 681b         	ldr	r3, [r3]
  3a0d62: 9a03         	ldr	r2, [sp, #0xc]
  3a0d64: 4610         	mov	r0, r2
  3a0d66: 4798         	blx	r3
  3a0d68: e026         	b	0x3a0db8 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1e8> @ imm = #0x4c
  3a0d6a: ab09         	add	r3, sp, #0x24
  3a0d6c: 4618         	mov	r0, r3
  3a0d6e: f014 f5d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414ba2
  3a0d72: e7ff         	b	0x3a0d74 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1a4> @ imm = #-0x2
  3a0d74: ab05         	add	r3, sp, #0x14
  3a0d76: 4618         	mov	r0, r3
  3a0d78: f3e9 fb40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e9680
  3a0d7c: e7ff         	b	0x3a0d7e <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1ae> @ imm = #-0x2
  3a0d7e: ab08         	add	r3, sp, #0x20
  3a0d80: 4618         	mov	r0, r3
  3a0d82: f014 f5c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414b8e
  3a0d86: e7ff         	b	0x3a0d88 <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1b8> @ imm = #-0x2
  3a0d88: ab04         	add	r3, sp, #0x10
  3a0d8a: 4618         	mov	r0, r3
  3a0d8c: f3e9 fb36    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e966c
  3a0d90: ab0b         	add	r3, sp, #0x2c
  3a0d92: 4618         	mov	r0, r3
  3a0d94: f014 f5be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414b7c
  3a0d98: e7ff         	b	0x3a0d9a <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1ca> @ imm = #-0x2
  3a0d9a: ab07         	add	r3, sp, #0x1c
  3a0d9c: 4618         	mov	r0, r3
  3a0d9e: f3e9 fb2d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e965a
  3a0da2: ab0a         	add	r3, sp, #0x28
  3a0da4: 4618         	mov	r0, r3
  3a0da6: f014 f5b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x414b6a
  3a0daa: e7ff         	b	0x3a0dac <PlayerLobbyLocal::onReady(cocos2d::CCObject*)+0x1dc> @ imm = #-0x2
  3a0dac: ab06         	add	r3, sp, #0x18
  3a0dae: 4618         	mov	r0, r3
  3a0db0: f3e9 fb24    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e9648
  3a0db4: f3e7 f97a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e72f4
  3a0db8: b00d         	add	sp, #0x34
  3a0dba: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a0dbb); words below are literal-pool data ---
  3a0dbc: 1e2e         	subs	r6, r5, #0x0
  3a0dbe: 0059         	lsls	r1, r3, #0x1
  3a0dc0: d730         	bvc	0x3a0e24 <PlayerLobbyLocal::updateButtonVisibility()+0x18> @ imm = #0x60
  3a0dc2: ffff da54    	<unknown>
  3a0dc6: ffff 187e    	vqrshrun.s64	d17, q15, #0x1
  3a0dca: 0043         	lsls	r3, r0, #0x1
  3a0dcc: 1874         	adds	r4, r6, r1
  3a0dce: 0043         	lsls	r3, r0, #0x1
  3a0dd0: 1882         	adds	r2, r0, r2
  3a0dd2: 0043         	lsls	r3, r0, #0x1
  3a0dd4: 1866         	adds	r6, r4, r1
  3a0dd6: 0043         	lsls	r3, r0, #0x1
  3a0dd8: dd60         	ble	0x3a0e9c <PlayerLobbyLocal::updateCountDown(float)> @ imm = #0xc0
  3a0dda: ffff b500    	<unknown>

// ==== PlayerLobbyLocal::messageBoxHandlerLocal
//      file offset 0x3a0ddc (= ELF address; Ghidra 0x3b0ddc), 36 bytes, Thumb-2
  3a0ddc: b500         	push	{lr}
  3a0dde: b087         	sub	sp, #0x1c
  3a0de0: 9003         	str	r0, [sp, #0xc]
  3a0de2: 9102         	str	r1, [sp, #0x8]
  3a0de4: 9201         	str	r2, [sp, #0x4]
  3a0de6: 9b01         	ldr	r3, [sp, #0x4]
  3a0de8: 9305         	str	r3, [sp, #0x14]
  3a0dea: 9b05         	ldr	r3, [sp, #0x14]
  3a0dec: 681b         	ldr	r3, [r3]
  3a0dee: f503 73ce    	add.w	r3, r3, #0x19c
  3a0df2: 681b         	ldr	r3, [r3]
  3a0df4: 9805         	ldr	r0, [sp, #0x14]
  3a0df6: 9903         	ldr	r1, [sp, #0xc]
  3a0df8: 4798         	blx	r3
  3a0dfa: b007         	add	sp, #0x1c
  3a0dfc: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyLocal::onPlayerDisconnected
//      file offset 0x3a0e00 (= ELF address; Ghidra 0x3b0e00), 10 bytes, Thumb-2
  3a0e00: b082         	sub	sp, #0x8
  3a0e02: 9001         	str	r0, [sp, #0x4]
  3a0e04: 9100         	str	r1, [sp]
  3a0e06: b002         	add	sp, #0x8
  3a0e08: 4770         	bx	lr

// ==== PlayerLobbyLocal::updateButtonVisibility
//      file offset 0x3a0e0c (= ELF address; Ghidra 0x3b0e0c), 144 bytes, Thumb-2
  3a0e0c: b500         	push	{lr}
  3a0e0e: b083         	sub	sp, #0xc
  3a0e10: 9001         	str	r0, [sp, #0x4]
  3a0e12: 9b01         	ldr	r3, [sp, #0x4]
  3a0e14: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a0e18: 681b         	ldr	r3, [r3]
  3a0e1a: 3390         	adds	r3, #0x90
  3a0e1c: 681b         	ldr	r3, [r3]
  3a0e1e: 9a01         	ldr	r2, [sp, #0x4]
  3a0e20: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a0e24: 4610         	mov	r0, r2
  3a0e26: 2101         	movs	r1, #0x1
  3a0e28: 4798         	blx	r3
  3a0e2a: 9b01         	ldr	r3, [sp, #0x4]
  3a0e2c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a0e30: 681b         	ldr	r3, [r3]
  3a0e32: 3390         	adds	r3, #0x90
  3a0e34: 681b         	ldr	r3, [r3]
  3a0e36: 9a01         	ldr	r2, [sp, #0x4]
  3a0e38: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a0e3c: 4610         	mov	r0, r2
  3a0e3e: 2101         	movs	r1, #0x1
  3a0e40: 4798         	blx	r3
  3a0e42: 9b01         	ldr	r3, [sp, #0x4]
  3a0e44: 681b         	ldr	r3, [r3]
  3a0e46: f503 73ee    	add.w	r3, r3, #0x1dc
  3a0e4a: 681b         	ldr	r3, [r3]
  3a0e4c: 9a01         	ldr	r2, [sp, #0x4]
  3a0e4e: 4610         	mov	r0, r2
  3a0e50: 4798         	blx	r3
  3a0e52: 4603         	mov	r3, r0
  3a0e54: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a0e58: 2b03         	cmp	r3, #0x3
  3a0e5a: bf0c         	ite	eq
  3a0e5c: 2300         	moveq	r3, #0x0
  3a0e5e: 2301         	movne	r3, #0x1
  3a0e60: b2db         	uxtb	r3, r3
  3a0e62: 2b00         	cmp	r3, #0x0
  3a0e64: d017         	beq	0x3a0e96 <PlayerLobbyLocal::updateButtonVisibility()+0x8a> @ imm = #0x2e
  3a0e66: 9b01         	ldr	r3, [sp, #0x4]
  3a0e68: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a0e6c: 681b         	ldr	r3, [r3]
  3a0e6e: 3390         	adds	r3, #0x90
  3a0e70: 681b         	ldr	r3, [r3]
  3a0e72: 9a01         	ldr	r2, [sp, #0x4]
  3a0e74: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a0e78: 4610         	mov	r0, r2
  3a0e7a: 2101         	movs	r1, #0x1
  3a0e7c: 4798         	blx	r3
  3a0e7e: 9b01         	ldr	r3, [sp, #0x4]
  3a0e80: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a0e84: 681b         	ldr	r3, [r3]
  3a0e86: 3390         	adds	r3, #0x90
  3a0e88: 681b         	ldr	r3, [r3]
  3a0e8a: 9a01         	ldr	r2, [sp, #0x4]
  3a0e8c: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a0e90: 4610         	mov	r0, r2
  3a0e92: 2101         	movs	r1, #0x1
  3a0e94: 4798         	blx	r3
  3a0e96: b003         	add	sp, #0xc
  3a0e98: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyLocal::updateCountDown
//      file offset 0x3a0e9c (= ELF address; Ghidra 0x3b0e9c), 624 bytes, Thumb-2
  3a0e9c: b530         	push	{r4, r5, lr}
  3a0e9e: b087         	sub	sp, #0x1c
  3a0ea0: 9001         	str	r0, [sp, #0x4]
  3a0ea2: 9100         	str	r1, [sp]
  3a0ea4: 4c95         	ldr	r4, [pc, #0x254]        @ 0x3a10fc <PlayerLobbyLocal::updateCountDown(float)+0x260>
  3a0ea6: 447c         	add	r4, pc
  3a0ea8: 9b01         	ldr	r3, [sp, #0x4]
  3a0eaa: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0eae: 4618         	mov	r0, r3
  3a0eb0: f1f2 fedc    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f2db8
  3a0eb4: 4603         	mov	r3, r0
  3a0eb6: 2b01         	cmp	r3, #0x1
  3a0eb8: bf94         	ite	ls
  3a0eba: 2300         	movls	r3, #0x0
  3a0ebc: 2301         	movhi	r3, #0x1
  3a0ebe: b2da         	uxtb	r2, r3
  3a0ec0: 9b01         	ldr	r3, [sp, #0x4]
  3a0ec2: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a0ec6: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x3a1100 <PlayerLobbyLocal::updateCountDown(float)+0x264>
  3a0ec8: 58e3         	ldr	r3, [r4, r3]
  3a0eca: 781b         	ldrb	r3, [r3]
  3a0ecc: 2b00         	cmp	r3, #0x0
  3a0ece: d003         	beq	0x3a0ed8 <PlayerLobbyLocal::updateCountDown(float)+0x3c> @ imm = #0x6
  3a0ed0: 9b01         	ldr	r3, [sp, #0x4]
  3a0ed2: 2201         	movs	r2, #0x1
  3a0ed4: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a0ed8: 2300         	movs	r3, #0x0
  3a0eda: 9303         	str	r3, [sp, #0xc]
  3a0edc: 2300         	movs	r3, #0x0
  3a0ede: 9304         	str	r3, [sp, #0x10]
  3a0ee0: 9b01         	ldr	r3, [sp, #0x4]
  3a0ee2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0ee6: 2b00         	cmp	r3, #0x0
  3a0ee8: d00a         	beq	0x3a0f00 <PlayerLobbyLocal::updateCountDown(float)+0x64> @ imm = #0x14
  3a0eea: 9b01         	ldr	r3, [sp, #0x4]
  3a0eec: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0ef0: 4618         	mov	r0, r3
  3a0ef2: f1f2 febb    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f2d76
  3a0ef6: 4603         	mov	r3, r0
  3a0ef8: 2b00         	cmp	r3, #0x0
  3a0efa: d001         	beq	0x3a0f00 <PlayerLobbyLocal::updateCountDown(float)+0x64> @ imm = #0x2
  3a0efc: 2301         	movs	r3, #0x1
  3a0efe: e000         	b	0x3a0f02 <PlayerLobbyLocal::updateCountDown(float)+0x66> @ imm = #0x0
  3a0f00: 2300         	movs	r3, #0x0
  3a0f02: 2b00         	cmp	r3, #0x0
  3a0f04: d037         	beq	0x3a0f76 <PlayerLobbyLocal::updateCountDown(float)+0xda> @ imm = #0x6e
  3a0f06: 9b01         	ldr	r3, [sp, #0x4]
  3a0f08: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0f0c: 695b         	ldr	r3, [r3, #0x14]
  3a0f0e: 9303         	str	r3, [sp, #0xc]
  3a0f10: 9b01         	ldr	r3, [sp, #0x4]
  3a0f12: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0f16: 695b         	ldr	r3, [r3, #0x14]
  3a0f18: 2b00         	cmp	r3, #0x0
  3a0f1a: d006         	beq	0x3a0f2a <PlayerLobbyLocal::updateCountDown(float)+0x8e> @ imm = #0xc
  3a0f1c: 9b01         	ldr	r3, [sp, #0x4]
  3a0f1e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a0f22: 695b         	ldr	r3, [r3, #0x14]
  3a0f24: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a0f28: e000         	b	0x3a0f2c <PlayerLobbyLocal::updateCountDown(float)+0x90> @ imm = #0x0
  3a0f2a: 2300         	movs	r3, #0x0
  3a0f2c: 9304         	str	r3, [sp, #0x10]
  3a0f2e: e01f         	b	0x3a0f70 <PlayerLobbyLocal::updateCountDown(float)+0xd4> @ imm = #0x3e
  3a0f30: 9803         	ldr	r0, [sp, #0xc]
  3a0f32: f75d fb7f    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xa2902
  3a0f36: 4603         	mov	r3, r0
  3a0f38: 9305         	str	r3, [sp, #0x14]
  3a0f3a: 9b01         	ldr	r3, [sp, #0x4]
  3a0f3c: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a0f40: 2b00         	cmp	r3, #0x0
  3a0f42: d006         	beq	0x3a0f52 <PlayerLobbyLocal::updateCountDown(float)+0xb6> @ imm = #0xc
  3a0f44: 9b05         	ldr	r3, [sp, #0x14]
  3a0f46: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a0f4a: 2b03         	cmp	r3, #0x3
  3a0f4c: d101         	bne	0x3a0f52 <PlayerLobbyLocal::updateCountDown(float)+0xb6> @ imm = #0x2
  3a0f4e: 2301         	movs	r3, #0x1
  3a0f50: e000         	b	0x3a0f54 <PlayerLobbyLocal::updateCountDown(float)+0xb8> @ imm = #0x0
  3a0f52: 2300         	movs	r3, #0x0
  3a0f54: 9a01         	ldr	r2, [sp, #0x4]
  3a0f56: f882 314c    	strb.w	r3, [r2, #0x14c]
  3a0f5a: 9b04         	ldr	r3, [sp, #0x10]
  3a0f5c: 9303         	str	r3, [sp, #0xc]
  3a0f5e: 9b04         	ldr	r3, [sp, #0x10]
  3a0f60: 2b00         	cmp	r3, #0x0
  3a0f62: d003         	beq	0x3a0f6c <PlayerLobbyLocal::updateCountDown(float)+0xd0> @ imm = #0x6
  3a0f64: 9b04         	ldr	r3, [sp, #0x10]
  3a0f66: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a0f6a: e000         	b	0x3a0f6e <PlayerLobbyLocal::updateCountDown(float)+0xd2> @ imm = #0x0
  3a0f6c: 2300         	movs	r3, #0x0
  3a0f6e: 9304         	str	r3, [sp, #0x10]
  3a0f70: 9b03         	ldr	r3, [sp, #0xc]
  3a0f72: 2b00         	cmp	r3, #0x0
  3a0f74: d1dc         	bne	0x3a0f30 <PlayerLobbyLocal::updateCountDown(float)+0x94> @ imm = #-0x48
  3a0f76: 9b01         	ldr	r3, [sp, #0x4]
  3a0f78: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a0f7c: 681b         	ldr	r3, [r3]
  3a0f7e: f503 730f    	add.w	r3, r3, #0x23c
  3a0f82: 681b         	ldr	r3, [r3]
  3a0f84: 9a01         	ldr	r2, [sp, #0x4]
  3a0f86: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a0f8a: 4610         	mov	r0, r2
  3a0f8c: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x3a1104 <PlayerLobbyLocal::updateCountDown(float)+0x268>
  3a0f8e: 447a         	add	r2, pc
  3a0f90: 4611         	mov	r1, r2
  3a0f92: 4798         	blx	r3
  3a0f94: 9b01         	ldr	r3, [sp, #0x4]
  3a0f96: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a0f9a: 2b00         	cmp	r3, #0x0
  3a0f9c: f000 80a3    	beq.w	0x3a10e6 <PlayerLobbyLocal::updateCountDown(float)+0x24a> @ imm = #0x146
  3a0fa0: 9b01         	ldr	r3, [sp, #0x4]
  3a0fa2: ed93 7a52    	vldr	s14, [r3, #328]
  3a0fa6: eddd 7a00    	vldr	s15, [sp]
  3a0faa: ee77 7a67    	vsub.f32	s15, s14, s15
  3a0fae: eef5 7ac0    	vcmpe.f32	s15, #0
  3a0fb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a0fb6: dd07         	ble	0x3a0fc8 <PlayerLobbyLocal::updateCountDown(float)+0x12c> @ imm = #0xe
  3a0fb8: 9b01         	ldr	r3, [sp, #0x4]
  3a0fba: ed93 7a52    	vldr	s14, [r3, #328]
  3a0fbe: eddd 7a00    	vldr	s15, [sp]
  3a0fc2: ee77 7a67    	vsub.f32	s15, s14, s15
  3a0fc6: e001         	b	0x3a0fcc <PlayerLobbyLocal::updateCountDown(float)+0x130> @ imm = #0x2
  3a0fc8: eddf 7a4b    	vldr	s15, [pc, #300]         @ 0x3a10f8 <PlayerLobbyLocal::updateCountDown(float)+0x25c>
  3a0fcc: 9b01         	ldr	r3, [sp, #0x4]
  3a0fce: edc3 7a52    	vstr	s15, [r3, #328]
  3a0fd2: 9b01         	ldr	r3, [sp, #0x4]
  3a0fd4: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a0fd8: 681b         	ldr	r3, [r3]
  3a0fda: f503 730f    	add.w	r3, r3, #0x23c
  3a0fde: 681c         	ldr	r4, [r3]
  3a0fe0: 9b01         	ldr	r3, [sp, #0x4]
  3a0fe2: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  3a0fe6: 9b01         	ldr	r3, [sp, #0x4]
  3a0fe8: edd3 7a52    	vldr	s15, [r3, #328]
  3a0fec: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a0ff0: ee17 2a90    	vmov	r2, s15
  3a0ff4: 4b44         	ldr	r3, [pc, #0x110]        @ 0x3a1108 <PlayerLobbyLocal::updateCountDown(float)+0x26c>
  3a0ff6: 447b         	add	r3, pc
  3a0ff8: 4618         	mov	r0, r3
  3a0ffa: 4611         	mov	r1, r2
  3a0ffc: f1f8 fd88    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f8b10
  3a1000: 4603         	mov	r3, r0
  3a1002: 4618         	mov	r0, r3
  3a1004: f1f8 fc90    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f8920
  3a1008: 4603         	mov	r3, r0
  3a100a: 4628         	mov	r0, r5
  3a100c: 4619         	mov	r1, r3
  3a100e: 47a0         	blx	r4
  3a1010: 9b01         	ldr	r3, [sp, #0x4]
  3a1012: ed93 7a52    	vldr	s14, [r3, #328]
  3a1016: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a101a: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a101e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a1022: d54f         	bpl	0x3a10c4 <PlayerLobbyLocal::updateCountDown(float)+0x228> @ imm = #0x9e
  3a1024: 9b01         	ldr	r3, [sp, #0x4]
  3a1026: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a102a: 681b         	ldr	r3, [r3]
  3a102c: f503 73de    	add.w	r3, r3, #0x1bc
  3a1030: 681c         	ldr	r4, [r3]
  3a1032: 9b01         	ldr	r3, [sp, #0x4]
  3a1034: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a1038: 461d         	mov	r5, r3
  3a103a: 20ff         	movs	r0, #0xff
  3a103c: 2100         	movs	r1, #0x0
  3a103e: 2200         	movs	r2, #0x0
  3a1040: f7fe fdc8    	bl	0x39fbd4 <LobbyRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<LobbyRow*>(LobbyRow* const*, LobbyRow* const*, LobbyRow**)+0x168> @ imm = #-0x1470
  3a1044: 4603         	mov	r3, r0
  3a1046: 461a         	mov	r2, r3
  3a1048: f88d 2008    	strb.w	r2, [sp, #0x8]
  3a104c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a1050: f88d 2009    	strb.w	r2, [sp, #0x9]
  3a1054: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a1058: f88d 300a    	strb.w	r3, [sp, #0xa]
  3a105c: ab02         	add	r3, sp, #0x8
  3a105e: 4628         	mov	r0, r5
  3a1060: 4619         	mov	r1, r3
  3a1062: 47a0         	blx	r4
  3a1064: 9b01         	ldr	r3, [sp, #0x4]
  3a1066: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a106a: 681b         	ldr	r3, [r3]
  3a106c: 3390         	adds	r3, #0x90
  3a106e: 681b         	ldr	r3, [r3]
  3a1070: 9a01         	ldr	r2, [sp, #0x4]
  3a1072: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a1076: 4610         	mov	r0, r2
  3a1078: 2100         	movs	r1, #0x0
  3a107a: 4798         	blx	r3
  3a107c: 9b01         	ldr	r3, [sp, #0x4]
  3a107e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a1082: 681b         	ldr	r3, [r3]
  3a1084: 3390         	adds	r3, #0x90
  3a1086: 681b         	ldr	r3, [r3]
  3a1088: 9a01         	ldr	r2, [sp, #0x4]
  3a108a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a108e: 4610         	mov	r0, r2
  3a1090: 2100         	movs	r1, #0x0
  3a1092: 4798         	blx	r3
  3a1094: 9b01         	ldr	r3, [sp, #0x4]
  3a1096: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a109a: 681b         	ldr	r3, [r3]
  3a109c: 3390         	adds	r3, #0x90
  3a109e: 681b         	ldr	r3, [r3]
  3a10a0: 9a01         	ldr	r2, [sp, #0x4]
  3a10a2: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a10a6: 4610         	mov	r0, r2
  3a10a8: 2100         	movs	r1, #0x0
  3a10aa: 4798         	blx	r3
  3a10ac: 9b01         	ldr	r3, [sp, #0x4]
  3a10ae: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a10b2: 681b         	ldr	r3, [r3]
  3a10b4: 3390         	adds	r3, #0x90
  3a10b6: 681b         	ldr	r3, [r3]
  3a10b8: 9a01         	ldr	r2, [sp, #0x4]
  3a10ba: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a10be: 4610         	mov	r0, r2
  3a10c0: 2100         	movs	r1, #0x0
  3a10c2: 4798         	blx	r3
  3a10c4: 9b01         	ldr	r3, [sp, #0x4]
  3a10c6: edd3 7a52    	vldr	s15, [r3, #328]
  3a10ca: eef5 7a40    	vcmp.f32	s15, #0
  3a10ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a10d2: d10f         	bne	0x3a10f4 <PlayerLobbyLocal::updateCountDown(float)+0x258> @ imm = #0x1e
  3a10d4: 9b01         	ldr	r3, [sp, #0x4]
  3a10d6: 681b         	ldr	r3, [r3]
  3a10d8: f503 73dc    	add.w	r3, r3, #0x1b8
  3a10dc: 681b         	ldr	r3, [r3]
  3a10de: 9a01         	ldr	r2, [sp, #0x4]
  3a10e0: 4610         	mov	r0, r2
  3a10e2: 4798         	blx	r3
  3a10e4: e006         	b	0x3a10f4 <PlayerLobbyLocal::updateCountDown(float)+0x258> @ imm = #0xc
  3a10e6: 9b01         	ldr	r3, [sp, #0x4]
  3a10e8: f04f 0200    	mov.w	r2, #0x0
  3a10ec: f2c4 1220    	movt	r2, #0x4120
  3a10f0: f8c3 2148    	str.w	r2, [r3, #0x148]
  3a10f4: b007         	add	sp, #0x1c
  3a10f6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a10f7); words below are literal-pool data ---
  3a10f8: 0000         	movs	r0, r0
  3a10fa: 0000         	movs	r0, r0
  3a10fc: 1b62         	subs	r2, r4, r5
  3a10fe: 0059         	lsls	r1, r3, #0x1
  3a1100: da54         	bge	0x3a11ac <PlayerLobbyLocal::updateReadyLabel()+0x30> @ imm = #0xa8
  3a1102: ffff 15c6    	<unknown>
  3a1106: 0043         	lsls	r3, r0, #0x1
  3a1108: 157e         	asrs	r6, r7, #0x15
  3a110a: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobbyLocal::alertResponse
//      file offset 0x3a110c (= ELF address; Ghidra 0x3b110c), 112 bytes, Thumb-2
  3a110c: b510         	push	{r4, lr}
  3a110e: b082         	sub	sp, #0x8
  3a1110: 9001         	str	r0, [sp, #0x4]
  3a1112: 9100         	str	r1, [sp]
  3a1114: 4c16         	ldr	r4, [pc, #0x58]         @ 0x3a1170 <PlayerLobbyLocal::alertResponse(int)+0x64>
  3a1116: 447c         	add	r4, pc
  3a1118: 9b01         	ldr	r3, [sp, #0x4]
  3a111a: 4618         	mov	r0, r3
  3a111c: 9900         	ldr	r1, [sp]
  3a111e: f7fb ff29    	bl	0x39cf74 <PlayerLobby::alertResponse(int)> @ imm = #-0x41ae
  3a1122: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a1174 <PlayerLobbyLocal::alertResponse(int)+0x68>
  3a1124: 58e3         	ldr	r3, [r4, r3]
  3a1126: 781b         	ldrb	r3, [r3]
  3a1128: 2b00         	cmp	r3, #0x0
  3a112a: d00a         	beq	0x3a1142 <PlayerLobbyLocal::alertResponse(int)+0x36> @ imm = #0x14
  3a112c: 9b01         	ldr	r3, [sp, #0x4]
  3a112e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a1132: 4618         	mov	r0, r3
  3a1134: f1f2 fd9a    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f2b34
  3a1138: 4603         	mov	r3, r0
  3a113a: 2b01         	cmp	r3, #0x1
  3a113c: d101         	bne	0x3a1142 <PlayerLobbyLocal::alertResponse(int)+0x36> @ imm = #0x2
  3a113e: 2301         	movs	r3, #0x1
  3a1140: e000         	b	0x3a1144 <PlayerLobbyLocal::alertResponse(int)+0x38> @ imm = #0x0
  3a1142: 2300         	movs	r3, #0x0
  3a1144: 2b00         	cmp	r3, #0x0
  3a1146: d011         	beq	0x3a116c <PlayerLobbyLocal::alertResponse(int)+0x60> @ imm = #0x22
  3a1148: 9b00         	ldr	r3, [sp]
  3a114a: 2b01         	cmp	r3, #0x1
  3a114c: d10e         	bne	0x3a116c <PlayerLobbyLocal::alertResponse(int)+0x60> @ imm = #0x1c
  3a114e: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3a1178 <PlayerLobbyLocal::alertResponse(int)+0x6c>
  3a1150: 58e3         	ldr	r3, [r4, r3]
  3a1152: 681b         	ldr	r3, [r3]
  3a1154: 4618         	mov	r0, r3
  3a1156: 210d         	movs	r1, #0xd
  3a1158: f056 fe32    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x56c64
  3a115c: 9b01         	ldr	r3, [sp, #0x4]
  3a115e: 681b         	ldr	r3, [r3]
  3a1160: f503 73de    	add.w	r3, r3, #0x1bc
  3a1164: 681b         	ldr	r3, [r3]
  3a1166: 9a01         	ldr	r2, [sp, #0x4]
  3a1168: 4610         	mov	r0, r2
  3a116a: 4798         	blx	r3
  3a116c: b002         	add	sp, #0x8
  3a116e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a116f); words below are literal-pool data ---
  3a1170: 18f2         	adds	r2, r6, r3
  3a1172: 0059         	lsls	r1, r3, #0x1
  3a1174: da54         	bge	0x3a1220 <PlayerLobbyLocal::updateReadyLabel()+0xa4> @ imm = #0xa8
  3a1176: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3a117a: ffff b500    	<unknown>

// ==== PlayerLobbyLocal::updateReadyLabel
//      file offset 0x3a117c (= ELF address; Ghidra 0x3b117c), 104 bytes, Thumb-2
  3a117c: b500         	push	{lr}
  3a117e: b083         	sub	sp, #0xc
  3a1180: 9001         	str	r0, [sp, #0x4]
  3a1182: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3a11d4 <PlayerLobbyLocal::updateReadyLabel()+0x58>
  3a1184: 447a         	add	r2, pc
  3a1186: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a11d8 <PlayerLobbyLocal::updateReadyLabel()+0x5c>
  3a1188: 58d3         	ldr	r3, [r2, r3]
  3a118a: 781b         	ldrb	r3, [r3]
  3a118c: 2b00         	cmp	r3, #0x0
  3a118e: d00f         	beq	0x3a11b0 <PlayerLobbyLocal::updateReadyLabel()+0x34> @ imm = #0x1e
  3a1190: 9b01         	ldr	r3, [sp, #0x4]
  3a1192: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a1196: 681b         	ldr	r3, [r3]
  3a1198: f503 73fc    	add.w	r3, r3, #0x1f8
  3a119c: 681b         	ldr	r3, [r3]
  3a119e: 9a01         	ldr	r2, [sp, #0x4]
  3a11a0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a11a4: 4610         	mov	r0, r2
  3a11a6: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a11dc <PlayerLobbyLocal::updateReadyLabel()+0x60>
  3a11a8: 447a         	add	r2, pc
  3a11aa: 4611         	mov	r1, r2
  3a11ac: 4798         	blx	r3
  3a11ae: e00e         	b	0x3a11ce <PlayerLobbyLocal::updateReadyLabel()+0x52> @ imm = #0x1c
  3a11b0: 9b01         	ldr	r3, [sp, #0x4]
  3a11b2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a11b6: 681b         	ldr	r3, [r3]
  3a11b8: f503 73fc    	add.w	r3, r3, #0x1f8
  3a11bc: 681b         	ldr	r3, [r3]
  3a11be: 9a01         	ldr	r2, [sp, #0x4]
  3a11c0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a11c4: 4610         	mov	r0, r2
  3a11c6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a11e0 <PlayerLobbyLocal::updateReadyLabel()+0x64>
  3a11c8: 447a         	add	r2, pc
  3a11ca: 4611         	mov	r1, r2
  3a11cc: 4798         	blx	r3
  3a11ce: b003         	add	sp, #0xc
  3a11d0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a11d3); words below are literal-pool data ---
  3a11d4: 1884         	adds	r4, r0, r2
  3a11d6: 0059         	lsls	r1, r3, #0x1
  3a11d8: da54         	bge	0x3a1284 <PlayerLobbyLocal::updateReadyLabel()+0x108> @ imm = #0xa8
  3a11da: ffff 13e0    	<unknown>
  3a11de: 0043         	lsls	r3, r0, #0x1
  3a11e0: 13c8         	asrs	r0, r1, #0xf
  3a11e2: 0043         	lsls	r3, r0, #0x1
