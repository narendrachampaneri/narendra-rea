// RakNetLAN: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../RakNetLAN.cpp

// ==== RakNetLAN::RakNetLAN
//      file offset 0x3c54e8 (= ELF address; Ghidra 0x3d54e8), 148 bytes, Thumb-2
  3c54e8: b510         	push	{r4, lr}
  3c54ea: b082         	sub	sp, #0x8
  3c54ec: 9001         	str	r0, [sp, #0x4]
  3c54ee: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3c5574 <RakNetLAN::RakNetLAN()+0x8c>
  3c54f0: 447c         	add	r4, pc
  3c54f2: 9b01         	ldr	r3, [sp, #0x4]
  3c54f4: 4618         	mov	r0, r3
  3c54f6: f1ca f89f    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1ca13e
  3c54fa: 9b01         	ldr	r3, [sp, #0x4]
  3c54fc: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x3c5578 <RakNetLAN::RakNetLAN()+0x90>
  3c54fe: 58a2         	ldr	r2, [r4, r2]
  3c5500: 3208         	adds	r2, #0x8
  3c5502: 601a         	str	r2, [r3]
  3c5504: 9b01         	ldr	r3, [sp, #0x4]
  3c5506: f242 4273    	movw	r2, #0x2473
  3c550a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3c550e: 9b01         	ldr	r3, [sp, #0x4]
  3c5510: f242 4273    	movw	r2, #0x2473
  3c5514: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3c5518: 9b01         	ldr	r3, [sp, #0x4]
  3c551a: f242 4273    	movw	r2, #0x2473
  3c551e: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3c5522: 9b01         	ldr	r3, [sp, #0x4]
  3c5524: f242 427d    	movw	r2, #0x247d
  3c5528: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3c552c: 9b01         	ldr	r3, [sp, #0x4]
  3c552e: f242 4272    	movw	r2, #0x2472
  3c5532: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3c5536: 9b01         	ldr	r3, [sp, #0x4]
  3c5538: f503 7380    	add.w	r3, r3, #0x100
  3c553c: 4618         	mov	r0, r3
  3c553e: f000 fc45    	bl	0x3c5dcc <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::map()> @ imm = #0x88a
  3c5542: 9b01         	ldr	r3, [sp, #0x4]
  3c5544: f503 738c    	add.w	r3, r3, #0x118
  3c5548: 4618         	mov	r0, r3
  3c554a: f000 fc6b    	bl	0x3c5e24 <std::map<int, std::string, std::less<int>, std::allocator<std::pair<int const, std::string>>>::map()> @ imm = #0x8d6
  3c554e: 9b01         	ldr	r3, [sp, #0x4]
  3c5550: e00c         	b	0x3c556c <RakNetLAN::RakNetLAN()+0x84> @ imm = #0x18
  3c5552: 9b01         	ldr	r3, [sp, #0x4]
  3c5554: f503 7380    	add.w	r3, r3, #0x100
  3c5558: 4618         	mov	r0, r3
  3c555a: f7ff ffad    	bl	0x3c54b8 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::~map()> @ imm = #-0xa6
  3c555e: e7ff         	b	0x3c5560 <RakNetLAN::RakNetLAN()+0x78> @ imm = #-0x2
  3c5560: 9b01         	ldr	r3, [sp, #0x4]
  3c5562: 4618         	mov	r0, r3
  3c5564: f1ca f96e    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1ca2dc
  3c5568: f3c2 fda0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c2b40
  3c556c: 4618         	mov	r0, r3
  3c556e: b002         	add	sp, #0x8
  3c5570: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c5571); words below are literal-pool data ---
  3c5572: bf00         	nop
  3c5574: d518         	bpl	0x3c55a8 <RakNetLAN::~RakNetLAN()+0x2c> @ imm = #0x30
  3c5576: 0056         	lsls	r6, r2, #0x1
  3c5578: de7c         	udf	#0x7c
  3c557a: ffff b500    	<unknown>

// ==== RakNetLAN::~RakNetLAN
//      file offset 0x3c557c (= ELF address; Ghidra 0x3d557c), 84 bytes, Thumb-2
  3c557c: b500         	push	{lr}
  3c557e: b083         	sub	sp, #0xc
  3c5580: 9001         	str	r0, [sp, #0x4]
  3c5582: 4911         	ldr	r1, [pc, #0x44]         @ 0x3c55c8 <RakNetLAN::~RakNetLAN()+0x4c>
  3c5584: 4479         	add	r1, pc
  3c5586: 9b01         	ldr	r3, [sp, #0x4]
  3c5588: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3c55cc <RakNetLAN::~RakNetLAN()+0x50>
  3c558a: 588a         	ldr	r2, [r1, r2]
  3c558c: 3208         	adds	r2, #0x8
  3c558e: 601a         	str	r2, [r3]
  3c5590: 9b01         	ldr	r3, [sp, #0x4]
  3c5592: f503 738c    	add.w	r3, r3, #0x118
  3c5596: 4618         	mov	r0, r3
  3c5598: f7ff ff9a    	bl	0x3c54d0 <std::map<int, std::string, std::less<int>, std::allocator<std::pair<int const, std::string>>>::~map()> @ imm = #-0xcc
  3c559c: 9b01         	ldr	r3, [sp, #0x4]
  3c559e: f503 7380    	add.w	r3, r3, #0x100
  3c55a2: 4618         	mov	r0, r3
  3c55a4: f7ff ff88    	bl	0x3c54b8 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::~map()> @ imm = #-0xf0
  3c55a8: 9b01         	ldr	r3, [sp, #0x4]
  3c55aa: 4618         	mov	r0, r3
  3c55ac: f1ca f94a    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1ca294
  3c55b0: 2300         	movs	r3, #0x0
  3c55b2: 2b00         	cmp	r3, #0x0
  3c55b4: d002         	beq	0x3c55bc <RakNetLAN::~RakNetLAN()+0x40> @ imm = #0x4
  3c55b6: 9801         	ldr	r0, [sp, #0x4]
  3c55b8: f3c2 fd74    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c2ae8
  3c55bc: 9b01         	ldr	r3, [sp, #0x4]
  3c55be: 4618         	mov	r0, r3
  3c55c0: b003         	add	sp, #0xc
  3c55c2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c55c5); words below are literal-pool data ---
  3c55c6: bf00         	nop
  3c55c8: d484         	bmi	0x3c54d4 <std::map<int, std::string, std::less<int>, std::allocator<std::pair<int const, std::string>>>::~map()+0x4> @ imm = #-0xf8
  3c55ca: 0056         	lsls	r6, r2, #0x1
  3c55cc: de7c         	udf	#0x7c
  3c55ce: ffff b500    	<unknown>

// ==== RakNetLAN::~RakNetLAN
//      file offset 0x3c55d0 (= ELF address; Ghidra 0x3d55d0), 28 bytes, Thumb-2
  3c55d0: b500         	push	{lr}
  3c55d2: b083         	sub	sp, #0xc
  3c55d4: 9001         	str	r0, [sp, #0x4]
  3c55d6: 9801         	ldr	r0, [sp, #0x4]
  3c55d8: f7ff ffd0    	bl	0x3c557c <RakNetLAN::~RakNetLAN()> @ imm = #-0x60
  3c55dc: 9801         	ldr	r0, [sp, #0x4]
  3c55de: f3c2 fd61    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c2ac2
  3c55e2: 9b01         	ldr	r3, [sp, #0x4]
  3c55e4: 4618         	mov	r0, r3
  3c55e6: b003         	add	sp, #0xc
  3c55e8: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetLAN::init
//      file offset 0x3c55ec (= ELF address; Ghidra 0x3d55ec), 56 bytes, Thumb-2
  3c55ec: b500         	push	{lr}
  3c55ee: b083         	sub	sp, #0xc
  3c55f0: 9001         	str	r0, [sp, #0x4]
  3c55f2: 9b01         	ldr	r3, [sp, #0x4]
  3c55f4: 4618         	mov	r0, r3
  3c55f6: f1ca fa29    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1ca452
  3c55fa: 4603         	mov	r3, r0
  3c55fc: f083 0301    	eor	r3, r3, #0x1
  3c5600: b2db         	uxtb	r3, r3
  3c5602: 2b00         	cmp	r3, #0x0
  3c5604: d001         	beq	0x3c560a <RakNetLAN::init()+0x1e> @ imm = #0x2
  3c5606: 2300         	movs	r3, #0x0
  3c5608: e008         	b	0x3c561c <RakNetLAN::init()+0x30> @ imm = #0x10
  3c560a: 9b01         	ldr	r3, [sp, #0x4]
  3c560c: 2200         	movs	r2, #0x0
  3c560e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3c5612: 9b01         	ldr	r3, [sp, #0x4]
  3c5614: 2200         	movs	r2, #0x0
  3c5616: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3c561a: 2301         	movs	r3, #0x1
  3c561c: 4618         	mov	r0, r3
  3c561e: b003         	add	sp, #0xc
  3c5620: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetLAN::hostSession
//      file offset 0x3c5624 (= ELF address; Ghidra 0x3d5624), 196 bytes, Thumb-2
  3c5624: b530         	push	{r4, r5, lr}
  3c5626: b089         	sub	sp, #0x24
  3c5628: 9003         	str	r0, [sp, #0xc]
  3c562a: 9102         	str	r1, [sp, #0x8]
  3c562c: 9201         	str	r2, [sp, #0x4]
  3c562e: 9803         	ldr	r0, [sp, #0xc]
  3c5630: f000 fb36    	bl	0x3c5ca0 <RakNetLAN::shutdown()> @ imm = #0x66c
  3c5634: f44f 708c    	mov.w	r0, #0x118
  3c5638: f3c2 f994    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3c2328
  3c563c: 4604         	mov	r4, r0
  3c563e: 4620         	mov	r0, r4
  3c5640: f002 fbb4    	bl	0x3c7dac <RakNetLocalServer::RakNetLocalServer()> @ imm = #0x2768
  3c5644: 9b03         	ldr	r3, [sp, #0xc]
  3c5646: f8c3 40e4    	str.w	r4, [r3, #0xe4]
  3c564a: 9b03         	ldr	r3, [sp, #0xc]
  3c564c: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3c5650: 9b03         	ldr	r3, [sp, #0xc]
  3c5652: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3c5656: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3c56e4 <RakNetLAN::hostSession(int, std::string)+0xc0>
  3c5658: 447a         	add	r2, pc
  3c565a: 4610         	mov	r0, r2
  3c565c: 4619         	mov	r1, r3
  3c565e: f1d4 fa57    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1d44ae
  3c5662: 4603         	mov	r3, r0
  3c5664: 4618         	mov	r0, r3
  3c5666: f1d4 f95f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1d42be
  3c566a: 4605         	mov	r5, r0
  3c566c: ab05         	add	r3, sp, #0x14
  3c566e: 4618         	mov	r0, r3
  3c5670: f3c4 fec0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c4d80
  3c5674: aa06         	add	r2, sp, #0x18
  3c5676: ab05         	add	r3, sp, #0x14
  3c5678: 4610         	mov	r0, r2
  3c567a: 4629         	mov	r1, r5
  3c567c: 461a         	mov	r2, r3
  3c567e: f3f1 f9ef    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f13de
  3c5682: ab07         	add	r3, sp, #0x1c
  3c5684: 4618         	mov	r0, r3
  3c5686: 9901         	ldr	r1, [sp, #0x4]
  3c5688: f3f0 ff2e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3f0e5c
  3c568c: aa06         	add	r2, sp, #0x18
  3c568e: ab07         	add	r3, sp, #0x1c
  3c5690: 4620         	mov	r0, r4
  3c5692: 4611         	mov	r1, r2
  3c5694: 9a02         	ldr	r2, [sp, #0x8]
  3c5696: f002 fc21    	bl	0x3c7edc <RakNetLocalServer::startServer(std::string, int, std::string)> @ imm = #0x2842
  3c569a: ab07         	add	r3, sp, #0x1c
  3c569c: 4618         	mov	r0, r3
  3c569e: f3f0 f939    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f0272
  3c56a2: ab06         	add	r3, sp, #0x18
  3c56a4: 4618         	mov	r0, r3
  3c56a6: f3f0 f935    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f026a
  3c56aa: ab05         	add	r3, sp, #0x14
  3c56ac: 4618         	mov	r0, r3
  3c56ae: f3c4 fea5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4d4a
  3c56b2: e014         	b	0x3c56de <RakNetLAN::hostSession(int, std::string)+0xba> @ imm = #0x28
  3c56b4: 4620         	mov	r0, r4
  3c56b6: f3c2 fcf5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c29ea
  3c56ba: f3c2 fcf7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c29ee
  3c56be: ab07         	add	r3, sp, #0x1c
  3c56c0: 4618         	mov	r0, r3
  3c56c2: f3f0 f927    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f024e
  3c56c6: e7ff         	b	0x3c56c8 <RakNetLAN::hostSession(int, std::string)+0xa4> @ imm = #-0x2
  3c56c8: ab06         	add	r3, sp, #0x18
  3c56ca: 4618         	mov	r0, r3
  3c56cc: f3f0 f922    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f0244
  3c56d0: e7ff         	b	0x3c56d2 <RakNetLAN::hostSession(int, std::string)+0xae> @ imm = #-0x2
  3c56d2: ab05         	add	r3, sp, #0x14
  3c56d4: 4618         	mov	r0, r3
  3c56d6: f3c4 fe91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4d22
  3c56da: f3c2 fce7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c29ce
  3c56de: b009         	add	sp, #0x24
  3c56e0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c56e1); words below are literal-pool data ---
  3c56e2: bf00         	nop
  3c56e4: 0918         	lsrs	r0, r3, #0x4
  3c56e6: 0041         	lsls	r1, r0, #0x1

// ==== RakNetLAN::findSessions
//      file offset 0x3c56e8 (= ELF address; Ghidra 0x3d56e8), 208 bytes, Thumb-2
  3c56e8: b530         	push	{r4, r5, lr}
  3c56ea: b095         	sub	sp, #0x54
  3c56ec: 9003         	str	r0, [sp, #0xc]
  3c56ee: 4c2f         	ldr	r4, [pc, #0xbc]         @ 0x3c57ac <RakNetLAN::findSessions()+0xc4>
  3c56f0: 447c         	add	r4, pc
  3c56f2: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3c57b0 <RakNetLAN::findSessions()+0xc8>
  3c56f4: 58e3         	ldr	r3, [r4, r3]
  3c56f6: 681b         	ldr	r3, [r3]
  3c56f8: 9313         	str	r3, [sp, #0x4c]
  3c56fa: 9803         	ldr	r0, [sp, #0xc]
  3c56fc: f000 fad0    	bl	0x3c5ca0 <RakNetLAN::shutdown()> @ imm = #0x5a0
  3c5700: f0df fa24    	bl	0x4a4b4c <RakNet::RakPeerInterface::GetInstance()> @ imm = #0xdf448
  3c5704: 4602         	mov	r2, r0
  3c5706: 9b03         	ldr	r3, [sp, #0xc]
  3c5708: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3c570c: 9b03         	ldr	r3, [sp, #0xc]
  3c570e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3c5712: b29b         	uxth	r3, r3
  3c5714: aa06         	add	r2, sp, #0x18
  3c5716: 4610         	mov	r0, r2
  3c5718: 4619         	mov	r1, r3
  3c571a: 2200         	movs	r2, #0x0
  3c571c: f0de faec    	bl	0x4a3cf8 <RakNet::SocketDescriptor::SocketDescriptor(unsigned short, char const*)> @ imm = #0xde5d8
  3c5720: 2302         	movs	r3, #0x2
  3c5722: f8ad 303a    	strh.w	r3, [sp, #0x3a]
  3c5726: 9b03         	ldr	r3, [sp, #0xc]
  3c5728: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c572c: 681b         	ldr	r3, [r3]
  3c572e: 3308         	adds	r3, #0x8
  3c5730: 681b         	ldr	r3, [r3]
  3c5732: 9a03         	ldr	r2, [sp, #0xc]
  3c5734: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c5738: 4610         	mov	r0, r2
  3c573a: 2100         	movs	r1, #0x0
  3c573c: 4798         	blx	r3
  3c573e: 9b03         	ldr	r3, [sp, #0xc]
  3c5740: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5744: 681b         	ldr	r3, [r3]
  3c5746: 330c         	adds	r3, #0xc
  3c5748: 681d         	ldr	r5, [r3]
  3c574a: 9b03         	ldr	r3, [sp, #0xc]
  3c574c: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  3c5750: aa06         	add	r2, sp, #0x18
  3c5752: f647 1361    	movw	r3, #0x7961
  3c5756: f6cf 73fe    	movt	r3, #0xfffe
  3c575a: 9300         	str	r3, [sp]
  3c575c: 4608         	mov	r0, r1
  3c575e: 2101         	movs	r1, #0x1
  3c5760: 2301         	movs	r3, #0x1
  3c5762: 47a8         	blx	r5
  3c5764: f1d5 ff06    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1d5e0c
  3c5768: 4603         	mov	r3, r0
  3c576a: 681a         	ldr	r2, [r3]
  3c576c: 3230         	adds	r2, #0x30
  3c576e: 6812         	ldr	r2, [r2]
  3c5770: 4618         	mov	r0, r3
  3c5772: 4790         	blx	r2
  3c5774: 4602         	mov	r2, r0
  3c5776: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3c57b4 <RakNetLAN::findSessions()+0xcc>
  3c5778: 58e3         	ldr	r3, [r4, r3]
  3c577a: 9304         	str	r3, [sp, #0x10]
  3c577c: 2300         	movs	r3, #0x0
  3c577e: 9305         	str	r3, [sp, #0x14]
  3c5780: 9b03         	ldr	r3, [sp, #0xc]
  3c5782: f04f 517a    	mov.w	r1, #0x3e800000
  3c5786: 9100         	str	r1, [sp]
  3c5788: 2100         	movs	r1, #0x0
  3c578a: 9101         	str	r1, [sp, #0x4]
  3c578c: 4610         	mov	r0, r2
  3c578e: aa04         	add	r2, sp, #0x10
  3c5790: ca06         	ldm	r2, {r1, r2}
  3c5792: f1aa fa6d    	bl	0x56fc70 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, bool)> @ imm = #0x1aa4da
  3c5796: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c57b0 <RakNetLAN::findSessions()+0xc8>
  3c5798: 58e3         	ldr	r3, [r4, r3]
  3c579a: 9a13         	ldr	r2, [sp, #0x4c]
  3c579c: 681b         	ldr	r3, [r3]
  3c579e: 429a         	cmp	r2, r3
  3c57a0: d001         	beq	0x3c57a6 <RakNetLAN::findSessions()+0xbe> @ imm = #0x2
  3c57a2: f710 ebe2    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xef83c
  3c57a6: b015         	add	sp, #0x54
  3c57a8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c57a9); words below are literal-pool data ---
  3c57aa: bf00         	nop
  3c57ac: d318         	blo	0x3c57e0 <RakNetLAN::pingForServer(float)+0x28> @ imm = #0x30
  3c57ae: 0056         	lsls	r6, r2, #0x1
  3c57b0: d72c         	bvc	0x3c580c <RakNetLAN::pingForServer(float)+0x54> @ imm = #0x58
  3c57b2: ffff de80    	<unknown>
  3c57b6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== RakNetLAN::pingForServer
//      file offset 0x3c57b8 (= ELF address; Ghidra 0x3d57b8), 464 bytes, Thumb-2
  3c57b8: b530         	push	{r4, r5, lr}
  3c57ba: b089         	sub	sp, #0x24
  3c57bc: 9003         	str	r0, [sp, #0xc]
  3c57be: 9102         	str	r1, [sp, #0x8]
  3c57c0: ab07         	add	r3, sp, #0x1c
  3c57c2: 4618         	mov	r0, r3
  3c57c4: f3c4 fe16    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c4c2c
  3c57c8: aa05         	add	r2, sp, #0x14
  3c57ca: ab07         	add	r3, sp, #0x1c
  3c57cc: 4610         	mov	r0, r2
  3c57ce: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x3c5980 <RakNetLAN::pingForServer(float)+0x1c8>
  3c57d0: 447a         	add	r2, pc
  3c57d2: 4611         	mov	r1, r2
  3c57d4: 461a         	mov	r2, r3
  3c57d6: f3f1 f943    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f1286
  3c57da: ab07         	add	r3, sp, #0x1c
  3c57dc: 4618         	mov	r0, r3
  3c57de: f3c4 fe0d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4c1a
  3c57e2: 9b03         	ldr	r3, [sp, #0xc]
  3c57e4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c57e8: 681b         	ldr	r3, [r3]
  3c57ea: 33a4         	adds	r3, #0xa4
  3c57ec: 681c         	ldr	r4, [r3]
  3c57ee: 9b03         	ldr	r3, [sp, #0xc]
  3c57f0: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3c57f4: ab05         	add	r3, sp, #0x14
  3c57f6: 4618         	mov	r0, r3
  3c57f8: f3ef fd82    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3efb04
  3c57fc: 4602         	mov	r2, r0
  3c57fe: 9b03         	ldr	r3, [sp, #0xc]
  3c5800: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3c5804: b29b         	uxth	r3, r3
  3c5806: 2100         	movs	r1, #0x0
  3c5808: 9100         	str	r1, [sp]
  3c580a: 4628         	mov	r0, r5
  3c580c: 4611         	mov	r1, r2
  3c580e: 461a         	mov	r2, r3
  3c5810: 2301         	movs	r3, #0x1
  3c5812: 47a0         	blx	r4
  3c5814: 9b03         	ldr	r3, [sp, #0xc]
  3c5816: f503 7280    	add.w	r2, r3, #0x100
  3c581a: 9b03         	ldr	r3, [sp, #0xc]
  3c581c: 33f0         	adds	r3, #0xf0
  3c581e: 4610         	mov	r0, r2
  3c5820: 4619         	mov	r1, r3
  3c5822: f000 fb2b    	bl	0x3c5e7c <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::find(int const&)> @ imm = #0x656
  3c5826: 4603         	mov	r3, r0
  3c5828: 9306         	str	r3, [sp, #0x18]
  3c582a: 9b03         	ldr	r3, [sp, #0xc]
  3c582c: f503 7380    	add.w	r3, r3, #0x100
  3c5830: 4618         	mov	r0, r3
  3c5832: f000 fb31    	bl	0x3c5e98 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::end()> @ imm = #0x662
  3c5836: 4603         	mov	r3, r0
  3c5838: 9307         	str	r3, [sp, #0x1c]
  3c583a: aa06         	add	r2, sp, #0x18
  3c583c: ab07         	add	r3, sp, #0x1c
  3c583e: 4610         	mov	r0, r2
  3c5840: 4619         	mov	r1, r3
  3c5842: f000 fb35    	bl	0x3c5eb0 <std::_Rb_tree_iterator<std::pair<int const, int>>::operator!=(std::_Rb_tree_iterator<std::pair<int const, int>> const&) const> @ imm = #0x66a
  3c5846: 4603         	mov	r3, r0
  3c5848: 2b00         	cmp	r3, #0x0
  3c584a: d061         	beq	0x3c5910 <RakNetLAN::pingForServer(float)+0x158> @ imm = #0xc2
  3c584c: 9b03         	ldr	r3, [sp, #0xc]
  3c584e: f503 7280    	add.w	r2, r3, #0x100
  3c5852: 9b03         	ldr	r3, [sp, #0xc]
  3c5854: 33f0         	adds	r3, #0xf0
  3c5856: 4610         	mov	r0, r2
  3c5858: 4619         	mov	r1, r3
  3c585a: f000 fba1    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #0x742
  3c585e: 4604         	mov	r4, r0
  3c5860: 9b03         	ldr	r3, [sp, #0xc]
  3c5862: f503 7280    	add.w	r2, r3, #0x100
  3c5866: 9b03         	ldr	r3, [sp, #0xc]
  3c5868: 33f0         	adds	r3, #0xf0
  3c586a: 4610         	mov	r0, r2
  3c586c: 4619         	mov	r1, r3
  3c586e: f000 fb97    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #0x72e
  3c5872: 4603         	mov	r3, r0
  3c5874: 681b         	ldr	r3, [r3]
  3c5876: 3301         	adds	r3, #0x1
  3c5878: 6023         	str	r3, [r4]
  3c587a: 9b03         	ldr	r3, [sp, #0xc]
  3c587c: f503 7280    	add.w	r2, r3, #0x100
  3c5880: 9b03         	ldr	r3, [sp, #0xc]
  3c5882: 33f0         	adds	r3, #0xf0
  3c5884: 4610         	mov	r0, r2
  3c5886: 4619         	mov	r1, r3
  3c5888: f000 fb8a    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #0x714
  3c588c: 4603         	mov	r3, r0
  3c588e: 681b         	ldr	r3, [r3]
  3c5890: 2b03         	cmp	r3, #0x3
  3c5892: bfd4         	ite	le
  3c5894: 2300         	movle	r3, #0x0
  3c5896: 2301         	movgt	r3, #0x1
  3c5898: b2db         	uxtb	r3, r3
  3c589a: 2b00         	cmp	r3, #0x0
  3c589c: d038         	beq	0x3c5910 <RakNetLAN::pingForServer(float)+0x158> @ imm = #0x70
  3c589e: 9b03         	ldr	r3, [sp, #0xc]
  3c58a0: f503 7280    	add.w	r2, r3, #0x100
  3c58a4: 9b03         	ldr	r3, [sp, #0xc]
  3c58a6: 33f0         	adds	r3, #0xf0
  3c58a8: 4610         	mov	r0, r2
  3c58aa: 4619         	mov	r1, r3
  3c58ac: f000 fbd4    	bl	0x3c6058 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::erase(int const&)> @ imm = #0x7a8
  3c58b0: f21a fefe    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21adfc
  3c58b4: 4604         	mov	r4, r0
  3c58b6: 9b03         	ldr	r3, [sp, #0xc]
  3c58b8: f503 728c    	add.w	r2, r3, #0x118
  3c58bc: 9b03         	ldr	r3, [sp, #0xc]
  3c58be: 33f0         	adds	r3, #0xf0
  3c58c0: 4610         	mov	r0, r2
  3c58c2: 4619         	mov	r1, r3
  3c58c4: f000 fbd6    	bl	0x3c6074 <std::map<int, std::string, std::less<int>, std::allocator<std::pair<int const, std::string>>>::operator[](int const&)> @ imm = #0x7ac
  3c58c8: 4603         	mov	r3, r0
  3c58ca: 4618         	mov	r0, r3
  3c58cc: f3ef fd18    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3efa30
  3c58d0: 4605         	mov	r5, r0
  3c58d2: ab06         	add	r3, sp, #0x18
  3c58d4: 4618         	mov	r0, r3
  3c58d6: f3c4 fd8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c4b1a
  3c58da: aa07         	add	r2, sp, #0x1c
  3c58dc: ab06         	add	r3, sp, #0x18
  3c58de: 4610         	mov	r0, r2
  3c58e0: 4629         	mov	r1, r5
  3c58e2: 461a         	mov	r2, r3
  3c58e4: f3f1 f8bc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f1178
  3c58e8: ab07         	add	r3, sp, #0x1c
  3c58ea: 4618         	mov	r0, r3
  3c58ec: f1d4 f8a6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1d414c
  3c58f0: 4603         	mov	r3, r0
  3c58f2: 4620         	mov	r0, r4
  3c58f4: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3c5984 <RakNetLAN::pingForServer(float)+0x1cc>
  3c58f6: 447a         	add	r2, pc
  3c58f8: 4611         	mov	r1, r2
  3c58fa: 461a         	mov	r2, r3
  3c58fc: f21b f916    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x21b22c
  3c5900: ab07         	add	r3, sp, #0x1c
  3c5902: 4618         	mov	r0, r3
  3c5904: f3f0 f806    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f000c
  3c5908: ab06         	add	r3, sp, #0x18
  3c590a: 4618         	mov	r0, r3
  3c590c: f3c4 fd76    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4aec
  3c5910: 9b03         	ldr	r3, [sp, #0xc]
  3c5912: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3c5916: 1c5a         	adds	r2, r3, #0x1
  3c5918: 9b03         	ldr	r3, [sp, #0xc]
  3c591a: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3c591e: 9b03         	ldr	r3, [sp, #0xc]
  3c5920: f8d3 20f0    	ldr.w	r2, [r3, #0xf0]
  3c5924: 9b03         	ldr	r3, [sp, #0xc]
  3c5926: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3c592a: 429a         	cmp	r2, r3
  3c592c: dd05         	ble	0x3c593a <RakNetLAN::pingForServer(float)+0x182> @ imm = #0xa
  3c592e: 9b03         	ldr	r3, [sp, #0xc]
  3c5930: f8d3 20f4    	ldr.w	r2, [r3, #0xf4]
  3c5934: 9b03         	ldr	r3, [sp, #0xc]
  3c5936: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3c593a: 9803         	ldr	r0, [sp, #0xc]
  3c593c: f04f 0100    	mov.w	r1, #0x0
  3c5940: f000 f858    	bl	0x3c59f4 <RakNetLAN::updateNetwork(float)> @ imm = #0xb0
  3c5944: ab05         	add	r3, sp, #0x14
  3c5946: 4618         	mov	r0, r3
  3c5948: f3ef ffe4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3effc8
  3c594c: e015         	b	0x3c597a <RakNetLAN::pingForServer(float)+0x1c2> @ imm = #0x2a
  3c594e: ab07         	add	r3, sp, #0x1c
  3c5950: 4618         	mov	r0, r3
  3c5952: f3c4 fd53    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4aa6
  3c5956: f3c2 fba9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c2752
  3c595a: ab07         	add	r3, sp, #0x1c
  3c595c: 4618         	mov	r0, r3
  3c595e: f3ef ffd9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3effb2
  3c5962: e7ff         	b	0x3c5964 <RakNetLAN::pingForServer(float)+0x1ac> @ imm = #-0x2
  3c5964: ab06         	add	r3, sp, #0x18
  3c5966: 4618         	mov	r0, r3
  3c5968: f3c4 fd48    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4a90
  3c596c: e7ff         	b	0x3c596e <RakNetLAN::pingForServer(float)+0x1b6> @ imm = #-0x2
  3c596e: ab05         	add	r3, sp, #0x14
  3c5970: 4618         	mov	r0, r3
  3c5972: f3ef ffcf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3eff9e
  3c5976: f3c2 fb99    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c2732
  3c597a: b009         	add	sp, #0x24
  3c597c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c597d); words below are literal-pool data ---
  3c597e: bf00         	nop
  3c5980: 07a4         	lsls	r4, r4, #0x1e
  3c5982: 0041         	lsls	r1, r0, #0x1
  3c5984: 068e         	lsls	r6, r1, #0x1a
  3c5986: 0041         	lsls	r1, r0, #0x1

// ==== RakNetLAN::getUnusedPort
//      file offset 0x3c5988 (= ELF address; Ghidra 0x3d5988), 106 bytes, Thumb-2
  3c5988: b500         	push	{lr}
  3c598a: b087         	sub	sp, #0x1c
  3c598c: 9001         	str	r0, [sp, #0x4]
  3c598e: 9b01         	ldr	r3, [sp, #0x4]
  3c5990: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3c5994: 9303         	str	r3, [sp, #0xc]
  3c5996: e01f         	b	0x3c59d8 <RakNetLAN::getUnusedPort()+0x50> @ imm = #0x3e
  3c5998: 9b01         	ldr	r3, [sp, #0x4]
  3c599a: f503 7280    	add.w	r2, r3, #0x100
  3c599e: ab03         	add	r3, sp, #0xc
  3c59a0: 4610         	mov	r0, r2
  3c59a2: 4619         	mov	r1, r3
  3c59a4: f000 fa6a    	bl	0x3c5e7c <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::find(int const&)> @ imm = #0x4d4
  3c59a8: 4603         	mov	r3, r0
  3c59aa: 9304         	str	r3, [sp, #0x10]
  3c59ac: 9b01         	ldr	r3, [sp, #0x4]
  3c59ae: f503 7380    	add.w	r3, r3, #0x100
  3c59b2: 4618         	mov	r0, r3
  3c59b4: f000 fa70    	bl	0x3c5e98 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::end()> @ imm = #0x4e0
  3c59b8: 4603         	mov	r3, r0
  3c59ba: 9305         	str	r3, [sp, #0x14]
  3c59bc: aa04         	add	r2, sp, #0x10
  3c59be: ab05         	add	r3, sp, #0x14
  3c59c0: 4610         	mov	r0, r2
  3c59c2: 4619         	mov	r1, r3
  3c59c4: f000 fbb2    	bl	0x3c612c <std::_Rb_tree_iterator<std::pair<int const, int>>::operator==(std::_Rb_tree_iterator<std::pair<int const, int>> const&) const> @ imm = #0x764
  3c59c8: 4603         	mov	r3, r0
  3c59ca: 2b00         	cmp	r3, #0x0
  3c59cc: d001         	beq	0x3c59d2 <RakNetLAN::getUnusedPort()+0x4a> @ imm = #0x2
  3c59ce: 9b03         	ldr	r3, [sp, #0xc]
  3c59d0: e00b         	b	0x3c59ea <RakNetLAN::getUnusedPort()+0x62> @ imm = #0x16
  3c59d2: 9b03         	ldr	r3, [sp, #0xc]
  3c59d4: 3301         	adds	r3, #0x1
  3c59d6: 9303         	str	r3, [sp, #0xc]
  3c59d8: 9b01         	ldr	r3, [sp, #0x4]
  3c59da: f8d3 20f8    	ldr.w	r2, [r3, #0xf8]
  3c59de: 9b03         	ldr	r3, [sp, #0xc]
  3c59e0: 429a         	cmp	r2, r3
  3c59e2: dcd9         	bgt	0x3c5998 <RakNetLAN::getUnusedPort()+0x10> @ imm = #-0x4e
  3c59e4: 9b01         	ldr	r3, [sp, #0x4]
  3c59e6: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3c59ea: 4618         	mov	r0, r3
  3c59ec: b007         	add	sp, #0x1c
  3c59ee: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetLAN::updateNetwork
//      file offset 0x3c59f4 (= ELF address; Ghidra 0x3d59f4), 684 bytes, Thumb-2
  3c59f4: b570         	push	{r4, r5, r6, lr}
  3c59f6: b0d0         	sub	sp, #0x140
  3c59f8: ab01         	add	r3, sp, #0x4
  3c59fa: 6018         	str	r0, [r3]
  3c59fc: 466b         	mov	r3, sp
  3c59fe: 6019         	str	r1, [r3]
  3c5a00: 4ca4         	ldr	r4, [pc, #0x290]        @ 0x3c5c94 <RakNetLAN::updateNetwork(float)+0x2a0>
  3c5a02: 447c         	add	r4, pc
  3c5a04: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x3c5c98 <RakNetLAN::updateNetwork(float)+0x2a4>
  3c5a06: 58e3         	ldr	r3, [r4, r3]
  3c5a08: 681b         	ldr	r3, [r3]
  3c5a0a: 934f         	str	r3, [sp, #0x13c]
  3c5a0c: ab01         	add	r3, sp, #0x4
  3c5a0e: 681b         	ldr	r3, [r3]
  3c5a10: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3c5a14: 2b00         	cmp	r3, #0x0
  3c5a16: d008         	beq	0x3c5a2a <RakNetLAN::updateNetwork(float)+0x36> @ imm = #0x10
  3c5a18: ab01         	add	r3, sp, #0x4
  3c5a1a: 681b         	ldr	r3, [r3]
  3c5a1c: f8d3 20e4    	ldr.w	r2, [r3, #0xe4]
  3c5a20: 466b         	mov	r3, sp
  3c5a22: 4610         	mov	r0, r2
  3c5a24: 6819         	ldr	r1, [r3]
  3c5a26: f002 febf    	bl	0x3c87a8 <RakNetLocalServer::updateServer(float)> @ imm = #0x2d7e
  3c5a2a: ab01         	add	r3, sp, #0x4
  3c5a2c: 681b         	ldr	r3, [r3]
  3c5a2e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5a32: 2b00         	cmp	r3, #0x0
  3c5a34: f000 8105    	beq.w	0x3c5c42 <RakNetLAN::updateNetwork(float)+0x24e> @ imm = #0x20a
  3c5a38: ab07         	add	r3, sp, #0x1c
  3c5a3a: 2200         	movs	r2, #0x0
  3c5a3c: 601a         	str	r2, [r3]
  3c5a3e: ab01         	add	r3, sp, #0x4
  3c5a40: 681b         	ldr	r3, [r3]
  3c5a42: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5a46: 681b         	ldr	r3, [r3]
  3c5a48: 3364         	adds	r3, #0x64
  3c5a4a: 681b         	ldr	r3, [r3]
  3c5a4c: aa01         	add	r2, sp, #0x4
  3c5a4e: 6812         	ldr	r2, [r2]
  3c5a50: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c5a54: 4610         	mov	r0, r2
  3c5a56: 4798         	blx	r3
  3c5a58: 4602         	mov	r2, r0
  3c5a5a: ab07         	add	r3, sp, #0x1c
  3c5a5c: 601a         	str	r2, [r3]
  3c5a5e: e0eb         	b	0x3c5c38 <RakNetLAN::updateNetwork(float)+0x244> @ imm = #0x1d6
  3c5a60: ab07         	add	r3, sp, #0x1c
  3c5a62: 681b         	ldr	r3, [r3]
  3c5a64: 2b00         	cmp	r3, #0x0
  3c5a66: d103         	bne	0x3c5a70 <RakNetLAN::updateNetwork(float)+0x7c> @ imm = #0x6
  3c5a68: 201e         	movs	r0, #0x1e
  3c5a6a: f0ed f9bd    	bl	0x4b2de8 <RakSleep(unsigned int)> @ imm = #0xed37a
  3c5a6e: e106         	b	0x3c5c7e <RakNetLAN::updateNetwork(float)+0x28a> @ imm = #0x20c
  3c5a70: ab07         	add	r3, sp, #0x1c
  3c5a72: 681b         	ldr	r3, [r3]
  3c5a74: 6b1b         	ldr	r3, [r3, #0x30]
  3c5a76: 781b         	ldrb	r3, [r3]
  3c5a78: 2b1c         	cmp	r3, #0x1c
  3c5a7a: f040 80ad    	bne.w	0x3c5bd8 <RakNetLAN::updateNetwork(float)+0x1e4> @ imm = #0x15a
  3c5a7e: ab07         	add	r3, sp, #0x1c
  3c5a80: 681b         	ldr	r3, [r3]
  3c5a82: 6b1a         	ldr	r2, [r3, #0x30]
  3c5a84: ab07         	add	r3, sp, #0x1c
  3c5a86: 681b         	ldr	r3, [r3]
  3c5a88: 6a9b         	ldr	r3, [r3, #0x28]
  3c5a8a: a90a         	add	r1, sp, #0x28
  3c5a8c: 4608         	mov	r0, r1
  3c5a8e: 4611         	mov	r1, r2
  3c5a90: 461a         	mov	r2, r3
  3c5a92: 2300         	movs	r3, #0x0
  3c5a94: f095 fec8    	bl	0x45b828 <RakNet::BitStream::BitStream(unsigned char*, unsigned int, bool)> @ imm = #0x95d90
  3c5a98: ab0a         	add	r3, sp, #0x28
  3c5a9a: 4618         	mov	r0, r3
  3c5a9c: 2101         	movs	r1, #0x1
  3c5a9e: f097 f8bf    	bl	0x45cc20 <RakNet::BitStream::IgnoreBytes(unsigned int)> @ imm = #0x9717e
  3c5aa2: aa0a         	add	r2, sp, #0x28
  3c5aa4: ab03         	add	r3, sp, #0xc
  3c5aa6: 4610         	mov	r0, r2
  3c5aa8: 4619         	mov	r1, r3
  3c5aaa: f000 f965    	bl	0x3c5d78 <bool RakNet::BitStream::Read<unsigned int>(unsigned int&)> @ imm = #0x2ca
  3c5aae: ab07         	add	r3, sp, #0x1c
  3c5ab0: 681b         	ldr	r3, [r3]
  3c5ab2: 6a9b         	ldr	r3, [r3, #0x28]
  3c5ab4: 1e5a         	subs	r2, r3, #0x1
  3c5ab6: ab08         	add	r3, sp, #0x20
  3c5ab8: 3a04         	subs	r2, #0x4
  3c5aba: 601a         	str	r2, [r3]
  3c5abc: ab08         	add	r3, sp, #0x20
  3c5abe: 681b         	ldr	r3, [r3]
  3c5ac0: 2b00         	cmp	r3, #0x0
  3c5ac2: f000 8084    	beq.w	0x3c5bce <RakNetLAN::updateNetwork(float)+0x1da> @ imm = #0x108
  3c5ac6: ab07         	add	r3, sp, #0x1c
  3c5ac8: 681b         	ldr	r3, [r3]
  3c5aca: 6b19         	ldr	r1, [r3, #0x30]
  3c5acc: 2205         	movs	r2, #0x5
  3c5ace: ab09         	add	r3, sp, #0x24
  3c5ad0: 440a         	add	r2, r1
  3c5ad2: 601a         	str	r2, [r3]
  3c5ad4: ab06         	add	r3, sp, #0x18
  3c5ad6: 4618         	mov	r0, r3
  3c5ad8: f3c4 fc8c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c4918
  3c5adc: a904         	add	r1, sp, #0x10
  3c5ade: aa09         	add	r2, sp, #0x24
  3c5ae0: ab06         	add	r3, sp, #0x18
  3c5ae2: 4608         	mov	r0, r1
  3c5ae4: 6811         	ldr	r1, [r2]
  3c5ae6: 461a         	mov	r2, r3
  3c5ae8: f3f0 ffba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f0f74
  3c5aec: ab06         	add	r3, sp, #0x18
  3c5aee: 4618         	mov	r0, r3
  3c5af0: f3c4 fc84    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4908
  3c5af4: ab07         	add	r3, sp, #0x1c
  3c5af6: 681b         	ldr	r3, [r3]
  3c5af8: 4618         	mov	r0, r3
  3c5afa: f0de f953    	bl	0x4a3da4 <RakNet::SystemAddress::GetPort() const> @ imm = #0xde2a6
  3c5afe: 4603         	mov	r3, r0
  3c5b00: 461a         	mov	r2, r3
  3c5b02: ab05         	add	r3, sp, #0x14
  3c5b04: 601a         	str	r2, [r3]
  3c5b06: ab01         	add	r3, sp, #0x4
  3c5b08: 681b         	ldr	r3, [r3]
  3c5b0a: f503 7280    	add.w	r2, r3, #0x100
  3c5b0e: ab05         	add	r3, sp, #0x14
  3c5b10: 4610         	mov	r0, r2
  3c5b12: 4619         	mov	r1, r3
  3c5b14: f000 fa44    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #0x488
  3c5b18: 4603         	mov	r3, r0
  3c5b1a: 2200         	movs	r2, #0x0
  3c5b1c: 601a         	str	r2, [r3]
  3c5b1e: ab01         	add	r3, sp, #0x4
  3c5b20: 681b         	ldr	r3, [r3]
  3c5b22: f503 728c    	add.w	r2, r3, #0x118
  3c5b26: ab05         	add	r3, sp, #0x14
  3c5b28: 4610         	mov	r0, r2
  3c5b2a: 4619         	mov	r1, r3
  3c5b2c: f000 faa2    	bl	0x3c6074 <std::map<int, std::string, std::less<int>, std::allocator<std::pair<int const, std::string>>>::operator[](int const&)> @ imm = #0x544
  3c5b30: 4605         	mov	r5, r0
  3c5b32: ab07         	add	r3, sp, #0x1c
  3c5b34: 681b         	ldr	r3, [r3]
  3c5b36: 4618         	mov	r0, r3
  3c5b38: 2101         	movs	r1, #0x1
  3c5b3a: 227c         	movs	r2, #0x7c
  3c5b3c: f0de face    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xde59c
  3c5b40: 4603         	mov	r3, r0
  3c5b42: 4628         	mov	r0, r5
  3c5b44: 4619         	mov	r1, r3
  3c5b46: f3f0 f993    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3f0326
  3c5b4a: ab01         	add	r3, sp, #0x4
  3c5b4c: 6818         	ldr	r0, [r3]
  3c5b4e: f7ff ff1b    	bl	0x3c5988 <RakNetLAN::getUnusedPort()> @ imm = #-0x1ca
  3c5b52: 4602         	mov	r2, r0
  3c5b54: ab01         	add	r3, sp, #0x4
  3c5b56: 681b         	ldr	r3, [r3]
  3c5b58: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3c5b5c: f21a fda8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21ab50
  3c5b60: 4605         	mov	r5, r0
  3c5b62: ab07         	add	r3, sp, #0x1c
  3c5b64: 681b         	ldr	r3, [r3]
  3c5b66: 4618         	mov	r0, r3
  3c5b68: 2101         	movs	r1, #0x1
  3c5b6a: 227c         	movs	r2, #0x7c
  3c5b6c: f0de fab6    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xde56c
  3c5b70: 4606         	mov	r6, r0
  3c5b72: ab02         	add	r3, sp, #0x8
  3c5b74: 4618         	mov	r0, r3
  3c5b76: f3c4 fc3d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3c487a
  3c5b7a: aa06         	add	r2, sp, #0x18
  3c5b7c: ab02         	add	r3, sp, #0x8
  3c5b7e: 4610         	mov	r0, r2
  3c5b80: 4631         	mov	r1, r6
  3c5b82: 461a         	mov	r2, r3
  3c5b84: f3f0 ff6c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f0ed8
  3c5b88: ab06         	add	r3, sp, #0x18
  3c5b8a: 4618         	mov	r0, r3
  3c5b8c: f1d3 ff56    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1d3eac
  3c5b90: 4606         	mov	r6, r0
  3c5b92: ab04         	add	r3, sp, #0x10
  3c5b94: 4618         	mov	r0, r3
  3c5b96: f1d3 ff51    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1d3ea2
  3c5b9a: 4603         	mov	r3, r0
  3c5b9c: 4630         	mov	r0, r6
  3c5b9e: 4619         	mov	r1, r3
  3c5ba0: 2200         	movs	r2, #0x0
  3c5ba2: f1d4 f935    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1d426a
  3c5ba6: 4603         	mov	r3, r0
  3c5ba8: 4628         	mov	r0, r5
  3c5baa: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x3c5c9c <RakNetLAN::updateNetwork(float)+0x2a8>
  3c5bac: 447a         	add	r2, pc
  3c5bae: 4611         	mov	r1, r2
  3c5bb0: 461a         	mov	r2, r3
  3c5bb2: f21a ffbb    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x21af76
  3c5bb6: ab06         	add	r3, sp, #0x18
  3c5bb8: 4618         	mov	r0, r3
  3c5bba: f3ef feab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3efd56
  3c5bbe: ab02         	add	r3, sp, #0x8
  3c5bc0: 4618         	mov	r0, r3
  3c5bc2: f3c4 fc1b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4836
  3c5bc6: ab04         	add	r3, sp, #0x10
  3c5bc8: 4618         	mov	r0, r3
  3c5bca: f3ef fea3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3efd46
  3c5bce: ab0a         	add	r3, sp, #0x28
  3c5bd0: 4618         	mov	r0, r3
  3c5bd2: f095 fe83    	bl	0x45b8dc <RakNet::BitStream::~BitStream()> @ imm = #0x95d06
  3c5bd6: e010         	b	0x3c5bfa <RakNetLAN::updateNetwork(float)+0x206> @ imm = #0x20
  3c5bd8: ab07         	add	r3, sp, #0x1c
  3c5bda: 681b         	ldr	r3, [r3]
  3c5bdc: 6b1b         	ldr	r3, [r3, #0x30]
  3c5bde: 781b         	ldrb	r3, [r3]
  3c5be0: 2b01         	cmp	r3, #0x1
  3c5be2: d00a         	beq	0x3c5bfa <RakNetLAN::updateNetwork(float)+0x206> @ imm = #0x14
  3c5be4: ab07         	add	r3, sp, #0x1c
  3c5be6: 681b         	ldr	r3, [r3]
  3c5be8: 6b1b         	ldr	r3, [r3, #0x30]
  3c5bea: 781b         	ldrb	r3, [r3]
  3c5bec: 2b02         	cmp	r3, #0x2
  3c5bee: d004         	beq	0x3c5bfa <RakNetLAN::updateNetwork(float)+0x206> @ imm = #0x8
  3c5bf0: ab07         	add	r3, sp, #0x1c
  3c5bf2: 681b         	ldr	r3, [r3]
  3c5bf4: 6b1b         	ldr	r3, [r3, #0x30]
  3c5bf6: 781b         	ldrb	r3, [r3]
  3c5bf8: 2b10         	cmp	r3, #0x10
  3c5bfa: ab01         	add	r3, sp, #0x4
  3c5bfc: 681b         	ldr	r3, [r3]
  3c5bfe: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5c02: 681b         	ldr	r3, [r3]
  3c5c04: 3368         	adds	r3, #0x68
  3c5c06: 681b         	ldr	r3, [r3]
  3c5c08: aa01         	add	r2, sp, #0x4
  3c5c0a: 6812         	ldr	r2, [r2]
  3c5c0c: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3c5c10: aa07         	add	r2, sp, #0x1c
  3c5c12: 4608         	mov	r0, r1
  3c5c14: 6811         	ldr	r1, [r2]
  3c5c16: 4798         	blx	r3
  3c5c18: ab01         	add	r3, sp, #0x4
  3c5c1a: 681b         	ldr	r3, [r3]
  3c5c1c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5c20: 681b         	ldr	r3, [r3]
  3c5c22: 3364         	adds	r3, #0x64
  3c5c24: 681b         	ldr	r3, [r3]
  3c5c26: aa01         	add	r2, sp, #0x4
  3c5c28: 6812         	ldr	r2, [r2]
  3c5c2a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c5c2e: 4610         	mov	r0, r2
  3c5c30: 4798         	blx	r3
  3c5c32: 4602         	mov	r2, r0
  3c5c34: ab07         	add	r3, sp, #0x1c
  3c5c36: 601a         	str	r2, [r3]
  3c5c38: ab07         	add	r3, sp, #0x1c
  3c5c3a: 681b         	ldr	r3, [r3]
  3c5c3c: 2b00         	cmp	r3, #0x0
  3c5c3e: f47f af0f    	bne.w	0x3c5a60 <RakNetLAN::updateNetwork(float)+0x6c> @ imm = #-0x1e2
  3c5c42: 2000         	movs	r0, #0x0
  3c5c44: f0ed f8d0    	bl	0x4b2de8 <RakSleep(unsigned int)> @ imm = #0xed1a0
  3c5c48: e019         	b	0x3c5c7e <RakNetLAN::updateNetwork(float)+0x28a> @ imm = #0x32
  3c5c4a: ab06         	add	r3, sp, #0x18
  3c5c4c: 4618         	mov	r0, r3
  3c5c4e: f3c4 fbd5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c47aa
  3c5c52: e00e         	b	0x3c5c72 <RakNetLAN::updateNetwork(float)+0x27e> @ imm = #0x1c
  3c5c54: ab06         	add	r3, sp, #0x18
  3c5c56: 4618         	mov	r0, r3
  3c5c58: f3ef fe5c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3efcb8
  3c5c5c: e7ff         	b	0x3c5c5e <RakNetLAN::updateNetwork(float)+0x26a> @ imm = #-0x2
  3c5c5e: ab02         	add	r3, sp, #0x8
  3c5c60: 4618         	mov	r0, r3
  3c5c62: f3c4 fbcb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3c4796
  3c5c66: e7ff         	b	0x3c5c68 <RakNetLAN::updateNetwork(float)+0x274> @ imm = #-0x2
  3c5c68: ab04         	add	r3, sp, #0x10
  3c5c6a: 4618         	mov	r0, r3
  3c5c6c: f3ef fe52    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3efca4
  3c5c70: e7ff         	b	0x3c5c72 <RakNetLAN::updateNetwork(float)+0x27e> @ imm = #-0x2
  3c5c72: ab0a         	add	r3, sp, #0x28
  3c5c74: 4618         	mov	r0, r3
  3c5c76: f095 fe31    	bl	0x45b8dc <RakNet::BitStream::~BitStream()> @ imm = #0x95c62
  3c5c7a: f3c2 fa17    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c242e
  3c5c7e: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c5c98 <RakNetLAN::updateNetwork(float)+0x2a4>
  3c5c80: 58e3         	ldr	r3, [r4, r3]
  3c5c82: 9a4f         	ldr	r2, [sp, #0x13c]
  3c5c84: 681b         	ldr	r3, [r3]
  3c5c86: 429a         	cmp	r2, r3
  3c5c88: d001         	beq	0x3c5c8e <RakNetLAN::updateNetwork(float)+0x29a> @ imm = #0x2
  3c5c8a: f710 e96e    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xefd24
  3c5c8e: b050         	add	sp, #0x140
  3c5c90: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3c5c91); words below are literal-pool data ---
  3c5c92: bf00         	nop
  3c5c94: d006         	beq	0x3c5ca4 <RakNetLAN::shutdown()+0x4> @ imm = #0xc
  3c5c96: 0056         	lsls	r6, r2, #0x1
  3c5c98: d72c         	bvc	0x3c5cf4 <RakNetLAN::shutdown()+0x54> @ imm = #0x58
  3c5c9a: ffff 03f0    	vrsra.u64	q8, q8, #0x1
  3c5c9e: 0041         	lsls	r1, r0, #0x1

// ==== RakNetLAN::shutdown
//      file offset 0x3c5ca0 (= ELF address; Ghidra 0x3d5ca0), 184 bytes, Thumb-2
  3c5ca0: b510         	push	{r4, lr}
  3c5ca2: b082         	sub	sp, #0x8
  3c5ca4: 9001         	str	r0, [sp, #0x4]
  3c5ca6: f1d5 fc65    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1d58ca
  3c5caa: 4603         	mov	r3, r0
  3c5cac: 681a         	ldr	r2, [r3]
  3c5cae: 3230         	adds	r2, #0x30
  3c5cb0: 6812         	ldr	r2, [r2]
  3c5cb2: 4618         	mov	r0, r3
  3c5cb4: 4790         	blx	r2
  3c5cb6: 4602         	mov	r2, r0
  3c5cb8: 9b01         	ldr	r3, [sp, #0x4]
  3c5cba: 4610         	mov	r0, r2
  3c5cbc: 4619         	mov	r1, r3
  3c5cbe: f1ad f98f    	bl	0x572fe0 <cocos2d::CCScheduler::unscheduleAllForTarget(cocos2d::CCObject*)> @ imm = #0x1ad31e
  3c5cc2: f21a fcf5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x21a9ea
  3c5cc6: 4603         	mov	r3, r0
  3c5cc8: 4618         	mov	r0, r3
  3c5cca: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3c5d54 <RakNetLAN::shutdown()+0xb4>
  3c5ccc: 447b         	add	r3, pc
  3c5cce: 4619         	mov	r1, r3
  3c5cd0: f21a ffc4    	bl	0x5e0c5c <cocos2d::CCNotificationCenter::postNotification(char const*)> @ imm = #0x21af88
  3c5cd4: 9b01         	ldr	r3, [sp, #0x4]
  3c5cd6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3c5cda: 2b00         	cmp	r3, #0x0
  3c5cdc: d019         	beq	0x3c5d12 <RakNetLAN::shutdown()+0x72> @ imm = #0x32
  3c5cde: 9b01         	ldr	r3, [sp, #0x4]
  3c5ce0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3c5ce4: 4618         	mov	r0, r3
  3c5ce6: f002 f8d9    	bl	0x3c7e9c <RakNetLocalServer::stopServer()> @ imm = #0x21b2
  3c5cea: 9b01         	ldr	r3, [sp, #0x4]
  3c5cec: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3c5cf0: 2b00         	cmp	r3, #0x0
  3c5cf2: d00a         	beq	0x3c5d0a <RakNetLAN::shutdown()+0x6a> @ imm = #0x14
  3c5cf4: 9b01         	ldr	r3, [sp, #0x4]
  3c5cf6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3c5cfa: 681b         	ldr	r3, [r3]
  3c5cfc: 3308         	adds	r3, #0x8
  3c5cfe: 681b         	ldr	r3, [r3]
  3c5d00: 9a01         	ldr	r2, [sp, #0x4]
  3c5d02: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3c5d06: 4610         	mov	r0, r2
  3c5d08: 4798         	blx	r3
  3c5d0a: 9b01         	ldr	r3, [sp, #0x4]
  3c5d0c: 2200         	movs	r2, #0x0
  3c5d0e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3c5d12: 9b01         	ldr	r3, [sp, #0x4]
  3c5d14: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5d18: 2b00         	cmp	r3, #0x0
  3c5d1a: d018         	beq	0x3c5d4e <RakNetLAN::shutdown()+0xae> @ imm = #0x30
  3c5d1c: 9b01         	ldr	r3, [sp, #0x4]
  3c5d1e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5d22: 681b         	ldr	r3, [r3]
  3c5d24: 3340         	adds	r3, #0x40
  3c5d26: 681c         	ldr	r4, [r3]
  3c5d28: 9b01         	ldr	r3, [sp, #0x4]
  3c5d2a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5d2e: 4618         	mov	r0, r3
  3c5d30: f44f 71fa    	mov.w	r1, #0x1f4
  3c5d34: 2200         	movs	r2, #0x0
  3c5d36: 2303         	movs	r3, #0x3
  3c5d38: 47a0         	blx	r4
  3c5d3a: 9b01         	ldr	r3, [sp, #0x4]
  3c5d3c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c5d40: 4618         	mov	r0, r3
  3c5d42: f0de ff0f    	bl	0x4a4b64 <RakNet::RakPeerInterface::DestroyInstance(RakNet::RakPeerInterface*)> @ imm = #0xdee1e
  3c5d46: 9b01         	ldr	r3, [sp, #0x4]
  3c5d48: 2200         	movs	r2, #0x0
  3c5d4a: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3c5d4e: b002         	add	sp, #0x8
  3c5d50: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c5d51); words below are literal-pool data ---
  3c5d52: bf00         	nop
  3c5d54: 02e4         	lsls	r4, r4, #0xb
  3c5d56: 0041         	lsls	r1, r0, #0x1

// ==== RakNetLAN::isSearching
//      file offset 0x3c5d58 (= ELF address; Ghidra 0x3d5d58), 12 bytes, Thumb-2
  3c5d58: b082         	sub	sp, #0x8
  3c5d5a: 9001         	str	r0, [sp, #0x4]
  3c5d5c: 2300         	movs	r3, #0x0
  3c5d5e: 4618         	mov	r0, r3
  3c5d60: b002         	add	sp, #0x8
  3c5d62: 4770         	bx	lr

// ==== RakNetLAN::canSearch
//      file offset 0x3c5d64 (= ELF address; Ghidra 0x3d5d64), 12 bytes, Thumb-2
  3c5d64: b082         	sub	sp, #0x8
  3c5d66: 9001         	str	r0, [sp, #0x4]
  3c5d68: 2300         	movs	r3, #0x0
  3c5d6a: 4618         	mov	r0, r3
  3c5d6c: b002         	add	sp, #0x8
  3c5d6e: 4770         	bx	lr

// ==== RakNetLAN::cancelSearch
//      file offset 0x3c5d70 (= ELF address; Ghidra 0x3d5d70), 8 bytes, Thumb-2
  3c5d70: b082         	sub	sp, #0x8
  3c5d72: 9001         	str	r0, [sp, #0x4]
  3c5d74: b002         	add	sp, #0x8
  3c5d76: 4770         	bx	lr

// ==== RakNetLAN::create
//      file offset 0x4277e0 (= ELF address; Ghidra 0x4377e0), 112 bytes, Thumb-2
  4277e0: b510         	push	{r4, lr}
  4277e2: b082         	sub	sp, #0x8
  4277e4: f44f 7098    	mov.w	r0, #0x130
  4277e8: f360 f8bc    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x360178
  4277ec: 4603         	mov	r3, r0
  4277ee: 461c         	mov	r4, r3
  4277f0: 4620         	mov	r0, r4
  4277f2: f79d fe79    	bl	0x3c54e8 <RakNetLAN::RakNetLAN()> @ imm = #-0x6230e
  4277f6: 9401         	str	r4, [sp, #0x4]
  4277f8: 9b01         	ldr	r3, [sp, #0x4]
  4277fa: 2b00         	cmp	r3, #0x0
  4277fc: d00a         	beq	0x427814 <RakNetLAN::create()+0x34> @ imm = #0x14
  4277fe: 9b01         	ldr	r3, [sp, #0x4]
  427800: 681b         	ldr	r3, [r3]
  427802: 3318         	adds	r3, #0x18
  427804: 681b         	ldr	r3, [r3]
  427806: 9801         	ldr	r0, [sp, #0x4]
  427808: 4798         	blx	r3
  42780a: 4603         	mov	r3, r0
  42780c: 2b00         	cmp	r3, #0x0
  42780e: d001         	beq	0x427814 <RakNetLAN::create()+0x34> @ imm = #0x2
  427810: 2301         	movs	r3, #0x1
  427812: e000         	b	0x427816 <RakNetLAN::create()+0x36> @ imm = #0x0
  427814: 2300         	movs	r3, #0x0
  427816: 2b00         	cmp	r3, #0x0
  427818: d005         	beq	0x427826 <RakNetLAN::create()+0x46> @ imm = #0xa
  42781a: 9b01         	ldr	r3, [sp, #0x4]
  42781c: 4618         	mov	r0, r3
  42781e: f170 fb6d    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1706da
  427822: 9b01         	ldr	r3, [sp, #0x4]
  427824: e011         	b	0x42784a <RakNetLAN::create()+0x6a> @ imm = #0x22
  427826: 9b01         	ldr	r3, [sp, #0x4]
  427828: 2b00         	cmp	r3, #0x0
  42782a: d005         	beq	0x427838 <RakNetLAN::create()+0x58> @ imm = #0xa
  42782c: 9b01         	ldr	r3, [sp, #0x4]
  42782e: 681b         	ldr	r3, [r3]
  427830: 3308         	adds	r3, #0x8
  427832: 681b         	ldr	r3, [r3]
  427834: 9801         	ldr	r0, [sp, #0x4]
  427836: 4798         	blx	r3
  427838: 2300         	movs	r3, #0x0
  42783a: 9301         	str	r3, [sp, #0x4]
  42783c: 2300         	movs	r3, #0x0
  42783e: e004         	b	0x42784a <RakNetLAN::create()+0x6a> @ imm = #0x8
  427840: 4620         	mov	r0, r4
  427842: f360 fc2f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36085e
  427846: f360 fc31    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x360862
  42784a: 4618         	mov	r0, r3
  42784c: b002         	add	sp, #0x8
  42784e: bd10         	pop	{r4, pc}
