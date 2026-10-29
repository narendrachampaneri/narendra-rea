// NetworkManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 130 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../NetworkManager.cpp

// ==== NetworkManager::NetworkManager
//      file offset 0x377538 (= ELF address; Ghidra 0x387538), 148 bytes, Thumb-2
  377538: b510         	push	{r4, lr}
  37753a: b082         	sub	sp, #0x8
  37753c: 9001         	str	r0, [sp, #0x4]
  37753e: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3775c4 <NetworkManager::NetworkManager()+0x8c>
  377540: 447c         	add	r4, pc
  377542: 9b01         	ldr	r3, [sp, #0x4]
  377544: 4618         	mov	r0, r3
  377546: f0bc fb71    	bl	0x433c2c <NetworkManagerBridge::NetworkManagerBridge()> @ imm = #0xbc6e2
  37754a: 9b01         	ldr	r3, [sp, #0x4]
  37754c: 3304         	adds	r3, #0x4
  37754e: 4618         	mov	r0, r3
  377550: f218 f872    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x2180e4
  377554: 9b01         	ldr	r3, [sp, #0x4]
  377556: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x3775c8 <NetworkManager::NetworkManager()+0x90>
  377558: 58a2         	ldr	r2, [r4, r2]
  37755a: 3208         	adds	r2, #0x8
  37755c: 601a         	str	r2, [r3]
  37755e: 9b01         	ldr	r3, [sp, #0x4]
  377560: 4a19         	ldr	r2, [pc, #0x64]         @ 0x3775c8 <NetworkManager::NetworkManager()+0x90>
  377562: 58a2         	ldr	r2, [r4, r2]
  377564: 321c         	adds	r2, #0x1c
  377566: 605a         	str	r2, [r3, #0x4]
  377568: 9b01         	ldr	r3, [sp, #0x4]
  37756a: 33f4         	adds	r3, #0xf4
  37756c: 4618         	mov	r0, r3
  37756e: f03d f61f    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x43dc3e
  377572: 9b01         	ldr	r3, [sp, #0x4]
  377574: 33f8         	adds	r3, #0xf8
  377576: 4618         	mov	r0, r3
  377578: f03d f61a    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x43dc34
  37757c: 9b01         	ldr	r3, [sp, #0x4]
  37757e: f503 7394    	add.w	r3, r3, #0x128
  377582: 4618         	mov	r0, r3
  377584: f03d f614    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x43dc28
  377588: 9b01         	ldr	r3, [sp, #0x4]
  37758a: e017         	b	0x3775bc <NetworkManager::NetworkManager()+0x84> @ imm = #0x2e
  37758c: 9b01         	ldr	r3, [sp, #0x4]
  37758e: 33f8         	adds	r3, #0xf8
  377590: 4618         	mov	r0, r3
  377592: f03e f1bf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43e37e
  377596: e7ff         	b	0x377598 <NetworkManager::NetworkManager()+0x60> @ imm = #-0x2
  377598: 9b01         	ldr	r3, [sp, #0x4]
  37759a: 33f4         	adds	r3, #0xf4
  37759c: 4618         	mov	r0, r3
  37759e: f03e f1b9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43e372
  3775a2: e7ff         	b	0x3775a4 <NetworkManager::NetworkManager()+0x6c> @ imm = #-0x2
  3775a4: 9b01         	ldr	r3, [sp, #0x4]
  3775a6: 3304         	adds	r3, #0x4
  3775a8: 4618         	mov	r0, r3
  3775aa: f218 f94b    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x218296
  3775ae: e7ff         	b	0x3775b0 <NetworkManager::NetworkManager()+0x78> @ imm = #-0x2
  3775b0: 9b01         	ldr	r3, [sp, #0x4]
  3775b2: 4618         	mov	r0, r3
  3775b4: f0bc fb4c    	bl	0x433c50 <NetworkManagerBridge::~NetworkManagerBridge()> @ imm = #0xbc698
  3775b8: f010 f578    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410af0
  3775bc: 4618         	mov	r0, r3
  3775be: b002         	add	sp, #0x8
  3775c0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3775c1); words below are literal-pool data ---
  3775c2: bf00         	nop
  3775c4: b4c8         	push	{r3, r6, r7}
  3775c6: 005b         	lsls	r3, r3, #0x1
  3775c8: dc50         	bgt	0x37766c <clearAuthentication()+0x4> @ imm = #0xa0
  3775ca: ffff b500    	<unknown>

// ==== NetworkManager::~NetworkManager
//      file offset 0x3775cc (= ELF address; Ghidra 0x3875cc), 112 bytes, Thumb-2
  3775cc: b500         	push	{lr}
  3775ce: b083         	sub	sp, #0xc
  3775d0: 9001         	str	r0, [sp, #0x4]
  3775d2: 4b18         	ldr	r3, [pc, #0x60]         @ 0x377634 <NetworkManager::~NetworkManager()+0x68>
  3775d4: 447b         	add	r3, pc
  3775d6: 9a01         	ldr	r2, [sp, #0x4]
  3775d8: 4917         	ldr	r1, [pc, #0x5c]         @ 0x377638 <NetworkManager::~NetworkManager()+0x6c>
  3775da: 5859         	ldr	r1, [r3, r1]
  3775dc: 3108         	adds	r1, #0x8
  3775de: 6011         	str	r1, [r2]
  3775e0: 9a01         	ldr	r2, [sp, #0x4]
  3775e2: 4915         	ldr	r1, [pc, #0x54]         @ 0x377638 <NetworkManager::~NetworkManager()+0x6c>
  3775e4: 585b         	ldr	r3, [r3, r1]
  3775e6: 331c         	adds	r3, #0x1c
  3775e8: 6053         	str	r3, [r2, #0x4]
  3775ea: 9b01         	ldr	r3, [sp, #0x4]
  3775ec: f503 7394    	add.w	r3, r3, #0x128
  3775f0: 4618         	mov	r0, r3
  3775f2: f03e f18f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43e31e
  3775f6: 9b01         	ldr	r3, [sp, #0x4]
  3775f8: 33f8         	adds	r3, #0xf8
  3775fa: 4618         	mov	r0, r3
  3775fc: f03e f18a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43e314
  377600: 9b01         	ldr	r3, [sp, #0x4]
  377602: 33f4         	adds	r3, #0xf4
  377604: 4618         	mov	r0, r3
  377606: f03e f185    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43e30a
  37760a: 9b01         	ldr	r3, [sp, #0x4]
  37760c: 3304         	adds	r3, #0x4
  37760e: 4618         	mov	r0, r3
  377610: f218 f918    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x218230
  377614: 9b01         	ldr	r3, [sp, #0x4]
  377616: 4618         	mov	r0, r3
  377618: f0bc fb1a    	bl	0x433c50 <NetworkManagerBridge::~NetworkManagerBridge()> @ imm = #0xbc634
  37761c: 2300         	movs	r3, #0x0
  37761e: 2b00         	cmp	r3, #0x0
  377620: d002         	beq	0x377628 <NetworkManager::~NetworkManager()+0x5c> @ imm = #0x4
  377622: 9801         	ldr	r0, [sp, #0x4]
  377624: f010 f53e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x410a7c
  377628: 9b01         	ldr	r3, [sp, #0x4]
  37762a: 4618         	mov	r0, r3
  37762c: b003         	add	sp, #0xc
  37762e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x377631); words below are literal-pool data ---
  377632: bf00         	nop
  377634: b434         	push	{r2, r4, r5}
  377636: 005b         	lsls	r3, r3, #0x1
  377638: dc50         	bgt	0x3776dc <setBasicAuthHttpHeader(std::string, std::string)+0x50> @ imm = #0xa0
  37763a: ffff f1a0    	<unknown>

// ==== NetworkManager::~NetworkManager
//      file offset 0x37763c (= ELF address; Ghidra 0x38763c), 8 bytes, Thumb-2
  37763c: f1a0 0004    	sub.w	r0, r0, #0x4
  377640: f7ff bfc4    	b.w	0x3775cc <NetworkManager::~NetworkManager()> @ imm = #-0x78

// ==== NetworkManager::~NetworkManager
//      file offset 0x377644 (= ELF address; Ghidra 0x387644), 28 bytes, Thumb-2
  377644: b500         	push	{lr}
  377646: b083         	sub	sp, #0xc
  377648: 9001         	str	r0, [sp, #0x4]
  37764a: 9801         	ldr	r0, [sp, #0x4]
  37764c: f7ff ffbe    	bl	0x3775cc <NetworkManager::~NetworkManager()> @ imm = #-0x84
  377650: 9801         	ldr	r0, [sp, #0x4]
  377652: f010 f527    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x410a4e
  377656: 9b01         	ldr	r3, [sp, #0x4]
  377658: 4618         	mov	r0, r3
  37765a: b003         	add	sp, #0xc
  37765c: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::~NetworkManager
//      file offset 0x377660 (= ELF address; Ghidra 0x387660), 6 bytes, Thumb-2
  377660: f1a0 0004    	sub.w	r0, r0, #0x4
  377664: e7ee         	b	0x377644 <NetworkManager::~NetworkManager()> @ imm = #-0x24

// ==== NetworkManager::createAppsomniacsUrl
//      file offset 0x377944 (= ELF address; Ghidra 0x387944), 124 bytes, Thumb-2
  377944: b510         	push	{r4, lr}
  377946: b086         	sub	sp, #0x18
  377948: 9003         	str	r0, [sp, #0xc]
  37794a: 9102         	str	r1, [sp, #0x8]
  37794c: 9201         	str	r2, [sp, #0x4]
  37794e: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3779b8 <NetworkManager::createAppsomniacsUrl(char const*)+0x74>
  377950: 447a         	add	r2, pc
  377952: ab05         	add	r3, sp, #0x14
  377954: 4618         	mov	r0, r3
  377956: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3779bc <NetworkManager::createAppsomniacsUrl(char const*)+0x78>
  377958: 58d3         	ldr	r3, [r2, r3]
  37795a: 4619         	mov	r1, r3
  37795c: f03e f5c4    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43eb88
  377960: ab05         	add	r3, sp, #0x14
  377962: 4618         	mov	r0, r3
  377964: 9901         	ldr	r1, [sp, #0x4]
  377966: f03e f4c3    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x43e986
  37796a: ab05         	add	r3, sp, #0x14
  37796c: 4618         	mov	r0, r3
  37796e: f03d f4c7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43d98e
  377972: 4604         	mov	r4, r0
  377974: ab04         	add	r3, sp, #0x10
  377976: 4618         	mov	r0, r3
  377978: f012 f53c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x412a78
  37797c: ab04         	add	r3, sp, #0x10
  37797e: 9803         	ldr	r0, [sp, #0xc]
  377980: 4621         	mov	r1, r4
  377982: 461a         	mov	r2, r3
  377984: f03f f06c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43f0d8
  377988: ab04         	add	r3, sp, #0x10
  37798a: 4618         	mov	r0, r3
  37798c: f012 f536    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x412a6c
  377990: ab05         	add	r3, sp, #0x14
  377992: 4618         	mov	r0, r3
  377994: f03d f7be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43df7c
  377998: e00a         	b	0x3779b0 <NetworkManager::createAppsomniacsUrl(char const*)+0x6c> @ imm = #0x14
  37799a: ab04         	add	r3, sp, #0x10
  37799c: 4618         	mov	r0, r3
  37799e: f012 f52d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x412a5a
  3779a2: e7ff         	b	0x3779a4 <NetworkManager::createAppsomniacsUrl(char const*)+0x60> @ imm = #-0x2
  3779a4: ab05         	add	r3, sp, #0x14
  3779a6: 4618         	mov	r0, r3
  3779a8: f03d f7b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43df68
  3779ac: f010 f37e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4106fc
  3779b0: 9803         	ldr	r0, [sp, #0xc]
  3779b2: b006         	add	sp, #0x18
  3779b4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3779b5); words below are literal-pool data ---
  3779b6: bf00         	nop
  3779b8: b0b8         	sub	sp, #0xe0
  3779ba: 005b         	lsls	r3, r3, #0x1
  3779bc: dc70         	bgt	0x377aa0 <NetworkManager::createAppsomniacsRequest(char const*)+0x8> @ imm = #0xe0
  3779be: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== NetworkManager::urlEncode
//      file offset 0x3779c0 (= ELF address; Ghidra 0x3879c0), 110 bytes, Thumb-2
  3779c0: b530         	push	{r4, r5, lr}
  3779c2: b087         	sub	sp, #0x1c
  3779c4: 9003         	str	r0, [sp, #0xc]
  3779c6: 9102         	str	r1, [sp, #0x8]
  3779c8: 9201         	str	r2, [sp, #0x4]
  3779ca: 9b02         	ldr	r3, [sp, #0x8]
  3779cc: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3779d0: 9801         	ldr	r0, [sp, #0x4]
  3779d2: f03d f495    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43d92a
  3779d6: 4604         	mov	r4, r0
  3779d8: 9801         	ldr	r0, [sp, #0x4]
  3779da: f03d f33f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x43d67e
  3779de: 4603         	mov	r3, r0
  3779e0: 4628         	mov	r0, r5
  3779e2: 4621         	mov	r1, r4
  3779e4: 461a         	mov	r2, r3
  3779e6: f29d f8c5    	bl	0x614b74 <curl_easy_escape> @ imm = #0x29d18a
  3779ea: 4603         	mov	r3, r0
  3779ec: 9305         	str	r3, [sp, #0x14]
  3779ee: ab04         	add	r3, sp, #0x10
  3779f0: 4618         	mov	r0, r3
  3779f2: f012 f4ff    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4129fe
  3779f6: ab04         	add	r3, sp, #0x10
  3779f8: 9803         	ldr	r0, [sp, #0xc]
  3779fa: 9905         	ldr	r1, [sp, #0x14]
  3779fc: 461a         	mov	r2, r3
  3779fe: f03f f02f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43f05e
  377a02: ab04         	add	r3, sp, #0x10
  377a04: 4618         	mov	r0, r3
  377a06: f012 f4f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4129f2
  377a0a: 9805         	ldr	r0, [sp, #0x14]
  377a0c: f29d f9a8    	bl	0x614d60 <curl_free>    @ imm = #0x29d350
  377a10: e00a         	b	0x377a28 <NetworkManager::urlEncode(std::string)+0x68> @ imm = #0x14
  377a12: ab04         	add	r3, sp, #0x10
  377a14: 4618         	mov	r0, r3
  377a16: f012 f4f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4129e2
  377a1a: f010 f347    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41068e
  377a1e: 9803         	ldr	r0, [sp, #0xc]
  377a20: f03d f778    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43def0
  377a24: f010 f342    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410684
  377a28: 9803         	ldr	r0, [sp, #0xc]
  377a2a: b007         	add	sp, #0x1c
  377a2c: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::urlDecode
//      file offset 0x377a30 (= ELF address; Ghidra 0x387a30), 102 bytes, Thumb-2
  377a30: b510         	push	{r4, lr}
  377a32: b086         	sub	sp, #0x18
  377a34: 9003         	str	r0, [sp, #0xc]
  377a36: 9102         	str	r1, [sp, #0x8]
  377a38: 9201         	str	r2, [sp, #0x4]
  377a3a: 9801         	ldr	r0, [sp, #0x4]
  377a3c: f03d f460    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43d8c0
  377a40: 4604         	mov	r4, r0
  377a42: 9801         	ldr	r0, [sp, #0x4]
  377a44: f03d f30a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x43d614
  377a48: 4603         	mov	r3, r0
  377a4a: 4620         	mov	r0, r4
  377a4c: 4619         	mov	r1, r3
  377a4e: f29d f97f    	bl	0x614d50 <curl_unescape> @ imm = #0x29d2fe
  377a52: 4603         	mov	r3, r0
  377a54: 9305         	str	r3, [sp, #0x14]
  377a56: ab04         	add	r3, sp, #0x10
  377a58: 4618         	mov	r0, r3
  377a5a: f012 f4cb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x412996
  377a5e: ab04         	add	r3, sp, #0x10
  377a60: 9803         	ldr	r0, [sp, #0xc]
  377a62: 9905         	ldr	r1, [sp, #0x14]
  377a64: 461a         	mov	r2, r3
  377a66: f03e f7fb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43eff6
  377a6a: ab04         	add	r3, sp, #0x10
  377a6c: 4618         	mov	r0, r3
  377a6e: f012 f4c5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41298a
  377a72: 9805         	ldr	r0, [sp, #0x14]
  377a74: f29d f974    	bl	0x614d60 <curl_free>    @ imm = #0x29d2e8
  377a78: e00a         	b	0x377a90 <NetworkManager::urlDecode(std::string)+0x60> @ imm = #0x14
  377a7a: ab04         	add	r3, sp, #0x10
  377a7c: 4618         	mov	r0, r3
  377a7e: f012 f4bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41297a
  377a82: f010 f313    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410626
  377a86: 9803         	ldr	r0, [sp, #0xc]
  377a88: f03d f744    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43de88
  377a8c: f010 f30e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41061c
  377a90: 9803         	ldr	r0, [sp, #0xc]
  377a92: b006         	add	sp, #0x18
  377a94: bd10         	pop	{r4, pc}

// ==== NetworkManager::createAppsomniacsRequest
//      file offset 0x377a98 (= ELF address; Ghidra 0x387a98), 166 bytes, Thumb-2
  377a98: b510         	push	{r4, lr}
  377a9a: b08a         	sub	sp, #0x28
  377a9c: 9001         	str	r0, [sp, #0x4]
  377a9e: 9100         	str	r1, [sp]
  377aa0: 2048         	movs	r0, #0x48
  377aa2: f00f f75f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40febe
  377aa6: 4603         	mov	r3, r0
  377aa8: 461c         	mov	r4, r3
  377aaa: 4620         	mov	r0, r4
  377aac: f7ff fbb2    	bl	0x377214 <cocos2d::extension::CCHttpRequest::CCHttpRequest()> @ imm = #-0x89c
  377ab0: 9403         	str	r4, [sp, #0xc]
  377ab2: ab07         	add	r3, sp, #0x1c
  377ab4: 4618         	mov	r0, r3
  377ab6: 9901         	ldr	r1, [sp, #0x4]
  377ab8: 9a00         	ldr	r2, [sp]
  377aba: f7ff ff43    	bl	0x377944 <NetworkManager::createAppsomniacsUrl(char const*)> @ imm = #-0x17a
  377abe: ab07         	add	r3, sp, #0x1c
  377ac0: 4618         	mov	r0, r3
  377ac2: f03d f41d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43d83a
  377ac6: 4603         	mov	r3, r0
  377ac8: 9803         	ldr	r0, [sp, #0xc]
  377aca: 4619         	mov	r1, r3
  377acc: f7ff fc54    	bl	0x377378 <cocos2d::extension::CCHttpRequest::setUrl(char const*)> @ imm = #-0x758
  377ad0: ab07         	add	r3, sp, #0x1c
  377ad2: 4618         	mov	r0, r3
  377ad4: f03d f71e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43de3c
  377ad8: ab04         	add	r3, sp, #0x10
  377ada: 4618         	mov	r0, r3
  377adc: f7ff fe4a    	bl	0x377774 <getAppsomniacsHttpHeader()> @ imm = #-0x36c
  377ae0: aa07         	add	r2, sp, #0x1c
  377ae2: ab04         	add	r3, sp, #0x10
  377ae4: 4610         	mov	r0, r2
  377ae6: 4619         	mov	r1, r3
  377ae8: f004 f96c    	bl	0x37bdc4 <std::vector<std::string, std::allocator<std::string>>::vector(std::vector<std::string, std::allocator<std::string>> const&)> @ imm = #0x42d8
  377aec: ab07         	add	r3, sp, #0x1c
  377aee: 9803         	ldr	r0, [sp, #0xc]
  377af0: 4619         	mov	r1, r3
  377af2: f7ff fc8f    	bl	0x377414 <cocos2d::extension::CCHttpRequest::setHeaders(std::vector<std::string, std::allocator<std::string>>)> @ imm = #-0x6e2
  377af6: ab07         	add	r3, sp, #0x1c
  377af8: 4618         	mov	r0, r3
  377afa: f764 f9bd    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9bc86
  377afe: 9c03         	ldr	r4, [sp, #0xc]
  377b00: ab04         	add	r3, sp, #0x10
  377b02: 4618         	mov	r0, r3
  377b04: f764 f9b8    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9bc90
  377b08: 4623         	mov	r3, r4
  377b0a: e015         	b	0x377b38 <NetworkManager::createAppsomniacsRequest(char const*)+0xa0> @ imm = #0x2a
  377b0c: 4620         	mov	r0, r4
  377b0e: f010 f2c9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x410592
  377b12: f010 f2cb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410596
  377b16: ab07         	add	r3, sp, #0x1c
  377b18: 4618         	mov	r0, r3
  377b1a: f03d f6fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ddf6
  377b1e: f010 f2c5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41058a
  377b22: ab07         	add	r3, sp, #0x1c
  377b24: 4618         	mov	r0, r3
  377b26: f764 f9a7    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9bcb2
  377b2a: e7ff         	b	0x377b2c <NetworkManager::createAppsomniacsRequest(char const*)+0x94> @ imm = #-0x2
  377b2c: ab04         	add	r3, sp, #0x10
  377b2e: 4618         	mov	r0, r3
  377b30: f764 f9a2    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9bcbc
  377b34: f010 f2ba    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410574
  377b38: 4618         	mov	r0, r3
  377b3a: b00a         	add	sp, #0x28
  377b3c: bd10         	pop	{r4, pc}

// ==== NetworkManager::sharedNetworkManager
//      file offset 0x377b40 (= ELF address; Ghidra 0x387b40), 92 bytes, Thumb-2
  377b40: b538         	push	{r3, r4, r5, lr}
  377b42: 4c14         	ldr	r4, [pc, #0x50]         @ 0x377b94 <NetworkManager::sharedNetworkManager()+0x54>
  377b44: 447c         	add	r4, pc
  377b46: 4b14         	ldr	r3, [pc, #0x50]         @ 0x377b98 <NetworkManager::sharedNetworkManager()+0x58>
  377b48: 58e3         	ldr	r3, [r4, r3]
  377b4a: 681b         	ldr	r3, [r3]
  377b4c: 2b00         	cmp	r3, #0x0
  377b4e: d116         	bne	0x377b7e <NetworkManager::sharedNetworkManager()+0x3e> @ imm = #0x2c
  377b50: f44f 7096    	mov.w	r0, #0x12c
  377b54: f00f f706    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40fe0c
  377b58: 4603         	mov	r3, r0
  377b5a: 461d         	mov	r5, r3
  377b5c: 4628         	mov	r0, r5
  377b5e: f7ff fceb    	bl	0x377538 <NetworkManager::NetworkManager()> @ imm = #-0x62a
  377b62: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x377b98 <NetworkManager::sharedNetworkManager()+0x58>
  377b64: 58e3         	ldr	r3, [r4, r3]
  377b66: 601d         	str	r5, [r3]
  377b68: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x377b98 <NetworkManager::sharedNetworkManager()+0x58>
  377b6a: 58e3         	ldr	r3, [r4, r3]
  377b6c: 681b         	ldr	r3, [r3]
  377b6e: 681b         	ldr	r3, [r3]
  377b70: 3308         	adds	r3, #0x8
  377b72: 681b         	ldr	r3, [r3]
  377b74: 4a08         	ldr	r2, [pc, #0x20]         @ 0x377b98 <NetworkManager::sharedNetworkManager()+0x58>
  377b76: 58a2         	ldr	r2, [r4, r2]
  377b78: 6812         	ldr	r2, [r2]
  377b7a: 4610         	mov	r0, r2
  377b7c: 4798         	blx	r3
  377b7e: 4b06         	ldr	r3, [pc, #0x18]         @ 0x377b98 <NetworkManager::sharedNetworkManager()+0x58>
  377b80: 58e3         	ldr	r3, [r4, r3]
  377b82: 681b         	ldr	r3, [r3]
  377b84: e004         	b	0x377b90 <NetworkManager::sharedNetworkManager()+0x50> @ imm = #0x8
  377b86: 4628         	mov	r0, r5
  377b88: f010 f28c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x410518
  377b8c: f010 f28e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41051c
  377b90: 4618         	mov	r0, r3
  377b92: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x377b93); words below are literal-pool data ---
  377b94: aec4         	add	r6, sp, #0x310
  377b96: 005b         	lsls	r3, r3, #0x1
  377b98: dc74         	bgt	0x377c84 <NetworkManager::init()+0xe8> @ imm = #0xe8
  377b9a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== NetworkManager::init
//      file offset 0x377b9c (= ELF address; Ghidra 0x387b9c), 516 bytes, Thumb-2
  377b9c: b530         	push	{r4, r5, lr}
  377b9e: b085         	sub	sp, #0x14
  377ba0: 9001         	str	r0, [sp, #0x4]
  377ba2: 4c74         	ldr	r4, [pc, #0x1d0]        @ 0x377d74 <NetworkManager::init()+0x1d8>
  377ba4: 447c         	add	r4, pc
  377ba6: 9b01         	ldr	r3, [sp, #0x4]
  377ba8: 3304         	adds	r3, #0x4
  377baa: 4618         	mov	r0, r3
  377bac: f217 ff4e    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x217e9c
  377bb0: 4603         	mov	r3, r0
  377bb2: f88d 300f    	strb.w	r3, [sp, #0xf]
  377bb6: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  377bba: f083 0301    	eor	r3, r3, #0x1
  377bbe: b2db         	uxtb	r3, r3
  377bc0: 2b00         	cmp	r3, #0x0
  377bc2: d001         	beq	0x377bc8 <NetworkManager::init()+0x2c> @ imm = #0x2
  377bc4: 2300         	movs	r3, #0x0
  377bc6: e0d2         	b	0x377d6e <NetworkManager::init()+0x1d2> @ imm = #0x1a4
  377bc8: f2a1 f91c    	bl	0x618e04 <curl_easy_init> @ imm = #0x2a1238
  377bcc: 4602         	mov	r2, r0
  377bce: 9b01         	ldr	r3, [sp, #0x4]
  377bd0: f8c3 2118    	str.w	r2, [r3, #0x118]
  377bd4: f7ff fe7e    	bl	0x3778d4 <invalidateAppsomniacsSession()> @ imm = #-0x304
  377bd8: 2020         	movs	r0, #0x20
  377bda: f00f f6c3    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40fd86
  377bde: 4605         	mov	r5, r0
  377be0: 4628         	mov	r0, r5
  377be2: f00a f903    	bl	0x381dec <NetworkMessageDispatcher::NetworkMessageDispatcher()> @ imm = #0xa206
  377be6: 9b01         	ldr	r3, [sp, #0x4]
  377be8: f8c3 5114    	str.w	r5, [r3, #0x114]
  377bec: 2018         	movs	r0, #0x18
  377bee: f00f f6b9    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40fd72
  377bf2: 4605         	mov	r5, r0
  377bf4: 4628         	mov	r0, r5
  377bf6: f0ae fedf    	bl	0x4269b8 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()> @ imm = #0xaedbe
  377bfa: 9b01         	ldr	r3, [sp, #0x4]
  377bfc: f8c3 5104    	str.w	r5, [r3, #0x104]
  377c00: 2018         	movs	r0, #0x18
  377c02: f00f f6af    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40fd5e
  377c06: 4605         	mov	r5, r0
  377c08: 4628         	mov	r0, r5
  377c0a: f0b0 fcdf    	bl	0x4285cc <PeerNetworkBridgeLAN::PeerNetworkBridgeLAN()> @ imm = #0xb09be
  377c0e: 9b01         	ldr	r3, [sp, #0x4]
  377c10: f8c3 5108    	str.w	r5, [r3, #0x108]
  377c14: 9b01         	ldr	r3, [sp, #0x4]
  377c16: 2200         	movs	r2, #0x0
  377c18: f8c3 2100    	str.w	r2, [r3, #0x100]
  377c1c: 9b01         	ldr	r3, [sp, #0x4]
  377c1e: f8d3 2104    	ldr.w	r2, [r3, #0x104]
  377c22: 9b01         	ldr	r3, [sp, #0x4]
  377c24: f8c3 210c    	str.w	r2, [r3, #0x10c]
  377c28: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x377d78 <NetworkManager::init()+0x1dc>
  377c2a: 58e3         	ldr	r3, [r4, r3]
  377c2c: 2200         	movs	r2, #0x0
  377c2e: 601a         	str	r2, [r3]
  377c30: f7ff fc16    	bl	0x377460 <RakNetDelegate::create()> @ imm = #-0x7d4
  377c34: 4602         	mov	r2, r0
  377c36: 9b01         	ldr	r3, [sp, #0x4]
  377c38: f8c3 2110    	str.w	r2, [r3, #0x110]
  377c3c: 9b01         	ldr	r3, [sp, #0x4]
  377c3e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  377c42: 4618         	mov	r0, r3
  377c44: f220 f950    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2202a0
  377c48: f222 f874    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2220e8
  377c4c: 4602         	mov	r2, r0
  377c4e: 9b01         	ldr	r3, [sp, #0x4]
  377c50: f8c3 20ec    	str.w	r2, [r3, #0xec]
  377c54: 9b01         	ldr	r3, [sp, #0x4]
  377c56: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  377c5a: 4618         	mov	r0, r3
  377c5c: f220 f944    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x220288
  377c60: f222 f868    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2220d0
  377c64: 4602         	mov	r2, r0
  377c66: 9b01         	ldr	r3, [sp, #0x4]
  377c68: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  377c6c: 9b01         	ldr	r3, [sp, #0x4]
  377c6e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  377c72: 4618         	mov	r0, r3
  377c74: f220 f938    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x220270
  377c78: f21f fb9a    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x21f734
  377c7c: 4602         	mov	r2, r0
  377c7e: 9b01         	ldr	r3, [sp, #0x4]
  377c80: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  377c84: 9b01         	ldr	r3, [sp, #0x4]
  377c86: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  377c8a: 4618         	mov	r0, r3
  377c8c: f220 f92c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x220258
  377c90: 9b01         	ldr	r3, [sp, #0x4]
  377c92: 33f4         	adds	r3, #0xf4
  377c94: 4618         	mov	r0, r3
  377c96: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x377d7c <NetworkManager::init()+0x1e0>
  377c98: 447b         	add	r3, pc
  377c9a: 4619         	mov	r1, r3
  377c9c: f03e f0e8    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x43e1d0
  377ca0: 9b01         	ldr	r3, [sp, #0x4]
  377ca2: 33f8         	adds	r3, #0xf8
  377ca4: 4618         	mov	r0, r3
  377ca6: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x377d80 <NetworkManager::init()+0x1e4>
  377ca8: 447b         	add	r3, pc
  377caa: 4619         	mov	r1, r3
  377cac: f03e f0e0    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x43e1c0
  377cb0: 9b01         	ldr	r3, [sp, #0x4]
  377cb2: 2200         	movs	r2, #0x0
  377cb4: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  377cb8: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x377d84 <NetworkManager::init()+0x1e8>
  377cba: 58e3         	ldr	r3, [r4, r3]
  377cbc: 2200         	movs	r2, #0x0
  377cbe: 601a         	str	r2, [r3]
  377cc0: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x377d88 <NetworkManager::init()+0x1ec>
  377cc2: 58e3         	ldr	r3, [r4, r3]
  377cc4: 4619         	mov	r1, r3
  377cc6: f04f 0200    	mov.w	r2, #0x0
  377cca: f04f 0300    	mov.w	r3, #0x0
  377cce: e9c1 2300    	strd	r2, r3, [r1]
  377cd2: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x377d8c <NetworkManager::init()+0x1f0>
  377cd4: 58e3         	ldr	r3, [r4, r3]
  377cd6: 2200         	movs	r2, #0x0
  377cd8: 601a         	str	r2, [r3]
  377cda: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x377d90 <NetworkManager::init()+0x1f4>
  377cdc: 58e3         	ldr	r3, [r4, r3]
  377cde: 2200         	movs	r2, #0x0
  377ce0: 701a         	strb	r2, [r3]
  377ce2: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x377d94 <NetworkManager::init()+0x1f8>
  377ce4: 58e3         	ldr	r3, [r4, r3]
  377ce6: 2200         	movs	r2, #0x0
  377ce8: 701a         	strb	r2, [r3]
  377cea: 9b01         	ldr	r3, [sp, #0x4]
  377cec: 2200         	movs	r2, #0x0
  377cee: f883 211e    	strb.w	r2, [r3, #0x11e]
  377cf2: 9b01         	ldr	r3, [sp, #0x4]
  377cf4: 2200         	movs	r2, #0x0
  377cf6: f883 211c    	strb.w	r2, [r3, #0x11c]
  377cfa: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x377d78 <NetworkManager::init()+0x1dc>
  377cfc: 58e3         	ldr	r3, [r4, r3]
  377cfe: 2200         	movs	r2, #0x0
  377d00: 601a         	str	r2, [r3]
  377d02: 9b01         	ldr	r3, [sp, #0x4]
  377d04: 2204         	movs	r2, #0x4
  377d06: f8c3 2120    	str.w	r2, [r3, #0x120]
  377d0a: 9b01         	ldr	r3, [sp, #0x4]
  377d0c: 2200         	movs	r2, #0x0
  377d0e: f883 211d    	strb.w	r2, [r3, #0x11d]
  377d12: 9b01         	ldr	r3, [sp, #0x4]
  377d14: 2200         	movs	r2, #0x0
  377d16: f883 2124    	strb.w	r2, [r3, #0x124]
  377d1a: 9b01         	ldr	r3, [sp, #0x4]
  377d1c: f503 7394    	add.w	r3, r3, #0x128
  377d20: 4618         	mov	r0, r3
  377d22: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x377d98 <NetworkManager::init()+0x1fc>
  377d24: 447b         	add	r3, pc
  377d26: 4619         	mov	r1, r3
  377d28: f03e f0a2    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x43e144
  377d2c: f21f fb40    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x21f680
  377d30: 4603         	mov	r3, r0
  377d32: 461a         	mov	r2, r3
  377d34: 4b19         	ldr	r3, [pc, #0x64]         @ 0x377d9c <NetworkManager::init()+0x200>
  377d36: 58e3         	ldr	r3, [r4, r3]
  377d38: 601a         	str	r2, [r3]
  377d3a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x377d9c <NetworkManager::init()+0x200>
  377d3c: 58e3         	ldr	r3, [r4, r3]
  377d3e: 681b         	ldr	r3, [r3]
  377d40: 4618         	mov	r0, r3
  377d42: f220 f8d1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2201a2
  377d46: 9801         	ldr	r0, [sp, #0x4]
  377d48: f000 f82e    	bl	0x377da8 <NetworkManager::listenForGameEvents()> @ imm = #0x5c
  377d4c: 2301         	movs	r3, #0x1
  377d4e: e00e         	b	0x377d6e <NetworkManager::init()+0x1d2> @ imm = #0x1c
  377d50: 4628         	mov	r0, r5
  377d52: f010 f1a7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41034e
  377d56: f010 f1a9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410352
  377d5a: 4628         	mov	r0, r5
  377d5c: f010 f1a2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x410344
  377d60: f010 f1a4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x410348
  377d64: 4628         	mov	r0, r5
  377d66: f010 f19d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41033a
  377d6a: f010 f19f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41033e
  377d6e: 4618         	mov	r0, r3
  377d70: b005         	add	sp, #0x14
  377d72: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x377d73); words below are literal-pool data ---
  377d74: ae64         	add	r6, sp, #0x190
  377d76: 005b         	lsls	r3, r3, #0x1
  377d78: dc78         	bgt	0x377e6c <NetworkManager::listenForGameEvents()+0xc4> @ imm = #0xf0
  377d7a: ffff 6a54    	<unknown>
  377d7e: 0045         	lsls	r5, r0, #0x1
  377d80: 6a44         	ldr	r4, [r0, #0x24]
  377d82: 0045         	lsls	r5, r0, #0x1
  377d84: dc7c         	bgt	0x377e80 <NetworkManager::listenForGameEvents()+0xd8> @ imm = #0xf8
  377d86: ffff dc80    	<unknown>
  377d8a: ffff dc84    	<unknown>
  377d8e: ffff dc88    	<unknown>
  377d92: ffff dc8c    	<unknown>
  377d96: ffff 69c8    	<unknown>
  377d9a: 0045         	lsls	r5, r0, #0x1
  377d9c: dc90         	bgt	0x377cc0 <NetworkManager::init()+0x124> @ imm = #-0xe0
  377d9e: ffff f1a0    	<unknown>

// ==== NetworkManager::init
//      file offset 0x377da0 (= ELF address; Ghidra 0x387da0), 8 bytes, Thumb-2
  377da0: f1a0 0004    	sub.w	r0, r0, #0x4
  377da4: f7ff befa    	b.w	0x377b9c <NetworkManager::init()> @ imm = #-0x20c

// ==== NetworkManager::listenForGameEvents
//      file offset 0x377da8 (= ELF address; Ghidra 0x387da8), 1340 bytes, Thumb-2
  377da8: b530         	push	{r4, r5, lr}
  377daa: b0b7         	sub	sp, #0xdc
  377dac: 9003         	str	r0, [sp, #0xc]
  377dae: f8df 4468    	ldr.w	r4, [pc, #0x468]        @ 0x378218 <NetworkManager::listenForGameEvents()+0x470>
  377db2: 447c         	add	r4, pc
  377db4: f268 fc7c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2688f8
  377db8: 4602         	mov	r2, r0
  377dba: 9b03         	ldr	r3, [sp, #0xc]
  377dbc: 3304         	adds	r3, #0x4
  377dbe: 4610         	mov	r0, r2
  377dc0: 4619         	mov	r1, r3
  377dc2: f268 fdad    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x268b5a
  377dc6: f268 fc73    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2688e6
  377dca: 4602         	mov	r2, r0
  377dcc: 9b03         	ldr	r3, [sp, #0xc]
  377dce: 3304         	adds	r3, #0x4
  377dd0: f8df 1448    	ldr.w	r1, [pc, #0x448]        @ 0x37821c <NetworkManager::listenForGameEvents()+0x474>
  377dd4: 4479         	add	r1, pc
  377dd6: ad04         	add	r5, sp, #0x10
  377dd8: c903         	ldm	r1, {r0, r1}
  377dda: e885 0003    	stm.w	r5, {r0, r1}
  377dde: f8df 1440    	ldr.w	r1, [pc, #0x440]        @ 0x378220 <NetworkManager::listenForGameEvents()+0x478>
  377de2: 4479         	add	r1, pc
  377de4: 9100         	str	r1, [sp]
  377de6: 2100         	movs	r1, #0x0
  377de8: 9101         	str	r1, [sp, #0x4]
  377dea: 4610         	mov	r0, r2
  377dec: 4619         	mov	r1, r3
  377dee: ab04         	add	r3, sp, #0x10
  377df0: cb0c         	ldm	r3, {r2, r3}
  377df2: f268 fcf9    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2689f2
  377df6: f268 fc5b    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2688b6
  377dfa: 4602         	mov	r2, r0
  377dfc: 9b03         	ldr	r3, [sp, #0xc]
  377dfe: 3304         	adds	r3, #0x4
  377e00: f8df 1420    	ldr.w	r1, [pc, #0x420]        @ 0x378224 <NetworkManager::listenForGameEvents()+0x47c>
  377e04: 4479         	add	r1, pc
  377e06: ad06         	add	r5, sp, #0x18
  377e08: c903         	ldm	r1, {r0, r1}
  377e0a: e885 0003    	stm.w	r5, {r0, r1}
  377e0e: f8df 1418    	ldr.w	r1, [pc, #0x418]        @ 0x378228 <NetworkManager::listenForGameEvents()+0x480>
  377e12: 4479         	add	r1, pc
  377e14: 9100         	str	r1, [sp]
  377e16: 2100         	movs	r1, #0x0
  377e18: 9101         	str	r1, [sp, #0x4]
  377e1a: 4610         	mov	r0, r2
  377e1c: 4619         	mov	r1, r3
  377e1e: ab06         	add	r3, sp, #0x18
  377e20: cb0c         	ldm	r3, {r2, r3}
  377e22: f268 fce1    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2689c2
  377e26: f268 fc43    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268886
  377e2a: 4602         	mov	r2, r0
  377e2c: 9b03         	ldr	r3, [sp, #0xc]
  377e2e: 3304         	adds	r3, #0x4
  377e30: 49fe         	ldr	r1, [pc, #0x3f8]        @ 0x37822c <NetworkManager::listenForGameEvents()+0x484>
  377e32: 4479         	add	r1, pc
  377e34: ad08         	add	r5, sp, #0x20
  377e36: c903         	ldm	r1, {r0, r1}
  377e38: e885 0003    	stm.w	r5, {r0, r1}
  377e3c: 49fc         	ldr	r1, [pc, #0x3f0]        @ 0x378230 <NetworkManager::listenForGameEvents()+0x488>
  377e3e: 4479         	add	r1, pc
  377e40: 9100         	str	r1, [sp]
  377e42: 2100         	movs	r1, #0x0
  377e44: 9101         	str	r1, [sp, #0x4]
  377e46: 4610         	mov	r0, r2
  377e48: 4619         	mov	r1, r3
  377e4a: ab08         	add	r3, sp, #0x20
  377e4c: cb0c         	ldm	r3, {r2, r3}
  377e4e: f268 fccb    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268996
  377e52: f268 fc2d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26885a
  377e56: 4602         	mov	r2, r0
  377e58: 9b03         	ldr	r3, [sp, #0xc]
  377e5a: 3304         	adds	r3, #0x4
  377e5c: 49f5         	ldr	r1, [pc, #0x3d4]        @ 0x378234 <NetworkManager::listenForGameEvents()+0x48c>
  377e5e: 4479         	add	r1, pc
  377e60: ad0a         	add	r5, sp, #0x28
  377e62: c903         	ldm	r1, {r0, r1}
  377e64: e885 0003    	stm.w	r5, {r0, r1}
  377e68: 49f3         	ldr	r1, [pc, #0x3cc]        @ 0x378238 <NetworkManager::listenForGameEvents()+0x490>
  377e6a: 4479         	add	r1, pc
  377e6c: 9100         	str	r1, [sp]
  377e6e: 2100         	movs	r1, #0x0
  377e70: 9101         	str	r1, [sp, #0x4]
  377e72: 4610         	mov	r0, r2
  377e74: 4619         	mov	r1, r3
  377e76: ab0a         	add	r3, sp, #0x28
  377e78: cb0c         	ldm	r3, {r2, r3}
  377e7a: f268 fcb5    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26896a
  377e7e: f268 fc17    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26882e
  377e82: 4602         	mov	r2, r0
  377e84: 9b03         	ldr	r3, [sp, #0xc]
  377e86: 3304         	adds	r3, #0x4
  377e88: 49ec         	ldr	r1, [pc, #0x3b0]        @ 0x37823c <NetworkManager::listenForGameEvents()+0x494>
  377e8a: 4479         	add	r1, pc
  377e8c: ad0c         	add	r5, sp, #0x30
  377e8e: c903         	ldm	r1, {r0, r1}
  377e90: e885 0003    	stm.w	r5, {r0, r1}
  377e94: 49ea         	ldr	r1, [pc, #0x3a8]        @ 0x378240 <NetworkManager::listenForGameEvents()+0x498>
  377e96: 4479         	add	r1, pc
  377e98: 9100         	str	r1, [sp]
  377e9a: 2100         	movs	r1, #0x0
  377e9c: 9101         	str	r1, [sp, #0x4]
  377e9e: 4610         	mov	r0, r2
  377ea0: 4619         	mov	r1, r3
  377ea2: ab0c         	add	r3, sp, #0x30
  377ea4: cb0c         	ldm	r3, {r2, r3}
  377ea6: f268 fc9f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26893e
  377eaa: f268 fc01    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268802
  377eae: 4602         	mov	r2, r0
  377eb0: 9b03         	ldr	r3, [sp, #0xc]
  377eb2: 3304         	adds	r3, #0x4
  377eb4: 49e3         	ldr	r1, [pc, #0x38c]        @ 0x378244 <NetworkManager::listenForGameEvents()+0x49c>
  377eb6: 4479         	add	r1, pc
  377eb8: ad0e         	add	r5, sp, #0x38
  377eba: c903         	ldm	r1, {r0, r1}
  377ebc: e885 0003    	stm.w	r5, {r0, r1}
  377ec0: 49e1         	ldr	r1, [pc, #0x384]        @ 0x378248 <NetworkManager::listenForGameEvents()+0x4a0>
  377ec2: 4479         	add	r1, pc
  377ec4: 9100         	str	r1, [sp]
  377ec6: 2100         	movs	r1, #0x0
  377ec8: 9101         	str	r1, [sp, #0x4]
  377eca: 4610         	mov	r0, r2
  377ecc: 4619         	mov	r1, r3
  377ece: ab0e         	add	r3, sp, #0x38
  377ed0: cb0c         	ldm	r3, {r2, r3}
  377ed2: f268 fc89    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268912
  377ed6: f268 fbeb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2687d6
  377eda: 4602         	mov	r2, r0
  377edc: 9b03         	ldr	r3, [sp, #0xc]
  377ede: 3304         	adds	r3, #0x4
  377ee0: 49da         	ldr	r1, [pc, #0x368]        @ 0x37824c <NetworkManager::listenForGameEvents()+0x4a4>
  377ee2: 4479         	add	r1, pc
  377ee4: ad10         	add	r5, sp, #0x40
  377ee6: c903         	ldm	r1, {r0, r1}
  377ee8: e885 0003    	stm.w	r5, {r0, r1}
  377eec: 49d8         	ldr	r1, [pc, #0x360]        @ 0x378250 <NetworkManager::listenForGameEvents()+0x4a8>
  377eee: 4479         	add	r1, pc
  377ef0: 9100         	str	r1, [sp]
  377ef2: 2100         	movs	r1, #0x0
  377ef4: 9101         	str	r1, [sp, #0x4]
  377ef6: 4610         	mov	r0, r2
  377ef8: 4619         	mov	r1, r3
  377efa: ab10         	add	r3, sp, #0x40
  377efc: cb0c         	ldm	r3, {r2, r3}
  377efe: f268 fc73    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2688e6
  377f02: f268 fbd5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2687aa
  377f06: 4602         	mov	r2, r0
  377f08: 9b03         	ldr	r3, [sp, #0xc]
  377f0a: 3304         	adds	r3, #0x4
  377f0c: 49d1         	ldr	r1, [pc, #0x344]        @ 0x378254 <NetworkManager::listenForGameEvents()+0x4ac>
  377f0e: 4479         	add	r1, pc
  377f10: ad12         	add	r5, sp, #0x48
  377f12: c903         	ldm	r1, {r0, r1}
  377f14: e885 0003    	stm.w	r5, {r0, r1}
  377f18: 49cf         	ldr	r1, [pc, #0x33c]        @ 0x378258 <NetworkManager::listenForGameEvents()+0x4b0>
  377f1a: 4479         	add	r1, pc
  377f1c: 9100         	str	r1, [sp]
  377f1e: 2100         	movs	r1, #0x0
  377f20: 9101         	str	r1, [sp, #0x4]
  377f22: 4610         	mov	r0, r2
  377f24: 4619         	mov	r1, r3
  377f26: ab12         	add	r3, sp, #0x48
  377f28: cb0c         	ldm	r3, {r2, r3}
  377f2a: f268 fc5d    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2688ba
  377f2e: f268 fbbf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26877e
  377f32: 4602         	mov	r2, r0
  377f34: 9b03         	ldr	r3, [sp, #0xc]
  377f36: 3304         	adds	r3, #0x4
  377f38: 49c8         	ldr	r1, [pc, #0x320]        @ 0x37825c <NetworkManager::listenForGameEvents()+0x4b4>
  377f3a: 4479         	add	r1, pc
  377f3c: ad14         	add	r5, sp, #0x50
  377f3e: c903         	ldm	r1, {r0, r1}
  377f40: e885 0003    	stm.w	r5, {r0, r1}
  377f44: 49c6         	ldr	r1, [pc, #0x318]        @ 0x378260 <NetworkManager::listenForGameEvents()+0x4b8>
  377f46: 4479         	add	r1, pc
  377f48: 9100         	str	r1, [sp]
  377f4a: 2100         	movs	r1, #0x0
  377f4c: 9101         	str	r1, [sp, #0x4]
  377f4e: 4610         	mov	r0, r2
  377f50: 4619         	mov	r1, r3
  377f52: ab14         	add	r3, sp, #0x50
  377f54: cb0c         	ldm	r3, {r2, r3}
  377f56: f268 fc47    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26888e
  377f5a: f268 fba9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268752
  377f5e: 4602         	mov	r2, r0
  377f60: 9b03         	ldr	r3, [sp, #0xc]
  377f62: 3304         	adds	r3, #0x4
  377f64: 49bf         	ldr	r1, [pc, #0x2fc]        @ 0x378264 <NetworkManager::listenForGameEvents()+0x4bc>
  377f66: 4479         	add	r1, pc
  377f68: ad16         	add	r5, sp, #0x58
  377f6a: c903         	ldm	r1, {r0, r1}
  377f6c: e885 0003    	stm.w	r5, {r0, r1}
  377f70: 49bd         	ldr	r1, [pc, #0x2f4]        @ 0x378268 <NetworkManager::listenForGameEvents()+0x4c0>
  377f72: 4479         	add	r1, pc
  377f74: 9100         	str	r1, [sp]
  377f76: 2100         	movs	r1, #0x0
  377f78: 9101         	str	r1, [sp, #0x4]
  377f7a: 4610         	mov	r0, r2
  377f7c: 4619         	mov	r1, r3
  377f7e: ab16         	add	r3, sp, #0x58
  377f80: cb0c         	ldm	r3, {r2, r3}
  377f82: f268 fc31    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268862
  377f86: f268 fb93    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268726
  377f8a: 4602         	mov	r2, r0
  377f8c: 9b03         	ldr	r3, [sp, #0xc]
  377f8e: 3304         	adds	r3, #0x4
  377f90: 49b6         	ldr	r1, [pc, #0x2d8]        @ 0x37826c <NetworkManager::listenForGameEvents()+0x4c4>
  377f92: 4479         	add	r1, pc
  377f94: ad18         	add	r5, sp, #0x60
  377f96: c903         	ldm	r1, {r0, r1}
  377f98: e885 0003    	stm.w	r5, {r0, r1}
  377f9c: 49b4         	ldr	r1, [pc, #0x2d0]        @ 0x378270 <NetworkManager::listenForGameEvents()+0x4c8>
  377f9e: 4479         	add	r1, pc
  377fa0: 9100         	str	r1, [sp]
  377fa2: 2100         	movs	r1, #0x0
  377fa4: 9101         	str	r1, [sp, #0x4]
  377fa6: 4610         	mov	r0, r2
  377fa8: 4619         	mov	r1, r3
  377faa: ab18         	add	r3, sp, #0x60
  377fac: cb0c         	ldm	r3, {r2, r3}
  377fae: f268 fc1b    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268836
  377fb2: f268 fb7d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2686fa
  377fb6: 4602         	mov	r2, r0
  377fb8: 9b03         	ldr	r3, [sp, #0xc]
  377fba: 3304         	adds	r3, #0x4
  377fbc: 49ad         	ldr	r1, [pc, #0x2b4]        @ 0x378274 <NetworkManager::listenForGameEvents()+0x4cc>
  377fbe: 4479         	add	r1, pc
  377fc0: ad1a         	add	r5, sp, #0x68
  377fc2: c903         	ldm	r1, {r0, r1}
  377fc4: e885 0003    	stm.w	r5, {r0, r1}
  377fc8: 49ab         	ldr	r1, [pc, #0x2ac]        @ 0x378278 <NetworkManager::listenForGameEvents()+0x4d0>
  377fca: 4479         	add	r1, pc
  377fcc: 9100         	str	r1, [sp]
  377fce: 2100         	movs	r1, #0x0
  377fd0: 9101         	str	r1, [sp, #0x4]
  377fd2: 4610         	mov	r0, r2
  377fd4: 4619         	mov	r1, r3
  377fd6: ab1a         	add	r3, sp, #0x68
  377fd8: cb0c         	ldm	r3, {r2, r3}
  377fda: f268 fc05    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26880a
  377fde: f268 fb67    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2686ce
  377fe2: 4602         	mov	r2, r0
  377fe4: 9b03         	ldr	r3, [sp, #0xc]
  377fe6: 3304         	adds	r3, #0x4
  377fe8: 49a4         	ldr	r1, [pc, #0x290]        @ 0x37827c <NetworkManager::listenForGameEvents()+0x4d4>
  377fea: 4479         	add	r1, pc
  377fec: ad1c         	add	r5, sp, #0x70
  377fee: c903         	ldm	r1, {r0, r1}
  377ff0: e885 0003    	stm.w	r5, {r0, r1}
  377ff4: 49a2         	ldr	r1, [pc, #0x288]        @ 0x378280 <NetworkManager::listenForGameEvents()+0x4d8>
  377ff6: 4479         	add	r1, pc
  377ff8: 9100         	str	r1, [sp]
  377ffa: 2100         	movs	r1, #0x0
  377ffc: 9101         	str	r1, [sp, #0x4]
  377ffe: 4610         	mov	r0, r2
  378000: 4619         	mov	r1, r3
  378002: ab1c         	add	r3, sp, #0x70
  378004: cb0c         	ldm	r3, {r2, r3}
  378006: f268 fbef    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2687de
  37800a: f268 fb51    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2686a2
  37800e: 4602         	mov	r2, r0
  378010: 9b03         	ldr	r3, [sp, #0xc]
  378012: 3304         	adds	r3, #0x4
  378014: 499b         	ldr	r1, [pc, #0x26c]        @ 0x378284 <NetworkManager::listenForGameEvents()+0x4dc>
  378016: 4479         	add	r1, pc
  378018: ad1e         	add	r5, sp, #0x78
  37801a: c903         	ldm	r1, {r0, r1}
  37801c: e885 0003    	stm.w	r5, {r0, r1}
  378020: 4999         	ldr	r1, [pc, #0x264]        @ 0x378288 <NetworkManager::listenForGameEvents()+0x4e0>
  378022: 4479         	add	r1, pc
  378024: 9100         	str	r1, [sp]
  378026: 2100         	movs	r1, #0x0
  378028: 9101         	str	r1, [sp, #0x4]
  37802a: 4610         	mov	r0, r2
  37802c: 4619         	mov	r1, r3
  37802e: ab1e         	add	r3, sp, #0x78
  378030: cb0c         	ldm	r3, {r2, r3}
  378032: f268 fbd9    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2687b2
  378036: f268 fb3b    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268676
  37803a: 4602         	mov	r2, r0
  37803c: 9b03         	ldr	r3, [sp, #0xc]
  37803e: 3304         	adds	r3, #0x4
  378040: 4992         	ldr	r1, [pc, #0x248]        @ 0x37828c <NetworkManager::listenForGameEvents()+0x4e4>
  378042: 4479         	add	r1, pc
  378044: ad20         	add	r5, sp, #0x80
  378046: c903         	ldm	r1, {r0, r1}
  378048: e885 0003    	stm.w	r5, {r0, r1}
  37804c: 4990         	ldr	r1, [pc, #0x240]        @ 0x378290 <NetworkManager::listenForGameEvents()+0x4e8>
  37804e: 4479         	add	r1, pc
  378050: 9100         	str	r1, [sp]
  378052: 2100         	movs	r1, #0x0
  378054: 9101         	str	r1, [sp, #0x4]
  378056: 4610         	mov	r0, r2
  378058: 4619         	mov	r1, r3
  37805a: ab20         	add	r3, sp, #0x80
  37805c: cb0c         	ldm	r3, {r2, r3}
  37805e: f268 fbc3    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268786
  378062: f268 fb25    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26864a
  378066: 4602         	mov	r2, r0
  378068: 9b03         	ldr	r3, [sp, #0xc]
  37806a: 3304         	adds	r3, #0x4
  37806c: 4989         	ldr	r1, [pc, #0x224]        @ 0x378294 <NetworkManager::listenForGameEvents()+0x4ec>
  37806e: 4479         	add	r1, pc
  378070: ad22         	add	r5, sp, #0x88
  378072: c903         	ldm	r1, {r0, r1}
  378074: e885 0003    	stm.w	r5, {r0, r1}
  378078: 4987         	ldr	r1, [pc, #0x21c]        @ 0x378298 <NetworkManager::listenForGameEvents()+0x4f0>
  37807a: 4479         	add	r1, pc
  37807c: 9100         	str	r1, [sp]
  37807e: 2100         	movs	r1, #0x0
  378080: 9101         	str	r1, [sp, #0x4]
  378082: 4610         	mov	r0, r2
  378084: 4619         	mov	r1, r3
  378086: ab22         	add	r3, sp, #0x88
  378088: cb0c         	ldm	r3, {r2, r3}
  37808a: f268 fbad    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26875a
  37808e: f268 fb0f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26861e
  378092: 4602         	mov	r2, r0
  378094: 9b03         	ldr	r3, [sp, #0xc]
  378096: 3304         	adds	r3, #0x4
  378098: 4980         	ldr	r1, [pc, #0x200]        @ 0x37829c <NetworkManager::listenForGameEvents()+0x4f4>
  37809a: 4479         	add	r1, pc
  37809c: ad24         	add	r5, sp, #0x90
  37809e: c903         	ldm	r1, {r0, r1}
  3780a0: e885 0003    	stm.w	r5, {r0, r1}
  3780a4: 497e         	ldr	r1, [pc, #0x1f8]        @ 0x3782a0 <NetworkManager::listenForGameEvents()+0x4f8>
  3780a6: 4479         	add	r1, pc
  3780a8: 9100         	str	r1, [sp]
  3780aa: 2100         	movs	r1, #0x0
  3780ac: 9101         	str	r1, [sp, #0x4]
  3780ae: 4610         	mov	r0, r2
  3780b0: 4619         	mov	r1, r3
  3780b2: ab24         	add	r3, sp, #0x90
  3780b4: cb0c         	ldm	r3, {r2, r3}
  3780b6: f268 fb97    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26872e
  3780ba: f268 faf9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2685f2
  3780be: 4602         	mov	r2, r0
  3780c0: 9b03         	ldr	r3, [sp, #0xc]
  3780c2: 3304         	adds	r3, #0x4
  3780c4: 4977         	ldr	r1, [pc, #0x1dc]        @ 0x3782a4 <NetworkManager::listenForGameEvents()+0x4fc>
  3780c6: 4479         	add	r1, pc
  3780c8: ad26         	add	r5, sp, #0x98
  3780ca: c903         	ldm	r1, {r0, r1}
  3780cc: e885 0003    	stm.w	r5, {r0, r1}
  3780d0: 4975         	ldr	r1, [pc, #0x1d4]        @ 0x3782a8 <NetworkManager::listenForGameEvents()+0x500>
  3780d2: 4479         	add	r1, pc
  3780d4: 9100         	str	r1, [sp]
  3780d6: 2100         	movs	r1, #0x0
  3780d8: 9101         	str	r1, [sp, #0x4]
  3780da: 4610         	mov	r0, r2
  3780dc: 4619         	mov	r1, r3
  3780de: ab26         	add	r3, sp, #0x98
  3780e0: cb0c         	ldm	r3, {r2, r3}
  3780e2: f268 fb81    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268702
  3780e6: f268 fae3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2685c6
  3780ea: 4602         	mov	r2, r0
  3780ec: 9b03         	ldr	r3, [sp, #0xc]
  3780ee: 3304         	adds	r3, #0x4
  3780f0: 496e         	ldr	r1, [pc, #0x1b8]        @ 0x3782ac <NetworkManager::listenForGameEvents()+0x504>
  3780f2: 4479         	add	r1, pc
  3780f4: ad28         	add	r5, sp, #0xa0
  3780f6: c903         	ldm	r1, {r0, r1}
  3780f8: e885 0003    	stm.w	r5, {r0, r1}
  3780fc: 496c         	ldr	r1, [pc, #0x1b0]        @ 0x3782b0 <NetworkManager::listenForGameEvents()+0x508>
  3780fe: 4479         	add	r1, pc
  378100: 9100         	str	r1, [sp]
  378102: 2100         	movs	r1, #0x0
  378104: 9101         	str	r1, [sp, #0x4]
  378106: 4610         	mov	r0, r2
  378108: 4619         	mov	r1, r3
  37810a: ab28         	add	r3, sp, #0xa0
  37810c: cb0c         	ldm	r3, {r2, r3}
  37810e: f268 fb6b    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2686d6
  378112: f268 facd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26859a
  378116: 4602         	mov	r2, r0
  378118: 9b03         	ldr	r3, [sp, #0xc]
  37811a: 3304         	adds	r3, #0x4
  37811c: 4965         	ldr	r1, [pc, #0x194]        @ 0x3782b4 <NetworkManager::listenForGameEvents()+0x50c>
  37811e: 4479         	add	r1, pc
  378120: ad2a         	add	r5, sp, #0xa8
  378122: c903         	ldm	r1, {r0, r1}
  378124: e885 0003    	stm.w	r5, {r0, r1}
  378128: 4963         	ldr	r1, [pc, #0x18c]        @ 0x3782b8 <NetworkManager::listenForGameEvents()+0x510>
  37812a: 4479         	add	r1, pc
  37812c: 9100         	str	r1, [sp]
  37812e: 2100         	movs	r1, #0x0
  378130: 9101         	str	r1, [sp, #0x4]
  378132: 4610         	mov	r0, r2
  378134: 4619         	mov	r1, r3
  378136: ab2a         	add	r3, sp, #0xa8
  378138: cb0c         	ldm	r3, {r2, r3}
  37813a: f268 fb55    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2686aa
  37813e: f268 fab7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26856e
  378142: 4602         	mov	r2, r0
  378144: 9b03         	ldr	r3, [sp, #0xc]
  378146: 3304         	adds	r3, #0x4
  378148: 495c         	ldr	r1, [pc, #0x170]        @ 0x3782bc <NetworkManager::listenForGameEvents()+0x514>
  37814a: 4479         	add	r1, pc
  37814c: ad2c         	add	r5, sp, #0xb0
  37814e: c903         	ldm	r1, {r0, r1}
  378150: e885 0003    	stm.w	r5, {r0, r1}
  378154: 495a         	ldr	r1, [pc, #0x168]        @ 0x3782c0 <NetworkManager::listenForGameEvents()+0x518>
  378156: 4479         	add	r1, pc
  378158: 9100         	str	r1, [sp]
  37815a: 2100         	movs	r1, #0x0
  37815c: 9101         	str	r1, [sp, #0x4]
  37815e: 4610         	mov	r0, r2
  378160: 4619         	mov	r1, r3
  378162: ab2c         	add	r3, sp, #0xb0
  378164: cb0c         	ldm	r3, {r2, r3}
  378166: f268 fb3f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26867e
  37816a: f268 faa1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268542
  37816e: 4602         	mov	r2, r0
  378170: 9b03         	ldr	r3, [sp, #0xc]
  378172: 3304         	adds	r3, #0x4
  378174: 4953         	ldr	r1, [pc, #0x14c]        @ 0x3782c4 <NetworkManager::listenForGameEvents()+0x51c>
  378176: 4479         	add	r1, pc
  378178: ad2e         	add	r5, sp, #0xb8
  37817a: c903         	ldm	r1, {r0, r1}
  37817c: e885 0003    	stm.w	r5, {r0, r1}
  378180: 4951         	ldr	r1, [pc, #0x144]        @ 0x3782c8 <NetworkManager::listenForGameEvents()+0x520>
  378182: 4479         	add	r1, pc
  378184: 9100         	str	r1, [sp]
  378186: 2100         	movs	r1, #0x0
  378188: 9101         	str	r1, [sp, #0x4]
  37818a: 4610         	mov	r0, r2
  37818c: 4619         	mov	r1, r3
  37818e: ab2e         	add	r3, sp, #0xb8
  378190: cb0c         	ldm	r3, {r2, r3}
  378192: f268 fb29    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268652
  378196: f268 fa8b    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x268516
  37819a: 4602         	mov	r2, r0
  37819c: 9b03         	ldr	r3, [sp, #0xc]
  37819e: 3304         	adds	r3, #0x4
  3781a0: 494a         	ldr	r1, [pc, #0x128]        @ 0x3782cc <NetworkManager::listenForGameEvents()+0x524>
  3781a2: 5861         	ldr	r1, [r4, r1]
  3781a4: 9130         	str	r1, [sp, #0xc0]
  3781a6: 2100         	movs	r1, #0x0
  3781a8: 9131         	str	r1, [sp, #0xc4]
  3781aa: 4949         	ldr	r1, [pc, #0x124]        @ 0x3782d0 <NetworkManager::listenForGameEvents()+0x528>
  3781ac: 4479         	add	r1, pc
  3781ae: 9100         	str	r1, [sp]
  3781b0: 2100         	movs	r1, #0x0
  3781b2: 9101         	str	r1, [sp, #0x4]
  3781b4: 4610         	mov	r0, r2
  3781b6: 4619         	mov	r1, r3
  3781b8: ab30         	add	r3, sp, #0xc0
  3781ba: cb0c         	ldm	r3, {r2, r3}
  3781bc: f268 fb14    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x268628
  3781c0: f268 fa76    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2684ec
  3781c4: 4602         	mov	r2, r0
  3781c6: 9b03         	ldr	r3, [sp, #0xc]
  3781c8: 3304         	adds	r3, #0x4
  3781ca: 4942         	ldr	r1, [pc, #0x108]        @ 0x3782d4 <NetworkManager::listenForGameEvents()+0x52c>
  3781cc: 5861         	ldr	r1, [r4, r1]
  3781ce: 9132         	str	r1, [sp, #0xc8]
  3781d0: 2100         	movs	r1, #0x0
  3781d2: 9133         	str	r1, [sp, #0xcc]
  3781d4: 4940         	ldr	r1, [pc, #0x100]        @ 0x3782d8 <NetworkManager::listenForGameEvents()+0x530>
  3781d6: 4479         	add	r1, pc
  3781d8: 9100         	str	r1, [sp]
  3781da: 2100         	movs	r1, #0x0
  3781dc: 9101         	str	r1, [sp, #0x4]
  3781de: 4610         	mov	r0, r2
  3781e0: 4619         	mov	r1, r3
  3781e2: ab32         	add	r3, sp, #0xc8
  3781e4: cb0c         	ldm	r3, {r2, r3}
  3781e6: f268 faff    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2685fe
  3781ea: f268 fa61    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2684c2
  3781ee: 4602         	mov	r2, r0
  3781f0: 9b03         	ldr	r3, [sp, #0xc]
  3781f2: 3304         	adds	r3, #0x4
  3781f4: 4939         	ldr	r1, [pc, #0xe4]         @ 0x3782dc <NetworkManager::listenForGameEvents()+0x534>
  3781f6: 5861         	ldr	r1, [r4, r1]
  3781f8: 9134         	str	r1, [sp, #0xd0]
  3781fa: 2100         	movs	r1, #0x0
  3781fc: 9135         	str	r1, [sp, #0xd4]
  3781fe: 4938         	ldr	r1, [pc, #0xe0]         @ 0x3782e0 <NetworkManager::listenForGameEvents()+0x538>
  378200: 4479         	add	r1, pc
  378202: 9100         	str	r1, [sp]
  378204: 2100         	movs	r1, #0x0
  378206: 9101         	str	r1, [sp, #0x4]
  378208: 4610         	mov	r0, r2
  37820a: 4619         	mov	r1, r3
  37820c: ab34         	add	r3, sp, #0xd0
  37820e: cb0c         	ldm	r3, {r2, r3}
  378210: f268 faea    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2685d4
  378214: b037         	add	sp, #0xdc
  378216: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x378217); words below are literal-pool data ---
  378218: ac56         	add	r4, sp, #0x158
  37821a: 005b         	lsls	r3, r3, #0x1
  37821c: b678         	<unknown>
  37821e: 005b         	lsls	r3, r3, #0x1
  378220: 69b6         	ldr	r6, [r6, #0x18]
  378222: 0045         	lsls	r5, r0, #0x1
  378224: b650         	setend	le
  378226: 005b         	lsls	r3, r3, #0x1
  378228: 6996         	ldr	r6, [r2, #0x18]
  37822a: 0045         	lsls	r5, r0, #0x1
  37822c: b62a         	<unknown>
  37822e: 005b         	lsls	r3, r3, #0x1
  378230: 697a         	ldr	r2, [r7, #0x14]
  378232: 0045         	lsls	r5, r0, #0x1
  378234: b606         	<unknown>
  378236: 005b         	lsls	r3, r3, #0x1
  378238: 695e         	ldr	r6, [r3, #0x14]
  37823a: 0045         	lsls	r5, r0, #0x1
  37823c: b5e2         	push	{r1, r5, r6, r7, lr}
  37823e: 005b         	lsls	r3, r3, #0x1
  378240: 6942         	ldr	r2, [r0, #0x14]
  378242: 0045         	lsls	r5, r0, #0x1
  378244: b5be         	push	{r1, r2, r3, r4, r5, r7, lr}
  378246: 005b         	lsls	r3, r3, #0x1
  378248: 692e         	ldr	r6, [r5, #0x10]
  37824a: 0045         	lsls	r5, r0, #0x1
  37824c: b59a         	push	{r1, r3, r4, r7, lr}
  37824e: 005b         	lsls	r3, r3, #0x1
  378250: 6912         	ldr	r2, [r2, #0x10]
  378252: 0045         	lsls	r5, r0, #0x1
  378254: b576         	push	{r1, r2, r4, r5, r6, lr}
  378256: 005b         	lsls	r3, r3, #0x1
  378258: 68f6         	ldr	r6, [r6, #0xc]
  37825a: 0045         	lsls	r5, r0, #0x1
  37825c: b552         	push	{r1, r4, r6, lr}
  37825e: 005b         	lsls	r3, r3, #0x1
  378260: 68da         	ldr	r2, [r3, #0xc]
  378262: 0045         	lsls	r5, r0, #0x1
  378264: b52e         	push	{r1, r2, r3, r5, lr}
  378266: 005b         	lsls	r3, r3, #0x1
  378268: 68be         	ldr	r6, [r7, #0x8]
  37826a: 0045         	lsls	r5, r0, #0x1
  37826c: b50a         	push	{r1, r3, lr}
  37826e: 005b         	lsls	r3, r3, #0x1
  378270: 68a2         	ldr	r2, [r4, #0x8]
  378272: 0045         	lsls	r5, r0, #0x1
  378274: b4e6         	push	{r1, r2, r5, r6, r7}
  378276: 005b         	lsls	r3, r3, #0x1
  378278: 6886         	ldr	r6, [r0, #0x8]
  37827a: 0045         	lsls	r5, r0, #0x1
  37827c: b4c2         	push	{r1, r6, r7}
  37827e: 005b         	lsls	r3, r3, #0x1
  378280: 6866         	ldr	r6, [r4, #0x4]
  378282: 0045         	lsls	r5, r0, #0x1
  378284: b49e         	push	{r1, r2, r3, r4, r7}
  378286: 005b         	lsls	r3, r3, #0x1
  378288: 684a         	ldr	r2, [r1, #0x4]
  37828a: 0045         	lsls	r5, r0, #0x1
  37828c: b47a         	push	{r1, r3, r4, r5, r6}
  37828e: 005b         	lsls	r3, r3, #0x1
  378290: 6832         	ldr	r2, [r6]
  378292: 0045         	lsls	r5, r0, #0x1
  378294: b456         	push	{r1, r2, r4, r6}
  378296: 005b         	lsls	r3, r3, #0x1
  378298: 6812         	ldr	r2, [r2]
  37829a: 0045         	lsls	r5, r0, #0x1
  37829c: b432         	push	{r1, r4, r5}
  37829e: 005b         	lsls	r3, r3, #0x1
  3782a0: 67f2         	str	r2, [r6, #0x7c]
  3782a2: 0045         	lsls	r5, r0, #0x1
  3782a4: b40e         	push	{r1, r2, r3}
  3782a6: 005b         	lsls	r3, r3, #0x1
  3782a8: 67d2         	str	r2, [r2, #0x7c]
  3782aa: 0045         	lsls	r5, r0, #0x1
  3782ac: b3ea         	cbz	r2, 0x37832a <NetworkManager::destroyNetwork()+0x46> @ imm = #0x7a
  3782ae: 005b         	lsls	r3, r3, #0x1
  3782b0: 67ba         	str	r2, [r7, #0x78]
  3782b2: 0045         	lsls	r5, r0, #0x1
  3782b4: b3c6         	cbz	r6, 0x378328 <NetworkManager::destroyNetwork()+0x44> @ imm = #0x70
  3782b6: 005b         	lsls	r3, r3, #0x1
  3782b8: 679a         	str	r2, [r3, #0x78]
  3782ba: 0045         	lsls	r5, r0, #0x1
  3782bc: b3a2         	cbz	r2, 0x378328 <NetworkManager::destroyNetwork()+0x44> @ imm = #0x68
  3782be: 005b         	lsls	r3, r3, #0x1
  3782c0: 6782         	str	r2, [r0, #0x78]
  3782c2: 0045         	lsls	r5, r0, #0x1
  3782c4: b37e         	cbz	r6, 0x378326 <NetworkManager::destroyNetwork()+0x42> @ imm = #0x5e
  3782c6: 005b         	lsls	r3, r3, #0x1
  3782c8: 676a         	str	r2, [r5, #0x74]
  3782ca: 0045         	lsls	r5, r0, #0x1
  3782cc: dc94         	bgt	0x3781f8 <NetworkManager::listenForGameEvents()+0x450> @ imm = #-0xd8
  3782ce: ffff 674c    	<unknown>
  3782d2: 0045         	lsls	r5, r0, #0x1
  3782d4: dc98         	bgt	0x378208 <NetworkManager::listenForGameEvents()+0x460> @ imm = #-0xd0
  3782d6: ffff 673e    	vqshl.u32	d22, d30, #0x1f
  3782da: 0045         	lsls	r5, r0, #0x1
  3782dc: dc9c         	bgt	0x378218 <NetworkManager::listenForGameEvents()+0x470> @ imm = #-0xc8
  3782de: ffff 6728    	<unknown>
  3782e2: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::destroyNetwork
//      file offset 0x3782e4 (= ELF address; Ghidra 0x3882e4), 240 bytes, Thumb-2
  3782e4: b510         	push	{r4, lr}
  3782e6: b082         	sub	sp, #0x8
  3782e8: 9001         	str	r0, [sp, #0x4]
  3782ea: 4c37         	ldr	r4, [pc, #0xdc]         @ 0x3783c8 <NetworkManager::destroyNetwork()+0xe4>
  3782ec: 447c         	add	r4, pc
  3782ee: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3783cc <NetworkManager::destroyNetwork()+0xe8>
  3782f0: 58e3         	ldr	r3, [r4, r3]
  3782f2: 2200         	movs	r2, #0x0
  3782f4: 601a         	str	r2, [r3]
  3782f6: f268 f9db    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2683b6
  3782fa: 4602         	mov	r2, r0
  3782fc: 9b01         	ldr	r3, [sp, #0x4]
  3782fe: 3304         	adds	r3, #0x4
  378300: 4610         	mov	r0, r2
  378302: 4619         	mov	r1, r3
  378304: f268 fb0c    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x268618
  378308: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3783d0 <NetworkManager::destroyNetwork()+0xec>
  37830a: 58e3         	ldr	r3, [r4, r3]
  37830c: 681b         	ldr	r3, [r3]
  37830e: 4618         	mov	r0, r3
  378310: f21f fdd2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21fba4
  378314: 9b01         	ldr	r3, [sp, #0x4]
  378316: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  37831a: 2b00         	cmp	r3, #0x0
  37831c: d00f         	beq	0x37833e <NetworkManager::destroyNetwork()+0x5a> @ imm = #0x1e
  37831e: 9b01         	ldr	r3, [sp, #0x4]
  378320: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  378324: 2b00         	cmp	r3, #0x0
  378326: d00a         	beq	0x37833e <NetworkManager::destroyNetwork()+0x5a> @ imm = #0x14
  378328: 9b01         	ldr	r3, [sp, #0x4]
  37832a: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  37832e: 681b         	ldr	r3, [r3]
  378330: 3364         	adds	r3, #0x64
  378332: 681b         	ldr	r3, [r3]
  378334: 9a01         	ldr	r2, [sp, #0x4]
  378336: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  37833a: 4610         	mov	r0, r2
  37833c: 4798         	blx	r3
  37833e: 9b01         	ldr	r3, [sp, #0x4]
  378340: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  378344: 2b00         	cmp	r3, #0x0
  378346: d00a         	beq	0x37835e <NetworkManager::destroyNetwork()+0x7a> @ imm = #0x14
  378348: 9b01         	ldr	r3, [sp, #0x4]
  37834a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  37834e: 681b         	ldr	r3, [r3]
  378350: 3364         	adds	r3, #0x64
  378352: 681b         	ldr	r3, [r3]
  378354: 9a01         	ldr	r2, [sp, #0x4]
  378356: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  37835a: 4610         	mov	r0, r2
  37835c: 4798         	blx	r3
  37835e: 9b01         	ldr	r3, [sp, #0x4]
  378360: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  378364: 2b00         	cmp	r3, #0x0
  378366: d00a         	beq	0x37837e <NetworkManager::destroyNetwork()+0x9a> @ imm = #0x14
  378368: 9b01         	ldr	r3, [sp, #0x4]
  37836a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  37836e: 681b         	ldr	r3, [r3]
  378370: 3364         	adds	r3, #0x64
  378372: 681b         	ldr	r3, [r3]
  378374: 9a01         	ldr	r2, [sp, #0x4]
  378376: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  37837a: 4610         	mov	r0, r2
  37837c: 4798         	blx	r3
  37837e: 9b01         	ldr	r3, [sp, #0x4]
  378380: 2200         	movs	r2, #0x0
  378382: f8c3 210c    	str.w	r2, [r3, #0x10c]
  378386: 9b01         	ldr	r3, [sp, #0x4]
  378388: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37838c: 4618         	mov	r0, r3
  37838e: f21f fd93    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21fb26
  378392: 9b01         	ldr	r3, [sp, #0x4]
  378394: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378398: 4618         	mov	r0, r3
  37839a: f21f fd8d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21fb1a
  37839e: 9b01         	ldr	r3, [sp, #0x4]
  3783a0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3783a4: 4618         	mov	r0, r3
  3783a6: f21f fd87    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21fb0e
  3783aa: 9b01         	ldr	r3, [sp, #0x4]
  3783ac: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3783b0: 4618         	mov	r0, r3
  3783b2: f21f fd81    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21fb02
  3783b6: 9b01         	ldr	r3, [sp, #0x4]
  3783b8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3783bc: 4618         	mov	r0, r3
  3783be: f21f fd7b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21faf6
  3783c2: b002         	add	sp, #0x8
  3783c4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3783c5); words below are literal-pool data ---
  3783c6: bf00         	nop
  3783c8: a71c         	adr	r7, #112 <NetworkManager::useGameCenterBT()+0x14>
  3783ca: 005b         	lsls	r3, r3, #0x1
  3783cc: dc78         	bgt	0x3784c0 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x14> @ imm = #0xf0
  3783ce: ffff dc90    	<unknown>
  3783d2: ffff b500    	<unknown>

// ==== NetworkManager::useGameCenterBT
//      file offset 0x3783d4 (= ELF address; Ghidra 0x3883d4), 40 bytes, Thumb-2
  3783d4: b500         	push	{lr}
  3783d6: b083         	sub	sp, #0xc
  3783d8: 9001         	str	r0, [sp, #0x4]
  3783da: 9801         	ldr	r0, [sp, #0x4]
  3783dc: 2100         	movs	r1, #0x0
  3783de: f002 f977    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x22ee
  3783e2: 9801         	ldr	r0, [sp, #0x4]
  3783e4: 2105         	movs	r1, #0x5
  3783e6: f002 f97f    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0x22fe
  3783ea: 9b01         	ldr	r3, [sp, #0x4]
  3783ec: f8d3 2100    	ldr.w	r2, [r3, #0x100]
  3783f0: 9b01         	ldr	r3, [sp, #0x4]
  3783f2: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3783f6: b003         	add	sp, #0xc
  3783f8: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::useGameCenter
//      file offset 0x3783fc (= ELF address; Ghidra 0x3883fc), 40 bytes, Thumb-2
  3783fc: b500         	push	{lr}
  3783fe: b083         	sub	sp, #0xc
  378400: 9001         	str	r0, [sp, #0x4]
  378402: 9801         	ldr	r0, [sp, #0x4]
  378404: 2100         	movs	r1, #0x0
  378406: f002 f963    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x22c6
  37840a: 9801         	ldr	r0, [sp, #0x4]
  37840c: 2103         	movs	r1, #0x3
  37840e: f002 f96b    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0x22d6
  378412: 9b01         	ldr	r3, [sp, #0x4]
  378414: f8d3 2100    	ldr.w	r2, [r3, #0x100]
  378418: 9b01         	ldr	r3, [sp, #0x4]
  37841a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  37841e: b003         	add	sp, #0xc
  378420: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::useGooglePlay
//      file offset 0x378424 (= ELF address; Ghidra 0x388424), 40 bytes, Thumb-2
  378424: b500         	push	{lr}
  378426: b083         	sub	sp, #0xc
  378428: 9001         	str	r0, [sp, #0x4]
  37842a: 9801         	ldr	r0, [sp, #0x4]
  37842c: 2100         	movs	r1, #0x0
  37842e: f002 f94f    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x229e
  378432: 9801         	ldr	r0, [sp, #0x4]
  378434: 2104         	movs	r1, #0x4
  378436: f002 f957    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0x22ae
  37843a: 9b01         	ldr	r3, [sp, #0x4]
  37843c: f8d3 2104    	ldr.w	r2, [r3, #0x104]
  378440: 9b01         	ldr	r3, [sp, #0x4]
  378442: f8c3 210c    	str.w	r2, [r3, #0x10c]
  378446: b003         	add	sp, #0xc
  378448: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::useRakNetLAN
//      file offset 0x37844c (= ELF address; Ghidra 0x38844c), 40 bytes, Thumb-2
  37844c: b500         	push	{lr}
  37844e: b083         	sub	sp, #0xc
  378450: 9001         	str	r0, [sp, #0x4]
  378452: 9801         	ldr	r0, [sp, #0x4]
  378454: 2100         	movs	r1, #0x0
  378456: f002 f93b    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x2276
  37845a: 9801         	ldr	r0, [sp, #0x4]
  37845c: 2102         	movs	r1, #0x2
  37845e: f002 f943    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0x2286
  378462: 9b01         	ldr	r3, [sp, #0x4]
  378464: f8d3 2108    	ldr.w	r2, [r3, #0x108]
  378468: 9b01         	ldr	r3, [sp, #0x4]
  37846a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  37846e: b003         	add	sp, #0xc
  378470: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getRakNetInstance
//      file offset 0x378474 (= ELF address; Ghidra 0x388474), 16 bytes, Thumb-2
  378474: b082         	sub	sp, #0x8
  378476: 9001         	str	r0, [sp, #0x4]
  378478: 9b01         	ldr	r3, [sp, #0x4]
  37847a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37847e: 4618         	mov	r0, r3
  378480: b002         	add	sp, #0x8
  378482: 4770         	bx	lr

// ==== NetworkManager::isPlayerAuthenticated
//      file offset 0x378484 (= ELF address; Ghidra 0x388484), 38 bytes, Thumb-2
  378484: b500         	push	{lr}
  378486: b083         	sub	sp, #0xc
  378488: 9001         	str	r0, [sp, #0x4]
  37848a: 9b01         	ldr	r3, [sp, #0x4]
  37848c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  378490: 681b         	ldr	r3, [r3]
  378492: 3358         	adds	r3, #0x58
  378494: 681b         	ldr	r3, [r3]
  378496: 9a01         	ldr	r2, [sp, #0x4]
  378498: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37849c: 4610         	mov	r0, r2
  37849e: 4798         	blx	r3
  3784a0: 4603         	mov	r3, r0
  3784a2: 4618         	mov	r0, r3
  3784a4: b003         	add	sp, #0xc
  3784a6: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::sendDataMessageToAll
//      file offset 0x3784ac (= ELF address; Ghidra 0x3884ac), 112 bytes, Thumb-2
  3784ac: b510         	push	{r4, lr}
  3784ae: b084         	sub	sp, #0x10
  3784b0: 9003         	str	r0, [sp, #0xc]
  3784b2: 9102         	str	r1, [sp, #0x8]
  3784b4: 9201         	str	r2, [sp, #0x4]
  3784b6: f88d 3003    	strb.w	r3, [sp, #0x3]
  3784ba: 4b16         	ldr	r3, [pc, #0x58]         @ 0x378514 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x68>
  3784bc: 447b         	add	r3, pc
  3784be: 4a16         	ldr	r2, [pc, #0x58]         @ 0x378518 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x6c>
  3784c0: 589a         	ldr	r2, [r3, r2]
  3784c2: 6812         	ldr	r2, [r2]
  3784c4: 2a01         	cmp	r2, #0x1
  3784c6: d004         	beq	0x3784d2 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x26> @ imm = #0x8
  3784c8: 9a03         	ldr	r2, [sp, #0xc]
  3784ca: f892 211c    	ldrb.w	r2, [r2, #0x11c]
  3784ce: 2a00         	cmp	r2, #0x0
  3784d0: d00a         	beq	0x3784e8 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x3c> @ imm = #0x14
  3784d2: 9b03         	ldr	r3, [sp, #0xc]
  3784d4: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  3784d8: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3784dc: 4610         	mov	r0, r2
  3784de: 9902         	ldr	r1, [sp, #0x8]
  3784e0: 9a01         	ldr	r2, [sp, #0x4]
  3784e2: f049 fdef    	bl	0x3c20c4 <RakNetDelegate::sendData(void const*, int, bool)> @ imm = #0x49bde
  3784e6: e013         	b	0x378510 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x64> @ imm = #0x26
  3784e8: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x378518 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x6c>
  3784ea: 589b         	ldr	r3, [r3, r2]
  3784ec: 681b         	ldr	r3, [r3]
  3784ee: 2b00         	cmp	r3, #0x0
  3784f0: d00e         	beq	0x378510 <NetworkManager::sendDataMessageToAll(void const*, int, bool)+0x64> @ imm = #0x1c
  3784f2: 9b03         	ldr	r3, [sp, #0xc]
  3784f4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3784f8: 681b         	ldr	r3, [r3]
  3784fa: 331c         	adds	r3, #0x1c
  3784fc: 681c         	ldr	r4, [r3]
  3784fe: 9b03         	ldr	r3, [sp, #0xc]
  378500: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  378504: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  378508: 4610         	mov	r0, r2
  37850a: 9902         	ldr	r1, [sp, #0x8]
  37850c: 9a01         	ldr	r2, [sp, #0x4]
  37850e: 47a0         	blx	r4
  378510: b004         	add	sp, #0x10
  378512: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x378513); words below are literal-pool data ---
  378514: a54c         	adr	r5, #304 <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0x48>
  378516: 005b         	lsls	r3, r3, #0x1
  378518: dc78         	bgt	0x37860c <NetworkManager::getMessageIds()> @ imm = #0xf0
  37851a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== NetworkManager::sendDataMessageToPeer
//      file offset 0x37851c (= ELF address; Ghidra 0x38851c), 172 bytes, Thumb-2
  37851c: b530         	push	{r4, r5, lr}
  37851e: b089         	sub	sp, #0x24
  378520: 9005         	str	r0, [sp, #0x14]
  378522: 9104         	str	r1, [sp, #0x10]
  378524: 9203         	str	r2, [sp, #0xc]
  378526: 9302         	str	r3, [sp, #0x8]
  378528: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3785c0 <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0xa4>
  37852a: 447a         	add	r2, pc
  37852c: 9b05         	ldr	r3, [sp, #0x14]
  37852e: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  378532: 2b00         	cmp	r3, #0x0
  378534: d015         	beq	0x378562 <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0x46> @ imm = #0x2a
  378536: 9b05         	ldr	r3, [sp, #0x14]
  378538: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  37853c: ab07         	add	r3, sp, #0x1c
  37853e: 4618         	mov	r0, r3
  378540: 9902         	ldr	r1, [sp, #0x8]
  378542: f03d f7d1    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43dfa2
  378546: ab07         	add	r3, sp, #0x1c
  378548: f89d 2030    	ldrb.w	r2, [sp, #0x30]
  37854c: 9200         	str	r2, [sp]
  37854e: 4620         	mov	r0, r4
  378550: 9904         	ldr	r1, [sp, #0x10]
  378552: 9a03         	ldr	r2, [sp, #0xc]
  378554: f049 fe4a    	bl	0x3c21ec <RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool)> @ imm = #0x49c94
  378558: ab07         	add	r3, sp, #0x1c
  37855a: 4618         	mov	r0, r3
  37855c: f03d f1da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d3b4
  378560: e02b         	b	0x3785ba <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0x9e> @ imm = #0x56
  378562: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3785c4 <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0xa8>
  378564: 58d3         	ldr	r3, [r2, r3]
  378566: 681b         	ldr	r3, [r3]
  378568: 2b00         	cmp	r3, #0x0
  37856a: d026         	beq	0x3785ba <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0x9e> @ imm = #0x4c
  37856c: 9b05         	ldr	r3, [sp, #0x14]
  37856e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  378572: 681b         	ldr	r3, [r3]
  378574: 3320         	adds	r3, #0x20
  378576: 681c         	ldr	r4, [r3]
  378578: 9b05         	ldr	r3, [sp, #0x14]
  37857a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  37857e: ab07         	add	r3, sp, #0x1c
  378580: 4618         	mov	r0, r3
  378582: 9902         	ldr	r1, [sp, #0x8]
  378584: f03d f7b0    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43df60
  378588: ab07         	add	r3, sp, #0x1c
  37858a: f89d 2030    	ldrb.w	r2, [sp, #0x30]
  37858e: 9200         	str	r2, [sp]
  378590: 4628         	mov	r0, r5
  378592: 9904         	ldr	r1, [sp, #0x10]
  378594: 9a03         	ldr	r2, [sp, #0xc]
  378596: 47a0         	blx	r4
  378598: ab07         	add	r3, sp, #0x1c
  37859a: 4618         	mov	r0, r3
  37859c: f03d f1ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d374
  3785a0: e00b         	b	0x3785ba <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)+0x9e> @ imm = #0x16
  3785a2: ab07         	add	r3, sp, #0x1c
  3785a4: 4618         	mov	r0, r3
  3785a6: f03d f1b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d36a
  3785aa: f00f f57f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40fafe
  3785ae: ab07         	add	r3, sp, #0x1c
  3785b0: 4618         	mov	r0, r3
  3785b2: f03d f1af    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d35e
  3785b6: f00f f579    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40faf2
  3785ba: b009         	add	sp, #0x24
  3785bc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3785bd); words below are literal-pool data ---
  3785be: bf00         	nop
  3785c0: a4de         	adr	r4, #888 <NetworkManager::getPeerCount()+0x1a>
  3785c2: 005b         	lsls	r3, r3, #0x1
  3785c4: dc78         	bgt	0x3786b8 <NetworkManager::getPeerCount()+0x30> @ imm = #0xf0
  3785c6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== NetworkManager::readMessage
//      file offset 0x3785c8 (= ELF address; Ghidra 0x3885c8), 50 bytes, Thumb-2
  3785c8: b510         	push	{r4, lr}
  3785ca: b084         	sub	sp, #0x10
  3785cc: 9003         	str	r0, [sp, #0xc]
  3785ce: 9102         	str	r1, [sp, #0x8]
  3785d0: 9201         	str	r2, [sp, #0x4]
  3785d2: 9b03         	ldr	r3, [sp, #0xc]
  3785d4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3785d8: 4618         	mov	r0, r3
  3785da: 9902         	ldr	r1, [sp, #0x8]
  3785dc: f221 fe46    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221c8c
  3785e0: 9b03         	ldr	r3, [sp, #0xc]
  3785e2: f8d3 40f0    	ldr.w	r4, [r3, #0xf0]
  3785e6: 9801         	ldr	r0, [sp, #0x4]
  3785e8: f221 fa28    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x221450
  3785ec: 4603         	mov	r3, r0
  3785ee: 4620         	mov	r0, r4
  3785f0: 4619         	mov	r1, r3
  3785f2: f221 fe3b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221c76
  3785f6: b004         	add	sp, #0x10
  3785f8: bd10         	pop	{r4, pc}

// ==== NetworkManager::getMessages
//      file offset 0x3785fc (= ELF address; Ghidra 0x3885fc), 16 bytes, Thumb-2
  3785fc: b082         	sub	sp, #0x8
  3785fe: 9001         	str	r0, [sp, #0x4]
  378600: 9b01         	ldr	r3, [sp, #0x4]
  378602: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  378606: 4618         	mov	r0, r3
  378608: b002         	add	sp, #0x8
  37860a: 4770         	bx	lr

// ==== NetworkManager::getMessageIds
//      file offset 0x37860c (= ELF address; Ghidra 0x38860c), 16 bytes, Thumb-2
  37860c: b082         	sub	sp, #0x8
  37860e: 9001         	str	r0, [sp, #0x4]
  378610: 9b01         	ldr	r3, [sp, #0x4]
  378612: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  378616: 4618         	mov	r0, r3
  378618: b002         	add	sp, #0x8
  37861a: 4770         	bx	lr

// ==== NetworkManager::clearMessages
//      file offset 0x37861c (= ELF address; Ghidra 0x38861c), 92 bytes, Thumb-2
  37861c: b500         	push	{lr}
  37861e: b083         	sub	sp, #0xc
  378620: 9001         	str	r0, [sp, #0x4]
  378622: 9b01         	ldr	r3, [sp, #0x4]
  378624: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  378628: 4618         	mov	r0, r3
  37862a: f221 fd59    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x221ab2
  37862e: 4603         	mov	r3, r0
  378630: 2b00         	cmp	r3, #0x0
  378632: bf0c         	ite	eq
  378634: 2300         	moveq	r3, #0x0
  378636: 2301         	movne	r3, #0x1
  378638: b2db         	uxtb	r3, r3
  37863a: 2b00         	cmp	r3, #0x0
  37863c: d005         	beq	0x37864a <NetworkManager::clearMessages()+0x2e> @ imm = #0xa
  37863e: 9b01         	ldr	r3, [sp, #0x4]
  378640: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  378644: 4618         	mov	r0, r3
  378646: f221 fe8d    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x221d1a
  37864a: 9b01         	ldr	r3, [sp, #0x4]
  37864c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  378650: 4618         	mov	r0, r3
  378652: f221 fd45    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x221a8a
  378656: 4603         	mov	r3, r0
  378658: 2b00         	cmp	r3, #0x0
  37865a: bf0c         	ite	eq
  37865c: 2300         	moveq	r3, #0x0
  37865e: 2301         	movne	r3, #0x1
  378660: b2db         	uxtb	r3, r3
  378662: 2b00         	cmp	r3, #0x0
  378664: d005         	beq	0x378672 <NetworkManager::clearMessages()+0x56> @ imm = #0xa
  378666: 9b01         	ldr	r3, [sp, #0x4]
  378668: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  37866c: 4618         	mov	r0, r3
  37866e: f221 fe79    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x221cf2
  378672: b003         	add	sp, #0xc
  378674: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getPeerPlayers
//      file offset 0x378678 (= ELF address; Ghidra 0x388678), 16 bytes, Thumb-2
  378678: b082         	sub	sp, #0x8
  37867a: 9001         	str	r0, [sp, #0x4]
  37867c: 9b01         	ldr	r3, [sp, #0x4]
  37867e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  378682: 4618         	mov	r0, r3
  378684: b002         	add	sp, #0x8
  378686: 4770         	bx	lr

// ==== NetworkManager::getPeerCount
//      file offset 0x378688 (= ELF address; Ghidra 0x388688), 64 bytes, Thumb-2
  378688: b500         	push	{lr}
  37868a: b083         	sub	sp, #0xc
  37868c: 9001         	str	r0, [sp, #0x4]
  37868e: 9b01         	ldr	r3, [sp, #0x4]
  378690: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  378694: 2b00         	cmp	r3, #0x0
  378696: d00c         	beq	0x3786b2 <NetworkManager::getPeerCount()+0x2a> @ imm = #0x18
  378698: 9b01         	ldr	r3, [sp, #0x4]
  37869a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37869e: 681b         	ldr	r3, [r3]
  3786a0: 3350         	adds	r3, #0x50
  3786a2: 681b         	ldr	r3, [r3]
  3786a4: 9a01         	ldr	r2, [sp, #0x4]
  3786a6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3786aa: 4610         	mov	r0, r2
  3786ac: 4798         	blx	r3
  3786ae: 4603         	mov	r3, r0
  3786b0: e006         	b	0x3786c0 <NetworkManager::getPeerCount()+0x38> @ imm = #0xc
  3786b2: 9b01         	ldr	r3, [sp, #0x4]
  3786b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3786b8: 4618         	mov	r0, r3
  3786ba: f21b fad7    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x21b5ae
  3786be: 4603         	mov	r3, r0
  3786c0: 4618         	mov	r0, r3
  3786c2: b003         	add	sp, #0xc
  3786c4: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::addNewPeerID
//      file offset 0x3786c8 (= ELF address; Ghidra 0x3886c8), 412 bytes, Thumb-2
  3786c8: b510         	push	{r4, lr}
  3786ca: b086         	sub	sp, #0x18
  3786cc: 9001         	str	r0, [sp, #0x4]
  3786ce: 9100         	str	r1, [sp]
  3786d0: 9b01         	ldr	r3, [sp, #0x4]
  3786d2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3786d6: 4618         	mov	r0, r3
  3786d8: 9900         	ldr	r1, [sp]
  3786da: f21b fc09    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x21b812
  3786de: 4603         	mov	r3, r0
  3786e0: 2b00         	cmp	r3, #0x0
  3786e2: bf14         	ite	ne
  3786e4: 2300         	movne	r3, #0x0
  3786e6: 2301         	moveq	r3, #0x1
  3786e8: b2db         	uxtb	r3, r3
  3786ea: 2b00         	cmp	r3, #0x0
  3786ec: f000 80b1    	beq.w	0x378852 <NetworkManager::addNewPeerID(std::string)+0x18a> @ imm = #0x162
  3786f0: f221 fb20    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x221640
  3786f4: 4603         	mov	r3, r0
  3786f6: 9305         	str	r3, [sp, #0x14]
  3786f8: 9800         	ldr	r0, [sp]
  3786fa: f221 f99f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x22133e
  3786fe: 4603         	mov	r3, r0
  378700: 9805         	ldr	r0, [sp, #0x14]
  378702: 4619         	mov	r1, r3
  378704: f221 fdb2    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221b64
  378708: ab03         	add	r3, sp, #0xc
  37870a: 4618         	mov	r0, r3
  37870c: f011 f672    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411ce4
  378710: aa04         	add	r2, sp, #0x10
  378712: ab03         	add	r3, sp, #0xc
  378714: 4610         	mov	r0, r2
  378716: 4a50         	ldr	r2, [pc, #0x140]        @ 0x378858 <NetworkManager::addNewPeerID(std::string)+0x190>
  378718: 447a         	add	r2, pc
  37871a: 4611         	mov	r1, r2
  37871c: 461a         	mov	r2, r3
  37871e: f03e f19f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43e33e
  378722: ab04         	add	r3, sp, #0x10
  378724: 4618         	mov	r0, r3
  378726: f221 f989    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x221312
  37872a: 4603         	mov	r3, r0
  37872c: 9805         	ldr	r0, [sp, #0x14]
  37872e: 4619         	mov	r1, r3
  378730: f221 fd9c    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221b38
  378734: ab04         	add	r3, sp, #0x10
  378736: 4618         	mov	r0, r3
  378738: f03d f0ec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d1d8
  37873c: ab03         	add	r3, sp, #0xc
  37873e: 4618         	mov	r0, r3
  378740: f011 f65c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411cb8
  378744: f04f 30ff    	mov.w	r0, #0xffffffff
  378748: f76c fade    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x93a44
  37874c: 4603         	mov	r3, r0
  37874e: 9805         	ldr	r0, [sp, #0x14]
  378750: 4619         	mov	r1, r3
  378752: f221 fd8b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221b16
  378756: ab03         	add	r3, sp, #0xc
  378758: 4618         	mov	r0, r3
  37875a: f011 f64b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411c96
  37875e: aa04         	add	r2, sp, #0x10
  378760: ab03         	add	r3, sp, #0xc
  378762: 4610         	mov	r0, r2
  378764: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x37885c <NetworkManager::addNewPeerID(std::string)+0x194>
  378766: 447a         	add	r2, pc
  378768: 4611         	mov	r1, r2
  37876a: 461a         	mov	r2, r3
  37876c: f03e f178    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43e2f0
  378770: ab04         	add	r3, sp, #0x10
  378772: 4618         	mov	r0, r3
  378774: f221 f962    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2212c4
  378778: 4603         	mov	r3, r0
  37877a: 9805         	ldr	r0, [sp, #0x14]
  37877c: 4619         	mov	r1, r3
  37877e: f221 fd75    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221aea
  378782: ab04         	add	r3, sp, #0x10
  378784: 4618         	mov	r0, r3
  378786: f03d f0c5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d18a
  37878a: ab03         	add	r3, sp, #0xc
  37878c: 4618         	mov	r0, r3
  37878e: f011 f635    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411c6a
  378792: 2000         	movs	r0, #0x0
  378794: f76c fab8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x93a90
  378798: 4603         	mov	r3, r0
  37879a: 9805         	ldr	r0, [sp, #0x14]
  37879c: 4619         	mov	r1, r3
  37879e: f221 fd65    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221aca
  3787a2: 2000         	movs	r0, #0x0
  3787a4: f76c fab0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x93aa0
  3787a8: 4603         	mov	r3, r0
  3787aa: 9805         	ldr	r0, [sp, #0x14]
  3787ac: 4619         	mov	r1, r3
  3787ae: f221 fd5d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221aba
  3787b2: 2000         	movs	r0, #0x0
  3787b4: f76c faa8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x93ab0
  3787b8: 4603         	mov	r3, r0
  3787ba: 9805         	ldr	r0, [sp, #0x14]
  3787bc: 4619         	mov	r1, r3
  3787be: f221 fd55    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221aaa
  3787c2: f221 fab7    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x22156e
  3787c6: 4603         	mov	r3, r0
  3787c8: 9805         	ldr	r0, [sp, #0x14]
  3787ca: 4619         	mov	r1, r3
  3787cc: f221 fd4e    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x221a9c
  3787d0: 9b01         	ldr	r3, [sp, #0x4]
  3787d2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3787d6: 4618         	mov	r0, r3
  3787d8: 9905         	ldr	r1, [sp, #0x14]
  3787da: 9a00         	ldr	r2, [sp]
  3787dc: f21c f8ac    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x21c158
  3787e0: f267 ff66    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x267ecc
  3787e4: 4604         	mov	r4, r0
  3787e6: 9800         	ldr	r0, [sp]
  3787e8: f221 f928    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x221250
  3787ec: 4603         	mov	r3, r0
  3787ee: 4620         	mov	r0, r4
  3787f0: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x378860 <NetworkManager::addNewPeerID(std::string)+0x198>
  3787f2: 447a         	add	r2, pc
  3787f4: 4611         	mov	r1, r2
  3787f6: 461a         	mov	r2, r3
  3787f8: f268 f998    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x268330
  3787fc: ab04         	add	r3, sp, #0x10
  3787fe: 4618         	mov	r0, r3
  378800: 9901         	ldr	r1, [sp, #0x4]
  378802: f000 f8d1    	bl	0x3789a8 <NetworkManager::getSmallestPeerID()> @ imm = #0x1a2
  378806: ab04         	add	r3, sp, #0x10
  378808: 9801         	ldr	r0, [sp, #0x4]
  37880a: 4619         	mov	r1, r3
  37880c: f000 f970    	bl	0x378af0 <NetworkManager::setLeaderPeerID(std::string)> @ imm = #0x2e0
  378810: ab04         	add	r3, sp, #0x10
  378812: 4618         	mov	r0, r3
  378814: f03d f07e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d0fc
  378818: e01b         	b	0x378852 <NetworkManager::addNewPeerID(std::string)+0x18a> @ imm = #0x36
  37881a: ab04         	add	r3, sp, #0x10
  37881c: 4618         	mov	r0, r3
  37881e: f03d f079    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d0f2
  378822: e7ff         	b	0x378824 <NetworkManager::addNewPeerID(std::string)+0x15c> @ imm = #-0x2
  378824: ab03         	add	r3, sp, #0xc
  378826: 4618         	mov	r0, r3
  378828: f011 f5e8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411bd0
  37882c: f00f f43e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f87c
  378830: ab04         	add	r3, sp, #0x10
  378832: 4618         	mov	r0, r3
  378834: f03d f06e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d0dc
  378838: e7ff         	b	0x37883a <NetworkManager::addNewPeerID(std::string)+0x172> @ imm = #-0x2
  37883a: ab03         	add	r3, sp, #0xc
  37883c: 4618         	mov	r0, r3
  37883e: f011 f5dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411bba
  378842: f00f f433    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f866
  378846: ab04         	add	r3, sp, #0x10
  378848: 4618         	mov	r0, r3
  37884a: f03d f063    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d0c6
  37884e: f00f f42d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f85a
  378852: b006         	add	sp, #0x18
  378854: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x378855); words below are literal-pool data ---
  378856: bf00         	nop
  378858: 6228         	str	r0, [r5, #0x20]
  37885a: 0045         	lsls	r5, r0, #0x1
  37885c: 5f86         	ldrsh	r6, [r0, r6]
  37885e: 0045         	lsls	r5, r0, #0x1
  378860: 615e         	str	r6, [r3, #0x14]
  378862: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::removePeerID
//      file offset 0x378864 (= ELF address; Ghidra 0x388864), 324 bytes, Thumb-2
  378864: b530         	push	{r4, r5, lr}
  378866: b087         	sub	sp, #0x1c
  378868: 9001         	str	r0, [sp, #0x4]
  37886a: 9100         	str	r1, [sp]
  37886c: f267 ff20    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x267e40
  378870: 4604         	mov	r4, r0
  378872: 9800         	ldr	r0, [sp]
  378874: f221 f8e2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2211c4
  378878: 4603         	mov	r3, r0
  37887a: 4620         	mov	r0, r4
  37887c: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x37899c <NetworkManager::removePeerID(std::string)+0x138>
  37887e: 447a         	add	r2, pc
  378880: 4611         	mov	r1, r2
  378882: 461a         	mov	r2, r3
  378884: f268 f952    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2682a4
  378888: 9b01         	ldr	r3, [sp, #0x4]
  37888a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  37888e: 4618         	mov	r0, r3
  378890: 9900         	ldr	r1, [sp]
  378892: f21c fd11    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x21ca22
  378896: 2300         	movs	r3, #0x0
  378898: 9305         	str	r3, [sp, #0x14]
  37889a: e03f         	b	0x37891c <NetworkManager::removePeerID(std::string)+0xb8> @ imm = #0x7e
  37889c: 9b01         	ldr	r3, [sp, #0x4]
  37889e: f8d3 20f0    	ldr.w	r2, [r3, #0xf0]
  3788a2: 9b05         	ldr	r3, [sp, #0x14]
  3788a4: 4610         	mov	r0, r2
  3788a6: 4619         	mov	r1, r3
  3788a8: f221 fc3a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x221874
  3788ac: 4603         	mov	r3, r0
  3788ae: 4618         	mov	r0, r3
  3788b0: f221 f83a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x221074
  3788b4: 4603         	mov	r3, r0
  3788b6: 9800         	ldr	r0, [sp]
  3788b8: 4619         	mov	r1, r3
  3788ba: f03c f733    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x43ce66
  3788be: 4603         	mov	r3, r0
  3788c0: 2b00         	cmp	r3, #0x0
  3788c2: bf14         	ite	ne
  3788c4: 2300         	movne	r3, #0x0
  3788c6: 2301         	moveq	r3, #0x1
  3788c8: b2db         	uxtb	r3, r3
  3788ca: 2b00         	cmp	r3, #0x0
  3788cc: d023         	beq	0x378916 <NetworkManager::removePeerID(std::string)+0xb2> @ imm = #0x46
  3788ce: 9b01         	ldr	r3, [sp, #0x4]
  3788d0: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  3788d4: 9c05         	ldr	r4, [sp, #0x14]
  3788d6: ab03         	add	r3, sp, #0xc
  3788d8: 4618         	mov	r0, r3
  3788da: f011 f58b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411b16
  3788de: aa04         	add	r2, sp, #0x10
  3788e0: ab03         	add	r3, sp, #0xc
  3788e2: 4610         	mov	r0, r2
  3788e4: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3789a0 <NetworkManager::removePeerID(std::string)+0x13c>
  3788e6: 447a         	add	r2, pc
  3788e8: 4611         	mov	r1, r2
  3788ea: 461a         	mov	r2, r3
  3788ec: f03e f0b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43e170
  3788f0: ab04         	add	r3, sp, #0x10
  3788f2: 4618         	mov	r0, r3
  3788f4: f221 f8a2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x221144
  3788f8: 4603         	mov	r3, r0
  3788fa: 4628         	mov	r0, r5
  3788fc: 4621         	mov	r1, r4
  3788fe: 461a         	mov	r2, r3
  378900: 2301         	movs	r3, #0x1
  378902: f221 fd91    	bl	0x59a428 <cocos2d::CCArray::replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool)> @ imm = #0x221b22
  378906: ab04         	add	r3, sp, #0x10
  378908: 4618         	mov	r0, r3
  37890a: f03d f003    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43d006
  37890e: ab03         	add	r3, sp, #0xc
  378910: 4618         	mov	r0, r3
  378912: f011 f573    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411ae6
  378916: 9b05         	ldr	r3, [sp, #0x14]
  378918: 3301         	adds	r3, #0x1
  37891a: 9305         	str	r3, [sp, #0x14]
  37891c: 9c05         	ldr	r4, [sp, #0x14]
  37891e: 9b01         	ldr	r3, [sp, #0x4]
  378920: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  378924: 4618         	mov	r0, r3
  378926: f221 fbdb    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2217b6
  37892a: 4603         	mov	r3, r0
  37892c: 429c         	cmp	r4, r3
  37892e: bf2c         	ite	hs
  378930: 2300         	movhs	r3, #0x0
  378932: 2301         	movlo	r3, #0x1
  378934: b2db         	uxtb	r3, r3
  378936: 2b00         	cmp	r3, #0x0
  378938: d1b0         	bne	0x37889c <NetworkManager::removePeerID(std::string)+0x38> @ imm = #-0xa0
  37893a: ab04         	add	r3, sp, #0x10
  37893c: 4618         	mov	r0, r3
  37893e: 9901         	ldr	r1, [sp, #0x4]
  378940: f000 f832    	bl	0x3789a8 <NetworkManager::getSmallestPeerID()> @ imm = #0x64
  378944: ab04         	add	r3, sp, #0x10
  378946: 9801         	ldr	r0, [sp, #0x4]
  378948: 4619         	mov	r1, r3
  37894a: f000 f8d1    	bl	0x378af0 <NetworkManager::setLeaderPeerID(std::string)> @ imm = #0x1a2
  37894e: ab04         	add	r3, sp, #0x10
  378950: 4618         	mov	r0, r3
  378952: f03c f7df    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cfbe
  378956: f267 feab    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x267d56
  37895a: 4604         	mov	r4, r0
  37895c: 9800         	ldr	r0, [sp]
  37895e: f221 f86d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2210da
  378962: 4603         	mov	r3, r0
  378964: 4620         	mov	r0, r4
  378966: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3789a4 <NetworkManager::removePeerID(std::string)+0x140>
  378968: 447a         	add	r2, pc
  37896a: 4611         	mov	r1, r2
  37896c: 461a         	mov	r2, r3
  37896e: f268 f8dd    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2681ba
  378972: e010         	b	0x378996 <NetworkManager::removePeerID(std::string)+0x132> @ imm = #0x20
  378974: ab04         	add	r3, sp, #0x10
  378976: 4618         	mov	r0, r3
  378978: f03c f7cc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cf98
  37897c: e7ff         	b	0x37897e <NetworkManager::removePeerID(std::string)+0x11a> @ imm = #-0x2
  37897e: ab03         	add	r3, sp, #0xc
  378980: 4618         	mov	r0, r3
  378982: f011 f53b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411a76
  378986: f00f f391    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f722
  37898a: ab04         	add	r3, sp, #0x10
  37898c: 4618         	mov	r0, r3
  37898e: f03c f7c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cf82
  378992: f00f f38b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f716
  378996: b007         	add	sp, #0x1c
  378998: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x378999); words below are literal-pool data ---
  37899a: bf00         	nop
  37899c: 60e2         	str	r2, [r4, #0xc]
  37899e: 0045         	lsls	r5, r0, #0x1
  3789a0: 5e06         	ldrsh	r6, [r0, r0]
  3789a2: 0045         	lsls	r5, r0, #0x1
  3789a4: 6010         	str	r0, [r2]
  3789a6: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::getSmallestPeerID
//      file offset 0x3789a8 (= ELF address; Ghidra 0x3889a8), 328 bytes, Thumb-2
  3789a8: b510         	push	{r4, lr}
  3789aa: b08a         	sub	sp, #0x28
  3789ac: 9001         	str	r0, [sp, #0x4]
  3789ae: 9100         	str	r1, [sp]
  3789b0: ab07         	add	r3, sp, #0x1c
  3789b2: 4618         	mov	r0, r3
  3789b4: f763 fa54    	bl	0x2dbe60 <std::vector<std::string, std::allocator<std::string>>::vector()> @ imm = #-0x9cb58
  3789b8: 2300         	movs	r3, #0x0
  3789ba: 9305         	str	r3, [sp, #0x14]
  3789bc: 2300         	movs	r3, #0x0
  3789be: 9306         	str	r3, [sp, #0x18]
  3789c0: 9b00         	ldr	r3, [sp]
  3789c2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3789c6: 2b00         	cmp	r3, #0x0
  3789c8: d00a         	beq	0x3789e0 <NetworkManager::getSmallestPeerID()+0x38> @ imm = #0x14
  3789ca: 9b00         	ldr	r3, [sp]
  3789cc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3789d0: 4618         	mov	r0, r3
  3789d2: f21b f94b    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x21b296
  3789d6: 4603         	mov	r3, r0
  3789d8: 2b00         	cmp	r3, #0x0
  3789da: d001         	beq	0x3789e0 <NetworkManager::getSmallestPeerID()+0x38> @ imm = #0x2
  3789dc: 2301         	movs	r3, #0x1
  3789de: e000         	b	0x3789e2 <NetworkManager::getSmallestPeerID()+0x3a> @ imm = #0x0
  3789e0: 2300         	movs	r3, #0x0
  3789e2: 2b00         	cmp	r3, #0x0
  3789e4: d03f         	beq	0x378a66 <NetworkManager::getSmallestPeerID()+0xbe> @ imm = #0x7e
  3789e6: 9b00         	ldr	r3, [sp]
  3789e8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3789ec: 695b         	ldr	r3, [r3, #0x14]
  3789ee: 9305         	str	r3, [sp, #0x14]
  3789f0: 9b00         	ldr	r3, [sp]
  3789f2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3789f6: 695b         	ldr	r3, [r3, #0x14]
  3789f8: 2b00         	cmp	r3, #0x0
  3789fa: d006         	beq	0x378a0a <NetworkManager::getSmallestPeerID()+0x62> @ imm = #0xc
  3789fc: 9b00         	ldr	r3, [sp]
  3789fe: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  378a02: 695b         	ldr	r3, [r3, #0x14]
  378a04: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  378a08: e000         	b	0x378a0c <NetworkManager::getSmallestPeerID()+0x64> @ imm = #0x0
  378a0a: 2300         	movs	r3, #0x0
  378a0c: 9306         	str	r3, [sp, #0x18]
  378a0e: e027         	b	0x378a60 <NetworkManager::getSmallestPeerID()+0xb8> @ imm = #0x4e
  378a10: 9805         	ldr	r0, [sp, #0x14]
  378a12: f7fd fd39    	bl	0x376488 <cocos2d::CCDictElement::getStrKey() const> @ imm = #-0x258e
  378a16: 4604         	mov	r4, r0
  378a18: ab03         	add	r3, sp, #0xc
  378a1a: 4618         	mov	r0, r3
  378a1c: f011 f4ea    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4119d4
  378a20: aa04         	add	r2, sp, #0x10
  378a22: ab03         	add	r3, sp, #0xc
  378a24: 4610         	mov	r0, r2
  378a26: 4621         	mov	r1, r4
  378a28: 461a         	mov	r2, r3
  378a2a: f03e f019    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43e032
  378a2e: ab03         	add	r3, sp, #0xc
  378a30: 4618         	mov	r0, r3
  378a32: f011 f4e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4119c6
  378a36: aa07         	add	r2, sp, #0x1c
  378a38: ab04         	add	r3, sp, #0x10
  378a3a: 4610         	mov	r0, r2
  378a3c: 4619         	mov	r1, r3
  378a3e: f003 fa13    	bl	0x37be68 <std::vector<std::string, std::allocator<std::string>>::push_back(std::string const&)> @ imm = #0x3426
  378a42: ab04         	add	r3, sp, #0x10
  378a44: 4618         	mov	r0, r3
  378a46: f03c f765    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ceca
  378a4a: 9b06         	ldr	r3, [sp, #0x18]
  378a4c: 9305         	str	r3, [sp, #0x14]
  378a4e: 9b06         	ldr	r3, [sp, #0x18]
  378a50: 2b00         	cmp	r3, #0x0
  378a52: d003         	beq	0x378a5c <NetworkManager::getSmallestPeerID()+0xb4> @ imm = #0x6
  378a54: 9b06         	ldr	r3, [sp, #0x18]
  378a56: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  378a5a: e000         	b	0x378a5e <NetworkManager::getSmallestPeerID()+0xb6> @ imm = #0x0
  378a5c: 2300         	movs	r3, #0x0
  378a5e: 9306         	str	r3, [sp, #0x18]
  378a60: 9b05         	ldr	r3, [sp, #0x14]
  378a62: 2b00         	cmp	r3, #0x0
  378a64: d1d4         	bne	0x378a10 <NetworkManager::getSmallestPeerID()+0x68> @ imm = #-0x58
  378a66: ab04         	add	r3, sp, #0x10
  378a68: 4618         	mov	r0, r3
  378a6a: 9900         	ldr	r1, [sp]
  378a6c: f001 f86c    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #0x10d8
  378a70: aa07         	add	r2, sp, #0x1c
  378a72: ab04         	add	r3, sp, #0x10
  378a74: 4610         	mov	r0, r2
  378a76: 4619         	mov	r1, r3
  378a78: f763 fa1e    	bl	0x2dbeb8 <std::vector<std::string, std::allocator<std::string>>::push_back(std::string&&)> @ imm = #-0x9cbc4
  378a7c: ab04         	add	r3, sp, #0x10
  378a7e: 4618         	mov	r0, r3
  378a80: f03c f748    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ce90
  378a84: ab07         	add	r3, sp, #0x1c
  378a86: 4618         	mov	r0, r3
  378a88: f770 fbc2    	bl	0x2e9210 <std::vector<std::string, std::allocator<std::string>>::begin()> @ imm = #-0x8f87c
  378a8c: 4604         	mov	r4, r0
  378a8e: ab07         	add	r3, sp, #0x1c
  378a90: 4618         	mov	r0, r3
  378a92: f770 fbcb    	bl	0x2e922c <std::vector<std::string, std::allocator<std::string>>::end()> @ imm = #-0x8f86a
  378a96: 4603         	mov	r3, r0
  378a98: 4620         	mov	r0, r4
  378a9a: 4619         	mov	r1, r3
  378a9c: f003 fa04    	bl	0x37bea8 <void std::sort<__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>>>(__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>>, __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>>)> @ imm = #0x3408
  378aa0: ab07         	add	r3, sp, #0x1c
  378aa2: 4618         	mov	r0, r3
  378aa4: 2100         	movs	r1, #0x0
  378aa6: f7d3 fd21    	bl	0x34c4ec <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)> @ imm = #-0x2c5be
  378aaa: 4603         	mov	r3, r0
  378aac: 9801         	ldr	r0, [sp, #0x4]
  378aae: 4619         	mov	r1, r3
  378ab0: f03d f51a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43da34
  378ab4: bf00         	nop
  378ab6: ab07         	add	r3, sp, #0x1c
  378ab8: 4618         	mov	r0, r3
  378aba: f763 f9dd    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9cc46
  378abe: e014         	b	0x378aea <NetworkManager::getSmallestPeerID()+0x142> @ imm = #0x28
  378ac0: ab03         	add	r3, sp, #0xc
  378ac2: 4618         	mov	r0, r3
  378ac4: f011 f49a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411934
  378ac8: e009         	b	0x378ade <NetworkManager::getSmallestPeerID()+0x136> @ imm = #0x12
  378aca: ab04         	add	r3, sp, #0x10
  378acc: 4618         	mov	r0, r3
  378ace: f03c f721    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ce42
  378ad2: e004         	b	0x378ade <NetworkManager::getSmallestPeerID()+0x136> @ imm = #0x8
  378ad4: ab04         	add	r3, sp, #0x10
  378ad6: 4618         	mov	r0, r3
  378ad8: f03c f71c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ce38
  378adc: e7ff         	b	0x378ade <NetworkManager::getSmallestPeerID()+0x136> @ imm = #-0x2
  378ade: ab07         	add	r3, sp, #0x1c
  378ae0: 4618         	mov	r0, r3
  378ae2: f763 f9c9    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9cc6e
  378ae6: f00f f2e1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f5c2
  378aea: 9801         	ldr	r0, [sp, #0x4]
  378aec: b00a         	add	sp, #0x28
  378aee: bd10         	pop	{r4, pc}

// ==== NetworkManager::setLeaderPeerID
//      file offset 0x378af0 (= ELF address; Ghidra 0x388af0), 26 bytes, Thumb-2
  378af0: b500         	push	{lr}
  378af2: b083         	sub	sp, #0xc
  378af4: 9001         	str	r0, [sp, #0x4]
  378af6: 9100         	str	r1, [sp]
  378af8: 9b01         	ldr	r3, [sp, #0x4]
  378afa: 33f8         	adds	r3, #0xf8
  378afc: 4618         	mov	r0, r3
  378afe: 9900         	ldr	r1, [sp]
  378b00: f03d f558    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x43dab0
  378b04: b003         	add	sp, #0xc
  378b06: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::sendPositionData
//      file offset 0x378b0c (= ELF address; Ghidra 0x388b0c), 68 bytes, Thumb-2
  378b0c: b510         	push	{r4, lr}
  378b0e: b086         	sub	sp, #0x18
  378b10: 9003         	str	r0, [sp, #0xc]
  378b12: 9102         	str	r1, [sp, #0x8]
  378b14: 4613         	mov	r3, r2
  378b16: f88d 3007    	strb.w	r3, [sp, #0x7]
  378b1a: 9b03         	ldr	r3, [sp, #0xc]
  378b1c: f8d3 2114    	ldr.w	r2, [r3, #0x114]
  378b20: f89d 3007    	ldrb.w	r3, [sp, #0x7]
  378b24: 4610         	mov	r0, r2
  378b26: 4619         	mov	r1, r3
  378b28: f009 ff4a    	bl	0x3829c0 <NetworkMessageDispatcher::getLocationData(bool)> @ imm = #0x9e94
  378b2c: 4603         	mov	r3, r0
  378b2e: 9305         	str	r3, [sp, #0x14]
  378b30: 9805         	ldr	r0, [sp, #0x14]
  378b32: f0cb fc01    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb802
  378b36: 4604         	mov	r4, r0
  378b38: 9805         	ldr	r0, [sp, #0x14]
  378b3a: f0cb fc05    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb80a
  378b3e: 4603         	mov	r3, r0
  378b40: 9803         	ldr	r0, [sp, #0xc]
  378b42: 4621         	mov	r1, r4
  378b44: 461a         	mov	r2, r3
  378b46: 2300         	movs	r3, #0x0
  378b48: f7ff fcb0    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x6a0
  378b4c: b006         	add	sp, #0x18
  378b4e: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendVelocityData
//      file offset 0x378b50 (= ELF address; Ghidra 0x388b50), 56 bytes, Thumb-2
  378b50: b510         	push	{r4, lr}
  378b52: b084         	sub	sp, #0x10
  378b54: 9001         	str	r0, [sp, #0x4]
  378b56: 9100         	str	r1, [sp]
  378b58: 9b01         	ldr	r3, [sp, #0x4]
  378b5a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378b5e: 4618         	mov	r0, r3
  378b60: f00a fb86    	bl	0x383270 <NetworkMessageDispatcher::getMotionData()> @ imm = #0xa70c
  378b64: 4603         	mov	r3, r0
  378b66: 9303         	str	r3, [sp, #0xc]
  378b68: 9803         	ldr	r0, [sp, #0xc]
  378b6a: f0cb fbe5    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb7ca
  378b6e: 4604         	mov	r4, r0
  378b70: 9803         	ldr	r0, [sp, #0xc]
  378b72: f0cb fbe9    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb7d2
  378b76: 4603         	mov	r3, r0
  378b78: 9801         	ldr	r0, [sp, #0x4]
  378b7a: 4621         	mov	r1, r4
  378b7c: 461a         	mov	r2, r3
  378b7e: 2300         	movs	r3, #0x0
  378b80: f7ff fc94    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x6d8
  378b84: b004         	add	sp, #0x10
  378b86: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendWeaponCreate
//      file offset 0x378b88 (= ELF address; Ghidra 0x388b88), 62 bytes, Thumb-2
  378b88: b510         	push	{r4, lr}
  378b8a: b084         	sub	sp, #0x10
  378b8c: 9001         	str	r0, [sp, #0x4]
  378b8e: 9100         	str	r1, [sp]
  378b90: 9b00         	ldr	r3, [sp]
  378b92: 9302         	str	r3, [sp, #0x8]
  378b94: 9b01         	ldr	r3, [sp, #0x4]
  378b96: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378b9a: 4618         	mov	r0, r3
  378b9c: 9902         	ldr	r1, [sp, #0x8]
  378b9e: f00d ff53    	bl	0x386a48 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)> @ imm = #0xdea6
  378ba2: 4603         	mov	r3, r0
  378ba4: 9303         	str	r3, [sp, #0xc]
  378ba6: 9803         	ldr	r0, [sp, #0xc]
  378ba8: f0cb fbc6    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb78c
  378bac: 4604         	mov	r4, r0
  378bae: 9803         	ldr	r0, [sp, #0xc]
  378bb0: f0cb fbca    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb794
  378bb4: 4603         	mov	r3, r0
  378bb6: 9801         	ldr	r0, [sp, #0x4]
  378bb8: 4621         	mov	r1, r4
  378bba: 461a         	mov	r2, r3
  378bbc: 2301         	movs	r3, #0x1
  378bbe: f7ff fc75    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x716
  378bc2: b004         	add	sp, #0x10
  378bc4: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendWeaponChange
//      file offset 0x378bc8 (= ELF address; Ghidra 0x388bc8), 56 bytes, Thumb-2
  378bc8: b510         	push	{r4, lr}
  378bca: b084         	sub	sp, #0x10
  378bcc: 9001         	str	r0, [sp, #0x4]
  378bce: 9100         	str	r1, [sp]
  378bd0: 9b01         	ldr	r3, [sp, #0x4]
  378bd2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378bd6: 4618         	mov	r0, r3
  378bd8: f00d fe66    	bl	0x3868a8 <NetworkMessageDispatcher::getWeaponChangeData()> @ imm = #0xdccc
  378bdc: 4603         	mov	r3, r0
  378bde: 9303         	str	r3, [sp, #0xc]
  378be0: 9803         	ldr	r0, [sp, #0xc]
  378be2: f0cb fba9    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb752
  378be6: 4604         	mov	r4, r0
  378be8: 9803         	ldr	r0, [sp, #0xc]
  378bea: f0cb fbad    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb75a
  378bee: 4603         	mov	r3, r0
  378bf0: 9801         	ldr	r0, [sp, #0x4]
  378bf2: 4621         	mov	r1, r4
  378bf4: 461a         	mov	r2, r3
  378bf6: 2301         	movs	r3, #0x1
  378bf8: f7ff fc58    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x750
  378bfc: b004         	add	sp, #0x10
  378bfe: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendWeaponRemove
//      file offset 0x378c00 (= ELF address; Ghidra 0x388c00), 134 bytes, Thumb-2
  378c00: b530         	push	{r4, r5, lr}
  378c02: b087         	sub	sp, #0x1c
  378c04: 9001         	str	r0, [sp, #0x4]
  378c06: 9100         	str	r1, [sp]
  378c08: 9b00         	ldr	r3, [sp]
  378c0a: 9304         	str	r3, [sp, #0x10]
  378c0c: 9b01         	ldr	r3, [sp, #0x4]
  378c0e: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  378c12: 9804         	ldr	r0, [sp, #0x10]
  378c14: f220 fe88    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220d10
  378c18: 4605         	mov	r5, r0
  378c1a: ab02         	add	r3, sp, #0x8
  378c1c: 4618         	mov	r0, r3
  378c1e: f011 f3e9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4117d2
  378c22: aa03         	add	r2, sp, #0xc
  378c24: ab02         	add	r3, sp, #0x8
  378c26: 4610         	mov	r0, r2
  378c28: 4629         	mov	r1, r5
  378c2a: 461a         	mov	r2, r3
  378c2c: f03d f718    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43de30
  378c30: ab03         	add	r3, sp, #0xc
  378c32: 4620         	mov	r0, r4
  378c34: 4619         	mov	r1, r3
  378c36: f00e f815    	bl	0x386c64 <NetworkMessageDispatcher::getWeaponRemoveData(std::string)> @ imm = #0xe02a
  378c3a: 4603         	mov	r3, r0
  378c3c: 9305         	str	r3, [sp, #0x14]
  378c3e: ab03         	add	r3, sp, #0xc
  378c40: 4618         	mov	r0, r3
  378c42: f03c f667    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ccce
  378c46: ab02         	add	r3, sp, #0x8
  378c48: 4618         	mov	r0, r3
  378c4a: f011 f3d7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4117ae
  378c4e: 9805         	ldr	r0, [sp, #0x14]
  378c50: f0cb fb72    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb6e4
  378c54: 4604         	mov	r4, r0
  378c56: 9805         	ldr	r0, [sp, #0x14]
  378c58: f0cb fb76    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb6ec
  378c5c: 4603         	mov	r3, r0
  378c5e: 9801         	ldr	r0, [sp, #0x4]
  378c60: 4621         	mov	r1, r4
  378c62: 461a         	mov	r2, r3
  378c64: 2301         	movs	r3, #0x1
  378c66: f7ff fc21    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x7be
  378c6a: e00a         	b	0x378c82 <NetworkManager::sendWeaponRemove(cocos2d::CCObject*)+0x82> @ imm = #0x14
  378c6c: ab03         	add	r3, sp, #0xc
  378c6e: 4618         	mov	r0, r3
  378c70: f03c f650    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cca0
  378c74: e7ff         	b	0x378c76 <NetworkManager::sendWeaponRemove(cocos2d::CCObject*)+0x76> @ imm = #-0x2
  378c76: ab02         	add	r3, sp, #0x8
  378c78: 4618         	mov	r0, r3
  378c7a: f011 f3bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41177e
  378c7e: f00f f215    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f42a
  378c82: b007         	add	sp, #0x1c
  378c84: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::sendWeaponUpdate
//      file offset 0x378c88 (= ELF address; Ghidra 0x388c88), 62 bytes, Thumb-2
  378c88: b510         	push	{r4, lr}
  378c8a: b084         	sub	sp, #0x10
  378c8c: 9001         	str	r0, [sp, #0x4]
  378c8e: 9100         	str	r1, [sp]
  378c90: 9b00         	ldr	r3, [sp]
  378c92: 9302         	str	r3, [sp, #0x8]
  378c94: 9b01         	ldr	r3, [sp, #0x4]
  378c96: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378c9a: 4618         	mov	r0, r3
  378c9c: 9902         	ldr	r1, [sp, #0x8]
  378c9e: f00b f811    	bl	0x383cc4 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)> @ imm = #0xb022
  378ca2: 4603         	mov	r3, r0
  378ca4: 9303         	str	r3, [sp, #0xc]
  378ca6: 9803         	ldr	r0, [sp, #0xc]
  378ca8: f0cb fb46    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb68c
  378cac: 4604         	mov	r4, r0
  378cae: 9803         	ldr	r0, [sp, #0xc]
  378cb0: f0cb fb4a    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb694
  378cb4: 4603         	mov	r3, r0
  378cb6: 9801         	ldr	r0, [sp, #0x4]
  378cb8: 4621         	mov	r1, r4
  378cba: 461a         	mov	r2, r3
  378cbc: 2300         	movs	r3, #0x0
  378cbe: f7ff fbf5    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x816
  378cc2: b004         	add	sp, #0x10
  378cc4: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendReliableWeaponUpdate
//      file offset 0x378cc8 (= ELF address; Ghidra 0x388cc8), 62 bytes, Thumb-2
  378cc8: b510         	push	{r4, lr}
  378cca: b084         	sub	sp, #0x10
  378ccc: 9001         	str	r0, [sp, #0x4]
  378cce: 9100         	str	r1, [sp]
  378cd0: 9b00         	ldr	r3, [sp]
  378cd2: 9302         	str	r3, [sp, #0x8]
  378cd4: 9b01         	ldr	r3, [sp, #0x4]
  378cd6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378cda: 4618         	mov	r0, r3
  378cdc: 9902         	ldr	r1, [sp, #0x8]
  378cde: f00a fff1    	bl	0x383cc4 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)> @ imm = #0xafe2
  378ce2: 4603         	mov	r3, r0
  378ce4: 9303         	str	r3, [sp, #0xc]
  378ce6: 9803         	ldr	r0, [sp, #0xc]
  378ce8: f0cb fb26    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb64c
  378cec: 4604         	mov	r4, r0
  378cee: 9803         	ldr	r0, [sp, #0xc]
  378cf0: f0cb fb2a    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb654
  378cf4: 4603         	mov	r3, r0
  378cf6: 9801         	ldr	r0, [sp, #0x4]
  378cf8: 4621         	mov	r1, r4
  378cfa: 461a         	mov	r2, r3
  378cfc: 2301         	movs	r3, #0x1
  378cfe: f7ff fbd5    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x856
  378d02: b004         	add	sp, #0x10
  378d04: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerDamage
//      file offset 0x378d08 (= ELF address; Ghidra 0x388d08), 62 bytes, Thumb-2
  378d08: b510         	push	{r4, lr}
  378d0a: b084         	sub	sp, #0x10
  378d0c: 9001         	str	r0, [sp, #0x4]
  378d0e: 9100         	str	r1, [sp]
  378d10: 9b00         	ldr	r3, [sp]
  378d12: 9302         	str	r3, [sp, #0x8]
  378d14: 9b01         	ldr	r3, [sp, #0x4]
  378d16: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378d1a: 4618         	mov	r0, r3
  378d1c: 9902         	ldr	r1, [sp, #0x8]
  378d1e: f00b f9a3    	bl	0x384068 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)> @ imm = #0xb346
  378d22: 4603         	mov	r3, r0
  378d24: 9303         	str	r3, [sp, #0xc]
  378d26: 9803         	ldr	r0, [sp, #0xc]
  378d28: f0cb fb06    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb60c
  378d2c: 4604         	mov	r4, r0
  378d2e: 9803         	ldr	r0, [sp, #0xc]
  378d30: f0cb fb0a    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb614
  378d34: 4603         	mov	r3, r0
  378d36: 9801         	ldr	r0, [sp, #0x4]
  378d38: 4621         	mov	r1, r4
  378d3a: 461a         	mov	r2, r3
  378d3c: 2301         	movs	r3, #0x1
  378d3e: f7ff fbb5    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x896
  378d42: b004         	add	sp, #0x10
  378d44: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendWeaponLockQuery
//      file offset 0x378d48 (= ELF address; Ghidra 0x388d48), 62 bytes, Thumb-2
  378d48: b510         	push	{r4, lr}
  378d4a: b084         	sub	sp, #0x10
  378d4c: 9001         	str	r0, [sp, #0x4]
  378d4e: 9100         	str	r1, [sp]
  378d50: 9b00         	ldr	r3, [sp]
  378d52: 9302         	str	r3, [sp, #0x8]
  378d54: 9b01         	ldr	r3, [sp, #0x4]
  378d56: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378d5a: 4618         	mov	r0, r3
  378d5c: 9902         	ldr	r1, [sp, #0x8]
  378d5e: f00d ffe7    	bl	0x386d30 <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)> @ imm = #0xdfce
  378d62: 4603         	mov	r3, r0
  378d64: 9303         	str	r3, [sp, #0xc]
  378d66: 9803         	ldr	r0, [sp, #0xc]
  378d68: f0cb fae6    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb5cc
  378d6c: 4604         	mov	r4, r0
  378d6e: 9803         	ldr	r0, [sp, #0xc]
  378d70: f0cb faea    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb5d4
  378d74: 4603         	mov	r3, r0
  378d76: 9801         	ldr	r0, [sp, #0x4]
  378d78: 4621         	mov	r1, r4
  378d7a: 461a         	mov	r2, r3
  378d7c: 2301         	movs	r3, #0x1
  378d7e: f7ff fb95    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x8d6
  378d82: b004         	add	sp, #0x10
  378d84: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendWeaponLockAllow
//      file offset 0x378d88 (= ELF address; Ghidra 0x388d88), 226 bytes, Thumb-2
  378d88: b530         	push	{r4, r5, lr}
  378d8a: b08b         	sub	sp, #0x2c
  378d8c: 9001         	str	r0, [sp, #0x4]
  378d8e: 9100         	str	r1, [sp]
  378d90: 9b00         	ldr	r3, [sp]
  378d92: 9306         	str	r3, [sp, #0x18]
  378d94: 9806         	ldr	r0, [sp, #0x18]
  378d96: 2100         	movs	r1, #0x0
  378d98: f221 f9c2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x221384
  378d9c: 4603         	mov	r3, r0
  378d9e: 9307         	str	r3, [sp, #0x1c]
  378da0: 9806         	ldr	r0, [sp, #0x18]
  378da2: 2101         	movs	r1, #0x1
  378da4: f221 f9bc    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x221378
  378da8: 4603         	mov	r3, r0
  378daa: 9308         	str	r3, [sp, #0x20]
  378dac: 9b01         	ldr	r3, [sp, #0x4]
  378dae: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  378db2: 9807         	ldr	r0, [sp, #0x1c]
  378db4: f220 fdb8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220b70
  378db8: 4605         	mov	r5, r0
  378dba: ab02         	add	r3, sp, #0x8
  378dbc: 4618         	mov	r0, r3
  378dbe: f011 f319    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411632
  378dc2: aa04         	add	r2, sp, #0x10
  378dc4: ab02         	add	r3, sp, #0x8
  378dc6: 4610         	mov	r0, r2
  378dc8: 4629         	mov	r1, r5
  378dca: 461a         	mov	r2, r3
  378dcc: f03d f648    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43dc90
  378dd0: 9808         	ldr	r0, [sp, #0x20]
  378dd2: f220 fda9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220b52
  378dd6: 4605         	mov	r5, r0
  378dd8: ab03         	add	r3, sp, #0xc
  378dda: 4618         	mov	r0, r3
  378ddc: f011 f30a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411614
  378de0: aa05         	add	r2, sp, #0x14
  378de2: ab03         	add	r3, sp, #0xc
  378de4: 4610         	mov	r0, r2
  378de6: 4629         	mov	r1, r5
  378de8: 461a         	mov	r2, r3
  378dea: f03d f639    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43dc72
  378dee: aa04         	add	r2, sp, #0x10
  378df0: ab05         	add	r3, sp, #0x14
  378df2: 4620         	mov	r0, r4
  378df4: 2101         	movs	r1, #0x1
  378df6: f00e f829    	bl	0x386e4c <NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string)> @ imm = #0xe052
  378dfa: 4603         	mov	r3, r0
  378dfc: 9309         	str	r3, [sp, #0x24]
  378dfe: ab05         	add	r3, sp, #0x14
  378e00: 4618         	mov	r0, r3
  378e02: f03c f587    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cb0e
  378e06: ab03         	add	r3, sp, #0xc
  378e08: 4618         	mov	r0, r3
  378e0a: f011 f2f7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4115ee
  378e0e: ab04         	add	r3, sp, #0x10
  378e10: 4618         	mov	r0, r3
  378e12: f03c f57f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cafe
  378e16: ab02         	add	r3, sp, #0x8
  378e18: 4618         	mov	r0, r3
  378e1a: f011 f2ef    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4115de
  378e1e: 9809         	ldr	r0, [sp, #0x24]
  378e20: f0cb fa8a    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb514
  378e24: 4604         	mov	r4, r0
  378e26: 9809         	ldr	r0, [sp, #0x24]
  378e28: f0cb fa8e    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb51c
  378e2c: 4603         	mov	r3, r0
  378e2e: 9801         	ldr	r0, [sp, #0x4]
  378e30: 4621         	mov	r1, r4
  378e32: 461a         	mov	r2, r3
  378e34: 2301         	movs	r3, #0x1
  378e36: f7ff fb39    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x98e
  378e3a: e014         	b	0x378e66 <NetworkManager::sendWeaponLockAllow(cocos2d::CCObject*)+0xde> @ imm = #0x28
  378e3c: ab05         	add	r3, sp, #0x14
  378e3e: 4618         	mov	r0, r3
  378e40: f03c f568    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cad0
  378e44: e7ff         	b	0x378e46 <NetworkManager::sendWeaponLockAllow(cocos2d::CCObject*)+0xbe> @ imm = #-0x2
  378e46: ab03         	add	r3, sp, #0xc
  378e48: 4618         	mov	r0, r3
  378e4a: f011 f2d7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4115ae
  378e4e: e7ff         	b	0x378e50 <NetworkManager::sendWeaponLockAllow(cocos2d::CCObject*)+0xc8> @ imm = #-0x2
  378e50: ab04         	add	r3, sp, #0x10
  378e52: 4618         	mov	r0, r3
  378e54: f03c f55e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43cabc
  378e58: e7ff         	b	0x378e5a <NetworkManager::sendWeaponLockAllow(cocos2d::CCObject*)+0xd2> @ imm = #-0x2
  378e5a: ab02         	add	r3, sp, #0x8
  378e5c: 4618         	mov	r0, r3
  378e5e: f011 f2cd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41159a
  378e62: f00f f123    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f246
  378e66: b00b         	add	sp, #0x2c
  378e68: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::sendWeaponLockDeny
//      file offset 0x378e6c (= ELF address; Ghidra 0x388e6c), 226 bytes, Thumb-2
  378e6c: b530         	push	{r4, r5, lr}
  378e6e: b08b         	sub	sp, #0x2c
  378e70: 9001         	str	r0, [sp, #0x4]
  378e72: 9100         	str	r1, [sp]
  378e74: 9b00         	ldr	r3, [sp]
  378e76: 9306         	str	r3, [sp, #0x18]
  378e78: 9806         	ldr	r0, [sp, #0x18]
  378e7a: 2100         	movs	r1, #0x0
  378e7c: f221 f950    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2212a0
  378e80: 4603         	mov	r3, r0
  378e82: 9307         	str	r3, [sp, #0x1c]
  378e84: 9806         	ldr	r0, [sp, #0x18]
  378e86: 2101         	movs	r1, #0x1
  378e88: f221 f94a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x221294
  378e8c: 4603         	mov	r3, r0
  378e8e: 9308         	str	r3, [sp, #0x20]
  378e90: 9b01         	ldr	r3, [sp, #0x4]
  378e92: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  378e96: 9807         	ldr	r0, [sp, #0x1c]
  378e98: f220 fd46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220a8c
  378e9c: 4605         	mov	r5, r0
  378e9e: ab02         	add	r3, sp, #0x8
  378ea0: 4618         	mov	r0, r3
  378ea2: f011 f2a7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41154e
  378ea6: aa04         	add	r2, sp, #0x10
  378ea8: ab02         	add	r3, sp, #0x8
  378eaa: 4610         	mov	r0, r2
  378eac: 4629         	mov	r1, r5
  378eae: 461a         	mov	r2, r3
  378eb0: f03d f5d6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43dbac
  378eb4: 9808         	ldr	r0, [sp, #0x20]
  378eb6: f220 fd37    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220a6e
  378eba: 4605         	mov	r5, r0
  378ebc: ab03         	add	r3, sp, #0xc
  378ebe: 4618         	mov	r0, r3
  378ec0: f011 f298    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411530
  378ec4: aa05         	add	r2, sp, #0x14
  378ec6: ab03         	add	r3, sp, #0xc
  378ec8: 4610         	mov	r0, r2
  378eca: 4629         	mov	r1, r5
  378ecc: 461a         	mov	r2, r3
  378ece: f03d f5c7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43db8e
  378ed2: aa04         	add	r2, sp, #0x10
  378ed4: ab05         	add	r3, sp, #0x14
  378ed6: 4620         	mov	r0, r4
  378ed8: 2100         	movs	r1, #0x0
  378eda: f00d ffb7    	bl	0x386e4c <NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string)> @ imm = #0xdf6e
  378ede: 4603         	mov	r3, r0
  378ee0: 9309         	str	r3, [sp, #0x24]
  378ee2: ab05         	add	r3, sp, #0x14
  378ee4: 4618         	mov	r0, r3
  378ee6: f03c f515    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ca2a
  378eea: ab03         	add	r3, sp, #0xc
  378eec: 4618         	mov	r0, r3
  378eee: f011 f285    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41150a
  378ef2: ab04         	add	r3, sp, #0x10
  378ef4: 4618         	mov	r0, r3
  378ef6: f03c f50d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ca1a
  378efa: ab02         	add	r3, sp, #0x8
  378efc: 4618         	mov	r0, r3
  378efe: f011 f27d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4114fa
  378f02: 9809         	ldr	r0, [sp, #0x24]
  378f04: f0cb fa18    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb430
  378f08: 4604         	mov	r4, r0
  378f0a: 9809         	ldr	r0, [sp, #0x24]
  378f0c: f0cb fa1c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb438
  378f10: 4603         	mov	r3, r0
  378f12: 9801         	ldr	r0, [sp, #0x4]
  378f14: 4621         	mov	r1, r4
  378f16: 461a         	mov	r2, r3
  378f18: 2301         	movs	r3, #0x1
  378f1a: f7ff fac7    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xa72
  378f1e: e014         	b	0x378f4a <NetworkManager::sendWeaponLockDeny(cocos2d::CCObject*)+0xde> @ imm = #0x28
  378f20: ab05         	add	r3, sp, #0x14
  378f22: 4618         	mov	r0, r3
  378f24: f03c f4f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c9ec
  378f28: e7ff         	b	0x378f2a <NetworkManager::sendWeaponLockDeny(cocos2d::CCObject*)+0xbe> @ imm = #-0x2
  378f2a: ab03         	add	r3, sp, #0xc
  378f2c: 4618         	mov	r0, r3
  378f2e: f011 f265    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4114ca
  378f32: e7ff         	b	0x378f34 <NetworkManager::sendWeaponLockDeny(cocos2d::CCObject*)+0xc8> @ imm = #-0x2
  378f34: ab04         	add	r3, sp, #0x10
  378f36: 4618         	mov	r0, r3
  378f38: f03c f4ec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c9d8
  378f3c: e7ff         	b	0x378f3e <NetworkManager::sendWeaponLockDeny(cocos2d::CCObject*)+0xd2> @ imm = #-0x2
  378f3e: ab02         	add	r3, sp, #0x8
  378f40: 4618         	mov	r0, r3
  378f42: f011 f25b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4114b6
  378f46: f00f f0b1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40f162
  378f4a: b00b         	add	sp, #0x2c
  378f4c: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::sendExplosionCreate
//      file offset 0x378f50 (= ELF address; Ghidra 0x388f50), 62 bytes, Thumb-2
  378f50: b510         	push	{r4, lr}
  378f52: b084         	sub	sp, #0x10
  378f54: 9001         	str	r0, [sp, #0x4]
  378f56: 9100         	str	r1, [sp]
  378f58: 9b00         	ldr	r3, [sp]
  378f5a: 9302         	str	r3, [sp, #0x8]
  378f5c: 9b01         	ldr	r3, [sp, #0x4]
  378f5e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378f62: 4618         	mov	r0, r3
  378f64: 9902         	ldr	r1, [sp, #0x8]
  378f66: f00e f8d5    	bl	0x387114 <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)> @ imm = #0xe1aa
  378f6a: 4603         	mov	r3, r0
  378f6c: 9303         	str	r3, [sp, #0xc]
  378f6e: 9803         	ldr	r0, [sp, #0xc]
  378f70: f0cb f9e2    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb3c4
  378f74: 4604         	mov	r4, r0
  378f76: 9803         	ldr	r0, [sp, #0xc]
  378f78: f0cb f9e6    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb3cc
  378f7c: 4603         	mov	r3, r0
  378f7e: 9801         	ldr	r0, [sp, #0x4]
  378f80: 4621         	mov	r1, r4
  378f82: 461a         	mov	r2, r3
  378f84: 2301         	movs	r3, #0x1
  378f86: f7ff fa91    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xade
  378f8a: b004         	add	sp, #0x10
  378f8c: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendExplosionRemove
//      file offset 0x378f90 (= ELF address; Ghidra 0x388f90), 62 bytes, Thumb-2
  378f90: b510         	push	{r4, lr}
  378f92: b084         	sub	sp, #0x10
  378f94: 9001         	str	r0, [sp, #0x4]
  378f96: 9100         	str	r1, [sp]
  378f98: 9b00         	ldr	r3, [sp]
  378f9a: 9302         	str	r3, [sp, #0x8]
  378f9c: 9b01         	ldr	r3, [sp, #0x4]
  378f9e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378fa2: 4618         	mov	r0, r3
  378fa4: 9902         	ldr	r1, [sp, #0x8]
  378fa6: f00d ffff    	bl	0x386fa8 <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)> @ imm = #0xdffe
  378faa: 4603         	mov	r3, r0
  378fac: 9303         	str	r3, [sp, #0xc]
  378fae: 9803         	ldr	r0, [sp, #0xc]
  378fb0: f0cb f9c2    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb384
  378fb4: 4604         	mov	r4, r0
  378fb6: 9803         	ldr	r0, [sp, #0xc]
  378fb8: f0cb f9c6    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb38c
  378fbc: 4603         	mov	r3, r0
  378fbe: 9801         	ldr	r0, [sp, #0x4]
  378fc0: 4621         	mov	r1, r4
  378fc2: 461a         	mov	r2, r3
  378fc4: 2301         	movs	r3, #0x1
  378fc6: f7ff fa71    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xb1e
  378fca: b004         	add	sp, #0x10
  378fcc: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerPunch
//      file offset 0x378fd0 (= ELF address; Ghidra 0x388fd0), 56 bytes, Thumb-2
  378fd0: b510         	push	{r4, lr}
  378fd2: b084         	sub	sp, #0x10
  378fd4: 9001         	str	r0, [sp, #0x4]
  378fd6: 9100         	str	r1, [sp]
  378fd8: 9b01         	ldr	r3, [sp, #0x4]
  378fda: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  378fde: 4618         	mov	r0, r3
  378fe0: f00e f9de    	bl	0x3873a0 <NetworkMessageDispatcher::getPlayerPunchData()> @ imm = #0xe3bc
  378fe4: 4603         	mov	r3, r0
  378fe6: 9303         	str	r3, [sp, #0xc]
  378fe8: 9803         	ldr	r0, [sp, #0xc]
  378fea: f0cb f9a5    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb34a
  378fee: 4604         	mov	r4, r0
  378ff0: 9803         	ldr	r0, [sp, #0xc]
  378ff2: f0cb f9a9    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb352
  378ff6: 4603         	mov	r3, r0
  378ff8: 9801         	ldr	r0, [sp, #0x4]
  378ffa: 4621         	mov	r1, r4
  378ffc: 461a         	mov	r2, r3
  378ffe: 2301         	movs	r3, #0x1
  379000: f7ff fa54    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xb58
  379004: b004         	add	sp, #0x10
  379006: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendThrowDual
//      file offset 0x379008 (= ELF address; Ghidra 0x389008), 56 bytes, Thumb-2
  379008: b510         	push	{r4, lr}
  37900a: b084         	sub	sp, #0x10
  37900c: 9001         	str	r0, [sp, #0x4]
  37900e: 9100         	str	r1, [sp]
  379010: 9b01         	ldr	r3, [sp, #0x4]
  379012: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  379016: 4618         	mov	r0, r3
  379018: f00e f9f8    	bl	0x38740c <NetworkMessageDispatcher::getPlayerThrowData()> @ imm = #0xe3f0
  37901c: 4603         	mov	r3, r0
  37901e: 9303         	str	r3, [sp, #0xc]
  379020: 9803         	ldr	r0, [sp, #0xc]
  379022: f0cb f989    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb312
  379026: 4604         	mov	r4, r0
  379028: 9803         	ldr	r0, [sp, #0xc]
  37902a: f0cb f98d    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb31a
  37902e: 4603         	mov	r3, r0
  379030: 9801         	ldr	r0, [sp, #0x4]
  379032: 4621         	mov	r1, r4
  379034: 461a         	mov	r2, r3
  379036: 2301         	movs	r3, #0x1
  379038: f7ff fa38    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xb90
  37903c: b004         	add	sp, #0x10
  37903e: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerPowerUpOn
//      file offset 0x379040 (= ELF address; Ghidra 0x389040), 72 bytes, Thumb-2
  379040: b510         	push	{r4, lr}
  379042: b084         	sub	sp, #0x10
  379044: 9001         	str	r0, [sp, #0x4]
  379046: 9100         	str	r1, [sp]
  379048: 9b00         	ldr	r3, [sp]
  37904a: 9302         	str	r3, [sp, #0x8]
  37904c: 9b01         	ldr	r3, [sp, #0x4]
  37904e: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  379052: 9802         	ldr	r0, [sp, #0x8]
  379054: f773 fefe    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8c204
  379058: 4603         	mov	r3, r0
  37905a: 4620         	mov	r0, r4
  37905c: 4619         	mov	r1, r3
  37905e: 2201         	movs	r2, #0x1
  379060: f00e fc82    	bl	0x387968 <NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool)> @ imm = #0xe904
  379064: 4603         	mov	r3, r0
  379066: 9303         	str	r3, [sp, #0xc]
  379068: 9803         	ldr	r0, [sp, #0xc]
  37906a: f0cb f965    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb2ca
  37906e: 4604         	mov	r4, r0
  379070: 9803         	ldr	r0, [sp, #0xc]
  379072: f0cb f969    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb2d2
  379076: 4603         	mov	r3, r0
  379078: 9801         	ldr	r0, [sp, #0x4]
  37907a: 4621         	mov	r1, r4
  37907c: 461a         	mov	r2, r3
  37907e: 2301         	movs	r3, #0x1
  379080: f7ff fa14    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xbd8
  379084: b004         	add	sp, #0x10
  379086: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerPowerUpOff
//      file offset 0x379088 (= ELF address; Ghidra 0x389088), 72 bytes, Thumb-2
  379088: b510         	push	{r4, lr}
  37908a: b084         	sub	sp, #0x10
  37908c: 9001         	str	r0, [sp, #0x4]
  37908e: 9100         	str	r1, [sp]
  379090: 9b00         	ldr	r3, [sp]
  379092: 9302         	str	r3, [sp, #0x8]
  379094: 9b01         	ldr	r3, [sp, #0x4]
  379096: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  37909a: 9802         	ldr	r0, [sp, #0x8]
  37909c: f773 feda    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8c24c
  3790a0: 4603         	mov	r3, r0
  3790a2: 4620         	mov	r0, r4
  3790a4: 4619         	mov	r1, r3
  3790a6: 2200         	movs	r2, #0x0
  3790a8: f00e fc5e    	bl	0x387968 <NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool)> @ imm = #0xe8bc
  3790ac: 4603         	mov	r3, r0
  3790ae: 9303         	str	r3, [sp, #0xc]
  3790b0: 9803         	ldr	r0, [sp, #0xc]
  3790b2: f0cb f941    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb282
  3790b6: 4604         	mov	r4, r0
  3790b8: 9803         	ldr	r0, [sp, #0xc]
  3790ba: f0cb f945    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb28a
  3790be: 4603         	mov	r3, r0
  3790c0: 9801         	ldr	r0, [sp, #0x4]
  3790c2: 4621         	mov	r1, r4
  3790c4: 461a         	mov	r2, r3
  3790c6: 2301         	movs	r3, #0x1
  3790c8: f7ff f9f0    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xc20
  3790cc: b004         	add	sp, #0x10
  3790ce: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerDead
//      file offset 0x3790d0 (= ELF address; Ghidra 0x3890d0), 56 bytes, Thumb-2
  3790d0: b510         	push	{r4, lr}
  3790d2: b084         	sub	sp, #0x10
  3790d4: 9001         	str	r0, [sp, #0x4]
  3790d6: 9100         	str	r1, [sp]
  3790d8: 9b01         	ldr	r3, [sp, #0x4]
  3790da: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3790de: 4618         	mov	r0, r3
  3790e0: f00e f9ca    	bl	0x387478 <NetworkMessageDispatcher::getPlayerDiedData()> @ imm = #0xe394
  3790e4: 4603         	mov	r3, r0
  3790e6: 9303         	str	r3, [sp, #0xc]
  3790e8: 9803         	ldr	r0, [sp, #0xc]
  3790ea: f0cb f925    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb24a
  3790ee: 4604         	mov	r4, r0
  3790f0: 9803         	ldr	r0, [sp, #0xc]
  3790f2: f0cb f929    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb252
  3790f6: 4603         	mov	r3, r0
  3790f8: 9801         	ldr	r0, [sp, #0x4]
  3790fa: 4621         	mov	r1, r4
  3790fc: 461a         	mov	r2, r3
  3790fe: 2301         	movs	r3, #0x1
  379100: f7ff f9d4    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xc58
  379104: b004         	add	sp, #0x10
  379106: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerEnteredGame
//      file offset 0x379108 (= ELF address; Ghidra 0x389108), 58 bytes, Thumb-2
  379108: b510         	push	{r4, lr}
  37910a: b084         	sub	sp, #0x10
  37910c: 9001         	str	r0, [sp, #0x4]
  37910e: 9100         	str	r1, [sp]
  379110: 9b01         	ldr	r3, [sp, #0x4]
  379112: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  379116: 4618         	mov	r0, r3
  379118: 2100         	movs	r1, #0x0
  37911a: f00e faa1    	bl	0x387660 <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)> @ imm = #0xe542
  37911e: 4603         	mov	r3, r0
  379120: 9303         	str	r3, [sp, #0xc]
  379122: 9803         	ldr	r0, [sp, #0xc]
  379124: f0cb f908    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb210
  379128: 4604         	mov	r4, r0
  37912a: 9803         	ldr	r0, [sp, #0xc]
  37912c: f0cb f90c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb218
  379130: 4603         	mov	r3, r0
  379132: 9801         	ldr	r0, [sp, #0x4]
  379134: 4621         	mov	r1, r4
  379136: 461a         	mov	r2, r3
  379138: 2301         	movs	r3, #0x1
  37913a: f7ff f9b7    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xc92
  37913e: b004         	add	sp, #0x10
  379140: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPing
//      file offset 0x379144 (= ELF address; Ghidra 0x389144), 56 bytes, Thumb-2
  379144: b510         	push	{r4, lr}
  379146: b084         	sub	sp, #0x10
  379148: 9001         	str	r0, [sp, #0x4]
  37914a: 9100         	str	r1, [sp]
  37914c: 9b01         	ldr	r3, [sp, #0x4]
  37914e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  379152: 4618         	mov	r0, r3
  379154: f00e fac2    	bl	0x3876dc <NetworkMessageDispatcher::getPingData()> @ imm = #0xe584
  379158: 4603         	mov	r3, r0
  37915a: 9303         	str	r3, [sp, #0xc]
  37915c: 9803         	ldr	r0, [sp, #0xc]
  37915e: f0cb f8eb    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb1d6
  379162: 4604         	mov	r4, r0
  379164: 9803         	ldr	r0, [sp, #0xc]
  379166: f0cb f8ef    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb1de
  37916a: 4603         	mov	r3, r0
  37916c: 9801         	ldr	r0, [sp, #0x4]
  37916e: 4621         	mov	r1, r4
  379170: 461a         	mov	r2, r3
  379172: 2301         	movs	r3, #0x1
  379174: f7ff f99a    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xccc
  379178: b004         	add	sp, #0x10
  37917a: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendLobbyStatus
//      file offset 0x37917c (= ELF address; Ghidra 0x38917c), 96 bytes, Thumb-2
  37917c: b510         	push	{r4, lr}
  37917e: b086         	sub	sp, #0x18
  379180: 9003         	str	r0, [sp, #0xc]
  379182: 9102         	str	r1, [sp, #0x8]
  379184: 9201         	str	r2, [sp, #0x4]
  379186: 9b03         	ldr	r3, [sp, #0xc]
  379188: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  37918c: ab04         	add	r3, sp, #0x10
  37918e: 4618         	mov	r0, r3
  379190: 9902         	ldr	r1, [sp, #0x8]
  379192: f03d f1a9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43d352
  379196: ab04         	add	r3, sp, #0x10
  379198: 4620         	mov	r0, r4
  37919a: 4619         	mov	r1, r3
  37919c: 9a01         	ldr	r2, [sp, #0x4]
  37919e: f00c fdeb    	bl	0x385d78 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)> @ imm = #0xcbd6
  3791a2: 4603         	mov	r3, r0
  3791a4: 9305         	str	r3, [sp, #0x14]
  3791a6: ab04         	add	r3, sp, #0x10
  3791a8: 4618         	mov	r0, r3
  3791aa: f03c f3b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c766
  3791ae: 9805         	ldr	r0, [sp, #0x14]
  3791b0: f0cb f8c2    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb184
  3791b4: 4604         	mov	r4, r0
  3791b6: 9805         	ldr	r0, [sp, #0x14]
  3791b8: f0cb f8c6    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb18c
  3791bc: 4603         	mov	r3, r0
  3791be: 9803         	ldr	r0, [sp, #0xc]
  3791c0: 4621         	mov	r1, r4
  3791c2: 461a         	mov	r2, r3
  3791c4: 2301         	movs	r3, #0x1
  3791c6: f7ff f971    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xd1e
  3791ca: e005         	b	0x3791d8 <NetworkManager::sendLobbyStatus(std::string, int)+0x5c> @ imm = #0xa
  3791cc: ab04         	add	r3, sp, #0x10
  3791ce: 4618         	mov	r0, r3
  3791d0: f03c f3a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c740
  3791d4: f00e f76a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40eed4
  3791d8: b006         	add	sp, #0x18
  3791da: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendIM
//      file offset 0x3791dc (= ELF address; Ghidra 0x3891dc), 134 bytes, Thumb-2
  3791dc: b530         	push	{r4, r5, lr}
  3791de: b087         	sub	sp, #0x1c
  3791e0: 9001         	str	r0, [sp, #0x4]
  3791e2: 9100         	str	r1, [sp]
  3791e4: 9b00         	ldr	r3, [sp]
  3791e6: 9304         	str	r3, [sp, #0x10]
  3791e8: 9b01         	ldr	r3, [sp, #0x4]
  3791ea: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  3791ee: 9804         	ldr	r0, [sp, #0x10]
  3791f0: f220 fb9a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220734
  3791f4: 4605         	mov	r5, r0
  3791f6: ab02         	add	r3, sp, #0x8
  3791f8: 4618         	mov	r0, r3
  3791fa: f011 f0fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4111f6
  3791fe: aa03         	add	r2, sp, #0xc
  379200: ab02         	add	r3, sp, #0x8
  379202: 4610         	mov	r0, r2
  379204: 4629         	mov	r1, r5
  379206: 461a         	mov	r2, r3
  379208: f03d f42a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43d854
  37920c: ab03         	add	r3, sp, #0xc
  37920e: 4620         	mov	r0, r4
  379210: 4619         	mov	r1, r3
  379212: f00e fb3d    	bl	0x387890 <NetworkMessageDispatcher::getIMData(std::string)> @ imm = #0xe67a
  379216: 4603         	mov	r3, r0
  379218: 9305         	str	r3, [sp, #0x14]
  37921a: ab03         	add	r3, sp, #0xc
  37921c: 4618         	mov	r0, r3
  37921e: f03c f379    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c6f2
  379222: ab02         	add	r3, sp, #0x8
  379224: 4618         	mov	r0, r3
  379226: f011 f0e9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4111d2
  37922a: 9805         	ldr	r0, [sp, #0x14]
  37922c: f0cb f884    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb108
  379230: 4604         	mov	r4, r0
  379232: 9805         	ldr	r0, [sp, #0x14]
  379234: f0cb f888    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb110
  379238: 4603         	mov	r3, r0
  37923a: 9801         	ldr	r0, [sp, #0x4]
  37923c: 4621         	mov	r1, r4
  37923e: 461a         	mov	r2, r3
  379240: 2301         	movs	r3, #0x1
  379242: f7ff f933    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xd9a
  379246: e00a         	b	0x37925e <NetworkManager::sendIM(cocos2d::CCObject*)+0x82> @ imm = #0x14
  379248: ab03         	add	r3, sp, #0xc
  37924a: 4618         	mov	r0, r3
  37924c: f03c f362    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c6c4
  379250: e7ff         	b	0x379252 <NetworkManager::sendIM(cocos2d::CCObject*)+0x76> @ imm = #-0x2
  379252: ab02         	add	r3, sp, #0x8
  379254: 4618         	mov	r0, r3
  379256: f011 f0d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4111a2
  37925a: f00e f727    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ee4e
  37925e: b007         	add	sp, #0x1c
  379260: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::sendMapVote
//      file offset 0x379264 (= ELF address; Ghidra 0x389264), 70 bytes, Thumb-2
  379264: b510         	push	{r4, lr}
  379266: b084         	sub	sp, #0x10
  379268: 9001         	str	r0, [sp, #0x4]
  37926a: 9100         	str	r1, [sp]
  37926c: 9b00         	ldr	r3, [sp]
  37926e: 9302         	str	r3, [sp, #0x8]
  379270: 9b01         	ldr	r3, [sp, #0x4]
  379272: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  379276: 9802         	ldr	r0, [sp, #0x8]
  379278: f773 fdec    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8c428
  37927c: 4603         	mov	r3, r0
  37927e: 4620         	mov	r0, r4
  379280: 4619         	mov	r1, r3
  379282: f00b fc37    	bl	0x384af4 <NetworkMessageDispatcher::getMapVote(int)> @ imm = #0xb86e
  379286: 4603         	mov	r3, r0
  379288: 9303         	str	r3, [sp, #0xc]
  37928a: 9803         	ldr	r0, [sp, #0xc]
  37928c: f0cb f854    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcb0a8
  379290: 4604         	mov	r4, r0
  379292: 9803         	ldr	r0, [sp, #0xc]
  379294: f0cb f858    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb0b0
  379298: 4603         	mov	r3, r0
  37929a: 9801         	ldr	r0, [sp, #0x4]
  37929c: 4621         	mov	r1, r4
  37929e: 461a         	mov	r2, r3
  3792a0: 2301         	movs	r3, #0x1
  3792a2: f7ff f903    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xdfa
  3792a6: b004         	add	sp, #0x10
  3792a8: bd10         	pop	{r4, pc}

// ==== NetworkManager::sendPlayerSetup
//      file offset 0x3792ac (= ELF address; Ghidra 0x3892ac), 248 bytes, Thumb-2
  3792ac: b530         	push	{r4, r5, lr}
  3792ae: b08b         	sub	sp, #0x2c
  3792b0: 9005         	str	r0, [sp, #0x14]
  3792b2: 9104         	str	r1, [sp, #0x10]
  3792b4: 9203         	str	r2, [sp, #0xc]
  3792b6: 9302         	str	r3, [sp, #0x8]
  3792b8: f0ab fefe    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xabdfc
  3792bc: 4603         	mov	r3, r0
  3792be: 4618         	mov	r0, r3
  3792c0: f0ac f890    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0xac120
  3792c4: 4603         	mov	r3, r0
  3792c6: 4618         	mov	r0, r3
  3792c8: f7fd ff40    	bl	0x37714c <cocos2d::CCDictElement::getStrKey() const+0xcc4> @ imm = #-0x2180
  3792cc: 9007         	str	r0, [sp, #0x1c]
  3792ce: f0ab fef3    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xabde6
  3792d2: 4603         	mov	r3, r0
  3792d4: 4618         	mov	r0, r3
  3792d6: f0ac f86f    	bl	0x4253b8 <LeaderBoardBridge::getCachedPlayerSkill()> @ imm = #0xac0de
  3792da: 4603         	mov	r3, r0
  3792dc: 9308         	str	r3, [sp, #0x20]
  3792de: 9b05         	ldr	r3, [sp, #0x14]
  3792e0: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  3792e4: ab06         	add	r3, sp, #0x18
  3792e6: 4618         	mov	r0, r3
  3792e8: 9904         	ldr	r1, [sp, #0x10]
  3792ea: f03d f0fd    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43d1fa
  3792ee: 9b03         	ldr	r3, [sp, #0xc]
  3792f0: b29a         	uxth	r2, r3
  3792f2: 9b0e         	ldr	r3, [sp, #0x38]
  3792f4: b29b         	uxth	r3, r3
  3792f6: 9907         	ldr	r1, [sp, #0x1c]
  3792f8: b28d         	uxth	r5, r1
  3792fa: 9908         	ldr	r1, [sp, #0x20]
  3792fc: b288         	uxth	r0, r1
  3792fe: a906         	add	r1, sp, #0x18
  379300: b212         	sxth	r2, r2
  379302: b21b         	sxth	r3, r3
  379304: b22d         	sxth	r5, r5
  379306: 9500         	str	r5, [sp]
  379308: b200         	sxth	r0, r0
  37930a: 9001         	str	r0, [sp, #0x4]
  37930c: 4620         	mov	r0, r4
  37930e: f00b fcb5    	bl	0x384c7c <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)> @ imm = #0xb96a
  379312: 4603         	mov	r3, r0
  379314: 9309         	str	r3, [sp, #0x24]
  379316: ab06         	add	r3, sp, #0x18
  379318: 4618         	mov	r0, r3
  37931a: f03c f2fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c5f6
  37931e: 9802         	ldr	r0, [sp, #0x8]
  379320: f03b f69c    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x43bd38
  379324: 4603         	mov	r3, r0
  379326: 2b00         	cmp	r3, #0x0
  379328: bf14         	ite	ne
  37932a: 2300         	movne	r3, #0x0
  37932c: 2301         	moveq	r3, #0x1
  37932e: b2db         	uxtb	r3, r3
  379330: 2b00         	cmp	r3, #0x0
  379332: d00e         	beq	0x379352 <NetworkManager::sendPlayerSetup(std::string, int, std::string, int)+0xa6> @ imm = #0x1c
  379334: 9809         	ldr	r0, [sp, #0x24]
  379336: f0ca ffff    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcaffe
  37933a: 4604         	mov	r4, r0
  37933c: 9809         	ldr	r0, [sp, #0x24]
  37933e: f0cb f803    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcb006
  379342: 4603         	mov	r3, r0
  379344: 9805         	ldr	r0, [sp, #0x14]
  379346: 4621         	mov	r1, r4
  379348: 461a         	mov	r2, r3
  37934a: 2301         	movs	r3, #0x1
  37934c: f7ff f8ae    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0xea4
  379350: e026         	b	0x3793a0 <NetworkManager::sendPlayerSetup(std::string, int, std::string, int)+0xf4> @ imm = #0x4c
  379352: 9809         	ldr	r0, [sp, #0x24]
  379354: f0ca fff0    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcafe0
  379358: 4605         	mov	r5, r0
  37935a: 9809         	ldr	r0, [sp, #0x24]
  37935c: f0ca fff4    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcafe8
  379360: 4603         	mov	r3, r0
  379362: 461c         	mov	r4, r3
  379364: ab06         	add	r3, sp, #0x18
  379366: 4618         	mov	r0, r3
  379368: 9902         	ldr	r1, [sp, #0x8]
  37936a: f03d f0bd    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43d17a
  37936e: ab06         	add	r3, sp, #0x18
  379370: 2201         	movs	r2, #0x1
  379372: 9200         	str	r2, [sp]
  379374: 9805         	ldr	r0, [sp, #0x14]
  379376: 4629         	mov	r1, r5
  379378: 4622         	mov	r2, r4
  37937a: f7ff f8cf    	bl	0x37851c <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)> @ imm = #-0xe62
  37937e: ab06         	add	r3, sp, #0x18
  379380: 4618         	mov	r0, r3
  379382: f03c f2c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c58e
  379386: e00b         	b	0x3793a0 <NetworkManager::sendPlayerSetup(std::string, int, std::string, int)+0xf4> @ imm = #0x16
  379388: ab06         	add	r3, sp, #0x18
  37938a: 4618         	mov	r0, r3
  37938c: f03c f2c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c584
  379390: f00e f68c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ed18
  379394: ab06         	add	r3, sp, #0x18
  379396: 4618         	mov	r0, r3
  379398: f03c f2bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c578
  37939c: f00e f686    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ed0c
  3793a0: b00b         	add	sp, #0x2c
  3793a2: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::onPlayerSetup
//      file offset 0x3793a4 (= ELF address; Ghidra 0x3893a4), 198 bytes, Thumb-2
  3793a4: b510         	push	{r4, lr}
  3793a6: b088         	sub	sp, #0x20
  3793a8: 9001         	str	r0, [sp, #0x4]
  3793aa: 9100         	str	r1, [sp]
  3793ac: 9b00         	ldr	r3, [sp]
  3793ae: 9305         	str	r3, [sp, #0x14]
  3793b0: 9805         	ldr	r0, [sp, #0x14]
  3793b2: 2100         	movs	r1, #0x0
  3793b4: f220 feb4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220d68
  3793b8: 4603         	mov	r3, r0
  3793ba: 9306         	str	r3, [sp, #0x18]
  3793bc: 9806         	ldr	r0, [sp, #0x18]
  3793be: f220 fab3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220566
  3793c2: 4604         	mov	r4, r0
  3793c4: ab03         	add	r3, sp, #0xc
  3793c6: 4618         	mov	r0, r3
  3793c8: f011 f014    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x411028
  3793cc: aa04         	add	r2, sp, #0x10
  3793ce: ab03         	add	r3, sp, #0xc
  3793d0: 4610         	mov	r0, r2
  3793d2: 4621         	mov	r1, r4
  3793d4: 461a         	mov	r2, r3
  3793d6: f03d f343    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43d686
  3793da: ab04         	add	r3, sp, #0x10
  3793dc: 9801         	ldr	r0, [sp, #0x4]
  3793de: 4619         	mov	r1, r3
  3793e0: f7ff f972    	bl	0x3786c8 <NetworkManager::addNewPeerID(std::string)> @ imm = #-0xd1c
  3793e4: ab04         	add	r3, sp, #0x10
  3793e6: 4618         	mov	r0, r3
  3793e8: f03c f294    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c528
  3793ec: ab03         	add	r3, sp, #0xc
  3793ee: 4618         	mov	r0, r3
  3793f0: f011 f004    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x411008
  3793f4: 9801         	ldr	r0, [sp, #0x4]
  3793f6: f7ff f93f    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0xd82
  3793fa: 4603         	mov	r3, r0
  3793fc: 9307         	str	r3, [sp, #0x1c]
  3793fe: 9806         	ldr	r0, [sp, #0x18]
  379400: f220 fa92    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220524
  379404: 4604         	mov	r4, r0
  379406: ab03         	add	r3, sp, #0xc
  379408: 4618         	mov	r0, r3
  37940a: f010 f7f3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x410fe6
  37940e: aa04         	add	r2, sp, #0x10
  379410: ab03         	add	r3, sp, #0xc
  379412: 4610         	mov	r0, r2
  379414: 4621         	mov	r1, r4
  379416: 461a         	mov	r2, r3
  379418: f03d f322    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43d644
  37941c: ab04         	add	r3, sp, #0x10
  37941e: 9807         	ldr	r0, [sp, #0x1c]
  379420: 9905         	ldr	r1, [sp, #0x14]
  379422: 461a         	mov	r2, r3
  379424: f21b fa88    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x21b510
  379428: ab04         	add	r3, sp, #0x10
  37942a: 4618         	mov	r0, r3
  37942c: f03c f272    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c4e4
  379430: ab03         	add	r3, sp, #0xc
  379432: 4618         	mov	r0, r3
  379434: f010 f7e2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410fc4
  379438: e015         	b	0x379466 <NetworkManager::onPlayerSetup(cocos2d::CCObject*)+0xc2> @ imm = #0x2a
  37943a: ab04         	add	r3, sp, #0x10
  37943c: 4618         	mov	r0, r3
  37943e: f03c f269    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c4d2
  379442: e7ff         	b	0x379444 <NetworkManager::onPlayerSetup(cocos2d::CCObject*)+0xa0> @ imm = #-0x2
  379444: ab03         	add	r3, sp, #0xc
  379446: 4618         	mov	r0, r3
  379448: f010 f7d8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410fb0
  37944c: f00e f62e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ec5c
  379450: ab04         	add	r3, sp, #0x10
  379452: 4618         	mov	r0, r3
  379454: f03c f25e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c4bc
  379458: e7ff         	b	0x37945a <NetworkManager::onPlayerSetup(cocos2d::CCObject*)+0xb6> @ imm = #-0x2
  37945a: ab03         	add	r3, sp, #0xc
  37945c: 4618         	mov	r0, r3
  37945e: f010 f7cd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410f9a
  379462: f00e f623    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ec46
  379466: b008         	add	sp, #0x20
  379468: bd10         	pop	{r4, pc}

// ==== NetworkManager::requestPlayerSetup
//      file offset 0x37946c (= ELF address; Ghidra 0x38946c), 92 bytes, Thumb-2
  37946c: b510         	push	{r4, lr}
  37946e: b084         	sub	sp, #0x10
  379470: 9001         	str	r0, [sp, #0x4]
  379472: 9100         	str	r1, [sp]
  379474: 9b01         	ldr	r3, [sp, #0x4]
  379476: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  37947a: ab02         	add	r3, sp, #0x8
  37947c: 4618         	mov	r0, r3
  37947e: 9900         	ldr	r1, [sp]
  379480: f03d f032    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43d064
  379484: ab02         	add	r3, sp, #0x8
  379486: 4620         	mov	r0, r4
  379488: 4619         	mov	r1, r3
  37948a: f00b fae5    	bl	0x384a58 <NetworkMessageDispatcher::getPlayerSetupDataRequest(std::string)> @ imm = #0xb5ca
  37948e: 4603         	mov	r3, r0
  379490: 9303         	str	r3, [sp, #0xc]
  379492: ab02         	add	r3, sp, #0x8
  379494: 4618         	mov	r0, r3
  379496: f03c f23d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c47a
  37949a: 9803         	ldr	r0, [sp, #0xc]
  37949c: f0ca ff4c    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcae98
  3794a0: 4604         	mov	r4, r0
  3794a2: 9803         	ldr	r0, [sp, #0xc]
  3794a4: f0ca ff50    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcaea0
  3794a8: 4603         	mov	r3, r0
  3794aa: 9801         	ldr	r0, [sp, #0x4]
  3794ac: 4621         	mov	r1, r4
  3794ae: 461a         	mov	r2, r3
  3794b0: 2301         	movs	r3, #0x1
  3794b2: f7fe fffb    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x100a
  3794b6: e005         	b	0x3794c4 <NetworkManager::requestPlayerSetup(std::string)+0x58> @ imm = #0xa
  3794b8: ab02         	add	r3, sp, #0x8
  3794ba: 4618         	mov	r0, r3
  3794bc: f03c f22a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c454
  3794c0: f00e f5f4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ebe8
  3794c4: b004         	add	sp, #0x10
  3794c6: bd10         	pop	{r4, pc}

// ==== NetworkManager::addSoldier
//      file offset 0x3794c8 (= ELF address; Ghidra 0x3894c8), 504 bytes, Thumb-2
  3794c8: b530         	push	{r4, r5, lr}
  3794ca: b093         	sub	sp, #0x4c
  3794cc: 9005         	str	r0, [sp, #0x14]
  3794ce: 9104         	str	r1, [sp, #0x10]
  3794d0: 9203         	str	r2, [sp, #0xc]
  3794d2: 4c79         	ldr	r4, [pc, #0x1e4]        @ 0x3796b8 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1f0>
  3794d4: 447c         	add	r4, pc
  3794d6: 2300         	movs	r3, #0x0
  3794d8: 930c         	str	r3, [sp, #0x30]
  3794da: 2300         	movs	r3, #0x0
  3794dc: 930d         	str	r3, [sp, #0x34]
  3794de: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x3796bc <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1f4>
  3794e0: 58e3         	ldr	r3, [r4, r3]
  3794e2: 681b         	ldr	r3, [r3]
  3794e4: 681b         	ldr	r3, [r3]
  3794e6: f503 73e2    	add.w	r3, r3, #0x1c4
  3794ea: 681b         	ldr	r3, [r3]
  3794ec: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x3796bc <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1f4>
  3794ee: 58a2         	ldr	r2, [r4, r2]
  3794f0: 6812         	ldr	r2, [r2]
  3794f2: 4610         	mov	r0, r2
  3794f4: 4798         	blx	r3
  3794f6: 4603         	mov	r3, r0
  3794f8: 930e         	str	r3, [sp, #0x38]
  3794fa: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x3796bc <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1f4>
  3794fc: 58e3         	ldr	r3, [r4, r3]
  3794fe: 681b         	ldr	r3, [r3]
  379500: 681b         	ldr	r3, [r3]
  379502: f503 73ec    	add.w	r3, r3, #0x1d8
  379506: 681b         	ldr	r3, [r3]
  379508: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x3796bc <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1f4>
  37950a: 58a2         	ldr	r2, [r4, r2]
  37950c: 6812         	ldr	r2, [r2]
  37950e: 4610         	mov	r0, r2
  379510: 4798         	blx	r3
  379512: 4603         	mov	r3, r0
  379514: aa06         	add	r2, sp, #0x18
  379516: 4610         	mov	r0, r2
  379518: 4619         	mov	r1, r3
  37951a: f07a fd41    	bl	0x3f3fa0 <SoldierView::getPlayerName()> @ imm = #0x7aa82
  37951e: f0ab fdcb    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xabb96
  379522: 4603         	mov	r3, r0
  379524: 4618         	mov	r0, r3
  379526: f0ab ff5d    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0xabeba
  37952a: 4603         	mov	r3, r0
  37952c: 4618         	mov	r0, r3
  37952e: f7fd fe0d    	bl	0x37714c <cocos2d::CCDictElement::getStrKey() const+0xcc4> @ imm = #-0x23e6
  379532: 900f         	str	r0, [sp, #0x3c]
  379534: f0ab fdc0    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xabb80
  379538: 4603         	mov	r3, r0
  37953a: 4618         	mov	r0, r3
  37953c: f0ab ff3c    	bl	0x4253b8 <LeaderBoardBridge::getCachedPlayerSkill()> @ imm = #0xabe78
  379540: 4603         	mov	r3, r0
  379542: 9310         	str	r3, [sp, #0x40]
  379544: 9b05         	ldr	r3, [sp, #0x14]
  379546: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  37954a: aa07         	add	r2, sp, #0x1c
  37954c: ab06         	add	r3, sp, #0x18
  37954e: 4610         	mov	r0, r2
  379550: 4619         	mov	r1, r3
  379552: f03c f7c9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43cf92
  379556: 9b0d         	ldr	r3, [sp, #0x34]
  379558: b29a         	uxth	r2, r3
  37955a: 9b0e         	ldr	r3, [sp, #0x38]
  37955c: b29b         	uxth	r3, r3
  37955e: 990f         	ldr	r1, [sp, #0x3c]
  379560: b28d         	uxth	r5, r1
  379562: 9910         	ldr	r1, [sp, #0x40]
  379564: b288         	uxth	r0, r1
  379566: a907         	add	r1, sp, #0x1c
  379568: b212         	sxth	r2, r2
  37956a: b21b         	sxth	r3, r3
  37956c: b22d         	sxth	r5, r5
  37956e: 9500         	str	r5, [sp]
  379570: b200         	sxth	r0, r0
  379572: 9001         	str	r0, [sp, #0x4]
  379574: 4620         	mov	r0, r4
  379576: f00b fb81    	bl	0x384c7c <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)> @ imm = #0xb702
  37957a: 4603         	mov	r3, r0
  37957c: 930c         	str	r3, [sp, #0x30]
  37957e: ab07         	add	r3, sp, #0x1c
  379580: 4618         	mov	r0, r3
  379582: f03c f1c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c38e
  379586: 980c         	ldr	r0, [sp, #0x30]
  379588: f0ca fed6    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcadac
  37958c: 4605         	mov	r5, r0
  37958e: 980c         	ldr	r0, [sp, #0x30]
  379590: f0ca feda    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcadb4
  379594: 4603         	mov	r3, r0
  379596: 461c         	mov	r4, r3
  379598: ab08         	add	r3, sp, #0x20
  37959a: 4618         	mov	r0, r3
  37959c: 9903         	ldr	r1, [sp, #0xc]
  37959e: f03c f7a3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43cf46
  3795a2: ab08         	add	r3, sp, #0x20
  3795a4: 2201         	movs	r2, #0x1
  3795a6: 9200         	str	r2, [sp]
  3795a8: 9805         	ldr	r0, [sp, #0x14]
  3795aa: 4629         	mov	r1, r5
  3795ac: 4622         	mov	r2, r4
  3795ae: f7fe ffb5    	bl	0x37851c <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)> @ imm = #-0x1096
  3795b2: ab08         	add	r3, sp, #0x20
  3795b4: 4618         	mov	r0, r3
  3795b6: f03c f1ad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c35a
  3795ba: 2300         	movs	r3, #0x0
  3795bc: 930b         	str	r3, [sp, #0x2c]
  3795be: e02c         	b	0x37961a <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x152> @ imm = #0x58
  3795c0: 9b0b         	ldr	r3, [sp, #0x2c]
  3795c2: 9804         	ldr	r0, [sp, #0x10]
  3795c4: 4619         	mov	r1, r3
  3795c6: f220 fdab    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220b56
  3795ca: 4603         	mov	r3, r0
  3795cc: 9311         	str	r3, [sp, #0x44]
  3795ce: 9b05         	ldr	r3, [sp, #0x14]
  3795d0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3795d4: 4618         	mov	r0, r3
  3795d6: 9911         	ldr	r1, [sp, #0x44]
  3795d8: f00d fa36    	bl	0x386a48 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)> @ imm = #0xd46c
  3795dc: 4603         	mov	r3, r0
  3795de: 930c         	str	r3, [sp, #0x30]
  3795e0: 980c         	ldr	r0, [sp, #0x30]
  3795e2: f0ca fea9    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcad52
  3795e6: 4605         	mov	r5, r0
  3795e8: 980c         	ldr	r0, [sp, #0x30]
  3795ea: f0ca fead    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcad5a
  3795ee: 4603         	mov	r3, r0
  3795f0: 461c         	mov	r4, r3
  3795f2: ab09         	add	r3, sp, #0x24
  3795f4: 4618         	mov	r0, r3
  3795f6: 9903         	ldr	r1, [sp, #0xc]
  3795f8: f03c f776    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43ceec
  3795fc: ab09         	add	r3, sp, #0x24
  3795fe: 2201         	movs	r2, #0x1
  379600: 9200         	str	r2, [sp]
  379602: 9805         	ldr	r0, [sp, #0x14]
  379604: 4629         	mov	r1, r5
  379606: 4622         	mov	r2, r4
  379608: f7fe ff88    	bl	0x37851c <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)> @ imm = #-0x10f0
  37960c: ab09         	add	r3, sp, #0x24
  37960e: 4618         	mov	r0, r3
  379610: f03c f180    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c300
  379614: 9b0b         	ldr	r3, [sp, #0x2c]
  379616: 3301         	adds	r3, #0x1
  379618: 930b         	str	r3, [sp, #0x2c]
  37961a: 9c0b         	ldr	r4, [sp, #0x2c]
  37961c: 9804         	ldr	r0, [sp, #0x10]
  37961e: f220 fd5f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x220abe
  379622: 4603         	mov	r3, r0
  379624: 429c         	cmp	r4, r3
  379626: bf2c         	ite	hs
  379628: 2300         	movhs	r3, #0x0
  37962a: 2301         	movlo	r3, #0x1
  37962c: b2db         	uxtb	r3, r3
  37962e: 2b00         	cmp	r3, #0x0
  379630: d1c6         	bne	0x3795c0 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0xf8> @ imm = #-0x74
  379632: 9b05         	ldr	r3, [sp, #0x14]
  379634: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  379638: 4618         	mov	r0, r3
  37963a: f00d f935    	bl	0x3868a8 <NetworkMessageDispatcher::getWeaponChangeData()> @ imm = #0xd26a
  37963e: 4603         	mov	r3, r0
  379640: 930c         	str	r3, [sp, #0x30]
  379642: 980c         	ldr	r0, [sp, #0x30]
  379644: f0ca fe78    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcacf0
  379648: 4605         	mov	r5, r0
  37964a: 980c         	ldr	r0, [sp, #0x30]
  37964c: f0ca fe7c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcacf8
  379650: 4603         	mov	r3, r0
  379652: 461c         	mov	r4, r3
  379654: ab0a         	add	r3, sp, #0x28
  379656: 4618         	mov	r0, r3
  379658: 9903         	ldr	r1, [sp, #0xc]
  37965a: f03c f745    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43ce8a
  37965e: ab0a         	add	r3, sp, #0x28
  379660: 2201         	movs	r2, #0x1
  379662: 9200         	str	r2, [sp]
  379664: 9805         	ldr	r0, [sp, #0x14]
  379666: 4629         	mov	r1, r5
  379668: 4622         	mov	r2, r4
  37966a: f7fe ff57    	bl	0x37851c <NetworkManager::sendDataMessageToPeer(void const*, int, std::string, bool)> @ imm = #-0x1152
  37966e: ab0a         	add	r3, sp, #0x28
  379670: 4618         	mov	r0, r3
  379672: f03c f14f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c29e
  379676: ab06         	add	r3, sp, #0x18
  379678: 4618         	mov	r0, r3
  37967a: f03c f14b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c296
  37967e: e019         	b	0x3796b4 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1ec> @ imm = #0x32
  379680: ab07         	add	r3, sp, #0x1c
  379682: 4618         	mov	r0, r3
  379684: f03c f146    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c28c
  379688: e00e         	b	0x3796a8 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1e0> @ imm = #0x1c
  37968a: ab08         	add	r3, sp, #0x20
  37968c: 4618         	mov	r0, r3
  37968e: f03c f141    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c282
  379692: e009         	b	0x3796a8 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1e0> @ imm = #0x12
  379694: ab09         	add	r3, sp, #0x24
  379696: 4618         	mov	r0, r3
  379698: f03c f13c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c278
  37969c: e004         	b	0x3796a8 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1e0> @ imm = #0x8
  37969e: ab0a         	add	r3, sp, #0x28
  3796a0: 4618         	mov	r0, r3
  3796a2: f03c f137    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c26e
  3796a6: e7ff         	b	0x3796a8 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x1e0> @ imm = #-0x2
  3796a8: ab06         	add	r3, sp, #0x18
  3796aa: 4618         	mov	r0, r3
  3796ac: f03c f132    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c264
  3796b0: f00e f4fc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e9f8
  3796b4: b013         	add	sp, #0x4c
  3796b6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3796b7); words below are literal-pool data ---
  3796b8: 9534         	str	r5, [sp, #0xd0]
  3796ba: 005b         	lsls	r3, r3, #0x1
  3796bc: d784         	bvc	0x3795c8 <NetworkManager::addSoldier(cocos2d::CCArray*, std::string)+0x100> @ imm = #-0xf8
  3796be: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== NetworkManager::sendSpawnEnemy
//      file offset 0x3796c0 (= ELF address; Ghidra 0x3896c0), 172 bytes, Thumb-2
  3796c0: b530         	push	{r4, r5, lr}
  3796c2: b089         	sub	sp, #0x24
  3796c4: 9001         	str	r0, [sp, #0x4]
  3796c6: 9100         	str	r1, [sp]
  3796c8: 9b00         	ldr	r3, [sp]
  3796ca: 9304         	str	r3, [sp, #0x10]
  3796cc: 9804         	ldr	r0, [sp, #0x10]
  3796ce: 2100         	movs	r1, #0x0
  3796d0: f220 fd26    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220a4c
  3796d4: 4603         	mov	r3, r0
  3796d6: 9305         	str	r3, [sp, #0x14]
  3796d8: 9804         	ldr	r0, [sp, #0x10]
  3796da: 2101         	movs	r1, #0x1
  3796dc: f220 fd20    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220a40
  3796e0: 4603         	mov	r3, r0
  3796e2: 9306         	str	r3, [sp, #0x18]
  3796e4: 9b01         	ldr	r3, [sp, #0x4]
  3796e6: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  3796ea: 9805         	ldr	r0, [sp, #0x14]
  3796ec: f220 f91c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220238
  3796f0: 4605         	mov	r5, r0
  3796f2: ab02         	add	r3, sp, #0x8
  3796f4: 4618         	mov	r0, r3
  3796f6: f010 f67d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x410cfa
  3796fa: aa03         	add	r2, sp, #0xc
  3796fc: ab02         	add	r3, sp, #0x8
  3796fe: 4610         	mov	r0, r2
  379700: 4629         	mov	r1, r5
  379702: 461a         	mov	r2, r3
  379704: f03d f1ac    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43d358
  379708: 9806         	ldr	r0, [sp, #0x18]
  37970a: f773 fba3    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8c8ba
  37970e: 4603         	mov	r3, r0
  379710: b29b         	uxth	r3, r3
  379712: aa03         	add	r2, sp, #0xc
  379714: b21b         	sxth	r3, r3
  379716: 4620         	mov	r0, r4
  379718: 4611         	mov	r1, r2
  37971a: 461a         	mov	r2, r3
  37971c: f00e f976    	bl	0x387a0c <NetworkMessageDispatcher::getEnemySpawnData(std::string, short)> @ imm = #0xe2ec
  379720: 4603         	mov	r3, r0
  379722: 9307         	str	r3, [sp, #0x1c]
  379724: ab03         	add	r3, sp, #0xc
  379726: 4618         	mov	r0, r3
  379728: f03c f0f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c1e8
  37972c: ab02         	add	r3, sp, #0x8
  37972e: 4618         	mov	r0, r3
  379730: f010 f664    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410cc8
  379734: 9807         	ldr	r0, [sp, #0x1c]
  379736: f0ca fdff    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xcabfe
  37973a: 4604         	mov	r4, r0
  37973c: 9807         	ldr	r0, [sp, #0x1c]
  37973e: f0ca fe03    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xcac06
  379742: 4603         	mov	r3, r0
  379744: 9801         	ldr	r0, [sp, #0x4]
  379746: 4621         	mov	r1, r4
  379748: 461a         	mov	r2, r3
  37974a: 2301         	movs	r3, #0x1
  37974c: f7fe feae    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x12a4
  379750: e00a         	b	0x379768 <NetworkManager::sendSpawnEnemy(cocos2d::CCObject*)+0xa8> @ imm = #0x14
  379752: ab03         	add	r3, sp, #0xc
  379754: 4618         	mov	r0, r3
  379756: f03c f0dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43c1ba
  37975a: e7ff         	b	0x37975c <NetworkManager::sendSpawnEnemy(cocos2d::CCObject*)+0x9c> @ imm = #-0x2
  37975c: ab02         	add	r3, sp, #0x8
  37975e: 4618         	mov	r0, r3
  379760: f010 f64c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410c98
  379764: f00e f4a2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e944
  379768: b009         	add	sp, #0x24
  37976a: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::sendEnemyPositon
//      file offset 0x37976c (= ELF address; Ghidra 0x38976c), 534 bytes, Thumb-2
  37976c: b570         	push	{r4, r5, r6, lr}
  37976e: b0ac         	sub	sp, #0xb0
  379770: 9011         	str	r0, [sp, #0x44]
  379772: 9110         	str	r1, [sp, #0x40]
  379774: 9b10         	ldr	r3, [sp, #0x40]
  379776: 9314         	str	r3, [sp, #0x50]
  379778: 9814         	ldr	r0, [sp, #0x50]
  37977a: 2100         	movs	r1, #0x0
  37977c: f220 fcd0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2209a0
  379780: 4603         	mov	r3, r0
  379782: 9315         	str	r3, [sp, #0x54]
  379784: 9814         	ldr	r0, [sp, #0x50]
  379786: 2101         	movs	r1, #0x1
  379788: f220 fcca    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220994
  37978c: 4603         	mov	r3, r0
  37978e: 4618         	mov	r0, r3
  379790: f763 fa70    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cb20
  379794: 4603         	mov	r3, r0
  379796: 9316         	str	r3, [sp, #0x58]
  379798: 9814         	ldr	r0, [sp, #0x50]
  37979a: 2102         	movs	r1, #0x2
  37979c: f220 fcc0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220980
  3797a0: 4603         	mov	r3, r0
  3797a2: 4618         	mov	r0, r3
  3797a4: f763 fa66    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cb34
  3797a8: 4603         	mov	r3, r0
  3797aa: 9317         	str	r3, [sp, #0x5c]
  3797ac: 9814         	ldr	r0, [sp, #0x50]
  3797ae: 2103         	movs	r1, #0x3
  3797b0: f220 fcb6    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x22096c
  3797b4: 4603         	mov	r3, r0
  3797b6: 4618         	mov	r0, r3
  3797b8: f763 fa5c    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cb48
  3797bc: 4603         	mov	r3, r0
  3797be: 9318         	str	r3, [sp, #0x60]
  3797c0: 9814         	ldr	r0, [sp, #0x50]
  3797c2: 2104         	movs	r1, #0x4
  3797c4: f220 fcac    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220958
  3797c8: 4603         	mov	r3, r0
  3797ca: 4618         	mov	r0, r3
  3797cc: f763 fa52    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cb5c
  3797d0: 4603         	mov	r3, r0
  3797d2: 9319         	str	r3, [sp, #0x64]
  3797d4: 9814         	ldr	r0, [sp, #0x50]
  3797d6: 2105         	movs	r1, #0x5
  3797d8: f220 fca2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220944
  3797dc: 4603         	mov	r3, r0
  3797de: 4618         	mov	r0, r3
  3797e0: f773 fb38    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8c990
  3797e4: 4603         	mov	r3, r0
  3797e6: 2b00         	cmp	r3, #0x0
  3797e8: bf0c         	ite	eq
  3797ea: 2300         	moveq	r3, #0x0
  3797ec: 2301         	movne	r3, #0x1
  3797ee: f88d 304a    	strb.w	r3, [sp, #0x4a]
  3797f2: 9814         	ldr	r0, [sp, #0x50]
  3797f4: 2106         	movs	r1, #0x6
  3797f6: f220 fc93    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220926
  3797fa: 4603         	mov	r3, r0
  3797fc: 4618         	mov	r0, r3
  3797fe: f763 fa39    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cb8e
  379802: 4603         	mov	r3, r0
  379804: 931a         	str	r3, [sp, #0x68]
  379806: 9814         	ldr	r0, [sp, #0x50]
  379808: 2107         	movs	r1, #0x7
  37980a: f220 fc89    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x220912
  37980e: 4603         	mov	r3, r0
  379810: 4618         	mov	r0, r3
  379812: f763 fa2f    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cba2
  379816: 4603         	mov	r3, r0
  379818: 931b         	str	r3, [sp, #0x6c]
  37981a: 9814         	ldr	r0, [sp, #0x50]
  37981c: 2108         	movs	r1, #0x8
  37981e: f220 fc7f    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2208fe
  379822: 4603         	mov	r3, r0
  379824: 4618         	mov	r0, r3
  379826: f763 fa25    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cbb6
  37982a: 4603         	mov	r3, r0
  37982c: 931c         	str	r3, [sp, #0x70]
  37982e: 9814         	ldr	r0, [sp, #0x50]
  379830: 2109         	movs	r1, #0x9
  379832: f220 fc75    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2208ea
  379836: 4603         	mov	r3, r0
  379838: 4618         	mov	r0, r3
  37983a: f763 fa1b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cbca
  37983e: 4603         	mov	r3, r0
  379840: 931d         	str	r3, [sp, #0x74]
  379842: 9814         	ldr	r0, [sp, #0x50]
  379844: 210a         	movs	r1, #0xa
  379846: f220 fc6b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2208d6
  37984a: 4603         	mov	r3, r0
  37984c: 4618         	mov	r0, r3
  37984e: f763 fa11    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x9cbde
  379852: 4603         	mov	r3, r0
  379854: 931e         	str	r3, [sp, #0x78]
  379856: 9814         	ldr	r0, [sp, #0x50]
  379858: 210b         	movs	r1, #0xb
  37985a: f220 fc61    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2208c2
  37985e: 4603         	mov	r3, r0
  379860: 4618         	mov	r0, r3
  379862: f773 faf7    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8ca12
  379866: 4603         	mov	r3, r0
  379868: f88d 304b    	strb.w	r3, [sp, #0x4b]
  37986c: eddd 7a16    	vldr	s15, [sp, #88]
  379870: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  379874: eddd 7a17    	vldr	s15, [sp, #92]
  379878: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  37987c: ab20         	add	r3, sp, #0x80
  37987e: 4618         	mov	r0, r3
  379880: eeb0 0b46    	vmov.f64	d0, d6
  379884: eeb0 1b47    	vmov.f64	d1, d7
  379888: f7fc fe04    	bl	0x376494 <cocos2d::CCDictElement::getStrKey() const+0xc> @ imm = #-0x33f8
  37988c: eddd 7a1a    	vldr	s15, [sp, #104]
  379890: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  379894: eddd 7a1b    	vldr	s15, [sp, #108]
  379898: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  37989c: ab24         	add	r3, sp, #0x90
  37989e: 4618         	mov	r0, r3
  3798a0: eeb0 0b46    	vmov.f64	d0, d6
  3798a4: eeb0 1b47    	vmov.f64	d1, d7
  3798a8: f7fc fdf4    	bl	0x376494 <cocos2d::CCDictElement::getStrKey() const+0xc> @ imm = #-0x3418
  3798ac: eddd 7a1c    	vldr	s15, [sp, #112]
  3798b0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3798b4: eddd 7a1d    	vldr	s15, [sp, #116]
  3798b8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3798bc: ab28         	add	r3, sp, #0xa0
  3798be: 4618         	mov	r0, r3
  3798c0: eeb0 0b46    	vmov.f64	d0, d6
  3798c4: eeb0 1b47    	vmov.f64	d1, d7
  3798c8: f7fc fde4    	bl	0x376494 <cocos2d::CCDictElement::getStrKey() const+0xc> @ imm = #-0x3438
  3798cc: 9b11         	ldr	r3, [sp, #0x44]
  3798ce: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  3798d2: 9815         	ldr	r0, [sp, #0x54]
  3798d4: f220 f828    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x220050
  3798d8: 4604         	mov	r4, r0
  3798da: ab12         	add	r3, sp, #0x48
  3798dc: 4618         	mov	r0, r3
  3798de: f010 f589    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x410b12
  3798e2: aa13         	add	r2, sp, #0x4c
  3798e4: ab12         	add	r3, sp, #0x48
  3798e6: 4610         	mov	r0, r2
  3798e8: 4621         	mov	r1, r4
  3798ea: 461a         	mov	r2, r3
  3798ec: f03d f0b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43d170
  3798f0: ad13         	add	r5, sp, #0x4c
  3798f2: 9b18         	ldr	r3, [sp, #0x60]
  3798f4: 9302         	str	r3, [sp, #0x8]
  3798f6: 9b19         	ldr	r3, [sp, #0x64]
  3798f8: 9303         	str	r3, [sp, #0xc]
  3798fa: f89d 304a    	ldrb.w	r3, [sp, #0x4a]
  3798fe: 9304         	str	r3, [sp, #0x10]
  379900: ac06         	add	r4, sp, #0x18
  379902: ab24         	add	r3, sp, #0x90
  379904: cb0f         	ldm	r3, {r0, r1, r2, r3}
  379906: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  37990a: ac0a         	add	r4, sp, #0x28
  37990c: ab28         	add	r3, sp, #0xa0
  37990e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  379910: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  379914: 9b1e         	ldr	r3, [sp, #0x78]
  379916: 930e         	str	r3, [sp, #0x38]
  379918: f89d 304b    	ldrb.w	r3, [sp, #0x4b]
  37991c: 930f         	str	r3, [sp, #0x3c]
  37991e: 466b         	mov	r3, sp
  379920: aa22         	add	r2, sp, #0x88
  379922: e892 0003    	ldm.w	r2, {r0, r1}
  379926: e883 0003    	stm.w	r3, {r0, r1}
  37992a: ab20         	add	r3, sp, #0x80
  37992c: cb0c         	ldm	r3, {r2, r3}
  37992e: 4630         	mov	r0, r6
  379930: 4629         	mov	r1, r5
  379932: f00c fc7d    	bl	0x386230 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)> @ imm = #0xc8fa
  379936: 4603         	mov	r3, r0
  379938: 931f         	str	r3, [sp, #0x7c]
  37993a: ab13         	add	r3, sp, #0x4c
  37993c: 4618         	mov	r0, r3
  37993e: f03b f7e9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bfd2
  379942: ab12         	add	r3, sp, #0x48
  379944: 4618         	mov	r0, r3
  379946: f010 f559    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410ab2
  37994a: 981f         	ldr	r0, [sp, #0x7c]
  37994c: f0ca fcf4    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xca9e8
  379950: 4604         	mov	r4, r0
  379952: 981f         	ldr	r0, [sp, #0x7c]
  379954: f0ca fcf8    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xca9f0
  379958: 4603         	mov	r3, r0
  37995a: 9811         	ldr	r0, [sp, #0x44]
  37995c: 4621         	mov	r1, r4
  37995e: 461a         	mov	r2, r3
  379960: 2300         	movs	r3, #0x0
  379962: f7fe fda3    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x14ba
  379966: e00a         	b	0x37997e <NetworkManager::sendEnemyPositon(cocos2d::CCObject*)+0x212> @ imm = #0x14
  379968: ab13         	add	r3, sp, #0x4c
  37996a: 4618         	mov	r0, r3
  37996c: f03b f7d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bfa4
  379970: e7ff         	b	0x379972 <NetworkManager::sendEnemyPositon(cocos2d::CCObject*)+0x206> @ imm = #-0x2
  379972: ab12         	add	r3, sp, #0x48
  379974: 4618         	mov	r0, r3
  379976: f010 f541    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410a82
  37997a: f00e f397    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e72e
  37997e: b02c         	add	sp, #0xb0
  379980: bd70         	pop	{r4, r5, r6, pc}

// ==== NetworkManager::sendEnemyDestroy
//      file offset 0x379984 (= ELF address; Ghidra 0x389984), 134 bytes, Thumb-2
  379984: b530         	push	{r4, r5, lr}
  379986: b087         	sub	sp, #0x1c
  379988: 9001         	str	r0, [sp, #0x4]
  37998a: 9100         	str	r1, [sp]
  37998c: 9b00         	ldr	r3, [sp]
  37998e: 9304         	str	r3, [sp, #0x10]
  379990: 9b01         	ldr	r3, [sp, #0x4]
  379992: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  379996: 9804         	ldr	r0, [sp, #0x10]
  379998: f21f ffc6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21ff8c
  37999c: 4605         	mov	r5, r0
  37999e: ab02         	add	r3, sp, #0x8
  3799a0: 4618         	mov	r0, r3
  3799a2: f010 f527    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x410a4e
  3799a6: aa03         	add	r2, sp, #0xc
  3799a8: ab02         	add	r3, sp, #0x8
  3799aa: 4610         	mov	r0, r2
  3799ac: 4629         	mov	r1, r5
  3799ae: 461a         	mov	r2, r3
  3799b0: f03d f056    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43d0ac
  3799b4: ab03         	add	r3, sp, #0xc
  3799b6: 4620         	mov	r0, r4
  3799b8: 4619         	mov	r1, r3
  3799ba: f00e f897    	bl	0x387aec <NetworkMessageDispatcher::getEnemyDestroyData(std::string)> @ imm = #0xe12e
  3799be: 4603         	mov	r3, r0
  3799c0: 9305         	str	r3, [sp, #0x14]
  3799c2: ab03         	add	r3, sp, #0xc
  3799c4: 4618         	mov	r0, r3
  3799c6: f03b f7a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bf4a
  3799ca: ab02         	add	r3, sp, #0x8
  3799cc: 4618         	mov	r0, r3
  3799ce: f010 f515    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410a2a
  3799d2: 9805         	ldr	r0, [sp, #0x14]
  3799d4: f0ca fcb0    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xca960
  3799d8: 4604         	mov	r4, r0
  3799da: 9805         	ldr	r0, [sp, #0x14]
  3799dc: f0ca fcb4    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xca968
  3799e0: 4603         	mov	r3, r0
  3799e2: 9801         	ldr	r0, [sp, #0x4]
  3799e4: 4621         	mov	r1, r4
  3799e6: 461a         	mov	r2, r3
  3799e8: 2301         	movs	r3, #0x1
  3799ea: f7fe fd5f    	bl	0x3784ac <NetworkManager::sendDataMessageToAll(void const*, int, bool)> @ imm = #-0x1542
  3799ee: e00a         	b	0x379a06 <NetworkManager::sendEnemyDestroy(cocos2d::CCObject*)+0x82> @ imm = #0x14
  3799f0: ab03         	add	r3, sp, #0xc
  3799f2: 4618         	mov	r0, r3
  3799f4: f03b f78e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bf1c
  3799f8: e7ff         	b	0x3799fa <NetworkManager::sendEnemyDestroy(cocos2d::CCObject*)+0x76> @ imm = #-0x2
  3799fa: ab02         	add	r3, sp, #0x8
  3799fc: 4618         	mov	r0, r3
  3799fe: f010 f4fd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4109fa
  379a02: f00e f353    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e6a6
  379a06: b007         	add	sp, #0x1c
  379a08: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::updateNetworkObjects
//      file offset 0x379a0c (= ELF address; Ghidra 0x389a0c), 100 bytes, Thumb-2
  379a0c: b530         	push	{r4, r5, lr}
  379a0e: b083         	sub	sp, #0xc
  379a10: 9001         	str	r0, [sp, #0x4]
  379a12: 9100         	str	r1, [sp]
  379a14: 9b01         	ldr	r3, [sp, #0x4]
  379a16: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379a1a: 2b00         	cmp	r3, #0x0
  379a1c: d00b         	beq	0x379a36 <NetworkManager::updateNetworkObjects(float)+0x2a> @ imm = #0x16
  379a1e: 9b01         	ldr	r3, [sp, #0x4]
  379a20: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379a24: 681b         	ldr	r3, [r3]
  379a26: 3354         	adds	r3, #0x54
  379a28: 681b         	ldr	r3, [r3]
  379a2a: 9a01         	ldr	r2, [sp, #0x4]
  379a2c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379a30: 4610         	mov	r0, r2
  379a32: 9900         	ldr	r1, [sp]
  379a34: 4798         	blx	r3
  379a36: 9b01         	ldr	r3, [sp, #0x4]
  379a38: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  379a3c: 4618         	mov	r0, r3
  379a3e: f04f 0100    	mov.w	r1, #0x0
  379a42: f047 fb31    	bl	0x3c10a8 <RakNetDelegate::updateLoop(float)> @ imm = #0x47662
  379a46: 9b01         	ldr	r3, [sp, #0x4]
  379a48: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  379a4c: 9801         	ldr	r0, [sp, #0x4]
  379a4e: f7fe fdd5    	bl	0x3785fc <NetworkManager::getMessages()> @ imm = #-0x1456
  379a52: 4604         	mov	r4, r0
  379a54: 9801         	ldr	r0, [sp, #0x4]
  379a56: f7fe fdd9    	bl	0x37860c <NetworkManager::getMessageIds()> @ imm = #-0x144e
  379a5a: 4603         	mov	r3, r0
  379a5c: 4628         	mov	r0, r5
  379a5e: 4621         	mov	r1, r4
  379a60: 461a         	mov	r2, r3
  379a62: f008 fa2d    	bl	0x381ec0 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)> @ imm = #0x845a
  379a66: 9801         	ldr	r0, [sp, #0x4]
  379a68: f7fe fdd8    	bl	0x37861c <NetworkManager::clearMessages()> @ imm = #-0x1450
  379a6c: b003         	add	sp, #0xc
  379a6e: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::checkCurrentSessionIsValid
//      file offset 0x379a70 (= ELF address; Ghidra 0x389a70), 56 bytes, Thumb-2
  379a70: b510         	push	{r4, lr}
  379a72: b084         	sub	sp, #0x10
  379a74: 9001         	str	r0, [sp, #0x4]
  379a76: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x379aa0 <NetworkManager::checkCurrentSessionIsValid()+0x30>
  379a78: 447c         	add	r4, pc
  379a7a: 2000         	movs	r0, #0x0
  379a7c: f75c eac2    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0xa3a7c
  379a80: 9003         	str	r0, [sp, #0xc]
  379a82: 9b03         	ldr	r3, [sp, #0xc]
  379a84: f103 020f    	add.w	r2, r3, #0xf
  379a88: 4b06         	ldr	r3, [pc, #0x18]         @ 0x379aa4 <NetworkManager::checkCurrentSessionIsValid()+0x34>
  379a8a: 58e3         	ldr	r3, [r4, r3]
  379a8c: 681b         	ldr	r3, [r3]
  379a8e: 429a         	cmp	r2, r3
  379a90: dd01         	ble	0x379a96 <NetworkManager::checkCurrentSessionIsValid()+0x26> @ imm = #0x2
  379a92: 2300         	movs	r3, #0x0
  379a94: e000         	b	0x379a98 <NetworkManager::checkCurrentSessionIsValid()+0x28> @ imm = #0x0
  379a96: 2301         	movs	r3, #0x1
  379a98: 4618         	mov	r0, r3
  379a9a: b004         	add	sp, #0x10
  379a9c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x379a9d); words below are literal-pool data ---
  379a9e: bf00         	nop
  379aa0: 8f90         	ldrh	r0, [r2, #0x3c]
  379aa2: 005b         	lsls	r3, r3, #0x1
  379aa4: dca0         	bgt	0x3799e8 <NetworkManager::sendEnemyDestroy(cocos2d::CCObject*)+0x64> @ imm = #-0xc0
  379aa6: ffff b500    	<unknown>

// ==== NetworkManager::getPeerPlayerKeys
//      file offset 0x379aa8 (= ELF address; Ghidra 0x389aa8), 30 bytes, Thumb-2
  379aa8: b500         	push	{lr}
  379aaa: b083         	sub	sp, #0xc
  379aac: 9001         	str	r0, [sp, #0x4]
  379aae: 9801         	ldr	r0, [sp, #0x4]
  379ab0: f7fe fde2    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x143c
  379ab4: 4603         	mov	r3, r0
  379ab6: 4618         	mov	r0, r3
  379ab8: f21a f8e8    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x21a1d0
  379abc: 4603         	mov	r3, r0
  379abe: 4618         	mov	r0, r3
  379ac0: b003         	add	sp, #0xc
  379ac2: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::onlineMatchExists
//      file offset 0x379ac8 (= ELF address; Ghidra 0x389ac8), 86 bytes, Thumb-2
  379ac8: b500         	push	{lr}
  379aca: b083         	sub	sp, #0xc
  379acc: 9001         	str	r0, [sp, #0x4]
  379ace: 9b01         	ldr	r3, [sp, #0x4]
  379ad0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379ad4: 2b00         	cmp	r3, #0x0
  379ad6: d00d         	beq	0x379af4 <NetworkManager::onlineMatchExists()+0x2c> @ imm = #0x1a
  379ad8: 9b01         	ldr	r3, [sp, #0x4]
  379ada: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379ade: 681b         	ldr	r3, [r3]
  379ae0: 3314         	adds	r3, #0x14
  379ae2: 681b         	ldr	r3, [r3]
  379ae4: 9a01         	ldr	r2, [sp, #0x4]
  379ae6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379aea: 4610         	mov	r0, r2
  379aec: 4798         	blx	r3
  379aee: 4603         	mov	r3, r0
  379af0: 2b00         	cmp	r3, #0x0
  379af2: d10d         	bne	0x379b10 <NetworkManager::onlineMatchExists()+0x48> @ imm = #0x1a
  379af4: 9b01         	ldr	r3, [sp, #0x4]
  379af6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  379afa: 2b00         	cmp	r3, #0x0
  379afc: d00a         	beq	0x379b14 <NetworkManager::onlineMatchExists()+0x4c> @ imm = #0x14
  379afe: 9b01         	ldr	r3, [sp, #0x4]
  379b00: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  379b04: 4618         	mov	r0, r3
  379b06: f048 ff0b    	bl	0x3c2920 <RakNetDelegate::isOnline()> @ imm = #0x48e16
  379b0a: 4603         	mov	r3, r0
  379b0c: 2b00         	cmp	r3, #0x0
  379b0e: d001         	beq	0x379b14 <NetworkManager::onlineMatchExists()+0x4c> @ imm = #0x2
  379b10: 2301         	movs	r3, #0x1
  379b12: e000         	b	0x379b16 <NetworkManager::onlineMatchExists()+0x4e> @ imm = #0x0
  379b14: 2300         	movs	r3, #0x0
  379b16: 4618         	mov	r0, r3
  379b18: b003         	add	sp, #0xc
  379b1a: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getMatchPeersCount
//      file offset 0x379b20 (= ELF address; Ghidra 0x389b20), 38 bytes, Thumb-2
  379b20: b500         	push	{lr}
  379b22: b083         	sub	sp, #0xc
  379b24: 9001         	str	r0, [sp, #0x4]
  379b26: 9b01         	ldr	r3, [sp, #0x4]
  379b28: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379b2c: 681b         	ldr	r3, [r3]
  379b2e: 3318         	adds	r3, #0x18
  379b30: 681b         	ldr	r3, [r3]
  379b32: 9a01         	ldr	r2, [sp, #0x4]
  379b34: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379b38: 4610         	mov	r0, r2
  379b3a: 4798         	blx	r3
  379b3c: 4603         	mov	r3, r0
  379b3e: 4618         	mov	r0, r3
  379b40: b003         	add	sp, #0xc
  379b42: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getHostPeerID
//      file offset 0x379b48 (= ELF address; Ghidra 0x389b48), 28 bytes, Thumb-2
  379b48: b500         	push	{lr}
  379b4a: b083         	sub	sp, #0xc
  379b4c: 9001         	str	r0, [sp, #0x4]
  379b4e: 9100         	str	r1, [sp]
  379b50: 9b00         	ldr	r3, [sp]
  379b52: 33f4         	adds	r3, #0xf4
  379b54: 9801         	ldr	r0, [sp, #0x4]
  379b56: 4619         	mov	r1, r3
  379b58: f03c f4c6    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c98c
  379b5c: 9801         	ldr	r0, [sp, #0x4]
  379b5e: b003         	add	sp, #0xc
  379b60: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getPingTimeFor
//      file offset 0x379b64 (= ELF address; Ghidra 0x389b64), 72 bytes, Thumb-2
  379b64: b530         	push	{r4, r5, lr}
  379b66: b085         	sub	sp, #0x14
  379b68: 9001         	str	r0, [sp, #0x4]
  379b6a: 9100         	str	r1, [sp]
  379b6c: 9b01         	ldr	r3, [sp, #0x4]
  379b6e: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  379b72: ab03         	add	r3, sp, #0xc
  379b74: 4618         	mov	r0, r3
  379b76: 9900         	ldr	r1, [sp]
  379b78: f03c f4b6    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c96c
  379b7c: ab03         	add	r3, sp, #0xc
  379b7e: 4620         	mov	r0, r4
  379b80: 4619         	mov	r1, r3
  379b82: f00d fe4d    	bl	0x387820 <NetworkMessageDispatcher::getPingTimeFor(std::string)> @ imm = #0xdc9a
  379b86: 4604         	mov	r4, r0
  379b88: 460d         	mov	r5, r1
  379b8a: ab03         	add	r3, sp, #0xc
  379b8c: 4618         	mov	r0, r3
  379b8e: f03b f6c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bd82
  379b92: 4622         	mov	r2, r4
  379b94: 462b         	mov	r3, r5
  379b96: e005         	b	0x379ba4 <NetworkManager::getPingTimeFor(std::string)+0x40> @ imm = #0xa
  379b98: ab03         	add	r3, sp, #0xc
  379b9a: 4618         	mov	r0, r3
  379b9c: f03b f6ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bd74
  379ba0: f00e f284    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e508
  379ba4: 4610         	mov	r0, r2
  379ba6: 4619         	mov	r1, r3
  379ba8: b005         	add	sp, #0x14
  379baa: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::updateSession
//      file offset 0x379bac (= ELF address; Ghidra 0x389bac), 188 bytes, Thumb-2
  379bac: b510         	push	{r4, lr}
  379bae: b084         	sub	sp, #0x10
  379bb0: 9001         	str	r0, [sp, #0x4]
  379bb2: ab03         	add	r3, sp, #0xc
  379bb4: 4618         	mov	r0, r3
  379bb6: 9901         	ldr	r1, [sp, #0x4]
  379bb8: f000 f856    	bl	0x379c68 <NetworkManager::getSessionToJoin()> @ imm = #0xac
  379bbc: ab03         	add	r3, sp, #0xc
  379bbe: 4618         	mov	r0, r3
  379bc0: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x379c60 <NetworkManager::updateSession()+0xb4>
  379bc2: 447b         	add	r3, pc
  379bc4: 4619         	mov	r1, r3
  379bc6: f002 f995    	bl	0x37bef4 <bool std::operator!=<char, std::char_traits<char>, std::allocator<char>>(std::basic_string<char, std::char_traits<char>, std::allocator<char>> const&, char const*)> @ imm = #0x232a
  379bca: 4603         	mov	r3, r0
  379bcc: 461c         	mov	r4, r3
  379bce: ab03         	add	r3, sp, #0xc
  379bd0: 4618         	mov	r0, r3
  379bd2: f03b f69f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bd3e
  379bd6: 2c00         	cmp	r4, #0x0
  379bd8: d03f         	beq	0x379c5a <NetworkManager::updateSession()+0xae> @ imm = #0x7e
  379bda: ab03         	add	r3, sp, #0xc
  379bdc: 4618         	mov	r0, r3
  379bde: 9901         	ldr	r1, [sp, #0x4]
  379be0: f000 f842    	bl	0x379c68 <NetworkManager::getSessionToJoin()> @ imm = #0x84
  379be4: ab03         	add	r3, sp, #0xc
  379be6: 9801         	ldr	r0, [sp, #0x4]
  379be8: 4619         	mov	r1, r3
  379bea: f000 fa1d    	bl	0x37a028 <NetworkManager::joinSession(std::string)> @ imm = #0x43a
  379bee: ab03         	add	r3, sp, #0xc
  379bf0: 4618         	mov	r0, r3
  379bf2: f03b f68f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bd1e
  379bf6: ab02         	add	r3, sp, #0x8
  379bf8: 4618         	mov	r0, r3
  379bfa: f010 f3fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4107f6
  379bfe: aa03         	add	r2, sp, #0xc
  379c00: ab02         	add	r3, sp, #0x8
  379c02: 4610         	mov	r0, r2
  379c04: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x379c64 <NetworkManager::updateSession()+0xb8>
  379c06: 447a         	add	r2, pc
  379c08: 4611         	mov	r1, r2
  379c0a: 461a         	mov	r2, r3
  379c0c: f03c f728    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43ce50
  379c10: ab03         	add	r3, sp, #0xc
  379c12: 9801         	ldr	r0, [sp, #0x4]
  379c14: 4619         	mov	r1, r3
  379c16: f000 f837    	bl	0x379c88 <NetworkManager::setSessionToJoin(std::string)> @ imm = #0x6e
  379c1a: ab03         	add	r3, sp, #0xc
  379c1c: 4618         	mov	r0, r3
  379c1e: f03b f679    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bcf2
  379c22: ab02         	add	r3, sp, #0x8
  379c24: 4618         	mov	r0, r3
  379c26: f010 f3e9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4107d2
  379c2a: e016         	b	0x379c5a <NetworkManager::updateSession()+0xae> @ imm = #0x2c
  379c2c: ab03         	add	r3, sp, #0xc
  379c2e: 4618         	mov	r0, r3
  379c30: f03b f670    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bce0
  379c34: f00e f23a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e474
  379c38: ab03         	add	r3, sp, #0xc
  379c3a: 4618         	mov	r0, r3
  379c3c: f03b f66a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bcd4
  379c40: f00e f234    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e468
  379c44: ab03         	add	r3, sp, #0xc
  379c46: 4618         	mov	r0, r3
  379c48: f03b f664    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43bcc8
  379c4c: e7ff         	b	0x379c4e <NetworkManager::updateSession()+0xa2> @ imm = #-0x2
  379c4e: ab02         	add	r3, sp, #0x8
  379c50: 4618         	mov	r0, r3
  379c52: f010 f3d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4107a6
  379c56: f00e f229    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e452
  379c5a: b004         	add	sp, #0x10
  379c5c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x379c5d); words below are literal-pool data ---
  379c5e: bf00         	nop
  379c60: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x379d0c <NetworkManager::getMaxPlayers()+0x4>
  379c62: 0045         	lsls	r5, r0, #0x1
  379c64: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x37a000 <NetworkManager::cancelSearch()+0x14>
  379c66: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::getSessionToJoin
//      file offset 0x379c68 (= ELF address; Ghidra 0x389c68), 30 bytes, Thumb-2
  379c68: b500         	push	{lr}
  379c6a: b083         	sub	sp, #0xc
  379c6c: 9001         	str	r0, [sp, #0x4]
  379c6e: 9100         	str	r1, [sp]
  379c70: 9b00         	ldr	r3, [sp]
  379c72: f503 7394    	add.w	r3, r3, #0x128
  379c76: 9801         	ldr	r0, [sp, #0x4]
  379c78: 4619         	mov	r1, r3
  379c7a: f03c f435    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c86a
  379c7e: 9801         	ldr	r0, [sp, #0x4]
  379c80: b003         	add	sp, #0xc
  379c82: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::setSessionToJoin
//      file offset 0x379c88 (= ELF address; Ghidra 0x389c88), 28 bytes, Thumb-2
  379c88: b500         	push	{lr}
  379c8a: b083         	sub	sp, #0xc
  379c8c: 9001         	str	r0, [sp, #0x4]
  379c8e: 9100         	str	r1, [sp]
  379c90: 9b01         	ldr	r3, [sp, #0x4]
  379c92: f503 7394    	add.w	r3, r3, #0x128
  379c96: 4618         	mov	r0, r3
  379c98: 9900         	ldr	r1, [sp]
  379c9a: f03c f48b    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x43c916
  379c9e: b003         	add	sp, #0xc
  379ca0: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::endMatch
//      file offset 0x379ca4 (= ELF address; Ghidra 0x389ca4), 80 bytes, Thumb-2
  379ca4: b500         	push	{lr}
  379ca6: b083         	sub	sp, #0xc
  379ca8: 9001         	str	r0, [sp, #0x4]
  379caa: 9801         	ldr	r0, [sp, #0x4]
  379cac: f000 fd3a    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #0xa74
  379cb0: 4603         	mov	r3, r0
  379cb2: 2b00         	cmp	r3, #0x0
  379cb4: d005         	beq	0x379cc2 <NetworkManager::endMatch()+0x1e> @ imm = #0xa
  379cb6: 9b01         	ldr	r3, [sp, #0x4]
  379cb8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  379cbc: 4618         	mov	r0, r3
  379cbe: f048 fbd5    	bl	0x3c246c <RakNetDelegate::shutdown()> @ imm = #0x487aa
  379cc2: 9b01         	ldr	r3, [sp, #0x4]
  379cc4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379cc8: 2b00         	cmp	r3, #0x0
  379cca: d00a         	beq	0x379ce2 <NetworkManager::endMatch()+0x3e> @ imm = #0x14
  379ccc: 9b01         	ldr	r3, [sp, #0x4]
  379cce: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379cd2: 681b         	ldr	r3, [r3]
  379cd4: 334c         	adds	r3, #0x4c
  379cd6: 681b         	ldr	r3, [r3]
  379cd8: 9a01         	ldr	r2, [sp, #0x4]
  379cda: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379cde: 4610         	mov	r0, r2
  379ce0: 4798         	blx	r3
  379ce2: 9801         	ldr	r0, [sp, #0x4]
  379ce4: f7fe fc9a    	bl	0x37861c <NetworkManager::clearMessages()> @ imm = #-0x16cc
  379ce8: 9801         	ldr	r0, [sp, #0x4]
  379cea: f000 fbad    	bl	0x37a448 <NetworkManager::removeAllPlayers()> @ imm = #0x75a
  379cee: b003         	add	sp, #0xc
  379cf0: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::setMaxPlayers
//      file offset 0x379cf4 (= ELF address; Ghidra 0x389cf4), 18 bytes, Thumb-2
  379cf4: b082         	sub	sp, #0x8
  379cf6: 9001         	str	r0, [sp, #0x4]
  379cf8: 9100         	str	r1, [sp]
  379cfa: 9b01         	ldr	r3, [sp, #0x4]
  379cfc: 9a00         	ldr	r2, [sp]
  379cfe: f8c3 2120    	str.w	r2, [r3, #0x120]
  379d02: b002         	add	sp, #0x8
  379d04: 4770         	bx	lr

// ==== NetworkManager::getMaxPlayers
//      file offset 0x379d08 (= ELF address; Ghidra 0x389d08), 16 bytes, Thumb-2
  379d08: b082         	sub	sp, #0x8
  379d0a: 9001         	str	r0, [sp, #0x4]
  379d0c: 9b01         	ldr	r3, [sp, #0x4]
  379d0e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  379d12: 4618         	mov	r0, r3
  379d14: b002         	add	sp, #0x8
  379d16: 4770         	bx	lr

// ==== NetworkManager::getOnlinePlayers
//      file offset 0x379d18 (= ELF address; Ghidra 0x389d18), 66 bytes, Thumb-2
  379d18: b500         	push	{lr}
  379d1a: b083         	sub	sp, #0xc
  379d1c: 9001         	str	r0, [sp, #0x4]
  379d1e: 9b01         	ldr	r3, [sp, #0x4]
  379d20: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379d24: f083 0301    	eor	r3, r3, #0x1
  379d28: b2db         	uxtb	r3, r3
  379d2a: 2b00         	cmp	r3, #0x0
  379d2c: d00e         	beq	0x379d4c <NetworkManager::getOnlinePlayers()+0x34> @ imm = #0x1c
  379d2e: 9b01         	ldr	r3, [sp, #0x4]
  379d30: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379d34: 681b         	ldr	r3, [r3]
  379d36: 3324         	adds	r3, #0x24
  379d38: 681b         	ldr	r3, [r3]
  379d3a: 9a01         	ldr	r2, [sp, #0x4]
  379d3c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379d40: 4610         	mov	r0, r2
  379d42: 4798         	blx	r3
  379d44: 4602         	mov	r2, r0
  379d46: 9b01         	ldr	r3, [sp, #0x4]
  379d48: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  379d4c: 9b01         	ldr	r3, [sp, #0x4]
  379d4e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  379d52: 4618         	mov	r0, r3
  379d54: b003         	add	sp, #0xc
  379d56: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::setOnlineActivity
//      file offset 0x379d5c (= ELF address; Ghidra 0x389d5c), 18 bytes, Thumb-2
  379d5c: b082         	sub	sp, #0x8
  379d5e: 9001         	str	r0, [sp, #0x4]
  379d60: 9100         	str	r1, [sp]
  379d62: 9b01         	ldr	r3, [sp, #0x4]
  379d64: 9a00         	ldr	r2, [sp]
  379d66: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  379d6a: b002         	add	sp, #0x8
  379d6c: 4770         	bx	lr

// ==== NetworkManager::setInGame
//      file offset 0x379d70 (= ELF address; Ghidra 0x389d70), 24 bytes, Thumb-2
  379d70: b082         	sub	sp, #0x8
  379d72: 9001         	str	r0, [sp, #0x4]
  379d74: 460b         	mov	r3, r1
  379d76: f88d 3003    	strb.w	r3, [sp, #0x3]
  379d7a: 9b01         	ldr	r3, [sp, #0x4]
  379d7c: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  379d80: f883 211e    	strb.w	r2, [r3, #0x11e]
  379d84: b002         	add	sp, #0x8
  379d86: 4770         	bx	lr

// ==== NetworkManager::isInGame
//      file offset 0x379d88 (= ELF address; Ghidra 0x389d88), 16 bytes, Thumb-2
  379d88: b082         	sub	sp, #0x8
  379d8a: 9001         	str	r0, [sp, #0x4]
  379d8c: 9b01         	ldr	r3, [sp, #0x4]
  379d8e: f893 311e    	ldrb.w	r3, [r3, #0x11e]
  379d92: 4618         	mov	r0, r3
  379d94: b002         	add	sp, #0x8
  379d96: 4770         	bx	lr

// ==== NetworkManager::refreshPlayersList
//      file offset 0x379d98 (= ELF address; Ghidra 0x389d98), 60 bytes, Thumb-2
  379d98: b500         	push	{lr}
  379d9a: b083         	sub	sp, #0xc
  379d9c: 9001         	str	r0, [sp, #0x4]
  379d9e: 9b01         	ldr	r3, [sp, #0x4]
  379da0: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379da4: f083 0301    	eor	r3, r3, #0x1
  379da8: b2db         	uxtb	r3, r3
  379daa: 2b00         	cmp	r3, #0x0
  379dac: d00f         	beq	0x379dce <NetworkManager::refreshPlayersList()+0x36> @ imm = #0x1e
  379dae: 9b01         	ldr	r3, [sp, #0x4]
  379db0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379db4: 2b00         	cmp	r3, #0x0
  379db6: d00a         	beq	0x379dce <NetworkManager::refreshPlayersList()+0x36> @ imm = #0x14
  379db8: 9b01         	ldr	r3, [sp, #0x4]
  379dba: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379dbe: 681b         	ldr	r3, [r3]
  379dc0: 3328         	adds	r3, #0x28
  379dc2: 681b         	ldr	r3, [r3]
  379dc4: 9a01         	ldr	r2, [sp, #0x4]
  379dc6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379dca: 4610         	mov	r0, r2
  379dcc: 4798         	blx	r3
  379dce: b003         	add	sp, #0xc
  379dd0: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getLeaderPeerID
//      file offset 0x379dd4 (= ELF address; Ghidra 0x389dd4), 28 bytes, Thumb-2
  379dd4: b500         	push	{lr}
  379dd6: b083         	sub	sp, #0xc
  379dd8: 9001         	str	r0, [sp, #0x4]
  379dda: 9100         	str	r1, [sp]
  379ddc: 9b00         	ldr	r3, [sp]
  379dde: 33f8         	adds	r3, #0xf8
  379de0: 9801         	ldr	r0, [sp, #0x4]
  379de2: 4619         	mov	r1, r3
  379de4: f03c f380    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c700
  379de8: 9801         	ldr	r0, [sp, #0x4]
  379dea: b003         	add	sp, #0xc
  379dec: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::setHostPeerID
//      file offset 0x379df0 (= ELF address; Ghidra 0x389df0), 150 bytes, Thumb-2
  379df0: b510         	push	{r4, lr}
  379df2: b084         	sub	sp, #0x10
  379df4: 9001         	str	r0, [sp, #0x4]
  379df6: 9100         	str	r1, [sp]
  379df8: 9b01         	ldr	r3, [sp, #0x4]
  379dfa: 33f4         	adds	r3, #0xf4
  379dfc: 4618         	mov	r0, r3
  379dfe: 9900         	ldr	r1, [sp]
  379e00: f03c f3d8    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x43c7b0
  379e04: 9b01         	ldr	r3, [sp, #0x4]
  379e06: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  379e0a: 4618         	mov	r0, r3
  379e0c: f048 fd88    	bl	0x3c2920 <RakNetDelegate::isOnline()> @ imm = #0x48b10
  379e10: 4603         	mov	r3, r0
  379e12: 2b00         	cmp	r3, #0x0
  379e14: d035         	beq	0x379e82 <NetworkManager::setHostPeerID(std::string)+0x92> @ imm = #0x6a
  379e16: 9b01         	ldr	r3, [sp, #0x4]
  379e18: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  379e1c: 9b01         	ldr	r3, [sp, #0x4]
  379e1e: 33f4         	adds	r3, #0xf4
  379e20: 4618         	mov	r0, r3
  379e22: f03b f26d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43b4da
  379e26: 4603         	mov	r3, r0
  379e28: 4618         	mov	r0, r3
  379e2a: f75c e8fe    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xa3e04
  379e2e: 4603         	mov	r3, r0
  379e30: 4620         	mov	r0, r4
  379e32: 4619         	mov	r1, r3
  379e34: f045 fda8    	bl	0x3bf988 <RakNetDelegate::setHostPeerID(int)> @ imm = #0x45b50
  379e38: 9b01         	ldr	r3, [sp, #0x4]
  379e3a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  379e3e: 4618         	mov	r0, r3
  379e40: f219 ff14    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x219e28
  379e44: 4603         	mov	r3, r0
  379e46: 2b00         	cmp	r3, #0x0
  379e48: bf14         	ite	ne
  379e4a: 2300         	movne	r3, #0x0
  379e4c: 2301         	moveq	r3, #0x1
  379e4e: b2db         	uxtb	r3, r3
  379e50: 2b00         	cmp	r3, #0x0
  379e52: d016         	beq	0x379e82 <NetworkManager::setHostPeerID(std::string)+0x92> @ imm = #0x2c
  379e54: 9b01         	ldr	r3, [sp, #0x4]
  379e56: 33f4         	adds	r3, #0xf4
  379e58: aa03         	add	r2, sp, #0xc
  379e5a: 4610         	mov	r0, r2
  379e5c: 4619         	mov	r1, r3
  379e5e: f03c f343    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c686
  379e62: ab03         	add	r3, sp, #0xc
  379e64: 9801         	ldr	r0, [sp, #0x4]
  379e66: 4619         	mov	r1, r3
  379e68: f7fe fe42    	bl	0x378af0 <NetworkManager::setLeaderPeerID(std::string)> @ imm = #-0x137c
  379e6c: ab03         	add	r3, sp, #0xc
  379e6e: 4618         	mov	r0, r3
  379e70: f03b f550    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43baa0
  379e74: e005         	b	0x379e82 <NetworkManager::setHostPeerID(std::string)+0x92> @ imm = #0xa
  379e76: ab03         	add	r3, sp, #0xc
  379e78: 4618         	mov	r0, r3
  379e7a: f03b f54b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ba96
  379e7e: f00e f115    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e22a
  379e82: b004         	add	sp, #0x10
  379e84: bd10         	pop	{r4, pc}

// ==== NetworkManager::isHostLeader
//      file offset 0x379e88 (= ELF address; Ghidra 0x389e88), 72 bytes, Thumb-2
  379e88: b500         	push	{lr}
  379e8a: b083         	sub	sp, #0xc
  379e8c: 9001         	str	r0, [sp, #0x4]
  379e8e: 9b01         	ldr	r3, [sp, #0x4]
  379e90: 33f8         	adds	r3, #0xf8
  379e92: 4618         	mov	r0, r3
  379e94: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x379ecc <NetworkManager::isHostLeader()+0x44>
  379e96: 447b         	add	r3, pc
  379e98: 4619         	mov	r1, r3
  379e9a: f03b f443    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x43b886
  379e9e: 4603         	mov	r3, r0
  379ea0: 2b00         	cmp	r3, #0x0
  379ea2: d00b         	beq	0x379ebc <NetworkManager::isHostLeader()+0x34> @ imm = #0x16
  379ea4: 9b01         	ldr	r3, [sp, #0x4]
  379ea6: f103 02f8    	add.w	r2, r3, #0xf8
  379eaa: 9b01         	ldr	r3, [sp, #0x4]
  379eac: 33f4         	adds	r3, #0xf4
  379eae: 4610         	mov	r0, r2
  379eb0: 4619         	mov	r1, r3
  379eb2: f03b f3e3    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x43b7c6
  379eb6: 4603         	mov	r3, r0
  379eb8: 2b00         	cmp	r3, #0x0
  379eba: d101         	bne	0x379ec0 <NetworkManager::isHostLeader()+0x38> @ imm = #0x2
  379ebc: 2301         	movs	r3, #0x1
  379ebe: e000         	b	0x379ec2 <NetworkManager::isHostLeader()+0x3a> @ imm = #0x0
  379ec0: 2300         	movs	r3, #0x0
  379ec2: 4618         	mov	r0, r3
  379ec4: b003         	add	sp, #0xc
  379ec6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x379ec9); words below are literal-pool data ---
  379eca: bf00         	nop
  379ecc: 4856         	ldr	r0, [pc, #0x158]        @ 0x37a028 <NetworkManager::joinSession(std::string)>
  379ece: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::authenticateLocalPlayer
//      file offset 0x379ed0 (= ELF address; Ghidra 0x389ed0), 60 bytes, Thumb-2
  379ed0: b500         	push	{lr}
  379ed2: b083         	sub	sp, #0xc
  379ed4: 9001         	str	r0, [sp, #0x4]
  379ed6: 9b01         	ldr	r3, [sp, #0x4]
  379ed8: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379edc: f083 0301    	eor	r3, r3, #0x1
  379ee0: b2db         	uxtb	r3, r3
  379ee2: 2b00         	cmp	r3, #0x0
  379ee4: d00f         	beq	0x379f06 <NetworkManager::authenticateLocalPlayer()+0x36> @ imm = #0x1e
  379ee6: 9b01         	ldr	r3, [sp, #0x4]
  379ee8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379eec: 2b00         	cmp	r3, #0x0
  379eee: d00a         	beq	0x379f06 <NetworkManager::authenticateLocalPlayer()+0x36> @ imm = #0x14
  379ef0: 9b01         	ldr	r3, [sp, #0x4]
  379ef2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379ef6: 681b         	ldr	r3, [r3]
  379ef8: 3304         	adds	r3, #0x4
  379efa: 681b         	ldr	r3, [r3]
  379efc: 9a01         	ldr	r2, [sp, #0x4]
  379efe: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379f02: 4610         	mov	r0, r2
  379f04: 4798         	blx	r3
  379f06: b003         	add	sp, #0xc
  379f08: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::unauthenticateLocalPlayer
//      file offset 0x379f0c (= ELF address; Ghidra 0x389f0c), 60 bytes, Thumb-2
  379f0c: b500         	push	{lr}
  379f0e: b083         	sub	sp, #0xc
  379f10: 9001         	str	r0, [sp, #0x4]
  379f12: 9b01         	ldr	r3, [sp, #0x4]
  379f14: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379f18: f083 0301    	eor	r3, r3, #0x1
  379f1c: b2db         	uxtb	r3, r3
  379f1e: 2b00         	cmp	r3, #0x0
  379f20: d00f         	beq	0x379f42 <NetworkManager::unauthenticateLocalPlayer()+0x36> @ imm = #0x1e
  379f22: 9b01         	ldr	r3, [sp, #0x4]
  379f24: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379f28: 2b00         	cmp	r3, #0x0
  379f2a: d00a         	beq	0x379f42 <NetworkManager::unauthenticateLocalPlayer()+0x36> @ imm = #0x14
  379f2c: 9b01         	ldr	r3, [sp, #0x4]
  379f2e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379f32: 681b         	ldr	r3, [r3]
  379f34: 3308         	adds	r3, #0x8
  379f36: 681b         	ldr	r3, [r3]
  379f38: 9a01         	ldr	r2, [sp, #0x4]
  379f3a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379f3e: 4610         	mov	r0, r2
  379f40: 4798         	blx	r3
  379f42: b003         	add	sp, #0xc
  379f44: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::findSessions
//      file offset 0x379f48 (= ELF address; Ghidra 0x389f48), 60 bytes, Thumb-2
  379f48: b500         	push	{lr}
  379f4a: b083         	sub	sp, #0xc
  379f4c: 9001         	str	r0, [sp, #0x4]
  379f4e: 9b01         	ldr	r3, [sp, #0x4]
  379f50: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379f54: f083 0301    	eor	r3, r3, #0x1
  379f58: b2db         	uxtb	r3, r3
  379f5a: 2b00         	cmp	r3, #0x0
  379f5c: d00f         	beq	0x379f7e <NetworkManager::findSessions()+0x36> @ imm = #0x1e
  379f5e: 9b01         	ldr	r3, [sp, #0x4]
  379f60: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379f64: 2b00         	cmp	r3, #0x0
  379f66: d00a         	beq	0x379f7e <NetworkManager::findSessions()+0x36> @ imm = #0x14
  379f68: 9b01         	ldr	r3, [sp, #0x4]
  379f6a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379f6e: 681b         	ldr	r3, [r3]
  379f70: 3330         	adds	r3, #0x30
  379f72: 681b         	ldr	r3, [r3]
  379f74: 9a01         	ldr	r2, [sp, #0x4]
  379f76: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  379f7a: 4610         	mov	r0, r2
  379f7c: 4798         	blx	r3
  379f7e: b003         	add	sp, #0xc
  379f80: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::hostSession
//      file offset 0x379f84 (= ELF address; Ghidra 0x389f84), 104 bytes, Thumb-2
  379f84: b570         	push	{r4, r5, r6, lr}
  379f86: b084         	sub	sp, #0x10
  379f88: 9001         	str	r0, [sp, #0x4]
  379f8a: 9100         	str	r1, [sp]
  379f8c: 9b01         	ldr	r3, [sp, #0x4]
  379f8e: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379f92: f083 0301    	eor	r3, r3, #0x1
  379f96: b2db         	uxtb	r3, r3
  379f98: 2b00         	cmp	r3, #0x0
  379f9a: d025         	beq	0x379fe8 <NetworkManager::hostSession(std::string)+0x64> @ imm = #0x4a
  379f9c: 9b01         	ldr	r3, [sp, #0x4]
  379f9e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379fa2: 2b00         	cmp	r3, #0x0
  379fa4: d020         	beq	0x379fe8 <NetworkManager::hostSession(std::string)+0x64> @ imm = #0x40
  379fa6: 9b01         	ldr	r3, [sp, #0x4]
  379fa8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  379fac: 681b         	ldr	r3, [r3]
  379fae: 3334         	adds	r3, #0x34
  379fb0: 681c         	ldr	r4, [r3]
  379fb2: 9b01         	ldr	r3, [sp, #0x4]
  379fb4: f8d3 610c    	ldr.w	r6, [r3, #0x10c]
  379fb8: 9b01         	ldr	r3, [sp, #0x4]
  379fba: f8d3 5120    	ldr.w	r5, [r3, #0x120]
  379fbe: ab03         	add	r3, sp, #0xc
  379fc0: 4618         	mov	r0, r3
  379fc2: 9900         	ldr	r1, [sp]
  379fc4: f03c f290    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c520
  379fc8: ab03         	add	r3, sp, #0xc
  379fca: 4630         	mov	r0, r6
  379fcc: 4629         	mov	r1, r5
  379fce: 461a         	mov	r2, r3
  379fd0: 47a0         	blx	r4
  379fd2: ab03         	add	r3, sp, #0xc
  379fd4: 4618         	mov	r0, r3
  379fd6: f03b f49d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b93a
  379fda: e005         	b	0x379fe8 <NetworkManager::hostSession(std::string)+0x64> @ imm = #0xa
  379fdc: ab03         	add	r3, sp, #0xc
  379fde: 4618         	mov	r0, r3
  379fe0: f03b f498    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b930
  379fe4: f00e f062    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e0c4
  379fe8: b004         	add	sp, #0x10
  379fea: bd70         	pop	{r4, r5, r6, pc}

// ==== NetworkManager::cancelSearch
//      file offset 0x379fec (= ELF address; Ghidra 0x389fec), 60 bytes, Thumb-2
  379fec: b500         	push	{lr}
  379fee: b083         	sub	sp, #0xc
  379ff0: 9001         	str	r0, [sp, #0x4]
  379ff2: 9b01         	ldr	r3, [sp, #0x4]
  379ff4: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  379ff8: f083 0301    	eor	r3, r3, #0x1
  379ffc: b2db         	uxtb	r3, r3
  379ffe: 2b00         	cmp	r3, #0x0
  37a000: d00f         	beq	0x37a022 <NetworkManager::cancelSearch()+0x36> @ imm = #0x1e
  37a002: 9b01         	ldr	r3, [sp, #0x4]
  37a004: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a008: 2b00         	cmp	r3, #0x0
  37a00a: d00a         	beq	0x37a022 <NetworkManager::cancelSearch()+0x36> @ imm = #0x14
  37a00c: 9b01         	ldr	r3, [sp, #0x4]
  37a00e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a012: 681b         	ldr	r3, [r3]
  37a014: 3348         	adds	r3, #0x48
  37a016: 681b         	ldr	r3, [r3]
  37a018: 9a01         	ldr	r2, [sp, #0x4]
  37a01a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a01e: 4610         	mov	r0, r2
  37a020: 4798         	blx	r3
  37a022: b003         	add	sp, #0xc
  37a024: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::joinSession
//      file offset 0x37a028 (= ELF address; Ghidra 0x38a028), 70 bytes, Thumb-2
  37a028: b530         	push	{r4, r5, lr}
  37a02a: b085         	sub	sp, #0x14
  37a02c: 9001         	str	r0, [sp, #0x4]
  37a02e: 9100         	str	r1, [sp]
  37a030: 9b01         	ldr	r3, [sp, #0x4]
  37a032: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a036: 681b         	ldr	r3, [r3]
  37a038: 3338         	adds	r3, #0x38
  37a03a: 681c         	ldr	r4, [r3]
  37a03c: 9b01         	ldr	r3, [sp, #0x4]
  37a03e: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  37a042: ab03         	add	r3, sp, #0xc
  37a044: 4618         	mov	r0, r3
  37a046: 9900         	ldr	r1, [sp]
  37a048: f03c f24e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c49c
  37a04c: ab03         	add	r3, sp, #0xc
  37a04e: 4628         	mov	r0, r5
  37a050: 4619         	mov	r1, r3
  37a052: 47a0         	blx	r4
  37a054: ab03         	add	r3, sp, #0xc
  37a056: 4618         	mov	r0, r3
  37a058: f03b f45c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b8b8
  37a05c: e005         	b	0x37a06a <NetworkManager::joinSession(std::string)+0x42> @ imm = #0xa
  37a05e: ab03         	add	r3, sp, #0xc
  37a060: 4618         	mov	r0, r3
  37a062: f03b f457    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b8ae
  37a066: f00e f021    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40e042
  37a06a: b005         	add	sp, #0x14
  37a06c: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::addPlayersToMatch
//      file offset 0x37a070 (= ELF address; Ghidra 0x38a070), 82 bytes, Thumb-2
  37a070: b510         	push	{r4, lr}
  37a072: b084         	sub	sp, #0x10
  37a074: 9003         	str	r0, [sp, #0xc]
  37a076: 460b         	mov	r3, r1
  37a078: 9201         	str	r2, [sp, #0x4]
  37a07a: f88d 300b    	strb.w	r3, [sp, #0xb]
  37a07e: 9b03         	ldr	r3, [sp, #0xc]
  37a080: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a084: f083 0301    	eor	r3, r3, #0x1
  37a088: b2db         	uxtb	r3, r3
  37a08a: 2b00         	cmp	r3, #0x0
  37a08c: d017         	beq	0x37a0be <NetworkManager::addPlayersToMatch(bool, int)+0x4e> @ imm = #0x2e
  37a08e: 9b03         	ldr	r3, [sp, #0xc]
  37a090: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a094: 2b00         	cmp	r3, #0x0
  37a096: d012         	beq	0x37a0be <NetworkManager::addPlayersToMatch(bool, int)+0x4e> @ imm = #0x24
  37a098: 9b03         	ldr	r3, [sp, #0xc]
  37a09a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a09e: 681b         	ldr	r3, [r3]
  37a0a0: 333c         	adds	r3, #0x3c
  37a0a2: 681c         	ldr	r4, [r3]
  37a0a4: 9b03         	ldr	r3, [sp, #0xc]
  37a0a6: f8d3 110c    	ldr.w	r1, [r3, #0x10c]
  37a0aa: 9b03         	ldr	r3, [sp, #0xc]
  37a0ac: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  37a0b0: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  37a0b4: 4608         	mov	r0, r1
  37a0b6: 4611         	mov	r1, r2
  37a0b8: 461a         	mov	r2, r3
  37a0ba: 9b01         	ldr	r3, [sp, #0x4]
  37a0bc: 47a0         	blx	r4
  37a0be: b004         	add	sp, #0x10
  37a0c0: bd10         	pop	{r4, pc}

// ==== NetworkManager::isSearching
//      file offset 0x37a0c4 (= ELF address; Ghidra 0x38a0c4), 88 bytes, Thumb-2
  37a0c4: b500         	push	{lr}
  37a0c6: b083         	sub	sp, #0xc
  37a0c8: 9001         	str	r0, [sp, #0x4]
  37a0ca: 9b01         	ldr	r3, [sp, #0x4]
  37a0cc: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a0d0: f083 0301    	eor	r3, r3, #0x1
  37a0d4: b2db         	uxtb	r3, r3
  37a0d6: 2b00         	cmp	r3, #0x0
  37a0d8: d01b         	beq	0x37a112 <NetworkManager::isSearching()+0x4e> @ imm = #0x36
  37a0da: 9b01         	ldr	r3, [sp, #0x4]
  37a0dc: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a0e0: 2b00         	cmp	r3, #0x0
  37a0e2: d00f         	beq	0x37a104 <NetworkManager::isSearching()+0x40> @ imm = #0x1e
  37a0e4: 9b01         	ldr	r3, [sp, #0x4]
  37a0e6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a0ea: 681b         	ldr	r3, [r3]
  37a0ec: 3340         	adds	r3, #0x40
  37a0ee: 681b         	ldr	r3, [r3]
  37a0f0: 9a01         	ldr	r2, [sp, #0x4]
  37a0f2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a0f6: 4610         	mov	r0, r2
  37a0f8: 4798         	blx	r3
  37a0fa: 4603         	mov	r3, r0
  37a0fc: 2b00         	cmp	r3, #0x0
  37a0fe: d001         	beq	0x37a104 <NetworkManager::isSearching()+0x40> @ imm = #0x2
  37a100: 2301         	movs	r3, #0x1
  37a102: e000         	b	0x37a106 <NetworkManager::isSearching()+0x42> @ imm = #0x0
  37a104: 2300         	movs	r3, #0x0
  37a106: 2b00         	cmp	r3, #0x0
  37a108: d001         	beq	0x37a10e <NetworkManager::isSearching()+0x4a> @ imm = #0x2
  37a10a: 2301         	movs	r3, #0x1
  37a10c: e002         	b	0x37a114 <NetworkManager::isSearching()+0x50> @ imm = #0x4
  37a10e: 2300         	movs	r3, #0x0
  37a110: e000         	b	0x37a114 <NetworkManager::isSearching()+0x50> @ imm = #0x0
  37a112: 2300         	movs	r3, #0x0
  37a114: 4618         	mov	r0, r3
  37a116: b003         	add	sp, #0xc
  37a118: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::canSearch
//      file offset 0x37a11c (= ELF address; Ghidra 0x38a11c), 88 bytes, Thumb-2
  37a11c: b500         	push	{lr}
  37a11e: b083         	sub	sp, #0xc
  37a120: 9001         	str	r0, [sp, #0x4]
  37a122: 9b01         	ldr	r3, [sp, #0x4]
  37a124: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a128: f083 0301    	eor	r3, r3, #0x1
  37a12c: b2db         	uxtb	r3, r3
  37a12e: 2b00         	cmp	r3, #0x0
  37a130: d01b         	beq	0x37a16a <NetworkManager::canSearch()+0x4e> @ imm = #0x36
  37a132: 9b01         	ldr	r3, [sp, #0x4]
  37a134: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a138: 2b00         	cmp	r3, #0x0
  37a13a: d00f         	beq	0x37a15c <NetworkManager::canSearch()+0x40> @ imm = #0x1e
  37a13c: 9b01         	ldr	r3, [sp, #0x4]
  37a13e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a142: 681b         	ldr	r3, [r3]
  37a144: 3344         	adds	r3, #0x44
  37a146: 681b         	ldr	r3, [r3]
  37a148: 9a01         	ldr	r2, [sp, #0x4]
  37a14a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a14e: 4610         	mov	r0, r2
  37a150: 4798         	blx	r3
  37a152: 4603         	mov	r3, r0
  37a154: 2b00         	cmp	r3, #0x0
  37a156: d001         	beq	0x37a15c <NetworkManager::canSearch()+0x40> @ imm = #0x2
  37a158: 2301         	movs	r3, #0x1
  37a15a: e000         	b	0x37a15e <NetworkManager::canSearch()+0x42> @ imm = #0x0
  37a15c: 2300         	movs	r3, #0x0
  37a15e: 2b00         	cmp	r3, #0x0
  37a160: d001         	beq	0x37a166 <NetworkManager::canSearch()+0x4a> @ imm = #0x2
  37a162: 2301         	movs	r3, #0x1
  37a164: e002         	b	0x37a16c <NetworkManager::canSearch()+0x50> @ imm = #0x4
  37a166: 2300         	movs	r3, #0x0
  37a168: e000         	b	0x37a16c <NetworkManager::canSearch()+0x50> @ imm = #0x0
  37a16a: 2300         	movs	r3, #0x0
  37a16c: 4618         	mov	r0, r3
  37a16e: b003         	add	sp, #0xc
  37a170: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::addSession
//      file offset 0x37a174 (= ELF address; Ghidra 0x38a174), 244 bytes, Thumb-2
  37a174: b530         	push	{r4, r5, lr}
  37a176: b087         	sub	sp, #0x1c
  37a178: 9001         	str	r0, [sp, #0x4]
  37a17a: 9100         	str	r1, [sp]
  37a17c: 4c38         	ldr	r4, [pc, #0xe0]         @ 0x37a260 <NetworkManager::addSession(cocos2d::CCArray*)+0xec>
  37a17e: 447c         	add	r4, pc
  37a180: 9800         	ldr	r0, [sp]
  37a182: 2100         	movs	r1, #0x0
  37a184: f21f ffcc    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21ff98
  37a188: 4603         	mov	r3, r0
  37a18a: 4618         	mov	r0, r3
  37a18c: f21f fbcc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21f798
  37a190: 4605         	mov	r5, r0
  37a192: ab05         	add	r3, sp, #0x14
  37a194: 4618         	mov	r0, r3
  37a196: f010 f12d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41025a
  37a19a: aa04         	add	r2, sp, #0x10
  37a19c: ab05         	add	r3, sp, #0x14
  37a19e: 4610         	mov	r0, r2
  37a1a0: 4629         	mov	r1, r5
  37a1a2: 461a         	mov	r2, r3
  37a1a4: f03c f45c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43c8b8
  37a1a8: ab05         	add	r3, sp, #0x14
  37a1aa: 4618         	mov	r0, r3
  37a1ac: f010 f126    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41024c
  37a1b0: 9800         	ldr	r0, [sp]
  37a1b2: 2101         	movs	r1, #0x1
  37a1b4: f21f ffb4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21ff68
  37a1b8: 4603         	mov	r3, r0
  37a1ba: 4618         	mov	r0, r3
  37a1bc: f21f fbb4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21f768
  37a1c0: 4605         	mov	r5, r0
  37a1c2: ab03         	add	r3, sp, #0xc
  37a1c4: 4618         	mov	r0, r3
  37a1c6: f010 f115    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41022a
  37a1ca: aa05         	add	r2, sp, #0x14
  37a1cc: ab03         	add	r3, sp, #0xc
  37a1ce: 4610         	mov	r0, r2
  37a1d0: 4629         	mov	r1, r5
  37a1d2: 461a         	mov	r2, r3
  37a1d4: f03c f444    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43c888
  37a1d8: ab03         	add	r3, sp, #0xc
  37a1da: 4618         	mov	r0, r3
  37a1dc: f010 f10e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41021c
  37a1e0: 4b20         	ldr	r3, [pc, #0x80]         @ 0x37a264 <NetworkManager::addSession(cocos2d::CCArray*)+0xf0>
  37a1e2: 58e3         	ldr	r3, [r4, r3]
  37a1e4: 681a         	ldr	r2, [r3]
  37a1e6: ab04         	add	r3, sp, #0x10
  37a1e8: 4610         	mov	r0, r2
  37a1ea: 4619         	mov	r1, r3
  37a1ec: f219 fe80    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x219d00
  37a1f0: 4603         	mov	r3, r0
  37a1f2: 2b00         	cmp	r3, #0x0
  37a1f4: bf14         	ite	ne
  37a1f6: 2300         	movne	r3, #0x0
  37a1f8: 2301         	moveq	r3, #0x1
  37a1fa: b2db         	uxtb	r3, r3
  37a1fc: 2b00         	cmp	r3, #0x0
  37a1fe: d00d         	beq	0x37a21c <NetworkManager::addSession(cocos2d::CCArray*)+0xa8> @ imm = #0x1a
  37a200: 4b18         	ldr	r3, [pc, #0x60]         @ 0x37a264 <NetworkManager::addSession(cocos2d::CCArray*)+0xf0>
  37a202: 58e3         	ldr	r3, [r4, r3]
  37a204: 681c         	ldr	r4, [r3]
  37a206: ab05         	add	r3, sp, #0x14
  37a208: 4618         	mov	r0, r3
  37a20a: f21f fc17    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x21f82e
  37a20e: 4602         	mov	r2, r0
  37a210: ab04         	add	r3, sp, #0x10
  37a212: 4620         	mov	r0, r4
  37a214: 4611         	mov	r1, r2
  37a216: 461a         	mov	r2, r3
  37a218: f21a fb8e    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x21a71c
  37a21c: ab05         	add	r3, sp, #0x14
  37a21e: 4618         	mov	r0, r3
  37a220: f03b f378    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b6f0
  37a224: ab04         	add	r3, sp, #0x10
  37a226: 4618         	mov	r0, r3
  37a228: f03b f374    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b6e8
  37a22c: e015         	b	0x37a25a <NetworkManager::addSession(cocos2d::CCArray*)+0xe6> @ imm = #0x2a
  37a22e: ab05         	add	r3, sp, #0x14
  37a230: 4618         	mov	r0, r3
  37a232: f010 f0e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4101c6
  37a236: f00d f739    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40de72
  37a23a: ab03         	add	r3, sp, #0xc
  37a23c: 4618         	mov	r0, r3
  37a23e: f010 f0dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4101ba
  37a242: e004         	b	0x37a24e <NetworkManager::addSession(cocos2d::CCArray*)+0xda> @ imm = #0x8
  37a244: ab05         	add	r3, sp, #0x14
  37a246: 4618         	mov	r0, r3
  37a248: f03b f364    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b6c8
  37a24c: e7ff         	b	0x37a24e <NetworkManager::addSession(cocos2d::CCArray*)+0xda> @ imm = #-0x2
  37a24e: ab04         	add	r3, sp, #0x10
  37a250: 4618         	mov	r0, r3
  37a252: f03b f35f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b6be
  37a256: f00d f729    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40de52
  37a25a: b007         	add	sp, #0x1c
  37a25c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x37a25d); words below are literal-pool data ---
  37a25e: bf00         	nop
  37a260: 888a         	ldrh	r2, [r1, #0x4]
  37a262: 005b         	lsls	r3, r3, #0x1
  37a264: dc90         	bgt	0x37a188 <NetworkManager::addSession(cocos2d::CCArray*)+0x14> @ imm = #-0xe0
  37a266: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== NetworkManager::removeSession
//      file offset 0x37a268 (= ELF address; Ghidra 0x38a268), 112 bytes, Thumb-2
  37a268: b530         	push	{r4, r5, lr}
  37a26a: b085         	sub	sp, #0x14
  37a26c: 9001         	str	r0, [sp, #0x4]
  37a26e: 9100         	str	r1, [sp]
  37a270: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x37a2d0 <NetworkManager::removeSession(cocos2d::CCString*)+0x68>
  37a272: 447a         	add	r2, pc
  37a274: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x37a2d4 <NetworkManager::removeSession(cocos2d::CCString*)+0x6c>
  37a276: 58d3         	ldr	r3, [r2, r3]
  37a278: 681c         	ldr	r4, [r3]
  37a27a: 9800         	ldr	r0, [sp]
  37a27c: f21f fb54    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21f6a8
  37a280: 4605         	mov	r5, r0
  37a282: ab02         	add	r3, sp, #0x8
  37a284: 4618         	mov	r0, r3
  37a286: f010 f0b5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41016a
  37a28a: aa03         	add	r2, sp, #0xc
  37a28c: ab02         	add	r3, sp, #0x8
  37a28e: 4610         	mov	r0, r2
  37a290: 4629         	mov	r1, r5
  37a292: 461a         	mov	r2, r3
  37a294: f03c f3e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43c7c8
  37a298: ab03         	add	r3, sp, #0xc
  37a29a: 4620         	mov	r0, r4
  37a29c: 4619         	mov	r1, r3
  37a29e: f21b f80b    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x21b016
  37a2a2: ab03         	add	r3, sp, #0xc
  37a2a4: 4618         	mov	r0, r3
  37a2a6: f03b f335    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b66a
  37a2aa: ab02         	add	r3, sp, #0x8
  37a2ac: 4618         	mov	r0, r3
  37a2ae: f010 f0a5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41014a
  37a2b2: e00a         	b	0x37a2ca <NetworkManager::removeSession(cocos2d::CCString*)+0x62> @ imm = #0x14
  37a2b4: ab03         	add	r3, sp, #0xc
  37a2b6: 4618         	mov	r0, r3
  37a2b8: f03b f32c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b658
  37a2bc: e7ff         	b	0x37a2be <NetworkManager::removeSession(cocos2d::CCString*)+0x56> @ imm = #-0x2
  37a2be: ab02         	add	r3, sp, #0x8
  37a2c0: 4618         	mov	r0, r3
  37a2c2: f010 f09b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x410136
  37a2c6: f00d f6f1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40dde2
  37a2ca: b005         	add	sp, #0x14
  37a2cc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x37a2cd); words below are literal-pool data ---
  37a2ce: bf00         	nop
  37a2d0: 8796         	strh	r6, [r2, #0x3c]
  37a2d2: 005b         	lsls	r3, r3, #0x1
  37a2d4: dc90         	bgt	0x37a1f8 <NetworkManager::addSession(cocos2d::CCArray*)+0x84> @ imm = #-0xe0
  37a2d6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== NetworkManager::removeAllSessions
//      file offset 0x37a2d8 (= ELF address; Ghidra 0x38a2d8), 64 bytes, Thumb-2
  37a2d8: b510         	push	{r4, lr}
  37a2da: b082         	sub	sp, #0x8
  37a2dc: 9001         	str	r0, [sp, #0x4]
  37a2de: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x37a310 <NetworkManager::removeAllSessions()+0x38>
  37a2e0: 447c         	add	r4, pc
  37a2e2: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x37a314 <NetworkManager::removeAllSessions()+0x3c>
  37a2e4: 58e3         	ldr	r3, [r4, r3]
  37a2e6: 681b         	ldr	r3, [r3]
  37a2e8: 4618         	mov	r0, r3
  37a2ea: f219 fcbf    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x21997e
  37a2ee: 4603         	mov	r3, r0
  37a2f0: 2b00         	cmp	r3, #0x0
  37a2f2: bf0c         	ite	eq
  37a2f4: 2300         	moveq	r3, #0x0
  37a2f6: 2301         	movne	r3, #0x1
  37a2f8: b2db         	uxtb	r3, r3
  37a2fa: 2b00         	cmp	r3, #0x0
  37a2fc: d005         	beq	0x37a30a <NetworkManager::removeAllSessions()+0x32> @ imm = #0xa
  37a2fe: 4b05         	ldr	r3, [pc, #0x14]         @ 0x37a314 <NetworkManager::removeAllSessions()+0x3c>
  37a300: 58e3         	ldr	r3, [r4, r3]
  37a302: 681b         	ldr	r3, [r3]
  37a304: 4618         	mov	r0, r3
  37a306: f21c fe5f    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x21ccbe
  37a30a: b002         	add	sp, #0x8
  37a30c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x37a30d); words below are literal-pool data ---
  37a30e: bf00         	nop
  37a310: 8728         	strh	r0, [r5, #0x38]
  37a312: 005b         	lsls	r3, r3, #0x1
  37a314: dc90         	bgt	0x37a238 <NetworkManager::addSession(cocos2d::CCArray*)+0xc4> @ imm = #-0xe0
  37a316: ffff b082    	<unknown>

// ==== NetworkManager::getAvailableSessions
//      file offset 0x37a318 (= ELF address; Ghidra 0x38a318), 28 bytes, Thumb-2
  37a318: b082         	sub	sp, #0x8
  37a31a: 9001         	str	r0, [sp, #0x4]
  37a31c: 4a03         	ldr	r2, [pc, #0xc]          @ 0x37a32c <NetworkManager::getAvailableSessions()+0x14>
  37a31e: 447a         	add	r2, pc
  37a320: 4b03         	ldr	r3, [pc, #0xc]          @ 0x37a330 <NetworkManager::getAvailableSessions()+0x18>
  37a322: 58d3         	ldr	r3, [r2, r3]
  37a324: 681b         	ldr	r3, [r3]
  37a326: 4618         	mov	r0, r3
  37a328: b002         	add	sp, #0x8
  37a32a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x37a32b); words below are literal-pool data ---
  37a32c: 86ea         	strh	r2, [r5, #0x36]
  37a32e: 005b         	lsls	r3, r3, #0x1
  37a330: dc90         	bgt	0x37a254 <NetworkManager::addSession(cocos2d::CCArray*)+0xe0> @ imm = #-0xe0
  37a332: ffff b500    	<unknown>

// ==== NetworkManager::addPlayer
//      file offset 0x37a334 (= ELF address; Ghidra 0x38a334), 178 bytes, Thumb-2
  37a334: b500         	push	{lr}
  37a336: b087         	sub	sp, #0x1c
  37a338: 9003         	str	r0, [sp, #0xc]
  37a33a: 9102         	str	r1, [sp, #0x8]
  37a33c: 9201         	str	r2, [sp, #0x4]
  37a33e: 9b03         	ldr	r3, [sp, #0xc]
  37a340: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a344: f083 0301    	eor	r3, r3, #0x1
  37a348: b2db         	uxtb	r3, r3
  37a34a: 2b00         	cmp	r3, #0x0
  37a34c: d02d         	beq	0x37a3aa <NetworkManager::addPlayer(std::string, std::string)+0x76> @ imm = #0x5a
  37a34e: 9b03         	ldr	r3, [sp, #0xc]
  37a350: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a354: 2b00         	cmp	r3, #0x0
  37a356: d00f         	beq	0x37a378 <NetworkManager::addPlayer(std::string, std::string)+0x44> @ imm = #0x1e
  37a358: 9b03         	ldr	r3, [sp, #0xc]
  37a35a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a35e: 681b         	ldr	r3, [r3]
  37a360: 330c         	adds	r3, #0xc
  37a362: 681b         	ldr	r3, [r3]
  37a364: 9a03         	ldr	r2, [sp, #0xc]
  37a366: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a36a: 4610         	mov	r0, r2
  37a36c: 4798         	blx	r3
  37a36e: 4603         	mov	r3, r0
  37a370: 2b00         	cmp	r3, #0x0
  37a372: d001         	beq	0x37a378 <NetworkManager::addPlayer(std::string, std::string)+0x44> @ imm = #0x2
  37a374: 2301         	movs	r3, #0x1
  37a376: e000         	b	0x37a37a <NetworkManager::addPlayer(std::string, std::string)+0x46> @ imm = #0x0
  37a378: 2300         	movs	r3, #0x0
  37a37a: 2b00         	cmp	r3, #0x0
  37a37c: d015         	beq	0x37a3aa <NetworkManager::addPlayer(std::string, std::string)+0x76> @ imm = #0x2a
  37a37e: 9b03         	ldr	r3, [sp, #0xc]
  37a380: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a384: 681b         	ldr	r3, [r3]
  37a386: 3310         	adds	r3, #0x10
  37a388: 681b         	ldr	r3, [r3]
  37a38a: 9a03         	ldr	r2, [sp, #0xc]
  37a38c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a390: a905         	add	r1, sp, #0x14
  37a392: 4608         	mov	r0, r1
  37a394: 4611         	mov	r1, r2
  37a396: 4798         	blx	r3
  37a398: ab05         	add	r3, sp, #0x14
  37a39a: 9803         	ldr	r0, [sp, #0xc]
  37a39c: 4619         	mov	r1, r3
  37a39e: f7ff fd27    	bl	0x379df0 <NetworkManager::setHostPeerID(std::string)> @ imm = #-0x5b2
  37a3a2: ab05         	add	r3, sp, #0x14
  37a3a4: 4618         	mov	r0, r3
  37a3a6: f03b f2b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b56a
  37a3aa: ab05         	add	r3, sp, #0x14
  37a3ac: 4618         	mov	r0, r3
  37a3ae: 9902         	ldr	r1, [sp, #0x8]
  37a3b0: f03c f09a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c134
  37a3b4: ab05         	add	r3, sp, #0x14
  37a3b6: 9803         	ldr	r0, [sp, #0xc]
  37a3b8: 4619         	mov	r1, r3
  37a3ba: f7fe f985    	bl	0x3786c8 <NetworkManager::addNewPeerID(std::string)> @ imm = #-0x1cf6
  37a3be: ab05         	add	r3, sp, #0x14
  37a3c0: 4618         	mov	r0, r3
  37a3c2: f03b f2a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b54e
  37a3c6: e00b         	b	0x37a3e0 <NetworkManager::addPlayer(std::string, std::string)+0xac> @ imm = #0x16
  37a3c8: ab05         	add	r3, sp, #0x14
  37a3ca: 4618         	mov	r0, r3
  37a3cc: f03b f2a2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b544
  37a3d0: f00d f66c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40dcd8
  37a3d4: ab05         	add	r3, sp, #0x14
  37a3d6: 4618         	mov	r0, r3
  37a3d8: f03b f29c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b538
  37a3dc: f00d f666    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40dccc
  37a3e0: b007         	add	sp, #0x1c
  37a3e2: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::removePlayer
//      file offset 0x37a3e8 (= ELF address; Ghidra 0x38a3e8), 94 bytes, Thumb-2
  37a3e8: b510         	push	{r4, lr}
  37a3ea: b084         	sub	sp, #0x10
  37a3ec: 9001         	str	r0, [sp, #0x4]
  37a3ee: 9100         	str	r1, [sp]
  37a3f0: 9b01         	ldr	r3, [sp, #0x4]
  37a3f2: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a3f6: 2b00         	cmp	r3, #0x0
  37a3f8: d00e         	beq	0x37a418 <NetworkManager::removePlayer(std::string)+0x30> @ imm = #0x1c
  37a3fa: 9b01         	ldr	r3, [sp, #0x4]
  37a3fc: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  37a400: 9800         	ldr	r0, [sp]
  37a402: f03a f77d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43aefa
  37a406: 4603         	mov	r3, r0
  37a408: 4618         	mov	r0, r3
  37a40a: f75b ee0e    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xa43e4
  37a40e: 4603         	mov	r3, r0
  37a410: 4620         	mov	r0, r4
  37a412: 4619         	mov	r1, r3
  37a414: f046 fbf6    	bl	0x3c0c04 <RakNetDelegate::removePeer(int)> @ imm = #0x467ec
  37a418: ab03         	add	r3, sp, #0xc
  37a41a: 4618         	mov	r0, r3
  37a41c: 9900         	ldr	r1, [sp]
  37a41e: f03c f063    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43c0c6
  37a422: ab03         	add	r3, sp, #0xc
  37a424: 9801         	ldr	r0, [sp, #0x4]
  37a426: 4619         	mov	r1, r3
  37a428: f7fe fa1c    	bl	0x378864 <NetworkManager::removePeerID(std::string)> @ imm = #-0x1bc8
  37a42c: ab03         	add	r3, sp, #0xc
  37a42e: 4618         	mov	r0, r3
  37a430: f03b f270    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b4e0
  37a434: e005         	b	0x37a442 <NetworkManager::removePlayer(std::string)+0x5a> @ imm = #0xa
  37a436: ab03         	add	r3, sp, #0xc
  37a438: 4618         	mov	r0, r3
  37a43a: f03b f26b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b4d6
  37a43e: f00d f635    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40dc6a
  37a442: b004         	add	sp, #0x10
  37a444: bd10         	pop	{r4, pc}

// ==== NetworkManager::removeAllPlayers
//      file offset 0x37a448 (= ELF address; Ghidra 0x38a448), 52 bytes, Thumb-2
  37a448: b500         	push	{lr}
  37a44a: b083         	sub	sp, #0xc
  37a44c: 9001         	str	r0, [sp, #0x4]
  37a44e: 9b01         	ldr	r3, [sp, #0x4]
  37a450: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  37a454: 4618         	mov	r0, r3
  37a456: f219 fc09    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x219812
  37a45a: 4603         	mov	r3, r0
  37a45c: 2b00         	cmp	r3, #0x0
  37a45e: bf0c         	ite	eq
  37a460: 2300         	moveq	r3, #0x0
  37a462: 2301         	movne	r3, #0x1
  37a464: b2db         	uxtb	r3, r3
  37a466: 2b00         	cmp	r3, #0x0
  37a468: d005         	beq	0x37a476 <NetworkManager::removeAllPlayers()+0x2e> @ imm = #0xa
  37a46a: 9b01         	ldr	r3, [sp, #0x4]
  37a46c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  37a470: 4618         	mov	r0, r3
  37a472: f21c fda9    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x21cb52
  37a476: b003         	add	sp, #0xc
  37a478: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::getPlayerTimeout
//      file offset 0x37a47c (= ELF address; Ghidra 0x38a47c), 48 bytes, Thumb-2
  37a47c: b500         	push	{lr}
  37a47e: b083         	sub	sp, #0xc
  37a480: 9001         	str	r0, [sp, #0x4]
  37a482: 9b01         	ldr	r3, [sp, #0x4]
  37a484: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a488: 681b         	ldr	r3, [r3]
  37a48a: 332c         	adds	r3, #0x2c
  37a48c: 681b         	ldr	r3, [r3]
  37a48e: 9a01         	ldr	r2, [sp, #0x4]
  37a490: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a494: 4610         	mov	r0, r2
  37a496: 4798         	blx	r3
  37a498: ee07 0a90    	vmov	s15, r0
  37a49c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  37a4a0: ee17 3a90    	vmov	r3, s15
  37a4a4: 4618         	mov	r0, r3
  37a4a6: b003         	add	sp, #0xc
  37a4a8: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::connectToServer
//      file offset 0x37a4ac (= ELF address; Ghidra 0x38a4ac), 36 bytes, Thumb-2
  37a4ac: b500         	push	{lr}
  37a4ae: b083         	sub	sp, #0xc
  37a4b0: 9001         	str	r0, [sp, #0x4]
  37a4b2: 460b         	mov	r3, r1
  37a4b4: f88d 3003    	strb.w	r3, [sp, #0x3]
  37a4b8: 9b01         	ldr	r3, [sp, #0x4]
  37a4ba: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  37a4be: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  37a4c2: 4610         	mov	r0, r2
  37a4c4: 4619         	mov	r1, r3
  37a4c6: f046 fa19    	bl	0x3c08fc <RakNetDelegate::connectToServer(bool)> @ imm = #0x46432
  37a4ca: b003         	add	sp, #0xc
  37a4cc: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::requestNumPlayers
//      file offset 0x37a4d0 (= ELF address; Ghidra 0x38a4d0), 34 bytes, Thumb-2
  37a4d0: b500         	push	{lr}
  37a4d2: b083         	sub	sp, #0xc
  37a4d4: 9001         	str	r0, [sp, #0x4]
  37a4d6: 9b01         	ldr	r3, [sp, #0x4]
  37a4d8: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a4dc: 2b00         	cmp	r3, #0x0
  37a4de: d005         	beq	0x37a4ec <NetworkManager::requestNumPlayers()+0x1c> @ imm = #0xa
  37a4e0: 9b01         	ldr	r3, [sp, #0x4]
  37a4e2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37a4e6: 4618         	mov	r0, r3
  37a4e8: f047 ffae    	bl	0x3c2448 <RakNetDelegate::sendRequestNumPlayers()> @ imm = #0x47f5c
  37a4ec: b003         	add	sp, #0xc
  37a4ee: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::rak_detectNATType
//      file offset 0x37a4f4 (= ELF address; Ghidra 0x38a4f4), 24 bytes, Thumb-2
  37a4f4: b500         	push	{lr}
  37a4f6: b083         	sub	sp, #0xc
  37a4f8: 9001         	str	r0, [sp, #0x4]
  37a4fa: 9b01         	ldr	r3, [sp, #0x4]
  37a4fc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37a500: 4618         	mov	r0, r3
  37a502: f046 fbe1    	bl	0x3c0cc8 <RakNetDelegate::detectNATType()> @ imm = #0x467c2
  37a506: b003         	add	sp, #0xc
  37a508: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::isConnected
//      file offset 0x37a50c (= ELF address; Ghidra 0x38a50c), 64 bytes, Thumb-2
  37a50c: b500         	push	{lr}
  37a50e: b083         	sub	sp, #0xc
  37a510: 9001         	str	r0, [sp, #0x4]
  37a512: 9b01         	ldr	r3, [sp, #0x4]
  37a514: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a518: 2b00         	cmp	r3, #0x0
  37a51a: d007         	beq	0x37a52c <NetworkManager::isConnected()+0x20> @ imm = #0xe
  37a51c: 9b01         	ldr	r3, [sp, #0x4]
  37a51e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37a522: 4618         	mov	r0, r3
  37a524: f048 f9fc    	bl	0x3c2920 <RakNetDelegate::isOnline()> @ imm = #0x483f8
  37a528: 4603         	mov	r3, r0
  37a52a: e00b         	b	0x37a544 <NetworkManager::isConnected()+0x38> @ imm = #0x16
  37a52c: 9b01         	ldr	r3, [sp, #0x4]
  37a52e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37a532: 681b         	ldr	r3, [r3]
  37a534: 3314         	adds	r3, #0x14
  37a536: 681b         	ldr	r3, [r3]
  37a538: 9a01         	ldr	r2, [sp, #0x4]
  37a53a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  37a53e: 4610         	mov	r0, r2
  37a540: 4798         	blx	r3
  37a542: 4603         	mov	r3, r0
  37a544: 4618         	mov	r0, r3
  37a546: b003         	add	sp, #0xc
  37a548: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::connectToPeer
//      file offset 0x37a54c (= ELF address; Ghidra 0x38a54c), 56 bytes, Thumb-2
  37a54c: b530         	push	{r4, r5, lr}
  37a54e: b087         	sub	sp, #0x1c
  37a550: 9005         	str	r0, [sp, #0x14]
  37a552: 9104         	str	r1, [sp, #0x10]
  37a554: 9203         	str	r2, [sp, #0xc]
  37a556: 9302         	str	r3, [sp, #0x8]
  37a558: 9b05         	ldr	r3, [sp, #0x14]
  37a55a: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  37a55e: 9804         	ldr	r0, [sp, #0x10]
  37a560: f03a f6ce    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43ad9c
  37a564: 4604         	mov	r4, r0
  37a566: 9803         	ldr	r0, [sp, #0xc]
  37a568: f03a f6ca    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43ad94
  37a56c: 4603         	mov	r3, r0
  37a56e: f89d 2028    	ldrb.w	r2, [sp, #0x28]
  37a572: 9200         	str	r2, [sp]
  37a574: 4628         	mov	r0, r5
  37a576: 4621         	mov	r1, r4
  37a578: 461a         	mov	r2, r3
  37a57a: 9b02         	ldr	r3, [sp, #0x8]
  37a57c: f046 fad8    	bl	0x3c0b30 <RakNetDelegate::connectToPeer(char*, char*, int, bool)> @ imm = #0x465b0
  37a580: b007         	add	sp, #0x1c
  37a582: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::updateLeader
//      file offset 0x37a584 (= ELF address; Ghidra 0x38a584), 54 bytes, Thumb-2
  37a584: b500         	push	{lr}
  37a586: b085         	sub	sp, #0x14
  37a588: 9001         	str	r0, [sp, #0x4]
  37a58a: ab03         	add	r3, sp, #0xc
  37a58c: 4618         	mov	r0, r3
  37a58e: 9901         	ldr	r1, [sp, #0x4]
  37a590: f7fe fa0a    	bl	0x3789a8 <NetworkManager::getSmallestPeerID()> @ imm = #-0x1bec
  37a594: ab03         	add	r3, sp, #0xc
  37a596: 9801         	ldr	r0, [sp, #0x4]
  37a598: 4619         	mov	r1, r3
  37a59a: f7fe faa9    	bl	0x378af0 <NetworkManager::setLeaderPeerID(std::string)> @ imm = #-0x1aae
  37a59e: ab03         	add	r3, sp, #0xc
  37a5a0: 4618         	mov	r0, r3
  37a5a2: f03b f1b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b36e
  37a5a6: e005         	b	0x37a5b4 <NetworkManager::updateLeader()+0x30> @ imm = #0xa
  37a5a8: ab03         	add	r3, sp, #0xc
  37a5aa: 4618         	mov	r0, r3
  37a5ac: f03b f1b2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b364
  37a5b0: f00d f57c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40daf8
  37a5b4: b005         	add	sp, #0x14
  37a5b6: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::nextServerIndex
//      file offset 0x37a5bc (= ELF address; Ghidra 0x38a5bc), 36 bytes, Thumb-2
  37a5bc: b500         	push	{lr}
  37a5be: b083         	sub	sp, #0xc
  37a5c0: 9001         	str	r0, [sp, #0x4]
  37a5c2: 9801         	ldr	r0, [sp, #0x4]
  37a5c4: f000 f8ae    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #0x15c
  37a5c8: 4603         	mov	r3, r0
  37a5ca: 2b00         	cmp	r3, #0x0
  37a5cc: d005         	beq	0x37a5da <NetworkManager::nextServerIndex()+0x1e> @ imm = #0xa
  37a5ce: 9b01         	ldr	r3, [sp, #0x4]
  37a5d0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37a5d4: 4618         	mov	r0, r3
  37a5d6: f048 f939    	bl	0x3c284c <RakNetDelegate::nextServerIndex()> @ imm = #0x48272
  37a5da: b003         	add	sp, #0xc
  37a5dc: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::addServerIP
//      file offset 0x37a604 (= ELF address; Ghidra 0x38a604), 162 bytes, Thumb-2
  37a604: b530         	push	{r4, r5, lr}
  37a606: b089         	sub	sp, #0x24
  37a608: 9003         	str	r0, [sp, #0xc]
  37a60a: 9102         	str	r1, [sp, #0x8]
  37a60c: 9201         	str	r2, [sp, #0x4]
  37a60e: 9803         	ldr	r0, [sp, #0xc]
  37a610: f000 f888    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #0x110
  37a614: 4603         	mov	r3, r0
  37a616: 2b00         	cmp	r3, #0x0
  37a618: d043         	beq	0x37a6a2 <NetworkManager::addServerIP(std::string, std::string)+0x9e> @ imm = #0x86
  37a61a: 9b03         	ldr	r3, [sp, #0xc]
  37a61c: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  37a620: 9802         	ldr	r0, [sp, #0x8]
  37a622: f03a f66d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43acda
  37a626: 4605         	mov	r5, r0
  37a628: ab04         	add	r3, sp, #0x10
  37a62a: 4618         	mov	r0, r3
  37a62c: f00f f6e2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40fdc4
  37a630: aa06         	add	r2, sp, #0x18
  37a632: ab04         	add	r3, sp, #0x10
  37a634: 4610         	mov	r0, r2
  37a636: 4629         	mov	r1, r5
  37a638: 461a         	mov	r2, r3
  37a63a: f03c f211    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43c422
  37a63e: 9801         	ldr	r0, [sp, #0x4]
  37a640: f03a f65e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43acbc
  37a644: 4605         	mov	r5, r0
  37a646: ab05         	add	r3, sp, #0x14
  37a648: 4618         	mov	r0, r3
  37a64a: f00f f6d3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40fda6
  37a64e: ab06         	add	r3, sp, #0x18
  37a650: 1d1a         	adds	r2, r3, #0x4
  37a652: ab05         	add	r3, sp, #0x14
  37a654: 4610         	mov	r0, r2
  37a656: 4629         	mov	r1, r5
  37a658: 461a         	mov	r2, r3
  37a65a: f03c f201    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43c402
  37a65e: ab06         	add	r3, sp, #0x18
  37a660: 4620         	mov	r0, r4
  37a662: 4619         	mov	r1, r3
  37a664: f047 ffb2    	bl	0x3c25cc <RakNetDelegate::addServerIP(ServerListObject)> @ imm = #0x47f64
  37a668: ab06         	add	r3, sp, #0x18
  37a66a: 4618         	mov	r0, r3
  37a66c: f7ff ffb8    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x90
  37a670: ab05         	add	r3, sp, #0x14
  37a672: 4618         	mov	r0, r3
  37a674: f00f f6c2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40fd84
  37a678: ab04         	add	r3, sp, #0x10
  37a67a: 4618         	mov	r0, r3
  37a67c: f00f f6be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40fd7c
  37a680: e00f         	b	0x37a6a2 <NetworkManager::addServerIP(std::string, std::string)+0x9e> @ imm = #0x1e
  37a682: ab06         	add	r3, sp, #0x18
  37a684: 4618         	mov	r0, r3
  37a686: f7ff ffab    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0xaa
  37a68a: e7ff         	b	0x37a68c <NetworkManager::addServerIP(std::string, std::string)+0x88> @ imm = #-0x2
  37a68c: ab05         	add	r3, sp, #0x14
  37a68e: 4618         	mov	r0, r3
  37a690: f00f f6b4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40fd68
  37a694: e7ff         	b	0x37a696 <NetworkManager::addServerIP(std::string, std::string)+0x92> @ imm = #-0x2
  37a696: ab04         	add	r3, sp, #0x10
  37a698: 4618         	mov	r0, r3
  37a69a: f00f f6af    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40fd5e
  37a69e: f00d f505    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40da0a
  37a6a2: b009         	add	sp, #0x24
  37a6a4: bd30         	pop	{r4, r5, pc}

// ==== NetworkManager::sendDataToServer
//      file offset 0x37a6a8 (= ELF address; Ghidra 0x38a6a8), 38 bytes, Thumb-2
  37a6a8: b500         	push	{lr}
  37a6aa: b085         	sub	sp, #0x14
  37a6ac: 9003         	str	r0, [sp, #0xc]
  37a6ae: 9102         	str	r1, [sp, #0x8]
  37a6b0: 9201         	str	r2, [sp, #0x4]
  37a6b2: f88d 3003    	strb.w	r3, [sp, #0x3]
  37a6b6: 9b03         	ldr	r3, [sp, #0xc]
  37a6b8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37a6bc: 4618         	mov	r0, r3
  37a6be: 9902         	ldr	r1, [sp, #0x8]
  37a6c0: 2202         	movs	r2, #0x2
  37a6c2: 2301         	movs	r3, #0x1
  37a6c4: f047 fe52    	bl	0x3c236c <RakNetDelegate::sendDataToServer(void const*, int, bool)> @ imm = #0x47ca4
  37a6c8: b005         	add	sp, #0x14
  37a6ca: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManager::setUseHostedServer
//      file offset 0x37a6d0 (= ELF address; Ghidra 0x38a6d0), 24 bytes, Thumb-2
  37a6d0: b082         	sub	sp, #0x8
  37a6d2: 9001         	str	r0, [sp, #0x4]
  37a6d4: 460b         	mov	r3, r1
  37a6d6: f88d 3003    	strb.w	r3, [sp, #0x3]
  37a6da: 9b01         	ldr	r3, [sp, #0x4]
  37a6dc: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  37a6e0: f883 211c    	strb.w	r2, [r3, #0x11c]
  37a6e4: b002         	add	sp, #0x8
  37a6e6: 4770         	bx	lr

// ==== NetworkManager::setConnectionType
//      file offset 0x37a6e8 (= ELF address; Ghidra 0x38a6e8), 32 bytes, Thumb-2
  37a6e8: b082         	sub	sp, #0x8
  37a6ea: 9001         	str	r0, [sp, #0x4]
  37a6ec: 9100         	str	r1, [sp]
  37a6ee: 4a04         	ldr	r2, [pc, #0x10]         @ 0x37a700 <NetworkManager::setConnectionType(ConnectionType)+0x18>
  37a6f0: 447a         	add	r2, pc
  37a6f2: 4b04         	ldr	r3, [pc, #0x10]         @ 0x37a704 <NetworkManager::setConnectionType(ConnectionType)+0x1c>
  37a6f4: 58d3         	ldr	r3, [r2, r3]
  37a6f6: 9a00         	ldr	r2, [sp]
  37a6f8: 601a         	str	r2, [r3]
  37a6fa: b002         	add	sp, #0x8
  37a6fc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x37a6fd); words below are literal-pool data ---
  37a6fe: bf00         	nop
  37a700: 8318         	strh	r0, [r3, #0x18]
  37a702: 005b         	lsls	r3, r3, #0x1
  37a704: dc78         	bgt	0x37a7f8 <NetworkManager::updateServerConfig()+0x74> @ imm = #0xf0
  37a706: ffff b082    	<unknown>

// ==== NetworkManager::setConnectionType
//      file offset 0x37a708 (= ELF address; Ghidra 0x38a708), 28 bytes, Thumb-2
  37a708: b082         	sub	sp, #0x8
  37a70a: 9001         	str	r0, [sp, #0x4]
  37a70c: 4a03         	ldr	r2, [pc, #0xc]          @ 0x37a71c <NetworkManager::setConnectionType()+0x14>
  37a70e: 447a         	add	r2, pc
  37a710: 4b03         	ldr	r3, [pc, #0xc]          @ 0x37a720 <NetworkManager::setConnectionType()+0x18>
  37a712: 58d3         	ldr	r3, [r2, r3]
  37a714: 681b         	ldr	r3, [r3]
  37a716: 4618         	mov	r0, r3
  37a718: b002         	add	sp, #0x8
  37a71a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x37a71b); words below are literal-pool data ---
  37a71c: 82fa         	strh	r2, [r7, #0x16]
  37a71e: 005b         	lsls	r3, r3, #0x1
  37a720: dc78         	bgt	0x37a814 <NetworkManager::updateServerConfig()+0x90> @ imm = #0xf0
  37a722: ffff b082    	<unknown>

// ==== NetworkManager::isUsingHostedServer
//      file offset 0x37a724 (= ELF address; Ghidra 0x38a724), 16 bytes, Thumb-2
  37a724: b082         	sub	sp, #0x8
  37a726: 9001         	str	r0, [sp, #0x4]
  37a728: 9b01         	ldr	r3, [sp, #0x4]
  37a72a: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  37a72e: 4618         	mov	r0, r3
  37a730: b002         	add	sp, #0x8
  37a732: 4770         	bx	lr

// ==== NetworkManager::getWasInvited
//      file offset 0x37a734 (= ELF address; Ghidra 0x38a734), 16 bytes, Thumb-2
  37a734: b082         	sub	sp, #0x8
  37a736: 9001         	str	r0, [sp, #0x4]
  37a738: 9b01         	ldr	r3, [sp, #0x4]
  37a73a: f893 311d    	ldrb.w	r3, [r3, #0x11d]
  37a73e: 4618         	mov	r0, r3
  37a740: b002         	add	sp, #0x8
  37a742: 4770         	bx	lr

// ==== NetworkManager::setWasInvited
//      file offset 0x37a744 (= ELF address; Ghidra 0x38a744), 24 bytes, Thumb-2
  37a744: b082         	sub	sp, #0x8
  37a746: 9001         	str	r0, [sp, #0x4]
  37a748: 460b         	mov	r3, r1
  37a74a: f88d 3003    	strb.w	r3, [sp, #0x3]
  37a74e: 9b01         	ldr	r3, [sp, #0x4]
  37a750: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  37a754: f883 211d    	strb.w	r2, [r3, #0x11d]
  37a758: b002         	add	sp, #0x8
  37a75a: 4770         	bx	lr

// ==== NetworkManager::setInviteHandled
//      file offset 0x37a75c (= ELF address; Ghidra 0x38a75c), 24 bytes, Thumb-2
  37a75c: b082         	sub	sp, #0x8
  37a75e: 9001         	str	r0, [sp, #0x4]
  37a760: 460b         	mov	r3, r1
  37a762: f88d 3003    	strb.w	r3, [sp, #0x3]
  37a766: 9b01         	ldr	r3, [sp, #0x4]
  37a768: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  37a76c: f883 2124    	strb.w	r2, [r3, #0x124]
  37a770: b002         	add	sp, #0x8
  37a772: 4770         	bx	lr

// ==== NetworkManager::wasInviteHandled
//      file offset 0x37a774 (= ELF address; Ghidra 0x38a774), 16 bytes, Thumb-2
  37a774: b082         	sub	sp, #0x8
  37a776: 9001         	str	r0, [sp, #0x4]
  37a778: 9b01         	ldr	r3, [sp, #0x4]
  37a77a: f893 3124    	ldrb.w	r3, [r3, #0x124]
  37a77e: 4618         	mov	r0, r3
  37a780: b002         	add	sp, #0x8
  37a782: 4770         	bx	lr

// ==== NetworkManager::updateServerConfig
//      file offset 0x37a784 (= ELF address; Ghidra 0x38a784), 416 bytes, Thumb-2
  37a784: b5f0         	push	{r4, r5, r6, r7, lr}
  37a786: b08f         	sub	sp, #0x3c
  37a788: 9003         	str	r0, [sp, #0xc]
  37a78a: 4d60         	ldr	r5, [pc, #0x180]        @ 0x37a90c <NetworkManager::updateServerConfig()+0x188>
  37a78c: 447d         	add	r5, pc
  37a78e: 2048         	movs	r0, #0x48
  37a790: f00d f0e8    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40d1d0
  37a794: 4603         	mov	r3, r0
  37a796: 461c         	mov	r4, r3
  37a798: 4620         	mov	r0, r4
  37a79a: f7fc fd3b    	bl	0x377214 <cocos2d::extension::CCHttpRequest::CCHttpRequest()> @ imm = #-0x358a
  37a79e: 9404         	str	r4, [sp, #0x10]
  37a7a0: ab0b         	add	r3, sp, #0x2c
  37a7a2: 4618         	mov	r0, r3
  37a7a4: 9903         	ldr	r1, [sp, #0xc]
  37a7a6: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x37a910 <NetworkManager::updateServerConfig()+0x18c>
  37a7a8: 447b         	add	r3, pc
  37a7aa: 461a         	mov	r2, r3
  37a7ac: f7fd f8ca    	bl	0x377944 <NetworkManager::createAppsomniacsUrl(char const*)> @ imm = #-0x2e6c
  37a7b0: ab0b         	add	r3, sp, #0x2c
  37a7b2: 4618         	mov	r0, r3
  37a7b4: f03a f5a4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43ab48
  37a7b8: 4603         	mov	r3, r0
  37a7ba: 9804         	ldr	r0, [sp, #0x10]
  37a7bc: 4619         	mov	r1, r3
  37a7be: f7fc fddb    	bl	0x377378 <cocos2d::extension::CCHttpRequest::setUrl(char const*)> @ imm = #-0x344a
  37a7c2: ab0b         	add	r3, sp, #0x2c
  37a7c4: 4618         	mov	r0, r3
  37a7c6: f03b f0a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b14a
  37a7ca: 9804         	ldr	r0, [sp, #0x10]
  37a7cc: 2101         	movs	r1, #0x1
  37a7ce: f7fc fdcb    	bl	0x377368 <cocos2d::extension::CCHttpRequest::setRequestType(cocos2d::extension::CCHttpRequest::HttpRequestType)> @ imm = #-0x346a
  37a7d2: 9b03         	ldr	r3, [sp, #0xc]
  37a7d4: 3304         	adds	r3, #0x4
  37a7d6: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x37a914 <NetworkManager::updateServerConfig()+0x190>
  37a7d8: 447a         	add	r2, pc
  37a7da: 4611         	mov	r1, r2
  37a7dc: aa06         	add	r2, sp, #0x18
  37a7de: c903         	ldm	r1, {r0, r1}
  37a7e0: e882 0003    	stm.w	r2, {r0, r1}
  37a7e4: 9804         	ldr	r0, [sp, #0x10]
  37a7e6: 4619         	mov	r1, r3
  37a7e8: ab06         	add	r3, sp, #0x18
  37a7ea: cb0c         	ldm	r3, {r2, r3}
  37a7ec: f7fc fdf4    	bl	0x3773d8 <cocos2d::extension::CCHttpRequest::setResponseCallback(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*))> @ imm = #-0x3418
  37a7f0: f0a7 feb0    	bl	0x422554 <ApplicationInterface::getPlatformId()> @ imm = #0xa7d60
  37a7f4: 4604         	mov	r4, r0
  37a7f6: 4b48         	ldr	r3, [pc, #0x120]        @ 0x37a918 <NetworkManager::updateServerConfig()+0x194>
  37a7f8: 58eb         	ldr	r3, [r5, r3]
  37a7fa: e9d3 6700    	ldrd	r6, r7, [r3]
  37a7fe: ab0b         	add	r3, sp, #0x2c
  37a800: 4618         	mov	r0, r3
  37a802: f0b1 fceb    	bl	0x42c1dc <ApplicationInterface::getAppVersion()> @ imm = #0xb19d6
  37a806: ab0b         	add	r3, sp, #0x2c
  37a808: 4618         	mov	r0, r3
  37a80a: f03a f579    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43aaf2
  37a80e: 4603         	mov	r3, r0
  37a810: 9300         	str	r3, [sp]
  37a812: 4b42         	ldr	r3, [pc, #0x108]        @ 0x37a91c <NetworkManager::updateServerConfig()+0x198>
  37a814: 447b         	add	r3, pc
  37a816: 4618         	mov	r0, r3
  37a818: 4621         	mov	r1, r4
  37a81a: 4632         	mov	r2, r6
  37a81c: 463b         	mov	r3, r7
  37a81e: f21f f977    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x21f2ee
  37a822: 4603         	mov	r3, r0
  37a824: 9305         	str	r3, [sp, #0x14]
  37a826: ab0b         	add	r3, sp, #0x2c
  37a828: 4618         	mov	r0, r3
  37a82a: f03b f073    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b0e6
  37a82e: 9805         	ldr	r0, [sp, #0x14]
  37a830: f21f f87a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21f0f4
  37a834: 4604         	mov	r4, r0
  37a836: 9805         	ldr	r0, [sp, #0x14]
  37a838: f21f f876    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21f0ec
  37a83c: 4603         	mov	r3, r0
  37a83e: 4618         	mov	r0, r3
  37a840: f75b eb7a    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0xa490c
  37a844: 4603         	mov	r3, r0
  37a846: 9804         	ldr	r0, [sp, #0x10]
  37a848: 4621         	mov	r1, r4
  37a84a: 461a         	mov	r2, r3
  37a84c: f7fc fda2    	bl	0x377394 <cocos2d::extension::CCHttpRequest::setRequestData(char const*, unsigned int)> @ imm = #-0x34bc
  37a850: ab0b         	add	r3, sp, #0x2c
  37a852: 4618         	mov	r0, r3
  37a854: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x37a920 <NetworkManager::updateServerConfig()+0x19c>
  37a856: 58eb         	ldr	r3, [r5, r3]
  37a858: 4619         	mov	r1, r3
  37a85a: f03b f645    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43bc8a
  37a85e: ab0b         	add	r3, sp, #0x2c
  37a860: 4618         	mov	r0, r3
  37a862: f7fc ff59    	bl	0x377718 <setSessionHttpHeader(std::string)> @ imm = #-0x314e
  37a866: ab0b         	add	r3, sp, #0x2c
  37a868: 4618         	mov	r0, r3
  37a86a: f03b f053    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b0a6
  37a86e: ab08         	add	r3, sp, #0x20
  37a870: 4618         	mov	r0, r3
  37a872: f7fc ff7f    	bl	0x377774 <getAppsomniacsHttpHeader()> @ imm = #-0x3102
  37a876: aa0b         	add	r2, sp, #0x2c
  37a878: ab08         	add	r3, sp, #0x20
  37a87a: 4610         	mov	r0, r2
  37a87c: 4619         	mov	r1, r3
  37a87e: f001 faa1    	bl	0x37bdc4 <std::vector<std::string, std::allocator<std::string>>::vector(std::vector<std::string, std::allocator<std::string>> const&)> @ imm = #0x1542
  37a882: ab0b         	add	r3, sp, #0x2c
  37a884: 9804         	ldr	r0, [sp, #0x10]
  37a886: 4619         	mov	r1, r3
  37a888: f7fc fdc4    	bl	0x377414 <cocos2d::extension::CCHttpRequest::setHeaders(std::vector<std::string, std::allocator<std::string>>)> @ imm = #-0x3478
  37a88c: ab0b         	add	r3, sp, #0x2c
  37a88e: 4618         	mov	r0, r3
  37a890: f761 faf2    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9ea1c
  37a894: f0de f8d2    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0xde1a4
  37a898: 4603         	mov	r3, r0
  37a89a: 4618         	mov	r0, r3
  37a89c: 210a         	movs	r1, #0xa
  37a89e: f7fc fdd7    	bl	0x377450 <cocos2d::extension::CCHttpClient::setTimeoutForRead(int)> @ imm = #-0x3452
  37a8a2: f0de f8cb    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0xde196
  37a8a6: 4603         	mov	r3, r0
  37a8a8: 4618         	mov	r0, r3
  37a8aa: 9904         	ldr	r1, [sp, #0x10]
  37a8ac: f0de fa26    	bl	0x458cfc <cocos2d::extension::CCHttpClient::send(cocos2d::extension::CCHttpRequest*)> @ imm = #0xde44c
  37a8b0: 9b04         	ldr	r3, [sp, #0x10]
  37a8b2: 4618         	mov	r0, r3
  37a8b4: f21d fb00    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21d600
  37a8b8: ab08         	add	r3, sp, #0x20
  37a8ba: 4618         	mov	r0, r3
  37a8bc: f761 fadc    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9ea48
  37a8c0: e021         	b	0x37a906 <NetworkManager::updateServerConfig()+0x182> @ imm = #0x42
  37a8c2: 4620         	mov	r0, r4
  37a8c4: f00d f3ee    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40d7dc
  37a8c8: f00d f3f0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d7e0
  37a8cc: ab0b         	add	r3, sp, #0x2c
  37a8ce: 4618         	mov	r0, r3
  37a8d0: f03b f020    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b040
  37a8d4: f00d f3ea    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d7d4
  37a8d8: ab0b         	add	r3, sp, #0x2c
  37a8da: 4618         	mov	r0, r3
  37a8dc: f03b f01a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b034
  37a8e0: f00d f3e4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d7c8
  37a8e4: ab0b         	add	r3, sp, #0x2c
  37a8e6: 4618         	mov	r0, r3
  37a8e8: f03b f014    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43b028
  37a8ec: f00d f3de    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d7bc
  37a8f0: ab0b         	add	r3, sp, #0x2c
  37a8f2: 4618         	mov	r0, r3
  37a8f4: f761 fac0    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9ea80
  37a8f8: e7ff         	b	0x37a8fa <NetworkManager::updateServerConfig()+0x176> @ imm = #-0x2
  37a8fa: ab08         	add	r3, sp, #0x20
  37a8fc: 4618         	mov	r0, r3
  37a8fe: f761 fabb    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9ea8a
  37a902: f00d f3d3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d7a6
  37a906: b00f         	add	sp, #0x3c
  37a908: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x37a909); words below are literal-pool data ---
  37a90a: bf00         	nop
  37a90c: 827c         	strh	r4, [r7, #0x12]
  37a90e: 005b         	lsls	r3, r3, #0x1
  37a910: 41e8         	rors	r0, r5
  37a912: 0045         	lsls	r5, r0, #0x1
  37a914: 8d24         	ldrh	r4, [r4, #0x28]
  37a916: 005b         	lsls	r3, r3, #0x1
  37a918: dc80         	bgt	0x37a81c <NetworkManager::updateServerConfig()+0x98> @ imm = #-0x100
  37a91a: ffff 419c    	vsra.u64	d20, d12, #0x1
  37a91e: 0045         	lsls	r5, r0, #0x1
  37a920: dc60         	bgt	0x37a9e4 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x9c> @ imm = #0xc0
  37a922: ffff b500    	<unknown>

// ==== NetworkManager::onServerConfigRequestCompleted
//      file offset 0x37a948 (= ELF address; Ghidra 0x38a948), 1576 bytes, Thumb-2
  37a948: b570         	push	{r4, r5, r6, lr}
  37a94a: b0a2         	sub	sp, #0x88
  37a94c: 9005         	str	r0, [sp, #0x14]
  37a94e: 9104         	str	r1, [sp, #0x10]
  37a950: 9203         	str	r2, [sp, #0xc]
  37a952: f8df 458c    	ldr.w	r4, [pc, #0x58c]        @ 0x37aee0 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x598>
  37a956: 447c         	add	r4, pc
  37a958: 9803         	ldr	r0, [sp, #0xc]
  37a95a: f7fc fd71    	bl	0x377440 <cocos2d::extension::CCHttpResponse::getResponseCode()> @ imm = #-0x351e
  37a95e: 4603         	mov	r3, r0
  37a960: 9310         	str	r3, [sp, #0x40]
  37a962: 9803         	ldr	r0, [sp, #0xc]
  37a964: f7fc fd64    	bl	0x377430 <cocos2d::extension::CCHttpResponse::getResponseData()> @ imm = #-0x3538
  37a968: 4603         	mov	r3, r0
  37a96a: 9311         	str	r3, [sp, #0x44]
  37a96c: 9811         	ldr	r0, [sp, #0x44]
  37a96e: f001 fad1    	bl	0x37bf14 <std::vector<char, std::allocator<char>>::begin()> @ imm = #0x15a2
  37a972: 4606         	mov	r6, r0
  37a974: 9811         	ldr	r0, [sp, #0x44]
  37a976: f001 fadb    	bl	0x37bf30 <std::vector<char, std::allocator<char>>::end()> @ imm = #0x15b6
  37a97a: 4605         	mov	r5, r0
  37a97c: ab16         	add	r3, sp, #0x58
  37a97e: 4618         	mov	r0, r3
  37a980: f00f f538    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40fa70
  37a984: aa0a         	add	r2, sp, #0x28
  37a986: ab16         	add	r3, sp, #0x58
  37a988: 4610         	mov	r0, r2
  37a98a: 4631         	mov	r1, r6
  37a98c: 462a         	mov	r2, r5
  37a98e: f001 fadf    	bl	0x37bf50 <std::basic_string<char, std::char_traits<char>, std::allocator<char>>::basic_string<__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>>(__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, std::allocator<char> const&)> @ imm = #0x15be
  37a992: ab16         	add	r3, sp, #0x58
  37a994: 4618         	mov	r0, r3
  37a996: f00f f531    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40fa62
  37a99a: 9b10         	ldr	r3, [sp, #0x40]
  37a99c: 2bc7         	cmp	r3, #0xc7
  37a99e: f340 8240    	ble.w	0x37ae22 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4da> @ imm = #0x480
  37a9a2: 9b10         	ldr	r3, [sp, #0x40]
  37a9a4: f5b3 7f96    	cmp.w	r3, #0x12c
  37a9a8: f280 823b    	bge.w	0x37ae22 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4da> @ imm = #0x476
  37a9ac: 9b10         	ldr	r3, [sp, #0x40]
  37a9ae: 2bcc         	cmp	r3, #0xcc
  37a9b0: d101         	bne	0x37a9b6 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x6e> @ imm = #0x2
  37a9b2: 2400         	movs	r4, #0x0
  37a9b4: e242         	b	0x37ae3c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4f4> @ imm = #0x484
  37a9b6: ab16         	add	r3, sp, #0x58
  37a9b8: 4618         	mov	r0, r3
  37a9ba: 2100         	movs	r1, #0x0
  37a9bc: f44f 6280    	mov.w	r2, #0x400
  37a9c0: f001 fadc    	bl	0x37bf7c <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericDocument(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #0x15b8
  37a9c4: ab0a         	add	r3, sp, #0x28
  37a9c6: 4618         	mov	r0, r3
  37a9c8: f03a f49a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43a934
  37a9cc: 4603         	mov	r3, r0
  37a9ce: aa16         	add	r2, sp, #0x58
  37a9d0: 4610         	mov	r0, r2
  37a9d2: 4619         	mov	r1, r3
  37a9d4: f001 fb10    	bl	0x37bff8 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>& rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Parse<0u>(char const*)> @ imm = #0x1620
  37a9d8: ab16         	add	r3, sp, #0x58
  37a9da: 4618         	mov	r0, r3
  37a9dc: f001 fb20    	bl	0x37c020 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsObject() const> @ imm = #0x1640
  37a9e0: 4603         	mov	r3, r0
  37a9e2: 2b00         	cmp	r3, #0x0
  37a9e4: f000 8204    	beq.w	0x37adf0 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a8> @ imm = #0x408
  37a9e8: ab16         	add	r3, sp, #0x58
  37a9ea: 4618         	mov	r0, r3
  37a9ec: f8df 34f4    	ldr.w	r3, [pc, #0x4f4]        @ 0x37aee4 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x59c>
  37a9f0: 447b         	add	r3, pc
  37a9f2: 4619         	mov	r1, r3
  37a9f4: f001 fb20    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x1640
  37a9f8: 4603         	mov	r3, r0
  37a9fa: 2b00         	cmp	r3, #0x0
  37a9fc: d010         	beq	0x37aa20 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xd8> @ imm = #0x20
  37a9fe: ab16         	add	r3, sp, #0x58
  37aa00: 4618         	mov	r0, r3
  37aa02: f8df 34e4    	ldr.w	r3, [pc, #0x4e4]        @ 0x37aee8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5a0>
  37aa06: 447b         	add	r3, pc
  37aa08: 4619         	mov	r1, r3
  37aa0a: f001 fb27    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x164e
  37aa0e: 4603         	mov	r3, r0
  37aa10: 4618         	mov	r0, r3
  37aa12: f001 fb79    	bl	0x37c108 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber() const> @ imm = #0x16f2
  37aa16: 4603         	mov	r3, r0
  37aa18: 2b00         	cmp	r3, #0x0
  37aa1a: d001         	beq	0x37aa20 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xd8> @ imm = #0x2
  37aa1c: 2301         	movs	r3, #0x1
  37aa1e: e000         	b	0x37aa22 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0xda> @ imm = #0x0
  37aa20: 2300         	movs	r3, #0x0
  37aa22: 2b00         	cmp	r3, #0x0
  37aa24: d012         	beq	0x37aa4c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x104> @ imm = #0x24
  37aa26: ab16         	add	r3, sp, #0x58
  37aa28: 4618         	mov	r0, r3
  37aa2a: f8df 34c0    	ldr.w	r3, [pc, #0x4c0]        @ 0x37aeec <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5a4>
  37aa2e: 447b         	add	r3, pc
  37aa30: 4619         	mov	r1, r3
  37aa32: f001 fb13    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1626
  37aa36: 4603         	mov	r3, r0
  37aa38: 4618         	mov	r0, r3
  37aa3a: f001 fb73    	bl	0x37c124 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt64() const> @ imm = #0x16e6
  37aa3e: 4602         	mov	r2, r0
  37aa40: 460b         	mov	r3, r1
  37aa42: f8df 14ac    	ldr.w	r1, [pc, #0x4ac]        @ 0x37aef0 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5a8>
  37aa46: 5861         	ldr	r1, [r4, r1]
  37aa48: e9c1 2300    	strd	r2, r3, [r1]
  37aa4c: ab16         	add	r3, sp, #0x58
  37aa4e: 4618         	mov	r0, r3
  37aa50: f8df 34a0    	ldr.w	r3, [pc, #0x4a0]        @ 0x37aef4 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5ac>
  37aa54: 447b         	add	r3, pc
  37aa56: 4619         	mov	r1, r3
  37aa58: f001 faee    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x15dc
  37aa5c: 4603         	mov	r3, r0
  37aa5e: 2b00         	cmp	r3, #0x0
  37aa60: d010         	beq	0x37aa84 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x13c> @ imm = #0x20
  37aa62: ab16         	add	r3, sp, #0x58
  37aa64: 4618         	mov	r0, r3
  37aa66: f8df 3490    	ldr.w	r3, [pc, #0x490]        @ 0x37aef8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5b0>
  37aa6a: 447b         	add	r3, pc
  37aa6c: 4619         	mov	r1, r3
  37aa6e: f001 faf5    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x15ea
  37aa72: 4603         	mov	r3, r0
  37aa74: 4618         	mov	r0, r3
  37aa76: f001 fb47    	bl	0x37c108 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber() const> @ imm = #0x168e
  37aa7a: 4603         	mov	r3, r0
  37aa7c: 2b00         	cmp	r3, #0x0
  37aa7e: d001         	beq	0x37aa84 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x13c> @ imm = #0x2
  37aa80: 2301         	movs	r3, #0x1
  37aa82: e000         	b	0x37aa86 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x13e> @ imm = #0x0
  37aa84: 2300         	movs	r3, #0x0
  37aa86: 2b00         	cmp	r3, #0x0
  37aa88: d011         	beq	0x37aaae <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x166> @ imm = #0x22
  37aa8a: ab16         	add	r3, sp, #0x58
  37aa8c: 4618         	mov	r0, r3
  37aa8e: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x37aefc <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5b4>
  37aa92: 447b         	add	r3, pc
  37aa94: 4619         	mov	r1, r3
  37aa96: f001 fae1    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x15c2
  37aa9a: 4603         	mov	r3, r0
  37aa9c: 4618         	mov	r0, r3
  37aa9e: f001 fb4b    	bl	0x37c138 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt() const> @ imm = #0x1696
  37aaa2: 4603         	mov	r3, r0
  37aaa4: 461a         	mov	r2, r3
  37aaa6: f8df 3458    	ldr.w	r3, [pc, #0x458]        @ 0x37af00 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5b8>
  37aaaa: 58e3         	ldr	r3, [r4, r3]
  37aaac: 601a         	str	r2, [r3]
  37aaae: ab16         	add	r3, sp, #0x58
  37aab0: 4618         	mov	r0, r3
  37aab2: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x37af04 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5bc>
  37aab6: 447b         	add	r3, pc
  37aab8: 4619         	mov	r1, r3
  37aaba: f001 fabd    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x157a
  37aabe: 4603         	mov	r3, r0
  37aac0: 2b00         	cmp	r3, #0x0
  37aac2: d010         	beq	0x37aae6 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x19e> @ imm = #0x20
  37aac4: ab16         	add	r3, sp, #0x58
  37aac6: 4618         	mov	r0, r3
  37aac8: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x37af08 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5c0>
  37aacc: 447b         	add	r3, pc
  37aace: 4619         	mov	r1, r3
  37aad0: f001 fac4    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1588
  37aad4: 4603         	mov	r3, r0
  37aad6: 4618         	mov	r0, r3
  37aad8: f001 fb16    	bl	0x37c108 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber() const> @ imm = #0x162c
  37aadc: 4603         	mov	r3, r0
  37aade: 2b00         	cmp	r3, #0x0
  37aae0: d001         	beq	0x37aae6 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x19e> @ imm = #0x2
  37aae2: 2301         	movs	r3, #0x1
  37aae4: e000         	b	0x37aae8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1a0> @ imm = #0x0
  37aae6: 2300         	movs	r3, #0x0
  37aae8: 2b00         	cmp	r3, #0x0
  37aaea: d011         	beq	0x37ab10 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1c8> @ imm = #0x22
  37aaec: ab16         	add	r3, sp, #0x58
  37aaee: 4618         	mov	r0, r3
  37aaf0: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x37af0c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5c4>
  37aaf4: 447b         	add	r3, pc
  37aaf6: 4619         	mov	r1, r3
  37aaf8: f001 fab0    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1560
  37aafc: 4603         	mov	r3, r0
  37aafe: 4618         	mov	r0, r3
  37ab00: f001 fb1a    	bl	0x37c138 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt() const> @ imm = #0x1634
  37ab04: 4603         	mov	r3, r0
  37ab06: 461a         	mov	r2, r3
  37ab08: f8df 3404    	ldr.w	r3, [pc, #0x404]        @ 0x37af10 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5c8>
  37ab0c: 58e3         	ldr	r3, [r4, r3]
  37ab0e: 601a         	str	r2, [r3]
  37ab10: ab16         	add	r3, sp, #0x58
  37ab12: 4618         	mov	r0, r3
  37ab14: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x37af14 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5cc>
  37ab16: 447b         	add	r3, pc
  37ab18: 4619         	mov	r1, r3
  37ab1a: f001 fa8d    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x151a
  37ab1e: 4603         	mov	r3, r0
  37ab20: 2b00         	cmp	r3, #0x0
  37ab22: d00f         	beq	0x37ab44 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1fc> @ imm = #0x1e
  37ab24: ab16         	add	r3, sp, #0x58
  37ab26: 4618         	mov	r0, r3
  37ab28: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x37af18 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5d0>
  37ab2a: 447b         	add	r3, pc
  37ab2c: 4619         	mov	r1, r3
  37ab2e: f001 fa95    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x152a
  37ab32: 4603         	mov	r3, r0
  37ab34: 4618         	mov	r0, r3
  37ab36: f001 fae7    	bl	0x37c108 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber() const> @ imm = #0x15ce
  37ab3a: 4603         	mov	r3, r0
  37ab3c: 2b00         	cmp	r3, #0x0
  37ab3e: d001         	beq	0x37ab44 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1fc> @ imm = #0x2
  37ab40: 2301         	movs	r3, #0x1
  37ab42: e000         	b	0x37ab46 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1fe> @ imm = #0x0
  37ab44: 2300         	movs	r3, #0x0
  37ab46: 2b00         	cmp	r3, #0x0
  37ab48: d013         	beq	0x37ab72 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x22a> @ imm = #0x26
  37ab4a: ab16         	add	r3, sp, #0x58
  37ab4c: 4618         	mov	r0, r3
  37ab4e: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x37af1c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5d4>
  37ab50: 447b         	add	r3, pc
  37ab52: 4619         	mov	r1, r3
  37ab54: f001 fa82    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1504
  37ab58: 4603         	mov	r3, r0
  37ab5a: 4618         	mov	r0, r3
  37ab5c: f001 faec    	bl	0x37c138 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt() const> @ imm = #0x15d8
  37ab60: 4603         	mov	r3, r0
  37ab62: 2b00         	cmp	r3, #0x0
  37ab64: bf0c         	ite	eq
  37ab66: 2300         	moveq	r3, #0x0
  37ab68: 2301         	movne	r3, #0x1
  37ab6a: b2da         	uxtb	r2, r3
  37ab6c: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x37af20 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5d8>
  37ab6e: 58e3         	ldr	r3, [r4, r3]
  37ab70: 701a         	strb	r2, [r3]
  37ab72: ab16         	add	r3, sp, #0x58
  37ab74: 4618         	mov	r0, r3
  37ab76: 4beb         	ldr	r3, [pc, #0x3ac]        @ 0x37af24 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5dc>
  37ab78: 447b         	add	r3, pc
  37ab7a: 4619         	mov	r1, r3
  37ab7c: f001 fa5c    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x14b8
  37ab80: 4603         	mov	r3, r0
  37ab82: 2b00         	cmp	r3, #0x0
  37ab84: d017         	beq	0x37abb6 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x26e> @ imm = #0x2e
  37ab86: ab16         	add	r3, sp, #0x58
  37ab88: 4618         	mov	r0, r3
  37ab8a: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x37af28 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5e0>
  37ab8c: 447b         	add	r3, pc
  37ab8e: 4619         	mov	r1, r3
  37ab90: f001 fa64    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x14c8
  37ab94: 4603         	mov	r3, r0
  37ab96: 4618         	mov	r0, r3
  37ab98: f001 fab6    	bl	0x37c108 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber() const> @ imm = #0x156c
  37ab9c: 4603         	mov	r3, r0
  37ab9e: 2b00         	cmp	r3, #0x0
  37aba0: d009         	beq	0x37abb6 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x26e> @ imm = #0x12
  37aba2: 4be2         	ldr	r3, [pc, #0x388]        @ 0x37af2c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5e4>
  37aba4: 58e3         	ldr	r3, [r4, r3]
  37aba6: 781b         	ldrb	r3, [r3]
  37aba8: f083 0301    	eor	r3, r3, #0x1
  37abac: b2db         	uxtb	r3, r3
  37abae: 2b00         	cmp	r3, #0x0
  37abb0: d001         	beq	0x37abb6 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x26e> @ imm = #0x2
  37abb2: 2301         	movs	r3, #0x1
  37abb4: e000         	b	0x37abb8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x270> @ imm = #0x0
  37abb6: 2300         	movs	r3, #0x0
  37abb8: 2b00         	cmp	r3, #0x0
  37abba: f000 8085    	beq.w	0x37acc8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x380> @ imm = #0x10a
  37abbe: ab16         	add	r3, sp, #0x58
  37abc0: 4618         	mov	r0, r3
  37abc2: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x37af30 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5e8>
  37abc4: 447b         	add	r3, pc
  37abc6: 4619         	mov	r1, r3
  37abc8: f001 fa48    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1490
  37abcc: 4603         	mov	r3, r0
  37abce: 4618         	mov	r0, r3
  37abd0: f001 fab2    	bl	0x37c138 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt() const> @ imm = #0x1564
  37abd4: 4603         	mov	r3, r0
  37abd6: 2b01         	cmp	r3, #0x1
  37abd8: bf14         	ite	ne
  37abda: 2300         	movne	r3, #0x0
  37abdc: 2301         	moveq	r3, #0x1
  37abde: b2db         	uxtb	r3, r3
  37abe0: 2b00         	cmp	r3, #0x0
  37abe2: d071         	beq	0x37acc8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x380> @ imm = #0xe2
  37abe4: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x37af2c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5e4>
  37abe6: 58e3         	ldr	r3, [r4, r3]
  37abe8: 2201         	movs	r2, #0x1
  37abea: 701a         	strb	r2, [r3]
  37abec: ab09         	add	r3, sp, #0x24
  37abee: 4618         	mov	r0, r3
  37abf0: f00f f400    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f800
  37abf4: aa0d         	add	r2, sp, #0x34
  37abf6: ab09         	add	r3, sp, #0x24
  37abf8: 4610         	mov	r0, r2
  37abfa: 4ace         	ldr	r2, [pc, #0x338]        @ 0x37af34 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5ec>
  37abfc: 447a         	add	r2, pc
  37abfe: 4611         	mov	r1, r2
  37ac00: 461a         	mov	r2, r3
  37ac02: f03b f72d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43be5a
  37ac06: ab14         	add	r3, sp, #0x50
  37ac08: 4618         	mov	r0, r3
  37ac0a: f00f f3f3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f7e6
  37ac0e: aa0e         	add	r2, sp, #0x38
  37ac10: ab14         	add	r3, sp, #0x50
  37ac12: 4610         	mov	r0, r2
  37ac14: 4ac8         	ldr	r2, [pc, #0x320]        @ 0x37af38 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5f0>
  37ac16: 447a         	add	r2, pc
  37ac18: 4611         	mov	r1, r2
  37ac1a: 461a         	mov	r2, r3
  37ac1c: f03b f720    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43be40
  37ac20: ab07         	add	r3, sp, #0x1c
  37ac22: 4618         	mov	r0, r3
  37ac24: f00f f3e6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f7cc
  37ac28: aa0b         	add	r2, sp, #0x2c
  37ac2a: ab07         	add	r3, sp, #0x1c
  37ac2c: 4610         	mov	r0, r2
  37ac2e: 4ac3         	ldr	r2, [pc, #0x30c]        @ 0x37af3c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5f4>
  37ac30: 447a         	add	r2, pc
  37ac32: 4611         	mov	r1, r2
  37ac34: 461a         	mov	r2, r3
  37ac36: f03b f713    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43be26
  37ac3a: ab0b         	add	r3, sp, #0x2c
  37ac3c: 4618         	mov	r0, r3
  37ac3e: f21e fefd    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x21edfa
  37ac42: 4605         	mov	r5, r0
  37ac44: ab08         	add	r3, sp, #0x20
  37ac46: 4618         	mov	r0, r3
  37ac48: f00f f3d4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f7a8
  37ac4c: aa0c         	add	r2, sp, #0x30
  37ac4e: ab08         	add	r3, sp, #0x20
  37ac50: 4610         	mov	r0, r2
  37ac52: 4abb         	ldr	r2, [pc, #0x2ec]        @ 0x37af40 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5f8>
  37ac54: 447a         	add	r2, pc
  37ac56: 4611         	mov	r1, r2
  37ac58: 461a         	mov	r2, r3
  37ac5a: f03b f701    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43be02
  37ac5e: ab0c         	add	r3, sp, #0x30
  37ac60: 4618         	mov	r0, r3
  37ac62: f21e feeb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x21edd6
  37ac66: 4603         	mov	r3, r0
  37ac68: 4628         	mov	r0, r5
  37ac6a: 4619         	mov	r1, r3
  37ac6c: 2200         	movs	r2, #0x0
  37ac6e: f21f f8cf    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x21f19e
  37ac72: 4603         	mov	r3, r0
  37ac74: a90d         	add	r1, sp, #0x34
  37ac76: aa0e         	add	r2, sp, #0x38
  37ac78: 2000         	movs	r0, #0x0
  37ac7a: 9000         	str	r0, [sp]
  37ac7c: 2000         	movs	r0, #0x0
  37ac7e: 9001         	str	r0, [sp, #0x4]
  37ac80: 48b0         	ldr	r0, [pc, #0x2c0]        @ 0x37af44 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5fc>
  37ac82: 5820         	ldr	r0, [r4, r0]
  37ac84: f764 fdb6    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x9b494
  37ac88: ab0c         	add	r3, sp, #0x30
  37ac8a: 4618         	mov	r0, r3
  37ac8c: f03a f642    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ac84
  37ac90: ab08         	add	r3, sp, #0x20
  37ac92: 4618         	mov	r0, r3
  37ac94: f00f f3b2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f764
  37ac98: ab0b         	add	r3, sp, #0x2c
  37ac9a: 4618         	mov	r0, r3
  37ac9c: f03a f63a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ac74
  37aca0: ab07         	add	r3, sp, #0x1c
  37aca2: 4618         	mov	r0, r3
  37aca4: f00f f3aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f754
  37aca8: ab0e         	add	r3, sp, #0x38
  37acaa: 4618         	mov	r0, r3
  37acac: f03a f632    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ac64
  37acb0: ab14         	add	r3, sp, #0x50
  37acb2: 4618         	mov	r0, r3
  37acb4: f00f f3a2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f744
  37acb8: ab0d         	add	r3, sp, #0x34
  37acba: 4618         	mov	r0, r3
  37acbc: f03a f62a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43ac54
  37acc0: ab09         	add	r3, sp, #0x24
  37acc2: 4618         	mov	r0, r3
  37acc4: f00f f39a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f734
  37acc8: ab16         	add	r3, sp, #0x58
  37acca: 4618         	mov	r0, r3
  37accc: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x37af48 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x600>
  37acce: 447b         	add	r3, pc
  37acd0: 4619         	mov	r1, r3
  37acd2: f001 f9b1    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x1362
  37acd6: 4603         	mov	r3, r0
  37acd8: 2b00         	cmp	r3, #0x0
  37acda: d020         	beq	0x37ad1e <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3d6> @ imm = #0x40
  37acdc: ab16         	add	r3, sp, #0x58
  37acde: 4618         	mov	r0, r3
  37ace0: 4b9a         	ldr	r3, [pc, #0x268]        @ 0x37af4c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x604>
  37ace2: 447b         	add	r3, pc
  37ace4: 4619         	mov	r1, r3
  37ace6: f001 f9b9    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1372
  37acea: 4603         	mov	r3, r0
  37acec: 4618         	mov	r0, r3
  37acee: f001 fa2b    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #0x1456
  37acf2: 4603         	mov	r3, r0
  37acf4: f083 0301    	eor	r3, r3, #0x1
  37acf8: b2db         	uxtb	r3, r3
  37acfa: 2b00         	cmp	r3, #0x0
  37acfc: d00f         	beq	0x37ad1e <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3d6> @ imm = #0x1e
  37acfe: ab16         	add	r3, sp, #0x58
  37ad00: 4618         	mov	r0, r3
  37ad02: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x37af50 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x608>
  37ad04: 447b         	add	r3, pc
  37ad06: 4619         	mov	r1, r3
  37ad08: f001 f9a8    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x1350
  37ad0c: 4603         	mov	r3, r0
  37ad0e: 4618         	mov	r0, r3
  37ad10: f001 fa26    	bl	0x37c160 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsArray() const> @ imm = #0x144c
  37ad14: 4603         	mov	r3, r0
  37ad16: 2b00         	cmp	r3, #0x0
  37ad18: d001         	beq	0x37ad1e <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3d6> @ imm = #0x2
  37ad1a: 2301         	movs	r3, #0x1
  37ad1c: e000         	b	0x37ad20 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3d8> @ imm = #0x0
  37ad1e: 2300         	movs	r3, #0x0
  37ad20: 2b00         	cmp	r3, #0x0
  37ad22: d065         	beq	0x37adf0 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4a8> @ imm = #0xca
  37ad24: ab16         	add	r3, sp, #0x58
  37ad26: 4618         	mov	r0, r3
  37ad28: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x37af54 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x60c>
  37ad2a: 447b         	add	r3, pc
  37ad2c: 4619         	mov	r1, r3
  37ad2e: f001 f995    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x132a
  37ad32: 4603         	mov	r3, r0
  37ad34: 9312         	str	r3, [sp, #0x48]
  37ad36: 4b88         	ldr	r3, [pc, #0x220]        @ 0x37af58 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x610>
  37ad38: 58e3         	ldr	r3, [r4, r3]
  37ad3a: 4618         	mov	r0, r3
  37ad3c: f001 fa1c    	bl	0x37c178 <std::vector<ServerListObject, std::allocator<ServerListObject>>::clear()> @ imm = #0x1438
  37ad40: 2300         	movs	r3, #0x0
  37ad42: 930f         	str	r3, [sp, #0x3c]
  37ad44: e048         	b	0x37add8 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x490> @ imm = #0x90
  37ad46: 9812         	ldr	r0, [sp, #0x48]
  37ad48: 990f         	ldr	r1, [sp, #0x3c]
  37ad4a: f001 fa29    	bl	0x37c1a0 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](unsigned int) const> @ imm = #0x1452
  37ad4e: 4603         	mov	r3, r0
  37ad50: 9313         	str	r3, [sp, #0x4c]
  37ad52: 9813         	ldr	r0, [sp, #0x4c]
  37ad54: 4b81         	ldr	r3, [pc, #0x204]        @ 0x37af5c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x614>
  37ad56: 447b         	add	r3, pc
  37ad58: 4619         	mov	r1, r3
  37ad5a: f001 fa2f    	bl	0x37c1bc <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*) const> @ imm = #0x145e
  37ad5e: 4603         	mov	r3, r0
  37ad60: 4618         	mov	r0, r3
  37ad62: f001 fa39    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #0x1472
  37ad66: 4605         	mov	r5, r0
  37ad68: ab0d         	add	r3, sp, #0x34
  37ad6a: 4618         	mov	r0, r3
  37ad6c: f00f f342    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f684
  37ad70: aa14         	add	r2, sp, #0x50
  37ad72: ab0d         	add	r3, sp, #0x34
  37ad74: 4610         	mov	r0, r2
  37ad76: 4629         	mov	r1, r5
  37ad78: 461a         	mov	r2, r3
  37ad7a: f03b f671    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43bce2
  37ad7e: 9813         	ldr	r0, [sp, #0x4c]
  37ad80: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x37af60 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x618>
  37ad82: 447b         	add	r3, pc
  37ad84: 4619         	mov	r1, r3
  37ad86: f001 fa19    	bl	0x37c1bc <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*) const> @ imm = #0x1432
  37ad8a: 4603         	mov	r3, r0
  37ad8c: 4618         	mov	r0, r3
  37ad8e: f001 fa23    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #0x1446
  37ad92: 4605         	mov	r5, r0
  37ad94: ab0e         	add	r3, sp, #0x38
  37ad96: 4618         	mov	r0, r3
  37ad98: f00f f32c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f658
  37ad9c: ab14         	add	r3, sp, #0x50
  37ad9e: 1d1a         	adds	r2, r3, #0x4
  37ada0: ab0e         	add	r3, sp, #0x38
  37ada2: 4610         	mov	r0, r2
  37ada4: 4629         	mov	r1, r5
  37ada6: 461a         	mov	r2, r3
  37ada8: f03b f65a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43bcb4
  37adac: ab14         	add	r3, sp, #0x50
  37adae: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x37af58 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x610>
  37adb0: 58a2         	ldr	r2, [r4, r2]
  37adb2: 4610         	mov	r0, r2
  37adb4: 4619         	mov	r1, r3
  37adb6: f001 fa1d    	bl	0x37c1f4 <std::vector<ServerListObject, std::allocator<ServerListObject>>::push_back(ServerListObject&&)> @ imm = #0x143a
  37adba: ab14         	add	r3, sp, #0x50
  37adbc: 4618         	mov	r0, r3
  37adbe: f7ff fc0f    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x7e2
  37adc2: ab0e         	add	r3, sp, #0x38
  37adc4: 4618         	mov	r0, r3
  37adc6: f00f f319    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f632
  37adca: ab0d         	add	r3, sp, #0x34
  37adcc: 4618         	mov	r0, r3
  37adce: f00f f315    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f62a
  37add2: 9b0f         	ldr	r3, [sp, #0x3c]
  37add4: 3301         	adds	r3, #0x1
  37add6: 930f         	str	r3, [sp, #0x3c]
  37add8: 9812         	ldr	r0, [sp, #0x48]
  37adda: f001 f9d9    	bl	0x37c190 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Size() const> @ imm = #0x13b2
  37adde: 4602         	mov	r2, r0
  37ade0: 9b0f         	ldr	r3, [sp, #0x3c]
  37ade2: 429a         	cmp	r2, r3
  37ade4: bf94         	ite	ls
  37ade6: 2300         	movls	r3, #0x0
  37ade8: 2301         	movhi	r3, #0x1
  37adea: b2db         	uxtb	r3, r3
  37adec: 2b00         	cmp	r3, #0x0
  37adee: d1aa         	bne	0x37ad46 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3fe> @ imm = #-0xac
  37adf0: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x37af20 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5d8>
  37adf2: 58e3         	ldr	r3, [r4, r3]
  37adf4: 781b         	ldrb	r3, [r3]
  37adf6: f083 0301    	eor	r3, r3, #0x1
  37adfa: b2db         	uxtb	r3, r3
  37adfc: 2b00         	cmp	r3, #0x0
  37adfe: d00b         	beq	0x37ae18 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4d0> @ imm = #0x16
  37ae00: 4b58         	ldr	r3, [pc, #0x160]        @ 0x37af64 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x61c>
  37ae02: 58e3         	ldr	r3, [r4, r3]
  37ae04: 2201         	movs	r2, #0x1
  37ae06: 701a         	strb	r2, [r3]
  37ae08: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x37af68 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x620>
  37ae0a: 58e3         	ldr	r3, [r4, r3]
  37ae0c: 2201         	movs	r2, #0x1
  37ae0e: 701a         	strb	r2, [r3]
  37ae10: 4b56         	ldr	r3, [pc, #0x158]        @ 0x37af6c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x624>
  37ae12: 58e3         	ldr	r3, [r4, r3]
  37ae14: 2201         	movs	r2, #0x1
  37ae16: 701a         	strb	r2, [r3]
  37ae18: ab16         	add	r3, sp, #0x58
  37ae1a: 4618         	mov	r0, r3
  37ae1c: f7ff fd82    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0x4fc
  37ae20: e00b         	b	0x37ae3a <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4f2> @ imm = #0x16
  37ae22: 4b50         	ldr	r3, [pc, #0x140]        @ 0x37af64 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x61c>
  37ae24: 58e3         	ldr	r3, [r4, r3]
  37ae26: 2201         	movs	r2, #0x1
  37ae28: 701a         	strb	r2, [r3]
  37ae2a: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x37af68 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x620>
  37ae2c: 58e3         	ldr	r3, [r4, r3]
  37ae2e: 2201         	movs	r2, #0x1
  37ae30: 701a         	strb	r2, [r3]
  37ae32: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x37af6c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x624>
  37ae34: 58e3         	ldr	r3, [r4, r3]
  37ae36: 2201         	movs	r2, #0x1
  37ae38: 701a         	strb	r2, [r3]
  37ae3a: 2401         	movs	r4, #0x1
  37ae3c: ab0a         	add	r3, sp, #0x28
  37ae3e: 4618         	mov	r0, r3
  37ae40: f03a f568    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43aad0
  37ae44: 2c01         	cmp	r4, #0x1
  37ae46: d000         	beq	0x37ae4a <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x502> @ imm = #0x0
  37ae48: e047         	b	0x37aeda <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x592> @ imm = #0x8e
  37ae4a: bf00         	nop
  37ae4c: e045         	b	0x37aeda <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x592> @ imm = #0x8a
  37ae4e: ab16         	add	r3, sp, #0x58
  37ae50: 4618         	mov	r0, r3
  37ae52: f00f f2d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f5a6
  37ae56: f00d f129    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d252
  37ae5a: ab0c         	add	r3, sp, #0x30
  37ae5c: 4618         	mov	r0, r3
  37ae5e: f03a f559    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43aab2
  37ae62: e7ff         	b	0x37ae64 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x51c> @ imm = #-0x2
  37ae64: ab08         	add	r3, sp, #0x20
  37ae66: 4618         	mov	r0, r3
  37ae68: f00f f2c8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f590
  37ae6c: e7ff         	b	0x37ae6e <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x526> @ imm = #-0x2
  37ae6e: ab0b         	add	r3, sp, #0x2c
  37ae70: 4618         	mov	r0, r3
  37ae72: f03a f54f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43aa9e
  37ae76: e7ff         	b	0x37ae78 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530> @ imm = #-0x2
  37ae78: ab07         	add	r3, sp, #0x1c
  37ae7a: 4618         	mov	r0, r3
  37ae7c: f00f f2be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f57c
  37ae80: ab0e         	add	r3, sp, #0x38
  37ae82: 4618         	mov	r0, r3
  37ae84: f03a f546    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43aa8c
  37ae88: e7ff         	b	0x37ae8a <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x542> @ imm = #-0x2
  37ae8a: ab14         	add	r3, sp, #0x50
  37ae8c: 4618         	mov	r0, r3
  37ae8e: f00f f2b5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f56a
  37ae92: ab0d         	add	r3, sp, #0x34
  37ae94: 4618         	mov	r0, r3
  37ae96: f03a f53d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43aa7a
  37ae9a: e7ff         	b	0x37ae9c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x554> @ imm = #-0x2
  37ae9c: ab09         	add	r3, sp, #0x24
  37ae9e: 4618         	mov	r0, r3
  37aea0: f00f f2ac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f558
  37aea4: e00e         	b	0x37aec4 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x57c> @ imm = #0x1c
  37aea6: ab14         	add	r3, sp, #0x50
  37aea8: 4618         	mov	r0, r3
  37aeaa: f7ff fb99    	bl	0x37a5e0 <ServerListObject::~ServerListObject()> @ imm = #-0x8ce
  37aeae: e7ff         	b	0x37aeb0 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x568> @ imm = #-0x2
  37aeb0: ab0e         	add	r3, sp, #0x38
  37aeb2: 4618         	mov	r0, r3
  37aeb4: f00f f2a2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f544
  37aeb8: e7ff         	b	0x37aeba <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x572> @ imm = #-0x2
  37aeba: ab0d         	add	r3, sp, #0x34
  37aebc: 4618         	mov	r0, r3
  37aebe: f00f f29d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f53a
  37aec2: e7ff         	b	0x37aec4 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x57c> @ imm = #-0x2
  37aec4: ab16         	add	r3, sp, #0x58
  37aec6: 4618         	mov	r0, r3
  37aec8: f7ff fd2c    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0x5a8
  37aecc: e7ff         	b	0x37aece <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x586> @ imm = #-0x2
  37aece: ab0a         	add	r3, sp, #0x28
  37aed0: 4618         	mov	r0, r3
  37aed2: f03a f51f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43aa3e
  37aed6: f00d f0e9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40d1d2
  37aeda: b022         	add	sp, #0x88
  37aedc: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x37aedd); words below are literal-pool data ---
  37aede: bf00         	nop
  37aee0: 80b2         	strh	r2, [r6, #0x4]
  37aee2: 005b         	lsls	r3, r3, #0x1
  37aee4: 3ff8         	subs	r7, #0xf8
  37aee6: 0045         	lsls	r5, r0, #0x1
  37aee8: 3fe2         	subs	r7, #0xe2
  37aeea: 0045         	lsls	r5, r0, #0x1
  37aeec: 3fba         	subs	r7, #0xba
  37aeee: 0045         	lsls	r5, r0, #0x1
  37aef0: dc80         	bgt	0x37adf4 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4ac> @ imm = #-0x100
  37aef2: ffff 3f98    	<unknown>
  37aef6: 0045         	lsls	r5, r0, #0x1
  37aef8: 3f82         	subs	r7, #0x82
  37aefa: 0045         	lsls	r5, r0, #0x1
  37aefc: 3f5a         	subs	r7, #0x5a
  37aefe: 0045         	lsls	r5, r0, #0x1
  37af00: dc7c         	bgt	0x37affc <NetworkManager::hasCompletedSessionRequest()+0x10> @ imm = #0xf8
  37af02: ffff 3f3a    	vcvt.u32.f32	d19, d26, #0x1
  37af06: 0045         	lsls	r5, r0, #0x1
  37af08: 3f24         	subs	r7, #0x24
  37af0a: 0045         	lsls	r5, r0, #0x1
  37af0c: 3efc         	subs	r6, #0xfc
  37af0e: 0045         	lsls	r5, r0, #0x1
  37af10: dc84         	bgt	0x37ae1c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4d4> @ imm = #-0xf8
  37af12: ffff 3ede    	<unknown>
  37af16: 0045         	lsls	r5, r0, #0x1
  37af18: 3eca         	subs	r6, #0xca
  37af1a: 0045         	lsls	r5, r0, #0x1
  37af1c: 3ea4         	subs	r6, #0xa4
  37af1e: 0045         	lsls	r5, r0, #0x1
  37af20: dc88         	bgt	0x37ae34 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4ec> @ imm = #-0xf0
  37af22: ffff 3e80    	<unknown>
  37af26: 0045         	lsls	r5, r0, #0x1
  37af28: 3e6c         	subs	r6, #0x6c
  37af2a: 0045         	lsls	r5, r0, #0x1
  37af2c: dc8c         	bgt	0x37ae48 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x500> @ imm = #-0xe8
  37af2e: ffff 3e34    	vcvt.f32.u32	d19, d20, #0x1
  37af32: 0045         	lsls	r5, r0, #0x1
  37af34: 3e00         	subs	r6, #0x0
  37af36: 0045         	lsls	r5, r0, #0x1
  37af38: 3dfa         	subs	r5, #0xfa
  37af3a: 0045         	lsls	r5, r0, #0x1
  37af3c: 3e2c         	subs	r6, #0x2c
  37af3e: 0045         	lsls	r5, r0, #0x1
  37af40: 3e10         	subs	r6, #0x10
  37af42: 0045         	lsls	r5, r0, #0x1
  37af44: dca4         	bgt	0x37ae90 <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x548> @ imm = #-0xb8
  37af46: ffff 3d9e    	<unknown>
  37af4a: 0045         	lsls	r5, r0, #0x1
  37af4c: 3d8a         	subs	r5, #0x8a
  37af4e: 0045         	lsls	r5, r0, #0x1
  37af50: 3d68         	subs	r5, #0x68
  37af52: 0045         	lsls	r5, r0, #0x1
  37af54: 3d42         	subs	r5, #0x42
  37af56: 0045         	lsls	r5, r0, #0x1
  37af58: dca8         	bgt	0x37aeac <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x564> @ imm = #-0xb0
  37af5a: ffff 3d1a    	<unknown>
  37af5e: 0045         	lsls	r5, r0, #0x1
  37af60: 3cf2         	subs	r4, #0xf2
  37af62: 0045         	lsls	r5, r0, #0x1
  37af64: d76c         	bvc	0x37b040 <NetworkManager::getPrivateClientToken()+0x14> @ imm = #0xd8
  37af66: ffff d768    	<unknown>
  37af6a: ffff dbc8    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d8
  37af6e: ffff b082    	<unknown>

// ==== NetworkManager::getShowXPromo
//      file offset 0x37af70 (= ELF address; Ghidra 0x38af70), 28 bytes, Thumb-2
  37af70: b082         	sub	sp, #0x8
  37af72: 9001         	str	r0, [sp, #0x4]
  37af74: 4a03         	ldr	r2, [pc, #0xc]          @ 0x37af84 <NetworkManager::getShowXPromo()+0x14>
  37af76: 447a         	add	r2, pc
  37af78: 4b03         	ldr	r3, [pc, #0xc]          @ 0x37af88 <NetworkManager::getShowXPromo()+0x18>
  37af7a: 58d3         	ldr	r3, [r2, r3]
  37af7c: 781b         	ldrb	r3, [r3]
  37af7e: 4618         	mov	r0, r3
  37af80: b002         	add	sp, #0x8
  37af82: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x37af83); words below are literal-pool data ---
  37af84: 7a92         	ldrb	r2, [r2, #0xa]
  37af86: 005b         	lsls	r3, r3, #0x1
  37af88: dc88         	bgt	0x37ae9c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x554> @ imm = #-0xf0
  37af8a: ffff b082    	<unknown>

// ==== NetworkManager::getNewsEpoch
//      file offset 0x37af8c (= ELF address; Ghidra 0x38af8c), 28 bytes, Thumb-2
  37af8c: b082         	sub	sp, #0x8
  37af8e: 9001         	str	r0, [sp, #0x4]
  37af90: 4a03         	ldr	r2, [pc, #0xc]          @ 0x37afa0 <NetworkManager::getNewsEpoch()+0x14>
  37af92: 447a         	add	r2, pc
  37af94: 4b03         	ldr	r3, [pc, #0xc]          @ 0x37afa4 <NetworkManager::getNewsEpoch()+0x18>
  37af96: 58d3         	ldr	r3, [r2, r3]
  37af98: 681b         	ldr	r3, [r3]
  37af9a: 4618         	mov	r0, r3
  37af9c: b002         	add	sp, #0x8
  37af9e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x37af9f); words below are literal-pool data ---
  37afa0: 7a76         	ldrb	r6, [r6, #0x9]
  37afa2: 005b         	lsls	r3, r3, #0x1
  37afa4: dc7c         	bgt	0x37b0a0 <NetworkManager::requestWebSession()+0x4c> @ imm = #0xf8
  37afa6: ffff b082    	<unknown>

// ==== NetworkManager::getQuickplayPopulation
//      file offset 0x37afa8 (= ELF address; Ghidra 0x38afa8), 28 bytes, Thumb-2
  37afa8: b082         	sub	sp, #0x8
  37afaa: 9001         	str	r0, [sp, #0x4]
  37afac: 4a03         	ldr	r2, [pc, #0xc]          @ 0x37afbc <NetworkManager::getQuickplayPopulation()+0x14>
  37afae: 447a         	add	r2, pc
  37afb0: 4b03         	ldr	r3, [pc, #0xc]          @ 0x37afc0 <NetworkManager::getQuickplayPopulation()+0x18>
  37afb2: 58d3         	ldr	r3, [r2, r3]
  37afb4: 681b         	ldr	r3, [r3]
  37afb6: 4618         	mov	r0, r3
  37afb8: b002         	add	sp, #0x8
  37afba: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x37afbb); words below are literal-pool data ---
  37afbc: 7a5a         	ldrb	r2, [r3, #0x9]
  37afbe: 005b         	lsls	r3, r3, #0x1
  37afc0: dc84         	bgt	0x37aecc <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x584> @ imm = #-0xf8
  37afc2: ffff b500    	<unknown>

// ==== NetworkManager::getServerList
//      file offset 0x37afc4 (= ELF address; Ghidra 0x38afc4), 40 bytes, Thumb-2
  37afc4: b500         	push	{lr}
  37afc6: b083         	sub	sp, #0xc
  37afc8: 9001         	str	r0, [sp, #0x4]
  37afca: 9100         	str	r1, [sp]
  37afcc: 4a05         	ldr	r2, [pc, #0x14]         @ 0x37afe4 <NetworkManager::getServerList()+0x20>
  37afce: 447a         	add	r2, pc
  37afd0: 9801         	ldr	r0, [sp, #0x4]
  37afd2: 4b05         	ldr	r3, [pc, #0x14]         @ 0x37afe8 <NetworkManager::getServerList()+0x24>
  37afd4: 58d3         	ldr	r3, [r2, r3]
  37afd6: 4619         	mov	r1, r3
  37afd8: f001 f91c    	bl	0x37c214 <std::vector<ServerListObject, std::allocator<ServerListObject>>::vector(std::vector<ServerListObject, std::allocator<ServerListObject>> const&)> @ imm = #0x1238
  37afdc: 9801         	ldr	r0, [sp, #0x4]
  37afde: b003         	add	sp, #0xc
  37afe0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x37afe3); words below are literal-pool data ---
  37afe4: 7a3a         	ldrb	r2, [r7, #0x8]
  37afe6: 005b         	lsls	r3, r3, #0x1
  37afe8: dca8         	bgt	0x37af3c <NetworkManager::onServerConfigRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x5f4> @ imm = #-0xb0
  37afea: ffff b500    	<unknown>

// ==== NetworkManager::hasCompletedSessionRequest
//      file offset 0x37afec (= ELF address; Ghidra 0x38afec), 64 bytes, Thumb-2
  37afec: b500         	push	{lr}
  37afee: b083         	sub	sp, #0xc
  37aff0: 9001         	str	r0, [sp, #0x4]
  37aff2: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x37b020 <NetworkManager::hasCompletedSessionRequest()+0x34>
  37aff4: 447b         	add	r3, pc
  37aff6: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x37b024 <NetworkManager::hasCompletedSessionRequest()+0x38>
  37aff8: 589a         	ldr	r2, [r3, r2]
  37affa: 7812         	ldrb	r2, [r2]
  37affc: 2a00         	cmp	r2, #0x0
  37affe: d009         	beq	0x37b014 <NetworkManager::hasCompletedSessionRequest()+0x28> @ imm = #0x12
  37b000: 4a09         	ldr	r2, [pc, #0x24]         @ 0x37b028 <NetworkManager::hasCompletedSessionRequest()+0x3c>
  37b002: 589b         	ldr	r3, [r3, r2]
  37b004: 4618         	mov	r0, r3
  37b006: f03a f029    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x43a052
  37b00a: 4603         	mov	r3, r0
  37b00c: 2b00         	cmp	r3, #0x0
  37b00e: d001         	beq	0x37b014 <NetworkManager::hasCompletedSessionRequest()+0x28> @ imm = #0x2
  37b010: 2301         	movs	r3, #0x1
  37b012: e000         	b	0x37b016 <NetworkManager::hasCompletedSessionRequest()+0x2a> @ imm = #0x0
  37b014: 2300         	movs	r3, #0x0
  37b016: 4618         	mov	r0, r3
  37b018: b003         	add	sp, #0xc
  37b01a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x37b01d); words below are literal-pool data ---
  37b01e: bf00         	nop
  37b020: 7a14         	ldrb	r4, [r2, #0x8]
  37b022: 005b         	lsls	r3, r3, #0x1
  37b024: dc5c         	bgt	0x37b0e0 <NetworkManager::requestWebSession()+0x8c> @ imm = #0xb8
  37b026: ffff dc68    	<unknown>
  37b02a: ffff b500    	<unknown>

// ==== NetworkManager::getPrivateClientToken
//      file offset 0x37b02c (= ELF address; Ghidra 0x38b02c), 40 bytes, Thumb-2
  37b02c: b500         	push	{lr}
  37b02e: b083         	sub	sp, #0xc
  37b030: 9001         	str	r0, [sp, #0x4]
  37b032: 9100         	str	r1, [sp]
  37b034: 4a05         	ldr	r2, [pc, #0x14]         @ 0x37b04c <NetworkManager::getPrivateClientToken()+0x20>
  37b036: 447a         	add	r2, pc
  37b038: 9801         	ldr	r0, [sp, #0x4]
  37b03a: 4b05         	ldr	r3, [pc, #0x14]         @ 0x37b050 <NetworkManager::getPrivateClientToken()+0x24>
  37b03c: 58d3         	ldr	r3, [r2, r3]
  37b03e: 4619         	mov	r1, r3
  37b040: f03b f252    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43b4a4
  37b044: 9801         	ldr	r0, [sp, #0x4]
  37b046: b003         	add	sp, #0xc
  37b048: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x37b04b); words below are literal-pool data ---
  37b04c: 79d2         	ldrb	r2, [r2, #0x7]
  37b04e: 005b         	lsls	r3, r3, #0x1
  37b050: dc68         	bgt	0x37b124 <NetworkManager::requestWebSession()+0xd0> @ imm = #0xd0
  37b052: ffff e92d    	vtbl.8	d30, {d15, d16}, d29

// ==== NetworkManager::requestWebSession
//      file offset 0x37b054 (= ELF address; Ghidra 0x38b054), 684 bytes, Thumb-2
  37b054: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
  37b058: b098         	sub	sp, #0x60
  37b05a: 9005         	str	r0, [sp, #0x14]
  37b05c: 4c9f         	ldr	r4, [pc, #0x27c]        @ 0x37b2dc <NetworkManager::requestWebSession()+0x288>
  37b05e: 447c         	add	r4, pc
  37b060: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x37b2e0 <NetworkManager::requestWebSession()+0x28c>
  37b062: 58e3         	ldr	r3, [r4, r3]
  37b064: 781b         	ldrb	r3, [r3]
  37b066: 2b00         	cmp	r3, #0x0
  37b068: d001         	beq	0x37b06e <NetworkManager::requestWebSession()+0x1a> @ imm = #0x2
  37b06a: 2400         	movs	r4, #0x0
  37b06c: e0f7         	b	0x37b25e <NetworkManager::requestWebSession()+0x20a> @ imm = #0x1ee
  37b06e: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x37b2e0 <NetworkManager::requestWebSession()+0x28c>
  37b070: 58e3         	ldr	r3, [r4, r3]
  37b072: 2201         	movs	r2, #0x1
  37b074: 701a         	strb	r2, [r3]
  37b076: f0a7 f9db    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #0xa73b6
  37b07a: 4603         	mov	r3, r0
  37b07c: f083 0301    	eor	r3, r3, #0x1
  37b080: b2db         	uxtb	r3, r3
  37b082: 2b00         	cmp	r3, #0x0
  37b084: d007         	beq	0x37b096 <NetworkManager::requestWebSession()+0x42> @ imm = #0xe
  37b086: f0b1 fbcf    	bl	0x42c828 <ApplicationInterface::pickClaimedIdentity()> @ imm = #0xb179e
  37b08a: 4b95         	ldr	r3, [pc, #0x254]        @ 0x37b2e0 <NetworkManager::requestWebSession()+0x28c>
  37b08c: 58e3         	ldr	r3, [r4, r3]
  37b08e: 2200         	movs	r2, #0x0
  37b090: 701a         	strb	r2, [r3]
  37b092: 2400         	movs	r4, #0x0
  37b094: e0e3         	b	0x37b25e <NetworkManager::requestWebSession()+0x20a> @ imm = #0x1c6
  37b096: 2048         	movs	r0, #0x48
  37b098: f00c f464    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40c8c8
  37b09c: 4603         	mov	r3, r0
  37b09e: 461d         	mov	r5, r3
  37b0a0: 4628         	mov	r0, r5
  37b0a2: f7fc f8b7    	bl	0x377214 <cocos2d::extension::CCHttpRequest::CCHttpRequest()> @ imm = #-0x3e92
  37b0a6: 950c         	str	r5, [sp, #0x30]
  37b0a8: ab15         	add	r3, sp, #0x54
  37b0aa: 4618         	mov	r0, r3
  37b0ac: 9905         	ldr	r1, [sp, #0x14]
  37b0ae: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x37b2e4 <NetworkManager::requestWebSession()+0x290>
  37b0b0: 447b         	add	r3, pc
  37b0b2: 461a         	mov	r2, r3
  37b0b4: f7fc fc46    	bl	0x377944 <NetworkManager::createAppsomniacsUrl(char const*)> @ imm = #-0x3774
  37b0b8: ab15         	add	r3, sp, #0x54
  37b0ba: 4618         	mov	r0, r3
  37b0bc: f03a f120    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43a240
  37b0c0: 4603         	mov	r3, r0
  37b0c2: 980c         	ldr	r0, [sp, #0x30]
  37b0c4: 4619         	mov	r1, r3
  37b0c6: f7fc f957    	bl	0x377378 <cocos2d::extension::CCHttpRequest::setUrl(char const*)> @ imm = #-0x3d52
  37b0ca: ab15         	add	r3, sp, #0x54
  37b0cc: 4618         	mov	r0, r3
  37b0ce: f03a f421    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a842
  37b0d2: ab07         	add	r3, sp, #0x1c
  37b0d4: 4618         	mov	r0, r3
  37b0d6: f0a7 f889    	bl	0x4221ec <ApplicationInterface::getClaimedIdentity()> @ imm = #0xa7112
  37b0da: ab08         	add	r3, sp, #0x20
  37b0dc: 4618         	mov	r0, r3
  37b0de: f03a f067    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x43a0ce
  37b0e2: f0a7 f867    	bl	0x4221b4 <ApplicationInterface::isBigEndian()> @ imm = #0xa70ce
  37b0e6: 4603         	mov	r3, r0
  37b0e8: 2b00         	cmp	r3, #0x0
  37b0ea: d001         	beq	0x37b0f0 <NetworkManager::requestWebSession()+0x9c> @ imm = #0x2
  37b0ec: 2302         	movs	r3, #0x2
  37b0ee: e000         	b	0x37b0f2 <NetworkManager::requestWebSession()+0x9e> @ imm = #0x0
  37b0f0: 2301         	movs	r3, #0x1
  37b0f2: 930d         	str	r3, [sp, #0x34]
  37b0f4: ab15         	add	r3, sp, #0x54
  37b0f6: 4618         	mov	r0, r3
  37b0f8: f00f f17c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f2f8
  37b0fc: aa09         	add	r2, sp, #0x24
  37b0fe: ab15         	add	r3, sp, #0x54
  37b100: 4610         	mov	r0, r2
  37b102: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x37b2e8 <NetworkManager::requestWebSession()+0x294>
  37b104: 447a         	add	r2, pc
  37b106: 4611         	mov	r1, r2
  37b108: 461a         	mov	r2, r3
  37b10a: f03b f4a9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43b952
  37b10e: ab15         	add	r3, sp, #0x54
  37b110: 4618         	mov	r0, r3
  37b112: f00f f173    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f2e6
  37b116: ab15         	add	r3, sp, #0x54
  37b118: 4618         	mov	r0, r3
  37b11a: f00f f16b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f2d6
  37b11e: aa0a         	add	r2, sp, #0x28
  37b120: ab15         	add	r3, sp, #0x54
  37b122: 4610         	mov	r0, r2
  37b124: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x37b2ec <NetworkManager::requestWebSession()+0x298>
  37b126: 447a         	add	r2, pc
  37b128: 4611         	mov	r1, r2
  37b12a: 461a         	mov	r2, r3
  37b12c: f03b f498    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43b930
  37b130: ab15         	add	r3, sp, #0x54
  37b132: 4618         	mov	r0, r3
  37b134: f00f f162    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f2c4
  37b138: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x37b2f0 <NetworkManager::requestWebSession()+0x29c>
  37b13a: 447b         	add	r3, pc
  37b13c: 930e         	str	r3, [sp, #0x38]
  37b13e: ab07         	add	r3, sp, #0x1c
  37b140: 4618         	mov	r0, r3
  37b142: f03a f0dd    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43a1ba
  37b146: 4607         	mov	r7, r0
  37b148: f0a7 fa04    	bl	0x422554 <ApplicationInterface::getPlatformId()> @ imm = #0xa7408
  37b14c: 4606         	mov	r6, r0
  37b14e: ab08         	add	r3, sp, #0x20
  37b150: 4618         	mov	r0, r3
  37b152: f03a f0d5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43a1aa
  37b156: 4605         	mov	r5, r0
  37b158: ab09         	add	r3, sp, #0x24
  37b15a: 4618         	mov	r0, r3
  37b15c: f03a f0d0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43a1a0
  37b160: 4680         	mov	r8, r0
  37b162: ab0a         	add	r3, sp, #0x28
  37b164: 4618         	mov	r0, r3
  37b166: f03a f0cb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43a196
  37b16a: 4603         	mov	r3, r0
  37b16c: 9a0d         	ldr	r2, [sp, #0x34]
  37b16e: 9200         	str	r2, [sp]
  37b170: f8cd 8004    	str.w	r8, [sp, #0x4]
  37b174: 9302         	str	r3, [sp, #0x8]
  37b176: 980e         	ldr	r0, [sp, #0x38]
  37b178: 4639         	mov	r1, r7
  37b17a: 4632         	mov	r2, r6
  37b17c: 462b         	mov	r3, r5
  37b17e: f21e fcc7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x21e98e
  37b182: 4603         	mov	r3, r0
  37b184: 930f         	str	r3, [sp, #0x3c]
  37b186: 980c         	ldr	r0, [sp, #0x30]
  37b188: 2101         	movs	r1, #0x1
  37b18a: f7fc f8ed    	bl	0x377368 <cocos2d::extension::CCHttpRequest::setRequestType(cocos2d::extension::CCHttpRequest::HttpRequestType)> @ imm = #-0x3e26
  37b18e: 9b05         	ldr	r3, [sp, #0x14]
  37b190: 3304         	adds	r3, #0x4
  37b192: 4a58         	ldr	r2, [pc, #0x160]        @ 0x37b2f4 <NetworkManager::requestWebSession()+0x2a0>
  37b194: 447a         	add	r2, pc
  37b196: 4611         	mov	r1, r2
  37b198: aa10         	add	r2, sp, #0x40
  37b19a: c903         	ldm	r1, {r0, r1}
  37b19c: e882 0003    	stm.w	r2, {r0, r1}
  37b1a0: 980c         	ldr	r0, [sp, #0x30]
  37b1a2: 4619         	mov	r1, r3
  37b1a4: ab10         	add	r3, sp, #0x40
  37b1a6: cb0c         	ldm	r3, {r2, r3}
  37b1a8: f7fc f916    	bl	0x3773d8 <cocos2d::extension::CCHttpRequest::setResponseCallback(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*))> @ imm = #-0x3dd4
  37b1ac: 980f         	ldr	r0, [sp, #0x3c]
  37b1ae: f21e fbbb    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21e776
  37b1b2: 4605         	mov	r5, r0
  37b1b4: 980f         	ldr	r0, [sp, #0x3c]
  37b1b6: f21e fbb7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21e76e
  37b1ba: 4603         	mov	r3, r0
  37b1bc: 4618         	mov	r0, r3
  37b1be: f75a eebc    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0xa5288
  37b1c2: 4603         	mov	r3, r0
  37b1c4: 980c         	ldr	r0, [sp, #0x30]
  37b1c6: 4629         	mov	r1, r5
  37b1c8: 461a         	mov	r2, r3
  37b1ca: f7fc f8e3    	bl	0x377394 <cocos2d::extension::CCHttpRequest::setRequestData(char const*, unsigned int)> @ imm = #-0x3e3a
  37b1ce: ab0b         	add	r3, sp, #0x2c
  37b1d0: 4618         	mov	r0, r3
  37b1d2: 4b49         	ldr	r3, [pc, #0x124]        @ 0x37b2f8 <NetworkManager::requestWebSession()+0x2a4>
  37b1d4: 58e3         	ldr	r3, [r4, r3]
  37b1d6: 4619         	mov	r1, r3
  37b1d8: f03b f186    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43b30c
  37b1dc: ab0b         	add	r3, sp, #0x2c
  37b1de: 4618         	mov	r0, r3
  37b1e0: f7fc fa9a    	bl	0x377718 <setSessionHttpHeader(std::string)> @ imm = #-0x3acc
  37b1e4: ab0b         	add	r3, sp, #0x2c
  37b1e6: 4618         	mov	r0, r3
  37b1e8: f03a f394    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a728
  37b1ec: ab12         	add	r3, sp, #0x48
  37b1ee: 4618         	mov	r0, r3
  37b1f0: f7fc fac0    	bl	0x377774 <getAppsomniacsHttpHeader()> @ imm = #-0x3a80
  37b1f4: aa15         	add	r2, sp, #0x54
  37b1f6: ab12         	add	r3, sp, #0x48
  37b1f8: 4610         	mov	r0, r2
  37b1fa: 4619         	mov	r1, r3
  37b1fc: f000 fde2    	bl	0x37bdc4 <std::vector<std::string, std::allocator<std::string>>::vector(std::vector<std::string, std::allocator<std::string>> const&)> @ imm = #0xbc4
  37b200: ab15         	add	r3, sp, #0x54
  37b202: 980c         	ldr	r0, [sp, #0x30]
  37b204: 4619         	mov	r1, r3
  37b206: f7fc f905    	bl	0x377414 <cocos2d::extension::CCHttpRequest::setHeaders(std::vector<std::string, std::allocator<std::string>>)> @ imm = #-0x3df6
  37b20a: ab15         	add	r3, sp, #0x54
  37b20c: 4618         	mov	r0, r3
  37b20e: f760 fe33    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9f39a
  37b212: 980c         	ldr	r0, [sp, #0x30]
  37b214: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x37b2fc <NetworkManager::requestWebSession()+0x2a8>
  37b216: 447b         	add	r3, pc
  37b218: 4619         	mov	r1, r3
  37b21a: f7fc f8cf    	bl	0x3773bc <cocos2d::extension::CCHttpRequest::setTag(char const*)> @ imm = #-0x3e62
  37b21e: f0dd fc0d    	bl	0x458a3c <cocos2d::extension::CCHttpClient::getInstance()> @ imm = #0xdd81a
  37b222: 4603         	mov	r3, r0
  37b224: 4618         	mov	r0, r3
  37b226: 990c         	ldr	r1, [sp, #0x30]
  37b228: f0dd fd68    	bl	0x458cfc <cocos2d::extension::CCHttpClient::send(cocos2d::extension::CCHttpRequest*)> @ imm = #0xddad0
  37b22c: 9b0c         	ldr	r3, [sp, #0x30]
  37b22e: 4618         	mov	r0, r3
  37b230: f21c fe42    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21cc84
  37b234: 2401         	movs	r4, #0x1
  37b236: ab12         	add	r3, sp, #0x48
  37b238: 4618         	mov	r0, r3
  37b23a: f760 fe1d    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9f3c6
  37b23e: ab0a         	add	r3, sp, #0x28
  37b240: 4618         	mov	r0, r3
  37b242: f03a f367    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a6ce
  37b246: ab09         	add	r3, sp, #0x24
  37b248: 4618         	mov	r0, r3
  37b24a: f03a f363    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a6c6
  37b24e: ab08         	add	r3, sp, #0x20
  37b250: 4618         	mov	r0, r3
  37b252: f03a f35f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a6be
  37b256: ab07         	add	r3, sp, #0x1c
  37b258: 4618         	mov	r0, r3
  37b25a: f03a f35b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a6b6
  37b25e: 4623         	mov	r3, r4
  37b260: e037         	b	0x37b2d2 <NetworkManager::requestWebSession()+0x27e> @ imm = #0x6e
  37b262: 4628         	mov	r0, r5
  37b264: f00c f71e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40ce3c
  37b268: f00c f720    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ce40
  37b26c: ab15         	add	r3, sp, #0x54
  37b26e: 4618         	mov	r0, r3
  37b270: f03a f350    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a6a0
  37b274: f00c f71a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40ce34
  37b278: ab15         	add	r3, sp, #0x54
  37b27a: 4618         	mov	r0, r3
  37b27c: f00f f0be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f17c
  37b280: e01c         	b	0x37b2bc <NetworkManager::requestWebSession()+0x268> @ imm = #0x38
  37b282: ab15         	add	r3, sp, #0x54
  37b284: 4618         	mov	r0, r3
  37b286: f00f f0b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f172
  37b28a: e012         	b	0x37b2b2 <NetworkManager::requestWebSession()+0x25e> @ imm = #0x24
  37b28c: ab0b         	add	r3, sp, #0x2c
  37b28e: 4618         	mov	r0, r3
  37b290: f03a f340    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a680
  37b294: e009         	b	0x37b2aa <NetworkManager::requestWebSession()+0x256> @ imm = #0x12
  37b296: ab15         	add	r3, sp, #0x54
  37b298: 4618         	mov	r0, r3
  37b29a: f760 fded    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9f426
  37b29e: e7ff         	b	0x37b2a0 <NetworkManager::requestWebSession()+0x24c> @ imm = #-0x2
  37b2a0: ab12         	add	r3, sp, #0x48
  37b2a2: 4618         	mov	r0, r3
  37b2a4: f760 fde8    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x9f430
  37b2a8: e7ff         	b	0x37b2aa <NetworkManager::requestWebSession()+0x256> @ imm = #-0x2
  37b2aa: ab0a         	add	r3, sp, #0x28
  37b2ac: 4618         	mov	r0, r3
  37b2ae: f03a f331    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a662
  37b2b2: ab09         	add	r3, sp, #0x24
  37b2b4: 4618         	mov	r0, r3
  37b2b6: f03a f32d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a65a
  37b2ba: e7ff         	b	0x37b2bc <NetworkManager::requestWebSession()+0x268> @ imm = #-0x2
  37b2bc: ab08         	add	r3, sp, #0x20
  37b2be: 4618         	mov	r0, r3
  37b2c0: f03a f328    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a650
  37b2c4: e7ff         	b	0x37b2c6 <NetworkManager::requestWebSession()+0x272> @ imm = #-0x2
  37b2c6: ab07         	add	r3, sp, #0x1c
  37b2c8: 4618         	mov	r0, r3
  37b2ca: f03a f323    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a646
  37b2ce: f00c f6ed    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40cdda
  37b2d2: 4618         	mov	r0, r3
  37b2d4: b018         	add	sp, #0x60
  37b2d6: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
  ; --- end of code (Ghidra body ends at 0x37b2d9); words below are literal-pool data ---
  37b2da: bf00         	nop
  37b2dc: 79aa         	ldrb	r2, [r5, #0x6]
  37b2de: 005b         	lsls	r3, r3, #0x1
  37b2e0: dcac         	bgt	0x37b23c <NetworkManager::requestWebSession()+0x1e8> @ imm = #-0xa8
  37b2e2: ffff 39c8    	<unknown>
  37b2e6: 0045         	lsls	r5, r0, #0x1
  37b2e8: 399c         	subs	r1, #0x9c
  37b2ea: 0045         	lsls	r5, r0, #0x1
  37b2ec: 397a         	subs	r1, #0x7a
  37b2ee: 0045         	lsls	r5, r0, #0x1
  37b2f0: 396e         	subs	r1, #0x6e
  37b2f2: 0045         	lsls	r5, r0, #0x1
  37b2f4: 8370         	strh	r0, [r6, #0x1a]
  37b2f6: 005b         	lsls	r3, r3, #0x1
  37b2f8: dc60         	bgt	0x37b3bc <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x78> @ imm = #0xc0
  37b2fa: ffff 390a    	vtbl.8	d19, {d15, d16}, d10
  37b2fe: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::rescheduleWebSessionRequest
//      file offset 0x37b300 (= ELF address; Ghidra 0x38b300), 68 bytes, Thumb-2
  37b300: b510         	push	{r4, lr}
  37b302: b084         	sub	sp, #0x10
  37b304: 9001         	str	r0, [sp, #0x4]
  37b306: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x37b33c <NetworkManager::rescheduleWebSessionRequest()+0x3c>
  37b308: 447c         	add	r4, pc
  37b30a: f0a7 f891    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #0xa7122
  37b30e: 4603         	mov	r3, r0
  37b310: 2b00         	cmp	r3, #0x0
  37b312: d010         	beq	0x37b336 <NetworkManager::rescheduleWebSessionRequest()+0x36> @ imm = #0x20
  37b314: 9b01         	ldr	r3, [sp, #0x4]
  37b316: 3304         	adds	r3, #0x4
  37b318: 4a09         	ldr	r2, [pc, #0x24]         @ 0x37b340 <NetworkManager::rescheduleWebSessionRequest()+0x40>
  37b31a: 58a2         	ldr	r2, [r4, r2]
  37b31c: 9202         	str	r2, [sp, #0x8]
  37b31e: 2200         	movs	r2, #0x0
  37b320: 9203         	str	r2, [sp, #0xc]
  37b322: 4618         	mov	r0, r3
  37b324: ab02         	add	r3, sp, #0x8
  37b326: e893 0006    	ldm.w	r3, {r1, r2}
  37b32a: f04f 0300    	mov.w	r3, #0x0
  37b32e: f2c4 03a0    	movt	r3, #0x40a0
  37b332: f215 ffaf    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x215f5e
  37b336: b004         	add	sp, #0x10
  37b338: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x37b339); words below are literal-pool data ---
  37b33a: bf00         	nop
  37b33c: 7700         	strb	r0, [r0, #0x1c]
  37b33e: 005b         	lsls	r3, r3, #0x1
  37b340: dcb0         	bgt	0x37b2a4 <NetworkManager::requestWebSession()+0x250> @ imm = #-0xa0
  37b342: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== NetworkManager::processClientMessageFromJsonDoc
//      file offset 0x37b344 (= ELF address; Ghidra 0x38b344), 532 bytes, Thumb-2
  37b344: b510         	push	{r4, lr}
  37b346: b08c         	sub	sp, #0x30
  37b348: 9003         	str	r0, [sp, #0xc]
  37b34a: 9102         	str	r1, [sp, #0x8]
  37b34c: 9b02         	ldr	r3, [sp, #0x8]
  37b34e: 4618         	mov	r0, r3
  37b350: f000 fe66    	bl	0x37c020 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsObject() const> @ imm = #0xccc
  37b354: 4603         	mov	r3, r0
  37b356: 2b00         	cmp	r3, #0x0
  37b358: f000 80c0    	beq.w	0x37b4dc <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x198> @ imm = #0x180
  37b35c: 9b02         	ldr	r3, [sp, #0x8]
  37b35e: 4618         	mov	r0, r3
  37b360: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x37b538 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1f4>
  37b362: 447b         	add	r3, pc
  37b364: 4619         	mov	r1, r3
  37b366: f000 fe67    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0xcce
  37b36a: 4603         	mov	r3, r0
  37b36c: 2b00         	cmp	r3, #0x0
  37b36e: d020         	beq	0x37b3b2 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x6e> @ imm = #0x40
  37b370: 9b02         	ldr	r3, [sp, #0x8]
  37b372: 4618         	mov	r0, r3
  37b374: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x37b53c <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1f8>
  37b376: 447b         	add	r3, pc
  37b378: 4619         	mov	r1, r3
  37b37a: f000 fe6f    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0xcde
  37b37e: 4603         	mov	r3, r0
  37b380: 4618         	mov	r0, r3
  37b382: f000 fee1    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #0xdc2
  37b386: 4603         	mov	r3, r0
  37b388: f083 0301    	eor	r3, r3, #0x1
  37b38c: b2db         	uxtb	r3, r3
  37b38e: 2b00         	cmp	r3, #0x0
  37b390: d00f         	beq	0x37b3b2 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x6e> @ imm = #0x1e
  37b392: 9b02         	ldr	r3, [sp, #0x8]
  37b394: 4618         	mov	r0, r3
  37b396: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x37b540 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1fc>
  37b398: 447b         	add	r3, pc
  37b39a: 4619         	mov	r1, r3
  37b39c: f000 fe5e    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0xcbc
  37b3a0: 4603         	mov	r3, r0
  37b3a2: 4618         	mov	r0, r3
  37b3a4: f000 ff96    	bl	0x37c2d4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength() const> @ imm = #0xf2c
  37b3a8: 4603         	mov	r3, r0
  37b3aa: 2b00         	cmp	r3, #0x0
  37b3ac: d001         	beq	0x37b3b2 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x6e> @ imm = #0x2
  37b3ae: 2301         	movs	r3, #0x1
  37b3b0: e000         	b	0x37b3b4 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x70> @ imm = #0x0
  37b3b2: 2300         	movs	r3, #0x0
  37b3b4: 2b00         	cmp	r3, #0x0
  37b3b6: f000 8091    	beq.w	0x37b4dc <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x198> @ imm = #0x122
  37b3ba: 9b02         	ldr	r3, [sp, #0x8]
  37b3bc: 4618         	mov	r0, r3
  37b3be: 4b61         	ldr	r3, [pc, #0x184]        @ 0x37b544 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x200>
  37b3c0: 447b         	add	r3, pc
  37b3c2: 4619         	mov	r1, r3
  37b3c4: f000 fe4a    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0xc94
  37b3c8: 4603         	mov	r3, r0
  37b3ca: 4618         	mov	r0, r3
  37b3cc: f000 ff04    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #0xe08
  37b3d0: 4604         	mov	r4, r0
  37b3d2: ab0b         	add	r3, sp, #0x2c
  37b3d4: 4618         	mov	r0, r3
  37b3d6: f00f f00d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40f01a
  37b3da: aa08         	add	r2, sp, #0x20
  37b3dc: ab0b         	add	r3, sp, #0x2c
  37b3de: 4610         	mov	r0, r2
  37b3e0: 4621         	mov	r1, r4
  37b3e2: 461a         	mov	r2, r3
  37b3e4: f03b f33c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43b678
  37b3e8: ab0b         	add	r3, sp, #0x2c
  37b3ea: 4618         	mov	r0, r3
  37b3ec: f00f f006    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40f00c
  37b3f0: ab06         	add	r3, sp, #0x18
  37b3f2: 4618         	mov	r0, r3
  37b3f4: f00e f7fe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40effc
  37b3f8: aa0a         	add	r2, sp, #0x28
  37b3fa: ab06         	add	r3, sp, #0x18
  37b3fc: 4610         	mov	r0, r2
  37b3fe: 4a52         	ldr	r2, [pc, #0x148]        @ 0x37b548 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x204>
  37b400: 447a         	add	r2, pc
  37b402: 4611         	mov	r1, r2
  37b404: 461a         	mov	r2, r3
  37b406: f03b f32b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43b656
  37b40a: ab08         	add	r3, sp, #0x20
  37b40c: 4618         	mov	r0, r3
  37b40e: f039 f777    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x439eee
  37b412: 4604         	mov	r4, r0
  37b414: ab07         	add	r3, sp, #0x1c
  37b416: 4618         	mov	r0, r3
  37b418: f00e f7ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40efd8
  37b41c: aa0b         	add	r2, sp, #0x2c
  37b41e: ab07         	add	r3, sp, #0x1c
  37b420: 4610         	mov	r0, r2
  37b422: 4621         	mov	r1, r4
  37b424: 461a         	mov	r2, r3
  37b426: f03b f31b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43b636
  37b42a: ab05         	add	r3, sp, #0x14
  37b42c: 4618         	mov	r0, r3
  37b42e: f00e f7e1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40efc2
  37b432: aa09         	add	r2, sp, #0x24
  37b434: ab05         	add	r3, sp, #0x14
  37b436: 4610         	mov	r0, r2
  37b438: 4a44         	ldr	r2, [pc, #0x110]        @ 0x37b54c <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x208>
  37b43a: 447a         	add	r2, pc
  37b43c: 4611         	mov	r1, r2
  37b43e: 461a         	mov	r2, r3
  37b440: f03b f30e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43b61c
  37b444: ab09         	add	r3, sp, #0x24
  37b446: 4618         	mov	r0, r3
  37b448: f21e faf8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x21e5f0
  37b44c: 4603         	mov	r3, r0
  37b44e: 4618         	mov	r0, r3
  37b450: 2100         	movs	r1, #0x0
  37b452: f21e fcdd    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x21e9ba
  37b456: 4603         	mov	r3, r0
  37b458: a90a         	add	r1, sp, #0x28
  37b45a: aa0b         	add	r2, sp, #0x2c
  37b45c: 2000         	movs	r0, #0x0
  37b45e: 9000         	str	r0, [sp]
  37b460: 2000         	movs	r0, #0x0
  37b462: 9001         	str	r0, [sp, #0x4]
  37b464: 2000         	movs	r0, #0x0
  37b466: f764 f9c5    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x9bc76
  37b46a: ab09         	add	r3, sp, #0x24
  37b46c: 4618         	mov	r0, r3
  37b46e: f03a f251    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a4a2
  37b472: ab05         	add	r3, sp, #0x14
  37b474: 4618         	mov	r0, r3
  37b476: f00e f7c1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40ef82
  37b47a: ab0b         	add	r3, sp, #0x2c
  37b47c: 4618         	mov	r0, r3
  37b47e: f03a f249    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a492
  37b482: ab07         	add	r3, sp, #0x1c
  37b484: 4618         	mov	r0, r3
  37b486: f00e f7b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40ef72
  37b48a: ab0a         	add	r3, sp, #0x28
  37b48c: 4618         	mov	r0, r3
  37b48e: f03a f241    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a482
  37b492: ab06         	add	r3, sp, #0x18
  37b494: 4618         	mov	r0, r3
  37b496: f00e f7b1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40ef62
  37b49a: 9b02         	ldr	r3, [sp, #0x8]
  37b49c: 4618         	mov	r0, r3
  37b49e: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x37b550 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x20c>
  37b4a0: 447b         	add	r3, pc
  37b4a2: 4619         	mov	r1, r3
  37b4a4: f000 fdc8    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0xb90
  37b4a8: 4603         	mov	r3, r0
  37b4aa: 2b00         	cmp	r3, #0x0
  37b4ac: d00f         	beq	0x37b4ce <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x18a> @ imm = #0x1e
  37b4ae: 9b02         	ldr	r3, [sp, #0x8]
  37b4b0: 4618         	mov	r0, r3
  37b4b2: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x37b554 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x210>
  37b4b4: 447b         	add	r3, pc
  37b4b6: 4619         	mov	r1, r3
  37b4b8: f000 fdd0    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0xba0
  37b4bc: 4603         	mov	r3, r0
  37b4be: 4618         	mov	r0, r3
  37b4c0: f000 ff10    	bl	0x37c2e4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetBool() const> @ imm = #0xe20
  37b4c4: 4603         	mov	r3, r0
  37b4c6: 2b00         	cmp	r3, #0x0
  37b4c8: d001         	beq	0x37b4ce <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x18a> @ imm = #0x2
  37b4ca: 2301         	movs	r3, #0x1
  37b4cc: e000         	b	0x37b4d0 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x18c> @ imm = #0x0
  37b4ce: 2300         	movs	r3, #0x0
  37b4d0: 461c         	mov	r4, r3
  37b4d2: ab08         	add	r3, sp, #0x20
  37b4d4: 4618         	mov	r0, r3
  37b4d6: f03a f21d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a43a
  37b4da: e000         	b	0x37b4de <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x19a> @ imm = #0x0
  37b4dc: 2400         	movs	r4, #0x0
  37b4de: 4623         	mov	r3, r4
  37b4e0: e027         	b	0x37b532 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1ee> @ imm = #0x4e
  37b4e2: ab0b         	add	r3, sp, #0x2c
  37b4e4: 4618         	mov	r0, r3
  37b4e6: f00e f789    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40ef12
  37b4ea: f00c f5df    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40cbbe
  37b4ee: ab09         	add	r3, sp, #0x24
  37b4f0: 4618         	mov	r0, r3
  37b4f2: f03a f20f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a41e
  37b4f6: e7ff         	b	0x37b4f8 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1b4> @ imm = #-0x2
  37b4f8: ab05         	add	r3, sp, #0x14
  37b4fa: 4618         	mov	r0, r3
  37b4fc: f00e f77e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40eefc
  37b500: ab0b         	add	r3, sp, #0x2c
  37b502: 4618         	mov	r0, r3
  37b504: f03a f206    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a40c
  37b508: e7ff         	b	0x37b50a <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1c6> @ imm = #-0x2
  37b50a: ab07         	add	r3, sp, #0x1c
  37b50c: 4618         	mov	r0, r3
  37b50e: f00e f775    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40eeea
  37b512: ab0a         	add	r3, sp, #0x28
  37b514: 4618         	mov	r0, r3
  37b516: f03a f1fd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a3fa
  37b51a: e7ff         	b	0x37b51c <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1d8> @ imm = #-0x2
  37b51c: ab06         	add	r3, sp, #0x18
  37b51e: 4618         	mov	r0, r3
  37b520: f00e f76c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40eed8
  37b524: e7ff         	b	0x37b526 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)+0x1e2> @ imm = #-0x2
  37b526: ab08         	add	r3, sp, #0x20
  37b528: 4618         	mov	r0, r3
  37b52a: f03a f1f3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43a3e6
  37b52e: f00c f5bd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40cb7a
  37b532: 4618         	mov	r0, r3
  37b534: b00c         	add	sp, #0x30
  37b536: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x37b537); words below are literal-pool data ---
  37b538: 37de         	adds	r7, #0xde
  37b53a: 0045         	lsls	r5, r0, #0x1
  37b53c: 37ca         	adds	r7, #0xca
  37b53e: 0045         	lsls	r5, r0, #0x1
  37b540: 37a8         	adds	r7, #0xa8
  37b542: 0045         	lsls	r5, r0, #0x1
  37b544: 3780         	adds	r7, #0x80
  37b546: 0045         	lsls	r5, r0, #0x1
  37b548: 3744         	adds	r7, #0x44
  37b54a: 0045         	lsls	r5, r0, #0x1
  37b54c: 371a         	adds	r7, #0x1a
  37b54e: 0045         	lsls	r5, r0, #0x1
  37b550: 36b8         	adds	r6, #0xb8
  37b552: 0045         	lsls	r5, r0, #0x1
  37b554: 36a4         	adds	r6, #0xa4
  37b556: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::onRequestAppsomniacsWebSessionCompleted
//      file offset 0x37b5b0 (= ELF address; Ghidra 0x38b5b0), 1368 bytes, Thumb-2
  37b5b0: b570         	push	{r4, r5, r6, lr}
  37b5b2: b0c2         	sub	sp, #0x108
  37b5b4: 9003         	str	r0, [sp, #0xc]
  37b5b6: ab02         	add	r3, sp, #0x8
  37b5b8: 6019         	str	r1, [r3]
  37b5ba: ab01         	add	r3, sp, #0x4
  37b5bc: 601a         	str	r2, [r3]
  37b5be: f8df 44e0    	ldr.w	r4, [pc, #0x4e0]        @ 0x37baa0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4f0>
  37b5c2: 447c         	add	r4, pc
  37b5c4: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x37baa4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4f4>
  37b5c8: 58e3         	ldr	r3, [r4, r3]
  37b5ca: 2200         	movs	r2, #0x0
  37b5cc: 701a         	strb	r2, [r3]
  37b5ce: ab01         	add	r3, sp, #0x4
  37b5d0: 6818         	ldr	r0, [r3]
  37b5d2: f7fb ff35    	bl	0x377440 <cocos2d::extension::CCHttpResponse::getResponseCode()> @ imm = #-0x4196
  37b5d6: 4603         	mov	r3, r0
  37b5d8: 9307         	str	r3, [sp, #0x1c]
  37b5da: ab01         	add	r3, sp, #0x4
  37b5dc: 6818         	ldr	r0, [r3]
  37b5de: f7fb ff27    	bl	0x377430 <cocos2d::extension::CCHttpResponse::getResponseData()> @ imm = #-0x41b2
  37b5e2: 4603         	mov	r3, r0
  37b5e4: 9308         	str	r3, [sp, #0x20]
  37b5e6: 9808         	ldr	r0, [sp, #0x20]
  37b5e8: f000 fc94    	bl	0x37bf14 <std::vector<char, std::allocator<char>>::begin()> @ imm = #0x928
  37b5ec: 4606         	mov	r6, r0
  37b5ee: 9808         	ldr	r0, [sp, #0x20]
  37b5f0: f000 fc9e    	bl	0x37bf30 <std::vector<char, std::allocator<char>>::end()> @ imm = #0x93c
  37b5f4: 4605         	mov	r5, r0
  37b5f6: ab15         	add	r3, sp, #0x54
  37b5f8: 4618         	mov	r0, r3
  37b5fa: f00e f6fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40edf6
  37b5fe: aa04         	add	r2, sp, #0x10
  37b600: ab15         	add	r3, sp, #0x54
  37b602: 4610         	mov	r0, r2
  37b604: 4631         	mov	r1, r6
  37b606: 462a         	mov	r2, r5
  37b608: f000 fca2    	bl	0x37bf50 <std::basic_string<char, std::char_traits<char>, std::allocator<char>>::basic_string<__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>>(__gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char>>>, std::allocator<char> const&)> @ imm = #0x944
  37b60c: ab15         	add	r3, sp, #0x54
  37b60e: 4618         	mov	r0, r3
  37b610: f00e f6f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40ede8
  37b614: ab09         	add	r3, sp, #0x24
  37b616: 4618         	mov	r0, r3
  37b618: 2100         	movs	r1, #0x0
  37b61a: f44f 6280    	mov.w	r2, #0x400
  37b61e: f000 fcad    	bl	0x37bf7c <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericDocument(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #0x95a
  37b622: ab04         	add	r3, sp, #0x10
  37b624: 4618         	mov	r0, r3
  37b626: f039 f66b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x439cd6
  37b62a: 4603         	mov	r3, r0
  37b62c: aa09         	add	r2, sp, #0x24
  37b62e: 4610         	mov	r0, r2
  37b630: 4619         	mov	r1, r3
  37b632: f000 fce1    	bl	0x37bff8 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>& rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Parse<0u>(char const*)> @ imm = #0x9c2
  37b636: ab09         	add	r3, sp, #0x24
  37b638: 9803         	ldr	r0, [sp, #0xc]
  37b63a: 4619         	mov	r1, r3
  37b63c: f7ff fe82    	bl	0x37b344 <NetworkManager::processClientMessageFromJsonDoc(rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>*)> @ imm = #-0x2fc
  37b640: 4603         	mov	r3, r0
  37b642: 2b00         	cmp	r3, #0x0
  37b644: d001         	beq	0x37b64a <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x9a> @ imm = #0x2
  37b646: 2400         	movs	r4, #0x0
  37b648: e1f0         	b	0x37ba2c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47c> @ imm = #0x3e0
  37b64a: ab09         	add	r3, sp, #0x24
  37b64c: 4618         	mov	r0, r3
  37b64e: f000 fce7    	bl	0x37c020 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsObject() const> @ imm = #0x9ce
  37b652: 4603         	mov	r3, r0
  37b654: 2b00         	cmp	r3, #0x0
  37b656: f000 81e8    	beq.w	0x37ba2a <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47a> @ imm = #0x3d0
  37b65a: 9b07         	ldr	r3, [sp, #0x1c]
  37b65c: 2bc8         	cmp	r3, #0xc8
  37b65e: f040 8190    	bne.w	0x37b982 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3d2> @ imm = #0x320
  37b662: ab09         	add	r3, sp, #0x24
  37b664: 4618         	mov	r0, r3
  37b666: f8df 3440    	ldr.w	r3, [pc, #0x440]        @ 0x37baa8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4f8>
  37b66a: 447b         	add	r3, pc
  37b66c: 4619         	mov	r1, r3
  37b66e: f000 fce3    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x9c6
  37b672: 4603         	mov	r3, r0
  37b674: 2b00         	cmp	r3, #0x0
  37b676: d022         	beq	0x37b6be <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x10e> @ imm = #0x44
  37b678: ab09         	add	r3, sp, #0x24
  37b67a: 4618         	mov	r0, r3
  37b67c: f8df 342c    	ldr.w	r3, [pc, #0x42c]        @ 0x37baac <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4fc>
  37b680: 447b         	add	r3, pc
  37b682: 4619         	mov	r1, r3
  37b684: f000 fcea    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x9d4
  37b688: 4603         	mov	r3, r0
  37b68a: 4618         	mov	r0, r3
  37b68c: f000 fd5c    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #0xab8
  37b690: 4603         	mov	r3, r0
  37b692: f083 0301    	eor	r3, r3, #0x1
  37b696: b2db         	uxtb	r3, r3
  37b698: 2b00         	cmp	r3, #0x0
  37b69a: d010         	beq	0x37b6be <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x10e> @ imm = #0x20
  37b69c: ab09         	add	r3, sp, #0x24
  37b69e: 4618         	mov	r0, r3
  37b6a0: f8df 340c    	ldr.w	r3, [pc, #0x40c]        @ 0x37bab0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x500>
  37b6a4: 447b         	add	r3, pc
  37b6a6: 4619         	mov	r1, r3
  37b6a8: f000 fcd8    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x9b0
  37b6ac: 4603         	mov	r3, r0
  37b6ae: 4618         	mov	r0, r3
  37b6b0: f000 fe10    	bl	0x37c2d4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength() const> @ imm = #0xc20
  37b6b4: 4603         	mov	r3, r0
  37b6b6: 2b00         	cmp	r3, #0x0
  37b6b8: d001         	beq	0x37b6be <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x10e> @ imm = #0x2
  37b6ba: 2301         	movs	r3, #0x1
  37b6bc: e000         	b	0x37b6c0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x110> @ imm = #0x0
  37b6be: 2300         	movs	r3, #0x0
  37b6c0: 2b00         	cmp	r3, #0x0
  37b6c2: d011         	beq	0x37b6e8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x138> @ imm = #0x22
  37b6c4: ab09         	add	r3, sp, #0x24
  37b6c6: 4618         	mov	r0, r3
  37b6c8: 4bfa         	ldr	r3, [pc, #0x3e8]        @ 0x37bab4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x504>
  37b6ca: 447b         	add	r3, pc
  37b6cc: 4619         	mov	r1, r3
  37b6ce: f000 fcc5    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x98a
  37b6d2: 4603         	mov	r3, r0
  37b6d4: 4618         	mov	r0, r3
  37b6d6: f000 fd7f    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #0xafe
  37b6da: 4603         	mov	r3, r0
  37b6dc: 4af6         	ldr	r2, [pc, #0x3d8]        @ 0x37bab8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x508>
  37b6de: 58a2         	ldr	r2, [r4, r2]
  37b6e0: 4610         	mov	r0, r2
  37b6e2: 4619         	mov	r1, r3
  37b6e4: f03a f3c4    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x43a788
  37b6e8: ab09         	add	r3, sp, #0x24
  37b6ea: 4618         	mov	r0, r3
  37b6ec: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x37babc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x50c>
  37b6ee: 447b         	add	r3, pc
  37b6f0: 4619         	mov	r1, r3
  37b6f2: f000 fca1    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x942
  37b6f6: 4603         	mov	r3, r0
  37b6f8: 2b00         	cmp	r3, #0x0
  37b6fa: d00f         	beq	0x37b71c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x16c> @ imm = #0x1e
  37b6fc: ab09         	add	r3, sp, #0x24
  37b6fe: 4618         	mov	r0, r3
  37b700: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x37bac0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x510>
  37b702: 447b         	add	r3, pc
  37b704: 4619         	mov	r1, r3
  37b706: f000 fca9    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x952
  37b70a: 4603         	mov	r3, r0
  37b70c: 4618         	mov	r0, r3
  37b70e: f000 fcfb    	bl	0x37c108 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber() const> @ imm = #0x9f6
  37b712: 4603         	mov	r3, r0
  37b714: 2b00         	cmp	r3, #0x0
  37b716: d001         	beq	0x37b71c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x16c> @ imm = #0x2
  37b718: 2301         	movs	r3, #0x1
  37b71a: e000         	b	0x37b71e <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x16e> @ imm = #0x0
  37b71c: 2300         	movs	r3, #0x0
  37b71e: 2b00         	cmp	r3, #0x0
  37b720: d01a         	beq	0x37b758 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1a8> @ imm = #0x34
  37b722: ab09         	add	r3, sp, #0x24
  37b724: 4618         	mov	r0, r3
  37b726: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x37bac4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x514>
  37b728: 447b         	add	r3, pc
  37b72a: 4619         	mov	r1, r3
  37b72c: f000 fc96    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x92c
  37b730: 4603         	mov	r3, r0
  37b732: 4618         	mov	r0, r3
  37b734: f000 fd00    	bl	0x37c138 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt() const> @ imm = #0xa00
  37b738: 4603         	mov	r3, r0
  37b73a: 461a         	mov	r2, r3
  37b73c: 4be2         	ldr	r3, [pc, #0x388]        @ 0x37bac8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x518>
  37b73e: 58e3         	ldr	r3, [r4, r3]
  37b740: 601a         	str	r2, [r3]
  37b742: 2000         	movs	r0, #0x0
  37b744: f75a ec5e    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0xa5744
  37b748: 4602         	mov	r2, r0
  37b74a: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x37bac8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x518>
  37b74c: 58e3         	ldr	r3, [r4, r3]
  37b74e: 681b         	ldr	r3, [r3]
  37b750: 441a         	add	r2, r3
  37b752: 4bde         	ldr	r3, [pc, #0x378]        @ 0x37bacc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x51c>
  37b754: 58e3         	ldr	r3, [r4, r3]
  37b756: 601a         	str	r2, [r3]
  37b758: ab09         	add	r3, sp, #0x24
  37b75a: 4618         	mov	r0, r3
  37b75c: 4bdc         	ldr	r3, [pc, #0x370]        @ 0x37bad0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x520>
  37b75e: 447b         	add	r3, pc
  37b760: 4619         	mov	r1, r3
  37b762: f000 fc69    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x8d2
  37b766: 4603         	mov	r3, r0
  37b768: 2b00         	cmp	r3, #0x0
  37b76a: d020         	beq	0x37b7ae <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1fe> @ imm = #0x40
  37b76c: ab09         	add	r3, sp, #0x24
  37b76e: 4618         	mov	r0, r3
  37b770: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x37bad4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x524>
  37b772: 447b         	add	r3, pc
  37b774: 4619         	mov	r1, r3
  37b776: f000 fc71    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x8e2
  37b77a: 4603         	mov	r3, r0
  37b77c: 4618         	mov	r0, r3
  37b77e: f000 fce3    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #0x9c6
  37b782: 4603         	mov	r3, r0
  37b784: f083 0301    	eor	r3, r3, #0x1
  37b788: b2db         	uxtb	r3, r3
  37b78a: 2b00         	cmp	r3, #0x0
  37b78c: d00f         	beq	0x37b7ae <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1fe> @ imm = #0x1e
  37b78e: ab09         	add	r3, sp, #0x24
  37b790: 4618         	mov	r0, r3
  37b792: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x37bad8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x528>
  37b794: 447b         	add	r3, pc
  37b796: 4619         	mov	r1, r3
  37b798: f000 fc60    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x8c0
  37b79c: 4603         	mov	r3, r0
  37b79e: 4618         	mov	r0, r3
  37b7a0: f000 fd98    	bl	0x37c2d4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength() const> @ imm = #0xb30
  37b7a4: 4603         	mov	r3, r0
  37b7a6: 2b00         	cmp	r3, #0x0
  37b7a8: d001         	beq	0x37b7ae <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x1fe> @ imm = #0x2
  37b7aa: 2301         	movs	r3, #0x1
  37b7ac: e000         	b	0x37b7b0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x200> @ imm = #0x0
  37b7ae: 2300         	movs	r3, #0x0
  37b7b0: 2b00         	cmp	r3, #0x0
  37b7b2: d011         	beq	0x37b7d8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x228> @ imm = #0x22
  37b7b4: ab09         	add	r3, sp, #0x24
  37b7b6: 4618         	mov	r0, r3
  37b7b8: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x37badc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x52c>
  37b7ba: 447b         	add	r3, pc
  37b7bc: 4619         	mov	r1, r3
  37b7be: f000 fc4d    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x89a
  37b7c2: 4603         	mov	r3, r0
  37b7c4: 4618         	mov	r0, r3
  37b7c6: f000 fd07    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #0xa0e
  37b7ca: 4603         	mov	r3, r0
  37b7cc: 4ac4         	ldr	r2, [pc, #0x310]        @ 0x37bae0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530>
  37b7ce: 58a2         	ldr	r2, [r4, r2]
  37b7d0: 4610         	mov	r0, r2
  37b7d2: 4619         	mov	r1, r3
  37b7d4: f03a f34c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x43a698
  37b7d8: ab09         	add	r3, sp, #0x24
  37b7da: 4618         	mov	r0, r3
  37b7dc: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x37bae4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x534>
  37b7de: 447b         	add	r3, pc
  37b7e0: 4619         	mov	r1, r3
  37b7e2: f000 fc29    	bl	0x37c038 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(char const*) const> @ imm = #0x852
  37b7e6: 4603         	mov	r3, r0
  37b7e8: 2b00         	cmp	r3, #0x0
  37b7ea: d020         	beq	0x37b82e <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x27e> @ imm = #0x40
  37b7ec: ab09         	add	r3, sp, #0x24
  37b7ee: 4618         	mov	r0, r3
  37b7f0: 4bbd         	ldr	r3, [pc, #0x2f4]        @ 0x37bae8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x538>
  37b7f2: 447b         	add	r3, pc
  37b7f4: 4619         	mov	r1, r3
  37b7f6: f000 fc31    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x862
  37b7fa: 4603         	mov	r3, r0
  37b7fc: 4618         	mov	r0, r3
  37b7fe: f000 fca3    	bl	0x37c148 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull() const> @ imm = #0x946
  37b802: 4603         	mov	r3, r0
  37b804: f083 0301    	eor	r3, r3, #0x1
  37b808: b2db         	uxtb	r3, r3
  37b80a: 2b00         	cmp	r3, #0x0
  37b80c: d00f         	beq	0x37b82e <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x27e> @ imm = #0x1e
  37b80e: ab09         	add	r3, sp, #0x24
  37b810: 4618         	mov	r0, r3
  37b812: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x37baec <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x53c>
  37b814: 447b         	add	r3, pc
  37b816: 4619         	mov	r1, r3
  37b818: f000 fc20    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x840
  37b81c: 4603         	mov	r3, r0
  37b81e: 4618         	mov	r0, r3
  37b820: f000 fd58    	bl	0x37c2d4 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength() const> @ imm = #0xab0
  37b824: 4603         	mov	r3, r0
  37b826: 2b00         	cmp	r3, #0x0
  37b828: d001         	beq	0x37b82e <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x27e> @ imm = #0x2
  37b82a: 2301         	movs	r3, #0x1
  37b82c: e000         	b	0x37b830 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x280> @ imm = #0x0
  37b82e: 2300         	movs	r3, #0x0
  37b830: 2b00         	cmp	r3, #0x0
  37b832: d011         	beq	0x37b858 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2a8> @ imm = #0x22
  37b834: ab09         	add	r3, sp, #0x24
  37b836: 4618         	mov	r0, r3
  37b838: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x37baf0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x540>
  37b83a: 447b         	add	r3, pc
  37b83c: 4619         	mov	r1, r3
  37b83e: f000 fc0d    	bl	0x37c05c <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[](char const*)> @ imm = #0x81a
  37b842: 4603         	mov	r3, r0
  37b844: 4618         	mov	r0, r3
  37b846: f000 fcc7    	bl	0x37c1d8 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString() const> @ imm = #0x98e
  37b84a: 4603         	mov	r3, r0
  37b84c: 4aa9         	ldr	r2, [pc, #0x2a4]        @ 0x37baf4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x544>
  37b84e: 58a2         	ldr	r2, [r4, r2]
  37b850: 4610         	mov	r0, r2
  37b852: 4619         	mov	r1, r3
  37b854: f03a f30c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x43a618
  37b858: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x37bab8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x508>
  37b85a: 58e3         	ldr	r3, [r4, r3]
  37b85c: 4618         	mov	r0, r3
  37b85e: f039 f3fd    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4397fa
  37b862: 4603         	mov	r3, r0
  37b864: 2b00         	cmp	r3, #0x0
  37b866: d016         	beq	0x37b896 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2e6> @ imm = #0x2c
  37b868: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x37bac8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x518>
  37b86a: 58e3         	ldr	r3, [r4, r3]
  37b86c: 681b         	ldr	r3, [r3]
  37b86e: 2b00         	cmp	r3, #0x0
  37b870: dd11         	ble	0x37b896 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2e6> @ imm = #0x22
  37b872: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x37bae0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530>
  37b874: 58e3         	ldr	r3, [r4, r3]
  37b876: 4618         	mov	r0, r3
  37b878: f039 f3f0    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4397e0
  37b87c: 4603         	mov	r3, r0
  37b87e: 2b00         	cmp	r3, #0x0
  37b880: d009         	beq	0x37b896 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2e6> @ imm = #0x12
  37b882: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x37baf4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x544>
  37b884: 58e3         	ldr	r3, [r4, r3]
  37b886: 4618         	mov	r0, r3
  37b888: f039 f3e8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4397d0
  37b88c: 4603         	mov	r3, r0
  37b88e: 2b00         	cmp	r3, #0x0
  37b890: d001         	beq	0x37b896 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2e6> @ imm = #0x2
  37b892: 2301         	movs	r3, #0x1
  37b894: e000         	b	0x37b898 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x2e8> @ imm = #0x0
  37b896: 2300         	movs	r3, #0x0
  37b898: 2b00         	cmp	r3, #0x0
  37b89a: d009         	beq	0x37b8b0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x300> @ imm = #0x12
  37b89c: 4b96         	ldr	r3, [pc, #0x258]        @ 0x37baf8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x548>
  37b89e: 58e3         	ldr	r3, [r4, r3]
  37b8a0: 2201         	movs	r2, #0x1
  37b8a2: 701a         	strb	r2, [r3]
  37b8a4: 9b03         	ldr	r3, [sp, #0xc]
  37b8a6: 4618         	mov	r0, r3
  37b8a8: 2101         	movs	r1, #0x1
  37b8aa: f0b8 fa3f    	bl	0x433d2c <NetworkManagerBridge::notifySessionRequestCompleted(bool)> @ imm = #0xb847e
  37b8ae: e067         	b	0x37b980 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x3d0> @ imm = #0xce
  37b8b0: ab15         	add	r3, sp, #0x54
  37b8b2: 4618         	mov	r0, r3
  37b8b4: 2110         	movs	r1, #0x10
  37b8b6: f01e f623    	bl	0x79a500 <std::bad_alloc::~bad_alloc()+0x11ed0> @ imm = #0x41ec46
  37b8ba: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x37bab8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x508>
  37b8bc: 58e3         	ldr	r3, [r4, r3]
  37b8be: 4618         	mov	r0, r3
  37b8c0: f039 f3cc    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x439798
  37b8c4: 4603         	mov	r3, r0
  37b8c6: aa15         	add	r2, sp, #0x54
  37b8c8: 4610         	mov	r0, r2
  37b8ca: 4619         	mov	r1, r3
  37b8cc: f030 f3d4    	bl	0x7ac078 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf5c8> @ imm = #0x4307a8
  37b8d0: 4603         	mov	r3, r0
  37b8d2: 4618         	mov	r0, r3
  37b8d4: 4b89         	ldr	r3, [pc, #0x224]        @ 0x37bafc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x54c>
  37b8d6: 447b         	add	r3, pc
  37b8d8: 4619         	mov	r1, r3
  37b8da: f030 f1f9    	bl	0x7abcd0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf220> @ imm = #0x4303f2
  37b8de: 4602         	mov	r2, r0
  37b8e0: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x37bac8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x518>
  37b8e2: 58e3         	ldr	r3, [r4, r3]
  37b8e4: 681b         	ldr	r3, [r3]
  37b8e6: 4610         	mov	r0, r2
  37b8e8: 4619         	mov	r1, r3
  37b8ea: f030 f30b    	bl	0x7abf04 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf454> @ imm = #0x430616
  37b8ee: 4603         	mov	r3, r0
  37b8f0: 4618         	mov	r0, r3
  37b8f2: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x37bb00 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x550>
  37b8f4: 447b         	add	r3, pc
  37b8f6: 4619         	mov	r1, r3
  37b8f8: f030 f1ea    	bl	0x7abcd0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf220> @ imm = #0x4303d4
  37b8fc: 4605         	mov	r5, r0
  37b8fe: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x37bae0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530>
  37b900: 58e3         	ldr	r3, [r4, r3]
  37b902: 4618         	mov	r0, r3
  37b904: f039 f3aa    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x439754
  37b908: 4603         	mov	r3, r0
  37b90a: 4628         	mov	r0, r5
  37b90c: 4619         	mov	r1, r3
  37b90e: f030 f3b3    	bl	0x7ac078 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf5c8> @ imm = #0x430766
  37b912: 4603         	mov	r3, r0
  37b914: 4618         	mov	r0, r3
  37b916: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x37bb04 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x554>
  37b918: 447b         	add	r3, pc
  37b91a: 4619         	mov	r1, r3
  37b91c: f030 f1d8    	bl	0x7abcd0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf220> @ imm = #0x4303b0
  37b920: 4605         	mov	r5, r0
  37b922: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x37baf4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x544>
  37b924: 58e3         	ldr	r3, [r4, r3]
  37b926: 4618         	mov	r0, r3
  37b928: f039 f398    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x439730
  37b92c: 4603         	mov	r3, r0
  37b92e: 4628         	mov	r0, r5
  37b930: 4619         	mov	r1, r3
  37b932: f030 f3a1    	bl	0x7ac078 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf5c8> @ imm = #0x430742
  37b936: 4603         	mov	r3, r0
  37b938: 4618         	mov	r0, r3
  37b93a: 2100         	movs	r1, #0x0
  37b93c: f030 f2e2    	bl	0x7abf04 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf454> @ imm = #0x4305c4
  37b940: f7fb ffc8    	bl	0x3778d4 <invalidateAppsomniacsSession()> @ imm = #-0x4070
  37b944: aa05         	add	r2, sp, #0x14
  37b946: ab15         	add	r3, sp, #0x54
  37b948: 4610         	mov	r0, r2
  37b94a: 4619         	mov	r1, r3
  37b94c: f01e f79e    	bl	0x79a88c <std::bad_alloc::~bad_alloc()+0x1225c> @ imm = #0x41ef3c
  37b950: ab05         	add	r3, sp, #0x14
  37b952: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x37bae0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530>
  37b954: 58a2         	ldr	r2, [r4, r2]
  37b956: 4610         	mov	r0, r2
  37b958: 4619         	mov	r1, r3
  37b95a: f03a f3e1    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x43a7c2
  37b95e: ab05         	add	r3, sp, #0x14
  37b960: 4618         	mov	r0, r3
  37b962: f039 f7d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x439fae
  37b966: 9b03         	ldr	r3, [sp, #0xc]
  37b968: 4618         	mov	r0, r3
  37b96a: 2100         	movs	r1, #0x0
  37b96c: f0b8 f9de    	bl	0x433d2c <NetworkManagerBridge::notifySessionRequestCompleted(bool)> @ imm = #0xb83bc
  37b970: 9803         	ldr	r0, [sp, #0xc]
  37b972: f7ff fcc5    	bl	0x37b300 <NetworkManager::rescheduleWebSessionRequest()> @ imm = #-0x676
  37b976: ab15         	add	r3, sp, #0x54
  37b978: 4618         	mov	r0, r3
  37b97a: f01d f3ab    	bl	0x7990d4 <std::bad_alloc::~bad_alloc()+0x10aa4> @ imm = #0x41d756
  37b97e: e054         	b	0x37ba2a <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47a> @ imm = #0xa8
  37b980: e053         	b	0x37ba2a <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47a> @ imm = #0xa6
  37b982: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x37baf8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x548>
  37b984: 58e3         	ldr	r3, [r4, r3]
  37b986: 781b         	ldrb	r3, [r3]
  37b988: f083 0301    	eor	r3, r3, #0x1
  37b98c: b2db         	uxtb	r3, r3
  37b98e: 2b00         	cmp	r3, #0x0
  37b990: d11c         	bne	0x37b9cc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x41c> @ imm = #0x38
  37b992: 4b49         	ldr	r3, [pc, #0x124]        @ 0x37bab8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x508>
  37b994: 58e3         	ldr	r3, [r4, r3]
  37b996: 4618         	mov	r0, r3
  37b998: f039 f360    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4396c0
  37b99c: 4603         	mov	r3, r0
  37b99e: 2b00         	cmp	r3, #0x0
  37b9a0: d014         	beq	0x37b9cc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x41c> @ imm = #0x28
  37b9a2: 4b49         	ldr	r3, [pc, #0x124]        @ 0x37bac8 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x518>
  37b9a4: 58e3         	ldr	r3, [r4, r3]
  37b9a6: 681b         	ldr	r3, [r3]
  37b9a8: 2b00         	cmp	r3, #0x0
  37b9aa: dd0f         	ble	0x37b9cc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x41c> @ imm = #0x1e
  37b9ac: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x37bae0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530>
  37b9ae: 58e3         	ldr	r3, [r4, r3]
  37b9b0: 4618         	mov	r0, r3
  37b9b2: f039 f353    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4396a6
  37b9b6: 4603         	mov	r3, r0
  37b9b8: 2b00         	cmp	r3, #0x0
  37b9ba: d007         	beq	0x37b9cc <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x41c> @ imm = #0xe
  37b9bc: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x37baf4 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x544>
  37b9be: 58e3         	ldr	r3, [r4, r3]
  37b9c0: 4618         	mov	r0, r3
  37b9c2: f039 f34b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x439696
  37b9c6: 4603         	mov	r3, r0
  37b9c8: 2b00         	cmp	r3, #0x0
  37b9ca: d101         	bne	0x37b9d0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x420> @ imm = #0x2
  37b9cc: 2301         	movs	r3, #0x1
  37b9ce: e000         	b	0x37b9d2 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x422> @ imm = #0x0
  37b9d0: 2300         	movs	r3, #0x0
  37b9d2: 2b00         	cmp	r3, #0x0
  37b9d4: d025         	beq	0x37ba22 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x472> @ imm = #0x4a
  37b9d6: f7fb ff7d    	bl	0x3778d4 <invalidateAppsomniacsSession()> @ imm = #-0x4106
  37b9da: ab15         	add	r3, sp, #0x54
  37b9dc: 4618         	mov	r0, r3
  37b9de: 2110         	movs	r1, #0x10
  37b9e0: f01e f58e    	bl	0x79a500 <std::bad_alloc::~bad_alloc()+0x11ed0> @ imm = #0x41eb1c
  37b9e4: ab15         	add	r3, sp, #0x54
  37b9e6: 4618         	mov	r0, r3
  37b9e8: 9907         	ldr	r1, [sp, #0x1c]
  37b9ea: f030 f28b    	bl	0x7abf04 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0xf454> @ imm = #0x430516
  37b9ee: aa06         	add	r2, sp, #0x18
  37b9f0: ab15         	add	r3, sp, #0x54
  37b9f2: 4610         	mov	r0, r2
  37b9f4: 4619         	mov	r1, r3
  37b9f6: f01e f749    	bl	0x79a88c <std::bad_alloc::~bad_alloc()+0x1225c> @ imm = #0x41ee92
  37b9fa: ab06         	add	r3, sp, #0x18
  37b9fc: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x37bae0 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x530>
  37b9fe: 58a2         	ldr	r2, [r4, r2]
  37ba00: 4610         	mov	r0, r2
  37ba02: 4619         	mov	r1, r3
  37ba04: f03a f38c    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x43a718
  37ba08: ab06         	add	r3, sp, #0x18
  37ba0a: 4618         	mov	r0, r3
  37ba0c: f039 f782    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x439f04
  37ba10: 9b03         	ldr	r3, [sp, #0xc]
  37ba12: 4618         	mov	r0, r3
  37ba14: 2100         	movs	r1, #0x0
  37ba16: f0b8 f989    	bl	0x433d2c <NetworkManagerBridge::notifySessionRequestCompleted(bool)> @ imm = #0xb8312
  37ba1a: ab15         	add	r3, sp, #0x54
  37ba1c: 4618         	mov	r0, r3
  37ba1e: f01d f359    	bl	0x7990d4 <std::bad_alloc::~bad_alloc()+0x10aa4> @ imm = #0x41d6b2
  37ba22: 9803         	ldr	r0, [sp, #0xc]
  37ba24: f7ff fc6c    	bl	0x37b300 <NetworkManager::rescheduleWebSessionRequest()> @ imm = #-0x728
  37ba28: e7ff         	b	0x37ba2a <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x47a> @ imm = #-0x2
  37ba2a: 2401         	movs	r4, #0x1
  37ba2c: ab09         	add	r3, sp, #0x24
  37ba2e: 4618         	mov	r0, r3
  37ba30: f7fe ff78    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0x1110
  37ba34: 2c01         	cmp	r4, #0x1
  37ba36: d001         	beq	0x37ba3c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x48c> @ imm = #0x2
  37ba38: 2400         	movs	r4, #0x0
  37ba3a: e001         	b	0x37ba40 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x490> @ imm = #0x2
  37ba3c: bf00         	nop
  37ba3e: 2401         	movs	r4, #0x1
  37ba40: ab04         	add	r3, sp, #0x10
  37ba42: 4618         	mov	r0, r3
  37ba44: f039 f766    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x439ecc
  37ba48: 2c01         	cmp	r4, #0x1
  37ba4a: d000         	beq	0x37ba4e <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x49e> @ imm = #0x0
  37ba4c: e026         	b	0x37ba9c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4ec> @ imm = #0x4c
  37ba4e: bf00         	nop
  37ba50: e024         	b	0x37ba9c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4ec> @ imm = #0x48
  37ba52: ab15         	add	r3, sp, #0x54
  37ba54: 4618         	mov	r0, r3
  37ba56: f00e f4d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40e9a2
  37ba5a: f00c f327    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40c64e
  37ba5e: ab05         	add	r3, sp, #0x14
  37ba60: 4618         	mov	r0, r3
  37ba62: f039 f757    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x439eae
  37ba66: e7ff         	b	0x37ba68 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4b8> @ imm = #-0x2
  37ba68: ab15         	add	r3, sp, #0x54
  37ba6a: 4618         	mov	r0, r3
  37ba6c: f01d f332    	bl	0x7990d4 <std::bad_alloc::~bad_alloc()+0x10aa4> @ imm = #0x41d664
  37ba70: e009         	b	0x37ba86 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4d6> @ imm = #0x12
  37ba72: ab06         	add	r3, sp, #0x18
  37ba74: 4618         	mov	r0, r3
  37ba76: f039 f74d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x439e9a
  37ba7a: e7ff         	b	0x37ba7c <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4cc> @ imm = #-0x2
  37ba7c: ab15         	add	r3, sp, #0x54
  37ba7e: 4618         	mov	r0, r3
  37ba80: f01d f328    	bl	0x7990d4 <std::bad_alloc::~bad_alloc()+0x10aa4> @ imm = #0x41d650
  37ba84: e7ff         	b	0x37ba86 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4d6> @ imm = #-0x2
  37ba86: ab09         	add	r3, sp, #0x24
  37ba88: 4618         	mov	r0, r3
  37ba8a: f7fe ff4b    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0x116a
  37ba8e: e7ff         	b	0x37ba90 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x4e0> @ imm = #-0x2
  37ba90: ab04         	add	r3, sp, #0x10
  37ba92: 4618         	mov	r0, r3
  37ba94: f039 f73e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x439e7c
  37ba98: f00c f308    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40c610
  37ba9c: b042         	add	sp, #0x108
  37ba9e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x37ba9f); words below are literal-pool data ---
  37baa0: 7446         	strb	r6, [r0, #0x11]
  37baa2: 005b         	lsls	r3, r3, #0x1
  37baa4: dcac         	bgt	0x37ba00 <NetworkManager::onRequestAppsomniacsWebSessionCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*)+0x450> @ imm = #-0xa8
  37baa6: ffff 34f2    	<unknown>
  37baaa: 0045         	lsls	r5, r0, #0x1
  37baac: 34dc         	adds	r4, #0xdc
  37baae: 0045         	lsls	r5, r0, #0x1
  37bab0: 34b8         	adds	r4, #0xb8
  37bab2: 0045         	lsls	r5, r0, #0x1
  37bab4: 3492         	adds	r4, #0x92
  37bab6: 0045         	lsls	r5, r0, #0x1
  37bab8: dc60         	bgt	0x37bb7c <std::vector<char, std::allocator<char>>::clear()+0xc> @ imm = #0xc0
  37baba: ffff 3472    	<unknown>
  37babe: 0045         	lsls	r5, r0, #0x1
  37bac0: 345e         	adds	r4, #0x5e
  37bac2: 0045         	lsls	r5, r0, #0x1
  37bac4: 3438         	adds	r4, #0x38
  37bac6: 0045         	lsls	r5, r0, #0x1
  37bac8: dc64         	bgt	0x37bb94 <void std::vector<char, std::allocator<char>>::assign<char const*, void>(char const*, char const*)+0xc> @ imm = #0xc8
  37baca: ffff dca0    	<unknown>
  37bace: ffff 3406    	<unknown>
  37bad2: 0045         	lsls	r5, r0, #0x1
  37bad4: 33f2         	adds	r3, #0xf2
  37bad6: 0045         	lsls	r5, r0, #0x1
  37bad8: 33d0         	adds	r3, #0xd0
  37bada: 0045         	lsls	r5, r0, #0x1
  37badc: 33aa         	adds	r3, #0xaa
  37bade: 0045         	lsls	r5, r0, #0x1
  37bae0: dc68         	bgt	0x37bbb4 <std::vector<char, std::allocator<char>>::size() const+0x10> @ imm = #0xd0
  37bae2: ffff 338a    	<unknown>
  37bae6: 0045         	lsls	r5, r0, #0x1
  37bae8: 3376         	adds	r3, #0x76
  37baea: 0045         	lsls	r5, r0, #0x1
  37baec: 3354         	adds	r3, #0x54
  37baee: 0045         	lsls	r5, r0, #0x1
  37baf0: 332e         	adds	r3, #0x2e
  37baf2: 0045         	lsls	r5, r0, #0x1
  37baf4: dc6c         	bgt	0x37bbd0 <std::vector<std::string, std::allocator<std::string>>::operator=(std::vector<std::string, std::allocator<std::string>> const&)+0x4> @ imm = #0xd8
  37baf6: ffff dc5c    	<unknown>
  37bafa: ffff 3296    	vrshr.u64	d19, d6, #0x1
  37bafe: 0045         	lsls	r5, r0, #0x1
  37bb00: 3278         	adds	r2, #0x78
  37bb02: 0045         	lsls	r5, r0, #0x1
  37bb04: 3254         	adds	r2, #0x54
  37bb06: 0045         	lsls	r5, r0, #0x1

// ==== NetworkManager::updateAlertHandler
//      file offset 0x37bb08 (= ELF address; Ghidra 0x38bb08), 26 bytes, Thumb-2
  37bb08: b500         	push	{lr}
  37bb0a: b085         	sub	sp, #0x14
  37bb0c: 9003         	str	r0, [sp, #0xc]
  37bb0e: 9102         	str	r1, [sp, #0x8]
  37bb10: 9201         	str	r2, [sp, #0x4]
  37bb12: 9b03         	ldr	r3, [sp, #0xc]
  37bb14: 2b01         	cmp	r3, #0x1
  37bb16: d101         	bne	0x37bb1c <NetworkManager::updateAlertHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x14> @ imm = #0x2
  37bb18: f0b0 fdcc    	bl	0x42c6b4 <ApplicationInterface::openMiniMilitiaLink()> @ imm = #0xb0b98
  37bb1c: b005         	add	sp, #0x14
  37bb1e: f85d fb04    	ldr	pc, [sp], #4
