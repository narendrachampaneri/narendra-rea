// PeerNetworkBridgeGP: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 31 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PeerNetworkBridgeGP.cpp

// ==== PeerNetworkBridgeGP::PeerNetworkBridgeGP
//      file offset 0x4269b8 (= ELF address; Ghidra 0x4369b8), 132 bytes, Thumb-2
  4269b8: b510         	push	{r4, lr}
  4269ba: b086         	sub	sp, #0x18
  4269bc: 9003         	str	r0, [sp, #0xc]
  4269be: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x426a2c <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x74>
  4269c0: 447c         	add	r4, pc
  4269c2: 9b03         	ldr	r3, [sp, #0xc]
  4269c4: 4618         	mov	r0, r3
  4269c6: f7ff ffe5    	bl	0x426994 <PeerNetworkInterface::PeerNetworkInterface()> @ imm = #-0x36
  4269ca: 9b03         	ldr	r3, [sp, #0xc]
  4269cc: 3304         	adds	r3, #0x4
  4269ce: 4618         	mov	r0, r3
  4269d0: f171 f9cc    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x171398
  4269d4: 9b03         	ldr	r3, [sp, #0xc]
  4269d6: 4a16         	ldr	r2, [pc, #0x58]         @ 0x426a30 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x78>
  4269d8: 58a2         	ldr	r2, [r4, r2]
  4269da: 3208         	adds	r2, #0x8
  4269dc: 601a         	str	r2, [r3]
  4269de: 9b03         	ldr	r3, [sp, #0xc]
  4269e0: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x426a30 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x78>
  4269e2: 58a2         	ldr	r2, [r4, r2]
  4269e4: 3278         	adds	r2, #0x78
  4269e6: 605a         	str	r2, [r3, #0x4]
  4269e8: f1b9 fe62    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1b9cc4
  4269ec: 4602         	mov	r2, r0
  4269ee: 9b03         	ldr	r3, [sp, #0xc]
  4269f0: 3304         	adds	r3, #0x4
  4269f2: 4910         	ldr	r1, [pc, #0x40]         @ 0x426a34 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x7c>
  4269f4: 5861         	ldr	r1, [r4, r1]
  4269f6: 9104         	str	r1, [sp, #0x10]
  4269f8: 2100         	movs	r1, #0x0
  4269fa: 9105         	str	r1, [sp, #0x14]
  4269fc: 490e         	ldr	r1, [pc, #0x38]         @ 0x426a38 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x80>
  4269fe: 4479         	add	r1, pc
  426a00: 9100         	str	r1, [sp]
  426a02: 2100         	movs	r1, #0x0
  426a04: 9101         	str	r1, [sp, #0x4]
  426a06: 4610         	mov	r0, r2
  426a08: 4619         	mov	r1, r3
  426a0a: ab04         	add	r3, sp, #0x10
  426a0c: cb0c         	ldm	r3, {r2, r3}
  426a0e: f1b9 feeb    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1b9dd6
  426a12: 9b03         	ldr	r3, [sp, #0xc]
  426a14: e006         	b	0x426a24 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x6c> @ imm = #0xc
  426a16: 9b03         	ldr	r3, [sp, #0xc]
  426a18: 3304         	adds	r3, #0x4
  426a1a: 4618         	mov	r0, r3
  426a1c: f171 f9d8    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1713b0
  426a20: f361 fb44    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x361688
  426a24: 4618         	mov	r0, r3
  426a26: b006         	add	sp, #0x18
  426a28: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x426a29); words below are literal-pool data ---
  426a2a: bf00         	nop
  426a2c: c048         	stm	r0!, {r3, r6}
  426a2e: 0050         	lsls	r0, r2, #0x1
  426a30: e020         	b	0x426a74 <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()+0x38> @ imm = #0x40
  426a32: ffff dc9c    	<unknown>
  426a36: ffff 60e2    	<unknown>
  426a3a: 003b         	movs	r3, r7

// ==== PeerNetworkBridgeGP::~PeerNetworkBridgeGP
//      file offset 0x426a3c (= ELF address; Ghidra 0x436a3c), 100 bytes, Thumb-2
  426a3c: b500         	push	{lr}
  426a3e: b083         	sub	sp, #0xc
  426a40: 9001         	str	r0, [sp, #0x4]
  426a42: 4b14         	ldr	r3, [pc, #0x50]         @ 0x426a94 <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()+0x58>
  426a44: 447b         	add	r3, pc
  426a46: 9a01         	ldr	r2, [sp, #0x4]
  426a48: 4913         	ldr	r1, [pc, #0x4c]         @ 0x426a98 <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()+0x5c>
  426a4a: 5859         	ldr	r1, [r3, r1]
  426a4c: 3108         	adds	r1, #0x8
  426a4e: 6011         	str	r1, [r2]
  426a50: 9a01         	ldr	r2, [sp, #0x4]
  426a52: 4911         	ldr	r1, [pc, #0x44]         @ 0x426a98 <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()+0x5c>
  426a54: 585b         	ldr	r3, [r3, r1]
  426a56: 3378         	adds	r3, #0x78
  426a58: 6053         	str	r3, [r2, #0x4]
  426a5a: f1b9 fe29    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1b9c52
  426a5e: 4602         	mov	r2, r0
  426a60: 9b01         	ldr	r3, [sp, #0x4]
  426a62: 3304         	adds	r3, #0x4
  426a64: 4610         	mov	r0, r2
  426a66: 4619         	mov	r1, r3
  426a68: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x426a9c <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()+0x60>
  426a6a: 447b         	add	r3, pc
  426a6c: 461a         	mov	r2, r3
  426a6e: f1b9 fef1    	bl	0x5e0854 <cocos2d::CCNotificationCenter::removeObserver(cocos2d::CCObject*, char const*)> @ imm = #0x1b9de2
  426a72: 9b01         	ldr	r3, [sp, #0x4]
  426a74: 3304         	adds	r3, #0x4
  426a76: 4618         	mov	r0, r3
  426a78: f171 f9aa    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x171354
  426a7c: 2300         	movs	r3, #0x0
  426a7e: 2b00         	cmp	r3, #0x0
  426a80: d002         	beq	0x426a88 <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()+0x4c> @ imm = #0x4
  426a82: 9801         	ldr	r0, [sp, #0x4]
  426a84: f361 fb0e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36161c
  426a88: 9b01         	ldr	r3, [sp, #0x4]
  426a8a: 4618         	mov	r0, r3
  426a8c: b003         	add	sp, #0xc
  426a8e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x426a91); words below are literal-pool data ---
  426a92: bf00         	nop
  426a94: bfc4         	itt	gt
  426a96: 0050         	lslgt	r0, r2, #0x1
  426a98: e020         	bgt	0x426adc <PeerNetworkBridgeGP::isPlayerPlatformAuthenticated()+0x10> @ imm = #0x40
  426a9a: ffff 6076    	vshr.u32	q11, q11, #0x1
  426a9e: 003b         	movs	r3, r7

// ==== PeerNetworkBridgeGP::~PeerNetworkBridgeGP
//      file offset 0x426aa0 (= ELF address; Ghidra 0x436aa0), 8 bytes, Thumb-2
  426aa0: f1a0 0004    	sub.w	r0, r0, #0x4
  426aa4: f7ff bfca    	b.w	0x426a3c <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()> @ imm = #-0x6c

// ==== PeerNetworkBridgeGP::~PeerNetworkBridgeGP
//      file offset 0x426aa8 (= ELF address; Ghidra 0x436aa8), 28 bytes, Thumb-2
  426aa8: b500         	push	{lr}
  426aaa: b083         	sub	sp, #0xc
  426aac: 9001         	str	r0, [sp, #0x4]
  426aae: 9801         	ldr	r0, [sp, #0x4]
  426ab0: f7ff ffc4    	bl	0x426a3c <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()> @ imm = #-0x78
  426ab4: 9801         	ldr	r0, [sp, #0x4]
  426ab6: f361 faf5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3615ea
  426aba: 9b01         	ldr	r3, [sp, #0x4]
  426abc: 4618         	mov	r0, r3
  426abe: b003         	add	sp, #0xc
  426ac0: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::~PeerNetworkBridgeGP
//      file offset 0x426ac4 (= ELF address; Ghidra 0x436ac4), 8 bytes, Thumb-2
  426ac4: f1a0 0004    	sub.w	r0, r0, #0x4
  426ac8: f7ff bfee    	b.w	0x426aa8 <PeerNetworkBridgeGP::~PeerNetworkBridgeGP()> @ imm = #-0x24

// ==== PeerNetworkBridgeGP::isPlayerPlatformAuthenticated
//      file offset 0x426acc (= ELF address; Ghidra 0x436acc), 20 bytes, Thumb-2
  426acc: b500         	push	{lr}
  426ace: b083         	sub	sp, #0xc
  426ad0: 9001         	str	r0, [sp, #0x4]
  426ad2: f70b ffa3    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0xf40ba
  426ad6: 4603         	mov	r3, r0
  426ad8: 4618         	mov	r0, r3
  426ada: b003         	add	sp, #0xc
  426adc: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::authenticateLocalPlayer
//      file offset 0x426ae0 (= ELF address; Ghidra 0x436ae0), 16 bytes, Thumb-2
  426ae0: b500         	push	{lr}
  426ae2: b083         	sub	sp, #0xc
  426ae4: 9001         	str	r0, [sp, #0x4]
  426ae6: f70c f9e3    	bl	0x332eb0 <GPGSStateManager::BeginUserInitiatedSignIn()> @ imm = #-0xf3c3a
  426aea: b003         	add	sp, #0xc
  426aec: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::unauthenticateLocalPlayer
//      file offset 0x426af0 (= ELF address; Ghidra 0x436af0), 16 bytes, Thumb-2
  426af0: b500         	push	{lr}
  426af2: b083         	sub	sp, #0xc
  426af4: 9001         	str	r0, [sp, #0x4]
  426af6: f70c fa0b    	bl	0x332f10 <GPGSStateManager::SignOut()> @ imm = #-0xf3bea
  426afa: b003         	add	sp, #0xc
  426afc: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::isMatchActive
//      file offset 0x426b00 (= ELF address; Ghidra 0x436b00), 28 bytes, Thumb-2
  426b00: b500         	push	{lr}
  426b02: b083         	sub	sp, #0xc
  426b04: 9001         	str	r0, [sp, #0x4]
  426b06: f703 fd87    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc4f2
  426b0a: 4603         	mov	r3, r0
  426b0c: 4618         	mov	r0, r3
  426b0e: f703 fdd1    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xfc45e
  426b12: 4603         	mov	r3, r0
  426b14: 4618         	mov	r0, r3
  426b16: b003         	add	sp, #0xc
  426b18: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::getHostID
//      file offset 0x426b1c (= ELF address; Ghidra 0x436b1c), 104 bytes, Thumb-2
  426b1c: b500         	push	{lr}
  426b1e: b085         	sub	sp, #0x14
  426b20: 9001         	str	r0, [sp, #0x4]
  426b22: 9100         	str	r1, [sp]
  426b24: f703 fd78    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc510
  426b28: 4603         	mov	r3, r0
  426b2a: 4618         	mov	r0, r3
  426b2c: f703 fdc2    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xfc47c
  426b30: 4603         	mov	r3, r0
  426b32: 2b00         	cmp	r3, #0x0
  426b34: d006         	beq	0x426b44 <PeerNetworkBridgeGP::getHostID()+0x28> @ imm = #0xc
  426b36: 9801         	ldr	r0, [sp, #0x4]
  426b38: 4b10         	ldr	r3, [pc, #0x40]         @ 0x426b7c <PeerNetworkBridgeGP::getHostID()+0x60>
  426b3a: 447b         	add	r3, pc
  426b3c: 4619         	mov	r1, r3
  426b3e: f38f fcd3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f9a6
  426b42: e016         	b	0x426b72 <PeerNetworkBridgeGP::getHostID()+0x56> @ imm = #0x2c
  426b44: ab03         	add	r3, sp, #0xc
  426b46: 4618         	mov	r0, r3
  426b48: f363 fc54    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3638a8
  426b4c: ab03         	add	r3, sp, #0xc
  426b4e: 9801         	ldr	r0, [sp, #0x4]
  426b50: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x426b80 <PeerNetworkBridgeGP::getHostID()+0x64>
  426b52: 447a         	add	r2, pc
  426b54: 4611         	mov	r1, r2
  426b56: 461a         	mov	r2, r3
  426b58: f38f ff82    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38ff04
  426b5c: ab03         	add	r3, sp, #0xc
  426b5e: 4618         	mov	r0, r3
  426b60: f363 fc4c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x363898
  426b64: e005         	b	0x426b72 <PeerNetworkBridgeGP::getHostID()+0x56> @ imm = #0xa
  426b66: ab03         	add	r3, sp, #0xc
  426b68: 4618         	mov	r0, r3
  426b6a: f363 fc47    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36388e
  426b6e: f361 fa9d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36153a
  426b72: 9801         	ldr	r0, [sp, #0x4]
  426b74: b005         	add	sp, #0x14
  426b76: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x426b79); words below are literal-pool data ---
  426b7a: bf00         	nop
  426b7c: c5c2         	stm	r5!, {r1, r6, r7}
  426b7e: 0051         	lsls	r1, r2, #0x1
  426b80: 5fa6         	ldrsh	r6, [r4, r6]
  426b82: 003b         	movs	r3, r7

// ==== PeerNetworkBridgeGP::isOnline
//      file offset 0x426b84 (= ELF address; Ghidra 0x436b84), 36 bytes, Thumb-2
  426b84: b500         	push	{lr}
  426b86: b085         	sub	sp, #0x14
  426b88: 9001         	str	r0, [sp, #0x4]
  426b8a: f703 fd45    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc576
  426b8e: 4603         	mov	r3, r0
  426b90: 4618         	mov	r0, r3
  426b92: f703 fd8f    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xfc4e2
  426b96: 4603         	mov	r3, r0
  426b98: f88d 300f    	strb.w	r3, [sp, #0xf]
  426b9c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  426ba0: 4618         	mov	r0, r3
  426ba2: b005         	add	sp, #0x14
  426ba4: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::getPeerCount
//      file offset 0x426ba8 (= ELF address; Ghidra 0x436ba8), 28 bytes, Thumb-2
  426ba8: b500         	push	{lr}
  426baa: b083         	sub	sp, #0xc
  426bac: 9001         	str	r0, [sp, #0x4]
  426bae: f703 fd33    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc59a
  426bb2: 4603         	mov	r3, r0
  426bb4: 4618         	mov	r0, r3
  426bb6: f704 f90b    	bl	0x32add0 <GPGSRealtimeMultiplayerManager::getRoomCount()> @ imm = #-0xfbdea
  426bba: 4603         	mov	r3, r0
  426bbc: 4618         	mov	r0, r3
  426bbe: b003         	add	sp, #0xc
  426bc0: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::sendData
//      file offset 0x426bc4 (= ELF address; Ghidra 0x436bc4), 40 bytes, Thumb-2
  426bc4: b500         	push	{lr}
  426bc6: b085         	sub	sp, #0x14
  426bc8: 9003         	str	r0, [sp, #0xc]
  426bca: 9102         	str	r1, [sp, #0x8]
  426bcc: 9201         	str	r2, [sp, #0x4]
  426bce: f88d 3003    	strb.w	r3, [sp, #0x3]
  426bd2: f703 fd21    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc5be
  426bd6: 4602         	mov	r2, r0
  426bd8: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  426bdc: 4610         	mov	r0, r2
  426bde: 9902         	ldr	r1, [sp, #0x8]
  426be0: 9a01         	ldr	r2, [sp, #0x4]
  426be2: f704 fc1b    	bl	0x32b41c <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)> @ imm = #-0xfb7ca
  426be6: b005         	add	sp, #0x14
  426be8: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::sendDataToPeer
//      file offset 0x426bec (= ELF address; Ghidra 0x436bec), 72 bytes, Thumb-2
  426bec: b510         	push	{r4, lr}
  426bee: b088         	sub	sp, #0x20
  426bf0: 9005         	str	r0, [sp, #0x14]
  426bf2: 9104         	str	r1, [sp, #0x10]
  426bf4: 9203         	str	r2, [sp, #0xc]
  426bf6: 9302         	str	r3, [sp, #0x8]
  426bf8: f703 fd0e    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc5e4
  426bfc: 4604         	mov	r4, r0
  426bfe: ab07         	add	r3, sp, #0x1c
  426c00: 4618         	mov	r0, r3
  426c02: 9902         	ldr	r1, [sp, #0x8]
  426c04: f38f fc70    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f8e0
  426c08: ab07         	add	r3, sp, #0x1c
  426c0a: f89d 2028    	ldrb.w	r2, [sp, #0x28]
  426c0e: 9200         	str	r2, [sp]
  426c10: 4620         	mov	r0, r4
  426c12: 9904         	ldr	r1, [sp, #0x10]
  426c14: 9a03         	ldr	r2, [sp, #0xc]
  426c16: f704 fcf3    	bl	0x32b600 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)> @ imm = #-0xfb61a
  426c1a: ab07         	add	r3, sp, #0x1c
  426c1c: 4618         	mov	r0, r3
  426c1e: f38e fe79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ecf2
  426c22: e005         	b	0x426c30 <PeerNetworkBridgeGP::sendDataToPeer(void const*, int, std::string, bool)+0x44> @ imm = #0xa
  426c24: ab07         	add	r3, sp, #0x1c
  426c26: 4618         	mov	r0, r3
  426c28: f38e fe74    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ece8
  426c2c: f361 fa3e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36147c
  426c30: b008         	add	sp, #0x20
  426c32: bd10         	pop	{r4, pc}

// ==== PeerNetworkBridgeGP::onCountRequestCompleted
//      file offset 0x426c34 (= ELF address; Ghidra 0x436c34), 228 bytes, Thumb-2
  426c34: b530         	push	{r4, r5, lr}
  426c36: b089         	sub	sp, #0x24
  426c38: 9003         	str	r0, [sp, #0xc]
  426c3a: 9102         	str	r1, [sp, #0x8]
  426c3c: 9201         	str	r2, [sp, #0x4]
  426c3e: 9801         	ldr	r0, [sp, #0x4]
  426c40: f750 fbfe    	bl	0x377440 <cocos2d::extension::CCHttpResponse::getResponseCode()> @ imm = #-0xaf804
  426c44: 4603         	mov	r3, r0
  426c46: 9306         	str	r3, [sp, #0x18]
  426c48: 9b06         	ldr	r3, [sp, #0x18]
  426c4a: 2bc7         	cmp	r3, #0xc7
  426c4c: dd49         	ble	0x426ce2 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xae> @ imm = #0x92
  426c4e: 9b06         	ldr	r3, [sp, #0x18]
  426c50: f5b3 7f96    	cmp.w	r3, #0x12c
  426c54: da45         	bge	0x426ce2 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xae> @ imm = #0x8a
  426c56: 9801         	ldr	r0, [sp, #0x4]
  426c58: f750 fbea    	bl	0x377430 <cocos2d::extension::CCHttpResponse::getResponseData()> @ imm = #-0xaf82c
  426c5c: 4603         	mov	r3, r0
  426c5e: 9307         	str	r3, [sp, #0x1c]
  426c60: 9807         	ldr	r0, [sp, #0x1c]
  426c62: f755 f957    	bl	0x37bf14 <std::vector<char, std::allocator<char>>::begin()> @ imm = #-0xaad52
  426c66: 4605         	mov	r5, r0
  426c68: 9807         	ldr	r0, [sp, #0x1c]
  426c6a: f755 f961    	bl	0x37bf30 <std::vector<char, std::allocator<char>>::end()> @ imm = #-0xaad3e
  426c6e: 4604         	mov	r4, r0
  426c70: ab04         	add	r3, sp, #0x10
  426c72: 4618         	mov	r0, r3
  426c74: f363 fbbe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36377c
  426c78: aa05         	add	r2, sp, #0x14
  426c7a: ab04         	add	r3, sp, #0x10
  426c7c: 4610         	mov	r0, r2
  426c7e: 4629         	mov	r1, r5
  426c80: 4622         	mov	r2, r4
  426c82: f755 f965    	bl	0x37bf50 <std::basic_string<char, std::char_traits<char>, std::allocator<char>>::basic_string<__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>>(__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, std::allocator<char> const&)> @ imm = #-0xaad36
  426c86: ab04         	add	r3, sp, #0x10
  426c88: 4618         	mov	r0, r3
  426c8a: f363 fbb7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36376e
  426c8e: ab05         	add	r3, sp, #0x14
  426c90: 4618         	mov	r0, r3
  426c92: f38e f9e3    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x38e3c6
  426c96: 4603         	mov	r3, r0
  426c98: 2b00         	cmp	r3, #0x0
  426c9a: d009         	beq	0x426cb0 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x7c> @ imm = #0x12
  426c9c: ab05         	add	r3, sp, #0x14
  426c9e: 4618         	mov	r0, r3
  426ca0: f38e fb2e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38e65c
  426ca4: 4603         	mov	r3, r0
  426ca6: 4618         	mov	r0, r3
  426ca8: f6af e9be    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0x150c84
  426cac: 4603         	mov	r3, r0
  426cae: e000         	b	0x426cb2 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x7e> @ imm = #0x0
  426cb0: 2300         	movs	r3, #0x0
  426cb2: 4a15         	ldr	r2, [pc, #0x54]         @ 0x426d08 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xd4>
  426cb4: 447a         	add	r2, pc
  426cb6: 6013         	str	r3, [r2]
  426cb8: f1b9 fcfa    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1b99f4
  426cbc: 4604         	mov	r4, r0
  426cbe: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x426d0c <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xd8>
  426cc0: 447b         	add	r3, pc
  426cc2: 681b         	ldr	r3, [r3]
  426cc4: 4618         	mov	r0, r3
  426cc6: f6be f81f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x141fc2
  426cca: 4603         	mov	r3, r0
  426ccc: 4620         	mov	r0, r4
  426cce: 4a10         	ldr	r2, [pc, #0x40]         @ 0x426d10 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xdc>
  426cd0: 447a         	add	r2, pc
  426cd2: 4611         	mov	r1, r2
  426cd4: 461a         	mov	r2, r3
  426cd6: f1b9 ff29    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1b9e52
  426cda: ab05         	add	r3, sp, #0x14
  426cdc: 4618         	mov	r0, r3
  426cde: f38e fe19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ec32
  426ce2: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x426d14 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xe0>
  426ce4: 447b         	add	r3, pc
  426ce6: 2200         	movs	r2, #0x0
  426ce8: 601a         	str	r2, [r3]
  426cea: e00b         	b	0x426d04 <PeerNetworkBridgeGP::onCountRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xd0> @ imm = #0x16
  426cec: ab04         	add	r3, sp, #0x10
  426cee: 4618         	mov	r0, r3
  426cf0: f363 fb84    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x363708
  426cf4: f361 f9da    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3613b4
  426cf8: ab05         	add	r3, sp, #0x14
  426cfa: 4618         	mov	r0, r3
  426cfc: f38e fe0a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ec14
  426d00: f361 f9d4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3613a8
  426d04: b009         	add	sp, #0x24
  426d06: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x426d07); words below are literal-pool data ---
  426d08: c44c         	stm	r4!, {r2, r3, r6}
  426d0a: 0051         	lsls	r1, r2, #0x1
  426d0c: c440         	stm	r4!, {r6}
  426d0e: 0051         	lsls	r1, r2, #0x1
  426d10: 5e2c         	ldrsh	r4, [r5, r0]
  426d12: 003b         	movs	r3, r7
  426d14: c41c         	stm	r4!, {r2, r3, r4}
  426d16: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeGP::updateRoomCount
//      file offset 0x426d18 (= ELF address; Ghidra 0x436d18), 184 bytes, Thumb-2
  426d18: b510         	push	{r4, lr}
  426d1a: b088         	sub	sp, #0x20
  426d1c: 9001         	str	r0, [sp, #0x4]
  426d1e: f750 ff0f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaf1e2
  426d22: 4603         	mov	r3, r0
  426d24: aa03         	add	r2, sp, #0xc
  426d26: 4610         	mov	r0, r2
  426d28: 4619         	mov	r1, r3
  426d2a: f754 f97f    	bl	0x37b02c <NetworkManager::getPrivateClientToken()> @ imm = #-0xabd02
  426d2e: ab03         	add	r3, sp, #0xc
  426d30: 4618         	mov	r0, r3
  426d32: f38e fae5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38e5ca
  426d36: 4603         	mov	r3, r0
  426d38: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x426dc8 <PeerNetworkBridgeGP::updateRoomCount()+0xb0>
  426d3a: 447a         	add	r2, pc
  426d3c: 4610         	mov	r0, r2
  426d3e: 4619         	mov	r1, r3
  426d40: f172 fee6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x172dcc
  426d44: 4603         	mov	r3, r0
  426d46: 9304         	str	r3, [sp, #0x10]
  426d48: f750 fefa    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaf20c
  426d4c: 4604         	mov	r4, r0
  426d4e: 9804         	ldr	r0, [sp, #0x10]
  426d50: f172 fdea    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x172bd4
  426d54: 4603         	mov	r3, r0
  426d56: 4620         	mov	r0, r4
  426d58: 4619         	mov	r1, r3
  426d5a: f750 fe9d    	bl	0x377a98 <NetworkManager::createAppsomniacsRequest(char const*)> @ imm = #-0xaf2c6
  426d5e: 4603         	mov	r3, r0
  426d60: 9305         	str	r3, [sp, #0x14]
  426d62: 9805         	ldr	r0, [sp, #0x14]
  426d64: 2100         	movs	r1, #0x0
  426d66: f750 faff    	bl	0x377368 <cocos2d::extension::CCHttpRequest::setRequestType(cocos2d::extension::CCHttpRequest::HttpRequestType)> @ imm = #-0xafa02
  426d6a: 9b01         	ldr	r3, [sp, #0x4]
  426d6c: 3304         	adds	r3, #0x4
  426d6e: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x426dcc <PeerNetworkBridgeGP::updateRoomCount()+0xb4>
  426d70: 447a         	add	r2, pc
  426d72: 4611         	mov	r1, r2
  426d74: aa06         	add	r2, sp, #0x18
  426d76: c903         	ldm	r1, {r0, r1}
  426d78: e882 0003    	stm.w	r2, {r0, r1}
  426d7c: 9805         	ldr	r0, [sp, #0x14]
  426d7e: 4619         	mov	r1, r3
  426d80: ab06         	add	r3, sp, #0x18
  426d82: cb0c         	ldm	r3, {r2, r3}
  426d84: f750 fb28    	bl	0x3773d8 <cocos2d::extension::CCHttpRequest::setResponseCallback(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*))> @ imm = #-0xaf9b0
  426d88: f031 fe58    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0x31cb0
  426d8c: 4603         	mov	r3, r0
  426d8e: 4618         	mov	r0, r3
  426d90: 210a         	movs	r1, #0xa
  426d92: f750 fb5d    	bl	0x377450 <cocos2d::extension::CCHttpClient::setTimeoutForRead(int)> @ imm = #-0xaf946
  426d96: f031 fe51    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0x31ca2
  426d9a: 4603         	mov	r3, r0
  426d9c: 4618         	mov	r0, r3
  426d9e: 9905         	ldr	r1, [sp, #0x14]
  426da0: f031 ffac    	bl	0x458cfc <cocos2d::extension::CCHttpClient::send(cocos2d::extension::CCHttpRequest*)> @ imm = #0x31f58
  426da4: 9b05         	ldr	r3, [sp, #0x14]
  426da6: 4618         	mov	r0, r3
  426da8: f171 f886    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17110c
  426dac: ab03         	add	r3, sp, #0xc
  426dae: 4618         	mov	r0, r3
  426db0: f38e fdb0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38eb60
  426db4: e005         	b	0x426dc2 <PeerNetworkBridgeGP::updateRoomCount()+0xaa> @ imm = #0xa
  426db6: ab03         	add	r3, sp, #0xc
  426db8: 4618         	mov	r0, r3
  426dba: f38e fdab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38eb56
  426dbe: f361 f975    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3612ea
  426dc2: b008         	add	sp, #0x20
  426dc4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x426dc5); words below are literal-pool data ---
  426dc6: bf00         	nop
  426dc8: 5dd6         	ldrb	r6, [r2, r7]
  426dca: 003b         	movs	r3, r7
  426dcc: c9a4         	ldm	r1!, {r2, r5, r7}
  426dce: 0050         	lsls	r0, r2, #0x1

// ==== PeerNetworkBridgeGP::getPlayersOnline
//      file offset 0x426dd0 (= ELF address; Ghidra 0x436dd0), 32 bytes, Thumb-2
  426dd0: b500         	push	{lr}
  426dd2: b083         	sub	sp, #0xc
  426dd4: 9001         	str	r0, [sp, #0x4]
  426dd6: 9801         	ldr	r0, [sp, #0x4]
  426dd8: f7ff ff9e    	bl	0x426d18 <PeerNetworkBridgeGP::updateRoomCount()> @ imm = #-0xc4
  426ddc: 4b03         	ldr	r3, [pc, #0xc]          @ 0x426dec <PeerNetworkBridgeGP::getPlayersOnline()+0x1c>
  426dde: 447b         	add	r3, pc
  426de0: 681b         	ldr	r3, [r3]
  426de2: 4618         	mov	r0, r3
  426de4: b003         	add	sp, #0xc
  426de6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x426de9); words below are literal-pool data ---
  426dea: bf00         	nop
  426dec: c322         	stm	r3!, {r1, r5}
  426dee: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeGP::refreshPlayersList
//      file offset 0x426df0 (= ELF address; Ghidra 0x436df0), 348 bytes, Thumb-2
  426df0: b510         	push	{r4, lr}
  426df2: b08e         	sub	sp, #0x38
  426df4: 9001         	str	r0, [sp, #0x4]
  426df6: f703 fc0f    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc7e2
  426dfa: 4603         	mov	r3, r0
  426dfc: 4618         	mov	r0, r3
  426dfe: f703 ffe7    	bl	0x32add0 <GPGSRealtimeMultiplayerManager::getRoomCount()> @ imm = #-0xfc032
  426e02: 4603         	mov	r3, r0
  426e04: 2b01         	cmp	r3, #0x1
  426e06: bfd4         	ite	le
  426e08: 2300         	movle	r3, #0x0
  426e0a: 2301         	movgt	r3, #0x1
  426e0c: b2db         	uxtb	r3, r3
  426e0e: 2b00         	cmp	r3, #0x0
  426e10: f000 8095    	beq.w	0x426f3e <PeerNetworkBridgeGP::refreshPlayersList()+0x14e> @ imm = #0x12a
  426e14: f703 fc00    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfc800
  426e18: 4603         	mov	r3, r0
  426e1a: aa0b         	add	r2, sp, #0x2c
  426e1c: 4610         	mov	r0, r2
  426e1e: 4619         	mov	r1, r3
  426e20: f704 f83a    	bl	0x32ae98 <GPGSRealtimeMultiplayerManager::getRoomParticipants()> @ imm = #-0xfbf8c
  426e24: ab0b         	add	r3, sp, #0x2c
  426e26: 9308         	str	r3, [sp, #0x20]
  426e28: 9808         	ldr	r0, [sp, #0x20]
  426e2a: f705 faeb    	bl	0x32c404 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin()> @ imm = #-0xfaa2a
  426e2e: 4603         	mov	r3, r0
  426e30: 9304         	str	r3, [sp, #0x10]
  426e32: 9808         	ldr	r0, [sp, #0x20]
  426e34: f705 faf4    	bl	0x32c420 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end()> @ imm = #-0xfaa18
  426e38: 4603         	mov	r3, r0
  426e3a: 9305         	str	r3, [sp, #0x14]
  426e3c: e058         	b	0x426ef0 <PeerNetworkBridgeGP::refreshPlayersList()+0x100> @ imm = #0xb0
  426e3e: ab04         	add	r3, sp, #0x10
  426e40: 4618         	mov	r0, r3
  426e42: f705 fb1f    	bl	0x32c484 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #-0xfa9c2
  426e46: 4603         	mov	r3, r0
  426e48: aa09         	add	r2, sp, #0x24
  426e4a: 4610         	mov	r0, r2
  426e4c: 4619         	mov	r1, r3
  426e4e: f0e0 f8cd    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0xe019a
  426e52: ab09         	add	r3, sp, #0x24
  426e54: 4618         	mov	r0, r3
  426e56: f0e0 f8eb    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0xe01d6
  426e5a: 4603         	mov	r3, r0
  426e5c: 4618         	mov	r0, r3
  426e5e: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x426f44 <PeerNetworkBridgeGP::refreshPlayersList()+0x154>
  426e60: 447b         	add	r3, pc
  426e62: 4619         	mov	r1, r3
  426e64: f38e fc0a    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x38e814
  426e68: 4603         	mov	r3, r0
  426e6a: 2b00         	cmp	r3, #0x0
  426e6c: d008         	beq	0x426e80 <PeerNetworkBridgeGP::refreshPlayersList()+0x90> @ imm = #0x10
  426e6e: ab09         	add	r3, sp, #0x24
  426e70: 4618         	mov	r0, r3
  426e72: f0e0 f9ad    	bl	0x5071d0 <gpg::MultiplayerParticipant::IsConnectedToRoom() const> @ imm = #0xe035a
  426e76: 4603         	mov	r3, r0
  426e78: 2b00         	cmp	r3, #0x0
  426e7a: d001         	beq	0x426e80 <PeerNetworkBridgeGP::refreshPlayersList()+0x90> @ imm = #0x2
  426e7c: 2301         	movs	r3, #0x1
  426e7e: e000         	b	0x426e82 <PeerNetworkBridgeGP::refreshPlayersList()+0x92> @ imm = #0x0
  426e80: 2300         	movs	r3, #0x0
  426e82: 2b00         	cmp	r3, #0x0
  426e84: d02c         	beq	0x426ee0 <PeerNetworkBridgeGP::refreshPlayersList()+0xf0> @ imm = #0x58
  426e86: f750 fe5b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaf34a
  426e8a: 4604         	mov	r4, r0
  426e8c: ab09         	add	r3, sp, #0x24
  426e8e: 4618         	mov	r0, r3
  426e90: f0e0 f8ce    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0xe019c
  426e94: 4603         	mov	r3, r0
  426e96: aa06         	add	r2, sp, #0x18
  426e98: 4610         	mov	r0, r2
  426e9a: 4619         	mov	r1, r3
  426e9c: f38f fb24    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f648
  426ea0: ab03         	add	r3, sp, #0xc
  426ea2: 4618         	mov	r0, r3
  426ea4: f363 faa6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36354c
  426ea8: aa07         	add	r2, sp, #0x1c
  426eaa: ab03         	add	r3, sp, #0xc
  426eac: 4610         	mov	r0, r2
  426eae: 4a26         	ldr	r2, [pc, #0x98]         @ 0x426f48 <PeerNetworkBridgeGP::refreshPlayersList()+0x158>
  426eb0: 447a         	add	r2, pc
  426eb2: 4611         	mov	r1, r2
  426eb4: 461a         	mov	r2, r3
  426eb6: f38f fdd3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38fba6
  426eba: aa06         	add	r2, sp, #0x18
  426ebc: ab07         	add	r3, sp, #0x1c
  426ebe: 4620         	mov	r0, r4
  426ec0: 4611         	mov	r1, r2
  426ec2: 461a         	mov	r2, r3
  426ec4: f753 fa36    	bl	0x37a334 <NetworkManager::addPlayer(std::string, std::string)> @ imm = #-0xacb94
  426ec8: ab07         	add	r3, sp, #0x1c
  426eca: 4618         	mov	r0, r3
  426ecc: f38e fd22    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ea44
  426ed0: ab03         	add	r3, sp, #0xc
  426ed2: 4618         	mov	r0, r3
  426ed4: f363 fa92    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x363524
  426ed8: ab06         	add	r3, sp, #0x18
  426eda: 4618         	mov	r0, r3
  426edc: f38e fd1a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ea34
  426ee0: ab09         	add	r3, sp, #0x24
  426ee2: 4618         	mov	r0, r3
  426ee4: f0e0 f988    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0xe0310
  426ee8: ab04         	add	r3, sp, #0x10
  426eea: 4618         	mov	r0, r3
  426eec: f705 fabe    	bl	0x32c46c <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #-0xfaa84
  426ef0: aa04         	add	r2, sp, #0x10
  426ef2: ab05         	add	r3, sp, #0x14
  426ef4: 4610         	mov	r0, r2
  426ef6: 4619         	mov	r1, r3
  426ef8: f705 faa2    	bl	0x32c440 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #-0xfaabc
  426efc: 4603         	mov	r3, r0
  426efe: 2b00         	cmp	r3, #0x0
  426f00: d19d         	bne	0x426e3e <PeerNetworkBridgeGP::refreshPlayersList()+0x4e> @ imm = #-0xc6
  426f02: ab0b         	add	r3, sp, #0x2c
  426f04: 4618         	mov	r0, r3
  426f06: f705 fa5d    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #-0xfab46
  426f0a: e018         	b	0x426f3e <PeerNetworkBridgeGP::refreshPlayersList()+0x14e> @ imm = #0x30
  426f0c: ab07         	add	r3, sp, #0x1c
  426f0e: 4618         	mov	r0, r3
  426f10: f38e fd00    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38ea00
  426f14: e7ff         	b	0x426f16 <PeerNetworkBridgeGP::refreshPlayersList()+0x126> @ imm = #-0x2
  426f16: ab03         	add	r3, sp, #0xc
  426f18: 4618         	mov	r0, r3
  426f1a: f363 fa6f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3634de
  426f1e: ab06         	add	r3, sp, #0x18
  426f20: 4618         	mov	r0, r3
  426f22: f38e fcf7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e9ee
  426f26: e7ff         	b	0x426f28 <PeerNetworkBridgeGP::refreshPlayersList()+0x138> @ imm = #-0x2
  426f28: ab09         	add	r3, sp, #0x24
  426f2a: 4618         	mov	r0, r3
  426f2c: f0e0 f964    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0xe02c8
  426f30: e7ff         	b	0x426f32 <PeerNetworkBridgeGP::refreshPlayersList()+0x142> @ imm = #-0x2
  426f32: ab0b         	add	r3, sp, #0x2c
  426f34: 4618         	mov	r0, r3
  426f36: f705 fa45    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #-0xfab76
  426f3a: f361 f8b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36116e
  426f3e: b00e         	add	sp, #0x38
  426f40: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x426f41); words below are literal-pool data ---
  426f42: bf00         	nop
  426f44: c29c         	stm	r2!, {r2, r3, r4, r7}
  426f46: 0051         	lsls	r1, r2, #0x1
  426f48: 5c48         	ldrb	r0, [r1, r1]
  426f4a: 003b         	movs	r3, r7

// ==== PeerNetworkBridgeGP::getPlayerTimeout
//      file offset 0x426f4c (= ELF address; Ghidra 0x436f4c), 18 bytes, Thumb-2
  426f4c: b082         	sub	sp, #0x8
  426f4e: 9001         	str	r0, [sp, #0x4]
  426f50: f04f 0300    	mov.w	r3, #0x0
  426f54: f2c4 13f0    	movt	r3, #0x41f0
  426f58: 4618         	mov	r0, r3
  426f5a: b002         	add	sp, #0x8
  426f5c: 4770         	bx	lr

// ==== PeerNetworkBridgeGP::findSessions
//      file offset 0x426f60 (= ELF address; Ghidra 0x436f60), 8 bytes, Thumb-2
  426f60: b082         	sub	sp, #0x8
  426f62: 9001         	str	r0, [sp, #0x4]
  426f64: b002         	add	sp, #0x8
  426f66: 4770         	bx	lr

// ==== PeerNetworkBridgeGP::hostSession
//      file offset 0x426f68 (= ELF address; Ghidra 0x436f68), 12 bytes, Thumb-2
  426f68: b084         	sub	sp, #0x10
  426f6a: 9003         	str	r0, [sp, #0xc]
  426f6c: 9102         	str	r1, [sp, #0x8]
  426f6e: 9201         	str	r2, [sp, #0x4]
  426f70: b004         	add	sp, #0x10
  426f72: 4770         	bx	lr

// ==== PeerNetworkBridgeGP::joinSession
//      file offset 0x426f74 (= ELF address; Ghidra 0x436f74), 10 bytes, Thumb-2
  426f74: b082         	sub	sp, #0x8
  426f76: 9001         	str	r0, [sp, #0x4]
  426f78: 9100         	str	r1, [sp]
  426f7a: b002         	add	sp, #0x8
  426f7c: 4770         	bx	lr

// ==== PeerNetworkBridgeGP::addPlayersToMatch
//      file offset 0x426f80 (= ELF address; Ghidra 0x436f80), 288 bytes, Thumb-2
  426f80: b500         	push	{lr}
  426f82: b08d         	sub	sp, #0x34
  426f84: 9005         	str	r0, [sp, #0x14]
  426f86: 9203         	str	r2, [sp, #0xc]
  426f88: 9302         	str	r3, [sp, #0x8]
  426f8a: 460b         	mov	r3, r1
  426f8c: f88d 3013    	strb.w	r3, [sp, #0x13]
  426f90: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  426f94: 2b00         	cmp	r3, #0x0
  426f96: d052         	beq	0x42703e <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0xbe> @ imm = #0xa4
  426f98: ab07         	add	r3, sp, #0x1c
  426f9a: 4618         	mov	r0, r3
  426f9c: f363 fa2a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x363454
  426fa0: aa0a         	add	r2, sp, #0x28
  426fa2: ab07         	add	r3, sp, #0x1c
  426fa4: 4610         	mov	r0, r2
  426fa6: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x427094 <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0x114>
  426fa8: 447a         	add	r2, pc
  426faa: 4611         	mov	r1, r2
  426fac: 461a         	mov	r2, r3
  426fae: f38f fd57    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38faae
  426fb2: ab08         	add	r3, sp, #0x20
  426fb4: 4618         	mov	r0, r3
  426fb6: f363 fa1d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36343a
  426fba: aa0b         	add	r2, sp, #0x2c
  426fbc: ab08         	add	r3, sp, #0x20
  426fbe: 4610         	mov	r0, r2
  426fc0: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x427098 <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0x118>
  426fc2: 447a         	add	r2, pc
  426fc4: 4611         	mov	r1, r2
  426fc6: 461a         	mov	r2, r3
  426fc8: f38f fd4a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38fa94
  426fcc: ab06         	add	r3, sp, #0x18
  426fce: 4618         	mov	r0, r3
  426fd0: f363 fa10    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x363420
  426fd4: aa09         	add	r2, sp, #0x24
  426fd6: ab06         	add	r3, sp, #0x18
  426fd8: 4610         	mov	r0, r2
  426fda: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x42709c <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0x11c>
  426fdc: 447a         	add	r2, pc
  426fde: 4611         	mov	r1, r2
  426fe0: 461a         	mov	r2, r3
  426fe2: f38f fd3d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38fa7a
  426fe6: ab09         	add	r3, sp, #0x24
  426fe8: 4618         	mov	r0, r3
  426fea: f172 fd27    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x172a4e
  426fee: 4603         	mov	r3, r0
  426ff0: 4618         	mov	r0, r3
  426ff2: 2100         	movs	r1, #0x0
  426ff4: f172 ff0c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x172e18
  426ff8: 4603         	mov	r3, r0
  426ffa: a90a         	add	r1, sp, #0x28
  426ffc: aa0b         	add	r2, sp, #0x2c
  426ffe: 2000         	movs	r0, #0x0
  427000: 9000         	str	r0, [sp]
  427002: 2000         	movs	r0, #0x0
  427004: 9001         	str	r0, [sp, #0x4]
  427006: 2000         	movs	r0, #0x0
  427008: f6b8 fbf4    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x147818
  42700c: ab09         	add	r3, sp, #0x24
  42700e: 4618         	mov	r0, r3
  427010: f38e fc80    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e900
  427014: ab06         	add	r3, sp, #0x18
  427016: 4618         	mov	r0, r3
  427018: f363 f9f0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3633e0
  42701c: ab0b         	add	r3, sp, #0x2c
  42701e: 4618         	mov	r0, r3
  427020: f38e fc78    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e8f0
  427024: ab08         	add	r3, sp, #0x20
  427026: 4618         	mov	r0, r3
  427028: f363 f9e8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3633d0
  42702c: ab0a         	add	r3, sp, #0x28
  42702e: 4618         	mov	r0, r3
  427030: f38e fc70    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e8e0
  427034: ab07         	add	r3, sp, #0x1c
  427036: 4618         	mov	r0, r3
  427038: f363 f9e0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3633c0
  42703c: e026         	b	0x42708c <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0x10c> @ imm = #0x4c
  42703e: f703 faeb    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfca2a
  427042: 4603         	mov	r3, r0
  427044: 4618         	mov	r0, r3
  427046: 2101         	movs	r1, #0x1
  427048: 2205         	movs	r2, #0x5
  42704a: 9b02         	ldr	r3, [sp, #0x8]
  42704c: f703 fcee    	bl	0x32aa2c <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)> @ imm = #-0xfc624
  427050: e01c         	b	0x42708c <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0x10c> @ imm = #0x38
  427052: ab09         	add	r3, sp, #0x24
  427054: 4618         	mov	r0, r3
  427056: f38e fc5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e8ba
  42705a: e7ff         	b	0x42705c <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0xdc> @ imm = #-0x2
  42705c: ab06         	add	r3, sp, #0x18
  42705e: 4618         	mov	r0, r3
  427060: f363 f9cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x363398
  427064: ab0b         	add	r3, sp, #0x2c
  427066: 4618         	mov	r0, r3
  427068: f38e fc54    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e8a8
  42706c: e7ff         	b	0x42706e <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0xee> @ imm = #-0x2
  42706e: ab08         	add	r3, sp, #0x20
  427070: 4618         	mov	r0, r3
  427072: f363 f9c3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x363386
  427076: ab0a         	add	r3, sp, #0x28
  427078: 4618         	mov	r0, r3
  42707a: f38e fc4b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e896
  42707e: e7ff         	b	0x427080 <PeerNetworkBridgeGP::addPlayersToMatch(bool, int, int)+0x100> @ imm = #-0x2
  427080: ab07         	add	r3, sp, #0x1c
  427082: 4618         	mov	r0, r3
  427084: f363 f9ba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x363374
  427088: f361 f810    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x361020
  42708c: b00d         	add	sp, #0x34
  42708e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x427091); words below are literal-pool data ---
  427092: bf00         	nop
  427094: 5ba0         	ldrh	r0, [r4, r6]
  427096: 003b         	movs	r3, r7
  427098: 5b96         	ldrh	r6, [r2, r6]
  42709a: 003b         	movs	r3, r7
  42709c: 5bc0         	ldrh	r0, [r0, r7]
  42709e: 003b         	movs	r3, r7

// ==== PeerNetworkBridgeGP::isSearching
//      file offset 0x4270a0 (= ELF address; Ghidra 0x4370a0), 28 bytes, Thumb-2
  4270a0: b500         	push	{lr}
  4270a2: b083         	sub	sp, #0xc
  4270a4: 9001         	str	r0, [sp, #0x4]
  4270a6: f703 fab7    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfca92
  4270aa: 4603         	mov	r3, r0
  4270ac: 4618         	mov	r0, r3
  4270ae: f703 fb11    	bl	0x32a6d4 <GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress()> @ imm = #-0xfc9de
  4270b2: 4603         	mov	r3, r0
  4270b4: 4618         	mov	r0, r3
  4270b6: b003         	add	sp, #0xc
  4270b8: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::canSearch
//      file offset 0x4270bc (= ELF address; Ghidra 0x4370bc), 28 bytes, Thumb-2
  4270bc: b500         	push	{lr}
  4270be: b083         	sub	sp, #0xc
  4270c0: 9001         	str	r0, [sp, #0x4]
  4270c2: f703 faa9    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcaae
  4270c6: 4603         	mov	r3, r0
  4270c8: 4618         	mov	r0, r3
  4270ca: f703 fafb    	bl	0x32a6c4 <GPGSRealtimeMultiplayerManager::canSearch()> @ imm = #-0xfca0a
  4270ce: 4603         	mov	r3, r0
  4270d0: 4618         	mov	r0, r3
  4270d2: b003         	add	sp, #0xc
  4270d4: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::cancelSearch
//      file offset 0x4270d8 (= ELF address; Ghidra 0x4370d8), 24 bytes, Thumb-2
  4270d8: b500         	push	{lr}
  4270da: b083         	sub	sp, #0xc
  4270dc: 9001         	str	r0, [sp, #0x4]
  4270de: f703 fa9b    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcaca
  4270e2: 4603         	mov	r3, r0
  4270e4: 4618         	mov	r0, r3
  4270e6: f703 feff    	bl	0x32aee8 <GPGSRealtimeMultiplayerManager::disconnect()> @ imm = #-0xfc202
  4270ea: b003         	add	sp, #0xc
  4270ec: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::shutdown
//      file offset 0x4270f0 (= ELF address; Ghidra 0x4370f0), 24 bytes, Thumb-2
  4270f0: b500         	push	{lr}
  4270f2: b083         	sub	sp, #0xc
  4270f4: 9001         	str	r0, [sp, #0x4]
  4270f6: f703 fa8f    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcae2
  4270fa: 4603         	mov	r3, r0
  4270fc: 4618         	mov	r0, r3
  4270fe: f703 fef3    	bl	0x32aee8 <GPGSRealtimeMultiplayerManager::disconnect()> @ imm = #-0xfc21a
  427102: b003         	add	sp, #0xc
  427104: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::getPlayerCount
//      file offset 0x427108 (= ELF address; Ghidra 0x437108), 28 bytes, Thumb-2
  427108: b500         	push	{lr}
  42710a: b083         	sub	sp, #0xc
  42710c: 9001         	str	r0, [sp, #0x4]
  42710e: f703 fa83    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcafa
  427112: 4603         	mov	r3, r0
  427114: 4618         	mov	r0, r3
  427116: f703 fe5b    	bl	0x32add0 <GPGSRealtimeMultiplayerManager::getRoomCount()> @ imm = #-0xfc34a
  42711a: 4603         	mov	r3, r0
  42711c: 4618         	mov	r0, r3
  42711e: b003         	add	sp, #0xc
  427120: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::updateNetwork
//      file offset 0x427124 (= ELF address; Ghidra 0x437124), 1040 bytes, Thumb-2
  427124: b570         	push	{r4, r5, r6, lr}
  427126: b098         	sub	sp, #0x60
  427128: 9003         	str	r0, [sp, #0xc]
  42712a: 9102         	str	r1, [sp, #0x8]
  42712c: f703 fa74    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcb18
  427130: 4603         	mov	r3, r0
  427132: ed93 7a02    	vldr	s14, [r3, #8]
  427136: eddd 7a02    	vldr	s15, [sp, #8]
  42713a: ee77 7a27    	vadd.f32	s15, s14, s15
  42713e: edc3 7a02    	vstr	s15, [r3, #8]
  427142: f703 fa69    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcb2e
  427146: 4603         	mov	r3, r0
  427148: 4618         	mov	r0, r3
  42714a: f703 fac3    	bl	0x32a6d4 <GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress()> @ imm = #-0xfca7a
  42714e: 4603         	mov	r3, r0
  427150: 2b00         	cmp	r3, #0x0
  427152: d00a         	beq	0x42716a <PeerNetworkBridgeGP::updateNetwork(float)+0x46> @ imm = #0x14
  427154: f703 fa60    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcb40
  427158: 4603         	mov	r3, r0
  42715a: 4618         	mov	r0, r3
  42715c: f703 fac2    	bl	0x32a6e4 <GPGSRealtimeMultiplayerManager::isConnecting()> @ imm = #-0xfca7c
  427160: 4603         	mov	r3, r0
  427162: 2b00         	cmp	r3, #0x0
  427164: d001         	beq	0x42716a <PeerNetworkBridgeGP::updateNetwork(float)+0x46> @ imm = #0x2
  427166: 2301         	movs	r3, #0x1
  427168: e000         	b	0x42716c <PeerNetworkBridgeGP::updateNetwork(float)+0x48> @ imm = #0x0
  42716a: 2300         	movs	r3, #0x0
  42716c: 2b00         	cmp	r3, #0x0
  42716e: d073         	beq	0x427258 <PeerNetworkBridgeGP::updateNetwork(float)+0x134> @ imm = #0xe6
  427170: f703 fa52    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcb5c
  427174: 4603         	mov	r3, r0
  427176: ed93 7a01    	vldr	s14, [r3, #4]
  42717a: eddd 7a02    	vldr	s15, [sp, #8]
  42717e: ee77 7a27    	vadd.f32	s15, s14, s15
  427182: edc3 7a01    	vstr	s15, [r3, #4]
  427186: f703 fa47    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcb72
  42718a: 4603         	mov	r3, r0
  42718c: ed93 7a01    	vldr	s14, [r3, #4]
  427190: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  427194: eeb4 7ae7    	vcmpe.f32	s14, s15
  427198: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  42719c: bfd4         	ite	le
  42719e: 2300         	movle	r3, #0x0
  4271a0: 2301         	movgt	r3, #0x1
  4271a2: b2db         	uxtb	r3, r3
  4271a4: 2b00         	cmp	r3, #0x0
  4271a6: d057         	beq	0x427258 <PeerNetworkBridgeGP::updateNetwork(float)+0x134> @ imm = #0xae
  4271a8: f703 fa36    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcb94
  4271ac: 4603         	mov	r3, r0
  4271ae: 4618         	mov	r0, r3
  4271b0: f703 fe9a    	bl	0x32aee8 <GPGSRealtimeMultiplayerManager::disconnect()> @ imm = #-0xfc2cc
  4271b4: ab07         	add	r3, sp, #0x1c
  4271b6: 4618         	mov	r0, r3
  4271b8: f363 f91c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x363238
  4271bc: aa0f         	add	r2, sp, #0x3c
  4271be: ab07         	add	r3, sp, #0x1c
  4271c0: 4610         	mov	r0, r2
  4271c2: 4ad8         	ldr	r2, [pc, #0x360]        @ 0x427524 <PeerNetworkBridgeGP::updateNetwork(float)+0x400>
  4271c4: 447a         	add	r2, pc
  4271c6: 4611         	mov	r1, r2
  4271c8: 461a         	mov	r2, r3
  4271ca: f38f fc49    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38f892
  4271ce: ab08         	add	r3, sp, #0x20
  4271d0: 4618         	mov	r0, r3
  4271d2: f363 f90f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36321e
  4271d6: aa12         	add	r2, sp, #0x48
  4271d8: ab08         	add	r3, sp, #0x20
  4271da: 4610         	mov	r0, r2
  4271dc: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x427528 <PeerNetworkBridgeGP::updateNetwork(float)+0x404>
  4271de: 447a         	add	r2, pc
  4271e0: 4611         	mov	r1, r2
  4271e2: 461a         	mov	r2, r3
  4271e4: f38f fc3c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38f878
  4271e8: ab06         	add	r3, sp, #0x18
  4271ea: 4618         	mov	r0, r3
  4271ec: f363 f902    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x363204
  4271f0: aa0c         	add	r2, sp, #0x30
  4271f2: ab06         	add	r3, sp, #0x18
  4271f4: 4610         	mov	r0, r2
  4271f6: 4acd         	ldr	r2, [pc, #0x334]        @ 0x42752c <PeerNetworkBridgeGP::updateNetwork(float)+0x408>
  4271f8: 447a         	add	r2, pc
  4271fa: 4611         	mov	r1, r2
  4271fc: 461a         	mov	r2, r3
  4271fe: f38f fc2f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38f85e
  427202: ab0c         	add	r3, sp, #0x30
  427204: 4618         	mov	r0, r3
  427206: f172 fc19    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x172832
  42720a: 4603         	mov	r3, r0
  42720c: 4618         	mov	r0, r3
  42720e: 2100         	movs	r1, #0x0
  427210: f172 fdfe    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x172bfc
  427214: 4603         	mov	r3, r0
  427216: a90f         	add	r1, sp, #0x3c
  427218: aa12         	add	r2, sp, #0x48
  42721a: 2000         	movs	r0, #0x0
  42721c: 9000         	str	r0, [sp]
  42721e: 2000         	movs	r0, #0x0
  427220: 9001         	str	r0, [sp, #0x4]
  427222: 2000         	movs	r0, #0x0
  427224: f6b8 fae6    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x147a34
  427228: ab0c         	add	r3, sp, #0x30
  42722a: 4618         	mov	r0, r3
  42722c: f38e fb72    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e6e4
  427230: ab06         	add	r3, sp, #0x18
  427232: 4618         	mov	r0, r3
  427234: f363 f8e2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3631c4
  427238: ab12         	add	r3, sp, #0x48
  42723a: 4618         	mov	r0, r3
  42723c: f38e fb6a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e6d4
  427240: ab08         	add	r3, sp, #0x20
  427242: 4618         	mov	r0, r3
  427244: f363 f8da    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3631b4
  427248: ab0f         	add	r3, sp, #0x3c
  42724a: 4618         	mov	r0, r3
  42724c: f38e fb62    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e6c4
  427250: ab07         	add	r3, sp, #0x1c
  427252: 4618         	mov	r0, r3
  427254: f363 f8d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3631a4
  427258: f703 f9de    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcc44
  42725c: 4603         	mov	r3, r0
  42725e: aa12         	add	r2, sp, #0x48
  427260: 4610         	mov	r0, r2
  427262: 4619         	mov	r1, r3
  427264: f704 fc3a    	bl	0x32badc <GPGSRealtimeMultiplayerManager::readMessages()> @ imm = #-0xfb78c
  427268: ab12         	add	r3, sp, #0x48
  42726a: 4618         	mov	r0, r3
  42726c: f000 f97c    	bl	0x427568 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::begin()> @ imm = #0x2f8
  427270: 4603         	mov	r3, r0
  427272: 9307         	str	r3, [sp, #0x1c]
  427274: e070         	b	0x427358 <PeerNetworkBridgeGP::updateNetwork(float)+0x234> @ imm = #0xe0
  427276: ab07         	add	r3, sp, #0x1c
  427278: 4618         	mov	r0, r3
  42727a: f000 f991    	bl	0x4275a0 <std::_Rb_tree_iterator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>::operator->() const> @ imm = #0x322
  42727e: 4603         	mov	r3, r0
  427280: aa08         	add	r2, sp, #0x20
  427282: 4610         	mov	r0, r2
  427284: 4619         	mov	r1, r3
  427286: f38f f92f    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f25e
  42728a: ab07         	add	r3, sp, #0x1c
  42728c: 4618         	mov	r0, r3
  42728e: f000 f987    	bl	0x4275a0 <std::_Rb_tree_iterator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>::operator->() const> @ imm = #0x30e
  427292: 4603         	mov	r3, r0
  427294: 3304         	adds	r3, #0x4
  427296: aa0c         	add	r2, sp, #0x30
  427298: 4610         	mov	r0, r2
  42729a: 4619         	mov	r1, r3
  42729c: f70a ffe0    	bl	0x332260 <std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>::vector(std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>> const&)> @ imm = #-0xf5040
  4272a0: 2300         	movs	r3, #0x0
  4272a2: 9309         	str	r3, [sp, #0x24]
  4272a4: e03f         	b	0x427326 <PeerNetworkBridgeGP::updateNetwork(float)+0x202> @ imm = #0x7e
  4272a6: 9b09         	ldr	r3, [sp, #0x24]
  4272a8: aa0c         	add	r2, sp, #0x30
  4272aa: 4610         	mov	r0, r2
  4272ac: 4619         	mov	r1, r3
  4272ae: f000 f985    	bl	0x4275bc <std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>::operator[](unsigned int)> @ imm = #0x30a
  4272b2: 4603         	mov	r3, r0
  4272b4: aa0f         	add	r2, sp, #0x3c
  4272b6: 4610         	mov	r0, r2
  4272b8: 4619         	mov	r1, r3
  4272ba: f705 f9fd    	bl	0x32c6b8 <std::vector<unsigned char, std::allocator<unsigned char>>::vector(std::vector<unsigned char, std::allocator<unsigned char>> const&)> @ imm = #-0xfac06
  4272be: ab0f         	add	r3, sp, #0x3c
  4272c0: 4618         	mov	r0, r3
  4272c2: 2100         	movs	r1, #0x0
  4272c4: f000 f988    	bl	0x4275d8 <std::vector<unsigned char, std::allocator<unsigned char>>::operator[](unsigned int)> @ imm = #0x310
  4272c8: 4606         	mov	r6, r0
  4272ca: ab0f         	add	r3, sp, #0x3c
  4272cc: 4618         	mov	r0, r3
  4272ce: f706 fafb    	bl	0x32d8c8 <std::vector<unsigned char, std::allocator<unsigned char>>::size() const> @ imm = #-0xf9a0a
  4272d2: 4605         	mov	r5, r0
  4272d4: 201c         	movs	r0, #0x1c
  4272d6: f360 fb45    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x36068a
  4272da: 4603         	mov	r3, r0
  4272dc: 461c         	mov	r4, r3
  4272de: 4620         	mov	r0, r4
  4272e0: 4631         	mov	r1, r6
  4272e2: 462a         	mov	r2, r5
  4272e4: f01c ff82    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0x1cf04
  4272e8: 940a         	str	r4, [sp, #0x28]
  4272ea: 9b0a         	ldr	r3, [sp, #0x28]
  4272ec: 4618         	mov	r0, r3
  4272ee: f170 fe05    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x170c0a
  4272f2: f750 fc25    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaf7b6
  4272f6: 4604         	mov	r4, r0
  4272f8: aa05         	add	r2, sp, #0x14
  4272fa: ab08         	add	r3, sp, #0x20
  4272fc: 4610         	mov	r0, r2
  4272fe: 4619         	mov	r1, r3
  427300: f38f f8f2    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f1e4
  427304: ab05         	add	r3, sp, #0x14
  427306: 4620         	mov	r0, r4
  427308: 990a         	ldr	r1, [sp, #0x28]
  42730a: 461a         	mov	r2, r3
  42730c: f751 f95c    	bl	0x3785c8 <NetworkManager::readMessage(cocos2d::extension::CCData*, std::string)> @ imm = #-0xaed48
  427310: ab05         	add	r3, sp, #0x14
  427312: 4618         	mov	r0, r3
  427314: f38e fafe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e5fc
  427318: ab0f         	add	r3, sp, #0x3c
  42731a: 4618         	mov	r0, r3
  42731c: f705 f964    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #-0xfad38
  427320: 9b09         	ldr	r3, [sp, #0x24]
  427322: 3301         	adds	r3, #0x1
  427324: 9309         	str	r3, [sp, #0x24]
  427326: 9c09         	ldr	r4, [sp, #0x24]
  427328: ab0c         	add	r3, sp, #0x30
  42732a: 4618         	mov	r0, r3
  42732c: f708 fabc    	bl	0x32f8a8 <std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>::size() const> @ imm = #-0xf7a88
  427330: 4603         	mov	r3, r0
  427332: 429c         	cmp	r4, r3
  427334: bf2c         	ite	hs
  427336: 2300         	movhs	r3, #0x0
  427338: 2301         	movlo	r3, #0x1
  42733a: b2db         	uxtb	r3, r3
  42733c: 2b00         	cmp	r3, #0x0
  42733e: d1b2         	bne	0x4272a6 <PeerNetworkBridgeGP::updateNetwork(float)+0x182> @ imm = #-0x9c
  427340: ab0c         	add	r3, sp, #0x30
  427342: 4618         	mov	r0, r3
  427344: f709 fd1c    	bl	0x330d80 <std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>::~vector()> @ imm = #-0xf65c8
  427348: ab08         	add	r3, sp, #0x20
  42734a: 4618         	mov	r0, r3
  42734c: f38e fae2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e5c4
  427350: ab07         	add	r3, sp, #0x1c
  427352: 4618         	mov	r0, r3
  427354: f709 fb5c    	bl	0x330a10 <std::_Rb_tree_iterator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>::operator++()> @ imm = #-0xf6948
  427358: ab12         	add	r3, sp, #0x48
  42735a: 4618         	mov	r0, r3
  42735c: f706 fce0    	bl	0x32dd20 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::end()> @ imm = #-0xf9640
  427360: 4603         	mov	r3, r0
  427362: 930f         	str	r3, [sp, #0x3c]
  427364: aa07         	add	r2, sp, #0x1c
  427366: ab0f         	add	r3, sp, #0x3c
  427368: 4610         	mov	r0, r2
  42736a: 4619         	mov	r1, r3
  42736c: f000 f908    	bl	0x427580 <std::_Rb_tree_iterator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>::operator!=(std::_Rb_tree_iterator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>> const&) const> @ imm = #0x210
  427370: 4603         	mov	r3, r0
  427372: 2b00         	cmp	r3, #0x0
  427374: f47f af7f    	bne.w	0x427276 <PeerNetworkBridgeGP::updateNetwork(float)+0x152> @ imm = #-0x102
  427378: f703 f94e    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcd64
  42737c: 4603         	mov	r3, r0
  42737e: aa0c         	add	r2, sp, #0x30
  427380: 4610         	mov	r0, r2
  427382: 4619         	mov	r1, r3
  427384: f704 fbd0    	bl	0x32bb28 <GPGSRealtimeMultiplayerManager::readEvents()> @ imm = #-0xfb860
  427388: ab0c         	add	r3, sp, #0x30
  42738a: 930b         	str	r3, [sp, #0x2c]
  42738c: 980b         	ldr	r0, [sp, #0x2c]
  42738e: f706 ffd5    	bl	0x32e33c <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::begin()> @ imm = #-0xf9056
  427392: 4603         	mov	r3, r0
  427394: 9304         	str	r3, [sp, #0x10]
  427396: 980b         	ldr	r0, [sp, #0x2c]
  427398: f706 fff4    	bl	0x32e384 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::end()> @ imm = #-0xf9018
  42739c: 4603         	mov	r3, r0
  42739e: 9305         	str	r3, [sp, #0x14]
  4273a0: e057         	b	0x427452 <PeerNetworkBridgeGP::updateNetwork(float)+0x32e> @ imm = #0xae
  4273a2: ab04         	add	r3, sp, #0x10
  4273a4: 4618         	mov	r0, r3
  4273a6: f70a f8a3    	bl	0x3314f0 <__gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>>::operator*() const> @ imm = #-0xf5eba
  4273aa: 4603         	mov	r3, r0
  4273ac: aa0f         	add	r2, sp, #0x3c
  4273ae: 4610         	mov	r0, r2
  4273b0: 4619         	mov	r1, r3
  4273b2: f708 fe17    	bl	0x32ffe4 <GPGSEventObject::GPGSEventObject(GPGSEventObject const&)> @ imm = #-0xf73d2
  4273b6: 9b0f         	ldr	r3, [sp, #0x3c]
  4273b8: 2b02         	cmp	r3, #0x2
  4273ba: d004         	beq	0x4273c6 <PeerNetworkBridgeGP::updateNetwork(float)+0x2a2> @ imm = #0x8
  4273bc: 2b03         	cmp	r3, #0x3
  4273be: d023         	beq	0x427408 <PeerNetworkBridgeGP::updateNetwork(float)+0x2e4> @ imm = #0x46
  4273c0: 2b01         	cmp	r3, #0x1
  4273c2: d035         	beq	0x427430 <PeerNetworkBridgeGP::updateNetwork(float)+0x30c> @ imm = #0x6a
  4273c4: e03d         	b	0x427442 <PeerNetworkBridgeGP::updateNetwork(float)+0x31e> @ imm = #0x7a
  4273c6: f750 fbbb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaf88a
  4273ca: 4604         	mov	r4, r0
  4273cc: aa06         	add	r2, sp, #0x18
  4273ce: ab0f         	add	r3, sp, #0x3c
  4273d0: 3304         	adds	r3, #0x4
  4273d2: 4610         	mov	r0, r2
  4273d4: 4619         	mov	r1, r3
  4273d6: f38f f887    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f10e
  4273da: aa07         	add	r2, sp, #0x1c
  4273dc: ab0f         	add	r3, sp, #0x3c
  4273de: 3308         	adds	r3, #0x8
  4273e0: 4610         	mov	r0, r2
  4273e2: 4619         	mov	r1, r3
  4273e4: f38f f880    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f100
  4273e8: aa06         	add	r2, sp, #0x18
  4273ea: ab07         	add	r3, sp, #0x1c
  4273ec: 4620         	mov	r0, r4
  4273ee: 4611         	mov	r1, r2
  4273f0: 461a         	mov	r2, r3
  4273f2: f752 ff9f    	bl	0x37a334 <NetworkManager::addPlayer(std::string, std::string)> @ imm = #-0xad0c2
  4273f6: ab07         	add	r3, sp, #0x1c
  4273f8: 4618         	mov	r0, r3
  4273fa: f38e fa8b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e516
  4273fe: ab06         	add	r3, sp, #0x18
  427400: 4618         	mov	r0, r3
  427402: f38e fa87    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e50e
  427406: e01c         	b	0x427442 <PeerNetworkBridgeGP::updateNetwork(float)+0x31e> @ imm = #0x38
  427408: f750 fb9a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaf8cc
  42740c: 4604         	mov	r4, r0
  42740e: aa08         	add	r2, sp, #0x20
  427410: ab0f         	add	r3, sp, #0x3c
  427412: 3304         	adds	r3, #0x4
  427414: 4610         	mov	r0, r2
  427416: 4619         	mov	r1, r3
  427418: f38f f866    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38f0cc
  42741c: ab08         	add	r3, sp, #0x20
  42741e: 4620         	mov	r0, r4
  427420: 4619         	mov	r1, r3
  427422: f752 ffe1    	bl	0x37a3e8 <NetworkManager::removePlayer(std::string)> @ imm = #-0xad03e
  427426: ab08         	add	r3, sp, #0x20
  427428: 4618         	mov	r0, r3
  42742a: f38e fa73    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e4e6
  42742e: e008         	b	0x427442 <PeerNetworkBridgeGP::updateNetwork(float)+0x31e> @ imm = #0x10
  427430: ab0f         	add	r3, sp, #0x3c
  427432: 3304         	adds	r3, #0x4
  427434: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x427530 <PeerNetworkBridgeGP::updateNetwork(float)+0x40c>
  427436: 447a         	add	r2, pc
  427438: 4610         	mov	r0, r2
  42743a: 4619         	mov	r1, r3
  42743c: f38f f8ba    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x38f174
  427440: bf00         	nop
  427442: ab0f         	add	r3, sp, #0x3c
  427444: 4618         	mov	r0, r3
  427446: f703 fbcf    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0xfc862
  42744a: ab04         	add	r3, sp, #0x10
  42744c: 4618         	mov	r0, r3
  42744e: f70a f843    	bl	0x3314d8 <__gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>>::operator++()> @ imm = #-0xf5f7a
  427452: aa04         	add	r2, sp, #0x10
  427454: ab05         	add	r3, sp, #0x14
  427456: 4610         	mov	r0, r2
  427458: 4619         	mov	r1, r3
  42745a: f70a f827    	bl	0x3314ac <bool __gnu_cxx::operator!=<GPGSEventObject*, std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>>(__gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>> const&, __gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>> const&)> @ imm = #-0xf5fb2
  42745e: 4603         	mov	r3, r0
  427460: 2b00         	cmp	r3, #0x0
  427462: d19e         	bne	0x4273a2 <PeerNetworkBridgeGP::updateNetwork(float)+0x27e> @ imm = #-0xc4
  427464: ab0c         	add	r3, sp, #0x30
  427466: 4618         	mov	r0, r3
  427468: f704 fdba    	bl	0x32bfe0 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::~vector()> @ imm = #-0xfb48c
  42746c: ab12         	add	r3, sp, #0x48
  42746e: 4618         	mov	r0, r3
  427470: f702 f980    	bl	0x329774 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::~map()> @ imm = #-0xfdd00
  427474: e053         	b	0x42751e <PeerNetworkBridgeGP::updateNetwork(float)+0x3fa> @ imm = #0xa6
  427476: ab0c         	add	r3, sp, #0x30
  427478: 4618         	mov	r0, r3
  42747a: f38e fa4b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e496
  42747e: e7ff         	b	0x427480 <PeerNetworkBridgeGP::updateNetwork(float)+0x35c> @ imm = #-0x2
  427480: ab06         	add	r3, sp, #0x18
  427482: 4618         	mov	r0, r3
  427484: f362 ffba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x362f74
  427488: ab12         	add	r3, sp, #0x48
  42748a: 4618         	mov	r0, r3
  42748c: f38e fa42    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e484
  427490: e7ff         	b	0x427492 <PeerNetworkBridgeGP::updateNetwork(float)+0x36e> @ imm = #-0x2
  427492: ab08         	add	r3, sp, #0x20
  427494: 4618         	mov	r0, r3
  427496: f362 ffb1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x362f62
  42749a: ab0f         	add	r3, sp, #0x3c
  42749c: 4618         	mov	r0, r3
  42749e: f38e fa39    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e472
  4274a2: e7ff         	b	0x4274a4 <PeerNetworkBridgeGP::updateNetwork(float)+0x380> @ imm = #-0x2
  4274a4: ab07         	add	r3, sp, #0x1c
  4274a6: 4618         	mov	r0, r3
  4274a8: f362 ffa8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x362f50
  4274ac: f360 fdfe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x360bfc
  4274b0: 4620         	mov	r0, r4
  4274b2: f360 fdf7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x360bee
  4274b6: e004         	b	0x4274c2 <PeerNetworkBridgeGP::updateNetwork(float)+0x39e> @ imm = #0x8
  4274b8: ab05         	add	r3, sp, #0x14
  4274ba: 4618         	mov	r0, r3
  4274bc: f38e fa2a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e454
  4274c0: e7ff         	b	0x4274c2 <PeerNetworkBridgeGP::updateNetwork(float)+0x39e> @ imm = #-0x2
  4274c2: ab0f         	add	r3, sp, #0x3c
  4274c4: 4618         	mov	r0, r3
  4274c6: f705 f88f    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #-0xfaee2
  4274ca: e7ff         	b	0x4274cc <PeerNetworkBridgeGP::updateNetwork(float)+0x3a8> @ imm = #-0x2
  4274cc: ab0c         	add	r3, sp, #0x30
  4274ce: 4618         	mov	r0, r3
  4274d0: f709 fc56    	bl	0x330d80 <std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>::~vector()> @ imm = #-0xf6754
  4274d4: e7ff         	b	0x4274d6 <PeerNetworkBridgeGP::updateNetwork(float)+0x3b2> @ imm = #-0x2
  4274d6: ab08         	add	r3, sp, #0x20
  4274d8: 4618         	mov	r0, r3
  4274da: f38e fa1b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e436
  4274de: e018         	b	0x427512 <PeerNetworkBridgeGP::updateNetwork(float)+0x3ee> @ imm = #0x30
  4274e0: ab07         	add	r3, sp, #0x1c
  4274e2: 4618         	mov	r0, r3
  4274e4: f38e fa16    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e42c
  4274e8: e7ff         	b	0x4274ea <PeerNetworkBridgeGP::updateNetwork(float)+0x3c6> @ imm = #-0x2
  4274ea: ab06         	add	r3, sp, #0x18
  4274ec: 4618         	mov	r0, r3
  4274ee: f38e fa11    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e422
  4274f2: e004         	b	0x4274fe <PeerNetworkBridgeGP::updateNetwork(float)+0x3da> @ imm = #0x8
  4274f4: ab08         	add	r3, sp, #0x20
  4274f6: 4618         	mov	r0, r3
  4274f8: f38e fa0c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38e418
  4274fc: e7ff         	b	0x4274fe <PeerNetworkBridgeGP::updateNetwork(float)+0x3da> @ imm = #-0x2
  4274fe: ab0f         	add	r3, sp, #0x3c
  427500: 4618         	mov	r0, r3
  427502: f703 fb71    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0xfc91e
  427506: e7ff         	b	0x427508 <PeerNetworkBridgeGP::updateNetwork(float)+0x3e4> @ imm = #-0x2
  427508: ab0c         	add	r3, sp, #0x30
  42750a: 4618         	mov	r0, r3
  42750c: f704 fd68    	bl	0x32bfe0 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::~vector()> @ imm = #-0xfb530
  427510: e7ff         	b	0x427512 <PeerNetworkBridgeGP::updateNetwork(float)+0x3ee> @ imm = #-0x2
  427512: ab12         	add	r3, sp, #0x48
  427514: 4618         	mov	r0, r3
  427516: f702 f92d    	bl	0x329774 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::~map()> @ imm = #-0xfdda6
  42751a: f360 fdc7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x360b8e
  42751e: b018         	add	sp, #0x60
  427520: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x427521); words below are literal-pool data ---
  427522: bf00         	nop
  427524: 59dc         	ldr	r4, [r3, r7]
  427526: 003b         	movs	r3, r7
  427528: 59da         	ldr	r2, [r3, r7]
  42752a: 003b         	movs	r3, r7
  42752c: 59a4         	ldr	r4, [r4, r6]
  42752e: 003b         	movs	r3, r7
  427530: bcc6         	pop	{r1, r2, r6, r7}
  427532: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeGP::isPlayerAuthenticated
//      file offset 0x427534 (= ELF address; Ghidra 0x437534), 20 bytes, Thumb-2
  427534: b500         	push	{lr}
  427536: b083         	sub	sp, #0xc
  427538: 9001         	str	r0, [sp, #0x4]
  42753a: f70b fa6f    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0xf4b22
  42753e: 4603         	mov	r3, r0
  427540: 4618         	mov	r0, r3
  427542: b003         	add	sp, #0xc
  427544: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeGP::getStatusText
//      file offset 0x427548 (= ELF address; Ghidra 0x437548), 32 bytes, Thumb-2
  427548: b500         	push	{lr}
  42754a: b083         	sub	sp, #0xc
  42754c: 9001         	str	r0, [sp, #0x4]
  42754e: 9100         	str	r1, [sp]
  427550: f703 f862    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0xfcf3c
  427554: 4603         	mov	r3, r0
  427556: 9a01         	ldr	r2, [sp, #0x4]
  427558: 4610         	mov	r0, r2
  42755a: 4619         	mov	r1, r3
  42755c: f704 fc28    	bl	0x32bdb0 <GPGSRealtimeMultiplayerManager::getStatus()> @ imm = #-0xfb7b0
  427560: 9801         	ldr	r0, [sp, #0x4]
  427562: b003         	add	sp, #0xc
  427564: f85d fb04    	ldr	pc, [sp], #4
