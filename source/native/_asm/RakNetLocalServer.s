// RakNetLocalServer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../RakNetLocalServer.cpp

// ==== RakNetLocalServer::RakNetLocalServer
//      file offset 0x3c7dac (= ELF address; Ghidra 0x3d7dac), 132 bytes, Thumb-2
  3c7dac: b510         	push	{r4, lr}
  3c7dae: b082         	sub	sp, #0x8
  3c7db0: 9001         	str	r0, [sp, #0x4]
  3c7db2: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x3c7e24 <RakNetLocalServer::RakNetLocalServer()+0x78>
  3c7db4: 447c         	add	r4, pc
  3c7db6: 9b01         	ldr	r3, [sp, #0x4]
  3c7db8: 4618         	mov	r0, r3
  3c7dba: f1c7 fc3d    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1c787a
  3c7dbe: 9b01         	ldr	r3, [sp, #0x4]
  3c7dc0: 4a19         	ldr	r2, [pc, #0x64]         @ 0x3c7e28 <RakNetLocalServer::RakNetLocalServer()+0x7c>
  3c7dc2: 58a2         	ldr	r2, [r4, r2]
  3c7dc4: 3208         	adds	r2, #0x8
  3c7dc6: 601a         	str	r2, [r3]
  3c7dc8: 9b01         	ldr	r3, [sp, #0x4]
  3c7dca: 33e4         	adds	r3, #0xe4
  3c7dcc: 4618         	mov	r0, r3
  3c7dce: f3ed f9ef    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3ed3de
  3c7dd2: 9b01         	ldr	r3, [sp, #0x4]
  3c7dd4: 33f0         	adds	r3, #0xf0
  3c7dd6: 4618         	mov	r0, r3
  3c7dd8: f001 f838    	bl	0x3c8e4c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Map()> @ imm = #0x1070
  3c7ddc: 9b01         	ldr	r3, [sp, #0x4]
  3c7dde: 2200         	movs	r2, #0x0
  3c7de0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3c7de4: 9b01         	ldr	r3, [sp, #0x4]
  3c7de6: 33e4         	adds	r3, #0xe4
  3c7de8: 4618         	mov	r0, r3
  3c7dea: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3c7e2c <RakNetLocalServer::RakNetLocalServer()+0x80>
  3c7dec: 447b         	add	r3, pc
  3c7dee: 4619         	mov	r1, r3
  3c7df0: f3ee f83e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3ee07c
  3c7df4: 9b01         	ldr	r3, [sp, #0x4]
  3c7df6: e011         	b	0x3c7e1c <RakNetLocalServer::RakNetLocalServer()+0x70> @ imm = #0x22
  3c7df8: 9b01         	ldr	r3, [sp, #0x4]
  3c7dfa: 33f0         	adds	r3, #0xf0
  3c7dfc: 4618         	mov	r0, r3
  3c7dfe: f001 f841    	bl	0x3c8e84 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::~Map()> @ imm = #0x1082
  3c7e02: e7ff         	b	0x3c7e04 <RakNetLocalServer::RakNetLocalServer()+0x58> @ imm = #-0x2
  3c7e04: 9b01         	ldr	r3, [sp, #0x4]
  3c7e06: 33e4         	adds	r3, #0xe4
  3c7e08: 4618         	mov	r0, r3
  3c7e0a: f3ed fd83    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3edb06
  3c7e0e: e7ff         	b	0x3c7e10 <RakNetLocalServer::RakNetLocalServer()+0x64> @ imm = #-0x2
  3c7e10: 9b01         	ldr	r3, [sp, #0x4]
  3c7e12: 4618         	mov	r0, r3
  3c7e14: f1c7 fd16    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1c7a2c
  3c7e18: f3c0 f948    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c0290
  3c7e1c: 4618         	mov	r0, r3
  3c7e1e: b002         	add	sp, #0x8
  3c7e20: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3c7e21); words below are literal-pool data ---
  3c7e22: bf00         	nop
  3c7e24: ac54         	add	r4, sp, #0x150
  3c7e26: 0056         	lsls	r6, r2, #0x1
  3c7e28: de84         	udf	#0x84
  3c7e2a: ffff e274    	vrshr.u32	q15, q10, #0x1
  3c7e2e: 0040         	lsls	r0, r0, #0x1

// ==== RakNetLocalServer::~RakNetLocalServer
//      file offset 0x3c7e30 (= ELF address; Ghidra 0x3d7e30), 80 bytes, Thumb-2
  3c7e30: b500         	push	{lr}
  3c7e32: b083         	sub	sp, #0xc
  3c7e34: 9001         	str	r0, [sp, #0x4]
  3c7e36: 4910         	ldr	r1, [pc, #0x40]         @ 0x3c7e78 <RakNetLocalServer::~RakNetLocalServer()+0x48>
  3c7e38: 4479         	add	r1, pc
  3c7e3a: 9b01         	ldr	r3, [sp, #0x4]
  3c7e3c: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3c7e7c <RakNetLocalServer::~RakNetLocalServer()+0x4c>
  3c7e3e: 588a         	ldr	r2, [r1, r2]
  3c7e40: 3208         	adds	r2, #0x8
  3c7e42: 601a         	str	r2, [r3]
  3c7e44: 9b01         	ldr	r3, [sp, #0x4]
  3c7e46: 33f0         	adds	r3, #0xf0
  3c7e48: 4618         	mov	r0, r3
  3c7e4a: f001 f81b    	bl	0x3c8e84 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::~Map()> @ imm = #0x1036
  3c7e4e: 9b01         	ldr	r3, [sp, #0x4]
  3c7e50: 33e4         	adds	r3, #0xe4
  3c7e52: 4618         	mov	r0, r3
  3c7e54: f3ed fd5e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3edabc
  3c7e58: 9b01         	ldr	r3, [sp, #0x4]
  3c7e5a: 4618         	mov	r0, r3
  3c7e5c: f1c7 fcf2    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1c79e4
  3c7e60: 2300         	movs	r3, #0x0
  3c7e62: 2b00         	cmp	r3, #0x0
  3c7e64: d002         	beq	0x3c7e6c <RakNetLocalServer::~RakNetLocalServer()+0x3c> @ imm = #0x4
  3c7e66: 9801         	ldr	r0, [sp, #0x4]
  3c7e68: f3c0 f91c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c0238
  3c7e6c: 9b01         	ldr	r3, [sp, #0x4]
  3c7e6e: 4618         	mov	r0, r3
  3c7e70: b003         	add	sp, #0xc
  3c7e72: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3c7e75); words below are literal-pool data ---
  3c7e76: bf00         	nop
  3c7e78: abd0         	add	r3, sp, #0x340
  3c7e7a: 0056         	lsls	r6, r2, #0x1
  3c7e7c: de84         	udf	#0x84
  3c7e7e: ffff b500    	<unknown>

// ==== RakNetLocalServer::~RakNetLocalServer
//      file offset 0x3c7e80 (= ELF address; Ghidra 0x3d7e80), 28 bytes, Thumb-2
  3c7e80: b500         	push	{lr}
  3c7e82: b083         	sub	sp, #0xc
  3c7e84: 9001         	str	r0, [sp, #0x4]
  3c7e86: 9801         	ldr	r0, [sp, #0x4]
  3c7e88: f7ff ffd2    	bl	0x3c7e30 <RakNetLocalServer::~RakNetLocalServer()> @ imm = #-0x5c
  3c7e8c: 9801         	ldr	r0, [sp, #0x4]
  3c7e8e: f3c0 f909    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3c0212
  3c7e92: 9b01         	ldr	r3, [sp, #0x4]
  3c7e94: 4618         	mov	r0, r3
  3c7e96: b003         	add	sp, #0xc
  3c7e98: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetLocalServer::stopServer
//      file offset 0x3c7e9c (= ELF address; Ghidra 0x3d7e9c), 62 bytes, Thumb-2
  3c7e9c: b510         	push	{r4, lr}
  3c7e9e: b082         	sub	sp, #0x8
  3c7ea0: 9001         	str	r0, [sp, #0x4]
  3c7ea2: 9b01         	ldr	r3, [sp, #0x4]
  3c7ea4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7ea8: 2b00         	cmp	r3, #0x0
  3c7eaa: d014         	beq	0x3c7ed6 <RakNetLocalServer::stopServer()+0x3a> @ imm = #0x28
  3c7eac: 9b01         	ldr	r3, [sp, #0x4]
  3c7eae: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7eb2: 681b         	ldr	r3, [r3]
  3c7eb4: 3340         	adds	r3, #0x40
  3c7eb6: 681c         	ldr	r4, [r3]
  3c7eb8: 9b01         	ldr	r3, [sp, #0x4]
  3c7eba: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7ebe: 4618         	mov	r0, r3
  3c7ec0: f44f 71fa    	mov.w	r1, #0x1f4
  3c7ec4: 2200         	movs	r2, #0x0
  3c7ec6: 2301         	movs	r3, #0x1
  3c7ec8: 47a0         	blx	r4
  3c7eca: 9b01         	ldr	r3, [sp, #0x4]
  3c7ecc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7ed0: 4618         	mov	r0, r3
  3c7ed2: f0dc fe47    	bl	0x4a4b64 <RakNet::RakPeerInterface::DestroyInstance(RakNet::RakPeerInterface*)> @ imm = #0xdcc8e
  3c7ed6: b002         	add	sp, #0x8
  3c7ed8: bd10         	pop	{r4, pc}

// ==== RakNetLocalServer::startServer
//      file offset 0x3c7edc (= ELF address; Ghidra 0x3d7edc), 464 bytes, Thumb-2
  3c7edc: b5f0         	push	{r4, r5, r6, r7, lr}
  3c7ede: b099         	sub	sp, #0x64
  3c7ee0: 9007         	str	r0, [sp, #0x1c]
  3c7ee2: 9106         	str	r1, [sp, #0x18]
  3c7ee4: 9205         	str	r2, [sp, #0x14]
  3c7ee6: 9304         	str	r3, [sp, #0x10]
  3c7ee8: 4c69         	ldr	r4, [pc, #0x1a4]        @ 0x3c8090 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1b4>
  3c7eea: 447c         	add	r4, pc
  3c7eec: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x3c8094 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1b8>
  3c7eee: 58e3         	ldr	r3, [r4, r3]
  3c7ef0: 681b         	ldr	r3, [r3]
  3c7ef2: 9317         	str	r3, [sp, #0x5c]
  3c7ef4: 9b07         	ldr	r3, [sp, #0x1c]
  3c7ef6: 33e4         	adds	r3, #0xe4
  3c7ef8: 4618         	mov	r0, r3
  3c7efa: 9906         	ldr	r1, [sp, #0x18]
  3c7efc: f3ee fb5a    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3ee6b4
  3c7f00: f0dc fe24    	bl	0x4a4b4c <RakNet::RakPeerInterface::GetInstance()> @ imm = #0xdcc48
  3c7f04: 4602         	mov	r2, r0
  3c7f06: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f08: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3c7f0c: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f0e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7f12: 681b         	ldr	r3, [r3]
  3c7f14: 3330         	adds	r3, #0x30
  3c7f16: 681b         	ldr	r3, [r3]
  3c7f18: 9a07         	ldr	r2, [sp, #0x1c]
  3c7f1a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c7f1e: 4610         	mov	r0, r2
  3c7f20: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x3c8098 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1bc>
  3c7f22: 447a         	add	r2, pc
  3c7f24: 4611         	mov	r1, r2
  3c7f26: 2211         	movs	r2, #0x11
  3c7f28: 4798         	blx	r3
  3c7f2a: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f2c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7f30: 681b         	ldr	r3, [r3]
  3c7f32: 33e4         	adds	r3, #0xe4
  3c7f34: 681e         	ldr	r6, [r3]
  3c7f36: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f38: f8d3 70e8    	ldr.w	r7, [r3, #0xe8]
  3c7f3c: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3c809c <RakNetLocalServer::startServer(std::string, int, std::string)+0x1c0>
  3c7f3e: 447b         	add	r3, pc
  3c7f40: 466d         	mov	r5, sp
  3c7f42: f103 0208    	add.w	r2, r3, #0x8
  3c7f46: ca07         	ldm	r2, {r0, r1, r2}
  3c7f48: e885 0007    	stm.w	r5, {r0, r1, r2}
  3c7f4c: cb0c         	ldm	r3, {r2, r3}
  3c7f4e: 4638         	mov	r0, r7
  3c7f50: f247 5130    	movw	r1, #0x7530
  3c7f54: 47b0         	blx	r6
  3c7f56: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f58: 33e4         	adds	r3, #0xe4
  3c7f5a: 4618         	mov	r0, r3
  3c7f5c: f3ed f9d0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3ed3a0
  3c7f60: 4603         	mov	r3, r0
  3c7f62: 4618         	mov	r0, r3
  3c7f64: f70e e860    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xf1f40
  3c7f68: 4603         	mov	r3, r0
  3c7f6a: b29b         	uxth	r3, r3
  3c7f6c: aa0a         	add	r2, sp, #0x28
  3c7f6e: 4610         	mov	r0, r2
  3c7f70: 4619         	mov	r1, r3
  3c7f72: 2200         	movs	r2, #0x0
  3c7f74: f0db fec0    	bl	0x4a3cf8 <RakNet::SocketDescriptor::SocketDescriptor(unsigned short, char const*)> @ imm = #0xdbd80
  3c7f78: 2302         	movs	r3, #0x2
  3c7f7a: f8ad 304a    	strh.w	r3, [sp, #0x4a]
  3c7f7e: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f80: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7f84: 681b         	ldr	r3, [r3]
  3c7f86: 3308         	adds	r3, #0x8
  3c7f88: 681b         	ldr	r3, [r3]
  3c7f8a: 9a07         	ldr	r2, [sp, #0x1c]
  3c7f8c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c7f90: 4610         	mov	r0, r2
  3c7f92: 2100         	movs	r1, #0x0
  3c7f94: 4798         	blx	r3
  3c7f96: 9b07         	ldr	r3, [sp, #0x1c]
  3c7f98: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7f9c: 681b         	ldr	r3, [r3]
  3c7f9e: 330c         	adds	r3, #0xc
  3c7fa0: 681d         	ldr	r5, [r3]
  3c7fa2: 9b07         	ldr	r3, [sp, #0x1c]
  3c7fa4: f8d3 00e8    	ldr.w	r0, [r3, #0xe8]
  3c7fa8: 9905         	ldr	r1, [sp, #0x14]
  3c7faa: aa0a         	add	r2, sp, #0x28
  3c7fac: f647 1361    	movw	r3, #0x7961
  3c7fb0: f6cf 73fe    	movt	r3, #0xfffe
  3c7fb4: 9300         	str	r3, [sp]
  3c7fb6: 2301         	movs	r3, #0x1
  3c7fb8: 47a8         	blx	r5
  3c7fba: 4603         	mov	r3, r0
  3c7fbc: 2b00         	cmp	r3, #0x0
  3c7fbe: bf14         	ite	ne
  3c7fc0: 2300         	movne	r3, #0x0
  3c7fc2: 2301         	moveq	r3, #0x1
  3c7fc4: f88d 3027    	strb.w	r3, [sp, #0x27]
  3c7fc8: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x3c80a0 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1c4>
  3c7fca: 447b         	add	r3, pc
  3c7fcc: 4618         	mov	r0, r3
  3c7fce: 9905         	ldr	r1, [sp, #0x14]
  3c7fd0: f70e e812    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf1fdc
  3c7fd4: 9b07         	ldr	r3, [sp, #0x1c]
  3c7fd6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7fda: 681b         	ldr	r3, [r3]
  3c7fdc: 3324         	adds	r3, #0x24
  3c7fde: 681b         	ldr	r3, [r3]
  3c7fe0: 9a07         	ldr	r2, [sp, #0x1c]
  3c7fe2: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3c7fe6: 9a05         	ldr	r2, [sp, #0x14]
  3c7fe8: b292         	uxth	r2, r2
  3c7fea: 4608         	mov	r0, r1
  3c7fec: 4611         	mov	r1, r2
  3c7fee: 4798         	blx	r3
  3c7ff0: 9b07         	ldr	r3, [sp, #0x1c]
  3c7ff2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c7ff6: 681b         	ldr	r3, [r3]
  3c7ff8: 33b4         	adds	r3, #0xb4
  3c7ffa: 681b         	ldr	r3, [r3]
  3c7ffc: 9a07         	ldr	r2, [sp, #0x1c]
  3c7ffe: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c8002: 4610         	mov	r0, r2
  3c8004: 2101         	movs	r1, #0x1
  3c8006: 4798         	blx	r3
  3c8008: 9b07         	ldr	r3, [sp, #0x1c]
  3c800a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c800e: 681b         	ldr	r3, [r3]
  3c8010: f503 7386    	add.w	r3, r3, #0x10c
  3c8014: 681b         	ldr	r3, [r3]
  3c8016: 9a07         	ldr	r2, [sp, #0x1c]
  3c8018: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c801c: 4610         	mov	r0, r2
  3c801e: f44f 717a    	mov.w	r1, #0x3e8
  3c8022: 4798         	blx	r3
  3c8024: 9b07         	ldr	r3, [sp, #0x1c]
  3c8026: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c802a: 681b         	ldr	r3, [r3]
  3c802c: 33bc         	adds	r3, #0xbc
  3c802e: 681d         	ldr	r5, [r3]
  3c8030: 9b07         	ldr	r3, [sp, #0x1c]
  3c8032: f8d3 70e8    	ldr.w	r7, [r3, #0xe8]
  3c8036: 9804         	ldr	r0, [sp, #0x10]
  3c8038: f3ed f962    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3ed2c4
  3c803c: 4606         	mov	r6, r0
  3c803e: 9804         	ldr	r0, [sp, #0x10]
  3c8040: f3ed f95e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3ed2bc
  3c8044: 4603         	mov	r3, r0
  3c8046: 4618         	mov	r0, r3
  3c8048: f70d ef76    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0xf2114
  3c804c: 4603         	mov	r3, r0
  3c804e: 3301         	adds	r3, #0x1
  3c8050: 4638         	mov	r0, r7
  3c8052: 4631         	mov	r1, r6
  3c8054: 461a         	mov	r2, r3
  3c8056: 47a8         	blx	r5
  3c8058: f89d 3027    	ldrb.w	r3, [sp, #0x27]
  3c805c: 2b00         	cmp	r3, #0x0
  3c805e: d005         	beq	0x3c806c <RakNetLocalServer::startServer(std::string, int, std::string)+0x190> @ imm = #0xa
  3c8060: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3c80a4 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1c8>
  3c8062: 447b         	add	r3, pc
  3c8064: 4618         	mov	r0, r3
  3c8066: f70d eff2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf201c
  3c806a: e007         	b	0x3c807c <RakNetLocalServer::startServer(std::string, int, std::string)+0x1a0> @ imm = #0xe
  3c806c: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3c80a8 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1cc>
  3c806e: 447b         	add	r3, pc
  3c8070: 4618         	mov	r0, r3
  3c8072: f70d efec    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2028
  3c8076: 9807         	ldr	r0, [sp, #0x1c]
  3c8078: f7ff ff10    	bl	0x3c7e9c <RakNetLocalServer::stopServer()> @ imm = #-0x1e0
  3c807c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c8094 <RakNetLocalServer::startServer(std::string, int, std::string)+0x1b8>
  3c807e: 58e3         	ldr	r3, [r4, r3]
  3c8080: 9a17         	ldr	r2, [sp, #0x5c]
  3c8082: 681b         	ldr	r3, [r3]
  3c8084: 429a         	cmp	r2, r3
  3c8086: d001         	beq	0x3c808c <RakNetLocalServer::startServer(std::string, int, std::string)+0x1b0> @ imm = #0x2
  3c8088: f70d ef6e    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xf2124
  3c808c: b019         	add	sp, #0x64
  3c808e: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c808f); words below are literal-pool data ---
  3c8090: ab1e         	add	r3, sp, #0x78
  3c8092: 0056         	lsls	r6, r2, #0x1
  3c8094: d72c         	bvc	0x3c80f0 <RakNetLocalServer::getMaxPeerID()+0x44> @ imm = #0x58
  3c8096: ffff e146    	<unknown>
  3c809a: 0040         	lsls	r0, r0, #0x1
  3c809c: a1f2         	adr	r1, #968 <RakNetLocalServer::addClient(RakNet::RakNetGUID)+0x6a>
  3c809e: 0057         	lsls	r7, r2, #0x1
  3c80a0: e0b2         	b	0x3c8208 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0x8> @ imm = #0x164
  3c80a2: 0040         	lsls	r0, r0, #0x1
  3c80a4: e04a         	b	0x3c813c <RakNetLocalServer::addClient(RakNet::RakNetGUID)+0x14> @ imm = #0x94
  3c80a6: 0040         	lsls	r0, r0, #0x1
  3c80a8: e06a         	b	0x3c8180 <RakNetLocalServer::addClient(RakNet::RakNetGUID)+0x58> @ imm = #0xd4
  3c80aa: 0040         	lsls	r0, r0, #0x1

// ==== RakNetLocalServer::getMaxPeerID
//      file offset 0x3c80ac (= ELF address; Ghidra 0x3d80ac), 122 bytes, Thumb-2
  3c80ac: b500         	push	{lr}
  3c80ae: b085         	sub	sp, #0x14
  3c80b0: 9001         	str	r0, [sp, #0x4]
  3c80b2: 2301         	movs	r3, #0x1
  3c80b4: f8ad 300a    	strh.w	r3, [sp, #0xa]
  3c80b8: 2300         	movs	r3, #0x0
  3c80ba: 9303         	str	r3, [sp, #0xc]
  3c80bc: e01f         	b	0x3c80fe <RakNetLocalServer::getMaxPeerID()+0x52> @ imm = #0x3e
  3c80be: 9b01         	ldr	r3, [sp, #0x4]
  3c80c0: 33f0         	adds	r3, #0xf0
  3c80c2: 4618         	mov	r0, r3
  3c80c4: 9903         	ldr	r1, [sp, #0xc]
  3c80c6: f000 fef9    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0xdf2
  3c80ca: 4603         	mov	r3, r0
  3c80cc: 681b         	ldr	r3, [r3]
  3c80ce: 7c1b         	ldrb	r3, [r3, #0x10]
  3c80d0: f8bd 200a    	ldrh.w	r2, [sp, #0xa]
  3c80d4: 429a         	cmp	r2, r3
  3c80d6: bf2c         	ite	hs
  3c80d8: 2300         	movhs	r3, #0x0
  3c80da: 2301         	movlo	r3, #0x1
  3c80dc: b2db         	uxtb	r3, r3
  3c80de: 2b00         	cmp	r3, #0x0
  3c80e0: d00a         	beq	0x3c80f8 <RakNetLocalServer::getMaxPeerID()+0x4c> @ imm = #0x14
  3c80e2: 9b01         	ldr	r3, [sp, #0x4]
  3c80e4: 33f0         	adds	r3, #0xf0
  3c80e6: 4618         	mov	r0, r3
  3c80e8: 9903         	ldr	r1, [sp, #0xc]
  3c80ea: f000 fee7    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0xdce
  3c80ee: 4603         	mov	r3, r0
  3c80f0: 681b         	ldr	r3, [r3]
  3c80f2: 7c1b         	ldrb	r3, [r3, #0x10]
  3c80f4: f8ad 300a    	strh.w	r3, [sp, #0xa]
  3c80f8: 9b03         	ldr	r3, [sp, #0xc]
  3c80fa: 3301         	adds	r3, #0x1
  3c80fc: 9303         	str	r3, [sp, #0xc]
  3c80fe: 9b01         	ldr	r3, [sp, #0x4]
  3c8100: 33f0         	adds	r3, #0xf0
  3c8102: 4618         	mov	r0, r3
  3c8104: f000 fece    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0xd9c
  3c8108: 4602         	mov	r2, r0
  3c810a: 9b03         	ldr	r3, [sp, #0xc]
  3c810c: 429a         	cmp	r2, r3
  3c810e: bf94         	ite	ls
  3c8110: 2300         	movls	r3, #0x0
  3c8112: 2301         	movhi	r3, #0x1
  3c8114: b2db         	uxtb	r3, r3
  3c8116: 2b00         	cmp	r3, #0x0
  3c8118: d1d1         	bne	0x3c80be <RakNetLocalServer::getMaxPeerID()+0x12> @ imm = #-0x5e
  3c811a: f8bd 300a    	ldrh.w	r3, [sp, #0xa]
  3c811e: 4618         	mov	r0, r3
  3c8120: b005         	add	sp, #0x14
  3c8122: f85d fb04    	ldr	pc, [sp], #4

// ==== RakNetLocalServer::addClient
//      file offset 0x3c8128 (= ELF address; Ghidra 0x3d8128), 214 bytes, Thumb-2
  3c8128: b082         	sub	sp, #0x8
  3c812a: b530         	push	{r4, r5, lr}
  3c812c: b08b         	sub	sp, #0x2c
  3c812e: 9005         	str	r0, [sp, #0x14]
  3c8130: a90e         	add	r1, sp, #0x38
  3c8132: e881 000c    	stm.w	r1, {r2, r3}
  3c8136: 2018         	movs	r0, #0x18
  3c8138: f3bf fc14    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3bf828
  3c813c: 4603         	mov	r3, r0
  3c813e: 461c         	mov	r4, r3
  3c8140: 4620         	mov	r0, r4
  3c8142: f7ff fe1b    	bl	0x3c7d7c <FClientEntry::FClientEntry()> @ imm = #-0x3ca
  3c8146: 9408         	str	r4, [sp, #0x20]
  3c8148: 9b08         	ldr	r3, [sp, #0x20]
  3c814a: 4618         	mov	r0, r3
  3c814c: a90e         	add	r1, sp, #0x38
  3c814e: f7f6 f97b    	bl	0x3be448 <RakNet::RakNetGUID::operator=(RakNet::RakNetGUID const&)> @ imm = #-0x9d0a
  3c8152: 9c08         	ldr	r4, [sp, #0x20]
  3c8154: 9805         	ldr	r0, [sp, #0x14]
  3c8156: f7ff ffa9    	bl	0x3c80ac <RakNetLocalServer::getMaxPeerID()> @ imm = #-0xae
  3c815a: 4603         	mov	r3, r0
  3c815c: b2db         	uxtb	r3, r3
  3c815e: 3301         	adds	r3, #0x1
  3c8160: b2db         	uxtb	r3, r3
  3c8162: 7423         	strb	r3, [r4, #0x10]
  3c8164: 9b05         	ldr	r3, [sp, #0x14]
  3c8166: f103 02f0    	add.w	r2, r3, #0xf0
  3c816a: ab08         	add	r3, sp, #0x20
  3c816c: 4610         	mov	r0, r2
  3c816e: a90e         	add	r1, sp, #0x38
  3c8170: 461a         	mov	r2, r3
  3c8172: f000 feb3    	bl	0x3c8edc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Set(RakNet::RakNetGUID const&, FClientEntry* const&)> @ imm = #0xd66
  3c8176: 2300         	movs	r3, #0x0
  3c8178: f8ad 301c    	strh.w	r3, [sp, #0x1c]
  3c817c: 2300         	movs	r3, #0x0
  3c817e: f88d 301e    	strb.w	r3, [sp, #0x1e]
  3c8182: 2388         	movs	r3, #0x88
  3c8184: f88d 301c    	strb.w	r3, [sp, #0x1c]
  3c8188: 2301         	movs	r3, #0x1
  3c818a: f88d 301d    	strb.w	r3, [sp, #0x1d]
  3c818e: 9b08         	ldr	r3, [sp, #0x20]
  3c8190: 7c1b         	ldrb	r3, [r3, #0x10]
  3c8192: f88d 301e    	strb.w	r3, [sp, #0x1e]
  3c8196: 9b08         	ldr	r3, [sp, #0x20]
  3c8198: ad07         	add	r5, sp, #0x1c
  3c819a: 466c         	mov	r4, sp
  3c819c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c819e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c81a2: 9805         	ldr	r0, [sp, #0x14]
  3c81a4: 4629         	mov	r1, r5
  3c81a6: 2203         	movs	r2, #0x3
  3c81a8: f000 f8ae    	bl	0x3c8308 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)> @ imm = #0x15c
  3c81ac: 2300         	movs	r3, #0x0
  3c81ae: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3c81b2: 2300         	movs	r3, #0x0
  3c81b4: 9309         	str	r3, [sp, #0x24]
  3c81b6: 2388         	movs	r3, #0x88
  3c81b8: f88d 3024    	strb.w	r3, [sp, #0x24]
  3c81bc: 2302         	movs	r3, #0x2
  3c81be: f88d 3025    	strb.w	r3, [sp, #0x25]
  3c81c2: 9b08         	ldr	r3, [sp, #0x20]
  3c81c4: 7c1b         	ldrb	r3, [r3, #0x10]
  3c81c6: f88d 3026    	strb.w	r3, [sp, #0x26]
  3c81ca: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3c81ce: f88d 3027    	strb.w	r3, [sp, #0x27]
  3c81d2: 9b08         	ldr	r3, [sp, #0x20]
  3c81d4: ad09         	add	r5, sp, #0x24
  3c81d6: 466c         	mov	r4, sp
  3c81d8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c81da: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c81de: 9805         	ldr	r0, [sp, #0x14]
  3c81e0: 4629         	mov	r1, r5
  3c81e2: 2204         	movs	r2, #0x4
  3c81e4: f000 f92c    	bl	0x3c8440 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)> @ imm = #0x258
  3c81e8: e004         	b	0x3c81f4 <RakNetLocalServer::addClient(RakNet::RakNetGUID)+0xcc> @ imm = #0x8
  3c81ea: 4620         	mov	r0, r4
  3c81ec: f3bf ff5a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3bfeb4
  3c81f0: f3bf ff5c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3bfeb8
  3c81f4: b00b         	add	sp, #0x2c
  3c81f6: e8bd 4030    	pop.w	{r4, r5, lr}
  3c81fa: b002         	add	sp, #0x8
  3c81fc: 4770         	bx	lr

// ==== RakNetLocalServer::removeClient
//      file offset 0x3c8200 (= ELF address; Ghidra 0x3d8200), 220 bytes, Thumb-2
  3c8200: b082         	sub	sp, #0x8
  3c8202: b500         	push	{lr}
  3c8204: b085         	sub	sp, #0x14
  3c8206: 9001         	str	r0, [sp, #0x4]
  3c8208: a906         	add	r1, sp, #0x18
  3c820a: e881 000c    	stm.w	r1, {r2, r3}
  3c820e: 9b01         	ldr	r3, [sp, #0x4]
  3c8210: 33f0         	adds	r3, #0xf0
  3c8212: 4618         	mov	r0, r3
  3c8214: a906         	add	r1, sp, #0x18
  3c8216: f000 fec7    	bl	0x3c8fa8 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Has(RakNet::RakNetGUID const&) const> @ imm = #0xd8e
  3c821a: 4603         	mov	r3, r0
  3c821c: f083 0301    	eor	r3, r3, #0x1
  3c8220: b2db         	uxtb	r3, r3
  3c8222: 2b00         	cmp	r3, #0x0
  3c8224: d000         	beq	0x3c8228 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0x28> @ imm = #0x0
  3c8226: e050         	b	0x3c82ca <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0xca> @ imm = #0xa0
  3c8228: 9b01         	ldr	r3, [sp, #0x4]
  3c822a: 33f0         	adds	r3, #0xf0
  3c822c: 4618         	mov	r0, r3
  3c822e: a906         	add	r1, sp, #0x18
  3c8230: f000 fee8    	bl	0x3c9004 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Get(RakNet::RakNetGUID const&) const> @ imm = #0xdd0
  3c8234: 4603         	mov	r3, r0
  3c8236: 681b         	ldr	r3, [r3]
  3c8238: 9303         	str	r3, [sp, #0xc]
  3c823a: 9b03         	ldr	r3, [sp, #0xc]
  3c823c: 2b00         	cmp	r3, #0x0
  3c823e: d100         	bne	0x3c8242 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0x42> @ imm = #0x0
  3c8240: e043         	b	0x3c82ca <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0xca> @ imm = #0x86
  3c8242: 9b01         	ldr	r3, [sp, #0x4]
  3c8244: 33f0         	adds	r3, #0xf0
  3c8246: 4618         	mov	r0, r3
  3c8248: a906         	add	r1, sp, #0x18
  3c824a: f000 ff11    	bl	0x3c9070 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Delete(RakNet::RakNetGUID const&)> @ imm = #0xe22
  3c824e: 9b01         	ldr	r3, [sp, #0x4]
  3c8250: 33f0         	adds	r3, #0xf0
  3c8252: 4618         	mov	r0, r3
  3c8254: a906         	add	r1, sp, #0x18
  3c8256: f000 fea7    	bl	0x3c8fa8 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Has(RakNet::RakNetGUID const&) const> @ imm = #0xd4e
  3c825a: 4603         	mov	r3, r0
  3c825c: 2b00         	cmp	r3, #0x0
  3c825e: d00f         	beq	0x3c8280 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0x80> @ imm = #0x1e
  3c8260: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3c82d4 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0xd4>
  3c8262: 447b         	add	r3, pc
  3c8264: 4618         	mov	r0, r3
  3c8266: f70d eef2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf221c
  3c826a: 9b01         	ldr	r3, [sp, #0x4]
  3c826c: f103 02f0    	add.w	r2, r3, #0xf0
  3c8270: 2300         	movs	r3, #0x0
  3c8272: 9302         	str	r3, [sp, #0x8]
  3c8274: ab02         	add	r3, sp, #0x8
  3c8276: 4610         	mov	r0, r2
  3c8278: a906         	add	r1, sp, #0x18
  3c827a: 461a         	mov	r2, r3
  3c827c: f000 fe2e    	bl	0x3c8edc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Set(RakNet::RakNetGUID const&, FClientEntry* const&)> @ imm = #0xc5c
  3c8280: 2300         	movs	r3, #0x0
  3c8282: f8ad 3008    	strh.w	r3, [sp, #0x8]
  3c8286: 2300         	movs	r3, #0x0
  3c8288: f88d 300a    	strb.w	r3, [sp, #0xa]
  3c828c: 2388         	movs	r3, #0x88
  3c828e: f88d 3008    	strb.w	r3, [sp, #0x8]
  3c8292: 2306         	movs	r3, #0x6
  3c8294: f88d 3009    	strb.w	r3, [sp, #0x9]
  3c8298: 9b03         	ldr	r3, [sp, #0xc]
  3c829a: 7c1b         	ldrb	r3, [r3, #0x10]
  3c829c: f88d 300a    	strb.w	r3, [sp, #0xa]
  3c82a0: ab02         	add	r3, sp, #0x8
  3c82a2: 9801         	ldr	r0, [sp, #0x4]
  3c82a4: 4619         	mov	r1, r3
  3c82a6: 2203         	movs	r2, #0x3
  3c82a8: f000 f86e    	bl	0x3c8388 <RakNetLocalServer::broadcast(unsigned char*, int)> @ imm = #0xdc
  3c82ac: 9b01         	ldr	r3, [sp, #0x4]
  3c82ae: 33f0         	adds	r3, #0xf0
  3c82b0: 4618         	mov	r0, r3
  3c82b2: f000 fdf7    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0xbee
  3c82b6: 4603         	mov	r3, r0
  3c82b8: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x3c82d8 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)+0xd8>
  3c82ba: 447a         	add	r2, pc
  3c82bc: 4610         	mov	r0, r2
  3c82be: 4619         	mov	r1, r3
  3c82c0: f70d ee9a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf22cc
  3c82c4: 9803         	ldr	r0, [sp, #0xc]
  3c82c6: f3bf feed    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3bfdda
  3c82ca: b005         	add	sp, #0x14
  3c82cc: f85d eb04    	ldr	lr, [sp], #4
  3c82d0: b002         	add	sp, #0x8
  3c82d2: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3c82d3); words below are literal-pool data ---
  3c82d4: de9e         	udf	#0x9e
  3c82d6: 0040         	lsls	r0, r0, #0x1
  3c82d8: de76         	udf	#0x76
  3c82da: 0040         	lsls	r0, r0, #0x1

// ==== RakNetLocalServer::GetReliability
//      file offset 0x3c82dc (= ELF address; Ghidra 0x3d82dc), 42 bytes, Thumb-2
  3c82dc: b082         	sub	sp, #0x8
  3c82de: 9001         	str	r0, [sp, #0x4]
  3c82e0: 9100         	str	r1, [sp]
  3c82e2: 9b00         	ldr	r3, [sp]
  3c82e4: 781b         	ldrb	r3, [r3]
  3c82e6: 2b89         	cmp	r3, #0x89
  3c82e8: d007         	beq	0x3c82fa <RakNetLocalServer::GetReliability(unsigned char*)+0x1e> @ imm = #0xe
  3c82ea: 9b00         	ldr	r3, [sp]
  3c82ec: 781b         	ldrb	r3, [r3]
  3c82ee: 2b8a         	cmp	r3, #0x8a
  3c82f0: d003         	beq	0x3c82fa <RakNetLocalServer::GetReliability(unsigned char*)+0x1e> @ imm = #0x6
  3c82f2: 9b00         	ldr	r3, [sp]
  3c82f4: 781b         	ldrb	r3, [r3]
  3c82f6: 2b8b         	cmp	r3, #0x8b
  3c82f8: d101         	bne	0x3c82fe <RakNetLocalServer::GetReliability(unsigned char*)+0x22> @ imm = #0x2
  3c82fa: 2301         	movs	r3, #0x1
  3c82fc: e000         	b	0x3c8300 <RakNetLocalServer::GetReliability(unsigned char*)+0x24> @ imm = #0x0
  3c82fe: 2303         	movs	r3, #0x3
  3c8300: 4618         	mov	r0, r3
  3c8302: b002         	add	sp, #0x8
  3c8304: 4770         	bx	lr

// ==== RakNetLocalServer::sendToClient
//      file offset 0x3c8308 (= ELF address; Ghidra 0x3d8308), 128 bytes, Thumb-2
  3c8308: b5f0         	push	{r4, r5, r6, r7, lr}
  3c830a: b097         	sub	sp, #0x5c
  3c830c: 9009         	str	r0, [sp, #0x24]
  3c830e: 9108         	str	r1, [sp, #0x20]
  3c8310: 9207         	str	r2, [sp, #0x1c]
  3c8312: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x3c8380 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)+0x78>
  3c8314: 447c         	add	r4, pc
  3c8316: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3c8384 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)+0x7c>
  3c8318: 58e3         	ldr	r3, [r4, r3]
  3c831a: 681b         	ldr	r3, [r3]
  3c831c: 9315         	str	r3, [sp, #0x54]
  3c831e: 9b08         	ldr	r3, [sp, #0x20]
  3c8320: 2b00         	cmp	r3, #0x0
  3c8322: d023         	beq	0x3c836c <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)+0x64> @ imm = #0x46
  3c8324: 9b07         	ldr	r3, [sp, #0x1c]
  3c8326: 2b00         	cmp	r3, #0x0
  3c8328: dd20         	ble	0x3c836c <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)+0x64> @ imm = #0x40
  3c832a: 9b09         	ldr	r3, [sp, #0x24]
  3c832c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c8330: 681b         	ldr	r3, [r3]
  3c8332: 3354         	adds	r3, #0x54
  3c8334: 681d         	ldr	r5, [r3]
  3c8336: 9b09         	ldr	r3, [sp, #0x24]
  3c8338: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3c833c: 9809         	ldr	r0, [sp, #0x24]
  3c833e: 9908         	ldr	r1, [sp, #0x20]
  3c8340: f7ff ffcc    	bl	0x3c82dc <RakNetLocalServer::GetReliability(unsigned char*)> @ imm = #-0x68
  3c8344: 4607         	mov	r7, r0
  3c8346: ab0a         	add	r3, sp, #0x28
  3c8348: 4618         	mov	r0, r3
  3c834a: a91c         	add	r1, sp, #0x70
  3c834c: f7f6 f8b0    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0x9ea0
  3c8350: 9700         	str	r7, [sp]
  3c8352: 2300         	movs	r3, #0x0
  3c8354: 9301         	str	r3, [sp, #0x4]
  3c8356: ab0a         	add	r3, sp, #0x28
  3c8358: 9302         	str	r3, [sp, #0x8]
  3c835a: 2300         	movs	r3, #0x0
  3c835c: 9303         	str	r3, [sp, #0xc]
  3c835e: 2300         	movs	r3, #0x0
  3c8360: 9304         	str	r3, [sp, #0x10]
  3c8362: 4630         	mov	r0, r6
  3c8364: 9908         	ldr	r1, [sp, #0x20]
  3c8366: 9a07         	ldr	r2, [sp, #0x1c]
  3c8368: 2301         	movs	r3, #0x1
  3c836a: 47a8         	blx	r5
  3c836c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c8384 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)+0x7c>
  3c836e: 58e3         	ldr	r3, [r4, r3]
  3c8370: 9a15         	ldr	r2, [sp, #0x54]
  3c8372: 681b         	ldr	r3, [r3]
  3c8374: 429a         	cmp	r2, r3
  3c8376: d001         	beq	0x3c837c <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)+0x74> @ imm = #0x2
  3c8378: f70d edf6    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xf2414
  3c837c: b017         	add	sp, #0x5c
  3c837e: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c837f); words below are literal-pool data ---
  3c8380: a6f4         	adr	r6, #976 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0x38>
  3c8382: 0056         	lsls	r6, r2, #0x1
  3c8384: d72c         	bvc	0x3c83e0 <RakNetLocalServer::broadcast(unsigned char*, int)+0x58> @ imm = #0x58
  3c8386: ffff b5f0    	<unknown>

// ==== RakNetLocalServer::broadcast
//      file offset 0x3c8388 (= ELF address; Ghidra 0x3d8388), 184 bytes, Thumb-2
  3c8388: b5f0         	push	{r4, r5, r6, r7, lr}
  3c838a: b099         	sub	sp, #0x64
  3c838c: 9009         	str	r0, [sp, #0x24]
  3c838e: 9108         	str	r1, [sp, #0x20]
  3c8390: 9207         	str	r2, [sp, #0x1c]
  3c8392: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x3c8438 <RakNetLocalServer::broadcast(unsigned char*, int)+0xb0>
  3c8394: 447c         	add	r4, pc
  3c8396: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3c843c <RakNetLocalServer::broadcast(unsigned char*, int)+0xb4>
  3c8398: 58e3         	ldr	r3, [r4, r3]
  3c839a: 681b         	ldr	r3, [r3]
  3c839c: 9317         	str	r3, [sp, #0x5c]
  3c839e: 9b08         	ldr	r3, [sp, #0x20]
  3c83a0: 2b00         	cmp	r3, #0x0
  3c83a2: d03f         	beq	0x3c8424 <RakNetLocalServer::broadcast(unsigned char*, int)+0x9c> @ imm = #0x7e
  3c83a4: 9b07         	ldr	r3, [sp, #0x1c]
  3c83a6: 2b00         	cmp	r3, #0x0
  3c83a8: dd3c         	ble	0x3c8424 <RakNetLocalServer::broadcast(unsigned char*, int)+0x9c> @ imm = #0x78
  3c83aa: 2300         	movs	r3, #0x0
  3c83ac: 930b         	str	r3, [sp, #0x2c]
  3c83ae: e02b         	b	0x3c8408 <RakNetLocalServer::broadcast(unsigned char*, int)+0x80> @ imm = #0x56
  3c83b0: 9b09         	ldr	r3, [sp, #0x24]
  3c83b2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c83b6: 681b         	ldr	r3, [r3]
  3c83b8: 3354         	adds	r3, #0x54
  3c83ba: 681d         	ldr	r5, [r3]
  3c83bc: 9b09         	ldr	r3, [sp, #0x24]
  3c83be: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3c83c2: 9809         	ldr	r0, [sp, #0x24]
  3c83c4: 9908         	ldr	r1, [sp, #0x20]
  3c83c6: f7ff ff89    	bl	0x3c82dc <RakNetLocalServer::GetReliability(unsigned char*)> @ imm = #-0xee
  3c83ca: 4607         	mov	r7, r0
  3c83cc: 9b09         	ldr	r3, [sp, #0x24]
  3c83ce: 33f0         	adds	r3, #0xf0
  3c83d0: 4618         	mov	r0, r3
  3c83d2: 990b         	ldr	r1, [sp, #0x2c]
  3c83d4: f000 fd72    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0xae4
  3c83d8: 4603         	mov	r3, r0
  3c83da: 681b         	ldr	r3, [r3]
  3c83dc: aa0c         	add	r2, sp, #0x30
  3c83de: 4610         	mov	r0, r2
  3c83e0: 4619         	mov	r1, r3
  3c83e2: f7f6 f865    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0x9f36
  3c83e6: 9700         	str	r7, [sp]
  3c83e8: 2300         	movs	r3, #0x0
  3c83ea: 9301         	str	r3, [sp, #0x4]
  3c83ec: ab0c         	add	r3, sp, #0x30
  3c83ee: 9302         	str	r3, [sp, #0x8]
  3c83f0: 2300         	movs	r3, #0x0
  3c83f2: 9303         	str	r3, [sp, #0xc]
  3c83f4: 2300         	movs	r3, #0x0
  3c83f6: 9304         	str	r3, [sp, #0x10]
  3c83f8: 4630         	mov	r0, r6
  3c83fa: 9908         	ldr	r1, [sp, #0x20]
  3c83fc: 9a07         	ldr	r2, [sp, #0x1c]
  3c83fe: 2301         	movs	r3, #0x1
  3c8400: 47a8         	blx	r5
  3c8402: 9b0b         	ldr	r3, [sp, #0x2c]
  3c8404: 3301         	adds	r3, #0x1
  3c8406: 930b         	str	r3, [sp, #0x2c]
  3c8408: 9b09         	ldr	r3, [sp, #0x24]
  3c840a: 33f0         	adds	r3, #0xf0
  3c840c: 4618         	mov	r0, r3
  3c840e: f000 fd49    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0xa92
  3c8412: 4602         	mov	r2, r0
  3c8414: 9b0b         	ldr	r3, [sp, #0x2c]
  3c8416: 429a         	cmp	r2, r3
  3c8418: bf94         	ite	ls
  3c841a: 2300         	movls	r3, #0x0
  3c841c: 2301         	movhi	r3, #0x1
  3c841e: b2db         	uxtb	r3, r3
  3c8420: 2b00         	cmp	r3, #0x0
  3c8422: d1c5         	bne	0x3c83b0 <RakNetLocalServer::broadcast(unsigned char*, int)+0x28> @ imm = #-0x76
  3c8424: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c843c <RakNetLocalServer::broadcast(unsigned char*, int)+0xb4>
  3c8426: 58e3         	ldr	r3, [r4, r3]
  3c8428: 9a17         	ldr	r2, [sp, #0x5c]
  3c842a: 681b         	ldr	r3, [r3]
  3c842c: 429a         	cmp	r2, r3
  3c842e: d001         	beq	0x3c8434 <RakNetLocalServer::broadcast(unsigned char*, int)+0xac> @ imm = #0x2
  3c8430: f70d ed9a    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xf24cc
  3c8434: b019         	add	sp, #0x64
  3c8436: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c8437); words below are literal-pool data ---
  3c8438: a674         	adr	r6, #464 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0x70>
  3c843a: 0056         	lsls	r6, r2, #0x1
  3c843c: d72c         	bvc	0x3c8498 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0x58> @ imm = #0x58
  3c843e: ffff b5f0    	<unknown>

// ==== RakNetLocalServer::broadcast
//      file offset 0x3c8440 (= ELF address; Ghidra 0x3d8440), 216 bytes, Thumb-2
  3c8440: b5f0         	push	{r4, r5, r6, r7, lr}
  3c8442: b099         	sub	sp, #0x64
  3c8444: 9009         	str	r0, [sp, #0x24]
  3c8446: 9108         	str	r1, [sp, #0x20]
  3c8448: 9207         	str	r2, [sp, #0x1c]
  3c844a: 4c31         	ldr	r4, [pc, #0xc4]         @ 0x3c8510 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0xd0>
  3c844c: 447c         	add	r4, pc
  3c844e: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3c8514 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0xd4>
  3c8450: 58e3         	ldr	r3, [r4, r3]
  3c8452: 681b         	ldr	r3, [r3]
  3c8454: 9317         	str	r3, [sp, #0x5c]
  3c8456: 9b08         	ldr	r3, [sp, #0x20]
  3c8458: 2b00         	cmp	r3, #0x0
  3c845a: d04e         	beq	0x3c84fa <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0xba> @ imm = #0x9c
  3c845c: 9b07         	ldr	r3, [sp, #0x1c]
  3c845e: 2b00         	cmp	r3, #0x0
  3c8460: dd4b         	ble	0x3c84fa <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0xba> @ imm = #0x96
  3c8462: 2300         	movs	r3, #0x0
  3c8464: 930b         	str	r3, [sp, #0x2c]
  3c8466: e03a         	b	0x3c84de <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0x9e> @ imm = #0x74
  3c8468: 9b09         	ldr	r3, [sp, #0x24]
  3c846a: 33f0         	adds	r3, #0xf0
  3c846c: 4618         	mov	r0, r3
  3c846e: 990b         	ldr	r1, [sp, #0x2c]
  3c8470: f000 fd24    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0xa48
  3c8474: 4603         	mov	r3, r0
  3c8476: 681b         	ldr	r3, [r3]
  3c8478: 4618         	mov	r0, r3
  3c847a: a91e         	add	r1, sp, #0x78
  3c847c: f0dc f8ce    	bl	0x4a461c <RakNet::RakNetGUID::operator!=(RakNet::RakNetGUID const&) const> @ imm = #0xdc19c
  3c8480: 4603         	mov	r3, r0
  3c8482: 2b00         	cmp	r3, #0x0
  3c8484: d028         	beq	0x3c84d8 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0x98> @ imm = #0x50
  3c8486: 9b09         	ldr	r3, [sp, #0x24]
  3c8488: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c848c: 681b         	ldr	r3, [r3]
  3c848e: 3354         	adds	r3, #0x54
  3c8490: 681d         	ldr	r5, [r3]
  3c8492: 9b09         	ldr	r3, [sp, #0x24]
  3c8494: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3c8498: 9809         	ldr	r0, [sp, #0x24]
  3c849a: 9908         	ldr	r1, [sp, #0x20]
  3c849c: f7ff ff1e    	bl	0x3c82dc <RakNetLocalServer::GetReliability(unsigned char*)> @ imm = #-0x1c4
  3c84a0: 4607         	mov	r7, r0
  3c84a2: 9b09         	ldr	r3, [sp, #0x24]
  3c84a4: 33f0         	adds	r3, #0xf0
  3c84a6: 4618         	mov	r0, r3
  3c84a8: 990b         	ldr	r1, [sp, #0x2c]
  3c84aa: f000 fd07    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0xa0e
  3c84ae: 4603         	mov	r3, r0
  3c84b0: 681b         	ldr	r3, [r3]
  3c84b2: aa0c         	add	r2, sp, #0x30
  3c84b4: 4610         	mov	r0, r2
  3c84b6: 4619         	mov	r1, r3
  3c84b8: f7f5 fffa    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0xa00c
  3c84bc: 9700         	str	r7, [sp]
  3c84be: 2300         	movs	r3, #0x0
  3c84c0: 9301         	str	r3, [sp, #0x4]
  3c84c2: ab0c         	add	r3, sp, #0x30
  3c84c4: 9302         	str	r3, [sp, #0x8]
  3c84c6: 2300         	movs	r3, #0x0
  3c84c8: 9303         	str	r3, [sp, #0xc]
  3c84ca: 2300         	movs	r3, #0x0
  3c84cc: 9304         	str	r3, [sp, #0x10]
  3c84ce: 4630         	mov	r0, r6
  3c84d0: 9908         	ldr	r1, [sp, #0x20]
  3c84d2: 9a07         	ldr	r2, [sp, #0x1c]
  3c84d4: 2301         	movs	r3, #0x1
  3c84d6: 47a8         	blx	r5
  3c84d8: 9b0b         	ldr	r3, [sp, #0x2c]
  3c84da: 3301         	adds	r3, #0x1
  3c84dc: 930b         	str	r3, [sp, #0x2c]
  3c84de: 9b09         	ldr	r3, [sp, #0x24]
  3c84e0: 33f0         	adds	r3, #0xf0
  3c84e2: 4618         	mov	r0, r3
  3c84e4: f000 fcde    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0x9bc
  3c84e8: 4602         	mov	r2, r0
  3c84ea: 9b0b         	ldr	r3, [sp, #0x2c]
  3c84ec: 429a         	cmp	r2, r3
  3c84ee: bf94         	ite	ls
  3c84f0: 2300         	movls	r3, #0x0
  3c84f2: 2301         	movhi	r3, #0x1
  3c84f4: b2db         	uxtb	r3, r3
  3c84f6: 2b00         	cmp	r3, #0x0
  3c84f8: d1b6         	bne	0x3c8468 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0x28> @ imm = #-0x94
  3c84fa: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3c8514 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0xd4>
  3c84fc: 58e3         	ldr	r3, [r4, r3]
  3c84fe: 9a17         	ldr	r2, [sp, #0x5c]
  3c8500: 681b         	ldr	r3, [r3]
  3c8502: 429a         	cmp	r2, r3
  3c8504: d001         	beq	0x3c850a <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)+0xca> @ imm = #0x2
  3c8506: f70d ed30    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xf25a0
  3c850a: b019         	add	sp, #0x64
  3c850c: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c850d); words below are literal-pool data ---
  3c850e: bf00         	nop
  3c8510: a5bc         	adr	r5, #752 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0xb8>
  3c8512: 0056         	lsls	r6, r2, #0x1
  3c8514: d72c         	bvc	0x3c8570 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x58> @ imm = #0x58
  3c8516: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== RakNetLocalServer::sendClientPeerMessage
//      file offset 0x3c8518 (= ELF address; Ghidra 0x3d8518), 392 bytes, Thumb-2
  3c8518: b530         	push	{r4, r5, lr}
  3c851a: b08f         	sub	sp, #0x3c
  3c851c: 9005         	str	r0, [sp, #0x14]
  3c851e: 9104         	str	r1, [sp, #0x10]
  3c8520: 9b05         	ldr	r3, [sp, #0x14]
  3c8522: f103 02f0    	add.w	r2, r3, #0xf0
  3c8526: 9b04         	ldr	r3, [sp, #0x10]
  3c8528: 3318         	adds	r3, #0x18
  3c852a: 4610         	mov	r0, r2
  3c852c: 4619         	mov	r1, r3
  3c852e: f000 fd3b    	bl	0x3c8fa8 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Has(RakNet::RakNetGUID const&) const> @ imm = #0xa76
  3c8532: 4603         	mov	r3, r0
  3c8534: f083 0301    	eor	r3, r3, #0x1
  3c8538: b2db         	uxtb	r3, r3
  3c853a: 2b00         	cmp	r3, #0x0
  3c853c: d000         	beq	0x3c8540 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x28> @ imm = #0x0
  3c853e: e09e         	b	0x3c867e <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x166> @ imm = #0x13c
  3c8540: 9b05         	ldr	r3, [sp, #0x14]
  3c8542: f103 02f0    	add.w	r2, r3, #0xf0
  3c8546: 9b04         	ldr	r3, [sp, #0x10]
  3c8548: 3318         	adds	r3, #0x18
  3c854a: 4610         	mov	r0, r2
  3c854c: 4619         	mov	r1, r3
  3c854e: f000 fd59    	bl	0x3c9004 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Get(RakNet::RakNetGUID const&) const> @ imm = #0xab2
  3c8552: 4603         	mov	r3, r0
  3c8554: 681b         	ldr	r3, [r3]
  3c8556: 9309         	str	r3, [sp, #0x24]
  3c8558: 9b09         	ldr	r3, [sp, #0x24]
  3c855a: 2b00         	cmp	r3, #0x0
  3c855c: d003         	beq	0x3c8566 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x4e> @ imm = #0x6
  3c855e: 9b04         	ldr	r3, [sp, #0x10]
  3c8560: 6a9b         	ldr	r3, [r3, #0x28]
  3c8562: 2b01         	cmp	r3, #0x1
  3c8564: d808         	bhi	0x3c8578 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x60> @ imm = #0x10
  3c8566: 9b04         	ldr	r3, [sp, #0x10]
  3c8568: 6a9b         	ldr	r3, [r3, #0x28]
  3c856a: 4a46         	ldr	r2, [pc, #0x118]        @ 0x3c8684 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x16c>
  3c856c: 447a         	add	r2, pc
  3c856e: 4610         	mov	r0, r2
  3c8570: 4619         	mov	r1, r3
  3c8572: f70d ed42    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf257c
  3c8576: e082         	b	0x3c867e <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x166> @ imm = #0x104
  3c8578: 9805         	ldr	r0, [sp, #0x14]
  3c857a: 9904         	ldr	r1, [sp, #0x10]
  3c857c: 9a09         	ldr	r2, [sp, #0x24]
  3c857e: 2301         	movs	r3, #0x1
  3c8580: f000 fb7e    	bl	0x3c8c80 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)> @ imm = #0x6fc
  3c8584: 4603         	mov	r3, r0
  3c8586: f083 0301    	eor	r3, r3, #0x1
  3c858a: b2db         	uxtb	r3, r3
  3c858c: 2b00         	cmp	r3, #0x0
  3c858e: d00a         	beq	0x3c85a6 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x8e> @ imm = #0x14
  3c8590: 9b04         	ldr	r3, [sp, #0x10]
  3c8592: 6b1b         	ldr	r3, [r3, #0x30]
  3c8594: 3303         	adds	r3, #0x3
  3c8596: 781b         	ldrb	r3, [r3]
  3c8598: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3c8688 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x170>
  3c859a: 447a         	add	r2, pc
  3c859c: 4610         	mov	r0, r2
  3c859e: 4619         	mov	r1, r3
  3c85a0: f70d ed2a    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf25ac
  3c85a4: e06b         	b	0x3c867e <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x166> @ imm = #0xd6
  3c85a6: 9b04         	ldr	r3, [sp, #0x10]
  3c85a8: 6b1b         	ldr	r3, [r3, #0x30]
  3c85aa: 3301         	adds	r3, #0x1
  3c85ac: 781b         	ldrb	r3, [r3]
  3c85ae: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3c85b2: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x3c868c <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x174>
  3c85b4: 447b         	add	r3, pc
  3c85b6: ac0a         	add	r4, sp, #0x28
  3c85b8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c85ba: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c85be: 2300         	movs	r3, #0x0
  3c85c0: 9308         	str	r3, [sp, #0x20]
  3c85c2: e022         	b	0x3c860a <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0xf2> @ imm = #0x44
  3c85c4: 9b05         	ldr	r3, [sp, #0x14]
  3c85c6: 33f0         	adds	r3, #0xf0
  3c85c8: 4618         	mov	r0, r3
  3c85ca: 9908         	ldr	r1, [sp, #0x20]
  3c85cc: f000 fc76    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0x8ec
  3c85d0: 4603         	mov	r3, r0
  3c85d2: 681b         	ldr	r3, [r3]
  3c85d4: 7c1b         	ldrb	r3, [r3, #0x10]
  3c85d6: f89d 201f    	ldrb.w	r2, [sp, #0x1f]
  3c85da: 429a         	cmp	r2, r3
  3c85dc: bf14         	ite	ne
  3c85de: 2300         	movne	r3, #0x0
  3c85e0: 2301         	moveq	r3, #0x1
  3c85e2: b2db         	uxtb	r3, r3
  3c85e4: 2b00         	cmp	r3, #0x0
  3c85e6: d00d         	beq	0x3c8604 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0xec> @ imm = #0x1a
  3c85e8: 9b05         	ldr	r3, [sp, #0x14]
  3c85ea: 33f0         	adds	r3, #0xf0
  3c85ec: 4618         	mov	r0, r3
  3c85ee: 9908         	ldr	r1, [sp, #0x20]
  3c85f0: f000 fc64    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0x8c8
  3c85f4: 4603         	mov	r3, r0
  3c85f6: 681b         	ldr	r3, [r3]
  3c85f8: aa0a         	add	r2, sp, #0x28
  3c85fa: 4610         	mov	r0, r2
  3c85fc: 4619         	mov	r1, r3
  3c85fe: f7f5 ff23    	bl	0x3be448 <RakNet::RakNetGUID::operator=(RakNet::RakNetGUID const&)> @ imm = #-0xa1ba
  3c8602: e010         	b	0x3c8626 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x10e> @ imm = #0x20
  3c8604: 9b08         	ldr	r3, [sp, #0x20]
  3c8606: 3301         	adds	r3, #0x1
  3c8608: 9308         	str	r3, [sp, #0x20]
  3c860a: 9b05         	ldr	r3, [sp, #0x14]
  3c860c: 33f0         	adds	r3, #0xf0
  3c860e: 4618         	mov	r0, r3
  3c8610: f000 fc48    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0x890
  3c8614: 4602         	mov	r2, r0
  3c8616: 9b08         	ldr	r3, [sp, #0x20]
  3c8618: 429a         	cmp	r2, r3
  3c861a: bf94         	ite	ls
  3c861c: 2300         	movls	r3, #0x0
  3c861e: 2301         	movhi	r3, #0x1
  3c8620: b2db         	uxtb	r3, r3
  3c8622: 2b00         	cmp	r3, #0x0
  3c8624: d1ce         	bne	0x3c85c4 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0xac> @ imm = #-0x64
  3c8626: 9b04         	ldr	r3, [sp, #0x10]
  3c8628: 6b1b         	ldr	r3, [r3, #0x30]
  3c862a: 781b         	ldrb	r3, [r3]
  3c862c: 2b8a         	cmp	r3, #0x8a
  3c862e: d101         	bne	0x3c8634 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x11c> @ imm = #0x2
  3c8630: 2389         	movs	r3, #0x89
  3c8632: e000         	b	0x3c8636 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x11e> @ imm = #0x0
  3c8634: 2386         	movs	r3, #0x86
  3c8636: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3c8690 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x178>
  3c8638: 447a         	add	r2, pc
  3c863a: 7013         	strb	r3, [r2]
  3c863c: 9b09         	ldr	r3, [sp, #0x24]
  3c863e: 7c1a         	ldrb	r2, [r3, #0x10]
  3c8640: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3c8694 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x17c>
  3c8642: 447b         	add	r3, pc
  3c8644: 705a         	strb	r2, [r3, #0x1]
  3c8646: 9b04         	ldr	r3, [sp, #0x10]
  3c8648: 6b1b         	ldr	r3, [r3, #0x30]
  3c864a: 1c9a         	adds	r2, r3, #0x2
  3c864c: 9b04         	ldr	r3, [sp, #0x10]
  3c864e: 6a9b         	ldr	r3, [r3, #0x28]
  3c8650: 3b02         	subs	r3, #0x2
  3c8652: 4911         	ldr	r1, [pc, #0x44]         @ 0x3c8698 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x180>
  3c8654: 4479         	add	r1, pc
  3c8656: 1c88         	adds	r0, r1, #0x2
  3c8658: 4611         	mov	r1, r2
  3c865a: 461a         	mov	r2, r3
  3c865c: f70d ec72    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xf271c
  3c8660: 9b04         	ldr	r3, [sp, #0x10]
  3c8662: 6a9b         	ldr	r3, [r3, #0x28]
  3c8664: 461d         	mov	r5, r3
  3c8666: 466c         	mov	r4, sp
  3c8668: ab0a         	add	r3, sp, #0x28
  3c866a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c866c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c8670: 9805         	ldr	r0, [sp, #0x14]
  3c8672: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3c869c <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x184>
  3c8674: 447b         	add	r3, pc
  3c8676: 4619         	mov	r1, r3
  3c8678: 462a         	mov	r2, r5
  3c867a: f7ff fe45    	bl	0x3c8308 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)> @ imm = #-0x376
  3c867e: b00f         	add	sp, #0x3c
  3c8680: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c8681); words below are literal-pool data ---
  3c8682: bf00         	nop
  3c8684: dbe0         	blt	0x3c8648 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x130> @ imm = #-0x40
  3c8686: 0040         	lsls	r0, r0, #0x1
  3c8688: dbf6         	blt	0x3c8678 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)+0x160> @ imm = #-0x14
  3c868a: 0040         	lsls	r0, r0, #0x1
  3c868c: 9b90         	ldr	r3, [sp, #0x240]
  3c868e: 0057         	lsls	r7, r2, #0x1
  3c8690: 9b3c         	ldr	r3, [sp, #0xf0]
  3c8692: 0057         	lsls	r7, r2, #0x1
  3c8694: 9b32         	ldr	r3, [sp, #0xc8]
  3c8696: 0057         	lsls	r7, r2, #0x1
  3c8698: 9b20         	ldr	r3, [sp, #0x80]
  3c869a: 0057         	lsls	r7, r2, #0x1
  3c869c: 9b00         	ldr	r3, [sp]
  3c869e: 0057         	lsls	r7, r2, #0x1

// ==== RakNetLocalServer::sendClientMessage
//      file offset 0x3c86a0 (= ELF address; Ghidra 0x3d86a0), 264 bytes, Thumb-2
  3c86a0: b530         	push	{r4, r5, lr}
  3c86a2: b089         	sub	sp, #0x24
  3c86a4: 9005         	str	r0, [sp, #0x14]
  3c86a6: 9104         	str	r1, [sp, #0x10]
  3c86a8: 9b05         	ldr	r3, [sp, #0x14]
  3c86aa: f103 02f0    	add.w	r2, r3, #0xf0
  3c86ae: 9b04         	ldr	r3, [sp, #0x10]
  3c86b0: 3318         	adds	r3, #0x18
  3c86b2: 4610         	mov	r0, r2
  3c86b4: 4619         	mov	r1, r3
  3c86b6: f000 fc77    	bl	0x3c8fa8 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Has(RakNet::RakNetGUID const&) const> @ imm = #0x8ee
  3c86ba: 4603         	mov	r3, r0
  3c86bc: f083 0301    	eor	r3, r3, #0x1
  3c86c0: b2db         	uxtb	r3, r3
  3c86c2: 2b00         	cmp	r3, #0x0
  3c86c4: d00c         	beq	0x3c86e0 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x40> @ imm = #0x18
  3c86c6: 9b04         	ldr	r3, [sp, #0x10]
  3c86c8: 3318         	adds	r3, #0x18
  3c86ca: 4618         	mov	r0, r3
  3c86cc: f0db ffe2    	bl	0x4a4694 <RakNet::RakNetGUID::ToString() const> @ imm = #0xdbfc4
  3c86d0: 4603         	mov	r3, r0
  3c86d2: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x3c8790 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xf0>
  3c86d4: 447a         	add	r2, pc
  3c86d6: 4610         	mov	r0, r2
  3c86d8: 4619         	mov	r1, r3
  3c86da: f70d ec8e    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf26e4
  3c86de: e055         	b	0x3c878c <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xec> @ imm = #0xaa
  3c86e0: 9b05         	ldr	r3, [sp, #0x14]
  3c86e2: f103 02f0    	add.w	r2, r3, #0xf0
  3c86e6: 9b04         	ldr	r3, [sp, #0x10]
  3c86e8: 3318         	adds	r3, #0x18
  3c86ea: 4610         	mov	r0, r2
  3c86ec: 4619         	mov	r1, r3
  3c86ee: f000 fc89    	bl	0x3c9004 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Get(RakNet::RakNetGUID const&) const> @ imm = #0x912
  3c86f2: 4603         	mov	r3, r0
  3c86f4: 681b         	ldr	r3, [r3]
  3c86f6: 9307         	str	r3, [sp, #0x1c]
  3c86f8: 9b07         	ldr	r3, [sp, #0x1c]
  3c86fa: 2b00         	cmp	r3, #0x0
  3c86fc: d003         	beq	0x3c8706 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x66> @ imm = #0x6
  3c86fe: 9b04         	ldr	r3, [sp, #0x10]
  3c8700: 6a9b         	ldr	r3, [r3, #0x28]
  3c8702: 2b01         	cmp	r3, #0x1
  3c8704: d808         	bhi	0x3c8718 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x78> @ imm = #0x10
  3c8706: 9b04         	ldr	r3, [sp, #0x10]
  3c8708: 6a9b         	ldr	r3, [r3, #0x28]
  3c870a: 4a22         	ldr	r2, [pc, #0x88]         @ 0x3c8794 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xf4>
  3c870c: 447a         	add	r2, pc
  3c870e: 4610         	mov	r0, r2
  3c8710: 4619         	mov	r1, r3
  3c8712: f70d ec72    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf271c
  3c8716: e039         	b	0x3c878c <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xec> @ imm = #0x72
  3c8718: 9805         	ldr	r0, [sp, #0x14]
  3c871a: 9904         	ldr	r1, [sp, #0x10]
  3c871c: 9a07         	ldr	r2, [sp, #0x1c]
  3c871e: 2300         	movs	r3, #0x0
  3c8720: f000 faae    	bl	0x3c8c80 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)> @ imm = #0x55c
  3c8724: 4603         	mov	r3, r0
  3c8726: f083 0301    	eor	r3, r3, #0x1
  3c872a: b2db         	uxtb	r3, r3
  3c872c: 2b00         	cmp	r3, #0x0
  3c872e: d000         	beq	0x3c8732 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x92> @ imm = #0x0
  3c8730: e02c         	b	0x3c878c <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xec> @ imm = #0x58
  3c8732: 9b04         	ldr	r3, [sp, #0x10]
  3c8734: 6b1b         	ldr	r3, [r3, #0x30]
  3c8736: 781b         	ldrb	r3, [r3]
  3c8738: 2b89         	cmp	r3, #0x89
  3c873a: d101         	bne	0x3c8740 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xa0> @ imm = #0x2
  3c873c: 2389         	movs	r3, #0x89
  3c873e: e000         	b	0x3c8742 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xa2> @ imm = #0x0
  3c8740: 2386         	movs	r3, #0x86
  3c8742: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3c8798 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xf8>
  3c8744: 447a         	add	r2, pc
  3c8746: 7013         	strb	r3, [r2]
  3c8748: 9b07         	ldr	r3, [sp, #0x1c]
  3c874a: 7c1a         	ldrb	r2, [r3, #0x10]
  3c874c: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3c879c <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xfc>
  3c874e: 447b         	add	r3, pc
  3c8750: 705a         	strb	r2, [r3, #0x1]
  3c8752: 9b04         	ldr	r3, [sp, #0x10]
  3c8754: 6b1b         	ldr	r3, [r3, #0x30]
  3c8756: 1c5a         	adds	r2, r3, #0x1
  3c8758: 9b04         	ldr	r3, [sp, #0x10]
  3c875a: 6a9b         	ldr	r3, [r3, #0x28]
  3c875c: 3b01         	subs	r3, #0x1
  3c875e: 4910         	ldr	r1, [pc, #0x40]         @ 0x3c87a0 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x100>
  3c8760: 4479         	add	r1, pc
  3c8762: 1c88         	adds	r0, r1, #0x2
  3c8764: 4611         	mov	r1, r2
  3c8766: 461a         	mov	r2, r3
  3c8768: f70d ebec    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xf2828
  3c876c: 9b04         	ldr	r3, [sp, #0x10]
  3c876e: 6a9b         	ldr	r3, [r3, #0x28]
  3c8770: 3301         	adds	r3, #0x1
  3c8772: 461d         	mov	r5, r3
  3c8774: 9b07         	ldr	r3, [sp, #0x1c]
  3c8776: 466c         	mov	r4, sp
  3c8778: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c877a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c877e: 9805         	ldr	r0, [sp, #0x14]
  3c8780: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3c87a4 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x104>
  3c8782: 447b         	add	r3, pc
  3c8784: 4619         	mov	r1, r3
  3c8786: 462a         	mov	r2, r5
  3c8788: f7ff fe5a    	bl	0x3c8440 <RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID)> @ imm = #-0x34c
  3c878c: b009         	add	sp, #0x24
  3c878e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c878f); words below are literal-pool data ---
  3c8790: dae4         	bge	0x3c875c <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0xbc> @ imm = #-0x38
  3c8792: 0040         	lsls	r0, r0, #0x1
  3c8794: dac4         	bge	0x3c8720 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)+0x80> @ imm = #-0x78
  3c8796: 0040         	lsls	r0, r0, #0x1
  3c8798: 9a30         	ldr	r2, [sp, #0xc0]
  3c879a: 0057         	lsls	r7, r2, #0x1
  3c879c: 9a26         	ldr	r2, [sp, #0x98]
  3c879e: 0057         	lsls	r7, r2, #0x1
  3c87a0: 9a14         	ldr	r2, [sp, #0x50]
  3c87a2: 0057         	lsls	r7, r2, #0x1
  3c87a4: 99f2         	ldr	r1, [sp, #0x3c8]
  3c87a6: 0057         	lsls	r7, r2, #0x1

// ==== RakNetLocalServer::updateServer
//      file offset 0x3c87a8 (= ELF address; Ghidra 0x3d87a8), 1240 bytes, Thumb-2
  3c87a8: b5f0         	push	{r4, r5, r6, r7, lr}
  3c87aa: b097         	sub	sp, #0x5c
  3c87ac: 9005         	str	r0, [sp, #0x14]
  3c87ae: 9104         	str	r1, [sp, #0x10]
  3c87b0: f8df 4498    	ldr.w	r4, [pc, #0x498]        @ 0x3c8c4c <RakNetLocalServer::updateServer(float)+0x4a4>
  3c87b4: 447c         	add	r4, pc
  3c87b6: f8df 3498    	ldr.w	r3, [pc, #0x498]        @ 0x3c8c50 <RakNetLocalServer::updateServer(float)+0x4a8>
  3c87ba: 58e3         	ldr	r3, [r4, r3]
  3c87bc: 681b         	ldr	r3, [r3]
  3c87be: 9315         	str	r3, [sp, #0x54]
  3c87c0: 2300         	movs	r3, #0x0
  3c87c2: 9307         	str	r3, [sp, #0x1c]
  3c87c4: e048         	b	0x3c8858 <RakNetLocalServer::updateServer(float)+0xb0> @ imm = #0x90
  3c87c6: 9b05         	ldr	r3, [sp, #0x14]
  3c87c8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c87cc: 681b         	ldr	r3, [r3]
  3c87ce: 3374         	adds	r3, #0x74
  3c87d0: 681d         	ldr	r5, [r3]
  3c87d2: 9b05         	ldr	r3, [sp, #0x14]
  3c87d4: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3c87d8: 9b05         	ldr	r3, [sp, #0x14]
  3c87da: 33f0         	adds	r3, #0xf0
  3c87dc: 4618         	mov	r0, r3
  3c87de: 9907         	ldr	r1, [sp, #0x1c]
  3c87e0: f000 fb6c    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0x6d8
  3c87e4: 4603         	mov	r3, r0
  3c87e6: 681b         	ldr	r3, [r3]
  3c87e8: aa0a         	add	r2, sp, #0x28
  3c87ea: 4610         	mov	r0, r2
  3c87ec: 4619         	mov	r1, r3
  3c87ee: f7f5 fe5f    	bl	0x3be4b0 <RakNet::AddressOrGUID::AddressOrGUID(RakNet::RakNetGUID const&)> @ imm = #-0xa342
  3c87f2: ab0a         	add	r3, sp, #0x28
  3c87f4: 4630         	mov	r0, r6
  3c87f6: 4619         	mov	r1, r3
  3c87f8: 47a8         	blx	r5
  3c87fa: 4603         	mov	r3, r0
  3c87fc: 9309         	str	r3, [sp, #0x24]
  3c87fe: 9b09         	ldr	r3, [sp, #0x24]
  3c8800: 2b00         	cmp	r3, #0x0
  3c8802: d026         	beq	0x3c8852 <RakNetLocalServer::updateServer(float)+0xaa> @ imm = #0x4c
  3c8804: 9b09         	ldr	r3, [sp, #0x24]
  3c8806: 2b01         	cmp	r3, #0x1
  3c8808: d023         	beq	0x3c8852 <RakNetLocalServer::updateServer(float)+0xaa> @ imm = #0x46
  3c880a: 9b09         	ldr	r3, [sp, #0x24]
  3c880c: 2b02         	cmp	r3, #0x2
  3c880e: d020         	beq	0x3c8852 <RakNetLocalServer::updateServer(float)+0xaa> @ imm = #0x40
  3c8810: 9b09         	ldr	r3, [sp, #0x24]
  3c8812: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x3c8c54 <RakNetLocalServer::updateServer(float)+0x4ac>
  3c8816: 447a         	add	r2, pc
  3c8818: 4610         	mov	r0, r2
  3c881a: 9907         	ldr	r1, [sp, #0x1c]
  3c881c: 461a         	mov	r2, r3
  3c881e: f70d ebec    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf2828
  3c8822: 9b05         	ldr	r3, [sp, #0x14]
  3c8824: 33f0         	adds	r3, #0xf0
  3c8826: 4618         	mov	r0, r3
  3c8828: 9907         	ldr	r1, [sp, #0x1c]
  3c882a: f000 fb47    	bl	0x3c8ebc <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::operator[](unsigned int) const> @ imm = #0x68e
  3c882e: 4603         	mov	r3, r0
  3c8830: 681b         	ldr	r3, [r3]
  3c8832: 2201         	movs	r2, #0x1
  3c8834: 9202         	str	r2, [sp, #0x8]
  3c8836: 466a         	mov	r2, sp
  3c8838: f103 0108    	add.w	r1, r3, #0x8
  3c883c: c903         	ldm	r1, {r0, r1}
  3c883e: e882 0003    	stm.w	r2, {r0, r1}
  3c8842: cb0c         	ldm	r3, {r2, r3}
  3c8844: 9805         	ldr	r0, [sp, #0x14]
  3c8846: f7ff fcdb    	bl	0x3c8200 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)> @ imm = #-0x64a
  3c884a: 9b07         	ldr	r3, [sp, #0x1c]
  3c884c: 3b01         	subs	r3, #0x1
  3c884e: 9307         	str	r3, [sp, #0x1c]
  3c8850: bf00         	nop
  3c8852: 9b07         	ldr	r3, [sp, #0x1c]
  3c8854: 3301         	adds	r3, #0x1
  3c8856: 9307         	str	r3, [sp, #0x1c]
  3c8858: 9b05         	ldr	r3, [sp, #0x14]
  3c885a: 33f0         	adds	r3, #0xf0
  3c885c: 4618         	mov	r0, r3
  3c885e: f000 fb21    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0x642
  3c8862: 4602         	mov	r2, r0
  3c8864: 9b07         	ldr	r3, [sp, #0x1c]
  3c8866: 429a         	cmp	r2, r3
  3c8868: bf94         	ite	ls
  3c886a: 2300         	movls	r3, #0x0
  3c886c: 2301         	movhi	r3, #0x1
  3c886e: b2db         	uxtb	r3, r3
  3c8870: 2b00         	cmp	r3, #0x0
  3c8872: d1a8         	bne	0x3c87c6 <RakNetLocalServer::updateServer(float)+0x1e> @ imm = #-0xb0
  3c8874: 2300         	movs	r3, #0x0
  3c8876: 9308         	str	r3, [sp, #0x20]
  3c8878: 9b05         	ldr	r3, [sp, #0x14]
  3c887a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c887e: 681b         	ldr	r3, [r3]
  3c8880: 3364         	adds	r3, #0x64
  3c8882: 681b         	ldr	r3, [r3]
  3c8884: 9a05         	ldr	r2, [sp, #0x14]
  3c8886: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c888a: 4610         	mov	r0, r2
  3c888c: 4798         	blx	r3
  3c888e: 4603         	mov	r3, r0
  3c8890: 9308         	str	r3, [sp, #0x20]
  3c8892: e1cd         	b	0x3c8c30 <RakNetLocalServer::updateServer(float)+0x488> @ imm = #0x39a
  3c8894: 9b08         	ldr	r3, [sp, #0x20]
  3c8896: 6b1b         	ldr	r3, [r3, #0x30]
  3c8898: 781b         	ldrb	r3, [r3]
  3c889a: 3b01         	subs	r3, #0x1
  3c889c: 2b89         	cmp	r3, #0x89
  3c889e: f200 81a0    	bhi.w	0x3c8be2 <RakNetLocalServer::updateServer(float)+0x43a> @ imm = #0x340
  3c88a2: a102         	adr	r1, #8 <RakNetLocalServer::updateServer(float)+0x100>
  3c88a4: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3c88a8: 4411         	add	r1, r2
  3c88aa: 4708         	bx	r1
  3c88ac: 034b         	lsls	r3, r1, #0xd
  3c88ae: 0000         	movs	r0, r0
  3c88b0: 034b         	lsls	r3, r1, #0xd
  3c88b2: 0000         	movs	r0, r0
  3c88b4: 0337         	lsls	r7, r6, #0xc
  3c88b6: 0000         	movs	r0, r0
  3c88b8: 0337         	lsls	r7, r6, #0xc
  3c88ba: 0000         	movs	r0, r0
  3c88bc: 0337         	lsls	r7, r6, #0xc
  3c88be: 0000         	movs	r0, r0
  3c88c0: 0337         	lsls	r7, r6, #0xc
  3c88c2: 0000         	movs	r0, r0
  3c88c4: 0337         	lsls	r7, r6, #0xc
  3c88c6: 0000         	movs	r0, r0
  3c88c8: 0337         	lsls	r7, r6, #0xc
  3c88ca: 0000         	movs	r0, r0
  3c88cc: 0337         	lsls	r7, r6, #0xc
  3c88ce: 0000         	movs	r0, r0
  3c88d0: 0337         	lsls	r7, r6, #0xc
  3c88d2: 0000         	movs	r0, r0
  3c88d4: 0337         	lsls	r7, r6, #0xc
  3c88d6: 0000         	movs	r0, r0
  3c88d8: 0337         	lsls	r7, r6, #0xc
  3c88da: 0000         	movs	r0, r0
  3c88dc: 0337         	lsls	r7, r6, #0xc
  3c88de: 0000         	movs	r0, r0
  3c88e0: 0337         	lsls	r7, r6, #0xc
  3c88e2: 0000         	movs	r0, r0
  3c88e4: 0337         	lsls	r7, r6, #0xc
  3c88e6: 0000         	movs	r0, r0
  3c88e8: 024d         	lsls	r5, r1, #0x9
  3c88ea: 0000         	movs	r0, r0
  3c88ec: 0337         	lsls	r7, r6, #0xc
  3c88ee: 0000         	movs	r0, r0
  3c88f0: 0337         	lsls	r7, r6, #0xc
  3c88f2: 0000         	movs	r0, r0
  3c88f4: 0259         	lsls	r1, r3, #0x9
  3c88f6: 0000         	movs	r0, r0
  3c88f8: 02c7         	lsls	r7, r0, #0xb
  3c88fa: 0000         	movs	r0, r0
  3c88fc: 02d3         	lsls	r3, r2, #0xb
  3c88fe: 0000         	movs	r0, r0
  3c8900: 02fb         	lsls	r3, r7, #0xb
  3c8902: 0000         	movs	r0, r0
  3c8904: 0337         	lsls	r7, r6, #0xc
  3c8906: 0000         	movs	r0, r0
  3c8908: 0337         	lsls	r7, r6, #0xc
  3c890a: 0000         	movs	r0, r0
  3c890c: 0337         	lsls	r7, r6, #0xc
  3c890e: 0000         	movs	r0, r0
  3c8910: 0337         	lsls	r7, r6, #0xc
  3c8912: 0000         	movs	r0, r0
  3c8914: 0337         	lsls	r7, r6, #0xc
  3c8916: 0000         	movs	r0, r0
  3c8918: 0337         	lsls	r7, r6, #0xc
  3c891a: 0000         	movs	r0, r0
  3c891c: 0337         	lsls	r7, r6, #0xc
  3c891e: 0000         	movs	r0, r0
  3c8920: 0337         	lsls	r7, r6, #0xc
  3c8922: 0000         	movs	r0, r0
  3c8924: 0229         	lsls	r1, r5, #0x8
  3c8926: 0000         	movs	r0, r0
  3c8928: 0235         	lsls	r5, r6, #0x8
  3c892a: 0000         	movs	r0, r0
  3c892c: 0241         	lsls	r1, r0, #0x9
  3c892e: 0000         	movs	r0, r0
  3c8930: 0337         	lsls	r7, r6, #0xc
  3c8932: 0000         	movs	r0, r0
  3c8934: 0337         	lsls	r7, r6, #0xc
  3c8936: 0000         	movs	r0, r0
  3c8938: 0337         	lsls	r7, r6, #0xc
  3c893a: 0000         	movs	r0, r0
  3c893c: 0337         	lsls	r7, r6, #0xc
  3c893e: 0000         	movs	r0, r0
  3c8940: 0337         	lsls	r7, r6, #0xc
  3c8942: 0000         	movs	r0, r0
  3c8944: 0337         	lsls	r7, r6, #0xc
  3c8946: 0000         	movs	r0, r0
  3c8948: 0337         	lsls	r7, r6, #0xc
  3c894a: 0000         	movs	r0, r0
  3c894c: 0337         	lsls	r7, r6, #0xc
  3c894e: 0000         	movs	r0, r0
  3c8950: 0337         	lsls	r7, r6, #0xc
  3c8952: 0000         	movs	r0, r0
  3c8954: 0337         	lsls	r7, r6, #0xc
  3c8956: 0000         	movs	r0, r0
  3c8958: 0337         	lsls	r7, r6, #0xc
  3c895a: 0000         	movs	r0, r0
  3c895c: 0337         	lsls	r7, r6, #0xc
  3c895e: 0000         	movs	r0, r0
  3c8960: 0337         	lsls	r7, r6, #0xc
  3c8962: 0000         	movs	r0, r0
  3c8964: 0337         	lsls	r7, r6, #0xc
  3c8966: 0000         	movs	r0, r0
  3c8968: 0337         	lsls	r7, r6, #0xc
  3c896a: 0000         	movs	r0, r0
  3c896c: 0337         	lsls	r7, r6, #0xc
  3c896e: 0000         	movs	r0, r0
  3c8970: 0337         	lsls	r7, r6, #0xc
  3c8972: 0000         	movs	r0, r0
  3c8974: 0337         	lsls	r7, r6, #0xc
  3c8976: 0000         	movs	r0, r0
  3c8978: 0337         	lsls	r7, r6, #0xc
  3c897a: 0000         	movs	r0, r0
  3c897c: 0337         	lsls	r7, r6, #0xc
  3c897e: 0000         	movs	r0, r0
  3c8980: 0337         	lsls	r7, r6, #0xc
  3c8982: 0000         	movs	r0, r0
  3c8984: 0337         	lsls	r7, r6, #0xc
  3c8986: 0000         	movs	r0, r0
  3c8988: 0337         	lsls	r7, r6, #0xc
  3c898a: 0000         	movs	r0, r0
  3c898c: 0337         	lsls	r7, r6, #0xc
  3c898e: 0000         	movs	r0, r0
  3c8990: 0337         	lsls	r7, r6, #0xc
  3c8992: 0000         	movs	r0, r0
  3c8994: 0337         	lsls	r7, r6, #0xc
  3c8996: 0000         	movs	r0, r0
  3c8998: 0337         	lsls	r7, r6, #0xc
  3c899a: 0000         	movs	r0, r0
  3c899c: 0337         	lsls	r7, r6, #0xc
  3c899e: 0000         	movs	r0, r0
  3c89a0: 0337         	lsls	r7, r6, #0xc
  3c89a2: 0000         	movs	r0, r0
  3c89a4: 0337         	lsls	r7, r6, #0xc
  3c89a6: 0000         	movs	r0, r0
  3c89a8: 0337         	lsls	r7, r6, #0xc
  3c89aa: 0000         	movs	r0, r0
  3c89ac: 0337         	lsls	r7, r6, #0xc
  3c89ae: 0000         	movs	r0, r0
  3c89b0: 0337         	lsls	r7, r6, #0xc
  3c89b2: 0000         	movs	r0, r0
  3c89b4: 0337         	lsls	r7, r6, #0xc
  3c89b6: 0000         	movs	r0, r0
  3c89b8: 0337         	lsls	r7, r6, #0xc
  3c89ba: 0000         	movs	r0, r0
  3c89bc: 0337         	lsls	r7, r6, #0xc
  3c89be: 0000         	movs	r0, r0
  3c89c0: 0337         	lsls	r7, r6, #0xc
  3c89c2: 0000         	movs	r0, r0
  3c89c4: 0337         	lsls	r7, r6, #0xc
  3c89c6: 0000         	movs	r0, r0
  3c89c8: 0337         	lsls	r7, r6, #0xc
  3c89ca: 0000         	movs	r0, r0
  3c89cc: 0337         	lsls	r7, r6, #0xc
  3c89ce: 0000         	movs	r0, r0
  3c89d0: 0337         	lsls	r7, r6, #0xc
  3c89d2: 0000         	movs	r0, r0
  3c89d4: 0337         	lsls	r7, r6, #0xc
  3c89d6: 0000         	movs	r0, r0
  3c89d8: 0337         	lsls	r7, r6, #0xc
  3c89da: 0000         	movs	r0, r0
  3c89dc: 0337         	lsls	r7, r6, #0xc
  3c89de: 0000         	movs	r0, r0
  3c89e0: 0337         	lsls	r7, r6, #0xc
  3c89e2: 0000         	movs	r0, r0
  3c89e4: 0337         	lsls	r7, r6, #0xc
  3c89e6: 0000         	movs	r0, r0
  3c89e8: 0337         	lsls	r7, r6, #0xc
  3c89ea: 0000         	movs	r0, r0
  3c89ec: 0337         	lsls	r7, r6, #0xc
  3c89ee: 0000         	movs	r0, r0
  3c89f0: 0337         	lsls	r7, r6, #0xc
  3c89f2: 0000         	movs	r0, r0
  3c89f4: 0337         	lsls	r7, r6, #0xc
  3c89f6: 0000         	movs	r0, r0
  3c89f8: 0337         	lsls	r7, r6, #0xc
  3c89fa: 0000         	movs	r0, r0
  3c89fc: 0337         	lsls	r7, r6, #0xc
  3c89fe: 0000         	movs	r0, r0
  3c8a00: 0337         	lsls	r7, r6, #0xc
  3c8a02: 0000         	movs	r0, r0
  3c8a04: 0337         	lsls	r7, r6, #0xc
  3c8a06: 0000         	movs	r0, r0
  3c8a08: 0337         	lsls	r7, r6, #0xc
  3c8a0a: 0000         	movs	r0, r0
  3c8a0c: 0337         	lsls	r7, r6, #0xc
  3c8a0e: 0000         	movs	r0, r0
  3c8a10: 0337         	lsls	r7, r6, #0xc
  3c8a12: 0000         	movs	r0, r0
  3c8a14: 0337         	lsls	r7, r6, #0xc
  3c8a16: 0000         	movs	r0, r0
  3c8a18: 0337         	lsls	r7, r6, #0xc
  3c8a1a: 0000         	movs	r0, r0
  3c8a1c: 0337         	lsls	r7, r6, #0xc
  3c8a1e: 0000         	movs	r0, r0
  3c8a20: 0337         	lsls	r7, r6, #0xc
  3c8a22: 0000         	movs	r0, r0
  3c8a24: 0337         	lsls	r7, r6, #0xc
  3c8a26: 0000         	movs	r0, r0
  3c8a28: 0337         	lsls	r7, r6, #0xc
  3c8a2a: 0000         	movs	r0, r0
  3c8a2c: 0337         	lsls	r7, r6, #0xc
  3c8a2e: 0000         	movs	r0, r0
  3c8a30: 0337         	lsls	r7, r6, #0xc
  3c8a32: 0000         	movs	r0, r0
  3c8a34: 0337         	lsls	r7, r6, #0xc
  3c8a36: 0000         	movs	r0, r0
  3c8a38: 0337         	lsls	r7, r6, #0xc
  3c8a3a: 0000         	movs	r0, r0
  3c8a3c: 0337         	lsls	r7, r6, #0xc
  3c8a3e: 0000         	movs	r0, r0
  3c8a40: 0337         	lsls	r7, r6, #0xc
  3c8a42: 0000         	movs	r0, r0
  3c8a44: 0337         	lsls	r7, r6, #0xc
  3c8a46: 0000         	movs	r0, r0
  3c8a48: 0337         	lsls	r7, r6, #0xc
  3c8a4a: 0000         	movs	r0, r0
  3c8a4c: 0337         	lsls	r7, r6, #0xc
  3c8a4e: 0000         	movs	r0, r0
  3c8a50: 0337         	lsls	r7, r6, #0xc
  3c8a52: 0000         	movs	r0, r0
  3c8a54: 0337         	lsls	r7, r6, #0xc
  3c8a56: 0000         	movs	r0, r0
  3c8a58: 0337         	lsls	r7, r6, #0xc
  3c8a5a: 0000         	movs	r0, r0
  3c8a5c: 0337         	lsls	r7, r6, #0xc
  3c8a5e: 0000         	movs	r0, r0
  3c8a60: 0337         	lsls	r7, r6, #0xc
  3c8a62: 0000         	movs	r0, r0
  3c8a64: 0337         	lsls	r7, r6, #0xc
  3c8a66: 0000         	movs	r0, r0
  3c8a68: 0337         	lsls	r7, r6, #0xc
  3c8a6a: 0000         	movs	r0, r0
  3c8a6c: 0337         	lsls	r7, r6, #0xc
  3c8a6e: 0000         	movs	r0, r0
  3c8a70: 0337         	lsls	r7, r6, #0xc
  3c8a72: 0000         	movs	r0, r0
  3c8a74: 0337         	lsls	r7, r6, #0xc
  3c8a76: 0000         	movs	r0, r0
  3c8a78: 0337         	lsls	r7, r6, #0xc
  3c8a7a: 0000         	movs	r0, r0
  3c8a7c: 0337         	lsls	r7, r6, #0xc
  3c8a7e: 0000         	movs	r0, r0
  3c8a80: 0337         	lsls	r7, r6, #0xc
  3c8a82: 0000         	movs	r0, r0
  3c8a84: 0337         	lsls	r7, r6, #0xc
  3c8a86: 0000         	movs	r0, r0
  3c8a88: 0337         	lsls	r7, r6, #0xc
  3c8a8a: 0000         	movs	r0, r0
  3c8a8c: 0337         	lsls	r7, r6, #0xc
  3c8a8e: 0000         	movs	r0, r0
  3c8a90: 0337         	lsls	r7, r6, #0xc
  3c8a92: 0000         	movs	r0, r0
  3c8a94: 0337         	lsls	r7, r6, #0xc
  3c8a96: 0000         	movs	r0, r0
  3c8a98: 0337         	lsls	r7, r6, #0xc
  3c8a9a: 0000         	movs	r0, r0
  3c8a9c: 0337         	lsls	r7, r6, #0xc
  3c8a9e: 0000         	movs	r0, r0
  3c8aa0: 0337         	lsls	r7, r6, #0xc
  3c8aa2: 0000         	movs	r0, r0
  3c8aa4: 0337         	lsls	r7, r6, #0xc
  3c8aa6: 0000         	movs	r0, r0
  3c8aa8: 0337         	lsls	r7, r6, #0xc
  3c8aaa: 0000         	movs	r0, r0
  3c8aac: 0337         	lsls	r7, r6, #0xc
  3c8aae: 0000         	movs	r0, r0
  3c8ab0: 0337         	lsls	r7, r6, #0xc
  3c8ab2: 0000         	movs	r0, r0
  3c8ab4: 0337         	lsls	r7, r6, #0xc
  3c8ab6: 0000         	movs	r0, r0
  3c8ab8: 0337         	lsls	r7, r6, #0xc
  3c8aba: 0000         	movs	r0, r0
  3c8abc: 0337         	lsls	r7, r6, #0xc
  3c8abe: 0000         	movs	r0, r0
  3c8ac0: 0323         	lsls	r3, r4, #0xc
  3c8ac2: 0000         	movs	r0, r0
  3c8ac4: 032d         	lsls	r5, r5, #0xc
  3c8ac6: 0000         	movs	r0, r0
  3c8ac8: 0337         	lsls	r7, r6, #0xc
  3c8aca: 0000         	movs	r0, r0
  3c8acc: 0323         	lsls	r3, r4, #0xc
  3c8ace: 0000         	movs	r0, r0
  3c8ad0: 032d         	lsls	r5, r5, #0xc
  3c8ad2: 0000         	movs	r0, r0
  3c8ad4: 4b60         	ldr	r3, [pc, #0x180]        @ 0x3c8c58 <RakNetLocalServer::updateServer(float)+0x4b0>
  3c8ad6: 447b         	add	r3, pc
  3c8ad8: 4618         	mov	r0, r3
  3c8ada: f70d eab8    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2a90
  3c8ade: e08b         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x116
  3c8ae0: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x3c8c5c <RakNetLocalServer::updateServer(float)+0x4b4>
  3c8ae2: 447b         	add	r3, pc
  3c8ae4: 4618         	mov	r0, r3
  3c8ae6: f70d eab2    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2a9c
  3c8aea: e085         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x10a
  3c8aec: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3c8c60 <RakNetLocalServer::updateServer(float)+0x4b8>
  3c8aee: 447b         	add	r3, pc
  3c8af0: 4618         	mov	r0, r3
  3c8af2: f70d eaac    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2aa8
  3c8af6: e07f         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0xfe
  3c8af8: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3c8c64 <RakNetLocalServer::updateServer(float)+0x4bc>
  3c8afa: 447b         	add	r3, pc
  3c8afc: 4618         	mov	r0, r3
  3c8afe: f70d eaa6    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2ab4
  3c8b02: e079         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0xf2
  3c8b04: 4b58         	ldr	r3, [pc, #0x160]        @ 0x3c8c68 <RakNetLocalServer::updateServer(float)+0x4c0>
  3c8b06: 447b         	add	r3, pc
  3c8b08: 4618         	mov	r0, r3
  3c8b0a: f70d eaa0    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2ac0
  3c8b0e: 9b08         	ldr	r3, [sp, #0x20]
  3c8b10: 466a         	mov	r2, sp
  3c8b12: f103 0120    	add.w	r1, r3, #0x20
  3c8b16: c903         	ldm	r1, {r0, r1}
  3c8b18: e882 0003    	stm.w	r2, {r0, r1}
  3c8b1c: 3318         	adds	r3, #0x18
  3c8b1e: cb0c         	ldm	r3, {r2, r3}
  3c8b20: 9805         	ldr	r0, [sp, #0x14]
  3c8b22: f7ff fb01    	bl	0x3c8128 <RakNetLocalServer::addClient(RakNet::RakNetGUID)> @ imm = #-0x9fe
  3c8b26: 9b05         	ldr	r3, [sp, #0x14]
  3c8b28: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c8b2c: 681b         	ldr	r3, [r3]
  3c8b2e: 33c4         	adds	r3, #0xc4
  3c8b30: 681e         	ldr	r6, [r3]
  3c8b32: 9b05         	ldr	r3, [sp, #0x14]
  3c8b34: f8d3 70e8    	ldr.w	r7, [r3, #0xe8]
  3c8b38: f10d 0e28    	add.w	lr, sp, #0x28
  3c8b3c: 9b08         	ldr	r3, [sp, #0x20]
  3c8b3e: 2200         	movs	r2, #0x0
  3c8b40: 9203         	str	r2, [sp, #0xc]
  3c8b42: 466d         	mov	r5, sp
  3c8b44: f103 0208    	add.w	r2, r3, #0x8
  3c8b48: ca07         	ldm	r2, {r0, r1, r2}
  3c8b4a: e885 0007    	stm.w	r5, {r0, r1, r2}
  3c8b4e: cb0c         	ldm	r3, {r2, r3}
  3c8b50: 4670         	mov	r0, lr
  3c8b52: 4639         	mov	r1, r7
  3c8b54: 47b0         	blx	r6
  3c8b56: ab0a         	add	r3, sp, #0x28
  3c8b58: 4618         	mov	r0, r3
  3c8b5a: 2101         	movs	r1, #0x1
  3c8b5c: 227c         	movs	r2, #0x7c
  3c8b5e: f0db fabd    	bl	0x4a40dc <RakNet::SystemAddress::ToString(bool, char) const> @ imm = #0xdb57a
  3c8b62: 4603         	mov	r3, r0
  3c8b64: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3c8c6c <RakNetLocalServer::updateServer(float)+0x4c4>
  3c8b66: 447a         	add	r2, pc
  3c8b68: 4610         	mov	r0, r2
  3c8b6a: 4619         	mov	r1, r3
  3c8b6c: f70d ea44    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf2b78
  3c8b70: e042         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x84
  3c8b72: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3c8c70 <RakNetLocalServer::updateServer(float)+0x4c8>
  3c8b74: 447b         	add	r3, pc
  3c8b76: 4618         	mov	r0, r3
  3c8b78: f70d ea68    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2b30
  3c8b7c: e03c         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x78
  3c8b7e: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3c8c74 <RakNetLocalServer::updateServer(float)+0x4cc>
  3c8b80: 447b         	add	r3, pc
  3c8b82: 4618         	mov	r0, r3
  3c8b84: f70d ea62    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2b3c
  3c8b88: 9b08         	ldr	r3, [sp, #0x20]
  3c8b8a: 2200         	movs	r2, #0x0
  3c8b8c: 9202         	str	r2, [sp, #0x8]
  3c8b8e: 466a         	mov	r2, sp
  3c8b90: f103 0120    	add.w	r1, r3, #0x20
  3c8b94: c903         	ldm	r1, {r0, r1}
  3c8b96: e882 0003    	stm.w	r2, {r0, r1}
  3c8b9a: 3318         	adds	r3, #0x18
  3c8b9c: cb0c         	ldm	r3, {r2, r3}
  3c8b9e: 9805         	ldr	r0, [sp, #0x14]
  3c8ba0: f7ff fb2e    	bl	0x3c8200 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)> @ imm = #-0x9a4
  3c8ba4: e028         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x50
  3c8ba6: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3c8c78 <RakNetLocalServer::updateServer(float)+0x4d0>
  3c8ba8: 447b         	add	r3, pc
  3c8baa: 4618         	mov	r0, r3
  3c8bac: f70d ea4e    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xf2b64
  3c8bb0: 9b08         	ldr	r3, [sp, #0x20]
  3c8bb2: 2201         	movs	r2, #0x1
  3c8bb4: 9202         	str	r2, [sp, #0x8]
  3c8bb6: 466a         	mov	r2, sp
  3c8bb8: f103 0120    	add.w	r1, r3, #0x20
  3c8bbc: c903         	ldm	r1, {r0, r1}
  3c8bbe: e882 0003    	stm.w	r2, {r0, r1}
  3c8bc2: 3318         	adds	r3, #0x18
  3c8bc4: cb0c         	ldm	r3, {r2, r3}
  3c8bc6: 9805         	ldr	r0, [sp, #0x14]
  3c8bc8: f7ff fb1a    	bl	0x3c8200 <RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool)> @ imm = #-0x9cc
  3c8bcc: e014         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x28
  3c8bce: 9805         	ldr	r0, [sp, #0x14]
  3c8bd0: 9908         	ldr	r1, [sp, #0x20]
  3c8bd2: f7ff fd65    	bl	0x3c86a0 <RakNetLocalServer::sendClientMessage(RakNet::Packet*)> @ imm = #-0x536
  3c8bd6: e00f         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x1e
  3c8bd8: 9805         	ldr	r0, [sp, #0x14]
  3c8bda: 9908         	ldr	r1, [sp, #0x20]
  3c8bdc: f7ff fc9c    	bl	0x3c8518 <RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*)> @ imm = #-0x6c8
  3c8be0: e00a         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x14
  3c8be2: 9b08         	ldr	r3, [sp, #0x20]
  3c8be4: 6b1b         	ldr	r3, [r3, #0x30]
  3c8be6: 781b         	ldrb	r3, [r3]
  3c8be8: 4a24         	ldr	r2, [pc, #0x90]         @ 0x3c8c7c <RakNetLocalServer::updateServer(float)+0x4d4>
  3c8bea: 447a         	add	r2, pc
  3c8bec: 4610         	mov	r0, r2
  3c8bee: 4619         	mov	r1, r3
  3c8bf0: f70d ea02    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf2bfc
  3c8bf4: e000         	b	0x3c8bf8 <RakNetLocalServer::updateServer(float)+0x450> @ imm = #0x0
  3c8bf6: bf00         	nop
  3c8bf8: 2000         	movs	r0, #0x0
  3c8bfa: f0ea f8f5    	bl	0x4b2de8 <RakSleep(unsigned int)> @ imm = #0xea1ea
  3c8bfe: 9b05         	ldr	r3, [sp, #0x14]
  3c8c00: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c8c04: 681b         	ldr	r3, [r3]
  3c8c06: 3368         	adds	r3, #0x68
  3c8c08: 681b         	ldr	r3, [r3]
  3c8c0a: 9a05         	ldr	r2, [sp, #0x14]
  3c8c0c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c8c10: 4610         	mov	r0, r2
  3c8c12: 9908         	ldr	r1, [sp, #0x20]
  3c8c14: 4798         	blx	r3
  3c8c16: 9b05         	ldr	r3, [sp, #0x14]
  3c8c18: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3c8c1c: 681b         	ldr	r3, [r3]
  3c8c1e: 3364         	adds	r3, #0x64
  3c8c20: 681b         	ldr	r3, [r3]
  3c8c22: 9a05         	ldr	r2, [sp, #0x14]
  3c8c24: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3c8c28: 4610         	mov	r0, r2
  3c8c2a: 4798         	blx	r3
  3c8c2c: 4603         	mov	r3, r0
  3c8c2e: 9308         	str	r3, [sp, #0x20]
  3c8c30: 9b08         	ldr	r3, [sp, #0x20]
  3c8c32: 2b00         	cmp	r3, #0x0
  3c8c34: f47f ae2e    	bne.w	0x3c8894 <RakNetLocalServer::updateServer(float)+0xec> @ imm = #-0x3a4
  3c8c38: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3c8c50 <RakNetLocalServer::updateServer(float)+0x4a8>
  3c8c3a: 58e3         	ldr	r3, [r4, r3]
  3c8c3c: 9a15         	ldr	r2, [sp, #0x54]
  3c8c3e: 681b         	ldr	r3, [r3]
  3c8c40: 429a         	cmp	r2, r3
  3c8c42: d001         	beq	0x3c8c48 <RakNetLocalServer::updateServer(float)+0x4a0> @ imm = #0x2
  3c8c44: f70d e990    	blx	0x2d5f68 <.plt+0x98>    @ imm = #-0xf2ce0
  3c8c48: b017         	add	sp, #0x5c
  3c8c4a: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3c8c4b); words below are literal-pool data ---
  3c8c4c: a254         	adr	r2, #336 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x24>
  3c8c4e: 0056         	lsls	r6, r2, #0x1
  3c8c50: d72c         	bvc	0x3c8cac <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x2c> @ imm = #0x58
  3c8c52: ffff d9ea    	<unknown>
  3c8c56: 0040         	lsls	r0, r0, #0x1
  3c8c58: d766         	bvc	0x3c8d28 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0xa8> @ imm = #0xcc
  3c8c5a: 0040         	lsls	r0, r0, #0x1
  3c8c5c: d78a         	bvc	0x3c8b74 <RakNetLocalServer::updateServer(float)+0x3cc> @ imm = #-0xec
  3c8c5e: 0040         	lsls	r0, r0, #0x1
  3c8c60: d7b6         	bvc	0x3c8bd0 <RakNetLocalServer::updateServer(float)+0x428> @ imm = #-0x94
  3c8c62: 0040         	lsls	r0, r0, #0x1
  3c8c64: d7d6         	bvc	0x3c8c14 <RakNetLocalServer::updateServer(float)+0x46c> @ imm = #-0x54
  3c8c66: 0040         	lsls	r0, r0, #0x1
  3c8c68: d802         	bhi	0x3c8c70 <RakNetLocalServer::updateServer(float)+0x4c8> @ imm = #0x4
  3c8c6a: 0040         	lsls	r0, r0, #0x1
  3c8c6c: d7ca         	bvc	0x3c8c04 <RakNetLocalServer::updateServer(float)+0x45c> @ imm = #-0x6c
  3c8c6e: 0040         	lsls	r0, r0, #0x1
  3c8c70: d7d8         	bvc	0x3c8c24 <RakNetLocalServer::updateServer(float)+0x47c> @ imm = #-0x50
  3c8c72: 0040         	lsls	r0, r0, #0x1
  3c8c74: d7f0         	bvc	0x3c8c58 <RakNetLocalServer::updateServer(float)+0x4b0> @ imm = #-0x20
  3c8c76: 0040         	lsls	r0, r0, #0x1
  3c8c78: d7f4         	bvc	0x3c8c64 <RakNetLocalServer::updateServer(float)+0x4bc> @ imm = #-0x18
  3c8c7a: 0040         	lsls	r0, r0, #0x1
  3c8c7c: d7de         	bvc	0x3c8c3c <RakNetLocalServer::updateServer(float)+0x494> @ imm = #-0x44
  3c8c7e: 0040         	lsls	r0, r0, #0x1

// ==== RakNetLocalServer::processMessage
//      file offset 0x3c8c80 (= ELF address; Ghidra 0x3d8c80), 432 bytes, Thumb-2
  3c8c80: b530         	push	{r4, r5, lr}
  3c8c82: b08d         	sub	sp, #0x34
  3c8c84: 9007         	str	r0, [sp, #0x1c]
  3c8c86: 9106         	str	r1, [sp, #0x18]
  3c8c88: 9205         	str	r2, [sp, #0x14]
  3c8c8a: f88d 3013    	strb.w	r3, [sp, #0x13]
  3c8c8e: 23ff         	movs	r3, #0xff
  3c8c90: f88d 3023    	strb.w	r3, [sp, #0x23]
  3c8c94: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  3c8c98: f083 0301    	eor	r3, r3, #0x1
  3c8c9c: b2db         	uxtb	r3, r3
  3c8c9e: 2b00         	cmp	r3, #0x0
  3c8ca0: d00e         	beq	0x3c8cc0 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x40> @ imm = #0x1c
  3c8ca2: 9b06         	ldr	r3, [sp, #0x18]
  3c8ca4: 6b1b         	ldr	r3, [r3, #0x30]
  3c8ca6: 3301         	adds	r3, #0x1
  3c8ca8: 781b         	ldrb	r3, [r3]
  3c8caa: f88d 3022    	strb.w	r3, [sp, #0x22]
  3c8cae: 9b06         	ldr	r3, [sp, #0x18]
  3c8cb0: 6b1b         	ldr	r3, [r3, #0x30]
  3c8cb2: 3302         	adds	r3, #0x2
  3c8cb4: 930a         	str	r3, [sp, #0x28]
  3c8cb6: 9b06         	ldr	r3, [sp, #0x18]
  3c8cb8: 6a9b         	ldr	r3, [r3, #0x28]
  3c8cba: 3b02         	subs	r3, #0x2
  3c8cbc: 930b         	str	r3, [sp, #0x2c]
  3c8cbe: e013         	b	0x3c8ce8 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x68> @ imm = #0x26
  3c8cc0: 9b06         	ldr	r3, [sp, #0x18]
  3c8cc2: 6b1b         	ldr	r3, [r3, #0x30]
  3c8cc4: 3301         	adds	r3, #0x1
  3c8cc6: 781b         	ldrb	r3, [r3]
  3c8cc8: f88d 3022    	strb.w	r3, [sp, #0x22]
  3c8ccc: 9b06         	ldr	r3, [sp, #0x18]
  3c8cce: 6b1b         	ldr	r3, [r3, #0x30]
  3c8cd0: 3303         	adds	r3, #0x3
  3c8cd2: 930a         	str	r3, [sp, #0x28]
  3c8cd4: 9b06         	ldr	r3, [sp, #0x18]
  3c8cd6: 6a9b         	ldr	r3, [r3, #0x28]
  3c8cd8: 3b03         	subs	r3, #0x3
  3c8cda: 930b         	str	r3, [sp, #0x2c]
  3c8cdc: 9b06         	ldr	r3, [sp, #0x18]
  3c8cde: 6b1b         	ldr	r3, [r3, #0x30]
  3c8ce0: 3302         	adds	r3, #0x2
  3c8ce2: 781b         	ldrb	r3, [r3]
  3c8ce4: f88d 3023    	strb.w	r3, [sp, #0x23]
  3c8ce8: f89d 3022    	ldrb.w	r3, [sp, #0x22]
  3c8cec: 3b04         	subs	r3, #0x4
  3c8cee: 2b27         	cmp	r3, #0x27
  3c8cf0: f200 8095    	bhi.w	0x3c8e1e <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x19e> @ imm = #0x12a
  3c8cf4: a102         	adr	r1, #8 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x7a>
  3c8cf6: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3c8cfa: 4411         	add	r1, r2
  3c8cfc: 4708         	bx	r1
  3c8cfe: bf00         	nop
  3c8d00: 011f         	lsls	r7, r3, #0x4
  3c8d02: 0000         	movs	r0, r0
  3c8d04: 00a1         	lsls	r1, r4, #0x2
  3c8d06: 0000         	movs	r0, r0
  3c8d08: 011f         	lsls	r7, r3, #0x4
  3c8d0a: 0000         	movs	r0, r0
  3c8d0c: 00bb         	lsls	r3, r7, #0x2
  3c8d0e: 0000         	movs	r0, r0
  3c8d10: 00e1         	lsls	r1, r4, #0x3
  3c8d12: 0000         	movs	r0, r0
  3c8d14: 011f         	lsls	r7, r3, #0x4
  3c8d16: 0000         	movs	r0, r0
  3c8d18: 011f         	lsls	r7, r3, #0x4
  3c8d1a: 0000         	movs	r0, r0
  3c8d1c: 011f         	lsls	r7, r3, #0x4
  3c8d1e: 0000         	movs	r0, r0
  3c8d20: 011f         	lsls	r7, r3, #0x4
  3c8d22: 0000         	movs	r0, r0
  3c8d24: 011f         	lsls	r7, r3, #0x4
  3c8d26: 0000         	movs	r0, r0
  3c8d28: 011f         	lsls	r7, r3, #0x4
  3c8d2a: 0000         	movs	r0, r0
  3c8d2c: 011f         	lsls	r7, r3, #0x4
  3c8d2e: 0000         	movs	r0, r0
  3c8d30: 011f         	lsls	r7, r3, #0x4
  3c8d32: 0000         	movs	r0, r0
  3c8d34: 011f         	lsls	r7, r3, #0x4
  3c8d36: 0000         	movs	r0, r0
  3c8d38: 011f         	lsls	r7, r3, #0x4
  3c8d3a: 0000         	movs	r0, r0
  3c8d3c: 011f         	lsls	r7, r3, #0x4
  3c8d3e: 0000         	movs	r0, r0
  3c8d40: 011f         	lsls	r7, r3, #0x4
  3c8d42: 0000         	movs	r0, r0
  3c8d44: 011f         	lsls	r7, r3, #0x4
  3c8d46: 0000         	movs	r0, r0
  3c8d48: 011f         	lsls	r7, r3, #0x4
  3c8d4a: 0000         	movs	r0, r0
  3c8d4c: 011f         	lsls	r7, r3, #0x4
  3c8d4e: 0000         	movs	r0, r0
  3c8d50: 011f         	lsls	r7, r3, #0x4
  3c8d52: 0000         	movs	r0, r0
  3c8d54: 011f         	lsls	r7, r3, #0x4
  3c8d56: 0000         	movs	r0, r0
  3c8d58: 011f         	lsls	r7, r3, #0x4
  3c8d5a: 0000         	movs	r0, r0
  3c8d5c: 011f         	lsls	r7, r3, #0x4
  3c8d5e: 0000         	movs	r0, r0
  3c8d60: 011f         	lsls	r7, r3, #0x4
  3c8d62: 0000         	movs	r0, r0
  3c8d64: 011f         	lsls	r7, r3, #0x4
  3c8d66: 0000         	movs	r0, r0
  3c8d68: 011f         	lsls	r7, r3, #0x4
  3c8d6a: 0000         	movs	r0, r0
  3c8d6c: 011f         	lsls	r7, r3, #0x4
  3c8d6e: 0000         	movs	r0, r0
  3c8d70: 011f         	lsls	r7, r3, #0x4
  3c8d72: 0000         	movs	r0, r0
  3c8d74: 011f         	lsls	r7, r3, #0x4
  3c8d76: 0000         	movs	r0, r0
  3c8d78: 011f         	lsls	r7, r3, #0x4
  3c8d7a: 0000         	movs	r0, r0
  3c8d7c: 011f         	lsls	r7, r3, #0x4
  3c8d7e: 0000         	movs	r0, r0
  3c8d80: 011f         	lsls	r7, r3, #0x4
  3c8d82: 0000         	movs	r0, r0
  3c8d84: 011f         	lsls	r7, r3, #0x4
  3c8d86: 0000         	movs	r0, r0
  3c8d88: 011f         	lsls	r7, r3, #0x4
  3c8d8a: 0000         	movs	r0, r0
  3c8d8c: 011f         	lsls	r7, r3, #0x4
  3c8d8e: 0000         	movs	r0, r0
  3c8d90: 011f         	lsls	r7, r3, #0x4
  3c8d92: 0000         	movs	r0, r0
  3c8d94: 011f         	lsls	r7, r3, #0x4
  3c8d96: 0000         	movs	r0, r0
  3c8d98: 011f         	lsls	r7, r3, #0x4
  3c8d9a: 0000         	movs	r0, r0
  3c8d9c: 011f         	lsls	r7, r3, #0x4
  3c8d9e: 0000         	movs	r0, r0
  3c8da0: 9b05         	ldr	r3, [sp, #0x14]
  3c8da2: 7c1b         	ldrb	r3, [r3, #0x10]
  3c8da4: 461a         	mov	r2, r3
  3c8da6: 9b0a         	ldr	r3, [sp, #0x28]
  3c8da8: 781b         	ldrb	r3, [r3]
  3c8daa: 491f         	ldr	r1, [pc, #0x7c]         @ 0x3c8e28 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x1a8>
  3c8dac: 4479         	add	r1, pc
  3c8dae: 4608         	mov	r0, r1
  3c8db0: 4611         	mov	r1, r2
  3c8db2: 461a         	mov	r2, r3
  3c8db4: f70d e920    	blx	0x2d5ff8 <.plt+0x128>   @ imm = #-0xf2dc0
  3c8db8: e032         	b	0x3c8e20 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x1a0> @ imm = #0x64
  3c8dba: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3c8e2c <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x1ac>
  3c8dbc: 447b         	add	r3, pc
  3c8dbe: 461a         	mov	r2, r3
  3c8dc0: ab09         	add	r3, sp, #0x24
  3c8dc2: 8812         	ldrh	r2, [r2]
  3c8dc4: 801a         	strh	r2, [r3]
  3c8dc6: ad09         	add	r5, sp, #0x24
  3c8dc8: 9b05         	ldr	r3, [sp, #0x14]
  3c8dca: 466c         	mov	r4, sp
  3c8dcc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c8dce: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c8dd2: 9807         	ldr	r0, [sp, #0x1c]
  3c8dd4: 4629         	mov	r1, r5
  3c8dd6: 2202         	movs	r2, #0x2
  3c8dd8: f7ff fa96    	bl	0x3c8308 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)> @ imm = #-0xad4
  3c8ddc: 2300         	movs	r3, #0x0
  3c8dde: e020         	b	0x3c8e22 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x1a2> @ imm = #0x40
  3c8de0: 2300         	movs	r3, #0x0
  3c8de2: 9309         	str	r3, [sp, #0x24]
  3c8de4: 2388         	movs	r3, #0x88
  3c8de6: f88d 3024    	strb.w	r3, [sp, #0x24]
  3c8dea: 2308         	movs	r3, #0x8
  3c8dec: f88d 3025    	strb.w	r3, [sp, #0x25]
  3c8df0: ac09         	add	r4, sp, #0x24
  3c8df2: 3402         	adds	r4, #0x2
  3c8df4: 9b07         	ldr	r3, [sp, #0x1c]
  3c8df6: 33f0         	adds	r3, #0xf0
  3c8df8: 4618         	mov	r0, r3
  3c8dfa: f000 f853    	bl	0x3c8ea4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const> @ imm = #0xa6
  3c8dfe: 4603         	mov	r3, r0
  3c8e00: b29b         	uxth	r3, r3
  3c8e02: 8023         	strh	r3, [r4]
  3c8e04: ad09         	add	r5, sp, #0x24
  3c8e06: 9b05         	ldr	r3, [sp, #0x14]
  3c8e08: 466c         	mov	r4, sp
  3c8e0a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3c8e0c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3c8e10: 9807         	ldr	r0, [sp, #0x1c]
  3c8e12: 4629         	mov	r1, r5
  3c8e14: 2204         	movs	r2, #0x4
  3c8e16: f7ff fa77    	bl	0x3c8308 <RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID)> @ imm = #-0xb12
  3c8e1a: 2300         	movs	r3, #0x0
  3c8e1c: e001         	b	0x3c8e22 <RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool)+0x1a2> @ imm = #0x2
  3c8e1e: bf00         	nop
  3c8e20: 2301         	movs	r3, #0x1
  3c8e22: 4618         	mov	r0, r3
  3c8e24: b00d         	add	sp, #0x34
  3c8e26: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3c8e27); words below are literal-pool data ---
  3c8e28: d644         	bvs	0x3c8eb4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Size() const+0x10> @ imm = #0x88
  3c8e2a: 0040         	lsls	r0, r0, #0x1
  3c8e2c: d658         	bvs	0x3c8ee0 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::Set(RakNet::RakNetGUID const&, FClientEntry* const&)+0x4> @ imm = #0xb0
  3c8e2e: 0040         	lsls	r0, r0, #0x1
