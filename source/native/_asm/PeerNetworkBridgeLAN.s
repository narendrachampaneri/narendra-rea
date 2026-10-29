// PeerNetworkBridgeLAN: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 29 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PeerNetworkBridgeLAN.cpp

// ==== PeerNetworkBridgeLAN::PeerNetworkBridgeLAN
//      file offset 0x4285cc (= ELF address; Ghidra 0x4385cc), 108 bytes, Thumb-2
  4285cc: b510         	push	{r4, lr}
  4285ce: b082         	sub	sp, #0x8
  4285d0: 9001         	str	r0, [sp, #0x4]
  4285d2: 4c16         	ldr	r4, [pc, #0x58]         @ 0x42862c <PeerNetworkBridgeLAN::PeerNetworkBridgeLAN()+0x60>
  4285d4: 447c         	add	r4, pc
  4285d6: 9b01         	ldr	r3, [sp, #0x4]
  4285d8: 4618         	mov	r0, r3
  4285da: f7fe f9db    	bl	0x426994 <PeerNetworkInterface::PeerNetworkInterface()> @ imm = #-0x1c4a
  4285de: 9b01         	ldr	r3, [sp, #0x4]
  4285e0: 3304         	adds	r3, #0x4
  4285e2: 4618         	mov	r0, r3
  4285e4: f16f fbc2    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x16f784
  4285e8: 9b01         	ldr	r3, [sp, #0x4]
  4285ea: 4a11         	ldr	r2, [pc, #0x44]         @ 0x428630 <PeerNetworkBridgeLAN::PeerNetworkBridgeLAN()+0x64>
  4285ec: 58a2         	ldr	r2, [r4, r2]
  4285ee: 3208         	adds	r2, #0x8
  4285f0: 601a         	str	r2, [r3]
  4285f2: 9b01         	ldr	r3, [sp, #0x4]
  4285f4: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x428630 <PeerNetworkBridgeLAN::PeerNetworkBridgeLAN()+0x64>
  4285f6: 58a2         	ldr	r2, [r4, r2]
  4285f8: 3278         	adds	r2, #0x78
  4285fa: 605a         	str	r2, [r3, #0x4]
  4285fc: f74f faa0    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb0ac0
  428600: 4603         	mov	r3, r0
  428602: 4618         	mov	r0, r3
  428604: f74f ff36    	bl	0x378474 <NetworkManager::getRakNetInstance()> @ imm = #-0xb0194
  428608: 4603         	mov	r3, r0
  42860a: 461a         	mov	r2, r3
  42860c: 4b09         	ldr	r3, [pc, #0x24]         @ 0x428634 <PeerNetworkBridgeLAN::PeerNetworkBridgeLAN()+0x68>
  42860e: 58e3         	ldr	r3, [r4, r3]
  428610: 601a         	str	r2, [r3]
  428612: 9b01         	ldr	r3, [sp, #0x4]
  428614: e006         	b	0x428624 <PeerNetworkBridgeLAN::PeerNetworkBridgeLAN()+0x58> @ imm = #0xc
  428616: 9b01         	ldr	r3, [sp, #0x4]
  428618: 3304         	adds	r3, #0x4
  42861a: 4618         	mov	r0, r3
  42861c: f16f fbd8    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x16f7b0
  428620: f35f fd44    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35fa88
  428624: 4618         	mov	r0, r3
  428626: b002         	add	sp, #0x8
  428628: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x428629); words below are literal-pool data ---
  42862a: bf00         	nop
  42862c: a434         	adr	r4, #208 <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()+0x2c>
  42862e: 0050         	lsls	r0, r2, #0x1
  428630: e024         	b	0x42867c <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()+0x44> @ imm = #0x48
  428632: ffff e028    	<unknown>
  428636: ffff b500    	<unknown>

// ==== PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN
//      file offset 0x428638 (= ELF address; Ghidra 0x438638), 72 bytes, Thumb-2
  428638: b500         	push	{lr}
  42863a: b083         	sub	sp, #0xc
  42863c: 9001         	str	r0, [sp, #0x4]
  42863e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x428678 <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()+0x40>
  428640: 447b         	add	r3, pc
  428642: 9a01         	ldr	r2, [sp, #0x4]
  428644: 490d         	ldr	r1, [pc, #0x34]         @ 0x42867c <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()+0x44>
  428646: 5859         	ldr	r1, [r3, r1]
  428648: 3108         	adds	r1, #0x8
  42864a: 6011         	str	r1, [r2]
  42864c: 9a01         	ldr	r2, [sp, #0x4]
  42864e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x42867c <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()+0x44>
  428650: 585b         	ldr	r3, [r3, r1]
  428652: 3378         	adds	r3, #0x78
  428654: 6053         	str	r3, [r2, #0x4]
  428656: 9b01         	ldr	r3, [sp, #0x4]
  428658: 3304         	adds	r3, #0x4
  42865a: 4618         	mov	r0, r3
  42865c: f16f fbb8    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x16f770
  428660: 2300         	movs	r3, #0x0
  428662: 2b00         	cmp	r3, #0x0
  428664: d002         	beq	0x42866c <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()+0x34> @ imm = #0x4
  428666: 9801         	ldr	r0, [sp, #0x4]
  428668: f35f fd1c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35fa38
  42866c: 9b01         	ldr	r3, [sp, #0x4]
  42866e: 4618         	mov	r0, r3
  428670: b003         	add	sp, #0xc
  428672: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428675); words below are literal-pool data ---
  428676: bf00         	nop
  428678: a3c8         	adr	r3, #800 <PeerNetworkBridgeLAN::isOnline()+0x4>
  42867a: 0050         	lsls	r0, r2, #0x1
  42867c: e024         	b	0x4286c8 <PeerNetworkBridgeLAN::authenticateLocalPlayer()+0x4> @ imm = #0x48
  42867e: ffff f1a0    	<unknown>

// ==== PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN
//      file offset 0x428680 (= ELF address; Ghidra 0x438680), 8 bytes, Thumb-2
  428680: f1a0 0004    	sub.w	r0, r0, #0x4
  428684: f7ff bfd8    	b.w	0x428638 <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()> @ imm = #-0x50

// ==== PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN
//      file offset 0x428688 (= ELF address; Ghidra 0x438688), 28 bytes, Thumb-2
  428688: b500         	push	{lr}
  42868a: b083         	sub	sp, #0xc
  42868c: 9001         	str	r0, [sp, #0x4]
  42868e: 9801         	ldr	r0, [sp, #0x4]
  428690: f7ff ffd2    	bl	0x428638 <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()> @ imm = #-0x5c
  428694: 9801         	ldr	r0, [sp, #0x4]
  428696: f35f fd05    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35fa0a
  42869a: 9b01         	ldr	r3, [sp, #0x4]
  42869c: 4618         	mov	r0, r3
  42869e: b003         	add	sp, #0xc
  4286a0: f85d fb04    	ldr	pc, [sp], #4

// ==== PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN
//      file offset 0x4286a4 (= ELF address; Ghidra 0x4386a4), 8 bytes, Thumb-2
  4286a4: f1a0 0004    	sub.w	r0, r0, #0x4
  4286a8: f7ff bfee    	b.w	0x428688 <PeerNetworkBridgeLAN::~PeerNetworkBridgeLAN()> @ imm = #-0x24

// ==== PeerNetworkBridgeLAN::isPlayerAuthenticated
//      file offset 0x4286ac (= ELF address; Ghidra 0x4386ac), 12 bytes, Thumb-2
  4286ac: b082         	sub	sp, #0x8
  4286ae: 9001         	str	r0, [sp, #0x4]
  4286b0: 2301         	movs	r3, #0x1
  4286b2: 4618         	mov	r0, r3
  4286b4: b002         	add	sp, #0x8
  4286b6: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::isPlayerPlatformAuthenticated
//      file offset 0x4286b8 (= ELF address; Ghidra 0x4386b8), 12 bytes, Thumb-2
  4286b8: b082         	sub	sp, #0x8
  4286ba: 9001         	str	r0, [sp, #0x4]
  4286bc: 2301         	movs	r3, #0x1
  4286be: 4618         	mov	r0, r3
  4286c0: b002         	add	sp, #0x8
  4286c2: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::authenticateLocalPlayer
//      file offset 0x4286c4 (= ELF address; Ghidra 0x4386c4), 8 bytes, Thumb-2
  4286c4: b082         	sub	sp, #0x8
  4286c6: 9001         	str	r0, [sp, #0x4]
  4286c8: b002         	add	sp, #0x8
  4286ca: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::unauthenticateLocalPlayer
//      file offset 0x4286cc (= ELF address; Ghidra 0x4386cc), 8 bytes, Thumb-2
  4286cc: b082         	sub	sp, #0x8
  4286ce: 9001         	str	r0, [sp, #0x4]
  4286d0: b002         	add	sp, #0x8
  4286d2: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::refreshPlayersList
//      file offset 0x4286d4 (= ELF address; Ghidra 0x4386d4), 8 bytes, Thumb-2
  4286d4: b082         	sub	sp, #0x8
  4286d6: 9001         	str	r0, [sp, #0x4]
  4286d8: b002         	add	sp, #0x8
  4286da: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::getPlayerTimeout
//      file offset 0x4286dc (= ELF address; Ghidra 0x4386dc), 18 bytes, Thumb-2
  4286dc: b082         	sub	sp, #0x8
  4286de: 9001         	str	r0, [sp, #0x4]
  4286e0: f04f 0300    	mov.w	r3, #0x0
  4286e4: f2c4 13f0    	movt	r3, #0x41f0
  4286e8: 4618         	mov	r0, r3
  4286ea: b002         	add	sp, #0x8
  4286ec: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::isMatchActive
//      file offset 0x4286f0 (= ELF address; Ghidra 0x4386f0), 12 bytes, Thumb-2
  4286f0: b082         	sub	sp, #0x8
  4286f2: 9001         	str	r0, [sp, #0x4]
  4286f4: 2300         	movs	r3, #0x0
  4286f6: 4618         	mov	r0, r3
  4286f8: b002         	add	sp, #0x8
  4286fa: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::getHostID
//      file offset 0x4286fc (= ELF address; Ghidra 0x4386fc), 68 bytes, Thumb-2
  4286fc: b500         	push	{lr}
  4286fe: b085         	sub	sp, #0x14
  428700: 9001         	str	r0, [sp, #0x4]
  428702: 9100         	str	r1, [sp]
  428704: ab03         	add	r3, sp, #0xc
  428706: 4618         	mov	r0, r3
  428708: f361 fe74    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x361ce8
  42870c: ab03         	add	r3, sp, #0xc
  42870e: 9801         	ldr	r0, [sp, #0x4]
  428710: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x42873c <PeerNetworkBridgeLAN::getHostID()+0x40>
  428712: 447a         	add	r2, pc
  428714: 4611         	mov	r1, r2
  428716: 461a         	mov	r2, r3
  428718: f38e f9a2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38e344
  42871c: ab03         	add	r3, sp, #0xc
  42871e: 4618         	mov	r0, r3
  428720: f361 fe6c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x361cd8
  428724: e005         	b	0x428732 <PeerNetworkBridgeLAN::getHostID()+0x36> @ imm = #0xa
  428726: ab03         	add	r3, sp, #0xc
  428728: 4618         	mov	r0, r3
  42872a: f361 fe67    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x361cce
  42872e: f35f fcbd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f97a
  428732: 9801         	ldr	r0, [sp, #0x4]
  428734: b005         	add	sp, #0x14
  428736: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428739); words below are literal-pool data ---
  42873a: bf00         	nop
  42873c: 47d2         	<unknown>
  42873e: 003b         	movs	r3, r7

// ==== PeerNetworkBridgeLAN::isOnline
//      file offset 0x428740 (= ELF address; Ghidra 0x438740), 40 bytes, Thumb-2
  428740: b500         	push	{lr}
  428742: b083         	sub	sp, #0xc
  428744: 9001         	str	r0, [sp, #0x4]
  428746: 4a06         	ldr	r2, [pc, #0x18]         @ 0x428760 <PeerNetworkBridgeLAN::isOnline()+0x20>
  428748: 447a         	add	r2, pc
  42874a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x428764 <PeerNetworkBridgeLAN::isOnline()+0x24>
  42874c: 58d3         	ldr	r3, [r2, r3]
  42874e: 681b         	ldr	r3, [r3]
  428750: 4618         	mov	r0, r3
  428752: f79a f8e5    	bl	0x3c2920 <RakNetDelegate::isOnline()> @ imm = #-0x65e36
  428756: 4603         	mov	r3, r0
  428758: 4618         	mov	r0, r3
  42875a: b003         	add	sp, #0xc
  42875c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42875f); words below are literal-pool data ---
  428760: a2c0         	adr	r2, #768 <PeerNetworkBridgeLAN::findSessions()+0x1c>
  428762: 0050         	lsls	r0, r2, #0x1
  428764: e028         	b	0x4287b8 <PeerNetworkBridgeLAN::sendDataToPeer(void const*, int, std::string, bool)+0x10> @ imm = #0x50
  428766: ffff b082    	<unknown>

// ==== PeerNetworkBridgeLAN::getPeerCount
//      file offset 0x428768 (= ELF address; Ghidra 0x438768), 12 bytes, Thumb-2
  428768: b082         	sub	sp, #0x8
  42876a: 9001         	str	r0, [sp, #0x4]
  42876c: 2300         	movs	r3, #0x0
  42876e: 4618         	mov	r0, r3
  428770: b002         	add	sp, #0x8
  428772: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::sendData
//      file offset 0x428774 (= ELF address; Ghidra 0x438774), 52 bytes, Thumb-2
  428774: b500         	push	{lr}
  428776: b085         	sub	sp, #0x14
  428778: 9003         	str	r0, [sp, #0xc]
  42877a: 9102         	str	r1, [sp, #0x8]
  42877c: 9201         	str	r2, [sp, #0x4]
  42877e: f88d 3003    	strb.w	r3, [sp, #0x3]
  428782: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x4287a0 <PeerNetworkBridgeLAN::sendData(void const*, int, bool)+0x2c>
  428784: 447a         	add	r2, pc
  428786: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x4287a4 <PeerNetworkBridgeLAN::sendData(void const*, int, bool)+0x30>
  428788: 58d3         	ldr	r3, [r2, r3]
  42878a: 681a         	ldr	r2, [r3]
  42878c: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  428790: 4610         	mov	r0, r2
  428792: 9902         	ldr	r1, [sp, #0x8]
  428794: 9a01         	ldr	r2, [sp, #0x4]
  428796: f799 fc95    	bl	0x3c20c4 <RakNetDelegate::sendData(void const*, int, bool)> @ imm = #-0x666d6
  42879a: b005         	add	sp, #0x14
  42879c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42879f); words below are literal-pool data ---
  4287a0: a284         	adr	r2, #528 <PeerNetworkBridgeLAN::findSessions()+0x20>
  4287a2: 0050         	lsls	r0, r2, #0x1
  4287a4: e028         	b	0x4287f8 <PeerNetworkBridgeLAN::sendDataToPeer(void const*, int, std::string, bool)+0x50> @ imm = #0x50
  4287a6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PeerNetworkBridgeLAN::sendDataToPeer
//      file offset 0x4287a8 (= ELF address; Ghidra 0x4387a8), 84 bytes, Thumb-2
  4287a8: b510         	push	{r4, lr}
  4287aa: b088         	sub	sp, #0x20
  4287ac: 9005         	str	r0, [sp, #0x14]
  4287ae: 9104         	str	r1, [sp, #0x10]
  4287b0: 9203         	str	r2, [sp, #0xc]
  4287b2: 9302         	str	r3, [sp, #0x8]
  4287b4: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x4287f4 <PeerNetworkBridgeLAN::sendDataToPeer(void const*, int, std::string, bool)+0x4c>
  4287b6: 447a         	add	r2, pc
  4287b8: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x4287f8 <PeerNetworkBridgeLAN::sendDataToPeer(void const*, int, std::string, bool)+0x50>
  4287ba: 58d3         	ldr	r3, [r2, r3]
  4287bc: 681c         	ldr	r4, [r3]
  4287be: ab07         	add	r3, sp, #0x1c
  4287c0: 4618         	mov	r0, r3
  4287c2: 9902         	ldr	r1, [sp, #0x8]
  4287c4: f38d fe90    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38dd20
  4287c8: ab07         	add	r3, sp, #0x1c
  4287ca: f89d 2028    	ldrb.w	r2, [sp, #0x28]
  4287ce: 9200         	str	r2, [sp]
  4287d0: 4620         	mov	r0, r4
  4287d2: 9904         	ldr	r1, [sp, #0x10]
  4287d4: 9a03         	ldr	r2, [sp, #0xc]
  4287d6: f799 fd09    	bl	0x3c21ec <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)> @ imm = #-0x665ee
  4287da: ab07         	add	r3, sp, #0x1c
  4287dc: 4618         	mov	r0, r3
  4287de: f38d f899    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38d132
  4287e2: e005         	b	0x4287f0 <PeerNetworkBridgeLAN::sendDataToPeer(void const*, int, std::string, bool)+0x48> @ imm = #0xa
  4287e4: ab07         	add	r3, sp, #0x1c
  4287e6: 4618         	mov	r0, r3
  4287e8: f38d f894    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38d128
  4287ec: f35f fc5e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f8bc
  4287f0: b008         	add	sp, #0x20
  4287f2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4287f3); words below are literal-pool data ---
  4287f4: a252         	adr	r2, #328 <PeerNetworkBridgeLAN::findSessions()+0x42>
  4287f6: 0050         	lsls	r0, r2, #0x1
  4287f8: e028         	b	0x42884c <PeerNetworkBridgeLAN::findSessions()+0x44> @ imm = #0x50
  4287fa: ffff b082    	<unknown>

// ==== PeerNetworkBridgeLAN::getPlayersOnline
//      file offset 0x4287fc (= ELF address; Ghidra 0x4387fc), 12 bytes, Thumb-2
  4287fc: b082         	sub	sp, #0x8
  4287fe: 9001         	str	r0, [sp, #0x4]
  428800: 2300         	movs	r3, #0x0
  428802: 4618         	mov	r0, r3
  428804: b002         	add	sp, #0x8
  428806: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::findSessions
//      file offset 0x428808 (= ELF address; Ghidra 0x438808), 76 bytes, Thumb-2
  428808: b500         	push	{lr}
  42880a: b083         	sub	sp, #0xc
  42880c: 9001         	str	r0, [sp, #0x4]
  42880e: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x428844 <PeerNetworkBridgeLAN::findSessions()+0x3c>
  428810: 447b         	add	r3, pc
  428812: 681b         	ldr	r3, [r3]
  428814: 2b00         	cmp	r3, #0x0
  428816: d10c         	bne	0x428832 <PeerNetworkBridgeLAN::findSessions()+0x2a> @ imm = #0x18
  428818: f7fe ffe2    	bl	0x4277e0 <RakNetLAN::create()> @ imm = #-0x103c
  42881c: 4603         	mov	r3, r0
  42881e: 461a         	mov	r2, r3
  428820: 4b09         	ldr	r3, [pc, #0x24]         @ 0x428848 <PeerNetworkBridgeLAN::findSessions()+0x40>
  428822: 447b         	add	r3, pc
  428824: 601a         	str	r2, [r3]
  428826: 4b09         	ldr	r3, [pc, #0x24]         @ 0x42884c <PeerNetworkBridgeLAN::findSessions()+0x44>
  428828: 447b         	add	r3, pc
  42882a: 681b         	ldr	r3, [r3]
  42882c: 4618         	mov	r0, r3
  42882e: f16f fb5b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x16f6b6
  428832: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x428850 <PeerNetworkBridgeLAN::findSessions()+0x48>
  428834: 447b         	add	r3, pc
  428836: 681b         	ldr	r3, [r3]
  428838: 4618         	mov	r0, r3
  42883a: f79c ff55    	bl	0x3c56e8 <RakNetLAN::findSessions()> @ imm = #-0x63156
  42883e: b003         	add	sp, #0xc
  428840: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428843); words below are literal-pool data ---
  428844: a948         	add	r1, sp, #0x120
  428846: 0051         	lsls	r1, r2, #0x1
  428848: a936         	add	r1, sp, #0xd8
  42884a: 0051         	lsls	r1, r2, #0x1
  42884c: a930         	add	r1, sp, #0xc0
  42884e: 0051         	lsls	r1, r2, #0x1
  428850: a924         	add	r1, sp, #0x90
  428852: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeLAN::hostSession
//      file offset 0x428854 (= ELF address; Ghidra 0x438854), 228 bytes, Thumb-2
  428854: b530         	push	{r4, r5, lr}
  428856: b087         	sub	sp, #0x1c
  428858: 9003         	str	r0, [sp, #0xc]
  42885a: 9102         	str	r1, [sp, #0x8]
  42885c: 9201         	str	r2, [sp, #0x4]
  42885e: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x428918 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xc4>
  428860: 447c         	add	r4, pc
  428862: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x42891c <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xc8>
  428864: 447b         	add	r3, pc
  428866: 681b         	ldr	r3, [r3]
  428868: 2b00         	cmp	r3, #0x0
  42886a: d10c         	bne	0x428886 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0x32> @ imm = #0x18
  42886c: f7fe ffb8    	bl	0x4277e0 <RakNetLAN::create()> @ imm = #-0x1090
  428870: 4603         	mov	r3, r0
  428872: 461a         	mov	r2, r3
  428874: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x428920 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xcc>
  428876: 447b         	add	r3, pc
  428878: 601a         	str	r2, [r3]
  42887a: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x428924 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xd0>
  42887c: 447b         	add	r3, pc
  42887e: 681b         	ldr	r3, [r3]
  428880: 4618         	mov	r0, r3
  428882: f16f fb31    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x16f662
  428886: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x428928 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xd4>
  428888: 447b         	add	r3, pc
  42888a: 681d         	ldr	r5, [r3]
  42888c: ab05         	add	r3, sp, #0x14
  42888e: 4618         	mov	r0, r3
  428890: 9901         	ldr	r1, [sp, #0x4]
  428892: f38d fe29    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38dc52
  428896: ab05         	add	r3, sp, #0x14
  428898: 4628         	mov	r0, r5
  42889a: 9902         	ldr	r1, [sp, #0x8]
  42889c: 461a         	mov	r2, r3
  42889e: f79c fec1    	bl	0x3c5624 <RakNetLAN::hostSession(int, std::string)> @ imm = #-0x6327e
  4288a2: ab05         	add	r3, sp, #0x14
  4288a4: 4618         	mov	r0, r3
  4288a6: f38d f835    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38d06a
  4288aa: 4b20         	ldr	r3, [pc, #0x80]         @ 0x42892c <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xd8>
  4288ac: 58e3         	ldr	r3, [r4, r3]
  4288ae: 681c         	ldr	r4, [r3]
  4288b0: ab04         	add	r3, sp, #0x10
  4288b2: 4618         	mov	r0, r3
  4288b4: f361 fd9e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x361b3c
  4288b8: aa05         	add	r2, sp, #0x14
  4288ba: ab04         	add	r3, sp, #0x10
  4288bc: 4610         	mov	r0, r2
  4288be: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x428930 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xdc>
  4288c0: 447a         	add	r2, pc
  4288c2: 4611         	mov	r1, r2
  4288c4: 461a         	mov	r2, r3
  4288c6: f38e f8cb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38e196
  4288ca: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x428934 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xe0>
  4288cc: 447b         	add	r3, pc
  4288ce: 681b         	ldr	r3, [r3]
  4288d0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  4288d4: aa05         	add	r2, sp, #0x14
  4288d6: 4620         	mov	r0, r4
  4288d8: 4611         	mov	r1, r2
  4288da: 461a         	mov	r2, r3
  4288dc: f797 ff84    	bl	0x3c07e8 <RakNetDelegate::connectToLANServer(std::string, int)> @ imm = #-0x680f8
  4288e0: ab05         	add	r3, sp, #0x14
  4288e2: 4618         	mov	r0, r3
  4288e4: f38d f816    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38d02c
  4288e8: ab04         	add	r3, sp, #0x10
  4288ea: 4618         	mov	r0, r3
  4288ec: f361 fd86    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x361b0c
  4288f0: e010         	b	0x428914 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xc0> @ imm = #0x20
  4288f2: ab05         	add	r3, sp, #0x14
  4288f4: 4618         	mov	r0, r3
  4288f6: f38d f80d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38d01a
  4288fa: f35f fbd7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f7ae
  4288fe: ab05         	add	r3, sp, #0x14
  428900: 4618         	mov	r0, r3
  428902: f38d f807    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38d00e
  428906: e7ff         	b	0x428908 <PeerNetworkBridgeLAN::hostSession(int, std::string)+0xb4> @ imm = #-0x2
  428908: ab04         	add	r3, sp, #0x10
  42890a: 4618         	mov	r0, r3
  42890c: f361 fd76    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x361aec
  428910: f35f fbcc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f798
  428914: b007         	add	sp, #0x1c
  428916: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x428917); words below are literal-pool data ---
  428918: a1a8         	adr	r1, #672 <PeerNetworkBridgeLAN::joinSession(std::string)+0x8c>
  42891a: 0050         	lsls	r0, r2, #0x1
  42891c: a8f4         	add	r0, sp, #0x3d0
  42891e: 0051         	lsls	r1, r2, #0x1
  428920: a8e2         	add	r0, sp, #0x388
  428922: 0051         	lsls	r1, r2, #0x1
  428924: a8dc         	add	r0, sp, #0x370
  428926: 0051         	lsls	r1, r2, #0x1
  428928: a8d0         	add	r0, sp, #0x340
  42892a: 0051         	lsls	r1, r2, #0x1
  42892c: e028         	b	0x428980 <PeerNetworkBridgeLAN::joinSession(std::string)+0x48> @ imm = #0x50
  42892e: ffff 4628    	<unknown>
  428932: 003b         	movs	r3, r7
  428934: a88c         	add	r0, sp, #0x230
  428936: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeLAN::joinSession
//      file offset 0x428938 (= ELF address; Ghidra 0x438938), 200 bytes, Thumb-2
  428938: b510         	push	{r4, lr}
  42893a: b086         	sub	sp, #0x18
  42893c: 9001         	str	r0, [sp, #0x4]
  42893e: 9100         	str	r1, [sp]
  428940: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x4289f0 <PeerNetworkBridgeLAN::joinSession(std::string)+0xb8>
  428942: 447c         	add	r4, pc
  428944: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x4289f4 <PeerNetworkBridgeLAN::joinSession(std::string)+0xbc>
  428946: 447b         	add	r3, pc
  428948: 681b         	ldr	r3, [r3]
  42894a: 4618         	mov	r0, r3
  42894c: f79d f9a8    	bl	0x3c5ca0 <RakNetLAN::shutdown()> @ imm = #-0x62cb0
  428950: ab02         	add	r3, sp, #0x8
  428952: 4618         	mov	r0, r3
  428954: 9900         	ldr	r1, [sp]
  428956: f38d fdc7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38db8e
  42895a: aa03         	add	r2, sp, #0xc
  42895c: ab02         	add	r3, sp, #0x8
  42895e: 4610         	mov	r0, r2
  428960: 4619         	mov	r1, r3
  428962: 4b25         	ldr	r3, [pc, #0x94]         @ 0x4289f8 <PeerNetworkBridgeLAN::joinSession(std::string)+0xc0>
  428964: 447b         	add	r3, pc
  428966: 461a         	mov	r2, r3
  428968: f7ff fadc    	bl	0x427f24 <RakNetLAN::create()+0x744> @ imm = #-0xa48
  42896c: ab02         	add	r3, sp, #0x8
  42896e: 4618         	mov	r0, r3
  428970: f38c ffd0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38cfa0
  428974: 4b21         	ldr	r3, [pc, #0x84]         @ 0x4289fc <PeerNetworkBridgeLAN::joinSession(std::string)+0xc4>
  428976: 58e3         	ldr	r3, [r4, r3]
  428978: 681c         	ldr	r4, [r3]
  42897a: ab03         	add	r3, sp, #0xc
  42897c: 4618         	mov	r0, r3
  42897e: 2100         	movs	r1, #0x0
  428980: f723 fdb4    	bl	0x34c4ec <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)> @ imm = #-0xdc498
  428984: 4603         	mov	r3, r0
  428986: aa02         	add	r2, sp, #0x8
  428988: 4610         	mov	r0, r2
  42898a: 4619         	mov	r1, r3
  42898c: f38d fdac    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x38db58
  428990: ab03         	add	r3, sp, #0xc
  428992: 4618         	mov	r0, r3
  428994: 2101         	movs	r1, #0x1
  428996: f723 fda9    	bl	0x34c4ec <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)> @ imm = #-0xdc4ae
  42899a: 4603         	mov	r3, r0
  42899c: 4618         	mov	r0, r3
  42899e: f38c fcaf    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38c95e
  4289a2: 4603         	mov	r3, r0
  4289a4: 4618         	mov	r0, r3
  4289a6: f6ad eb40    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0x152980
  4289aa: 4603         	mov	r3, r0
  4289ac: aa02         	add	r2, sp, #0x8
  4289ae: 4620         	mov	r0, r4
  4289b0: 4611         	mov	r1, r2
  4289b2: 461a         	mov	r2, r3
  4289b4: f797 ff18    	bl	0x3c07e8 <RakNetDelegate::connectToLANServer(std::string, int)> @ imm = #-0x681d0
  4289b8: ab02         	add	r3, sp, #0x8
  4289ba: 4618         	mov	r0, r3
  4289bc: f38c ffaa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38cf54
  4289c0: ab03         	add	r3, sp, #0xc
  4289c2: 4618         	mov	r0, r3
  4289c4: f6b3 fa58    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x14cb50
  4289c8: e010         	b	0x4289ec <PeerNetworkBridgeLAN::joinSession(std::string)+0xb4> @ imm = #0x20
  4289ca: ab02         	add	r3, sp, #0x8
  4289cc: 4618         	mov	r0, r3
  4289ce: f38c ffa1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38cf42
  4289d2: f35f fb6b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f6d6
  4289d6: ab02         	add	r3, sp, #0x8
  4289d8: 4618         	mov	r0, r3
  4289da: f38c ff9b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38cf36
  4289de: e7ff         	b	0x4289e0 <PeerNetworkBridgeLAN::joinSession(std::string)+0xa8> @ imm = #-0x2
  4289e0: ab03         	add	r3, sp, #0xc
  4289e2: 4618         	mov	r0, r3
  4289e4: f6b3 fa48    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x14cb70
  4289e8: f35f fb60    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f6c0
  4289ec: b006         	add	sp, #0x18
  4289ee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4289ef); words below are literal-pool data ---
  4289f0: a0c6         	adr	r0, #792 <PeerNetworkBridgeLAN::shutdown()+0x4a>
  4289f2: 0050         	lsls	r0, r2, #0x1
  4289f4: a812         	add	r0, sp, #0x48
  4289f6: 0051         	lsls	r1, r2, #0x1
  4289f8: 4590         	cmp	r8, r2
  4289fa: 003b         	movs	r3, r7
  4289fc: e028         	b	0x428a50 <PeerNetworkBridgeLAN::canSearch()+0x1c> @ imm = #0x50
  4289fe: ffff b084    	<unknown>

// ==== PeerNetworkBridgeLAN::addPlayersToMatch
//      file offset 0x428a00 (= ELF address; Ghidra 0x438a00), 18 bytes, Thumb-2
  428a00: b084         	sub	sp, #0x10
  428a02: 9003         	str	r0, [sp, #0xc]
  428a04: 9201         	str	r2, [sp, #0x4]
  428a06: 9300         	str	r3, [sp]
  428a08: 460b         	mov	r3, r1
  428a0a: f88d 300b    	strb.w	r3, [sp, #0xb]
  428a0e: b004         	add	sp, #0x10
  428a10: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::isSearching
//      file offset 0x428a14 (= ELF address; Ghidra 0x438a14), 32 bytes, Thumb-2
  428a14: b500         	push	{lr}
  428a16: b083         	sub	sp, #0xc
  428a18: 9001         	str	r0, [sp, #0x4]
  428a1a: 4b05         	ldr	r3, [pc, #0x14]         @ 0x428a30 <PeerNetworkBridgeLAN::isSearching()+0x1c>
  428a1c: 447b         	add	r3, pc
  428a1e: 681b         	ldr	r3, [r3]
  428a20: 4618         	mov	r0, r3
  428a22: f79d f999    	bl	0x3c5d58 <RakNetLAN::isSearching()> @ imm = #-0x62cce
  428a26: 4603         	mov	r3, r0
  428a28: 4618         	mov	r0, r3
  428a2a: b003         	add	sp, #0xc
  428a2c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428a2f); words below are literal-pool data ---
  428a30: a73c         	adr	r7, #240 <PeerNetworkBridgeLAN::shutdown()>
  428a32: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeLAN::canSearch
//      file offset 0x428a34 (= ELF address; Ghidra 0x438a34), 32 bytes, Thumb-2
  428a34: b500         	push	{lr}
  428a36: b083         	sub	sp, #0xc
  428a38: 9001         	str	r0, [sp, #0x4]
  428a3a: 4b05         	ldr	r3, [pc, #0x14]         @ 0x428a50 <PeerNetworkBridgeLAN::canSearch()+0x1c>
  428a3c: 447b         	add	r3, pc
  428a3e: 681b         	ldr	r3, [r3]
  428a40: 4618         	mov	r0, r3
  428a42: f79d f98f    	bl	0x3c5d64 <RakNetLAN::canSearch()> @ imm = #-0x62ce2
  428a46: 4603         	mov	r3, r0
  428a48: 4618         	mov	r0, r3
  428a4a: b003         	add	sp, #0xc
  428a4c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428a4f); words below are literal-pool data ---
  428a50: a71c         	adr	r7, #112 <PeerNetworkBridgeLAN::shutdown()>
  428a52: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeLAN::cancelSearch
//      file offset 0x428a54 (= ELF address; Ghidra 0x438a54), 28 bytes, Thumb-2
  428a54: b500         	push	{lr}
  428a56: b083         	sub	sp, #0xc
  428a58: 9001         	str	r0, [sp, #0x4]
  428a5a: 4b04         	ldr	r3, [pc, #0x10]         @ 0x428a6c <PeerNetworkBridgeLAN::cancelSearch()+0x18>
  428a5c: 447b         	add	r3, pc
  428a5e: 681b         	ldr	r3, [r3]
  428a60: 4618         	mov	r0, r3
  428a62: f79d f985    	bl	0x3c5d70 <RakNetLAN::cancelSearch()> @ imm = #-0x62cf6
  428a66: b003         	add	sp, #0xc
  428a68: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428a6b); words below are literal-pool data ---
  428a6c: a6fc         	adr	r6, #1008 <PeerNetworkBridgeLAN::getStatusText()+0x4c>
  428a6e: 0051         	lsls	r1, r2, #0x1

// ==== PeerNetworkBridgeLAN::shutdown
//      file offset 0x428a70 (= ELF address; Ghidra 0x438a70), 92 bytes, Thumb-2
  428a70: b510         	push	{r4, lr}
  428a72: b082         	sub	sp, #0x8
  428a74: 9001         	str	r0, [sp, #0x4]
  428a76: 4c0f         	ldr	r4, [pc, #0x3c]         @ 0x428ab4 <PeerNetworkBridgeLAN::shutdown()+0x44>
  428a78: 447c         	add	r4, pc
  428a7a: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x428ab8 <PeerNetworkBridgeLAN::shutdown()+0x48>
  428a7c: 447b         	add	r3, pc
  428a7e: 681b         	ldr	r3, [r3]
  428a80: 2b00         	cmp	r3, #0x0
  428a82: d00f         	beq	0x428aa4 <PeerNetworkBridgeLAN::shutdown()+0x34> @ imm = #0x1e
  428a84: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x428abc <PeerNetworkBridgeLAN::shutdown()+0x4c>
  428a86: 447b         	add	r3, pc
  428a88: 681b         	ldr	r3, [r3]
  428a8a: 4618         	mov	r0, r3
  428a8c: f79d f908    	bl	0x3c5ca0 <RakNetLAN::shutdown()> @ imm = #-0x62df0
  428a90: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x428ac0 <PeerNetworkBridgeLAN::shutdown()+0x50>
  428a92: 447b         	add	r3, pc
  428a94: 681b         	ldr	r3, [r3]
  428a96: 4618         	mov	r0, r3
  428a98: f16f fa0e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x16f41c
  428a9c: 4b09         	ldr	r3, [pc, #0x24]         @ 0x428ac4 <PeerNetworkBridgeLAN::shutdown()+0x54>
  428a9e: 447b         	add	r3, pc
  428aa0: 2200         	movs	r2, #0x0
  428aa2: 601a         	str	r2, [r3]
  428aa4: 4b08         	ldr	r3, [pc, #0x20]         @ 0x428ac8 <PeerNetworkBridgeLAN::shutdown()+0x58>
  428aa6: 58e3         	ldr	r3, [r4, r3]
  428aa8: 681b         	ldr	r3, [r3]
  428aaa: 4618         	mov	r0, r3
  428aac: f799 fcde    	bl	0x3c246c <RakNetDelegate::shutdown()> @ imm = #-0x66644
  428ab0: b002         	add	sp, #0x8
  428ab2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x428ab3); words below are literal-pool data ---
  428ab4: 9f90         	ldr	r7, [sp, #0x240]
  428ab6: 0050         	lsls	r0, r2, #0x1
  428ab8: a6dc         	adr	r6, #880 <PeerNetworkBridgeLAN::getStatusText()+0x78>
  428aba: 0051         	lsls	r1, r2, #0x1
  428abc: a6d2         	adr	r6, #840 <PeerNetworkBridgeLAN::getStatusText()+0x72>
  428abe: 0051         	lsls	r1, r2, #0x1
  428ac0: a6c6         	adr	r6, #792 <PeerNetworkBridgeLAN::getStatusText()+0x6a>
  428ac2: 0051         	lsls	r1, r2, #0x1
  428ac4: a6ba         	adr	r6, #744 <PeerNetworkBridgeLAN::getStatusText()+0x62>
  428ac6: 0051         	lsls	r1, r2, #0x1
  428ac8: e028         	b	0x428b1c <PeerNetworkBridgeLAN::updateNetwork(float)+0x44> @ imm = #0x50
  428aca: ffff b082    	<unknown>

// ==== PeerNetworkBridgeLAN::getPlayerCount
//      file offset 0x428acc (= ELF address; Ghidra 0x438acc), 12 bytes, Thumb-2
  428acc: b082         	sub	sp, #0x8
  428ace: 9001         	str	r0, [sp, #0x4]
  428ad0: 2300         	movs	r3, #0x0
  428ad2: 4618         	mov	r0, r3
  428ad4: b002         	add	sp, #0x8
  428ad6: 4770         	bx	lr

// ==== PeerNetworkBridgeLAN::updateNetwork
//      file offset 0x428ad8 (= ELF address; Ghidra 0x438ad8), 72 bytes, Thumb-2
  428ad8: b510         	push	{r4, lr}
  428ada: b082         	sub	sp, #0x8
  428adc: 9001         	str	r0, [sp, #0x4]
  428ade: 9100         	str	r1, [sp]
  428ae0: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x428b10 <PeerNetworkBridgeLAN::updateNetwork(float)+0x38>
  428ae2: 447c         	add	r4, pc
  428ae4: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x428b14 <PeerNetworkBridgeLAN::updateNetwork(float)+0x3c>
  428ae6: 447b         	add	r3, pc
  428ae8: 681b         	ldr	r3, [r3]
  428aea: 2b00         	cmp	r3, #0x0
  428aec: d006         	beq	0x428afc <PeerNetworkBridgeLAN::updateNetwork(float)+0x24> @ imm = #0xc
  428aee: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x428b18 <PeerNetworkBridgeLAN::updateNetwork(float)+0x40>
  428af0: 447b         	add	r3, pc
  428af2: 681b         	ldr	r3, [r3]
  428af4: 4618         	mov	r0, r3
  428af6: 9900         	ldr	r1, [sp]
  428af8: f79c ff7c    	bl	0x3c59f4 <RakNetLAN::updateNetwork(float)> @ imm = #-0x63108
  428afc: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x428b1c <PeerNetworkBridgeLAN::updateNetwork(float)+0x44>
  428afe: 58e3         	ldr	r3, [r4, r3]
  428b00: 681b         	ldr	r3, [r3]
  428b02: 4618         	mov	r0, r3
  428b04: 9900         	ldr	r1, [sp]
  428b06: f798 facf    	bl	0x3c10a8 <RakNetDelegate::updateLoop(float)> @ imm = #-0x67a62
  428b0a: b002         	add	sp, #0x8
  428b0c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x428b0d); words below are literal-pool data ---
  428b0e: bf00         	nop
  428b10: 9f26         	ldr	r7, [sp, #0x98]
  428b12: 0050         	lsls	r0, r2, #0x1
  428b14: a672         	adr	r6, #456 <PeerNetworkBridgeLAN::getStatusText()+0x6a>
  428b16: 0051         	lsls	r1, r2, #0x1
  428b18: a668         	adr	r6, #416 <PeerNetworkBridgeLAN::getStatusText()+0x64>
  428b1a: 0051         	lsls	r1, r2, #0x1
  428b1c: e028         	b	0x428b70 <PeerNetworkBridgeLAN::getStatusText()+0x50> @ imm = #0x50
  428b1e: ffff b500    	<unknown>

// ==== PeerNetworkBridgeLAN::getStatusText
//      file offset 0x428b20 (= ELF address; Ghidra 0x438b20), 68 bytes, Thumb-2
  428b20: b500         	push	{lr}
  428b22: b085         	sub	sp, #0x14
  428b24: 9001         	str	r0, [sp, #0x4]
  428b26: 9100         	str	r1, [sp]
  428b28: ab03         	add	r3, sp, #0xc
  428b2a: 4618         	mov	r0, r3
  428b2c: f361 fc62    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3618c4
  428b30: ab03         	add	r3, sp, #0xc
  428b32: 9801         	ldr	r0, [sp, #0x4]
  428b34: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x428b60 <PeerNetworkBridgeLAN::getStatusText()+0x40>
  428b36: 447a         	add	r2, pc
  428b38: 4611         	mov	r1, r2
  428b3a: 461a         	mov	r2, r3
  428b3c: f38d ff90    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38df20
  428b40: ab03         	add	r3, sp, #0xc
  428b42: 4618         	mov	r0, r3
  428b44: f361 fc5a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3618b4
  428b48: e005         	b	0x428b56 <PeerNetworkBridgeLAN::getStatusText()+0x36> @ imm = #0xa
  428b4a: ab03         	add	r3, sp, #0xc
  428b4c: 4618         	mov	r0, r3
  428b4e: f361 fc55    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3618aa
  428b52: f35f faab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35f556
  428b56: 9801         	ldr	r0, [sp, #0x4]
  428b58: b005         	add	sp, #0x14
  428b5a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x428b5d); words below are literal-pool data ---
  428b5e: bf00         	nop
  428b60: 43ae         	bics	r6, r5
  428b62: 003b         	movs	r3, r7
