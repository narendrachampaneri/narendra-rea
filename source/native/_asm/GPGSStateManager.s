// GPGSStateManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 17 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GPGSStateManager.cpp

// ==== GPGSStateManager::setSignInCompletedionFlag
//      file offset 0x332884 (= ELF address; Ghidra 0x342884), 36 bytes, Thumb-2
  332884: b082         	sub	sp, #0x8
  332886: 4603         	mov	r3, r0
  332888: f88d 3007    	strb.w	r3, [sp, #0x7]
  33288c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3328a0 <GPGSStateManager::setSignInCompletedionFlag(bool)+0x1c>
  33288e: 447a         	add	r2, pc
  332890: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3328a4 <GPGSStateManager::setSignInCompletedionFlag(bool)+0x20>
  332892: 58d3         	ldr	r3, [r2, r3]
  332894: f89d 2007    	ldrb.w	r2, [sp, #0x7]
  332898: 701a         	strb	r2, [r3]
  33289a: b002         	add	sp, #0x8
  33289c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x33289d); words below are literal-pool data ---
  33289e: bf00         	nop
  3328a0: 017a         	lsls	r2, r7, #0x5
  3328a2: 0060         	lsls	r0, r4, #0x1
  3328a4: da74         	bge	0x332990 <OnAuthActionStarted(gpg::AuthOperation)+0xc> @ imm = #0xe8
  3328a6: ffff b082    	<unknown>

// ==== GPGSStateManager::setAuthInProgressFlag
//      file offset 0x3328a8 (= ELF address; Ghidra 0x3428a8), 36 bytes, Thumb-2
  3328a8: b082         	sub	sp, #0x8
  3328aa: 4603         	mov	r3, r0
  3328ac: f88d 3007    	strb.w	r3, [sp, #0x7]
  3328b0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3328c4 <GPGSStateManager::setAuthInProgressFlag(bool)+0x1c>
  3328b2: 447a         	add	r2, pc
  3328b4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3328c8 <GPGSStateManager::setAuthInProgressFlag(bool)+0x20>
  3328b6: 58d3         	ldr	r3, [r2, r3]
  3328b8: f89d 2007    	ldrb.w	r2, [sp, #0x7]
  3328bc: 701a         	strb	r2, [r3]
  3328be: b002         	add	sp, #0x8
  3328c0: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3328c1); words below are literal-pool data ---
  3328c2: bf00         	nop
  3328c4: 0156         	lsls	r6, r2, #0x5
  3328c6: 0060         	lsls	r0, r4, #0x1
  3328c8: da78         	bge	0x3329bc <OnAuthActionStarted(gpg::AuthOperation)+0x38> @ imm = #0xf0
  3328ca: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSStateManager::IsAuthInProgress
//      file offset 0x3328cc (= ELF address; Ghidra 0x3428cc), 56 bytes, Thumb-2
  3328cc: b510         	push	{r4, lr}
  3328ce: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x3328f8 <GPGSStateManager::IsAuthInProgress()+0x2c>
  3328d0: 447c         	add	r4, pc
  3328d2: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3328fc <GPGSStateManager::IsAuthInProgress()+0x30>
  3328d4: 58e3         	ldr	r3, [r4, r3]
  3328d6: 4618         	mov	r0, r3
  3328d8: f000 fe16    	bl	0x333508 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator bool() const> @ imm = #0xc2c
  3328dc: 4603         	mov	r3, r0
  3328de: f083 0301    	eor	r3, r3, #0x1
  3328e2: b2db         	uxtb	r3, r3
  3328e4: 2b00         	cmp	r3, #0x0
  3328e6: d001         	beq	0x3328ec <GPGSStateManager::IsAuthInProgress()+0x20> @ imm = #0x2
  3328e8: 2300         	movs	r3, #0x0
  3328ea: e002         	b	0x3328f2 <GPGSStateManager::IsAuthInProgress()+0x26> @ imm = #0x4
  3328ec: 4b04         	ldr	r3, [pc, #0x10]         @ 0x332900 <GPGSStateManager::IsAuthInProgress()+0x34>
  3328ee: 58e3         	ldr	r3, [r4, r3]
  3328f0: 781b         	ldrb	r3, [r3]
  3328f2: 4618         	mov	r0, r3
  3328f4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3328f5); words below are literal-pool data ---
  3328f6: bf00         	nop
  3328f8: 0138         	lsls	r0, r7, #0x4
  3328fa: 0060         	lsls	r0, r4, #0x1
  3328fc: da7c         	bge	0x3329f8 <GPGSStateManager::GetGameServices()+0x14> @ imm = #0xf8
  3328fe: ffff da78    	<unknown>
  332902: ffff b500    	<unknown>

// ==== GPGSStateManager::GetGameServices
//      file offset 0x3329e4 (= ELF address; Ghidra 0x3429e4), 56 bytes, Thumb-2
  3329e4: b510         	push	{r4, lr}
  3329e6: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x332a14 <GPGSStateManager::GetGameServices()+0x30>
  3329e8: 447c         	add	r4, pc
  3329ea: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x332a18 <GPGSStateManager::GetGameServices()+0x34>
  3329ec: 58e3         	ldr	r3, [r4, r3]
  3329ee: 4618         	mov	r0, r3
  3329f0: f000 fd8a    	bl	0x333508 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator bool() const> @ imm = #0xb14
  3329f4: 4603         	mov	r3, r0
  3329f6: f083 0301    	eor	r3, r3, #0x1
  3329fa: b2db         	uxtb	r3, r3
  3329fc: 2b00         	cmp	r3, #0x0
  3329fe: d001         	beq	0x332a04 <GPGSStateManager::GetGameServices()+0x20> @ imm = #0x2
  332a00: 2300         	movs	r3, #0x0
  332a02: e005         	b	0x332a10 <GPGSStateManager::GetGameServices()+0x2c> @ imm = #0xa
  332a04: 4b04         	ldr	r3, [pc, #0x10]         @ 0x332a18 <GPGSStateManager::GetGameServices()+0x34>
  332a06: 58e3         	ldr	r3, [r4, r3]
  332a08: 4618         	mov	r0, r3
  332a0a: f000 fdab    	bl	0x333564 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::get() const> @ imm = #0xb56
  332a0e: 4603         	mov	r3, r0
  332a10: 4618         	mov	r0, r3
  332a12: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x332a13); words below are literal-pool data ---
  332a14: 0020         	movs	r0, r4
  332a16: 0060         	lsls	r0, r4, #0x1
  332a18: da7c         	bge	0x332b14 <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0x40> @ imm = #0xf8
  332a1a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSStateManager::IsAuthorized
//      file offset 0x332a1c (= ELF address; Ghidra 0x342a1c), 140 bytes, Thumb-2
  332a1c: b510         	push	{r4, lr}
  332a1e: b082         	sub	sp, #0x8
  332a20: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x332a94 <GPGSStateManager::IsAuthorized()+0x78>
  332a22: 447c         	add	r4, pc
  332a24: 2004         	movs	r0, #0x4
  332a26: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x332a98 <GPGSStateManager::IsAuthorized()+0x7c>
  332a28: 447b         	add	r3, pc
  332a2a: 4619         	mov	r1, r3
  332a2c: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x332a9c <GPGSStateManager::IsAuthorized()+0x80>
  332a2e: 447b         	add	r3, pc
  332a30: 461a         	mov	r2, r3
  332a32: f7a3 ea94    	blx	0x2d5f5c <.plt+0x8c>    @ imm = #-0x5cad8
  332a36: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x332aa0 <GPGSStateManager::IsAuthorized()+0x84>
  332a38: 58e3         	ldr	r3, [r4, r3]
  332a3a: 4618         	mov	r0, r3
  332a3c: f000 fd64    	bl	0x333508 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator bool() const> @ imm = #0xac8
  332a40: 4603         	mov	r3, r0
  332a42: 2b00         	cmp	r3, #0x0
  332a44: d006         	beq	0x332a54 <GPGSStateManager::IsAuthorized()+0x38> @ imm = #0xc
  332a46: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x332aa4 <GPGSStateManager::IsAuthorized()+0x88>
  332a48: 58e3         	ldr	r3, [r4, r3]
  332a4a: 781b         	ldrb	r3, [r3]
  332a4c: 2b00         	cmp	r3, #0x0
  332a4e: d001         	beq	0x332a54 <GPGSStateManager::IsAuthorized()+0x38> @ imm = #0x2
  332a50: 2301         	movs	r3, #0x1
  332a52: e000         	b	0x332a56 <GPGSStateManager::IsAuthorized()+0x3a> @ imm = #0x0
  332a54: 2300         	movs	r3, #0x0
  332a56: 2b00         	cmp	r3, #0x0
  332a58: d018         	beq	0x332a8c <GPGSStateManager::IsAuthorized()+0x70> @ imm = #0x30
  332a5a: f0f9 ff8d    	bl	0x42c978 <ApplicationInterface::isGpgsReady()> @ imm = #0xf9f1a
  332a5e: 4603         	mov	r3, r0
  332a60: 2b00         	cmp	r3, #0x0
  332a62: d00d         	beq	0x332a80 <GPGSStateManager::IsAuthorized()+0x64> @ imm = #0x1a
  332a64: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x332aa0 <GPGSStateManager::IsAuthorized()+0x84>
  332a66: 58e3         	ldr	r3, [r4, r3]
  332a68: 4618         	mov	r0, r3
  332a6a: f000 fd89    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0xb12
  332a6e: 4603         	mov	r3, r0
  332a70: 4618         	mov	r0, r3
  332a72: f1cd f8db    	bl	0x4ffc2c <gpg::GameServices::IsAuthorized()> @ imm = #0x1cd1b6
  332a76: 4603         	mov	r3, r0
  332a78: 2b00         	cmp	r3, #0x0
  332a7a: d001         	beq	0x332a80 <GPGSStateManager::IsAuthorized()+0x64> @ imm = #0x2
  332a7c: 2301         	movs	r3, #0x1
  332a7e: e000         	b	0x332a82 <GPGSStateManager::IsAuthorized()+0x66> @ imm = #0x0
  332a80: 2300         	movs	r3, #0x0
  332a82: f88d 3007    	strb.w	r3, [sp, #0x7]
  332a86: f89d 3007    	ldrb.w	r3, [sp, #0x7]
  332a8a: e000         	b	0x332a8e <GPGSStateManager::IsAuthorized()+0x72> @ imm = #0x0
  332a8c: 2300         	movs	r3, #0x0
  332a8e: 4618         	mov	r0, r3
  332a90: b002         	add	sp, #0x8
  332a92: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x332a93); words below are literal-pool data ---
  332a94: ffe6 005f    	<unknown>
  332a98: 5f7c         	ldrsh	r4, [r7, r5]
  332a9a: 0049         	lsls	r1, r1, #0x1
  332a9c: 5fc2         	ldrsh	r2, [r0, r7]
  332a9e: 0049         	lsls	r1, r1, #0x1
  332aa0: da7c         	bge	0x332b9c <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0xc8> @ imm = #0xf8
  332aa2: ffff da74    	<unknown>
  332aa6: ffff b508    	<unknown>

// ==== GPGSStateManager::isServiceInitialized
//      file offset 0x332aa8 (= ELF address; Ghidra 0x342aa8), 32 bytes, Thumb-2
  332aa8: b508         	push	{r3, lr}
  332aaa: 4a05         	ldr	r2, [pc, #0x14]         @ 0x332ac0 <GPGSStateManager::isServiceInitialized()+0x18>
  332aac: 447a         	add	r2, pc
  332aae: 4b05         	ldr	r3, [pc, #0x14]         @ 0x332ac4 <GPGSStateManager::isServiceInitialized()+0x1c>
  332ab0: 58d3         	ldr	r3, [r2, r3]
  332ab2: 4618         	mov	r0, r3
  332ab4: f000 fd28    	bl	0x333508 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator bool() const> @ imm = #0xa50
  332ab8: 4603         	mov	r3, r0
  332aba: 4618         	mov	r0, r3
  332abc: bd08         	pop	{r3, pc}
  ; --- end of code (Ghidra body ends at 0x332abd); words below are literal-pool data ---
  332abe: bf00         	nop
  332ac0: ff5c 005f    	<unknown>
  332ac4: da7c         	bge	0x332bc0 <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0xec> @ imm = #0xf8
  332ac6: ffff b084    	<unknown>

// ==== GPGSStateManager::InitServices
//      file offset 0x332ce8 (= ELF address; Ghidra 0x342ce8), 456 bytes, Thumb-2
  332ce8: b570         	push	{r4, r5, r6, lr}
  332cea: b0a4         	sub	sp, #0x90
  332cec: 9003         	str	r0, [sp, #0xc]
  332cee: 9102         	str	r1, [sp, #0x8]
  332cf0: 9201         	str	r2, [sp, #0x4]
  332cf2: 9300         	str	r3, [sp]
  332cf4: 4c68         	ldr	r4, [pc, #0x1a0]        @ 0x332e98 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1b0>
  332cf6: 447c         	add	r4, pc
  332cf8: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x332e9c <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1b4>
  332cfa: 58e3         	ldr	r3, [r4, r3]
  332cfc: 681b         	ldr	r3, [r3]
  332cfe: 9323         	str	r3, [sp, #0x8c]
  332d00: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x332ea0 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1b8>
  332d02: 447b         	add	r3, pc
  332d04: 4618         	mov	r0, r3
  332d06: f7a3 e978    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0x5cd10
  332d0a: 4b66         	ldr	r3, [pc, #0x198]        @ 0x332ea4 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1bc>
  332d0c: 58e3         	ldr	r3, [r4, r3]
  332d0e: 4618         	mov	r0, r3
  332d10: f000 fbfa    	bl	0x333508 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator bool() const> @ imm = #0x7f4
  332d14: 4603         	mov	r3, r0
  332d16: f083 0301    	eor	r3, r3, #0x1
  332d1a: b2db         	uxtb	r3, r3
  332d1c: 2b00         	cmp	r3, #0x0
  332d1e: f000 8082    	beq.w	0x332e26 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x13e> @ imm = #0x104
  332d22: 4b61         	ldr	r3, [pc, #0x184]        @ 0x332ea8 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1c0>
  332d24: 447b         	add	r3, pc
  332d26: 4618         	mov	r0, r3
  332d28: f7a3 e966    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0x5cd34
  332d2c: ab05         	add	r3, sp, #0x14
  332d2e: 4618         	mov	r0, r3
  332d30: f1c6 feae    	bl	0x4f9a90 <gpg::GameServices::Builder::Builder()> @ imm = #0x1c6d5c
  332d34: ab05         	add	r3, sp, #0x14
  332d36: 4618         	mov	r0, r3
  332d38: f1c6 ff0c    	bl	0x4f9b54 <gpg::GameServices::Builder::EnableSnapshots()> @ imm = #0x1c6e18
  332d3c: 4603         	mov	r3, r0
  332d3e: 4618         	mov	r0, r3
  332d40: 2103         	movs	r1, #0x3
  332d42: f1c7 f87f    	bl	0x4f9e44 <gpg::GameServices::Builder::SetDefaultOnLog(gpg::LogLevel)> @ imm = #0x1c70fe
  332d46: 4605         	mov	r5, r0
  332d48: ab07         	add	r3, sp, #0x1c
  332d4a: 4618         	mov	r0, r3
  332d4c: 4631         	mov	r1, r6
  332d4e: f000 fc3b    	bl	0x3335c8 <std::_Maybe_unary_or_binary_function<void, gpg::LogLevel, std::string const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x876
  332d52: ab07         	add	r3, sp, #0x1c
  332d54: 4628         	mov	r0, r5
  332d56: 4619         	mov	r1, r3
  332d58: f1c7 f848    	bl	0x4f9dec <gpg::GameServices::Builder::SetOnLog(std::function<void (gpg::LogLevel, std::string const&)>)> @ imm = #0x1c7090
  332d5c: 4605         	mov	r5, r0
  332d5e: ab0b         	add	r3, sp, #0x2c
  332d60: 4618         	mov	r0, r3
  332d62: 9902         	ldr	r1, [sp, #0x8]
  332d64: f000 fc8c    	bl	0x333680 <std::function<void (gpg::AuthOperation)>::function(std::function<void (gpg::AuthOperation)> const&)> @ imm = #0x918
  332d68: aa0f         	add	r2, sp, #0x3c
  332d6a: ab0b         	add	r3, sp, #0x2c
  332d6c: 4610         	mov	r0, r2
  332d6e: 4619         	mov	r1, r3
  332d70: f000 fcd6    	bl	0x333720 <std::function<void (gpg::AuthOperation)>::function(std::function<void (gpg::AuthOperation)>&&)+0x44> @ imm = #0x9ac
  332d74: ab0f         	add	r3, sp, #0x3c
  332d76: 4628         	mov	r0, r5
  332d78: 4619         	mov	r1, r3
  332d7a: f1c7 fb0c    	bl	0x4fa396 <gpg::GameServices::Builder::SetOnAuthActionStarted(std::function<void (gpg::AuthOperation)>)> @ imm = #0x1c7618
  332d7e: 4605         	mov	r5, r0
  332d80: ab13         	add	r3, sp, #0x4c
  332d82: 4618         	mov	r0, r3
  332d84: 9901         	ldr	r1, [sp, #0x4]
  332d86: f000 fd2d    	bl	0x3337e4 <std::function<void (gpg::AuthOperation, gpg::AuthStatus)>::function(std::function<void (gpg::AuthOperation, gpg::AuthStatus)> const&)> @ imm = #0xa5a
  332d8a: aa17         	add	r2, sp, #0x5c
  332d8c: ab13         	add	r3, sp, #0x4c
  332d8e: 4610         	mov	r0, r2
  332d90: 4619         	mov	r1, r3
  332d92: f000 fd77    	bl	0x333884 <std::function<void (gpg::AuthOperation, gpg::AuthStatus)>::function(std::function<void (gpg::AuthOperation, gpg::AuthStatus)>&&)+0x44> @ imm = #0xaee
  332d96: ab17         	add	r3, sp, #0x5c
  332d98: 4628         	mov	r0, r5
  332d9a: 4619         	mov	r1, r3
  332d9c: f1c7 fa4d    	bl	0x4fa23a <gpg::GameServices::Builder::SetOnAuthActionFinished(std::function<void (gpg::AuthOperation, gpg::AuthStatus)>)> @ imm = #0x1c749a
  332da0: 4605         	mov	r5, r0
  332da2: ab1b         	add	r3, sp, #0x6c
  332da4: 4618         	mov	r0, r3
  332da6: 9900         	ldr	r1, [sp]
  332da8: f000 fd9e    	bl	0x3338e8 <std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>::function(std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)> const&)> @ imm = #0xb3c
  332dac: aa1f         	add	r2, sp, #0x7c
  332dae: ab1b         	add	r3, sp, #0x6c
  332db0: 4610         	mov	r0, r2
  332db2: 4619         	mov	r1, r3
  332db4: f000 fde8    	bl	0x333988 <std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>::function(std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>&&)+0x44> @ imm = #0xbd0
  332db8: ab1f         	add	r3, sp, #0x7c
  332dba: 4628         	mov	r0, r5
  332dbc: 4619         	mov	r1, r3
  332dbe: f1c7 f937    	bl	0x4fa030 <gpg::GameServices::Builder::SetOnMultiplayerInvitationEvent(std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)> @ imm = #0x1c726e
  332dc2: 4603         	mov	r3, r0
  332dc4: aa06         	add	r2, sp, #0x18
  332dc6: 4610         	mov	r0, r2
  332dc8: 4619         	mov	r1, r3
  332dca: 9a03         	ldr	r2, [sp, #0xc]
  332dcc: f1c7 fb88    	bl	0x4fa4e0 <gpg::GameServices::Builder::Create(gpg::AndroidPlatformConfiguration const&)> @ imm = #0x1c7710
  332dd0: ab06         	add	r3, sp, #0x18
  332dd2: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x332ea4 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1bc>
  332dd4: 58a2         	ldr	r2, [r4, r2]
  332dd6: 4610         	mov	r0, r2
  332dd8: 4619         	mov	r1, r3
  332dda: f000 fe0d    	bl	0x3339f8 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator=(std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>&&)> @ imm = #0xc1a
  332dde: ab06         	add	r3, sp, #0x18
  332de0: 4618         	mov	r0, r3
  332de2: f000 fb73    	bl	0x3334cc <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::~unique_ptr()> @ imm = #0x6e6
  332de6: ab1f         	add	r3, sp, #0x7c
  332de8: 4618         	mov	r0, r3
  332dea: f7a8 fdb5    	bl	0x2db958 <std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>::~function()> @ imm = #-0x57496
  332dee: ab1b         	add	r3, sp, #0x6c
  332df0: 4618         	mov	r0, r3
  332df2: f7ff ff5d    	bl	0x332cb0 <gpg::MultiplayerInvitation::~MultiplayerInvitation()+0x84> @ imm = #-0x146
  332df6: ab17         	add	r3, sp, #0x5c
  332df8: 4618         	mov	r0, r3
  332dfa: f7a8 fda1    	bl	0x2db940 <std::function<void (gpg::AuthOperation, gpg::AuthStatus)>::~function()> @ imm = #-0x574be
  332dfe: ab13         	add	r3, sp, #0x4c
  332e00: 4618         	mov	r0, r3
  332e02: f7ff fedd    	bl	0x332bc0 <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0xec> @ imm = #-0x246
  332e06: ab0f         	add	r3, sp, #0x3c
  332e08: 4618         	mov	r0, r3
  332e0a: f7a8 fd8d    	bl	0x2db928 <std::function<void (gpg::AuthOperation)>::~function()> @ imm = #-0x574e6
  332e0e: ab0b         	add	r3, sp, #0x2c
  332e10: 4618         	mov	r0, r3
  332e12: f7ff fe8d    	bl	0x332b30 <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0x5c> @ imm = #-0x2e6
  332e16: ab07         	add	r3, sp, #0x1c
  332e18: 4618         	mov	r0, r3
  332e1a: f7ff fe5b    	bl	0x332ad4 <std::function<void (gpg::LogLevel, std::string const&)>::~function()> @ imm = #-0x34a
  332e1e: ab05         	add	r3, sp, #0x14
  332e20: 4618         	mov	r0, r3
  332e22: f1c7 fb56    	bl	0x4fa4d2 <gpg::GameServices::Builder::~Builder()> @ imm = #0x1c76ac
  332e26: 4b21         	ldr	r3, [pc, #0x84]         @ 0x332eac <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1c4>
  332e28: 447b         	add	r3, pc
  332e2a: 4618         	mov	r0, r3
  332e2c: f7a3 e8e4    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0x5ce38
  332e30: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x332e9c <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1b4>
  332e32: 58e3         	ldr	r3, [r4, r3]
  332e34: 9a23         	ldr	r2, [sp, #0x8c]
  332e36: 681b         	ldr	r3, [r3]
  332e38: 429a         	cmp	r2, r3
  332e3a: d02b         	beq	0x332e94 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1ac> @ imm = #0x56
  332e3c: e028         	b	0x332e90 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x1a8> @ imm = #0x50
  332e3e: ab1f         	add	r3, sp, #0x7c
  332e40: 4618         	mov	r0, r3
  332e42: f7a8 fd89    	bl	0x2db958 <std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>::~function()> @ imm = #-0x574ee
  332e46: e7ff         	b	0x332e48 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x160> @ imm = #-0x2
  332e48: ab1b         	add	r3, sp, #0x6c
  332e4a: 4618         	mov	r0, r3
  332e4c: f7ff ff30    	bl	0x332cb0 <gpg::MultiplayerInvitation::~MultiplayerInvitation()+0x84> @ imm = #-0x1a0
  332e50: e7ff         	b	0x332e52 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x16a> @ imm = #-0x2
  332e52: ab17         	add	r3, sp, #0x5c
  332e54: 4618         	mov	r0, r3
  332e56: f7a8 fd73    	bl	0x2db940 <std::function<void (gpg::AuthOperation, gpg::AuthStatus)>::~function()> @ imm = #-0x5751a
  332e5a: e7ff         	b	0x332e5c <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x174> @ imm = #-0x2
  332e5c: ab13         	add	r3, sp, #0x4c
  332e5e: 4618         	mov	r0, r3
  332e60: f7ff feae    	bl	0x332bc0 <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0xec> @ imm = #-0x2a4
  332e64: e7ff         	b	0x332e66 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x17e> @ imm = #-0x2
  332e66: ab0f         	add	r3, sp, #0x3c
  332e68: 4618         	mov	r0, r3
  332e6a: f7a8 fd5d    	bl	0x2db928 <std::function<void (gpg::AuthOperation)>::~function()> @ imm = #-0x57546
  332e6e: e7ff         	b	0x332e70 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x188> @ imm = #-0x2
  332e70: ab0b         	add	r3, sp, #0x2c
  332e72: 4618         	mov	r0, r3
  332e74: f7ff fe5c    	bl	0x332b30 <std::function<void (gpg::LogLevel, std::string const&)>::~function()+0x5c> @ imm = #-0x348
  332e78: e7ff         	b	0x332e7a <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x192> @ imm = #-0x2
  332e7a: ab07         	add	r3, sp, #0x1c
  332e7c: 4618         	mov	r0, r3
  332e7e: f7ff fe29    	bl	0x332ad4 <std::function<void (gpg::LogLevel, std::string const&)>::~function()> @ imm = #-0x3ae
  332e82: e7ff         	b	0x332e84 <GPGSStateManager::InitServices(gpg::AndroidPlatformConfiguration const&, std::function<void (gpg::AuthOperation)>, std::function<void (gpg::AuthOperation, gpg::AuthStatus)>, std::function<void (gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)>)+0x19c> @ imm = #-0x2
  332e84: ab05         	add	r3, sp, #0x14
  332e86: 4618         	mov	r0, r3
  332e88: f1c7 fb23    	bl	0x4fa4d2 <gpg::GameServices::Builder::~Builder()> @ imm = #0x1c7646
  332e8c: f055 f10e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45521c
  332e90: f7a3 e86a    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x5cf2c
  332e94: b024         	add	sp, #0x90
  332e96: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x332e97); words below are literal-pool data ---
  332e98: fd12 005f    	ldc2	p0, c0, [r2, #-380]
  332e9c: d72c         	bvc	0x332ef8 <GPGSStateManager::BeginUserInitiatedSignIn()+0x48> @ imm = #0x58
  332e9e: ffff 5d52    	<unknown>
  332ea2: 0049         	lsls	r1, r1, #0x1
  332ea4: da7c         	bge	0x332fa0 <GPGSStateManager::UnlockAchievement(char const*)+0x64> @ imm = #0xf8
  332ea6: ffff 5d5c    	<unknown>
  332eaa: 0049         	lsls	r1, r1, #0x1
  332eac: 5c90         	ldrb	r0, [r2, r2]
  332eae: 0049         	lsls	r1, r1, #0x1

// ==== GPGSStateManager::BeginUserInitiatedSignIn
//      file offset 0x332eb0 (= ELF address; Ghidra 0x342eb0), 96 bytes, Thumb-2
  332eb0: b510         	push	{r4, lr}
  332eb2: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x332f00 <GPGSStateManager::BeginUserInitiatedSignIn()+0x50>
  332eb4: 447c         	add	r4, pc
  332eb6: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x332f04 <GPGSStateManager::BeginUserInitiatedSignIn()+0x54>
  332eb8: 447b         	add	r3, pc
  332eba: 4618         	mov	r0, r3
  332ebc: f7a3 e89c    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0x5cec8
  332ec0: 4b11         	ldr	r3, [pc, #0x44]         @ 0x332f08 <GPGSStateManager::BeginUserInitiatedSignIn()+0x58>
  332ec2: 58e3         	ldr	r3, [r4, r3]
  332ec4: 4618         	mov	r0, r3
  332ec6: 2100         	movs	r1, #0x0
  332ec8: f000 fdb2    	bl	0x333a30 <bool std::operator==<gpg::GameServices, std::default_delete<gpg::GameServices>>(std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>> const&, std::nullptr_t)> @ imm = #0xb64
  332ecc: 4603         	mov	r3, r0
  332ece: 2b00         	cmp	r3, #0x0
  332ed0: d110         	bne	0x332ef4 <GPGSStateManager::BeginUserInitiatedSignIn()+0x44> @ imm = #0x20
  332ed2: f7ff fda3    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x4ba
  332ed6: 4603         	mov	r3, r0
  332ed8: f083 0301    	eor	r3, r3, #0x1
  332edc: b2db         	uxtb	r3, r3
  332ede: 2b00         	cmp	r3, #0x0
  332ee0: d008         	beq	0x332ef4 <GPGSStateManager::BeginUserInitiatedSignIn()+0x44> @ imm = #0x10
  332ee2: 4b09         	ldr	r3, [pc, #0x24]         @ 0x332f08 <GPGSStateManager::BeginUserInitiatedSignIn()+0x58>
  332ee4: 58e3         	ldr	r3, [r4, r3]
  332ee6: 4618         	mov	r0, r3
  332ee8: f000 fb4a    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x694
  332eec: 4603         	mov	r3, r0
  332eee: 4618         	mov	r0, r3
  332ef0: f1cc fe7b    	bl	0x4ffbea <gpg::GameServices::StartAuthorizationUI()> @ imm = #0x1cccf6
  332ef4: 4b05         	ldr	r3, [pc, #0x14]         @ 0x332f0c <GPGSStateManager::BeginUserInitiatedSignIn()+0x5c>
  332ef6: 447b         	add	r3, pc
  332ef8: 4618         	mov	r0, r3
  332efa: f7a3 e87e    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0x5cf04
  332efe: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x332eff); words below are literal-pool data ---
  332f00: fb54 005f    	<unknown>
  332f04: 5c08         	ldrb	r0, [r1, r0]
  332f06: 0049         	lsls	r1, r1, #0x1
  332f08: da7c         	bge	0x333004 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0x4c> @ imm = #0xf8
  332f0a: ffff 5c02    	vdup.8	d21, d2[7]
  332f0e: 0049         	lsls	r1, r1, #0x1

// ==== GPGSStateManager::SignOut
//      file offset 0x332f10 (= ELF address; Ghidra 0x342f10), 44 bytes, Thumb-2
  332f10: b510         	push	{r4, lr}
  332f12: 4c08         	ldr	r4, [pc, #0x20]         @ 0x332f34 <GPGSStateManager::SignOut()+0x24>
  332f14: 447c         	add	r4, pc
  332f16: f7ff fd81    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x4fe
  332f1a: 4603         	mov	r3, r0
  332f1c: 2b00         	cmp	r3, #0x0
  332f1e: d008         	beq	0x332f32 <GPGSStateManager::SignOut()+0x22> @ imm = #0x10
  332f20: 4b05         	ldr	r3, [pc, #0x14]         @ 0x332f38 <GPGSStateManager::SignOut()+0x28>
  332f22: 58e3         	ldr	r3, [r4, r3]
  332f24: 4618         	mov	r0, r3
  332f26: f000 fb2b    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x656
  332f2a: 4603         	mov	r3, r0
  332f2c: 4618         	mov	r0, r3
  332f2e: f1cc fea0    	bl	0x4ffc72 <gpg::GameServices::SignOut()> @ imm = #0x1ccd40
  332f32: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x332f33); words below are literal-pool data ---
  332f34: faf4 005f    	<unknown>
  332f38: da7c         	bge	0x333034 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0x7c> @ imm = #0xf8
  332f3a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSStateManager::UnlockAchievement
//      file offset 0x332f3c (= ELF address; Ghidra 0x342f3c), 124 bytes, Thumb-2
  332f3c: b510         	push	{r4, lr}
  332f3e: b084         	sub	sp, #0x10
  332f40: 9001         	str	r0, [sp, #0x4]
  332f42: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x332fb0 <GPGSStateManager::UnlockAchievement(char const*)+0x74>
  332f44: 447c         	add	r4, pc
  332f46: f7ff fd69    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x52e
  332f4a: 4603         	mov	r3, r0
  332f4c: 2b00         	cmp	r3, #0x0
  332f4e: d02d         	beq	0x332fac <GPGSStateManager::UnlockAchievement(char const*)+0x70> @ imm = #0x5a
  332f50: 4b18         	ldr	r3, [pc, #0x60]         @ 0x332fb4 <GPGSStateManager::UnlockAchievement(char const*)+0x78>
  332f52: 58e3         	ldr	r3, [r4, r3]
  332f54: 4618         	mov	r0, r3
  332f56: f000 fb13    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x626
  332f5a: 4603         	mov	r3, r0
  332f5c: 4618         	mov	r0, r3
  332f5e: f1cc fea9    	bl	0x4ffcb4 <gpg::GameServices::Achievements()> @ imm = #0x1ccd52
  332f62: 4604         	mov	r4, r0
  332f64: ab02         	add	r3, sp, #0x8
  332f66: 4618         	mov	r0, r3
  332f68: f057 f244    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x457488
  332f6c: aa03         	add	r2, sp, #0xc
  332f6e: ab02         	add	r3, sp, #0x8
  332f70: 4610         	mov	r0, r2
  332f72: 9901         	ldr	r1, [sp, #0x4]
  332f74: 461a         	mov	r2, r3
  332f76: f083 f573    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x483ae6
  332f7a: ab03         	add	r3, sp, #0xc
  332f7c: 4620         	mov	r0, r4
  332f7e: 4619         	mov	r1, r3
  332f80: f1c5 f98f    	bl	0x4f82a2 <gpg::AchievementManager::Unlock(std::string const&)> @ imm = #0x1c531e
  332f84: ab03         	add	r3, sp, #0xc
  332f86: 4618         	mov	r0, r3
  332f88: f082 f4c4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x482988
  332f8c: ab02         	add	r3, sp, #0x8
  332f8e: 4618         	mov	r0, r3
  332f90: f057 f234    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x457468
  332f94: e00a         	b	0x332fac <GPGSStateManager::UnlockAchievement(char const*)+0x70> @ imm = #0x14
  332f96: ab03         	add	r3, sp, #0xc
  332f98: 4618         	mov	r0, r3
  332f9a: f082 f4bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x482976
  332f9e: e7ff         	b	0x332fa0 <GPGSStateManager::UnlockAchievement(char const*)+0x64> @ imm = #-0x2
  332fa0: ab02         	add	r3, sp, #0x8
  332fa2: 4618         	mov	r0, r3
  332fa4: f057 f22a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x457454
  332fa8: f055 f080    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x455100
  332fac: b004         	add	sp, #0x10
  332fae: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x332faf); words below are literal-pool data ---
  332fb0: fac4 005f    	<unknown>
  332fb4: da7c         	bge	0x3330b0 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0xf8> @ imm = #0xf8
  332fb6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSStateManager::SetPercentCompleteOnAchievement
//      file offset 0x332fb8 (= ELF address; Ghidra 0x342fb8), 164 bytes, Thumb-2
  332fb8: b510         	push	{r4, lr}
  332fba: b086         	sub	sp, #0x18
  332fbc: 9001         	str	r0, [sp, #0x4]
  332fbe: 9100         	str	r1, [sp]
  332fc0: 4c24         	ldr	r4, [pc, #0x90]         @ 0x333054 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0x9c>
  332fc2: 447c         	add	r4, pc
  332fc4: f7ff fd2a    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x5ac
  332fc8: 4603         	mov	r3, r0
  332fca: 2b00         	cmp	r3, #0x0
  332fcc: d040         	beq	0x333050 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0x98> @ imm = #0x80
  332fce: 4b22         	ldr	r3, [pc, #0x88]         @ 0x333058 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0xa0>
  332fd0: 58e3         	ldr	r3, [r4, r3]
  332fd2: 4618         	mov	r0, r3
  332fd4: f000 fad4    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x5a8
  332fd8: 4603         	mov	r3, r0
  332fda: 4618         	mov	r0, r3
  332fdc: f1cc fe6a    	bl	0x4ffcb4 <gpg::GameServices::Achievements()> @ imm = #0x1cccd4
  332fe0: 4604         	mov	r4, r0
  332fe2: ab02         	add	r3, sp, #0x8
  332fe4: 4618         	mov	r0, r3
  332fe6: f057 f205    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45740a
  332fea: aa05         	add	r2, sp, #0x14
  332fec: ab02         	add	r3, sp, #0x8
  332fee: 4610         	mov	r0, r2
  332ff0: 9901         	ldr	r1, [sp, #0x4]
  332ff2: 461a         	mov	r2, r3
  332ff4: f083 f534    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x483a68
  332ff8: 2300         	movs	r3, #0x0
  332ffa: 9304         	str	r3, [sp, #0x10]
  332ffc: 2364         	movs	r3, #0x64
  332ffe: 9303         	str	r3, [sp, #0xc]
  333000: aa03         	add	r2, sp, #0xc
  333002: 466b         	mov	r3, sp
  333004: 4610         	mov	r0, r2
  333006: 4619         	mov	r1, r3
  333008: f000 fd22    	bl	0x333a50 <int const& std::min<int>(int const&, int const&)> @ imm = #0xa44
  33300c: 4603         	mov	r3, r0
  33300e: aa04         	add	r2, sp, #0x10
  333010: 4610         	mov	r0, r2
  333012: 4619         	mov	r1, r3
  333014: f000 fd2c    	bl	0x333a70 <int const& std::max<int>(int const&, int const&)> @ imm = #0xa58
  333018: 4603         	mov	r3, r0
  33301a: 681b         	ldr	r3, [r3]
  33301c: aa05         	add	r2, sp, #0x14
  33301e: 4620         	mov	r0, r4
  333020: 4611         	mov	r1, r2
  333022: 461a         	mov	r2, r3
  333024: f1c5 f915    	bl	0x4f8252 <gpg::AchievementManager::SetStepsAtLeast(std::string const&, unsigned int)> @ imm = #0x1c522a
  333028: ab05         	add	r3, sp, #0x14
  33302a: 4618         	mov	r0, r3
  33302c: f082 f472    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4828e4
  333030: ab02         	add	r3, sp, #0x8
  333032: 4618         	mov	r0, r3
  333034: f057 f1e2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4573c4
  333038: e00a         	b	0x333050 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0x98> @ imm = #0x14
  33303a: ab05         	add	r3, sp, #0x14
  33303c: 4618         	mov	r0, r3
  33303e: f082 f469    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4828d2
  333042: e7ff         	b	0x333044 <GPGSStateManager::SetPercentCompleteOnAchievement(char const*, int)+0x8c> @ imm = #-0x2
  333044: ab02         	add	r3, sp, #0x8
  333046: 4618         	mov	r0, r3
  333048: f057 f1d8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4573b0
  33304c: f055 f02e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45505c
  333050: b006         	add	sp, #0x18
  333052: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x333053); words below are literal-pool data ---
  333054: fa46 005f    	<unknown>
  333058: da7c         	bge	0x333154 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x2c> @ imm = #0xf8
  33305a: ffff b500    	<unknown>

// ==== GPGSStateManager::FetchAllAchievements
//      file offset 0x333128 (= ELF address; Ghidra 0x343128), 168 bytes, Thumb-2
  333128: b530         	push	{r4, r5, lr}
  33312a: b08d         	sub	sp, #0x34
  33312c: 9001         	str	r0, [sp, #0x4]
  33312e: 4c24         	ldr	r4, [pc, #0x90]         @ 0x3331c0 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x98>
  333130: 447c         	add	r4, pc
  333132: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3331c4 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x9c>
  333134: 58e3         	ldr	r3, [r4, r3]
  333136: 681b         	ldr	r3, [r3]
  333138: 930b         	str	r3, [sp, #0x2c]
  33313a: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3331c8 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0xa0>
  33313c: 447b         	add	r3, pc
  33313e: 4618         	mov	r0, r3
  333140: f7a2 ef5a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0x5d14c
  333144: f7ff fc6a    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x72c
  333148: 4603         	mov	r3, r0
  33314a: 2b00         	cmp	r3, #0x0
  33314c: d022         	beq	0x333194 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x6c> @ imm = #0x44
  33314e: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3331cc <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0xa4>
  333150: 58e3         	ldr	r3, [r4, r3]
  333152: 4618         	mov	r0, r3
  333154: f000 fa14    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x428
  333158: 4603         	mov	r3, r0
  33315a: 4618         	mov	r0, r3
  33315c: f1cc fdaa    	bl	0x4ffcb4 <gpg::GameServices::Achievements()> @ imm = #0x1ccb54
  333160: 4605         	mov	r5, r0
  333162: ab03         	add	r3, sp, #0xc
  333164: 4618         	mov	r0, r3
  333166: 9901         	ldr	r1, [sp, #0x4]
  333168: f000 fd18    	bl	0x333b9c <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::function(std::function<void (gpg::AchievementManager::FetchAllResponse const&)> const&)> @ imm = #0xa30
  33316c: aa07         	add	r2, sp, #0x1c
  33316e: ab03         	add	r3, sp, #0xc
  333170: 4610         	mov	r0, r2
  333172: 4619         	mov	r1, r3
  333174: f000 fd62    	bl	0x333c3c <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::function(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>&&)+0x44> @ imm = #0xac4
  333178: ab07         	add	r3, sp, #0x1c
  33317a: 4628         	mov	r0, r5
  33317c: 2102         	movs	r1, #0x2
  33317e: 461a         	mov	r2, r3
  333180: f1c5 feee    	bl	0x4f8f60 <gpg::AchievementManager::FetchAll(gpg::DataSource, std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)> @ imm = #0x1c5ddc
  333184: ab07         	add	r3, sp, #0x1c
  333186: 4618         	mov	r0, r3
  333188: f7ff ffa6    	bl	0x3330d8 <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::~function()> @ imm = #-0xb4
  33318c: ab03         	add	r3, sp, #0xc
  33318e: 4618         	mov	r0, r3
  333190: f7ff ffae    	bl	0x3330f0 <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::~function()+0x18> @ imm = #-0xa4
  333194: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x3331c4 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x9c>
  333196: 58e3         	ldr	r3, [r4, r3]
  333198: 9a0b         	ldr	r2, [sp, #0x2c]
  33319a: 681b         	ldr	r3, [r3]
  33319c: 429a         	cmp	r2, r3
  33319e: d00d         	beq	0x3331bc <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x94> @ imm = #0x1a
  3331a0: e00a         	b	0x3331b8 <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x90> @ imm = #0x14
  3331a2: ab07         	add	r3, sp, #0x1c
  3331a4: 4618         	mov	r0, r3
  3331a6: f7ff ff97    	bl	0x3330d8 <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::~function()> @ imm = #-0xd2
  3331aa: e7ff         	b	0x3331ac <GPGSStateManager::FetchAllAchievements(std::function<void (gpg::AchievementManager::FetchAllResponse const&)>)+0x84> @ imm = #-0x2
  3331ac: ab03         	add	r3, sp, #0xc
  3331ae: 4618         	mov	r0, r3
  3331b0: f7ff ff9e    	bl	0x3330f0 <std::function<void (gpg::AchievementManager::FetchAllResponse const&)>::~function()+0x18> @ imm = #-0xc4
  3331b4: f054 f77a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x454ef4
  3331b8: f7a2 eed6    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x5d254
  3331bc: b00d         	add	sp, #0x34
  3331be: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3331bf); words below are literal-pool data ---
  3331c0: f8d8 005f    	ldr.w	r0, [r8, #0x5f]
  3331c4: d72c         	bvc	0x333220 <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)+0x50> @ imm = #0x58
  3331c6: ffff 59f4    	<unknown>
  3331ca: 0049         	lsls	r1, r1, #0x1
  3331cc: da7c         	bge	0x3332c8 <GPGSStateManager::ShowAchievements()+0x50> @ imm = #0xf8
  3331ce: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSStateManager::SubmitHighScore
//      file offset 0x3331d0 (= ELF address; Ghidra 0x3431d0), 132 bytes, Thumb-2
  3331d0: b510         	push	{r4, lr}
  3331d2: b086         	sub	sp, #0x18
  3331d4: 9003         	str	r0, [sp, #0xc]
  3331d6: e9cd 2300    	strd	r2, r3, [sp]
  3331da: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x33324c <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)+0x7c>
  3331dc: 447c         	add	r4, pc
  3331de: f7ff fc1d    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x7c6
  3331e2: 4603         	mov	r3, r0
  3331e4: 2b00         	cmp	r3, #0x0
  3331e6: d02f         	beq	0x333248 <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)+0x78> @ imm = #0x5e
  3331e8: 4b19         	ldr	r3, [pc, #0x64]         @ 0x333250 <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)+0x80>
  3331ea: 58e3         	ldr	r3, [r4, r3]
  3331ec: 4618         	mov	r0, r3
  3331ee: f000 f9c7    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x38e
  3331f2: 4603         	mov	r3, r0
  3331f4: 4618         	mov	r0, r3
  3331f6: f1cc fd69    	bl	0x4ffccc <gpg::GameServices::Leaderboards()> @ imm = #0x1ccad2
  3331fa: 4604         	mov	r4, r0
  3331fc: ab04         	add	r3, sp, #0x10
  3331fe: 4618         	mov	r0, r3
  333200: f057 f0f8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4571f0
  333204: aa05         	add	r2, sp, #0x14
  333206: ab04         	add	r3, sp, #0x10
  333208: 4610         	mov	r0, r2
  33320a: 9903         	ldr	r1, [sp, #0xc]
  33320c: 461a         	mov	r2, r3
  33320e: f083 f427    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48384e
  333212: ab05         	add	r3, sp, #0x14
  333214: 4620         	mov	r0, r4
  333216: 4619         	mov	r1, r3
  333218: e9dd 2300    	ldrd	r2, r3, [sp]
  33321c: f1cf fed2    	bl	0x502fc4 <gpg::LeaderboardManager::SubmitScore(std::string const&, unsigned long long)> @ imm = #0x1cfda4
  333220: ab05         	add	r3, sp, #0x14
  333222: 4618         	mov	r0, r3
  333224: f082 f376    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4826ec
  333228: ab04         	add	r3, sp, #0x10
  33322a: 4618         	mov	r0, r3
  33322c: f057 f0e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4571cc
  333230: e00a         	b	0x333248 <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)+0x78> @ imm = #0x14
  333232: ab05         	add	r3, sp, #0x14
  333234: 4618         	mov	r0, r3
  333236: f082 f36d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4826da
  33323a: e7ff         	b	0x33323c <GPGSStateManager::SubmitHighScore(char const*, unsigned long long)+0x6c> @ imm = #-0x2
  33323c: ab04         	add	r3, sp, #0x10
  33323e: 4618         	mov	r0, r3
  333240: f057 f0dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4571b8
  333244: f054 f732    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x454e64
  333248: b006         	add	sp, #0x18
  33324a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33324b); words below are literal-pool data ---
  33324c: f82c 005f    	<unknown>
  333250: da7c         	bge	0x33334c <GPGSStateManager::ShowAllLeaderboards()+0x50> @ imm = #0xf8
  333252: ffff b082    	<unknown>

// ==== GPGSStateManager::ShowAchievements
//      file offset 0x333278 (= ELF address; Ghidra 0x343278), 120 bytes, Thumb-2
  333278: b570         	push	{r4, r5, r6, lr}
  33327a: b086         	sub	sp, #0x18
  33327c: 4c19         	ldr	r4, [pc, #0x64]         @ 0x3332e4 <GPGSStateManager::ShowAchievements()+0x6c>
  33327e: 447c         	add	r4, pc
  333280: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3332e8 <GPGSStateManager::ShowAchievements()+0x70>
  333282: 58e3         	ldr	r3, [r4, r3]
  333284: 681b         	ldr	r3, [r3]
  333286: 9305         	str	r3, [sp, #0x14]
  333288: f7ff fbc8    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x870
  33328c: 4603         	mov	r3, r0
  33328e: 2b00         	cmp	r3, #0x0
  333290: d017         	beq	0x3332c2 <GPGSStateManager::ShowAchievements()+0x4a> @ imm = #0x2e
  333292: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3332ec <GPGSStateManager::ShowAchievements()+0x74>
  333294: 58e3         	ldr	r3, [r4, r3]
  333296: 4618         	mov	r0, r3
  333298: f000 f972    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x2e4
  33329c: 4603         	mov	r3, r0
  33329e: 4618         	mov	r0, r3
  3332a0: f1cc fd08    	bl	0x4ffcb4 <gpg::GameServices::Achievements()> @ imm = #0x1cca10
  3332a4: 4605         	mov	r5, r0
  3332a6: ab01         	add	r3, sp, #0x4
  3332a8: 4618         	mov	r0, r3
  3332aa: 4631         	mov	r1, r6
  3332ac: f000 fd10    	bl	0x333cd0 <std::_Maybe_unary_or_binary_function<void, gpg::UIStatus const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0xa20
  3332b0: ab01         	add	r3, sp, #0x4
  3332b2: 4628         	mov	r0, r5
  3332b4: 4619         	mov	r1, r3
  3332b6: f1c5 fc17    	bl	0x4f8ae8 <gpg::AchievementManager::ShowAllUI(std::function<void (gpg::UIStatus const&)>)> @ imm = #0x1c582e
  3332ba: ab01         	add	r3, sp, #0x4
  3332bc: 4618         	mov	r0, r3
  3332be: f7ff ffcf    	bl	0x333260 <std::function<void (gpg::UIStatus const&)>::~function()> @ imm = #-0x62
  3332c2: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3332e8 <GPGSStateManager::ShowAchievements()+0x70>
  3332c4: 58e3         	ldr	r3, [r4, r3]
  3332c6: 9a05         	ldr	r2, [sp, #0x14]
  3332c8: 681b         	ldr	r3, [r3]
  3332ca: 429a         	cmp	r2, r3
  3332cc: d008         	beq	0x3332e0 <GPGSStateManager::ShowAchievements()+0x68> @ imm = #0x10
  3332ce: e005         	b	0x3332dc <GPGSStateManager::ShowAchievements()+0x64> @ imm = #0xa
  3332d0: ab01         	add	r3, sp, #0x4
  3332d2: 4618         	mov	r0, r3
  3332d4: f7ff ffc4    	bl	0x333260 <std::function<void (gpg::UIStatus const&)>::~function()> @ imm = #-0x78
  3332d8: f054 f6e8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x454dd0
  3332dc: f7a2 ee44    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x5d378
  3332e0: b006         	add	sp, #0x18
  3332e2: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3332e3); words below are literal-pool data ---
  3332e4: f78a 005f    	<unknown>
  3332e8: d72c         	bvc	0x333344 <GPGSStateManager::ShowAllLeaderboards()+0x48> @ imm = #0x58
  3332ea: ffff da7c    	<unknown>
  3332ee: ffff b082    	<unknown>

// ==== GPGSStateManager::ShowAllLeaderboards
//      file offset 0x3332fc (= ELF address; Ghidra 0x3432fc), 120 bytes, Thumb-2
  3332fc: b570         	push	{r4, r5, r6, lr}
  3332fe: b086         	sub	sp, #0x18
  333300: 4c19         	ldr	r4, [pc, #0x64]         @ 0x333368 <GPGSStateManager::ShowAllLeaderboards()+0x6c>
  333302: 447c         	add	r4, pc
  333304: 4b19         	ldr	r3, [pc, #0x64]         @ 0x33336c <GPGSStateManager::ShowAllLeaderboards()+0x70>
  333306: 58e3         	ldr	r3, [r4, r3]
  333308: 681b         	ldr	r3, [r3]
  33330a: 9305         	str	r3, [sp, #0x14]
  33330c: f7ff fb86    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x8f4
  333310: 4603         	mov	r3, r0
  333312: 2b00         	cmp	r3, #0x0
  333314: d017         	beq	0x333346 <GPGSStateManager::ShowAllLeaderboards()+0x4a> @ imm = #0x2e
  333316: 4b16         	ldr	r3, [pc, #0x58]         @ 0x333370 <GPGSStateManager::ShowAllLeaderboards()+0x74>
  333318: 58e3         	ldr	r3, [r4, r3]
  33331a: 4618         	mov	r0, r3
  33331c: f000 f930    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x260
  333320: 4603         	mov	r3, r0
  333322: 4618         	mov	r0, r3
  333324: f1cc fcd2    	bl	0x4ffccc <gpg::GameServices::Leaderboards()> @ imm = #0x1cc9a4
  333328: 4605         	mov	r5, r0
  33332a: ab01         	add	r3, sp, #0x4
  33332c: 4618         	mov	r0, r3
  33332e: 4631         	mov	r1, r6
  333330: f000 fd08    	bl	0x333d44 <std::_Maybe_unary_or_binary_function<void, gpg::UIStatus const&>::_Maybe_unary_or_binary_function()+0x98> @ imm = #0xa10
  333334: ab01         	add	r3, sp, #0x4
  333336: 4628         	mov	r0, r5
  333338: 4619         	mov	r1, r3
  33333a: f1d0 ff37    	bl	0x5041ac <gpg::LeaderboardManager::ShowAllUI(std::function<void (gpg::UIStatus const&)>)> @ imm = #0x1d0e6e
  33333e: ab01         	add	r3, sp, #0x4
  333340: 4618         	mov	r0, r3
  333342: f7ff ff8d    	bl	0x333260 <std::function<void (gpg::UIStatus const&)>::~function()> @ imm = #-0xe6
  333346: 4b09         	ldr	r3, [pc, #0x24]         @ 0x33336c <GPGSStateManager::ShowAllLeaderboards()+0x70>
  333348: 58e3         	ldr	r3, [r4, r3]
  33334a: 9a05         	ldr	r2, [sp, #0x14]
  33334c: 681b         	ldr	r3, [r3]
  33334e: 429a         	cmp	r2, r3
  333350: d008         	beq	0x333364 <GPGSStateManager::ShowAllLeaderboards()+0x68> @ imm = #0x10
  333352: e005         	b	0x333360 <GPGSStateManager::ShowAllLeaderboards()+0x64> @ imm = #0xa
  333354: ab01         	add	r3, sp, #0x4
  333356: 4618         	mov	r0, r3
  333358: f7ff ff82    	bl	0x333260 <std::function<void (gpg::UIStatus const&)>::~function()> @ imm = #-0xfc
  33335c: f054 f6a6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x454d4c
  333360: f7a2 ee02    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x5d3fc
  333364: b006         	add	sp, #0x18
  333366: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x333367); words below are literal-pool data ---
  333368: f706 005f    	<unknown>
  33336c: d72c         	bvc	0x3333c8 <GPGSStateManager::ShowLeaderboard(char const*)+0x54> @ imm = #0x58
  33336e: ffff da7c    	<unknown>
  333372: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSStateManager::ShowLeaderboard
//      file offset 0x333374 (= ELF address; Ghidra 0x343374), 124 bytes, Thumb-2
  333374: b510         	push	{r4, lr}
  333376: b084         	sub	sp, #0x10
  333378: 9001         	str	r0, [sp, #0x4]
  33337a: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x3333e8 <GPGSStateManager::ShowLeaderboard(char const*)+0x74>
  33337c: 447c         	add	r4, pc
  33337e: f7ff fb4d    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x966
  333382: 4603         	mov	r3, r0
  333384: 2b00         	cmp	r3, #0x0
  333386: d02d         	beq	0x3333e4 <GPGSStateManager::ShowLeaderboard(char const*)+0x70> @ imm = #0x5a
  333388: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3333ec <GPGSStateManager::ShowLeaderboard(char const*)+0x78>
  33338a: 58e3         	ldr	r3, [r4, r3]
  33338c: 4618         	mov	r0, r3
  33338e: f000 f8f7    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x1ee
  333392: 4603         	mov	r3, r0
  333394: 4618         	mov	r0, r3
  333396: f1cc fc99    	bl	0x4ffccc <gpg::GameServices::Leaderboards()> @ imm = #0x1cc932
  33339a: 4604         	mov	r4, r0
  33339c: ab02         	add	r3, sp, #0x8
  33339e: 4618         	mov	r0, r3
  3333a0: f057 f028    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x457050
  3333a4: aa03         	add	r2, sp, #0xc
  3333a6: ab02         	add	r3, sp, #0x8
  3333a8: 4610         	mov	r0, r2
  3333aa: 9901         	ldr	r1, [sp, #0x4]
  3333ac: 461a         	mov	r2, r3
  3333ae: f083 f357    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4836ae
  3333b2: ab03         	add	r3, sp, #0xc
  3333b4: 4620         	mov	r0, r4
  3333b6: 4619         	mov	r1, r3
  3333b8: f1d0 ffdb    	bl	0x504372 <gpg::LeaderboardManager::ShowUI(std::string const&)> @ imm = #0x1d0fb6
  3333bc: ab03         	add	r3, sp, #0xc
  3333be: 4618         	mov	r0, r3
  3333c0: f082 f2a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x482550
  3333c4: ab02         	add	r3, sp, #0x8
  3333c6: 4618         	mov	r0, r3
  3333c8: f057 f018    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x457030
  3333cc: e00a         	b	0x3333e4 <GPGSStateManager::ShowLeaderboard(char const*)+0x70> @ imm = #0x14
  3333ce: ab03         	add	r3, sp, #0xc
  3333d0: 4618         	mov	r0, r3
  3333d2: f082 f29f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48253e
  3333d6: e7ff         	b	0x3333d8 <GPGSStateManager::ShowLeaderboard(char const*)+0x64> @ imm = #-0x2
  3333d8: ab02         	add	r3, sp, #0x8
  3333da: 4618         	mov	r0, r3
  3333dc: f057 f00e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45701c
  3333e0: f054 f664    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x454cc8
  3333e4: b004         	add	sp, #0x10
  3333e6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3333e7); words below are literal-pool data ---
  3333e8: f68c 005f    	<unknown>
  3333ec: da7c         	bge	0x3334e8 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::~unique_ptr()+0x1c> @ imm = #0xf8
  3333ee: ffff b500    	<unknown>

// ==== GPGSStateManager::FetchLeaderboardScore
//      file offset 0x333408 (= ELF address; Ghidra 0x343408), 136 bytes, Thumb-2
  333408: b530         	push	{r4, r5, lr}
  33340a: b08b         	sub	sp, #0x2c
  33340c: 9003         	str	r0, [sp, #0xc]
  33340e: 9102         	str	r1, [sp, #0x8]
  333410: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x333484 <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x7c>
  333412: 447c         	add	r4, pc
  333414: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x333488 <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x80>
  333416: 58e3         	ldr	r3, [r4, r3]
  333418: 681b         	ldr	r3, [r3]
  33341a: 9309         	str	r3, [sp, #0x24]
  33341c: f7ff fafe    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0xa04
  333420: 4603         	mov	r3, r0
  333422: 2b00         	cmp	r3, #0x0
  333424: d01c         	beq	0x333460 <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x58> @ imm = #0x38
  333426: 4b19         	ldr	r3, [pc, #0x64]         @ 0x33348c <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x84>
  333428: 58e3         	ldr	r3, [r4, r3]
  33342a: 4618         	mov	r0, r3
  33342c: f000 f8a8    	bl	0x333580 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::operator->() const> @ imm = #0x150
  333430: 4603         	mov	r3, r0
  333432: 4618         	mov	r0, r3
  333434: f1cc fc4a    	bl	0x4ffccc <gpg::GameServices::Leaderboards()> @ imm = #0x1cc894
  333438: 4605         	mov	r5, r0
  33343a: ab05         	add	r3, sp, #0x14
  33343c: 4618         	mov	r0, r3
  33343e: 9902         	ldr	r1, [sp, #0x8]
  333440: f000 fcc6    	bl	0x333dd0 <std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>::function(std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)> const&)> @ imm = #0x98c
  333444: 2301         	movs	r3, #0x1
  333446: 9300         	str	r3, [sp]
  333448: ab05         	add	r3, sp, #0x14
  33344a: 9301         	str	r3, [sp, #0x4]
  33344c: 4628         	mov	r0, r5
  33344e: 2102         	movs	r1, #0x2
  333450: 9a03         	ldr	r2, [sp, #0xc]
  333452: 2303         	movs	r3, #0x3
  333454: f1d0 fd82    	bl	0x503f5c <gpg::LeaderboardManager::FetchScoreSummary(gpg::DataSource, std::string const&, gpg::LeaderboardTimeSpan, gpg::LeaderboardCollection, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)> @ imm = #0x1d0b04
  333458: ab05         	add	r3, sp, #0x14
  33345a: 4618         	mov	r0, r3
  33345c: f7ff ffc8    	bl	0x3333f0 <std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>::~function()> @ imm = #-0x70
  333460: 4b09         	ldr	r3, [pc, #0x24]         @ 0x333488 <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x80>
  333462: 58e3         	ldr	r3, [r4, r3]
  333464: 9a09         	ldr	r2, [sp, #0x24]
  333466: 681b         	ldr	r3, [r3]
  333468: 429a         	cmp	r2, r3
  33346a: d008         	beq	0x33347e <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x76> @ imm = #0x10
  33346c: e005         	b	0x33347a <GPGSStateManager::FetchLeaderboardScore(std::string, std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>)+0x72> @ imm = #0xa
  33346e: ab05         	add	r3, sp, #0x14
  333470: 4618         	mov	r0, r3
  333472: f7ff ffbd    	bl	0x3333f0 <std::function<void (gpg::LeaderboardManager::FetchScoreSummaryResponse const&)>::~function()> @ imm = #-0x86
  333476: f054 f619    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x454c32
  33347a: f7a2 ed76    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x5d514
  33347e: b00b         	add	sp, #0x2c
  333480: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x333481); words below are literal-pool data ---
  333482: bf00         	nop
  333484: f5f6 005f    	<unknown>
  333488: d72c         	bvc	0x3334e4 <std::unique_ptr<gpg::GameServices, std::default_delete<gpg::GameServices>>::~unique_ptr()+0x18> @ imm = #0x58
  33348a: ffff da7c    	<unknown>
  33348e: ffff b082    	<unknown>
