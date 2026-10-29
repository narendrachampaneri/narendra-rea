// GPGSRealtimeMultiplayerManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 33 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GPGSRealtimeMultiplayerManager.cpp

// ==== GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager
//      file offset 0x3297a4 (= ELF address; Ghidra 0x3397a4), 176 bytes, Thumb-2
  3297a4: b510         	push	{r4, lr}
  3297a6: b082         	sub	sp, #0x8
  3297a8: 9001         	str	r0, [sp, #0x4]
  3297aa: 4c28         	ldr	r4, [pc, #0xa0]         @ 0x32984c <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0xa8>
  3297ac: 447c         	add	r4, pc
  3297ae: 9b01         	ldr	r3, [sp, #0x4]
  3297b0: 4618         	mov	r0, r3
  3297b2: f7ff ffa7    	bl	0x329704 <gpg::IRealTimeEventListener::IRealTimeEventListener()> @ imm = #-0xb2
  3297b6: 9b01         	ldr	r3, [sp, #0x4]
  3297b8: 4a25         	ldr	r2, [pc, #0x94]         @ 0x329850 <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0xac>
  3297ba: 58a2         	ldr	r2, [r4, r2]
  3297bc: 3208         	adds	r2, #0x8
  3297be: 601a         	str	r2, [r3]
  3297c0: 9b01         	ldr	r3, [sp, #0x4]
  3297c2: 3310         	adds	r3, #0x10
  3297c4: 4618         	mov	r0, r3
  3297c6: f08b f4f3    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x48b9e6
  3297ca: 9b01         	ldr	r3, [sp, #0x4]
  3297cc: 3314         	adds	r3, #0x14
  3297ce: 4618         	mov	r0, r3
  3297d0: f1e9 fe30    	bl	0x513434 <gpg::RealTimeRoom::RealTimeRoom()> @ imm = #0x1e9c60
  3297d4: 9b01         	ldr	r3, [sp, #0x4]
  3297d6: 2200         	movs	r2, #0x0
  3297d8: 61da         	str	r2, [r3, #0x1c]
  3297da: 9b01         	ldr	r3, [sp, #0x4]
  3297dc: 3320         	adds	r3, #0x20
  3297de: 4618         	mov	r0, r3
  3297e0: f002 fb9a    	bl	0x32bf18 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::map()> @ imm = #0x2734
  3297e4: 9b01         	ldr	r3, [sp, #0x4]
  3297e6: 3338         	adds	r3, #0x38
  3297e8: 4618         	mov	r0, r3
  3297ea: f002 fbc1    	bl	0x32bf70 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::map()> @ imm = #0x2782
  3297ee: 9b01         	ldr	r3, [sp, #0x4]
  3297f0: 2200         	movs	r2, #0x0
  3297f2: 651a         	str	r2, [r3, #0x50]
  3297f4: 9b01         	ldr	r3, [sp, #0x4]
  3297f6: 2200         	movs	r2, #0x0
  3297f8: 655a         	str	r2, [r3, #0x54]
  3297fa: 9b01         	ldr	r3, [sp, #0x4]
  3297fc: 3358         	adds	r3, #0x58
  3297fe: 4618         	mov	r0, r3
  329800: f002 fbe2    	bl	0x32bfc8 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::vector()> @ imm = #0x27c4
  329804: 9b01         	ldr	r3, [sp, #0x4]
  329806: e01d         	b	0x329844 <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0xa0> @ imm = #0x3a
  329808: 9b01         	ldr	r3, [sp, #0x4]
  32980a: 3338         	adds	r3, #0x38
  32980c: 4618         	mov	r0, r3
  32980e: f7ff ffbd    	bl	0x32978c <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::~map()> @ imm = #-0x86
  329812: e7ff         	b	0x329814 <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0x70> @ imm = #-0x2
  329814: 9b01         	ldr	r3, [sp, #0x4]
  329816: 3320         	adds	r3, #0x20
  329818: 4618         	mov	r0, r3
  32981a: f7ff ffab    	bl	0x329774 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::~map()> @ imm = #-0xaa
  32981e: e7ff         	b	0x329820 <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0x7c> @ imm = #-0x2
  329820: 9b01         	ldr	r3, [sp, #0x4]
  329822: 3314         	adds	r3, #0x14
  329824: 4618         	mov	r0, r3
  329826: f7ff ff99    	bl	0x32975c <gpg::RealTimeRoom::~RealTimeRoom()> @ imm = #-0xce
  32982a: e7ff         	b	0x32982c <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0x88> @ imm = #-0x2
  32982c: 9b01         	ldr	r3, [sp, #0x4]
  32982e: 3310         	adds	r3, #0x10
  329830: 4618         	mov	r0, r3
  329832: f08c f06f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48c0de
  329836: e7ff         	b	0x329838 <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()+0x94> @ imm = #-0x2
  329838: 9b01         	ldr	r3, [sp, #0x4]
  32983a: 4618         	mov	r0, r3
  32983c: f7ff ff0c    	bl	0x329658 <gpg::IRealTimeEventListener::~IRealTimeEventListener()> @ imm = #-0x1e8
  329840: f05e f434    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45e868
  329844: 4618         	mov	r0, r3
  329846: b002         	add	sp, #0x8
  329848: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x329849); words below are literal-pool data ---
  32984a: bf00         	nop
  32984c: 925c         	str	r2, [sp, #0x170]
  32984e: 0060         	lsls	r0, r4, #0x1
  329850: da6c         	bge	0x32992c <GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager()+0x6c> @ imm = #0xd8
  329852: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager
//      file offset 0x329854 (= ELF address; Ghidra 0x339854), 108 bytes, Thumb-2
  329854: b500         	push	{lr}
  329856: b083         	sub	sp, #0xc
  329858: 9001         	str	r0, [sp, #0x4]
  32985a: 4917         	ldr	r1, [pc, #0x5c]         @ 0x3298b8 <GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager()+0x64>
  32985c: 4479         	add	r1, pc
  32985e: 9b01         	ldr	r3, [sp, #0x4]
  329860: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3298bc <GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager()+0x68>
  329862: 588a         	ldr	r2, [r1, r2]
  329864: 3208         	adds	r2, #0x8
  329866: 601a         	str	r2, [r3]
  329868: 9b01         	ldr	r3, [sp, #0x4]
  32986a: 3358         	adds	r3, #0x58
  32986c: 4618         	mov	r0, r3
  32986e: f002 fbb7    	bl	0x32bfe0 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::~vector()> @ imm = #0x276e
  329872: 9b01         	ldr	r3, [sp, #0x4]
  329874: 3338         	adds	r3, #0x38
  329876: 4618         	mov	r0, r3
  329878: f7ff ff88    	bl	0x32978c <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::~map()> @ imm = #-0xf0
  32987c: 9b01         	ldr	r3, [sp, #0x4]
  32987e: 3320         	adds	r3, #0x20
  329880: 4618         	mov	r0, r3
  329882: f7ff ff77    	bl	0x329774 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::~map()> @ imm = #-0x112
  329886: 9b01         	ldr	r3, [sp, #0x4]
  329888: 3314         	adds	r3, #0x14
  32988a: 4618         	mov	r0, r3
  32988c: f7ff ff66    	bl	0x32975c <gpg::RealTimeRoom::~RealTimeRoom()> @ imm = #-0x134
  329890: 9b01         	ldr	r3, [sp, #0x4]
  329892: 3310         	adds	r3, #0x10
  329894: 4618         	mov	r0, r3
  329896: f08c f03d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48c07a
  32989a: 9b01         	ldr	r3, [sp, #0x4]
  32989c: 4618         	mov	r0, r3
  32989e: f7ff fedb    	bl	0x329658 <gpg::IRealTimeEventListener::~IRealTimeEventListener()> @ imm = #-0x24a
  3298a2: 2300         	movs	r3, #0x0
  3298a4: 2b00         	cmp	r3, #0x0
  3298a6: d002         	beq	0x3298ae <GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager()+0x5a> @ imm = #0x4
  3298a8: 9801         	ldr	r0, [sp, #0x4]
  3298aa: f05e f3fb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x45e7f6
  3298ae: 9b01         	ldr	r3, [sp, #0x4]
  3298b0: 4618         	mov	r0, r3
  3298b2: b003         	add	sp, #0xc
  3298b4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3298b7); words below are literal-pool data ---
  3298b8: 91ac         	str	r1, [sp, #0x2b0]
  3298ba: 0060         	lsls	r0, r4, #0x1
  3298bc: da6c         	bge	0x329998 <GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager()+0xd8> @ imm = #0xd8
  3298be: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager
//      file offset 0x3298c0 (= ELF address; Ghidra 0x3398c0), 28 bytes, Thumb-2
  3298c0: b500         	push	{lr}
  3298c2: b083         	sub	sp, #0xc
  3298c4: 9001         	str	r0, [sp, #0x4]
  3298c6: 9801         	ldr	r0, [sp, #0x4]
  3298c8: f7ff ffc4    	bl	0x329854 <GPGSRealtimeMultiplayerManager::~GPGSRealtimeMultiplayerManager()> @ imm = #-0x78
  3298cc: 9801         	ldr	r0, [sp, #0x4]
  3298ce: f05e f3e9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x45e7d2
  3298d2: 9b01         	ldr	r3, [sp, #0x4]
  3298d4: 4618         	mov	r0, r3
  3298d6: b003         	add	sp, #0xc
  3298d8: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::sharedInstance
//      file offset 0x32a618 (= ELF address; Ghidra 0x33a618), 80 bytes, Thumb-2
  32a618: b538         	push	{r3, r4, r5, lr}
  32a61a: 4c11         	ldr	r4, [pc, #0x44]         @ 0x32a660 <GPGSRealtimeMultiplayerManager::sharedInstance()+0x48>
  32a61c: 447c         	add	r4, pc
  32a61e: 4b11         	ldr	r3, [pc, #0x44]         @ 0x32a664 <GPGSRealtimeMultiplayerManager::sharedInstance()+0x4c>
  32a620: 58e3         	ldr	r3, [r4, r3]
  32a622: 681b         	ldr	r3, [r3]
  32a624: 2b00         	cmp	r3, #0x0
  32a626: d110         	bne	0x32a64a <GPGSRealtimeMultiplayerManager::sharedInstance()+0x32> @ imm = #0x20
  32a628: 2064         	movs	r0, #0x64
  32a62a: f05d f19b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x45d336
  32a62e: 4603         	mov	r3, r0
  32a630: 461d         	mov	r5, r3
  32a632: 4628         	mov	r0, r5
  32a634: f7ff f8b6    	bl	0x3297a4 <GPGSRealtimeMultiplayerManager::GPGSRealtimeMultiplayerManager()> @ imm = #-0xe94
  32a638: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x32a664 <GPGSRealtimeMultiplayerManager::sharedInstance()+0x4c>
  32a63a: 58e3         	ldr	r3, [r4, r3]
  32a63c: 601d         	str	r5, [r3]
  32a63e: 4b09         	ldr	r3, [pc, #0x24]         @ 0x32a664 <GPGSRealtimeMultiplayerManager::sharedInstance()+0x4c>
  32a640: 58e3         	ldr	r3, [r4, r3]
  32a642: 681b         	ldr	r3, [r3]
  32a644: 4618         	mov	r0, r3
  32a646: f000 f80f    	bl	0x32a668 <GPGSRealtimeMultiplayerManager::init()> @ imm = #0x1e
  32a64a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x32a664 <GPGSRealtimeMultiplayerManager::sharedInstance()+0x4c>
  32a64c: 58e3         	ldr	r3, [r4, r3]
  32a64e: 681b         	ldr	r3, [r3]
  32a650: e004         	b	0x32a65c <GPGSRealtimeMultiplayerManager::sharedInstance()+0x44> @ imm = #0x8
  32a652: 4628         	mov	r0, r5
  32a654: f05d f526    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x45da4c
  32a658: f05d f528    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45da50
  32a65c: 4618         	mov	r0, r3
  32a65e: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32a65f); words below are literal-pool data ---
  32a660: 83ec         	strh	r4, [r5, #0x1e]
  32a662: 0060         	lsls	r0, r4, #0x1
  32a664: da70         	bge	0x32a748 <std::shared_ptr<gpg::RealTimeRoomConfigImpl>::~shared_ptr()+0x4> @ imm = #0xe0
  32a666: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::init
//      file offset 0x32a668 (= ELF address; Ghidra 0x33a668), 76 bytes, Thumb-2
  32a668: b500         	push	{lr}
  32a66a: b083         	sub	sp, #0xc
  32a66c: 9001         	str	r0, [sp, #0x4]
  32a66e: 9b01         	ldr	r3, [sp, #0x4]
  32a670: 2200         	movs	r2, #0x0
  32a672: 731a         	strb	r2, [r3, #0xc]
  32a674: 9b01         	ldr	r3, [sp, #0x4]
  32a676: 2200         	movs	r2, #0x0
  32a678: 73da         	strb	r2, [r3, #0xf]
  32a67a: 9b01         	ldr	r3, [sp, #0x4]
  32a67c: 2200         	movs	r2, #0x0
  32a67e: 735a         	strb	r2, [r3, #0xd]
  32a680: 9b01         	ldr	r3, [sp, #0x4]
  32a682: 2201         	movs	r2, #0x1
  32a684: 739a         	strb	r2, [r3, #0xe]
  32a686: 9b01         	ldr	r3, [sp, #0x4]
  32a688: f04f 0200    	mov.w	r2, #0x0
  32a68c: 605a         	str	r2, [r3, #0x4]
  32a68e: 9b01         	ldr	r3, [sp, #0x4]
  32a690: f04f 0200    	mov.w	r2, #0x0
  32a694: 609a         	str	r2, [r3, #0x8]
  32a696: 9b01         	ldr	r3, [sp, #0x4]
  32a698: 3310         	adds	r3, #0x10
  32a69a: 4618         	mov	r0, r3
  32a69c: 4b04         	ldr	r3, [pc, #0x10]         @ 0x32a6b0 <GPGSRealtimeMultiplayerManager::init()+0x48>
  32a69e: 447b         	add	r3, pc
  32a6a0: 4619         	mov	r1, r3
  32a6a2: f08b f3e5    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x48b7ca
  32a6a6: 2301         	movs	r3, #0x1
  32a6a8: 4618         	mov	r0, r3
  32a6aa: b003         	add	sp, #0xc
  32a6ac: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x32a6af); words below are literal-pool data ---
  32a6b0: de02         	udf	#0x2
  32a6b2: 0049         	lsls	r1, r1, #0x1

// ==== GPGSRealtimeMultiplayerManager::isRoomValid
//      file offset 0x32a6b4 (= ELF address; Ghidra 0x33a6b4), 14 bytes, Thumb-2
  32a6b4: b082         	sub	sp, #0x8
  32a6b6: 9001         	str	r0, [sp, #0x4]
  32a6b8: 9b01         	ldr	r3, [sp, #0x4]
  32a6ba: 7b1b         	ldrb	r3, [r3, #0xc]
  32a6bc: 4618         	mov	r0, r3
  32a6be: b002         	add	sp, #0x8
  32a6c0: 4770         	bx	lr

// ==== GPGSRealtimeMultiplayerManager::canSearch
//      file offset 0x32a6c4 (= ELF address; Ghidra 0x33a6c4), 14 bytes, Thumb-2
  32a6c4: b082         	sub	sp, #0x8
  32a6c6: 9001         	str	r0, [sp, #0x4]
  32a6c8: 9b01         	ldr	r3, [sp, #0x4]
  32a6ca: 7b9b         	ldrb	r3, [r3, #0xe]
  32a6cc: 4618         	mov	r0, r3
  32a6ce: b002         	add	sp, #0x8
  32a6d0: 4770         	bx	lr

// ==== GPGSRealtimeMultiplayerManager::isPlayerSearchInProgress
//      file offset 0x32a6d4 (= ELF address; Ghidra 0x33a6d4), 14 bytes, Thumb-2
  32a6d4: b082         	sub	sp, #0x8
  32a6d6: 9001         	str	r0, [sp, #0x4]
  32a6d8: 9b01         	ldr	r3, [sp, #0x4]
  32a6da: 7b5b         	ldrb	r3, [r3, #0xd]
  32a6dc: 4618         	mov	r0, r3
  32a6de: b002         	add	sp, #0x8
  32a6e0: 4770         	bx	lr

// ==== GPGSRealtimeMultiplayerManager::isConnecting
//      file offset 0x32a6e4 (= ELF address; Ghidra 0x33a6e4), 68 bytes, Thumb-2
  32a6e4: b500         	push	{lr}
  32a6e6: b085         	sub	sp, #0x14
  32a6e8: 9001         	str	r0, [sp, #0x4]
  32a6ea: 9b01         	ldr	r3, [sp, #0x4]
  32a6ec: 3314         	adds	r3, #0x14
  32a6ee: 4618         	mov	r0, r3
  32a6f0: f1e8 fed2    	bl	0x513498 <gpg::RealTimeRoom::Valid() const> @ imm = #0x1e8da4
  32a6f4: 4603         	mov	r3, r0
  32a6f6: f083 0301    	eor	r3, r3, #0x1
  32a6fa: b2db         	uxtb	r3, r3
  32a6fc: 2b00         	cmp	r3, #0x0
  32a6fe: d001         	beq	0x32a704 <GPGSRealtimeMultiplayerManager::isConnecting()+0x20> @ imm = #0x2
  32a700: 2300         	movs	r3, #0x0
  32a702: e00d         	b	0x32a720 <GPGSRealtimeMultiplayerManager::isConnecting()+0x3c> @ imm = #0x1a
  32a704: 9b01         	ldr	r3, [sp, #0x4]
  32a706: 3314         	adds	r3, #0x14
  32a708: 4618         	mov	r0, r3
  32a70a: f1e8 ff21    	bl	0x513550 <gpg::RealTimeRoom::Status() const> @ imm = #0x1e8e42
  32a70e: 4603         	mov	r3, r0
  32a710: 2b02         	cmp	r3, #0x2
  32a712: bf14         	ite	ne
  32a714: 2300         	movne	r3, #0x0
  32a716: 2301         	moveq	r3, #0x1
  32a718: f88d 300f    	strb.w	r3, [sp, #0xf]
  32a71c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  32a720: 4618         	mov	r0, r3
  32a722: b005         	add	sp, #0x14
  32a724: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::inviteMatch
//      file offset 0x32a8f0 (= ELF address; Ghidra 0x33a8f0), 212 bytes, Thumb-2
  32a8f0: b5f0         	push	{r4, r5, r6, r7, lr}
  32a8f2: b091         	sub	sp, #0x44
  32a8f4: 9005         	str	r0, [sp, #0x14]
  32a8f6: 9104         	str	r1, [sp, #0x10]
  32a8f8: 9203         	str	r2, [sp, #0xc]
  32a8fa: 9302         	str	r3, [sp, #0x8]
  32a8fc: 4c2f         	ldr	r4, [pc, #0xbc]         @ 0x32a9bc <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xcc>
  32a8fe: 447c         	add	r4, pc
  32a900: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x32a9c0 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xd0>
  32a902: 58e3         	ldr	r3, [r4, r3]
  32a904: 681b         	ldr	r3, [r3]
  32a906: 930f         	str	r3, [sp, #0x3c]
  32a908: f008 f888    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #0x8110
  32a90c: 4603         	mov	r3, r0
  32a90e: f083 0301    	eor	r3, r3, #0x1
  32a912: b2db         	uxtb	r3, r3
  32a914: 2b00         	cmp	r3, #0x0
  32a916: d001         	beq	0x32a91c <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0x2c> @ imm = #0x2
  32a918: 2300         	movs	r3, #0x0
  32a91a: e03d         	b	0x32a998 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xa8> @ imm = #0x7a
  32a91c: 9805         	ldr	r0, [sp, #0x14]
  32a91e: f7ff fec9    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0x26e
  32a922: 4603         	mov	r3, r0
  32a924: 2b00         	cmp	r3, #0x0
  32a926: d001         	beq	0x32a92c <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0x3c> @ imm = #0x2
  32a928: 2300         	movs	r3, #0x0
  32a92a: e035         	b	0x32a998 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xa8> @ imm = #0x6a
  32a92c: 9b05         	ldr	r3, [sp, #0x14]
  32a92e: 2201         	movs	r2, #0x1
  32a930: 735a         	strb	r2, [r3, #0xd]
  32a932: 9b05         	ldr	r3, [sp, #0x14]
  32a934: 2200         	movs	r2, #0x0
  32a936: 739a         	strb	r2, [r3, #0xe]
  32a938: 9b05         	ldr	r3, [sp, #0x14]
  32a93a: f04f 0200    	mov.w	r2, #0x0
  32a93e: 605a         	str	r2, [r3, #0x4]
  32a940: 9b05         	ldr	r3, [sp, #0x14]
  32a942: f04f 0200    	mov.w	r2, #0x0
  32a946: 609a         	str	r2, [r3, #0x8]
  32a948: f008 f84c    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x8098
  32a94c: 4603         	mov	r3, r0
  32a94e: 9307         	str	r3, [sp, #0x1c]
  32a950: 9b07         	ldr	r3, [sp, #0x1c]
  32a952: 2b00         	cmp	r3, #0x0
  32a954: d101         	bne	0x32a95a <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0x6a> @ imm = #0x2
  32a956: 2300         	movs	r3, #0x0
  32a958: e01e         	b	0x32a998 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xa8> @ imm = #0x3c
  32a95a: 9807         	ldr	r0, [sp, #0x1c]
  32a95c: f1d5 f9cd    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d539a
  32a960: 4607         	mov	r7, r0
  32a962: 9e04         	ldr	r6, [sp, #0x10]
  32a964: 9d03         	ldr	r5, [sp, #0xc]
  32a966: 9b05         	ldr	r3, [sp, #0x14]
  32a968: 9308         	str	r3, [sp, #0x20]
  32a96a: 9b04         	ldr	r3, [sp, #0x10]
  32a96c: 9309         	str	r3, [sp, #0x24]
  32a96e: 9b02         	ldr	r3, [sp, #0x8]
  32a970: 930a         	str	r3, [sp, #0x28]
  32a972: ab0b         	add	r3, sp, #0x2c
  32a974: 4618         	mov	r0, r3
  32a976: ab08         	add	r3, sp, #0x20
  32a978: cb0e         	ldm	r3, {r1, r2, r3}
  32a97a: f001 fb63    	bl	0x32c044 <std::_Maybe_unary_or_binary_function<void, gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x16c6
  32a97e: ab0b         	add	r3, sp, #0x2c
  32a980: 9300         	str	r3, [sp]
  32a982: 4638         	mov	r0, r7
  32a984: 4631         	mov	r1, r6
  32a986: 462a         	mov	r2, r5
  32a988: 2301         	movs	r3, #0x1
  32a98a: f1e6 fee3    	bl	0x511754 <gpg::RealTimeMultiplayerManager::ShowPlayerSelectUI(unsigned int, unsigned int, bool, std::function<void (gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse const&)>)> @ imm = #0x1e6dc6
  32a98e: ab0b         	add	r3, sp, #0x2c
  32a990: 4618         	mov	r0, r3
  32a992: f7ff ffa1    	bl	0x32a8d8 <std::function<void (gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse const&)>::~function()> @ imm = #-0xbe
  32a996: 2301         	movs	r3, #0x1
  32a998: 4618         	mov	r0, r3
  32a99a: 4b09         	ldr	r3, [pc, #0x24]         @ 0x32a9c0 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xd0>
  32a99c: 58e3         	ldr	r3, [r4, r3]
  32a99e: 9a0f         	ldr	r2, [sp, #0x3c]
  32a9a0: 681b         	ldr	r3, [r3]
  32a9a2: 429a         	cmp	r2, r3
  32a9a4: d008         	beq	0x32a9b8 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xc8> @ imm = #0x10
  32a9a6: e005         	b	0x32a9b4 <GPGSRealtimeMultiplayerManager::inviteMatch(int, int, int)+0xc4> @ imm = #0xa
  32a9a8: ab0b         	add	r3, sp, #0x2c
  32a9aa: 4618         	mov	r0, r3
  32a9ac: f7ff ff94    	bl	0x32a8d8 <std::function<void (gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse const&)>::~function()> @ imm = #-0xd8
  32a9b0: f05d f37c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d6f8
  32a9b4: f7ab ead8    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x54a50
  32a9b8: b011         	add	sp, #0x44
  32a9ba: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x32a9bb); words below are literal-pool data ---
  32a9bc: 810a         	strh	r2, [r1, #0x8]
  32a9be: 0060         	lsls	r0, r4, #0x1
  32a9c0: d72c         	bvc	0x32aa1c <std::function<void (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>::~function()+0x8> @ imm = #0x58
  32a9c2: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::quickMatch
//      file offset 0x32aa2c (= ELF address; Ghidra 0x33aa2c), 304 bytes, Thumb-2
  32aa2c: b570         	push	{r4, r5, r6, lr}
  32aa2e: b08e         	sub	sp, #0x38
  32aa30: 9003         	str	r0, [sp, #0xc]
  32aa32: 9102         	str	r1, [sp, #0x8]
  32aa34: 9201         	str	r2, [sp, #0x4]
  32aa36: 9300         	str	r3, [sp]
  32aa38: 4d46         	ldr	r5, [pc, #0x118]        @ 0x32ab54 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x128>
  32aa3a: 447d         	add	r5, pc
  32aa3c: 4b46         	ldr	r3, [pc, #0x118]        @ 0x32ab58 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x12c>
  32aa3e: 58eb         	ldr	r3, [r5, r3]
  32aa40: 681b         	ldr	r3, [r3]
  32aa42: 930d         	str	r3, [sp, #0x34]
  32aa44: f007 ffea    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #0x7fd4
  32aa48: 4603         	mov	r3, r0
  32aa4a: f083 0301    	eor	r3, r3, #0x1
  32aa4e: b2db         	uxtb	r3, r3
  32aa50: 2b00         	cmp	r3, #0x0
  32aa52: d001         	beq	0x32aa58 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x2c> @ imm = #0x2
  32aa54: 2400         	movs	r4, #0x0
  32aa56: e05e         	b	0x32ab16 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0xea> @ imm = #0xbc
  32aa58: 9803         	ldr	r0, [sp, #0xc]
  32aa5a: f7ff fe2b    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0x3aa
  32aa5e: 4603         	mov	r3, r0
  32aa60: 2b00         	cmp	r3, #0x0
  32aa62: d001         	beq	0x32aa68 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x3c> @ imm = #0x2
  32aa64: 2400         	movs	r4, #0x0
  32aa66: e056         	b	0x32ab16 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0xea> @ imm = #0xac
  32aa68: 9b03         	ldr	r3, [sp, #0xc]
  32aa6a: 2201         	movs	r2, #0x1
  32aa6c: 735a         	strb	r2, [r3, #0xd]
  32aa6e: 9b03         	ldr	r3, [sp, #0xc]
  32aa70: 2200         	movs	r2, #0x0
  32aa72: 739a         	strb	r2, [r3, #0xe]
  32aa74: 9b03         	ldr	r3, [sp, #0xc]
  32aa76: f04f 0200    	mov.w	r2, #0x0
  32aa7a: 605a         	str	r2, [r3, #0x4]
  32aa7c: 9b03         	ldr	r3, [sp, #0xc]
  32aa7e: f04f 0200    	mov.w	r2, #0x0
  32aa82: 609a         	str	r2, [r3, #0x8]
  32aa84: ab07         	add	r3, sp, #0x1c
  32aa86: 4618         	mov	r0, r3
  32aa88: f1e8 ffea    	bl	0x513a60 <gpg::RealTimeRoomConfig::Builder::Builder()> @ imm = #0x1e8fd4
  32aa8c: 9b02         	ldr	r3, [sp, #0x8]
  32aa8e: aa07         	add	r2, sp, #0x1c
  32aa90: 4610         	mov	r0, r2
  32aa92: 4619         	mov	r1, r3
  32aa94: f1e8 ffa4    	bl	0x5139e0 <gpg::RealTimeRoomConfig::Builder::SetMinimumAutomatchingPlayers(unsigned int)> @ imm = #0x1e8f48
  32aa98: 4602         	mov	r2, r0
  32aa9a: 9b01         	ldr	r3, [sp, #0x4]
  32aa9c: 4610         	mov	r0, r2
  32aa9e: 4619         	mov	r1, r3
  32aaa0: f1e8 ffa1    	bl	0x5139e6 <gpg::RealTimeRoomConfig::Builder::SetMaximumAutomatchingPlayers(unsigned int)> @ imm = #0x1e8f42
  32aaa4: 4602         	mov	r2, r0
  32aaa6: 9b00         	ldr	r3, [sp]
  32aaa8: 4610         	mov	r0, r2
  32aaaa: 4619         	mov	r1, r3
  32aaac: f1e8 ff9e    	bl	0x5139ec <gpg::RealTimeRoomConfig::Builder::SetVariant(unsigned int)> @ imm = #0x1e8f3c
  32aab0: 4603         	mov	r3, r0
  32aab2: aa05         	add	r2, sp, #0x14
  32aab4: 4610         	mov	r0, r2
  32aab6: 4619         	mov	r1, r3
  32aab8: f1e9 f99e    	bl	0x513df8 <gpg::RealTimeRoomConfig::Builder::Create() const> @ imm = #0x1e933c
  32aabc: ab07         	add	r3, sp, #0x1c
  32aabe: 4618         	mov	r0, r3
  32aac0: f7ff fe4c    	bl	0x32a75c <gpg::RealTimeRoomConfig::Builder::~Builder()> @ imm = #-0x368
  32aac4: f007 ff8e    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x7f1c
  32aac8: 4603         	mov	r3, r0
  32aaca: 9304         	str	r3, [sp, #0x10]
  32aacc: 9b04         	ldr	r3, [sp, #0x10]
  32aace: 2b00         	cmp	r3, #0x0
  32aad0: d101         	bne	0x32aad6 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0xaa> @ imm = #0x2
  32aad2: 2400         	movs	r4, #0x0
  32aad4: e01b         	b	0x32ab0e <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0xe2> @ imm = #0x36
  32aad6: 9804         	ldr	r0, [sp, #0x10]
  32aad8: f1d5 f90f    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d521e
  32aadc: 4606         	mov	r6, r0
  32aade: 9c03         	ldr	r4, [sp, #0xc]
  32aae0: 9b03         	ldr	r3, [sp, #0xc]
  32aae2: 9307         	str	r3, [sp, #0x1c]
  32aae4: 9b02         	ldr	r3, [sp, #0x8]
  32aae6: 9308         	str	r3, [sp, #0x20]
  32aae8: ab09         	add	r3, sp, #0x24
  32aaea: 4618         	mov	r0, r3
  32aaec: ab07         	add	r3, sp, #0x1c
  32aaee: e893 0006    	ldm.w	r3, {r1, r2}
  32aaf2: f001 faf5    	bl	0x32c0e0 <std::_Maybe_unary_or_binary_function<void, gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x15ea
  32aaf6: aa05         	add	r2, sp, #0x14
  32aaf8: ab09         	add	r3, sp, #0x24
  32aafa: 4630         	mov	r0, r6
  32aafc: 4611         	mov	r1, r2
  32aafe: 4622         	mov	r2, r4
  32ab00: f1e6 fd56    	bl	0x5115b0 <gpg::RealTimeMultiplayerManager::CreateRealTimeRoom(gpg::RealTimeRoomConfig const&, gpg::IRealTimeEventListener*, std::function<void (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>)> @ imm = #0x1e6aac
  32ab04: ab09         	add	r3, sp, #0x24
  32ab06: 4618         	mov	r0, r3
  32ab08: f7ff ff84    	bl	0x32aa14 <std::function<void (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>::~function()> @ imm = #-0xf8
  32ab0c: 2401         	movs	r4, #0x1
  32ab0e: ab05         	add	r3, sp, #0x14
  32ab10: 4618         	mov	r0, r3
  32ab12: f7ff fe49    	bl	0x32a7a8 <gpg::RealTimeRoomConfig::~RealTimeRoomConfig()> @ imm = #-0x36e
  32ab16: 4623         	mov	r3, r4
  32ab18: 4618         	mov	r0, r3
  32ab1a: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x32ab58 <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x12c>
  32ab1c: 58eb         	ldr	r3, [r5, r3]
  32ab1e: 9a0d         	ldr	r2, [sp, #0x34]
  32ab20: 681b         	ldr	r3, [r3]
  32ab22: 429a         	cmp	r2, r3
  32ab24: d013         	beq	0x32ab4e <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x122> @ imm = #0x26
  32ab26: e010         	b	0x32ab4a <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x11e> @ imm = #0x20
  32ab28: ab07         	add	r3, sp, #0x1c
  32ab2a: 4618         	mov	r0, r3
  32ab2c: f7ff fe16    	bl	0x32a75c <gpg::RealTimeRoomConfig::Builder::~Builder()> @ imm = #-0x3d4
  32ab30: f05d f2bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d578
  32ab34: ab09         	add	r3, sp, #0x24
  32ab36: 4618         	mov	r0, r3
  32ab38: f7ff ff6c    	bl	0x32aa14 <std::function<void (gpg::RealTimeMultiplayerManager::RealTimeRoomResponse const&)>::~function()> @ imm = #-0x128
  32ab3c: e7ff         	b	0x32ab3e <GPGSRealtimeMultiplayerManager::quickMatch(int, int, int)+0x112> @ imm = #-0x2
  32ab3e: ab05         	add	r3, sp, #0x14
  32ab40: 4618         	mov	r0, r3
  32ab42: f7ff fe31    	bl	0x32a7a8 <gpg::RealTimeRoomConfig::~RealTimeRoomConfig()> @ imm = #-0x39e
  32ab46: f05d f2b1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d562
  32ab4a: f7ab ea0e    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x54be4
  32ab4e: b00e         	add	sp, #0x38
  32ab50: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x32ab51); words below are literal-pool data ---
  32ab52: bf00         	nop
  32ab54: 7fce         	ldrb	r6, [r1, #0x1f]
  32ab56: 0060         	lsls	r0, r4, #0x1
  32ab58: d72c         	bvc	0x32abb4 <GPGSEventObject::GPGSEventObject()+0x58> @ imm = #0x58
  32ab5a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame
//      file offset 0x32ac58 (= ELF address; Ghidra 0x33ac58), 368 bytes, Thumb-2
  32ac58: b5f0         	push	{r4, r5, r6, r7, lr}
  32ac5a: b091         	sub	sp, #0x44
  32ac5c: 9003         	str	r0, [sp, #0xc]
  32ac5e: 9102         	str	r1, [sp, #0x8]
  32ac60: 4613         	mov	r3, r2
  32ac62: f88d 3007    	strb.w	r3, [sp, #0x7]
  32ac66: 4c56         	ldr	r4, [pc, #0x158]        @ 0x32adc0 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x168>
  32ac68: 447c         	add	r4, pc
  32ac6a: 4b56         	ldr	r3, [pc, #0x158]        @ 0x32adc4 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x16c>
  32ac6c: 58e3         	ldr	r3, [r4, r3]
  32ac6e: 681b         	ldr	r3, [r3]
  32ac70: 930f         	str	r3, [sp, #0x3c]
  32ac72: 9b03         	ldr	r3, [sp, #0xc]
  32ac74: 3314         	adds	r3, #0x14
  32ac76: aa06         	add	r2, sp, #0x18
  32ac78: 4610         	mov	r0, r2
  32ac7a: 4619         	mov	r1, r3
  32ac7c: f1e8 fc40    	bl	0x513500 <gpg::RealTimeRoom::CreatingParticipant() const> @ imm = #0x1e8880
  32ac80: 9b03         	ldr	r3, [sp, #0xc]
  32ac82: f103 0510    	add.w	r5, r3, #0x10
  32ac86: ab06         	add	r3, sp, #0x18
  32ac88: 4618         	mov	r0, r3
  32ac8a: f1dc f9d1    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1dc3a2
  32ac8e: 4603         	mov	r3, r0
  32ac90: 4628         	mov	r0, r5
  32ac92: 4619         	mov	r1, r3
  32ac94: f08b f48e    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b91c
  32ac98: ab08         	add	r3, sp, #0x20
  32ac9a: 4618         	mov	r0, r3
  32ac9c: f7ff ff5e    	bl	0x32ab5c <GPGSEventObject::GPGSEventObject()> @ imm = #-0x144
  32aca0: 2301         	movs	r3, #0x1
  32aca2: 9308         	str	r3, [sp, #0x20]
  32aca4: ab06         	add	r3, sp, #0x18
  32aca6: 4618         	mov	r0, r3
  32aca8: f1dc f9c2    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1dc384
  32acac: 4603         	mov	r3, r0
  32acae: aa08         	add	r2, sp, #0x20
  32acb0: 3204         	adds	r2, #0x4
  32acb2: 4610         	mov	r0, r2
  32acb4: 4619         	mov	r1, r3
  32acb6: f08b f47d    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b8fa
  32acba: ab06         	add	r3, sp, #0x18
  32acbc: 4618         	mov	r0, r3
  32acbe: f1dc f9cb    	bl	0x507058 <gpg::MultiplayerParticipant::DisplayName() const> @ imm = #0x1dc396
  32acc2: 4603         	mov	r3, r0
  32acc4: aa08         	add	r2, sp, #0x20
  32acc6: 3208         	adds	r2, #0x8
  32acc8: 4610         	mov	r0, r2
  32acca: 4619         	mov	r1, r3
  32accc: f08b f472    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b8e4
  32acd0: 9b03         	ldr	r3, [sp, #0xc]
  32acd2: 3354         	adds	r3, #0x54
  32acd4: 4618         	mov	r0, r3
  32acd6: f7fe fc87    	bl	0x3295e8 <std::mutex::lock()> @ imm = #-0x16f2
  32acda: 9b03         	ldr	r3, [sp, #0xc]
  32acdc: f103 0258    	add.w	r2, r3, #0x58
  32ace0: ab08         	add	r3, sp, #0x20
  32ace2: 4610         	mov	r0, r2
  32ace4: 4619         	mov	r1, r3
  32ace6: f001 fa37    	bl	0x32c158 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::push_back(GPGSEventObject const&)> @ imm = #0x146e
  32acea: 9b03         	ldr	r3, [sp, #0xc]
  32acec: 3354         	adds	r3, #0x54
  32acee: 4618         	mov	r0, r3
  32acf0: f7fe fc8c    	bl	0x32960c <std::mutex::unlock()> @ imm = #-0x16e8
  32acf4: 9b03         	ldr	r3, [sp, #0xc]
  32acf6: f103 0538    	add.w	r5, r3, #0x38
  32acfa: ab06         	add	r3, sp, #0x18
  32acfc: 4618         	mov	r0, r3
  32acfe: f1dc f997    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1dc32e
  32ad02: 4603         	mov	r3, r0
  32ad04: 4628         	mov	r0, r5
  32ad06: 4619         	mov	r1, r3
  32ad08: f001 fab4    	bl	0x32c274 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::operator[](std::string const&)> @ imm = #0x1568
  32ad0c: 4605         	mov	r5, r0
  32ad0e: ab06         	add	r3, sp, #0x18
  32ad10: 4618         	mov	r0, r3
  32ad12: f1dc fa0d    	bl	0x507130 <gpg::MultiplayerParticipant::Status() const> @ imm = #0x1dc41a
  32ad16: 4603         	mov	r3, r0
  32ad18: 602b         	str	r3, [r5]
  32ad1a: f89d 3007    	ldrb.w	r3, [sp, #0x7]
  32ad1e: 2b00         	cmp	r3, #0x0
  32ad20: d020         	beq	0x32ad64 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x10c> @ imm = #0x40
  32ad22: f007 fe5f    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x7cbe
  32ad26: 4603         	mov	r3, r0
  32ad28: 9305         	str	r3, [sp, #0x14]
  32ad2a: 9b05         	ldr	r3, [sp, #0x14]
  32ad2c: 2b00         	cmp	r3, #0x0
  32ad2e: d101         	bne	0x32ad34 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0xdc> @ imm = #0x2
  32ad30: 2500         	movs	r5, #0x0
  32ad32: e018         	b	0x32ad66 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x10e> @ imm = #0x30
  32ad34: 9805         	ldr	r0, [sp, #0x14]
  32ad36: f1d4 ffe0    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d4fc0
  32ad3a: 4607         	mov	r7, r0
  32ad3c: 9b03         	ldr	r3, [sp, #0xc]
  32ad3e: f103 0614    	add.w	r6, r3, #0x14
  32ad42: 9d02         	ldr	r5, [sp, #0x8]
  32ad44: 9b03         	ldr	r3, [sp, #0xc]
  32ad46: aa0b         	add	r2, sp, #0x2c
  32ad48: 4610         	mov	r0, r2
  32ad4a: 4619         	mov	r1, r3
  32ad4c: f001 fb06    	bl	0x32c35c <std::_Maybe_unary_or_binary_function<void, gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x160c
  32ad50: ab0b         	add	r3, sp, #0x2c
  32ad52: 4638         	mov	r0, r7
  32ad54: 4631         	mov	r1, r6
  32ad56: 462a         	mov	r2, r5
  32ad58: f1e6 fa74    	bl	0x511244 <gpg::RealTimeMultiplayerManager::ShowWaitingRoomUI(gpg::RealTimeRoom const&, unsigned int, std::function<void (gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse const&)>)> @ imm = #0x1e64e8
  32ad5c: ab0b         	add	r3, sp, #0x2c
  32ad5e: 4618         	mov	r0, r3
  32ad60: f7ff ff6e    	bl	0x32ac40 <std::function<void (gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse const&)>::~function()> @ imm = #-0x124
  32ad64: 2501         	movs	r5, #0x1
  32ad66: ab08         	add	r3, sp, #0x20
  32ad68: 4618         	mov	r0, r3
  32ad6a: f7ff ff3d    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0x186
  32ad6e: 2d01         	cmp	r5, #0x1
  32ad70: d001         	beq	0x32ad76 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x11e> @ imm = #0x2
  32ad72: 2500         	movs	r5, #0x0
  32ad74: e001         	b	0x32ad7a <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x122> @ imm = #0x2
  32ad76: bf00         	nop
  32ad78: 2501         	movs	r5, #0x1
  32ad7a: ab06         	add	r3, sp, #0x18
  32ad7c: 4618         	mov	r0, r3
  32ad7e: f1dc fa3b    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dc476
  32ad82: 2d01         	cmp	r5, #0x1
  32ad84: d000         	beq	0x32ad88 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x130> @ imm = #0x0
  32ad86: e011         	b	0x32adac <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x154> @ imm = #0x22
  32ad88: bf00         	nop
  32ad8a: e00f         	b	0x32adac <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x154> @ imm = #0x1e
  32ad8c: ab0b         	add	r3, sp, #0x2c
  32ad8e: 4618         	mov	r0, r3
  32ad90: f7ff ff56    	bl	0x32ac40 <std::function<void (gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse const&)>::~function()> @ imm = #-0x154
  32ad94: e7ff         	b	0x32ad96 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x13e> @ imm = #-0x2
  32ad96: ab08         	add	r3, sp, #0x20
  32ad98: 4618         	mov	r0, r3
  32ad9a: f7ff ff25    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0x1b6
  32ad9e: e7ff         	b	0x32ada0 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x148> @ imm = #-0x2
  32ada0: ab06         	add	r3, sp, #0x18
  32ada2: 4618         	mov	r0, r3
  32ada4: f1dc fa28    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dc450
  32ada8: f05d f180    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d300
  32adac: 4b05         	ldr	r3, [pc, #0x14]         @ 0x32adc4 <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x16c>
  32adae: 58e3         	ldr	r3, [r4, r3]
  32adb0: 9a0f         	ldr	r2, [sp, #0x3c]
  32adb2: 681b         	ldr	r3, [r3]
  32adb4: 429a         	cmp	r2, r3
  32adb6: d001         	beq	0x32adbc <GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame(int, bool)+0x164> @ imm = #0x2
  32adb8: f7ab e8d6    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x54e54
  32adbc: b011         	add	sp, #0x44
  32adbe: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x32adbf); words below are literal-pool data ---
  32adc0: 7da0         	ldrb	r0, [r4, #0x16]
  32adc2: 0060         	lsls	r0, r4, #0x1
  32adc4: d72c         	bvc	0x32ae20 <GPGSRealtimeMultiplayerManager::getRoomCount()+0x50> @ imm = #0x58
  32adc6: ffff b082    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::playGame
//      file offset 0x32adc8 (= ELF address; Ghidra 0x33adc8), 8 bytes, Thumb-2
  32adc8: b082         	sub	sp, #0x8
  32adca: 9001         	str	r0, [sp, #0x4]
  32adcc: b002         	add	sp, #0x8
  32adce: 4770         	bx	lr

// ==== GPGSRealtimeMultiplayerManager::getRoomCount
//      file offset 0x32add0 (= ELF address; Ghidra 0x33add0), 190 bytes, Thumb-2
  32add0: b510         	push	{r4, lr}
  32add2: b08c         	sub	sp, #0x30
  32add4: 9001         	str	r0, [sp, #0x4]
  32add6: 9801         	ldr	r0, [sp, #0x4]
  32add8: f7ff fc6c    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0x728
  32addc: 4603         	mov	r3, r0
  32adde: 2b00         	cmp	r3, #0x0
  32ade0: d044         	beq	0x32ae6c <GPGSRealtimeMultiplayerManager::getRoomCount()+0x9c> @ imm = #0x88
  32ade2: 9b01         	ldr	r3, [sp, #0x4]
  32ade4: 3314         	adds	r3, #0x14
  32ade6: aa09         	add	r2, sp, #0x24
  32ade8: 4610         	mov	r0, r2
  32adea: 4619         	mov	r1, r3
  32adec: f1e8 fc60    	bl	0x5136b0 <gpg::RealTimeRoom::Participants() const> @ imm = #0x1e88c0
  32adf0: 2300         	movs	r3, #0x0
  32adf2: 9305         	str	r3, [sp, #0x14]
  32adf4: ab09         	add	r3, sp, #0x24
  32adf6: 9306         	str	r3, [sp, #0x18]
  32adf8: 9806         	ldr	r0, [sp, #0x18]
  32adfa: f001 fb03    	bl	0x32c404 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin()> @ imm = #0x1606
  32adfe: 4603         	mov	r3, r0
  32ae00: 9303         	str	r3, [sp, #0xc]
  32ae02: 9806         	ldr	r0, [sp, #0x18]
  32ae04: f001 fb0c    	bl	0x32c420 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end()> @ imm = #0x1618
  32ae08: 4603         	mov	r3, r0
  32ae0a: 9304         	str	r3, [sp, #0x10]
  32ae0c: e01e         	b	0x32ae4c <GPGSRealtimeMultiplayerManager::getRoomCount()+0x7c> @ imm = #0x3c
  32ae0e: ab03         	add	r3, sp, #0xc
  32ae10: 4618         	mov	r0, r3
  32ae12: f001 fb37    	bl	0x32c484 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #0x166e
  32ae16: 4603         	mov	r3, r0
  32ae18: aa07         	add	r2, sp, #0x1c
  32ae1a: 4610         	mov	r0, r2
  32ae1c: 4619         	mov	r1, r3
  32ae1e: f1dc f8e5    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0x1dc1ca
  32ae22: ab07         	add	r3, sp, #0x1c
  32ae24: 4618         	mov	r0, r3
  32ae26: f1dc f9d3    	bl	0x5071d0 <gpg::MultiplayerParticipant::IsConnectedToRoom() const> @ imm = #0x1dc3a6
  32ae2a: 4603         	mov	r3, r0
  32ae2c: f083 0301    	eor	r3, r3, #0x1
  32ae30: b2db         	uxtb	r3, r3
  32ae32: 2b00         	cmp	r3, #0x0
  32ae34: d002         	beq	0x32ae3c <GPGSRealtimeMultiplayerManager::getRoomCount()+0x6c> @ imm = #0x4
  32ae36: 9b05         	ldr	r3, [sp, #0x14]
  32ae38: 3301         	adds	r3, #0x1
  32ae3a: 9305         	str	r3, [sp, #0x14]
  32ae3c: ab07         	add	r3, sp, #0x1c
  32ae3e: 4618         	mov	r0, r3
  32ae40: f1dc f9da    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dc3b4
  32ae44: ab03         	add	r3, sp, #0xc
  32ae46: 4618         	mov	r0, r3
  32ae48: f001 fb10    	bl	0x32c46c <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #0x1620
  32ae4c: aa03         	add	r2, sp, #0xc
  32ae4e: ab04         	add	r3, sp, #0x10
  32ae50: 4610         	mov	r0, r2
  32ae52: 4619         	mov	r1, r3
  32ae54: f001 faf4    	bl	0x32c440 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #0x15e8
  32ae58: 4603         	mov	r3, r0
  32ae5a: 2b00         	cmp	r3, #0x0
  32ae5c: d1d7         	bne	0x32ae0e <GPGSRealtimeMultiplayerManager::getRoomCount()+0x3e> @ imm = #-0x52
  32ae5e: 9b05         	ldr	r3, [sp, #0x14]
  32ae60: 1e5c         	subs	r4, r3, #0x1
  32ae62: ab09         	add	r3, sp, #0x24
  32ae64: 4618         	mov	r0, r3
  32ae66: f001 faad    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x155a
  32ae6a: e000         	b	0x32ae6e <GPGSRealtimeMultiplayerManager::getRoomCount()+0x9e> @ imm = #0x0
  32ae6c: 2400         	movs	r4, #0x0
  32ae6e: 4623         	mov	r3, r4
  32ae70: e00a         	b	0x32ae88 <GPGSRealtimeMultiplayerManager::getRoomCount()+0xb8> @ imm = #0x14
  32ae72: ab07         	add	r3, sp, #0x1c
  32ae74: 4618         	mov	r0, r3
  32ae76: f1dc f9bf    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dc37e
  32ae7a: e7ff         	b	0x32ae7c <GPGSRealtimeMultiplayerManager::getRoomCount()+0xac> @ imm = #-0x2
  32ae7c: ab09         	add	r3, sp, #0x24
  32ae7e: 4618         	mov	r0, r3
  32ae80: f001 faa0    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x1540
  32ae84: f05d f112    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d224
  32ae88: 4618         	mov	r0, r3
  32ae8a: b00c         	add	sp, #0x30
  32ae8c: bd10         	pop	{r4, pc}

// ==== GPGSRealtimeMultiplayerManager::getRoomParticipants
//      file offset 0x32ae98 (= ELF address; Ghidra 0x33ae98), 78 bytes, Thumb-2
  32ae98: b500         	push	{lr}
  32ae9a: b087         	sub	sp, #0x1c
  32ae9c: 9001         	str	r0, [sp, #0x4]
  32ae9e: 9100         	str	r1, [sp]
  32aea0: 9801         	ldr	r0, [sp, #0x4]
  32aea2: f001 faf7    	bl	0x32c494 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::vector()> @ imm = #0x15ee
  32aea6: 9800         	ldr	r0, [sp]
  32aea8: f7ff fc04    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0x7f8
  32aeac: 4603         	mov	r3, r0
  32aeae: 2b00         	cmp	r3, #0x0
  32aeb0: d00f         	beq	0x32aed2 <GPGSRealtimeMultiplayerManager::getRoomParticipants()+0x3a> @ imm = #0x1e
  32aeb2: 9b00         	ldr	r3, [sp]
  32aeb4: 3314         	adds	r3, #0x14
  32aeb6: aa03         	add	r2, sp, #0xc
  32aeb8: 4610         	mov	r0, r2
  32aeba: 4619         	mov	r1, r3
  32aebc: f1e8 fbf8    	bl	0x5136b0 <gpg::RealTimeRoom::Participants() const> @ imm = #0x1e87f0
  32aec0: ab03         	add	r3, sp, #0xc
  32aec2: 9801         	ldr	r0, [sp, #0x4]
  32aec4: 4619         	mov	r1, r3
  32aec6: f001 faf1    	bl	0x32c4ac <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::operator=(std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>&&)> @ imm = #0x15e2
  32aeca: ab03         	add	r3, sp, #0xc
  32aecc: 4618         	mov	r0, r3
  32aece: f001 fa79    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x14f2
  32aed2: e004         	b	0x32aede <GPGSRealtimeMultiplayerManager::getRoomParticipants()+0x46> @ imm = #0x8
  32aed4: 9801         	ldr	r0, [sp, #0x4]
  32aed6: f001 fa75    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x14ea
  32aeda: f05d f0e7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d1ce
  32aede: 9801         	ldr	r0, [sp, #0x4]
  32aee0: b007         	add	sp, #0x1c
  32aee2: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::disconnect
//      file offset 0x32aee8 (= ELF address; Ghidra 0x33aee8), 84 bytes, Thumb-2
  32aee8: b500         	push	{lr}
  32aeea: b083         	sub	sp, #0xc
  32aeec: 9001         	str	r0, [sp, #0x4]
  32aeee: 9b01         	ldr	r3, [sp, #0x4]
  32aef0: 3314         	adds	r3, #0x14
  32aef2: 4618         	mov	r0, r3
  32aef4: f1e8 fad0    	bl	0x513498 <gpg::RealTimeRoom::Valid() const> @ imm = #0x1e85a0
  32aef8: 4603         	mov	r3, r0
  32aefa: 2b00         	cmp	r3, #0x0
  32aefc: d002         	beq	0x32af04 <GPGSRealtimeMultiplayerManager::disconnect()+0x1c> @ imm = #0x4
  32aefe: 9801         	ldr	r0, [sp, #0x4]
  32af00: f000 f834    	bl	0x32af6c <GPGSRealtimeMultiplayerManager::leaveRoom()> @ imm = #0x68
  32af04: 9b01         	ldr	r3, [sp, #0x4]
  32af06: 2200         	movs	r2, #0x0
  32af08: 735a         	strb	r2, [r3, #0xd]
  32af0a: 9b01         	ldr	r3, [sp, #0x4]
  32af0c: 2201         	movs	r2, #0x1
  32af0e: 739a         	strb	r2, [r3, #0xe]
  32af10: 9b01         	ldr	r3, [sp, #0x4]
  32af12: 2200         	movs	r2, #0x0
  32af14: 731a         	strb	r2, [r3, #0xc]
  32af16: 9b01         	ldr	r3, [sp, #0x4]
  32af18: 2200         	movs	r2, #0x0
  32af1a: 73da         	strb	r2, [r3, #0xf]
  32af1c: 9b01         	ldr	r3, [sp, #0x4]
  32af1e: f04f 0200    	mov.w	r2, #0x0
  32af22: 605a         	str	r2, [r3, #0x4]
  32af24: 9b01         	ldr	r3, [sp, #0x4]
  32af26: f04f 0200    	mov.w	r2, #0x0
  32af2a: 609a         	str	r2, [r3, #0x8]
  32af2c: 9b01         	ldr	r3, [sp, #0x4]
  32af2e: 3338         	adds	r3, #0x38
  32af30: 4618         	mov	r0, r3
  32af32: f001 facf    	bl	0x32c4d4 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::clear()> @ imm = #0x159e
  32af36: b003         	add	sp, #0xc
  32af38: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::leaveRoom
//      file offset 0x32af6c (= ELF address; Ghidra 0x33af6c), 112 bytes, Thumb-2
  32af6c: b5f0         	push	{r4, r5, r6, r7, lr}
  32af6e: b089         	sub	sp, #0x24
  32af70: 9001         	str	r0, [sp, #0x4]
  32af72: 4c18         	ldr	r4, [pc, #0x60]         @ 0x32afd4 <GPGSRealtimeMultiplayerManager::leaveRoom()+0x68>
  32af74: 447c         	add	r4, pc
  32af76: 4b18         	ldr	r3, [pc, #0x60]         @ 0x32afd8 <GPGSRealtimeMultiplayerManager::leaveRoom()+0x6c>
  32af78: 58e3         	ldr	r3, [r4, r3]
  32af7a: 681b         	ldr	r3, [r3]
  32af7c: 9307         	str	r3, [sp, #0x1c]
  32af7e: f007 fd31    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x7a62
  32af82: 4603         	mov	r3, r0
  32af84: 4618         	mov	r0, r3
  32af86: f1d4 feb8    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d4d70
  32af8a: 4606         	mov	r6, r0
  32af8c: 9b01         	ldr	r3, [sp, #0x4]
  32af8e: f103 0514    	add.w	r5, r3, #0x14
  32af92: ab03         	add	r3, sp, #0xc
  32af94: 4618         	mov	r0, r3
  32af96: 4639         	mov	r1, r7
  32af98: f001 fabe    	bl	0x32c518 <std::_Maybe_unary_or_binary_function<void, gpg::ResponseStatus const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x157c
  32af9c: ab03         	add	r3, sp, #0xc
  32af9e: 4630         	mov	r0, r6
  32afa0: 4629         	mov	r1, r5
  32afa2: 461a         	mov	r2, r3
  32afa4: f1e5 fde8    	bl	0x510b78 <gpg::RealTimeMultiplayerManager::LeaveRoom(gpg::RealTimeRoom const&, std::function<void (gpg::ResponseStatus const&)>)> @ imm = #0x1e5bd0
  32afa8: ab03         	add	r3, sp, #0xc
  32afaa: 4618         	mov	r0, r3
  32afac: f7ff ffd2    	bl	0x32af54 <std::function<void (gpg::ResponseStatus const&)>::~function()> @ imm = #-0x5c
  32afb0: 4b09         	ldr	r3, [pc, #0x24]         @ 0x32afd8 <GPGSRealtimeMultiplayerManager::leaveRoom()+0x6c>
  32afb2: 58e3         	ldr	r3, [r4, r3]
  32afb4: 9a07         	ldr	r2, [sp, #0x1c]
  32afb6: 681b         	ldr	r3, [r3]
  32afb8: 429a         	cmp	r2, r3
  32afba: d008         	beq	0x32afce <GPGSRealtimeMultiplayerManager::leaveRoom()+0x62> @ imm = #0x10
  32afbc: e005         	b	0x32afca <GPGSRealtimeMultiplayerManager::leaveRoom()+0x5e> @ imm = #0xa
  32afbe: ab03         	add	r3, sp, #0xc
  32afc0: 4618         	mov	r0, r3
  32afc2: f7ff ffc7    	bl	0x32af54 <std::function<void (gpg::ResponseStatus const&)>::~function()> @ imm = #-0x72
  32afc6: f05d f071    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45d0e2
  32afca: f7aa efce    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x55064
  32afce: b009         	add	sp, #0x24
  32afd0: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x32afd1); words below are literal-pool data ---
  32afd2: bf00         	nop
  32afd4: 7a94         	ldrb	r4, [r2, #0xa]
  32afd6: 0060         	lsls	r0, r4, #0x1
  32afd8: d72c         	bvc	0x32b034 <GPGSRealtimeMultiplayerManager::OnRoomStatusChanged(gpg::RealTimeRoom const&)+0x58> @ imm = #0x58
  32afda: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::OnRoomStatusChanged
//      file offset 0x32afdc (= ELF address; Ghidra 0x33afdc), 144 bytes, Thumb-2
  32afdc: b500         	push	{lr}
  32afde: b083         	sub	sp, #0xc
  32afe0: 9001         	str	r0, [sp, #0x4]
  32afe2: 9100         	str	r1, [sp]
  32afe4: 9b01         	ldr	r3, [sp, #0x4]
  32afe6: 3314         	adds	r3, #0x14
  32afe8: 4618         	mov	r0, r3
  32afea: f1e8 fa55    	bl	0x513498 <gpg::RealTimeRoom::Valid() const> @ imm = #0x1e84aa
  32afee: 4603         	mov	r3, r0
  32aff0: 2b00         	cmp	r3, #0x0
  32aff2: d035         	beq	0x32b060 <GPGSRealtimeMultiplayerManager::OnRoomStatusChanged(gpg::RealTimeRoom const&)+0x84> @ imm = #0x6a
  32aff4: 9b01         	ldr	r3, [sp, #0x4]
  32aff6: 3314         	adds	r3, #0x14
  32aff8: 4618         	mov	r0, r3
  32affa: 9900         	ldr	r1, [sp]
  32affc: f1e8 fb87    	bl	0x51370e <gpg::RealTimeRoom::operator=(gpg::RealTimeRoom const&)> @ imm = #0x1e870e
  32b000: 9b01         	ldr	r3, [sp, #0x4]
  32b002: f04f 0200    	mov.w	r2, #0x0
  32b006: 605a         	str	r2, [r3, #0x4]
  32b008: 9b01         	ldr	r3, [sp, #0x4]
  32b00a: f04f 0200    	mov.w	r2, #0x0
  32b00e: 609a         	str	r2, [r3, #0x8]
  32b010: 9b01         	ldr	r3, [sp, #0x4]
  32b012: 3314         	adds	r3, #0x14
  32b014: 4618         	mov	r0, r3
  32b016: f1e8 fa9b    	bl	0x513550 <gpg::RealTimeRoom::Status() const> @ imm = #0x1e8536
  32b01a: 4603         	mov	r3, r0
  32b01c: 2b04         	cmp	r3, #0x4
  32b01e: bf14         	ite	ne
  32b020: 2300         	movne	r3, #0x0
  32b022: 2301         	moveq	r3, #0x1
  32b024: b2db         	uxtb	r3, r3
  32b026: 2b00         	cmp	r3, #0x0
  32b028: d006         	beq	0x32b038 <GPGSRealtimeMultiplayerManager::OnRoomStatusChanged(gpg::RealTimeRoom const&)+0x5c> @ imm = #0xc
  32b02a: 9b01         	ldr	r3, [sp, #0x4]
  32b02c: 2200         	movs	r2, #0x0
  32b02e: 735a         	strb	r2, [r3, #0xd]
  32b030: 9b01         	ldr	r3, [sp, #0x4]
  32b032: 2201         	movs	r2, #0x1
  32b034: 731a         	strb	r2, [r3, #0xc]
  32b036: e013         	b	0x32b060 <GPGSRealtimeMultiplayerManager::OnRoomStatusChanged(gpg::RealTimeRoom const&)+0x84> @ imm = #0x26
  32b038: 9b01         	ldr	r3, [sp, #0x4]
  32b03a: 3314         	adds	r3, #0x14
  32b03c: 4618         	mov	r0, r3
  32b03e: f1e8 fa87    	bl	0x513550 <gpg::RealTimeRoom::Status() const> @ imm = #0x1e850e
  32b042: 4603         	mov	r3, r0
  32b044: 2b05         	cmp	r3, #0x5
  32b046: bf14         	ite	ne
  32b048: 2300         	movne	r3, #0x0
  32b04a: 2301         	moveq	r3, #0x1
  32b04c: b2db         	uxtb	r3, r3
  32b04e: 2b00         	cmp	r3, #0x0
  32b050: d106         	bne	0x32b060 <GPGSRealtimeMultiplayerManager::OnRoomStatusChanged(gpg::RealTimeRoom const&)+0x84> @ imm = #0xc
  32b052: 9b01         	ldr	r3, [sp, #0x4]
  32b054: 3314         	adds	r3, #0x14
  32b056: 4618         	mov	r0, r3
  32b058: f1e8 fa7a    	bl	0x513550 <gpg::RealTimeRoom::Status() const> @ imm = #0x1e84f4
  32b05c: 4603         	mov	r3, r0
  32b05e: 2b02         	cmp	r3, #0x2
  32b060: 9801         	ldr	r0, [sp, #0x4]
  32b062: f000 fd87    	bl	0x32bb74 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()> @ imm = #0xb0e
  32b066: b003         	add	sp, #0xc
  32b068: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged
//      file offset 0x32b06c (= ELF address; Ghidra 0x33b06c), 110 bytes, Thumb-2
  32b06c: b500         	push	{lr}
  32b06e: b085         	sub	sp, #0x14
  32b070: 9003         	str	r0, [sp, #0xc]
  32b072: 9102         	str	r1, [sp, #0x8]
  32b074: 9201         	str	r2, [sp, #0x4]
  32b076: 9b03         	ldr	r3, [sp, #0xc]
  32b078: 681b         	ldr	r3, [r3]
  32b07a: 3308         	adds	r3, #0x8
  32b07c: 681b         	ldr	r3, [r3]
  32b07e: 9803         	ldr	r0, [sp, #0xc]
  32b080: 9902         	ldr	r1, [sp, #0x8]
  32b082: 4798         	blx	r3
  32b084: 9803         	ldr	r0, [sp, #0xc]
  32b086: f7ff fb15    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0x9d6
  32b08a: 4603         	mov	r3, r0
  32b08c: f083 0301    	eor	r3, r3, #0x1
  32b090: b2db         	uxtb	r3, r3
  32b092: 2b00         	cmp	r3, #0x0
  32b094: d000         	beq	0x32b098 <GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0x2c> @ imm = #0x0
  32b096: e01d         	b	0x32b0d4 <GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0x68> @ imm = #0x3a
  32b098: 9801         	ldr	r0, [sp, #0x4]
  32b09a: f1dc f849    	bl	0x507130 <gpg::MultiplayerParticipant::Status() const> @ imm = #0x1dc092
  32b09e: 4603         	mov	r3, r0
  32b0a0: 2b02         	cmp	r3, #0x2
  32b0a2: bf14         	ite	ne
  32b0a4: 2300         	movne	r3, #0x0
  32b0a6: 2301         	moveq	r3, #0x1
  32b0a8: b2db         	uxtb	r3, r3
  32b0aa: 2b00         	cmp	r3, #0x0
  32b0ac: d10f         	bne	0x32b0ce <GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0x62> @ imm = #0x1e
  32b0ae: 9801         	ldr	r0, [sp, #0x4]
  32b0b0: f1dc f83e    	bl	0x507130 <gpg::MultiplayerParticipant::Status() const> @ imm = #0x1dc07c
  32b0b4: 4603         	mov	r3, r0
  32b0b6: 2b04         	cmp	r3, #0x4
  32b0b8: bf14         	ite	ne
  32b0ba: 2300         	movne	r3, #0x0
  32b0bc: 2301         	moveq	r3, #0x1
  32b0be: b2db         	uxtb	r3, r3
  32b0c0: 2b00         	cmp	r3, #0x0
  32b0c2: d104         	bne	0x32b0ce <GPGSRealtimeMultiplayerManager::OnParticipantStatusChanged(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0x62> @ imm = #0x8
  32b0c4: 9801         	ldr	r0, [sp, #0x4]
  32b0c6: f1dc f833    	bl	0x507130 <gpg::MultiplayerParticipant::Status() const> @ imm = #0x1dc066
  32b0ca: 4603         	mov	r3, r0
  32b0cc: 2b07         	cmp	r3, #0x7
  32b0ce: 9803         	ldr	r0, [sp, #0xc]
  32b0d0: f000 fd50    	bl	0x32bb74 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()> @ imm = #0xaa0
  32b0d4: b005         	add	sp, #0x14
  32b0d6: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::OnConnectedSetChanged
//      file offset 0x32b0dc (= ELF address; Ghidra 0x33b0dc), 170 bytes, Thumb-2
  32b0dc: b500         	push	{lr}
  32b0de: b08b         	sub	sp, #0x2c
  32b0e0: 9001         	str	r0, [sp, #0x4]
  32b0e2: 9100         	str	r1, [sp]
  32b0e4: 9b01         	ldr	r3, [sp, #0x4]
  32b0e6: 681b         	ldr	r3, [r3]
  32b0e8: 3308         	adds	r3, #0x8
  32b0ea: 681b         	ldr	r3, [r3]
  32b0ec: 9801         	ldr	r0, [sp, #0x4]
  32b0ee: 9900         	ldr	r1, [sp]
  32b0f0: 4798         	blx	r3
  32b0f2: 9801         	ldr	r0, [sp, #0x4]
  32b0f4: f7ff fade    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xa44
  32b0f8: 4603         	mov	r3, r0
  32b0fa: f083 0301    	eor	r3, r3, #0x1
  32b0fe: b2db         	uxtb	r3, r3
  32b100: 2b00         	cmp	r3, #0x0
  32b102: d000         	beq	0x32b106 <GPGSRealtimeMultiplayerManager::OnConnectedSetChanged(gpg::RealTimeRoom const&)+0x2a> @ imm = #0x0
  32b104: e03c         	b	0x32b180 <GPGSRealtimeMultiplayerManager::OnConnectedSetChanged(gpg::RealTimeRoom const&)+0xa4> @ imm = #0x78
  32b106: 9b01         	ldr	r3, [sp, #0x4]
  32b108: 3314         	adds	r3, #0x14
  32b10a: aa07         	add	r2, sp, #0x1c
  32b10c: 4610         	mov	r0, r2
  32b10e: 4619         	mov	r1, r3
  32b110: f1e8 face    	bl	0x5136b0 <gpg::RealTimeRoom::Participants() const> @ imm = #0x1e859c
  32b114: ab07         	add	r3, sp, #0x1c
  32b116: 9304         	str	r3, [sp, #0x10]
  32b118: 9804         	ldr	r0, [sp, #0x10]
  32b11a: f001 f973    	bl	0x32c404 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin()> @ imm = #0x12e6
  32b11e: 4603         	mov	r3, r0
  32b120: 9302         	str	r3, [sp, #0x8]
  32b122: 9804         	ldr	r0, [sp, #0x10]
  32b124: f001 f97c    	bl	0x32c420 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end()> @ imm = #0x12f8
  32b128: 4603         	mov	r3, r0
  32b12a: 9303         	str	r3, [sp, #0xc]
  32b12c: e011         	b	0x32b152 <GPGSRealtimeMultiplayerManager::OnConnectedSetChanged(gpg::RealTimeRoom const&)+0x76> @ imm = #0x22
  32b12e: ab02         	add	r3, sp, #0x8
  32b130: 4618         	mov	r0, r3
  32b132: f001 f9a7    	bl	0x32c484 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #0x134e
  32b136: 4603         	mov	r3, r0
  32b138: aa05         	add	r2, sp, #0x14
  32b13a: 4610         	mov	r0, r2
  32b13c: 4619         	mov	r1, r3
  32b13e: f1db ff55    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0x1dbeaa
  32b142: ab05         	add	r3, sp, #0x14
  32b144: 4618         	mov	r0, r3
  32b146: f1dc f857    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dc0ae
  32b14a: ab02         	add	r3, sp, #0x8
  32b14c: 4618         	mov	r0, r3
  32b14e: f001 f98d    	bl	0x32c46c <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #0x131a
  32b152: aa02         	add	r2, sp, #0x8
  32b154: ab03         	add	r3, sp, #0xc
  32b156: 4610         	mov	r0, r2
  32b158: 4619         	mov	r1, r3
  32b15a: f001 f971    	bl	0x32c440 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #0x12e2
  32b15e: 4603         	mov	r3, r0
  32b160: 2b00         	cmp	r3, #0x0
  32b162: d1e4         	bne	0x32b12e <GPGSRealtimeMultiplayerManager::OnConnectedSetChanged(gpg::RealTimeRoom const&)+0x52> @ imm = #-0x38
  32b164: 9801         	ldr	r0, [sp, #0x4]
  32b166: f000 fd05    	bl	0x32bb74 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()> @ imm = #0xa0a
  32b16a: ab07         	add	r3, sp, #0x1c
  32b16c: 4618         	mov	r0, r3
  32b16e: f001 f929    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x1252
  32b172: e005         	b	0x32b180 <GPGSRealtimeMultiplayerManager::OnConnectedSetChanged(gpg::RealTimeRoom const&)+0xa4> @ imm = #0xa
  32b174: ab07         	add	r3, sp, #0x1c
  32b176: 4618         	mov	r0, r3
  32b178: f001 f924    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x1248
  32b17c: f05c f796    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45cf2c
  32b180: b00b         	add	sp, #0x2c
  32b182: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::OnP2PConnected
//      file offset 0x32b188 (= ELF address; Ghidra 0x33b188), 200 bytes, Thumb-2
  32b188: b500         	push	{lr}
  32b18a: b089         	sub	sp, #0x24
  32b18c: 9003         	str	r0, [sp, #0xc]
  32b18e: 9102         	str	r1, [sp, #0x8]
  32b190: 9201         	str	r2, [sp, #0x4]
  32b192: 9b03         	ldr	r3, [sp, #0xc]
  32b194: 681b         	ldr	r3, [r3]
  32b196: 3308         	adds	r3, #0x8
  32b198: 681b         	ldr	r3, [r3]
  32b19a: 9803         	ldr	r0, [sp, #0xc]
  32b19c: 9902         	ldr	r1, [sp, #0x8]
  32b19e: 4798         	blx	r3
  32b1a0: 9803         	ldr	r0, [sp, #0xc]
  32b1a2: f7ff fa87    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xaf2
  32b1a6: 4603         	mov	r3, r0
  32b1a8: f083 0301    	eor	r3, r3, #0x1
  32b1ac: b2db         	uxtb	r3, r3
  32b1ae: 2b00         	cmp	r3, #0x0
  32b1b0: d000         	beq	0x32b1b4 <GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0x2c> @ imm = #0x0
  32b1b2: e04a         	b	0x32b24a <GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xc2> @ imm = #0x94
  32b1b4: 9801         	ldr	r0, [sp, #0x4]
  32b1b6: f1db ff3b    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1dbe76
  32b1ba: 4603         	mov	r3, r0
  32b1bc: aa04         	add	r2, sp, #0x10
  32b1be: 4610         	mov	r0, r2
  32b1c0: 4619         	mov	r1, r3
  32b1c2: f08b f191    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b322
  32b1c6: 9801         	ldr	r0, [sp, #0x4]
  32b1c8: f1db ff46    	bl	0x507058 <gpg::MultiplayerParticipant::DisplayName() const> @ imm = #0x1dbe8c
  32b1cc: 4603         	mov	r3, r0
  32b1ce: aa05         	add	r2, sp, #0x14
  32b1d0: 4610         	mov	r0, r2
  32b1d2: 4619         	mov	r1, r3
  32b1d4: f08b f188    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b310
  32b1d8: aa06         	add	r2, sp, #0x18
  32b1da: ab04         	add	r3, sp, #0x10
  32b1dc: 4610         	mov	r0, r2
  32b1de: 4619         	mov	r1, r3
  32b1e0: f08b f182    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b304
  32b1e4: aa07         	add	r2, sp, #0x1c
  32b1e6: ab05         	add	r3, sp, #0x14
  32b1e8: 4610         	mov	r0, r2
  32b1ea: 4619         	mov	r1, r3
  32b1ec: f08b f17c    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b2f8
  32b1f0: aa06         	add	r2, sp, #0x18
  32b1f2: ab07         	add	r3, sp, #0x1c
  32b1f4: 9803         	ldr	r0, [sp, #0xc]
  32b1f6: 4611         	mov	r1, r2
  32b1f8: 461a         	mov	r2, r3
  32b1fa: f000 f88d    	bl	0x32b318 <GPGSRealtimeMultiplayerManager::addPlayer(std::string, std::string)> @ imm = #0x11a
  32b1fe: ab07         	add	r3, sp, #0x1c
  32b200: 4618         	mov	r0, r3
  32b202: f08a f387    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a70e
  32b206: ab06         	add	r3, sp, #0x18
  32b208: 4618         	mov	r0, r3
  32b20a: f08a f383    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a706
  32b20e: ab05         	add	r3, sp, #0x14
  32b210: 4618         	mov	r0, r3
  32b212: f08a f37f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a6fe
  32b216: ab04         	add	r3, sp, #0x10
  32b218: 4618         	mov	r0, r3
  32b21a: f08a f37b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a6f6
  32b21e: e014         	b	0x32b24a <GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xc2> @ imm = #0x28
  32b220: ab07         	add	r3, sp, #0x1c
  32b222: 4618         	mov	r0, r3
  32b224: f08a f376    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a6ec
  32b228: e7ff         	b	0x32b22a <GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xa2> @ imm = #-0x2
  32b22a: ab06         	add	r3, sp, #0x18
  32b22c: 4618         	mov	r0, r3
  32b22e: f08a f371    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a6e2
  32b232: e7ff         	b	0x32b234 <GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xac> @ imm = #-0x2
  32b234: ab05         	add	r3, sp, #0x14
  32b236: 4618         	mov	r0, r3
  32b238: f08a f36c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a6d8
  32b23c: e7ff         	b	0x32b23e <GPGSRealtimeMultiplayerManager::OnP2PConnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xb6> @ imm = #-0x2
  32b23e: ab04         	add	r3, sp, #0x10
  32b240: 4618         	mov	r0, r3
  32b242: f08a f367    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a6ce
  32b246: f05c f731    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45ce62
  32b24a: b009         	add	sp, #0x24
  32b24c: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::OnP2PDisconnected
//      file offset 0x32b250 (= ELF address; Ghidra 0x33b250), 200 bytes, Thumb-2
  32b250: b500         	push	{lr}
  32b252: b089         	sub	sp, #0x24
  32b254: 9003         	str	r0, [sp, #0xc]
  32b256: 9102         	str	r1, [sp, #0x8]
  32b258: 9201         	str	r2, [sp, #0x4]
  32b25a: 9b03         	ldr	r3, [sp, #0xc]
  32b25c: 681b         	ldr	r3, [r3]
  32b25e: 3308         	adds	r3, #0x8
  32b260: 681b         	ldr	r3, [r3]
  32b262: 9803         	ldr	r0, [sp, #0xc]
  32b264: 9902         	ldr	r1, [sp, #0x8]
  32b266: 4798         	blx	r3
  32b268: 9803         	ldr	r0, [sp, #0xc]
  32b26a: f7ff fa23    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xbba
  32b26e: 4603         	mov	r3, r0
  32b270: f083 0301    	eor	r3, r3, #0x1
  32b274: b2db         	uxtb	r3, r3
  32b276: 2b00         	cmp	r3, #0x0
  32b278: d000         	beq	0x32b27c <GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0x2c> @ imm = #0x0
  32b27a: e04a         	b	0x32b312 <GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xc2> @ imm = #0x94
  32b27c: 9801         	ldr	r0, [sp, #0x4]
  32b27e: f1db fed7    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1dbdae
  32b282: 4603         	mov	r3, r0
  32b284: aa04         	add	r2, sp, #0x10
  32b286: 4610         	mov	r0, r2
  32b288: 4619         	mov	r1, r3
  32b28a: f08b f12d    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b25a
  32b28e: 9801         	ldr	r0, [sp, #0x4]
  32b290: f1db fee2    	bl	0x507058 <gpg::MultiplayerParticipant::DisplayName() const> @ imm = #0x1dbdc4
  32b294: 4603         	mov	r3, r0
  32b296: aa05         	add	r2, sp, #0x14
  32b298: 4610         	mov	r0, r2
  32b29a: 4619         	mov	r1, r3
  32b29c: f08b f124    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b248
  32b2a0: aa06         	add	r2, sp, #0x18
  32b2a2: ab04         	add	r3, sp, #0x10
  32b2a4: 4610         	mov	r0, r2
  32b2a6: 4619         	mov	r1, r3
  32b2a8: f08b f11e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b23c
  32b2ac: aa07         	add	r2, sp, #0x1c
  32b2ae: ab05         	add	r3, sp, #0x14
  32b2b0: 4610         	mov	r0, r2
  32b2b2: 4619         	mov	r1, r3
  32b2b4: f08b f118    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48b230
  32b2b8: aa06         	add	r2, sp, #0x18
  32b2ba: ab07         	add	r3, sp, #0x1c
  32b2bc: 9803         	ldr	r0, [sp, #0xc]
  32b2be: 4611         	mov	r1, r2
  32b2c0: 461a         	mov	r2, r3
  32b2c2: f000 f861    	bl	0x32b388 <GPGSRealtimeMultiplayerManager::removePlayer(std::string, std::string)> @ imm = #0xc2
  32b2c6: ab07         	add	r3, sp, #0x1c
  32b2c8: 4618         	mov	r0, r3
  32b2ca: f08a f323    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a646
  32b2ce: ab06         	add	r3, sp, #0x18
  32b2d0: 4618         	mov	r0, r3
  32b2d2: f08a f31f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a63e
  32b2d6: ab05         	add	r3, sp, #0x14
  32b2d8: 4618         	mov	r0, r3
  32b2da: f08a f31b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a636
  32b2de: ab04         	add	r3, sp, #0x10
  32b2e0: 4618         	mov	r0, r3
  32b2e2: f08a f317    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a62e
  32b2e6: e014         	b	0x32b312 <GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xc2> @ imm = #0x28
  32b2e8: ab07         	add	r3, sp, #0x1c
  32b2ea: 4618         	mov	r0, r3
  32b2ec: f08a f312    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a624
  32b2f0: e7ff         	b	0x32b2f2 <GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xa2> @ imm = #-0x2
  32b2f2: ab06         	add	r3, sp, #0x18
  32b2f4: 4618         	mov	r0, r3
  32b2f6: f08a f30d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a61a
  32b2fa: e7ff         	b	0x32b2fc <GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xac> @ imm = #-0x2
  32b2fc: ab05         	add	r3, sp, #0x14
  32b2fe: 4618         	mov	r0, r3
  32b300: f08a f308    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a610
  32b304: e7ff         	b	0x32b306 <GPGSRealtimeMultiplayerManager::OnP2PDisconnected(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&)+0xb6> @ imm = #-0x2
  32b306: ab04         	add	r3, sp, #0x10
  32b308: 4618         	mov	r0, r3
  32b30a: f08a f303    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48a606
  32b30e: f05c f6cd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45cd9a
  32b312: b009         	add	sp, #0x24
  32b314: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::addPlayer
//      file offset 0x32b318 (= ELF address; Ghidra 0x33b318), 110 bytes, Thumb-2
  32b318: b500         	push	{lr}
  32b31a: b089         	sub	sp, #0x24
  32b31c: 9003         	str	r0, [sp, #0xc]
  32b31e: 9102         	str	r1, [sp, #0x8]
  32b320: 9201         	str	r2, [sp, #0x4]
  32b322: ab05         	add	r3, sp, #0x14
  32b324: 4618         	mov	r0, r3
  32b326: f7ff fc19    	bl	0x32ab5c <GPGSEventObject::GPGSEventObject()> @ imm = #-0x7ce
  32b32a: 2302         	movs	r3, #0x2
  32b32c: 9305         	str	r3, [sp, #0x14]
  32b32e: ab05         	add	r3, sp, #0x14
  32b330: 3304         	adds	r3, #0x4
  32b332: 4618         	mov	r0, r3
  32b334: 9902         	ldr	r1, [sp, #0x8]
  32b336: f08b f13d    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b27a
  32b33a: ab05         	add	r3, sp, #0x14
  32b33c: 3308         	adds	r3, #0x8
  32b33e: 4618         	mov	r0, r3
  32b340: 9901         	ldr	r1, [sp, #0x4]
  32b342: f08b f137    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b26e
  32b346: 9b03         	ldr	r3, [sp, #0xc]
  32b348: 3354         	adds	r3, #0x54
  32b34a: 4618         	mov	r0, r3
  32b34c: f7fe f94c    	bl	0x3295e8 <std::mutex::lock()> @ imm = #-0x1d68
  32b350: 9b03         	ldr	r3, [sp, #0xc]
  32b352: f103 0258    	add.w	r2, r3, #0x58
  32b356: ab05         	add	r3, sp, #0x14
  32b358: 4610         	mov	r0, r2
  32b35a: 4619         	mov	r1, r3
  32b35c: f000 fefc    	bl	0x32c158 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::push_back(GPGSEventObject const&)> @ imm = #0xdf8
  32b360: 9b03         	ldr	r3, [sp, #0xc]
  32b362: 3354         	adds	r3, #0x54
  32b364: 4618         	mov	r0, r3
  32b366: f7fe f951    	bl	0x32960c <std::mutex::unlock()> @ imm = #-0x1d5e
  32b36a: ab05         	add	r3, sp, #0x14
  32b36c: 4618         	mov	r0, r3
  32b36e: f7ff fc3b    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0x78a
  32b372: e005         	b	0x32b380 <GPGSRealtimeMultiplayerManager::addPlayer(std::string, std::string)+0x68> @ imm = #0xa
  32b374: ab05         	add	r3, sp, #0x14
  32b376: 4618         	mov	r0, r3
  32b378: f7ff fc36    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0x794
  32b37c: f05c f696    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45cd2c
  32b380: b009         	add	sp, #0x24
  32b382: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::removePlayer
//      file offset 0x32b388 (= ELF address; Ghidra 0x33b388), 110 bytes, Thumb-2
  32b388: b500         	push	{lr}
  32b38a: b089         	sub	sp, #0x24
  32b38c: 9003         	str	r0, [sp, #0xc]
  32b38e: 9102         	str	r1, [sp, #0x8]
  32b390: 9201         	str	r2, [sp, #0x4]
  32b392: ab05         	add	r3, sp, #0x14
  32b394: 4618         	mov	r0, r3
  32b396: f7ff fbe1    	bl	0x32ab5c <GPGSEventObject::GPGSEventObject()> @ imm = #-0x83e
  32b39a: 2303         	movs	r3, #0x3
  32b39c: 9305         	str	r3, [sp, #0x14]
  32b39e: ab05         	add	r3, sp, #0x14
  32b3a0: 3304         	adds	r3, #0x4
  32b3a2: 4618         	mov	r0, r3
  32b3a4: 9902         	ldr	r1, [sp, #0x8]
  32b3a6: f08b f105    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b20a
  32b3aa: ab05         	add	r3, sp, #0x14
  32b3ac: 3308         	adds	r3, #0x8
  32b3ae: 4618         	mov	r0, r3
  32b3b0: 9901         	ldr	r1, [sp, #0x4]
  32b3b2: f08b f0ff    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x48b1fe
  32b3b6: 9b03         	ldr	r3, [sp, #0xc]
  32b3b8: 3354         	adds	r3, #0x54
  32b3ba: 4618         	mov	r0, r3
  32b3bc: f7fe f914    	bl	0x3295e8 <std::mutex::lock()> @ imm = #-0x1dd8
  32b3c0: 9b03         	ldr	r3, [sp, #0xc]
  32b3c2: f103 0258    	add.w	r2, r3, #0x58
  32b3c6: ab05         	add	r3, sp, #0x14
  32b3c8: 4610         	mov	r0, r2
  32b3ca: 4619         	mov	r1, r3
  32b3cc: f000 fec4    	bl	0x32c158 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::push_back(GPGSEventObject const&)> @ imm = #0xd88
  32b3d0: 9b03         	ldr	r3, [sp, #0xc]
  32b3d2: 3354         	adds	r3, #0x54
  32b3d4: 4618         	mov	r0, r3
  32b3d6: f7fe f919    	bl	0x32960c <std::mutex::unlock()> @ imm = #-0x1dce
  32b3da: ab05         	add	r3, sp, #0x14
  32b3dc: 4618         	mov	r0, r3
  32b3de: f7ff fc03    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0x7fa
  32b3e2: e005         	b	0x32b3f0 <GPGSRealtimeMultiplayerManager::removePlayer(std::string, std::string)+0x68> @ imm = #0xa
  32b3e4: ab05         	add	r3, sp, #0x14
  32b3e6: 4618         	mov	r0, r3
  32b3e8: f7ff fbfe    	bl	0x32abe8 <GPGSEventObject::~GPGSEventObject()> @ imm = #-0x804
  32b3ec: f05c f65e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45ccbc
  32b3f0: b009         	add	sp, #0x24
  32b3f2: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::sendMessage
//      file offset 0x32b41c (= ELF address; Ghidra 0x33b41c), 472 bytes, Thumb-2
  32b41c: b5f0         	push	{r4, r5, r6, r7, lr}
  32b41e: b09f         	sub	sp, #0x7c
  32b420: 9005         	str	r0, [sp, #0x14]
  32b422: 9104         	str	r1, [sp, #0x10]
  32b424: 9203         	str	r2, [sp, #0xc]
  32b426: f88d 300b    	strb.w	r3, [sp, #0xb]
  32b42a: 4c70         	ldr	r4, [pc, #0x1c0]        @ 0x32b5ec <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1d0>
  32b42c: 447c         	add	r4, pc
  32b42e: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x32b5f0 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1d4>
  32b430: 58e3         	ldr	r3, [r4, r3]
  32b432: 681b         	ldr	r3, [r3]
  32b434: 931d         	str	r3, [sp, #0x74]
  32b436: 9805         	ldr	r0, [sp, #0x14]
  32b438: f7ff f93c    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xd88
  32b43c: 4603         	mov	r3, r0
  32b43e: f083 0301    	eor	r3, r3, #0x1
  32b442: b2db         	uxtb	r3, r3
  32b444: 2b00         	cmp	r3, #0x0
  32b446: d000         	beq	0x32b44a <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x2e> @ imm = #0x0
  32b448: e0c5         	b	0x32b5d6 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1ba> @ imm = #0x18a
  32b44a: f007 facb    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x7596
  32b44e: 4603         	mov	r3, r0
  32b450: 9309         	str	r3, [sp, #0x24]
  32b452: 9b05         	ldr	r3, [sp, #0x14]
  32b454: 3314         	adds	r3, #0x14
  32b456: aa0d         	add	r2, sp, #0x34
  32b458: 4610         	mov	r0, r2
  32b45a: 4619         	mov	r1, r3
  32b45c: f1e8 f928    	bl	0x5136b0 <gpg::RealTimeRoom::Participants() const> @ imm = #0x1e8250
  32b460: 9b04         	ldr	r3, [sp, #0x10]
  32b462: 930a         	str	r3, [sp, #0x28]
  32b464: 9b03         	ldr	r3, [sp, #0xc]
  32b466: 9a0a         	ldr	r2, [sp, #0x28]
  32b468: 4413         	add	r3, r2
  32b46a: 930b         	str	r3, [sp, #0x2c]
  32b46c: ab16         	add	r3, sp, #0x58
  32b46e: 4618         	mov	r0, r3
  32b470: f001 f886    	bl	0x32c580 <std::allocator<unsigned char>::allocator()> @ imm = #0x110c
  32b474: aa10         	add	r2, sp, #0x40
  32b476: ab16         	add	r3, sp, #0x58
  32b478: 4610         	mov	r0, r2
  32b47a: 990a         	ldr	r1, [sp, #0x28]
  32b47c: 9a0b         	ldr	r2, [sp, #0x2c]
  32b47e: f001 f897    	bl	0x32c5b0 <std::vector<unsigned char, std::allocator<unsigned char>>::vector<unsigned char*, void>(unsigned char*, unsigned char*, std::allocator<unsigned char> const&)> @ imm = #0x112e
  32b482: ab16         	add	r3, sp, #0x58
  32b484: 4618         	mov	r0, r3
  32b486: f001 f887    	bl	0x32c598 <std::allocator<unsigned char>::~allocator()> @ imm = #0x110e
  32b48a: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  32b48e: 2b00         	cmp	r3, #0x0
  32b490: d05e         	beq	0x32b550 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x134> @ imm = #0xbc
  32b492: ab0d         	add	r3, sp, #0x34
  32b494: 930c         	str	r3, [sp, #0x30]
  32b496: 980c         	ldr	r0, [sp, #0x30]
  32b498: f001 f8c0    	bl	0x32c61c <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin() const> @ imm = #0x1180
  32b49c: 4603         	mov	r3, r0
  32b49e: 9307         	str	r3, [sp, #0x1c]
  32b4a0: 980c         	ldr	r0, [sp, #0x30]
  32b4a2: f001 f8cd    	bl	0x32c640 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end() const> @ imm = #0x119a
  32b4a6: 4603         	mov	r3, r0
  32b4a8: 9308         	str	r3, [sp, #0x20]
  32b4aa: e047         	b	0x32b53c <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x120> @ imm = #0x8e
  32b4ac: ab07         	add	r3, sp, #0x1c
  32b4ae: 4618         	mov	r0, r3
  32b4b0: f001 f8fa    	bl	0x32c6a8 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #0x11f4
  32b4b4: 4603         	mov	r3, r0
  32b4b6: aa16         	add	r2, sp, #0x58
  32b4b8: 4610         	mov	r0, r2
  32b4ba: 4619         	mov	r1, r3
  32b4bc: f1db fd96    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0x1dbb2c
  32b4c0: 9b05         	ldr	r3, [sp, #0x14]
  32b4c2: f103 0510    	add.w	r5, r3, #0x10
  32b4c6: ab16         	add	r3, sp, #0x58
  32b4c8: 4618         	mov	r0, r3
  32b4ca: f1db fdb1    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1dbb62
  32b4ce: 4603         	mov	r3, r0
  32b4d0: 4628         	mov	r0, r5
  32b4d2: 4619         	mov	r1, r3
  32b4d4: f08a f0d2    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x48a1a4
  32b4d8: 4603         	mov	r3, r0
  32b4da: 2b00         	cmp	r3, #0x0
  32b4dc: bf0c         	ite	eq
  32b4de: 2300         	moveq	r3, #0x0
  32b4e0: 2301         	movne	r3, #0x1
  32b4e2: b2db         	uxtb	r3, r3
  32b4e4: 2b00         	cmp	r3, #0x0
  32b4e6: d021         	beq	0x32b52c <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x110> @ imm = #0x42
  32b4e8: 9809         	ldr	r0, [sp, #0x24]
  32b4ea: f1d4 fc06    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d480c
  32b4ee: 4606         	mov	r6, r0
  32b4f0: 9b05         	ldr	r3, [sp, #0x14]
  32b4f2: f103 0514    	add.w	r5, r3, #0x14
  32b4f6: aa13         	add	r2, sp, #0x4c
  32b4f8: ab10         	add	r3, sp, #0x40
  32b4fa: 4610         	mov	r0, r2
  32b4fc: 4619         	mov	r1, r3
  32b4fe: f001 f8db    	bl	0x32c6b8 <std::vector<unsigned char, std::allocator<unsigned char>>::vector(std::vector<unsigned char, std::allocator<unsigned char>> const&)> @ imm = #0x11b6
  32b502: ab19         	add	r3, sp, #0x64
  32b504: 4618         	mov	r0, r3
  32b506: 4639         	mov	r1, r7
  32b508: f001 f934    	bl	0x32c774 <std::_Maybe_unary_or_binary_function<void, gpg::MultiplayerStatus const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x1268
  32b50c: aa16         	add	r2, sp, #0x58
  32b50e: ab13         	add	r3, sp, #0x4c
  32b510: a919         	add	r1, sp, #0x64
  32b512: 9100         	str	r1, [sp]
  32b514: 4630         	mov	r0, r6
  32b516: 4629         	mov	r1, r5
  32b518: f1e5 fc20    	bl	0x510d5c <gpg::RealTimeMultiplayerManager::SendReliableMessage(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, std::function<void (gpg::MultiplayerStatus const&)>)> @ imm = #0x1e5840
  32b51c: ab19         	add	r3, sp, #0x64
  32b51e: 4618         	mov	r0, r3
  32b520: f7ff ff70    	bl	0x32b404 <std::function<void (gpg::MultiplayerStatus const&)>::~function()> @ imm = #-0x120
  32b524: ab13         	add	r3, sp, #0x4c
  32b526: 4618         	mov	r0, r3
  32b528: f001 f85e    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0x10bc
  32b52c: ab16         	add	r3, sp, #0x58
  32b52e: 4618         	mov	r0, r3
  32b530: f1db fe62    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dbcc4
  32b534: ab07         	add	r3, sp, #0x1c
  32b536: 4618         	mov	r0, r3
  32b538: f001 f8aa    	bl	0x32c690 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #0x1154
  32b53c: aa07         	add	r2, sp, #0x1c
  32b53e: ab08         	add	r3, sp, #0x20
  32b540: 4610         	mov	r0, r2
  32b542: 4619         	mov	r1, r3
  32b544: f001 f88e    	bl	0x32c664 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #0x111c
  32b548: 4603         	mov	r3, r0
  32b54a: 2b00         	cmp	r3, #0x0
  32b54c: d1ae         	bne	0x32b4ac <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x90> @ imm = #-0xa4
  32b54e: e016         	b	0x32b57e <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x162> @ imm = #0x2c
  32b550: 9809         	ldr	r0, [sp, #0x24]
  32b552: f1d4 fbd2    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d47a4
  32b556: 4606         	mov	r6, r0
  32b558: 9b05         	ldr	r3, [sp, #0x14]
  32b55a: f103 0514    	add.w	r5, r3, #0x14
  32b55e: aa16         	add	r2, sp, #0x58
  32b560: ab10         	add	r3, sp, #0x40
  32b562: 4610         	mov	r0, r2
  32b564: 4619         	mov	r1, r3
  32b566: f001 f8a7    	bl	0x32c6b8 <std::vector<unsigned char, std::allocator<unsigned char>>::vector(std::vector<unsigned char, std::allocator<unsigned char>> const&)> @ imm = #0x114e
  32b56a: ab16         	add	r3, sp, #0x58
  32b56c: 4630         	mov	r0, r6
  32b56e: 4629         	mov	r1, r5
  32b570: 461a         	mov	r2, r3
  32b572: f1e4 fdd6    	bl	0x510122 <gpg::RealTimeMultiplayerManager::SendUnreliableMessageToOthers(gpg::RealTimeRoom const&, std::vector<unsigned char, std::allocator<unsigned char>>)> @ imm = #0x1e4bac
  32b576: ab16         	add	r3, sp, #0x58
  32b578: 4618         	mov	r0, r3
  32b57a: f001 f835    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0x106a
  32b57e: ab10         	add	r3, sp, #0x40
  32b580: 4618         	mov	r0, r3
  32b582: f001 f831    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0x1062
  32b586: ab0d         	add	r3, sp, #0x34
  32b588: 4618         	mov	r0, r3
  32b58a: f000 ff1b    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0xe36
  32b58e: e022         	b	0x32b5d6 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1ba> @ imm = #0x44
  32b590: ab16         	add	r3, sp, #0x58
  32b592: 4618         	mov	r0, r3
  32b594: f001 f800    	bl	0x32c598 <std::allocator<unsigned char>::~allocator()> @ imm = #0x1000
  32b598: e017         	b	0x32b5ca <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1ae> @ imm = #0x2e
  32b59a: ab19         	add	r3, sp, #0x64
  32b59c: 4618         	mov	r0, r3
  32b59e: f7ff ff31    	bl	0x32b404 <std::function<void (gpg::MultiplayerStatus const&)>::~function()> @ imm = #-0x19e
  32b5a2: e7ff         	b	0x32b5a4 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x188> @ imm = #-0x2
  32b5a4: ab13         	add	r3, sp, #0x4c
  32b5a6: 4618         	mov	r0, r3
  32b5a8: f001 f81e    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0x103c
  32b5ac: e7ff         	b	0x32b5ae <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x192> @ imm = #-0x2
  32b5ae: ab16         	add	r3, sp, #0x58
  32b5b0: 4618         	mov	r0, r3
  32b5b2: f1db fe21    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dbc42
  32b5b6: e004         	b	0x32b5c2 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1a6> @ imm = #0x8
  32b5b8: ab16         	add	r3, sp, #0x58
  32b5ba: 4618         	mov	r0, r3
  32b5bc: f001 f814    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0x1028
  32b5c0: e7ff         	b	0x32b5c2 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1a6> @ imm = #-0x2
  32b5c2: ab10         	add	r3, sp, #0x40
  32b5c4: 4618         	mov	r0, r3
  32b5c6: f001 f80f    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0x101e
  32b5ca: ab0d         	add	r3, sp, #0x34
  32b5cc: 4618         	mov	r0, r3
  32b5ce: f000 fef9    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0xdf2
  32b5d2: f05c f56b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45cad6
  32b5d6: 4b06         	ldr	r3, [pc, #0x18]         @ 0x32b5f0 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1d4>
  32b5d8: 58e3         	ldr	r3, [r4, r3]
  32b5da: 9a1d         	ldr	r2, [sp, #0x74]
  32b5dc: 681b         	ldr	r3, [r3]
  32b5de: 429a         	cmp	r2, r3
  32b5e0: d001         	beq	0x32b5e6 <GPGSRealtimeMultiplayerManager::sendMessage(void const*, int, bool)+0x1ca> @ imm = #0x2
  32b5e2: f7aa ecc2    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x5567c
  32b5e6: b01f         	add	sp, #0x7c
  32b5e8: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x32b5e9); words below are literal-pool data ---
  32b5ea: bf00         	nop
  32b5ec: 75dc         	strb	r4, [r3, #0x17]
  32b5ee: 0060         	lsls	r0, r4, #0x1
  32b5f0: d72c         	bvc	0x32b64c <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x4c> @ imm = #0x58
  32b5f2: ffff b082    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::sendMessageToPlayer
//      file offset 0x32b600 (= ELF address; Ghidra 0x33b600), 600 bytes, Thumb-2
  32b600: b5f0         	push	{r4, r5, r6, r7, lr}
  32b602: b09f         	sub	sp, #0x7c
  32b604: 9005         	str	r0, [sp, #0x14]
  32b606: 9104         	str	r1, [sp, #0x10]
  32b608: 9203         	str	r2, [sp, #0xc]
  32b60a: 9302         	str	r3, [sp, #0x8]
  32b60c: 4c90         	ldr	r4, [pc, #0x240]        @ 0x32b850 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x250>
  32b60e: 447c         	add	r4, pc
  32b610: 4b90         	ldr	r3, [pc, #0x240]        @ 0x32b854 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x254>
  32b612: 58e3         	ldr	r3, [r4, r3]
  32b614: 681b         	ldr	r3, [r3]
  32b616: 931d         	str	r3, [sp, #0x74]
  32b618: 9805         	ldr	r0, [sp, #0x14]
  32b61a: f7ff f84b    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0xf6a
  32b61e: 4603         	mov	r3, r0
  32b620: f083 0301    	eor	r3, r3, #0x1
  32b624: b2db         	uxtb	r3, r3
  32b626: 2b00         	cmp	r3, #0x0
  32b628: d000         	beq	0x32b62c <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x2c> @ imm = #0x0
  32b62a: e106         	b	0x32b83a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x23a> @ imm = #0x20c
  32b62c: f007 f9da    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x73b4
  32b630: 4603         	mov	r3, r0
  32b632: 9308         	str	r3, [sp, #0x20]
  32b634: ab04         	add	r3, sp, #0x10
  32b636: 9309         	str	r3, [sp, #0x24]
  32b638: 9b03         	ldr	r3, [sp, #0xc]
  32b63a: 9a09         	ldr	r2, [sp, #0x24]
  32b63c: 18d5         	adds	r5, r2, r3
  32b63e: ab16         	add	r3, sp, #0x58
  32b640: 4618         	mov	r0, r3
  32b642: f000 ff9d    	bl	0x32c580 <std::allocator<unsigned char>::allocator()> @ imm = #0xf3a
  32b646: aa0d         	add	r2, sp, #0x34
  32b648: ab16         	add	r3, sp, #0x58
  32b64a: 4610         	mov	r0, r2
  32b64c: 9909         	ldr	r1, [sp, #0x24]
  32b64e: 462a         	mov	r2, r5
  32b650: f001 f8c4    	bl	0x32c7dc <std::vector<unsigned char, std::allocator<unsigned char>>::vector<unsigned char const*, void>(unsigned char const*, unsigned char const*, std::allocator<unsigned char> const&)> @ imm = #0x1188
  32b654: ab16         	add	r3, sp, #0x58
  32b656: 4618         	mov	r0, r3
  32b658: f000 ff9e    	bl	0x32c598 <std::allocator<unsigned char>::~allocator()> @ imm = #0xf3c
  32b65c: ab0b         	add	r3, sp, #0x2c
  32b65e: 4618         	mov	r0, r3
  32b660: f1db fcae    	bl	0x506fc0 <gpg::MultiplayerParticipant::MultiplayerParticipant()> @ imm = #0x1db95c
  32b664: 9b05         	ldr	r3, [sp, #0x14]
  32b666: 3314         	adds	r3, #0x14
  32b668: aa10         	add	r2, sp, #0x40
  32b66a: 4610         	mov	r0, r2
  32b66c: 4619         	mov	r1, r3
  32b66e: f1e8 f81f    	bl	0x5136b0 <gpg::RealTimeRoom::Participants() const> @ imm = #0x1e803e
  32b672: ab10         	add	r3, sp, #0x40
  32b674: 930a         	str	r3, [sp, #0x28]
  32b676: 980a         	ldr	r0, [sp, #0x28]
  32b678: f000 ffd0    	bl	0x32c61c <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin() const> @ imm = #0xfa0
  32b67c: 4603         	mov	r3, r0
  32b67e: 9307         	str	r3, [sp, #0x1c]
  32b680: 980a         	ldr	r0, [sp, #0x28]
  32b682: f000 ffdd    	bl	0x32c640 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end() const> @ imm = #0xfba
  32b686: 4603         	mov	r3, r0
  32b688: 9313         	str	r3, [sp, #0x4c]
  32b68a: e029         	b	0x32b6e0 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0xe0> @ imm = #0x52
  32b68c: ab07         	add	r3, sp, #0x1c
  32b68e: 4618         	mov	r0, r3
  32b690: f001 f80a    	bl	0x32c6a8 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #0x1014
  32b694: 4603         	mov	r3, r0
  32b696: aa16         	add	r2, sp, #0x58
  32b698: 4610         	mov	r0, r2
  32b69a: 4619         	mov	r1, r3
  32b69c: f1db fca6    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0x1db94c
  32b6a0: ab16         	add	r3, sp, #0x58
  32b6a2: 4618         	mov	r0, r3
  32b6a4: f1db fcc4    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db988
  32b6a8: 4603         	mov	r3, r0
  32b6aa: 4618         	mov	r0, r3
  32b6ac: 9902         	ldr	r1, [sp, #0x8]
  32b6ae: f001 f8b1    	bl	0x32c814 <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_> @ imm = #0x1162
  32b6b2: 4603         	mov	r3, r0
  32b6b4: 2b00         	cmp	r3, #0x0
  32b6b6: d007         	beq	0x32b6c8 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0xc8> @ imm = #0xe
  32b6b8: aa0b         	add	r2, sp, #0x2c
  32b6ba: ab16         	add	r3, sp, #0x58
  32b6bc: 4610         	mov	r0, r2
  32b6be: 4619         	mov	r1, r3
  32b6c0: f1db fdb4    	bl	0x50722c <gpg::MultiplayerParticipant::operator=(gpg::MultiplayerParticipant const&)> @ imm = #0x1dbb68
  32b6c4: 2500         	movs	r5, #0x0
  32b6c6: e000         	b	0x32b6ca <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0xca> @ imm = #0x0
  32b6c8: 2501         	movs	r5, #0x1
  32b6ca: ab16         	add	r3, sp, #0x58
  32b6cc: 4618         	mov	r0, r3
  32b6ce: f1db fd93    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dbb26
  32b6d2: 2d01         	cmp	r5, #0x1
  32b6d4: d10d         	bne	0x32b6f2 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0xf2> @ imm = #0x1a
  32b6d6: bf00         	nop
  32b6d8: ab07         	add	r3, sp, #0x1c
  32b6da: 4618         	mov	r0, r3
  32b6dc: f000 ffd8    	bl	0x32c690 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #0xfb0
  32b6e0: aa07         	add	r2, sp, #0x1c
  32b6e2: ab13         	add	r3, sp, #0x4c
  32b6e4: 4610         	mov	r0, r2
  32b6e6: 4619         	mov	r1, r3
  32b6e8: f000 ffbc    	bl	0x32c664 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #0xf78
  32b6ec: 4603         	mov	r3, r0
  32b6ee: 2b00         	cmp	r3, #0x0
  32b6f0: d1cc         	bne	0x32b68c <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x8c> @ imm = #-0x68
  32b6f2: ab0b         	add	r3, sp, #0x2c
  32b6f4: 4618         	mov	r0, r3
  32b6f6: f1db fc95    	bl	0x507024 <gpg::MultiplayerParticipant::Valid() const> @ imm = #0x1db92a
  32b6fa: 4603         	mov	r3, r0
  32b6fc: f083 0301    	eor	r3, r3, #0x1
  32b700: b2db         	uxtb	r3, r3
  32b702: 2b00         	cmp	r3, #0x0
  32b704: d001         	beq	0x32b70a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x10a> @ imm = #0x2
  32b706: 2500         	movs	r5, #0x0
  32b708: e04c         	b	0x32b7a4 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1a4> @ imm = #0x98
  32b70a: f89d 3090    	ldrb.w	r3, [sp, #0x90]
  32b70e: 2b00         	cmp	r3, #0x0
  32b710: d022         	beq	0x32b758 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x158> @ imm = #0x44
  32b712: 9808         	ldr	r0, [sp, #0x20]
  32b714: f1d4 faf1    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d45e2
  32b718: 4606         	mov	r6, r0
  32b71a: 9b05         	ldr	r3, [sp, #0x14]
  32b71c: f103 0514    	add.w	r5, r3, #0x14
  32b720: aa13         	add	r2, sp, #0x4c
  32b722: ab0d         	add	r3, sp, #0x34
  32b724: 4610         	mov	r0, r2
  32b726: 4619         	mov	r1, r3
  32b728: f000 ffc6    	bl	0x32c6b8 <std::vector<unsigned char, std::allocator<unsigned char>>::vector(std::vector<unsigned char, std::allocator<unsigned char>> const&)> @ imm = #0xf8c
  32b72c: ab19         	add	r3, sp, #0x64
  32b72e: 4618         	mov	r0, r3
  32b730: 4639         	mov	r1, r7
  32b732: f001 f89d    	bl	0x32c870 <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_+0x5c> @ imm = #0x113a
  32b736: aa0b         	add	r2, sp, #0x2c
  32b738: ab13         	add	r3, sp, #0x4c
  32b73a: a919         	add	r1, sp, #0x64
  32b73c: 9100         	str	r1, [sp]
  32b73e: 4630         	mov	r0, r6
  32b740: 4629         	mov	r1, r5
  32b742: f1e5 fb0b    	bl	0x510d5c <gpg::RealTimeMultiplayerManager::SendReliableMessage(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, std::function<void (gpg::MultiplayerStatus const&)>)> @ imm = #0x1e5616
  32b746: ab19         	add	r3, sp, #0x64
  32b748: 4618         	mov	r0, r3
  32b74a: f7ff fe5b    	bl	0x32b404 <std::function<void (gpg::MultiplayerStatus const&)>::~function()> @ imm = #-0x34a
  32b74e: ab13         	add	r3, sp, #0x4c
  32b750: 4618         	mov	r0, r3
  32b752: f000 ff49    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0xe92
  32b756: e024         	b	0x32b7a2 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1a2> @ imm = #0x48
  32b758: ab13         	add	r3, sp, #0x4c
  32b75a: 4618         	mov	r0, r3
  32b75c: f000 fe9a    	bl	0x32c494 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::vector()> @ imm = #0xd34
  32b760: aa13         	add	r2, sp, #0x4c
  32b762: ab0b         	add	r3, sp, #0x2c
  32b764: 4610         	mov	r0, r2
  32b766: 4619         	mov	r1, r3
  32b768: f001 f8bc    	bl	0x32c8e4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::push_back(gpg::MultiplayerParticipant const&)> @ imm = #0x1178
  32b76c: 9808         	ldr	r0, [sp, #0x20]
  32b76e: f1d4 fac4    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d4588
  32b772: 4606         	mov	r6, r0
  32b774: 9b05         	ldr	r3, [sp, #0x14]
  32b776: f103 0514    	add.w	r5, r3, #0x14
  32b77a: aa16         	add	r2, sp, #0x58
  32b77c: ab0d         	add	r3, sp, #0x34
  32b77e: 4610         	mov	r0, r2
  32b780: 4619         	mov	r1, r3
  32b782: f000 ff99    	bl	0x32c6b8 <std::vector<unsigned char, std::allocator<unsigned char>>::vector(std::vector<unsigned char, std::allocator<unsigned char>> const&)> @ imm = #0xf32
  32b786: aa13         	add	r2, sp, #0x4c
  32b788: ab16         	add	r3, sp, #0x58
  32b78a: 4630         	mov	r0, r6
  32b78c: 4629         	mov	r1, r5
  32b78e: f1e5 fe66    	bl	0x51145e <gpg::RealTimeMultiplayerManager::SendUnreliableMessage(gpg::RealTimeRoom const&, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>> const&, std::vector<unsigned char, std::allocator<unsigned char>>)> @ imm = #0x1e5ccc
  32b792: ab16         	add	r3, sp, #0x58
  32b794: 4618         	mov	r0, r3
  32b796: f000 ff27    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0xe4e
  32b79a: ab13         	add	r3, sp, #0x4c
  32b79c: 4618         	mov	r0, r3
  32b79e: f000 fe11    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0xc22
  32b7a2: 2501         	movs	r5, #0x1
  32b7a4: ab10         	add	r3, sp, #0x40
  32b7a6: 4618         	mov	r0, r3
  32b7a8: f000 fe0c    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0xc18
  32b7ac: 2d01         	cmp	r5, #0x1
  32b7ae: d001         	beq	0x32b7b4 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1b4> @ imm = #0x2
  32b7b0: 2500         	movs	r5, #0x0
  32b7b2: e001         	b	0x32b7b8 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1b8> @ imm = #0x2
  32b7b4: bf00         	nop
  32b7b6: 2501         	movs	r5, #0x1
  32b7b8: ab0b         	add	r3, sp, #0x2c
  32b7ba: 4618         	mov	r0, r3
  32b7bc: f1db fd1c    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dba38
  32b7c0: 2d01         	cmp	r5, #0x1
  32b7c2: d001         	beq	0x32b7c8 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1c8> @ imm = #0x2
  32b7c4: 2500         	movs	r5, #0x0
  32b7c6: e001         	b	0x32b7cc <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1cc> @ imm = #0x2
  32b7c8: bf00         	nop
  32b7ca: 2501         	movs	r5, #0x1
  32b7cc: ab0d         	add	r3, sp, #0x34
  32b7ce: 4618         	mov	r0, r3
  32b7d0: f000 ff0a    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0xe14
  32b7d4: 2d01         	cmp	r5, #0x1
  32b7d6: d130         	bne	0x32b83a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x23a> @ imm = #0x60
  32b7d8: bf00         	nop
  32b7da: e02e         	b	0x32b83a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x23a> @ imm = #0x5c
  32b7dc: ab16         	add	r3, sp, #0x58
  32b7de: 4618         	mov	r0, r3
  32b7e0: f000 feda    	bl	0x32c598 <std::allocator<unsigned char>::~allocator()> @ imm = #0xdb4
  32b7e4: f05c f462    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c8c4
  32b7e8: ab16         	add	r3, sp, #0x58
  32b7ea: 4618         	mov	r0, r3
  32b7ec: f1db fd04    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1dba08
  32b7f0: e013         	b	0x32b81a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x21a> @ imm = #0x26
  32b7f2: ab19         	add	r3, sp, #0x64
  32b7f4: 4618         	mov	r0, r3
  32b7f6: f7ff fe05    	bl	0x32b404 <std::function<void (gpg::MultiplayerStatus const&)>::~function()> @ imm = #-0x3f6
  32b7fa: e7ff         	b	0x32b7fc <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x1fc> @ imm = #-0x2
  32b7fc: ab13         	add	r3, sp, #0x4c
  32b7fe: 4618         	mov	r0, r3
  32b800: f000 fef2    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0xde4
  32b804: e009         	b	0x32b81a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x21a> @ imm = #0x12
  32b806: ab16         	add	r3, sp, #0x58
  32b808: 4618         	mov	r0, r3
  32b80a: f000 feed    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0xdda
  32b80e: e7ff         	b	0x32b810 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x210> @ imm = #-0x2
  32b810: ab13         	add	r3, sp, #0x4c
  32b812: 4618         	mov	r0, r3
  32b814: f000 fdd6    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0xbac
  32b818: e7ff         	b	0x32b81a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x21a> @ imm = #-0x2
  32b81a: ab10         	add	r3, sp, #0x40
  32b81c: 4618         	mov	r0, r3
  32b81e: f000 fdd1    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0xba2
  32b822: e7ff         	b	0x32b824 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x224> @ imm = #-0x2
  32b824: ab0b         	add	r3, sp, #0x2c
  32b826: 4618         	mov	r0, r3
  32b828: f1db fce6    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1db9cc
  32b82c: e7ff         	b	0x32b82e <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x22e> @ imm = #-0x2
  32b82e: ab0d         	add	r3, sp, #0x34
  32b830: 4618         	mov	r0, r3
  32b832: f000 fed9    	bl	0x32c5e8 <std::vector<unsigned char, std::allocator<unsigned char>>::~vector()> @ imm = #0xdb2
  32b836: f05c f439    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c872
  32b83a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x32b854 <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x254>
  32b83c: 58e3         	ldr	r3, [r4, r3]
  32b83e: 9a1d         	ldr	r2, [sp, #0x74]
  32b840: 681b         	ldr	r3, [r3]
  32b842: 429a         	cmp	r2, r3
  32b844: d001         	beq	0x32b84a <GPGSRealtimeMultiplayerManager::sendMessageToPlayer(void const*, int, std::string, bool)+0x24a> @ imm = #0x2
  32b846: f7aa eb90    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x558e0
  32b84a: b01f         	add	sp, #0x7c
  32b84c: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x32b84d); words below are literal-pool data ---
  32b84e: bf00         	nop
  32b850: 73fa         	strb	r2, [r7, #0xf]
  32b852: 0060         	lsls	r0, r4, #0x1
  32b854: d72c         	bvc	0x32b8b0 <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x58> @ imm = #0x58
  32b856: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GPGSRealtimeMultiplayerManager::OnDataReceived
//      file offset 0x32b858 (= ELF address; Ghidra 0x33b858), 270 bytes, Thumb-2
  32b858: b530         	push	{r4, r5, lr}
  32b85a: b087         	sub	sp, #0x1c
  32b85c: 9003         	str	r0, [sp, #0xc]
  32b85e: 9102         	str	r1, [sp, #0x8]
  32b860: 9201         	str	r2, [sp, #0x4]
  32b862: 9300         	str	r3, [sp]
  32b864: 9b03         	ldr	r3, [sp, #0xc]
  32b866: ed93 7a02    	vldr	s14, [r3, #8]
  32b86a: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  32b86e: eeb4 7ae7    	vcmpe.f32	s14, s15
  32b872: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  32b876: dd0b         	ble	0x32b890 <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x38> @ imm = #0x16
  32b878: 9b03         	ldr	r3, [sp, #0xc]
  32b87a: 681b         	ldr	r3, [r3]
  32b87c: 3308         	adds	r3, #0x8
  32b87e: 681b         	ldr	r3, [r3]
  32b880: 9803         	ldr	r0, [sp, #0xc]
  32b882: 9902         	ldr	r1, [sp, #0x8]
  32b884: 4798         	blx	r3
  32b886: 9b03         	ldr	r3, [sp, #0xc]
  32b888: f04f 0200    	mov.w	r2, #0x0
  32b88c: 609a         	str	r2, [r3, #0x8]
  32b88e: e00d         	b	0x32b8ac <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x54> @ imm = #0x1a
  32b890: 9b03         	ldr	r3, [sp, #0xc]
  32b892: 3314         	adds	r3, #0x14
  32b894: 4618         	mov	r0, r3
  32b896: f1e7 fdff    	bl	0x513498 <gpg::RealTimeRoom::Valid() const> @ imm = #0x1e7bfe
  32b89a: 4603         	mov	r3, r0
  32b89c: 2b00         	cmp	r3, #0x0
  32b89e: d005         	beq	0x32b8ac <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x54> @ imm = #0xa
  32b8a0: 9b03         	ldr	r3, [sp, #0xc]
  32b8a2: 3314         	adds	r3, #0x14
  32b8a4: 4618         	mov	r0, r3
  32b8a6: 9902         	ldr	r1, [sp, #0x8]
  32b8a8: f1e7 ff31    	bl	0x51370e <gpg::RealTimeRoom::operator=(gpg::RealTimeRoom const&)> @ imm = #0x1e7e62
  32b8ac: 9803         	ldr	r0, [sp, #0xc]
  32b8ae: f7fe ff01    	bl	0x32a6b4 <GPGSRealtimeMultiplayerManager::isRoomValid()> @ imm = #-0x11fe
  32b8b2: 4603         	mov	r3, r0
  32b8b4: f083 0301    	eor	r3, r3, #0x1
  32b8b8: b2db         	uxtb	r3, r3
  32b8ba: 2b00         	cmp	r3, #0x0
  32b8bc: d000         	beq	0x32b8c0 <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x68> @ imm = #0x0
  32b8be: e050         	b	0x32b962 <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x10a> @ imm = #0xa0
  32b8c0: 9800         	ldr	r0, [sp]
  32b8c2: f001 f82f    	bl	0x32c924 <std::vector<unsigned char, std::allocator<unsigned char>>::begin()> @ imm = #0x105e
  32b8c6: 4605         	mov	r5, r0
  32b8c8: 9800         	ldr	r0, [sp]
  32b8ca: f001 f839    	bl	0x32c940 <std::vector<unsigned char, std::allocator<unsigned char>>::end()> @ imm = #0x1072
  32b8ce: 4604         	mov	r4, r0
  32b8d0: ab05         	add	r3, sp, #0x14
  32b8d2: 4618         	mov	r0, r3
  32b8d4: f05e f58e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45eb1c
  32b8d8: aa04         	add	r2, sp, #0x10
  32b8da: ab05         	add	r3, sp, #0x14
  32b8dc: 4610         	mov	r0, r2
  32b8de: 4629         	mov	r1, r5
  32b8e0: 4622         	mov	r2, r4
  32b8e2: f001 f83d    	bl	0x32c960 <std::basic_string<char, std::char_traits<char>, std::allocator<char>>::basic_string<__gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned char>>>>(__gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned char>>>, __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned char>>>, std::allocator<char> const&)> @ imm = #0x107a
  32b8e6: ab05         	add	r3, sp, #0x14
  32b8e8: 4618         	mov	r0, r3
  32b8ea: f05e f587    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45eb0e
  32b8ee: 9801         	ldr	r0, [sp, #0x4]
  32b8f0: f1db fb9e    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db73c
  32b8f4: 4603         	mov	r3, r0
  32b8f6: aa05         	add	r2, sp, #0x14
  32b8f8: 4610         	mov	r0, r2
  32b8fa: 4619         	mov	r1, r3
  32b8fc: f08a f5f4    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48abe8
  32b900: 9b03         	ldr	r3, [sp, #0xc]
  32b902: 3350         	adds	r3, #0x50
  32b904: 4618         	mov	r0, r3
  32b906: f7fd fe6f    	bl	0x3295e8 <std::mutex::lock()> @ imm = #-0x2322
  32b90a: 9b03         	ldr	r3, [sp, #0xc]
  32b90c: f103 0220    	add.w	r2, r3, #0x20
  32b910: ab05         	add	r3, sp, #0x14
  32b912: 4610         	mov	r0, r2
  32b914: 4619         	mov	r1, r3
  32b916: f001 f839    	bl	0x32c98c <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::operator[](std::string const&)> @ imm = #0x1072
  32b91a: 4603         	mov	r3, r0
  32b91c: 4618         	mov	r0, r3
  32b91e: 9900         	ldr	r1, [sp]
  32b920: f001 f896    	bl	0x32ca50 <std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>::push_back(std::vector<unsigned char, std::allocator<unsigned char>> const&)> @ imm = #0x112c
  32b924: 9b03         	ldr	r3, [sp, #0xc]
  32b926: 3350         	adds	r3, #0x50
  32b928: 4618         	mov	r0, r3
  32b92a: f7fd fe6f    	bl	0x32960c <std::mutex::unlock()> @ imm = #-0x2322
  32b92e: ab05         	add	r3, sp, #0x14
  32b930: 4618         	mov	r0, r3
  32b932: f089 f7ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489fde
  32b936: ab04         	add	r3, sp, #0x10
  32b938: 4618         	mov	r0, r3
  32b93a: f089 f7eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489fd6
  32b93e: e010         	b	0x32b962 <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0x10a> @ imm = #0x20
  32b940: ab05         	add	r3, sp, #0x14
  32b942: 4618         	mov	r0, r3
  32b944: f05e f55a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45eab4
  32b948: f05c f3b0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c760
  32b94c: ab05         	add	r3, sp, #0x14
  32b94e: 4618         	mov	r0, r3
  32b950: f089 f7e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489fc0
  32b954: e7ff         	b	0x32b956 <GPGSRealtimeMultiplayerManager::OnDataReceived(gpg::RealTimeRoom const&, gpg::MultiplayerParticipant const&, std::vector<unsigned char, std::allocator<unsigned char>>, bool)+0xfe> @ imm = #-0x2
  32b956: ab04         	add	r3, sp, #0x10
  32b958: 4618         	mov	r0, r3
  32b95a: f089 f7db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489fb6
  32b95e: f05c f3a5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c74a
  32b962: b007         	add	sp, #0x1c
  32b964: bd30         	pop	{r4, r5, pc}

// ==== GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation
//      file offset 0x32b990 (= ELF address; Ghidra 0x33b990), 60 bytes, Thumb-2
  32b990: b510         	push	{r4, lr}
  32b992: b08c         	sub	sp, #0x30
  32b994: 9003         	str	r0, [sp, #0xc]
  32b996: 9102         	str	r1, [sp, #0x8]
  32b998: 9201         	str	r2, [sp, #0x4]
  32b99a: 9300         	str	r3, [sp]
  32b99c: 4c09         	ldr	r4, [pc, #0x24]         @ 0x32b9c4 <GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)+0x34>
  32b99e: 447c         	add	r4, pc
  32b9a0: 4b09         	ldr	r3, [pc, #0x24]         @ 0x32b9c8 <GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)+0x38>
  32b9a2: 58e3         	ldr	r3, [r4, r3]
  32b9a4: 681b         	ldr	r3, [r3]
  32b9a6: 930b         	str	r3, [sp, #0x2c]
  32b9a8: 9803         	ldr	r0, [sp, #0xc]
  32b9aa: f000 f85d    	bl	0x32ba68 <GPGSRealtimeMultiplayerManager::showRoomInbox()> @ imm = #0xba
  32b9ae: bf00         	nop
  32b9b0: 4b05         	ldr	r3, [pc, #0x14]         @ 0x32b9c8 <GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)+0x38>
  32b9b2: 58e3         	ldr	r3, [r4, r3]
  32b9b4: 9a0b         	ldr	r2, [sp, #0x2c]
  32b9b6: 681b         	ldr	r3, [r3]
  32b9b8: 429a         	cmp	r2, r3
  32b9ba: d001         	beq	0x32b9c0 <GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)+0x30> @ imm = #0x2
  32b9bc: f7aa ead4    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x55a58
  32b9c0: b00c         	add	sp, #0x30
  32b9c2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x32b9c3); words below are literal-pool data ---
  32b9c4: 706a         	strb	r2, [r5, #0x1]
  32b9c6: 0060         	lsls	r0, r4, #0x1
  32b9c8: d72c         	bvc	0x32ba24 <GPGSRealtimeMultiplayerManager::OnMultiplayerInvitation(gpg::MultiplayerEvent, std::string, gpg::MultiplayerInvitation)+0x94> @ imm = #0x58
  32b9ca: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::showRoomInbox
//      file offset 0x32ba68 (= ELF address; Ghidra 0x33ba68), 116 bytes, Thumb-2
  32ba68: b530         	push	{r4, r5, lr}
  32ba6a: b08b         	sub	sp, #0x2c
  32ba6c: 9001         	str	r0, [sp, #0x4]
  32ba6e: 4c19         	ldr	r4, [pc, #0x64]         @ 0x32bad4 <GPGSRealtimeMultiplayerManager::showRoomInbox()+0x6c>
  32ba70: 447c         	add	r4, pc
  32ba72: 4b19         	ldr	r3, [pc, #0x64]         @ 0x32bad8 <GPGSRealtimeMultiplayerManager::showRoomInbox()+0x70>
  32ba74: 58e3         	ldr	r3, [r4, r3]
  32ba76: 681b         	ldr	r3, [r3]
  32ba78: 9309         	str	r3, [sp, #0x24]
  32ba7a: f006 ffb3    	bl	0x3329e4 <GPGSStateManager::GetGameServices()> @ imm = #0x6f66
  32ba7e: 4603         	mov	r3, r0
  32ba80: 9302         	str	r3, [sp, #0x8]
  32ba82: 9802         	ldr	r0, [sp, #0x8]
  32ba84: f1d4 f939    	bl	0x4ffcfa <gpg::GameServices::RealTimeMultiplayer()> @ imm = #0x1d4272
  32ba88: 4605         	mov	r5, r0
  32ba8a: 9b01         	ldr	r3, [sp, #0x4]
  32ba8c: 9303         	str	r3, [sp, #0xc]
  32ba8e: 9b02         	ldr	r3, [sp, #0x8]
  32ba90: 9304         	str	r3, [sp, #0x10]
  32ba92: ab05         	add	r3, sp, #0x14
  32ba94: 4618         	mov	r0, r3
  32ba96: ab03         	add	r3, sp, #0xc
  32ba98: e893 0006    	ldm.w	r3, {r1, r2}
  32ba9c: f001 f84a    	bl	0x32cb34 <std::_Maybe_unary_or_binary_function<void, gpg::RealTimeMultiplayerManager::RoomInboxUIResponse const&>::_Maybe_unary_or_binary_function()+0x24> @ imm = #0x1094
  32baa0: ab05         	add	r3, sp, #0x14
  32baa2: 4628         	mov	r0, r5
  32baa4: 4619         	mov	r1, r3
  32baa6: f1e5 fab1    	bl	0x51100c <gpg::RealTimeMultiplayerManager::ShowRoomInboxUI(std::function<void (gpg::RealTimeMultiplayerManager::RoomInboxUIResponse const&)>)> @ imm = #0x1e5562
  32baaa: ab05         	add	r3, sp, #0x14
  32baac: 4618         	mov	r0, r3
  32baae: f7ff ffcf    	bl	0x32ba50 <std::function<void (gpg::RealTimeMultiplayerManager::RoomInboxUIResponse const&)>::~function()> @ imm = #-0x62
  32bab2: 4b09         	ldr	r3, [pc, #0x24]         @ 0x32bad8 <GPGSRealtimeMultiplayerManager::showRoomInbox()+0x70>
  32bab4: 58e3         	ldr	r3, [r4, r3]
  32bab6: 9a09         	ldr	r2, [sp, #0x24]
  32bab8: 681b         	ldr	r3, [r3]
  32baba: 429a         	cmp	r2, r3
  32babc: d008         	beq	0x32bad0 <GPGSRealtimeMultiplayerManager::showRoomInbox()+0x68> @ imm = #0x10
  32babe: e005         	b	0x32bacc <GPGSRealtimeMultiplayerManager::showRoomInbox()+0x64> @ imm = #0xa
  32bac0: ab05         	add	r3, sp, #0x14
  32bac2: 4618         	mov	r0, r3
  32bac4: f7ff ffc4    	bl	0x32ba50 <std::function<void (gpg::RealTimeMultiplayerManager::RoomInboxUIResponse const&)>::~function()> @ imm = #-0x78
  32bac8: f05c f2f0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c5e0
  32bacc: f7aa ea4c    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0x55b68
  32bad0: b00b         	add	sp, #0x2c
  32bad2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32bad3); words below are literal-pool data ---
  32bad4: 6f98         	ldr	r0, [r3, #0x78]
  32bad6: 0060         	lsls	r0, r4, #0x1
  32bad8: d72c         	bvc	0x32bb34 <GPGSRealtimeMultiplayerManager::readEvents()+0xc> @ imm = #0x58
  32bada: ffff b500    	<unknown>

// ==== GPGSRealtimeMultiplayerManager::readMessages
//      file offset 0x32badc (= ELF address; Ghidra 0x33badc), 76 bytes, Thumb-2
  32badc: b500         	push	{lr}
  32bade: b083         	sub	sp, #0xc
  32bae0: 9001         	str	r0, [sp, #0x4]
  32bae2: 9100         	str	r1, [sp]
  32bae4: 9801         	ldr	r0, [sp, #0x4]
  32bae6: f000 fa17    	bl	0x32bf18 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::map()> @ imm = #0x42e
  32baea: 9b00         	ldr	r3, [sp]
  32baec: 3350         	adds	r3, #0x50
  32baee: 4618         	mov	r0, r3
  32baf0: f7fd fd7a    	bl	0x3295e8 <std::mutex::lock()> @ imm = #-0x250c
  32baf4: 9b00         	ldr	r3, [sp]
  32baf6: 3320         	adds	r3, #0x20
  32baf8: 9801         	ldr	r0, [sp, #0x4]
  32bafa: 4619         	mov	r1, r3
  32bafc: f001 f850    	bl	0x32cba0 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::operator=(std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>> const&)> @ imm = #0x10a0
  32bb00: 9b00         	ldr	r3, [sp]
  32bb02: 3320         	adds	r3, #0x20
  32bb04: 4618         	mov	r0, r3
  32bb06: f001 f85b    	bl	0x32cbc0 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::clear()> @ imm = #0x10b6
  32bb0a: 9b00         	ldr	r3, [sp]
  32bb0c: 3350         	adds	r3, #0x50
  32bb0e: 4618         	mov	r0, r3
  32bb10: f7fd fd7c    	bl	0x32960c <std::mutex::unlock()> @ imm = #-0x2508
  32bb14: e004         	b	0x32bb20 <GPGSRealtimeMultiplayerManager::readMessages()+0x44> @ imm = #0x8
  32bb16: 9801         	ldr	r0, [sp, #0x4]
  32bb18: f7fd fe2c    	bl	0x329774 <std::map<std::string, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>, std::less<std::string>, std::allocator<std::pair<std::string const, std::vector<std::vector<unsigned char, std::allocator<unsigned char>>, std::allocator<std::vector<unsigned char, std::allocator<unsigned char>>>>>>>::~map()> @ imm = #-0x23a8
  32bb1c: f05c f2c6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c58c
  32bb20: 9801         	ldr	r0, [sp, #0x4]
  32bb22: b003         	add	sp, #0xc
  32bb24: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::readEvents
//      file offset 0x32bb28 (= ELF address; Ghidra 0x33bb28), 76 bytes, Thumb-2
  32bb28: b500         	push	{lr}
  32bb2a: b083         	sub	sp, #0xc
  32bb2c: 9001         	str	r0, [sp, #0x4]
  32bb2e: 9100         	str	r1, [sp]
  32bb30: 9801         	ldr	r0, [sp, #0x4]
  32bb32: f000 fa49    	bl	0x32bfc8 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::vector()> @ imm = #0x492
  32bb36: 9b00         	ldr	r3, [sp]
  32bb38: 3354         	adds	r3, #0x54
  32bb3a: 4618         	mov	r0, r3
  32bb3c: f7fd fd54    	bl	0x3295e8 <std::mutex::lock()> @ imm = #-0x2558
  32bb40: 9b00         	ldr	r3, [sp]
  32bb42: 3358         	adds	r3, #0x58
  32bb44: 9801         	ldr	r0, [sp, #0x4]
  32bb46: 4619         	mov	r1, r3
  32bb48: f001 f84c    	bl	0x32cbe4 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::operator=(std::vector<GPGSEventObject, std::allocator<GPGSEventObject>> const&)> @ imm = #0x1098
  32bb4c: 9b00         	ldr	r3, [sp]
  32bb4e: 3358         	adds	r3, #0x58
  32bb50: 4618         	mov	r0, r3
  32bb52: f001 f95b    	bl	0x32ce0c <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::clear()> @ imm = #0x12b6
  32bb56: 9b00         	ldr	r3, [sp]
  32bb58: 3354         	adds	r3, #0x54
  32bb5a: 4618         	mov	r0, r3
  32bb5c: f7fd fd56    	bl	0x32960c <std::mutex::unlock()> @ imm = #-0x2554
  32bb60: e004         	b	0x32bb6c <GPGSRealtimeMultiplayerManager::readEvents()+0x44> @ imm = #0x8
  32bb62: 9801         	ldr	r0, [sp, #0x4]
  32bb64: f000 fa3c    	bl	0x32bfe0 <std::vector<GPGSEventObject, std::allocator<GPGSEventObject>>::~vector()> @ imm = #0x478
  32bb68: f05c f2a0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c540
  32bb6c: 9801         	ldr	r0, [sp, #0x4]
  32bb6e: b003         	add	sp, #0xc
  32bb70: f85d fb04    	ldr	pc, [sp], #4

// ==== GPGSRealtimeMultiplayerManager::checkShouldCloseRoom
//      file offset 0x32bb74 (= ELF address; Ghidra 0x33bb74), 572 bytes, Thumb-2
  32bb74: b570         	push	{r4, r5, r6, lr}
  32bb76: b092         	sub	sp, #0x48
  32bb78: 9001         	str	r0, [sp, #0x4]
  32bb7a: 2300         	movs	r3, #0x0
  32bb7c: 930a         	str	r3, [sp, #0x28]
  32bb7e: 2300         	movs	r3, #0x0
  32bb80: 930b         	str	r3, [sp, #0x2c]
  32bb82: f7fe fd49    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0x156e
  32bb86: 4603         	mov	r3, r0
  32bb88: aa0f         	add	r2, sp, #0x3c
  32bb8a: 4610         	mov	r0, r2
  32bb8c: 4619         	mov	r1, r3
  32bb8e: f7ff f983    	bl	0x32ae98 <GPGSRealtimeMultiplayerManager::getRoomParticipants()> @ imm = #-0xcfa
  32bb92: ab0f         	add	r3, sp, #0x3c
  32bb94: 930c         	str	r3, [sp, #0x30]
  32bb96: 980c         	ldr	r0, [sp, #0x30]
  32bb98: f000 fc34    	bl	0x32c404 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin()> @ imm = #0x868
  32bb9c: 4603         	mov	r3, r0
  32bb9e: 9302         	str	r3, [sp, #0x8]
  32bba0: 980c         	ldr	r0, [sp, #0x30]
  32bba2: f000 fc3d    	bl	0x32c420 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end()> @ imm = #0x87a
  32bba6: 4603         	mov	r3, r0
  32bba8: 9303         	str	r3, [sp, #0xc]
  32bbaa: e0c4         	b	0x32bd36 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x1c2> @ imm = #0x188
  32bbac: ab02         	add	r3, sp, #0x8
  32bbae: 4618         	mov	r0, r3
  32bbb0: f000 fc68    	bl	0x32c484 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #0x8d0
  32bbb4: 4603         	mov	r3, r0
  32bbb6: aa0d         	add	r2, sp, #0x34
  32bbb8: 4610         	mov	r0, r2
  32bbba: 4619         	mov	r1, r3
  32bbbc: f1db fa16    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0x1db42c
  32bbc0: 9b0a         	ldr	r3, [sp, #0x28]
  32bbc2: 3301         	adds	r3, #0x1
  32bbc4: 930a         	str	r3, [sp, #0x28]
  32bbc6: 2400         	movs	r4, #0x0
  32bbc8: 2500         	movs	r5, #0x0
  32bbca: 9b01         	ldr	r3, [sp, #0x4]
  32bbcc: f103 0638    	add.w	r6, r3, #0x38
  32bbd0: ab0d         	add	r3, sp, #0x34
  32bbd2: 4618         	mov	r0, r3
  32bbd4: f1db fa2c    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db458
  32bbd8: 4603         	mov	r3, r0
  32bbda: 4630         	mov	r0, r6
  32bbdc: 4619         	mov	r1, r3
  32bbde: f001 f921    	bl	0x32ce24 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::find(std::string const&)> @ imm = #0x1242
  32bbe2: 4603         	mov	r3, r0
  32bbe4: 9304         	str	r3, [sp, #0x10]
  32bbe6: 2401         	movs	r4, #0x1
  32bbe8: 9b01         	ldr	r3, [sp, #0x4]
  32bbea: 3338         	adds	r3, #0x38
  32bbec: 4618         	mov	r0, r3
  32bbee: f001 f927    	bl	0x32ce40 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::end()> @ imm = #0x124e
  32bbf2: 4603         	mov	r3, r0
  32bbf4: 9305         	str	r3, [sp, #0x14]
  32bbf6: 2501         	movs	r5, #0x1
  32bbf8: aa04         	add	r2, sp, #0x10
  32bbfa: ab05         	add	r3, sp, #0x14
  32bbfc: 4610         	mov	r0, r2
  32bbfe: 4619         	mov	r1, r3
  32bc00: f001 f92a    	bl	0x32ce58 <std::_Rb_tree_iterator<std::pair<std::string const, int>>::operator==(std::_Rb_tree_iterator<std::pair<std::string const, int>> const&) const> @ imm = #0x1254
  32bc04: 4603         	mov	r3, r0
  32bc06: 2b00         	cmp	r3, #0x0
  32bc08: d008         	beq	0x32bc1c <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0xa8> @ imm = #0x10
  32bc0a: ab0d         	add	r3, sp, #0x34
  32bc0c: 4618         	mov	r0, r3
  32bc0e: f1db fadf    	bl	0x5071d0 <gpg::MultiplayerParticipant::IsConnectedToRoom() const> @ imm = #0x1db5be
  32bc12: 4603         	mov	r3, r0
  32bc14: 2b00         	cmp	r3, #0x0
  32bc16: d001         	beq	0x32bc1c <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0xa8> @ imm = #0x2
  32bc18: 2301         	movs	r3, #0x1
  32bc1a: e000         	b	0x32bc1e <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0xaa> @ imm = #0x0
  32bc1c: 2300         	movs	r3, #0x0
  32bc1e: 2d00         	cmp	r5, #0x0
  32bc20: 2c00         	cmp	r4, #0x0
  32bc22: 2b00         	cmp	r3, #0x0
  32bc24: d035         	beq	0x32bc92 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x11e> @ imm = #0x6a
  32bc26: 9b01         	ldr	r3, [sp, #0x4]
  32bc28: f103 0438    	add.w	r4, r3, #0x38
  32bc2c: ab0d         	add	r3, sp, #0x34
  32bc2e: 4618         	mov	r0, r3
  32bc30: f1db f9fe    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db3fc
  32bc34: 4603         	mov	r3, r0
  32bc36: 4620         	mov	r0, r4
  32bc38: 4619         	mov	r1, r3
  32bc3a: f000 fb1b    	bl	0x32c274 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::operator[](std::string const&)> @ imm = #0x636
  32bc3e: 4604         	mov	r4, r0
  32bc40: ab0d         	add	r3, sp, #0x34
  32bc42: 4618         	mov	r0, r3
  32bc44: f1db fa74    	bl	0x507130 <gpg::MultiplayerParticipant::Status() const> @ imm = #0x1db4e8
  32bc48: 4603         	mov	r3, r0
  32bc4a: 6023         	str	r3, [r4]
  32bc4c: ab0d         	add	r3, sp, #0x34
  32bc4e: 4618         	mov	r0, r3
  32bc50: f1db f9ee    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db3dc
  32bc54: 4603         	mov	r3, r0
  32bc56: aa06         	add	r2, sp, #0x18
  32bc58: 4610         	mov	r0, r2
  32bc5a: 4619         	mov	r1, r3
  32bc5c: f08a f444    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48a888
  32bc60: ab0d         	add	r3, sp, #0x34
  32bc62: 4618         	mov	r0, r3
  32bc64: f1db f9f8    	bl	0x507058 <gpg::MultiplayerParticipant::DisplayName() const> @ imm = #0x1db3f0
  32bc68: 4603         	mov	r3, r0
  32bc6a: aa07         	add	r2, sp, #0x1c
  32bc6c: 4610         	mov	r0, r2
  32bc6e: 4619         	mov	r1, r3
  32bc70: f08a f43a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48a874
  32bc74: aa06         	add	r2, sp, #0x18
  32bc76: ab07         	add	r3, sp, #0x1c
  32bc78: 9801         	ldr	r0, [sp, #0x4]
  32bc7a: 4611         	mov	r1, r2
  32bc7c: 461a         	mov	r2, r3
  32bc7e: f7ff fb4b    	bl	0x32b318 <GPGSRealtimeMultiplayerManager::addPlayer(std::string, std::string)> @ imm = #-0x96a
  32bc82: ab07         	add	r3, sp, #0x1c
  32bc84: 4618         	mov	r0, r3
  32bc86: f089 f645    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489c8a
  32bc8a: ab06         	add	r3, sp, #0x18
  32bc8c: 4618         	mov	r0, r3
  32bc8e: f089 f641    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489c82
  32bc92: ab0d         	add	r3, sp, #0x34
  32bc94: 4618         	mov	r0, r3
  32bc96: f1db fa9b    	bl	0x5071d0 <gpg::MultiplayerParticipant::IsConnectedToRoom() const> @ imm = #0x1db536
  32bc9a: 4603         	mov	r3, r0
  32bc9c: f083 0301    	eor	r3, r3, #0x1
  32bca0: b2db         	uxtb	r3, r3
  32bca2: 2b00         	cmp	r3, #0x0
  32bca4: d035         	beq	0x32bd12 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x19e> @ imm = #0x6a
  32bca6: 9b01         	ldr	r3, [sp, #0x4]
  32bca8: f103 0438    	add.w	r4, r3, #0x38
  32bcac: ab0d         	add	r3, sp, #0x34
  32bcae: 4618         	mov	r0, r3
  32bcb0: f1db f9be    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db37c
  32bcb4: 4603         	mov	r3, r0
  32bcb6: 4620         	mov	r0, r4
  32bcb8: 4619         	mov	r1, r3
  32bcba: f000 fadb    	bl	0x32c274 <std::map<std::string, int, std::less<std::string>, std::allocator<std::pair<std::string const, int>>>::operator[](std::string const&)> @ imm = #0x5b6
  32bcbe: 4604         	mov	r4, r0
  32bcc0: ab0d         	add	r3, sp, #0x34
  32bcc2: 4618         	mov	r0, r3
  32bcc4: f1db fa34    	bl	0x507130 <gpg::MultiplayerParticipant::Status() const> @ imm = #0x1db468
  32bcc8: 4603         	mov	r3, r0
  32bcca: 6023         	str	r3, [r4]
  32bccc: ab0d         	add	r3, sp, #0x34
  32bcce: 4618         	mov	r0, r3
  32bcd0: f1db f9ae    	bl	0x507030 <gpg::MultiplayerParticipant::Id() const> @ imm = #0x1db35c
  32bcd4: 4603         	mov	r3, r0
  32bcd6: aa08         	add	r2, sp, #0x20
  32bcd8: 4610         	mov	r0, r2
  32bcda: 4619         	mov	r1, r3
  32bcdc: f08a f404    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48a808
  32bce0: ab0d         	add	r3, sp, #0x34
  32bce2: 4618         	mov	r0, r3
  32bce4: f1db f9b8    	bl	0x507058 <gpg::MultiplayerParticipant::DisplayName() const> @ imm = #0x1db370
  32bce8: 4603         	mov	r3, r0
  32bcea: aa09         	add	r2, sp, #0x24
  32bcec: 4610         	mov	r0, r2
  32bcee: 4619         	mov	r1, r3
  32bcf0: f08a f3fa    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x48a7f4
  32bcf4: aa08         	add	r2, sp, #0x20
  32bcf6: ab09         	add	r3, sp, #0x24
  32bcf8: 9801         	ldr	r0, [sp, #0x4]
  32bcfa: 4611         	mov	r1, r2
  32bcfc: 461a         	mov	r2, r3
  32bcfe: f7ff fb43    	bl	0x32b388 <GPGSRealtimeMultiplayerManager::removePlayer(std::string, std::string)> @ imm = #-0x97a
  32bd02: ab09         	add	r3, sp, #0x24
  32bd04: 4618         	mov	r0, r3
  32bd06: f089 f605    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489c0a
  32bd0a: ab08         	add	r3, sp, #0x20
  32bd0c: 4618         	mov	r0, r3
  32bd0e: f089 f601    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489c02
  32bd12: ab0d         	add	r3, sp, #0x34
  32bd14: 4618         	mov	r0, r3
  32bd16: f1db fa5b    	bl	0x5071d0 <gpg::MultiplayerParticipant::IsConnectedToRoom() const> @ imm = #0x1db4b6
  32bd1a: 4603         	mov	r3, r0
  32bd1c: 2b00         	cmp	r3, #0x0
  32bd1e: d002         	beq	0x32bd26 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x1b2> @ imm = #0x4
  32bd20: 9b0b         	ldr	r3, [sp, #0x2c]
  32bd22: 3301         	adds	r3, #0x1
  32bd24: 930b         	str	r3, [sp, #0x2c]
  32bd26: ab0d         	add	r3, sp, #0x34
  32bd28: 4618         	mov	r0, r3
  32bd2a: f1db fa65    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1db4ca
  32bd2e: ab02         	add	r3, sp, #0x8
  32bd30: 4618         	mov	r0, r3
  32bd32: f000 fb9b    	bl	0x32c46c <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #0x736
  32bd36: aa02         	add	r2, sp, #0x8
  32bd38: ab03         	add	r3, sp, #0xc
  32bd3a: 4610         	mov	r0, r2
  32bd3c: 4619         	mov	r1, r3
  32bd3e: f000 fb7f    	bl	0x32c440 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #0x6fe
  32bd42: 4603         	mov	r3, r0
  32bd44: 2b00         	cmp	r3, #0x0
  32bd46: f47f af31    	bne.w	0x32bbac <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x38> @ imm = #-0x19e
  32bd4a: 9b0a         	ldr	r3, [sp, #0x28]
  32bd4c: 2b01         	cmp	r3, #0x1
  32bd4e: dd05         	ble	0x32bd5c <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x1e8> @ imm = #0xa
  32bd50: 9b0b         	ldr	r3, [sp, #0x2c]
  32bd52: 2b01         	cmp	r3, #0x1
  32bd54: dc02         	bgt	0x32bd5c <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x1e8> @ imm = #0x4
  32bd56: 9801         	ldr	r0, [sp, #0x4]
  32bd58: f7ff f8c6    	bl	0x32aee8 <GPGSRealtimeMultiplayerManager::disconnect()> @ imm = #-0xe74
  32bd5c: ab0f         	add	r3, sp, #0x3c
  32bd5e: 4618         	mov	r0, r3
  32bd60: f000 fb30    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x660
  32bd64: e022         	b	0x32bdac <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x238> @ imm = #0x44
  32bd66: 2d00         	cmp	r5, #0x0
  32bd68: 2c00         	cmp	r4, #0x0
  32bd6a: bf00         	nop
  32bd6c: e013         	b	0x32bd96 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x222> @ imm = #0x26
  32bd6e: ab07         	add	r3, sp, #0x1c
  32bd70: 4618         	mov	r0, r3
  32bd72: f089 f5cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489b9e
  32bd76: e7ff         	b	0x32bd78 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x204> @ imm = #-0x2
  32bd78: ab06         	add	r3, sp, #0x18
  32bd7a: 4618         	mov	r0, r3
  32bd7c: f089 f5ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489b94
  32bd80: e009         	b	0x32bd96 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x222> @ imm = #0x12
  32bd82: ab09         	add	r3, sp, #0x24
  32bd84: 4618         	mov	r0, r3
  32bd86: f089 f5c5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489b8a
  32bd8a: e7ff         	b	0x32bd8c <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x218> @ imm = #-0x2
  32bd8c: ab08         	add	r3, sp, #0x20
  32bd8e: 4618         	mov	r0, r3
  32bd90: f089 f5c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x489b80
  32bd94: e7ff         	b	0x32bd96 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x222> @ imm = #-0x2
  32bd96: ab0d         	add	r3, sp, #0x34
  32bd98: 4618         	mov	r0, r3
  32bd9a: f1db fa2d    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1db45a
  32bd9e: e7ff         	b	0x32bda0 <GPGSRealtimeMultiplayerManager::checkShouldCloseRoom()+0x22c> @ imm = #-0x2
  32bda0: ab0f         	add	r3, sp, #0x3c
  32bda2: 4618         	mov	r0, r3
  32bda4: f000 fb0e    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x61c
  32bda8: f05c f180    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c300
  32bdac: b012         	add	sp, #0x48
  32bdae: bd70         	pop	{r4, r5, r6, pc}

// ==== GPGSRealtimeMultiplayerManager::getStatus
//      file offset 0x32bdb0 (= ELF address; Ghidra 0x33bdb0), 324 bytes, Thumb-2
  32bdb0: b510         	push	{r4, lr}
  32bdb2: b08c         	sub	sp, #0x30
  32bdb4: 9001         	str	r0, [sp, #0x4]
  32bdb6: 9100         	str	r1, [sp]
  32bdb8: f7fe fc2e    	bl	0x32a618 <GPGSRealtimeMultiplayerManager::sharedInstance()> @ imm = #-0x17a4
  32bdbc: 4603         	mov	r3, r0
  32bdbe: aa09         	add	r2, sp, #0x24
  32bdc0: 4610         	mov	r0, r2
  32bdc2: 4619         	mov	r1, r3
  32bdc4: f7ff f868    	bl	0x32ae98 <GPGSRealtimeMultiplayerManager::getRoomParticipants()> @ imm = #-0xf30
  32bdc8: 9b00         	ldr	r3, [sp]
  32bdca: 7bdb         	ldrb	r3, [r3, #0xf]
  32bdcc: 2b00         	cmp	r3, #0x0
  32bdce: d008         	beq	0x32bde2 <GPGSRealtimeMultiplayerManager::getStatus()+0x32> @ imm = #0x10
  32bdd0: ab09         	add	r3, sp, #0x24
  32bdd2: 4618         	mov	r0, r3
  32bdd4: f001 f850    	bl	0x32ce78 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::size() const> @ imm = #0x10a0
  32bdd8: 4603         	mov	r3, r0
  32bdda: 2b00         	cmp	r3, #0x0
  32bddc: d001         	beq	0x32bde2 <GPGSRealtimeMultiplayerManager::getStatus()+0x32> @ imm = #0x2
  32bdde: 2301         	movs	r3, #0x1
  32bde0: e000         	b	0x32bde4 <GPGSRealtimeMultiplayerManager::getStatus()+0x34> @ imm = #0x0
  32bde2: 2300         	movs	r3, #0x0
  32bde4: 2b00         	cmp	r3, #0x0
  32bde6: d054         	beq	0x32be92 <GPGSRealtimeMultiplayerManager::getStatus()+0xe2> @ imm = #0xa8
  32bde8: 2300         	movs	r3, #0x0
  32bdea: 9304         	str	r3, [sp, #0x10]
  32bdec: ab09         	add	r3, sp, #0x24
  32bdee: 9305         	str	r3, [sp, #0x14]
  32bdf0: 9805         	ldr	r0, [sp, #0x14]
  32bdf2: f000 fb07    	bl	0x32c404 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::begin()> @ imm = #0x60e
  32bdf6: 4603         	mov	r3, r0
  32bdf8: 9302         	str	r3, [sp, #0x8]
  32bdfa: 9805         	ldr	r0, [sp, #0x14]
  32bdfc: f000 fb10    	bl	0x32c420 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::end()> @ imm = #0x620
  32be00: 4603         	mov	r3, r0
  32be02: 9303         	str	r3, [sp, #0xc]
  32be04: e01b         	b	0x32be3e <GPGSRealtimeMultiplayerManager::getStatus()+0x8e> @ imm = #0x36
  32be06: ab02         	add	r3, sp, #0x8
  32be08: 4618         	mov	r0, r3
  32be0a: f000 fb3b    	bl	0x32c484 <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator*() const> @ imm = #0x676
  32be0e: 4603         	mov	r3, r0
  32be10: aa07         	add	r2, sp, #0x1c
  32be12: 4610         	mov	r0, r2
  32be14: 4619         	mov	r1, r3
  32be16: f1db f8e9    	bl	0x506fec <gpg::MultiplayerParticipant::MultiplayerParticipant(gpg::MultiplayerParticipant const&)> @ imm = #0x1db1d2
  32be1a: ab07         	add	r3, sp, #0x1c
  32be1c: 4618         	mov	r0, r3
  32be1e: f1db f9d7    	bl	0x5071d0 <gpg::MultiplayerParticipant::IsConnectedToRoom() const> @ imm = #0x1db3ae
  32be22: 4603         	mov	r3, r0
  32be24: 2b00         	cmp	r3, #0x0
  32be26: d002         	beq	0x32be2e <GPGSRealtimeMultiplayerManager::getStatus()+0x7e> @ imm = #0x4
  32be28: 9b04         	ldr	r3, [sp, #0x10]
  32be2a: 3301         	adds	r3, #0x1
  32be2c: 9304         	str	r3, [sp, #0x10]
  32be2e: ab07         	add	r3, sp, #0x1c
  32be30: 4618         	mov	r0, r3
  32be32: f1db f9e1    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1db3c2
  32be36: ab02         	add	r3, sp, #0x8
  32be38: 4618         	mov	r0, r3
  32be3a: f000 fb17    	bl	0x32c46c <__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>::operator++()> @ imm = #0x62e
  32be3e: aa02         	add	r2, sp, #0x8
  32be40: ab03         	add	r3, sp, #0xc
  32be42: 4610         	mov	r0, r2
  32be44: 4619         	mov	r1, r3
  32be46: f000 fafb    	bl	0x32c440 <bool __gnu_cxx::operator!=<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>>(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>> const&)> @ imm = #0x5f6
  32be4a: 4603         	mov	r3, r0
  32be4c: 2b00         	cmp	r3, #0x0
  32be4e: d1da         	bne	0x32be06 <GPGSRealtimeMultiplayerManager::getStatus()+0x56> @ imm = #-0x4c
  32be50: ab09         	add	r3, sp, #0x24
  32be52: 4618         	mov	r0, r3
  32be54: f001 f810    	bl	0x32ce78 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::size() const> @ imm = #0x1020
  32be58: 4603         	mov	r3, r0
  32be5a: 4a24         	ldr	r2, [pc, #0x90]         @ 0x32beec <GPGSRealtimeMultiplayerManager::getStatus()+0x13c>
  32be5c: 447a         	add	r2, pc
  32be5e: 4610         	mov	r0, r2
  32be60: 9904         	ldr	r1, [sp, #0x10]
  32be62: 461a         	mov	r2, r3
  32be64: f26d fe54    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x26dca8
  32be68: 4603         	mov	r3, r0
  32be6a: 9306         	str	r3, [sp, #0x18]
  32be6c: 9806         	ldr	r0, [sp, #0x18]
  32be6e: f26d fd5b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x26dab6
  32be72: 4604         	mov	r4, r0
  32be74: ab07         	add	r3, sp, #0x1c
  32be76: 4618         	mov	r0, r3
  32be78: f05e f2bc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45e578
  32be7c: ab07         	add	r3, sp, #0x1c
  32be7e: 9801         	ldr	r0, [sp, #0x4]
  32be80: 4621         	mov	r1, r4
  32be82: 461a         	mov	r2, r3
  32be84: f08a f5ec    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48abd8
  32be88: ab07         	add	r3, sp, #0x1c
  32be8a: 4618         	mov	r0, r3
  32be8c: f05e f2b6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45e56c
  32be90: e00f         	b	0x32beb2 <GPGSRealtimeMultiplayerManager::getStatus()+0x102> @ imm = #0x1e
  32be92: ab07         	add	r3, sp, #0x1c
  32be94: 4618         	mov	r0, r3
  32be96: f05e f2ad    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45e55a
  32be9a: ab07         	add	r3, sp, #0x1c
  32be9c: 9801         	ldr	r0, [sp, #0x4]
  32be9e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x32bef0 <GPGSRealtimeMultiplayerManager::getStatus()+0x140>
  32bea0: 447a         	add	r2, pc
  32bea2: 4611         	mov	r1, r2
  32bea4: 461a         	mov	r2, r3
  32bea6: f08a f5db    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48abb6
  32beaa: ab07         	add	r3, sp, #0x1c
  32beac: 4618         	mov	r0, r3
  32beae: f05e f2a5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45e54a
  32beb2: ab09         	add	r3, sp, #0x24
  32beb4: 4618         	mov	r0, r3
  32beb6: f000 fa85    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x50a
  32beba: e014         	b	0x32bee6 <GPGSRealtimeMultiplayerManager::getStatus()+0x136> @ imm = #0x28
  32bebc: ab07         	add	r3, sp, #0x1c
  32bebe: 4618         	mov	r0, r3
  32bec0: f1db f99a    	bl	0x5071f8 <gpg::MultiplayerParticipant::~MultiplayerParticipant()> @ imm = #0x1db334
  32bec4: e009         	b	0x32beda <GPGSRealtimeMultiplayerManager::getStatus()+0x12a> @ imm = #0x12
  32bec6: ab07         	add	r3, sp, #0x1c
  32bec8: 4618         	mov	r0, r3
  32beca: f05e f297    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45e52e
  32bece: e004         	b	0x32beda <GPGSRealtimeMultiplayerManager::getStatus()+0x12a> @ imm = #0x8
  32bed0: ab07         	add	r3, sp, #0x1c
  32bed2: 4618         	mov	r0, r3
  32bed4: f05e f292    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45e524
  32bed8: e7ff         	b	0x32beda <GPGSRealtimeMultiplayerManager::getStatus()+0x12a> @ imm = #-0x2
  32beda: ab09         	add	r3, sp, #0x24
  32bedc: 4618         	mov	r0, r3
  32bede: f000 fa71    	bl	0x32c3c4 <std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant>>::~vector()> @ imm = #0x4e2
  32bee2: f05c f0e3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45c1c6
  32bee6: 9801         	ldr	r0, [sp, #0x4]
  32bee8: b00c         	add	sp, #0x30
  32beea: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x32beeb); words below are literal-pool data ---
  32beec: c648         	stm	r6!, {r3, r6}
  32beee: 0049         	lsls	r1, r1, #0x1
  32bef0: c600         	<unknown>
  32bef2: 0049         	lsls	r1, r1, #0x1
