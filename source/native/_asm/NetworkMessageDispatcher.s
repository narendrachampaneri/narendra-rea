// NetworkMessageDispatcher: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 66 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../NetworkMessageDispatcher.cpp

// ==== NetworkMessageDispatcher::NetworkMessageDispatcher
//      file offset 0x381dec (= ELF address; Ghidra 0x391dec), 64 bytes, Thumb-2
  381dec: b510         	push	{r4, lr}
  381dee: b082         	sub	sp, #0x8
  381df0: 9001         	str	r0, [sp, #0x4]
  381df2: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x381e24 <NetworkMessageDispatcher::NetworkMessageDispatcher()+0x38>
  381df4: 447c         	add	r4, pc
  381df6: 9b01         	ldr	r3, [sp, #0x4]
  381df8: 4618         	mov	r0, r3
  381dfa: f215 ffb7    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x215f6e
  381dfe: 9b01         	ldr	r3, [sp, #0x4]
  381e00: 4a09         	ldr	r2, [pc, #0x24]         @ 0x381e28 <NetworkMessageDispatcher::NetworkMessageDispatcher()+0x3c>
  381e02: 58a2         	ldr	r2, [r4, r2]
  381e04: 3208         	adds	r2, #0x8
  381e06: 601a         	str	r2, [r3]
  381e08: 9801         	ldr	r0, [sp, #0x4]
  381e0a: f000 f80f    	bl	0x381e2c <NetworkMessageDispatcher::init()> @ imm = #0x1e
  381e0e: 9b01         	ldr	r3, [sp, #0x4]
  381e10: e005         	b	0x381e1e <NetworkMessageDispatcher::NetworkMessageDispatcher()+0x32> @ imm = #0xa
  381e12: 9b01         	ldr	r3, [sp, #0x4]
  381e14: 4618         	mov	r0, r3
  381e16: f215 ffdb    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x215fb6
  381e1a: f006 f147    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40628e
  381e1e: 4618         	mov	r0, r3
  381e20: b002         	add	sp, #0x8
  381e22: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x381e23); words below are literal-pool data ---
  381e24: 0c14         	lsrs	r4, r2, #0x10
  381e26: 005b         	lsls	r3, r3, #0x1
  381e28: dcd0         	bgt	0x381dcc <print_hex_memory(void*)> @ imm = #-0x60
  381e2a: ffff b500    	<unknown>

// ==== NetworkMessageDispatcher::init
//      file offset 0x381e2c (= ELF address; Ghidra 0x391e2c), 52 bytes, Thumb-2
  381e2c: b500         	push	{lr}
  381e2e: b083         	sub	sp, #0xc
  381e30: 9001         	str	r0, [sp, #0x4]
  381e32: f215 fabd    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x21557a
  381e36: 4602         	mov	r2, r0
  381e38: 9b01         	ldr	r3, [sp, #0x4]
  381e3a: 615a         	str	r2, [r3, #0x14]
  381e3c: 9b01         	ldr	r3, [sp, #0x4]
  381e3e: 695b         	ldr	r3, [r3, #0x14]
  381e40: 4618         	mov	r0, r3
  381e42: f216 f851    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2160a2
  381e46: 9b01         	ldr	r3, [sp, #0x4]
  381e48: f04f 0200    	mov.w	r2, #0x0
  381e4c: 61da         	str	r2, [r3, #0x1c]
  381e4e: 9b01         	ldr	r3, [sp, #0x4]
  381e50: f04f 0200    	mov.w	r2, #0x0
  381e54: 619a         	str	r2, [r3, #0x18]
  381e56: 2301         	movs	r3, #0x1
  381e58: 4618         	mov	r0, r3
  381e5a: b003         	add	sp, #0xc
  381e5c: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkMessageDispatcher::~NetworkMessageDispatcher
//      file offset 0x381e60 (= ELF address; Ghidra 0x391e60), 68 bytes, Thumb-2
  381e60: b500         	push	{lr}
  381e62: b083         	sub	sp, #0xc
  381e64: 9001         	str	r0, [sp, #0x4]
  381e66: 490d         	ldr	r1, [pc, #0x34]         @ 0x381e9c <NetworkMessageDispatcher::~NetworkMessageDispatcher()+0x3c>
  381e68: 4479         	add	r1, pc
  381e6a: 9b01         	ldr	r3, [sp, #0x4]
  381e6c: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x381ea0 <NetworkMessageDispatcher::~NetworkMessageDispatcher()+0x40>
  381e6e: 588a         	ldr	r2, [r1, r2]
  381e70: 3208         	adds	r2, #0x8
  381e72: 601a         	str	r2, [r3]
  381e74: 9b01         	ldr	r3, [sp, #0x4]
  381e76: 695b         	ldr	r3, [r3, #0x14]
  381e78: 4618         	mov	r0, r3
  381e7a: f216 f81d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x21603a
  381e7e: 9b01         	ldr	r3, [sp, #0x4]
  381e80: 4618         	mov	r0, r3
  381e82: f215 ffa5    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x215f4a
  381e86: 2300         	movs	r3, #0x0
  381e88: 2b00         	cmp	r3, #0x0
  381e8a: d002         	beq	0x381e92 <NetworkMessageDispatcher::~NetworkMessageDispatcher()+0x32> @ imm = #0x4
  381e8c: 9801         	ldr	r0, [sp, #0x4]
  381e8e: f006 f109    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x406212
  381e92: 9b01         	ldr	r3, [sp, #0x4]
  381e94: 4618         	mov	r0, r3
  381e96: b003         	add	sp, #0xc
  381e98: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x381e9b); words below are literal-pool data ---
  381e9c: 0ba0         	lsrs	r0, r4, #0xe
  381e9e: 005b         	lsls	r3, r3, #0x1
  381ea0: dcd0         	bgt	0x381e44 <NetworkMessageDispatcher::init()+0x18> @ imm = #-0x60
  381ea2: ffff b500    	<unknown>

// ==== NetworkMessageDispatcher::~NetworkMessageDispatcher
//      file offset 0x381ea4 (= ELF address; Ghidra 0x391ea4), 28 bytes, Thumb-2
  381ea4: b500         	push	{lr}
  381ea6: b083         	sub	sp, #0xc
  381ea8: 9001         	str	r0, [sp, #0x4]
  381eaa: 9801         	ldr	r0, [sp, #0x4]
  381eac: f7ff ffd8    	bl	0x381e60 <NetworkMessageDispatcher::~NetworkMessageDispatcher()> @ imm = #-0x50
  381eb0: 9801         	ldr	r0, [sp, #0x4]
  381eb2: f006 f0f7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4061ee
  381eb6: 9b01         	ldr	r3, [sp, #0x4]
  381eb8: 4618         	mov	r0, r3
  381eba: b003         	add	sp, #0xc
  381ebc: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkMessageDispatcher::updateNetworkObjects
//      file offset 0x381ec0 (= ELF address; Ghidra 0x391ec0), 2780 bytes, Thumb-2
  381ec0: b530         	push	{r4, r5, lr}
  381ec2: b0bb         	sub	sp, #0xec
  381ec4: 9005         	str	r0, [sp, #0x14]
  381ec6: 9104         	str	r1, [sp, #0x10]
  381ec8: 9203         	str	r2, [sp, #0xc]
  381eca: 2300         	movs	r3, #0x0
  381ecc: 932b         	str	r3, [sp, #0xac]
  381ece: f000 bc5c    	b.w	0x38278a <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8ca> @ imm = #0x8b8
  381ed2: 9b2b         	ldr	r3, [sp, #0xac]
  381ed4: 9804         	ldr	r0, [sp, #0x10]
  381ed6: 4619         	mov	r1, r3
  381ed8: f218 f922    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x218244
  381edc: 4603         	mov	r3, r0
  381ede: 932c         	str	r3, [sp, #0xb0]
  381ee0: 9b2c         	ldr	r3, [sp, #0xb0]
  381ee2: 2b00         	cmp	r3, #0x0
  381ee4: d00b         	beq	0x381efe <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x3e> @ imm = #0x16
  381ee6: 982c         	ldr	r0, [sp, #0xb0]
  381ee8: f0c2 fa2e    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc245c
  381eec: 4603         	mov	r3, r0
  381eee: 2b00         	cmp	r3, #0x0
  381ef0: d005         	beq	0x381efe <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x3e> @ imm = #0xa
  381ef2: 982c         	ldr	r0, [sp, #0xb0]
  381ef4: f0c2 fa20    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc2440
  381ef8: 4603         	mov	r3, r0
  381efa: 2b00         	cmp	r3, #0x0
  381efc: d101         	bne	0x381f02 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x42> @ imm = #0x2
  381efe: 2301         	movs	r3, #0x1
  381f00: e000         	b	0x381f04 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x44> @ imm = #0x0
  381f02: 2300         	movs	r3, #0x0
  381f04: 2b00         	cmp	r3, #0x0
  381f06: d001         	beq	0x381f0c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x4c> @ imm = #0x2
  381f08: f000 bd28    	b.w	0x38295c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa9c> @ imm = #0xa50
  381f0c: 9b2b         	ldr	r3, [sp, #0xac]
  381f0e: 9803         	ldr	r0, [sp, #0xc]
  381f10: 4619         	mov	r1, r3
  381f12: f218 f905    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21820a
  381f16: 4603         	mov	r3, r0
  381f18: 4618         	mov	r0, r3
  381f1a: f217 fd05    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x217a0a
  381f1e: 4604         	mov	r4, r0
  381f20: ab2a         	add	r3, sp, #0xa8
  381f22: 4618         	mov	r0, r3
  381f24: f008 f266    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4084cc
  381f28: aa09         	add	r2, sp, #0x24
  381f2a: ab2a         	add	r3, sp, #0xa8
  381f2c: 4610         	mov	r0, r2
  381f2e: 4621         	mov	r1, r4
  381f30: 461a         	mov	r2, r3
  381f32: f034 f595    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x434b2a
  381f36: ab2a         	add	r3, sp, #0xa8
  381f38: 4618         	mov	r0, r3
  381f3a: f008 f25f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4084be
  381f3e: 982c         	ldr	r0, [sp, #0xb0]
  381f40: f0c2 f9fa    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc23f4
  381f44: 4603         	mov	r3, r0
  381f46: 781b         	ldrb	r3, [r3]
  381f48: f88d 301b    	strb.w	r3, [sp, #0x1b]
  381f4c: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  381f50: 2b2f         	cmp	r3, #0x2f
  381f52: f200 8412    	bhi.w	0x38277a <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8ba> @ imm = #0x824
  381f56: a102         	adr	r1, #8 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x9c>
  381f58: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  381f5c: 4411         	add	r1, r2
  381f5e: 4708         	bx	r1
  381f60: 00c1         	lsls	r1, r0, #0x3
  381f62: 0000         	movs	r0, r0
  381f64: 00e9         	lsls	r1, r5, #0x3
  381f66: 0000         	movs	r0, r0
  381f68: 01c5         	lsls	r5, r0, #0x7
  381f6a: 0000         	movs	r0, r0
  381f6c: 081b         	lsrs	r3, r3, #0x20
  381f6e: 0000         	movs	r0, r0
  381f70: 081b         	lsrs	r3, r3, #0x20
  381f72: 0000         	movs	r0, r0
  381f74: 081b         	lsrs	r3, r3, #0x20
  381f76: 0000         	movs	r0, r0
  381f78: 0313         	lsls	r3, r2, #0xc
  381f7a: 0000         	movs	r0, r0
  381f7c: 04d5         	lsls	r5, r2, #0x13
  381f7e: 0000         	movs	r0, r0
  381f80: 0377         	lsls	r7, r6, #0xd
  381f82: 0000         	movs	r0, r0
  381f84: 040b         	lsls	r3, r1, #0x10
  381f86: 0000         	movs	r0, r0
  381f88: 03f3         	lsls	r3, r6, #0xf
  381f8a: 0000         	movs	r0, r0
  381f8c: 081b         	lsrs	r3, r3, #0x20
  381f8e: 0000         	movs	r0, r0
  381f90: 03ab         	lsls	r3, r5, #0xe
  381f92: 0000         	movs	r0, r0
  381f94: 03c3         	lsls	r3, r0, #0xf
  381f96: 0000         	movs	r0, r0
  381f98: 03db         	lsls	r3, r3, #0xf
  381f9a: 0000         	movs	r0, r0
  381f9c: 04dd         	lsls	r5, r3, #0x13
  381f9e: 0000         	movs	r0, r0
  381fa0: 04dd         	lsls	r5, r3, #0x13
  381fa2: 0000         	movs	r0, r0
  381fa4: 04dd         	lsls	r5, r3, #0x13
  381fa6: 0000         	movs	r0, r0
  381fa8: 04dd         	lsls	r5, r3, #0x13
  381faa: 0000         	movs	r0, r0
  381fac: 0501         	lsls	r1, r0, #0x14
  381fae: 0000         	movs	r0, r0
  381fb0: 0523         	lsls	r3, r4, #0x14
  381fb2: 0000         	movs	r0, r0
  381fb4: 0523         	lsls	r3, r4, #0x14
  381fb6: 0000         	movs	r0, r0
  381fb8: 0523         	lsls	r3, r4, #0x14
  381fba: 0000         	movs	r0, r0
  381fbc: 0547         	lsls	r7, r0, #0x15
  381fbe: 0000         	movs	r0, r0
  381fc0: 0569         	lsls	r1, r5, #0x15
  381fc2: 0000         	movs	r0, r0
  381fc4: 058b         	lsls	r3, r1, #0x16
  381fc6: 0000         	movs	r0, r0
  381fc8: 05ad         	lsls	r5, r5, #0x16
  381fca: 0000         	movs	r0, r0
  381fcc: 05cf         	lsls	r7, r1, #0x17
  381fce: 0000         	movs	r0, r0
  381fd0: 05f1         	lsls	r1, r6, #0x17
  381fd2: 0000         	movs	r0, r0
  381fd4: 0613         	lsls	r3, r2, #0x18
  381fd6: 0000         	movs	r0, r0
  381fd8: 0635         	lsls	r5, r6, #0x18
  381fda: 0000         	movs	r0, r0
  381fdc: 0657         	lsls	r7, r2, #0x19
  381fde: 0000         	movs	r0, r0
  381fe0: 0679         	lsls	r1, r7, #0x19
  381fe2: 0000         	movs	r0, r0
  381fe4: 069b         	lsls	r3, r3, #0x1a
  381fe6: 0000         	movs	r0, r0
  381fe8: 06bd         	lsls	r5, r7, #0x1a
  381fea: 0000         	movs	r0, r0
  381fec: 0701         	lsls	r1, r0, #0x1c
  381fee: 0000         	movs	r0, r0
  381ff0: 081b         	lsrs	r3, r3, #0x20
  381ff2: 0000         	movs	r0, r0
  381ff4: 0723         	lsls	r3, r4, #0x1c
  381ff6: 0000         	movs	r0, r0
  381ff8: 0745         	lsls	r5, r0, #0x1d
  381ffa: 0000         	movs	r0, r0
  381ffc: 07cd         	lsls	r5, r1, #0x1f
  381ffe: 0000         	movs	r0, r0
  382000: 0767         	lsls	r7, r4, #0x1d
  382002: 0000         	movs	r0, r0
  382004: 0789         	lsls	r1, r1, #0x1e
  382006: 0000         	movs	r0, r0
  382008: 07ab         	lsls	r3, r5, #0x1e
  38200a: 0000         	movs	r0, r0
  38200c: 07ef         	lsls	r7, r5, #0x1f
  38200e: 0000         	movs	r0, r0
  382010: 06df         	lsls	r7, r3, #0x1b
  382012: 0000         	movs	r0, r0
  382014: 0811         	lsrs	r1, r2, #0x20
  382016: 0000         	movs	r0, r0
  382018: 081b         	lsrs	r3, r3, #0x20
  38201a: 0000         	movs	r0, r0
  38201c: 014d         	lsls	r5, r1, #0x5
  38201e: 0000         	movs	r0, r0
  382020: f8df 393c    	ldr.w	r3, [pc, #0x93c]        @ 0x382960 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xaa0>
  382024: 447b         	add	r3, pc
  382026: 4618         	mov	r0, r3
  382028: f754 e810    	blx	0x2d604c <.plt+0x17c>   @ imm = #-0xabfe0
  38202c: f7f5 fd88    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa4f0
  382030: 4603         	mov	r3, r0
  382032: 4618         	mov	r0, r3
  382034: f7f8 fac2    	bl	0x37a5bc <NetworkManager::nextServerIndex()> @ imm = #-0x7a7c
  382038: f7f5 fd82    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa4fc
  38203c: 4603         	mov	r3, r0
  38203e: 4618         	mov	r0, r3
  382040: 2100         	movs	r1, #0x0
  382042: f7f8 fa33    	bl	0x37a4ac <NetworkManager::connectToServer(bool)> @ imm = #-0x7b9a
  382046: e399         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x732
  382048: 982c         	ldr	r0, [sp, #0xb0]
  38204a: f0c2 f975    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc22ea
  38204e: 4603         	mov	r3, r0
  382050: 785b         	ldrb	r3, [r3, #0x1]
  382052: f88d 301c    	strb.w	r3, [sp, #0x1c]
  382056: f89d 301c    	ldrb.w	r3, [sp, #0x1c]
  38205a: f8df 2908    	ldr.w	r2, [pc, #0x908]        @ 0x382964 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xaa4>
  38205e: 447a         	add	r2, pc
  382060: 4610         	mov	r0, r2
  382062: 4619         	mov	r1, r3
  382064: f217 fd54    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x217aa8
  382068: 4603         	mov	r3, r0
  38206a: 932d         	str	r3, [sp, #0xb4]
  38206c: f7f5 fd68    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa530
  382070: 4604         	mov	r4, r0
  382072: 982d         	ldr	r0, [sp, #0xb4]
  382074: f217 fc58    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2178b0
  382078: 4605         	mov	r5, r0
  38207a: ab2a         	add	r3, sp, #0xa8
  38207c: 4618         	mov	r0, r3
  38207e: f008 f1b9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x408372
  382082: aa0a         	add	r2, sp, #0x28
  382084: ab2a         	add	r3, sp, #0xa8
  382086: 4610         	mov	r0, r2
  382088: 4629         	mov	r1, r5
  38208a: 461a         	mov	r2, r3
  38208c: f034 f4e8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4349d0
  382090: ab0a         	add	r3, sp, #0x28
  382092: 4620         	mov	r0, r4
  382094: 4619         	mov	r1, r3
  382096: f7f7 feab    	bl	0x379df0 <NetworkManager::setHostPeerID(std::string)> @ imm = #-0x82aa
  38209a: ab0a         	add	r3, sp, #0x28
  38209c: 4618         	mov	r0, r3
  38209e: f033 f439    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433872
  3820a2: ab2a         	add	r3, sp, #0xa8
  3820a4: 4618         	mov	r0, r3
  3820a6: f008 f1a9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x408352
  3820aa: e367         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x6ce
  3820ac: 982c         	ldr	r0, [sp, #0xb0]
  3820ae: f0c2 f943    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc2286
  3820b2: 4603         	mov	r3, r0
  3820b4: 932e         	str	r3, [sp, #0xb8]
  3820b6: 9b2e         	ldr	r3, [sp, #0xb8]
  3820b8: 3301         	adds	r3, #0x1
  3820ba: 932e         	str	r3, [sp, #0xb8]
  3820bc: 9b2e         	ldr	r3, [sp, #0xb8]
  3820be: 781b         	ldrb	r3, [r3]
  3820c0: f88d 301d    	strb.w	r3, [sp, #0x1d]
  3820c4: 9b2e         	ldr	r3, [sp, #0xb8]
  3820c6: 3301         	adds	r3, #0x1
  3820c8: 932e         	str	r3, [sp, #0xb8]
  3820ca: 9b2e         	ldr	r3, [sp, #0xb8]
  3820cc: 681b         	ldr	r3, [r3]
  3820ce: 932f         	str	r3, [sp, #0xbc]
  3820d0: 9b2e         	ldr	r3, [sp, #0xb8]
  3820d2: 3304         	adds	r3, #0x4
  3820d4: 932e         	str	r3, [sp, #0xb8]
  3820d6: f89d 301d    	ldrb.w	r3, [sp, #0x1d]
  3820da: f8df 288c    	ldr.w	r2, [pc, #0x88c]        @ 0x382968 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xaa8>
  3820de: 447a         	add	r2, pc
  3820e0: 4610         	mov	r0, r2
  3820e2: 4619         	mov	r1, r3
  3820e4: f217 fd14    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x217a28
  3820e8: 4603         	mov	r3, r0
  3820ea: 9330         	str	r3, [sp, #0xc0]
  3820ec: f8df 387c    	ldr.w	r3, [pc, #0x87c]        @ 0x38296c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xaac>
  3820f0: 447b         	add	r3, pc
  3820f2: 4618         	mov	r0, r3
  3820f4: 992f         	ldr	r1, [sp, #0xbc]
  3820f6: f217 fd0b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x217a16
  3820fa: 4603         	mov	r3, r0
  3820fc: 9331         	str	r3, [sp, #0xc4]
  3820fe: 9830         	ldr	r0, [sp, #0xc0]
  382100: 9931         	ldr	r1, [sp, #0xc4]
  382102: 2200         	movs	r2, #0x0
  382104: f217 fe84    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x217d08
  382108: 4603         	mov	r3, r0
  38210a: 9332         	str	r3, [sp, #0xc8]
  38210c: f25e fad0    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25e5a0
  382110: 4603         	mov	r3, r0
  382112: 4618         	mov	r0, r3
  382114: f8df 3858    	ldr.w	r3, [pc, #0x858]        @ 0x382970 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xab0>
  382118: 447b         	add	r3, pc
  38211a: 4619         	mov	r1, r3
  38211c: 9a32         	ldr	r2, [sp, #0xc8]
  38211e: f25e fd05    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25ea0a
  382122: e32b         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x656
  382124: 982c         	ldr	r0, [sp, #0xb0]
  382126: f0c2 f907    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc220e
  38212a: 4603         	mov	r3, r0
  38212c: 9333         	str	r3, [sp, #0xcc]
  38212e: 9b33         	ldr	r3, [sp, #0xcc]
  382130: 785b         	ldrb	r3, [r3, #0x1]
  382132: f88d 301e    	strb.w	r3, [sp, #0x1e]
  382136: 9b33         	ldr	r3, [sp, #0xcc]
  382138: 789b         	ldrb	r3, [r3, #0x2]
  38213a: f88d 301f    	strb.w	r3, [sp, #0x1f]
  38213e: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  382142: 2b00         	cmp	r3, #0x0
  382144: d052         	beq	0x3821ec <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x32c> @ imm = #0xa4
  382146: 982c         	ldr	r0, [sp, #0xb0]
  382148: f0c2 f8f6    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc21ec
  38214c: 4603         	mov	r3, r0
  38214e: 78db         	ldrb	r3, [r3, #0x3]
  382150: f88d 3020    	strb.w	r3, [sp, #0x20]
  382154: 982c         	ldr	r0, [sp, #0xb0]
  382156: f0c2 f8ef    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc21de
  38215a: 4603         	mov	r3, r0
  38215c: 3304         	adds	r3, #0x4
  38215e: 9334         	str	r3, [sp, #0xd0]
  382160: 9834         	ldr	r0, [sp, #0xd0]
  382162: f753 eeea    	blx	0x2d5f38 <.plt+0x68>    @ imm = #-0xac22c
  382166: 4603         	mov	r3, r0
  382168: 9335         	str	r3, [sp, #0xd4]
  38216a: 982c         	ldr	r0, [sp, #0xb0]
  38216c: f0c2 f8e4    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc21c8
  382170: 4602         	mov	r2, r0
  382172: 9b35         	ldr	r3, [sp, #0xd4]
  382174: 3305         	adds	r3, #0x5
  382176: 4413         	add	r3, r2
  382178: 9336         	str	r3, [sp, #0xd8]
  38217a: f7f5 fce1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa63e
  38217e: 4604         	mov	r4, r0
  382180: ab29         	add	r3, sp, #0xa4
  382182: 4618         	mov	r0, r3
  382184: f008 f136    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40826c
  382188: aa0b         	add	r2, sp, #0x2c
  38218a: ab29         	add	r3, sp, #0xa4
  38218c: 4610         	mov	r0, r2
  38218e: 9934         	ldr	r1, [sp, #0xd0]
  382190: 461a         	mov	r2, r3
  382192: f034 f465    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4348ca
  382196: ab2a         	add	r3, sp, #0xa8
  382198: 4618         	mov	r0, r3
  38219a: f008 f12b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x408256
  38219e: aa0c         	add	r2, sp, #0x30
  3821a0: ab2a         	add	r3, sp, #0xa8
  3821a2: 4610         	mov	r0, r2
  3821a4: 9936         	ldr	r1, [sp, #0xd8]
  3821a6: 461a         	mov	r2, r3
  3821a8: f034 f45a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4348b4
  3821ac: f89d 301e    	ldrb.w	r3, [sp, #0x1e]
  3821b0: f89d 2020    	ldrb.w	r2, [sp, #0x20]
  3821b4: 2a00         	cmp	r2, #0x0
  3821b6: bf0c         	ite	eq
  3821b8: 2200         	moveq	r2, #0x0
  3821ba: 2201         	movne	r2, #0x1
  3821bc: b2d0         	uxtb	r0, r2
  3821be: a90b         	add	r1, sp, #0x2c
  3821c0: aa0c         	add	r2, sp, #0x30
  3821c2: 9000         	str	r0, [sp]
  3821c4: 4620         	mov	r0, r4
  3821c6: f7f8 f9c1    	bl	0x37a54c <NetworkManager::connectToPeer(std::string, std::string, int, bool)> @ imm = #-0x7c7e
  3821ca: ab0c         	add	r3, sp, #0x30
  3821cc: 4618         	mov	r0, r3
  3821ce: f033 f3a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433742
  3821d2: ab2a         	add	r3, sp, #0xa8
  3821d4: 4618         	mov	r0, r3
  3821d6: f008 f111    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x408222
  3821da: ab0b         	add	r3, sp, #0x2c
  3821dc: 4618         	mov	r0, r3
  3821de: f033 f399    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433732
  3821e2: ab29         	add	r3, sp, #0xa4
  3821e4: 4618         	mov	r0, r3
  3821e6: f008 f109    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x408212
  3821ea: e2c7         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x58e
  3821ec: f89d 301e    	ldrb.w	r3, [sp, #0x1e]
  3821f0: f8df 2780    	ldr.w	r2, [pc, #0x780]        @ 0x382974 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xab4>
  3821f4: 447a         	add	r2, pc
  3821f6: 4610         	mov	r0, r2
  3821f8: 4619         	mov	r1, r3
  3821fa: f217 fc89    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x217912
  3821fe: 4603         	mov	r3, r0
  382200: 9337         	str	r3, [sp, #0xdc]
  382202: f7f5 fc9d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa6c6
  382206: 4604         	mov	r4, r0
  382208: 9837         	ldr	r0, [sp, #0xdc]
  38220a: f217 fb8d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21771a
  38220e: 4605         	mov	r5, r0
  382210: ab29         	add	r3, sp, #0xa4
  382212: 4618         	mov	r0, r3
  382214: f008 f0ee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4081dc
  382218: aa0d         	add	r2, sp, #0x34
  38221a: ab29         	add	r3, sp, #0xa4
  38221c: 4610         	mov	r0, r2
  38221e: 4629         	mov	r1, r5
  382220: 461a         	mov	r2, r3
  382222: f034 f41d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43483a
  382226: ab2a         	add	r3, sp, #0xa8
  382228: 4618         	mov	r0, r3
  38222a: f008 f0e3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4081c6
  38222e: aa0e         	add	r2, sp, #0x38
  382230: ab2a         	add	r3, sp, #0xa8
  382232: 4610         	mov	r0, r2
  382234: f8df 2740    	ldr.w	r2, [pc, #0x740]        @ 0x382978 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xab8>
  382238: 447a         	add	r2, pc
  38223a: 4611         	mov	r1, r2
  38223c: 461a         	mov	r2, r3
  38223e: f034 f40f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43481e
  382242: aa0d         	add	r2, sp, #0x34
  382244: ab0e         	add	r3, sp, #0x38
  382246: 4620         	mov	r0, r4
  382248: 4611         	mov	r1, r2
  38224a: 461a         	mov	r2, r3
  38224c: f7f8 f872    	bl	0x37a334 <NetworkManager::addPlayer(std::string, std::string)> @ imm = #-0x7f1c
  382250: ab0e         	add	r3, sp, #0x38
  382252: 4618         	mov	r0, r3
  382254: f033 f35e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4336bc
  382258: ab2a         	add	r3, sp, #0xa8
  38225a: 4618         	mov	r0, r3
  38225c: f008 f0ce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40819c
  382260: ab0d         	add	r3, sp, #0x34
  382262: 4618         	mov	r0, r3
  382264: f033 f356    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4336ac
  382268: ab29         	add	r3, sp, #0xa4
  38226a: 4618         	mov	r0, r3
  38226c: f008 f0c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40818c
  382270: e284         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x508
  382272: 982c         	ldr	r0, [sp, #0xb0]
  382274: f0c2 f860    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc20c0
  382278: 4603         	mov	r3, r0
  38227a: 785b         	ldrb	r3, [r3, #0x1]
  38227c: f88d 3021    	strb.w	r3, [sp, #0x21]
  382280: f89d 3021    	ldrb.w	r3, [sp, #0x21]
  382284: f8df 26f4    	ldr.w	r2, [pc, #0x6f4]        @ 0x38297c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xabc>
  382288: 447a         	add	r2, pc
  38228a: 4610         	mov	r0, r2
  38228c: 4619         	mov	r1, r3
  38228e: f217 fc3f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x21787e
  382292: 4603         	mov	r3, r0
  382294: 9338         	str	r3, [sp, #0xe0]
  382296: f7f5 fc53    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa75a
  38229a: 4604         	mov	r4, r0
  38229c: 9838         	ldr	r0, [sp, #0xe0]
  38229e: f217 fb43    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x217686
  3822a2: 4605         	mov	r5, r0
  3822a4: ab2a         	add	r3, sp, #0xa8
  3822a6: 4618         	mov	r0, r3
  3822a8: f008 f0a4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x408148
  3822ac: aa0f         	add	r2, sp, #0x3c
  3822ae: ab2a         	add	r3, sp, #0xa8
  3822b0: 4610         	mov	r0, r2
  3822b2: 4629         	mov	r1, r5
  3822b4: 461a         	mov	r2, r3
  3822b6: f034 f3d3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4347a6
  3822ba: ab0f         	add	r3, sp, #0x3c
  3822bc: 4620         	mov	r0, r4
  3822be: 4619         	mov	r1, r3
  3822c0: f7f8 f892    	bl	0x37a3e8 <NetworkManager::removePlayer(std::string)> @ imm = #-0x7edc
  3822c4: ab0f         	add	r3, sp, #0x3c
  3822c6: 4618         	mov	r0, r3
  3822c8: f033 f324    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433648
  3822cc: ab2a         	add	r3, sp, #0xa8
  3822ce: 4618         	mov	r0, r3
  3822d0: f008 f094    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x408128
  3822d4: e252         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x4a4
  3822d6: 982c         	ldr	r0, [sp, #0xb0]
  3822d8: f0c2 f82e    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc205c
  3822dc: 4603         	mov	r3, r0
  3822de: f8b3 3001    	ldrh.w	r3, [r3, #0x1]
  3822e2: f8ad 3022    	strh.w	r3, [sp, #0x22]
  3822e6: f25e f9e3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25e3c6
  3822ea: 4604         	mov	r4, r0
  3822ec: f9bd 3022    	ldrsh.w	r3, [sp, #0x22]
  3822f0: 4618         	mov	r0, r3
  3822f2: f762 fd09    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9d5ee
  3822f6: 4603         	mov	r3, r0
  3822f8: 4620         	mov	r0, r4
  3822fa: f8df 2684    	ldr.w	r2, [pc, #0x684]        @ 0x382980 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xac0>
  3822fe: 447a         	add	r2, pc
  382300: 4611         	mov	r1, r2
  382302: 461a         	mov	r2, r3
  382304: f25e fc12    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25e824
  382308: e238         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x470
  38230a: f25e f9d1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25e3a2
  38230e: 4603         	mov	r3, r0
  382310: 4618         	mov	r0, r3
  382312: f8df 3670    	ldr.w	r3, [pc, #0x670]        @ 0x382984 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xac4>
  382316: 447b         	add	r3, pc
  382318: 4619         	mov	r1, r3
  38231a: 2200         	movs	r2, #0x0
  38231c: f25e fc06    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25e80c
  382320: e22c         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x458
  382322: f25e f9c5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25e38a
  382326: 4603         	mov	r3, r0
  382328: 4618         	mov	r0, r3
  38232a: f8df 365c    	ldr.w	r3, [pc, #0x65c]        @ 0x382988 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xac8>
  38232e: 447b         	add	r3, pc
  382330: 4619         	mov	r1, r3
  382332: 2200         	movs	r2, #0x0
  382334: f25e fbfa    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25e7f4
  382338: e220         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x440
  38233a: f25e f9b9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25e372
  38233e: 4603         	mov	r3, r0
  382340: 4618         	mov	r0, r3
  382342: f8df 3648    	ldr.w	r3, [pc, #0x648]        @ 0x38298c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xacc>
  382346: 447b         	add	r3, pc
  382348: 4619         	mov	r1, r3
  38234a: 2200         	movs	r2, #0x0
  38234c: f25e fbee    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25e7dc
  382350: e214         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x428
  382352: f25e f9ad    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25e35a
  382356: 4603         	mov	r3, r0
  382358: 4618         	mov	r0, r3
  38235a: f8df 3634    	ldr.w	r3, [pc, #0x634]        @ 0x382990 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xad0>
  38235e: 447b         	add	r3, pc
  382360: 4619         	mov	r1, r3
  382362: 2200         	movs	r2, #0x0
  382364: f25e fbe2    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25e7c4
  382368: e208         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x410
  38236a: 982c         	ldr	r0, [sp, #0xb0]
  38236c: f0c1 ffe4    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc1fc8
  382370: 4604         	mov	r4, r0
  382372: 982c         	ldr	r0, [sp, #0xb0]
  382374: f0c1 ffe8    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc1fd0
  382378: 4603         	mov	r3, r0
  38237a: 4620         	mov	r0, r4
  38237c: 4619         	mov	r1, r3
  38237e: f217 fb79    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x2176f2
  382382: 4603         	mov	r3, r0
  382384: 9339         	str	r3, [sp, #0xe4]
  382386: ab29         	add	r3, sp, #0xa4
  382388: 4618         	mov	r0, r3
  38238a: f008 f033    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x408066
  38238e: aa11         	add	r2, sp, #0x44
  382390: ab29         	add	r3, sp, #0xa4
  382392: 4610         	mov	r0, r2
  382394: f8df 25fc    	ldr.w	r2, [pc, #0x5fc]        @ 0x382994 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xad4>
  382398: 447a         	add	r2, pc
  38239a: 4611         	mov	r1, r2
  38239c: 461a         	mov	r2, r3
  38239e: f034 f35f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4346be
  3823a2: 9839         	ldr	r0, [sp, #0xe4]
  3823a4: f217 fac0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x217580
  3823a8: 4604         	mov	r4, r0
  3823aa: ab2a         	add	r3, sp, #0xa8
  3823ac: 4618         	mov	r0, r3
  3823ae: f008 f021    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x408042
  3823b2: aa12         	add	r2, sp, #0x48
  3823b4: ab2a         	add	r3, sp, #0xa8
  3823b6: 4610         	mov	r0, r2
  3823b8: 4621         	mov	r1, r4
  3823ba: 461a         	mov	r2, r3
  3823bc: f034 f350    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4346a0
  3823c0: ab28         	add	r3, sp, #0xa0
  3823c2: 4618         	mov	r0, r3
  3823c4: f008 f016    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40802c
  3823c8: aa10         	add	r2, sp, #0x40
  3823ca: ab28         	add	r3, sp, #0xa0
  3823cc: 4610         	mov	r0, r2
  3823ce: f8df 25c8    	ldr.w	r2, [pc, #0x5c8]        @ 0x382998 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xad8>
  3823d2: 447a         	add	r2, pc
  3823d4: 4611         	mov	r1, r2
  3823d6: 461a         	mov	r2, r3
  3823d8: f034 f342    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x434684
  3823dc: ab10         	add	r3, sp, #0x40
  3823de: 4618         	mov	r0, r3
  3823e0: f217 fb2c    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x217658
  3823e4: 4603         	mov	r3, r0
  3823e6: 4618         	mov	r0, r3
  3823e8: 2100         	movs	r1, #0x0
  3823ea: f217 fd11    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x217a22
  3823ee: 4603         	mov	r3, r0
  3823f0: a911         	add	r1, sp, #0x44
  3823f2: aa12         	add	r2, sp, #0x48
  3823f4: 2000         	movs	r0, #0x0
  3823f6: 9000         	str	r0, [sp]
  3823f8: 2000         	movs	r0, #0x0
  3823fa: 9001         	str	r0, [sp, #0x4]
  3823fc: 2000         	movs	r0, #0x0
  3823fe: f75d f9f9    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xa2c0e
  382402: ab10         	add	r3, sp, #0x40
  382404: 4618         	mov	r0, r3
  382406: f033 f285    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43350a
  38240a: ab28         	add	r3, sp, #0xa0
  38240c: 4618         	mov	r0, r3
  38240e: f007 f7f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407fea
  382412: ab12         	add	r3, sp, #0x48
  382414: 4618         	mov	r0, r3
  382416: f033 f27d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4334fa
  38241a: ab2a         	add	r3, sp, #0xa8
  38241c: 4618         	mov	r0, r3
  38241e: f007 f7ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407fda
  382422: ab11         	add	r3, sp, #0x44
  382424: 4618         	mov	r0, r3
  382426: f033 f275    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4334ea
  38242a: ab29         	add	r3, sp, #0xa4
  38242c: 4618         	mov	r0, r3
  38242e: f007 f7e5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407fca
  382432: e1a3         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x346
  382434: 9805         	ldr	r0, [sp, #0x14]
  382436: f003 fc0b    	bl	0x385c50 <NetworkMessageDispatcher::updateServerPingTime()> @ imm = #0x3816
  38243a: e19f         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x33e
  38243c: aa13         	add	r2, sp, #0x4c
  38243e: ab09         	add	r3, sp, #0x24
  382440: 4610         	mov	r0, r2
  382442: 4619         	mov	r1, r3
  382444: f034 f050    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4340a0
  382448: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  38244c: aa13         	add	r2, sp, #0x4c
  38244e: 9805         	ldr	r0, [sp, #0x14]
  382450: 992c         	ldr	r1, [sp, #0xb0]
  382452: f000 fcd1    	bl	0x382df8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)> @ imm = #0x9a2
  382456: ab13         	add	r3, sp, #0x4c
  382458: 4618         	mov	r0, r3
  38245a: f033 f25b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4334b6
  38245e: e18d         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x31a
  382460: aa14         	add	r2, sp, #0x50
  382462: ab09         	add	r3, sp, #0x24
  382464: 4610         	mov	r0, r2
  382466: 4619         	mov	r1, r3
  382468: f034 f03e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43407c
  38246c: ab14         	add	r3, sp, #0x50
  38246e: 9805         	ldr	r0, [sp, #0x14]
  382470: 992c         	ldr	r1, [sp, #0xb0]
  382472: 461a         	mov	r2, r3
  382474: f001 fd12    	bl	0x383e9c <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)> @ imm = #0x1a24
  382478: ab14         	add	r3, sp, #0x50
  38247a: 4618         	mov	r0, r3
  38247c: f033 f24a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433494
  382480: e17c         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x2f8
  382482: aa15         	add	r2, sp, #0x54
  382484: ab09         	add	r3, sp, #0x24
  382486: 4610         	mov	r0, r2
  382488: 4619         	mov	r1, r3
  38248a: f034 f02d    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43405a
  38248e: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  382492: aa15         	add	r2, sp, #0x54
  382494: 9805         	ldr	r0, [sp, #0x14]
  382496: 992c         	ldr	r1, [sp, #0xb0]
  382498: f001 f81a    	bl	0x3834d0 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)> @ imm = #0x1034
  38249c: ab15         	add	r3, sp, #0x54
  38249e: 4618         	mov	r0, r3
  3824a0: f033 f238    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433470
  3824a4: e16a         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x2d4
  3824a6: aa16         	add	r2, sp, #0x58
  3824a8: ab09         	add	r3, sp, #0x24
  3824aa: 4610         	mov	r0, r2
  3824ac: 4619         	mov	r1, r3
  3824ae: f034 f01b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x434036
  3824b2: ab16         	add	r3, sp, #0x58
  3824b4: 9805         	ldr	r0, [sp, #0x14]
  3824b6: 992c         	ldr	r1, [sp, #0xb0]
  3824b8: 461a         	mov	r2, r3
  3824ba: f001 ffcd    	bl	0x384458 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)> @ imm = #0x1f9a
  3824be: ab16         	add	r3, sp, #0x58
  3824c0: 4618         	mov	r0, r3
  3824c2: f033 f227    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43344e
  3824c6: e159         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x2b2
  3824c8: aa17         	add	r2, sp, #0x5c
  3824ca: ab09         	add	r3, sp, #0x24
  3824cc: 4610         	mov	r0, r2
  3824ce: 4619         	mov	r1, r3
  3824d0: f034 f00a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x434014
  3824d4: ab17         	add	r3, sp, #0x5c
  3824d6: 9805         	ldr	r0, [sp, #0x14]
  3824d8: 992c         	ldr	r1, [sp, #0xb0]
  3824da: 461a         	mov	r2, r3
  3824dc: f003 f8d6    	bl	0x38568c <NetworkMessageDispatcher::peerExplosionCreate(cocos2d::extension::CCData*, std::string)> @ imm = #0x31ac
  3824e0: ab17         	add	r3, sp, #0x5c
  3824e2: 4618         	mov	r0, r3
  3824e4: f033 f216    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43342c
  3824e8: e148         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x290
  3824ea: aa18         	add	r2, sp, #0x60
  3824ec: ab09         	add	r3, sp, #0x24
  3824ee: 4610         	mov	r0, r2
  3824f0: 4619         	mov	r1, r3
  3824f2: f033 f7f9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433ff2
  3824f6: ab18         	add	r3, sp, #0x60
  3824f8: 9805         	ldr	r0, [sp, #0x14]
  3824fa: 992c         	ldr	r1, [sp, #0xb0]
  3824fc: 461a         	mov	r2, r3
  3824fe: f001 f947    	bl	0x383790 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)> @ imm = #0x128e
  382502: ab18         	add	r3, sp, #0x60
  382504: 4618         	mov	r0, r3
  382506: f033 f205    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43340a
  38250a: e137         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x26e
  38250c: aa19         	add	r2, sp, #0x64
  38250e: ab09         	add	r3, sp, #0x24
  382510: 4610         	mov	r0, r2
  382512: 4619         	mov	r1, r3
  382514: f033 f7e8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433fd0
  382518: ab19         	add	r3, sp, #0x64
  38251a: 9805         	ldr	r0, [sp, #0x14]
  38251c: 992c         	ldr	r1, [sp, #0xb0]
  38251e: 461a         	mov	r2, r3
  382520: f001 fa68    	bl	0x3839f4 <NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string)> @ imm = #0x14d0
  382524: ab19         	add	r3, sp, #0x64
  382526: 4618         	mov	r0, r3
  382528: f033 f1f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4333e8
  38252c: e126         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x24c
  38252e: aa1a         	add	r2, sp, #0x68
  382530: ab09         	add	r3, sp, #0x24
  382532: 4610         	mov	r0, r2
  382534: 4619         	mov	r1, r3
  382536: f033 f7d7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433fae
  38253a: ab1a         	add	r3, sp, #0x68
  38253c: 9805         	ldr	r0, [sp, #0x14]
  38253e: 992c         	ldr	r1, [sp, #0xb0]
  382540: 461a         	mov	r2, r3
  382542: f001 fb75    	bl	0x383c30 <NetworkMessageDispatcher::updatePeerWeaponRemove(cocos2d::extension::CCData*, std::string)> @ imm = #0x16ea
  382546: ab1a         	add	r3, sp, #0x68
  382548: 4618         	mov	r0, r3
  38254a: f033 f1e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4333c6
  38254e: e115         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x22a
  382550: aa1b         	add	r2, sp, #0x6c
  382552: ab09         	add	r3, sp, #0x24
  382554: 4610         	mov	r0, r2
  382556: 4619         	mov	r1, r3
  382558: f033 f7c6    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433f8c
  38255c: ab1b         	add	r3, sp, #0x6c
  38255e: 9805         	ldr	r0, [sp, #0x14]
  382560: 992c         	ldr	r1, [sp, #0xb0]
  382562: 461a         	mov	r2, r3
  382564: f002 fe6e    	bl	0x385244 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)> @ imm = #0x2cdc
  382568: ab1b         	add	r3, sp, #0x6c
  38256a: 4618         	mov	r0, r3
  38256c: f033 f1d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4333a4
  382570: e104         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x208
  382572: aa1c         	add	r2, sp, #0x70
  382574: ab09         	add	r3, sp, #0x24
  382576: 4610         	mov	r0, r2
  382578: 4619         	mov	r1, r3
  38257a: f033 f7b5    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433f6a
  38257e: ab1c         	add	r3, sp, #0x70
  382580: 9805         	ldr	r0, [sp, #0x14]
  382582: 992c         	ldr	r1, [sp, #0xb0]
  382584: 461a         	mov	r2, r3
  382586: f002 ff5d    	bl	0x385444 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)> @ imm = #0x2eba
  38258a: ab1c         	add	r3, sp, #0x70
  38258c: 4618         	mov	r0, r3
  38258e: f033 f1c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433382
  382592: e0f3         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x1e6
  382594: aa1d         	add	r2, sp, #0x74
  382596: ab09         	add	r3, sp, #0x24
  382598: 4610         	mov	r0, r2
  38259a: 4619         	mov	r1, r3
  38259c: f033 f7a4    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433f48
  3825a0: ab1d         	add	r3, sp, #0x74
  3825a2: 9805         	ldr	r0, [sp, #0x14]
  3825a4: 992c         	ldr	r1, [sp, #0xb0]
  3825a6: 461a         	mov	r2, r3
  3825a8: f003 fa16    	bl	0x3859d8 <NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string)> @ imm = #0x342c
  3825ac: ab1d         	add	r3, sp, #0x74
  3825ae: 4618         	mov	r0, r3
  3825b0: f033 f1b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433360
  3825b4: e0e2         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x1c4
  3825b6: aa1e         	add	r2, sp, #0x78
  3825b8: ab09         	add	r3, sp, #0x24
  3825ba: 4610         	mov	r0, r2
  3825bc: 4619         	mov	r1, r3
  3825be: f033 f793    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433f26
  3825c2: ab1e         	add	r3, sp, #0x78
  3825c4: 9805         	ldr	r0, [sp, #0x14]
  3825c6: 992c         	ldr	r1, [sp, #0xb0]
  3825c8: 461a         	mov	r2, r3
  3825ca: f003 fa3d    	bl	0x385a48 <NetworkMessageDispatcher::updatePeerThrow(cocos2d::extension::CCData*, std::string)> @ imm = #0x347a
  3825ce: ab1e         	add	r3, sp, #0x78
  3825d0: 4618         	mov	r0, r3
  3825d2: f033 f19f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43333e
  3825d6: e0d1         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x1a2
  3825d8: aa1f         	add	r2, sp, #0x7c
  3825da: ab09         	add	r3, sp, #0x24
  3825dc: 4610         	mov	r0, r2
  3825de: 4619         	mov	r1, r3
  3825e0: f033 f782    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433f04
  3825e4: ab1f         	add	r3, sp, #0x7c
  3825e6: 9805         	ldr	r0, [sp, #0x14]
  3825e8: 992c         	ldr	r1, [sp, #0xb0]
  3825ea: 461a         	mov	r2, r3
  3825ec: f003 f93e    	bl	0x38586c <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)> @ imm = #0x327c
  3825f0: ab1f         	add	r3, sp, #0x7c
  3825f2: 4618         	mov	r0, r3
  3825f4: f033 f18e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43331c
  3825f8: e0c0         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x180
  3825fa: aa20         	add	r2, sp, #0x80
  3825fc: ab09         	add	r3, sp, #0x24
  3825fe: 4610         	mov	r0, r2
  382600: 4619         	mov	r1, r3
  382602: f033 f771    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433ee2
  382606: ab20         	add	r3, sp, #0x80
  382608: 9805         	ldr	r0, [sp, #0x14]
  38260a: 992c         	ldr	r1, [sp, #0xb0]
  38260c: 461a         	mov	r2, r3
  38260e: f002 fc61    	bl	0x384ed4 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)> @ imm = #0x28c2
  382612: ab20         	add	r3, sp, #0x80
  382614: 4618         	mov	r0, r3
  382616: f033 f17d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4332fa
  38261a: e0af         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x15e
  38261c: aa21         	add	r2, sp, #0x84
  38261e: ab09         	add	r3, sp, #0x24
  382620: 4610         	mov	r0, r2
  382622: 4619         	mov	r1, r3
  382624: f033 f760    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433ec0
  382628: ab21         	add	r3, sp, #0x84
  38262a: 9805         	ldr	r0, [sp, #0x14]
  38262c: 992c         	ldr	r1, [sp, #0xb0]
  38262e: 461a         	mov	r2, r3
  382630: f003 fa42    	bl	0x385ab8 <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)> @ imm = #0x3484
  382634: ab21         	add	r3, sp, #0x84
  382636: 4618         	mov	r0, r3
  382638: f033 f16c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4332d8
  38263c: e09e         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x13c
  38263e: aa22         	add	r2, sp, #0x88
  382640: ab09         	add	r3, sp, #0x24
  382642: 4610         	mov	r0, r2
  382644: 4619         	mov	r1, r3
  382646: f033 f74f    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433e9e
  38264a: ab22         	add	r3, sp, #0x88
  38264c: 9805         	ldr	r0, [sp, #0x14]
  38264e: 992c         	ldr	r1, [sp, #0xb0]
  382650: 461a         	mov	r2, r3
  382652: f002 ffaf    	bl	0x3855b4 <NetworkMessageDispatcher::peerExplosionRemove(cocos2d::extension::CCData*, std::string)> @ imm = #0x2f5e
  382656: ab22         	add	r3, sp, #0x88
  382658: 4618         	mov	r0, r3
  38265a: f033 f15b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4332b6
  38265e: e08d         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x11a
  382660: aa23         	add	r2, sp, #0x8c
  382662: ab09         	add	r3, sp, #0x24
  382664: 4610         	mov	r0, r2
  382666: 4619         	mov	r1, r3
  382668: f033 f73e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433e7c
  38266c: ab23         	add	r3, sp, #0x8c
  38266e: 9805         	ldr	r0, [sp, #0x14]
  382670: 992c         	ldr	r1, [sp, #0xb0]
  382672: 461a         	mov	r2, r3
  382674: f003 fa96    	bl	0x385ba4 <NetworkMessageDispatcher::updatePeerEnteredGame(cocos2d::extension::CCData*, std::string)> @ imm = #0x352c
  382678: ab23         	add	r3, sp, #0x8c
  38267a: 4618         	mov	r0, r3
  38267c: f033 f14a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433294
  382680: e07c         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0xf8
  382682: aa24         	add	r2, sp, #0x90
  382684: ab09         	add	r3, sp, #0x24
  382686: 4610         	mov	r0, r2
  382688: 4619         	mov	r1, r3
  38268a: f033 f72d    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433e5a
  38268e: ab24         	add	r3, sp, #0x90
  382690: 9805         	ldr	r0, [sp, #0x14]
  382692: 992c         	ldr	r1, [sp, #0xb0]
  382694: 461a         	mov	r2, r3
  382696: f003 fb17    	bl	0x385cc8 <NetworkMessageDispatcher::updatePeerPingTime(cocos2d::extension::CCData*, std::string)> @ imm = #0x362e
  38269a: ab24         	add	r3, sp, #0x90
  38269c: 4618         	mov	r0, r3
  38269e: f033 f139    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433272
  3826a2: e06b         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0xd6
  3826a4: aa25         	add	r2, sp, #0x94
  3826a6: ab09         	add	r3, sp, #0x24
  3826a8: 4610         	mov	r0, r2
  3826aa: 4619         	mov	r1, r3
  3826ac: f033 f71c    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433e38
  3826b0: ab25         	add	r3, sp, #0x94
  3826b2: 9805         	ldr	r0, [sp, #0x14]
  3826b4: 992c         	ldr	r1, [sp, #0xb0]
  3826b6: 461a         	mov	r2, r3
  3826b8: f003 fc52    	bl	0x385f60 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)> @ imm = #0x38a4
  3826bc: ab25         	add	r3, sp, #0x94
  3826be: 4618         	mov	r0, r3
  3826c0: f033 f128    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433250
  3826c4: e05a         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0xb4
  3826c6: aa26         	add	r2, sp, #0x98
  3826c8: ab09         	add	r3, sp, #0x24
  3826ca: 4610         	mov	r0, r2
  3826cc: 4619         	mov	r1, r3
  3826ce: f033 f70b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433e16
  3826d2: ab26         	add	r3, sp, #0x98
  3826d4: 9805         	ldr	r0, [sp, #0x14]
  3826d6: 992c         	ldr	r1, [sp, #0xb0]
  3826d8: 461a         	mov	r2, r3
  3826da: f003 fd1b    	bl	0x386114 <NetworkMessageDispatcher::updatePeerEnemySpawn(cocos2d::extension::CCData*, std::string)> @ imm = #0x3a36
  3826de: ab26         	add	r3, sp, #0x98
  3826e0: 4618         	mov	r0, r3
  3826e2: f033 f117    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43322e
  3826e6: e049         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x92
  3826e8: aa27         	add	r2, sp, #0x9c
  3826ea: ab09         	add	r3, sp, #0x24
  3826ec: 4610         	mov	r0, r2
  3826ee: 4619         	mov	r1, r3
  3826f0: f033 f6fa    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433df4
  3826f4: ab27         	add	r3, sp, #0x9c
  3826f6: 9805         	ldr	r0, [sp, #0x14]
  3826f8: 992c         	ldr	r1, [sp, #0xb0]
  3826fa: 461a         	mov	r2, r3
  3826fc: f003 ff00    	bl	0x386500 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)> @ imm = #0x3e00
  382700: ab27         	add	r3, sp, #0x9c
  382702: 4618         	mov	r0, r3
  382704: f033 f106    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43320c
  382708: e038         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x70
  38270a: aa28         	add	r2, sp, #0xa0
  38270c: ab09         	add	r3, sp, #0x24
  38270e: 4610         	mov	r0, r2
  382710: 4619         	mov	r1, r3
  382712: f033 f6e9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433dd2
  382716: ab28         	add	r3, sp, #0xa0
  382718: 9805         	ldr	r0, [sp, #0x14]
  38271a: 992c         	ldr	r1, [sp, #0xb0]
  38271c: 461a         	mov	r2, r3
  38271e: f003 fd49    	bl	0x3861b4 <NetworkMessageDispatcher::updatePeerEnemyDestroy(cocos2d::extension::CCData*, std::string)> @ imm = #0x3a92
  382722: ab28         	add	r3, sp, #0xa0
  382724: 4618         	mov	r0, r3
  382726: f033 f0f5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4331ea
  38272a: e027         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x4e
  38272c: aa29         	add	r2, sp, #0xa4
  38272e: ab09         	add	r3, sp, #0x24
  382730: 4610         	mov	r0, r2
  382732: 4619         	mov	r1, r3
  382734: f033 f6d8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433db0
  382738: ab29         	add	r3, sp, #0xa4
  38273a: 9805         	ldr	r0, [sp, #0x14]
  38273c: 992c         	ldr	r1, [sp, #0xb0]
  38273e: 461a         	mov	r2, r3
  382740: f003 fbb2    	bl	0x385ea8 <NetworkMessageDispatcher::peerLobbyStatus(cocos2d::extension::CCData*, std::string)> @ imm = #0x3764
  382744: ab29         	add	r3, sp, #0xa4
  382746: 4618         	mov	r0, r3
  382748: f033 f0e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4331c8
  38274c: e016         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x2c
  38274e: aa2a         	add	r2, sp, #0xa8
  382750: ab09         	add	r3, sp, #0x24
  382752: 4610         	mov	r0, r2
  382754: 4619         	mov	r1, r3
  382756: f033 f6c7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x433d8e
  38275a: ab2a         	add	r3, sp, #0xa8
  38275c: 9805         	ldr	r0, [sp, #0x14]
  38275e: 992c         	ldr	r1, [sp, #0xb0]
  382760: 461a         	mov	r2, r3
  382762: f002 f9af    	bl	0x384ac4 <NetworkMessageDispatcher::peerRequestSetupData(cocos2d::extension::CCData*, std::string)> @ imm = #0x235e
  382766: ab2a         	add	r3, sp, #0xa8
  382768: 4618         	mov	r0, r3
  38276a: f033 f0d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4331a6
  38276e: e005         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0xa
  382770: 9805         	ldr	r0, [sp, #0x14]
  382772: 992c         	ldr	r1, [sp, #0xb0]
  382774: f002 f9fc    	bl	0x384b70 <NetworkMessageDispatcher::serverSetMap(cocos2d::extension::CCData*)> @ imm = #0x23f8
  382778: e000         	b	0x38277c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8bc> @ imm = #0x0
  38277a: bf00         	nop
  38277c: ab09         	add	r3, sp, #0x24
  38277e: 4618         	mov	r0, r3
  382780: f033 f0c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433190
  382784: 9b2b         	ldr	r3, [sp, #0xac]
  382786: 3301         	adds	r3, #0x1
  382788: 932b         	str	r3, [sp, #0xac]
  38278a: 9c2b         	ldr	r4, [sp, #0xac]
  38278c: 9804         	ldr	r0, [sp, #0x10]
  38278e: f217 fca7    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x21794e
  382792: 4603         	mov	r3, r0
  382794: 429c         	cmp	r4, r3
  382796: bf2c         	ite	hs
  382798: 2300         	movhs	r3, #0x0
  38279a: 2301         	movlo	r3, #0x1
  38279c: b2db         	uxtb	r3, r3
  38279e: 2b00         	cmp	r3, #0x0
  3827a0: f47f ab97    	bne.w	0x381ed2 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x12> @ imm = #-0x8d2
  3827a4: e0da         	b	0x38295c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa9c> @ imm = #0x1b4
  3827a6: ab2a         	add	r3, sp, #0xa8
  3827a8: 4618         	mov	r0, r3
  3827aa: f007 f627    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407c4e
  3827ae: f005 f47d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4058fa
  3827b2: ab0a         	add	r3, sp, #0x28
  3827b4: 4618         	mov	r0, r3
  3827b6: f033 f0ad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43315a
  3827ba: e7ff         	b	0x3827bc <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x8fc> @ imm = #-0x2
  3827bc: ab2a         	add	r3, sp, #0xa8
  3827be: 4618         	mov	r0, r3
  3827c0: f007 f61c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407c38
  3827c4: e0c4         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x188
  3827c6: ab0c         	add	r3, sp, #0x30
  3827c8: 4618         	mov	r0, r3
  3827ca: f033 f0a3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433146
  3827ce: e7ff         	b	0x3827d0 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x910> @ imm = #-0x2
  3827d0: ab2a         	add	r3, sp, #0xa8
  3827d2: 4618         	mov	r0, r3
  3827d4: f007 f612    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407c24
  3827d8: ab0b         	add	r3, sp, #0x2c
  3827da: 4618         	mov	r0, r3
  3827dc: f033 f09a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433134
  3827e0: e7ff         	b	0x3827e2 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x922> @ imm = #-0x2
  3827e2: ab29         	add	r3, sp, #0xa4
  3827e4: 4618         	mov	r0, r3
  3827e6: f007 f609    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407c12
  3827ea: e0b1         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x162
  3827ec: ab0e         	add	r3, sp, #0x38
  3827ee: 4618         	mov	r0, r3
  3827f0: f033 f090    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433120
  3827f4: e7ff         	b	0x3827f6 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x936> @ imm = #-0x2
  3827f6: ab2a         	add	r3, sp, #0xa8
  3827f8: 4618         	mov	r0, r3
  3827fa: f007 f5ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407bfe
  3827fe: ab0d         	add	r3, sp, #0x34
  382800: 4618         	mov	r0, r3
  382802: f033 f087    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43310e
  382806: e7ff         	b	0x382808 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x948> @ imm = #-0x2
  382808: ab29         	add	r3, sp, #0xa4
  38280a: 4618         	mov	r0, r3
  38280c: f007 f5f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407bec
  382810: e09e         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x13c
  382812: ab0f         	add	r3, sp, #0x3c
  382814: 4618         	mov	r0, r3
  382816: f033 f07d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4330fa
  38281a: e7ff         	b	0x38281c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x95c> @ imm = #-0x2
  38281c: ab2a         	add	r3, sp, #0xa8
  38281e: 4618         	mov	r0, r3
  382820: f007 f5ec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407bd8
  382824: e094         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x128
  382826: ab10         	add	r3, sp, #0x40
  382828: 4618         	mov	r0, r3
  38282a: f033 f073    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4330e6
  38282e: e7ff         	b	0x382830 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x970> @ imm = #-0x2
  382830: ab28         	add	r3, sp, #0xa0
  382832: 4618         	mov	r0, r3
  382834: f007 f5e2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407bc4
  382838: ab12         	add	r3, sp, #0x48
  38283a: 4618         	mov	r0, r3
  38283c: f033 f06a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4330d4
  382840: e7ff         	b	0x382842 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x982> @ imm = #-0x2
  382842: ab2a         	add	r3, sp, #0xa8
  382844: 4618         	mov	r0, r3
  382846: f007 f5d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407bb2
  38284a: e7ff         	b	0x38284c <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x98c> @ imm = #-0x2
  38284c: ab11         	add	r3, sp, #0x44
  38284e: 4618         	mov	r0, r3
  382850: f033 f060    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4330c0
  382854: e7ff         	b	0x382856 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x996> @ imm = #-0x2
  382856: ab29         	add	r3, sp, #0xa4
  382858: 4618         	mov	r0, r3
  38285a: f007 f5cf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x407b9e
  38285e: e077         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xee
  382860: ab13         	add	r3, sp, #0x4c
  382862: 4618         	mov	r0, r3
  382864: f033 f056    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4330ac
  382868: e072         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xe4
  38286a: ab14         	add	r3, sp, #0x50
  38286c: 4618         	mov	r0, r3
  38286e: f033 f051    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4330a2
  382872: e06d         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xda
  382874: ab15         	add	r3, sp, #0x54
  382876: 4618         	mov	r0, r3
  382878: f033 f04c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433098
  38287c: e068         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xd0
  38287e: ab16         	add	r3, sp, #0x58
  382880: 4618         	mov	r0, r3
  382882: f033 f047    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43308e
  382886: e063         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xc6
  382888: ab17         	add	r3, sp, #0x5c
  38288a: 4618         	mov	r0, r3
  38288c: f033 f042    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433084
  382890: e05e         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xbc
  382892: ab18         	add	r3, sp, #0x60
  382894: 4618         	mov	r0, r3
  382896: f033 f03d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43307a
  38289a: e059         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xb2
  38289c: ab19         	add	r3, sp, #0x64
  38289e: 4618         	mov	r0, r3
  3828a0: f033 f038    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433070
  3828a4: e054         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0xa8
  3828a6: ab1a         	add	r3, sp, #0x68
  3828a8: 4618         	mov	r0, r3
  3828aa: f033 f033    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433066
  3828ae: e04f         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x9e
  3828b0: ab1b         	add	r3, sp, #0x6c
  3828b2: 4618         	mov	r0, r3
  3828b4: f033 f02e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43305c
  3828b8: e04a         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x94
  3828ba: ab1c         	add	r3, sp, #0x70
  3828bc: 4618         	mov	r0, r3
  3828be: f033 f029    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433052
  3828c2: e045         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x8a
  3828c4: ab1d         	add	r3, sp, #0x74
  3828c6: 4618         	mov	r0, r3
  3828c8: f033 f024    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433048
  3828cc: e040         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x80
  3828ce: ab1e         	add	r3, sp, #0x78
  3828d0: 4618         	mov	r0, r3
  3828d2: f033 f01f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43303e
  3828d6: e03b         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x76
  3828d8: ab1f         	add	r3, sp, #0x7c
  3828da: 4618         	mov	r0, r3
  3828dc: f033 f01a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433034
  3828e0: e036         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x6c
  3828e2: ab20         	add	r3, sp, #0x80
  3828e4: 4618         	mov	r0, r3
  3828e6: f033 f015    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43302a
  3828ea: e031         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x62
  3828ec: ab21         	add	r3, sp, #0x84
  3828ee: 4618         	mov	r0, r3
  3828f0: f033 f010    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433020
  3828f4: e02c         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x58
  3828f6: ab22         	add	r3, sp, #0x88
  3828f8: 4618         	mov	r0, r3
  3828fa: f033 f00b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433016
  3828fe: e027         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x4e
  382900: ab23         	add	r3, sp, #0x8c
  382902: 4618         	mov	r0, r3
  382904: f033 f006    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43300c
  382908: e022         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x44
  38290a: ab24         	add	r3, sp, #0x90
  38290c: 4618         	mov	r0, r3
  38290e: f033 f001    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x433002
  382912: e01d         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x3a
  382914: ab25         	add	r3, sp, #0x94
  382916: 4618         	mov	r0, r3
  382918: f032 f7fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432ff8
  38291c: e018         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x30
  38291e: ab26         	add	r3, sp, #0x98
  382920: 4618         	mov	r0, r3
  382922: f032 f7f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432fee
  382926: e013         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x26
  382928: ab27         	add	r3, sp, #0x9c
  38292a: 4618         	mov	r0, r3
  38292c: f032 f7f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432fe4
  382930: e00e         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x1c
  382932: ab28         	add	r3, sp, #0xa0
  382934: 4618         	mov	r0, r3
  382936: f032 f7ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432fda
  38293a: e009         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x12
  38293c: ab29         	add	r3, sp, #0xa4
  38293e: 4618         	mov	r0, r3
  382940: f032 f7e8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432fd0
  382944: e004         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #0x8
  382946: ab2a         	add	r3, sp, #0xa8
  382948: 4618         	mov	r0, r3
  38294a: f032 f7e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432fc6
  38294e: e7ff         	b	0x382950 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0xa90> @ imm = #-0x2
  382950: ab09         	add	r3, sp, #0x24
  382952: 4618         	mov	r0, r3
  382954: f032 f7de    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432fbc
  382958: f005 f3a8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x405750
  38295c: b03b         	add	sp, #0xec
  38295e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38295f); words below are literal-pool data ---
  382960: e560         	b	0x382424 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x564> @ imm = #-0x540
  382962: 0044         	lsls	r4, r0, #0x1
  382964: e54e         	b	0x382404 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x544> @ imm = #-0x564
  382966: 0044         	lsls	r4, r0, #0x1
  382968: e4ce         	b	0x382308 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x448> @ imm = #-0x664
  38296a: 0044         	lsls	r4, r0, #0x1
  38296c: e4bc         	b	0x3822e8 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x428> @ imm = #-0x688
  38296e: 0044         	lsls	r4, r0, #0x1
  382970: e498         	b	0x3822a4 <NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*)+0x3e4> @ imm = #-0x6d0
  382972: 0044         	lsls	r4, r0, #0x1
  382974: e3b8         	b	0x3830e8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x2f0> @ imm = #0x770
  382976: 0044         	lsls	r4, r0, #0x1
  382978: e38c         	b	0x383094 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x29c> @ imm = #0x718
  38297a: 0044         	lsls	r4, r0, #0x1
  38297c: e324         	b	0x382fc8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x1d0> @ imm = #0x648
  38297e: 0044         	lsls	r4, r0, #0x1
  382980: e2ca         	b	0x382f18 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x120> @ imm = #0x594
  382982: 0044         	lsls	r4, r0, #0x1
  382984: e2c6         	b	0x382f14 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x11c> @ imm = #0x58c
  382986: 0044         	lsls	r4, r0, #0x1
  382988: e2be         	b	0x382f08 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x110> @ imm = #0x57c
  38298a: 0044         	lsls	r4, r0, #0x1
  38298c: e2b6         	b	0x382efc <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x104> @ imm = #0x56c
  38298e: 0044         	lsls	r4, r0, #0x1
  382990: e2ae         	b	0x382ef0 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0xf8> @ imm = #0x55c
  382992: 0044         	lsls	r4, r0, #0x1
  382994: e288         	b	0x382ea8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0xb0> @ imm = #0x510
  382996: 0044         	lsls	r4, r0, #0x1
  382998: e262         	b	0x382e60 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x68> @ imm = #0x4c4
  38299a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::createWeaponFromType
//      file offset 0x38299c (= ELF address; Ghidra 0x39299c), 32 bytes, Thumb-2
  38299c: b500         	push	{lr}
  38299e: b083         	sub	sp, #0xc
  3829a0: 9001         	str	r0, [sp, #0x4]
  3829a2: 9100         	str	r1, [sp]
  3829a4: f094 ffee    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x94fdc
  3829a8: 4603         	mov	r3, r0
  3829aa: 4618         	mov	r0, r3
  3829ac: 9900         	ldr	r1, [sp]
  3829ae: f095 fea5    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x95d4a
  3829b2: 4603         	mov	r3, r0
  3829b4: 4618         	mov	r0, r3
  3829b6: b003         	add	sp, #0xc
  3829b8: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkMessageDispatcher::getLocationData
//      file offset 0x3829c0 (= ELF address; Ghidra 0x3929c0), 1076 bytes, Thumb-2
  3829c0: b530         	push	{r4, r5, lr}
  3829c2: b0a9         	sub	sp, #0xa4
  3829c4: 9001         	str	r0, [sp, #0x4]
  3829c6: 460b         	mov	r3, r1
  3829c8: f88d 3003    	strb.w	r3, [sp, #0x3]
  3829cc: f8df 4404    	ldr.w	r4, [pc, #0x404]        @ 0x382dd4 <NetworkMessageDispatcher::getLocationData(bool)+0x414>
  3829d0: 447c         	add	r4, pc
  3829d2: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3829d6: 2b00         	cmp	r3, #0x0
  3829d8: d001         	beq	0x3829de <NetworkMessageDispatcher::getLocationData(bool)+0x1e> @ imm = #0x2
  3829da: 2312         	movs	r3, #0x12
  3829dc: e000         	b	0x3829e0 <NetworkMessageDispatcher::getLocationData(bool)+0x20> @ imm = #0x0
  3829de: 230f         	movs	r3, #0xf
  3829e0: f88d 300c    	strb.w	r3, [sp, #0xc]
  3829e4: 4bfc         	ldr	r3, [pc, #0x3f0]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  3829e6: 58e3         	ldr	r3, [r4, r3]
  3829e8: 681b         	ldr	r3, [r3]
  3829ea: 681b         	ldr	r3, [r3]
  3829ec: f503 731b    	add.w	r3, r3, #0x26c
  3829f0: 681b         	ldr	r3, [r3]
  3829f2: 4af9         	ldr	r2, [pc, #0x3e4]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  3829f4: 58a2         	ldr	r2, [r4, r2]
  3829f6: 6812         	ldr	r2, [r2]
  3829f8: 4610         	mov	r0, r2
  3829fa: 4798         	blx	r3
  3829fc: 4603         	mov	r3, r0
  3829fe: 2b00         	cmp	r3, #0x0
  382a00: d00a         	beq	0x382a18 <NetworkMessageDispatcher::getLocationData(bool)+0x58> @ imm = #0x14
  382a02: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  382a06: 2b00         	cmp	r3, #0x0
  382a08: d003         	beq	0x382a12 <NetworkMessageDispatcher::getLocationData(bool)+0x52> @ imm = #0x6
  382a0a: 2311         	movs	r3, #0x11
  382a0c: f88d 300c    	strb.w	r3, [sp, #0xc]
  382a10: e002         	b	0x382a18 <NetworkMessageDispatcher::getLocationData(bool)+0x58> @ imm = #0x4
  382a12: 2310         	movs	r3, #0x10
  382a14: f88d 300c    	strb.w	r3, [sp, #0xc]
  382a18: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a1a: 58e3         	ldr	r3, [r4, r3]
  382a1c: 681b         	ldr	r3, [r3]
  382a1e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  382a22: ad14         	add	r5, sp, #0x50
  382a24: 3328         	adds	r3, #0x28
  382a26: cb0f         	ldm	r3, {r0, r1, r2, r3}
  382a28: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  382a2c: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a2e: 58e3         	ldr	r3, [r4, r3]
  382a30: 681b         	ldr	r3, [r3]
  382a32: 681b         	ldr	r3, [r3]
  382a34: f503 730f    	add.w	r3, r3, #0x23c
  382a38: 681b         	ldr	r3, [r3]
  382a3a: 4ae7         	ldr	r2, [pc, #0x39c]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a3c: 58a2         	ldr	r2, [r4, r2]
  382a3e: 6812         	ldr	r2, [r2]
  382a40: 4610         	mov	r0, r2
  382a42: 4798         	blx	r3
  382a44: ee07 0a90    	vmov	s15, r0
  382a48: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  382a4c: ed8d 7b0e    	vstr	d7, [sp, #56]
  382a50: 4be1         	ldr	r3, [pc, #0x384]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a52: 58e3         	ldr	r3, [r4, r3]
  382a54: 681b         	ldr	r3, [r3]
  382a56: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  382a5a: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  382a5e: e9cd 2310    	strd	r2, r3, [sp, #64]
  382a62: 2300         	movs	r3, #0x0
  382a64: f88d 300d    	strb.w	r3, [sp, #0xd]
  382a68: 2300         	movs	r3, #0x0
  382a6a: f88d 300e    	strb.w	r3, [sp, #0xe]
  382a6e: 4bda         	ldr	r3, [pc, #0x368]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a70: 58e3         	ldr	r3, [r4, r3]
  382a72: 681b         	ldr	r3, [r3]
  382a74: 681b         	ldr	r3, [r3]
  382a76: f503 73fa    	add.w	r3, r3, #0x1f4
  382a7a: 681b         	ldr	r3, [r3]
  382a7c: 4ad6         	ldr	r2, [pc, #0x358]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a7e: 58a2         	ldr	r2, [r4, r2]
  382a80: 6812         	ldr	r2, [r2]
  382a82: 4610         	mov	r0, r2
  382a84: 4798         	blx	r3
  382a86: 4603         	mov	r3, r0
  382a88: 9307         	str	r3, [sp, #0x1c]
  382a8a: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a8c: 58e3         	ldr	r3, [r4, r3]
  382a8e: 681b         	ldr	r3, [r3]
  382a90: 681b         	ldr	r3, [r3]
  382a92: f503 73fe    	add.w	r3, r3, #0x1fc
  382a96: 681b         	ldr	r3, [r3]
  382a98: 4acf         	ldr	r2, [pc, #0x33c]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382a9a: 58a2         	ldr	r2, [r4, r2]
  382a9c: 6812         	ldr	r2, [r2]
  382a9e: 4610         	mov	r0, r2
  382aa0: 4798         	blx	r3
  382aa2: 4603         	mov	r3, r0
  382aa4: 9308         	str	r3, [sp, #0x20]
  382aa6: 9b07         	ldr	r3, [sp, #0x1c]
  382aa8: 2b00         	cmp	r3, #0x0
  382aaa: d009         	beq	0x382ac0 <NetworkMessageDispatcher::getLocationData(bool)+0x100> @ imm = #0x12
  382aac: 9b07         	ldr	r3, [sp, #0x1c]
  382aae: 681b         	ldr	r3, [r3]
  382ab0: f503 7310    	add.w	r3, r3, #0x240
  382ab4: 681b         	ldr	r3, [r3]
  382ab6: 9807         	ldr	r0, [sp, #0x1c]
  382ab8: 4798         	blx	r3
  382aba: 4603         	mov	r3, r0
  382abc: f88d 300d    	strb.w	r3, [sp, #0xd]
  382ac0: 9b08         	ldr	r3, [sp, #0x20]
  382ac2: 2b00         	cmp	r3, #0x0
  382ac4: d009         	beq	0x382ada <NetworkMessageDispatcher::getLocationData(bool)+0x11a> @ imm = #0x12
  382ac6: 9b08         	ldr	r3, [sp, #0x20]
  382ac8: 681b         	ldr	r3, [r3]
  382aca: f503 7310    	add.w	r3, r3, #0x240
  382ace: 681b         	ldr	r3, [r3]
  382ad0: 9808         	ldr	r0, [sp, #0x20]
  382ad2: 4798         	blx	r3
  382ad4: 4603         	mov	r3, r0
  382ad6: f88d 300e    	strb.w	r3, [sp, #0xe]
  382ada: 4bc0         	ldr	r3, [pc, #0x300]        @ 0x382ddc <NetworkMessageDispatcher::getLocationData(bool)+0x41c>
  382adc: 58e3         	ldr	r3, [r4, r3]
  382ade: edd3 7a00    	vldr	s15, [r3]
  382ae2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  382ae6: ed9d 7b0e    	vldr	d7, [sp, #56]
  382aea: ee26 7b07    	vmul.f64	d7, d6, d7
  382aee: eefc 6bc7    	vcvt.u32.f64	s13, d7
  382af2: ee16 3a90    	vmov	r3, s13
  382af6: f8ad 3016    	strh.w	r3, [sp, #0x16]
  382afa: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x382de0 <NetworkMessageDispatcher::getLocationData(bool)+0x420>
  382afc: 58e3         	ldr	r3, [r4, r3]
  382afe: edd3 7a00    	vldr	s15, [r3]
  382b02: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  382b06: ed9d 7b10    	vldr	d7, [sp, #64]
  382b0a: ee26 7b07    	vmul.f64	d7, d6, d7
  382b0e: eefd 6bc7    	vcvt.s32.f64	s13, d7
  382b12: ee16 3a90    	vmov	r3, s13
  382b16: f88d 3010    	strb.w	r3, [sp, #0x10]
  382b1a: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x382de4 <NetworkMessageDispatcher::getLocationData(bool)+0x424>
  382b1c: 447b         	add	r3, pc
  382b1e: 9306         	str	r3, [sp, #0x18]
  382b20: 9b06         	ldr	r3, [sp, #0x18]
  382b22: f89d 200c    	ldrb.w	r2, [sp, #0xc]
  382b26: 701a         	strb	r2, [r3]
  382b28: 9b06         	ldr	r3, [sp, #0x18]
  382b2a: 3301         	adds	r3, #0x1
  382b2c: 9306         	str	r3, [sp, #0x18]
  382b2e: ed9d 7b14    	vldr	d7, [sp, #80]
  382b32: eefd 6bc7    	vcvt.s32.f64	s13, d7
  382b36: ee16 3a90    	vmov	r3, s13
  382b3a: b29a         	uxth	r2, r3
  382b3c: 9b06         	ldr	r3, [sp, #0x18]
  382b3e: 801a         	strh	r2, [r3]
  382b40: 9b06         	ldr	r3, [sp, #0x18]
  382b42: 3302         	adds	r3, #0x2
  382b44: 9306         	str	r3, [sp, #0x18]
  382b46: ed9d 7b16    	vldr	d7, [sp, #88]
  382b4a: eefd 6bc7    	vcvt.s32.f64	s13, d7
  382b4e: ee16 3a90    	vmov	r3, s13
  382b52: b29a         	uxth	r2, r3
  382b54: 9b06         	ldr	r3, [sp, #0x18]
  382b56: 801a         	strh	r2, [r3]
  382b58: 9b06         	ldr	r3, [sp, #0x18]
  382b5a: 3302         	adds	r3, #0x2
  382b5c: 9306         	str	r3, [sp, #0x18]
  382b5e: 9b06         	ldr	r3, [sp, #0x18]
  382b60: f8bd 2016    	ldrh.w	r2, [sp, #0x16]
  382b64: 801a         	strh	r2, [r3]
  382b66: 9b06         	ldr	r3, [sp, #0x18]
  382b68: 3302         	adds	r3, #0x2
  382b6a: 9306         	str	r3, [sp, #0x18]
  382b6c: 9b06         	ldr	r3, [sp, #0x18]
  382b6e: f89d 2010    	ldrb.w	r2, [sp, #0x10]
  382b72: 701a         	strb	r2, [r3]
  382b74: 9b06         	ldr	r3, [sp, #0x18]
  382b76: 3301         	adds	r3, #0x1
  382b78: 9306         	str	r3, [sp, #0x18]
  382b7a: 9b06         	ldr	r3, [sp, #0x18]
  382b7c: f89d 200d    	ldrb.w	r2, [sp, #0xd]
  382b80: 701a         	strb	r2, [r3]
  382b82: 9b06         	ldr	r3, [sp, #0x18]
  382b84: 3301         	adds	r3, #0x1
  382b86: 9306         	str	r3, [sp, #0x18]
  382b88: 9b06         	ldr	r3, [sp, #0x18]
  382b8a: f89d 200e    	ldrb.w	r2, [sp, #0xe]
  382b8e: 701a         	strb	r2, [r3]
  382b90: 9b06         	ldr	r3, [sp, #0x18]
  382b92: 3301         	adds	r3, #0x1
  382b94: 9306         	str	r3, [sp, #0x18]
  382b96: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  382b9a: 2b00         	cmp	r3, #0x0
  382b9c: f000 80f1    	beq.w	0x382d82 <NetworkMessageDispatcher::getLocationData(bool)+0x3c2> @ imm = #0x1e2
  382ba0: 2314         	movs	r3, #0x14
  382ba2: f88d 300f    	strb.w	r3, [sp, #0xf]
  382ba6: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382ba8: 58e3         	ldr	r3, [r4, r3]
  382baa: 681b         	ldr	r3, [r3]
  382bac: 681b         	ldr	r3, [r3]
  382bae: f503 73d0    	add.w	r3, r3, #0x1a0
  382bb2: 681b         	ldr	r3, [r3]
  382bb4: 4a88         	ldr	r2, [pc, #0x220]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382bb6: 58a2         	ldr	r2, [r4, r2]
  382bb8: 6812         	ldr	r2, [r2]
  382bba: 4610         	mov	r0, r2
  382bbc: 4798         	blx	r3
  382bbe: 4603         	mov	r3, r0
  382bc0: 2b00         	cmp	r3, #0x0
  382bc2: d002         	beq	0x382bca <NetworkMessageDispatcher::getLocationData(bool)+0x20a> @ imm = #0x4
  382bc4: 2316         	movs	r3, #0x16
  382bc6: f88d 300f    	strb.w	r3, [sp, #0xf]
  382bca: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382bcc: 58e3         	ldr	r3, [r4, r3]
  382bce: 681b         	ldr	r3, [r3]
  382bd0: 681b         	ldr	r3, [r3]
  382bd2: f503 7319    	add.w	r3, r3, #0x264
  382bd6: 681b         	ldr	r3, [r3]
  382bd8: 4a7f         	ldr	r2, [pc, #0x1fc]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382bda: 58a2         	ldr	r2, [r4, r2]
  382bdc: 6812         	ldr	r2, [r2]
  382bde: 4610         	mov	r0, r2
  382be0: 4798         	blx	r3
  382be2: 4603         	mov	r3, r0
  382be4: 2b00         	cmp	r3, #0x0
  382be6: d002         	beq	0x382bee <NetworkMessageDispatcher::getLocationData(bool)+0x22e> @ imm = #0x4
  382be8: 2315         	movs	r3, #0x15
  382bea: f88d 300f    	strb.w	r3, [sp, #0xf]
  382bee: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382bf0: 58e3         	ldr	r3, [r4, r3]
  382bf2: 681b         	ldr	r3, [r3]
  382bf4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  382bf8: ad18         	add	r5, sp, #0x60
  382bfa: 3338         	adds	r3, #0x38
  382bfc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  382bfe: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  382c02: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382c04: 58e3         	ldr	r3, [r4, r3]
  382c06: 681b         	ldr	r3, [r3]
  382c08: 681b         	ldr	r3, [r3]
  382c0a: f503 730d    	add.w	r3, r3, #0x234
  382c0e: 681b         	ldr	r3, [r3]
  382c10: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382c12: 58a2         	ldr	r2, [r4, r2]
  382c14: 6812         	ldr	r2, [r2]
  382c16: a91c         	add	r1, sp, #0x70
  382c18: 4608         	mov	r0, r1
  382c1a: 4611         	mov	r1, r2
  382c1c: 4798         	blx	r3
  382c1e: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382c20: 58e3         	ldr	r3, [r4, r3]
  382c22: 681b         	ldr	r3, [r3]
  382c24: 681b         	ldr	r3, [r3]
  382c26: f503 73f4    	add.w	r3, r3, #0x1e8
  382c2a: 681b         	ldr	r3, [r3]
  382c2c: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x382dd8 <NetworkMessageDispatcher::getLocationData(bool)+0x418>
  382c2e: 58a2         	ldr	r2, [r4, r2]
  382c30: 6812         	ldr	r2, [r2]
  382c32: 4610         	mov	r0, r2
  382c34: 4798         	blx	r3
  382c36: 4602         	mov	r2, r0
  382c38: 460b         	mov	r3, r1
  382c3a: e9cd 2312    	strd	r2, r3, [sp, #72]
  382c3e: ed9d 6b18    	vldr	d6, [sp, #96]
  382c42: ed9d 7b1a    	vldr	d7, [sp, #104]
  382c46: ab20         	add	r3, sp, #0x80
  382c48: 4618         	mov	r0, r3
  382c4a: eeb0 0b46    	vmov.f64	d0, d6
  382c4e: eeb0 1b47    	vmov.f64	d1, d7
  382c52: f7fe f90b    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x1dea
  382c56: ab20         	add	r3, sp, #0x80
  382c58: cb0f         	ldm	r3, {r0, r1, r2, r3}
  382c5a: f354 fa2d    	bl	0x6d70b8 <cpvlength>    @ imm = #0x35445a
  382c5e: ec41 0b17    	vmov	d7, r0, r1
  382c62: eef7 7bc7    	vcvt.f32.f64	s15, d7
  382c66: edcd 7a09    	vstr	s15, [sp, #36]
  382c6a: ab18         	add	r3, sp, #0x60
  382c6c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  382c6e: f7fe fa33    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x1b9a
  382c72: 900a         	str	r0, [sp, #0x28]
  382c74: eddd 7a09    	vldr	s15, [sp, #36]
  382c78: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  382c7c: ed9f 7b50    	vldr	d7, [pc, #320]          @ 0x382dc0 <NetworkMessageDispatcher::getLocationData(bool)+0x400>
  382c80: ee26 7b07    	vmul.f64	d7, d6, d7
  382c84: eefd 6bc7    	vcvt.s32.f64	s13, d7
  382c88: ee16 3a90    	vmov	r3, s13
  382c8c: f88d 3011    	strb.w	r3, [sp, #0x11]
  382c90: 4b55         	ldr	r3, [pc, #0x154]        @ 0x382de8 <NetworkMessageDispatcher::getLocationData(bool)+0x428>
  382c92: 58e3         	ldr	r3, [r4, r3]
  382c94: ed93 7a00    	vldr	s14, [r3]
  382c98: eddd 7a0a    	vldr	s15, [sp, #40]
  382c9c: ee67 7a27    	vmul.f32	s15, s14, s15
  382ca0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  382ca4: ee17 3a90    	vmov	r3, s15
  382ca8: f88d 3012    	strb.w	r3, [sp, #0x12]
  382cac: ed9d 6b1c    	vldr	d6, [sp, #112]
  382cb0: ed9d 7b1e    	vldr	d7, [sp, #120]
  382cb4: ab24         	add	r3, sp, #0x90
  382cb6: 4618         	mov	r0, r3
  382cb8: eeb0 0b46    	vmov.f64	d0, d6
  382cbc: eeb0 1b47    	vmov.f64	d1, d7
  382cc0: f7fe f8d4    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x1e58
  382cc4: ab24         	add	r3, sp, #0x90
  382cc6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  382cc8: f354 f9f6    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3543ec
  382ccc: ec41 0b17    	vmov	d7, r0, r1
  382cd0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  382cd4: edcd 7a0b    	vstr	s15, [sp, #44]
  382cd8: ab1c         	add	r3, sp, #0x70
  382cda: cb0f         	ldm	r3, {r0, r1, r2, r3}
  382cdc: f7fe f9fc    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x1c08
  382ce0: 900c         	str	r0, [sp, #0x30]
  382ce2: ed9d 7a0b    	vldr	s14, [sp, #44]
  382ce6: eddf 7a3a    	vldr	s15, [pc, #232]         @ 0x382dd0 <NetworkMessageDispatcher::getLocationData(bool)+0x410>
  382cea: ee67 7a27    	vmul.f32	s15, s14, s15
  382cee: eefd 7ae7    	vcvt.s32.f32	s15, s15
  382cf2: ee17 3a90    	vmov	r3, s15
  382cf6: f88d 3013    	strb.w	r3, [sp, #0x13]
  382cfa: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x382de8 <NetworkMessageDispatcher::getLocationData(bool)+0x428>
  382cfc: 58e3         	ldr	r3, [r4, r3]
  382cfe: ed93 7a00    	vldr	s14, [r3]
  382d02: eddd 7a0c    	vldr	s15, [sp, #48]
  382d06: ee67 7a27    	vmul.f32	s15, s14, s15
  382d0a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  382d0e: ee17 3a90    	vmov	r3, s15
  382d12: f88d 3014    	strb.w	r3, [sp, #0x14]
  382d16: ed9d 6b12    	vldr	d6, [sp, #72]
  382d1a: ed9f 7b2b    	vldr	d7, [pc, #172]          @ 0x382dc8 <NetworkMessageDispatcher::getLocationData(bool)+0x408>
  382d1e: ee26 7b07    	vmul.f64	d7, d6, d7
  382d22: eefd 6bc7    	vcvt.s32.f64	s13, d7
  382d26: ee16 3a90    	vmov	r3, s13
  382d2a: f88d 3015    	strb.w	r3, [sp, #0x15]
  382d2e: 9b06         	ldr	r3, [sp, #0x18]
  382d30: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  382d34: 701a         	strb	r2, [r3]
  382d36: 9b06         	ldr	r3, [sp, #0x18]
  382d38: 3301         	adds	r3, #0x1
  382d3a: 9306         	str	r3, [sp, #0x18]
  382d3c: 9b06         	ldr	r3, [sp, #0x18]
  382d3e: f89d 2011    	ldrb.w	r2, [sp, #0x11]
  382d42: 701a         	strb	r2, [r3]
  382d44: 9b06         	ldr	r3, [sp, #0x18]
  382d46: 3301         	adds	r3, #0x1
  382d48: 9306         	str	r3, [sp, #0x18]
  382d4a: 9b06         	ldr	r3, [sp, #0x18]
  382d4c: f89d 2012    	ldrb.w	r2, [sp, #0x12]
  382d50: 701a         	strb	r2, [r3]
  382d52: 9b06         	ldr	r3, [sp, #0x18]
  382d54: 3301         	adds	r3, #0x1
  382d56: 9306         	str	r3, [sp, #0x18]
  382d58: 9b06         	ldr	r3, [sp, #0x18]
  382d5a: f89d 2013    	ldrb.w	r2, [sp, #0x13]
  382d5e: 701a         	strb	r2, [r3]
  382d60: 9b06         	ldr	r3, [sp, #0x18]
  382d62: 3301         	adds	r3, #0x1
  382d64: 9306         	str	r3, [sp, #0x18]
  382d66: 9b06         	ldr	r3, [sp, #0x18]
  382d68: f89d 2014    	ldrb.w	r2, [sp, #0x14]
  382d6c: 701a         	strb	r2, [r3]
  382d6e: 9b06         	ldr	r3, [sp, #0x18]
  382d70: 3301         	adds	r3, #0x1
  382d72: 9306         	str	r3, [sp, #0x18]
  382d74: 9b06         	ldr	r3, [sp, #0x18]
  382d76: f89d 2015    	ldrb.w	r2, [sp, #0x15]
  382d7a: 701a         	strb	r2, [r3]
  382d7c: 9b06         	ldr	r3, [sp, #0x18]
  382d7e: 3301         	adds	r3, #0x1
  382d80: 9306         	str	r3, [sp, #0x18]
  382d82: 201c         	movs	r0, #0x1c
  382d84: f004 f5ee    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x404bdc
  382d88: 4603         	mov	r3, r0
  382d8a: 461c         	mov	r4, r3
  382d8c: 9a06         	ldr	r2, [sp, #0x18]
  382d8e: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x382dec <NetworkMessageDispatcher::getLocationData(bool)+0x42c>
  382d90: 447b         	add	r3, pc
  382d92: 1ad3         	subs	r3, r2, r3
  382d94: 4620         	mov	r0, r4
  382d96: 4a16         	ldr	r2, [pc, #0x58]         @ 0x382df0 <NetworkMessageDispatcher::getLocationData(bool)+0x430>
  382d98: 447a         	add	r2, pc
  382d9a: 4611         	mov	r1, r2
  382d9c: 461a         	mov	r2, r3
  382d9e: f0c1 fa25    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xc144a
  382da2: 940d         	str	r4, [sp, #0x34]
  382da4: 9b0d         	ldr	r3, [sp, #0x34]
  382da6: 4618         	mov	r0, r3
  382da8: f215 f8a8    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x215150
  382dac: 9b0d         	ldr	r3, [sp, #0x34]
  382dae: e004         	b	0x382dba <NetworkMessageDispatcher::getLocationData(bool)+0x3fa> @ imm = #0x8
  382db0: 4620         	mov	r0, r4
  382db2: f005 f177    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4052ee
  382db6: f005 f179    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4052f2
  382dba: 4618         	mov	r0, r3
  382dbc: b029         	add	sp, #0xa4
  382dbe: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x382dbf); words below are literal-pool data ---
  382dc0: b852         	<unknown>
  382dc2: 851e         	strh	r6, [r3, #0x28]
  382dc4: 51eb         	str	r3, [r5, r7]
  382dc6: 3fe0         	subs	r7, #0xe0
  382dc8: 0000         	movs	r0, r0
  382dca: 0000         	movs	r0, r0
  382dcc: e000         	b	0x382dd0 <NetworkMessageDispatcher::getLocationData(bool)+0x410> @ imm = #0x0
  382dce: 406f         	eors	r7, r5
  382dd0: 0000         	movs	r0, r0
  382dd2: 437f         	muls	r7, r7, r7
  382dd4: 0038         	movs	r0, r7
  382dd6: 005b         	lsls	r3, r3, #0x1
  382dd8: d784         	bvc	0x382ce4 <NetworkMessageDispatcher::getLocationData(bool)+0x324> @ imm = #-0xf8
  382dda: ffff dcd4    	<unknown>
  382dde: ffff dcd8    	<unknown>
  382de2: ffff dfc8    	<unknown>
  382de6: 005b         	lsls	r3, r3, #0x1
  382de8: dcdc         	bgt	0x382da4 <NetworkMessageDispatcher::getLocationData(bool)+0x3e4> @ imm = #-0x48
  382dea: ffff dd54    	<unknown>
  382dee: 005b         	lsls	r3, r3, #0x1
  382df0: dd4c         	ble	0x382e8c <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x94> @ imm = #0x98
  382df2: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::updatePeerLocation
//      file offset 0x382df8 (= ELF address; Ghidra 0x392df8), 1140 bytes, Thumb-2
  382df8: b530         	push	{r4, r5, lr}
  382dfa: ed2d 8b02    	vpush	{d8}
  382dfe: b0a9         	sub	sp, #0xa4
  382e00: 9005         	str	r0, [sp, #0x14]
  382e02: 9104         	str	r1, [sp, #0x10]
  382e04: 9203         	str	r2, [sp, #0xc]
  382e06: 9302         	str	r3, [sp, #0x8]
  382e08: 4cef         	ldr	r4, [pc, #0x3bc]        @ 0x3831c8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3d0>
  382e0a: 447c         	add	r4, pc
  382e0c: f7f4 fe98    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb2d0
  382e10: 4603         	mov	r3, r0
  382e12: 4618         	mov	r0, r3
  382e14: f7f6 ffb8    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0x9090
  382e18: 4603         	mov	r3, r0
  382e1a: f083 0301    	eor	r3, r3, #0x1
  382e1e: b2db         	uxtb	r3, r3
  382e20: 2b00         	cmp	r3, #0x0
  382e22: d000         	beq	0x382e26 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x2e> @ imm = #0x0
  382e24: e21d         	b	0x383262 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x46a> @ imm = #0x43a
  382e26: ab24         	add	r3, sp, #0x90
  382e28: 4618         	mov	r0, r3
  382e2a: 9903         	ldr	r1, [sp, #0xc]
  382e2c: f033 f35c    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4336b8
  382e30: ab24         	add	r3, sp, #0x90
  382e32: 9805         	ldr	r0, [sp, #0x14]
  382e34: 4619         	mov	r1, r3
  382e36: f004 fc9d    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x493a
  382e3a: 4603         	mov	r3, r0
  382e3c: 930b         	str	r3, [sp, #0x2c]
  382e3e: ab24         	add	r3, sp, #0x90
  382e40: 4618         	mov	r0, r3
  382e42: f032 f567    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432ace
  382e46: 9b0b         	ldr	r3, [sp, #0x2c]
  382e48: 2b00         	cmp	r3, #0x0
  382e4a: f000 820a    	beq.w	0x383262 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x46a> @ imm = #0x414
  382e4e: 9804         	ldr	r0, [sp, #0x10]
  382e50: f0c1 fa72    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc14e4
  382e54: 4603         	mov	r3, r0
  382e56: 930c         	str	r3, [sp, #0x30]
  382e58: 9b0c         	ldr	r3, [sp, #0x30]
  382e5a: 3301         	adds	r3, #0x1
  382e5c: 930c         	str	r3, [sp, #0x30]
  382e5e: 9b0c         	ldr	r3, [sp, #0x30]
  382e60: 881b         	ldrh	r3, [r3]
  382e62: f8ad 3026    	strh.w	r3, [sp, #0x26]
  382e66: 9b0c         	ldr	r3, [sp, #0x30]
  382e68: 3302         	adds	r3, #0x2
  382e6a: 930c         	str	r3, [sp, #0x30]
  382e6c: 9b0c         	ldr	r3, [sp, #0x30]
  382e6e: 881b         	ldrh	r3, [r3]
  382e70: f8ad 3028    	strh.w	r3, [sp, #0x28]
  382e74: 9b0c         	ldr	r3, [sp, #0x30]
  382e76: 3302         	adds	r3, #0x2
  382e78: 930c         	str	r3, [sp, #0x30]
  382e7a: 9b0c         	ldr	r3, [sp, #0x30]
  382e7c: 881b         	ldrh	r3, [r3]
  382e7e: f8ad 302a    	strh.w	r3, [sp, #0x2a]
  382e82: 9b0c         	ldr	r3, [sp, #0x30]
  382e84: 3302         	adds	r3, #0x2
  382e86: 930c         	str	r3, [sp, #0x30]
  382e88: 9b0c         	ldr	r3, [sp, #0x30]
  382e8a: 781b         	ldrb	r3, [r3]
  382e8c: f88d 301d    	strb.w	r3, [sp, #0x1d]
  382e90: 9b0c         	ldr	r3, [sp, #0x30]
  382e92: 3301         	adds	r3, #0x1
  382e94: 930c         	str	r3, [sp, #0x30]
  382e96: 9b0c         	ldr	r3, [sp, #0x30]
  382e98: 781b         	ldrb	r3, [r3]
  382e9a: f88d 301e    	strb.w	r3, [sp, #0x1e]
  382e9e: 9b0c         	ldr	r3, [sp, #0x30]
  382ea0: 3301         	adds	r3, #0x1
  382ea2: 930c         	str	r3, [sp, #0x30]
  382ea4: 9b0c         	ldr	r3, [sp, #0x30]
  382ea6: 781b         	ldrb	r3, [r3]
  382ea8: f88d 301f    	strb.w	r3, [sp, #0x1f]
  382eac: 9b0c         	ldr	r3, [sp, #0x30]
  382eae: 3301         	adds	r3, #0x1
  382eb0: 930c         	str	r3, [sp, #0x30]
  382eb2: 9b02         	ldr	r3, [sp, #0x8]
  382eb4: 2b11         	cmp	r3, #0x11
  382eb6: d003         	beq	0x382ec0 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0xc8> @ imm = #0x6
  382eb8: 9b02         	ldr	r3, [sp, #0x8]
  382eba: 2b12         	cmp	r3, #0x12
  382ebc: f040 811c    	bne.w	0x3830f8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x300> @ imm = #0x238
  382ec0: 9b0c         	ldr	r3, [sp, #0x30]
  382ec2: 781b         	ldrb	r3, [r3]
  382ec4: f88d 3020    	strb.w	r3, [sp, #0x20]
  382ec8: 9b0c         	ldr	r3, [sp, #0x30]
  382eca: 3301         	adds	r3, #0x1
  382ecc: 930c         	str	r3, [sp, #0x30]
  382ece: 9b0c         	ldr	r3, [sp, #0x30]
  382ed0: 781b         	ldrb	r3, [r3]
  382ed2: f88d 3021    	strb.w	r3, [sp, #0x21]
  382ed6: 9b0c         	ldr	r3, [sp, #0x30]
  382ed8: 3301         	adds	r3, #0x1
  382eda: 930c         	str	r3, [sp, #0x30]
  382edc: 9b0c         	ldr	r3, [sp, #0x30]
  382ede: 781b         	ldrb	r3, [r3]
  382ee0: f88d 3022    	strb.w	r3, [sp, #0x22]
  382ee4: 9b0c         	ldr	r3, [sp, #0x30]
  382ee6: 3301         	adds	r3, #0x1
  382ee8: 930c         	str	r3, [sp, #0x30]
  382eea: 9b0c         	ldr	r3, [sp, #0x30]
  382eec: 781b         	ldrb	r3, [r3]
  382eee: f88d 3023    	strb.w	r3, [sp, #0x23]
  382ef2: 9b0c         	ldr	r3, [sp, #0x30]
  382ef4: 3301         	adds	r3, #0x1
  382ef6: 930c         	str	r3, [sp, #0x30]
  382ef8: 9b0c         	ldr	r3, [sp, #0x30]
  382efa: 781b         	ldrb	r3, [r3]
  382efc: f88d 3024    	strb.w	r3, [sp, #0x24]
  382f00: 9b0c         	ldr	r3, [sp, #0x30]
  382f02: 3301         	adds	r3, #0x1
  382f04: 930c         	str	r3, [sp, #0x30]
  382f06: 9b0c         	ldr	r3, [sp, #0x30]
  382f08: 781b         	ldrb	r3, [r3]
  382f0a: f88d 3025    	strb.w	r3, [sp, #0x25]
  382f0e: 9b0c         	ldr	r3, [sp, #0x30]
  382f10: 3301         	adds	r3, #0x1
  382f12: 930c         	str	r3, [sp, #0x30]
  382f14: f89d 3021    	ldrb.w	r3, [sp, #0x21]
  382f18: ee05 3a90    	vmov	s11, r3
  382f1c: eef8 7a65    	vcvt.f32.u32	s15, s11
  382f20: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  382f24: ed9f 7ba4    	vldr	d7, [pc, #656]          @ 0x3831b8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3c0>
  382f28: ee26 7b07    	vmul.f64	d7, d6, d7
  382f2c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  382f30: edcd 7a0d    	vstr	s15, [sp, #52]
  382f34: f89d 3022    	ldrb.w	r3, [sp, #0x22]
  382f38: ee07 3a90    	vmov	s15, r3
  382f3c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  382f40: 4ba2         	ldr	r3, [pc, #0x288]        @ 0x3831cc <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3d4>
  382f42: 58e3         	ldr	r3, [r4, r3]
  382f44: edd3 7a00    	vldr	s15, [r3]
  382f48: ee67 7a27    	vmul.f32	s15, s14, s15
  382f4c: edcd 7a0e    	vstr	s15, [sp, #56]
  382f50: ed9d 7a0e    	vldr	s14, [sp, #56]
  382f54: eddf 7a9a    	vldr	s15, [pc, #616]         @ 0x3831c0 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3c8>
  382f58: ee67 7a27    	vmul.f32	s15, s14, s15
  382f5c: eef1 7a67    	vneg.f32	s15, s15
  382f60: edcd 7a0f    	vstr	s15, [sp, #60]
  382f64: 980f         	ldr	r0, [sp, #0x3c]
  382f66: f7a6 fa89    	bl	0x32947c <std::cos(float)> @ imm = #-0x59aee
  382f6a: ee07 0a90    	vmov	s15, r0
  382f6e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  382f72: 980f         	ldr	r0, [sp, #0x3c]
  382f74: f7a6 fa9a    	bl	0x3294ac <std::sin(float)> @ imm = #-0x59acc
  382f78: ee07 0a90    	vmov	s15, r0
  382f7c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  382f80: ab20         	add	r3, sp, #0x80
  382f82: 4618         	mov	r0, r3
  382f84: eeb0 0b48    	vmov.f64	d0, d8
  382f88: eeb0 1b47    	vmov.f64	d1, d7
  382f8c: f7fd ff6e    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x2124
  382f90: eddd 7a0d    	vldr	s15, [sp, #52]
  382f94: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  382f98: ab18         	add	r3, sp, #0x60
  382f9a: ed9d 5b20    	vldr	d5, [sp, #128]
  382f9e: ed9d 6b22    	vldr	d6, [sp, #136]
  382fa2: 4618         	mov	r0, r3
  382fa4: eeb0 0b45    	vmov.f64	d0, d5
  382fa8: eeb0 1b46    	vmov.f64	d1, d6
  382fac: eeb0 2b47    	vmov.f64	d2, d7
  382fb0: f7fd ff9c    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x20c8
  382fb4: f89d 3023    	ldrb.w	r3, [sp, #0x23]
  382fb8: ee05 3a90    	vmov	s11, r3
  382fbc: eeb8 7a65    	vcvt.f32.u32	s14, s11
  382fc0: eddf 7a80    	vldr	s15, [pc, #512]         @ 0x3831c4 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3cc>
  382fc4: eec7 7a27    	vdiv.f32	s15, s14, s15
  382fc8: edcd 7a10    	vstr	s15, [sp, #64]
  382fcc: f89d 3024    	ldrb.w	r3, [sp, #0x24]
  382fd0: ee07 3a90    	vmov	s15, r3
  382fd4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  382fd8: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3831cc <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3d4>
  382fda: 58e3         	ldr	r3, [r4, r3]
  382fdc: edd3 7a00    	vldr	s15, [r3]
  382fe0: ee67 7a27    	vmul.f32	s15, s14, s15
  382fe4: edcd 7a11    	vstr	s15, [sp, #68]
  382fe8: ed9d 7a11    	vldr	s14, [sp, #68]
  382fec: eddf 7a74    	vldr	s15, [pc, #464]         @ 0x3831c0 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3c8>
  382ff0: ee67 7a27    	vmul.f32	s15, s14, s15
  382ff4: eef1 7a67    	vneg.f32	s15, s15
  382ff8: edcd 7a12    	vstr	s15, [sp, #72]
  382ffc: 9812         	ldr	r0, [sp, #0x48]
  382ffe: f7a6 fa3d    	bl	0x32947c <std::cos(float)> @ imm = #-0x59b86
  383002: ee07 0a90    	vmov	s15, r0
  383006: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  38300a: 9812         	ldr	r0, [sp, #0x48]
  38300c: f7a6 fa4e    	bl	0x3294ac <std::sin(float)> @ imm = #-0x59b64
  383010: ee07 0a90    	vmov	s15, r0
  383014: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  383018: ab24         	add	r3, sp, #0x90
  38301a: 4618         	mov	r0, r3
  38301c: eeb0 0b48    	vmov.f64	d0, d8
  383020: eeb0 1b47    	vmov.f64	d1, d7
  383024: f7fd ff22    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x21bc
  383028: eddd 7a10    	vldr	s15, [sp, #64]
  38302c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  383030: ab1c         	add	r3, sp, #0x70
  383032: ed9d 5b24    	vldr	d5, [sp, #144]
  383036: ed9d 6b26    	vldr	d6, [sp, #152]
  38303a: 4618         	mov	r0, r3
  38303c: eeb0 0b45    	vmov.f64	d0, d5
  383040: eeb0 1b46    	vmov.f64	d1, d6
  383044: eeb0 2b47    	vmov.f64	d2, d7
  383048: f7fd ff50    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x2160
  38304c: f89d 3025    	ldrb.w	r3, [sp, #0x25]
  383050: ee05 3a90    	vmov	s11, r3
  383054: eeb8 7a65    	vcvt.f32.u32	s14, s11
  383058: eddf 7a5a    	vldr	s15, [pc, #360]         @ 0x3831c4 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3cc>
  38305c: eec7 7a27    	vdiv.f32	s15, s14, s15
  383060: edcd 7a13    	vstr	s15, [sp, #76]
  383064: 9b0b         	ldr	r3, [sp, #0x2c]
  383066: 681b         	ldr	r3, [r3]
  383068: f503 732a    	add.w	r3, r3, #0x2a8
  38306c: 681d         	ldr	r5, [r3]
  38306e: 466b         	mov	r3, sp
  383070: aa1a         	add	r2, sp, #0x68
  383072: e892 0003    	ldm.w	r2, {r0, r1}
  383076: e883 0003    	stm.w	r3, {r0, r1}
  38307a: ab18         	add	r3, sp, #0x60
  38307c: cb0c         	ldm	r3, {r2, r3}
  38307e: 980b         	ldr	r0, [sp, #0x2c]
  383080: 47a8         	blx	r5
  383082: 9b0b         	ldr	r3, [sp, #0x2c]
  383084: 681b         	ldr	r3, [r3]
  383086: f503 730c    	add.w	r3, r3, #0x230
  38308a: 681d         	ldr	r5, [r3]
  38308c: 466b         	mov	r3, sp
  38308e: aa1e         	add	r2, sp, #0x78
  383090: e892 0003    	ldm.w	r2, {r0, r1}
  383094: e883 0003    	stm.w	r3, {r0, r1}
  383098: ab1c         	add	r3, sp, #0x70
  38309a: cb0c         	ldm	r3, {r2, r3}
  38309c: 980b         	ldr	r0, [sp, #0x2c]
  38309e: 47a8         	blx	r5
  3830a0: 9b0b         	ldr	r3, [sp, #0x2c]
  3830a2: 681b         	ldr	r3, [r3]
  3830a4: f503 7328    	add.w	r3, r3, #0x2a0
  3830a8: 6819         	ldr	r1, [r3]
  3830aa: eddd 7a13    	vldr	s15, [sp, #76]
  3830ae: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3830b2: 980b         	ldr	r0, [sp, #0x2c]
  3830b4: ec53 2b17    	vmov	r2, r3, d7
  3830b8: 4788         	blx	r1
  3830ba: 9b0b         	ldr	r3, [sp, #0x2c]
  3830bc: 681b         	ldr	r3, [r3]
  3830be: f503 731a    	add.w	r3, r3, #0x268
  3830c2: 681b         	ldr	r3, [r3]
  3830c4: f89d 2020    	ldrb.w	r2, [sp, #0x20]
  3830c8: 2a15         	cmp	r2, #0x15
  3830ca: bf14         	ite	ne
  3830cc: 2200         	movne	r2, #0x0
  3830ce: 2201         	moveq	r2, #0x1
  3830d0: b2d2         	uxtb	r2, r2
  3830d2: 980b         	ldr	r0, [sp, #0x2c]
  3830d4: 4611         	mov	r1, r2
  3830d6: 4798         	blx	r3
  3830d8: 9b0b         	ldr	r3, [sp, #0x2c]
  3830da: 681b         	ldr	r3, [r3]
  3830dc: f503 73ce    	add.w	r3, r3, #0x19c
  3830e0: 681b         	ldr	r3, [r3]
  3830e2: 990b         	ldr	r1, [sp, #0x2c]
  3830e4: f89d 2020    	ldrb.w	r2, [sp, #0x20]
  3830e8: 2a16         	cmp	r2, #0x16
  3830ea: bf14         	ite	ne
  3830ec: 2200         	movne	r2, #0x0
  3830ee: 2201         	moveq	r2, #0x1
  3830f0: b2d2         	uxtb	r2, r2
  3830f2: 4608         	mov	r0, r1
  3830f4: 4611         	mov	r1, r2
  3830f6: 4798         	blx	r3
  3830f8: f8bd 302a    	ldrh.w	r3, [sp, #0x2a]
  3830fc: ee07 3a90    	vmov	s15, r3
  383100: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  383104: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3831d0 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3d8>
  383106: 58e3         	ldr	r3, [r4, r3]
  383108: edd3 7a00    	vldr	s15, [r3]
  38310c: ee67 7a27    	vmul.f32	s15, s14, s15
  383110: edcd 7a14    	vstr	s15, [sp, #80]
  383114: f89d 301d    	ldrb.w	r3, [sp, #0x1d]
  383118: ee05 3a90    	vmov	s11, r3
  38311c: eeb8 7a65    	vcvt.f32.u32	s14, s11
  383120: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3831d4 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3dc>
  383122: 58e3         	ldr	r3, [r4, r3]
  383124: edd3 7a00    	vldr	s15, [r3]
  383128: ee67 7a27    	vmul.f32	s15, s14, s15
  38312c: edcd 7a15    	vstr	s15, [sp, #84]
  383130: f9bd 3026    	ldrsh.w	r3, [sp, #0x26]
  383134: ee07 3a10    	vmov	s14, r3
  383138: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  38313c: f9bd 3028    	ldrsh.w	r3, [sp, #0x28]
  383140: ee05 3a90    	vmov	s11, r3
  383144: eeb8 7be5    	vcvt.f64.s32	d7, s11
  383148: ab1c         	add	r3, sp, #0x70
  38314a: 4618         	mov	r0, r3
  38314c: eeb0 0b46    	vmov.f64	d0, d6
  383150: eeb0 1b47    	vmov.f64	d1, d7
  383154: f7fd fe8a    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x22ec
  383158: 9b0b         	ldr	r3, [sp, #0x2c]
  38315a: 681b         	ldr	r3, [r3]
  38315c: f503 732b    	add.w	r3, r3, #0x2ac
  383160: 681c         	ldr	r4, [r3]
  383162: 466b         	mov	r3, sp
  383164: aa1e         	add	r2, sp, #0x78
  383166: e892 0003    	ldm.w	r2, {r0, r1}
  38316a: e883 0003    	stm.w	r3, {r0, r1}
  38316e: ab1c         	add	r3, sp, #0x70
  383170: cb0c         	ldm	r3, {r2, r3}
  383172: 980b         	ldr	r0, [sp, #0x2c]
  383174: 47a0         	blx	r4
  383176: 9b0b         	ldr	r3, [sp, #0x2c]
  383178: 681b         	ldr	r3, [r3]
  38317a: f503 730e    	add.w	r3, r3, #0x238
  38317e: 681b         	ldr	r3, [r3]
  383180: 980b         	ldr	r0, [sp, #0x2c]
  383182: 9914         	ldr	r1, [sp, #0x50]
  383184: 4798         	blx	r3
  383186: 9b0b         	ldr	r3, [sp, #0x2c]
  383188: 681b         	ldr	r3, [r3]
  38318a: f503 7329    	add.w	r3, r3, #0x2a4
  38318e: 681b         	ldr	r3, [r3]
  383190: 980b         	ldr	r0, [sp, #0x2c]
  383192: 9915         	ldr	r1, [sp, #0x54]
  383194: 4798         	blx	r3
  383196: 9b0b         	ldr	r3, [sp, #0x2c]
  383198: 681b         	ldr	r3, [r3]
  38319a: f503 731c    	add.w	r3, r3, #0x270
  38319e: 681a         	ldr	r2, [r3]
  3831a0: 990b         	ldr	r1, [sp, #0x2c]
  3831a2: 9b02         	ldr	r3, [sp, #0x8]
  3831a4: 2b10         	cmp	r3, #0x10
  3831a6: d002         	beq	0x3831ae <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3b6> @ imm = #0x4
  3831a8: 9b02         	ldr	r3, [sp, #0x8]
  3831aa: 2b11         	cmp	r3, #0x11
  3831ac: d114         	bne	0x3831d8 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3e0> @ imm = #0x28
  3831ae: 2301         	movs	r3, #0x1
  3831b0: e013         	b	0x3831da <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x3e2> @ imm = #0x26
  3831b2: bf00         	nop
  3831b4: f3af 8000    	nop.w
  3831b8: 6a01         	ldr	r1, [r0, #0x20]
  3831ba: d96a         	bls	0x383292 <NetworkMessageDispatcher::getMotionData()+0x22> @ imm = #0xd4
  3831bc: 5f5a         	ldrsh	r2, [r3, r5]
  3831be: 3fff         	subs	r7, #0xff
  3831c0: fa35 3c8e    	<unknown>
  3831c4: 0000         	movs	r0, r0
  3831c6: 437f         	muls	r7, r7, r7
  3831c8: fbfe 005a    	<unknown>
  3831cc: dce0         	bgt	0x383190 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x398> @ imm = #-0x40
  3831ce: ffff dce4    	<unknown>
  3831d2: ffff dce8    	<unknown>
  3831d6: ffff 2300    	<unknown>
  3831da: 4608         	mov	r0, r1
  3831dc: 4619         	mov	r1, r3
  3831de: 4790         	blx	r2
  3831e0: 9b0b         	ldr	r3, [sp, #0x2c]
  3831e2: 681b         	ldr	r3, [r3]
  3831e4: f503 7319    	add.w	r3, r3, #0x264
  3831e8: 681b         	ldr	r3, [r3]
  3831ea: 9a0b         	ldr	r2, [sp, #0x2c]
  3831ec: 4610         	mov	r0, r2
  3831ee: 4798         	blx	r3
  3831f0: 4603         	mov	r3, r0
  3831f2: f083 0301    	eor	r3, r3, #0x1
  3831f6: b2db         	uxtb	r3, r3
  3831f8: 2b00         	cmp	r3, #0x0
  3831fa: d02b         	beq	0x383254 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x45c> @ imm = #0x56
  3831fc: 9b0b         	ldr	r3, [sp, #0x2c]
  3831fe: 681b         	ldr	r3, [r3]
  383200: f503 73fa    	add.w	r3, r3, #0x1f4
  383204: 681b         	ldr	r3, [r3]
  383206: 980b         	ldr	r0, [sp, #0x2c]
  383208: 4798         	blx	r3
  38320a: 4603         	mov	r3, r0
  38320c: 9316         	str	r3, [sp, #0x58]
  38320e: 9b0b         	ldr	r3, [sp, #0x2c]
  383210: 681b         	ldr	r3, [r3]
  383212: f503 73fe    	add.w	r3, r3, #0x1fc
  383216: 681b         	ldr	r3, [r3]
  383218: 980b         	ldr	r0, [sp, #0x2c]
  38321a: 4798         	blx	r3
  38321c: 4603         	mov	r3, r0
  38321e: 9317         	str	r3, [sp, #0x5c]
  383220: 9b16         	ldr	r3, [sp, #0x58]
  383222: 2b00         	cmp	r3, #0x0
  383224: d009         	beq	0x38323a <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x442> @ imm = #0x12
  383226: 9b16         	ldr	r3, [sp, #0x58]
  383228: 681b         	ldr	r3, [r3]
  38322a: f503 7312    	add.w	r3, r3, #0x248
  38322e: 681b         	ldr	r3, [r3]
  383230: f89d 201e    	ldrb.w	r2, [sp, #0x1e]
  383234: 9816         	ldr	r0, [sp, #0x58]
  383236: 4611         	mov	r1, r2
  383238: 4798         	blx	r3
  38323a: 9b17         	ldr	r3, [sp, #0x5c]
  38323c: 2b00         	cmp	r3, #0x0
  38323e: d009         	beq	0x383254 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x45c> @ imm = #0x12
  383240: 9b17         	ldr	r3, [sp, #0x5c]
  383242: 681b         	ldr	r3, [r3]
  383244: f503 7312    	add.w	r3, r3, #0x248
  383248: 681b         	ldr	r3, [r3]
  38324a: f89d 201f    	ldrb.w	r2, [sp, #0x1f]
  38324e: 9817         	ldr	r0, [sp, #0x5c]
  383250: 4611         	mov	r1, r2
  383252: 4798         	blx	r3
  383254: e006         	b	0x383264 <NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int)+0x46c> @ imm = #0xc
  383256: ab24         	add	r3, sp, #0x90
  383258: 4618         	mov	r0, r3
  38325a: f032 f35b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4326b6
  38325e: f004 f725    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x404e4a
  383262: bf00         	nop
  383264: b029         	add	sp, #0xa4
  383266: ecbd 8b02    	vpop	{d8}
  38326a: bd30         	pop	{r4, r5, pc}

// ==== NetworkMessageDispatcher::getMotionData
//      file offset 0x383270 (= ELF address; Ghidra 0x393270), 604 bytes, Thumb-2
  383270: b530         	push	{r4, r5, lr}
  383272: b09d         	sub	sp, #0x74
  383274: 9001         	str	r0, [sp, #0x4]
  383276: 4c8f         	ldr	r4, [pc, #0x23c]        @ 0x3834b4 <NetworkMessageDispatcher::getMotionData()+0x244>
  383278: 447c         	add	r4, pc
  38327a: 2314         	movs	r3, #0x14
  38327c: f88d 300a    	strb.w	r3, [sp, #0xa]
  383280: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  383282: 58e3         	ldr	r3, [r4, r3]
  383284: 681b         	ldr	r3, [r3]
  383286: 681b         	ldr	r3, [r3]
  383288: f503 73d0    	add.w	r3, r3, #0x1a0
  38328c: 681b         	ldr	r3, [r3]
  38328e: 4a8a         	ldr	r2, [pc, #0x228]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  383290: 58a2         	ldr	r2, [r4, r2]
  383292: 6812         	ldr	r2, [r2]
  383294: 4610         	mov	r0, r2
  383296: 4798         	blx	r3
  383298: 4603         	mov	r3, r0
  38329a: 2b00         	cmp	r3, #0x0
  38329c: d002         	beq	0x3832a4 <NetworkMessageDispatcher::getMotionData()+0x34> @ imm = #0x4
  38329e: 2316         	movs	r3, #0x16
  3832a0: f88d 300a    	strb.w	r3, [sp, #0xa]
  3832a4: 4b84         	ldr	r3, [pc, #0x210]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  3832a6: 58e3         	ldr	r3, [r4, r3]
  3832a8: 681b         	ldr	r3, [r3]
  3832aa: 681b         	ldr	r3, [r3]
  3832ac: f503 7319    	add.w	r3, r3, #0x264
  3832b0: 681b         	ldr	r3, [r3]
  3832b2: 4a81         	ldr	r2, [pc, #0x204]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  3832b4: 58a2         	ldr	r2, [r4, r2]
  3832b6: 6812         	ldr	r2, [r2]
  3832b8: 4610         	mov	r0, r2
  3832ba: 4798         	blx	r3
  3832bc: 4603         	mov	r3, r0
  3832be: 2b00         	cmp	r3, #0x0
  3832c0: d002         	beq	0x3832c8 <NetworkMessageDispatcher::getMotionData()+0x58> @ imm = #0x4
  3832c2: 2315         	movs	r3, #0x15
  3832c4: f88d 300a    	strb.w	r3, [sp, #0xa]
  3832c8: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  3832ca: 58e3         	ldr	r3, [r4, r3]
  3832cc: 681b         	ldr	r3, [r3]
  3832ce: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3832d2: ad0c         	add	r5, sp, #0x30
  3832d4: 3338         	adds	r3, #0x38
  3832d6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3832d8: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3832dc: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  3832de: 58e3         	ldr	r3, [r4, r3]
  3832e0: 681b         	ldr	r3, [r3]
  3832e2: 681b         	ldr	r3, [r3]
  3832e4: f503 730d    	add.w	r3, r3, #0x234
  3832e8: 681b         	ldr	r3, [r3]
  3832ea: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  3832ec: 58a2         	ldr	r2, [r4, r2]
  3832ee: 6812         	ldr	r2, [r2]
  3832f0: a910         	add	r1, sp, #0x40
  3832f2: 4608         	mov	r0, r1
  3832f4: 4611         	mov	r1, r2
  3832f6: 4798         	blx	r3
  3832f8: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  3832fa: 58e3         	ldr	r3, [r4, r3]
  3832fc: 681b         	ldr	r3, [r3]
  3832fe: 681b         	ldr	r3, [r3]
  383300: f503 73f4    	add.w	r3, r3, #0x1e8
  383304: 681b         	ldr	r3, [r3]
  383306: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x3834b8 <NetworkMessageDispatcher::getMotionData()+0x248>
  383308: 58a2         	ldr	r2, [r4, r2]
  38330a: 6812         	ldr	r2, [r2]
  38330c: 4610         	mov	r0, r2
  38330e: 4798         	blx	r3
  383310: 4602         	mov	r2, r0
  383312: 460b         	mov	r3, r1
  383314: e9cd 230a    	strd	r2, r3, [sp, #40]
  383318: ed9d 6b0c    	vldr	d6, [sp, #48]
  38331c: ed9d 7b0e    	vldr	d7, [sp, #56]
  383320: ab14         	add	r3, sp, #0x50
  383322: 4618         	mov	r0, r3
  383324: eeb0 0b46    	vmov.f64	d0, d6
  383328: eeb0 1b47    	vmov.f64	d1, d7
  38332c: f7fd fd9e    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x24c4
  383330: ab14         	add	r3, sp, #0x50
  383332: cb0f         	ldm	r3, {r0, r1, r2, r3}
  383334: f353 fec0    	bl	0x6d70b8 <cpvlength>    @ imm = #0x353d80
  383338: ec41 0b17    	vmov	d7, r0, r1
  38333c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  383340: edcd 7a04    	vstr	s15, [sp, #16]
  383344: ab0c         	add	r3, sp, #0x30
  383346: cb0f         	ldm	r3, {r0, r1, r2, r3}
  383348: f7fd fec6    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x2274
  38334c: 9005         	str	r0, [sp, #0x14]
  38334e: eddd 7a04    	vldr	s15, [sp, #16]
  383352: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  383356: ed9f 7b52    	vldr	d7, [pc, #328]          @ 0x3834a0 <NetworkMessageDispatcher::getMotionData()+0x230>
  38335a: ee26 7b07    	vmul.f64	d7, d6, d7
  38335e: eefd 6bc7    	vcvt.s32.f64	s13, d7
  383362: ee16 3a90    	vmov	r3, s13
  383366: f88d 300b    	strb.w	r3, [sp, #0xb]
  38336a: 4b54         	ldr	r3, [pc, #0x150]        @ 0x3834bc <NetworkMessageDispatcher::getMotionData()+0x24c>
  38336c: 58e3         	ldr	r3, [r4, r3]
  38336e: ed93 7a00    	vldr	s14, [r3]
  383372: eddd 7a05    	vldr	s15, [sp, #20]
  383376: ee67 7a27    	vmul.f32	s15, s14, s15
  38337a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  38337e: ee17 3a90    	vmov	r3, s15
  383382: f88d 300c    	strb.w	r3, [sp, #0xc]
  383386: ed9d 6b10    	vldr	d6, [sp, #64]
  38338a: ed9d 7b12    	vldr	d7, [sp, #72]
  38338e: ab18         	add	r3, sp, #0x60
  383390: 4618         	mov	r0, r3
  383392: eeb0 0b46    	vmov.f64	d0, d6
  383396: eeb0 1b47    	vmov.f64	d1, d7
  38339a: f7fd fd67    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x2532
  38339e: ab18         	add	r3, sp, #0x60
  3833a0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3833a2: f353 fe89    	bl	0x6d70b8 <cpvlength>    @ imm = #0x353d12
  3833a6: ec41 0b17    	vmov	d7, r0, r1
  3833aa: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3833ae: edcd 7a06    	vstr	s15, [sp, #24]
  3833b2: ab10         	add	r3, sp, #0x40
  3833b4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3833b6: f7fd fe8f    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x22e2
  3833ba: 9007         	str	r0, [sp, #0x1c]
  3833bc: ed9d 7a06    	vldr	s14, [sp, #24]
  3833c0: eddf 7a3b    	vldr	s15, [pc, #236]         @ 0x3834b0 <NetworkMessageDispatcher::getMotionData()+0x240>
  3833c4: ee67 7a27    	vmul.f32	s15, s14, s15
  3833c8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3833cc: ee17 3a90    	vmov	r3, s15
  3833d0: f88d 300d    	strb.w	r3, [sp, #0xd]
  3833d4: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x3834bc <NetworkMessageDispatcher::getMotionData()+0x24c>
  3833d6: 58e3         	ldr	r3, [r4, r3]
  3833d8: ed93 7a00    	vldr	s14, [r3]
  3833dc: eddd 7a07    	vldr	s15, [sp, #28]
  3833e0: ee67 7a27    	vmul.f32	s15, s14, s15
  3833e4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3833e8: ee17 3a90    	vmov	r3, s15
  3833ec: f88d 300e    	strb.w	r3, [sp, #0xe]
  3833f0: ed9d 6b0a    	vldr	d6, [sp, #40]
  3833f4: ed9f 7b2c    	vldr	d7, [pc, #176]          @ 0x3834a8 <NetworkMessageDispatcher::getMotionData()+0x238>
  3833f8: ee26 7b07    	vmul.f64	d7, d6, d7
  3833fc: eefd 6bc7    	vcvt.s32.f64	s13, d7
  383400: ee16 3a90    	vmov	r3, s13
  383404: f88d 300f    	strb.w	r3, [sp, #0xf]
  383408: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3834c0 <NetworkMessageDispatcher::getMotionData()+0x250>
  38340a: 447b         	add	r3, pc
  38340c: 9308         	str	r3, [sp, #0x20]
  38340e: 9b08         	ldr	r3, [sp, #0x20]
  383410: f89d 200a    	ldrb.w	r2, [sp, #0xa]
  383414: 701a         	strb	r2, [r3]
  383416: 9b08         	ldr	r3, [sp, #0x20]
  383418: 3301         	adds	r3, #0x1
  38341a: 9308         	str	r3, [sp, #0x20]
  38341c: 9b08         	ldr	r3, [sp, #0x20]
  38341e: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  383422: 701a         	strb	r2, [r3]
  383424: 9b08         	ldr	r3, [sp, #0x20]
  383426: 3301         	adds	r3, #0x1
  383428: 9308         	str	r3, [sp, #0x20]
  38342a: 9b08         	ldr	r3, [sp, #0x20]
  38342c: f89d 200c    	ldrb.w	r2, [sp, #0xc]
  383430: 701a         	strb	r2, [r3]
  383432: 9b08         	ldr	r3, [sp, #0x20]
  383434: 3301         	adds	r3, #0x1
  383436: 9308         	str	r3, [sp, #0x20]
  383438: 9b08         	ldr	r3, [sp, #0x20]
  38343a: f89d 200d    	ldrb.w	r2, [sp, #0xd]
  38343e: 701a         	strb	r2, [r3]
  383440: 9b08         	ldr	r3, [sp, #0x20]
  383442: 3301         	adds	r3, #0x1
  383444: 9308         	str	r3, [sp, #0x20]
  383446: 9b08         	ldr	r3, [sp, #0x20]
  383448: f89d 200e    	ldrb.w	r2, [sp, #0xe]
  38344c: 701a         	strb	r2, [r3]
  38344e: 9b08         	ldr	r3, [sp, #0x20]
  383450: 3301         	adds	r3, #0x1
  383452: 9308         	str	r3, [sp, #0x20]
  383454: 9b08         	ldr	r3, [sp, #0x20]
  383456: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  38345a: 701a         	strb	r2, [r3]
  38345c: 9b08         	ldr	r3, [sp, #0x20]
  38345e: 3301         	adds	r3, #0x1
  383460: 9308         	str	r3, [sp, #0x20]
  383462: 201c         	movs	r0, #0x1c
  383464: f004 f27e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4044fc
  383468: 4603         	mov	r3, r0
  38346a: 461c         	mov	r4, r3
  38346c: 9a08         	ldr	r2, [sp, #0x20]
  38346e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3834c4 <NetworkMessageDispatcher::getMotionData()+0x254>
  383470: 447b         	add	r3, pc
  383472: 1ad3         	subs	r3, r2, r3
  383474: 4620         	mov	r0, r4
  383476: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3834c8 <NetworkMessageDispatcher::getMotionData()+0x258>
  383478: 447a         	add	r2, pc
  38347a: 4611         	mov	r1, r2
  38347c: 461a         	mov	r2, r3
  38347e: f0c0 feb5    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xc0d6a
  383482: 9409         	str	r4, [sp, #0x24]
  383484: 9b09         	ldr	r3, [sp, #0x24]
  383486: 4618         	mov	r0, r3
  383488: f214 fd38    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x214a70
  38348c: 9b09         	ldr	r3, [sp, #0x24]
  38348e: e004         	b	0x38349a <NetworkMessageDispatcher::getMotionData()+0x22a> @ imm = #0x8
  383490: 4620         	mov	r0, r4
  383492: f004 f607    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x404c0e
  383496: f004 f609    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x404c12
  38349a: 4618         	mov	r0, r3
  38349c: b01d         	add	sp, #0x74
  38349e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38349f); words below are literal-pool data ---
  3834a0: b852         	<unknown>
  3834a2: 851e         	strh	r6, [r3, #0x28]
  3834a4: 51eb         	str	r3, [r5, r7]
  3834a6: 3fe0         	subs	r7, #0xe0
  3834a8: 0000         	movs	r0, r0
  3834aa: 0000         	movs	r0, r0
  3834ac: e000         	b	0x3834b0 <NetworkMessageDispatcher::getMotionData()+0x240> @ imm = #0x0
  3834ae: 406f         	eors	r7, r5
  3834b0: 0000         	movs	r0, r0
  3834b2: 437f         	muls	r7, r7, r7
  3834b4: f790 005a    	<unknown>
  3834b8: d784         	bvc	0x3833c4 <NetworkMessageDispatcher::getMotionData()+0x154> @ imm = #-0xf8
  3834ba: ffff dcdc    	<unknown>
  3834be: ffff d6da    	<unknown>
  3834c2: 005b         	lsls	r3, r3, #0x1
  3834c4: d674         	bvs	0x3835b0 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0xe0> @ imm = #0xe8
  3834c6: 005b         	lsls	r3, r3, #0x1
  3834c8: d66c         	bvs	0x3835a4 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0xd4> @ imm = #0xd8
  3834ca: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::updatePeerMotion
//      file offset 0x3834d0 (= ELF address; Ghidra 0x3934d0), 704 bytes, Thumb-2
  3834d0: b510         	push	{r4, lr}
  3834d2: ed2d 8b02    	vpush	{d8}
  3834d6: b0a2         	sub	sp, #0x88
  3834d8: 9005         	str	r0, [sp, #0x14]
  3834da: 9104         	str	r1, [sp, #0x10]
  3834dc: 9203         	str	r2, [sp, #0xc]
  3834de: 9302         	str	r3, [sp, #0x8]
  3834e0: 4ca9         	ldr	r4, [pc, #0x2a4]        @ 0x383788 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2b8>
  3834e2: 447c         	add	r4, pc
  3834e4: f7f4 fb2c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb9a8
  3834e8: 4603         	mov	r3, r0
  3834ea: 4618         	mov	r0, r3
  3834ec: f7f6 fc4c    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0x9768
  3834f0: 4603         	mov	r3, r0
  3834f2: f083 0301    	eor	r3, r3, #0x1
  3834f6: b2db         	uxtb	r3, r3
  3834f8: 2b00         	cmp	r3, #0x0
  3834fa: d000         	beq	0x3834fe <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2e> @ imm = #0x0
  3834fc: e135         	b	0x38376a <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x29a> @ imm = #0x26a
  3834fe: ab1e         	add	r3, sp, #0x78
  383500: 4618         	mov	r0, r3
  383502: 9903         	ldr	r1, [sp, #0xc]
  383504: f032 f7f0    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x432fe0
  383508: ab1e         	add	r3, sp, #0x78
  38350a: 9805         	ldr	r0, [sp, #0x14]
  38350c: 4619         	mov	r1, r3
  38350e: f004 f931    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x4262
  383512: 4603         	mov	r3, r0
  383514: 9309         	str	r3, [sp, #0x24]
  383516: ab1e         	add	r3, sp, #0x78
  383518: 4618         	mov	r0, r3
  38351a: f032 f1fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4323f6
  38351e: 9b09         	ldr	r3, [sp, #0x24]
  383520: 2b00         	cmp	r3, #0x0
  383522: f000 8122    	beq.w	0x38376a <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x29a> @ imm = #0x244
  383526: 9804         	ldr	r0, [sp, #0x10]
  383528: f0c0 ff06    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc0e0c
  38352c: 4603         	mov	r3, r0
  38352e: 930a         	str	r3, [sp, #0x28]
  383530: 9b0a         	ldr	r3, [sp, #0x28]
  383532: 3301         	adds	r3, #0x1
  383534: 930a         	str	r3, [sp, #0x28]
  383536: 9b0a         	ldr	r3, [sp, #0x28]
  383538: 781b         	ldrb	r3, [r3]
  38353a: f88d 301f    	strb.w	r3, [sp, #0x1f]
  38353e: 9b0a         	ldr	r3, [sp, #0x28]
  383540: 3301         	adds	r3, #0x1
  383542: 930a         	str	r3, [sp, #0x28]
  383544: 9b0a         	ldr	r3, [sp, #0x28]
  383546: 781b         	ldrb	r3, [r3]
  383548: f88d 3020    	strb.w	r3, [sp, #0x20]
  38354c: 9b0a         	ldr	r3, [sp, #0x28]
  38354e: 3301         	adds	r3, #0x1
  383550: 930a         	str	r3, [sp, #0x28]
  383552: 9b0a         	ldr	r3, [sp, #0x28]
  383554: 781b         	ldrb	r3, [r3]
  383556: f88d 3021    	strb.w	r3, [sp, #0x21]
  38355a: 9b0a         	ldr	r3, [sp, #0x28]
  38355c: 3301         	adds	r3, #0x1
  38355e: 930a         	str	r3, [sp, #0x28]
  383560: 9b0a         	ldr	r3, [sp, #0x28]
  383562: 781b         	ldrb	r3, [r3]
  383564: f88d 3022    	strb.w	r3, [sp, #0x22]
  383568: 9b0a         	ldr	r3, [sp, #0x28]
  38356a: 3301         	adds	r3, #0x1
  38356c: 930a         	str	r3, [sp, #0x28]
  38356e: 9b0a         	ldr	r3, [sp, #0x28]
  383570: 781b         	ldrb	r3, [r3]
  383572: f88d 3023    	strb.w	r3, [sp, #0x23]
  383576: 9b0a         	ldr	r3, [sp, #0x28]
  383578: 3301         	adds	r3, #0x1
  38357a: 930a         	str	r3, [sp, #0x28]
  38357c: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  383580: ee07 3a10    	vmov	s14, r3
  383584: eef8 7a47    	vcvt.f32.u32	s15, s14
  383588: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38358c: ed9f 7b7a    	vldr	d7, [pc, #488]          @ 0x383778 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2a8>
  383590: ee26 7b07    	vmul.f64	d7, d6, d7
  383594: eef7 7bc7    	vcvt.f32.f64	s15, d7
  383598: edcd 7a0b    	vstr	s15, [sp, #44]
  38359c: f89d 3020    	ldrb.w	r3, [sp, #0x20]
  3835a0: ee07 3a90    	vmov	s15, r3
  3835a4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3835a8: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x38378c <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2bc>
  3835aa: 58e3         	ldr	r3, [r4, r3]
  3835ac: edd3 7a00    	vldr	s15, [r3]
  3835b0: ee67 7a27    	vmul.f32	s15, s14, s15
  3835b4: edcd 7a0c    	vstr	s15, [sp, #48]
  3835b8: ed9d 7a0c    	vldr	s14, [sp, #48]
  3835bc: eddf 7a70    	vldr	s15, [pc, #448]         @ 0x383780 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2b0>
  3835c0: ee67 7a27    	vmul.f32	s15, s14, s15
  3835c4: eef1 7a67    	vneg.f32	s15, s15
  3835c8: edcd 7a0d    	vstr	s15, [sp, #52]
  3835cc: 980d         	ldr	r0, [sp, #0x34]
  3835ce: f7a5 ff55    	bl	0x32947c <std::cos(float)> @ imm = #-0x5a156
  3835d2: ee07 0a90    	vmov	s15, r0
  3835d6: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3835da: 980d         	ldr	r0, [sp, #0x34]
  3835dc: f7a5 ff66    	bl	0x3294ac <std::sin(float)> @ imm = #-0x5a134
  3835e0: ee07 0a90    	vmov	s15, r0
  3835e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3835e8: ab1a         	add	r3, sp, #0x68
  3835ea: 4618         	mov	r0, r3
  3835ec: eeb0 0b48    	vmov.f64	d0, d8
  3835f0: eeb0 1b47    	vmov.f64	d1, d7
  3835f4: f7fd fc3a    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x278c
  3835f8: eddd 7a0b    	vldr	s15, [sp, #44]
  3835fc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  383600: ab12         	add	r3, sp, #0x48
  383602: ed9d 5b1a    	vldr	d5, [sp, #104]
  383606: ed9d 6b1c    	vldr	d6, [sp, #112]
  38360a: 4618         	mov	r0, r3
  38360c: eeb0 0b45    	vmov.f64	d0, d5
  383610: eeb0 1b46    	vmov.f64	d1, d6
  383614: eeb0 2b47    	vmov.f64	d2, d7
  383618: f7fd fc68    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x2730
  38361c: f89d 3021    	ldrb.w	r3, [sp, #0x21]
  383620: ee07 3a90    	vmov	s15, r3
  383624: eeb8 7a67    	vcvt.f32.u32	s14, s15
  383628: eddf 7a56    	vldr	s15, [pc, #344]         @ 0x383784 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2b4>
  38362c: eec7 7a27    	vdiv.f32	s15, s14, s15
  383630: edcd 7a0e    	vstr	s15, [sp, #56]
  383634: f89d 3022    	ldrb.w	r3, [sp, #0x22]
  383638: ee07 3a90    	vmov	s15, r3
  38363c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  383640: 4b52         	ldr	r3, [pc, #0x148]        @ 0x38378c <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2bc>
  383642: 58e3         	ldr	r3, [r4, r3]
  383644: edd3 7a00    	vldr	s15, [r3]
  383648: ee67 7a27    	vmul.f32	s15, s14, s15
  38364c: edcd 7a0f    	vstr	s15, [sp, #60]
  383650: ed9d 7a0f    	vldr	s14, [sp, #60]
  383654: eddf 7a4a    	vldr	s15, [pc, #296]         @ 0x383780 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2b0>
  383658: ee67 7a27    	vmul.f32	s15, s14, s15
  38365c: eef1 7a67    	vneg.f32	s15, s15
  383660: edcd 7a10    	vstr	s15, [sp, #64]
  383664: 9810         	ldr	r0, [sp, #0x40]
  383666: f7a5 ff09    	bl	0x32947c <std::cos(float)> @ imm = #-0x5a1ee
  38366a: ee07 0a90    	vmov	s15, r0
  38366e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  383672: 9810         	ldr	r0, [sp, #0x40]
  383674: f7a5 ff1a    	bl	0x3294ac <std::sin(float)> @ imm = #-0x5a1cc
  383678: ee07 0a90    	vmov	s15, r0
  38367c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  383680: ab1e         	add	r3, sp, #0x78
  383682: 4618         	mov	r0, r3
  383684: eeb0 0b48    	vmov.f64	d0, d8
  383688: eeb0 1b47    	vmov.f64	d1, d7
  38368c: f7fd fbee    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x2824
  383690: eddd 7a0e    	vldr	s15, [sp, #56]
  383694: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  383698: ab16         	add	r3, sp, #0x58
  38369a: ed9d 5b1e    	vldr	d5, [sp, #120]
  38369e: ed9d 6b20    	vldr	d6, [sp, #128]
  3836a2: 4618         	mov	r0, r3
  3836a4: eeb0 0b45    	vmov.f64	d0, d5
  3836a8: eeb0 1b46    	vmov.f64	d1, d6
  3836ac: eeb0 2b47    	vmov.f64	d2, d7
  3836b0: f7fd fc1c    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x27c8
  3836b4: f89d 3023    	ldrb.w	r3, [sp, #0x23]
  3836b8: ee07 3a90    	vmov	s15, r3
  3836bc: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3836c0: eddf 7a30    	vldr	s15, [pc, #192]         @ 0x383784 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x2b4>
  3836c4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3836c8: edcd 7a11    	vstr	s15, [sp, #68]
  3836cc: 9b09         	ldr	r3, [sp, #0x24]
  3836ce: 681b         	ldr	r3, [r3]
  3836d0: f503 732a    	add.w	r3, r3, #0x2a8
  3836d4: 681c         	ldr	r4, [r3]
  3836d6: 466b         	mov	r3, sp
  3836d8: aa14         	add	r2, sp, #0x50
  3836da: e892 0003    	ldm.w	r2, {r0, r1}
  3836de: e883 0003    	stm.w	r3, {r0, r1}
  3836e2: ab12         	add	r3, sp, #0x48
  3836e4: cb0c         	ldm	r3, {r2, r3}
  3836e6: 9809         	ldr	r0, [sp, #0x24]
  3836e8: 47a0         	blx	r4
  3836ea: 9b09         	ldr	r3, [sp, #0x24]
  3836ec: 681b         	ldr	r3, [r3]
  3836ee: f503 730c    	add.w	r3, r3, #0x230
  3836f2: 681c         	ldr	r4, [r3]
  3836f4: 466b         	mov	r3, sp
  3836f6: aa18         	add	r2, sp, #0x60
  3836f8: e892 0003    	ldm.w	r2, {r0, r1}
  3836fc: e883 0003    	stm.w	r3, {r0, r1}
  383700: ab16         	add	r3, sp, #0x58
  383702: cb0c         	ldm	r3, {r2, r3}
  383704: 9809         	ldr	r0, [sp, #0x24]
  383706: 47a0         	blx	r4
  383708: 9b09         	ldr	r3, [sp, #0x24]
  38370a: 681b         	ldr	r3, [r3]
  38370c: f503 7328    	add.w	r3, r3, #0x2a0
  383710: 6819         	ldr	r1, [r3]
  383712: eddd 7a11    	vldr	s15, [sp, #68]
  383716: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38371a: 9809         	ldr	r0, [sp, #0x24]
  38371c: ec53 2b17    	vmov	r2, r3, d7
  383720: 4788         	blx	r1
  383722: 9b09         	ldr	r3, [sp, #0x24]
  383724: 681b         	ldr	r3, [r3]
  383726: f503 731a    	add.w	r3, r3, #0x268
  38372a: 681b         	ldr	r3, [r3]
  38372c: 9a02         	ldr	r2, [sp, #0x8]
  38372e: 2a15         	cmp	r2, #0x15
  383730: bf14         	ite	ne
  383732: 2200         	movne	r2, #0x0
  383734: 2201         	moveq	r2, #0x1
  383736: b2d2         	uxtb	r2, r2
  383738: 9809         	ldr	r0, [sp, #0x24]
  38373a: 4611         	mov	r1, r2
  38373c: 4798         	blx	r3
  38373e: 9b09         	ldr	r3, [sp, #0x24]
  383740: 681b         	ldr	r3, [r3]
  383742: f503 73ce    	add.w	r3, r3, #0x19c
  383746: 681b         	ldr	r3, [r3]
  383748: 9909         	ldr	r1, [sp, #0x24]
  38374a: 9a02         	ldr	r2, [sp, #0x8]
  38374c: 2a16         	cmp	r2, #0x16
  38374e: bf14         	ite	ne
  383750: 2200         	movne	r2, #0x0
  383752: 2201         	moveq	r2, #0x1
  383754: b2d2         	uxtb	r2, r2
  383756: 4608         	mov	r0, r1
  383758: 4611         	mov	r1, r2
  38375a: 4798         	blx	r3
  38375c: e006         	b	0x38376c <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x29c> @ imm = #0xc
  38375e: ab1e         	add	r3, sp, #0x78
  383760: 4618         	mov	r0, r3
  383762: f032 f0d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4321ae
  383766: f004 f4a1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x404942
  38376a: bf00         	nop
  38376c: b022         	add	sp, #0x88
  38376e: ecbd 8b02    	vpop	{d8}
  383772: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x383773); words below are literal-pool data ---
  383774: f3af 8000    	nop.w
  383778: 6a01         	ldr	r1, [r0, #0x20]
  38377a: d96a         	bls	0x383852 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0xc2> @ imm = #0xd4
  38377c: 5f5a         	ldrsh	r2, [r3, r5]
  38377e: 3fff         	subs	r7, #0xff
  383780: fa35 3c8e    	<unknown>
  383784: 0000         	movs	r0, r0
  383786: 437f         	muls	r7, r7, r7
  383788: f526 005a    	<unknown>
  38378c: dce0         	bgt	0x383750 <NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int)+0x280> @ imm = #-0x40
  38378e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== NetworkMessageDispatcher::updatePeerWeaponChange
//      file offset 0x383790 (= ELF address; Ghidra 0x393790), 610 bytes, Thumb-2
  383790: b510         	push	{r4, lr}
  383792: b08e         	sub	sp, #0x38
  383794: 9003         	str	r0, [sp, #0xc]
  383796: 9102         	str	r1, [sp, #0x8]
  383798: 9201         	str	r2, [sp, #0x4]
  38379a: f7f4 f9d1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xbc5e
  38379e: 4603         	mov	r3, r0
  3837a0: 4618         	mov	r0, r3
  3837a2: f7f6 faf1    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0x9a1e
  3837a6: 4603         	mov	r3, r0
  3837a8: f083 0301    	eor	r3, r3, #0x1
  3837ac: b2db         	uxtb	r3, r3
  3837ae: 2b00         	cmp	r3, #0x0
  3837b0: d000         	beq	0x3837b4 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  3837b2: e11b         	b	0x3839ec <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x25c> @ imm = #0x236
  3837b4: ab07         	add	r3, sp, #0x1c
  3837b6: 4618         	mov	r0, r3
  3837b8: 9901         	ldr	r1, [sp, #0x4]
  3837ba: f032 f695    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x432d2a
  3837be: ab07         	add	r3, sp, #0x1c
  3837c0: 9803         	ldr	r0, [sp, #0xc]
  3837c2: 4619         	mov	r1, r3
  3837c4: f003 ffd6    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x3fac
  3837c8: 4603         	mov	r3, r0
  3837ca: 9308         	str	r3, [sp, #0x20]
  3837cc: ab07         	add	r3, sp, #0x1c
  3837ce: 4618         	mov	r0, r3
  3837d0: f032 f0a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x432140
  3837d4: 9b08         	ldr	r3, [sp, #0x20]
  3837d6: 2b00         	cmp	r3, #0x0
  3837d8: f000 8108    	beq.w	0x3839ec <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x25c> @ imm = #0x210
  3837dc: 9802         	ldr	r0, [sp, #0x8]
  3837de: f0c0 fdab    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc0b56
  3837e2: 4603         	mov	r3, r0
  3837e4: 9309         	str	r3, [sp, #0x24]
  3837e6: 9b09         	ldr	r3, [sp, #0x24]
  3837e8: 3301         	adds	r3, #0x1
  3837ea: 9309         	str	r3, [sp, #0x24]
  3837ec: 9b09         	ldr	r3, [sp, #0x24]
  3837ee: 881b         	ldrh	r3, [r3]
  3837f0: f8ad 3014    	strh.w	r3, [sp, #0x14]
  3837f4: 9b09         	ldr	r3, [sp, #0x24]
  3837f6: 3302         	adds	r3, #0x2
  3837f8: 9309         	str	r3, [sp, #0x24]
  3837fa: 9b09         	ldr	r3, [sp, #0x24]
  3837fc: 881b         	ldrh	r3, [r3]
  3837fe: f8ad 3016    	strh.w	r3, [sp, #0x16]
  383802: 9b09         	ldr	r3, [sp, #0x24]
  383804: 3302         	adds	r3, #0x2
  383806: 9309         	str	r3, [sp, #0x24]
  383808: 9b09         	ldr	r3, [sp, #0x24]
  38380a: 881b         	ldrh	r3, [r3]
  38380c: f8ad 3018    	strh.w	r3, [sp, #0x18]
  383810: 9b09         	ldr	r3, [sp, #0x24]
  383812: 3302         	adds	r3, #0x2
  383814: 9309         	str	r3, [sp, #0x24]
  383816: 9b09         	ldr	r3, [sp, #0x24]
  383818: 881b         	ldrh	r3, [r3]
  38381a: f8ad 301a    	strh.w	r3, [sp, #0x1a]
  38381e: 9b09         	ldr	r3, [sp, #0x24]
  383820: 3302         	adds	r3, #0x2
  383822: 9309         	str	r3, [sp, #0x24]
  383824: 9b08         	ldr	r3, [sp, #0x20]
  383826: 681b         	ldr	r3, [r3]
  383828: f503 73fa    	add.w	r3, r3, #0x1f4
  38382c: 681b         	ldr	r3, [r3]
  38382e: 9808         	ldr	r0, [sp, #0x20]
  383830: 4798         	blx	r3
  383832: 4603         	mov	r3, r0
  383834: 930a         	str	r3, [sp, #0x28]
  383836: 9b08         	ldr	r3, [sp, #0x20]
  383838: 681b         	ldr	r3, [r3]
  38383a: f503 73fc    	add.w	r3, r3, #0x1f8
  38383e: 681b         	ldr	r3, [r3]
  383840: 9808         	ldr	r0, [sp, #0x20]
  383842: 4798         	blx	r3
  383844: 4603         	mov	r3, r0
  383846: 930b         	str	r3, [sp, #0x2c]
  383848: 9b08         	ldr	r3, [sp, #0x20]
  38384a: 681b         	ldr	r3, [r3]
  38384c: f503 7300    	add.w	r3, r3, #0x200
  383850: 681b         	ldr	r3, [r3]
  383852: 9a08         	ldr	r2, [sp, #0x20]
  383854: 4610         	mov	r0, r2
  383856: 4798         	blx	r3
  383858: 4603         	mov	r3, r0
  38385a: 930c         	str	r3, [sp, #0x30]
  38385c: 9b08         	ldr	r3, [sp, #0x20]
  38385e: 681b         	ldr	r3, [r3]
  383860: f503 73fe    	add.w	r3, r3, #0x1fc
  383864: 681b         	ldr	r3, [r3]
  383866: 9808         	ldr	r0, [sp, #0x20]
  383868: 4798         	blx	r3
  38386a: 4603         	mov	r3, r0
  38386c: 930d         	str	r3, [sp, #0x34]
  38386e: 9b0a         	ldr	r3, [sp, #0x28]
  383870: 2b00         	cmp	r3, #0x0
  383872: d00b         	beq	0x38388c <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0xfc> @ imm = #0x16
  383874: 9b0a         	ldr	r3, [sp, #0x28]
  383876: 681b         	ldr	r3, [r3]
  383878: f503 731f    	add.w	r3, r3, #0x27c
  38387c: 681b         	ldr	r3, [r3]
  38387e: 980a         	ldr	r0, [sp, #0x28]
  383880: 4798         	blx	r3
  383882: 4602         	mov	r2, r0
  383884: f9bd 3014    	ldrsh.w	r3, [sp, #0x14]
  383888: 429a         	cmp	r2, r3
  38388a: d001         	beq	0x383890 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x100> @ imm = #0x2
  38388c: 2301         	movs	r3, #0x1
  38388e: e000         	b	0x383892 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x102> @ imm = #0x0
  383890: 2300         	movs	r3, #0x0
  383892: 2b00         	cmp	r3, #0x0
  383894: d019         	beq	0x3838ca <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x13a> @ imm = #0x32
  383896: 9b08         	ldr	r3, [sp, #0x20]
  383898: 681b         	ldr	r3, [r3]
  38389a: f503 7302    	add.w	r3, r3, #0x208
  38389e: 681b         	ldr	r3, [r3]
  3838a0: 9808         	ldr	r0, [sp, #0x20]
  3838a2: 4798         	blx	r3
  3838a4: f9bd 3014    	ldrsh.w	r3, [sp, #0x14]
  3838a8: 2b00         	cmp	r3, #0x0
  3838aa: dd0e         	ble	0x3838ca <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x13a> @ imm = #0x1c
  3838ac: 9b08         	ldr	r3, [sp, #0x20]
  3838ae: 681b         	ldr	r3, [r3]
  3838b0: f503 7305    	add.w	r3, r3, #0x214
  3838b4: 681c         	ldr	r4, [r3]
  3838b6: f9bd 3014    	ldrsh.w	r3, [sp, #0x14]
  3838ba: 9803         	ldr	r0, [sp, #0xc]
  3838bc: 4619         	mov	r1, r3
  3838be: f7ff f86d    	bl	0x38299c <NetworkMessageDispatcher::createWeaponFromType(int)> @ imm = #-0xf26
  3838c2: 4603         	mov	r3, r0
  3838c4: 9808         	ldr	r0, [sp, #0x20]
  3838c6: 4619         	mov	r1, r3
  3838c8: 47a0         	blx	r4
  3838ca: 9b0b         	ldr	r3, [sp, #0x2c]
  3838cc: 2b00         	cmp	r3, #0x0
  3838ce: d00b         	beq	0x3838e8 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x158> @ imm = #0x16
  3838d0: 9b0b         	ldr	r3, [sp, #0x2c]
  3838d2: 681b         	ldr	r3, [r3]
  3838d4: f503 731f    	add.w	r3, r3, #0x27c
  3838d8: 681b         	ldr	r3, [r3]
  3838da: 980b         	ldr	r0, [sp, #0x2c]
  3838dc: 4798         	blx	r3
  3838de: 4602         	mov	r2, r0
  3838e0: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  3838e4: 429a         	cmp	r2, r3
  3838e6: d001         	beq	0x3838ec <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x15c> @ imm = #0x2
  3838e8: 2301         	movs	r3, #0x1
  3838ea: e000         	b	0x3838ee <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x15e> @ imm = #0x0
  3838ec: 2300         	movs	r3, #0x0
  3838ee: 2b00         	cmp	r3, #0x0
  3838f0: d019         	beq	0x383926 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x196> @ imm = #0x32
  3838f2: 9b08         	ldr	r3, [sp, #0x20]
  3838f4: 681b         	ldr	r3, [r3]
  3838f6: f503 7301    	add.w	r3, r3, #0x204
  3838fa: 681b         	ldr	r3, [r3]
  3838fc: 9808         	ldr	r0, [sp, #0x20]
  3838fe: 4798         	blx	r3
  383900: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  383904: 2b00         	cmp	r3, #0x0
  383906: dd0e         	ble	0x383926 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x196> @ imm = #0x1c
  383908: 9b08         	ldr	r3, [sp, #0x20]
  38390a: 681b         	ldr	r3, [r3]
  38390c: f503 7306    	add.w	r3, r3, #0x218
  383910: 681c         	ldr	r4, [r3]
  383912: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  383916: 9803         	ldr	r0, [sp, #0xc]
  383918: 4619         	mov	r1, r3
  38391a: f7ff f83f    	bl	0x38299c <NetworkMessageDispatcher::createWeaponFromType(int)> @ imm = #-0xf82
  38391e: 4603         	mov	r3, r0
  383920: 9808         	ldr	r0, [sp, #0x20]
  383922: 4619         	mov	r1, r3
  383924: 47a0         	blx	r4
  383926: 9b0c         	ldr	r3, [sp, #0x30]
  383928: 2b00         	cmp	r3, #0x0
  38392a: d00b         	beq	0x383944 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x1b4> @ imm = #0x16
  38392c: 9b0c         	ldr	r3, [sp, #0x30]
  38392e: 681b         	ldr	r3, [r3]
  383930: f503 731f    	add.w	r3, r3, #0x27c
  383934: 681b         	ldr	r3, [r3]
  383936: 980c         	ldr	r0, [sp, #0x30]
  383938: 4798         	blx	r3
  38393a: 4602         	mov	r2, r0
  38393c: f9bd 3018    	ldrsh.w	r3, [sp, #0x18]
  383940: 429a         	cmp	r2, r3
  383942: d001         	beq	0x383948 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x1b8> @ imm = #0x2
  383944: 2301         	movs	r3, #0x1
  383946: e000         	b	0x38394a <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x1ba> @ imm = #0x0
  383948: 2300         	movs	r3, #0x0
  38394a: 2b00         	cmp	r3, #0x0
  38394c: d019         	beq	0x383982 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x1f2> @ imm = #0x32
  38394e: 9b08         	ldr	r3, [sp, #0x20]
  383950: 681b         	ldr	r3, [r3]
  383952: f503 7304    	add.w	r3, r3, #0x210
  383956: 681b         	ldr	r3, [r3]
  383958: 9808         	ldr	r0, [sp, #0x20]
  38395a: 4798         	blx	r3
  38395c: f9bd 3018    	ldrsh.w	r3, [sp, #0x18]
  383960: 2b00         	cmp	r3, #0x0
  383962: dd0e         	ble	0x383982 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x1f2> @ imm = #0x1c
  383964: 9b08         	ldr	r3, [sp, #0x20]
  383966: 681b         	ldr	r3, [r3]
  383968: f503 7308    	add.w	r3, r3, #0x220
  38396c: 681c         	ldr	r4, [r3]
  38396e: f9bd 3018    	ldrsh.w	r3, [sp, #0x18]
  383972: 9803         	ldr	r0, [sp, #0xc]
  383974: 4619         	mov	r1, r3
  383976: f7ff f811    	bl	0x38299c <NetworkMessageDispatcher::createWeaponFromType(int)> @ imm = #-0xfde
  38397a: 4603         	mov	r3, r0
  38397c: 9808         	ldr	r0, [sp, #0x20]
  38397e: 4619         	mov	r1, r3
  383980: 47a0         	blx	r4
  383982: 9b0d         	ldr	r3, [sp, #0x34]
  383984: 2b00         	cmp	r3, #0x0
  383986: d00b         	beq	0x3839a0 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x210> @ imm = #0x16
  383988: 9b0d         	ldr	r3, [sp, #0x34]
  38398a: 681b         	ldr	r3, [r3]
  38398c: f503 731f    	add.w	r3, r3, #0x27c
  383990: 681b         	ldr	r3, [r3]
  383992: 980d         	ldr	r0, [sp, #0x34]
  383994: 4798         	blx	r3
  383996: 4602         	mov	r2, r0
  383998: f9bd 301a    	ldrsh.w	r3, [sp, #0x1a]
  38399c: 429a         	cmp	r2, r3
  38399e: d001         	beq	0x3839a4 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x214> @ imm = #0x2
  3839a0: 2301         	movs	r3, #0x1
  3839a2: e000         	b	0x3839a6 <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x216> @ imm = #0x0
  3839a4: 2300         	movs	r3, #0x0
  3839a6: 2b00         	cmp	r3, #0x0
  3839a8: d019         	beq	0x3839de <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x24e> @ imm = #0x32
  3839aa: 9b08         	ldr	r3, [sp, #0x20]
  3839ac: 681b         	ldr	r3, [r3]
  3839ae: f503 7303    	add.w	r3, r3, #0x20c
  3839b2: 681b         	ldr	r3, [r3]
  3839b4: 9808         	ldr	r0, [sp, #0x20]
  3839b6: 4798         	blx	r3
  3839b8: f9bd 301a    	ldrsh.w	r3, [sp, #0x1a]
  3839bc: 2b00         	cmp	r3, #0x0
  3839be: dd0e         	ble	0x3839de <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x24e> @ imm = #0x1c
  3839c0: 9b08         	ldr	r3, [sp, #0x20]
  3839c2: 681b         	ldr	r3, [r3]
  3839c4: f503 7307    	add.w	r3, r3, #0x21c
  3839c8: 681c         	ldr	r4, [r3]
  3839ca: f9bd 301a    	ldrsh.w	r3, [sp, #0x1a]
  3839ce: 9803         	ldr	r0, [sp, #0xc]
  3839d0: 4619         	mov	r1, r3
  3839d2: f7fe ffe3    	bl	0x38299c <NetworkMessageDispatcher::createWeaponFromType(int)> @ imm = #-0x103a
  3839d6: 4603         	mov	r3, r0
  3839d8: 9808         	ldr	r0, [sp, #0x20]
  3839da: 4619         	mov	r1, r3
  3839dc: 47a0         	blx	r4
  3839de: e006         	b	0x3839ee <NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string)+0x25e> @ imm = #0xc
  3839e0: ab07         	add	r3, sp, #0x1c
  3839e2: 4618         	mov	r0, r3
  3839e4: f031 f796    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431f2c
  3839e8: f004 f360    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4046c0
  3839ec: bf00         	nop
  3839ee: b00e         	add	sp, #0x38
  3839f0: bd10         	pop	{r4, pc}

// ==== NetworkMessageDispatcher::updatePeerWeaponCreate
//      file offset 0x3839f4 (= ELF address; Ghidra 0x3939f4), 572 bytes, Thumb-2
  3839f4: b570         	push	{r4, r5, r6, lr}
  3839f6: b092         	sub	sp, #0x48
  3839f8: 9003         	str	r0, [sp, #0xc]
  3839fa: 9102         	str	r1, [sp, #0x8]
  3839fc: 9201         	str	r2, [sp, #0x4]
  3839fe: f7f4 f89f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xbec2
  383a02: 4603         	mov	r3, r0
  383a04: 4618         	mov	r0, r3
  383a06: f7f6 f9bf    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0x9c82
  383a0a: 4603         	mov	r3, r0
  383a0c: f083 0301    	eor	r3, r3, #0x1
  383a10: b2db         	uxtb	r3, r3
  383a12: 2b00         	cmp	r3, #0x0
  383a14: d000         	beq	0x383a18 <NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  383a16: e107         	b	0x383c28 <NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string)+0x234> @ imm = #0x20e
  383a18: 9802         	ldr	r0, [sp, #0x8]
  383a1a: f0c0 fc8d    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc091a
  383a1e: 4603         	mov	r3, r0
  383a20: 9309         	str	r3, [sp, #0x24]
  383a22: 9b09         	ldr	r3, [sp, #0x24]
  383a24: 3301         	adds	r3, #0x1
  383a26: 9309         	str	r3, [sp, #0x24]
  383a28: 9b09         	ldr	r3, [sp, #0x24]
  383a2a: 881b         	ldrh	r3, [r3]
  383a2c: f8ad 301a    	strh.w	r3, [sp, #0x1a]
  383a30: 9b09         	ldr	r3, [sp, #0x24]
  383a32: 3302         	adds	r3, #0x2
  383a34: 9309         	str	r3, [sp, #0x24]
  383a36: 9b09         	ldr	r3, [sp, #0x24]
  383a38: 881b         	ldrh	r3, [r3]
  383a3a: f8ad 301c    	strh.w	r3, [sp, #0x1c]
  383a3e: 9b09         	ldr	r3, [sp, #0x24]
  383a40: 3302         	adds	r3, #0x2
  383a42: 9309         	str	r3, [sp, #0x24]
  383a44: 9b09         	ldr	r3, [sp, #0x24]
  383a46: 881b         	ldrh	r3, [r3]
  383a48: f8ad 301e    	strh.w	r3, [sp, #0x1e]
  383a4c: 9b09         	ldr	r3, [sp, #0x24]
  383a4e: 3302         	adds	r3, #0x2
  383a50: 9309         	str	r3, [sp, #0x24]
  383a52: 9b09         	ldr	r3, [sp, #0x24]
  383a54: 781b         	ldrb	r3, [r3]
  383a56: f88d 3018    	strb.w	r3, [sp, #0x18]
  383a5a: 9b09         	ldr	r3, [sp, #0x24]
  383a5c: 3301         	adds	r3, #0x1
  383a5e: 9309         	str	r3, [sp, #0x24]
  383a60: 9b09         	ldr	r3, [sp, #0x24]
  383a62: 781b         	ldrb	r3, [r3]
  383a64: f88d 3019    	strb.w	r3, [sp, #0x19]
  383a68: 9b09         	ldr	r3, [sp, #0x24]
  383a6a: 3301         	adds	r3, #0x1
  383a6c: 9309         	str	r3, [sp, #0x24]
  383a6e: 9b09         	ldr	r3, [sp, #0x24]
  383a70: 881b         	ldrh	r3, [r3]
  383a72: f8ad 3020    	strh.w	r3, [sp, #0x20]
  383a76: 9b09         	ldr	r3, [sp, #0x24]
  383a78: 3302         	adds	r3, #0x2
  383a7a: 9309         	str	r3, [sp, #0x24]
  383a7c: 9b09         	ldr	r3, [sp, #0x24]
  383a7e: 881b         	ldrh	r3, [r3]
  383a80: f8ad 3022    	strh.w	r3, [sp, #0x22]
  383a84: 9b09         	ldr	r3, [sp, #0x24]
  383a86: 3302         	adds	r3, #0x2
  383a88: 9309         	str	r3, [sp, #0x24]
  383a8a: f9bd 3020    	ldrsh.w	r3, [sp, #0x20]
  383a8e: ee05 3a90    	vmov	s11, r3
  383a92: eeb8 6be5    	vcvt.f64.s32	d6, s11
  383a96: f9bd 3022    	ldrsh.w	r3, [sp, #0x22]
  383a9a: ee05 3a90    	vmov	s11, r3
  383a9e: eeb8 7be5    	vcvt.f64.s32	d7, s11
  383aa2: ab0e         	add	r3, sp, #0x38
  383aa4: 4618         	mov	r0, r3
  383aa6: eeb0 0b46    	vmov.f64	d0, d6
  383aaa: eeb0 1b47    	vmov.f64	d1, d7
  383aae: f7fd f9dd    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x2c46
  383ab2: 9802         	ldr	r0, [sp, #0x8]
  383ab4: f0c0 fc48    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc0890
  383ab8: 4604         	mov	r4, r0
  383aba: 9802         	ldr	r0, [sp, #0x8]
  383abc: f0c0 fc3c    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc0878
  383ac0: 4603         	mov	r3, r0
  383ac2: 461a         	mov	r2, r3
  383ac4: 9b09         	ldr	r3, [sp, #0x24]
  383ac6: 1ad3         	subs	r3, r2, r3
  383ac8: 4423         	add	r3, r4
  383aca: 9809         	ldr	r0, [sp, #0x24]
  383acc: 4619         	mov	r1, r3
  383ace: f215 ffd1    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x215fa2
  383ad2: 4603         	mov	r3, r0
  383ad4: 930a         	str	r3, [sp, #0x28]
  383ad6: 9802         	ldr	r0, [sp, #0x8]
  383ad8: f0c0 fc36    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc086c
  383adc: 4604         	mov	r4, r0
  383ade: 9802         	ldr	r0, [sp, #0x8]
  383ae0: f0c0 fc2a    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc0854
  383ae4: 4603         	mov	r3, r0
  383ae6: 461a         	mov	r2, r3
  383ae8: 9b09         	ldr	r3, [sp, #0x24]
  383aea: 1ad3         	subs	r3, r2, r3
  383aec: 4423         	add	r3, r4
  383aee: 9a09         	ldr	r2, [sp, #0x24]
  383af0: 4413         	add	r3, r2
  383af2: 9309         	str	r3, [sp, #0x24]
  383af4: f9bd 301a    	ldrsh.w	r3, [sp, #0x1a]
  383af8: 9803         	ldr	r0, [sp, #0xc]
  383afa: 4619         	mov	r1, r3
  383afc: f7fe ff4e    	bl	0x38299c <NetworkMessageDispatcher::createWeaponFromType(int)> @ imm = #-0x1164
  383b00: 4603         	mov	r3, r0
  383b02: 930b         	str	r3, [sp, #0x2c]
  383b04: 9b0b         	ldr	r3, [sp, #0x2c]
  383b06: 681b         	ldr	r3, [r3]
  383b08: f503 73fc    	add.w	r3, r3, #0x1f8
  383b0c: 681c         	ldr	r4, [r3]
  383b0e: 9d0b         	ldr	r5, [sp, #0x2c]
  383b10: 980a         	ldr	r0, [sp, #0x28]
  383b12: f215 ff09    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x215e12
  383b16: 4606         	mov	r6, r0
  383b18: ab05         	add	r3, sp, #0x14
  383b1a: 4618         	mov	r0, r3
  383b1c: f006 f46a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4068d4
  383b20: aa0c         	add	r2, sp, #0x30
  383b22: ab05         	add	r3, sp, #0x14
  383b24: 4610         	mov	r0, r2
  383b26: 4631         	mov	r1, r6
  383b28: 461a         	mov	r2, r3
  383b2a: f032 f799    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x432f32
  383b2e: ab0c         	add	r3, sp, #0x30
  383b30: 4628         	mov	r0, r5
  383b32: 4619         	mov	r1, r3
  383b34: 47a0         	blx	r4
  383b36: ab0c         	add	r3, sp, #0x30
  383b38: 4618         	mov	r0, r3
  383b3a: f031 f6eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431dd6
  383b3e: ab05         	add	r3, sp, #0x14
  383b40: 4618         	mov	r0, r3
  383b42: f006 f45b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4068b6
  383b46: 9b0b         	ldr	r3, [sp, #0x2c]
  383b48: 681b         	ldr	r3, [r3]
  383b4a: f503 7300    	add.w	r3, r3, #0x200
  383b4e: 681c         	ldr	r4, [r3]
  383b50: ab0c         	add	r3, sp, #0x30
  383b52: 4618         	mov	r0, r3
  383b54: 9901         	ldr	r1, [sp, #0x4]
  383b56: f032 f4c7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43298e
  383b5a: ab0c         	add	r3, sp, #0x30
  383b5c: 980b         	ldr	r0, [sp, #0x2c]
  383b5e: 4619         	mov	r1, r3
  383b60: 47a0         	blx	r4
  383b62: ab0c         	add	r3, sp, #0x30
  383b64: 4618         	mov	r0, r3
  383b66: f031 f6d5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431daa
  383b6a: 9b0b         	ldr	r3, [sp, #0x2c]
  383b6c: 681b         	ldr	r3, [r3]
  383b6e: f503 731e    	add.w	r3, r3, #0x278
  383b72: 681b         	ldr	r3, [r3]
  383b74: f9bd 201c    	ldrsh.w	r2, [sp, #0x1c]
  383b78: 980b         	ldr	r0, [sp, #0x2c]
  383b7a: 4611         	mov	r1, r2
  383b7c: 4798         	blx	r3
  383b7e: 9b0b         	ldr	r3, [sp, #0x2c]
  383b80: 681b         	ldr	r3, [r3]
  383b82: f503 7322    	add.w	r3, r3, #0x288
  383b86: 681b         	ldr	r3, [r3]
  383b88: f9bd 201e    	ldrsh.w	r2, [sp, #0x1e]
  383b8c: 980b         	ldr	r0, [sp, #0x2c]
  383b8e: 4611         	mov	r1, r2
  383b90: 4798         	blx	r3
  383b92: 9b0b         	ldr	r3, [sp, #0x2c]
  383b94: 681b         	ldr	r3, [r3]
  383b96: 334c         	adds	r3, #0x4c
  383b98: 681c         	ldr	r4, [r3]
  383b9a: 9d0b         	ldr	r5, [sp, #0x2c]
  383b9c: ed9d 7b0e    	vldr	d7, [sp, #56]
  383ba0: eef7 6bc7    	vcvt.f32.f64	s13, d7
  383ba4: ed9d 7b10    	vldr	d7, [sp, #64]
  383ba8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  383bac: ab0c         	add	r3, sp, #0x30
  383bae: 4618         	mov	r0, r3
  383bb0: ee16 1a90    	vmov	r1, s13
  383bb4: ee17 2a90    	vmov	r2, s15
  383bb8: f20f f89a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x20f134
  383bbc: ab0c         	add	r3, sp, #0x30
  383bbe: 4628         	mov	r0, r5
  383bc0: 4619         	mov	r1, r3
  383bc2: 47a0         	blx	r4
  383bc4: 9b0b         	ldr	r3, [sp, #0x2c]
  383bc6: 681b         	ldr	r3, [r3]
  383bc8: f503 7303    	add.w	r3, r3, #0x20c
  383bcc: 681b         	ldr	r3, [r3]
  383bce: 990b         	ldr	r1, [sp, #0x2c]
  383bd0: f89d 2018    	ldrb.w	r2, [sp, #0x18]
  383bd4: 4608         	mov	r0, r1
  383bd6: 4611         	mov	r1, r2
  383bd8: 4798         	blx	r3
  383bda: 9b0b         	ldr	r3, [sp, #0x2c]
  383bdc: 681b         	ldr	r3, [r3]
  383bde: f503 73d2    	add.w	r3, r3, #0x1a4
  383be2: 681b         	ldr	r3, [r3]
  383be4: 990b         	ldr	r1, [sp, #0x2c]
  383be6: f89d 2019    	ldrb.w	r2, [sp, #0x19]
  383bea: 4608         	mov	r0, r1
  383bec: 4611         	mov	r1, r2
  383bee: 4798         	blx	r3
  383bf0: f25c fd5e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25cabc
  383bf4: 4603         	mov	r3, r0
  383bf6: 4618         	mov	r0, r3
  383bf8: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x383c2c <NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string)+0x238>
  383bfa: 447b         	add	r3, pc
  383bfc: 4619         	mov	r1, r3
  383bfe: 9a0b         	ldr	r2, [sp, #0x2c]
  383c00: f25c ff94    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25cf28
  383c04: e010         	b	0x383c28 <NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string)+0x234> @ imm = #0x20
  383c06: ab0c         	add	r3, sp, #0x30
  383c08: 4618         	mov	r0, r3
  383c0a: f031 f683    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431d06
  383c0e: e7ff         	b	0x383c10 <NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string)+0x21c> @ imm = #-0x2
  383c10: ab05         	add	r3, sp, #0x14
  383c12: 4618         	mov	r0, r3
  383c14: f006 f3f2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4067e4
  383c18: f004 f248    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x404490
  383c1c: ab0c         	add	r3, sp, #0x30
  383c1e: 4618         	mov	r0, r3
  383c20: f031 f678    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431cf0
  383c24: f004 f242    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x404484
  383c28: b012         	add	sp, #0x48
  383c2a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x383c2b); words below are literal-pool data ---
  383c2c: ca42         	ldm	r2!, {r1, r6}
  383c2e: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerWeaponRemove
//      file offset 0x383c30 (= ELF address; Ghidra 0x393c30), 148 bytes, Thumb-2
  383c30: b510         	push	{r4, lr}
  383c32: b086         	sub	sp, #0x18
  383c34: 9003         	str	r0, [sp, #0xc]
  383c36: 9102         	str	r1, [sp, #0x8]
  383c38: 9201         	str	r2, [sp, #0x4]
  383c3a: f7f3 ff81    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xc0fe
  383c3e: 4603         	mov	r3, r0
  383c40: 4618         	mov	r0, r3
  383c42: f7f6 f8a1    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0x9ebe
  383c46: 4603         	mov	r3, r0
  383c48: f083 0301    	eor	r3, r3, #0x1
  383c4c: b2db         	uxtb	r3, r3
  383c4e: 2b00         	cmp	r3, #0x0
  383c50: d000         	beq	0x383c54 <NetworkMessageDispatcher::updatePeerWeaponRemove(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  383c52: e032         	b	0x383cba <NetworkMessageDispatcher::updatePeerWeaponRemove(cocos2d::extension::CCData*, std::string)+0x8a> @ imm = #0x64
  383c54: 9802         	ldr	r0, [sp, #0x8]
  383c56: f0c0 fb6f    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc06de
  383c5a: 4603         	mov	r3, r0
  383c5c: 9304         	str	r3, [sp, #0x10]
  383c5e: 9b04         	ldr	r3, [sp, #0x10]
  383c60: 3301         	adds	r3, #0x1
  383c62: 9304         	str	r3, [sp, #0x10]
  383c64: 9802         	ldr	r0, [sp, #0x8]
  383c66: f0c0 fb6f    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc06de
  383c6a: 4604         	mov	r4, r0
  383c6c: 9802         	ldr	r0, [sp, #0x8]
  383c6e: f0c0 fb63    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc06c6
  383c72: 4603         	mov	r3, r0
  383c74: 461a         	mov	r2, r3
  383c76: 9b04         	ldr	r3, [sp, #0x10]
  383c78: 1ad3         	subs	r3, r2, r3
  383c7a: 4423         	add	r3, r4
  383c7c: 9804         	ldr	r0, [sp, #0x10]
  383c7e: 4619         	mov	r1, r3
  383c80: f215 fef8    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x215df0
  383c84: 4603         	mov	r3, r0
  383c86: 9305         	str	r3, [sp, #0x14]
  383c88: 9802         	ldr	r0, [sp, #0x8]
  383c8a: f0c0 fb5d    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc06ba
  383c8e: 4604         	mov	r4, r0
  383c90: 9802         	ldr	r0, [sp, #0x8]
  383c92: f0c0 fb51    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc06a2
  383c96: 4603         	mov	r3, r0
  383c98: 461a         	mov	r2, r3
  383c9a: 9b04         	ldr	r3, [sp, #0x10]
  383c9c: 1ad3         	subs	r3, r2, r3
  383c9e: 4423         	add	r3, r4
  383ca0: 9a04         	ldr	r2, [sp, #0x10]
  383ca2: 4413         	add	r3, r2
  383ca4: 9304         	str	r3, [sp, #0x10]
  383ca6: f25c fd03    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25ca06
  383caa: 4603         	mov	r3, r0
  383cac: 4618         	mov	r0, r3
  383cae: 4b04         	ldr	r3, [pc, #0x10]         @ 0x383cc0 <NetworkMessageDispatcher::updatePeerWeaponRemove(cocos2d::extension::CCData*, std::string)+0x90>
  383cb0: 447b         	add	r3, pc
  383cb2: 4619         	mov	r1, r3
  383cb4: 9a05         	ldr	r2, [sp, #0x14]
  383cb6: f25c ff39    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25ce72
  383cba: b006         	add	sp, #0x18
  383cbc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x383cbd); words below are literal-pool data ---
  383cbe: bf00         	nop
  383cc0: c9a0         	ldm	r1!, {r5, r7}
  383cc2: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getWeaponUpdateData
//      file offset 0x383cc4 (= ELF address; Ghidra 0x393cc4), 472 bytes, Thumb-2
  383cc4: b5f0         	push	{r4, r5, r6, r7, lr}
  383cc6: b08f         	sub	sp, #0x3c
  383cc8: 9001         	str	r0, [sp, #0x4]
  383cca: 9100         	str	r1, [sp]
  383ccc: 4d6e         	ldr	r5, [pc, #0x1b8]        @ 0x383e88 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1c4>
  383cce: 447d         	add	r5, pc
  383cd0: 2313         	movs	r3, #0x13
  383cd2: f88d 300e    	strb.w	r3, [sp, #0xe]
  383cd6: 9b00         	ldr	r3, [sp]
  383cd8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  383cdc: ac0a         	add	r4, sp, #0x28
  383cde: 3328         	adds	r3, #0x28
  383ce0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  383ce2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  383ce6: 9b00         	ldr	r3, [sp]
  383ce8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  383cec: ed93 7b16    	vldr	d7, [r3, #88]
  383cf0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  383cf4: edcd 7a06    	vstr	s15, [sp, #24]
  383cf8: 9b00         	ldr	r3, [sp]
  383cfa: 681b         	ldr	r3, [r3]
  383cfc: f503 73fe    	add.w	r3, r3, #0x1fc
  383d00: 681b         	ldr	r3, [r3]
  383d02: 9a00         	ldr	r2, [sp]
  383d04: a904         	add	r1, sp, #0x10
  383d06: 4608         	mov	r0, r1
  383d08: 4611         	mov	r1, r2
  383d0a: 4798         	blx	r3
  383d0c: ab04         	add	r3, sp, #0x10
  383d0e: 4618         	mov	r0, r3
  383d10: f031 f2f6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4315ec
  383d14: 4607         	mov	r7, r0
  383d16: 9b00         	ldr	r3, [sp]
  383d18: 681b         	ldr	r3, [r3]
  383d1a: f503 73fe    	add.w	r3, r3, #0x1fc
  383d1e: 681b         	ldr	r3, [r3]
  383d20: 9a00         	ldr	r2, [sp]
  383d22: a905         	add	r1, sp, #0x14
  383d24: 4608         	mov	r0, r1
  383d26: 4611         	mov	r1, r2
  383d28: 4798         	blx	r3
  383d2a: ab05         	add	r3, sp, #0x14
  383d2c: 4618         	mov	r0, r3
  383d2e: f031 f195    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x43132a
  383d32: 4606         	mov	r6, r0
  383d34: 201c         	movs	r0, #0x1c
  383d36: f003 f615    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x403c2a
  383d3a: 4603         	mov	r3, r0
  383d3c: 461c         	mov	r4, r3
  383d3e: 4620         	mov	r0, r4
  383d40: 4639         	mov	r1, r7
  383d42: 4632         	mov	r2, r6
  383d44: f0c0 fa52    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xc04a4
  383d48: 9407         	str	r4, [sp, #0x1c]
  383d4a: ab05         	add	r3, sp, #0x14
  383d4c: 4618         	mov	r0, r3
  383d4e: f031 f5e1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431bc2
  383d52: ab04         	add	r3, sp, #0x10
  383d54: 4618         	mov	r0, r3
  383d56: f031 f5dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431bba
  383d5a: 9b07         	ldr	r3, [sp, #0x1c]
  383d5c: 4618         	mov	r0, r3
  383d5e: f214 f8cd    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21419a
  383d62: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x383e8c <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1c8>
  383d64: 58eb         	ldr	r3, [r5, r3]
  383d66: ed93 7a00    	vldr	s14, [r3]
  383d6a: eddd 7a06    	vldr	s15, [sp, #24]
  383d6e: ee67 7a27    	vmul.f32	s15, s14, s15
  383d72: eefd 7ae7    	vcvt.s32.f32	s15, s15
  383d76: ee17 3a90    	vmov	r3, s15
  383d7a: f88d 300f    	strb.w	r3, [sp, #0xf]
  383d7e: 9b00         	ldr	r3, [sp]
  383d80: 681b         	ldr	r3, [r3]
  383d82: f503 731f    	add.w	r3, r3, #0x27c
  383d86: 681b         	ldr	r3, [r3]
  383d88: 9800         	ldr	r0, [sp]
  383d8a: 4798         	blx	r3
  383d8c: 4603         	mov	r3, r0
  383d8e: 2b0c         	cmp	r3, #0xc
  383d90: d009         	beq	0x383da6 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0xe2> @ imm = #0x12
  383d92: 9b00         	ldr	r3, [sp]
  383d94: 681b         	ldr	r3, [r3]
  383d96: f503 731f    	add.w	r3, r3, #0x27c
  383d9a: 681b         	ldr	r3, [r3]
  383d9c: 9800         	ldr	r0, [sp]
  383d9e: 4798         	blx	r3
  383da0: 4603         	mov	r3, r0
  383da2: 2b02         	cmp	r3, #0x2
  383da4: d104         	bne	0x383db0 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0xec> @ imm = #0x8
  383da6: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  383daa: 2b00         	cmp	r3, #0x0
  383dac: d100         	bne	0x383db0 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0xec> @ imm = #0x0
  383dae: bf00         	nop
  383db0: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x383e90 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1cc>
  383db2: 447b         	add	r3, pc
  383db4: 9308         	str	r3, [sp, #0x20]
  383db6: 9b08         	ldr	r3, [sp, #0x20]
  383db8: f89d 200e    	ldrb.w	r2, [sp, #0xe]
  383dbc: 701a         	strb	r2, [r3]
  383dbe: 9b08         	ldr	r3, [sp, #0x20]
  383dc0: 3301         	adds	r3, #0x1
  383dc2: 9308         	str	r3, [sp, #0x20]
  383dc4: ed9d 7b0a    	vldr	d7, [sp, #40]
  383dc8: eefd 6bc7    	vcvt.s32.f64	s13, d7
  383dcc: ee16 3a90    	vmov	r3, s13
  383dd0: b29a         	uxth	r2, r3
  383dd2: 9b08         	ldr	r3, [sp, #0x20]
  383dd4: 801a         	strh	r2, [r3]
  383dd6: 9b08         	ldr	r3, [sp, #0x20]
  383dd8: 3302         	adds	r3, #0x2
  383dda: 9308         	str	r3, [sp, #0x20]
  383ddc: ed9d 7b0c    	vldr	d7, [sp, #48]
  383de0: eefd 6bc7    	vcvt.s32.f64	s13, d7
  383de4: ee16 3a90    	vmov	r3, s13
  383de8: b29a         	uxth	r2, r3
  383dea: 9b08         	ldr	r3, [sp, #0x20]
  383dec: 801a         	strh	r2, [r3]
  383dee: 9b08         	ldr	r3, [sp, #0x20]
  383df0: 3302         	adds	r3, #0x2
  383df2: 9308         	str	r3, [sp, #0x20]
  383df4: 9b08         	ldr	r3, [sp, #0x20]
  383df6: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  383dfa: 701a         	strb	r2, [r3]
  383dfc: 9b08         	ldr	r3, [sp, #0x20]
  383dfe: 3301         	adds	r3, #0x1
  383e00: 9308         	str	r3, [sp, #0x20]
  383e02: 9807         	ldr	r0, [sp, #0x1c]
  383e04: f0c0 fa98    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc0530
  383e08: 4604         	mov	r4, r0
  383e0a: 9807         	ldr	r0, [sp, #0x1c]
  383e0c: f0c0 fa9c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc0538
  383e10: 4603         	mov	r3, r0
  383e12: 9808         	ldr	r0, [sp, #0x20]
  383e14: 4621         	mov	r1, r4
  383e16: 461a         	mov	r2, r3
  383e18: f752 e894    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xaded8
  383e1c: 9807         	ldr	r0, [sp, #0x1c]
  383e1e: f0c0 fa93    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc0526
  383e22: 4603         	mov	r3, r0
  383e24: 9a08         	ldr	r2, [sp, #0x20]
  383e26: 4413         	add	r3, r2
  383e28: 9308         	str	r3, [sp, #0x20]
  383e2a: 201c         	movs	r0, #0x1c
  383e2c: f003 f59a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x403b34
  383e30: 4603         	mov	r3, r0
  383e32: 461c         	mov	r4, r3
  383e34: 9a08         	ldr	r2, [sp, #0x20]
  383e36: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x383e94 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1d0>
  383e38: 447b         	add	r3, pc
  383e3a: 1ad3         	subs	r3, r2, r3
  383e3c: 4620         	mov	r0, r4
  383e3e: 4a16         	ldr	r2, [pc, #0x58]         @ 0x383e98 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1d4>
  383e40: 447a         	add	r2, pc
  383e42: 4611         	mov	r1, r2
  383e44: 461a         	mov	r2, r3
  383e46: f0c0 f9d1    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xc03a2
  383e4a: 9409         	str	r4, [sp, #0x24]
  383e4c: 9b09         	ldr	r3, [sp, #0x24]
  383e4e: 4618         	mov	r0, r3
  383e50: f214 f854    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2140a8
  383e54: 9b09         	ldr	r3, [sp, #0x24]
  383e56: e013         	b	0x383e80 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1bc> @ imm = #0x26
  383e58: 4620         	mov	r0, r4
  383e5a: f004 f123    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x404246
  383e5e: e7ff         	b	0x383e60 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x19c> @ imm = #-0x2
  383e60: ab05         	add	r3, sp, #0x14
  383e62: 4618         	mov	r0, r3
  383e64: f031 f556    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431aac
  383e68: e7ff         	b	0x383e6a <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x1a6> @ imm = #-0x2
  383e6a: ab04         	add	r3, sp, #0x10
  383e6c: 4618         	mov	r0, r3
  383e6e: f031 f551    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431aa2
  383e72: f004 f11b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x404236
  383e76: 4620         	mov	r0, r4
  383e78: f004 f114    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x404228
  383e7c: f004 f116    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40422c
  383e80: 4618         	mov	r0, r3
  383e82: b00f         	add	sp, #0x3c
  383e84: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x383e85); words below are literal-pool data ---
  383e86: bf00         	nop
  383e88: ed3a 005a    	ldc	p0, c0, [r10, #-360]!
  383e8c: dcd8         	bgt	0x383e40 <NetworkMessageDispatcher::getWeaponUpdateData(Weapon*)+0x17c> @ imm = #-0x50
  383e8e: ffff cd32    	<unknown>
  383e92: 005b         	lsls	r3, r3, #0x1
  383e94: ccac         	ldm	r4!, {r2, r3, r5, r7}
  383e96: 005b         	lsls	r3, r3, #0x1
  383e98: cca4         	ldm	r4!, {r2, r5, r7}
  383e9a: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::updatePeerWeaponUpdate
//      file offset 0x383e9c (= ELF address; Ghidra 0x393e9c), 460 bytes, Thumb-2
  383e9c: b530         	push	{r4, r5, lr}
  383e9e: b091         	sub	sp, #0x44
  383ea0: 9003         	str	r0, [sp, #0xc]
  383ea2: 9102         	str	r1, [sp, #0x8]
  383ea4: 9201         	str	r2, [sp, #0x4]
  383ea6: 4c6c         	ldr	r4, [pc, #0x1b0]        @ 0x384058 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1bc>
  383ea8: 447c         	add	r4, pc
  383eaa: f7f3 fe49    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xc36e
  383eae: 4603         	mov	r3, r0
  383eb0: 4618         	mov	r0, r3
  383eb2: f7f5 ff69    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xa12e
  383eb6: 4603         	mov	r3, r0
  383eb8: f083 0301    	eor	r3, r3, #0x1
  383ebc: b2db         	uxtb	r3, r3
  383ebe: 2b00         	cmp	r3, #0x0
  383ec0: d000         	beq	0x383ec4 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x28> @ imm = #0x0
  383ec2: e0c6         	b	0x384052 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1b6> @ imm = #0x18c
  383ec4: 9802         	ldr	r0, [sp, #0x8]
  383ec6: f0c0 fa37    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc046e
  383eca: 4603         	mov	r3, r0
  383ecc: 9308         	str	r3, [sp, #0x20]
  383ece: 9b08         	ldr	r3, [sp, #0x20]
  383ed0: 3301         	adds	r3, #0x1
  383ed2: 9308         	str	r3, [sp, #0x20]
  383ed4: 9b08         	ldr	r3, [sp, #0x20]
  383ed6: 881b         	ldrh	r3, [r3]
  383ed8: f8ad 3018    	strh.w	r3, [sp, #0x18]
  383edc: 9b08         	ldr	r3, [sp, #0x20]
  383ede: 3302         	adds	r3, #0x2
  383ee0: 9308         	str	r3, [sp, #0x20]
  383ee2: 9b08         	ldr	r3, [sp, #0x20]
  383ee4: 881b         	ldrh	r3, [r3]
  383ee6: f8ad 301a    	strh.w	r3, [sp, #0x1a]
  383eea: 9b08         	ldr	r3, [sp, #0x20]
  383eec: 3302         	adds	r3, #0x2
  383eee: 9308         	str	r3, [sp, #0x20]
  383ef0: 9b08         	ldr	r3, [sp, #0x20]
  383ef2: 781b         	ldrb	r3, [r3]
  383ef4: f88d 3017    	strb.w	r3, [sp, #0x17]
  383ef8: 9b08         	ldr	r3, [sp, #0x20]
  383efa: 3301         	adds	r3, #0x1
  383efc: 9308         	str	r3, [sp, #0x20]
  383efe: 9802         	ldr	r0, [sp, #0x8]
  383f00: f0c0 fa22    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc0444
  383f04: 4605         	mov	r5, r0
  383f06: 9802         	ldr	r0, [sp, #0x8]
  383f08: f0c0 fa16    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc042c
  383f0c: 4603         	mov	r3, r0
  383f0e: 461a         	mov	r2, r3
  383f10: 9b08         	ldr	r3, [sp, #0x20]
  383f12: 1ad3         	subs	r3, r2, r3
  383f14: 442b         	add	r3, r5
  383f16: 9808         	ldr	r0, [sp, #0x20]
  383f18: 4619         	mov	r1, r3
  383f1a: f215 fdab    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x215b56
  383f1e: 4603         	mov	r3, r0
  383f20: 9309         	str	r3, [sp, #0x24]
  383f22: 9802         	ldr	r0, [sp, #0x8]
  383f24: f0c0 fa10    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xc0420
  383f28: 4605         	mov	r5, r0
  383f2a: 9802         	ldr	r0, [sp, #0x8]
  383f2c: f0c0 fa04    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xc0408
  383f30: 4603         	mov	r3, r0
  383f32: 461a         	mov	r2, r3
  383f34: 9b08         	ldr	r3, [sp, #0x20]
  383f36: 1ad3         	subs	r3, r2, r3
  383f38: 442b         	add	r3, r5
  383f3a: 9a08         	ldr	r2, [sp, #0x20]
  383f3c: 4413         	add	r3, r2
  383f3e: 9308         	str	r3, [sp, #0x20]
  383f40: f9bd 3018    	ldrsh.w	r3, [sp, #0x18]
  383f44: ee05 3a90    	vmov	s11, r3
  383f48: eeb8 6be5    	vcvt.f64.s32	d6, s11
  383f4c: f9bd 301a    	ldrsh.w	r3, [sp, #0x1a]
  383f50: ee05 3a90    	vmov	s11, r3
  383f54: eeb8 7be5    	vcvt.f64.s32	d7, s11
  383f58: ab0c         	add	r3, sp, #0x30
  383f5a: 4618         	mov	r0, r3
  383f5c: eeb0 0b46    	vmov.f64	d0, d6
  383f60: eeb0 1b47    	vmov.f64	d1, d7
  383f64: f7fc ff82    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x30fc
  383f68: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  383f6c: ee07 3a90    	vmov	s15, r3
  383f70: eeb8 7a67    	vcvt.f32.u32	s14, s15
  383f74: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x38405c <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1c0>
  383f76: 58e3         	ldr	r3, [r4, r3]
  383f78: edd3 7a00    	vldr	s15, [r3]
  383f7c: ee67 7a27    	vmul.f32	s15, s14, s15
  383f80: edcd 7a0a    	vstr	s15, [sp, #40]
  383f84: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x384060 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1c4>
  383f86: 58e3         	ldr	r3, [r4, r3]
  383f88: 681c         	ldr	r4, [r3]
  383f8a: 9809         	ldr	r0, [sp, #0x24]
  383f8c: f215 fccc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x215998
  383f90: 4605         	mov	r5, r0
  383f92: ab05         	add	r3, sp, #0x14
  383f94: 4618         	mov	r0, r3
  383f96: f006 f22d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40645a
  383f9a: aa07         	add	r2, sp, #0x1c
  383f9c: ab05         	add	r3, sp, #0x14
  383f9e: 4610         	mov	r0, r2
  383fa0: 4629         	mov	r1, r5
  383fa2: 461a         	mov	r2, r3
  383fa4: f032 f55c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x432ab8
  383fa8: ab07         	add	r3, sp, #0x1c
  383faa: 4620         	mov	r0, r4
  383fac: 4619         	mov	r1, r3
  383fae: f20f ff9f    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x20ff3e
  383fb2: 4603         	mov	r3, r0
  383fb4: 930b         	str	r3, [sp, #0x2c]
  383fb6: ab07         	add	r3, sp, #0x1c
  383fb8: 4618         	mov	r0, r3
  383fba: f031 f4ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431956
  383fbe: ab05         	add	r3, sp, #0x14
  383fc0: 4618         	mov	r0, r3
  383fc2: f006 f21b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x406436
  383fc6: 9b0b         	ldr	r3, [sp, #0x2c]
  383fc8: 2b00         	cmp	r3, #0x0
  383fca: d042         	beq	0x384052 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1b6> @ imm = #0x84
  383fcc: 9b0b         	ldr	r3, [sp, #0x2c]
  383fce: 681b         	ldr	r3, [r3]
  383fd0: f503 731f    	add.w	r3, r3, #0x27c
  383fd4: 681b         	ldr	r3, [r3]
  383fd6: 980b         	ldr	r0, [sp, #0x2c]
  383fd8: 4798         	blx	r3
  383fda: 4603         	mov	r3, r0
  383fdc: 2b0c         	cmp	r3, #0xc
  383fde: 9b0b         	ldr	r3, [sp, #0x2c]
  383fe0: 681b         	ldr	r3, [r3]
  383fe2: f503 7305    	add.w	r3, r3, #0x214
  383fe6: 681b         	ldr	r3, [r3]
  383fe8: 9a0b         	ldr	r2, [sp, #0x2c]
  383fea: 4610         	mov	r0, r2
  383fec: f04f 0100    	mov.w	r1, #0x0
  383ff0: 4798         	blx	r3
  383ff2: 9b0b         	ldr	r3, [sp, #0x2c]
  383ff4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  383ff8: ed9d 6b0c    	vldr	d6, [sp, #48]
  383ffc: ed9d 7b0e    	vldr	d7, [sp, #56]
  384000: 4618         	mov	r0, r3
  384002: eeb0 0b46    	vmov.f64	d0, d6
  384006: eeb0 1b47    	vmov.f64	d1, d7
  38400a: f7fc ffb9    	bl	0x380f80 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x1d4> @ imm = #-0x308e
  38400e: 9b0b         	ldr	r3, [sp, #0x2c]
  384010: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  384014: eddd 7a0a    	vldr	s15, [sp, #40]
  384018: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38401c: 4618         	mov	r0, r3
  38401e: ec53 2b17    	vmov	r2, r3, d7
  384022: f34f f8b6    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x34f16c
  384026: f25c fb43    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25c686
  38402a: 4603         	mov	r3, r0
  38402c: 4618         	mov	r0, r3
  38402e: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x384064 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1c8>
  384030: 447b         	add	r3, pc
  384032: 4619         	mov	r1, r3
  384034: 9a0b         	ldr	r2, [sp, #0x2c]
  384036: f25c fd79    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25caf2
  38403a: e00a         	b	0x384052 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1b6> @ imm = #0x14
  38403c: ab07         	add	r3, sp, #0x1c
  38403e: 4618         	mov	r0, r3
  384040: f031 f468    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4318d0
  384044: e7ff         	b	0x384046 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x1aa> @ imm = #-0x2
  384046: ab05         	add	r3, sp, #0x14
  384048: 4618         	mov	r0, r3
  38404a: f006 f1d7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4063ae
  38404e: f004 f02d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40405a
  384052: b011         	add	sp, #0x44
  384054: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x384055); words below are literal-pool data ---
  384056: bf00         	nop
  384058: eb60 005a    	sbc.w	r0, r0, r10, lsr #1
  38405c: dce8         	bgt	0x384030 <NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string)+0x194> @ imm = #-0x30
  38405e: ffff dcec    	<unknown>
  384062: ffff c634    	vqshlu.s32	d28, d20, #0x1f
  384066: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getPeerDamageData
//      file offset 0x384068 (= ELF address; Ghidra 0x394068), 1004 bytes, Thumb-2
  384068: b5f0         	push	{r4, r5, r6, r7, lr}
  38406a: ed2d 8b02    	vpush	{d8}
  38406e: b0a7         	sub	sp, #0x9c
  384070: 9001         	str	r0, [sp, #0x4]
  384072: 9100         	str	r1, [sp]
  384074: 4cf0         	ldr	r4, [pc, #0x3c0]        @ 0x384438 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3d0>
  384076: 447c         	add	r4, pc
  384078: 2317         	movs	r3, #0x17
  38407a: f88d 300f    	strb.w	r3, [sp, #0xf]
  38407e: 9800         	ldr	r0, [sp]
  384080: 2100         	movs	r1, #0x0
  384082: f216 f84d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21609a
  384086: 4603         	mov	r3, r0
  384088: 9309         	str	r3, [sp, #0x24]
  38408a: 9800         	ldr	r0, [sp]
  38408c: 2101         	movs	r1, #0x1
  38408e: f216 f847    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21608e
  384092: 4603         	mov	r3, r0
  384094: 930a         	str	r3, [sp, #0x28]
  384096: 9800         	ldr	r0, [sp]
  384098: 2102         	movs	r1, #0x2
  38409a: f216 f841    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x216082
  38409e: 4603         	mov	r3, r0
  3840a0: 930b         	str	r3, [sp, #0x2c]
  3840a2: 9800         	ldr	r0, [sp]
  3840a4: 2103         	movs	r1, #0x3
  3840a6: f216 f83b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x216076
  3840aa: 4603         	mov	r3, r0
  3840ac: 930c         	str	r3, [sp, #0x30]
  3840ae: 9800         	ldr	r0, [sp]
  3840b0: 2104         	movs	r1, #0x4
  3840b2: f216 f835    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21606a
  3840b6: 4603         	mov	r3, r0
  3840b8: 930d         	str	r3, [sp, #0x34]
  3840ba: 9800         	ldr	r0, [sp]
  3840bc: 2105         	movs	r1, #0x5
  3840be: f216 f82f    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21605e
  3840c2: 4603         	mov	r3, r0
  3840c4: 930e         	str	r3, [sp, #0x38]
  3840c6: 9800         	ldr	r0, [sp]
  3840c8: 2106         	movs	r1, #0x6
  3840ca: f216 f829    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x216052
  3840ce: 4603         	mov	r3, r0
  3840d0: 930f         	str	r3, [sp, #0x3c]
  3840d2: 9800         	ldr	r0, [sp]
  3840d4: 2107         	movs	r1, #0x7
  3840d6: f216 f823    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x216046
  3840da: 4603         	mov	r3, r0
  3840dc: 9310         	str	r3, [sp, #0x40]
  3840de: 9800         	ldr	r0, [sp]
  3840e0: 2108         	movs	r1, #0x8
  3840e2: f216 f81d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21603a
  3840e6: 4603         	mov	r3, r0
  3840e8: 4618         	mov	r0, r3
  3840ea: f215 fc1d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21583a
  3840ee: 4605         	mov	r5, r0
  3840f0: ab22         	add	r3, sp, #0x88
  3840f2: 4618         	mov	r0, r3
  3840f4: f006 f17e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4062fc
  3840f8: aa06         	add	r2, sp, #0x18
  3840fa: ab22         	add	r3, sp, #0x88
  3840fc: 4610         	mov	r0, r2
  3840fe: 4629         	mov	r1, r5
  384100: 461a         	mov	r2, r3
  384102: f032 f4ad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43295a
  384106: ab22         	add	r3, sp, #0x88
  384108: 4618         	mov	r0, r3
  38410a: f006 f177    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4062ee
  38410e: 9809         	ldr	r0, [sp, #0x24]
  384110: f758 fdb0    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xa74a0
  384114: ee07 0a90    	vmov	s15, r0
  384118: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  38411c: 980a         	ldr	r0, [sp, #0x28]
  38411e: f758 fda9    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xa74ae
  384122: ee07 0a90    	vmov	s15, r0
  384126: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38412a: ab1a         	add	r3, sp, #0x68
  38412c: 4618         	mov	r0, r3
  38412e: eeb0 0b48    	vmov.f64	d0, d8
  384132: eeb0 1b47    	vmov.f64	d1, d7
  384136: f7fc fe99    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x32ce
  38413a: 980b         	ldr	r0, [sp, #0x2c]
  38413c: f758 fd9a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xa74cc
  384140: ee07 0a90    	vmov	s15, r0
  384144: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  384148: 980c         	ldr	r0, [sp, #0x30]
  38414a: f758 fd93    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xa74da
  38414e: ee07 0a90    	vmov	s15, r0
  384152: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  384156: ab1e         	add	r3, sp, #0x78
  384158: 4618         	mov	r0, r3
  38415a: eeb0 0b48    	vmov.f64	d0, d8
  38415e: eeb0 1b47    	vmov.f64	d1, d7
  384162: f7fc fe83    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x32fa
  384166: 980d         	ldr	r0, [sp, #0x34]
  384168: f768 fe74    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x97318
  38416c: 4603         	mov	r3, r0
  38416e: f8ad 3012    	strh.w	r3, [sp, #0x12]
  384172: 980e         	ldr	r0, [sp, #0x38]
  384174: f768 fe6e    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x97324
  384178: 4603         	mov	r3, r0
  38417a: f8ad 3014    	strh.w	r3, [sp, #0x14]
  38417e: 980f         	ldr	r0, [sp, #0x3c]
  384180: f768 fe68    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x97330
  384184: 4603         	mov	r3, r0
  384186: f8ad 3016    	strh.w	r3, [sp, #0x16]
  38418a: 9810         	ldr	r0, [sp, #0x40]
  38418c: f768 fe62    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x9733c
  384190: 4603         	mov	r3, r0
  384192: 2b00         	cmp	r3, #0x0
  384194: bfd4         	ite	le
  384196: 2300         	movle	r3, #0x0
  384198: 2301         	movgt	r3, #0x1
  38419a: f88d 3010    	strb.w	r3, [sp, #0x10]
  38419e: 2300         	movs	r3, #0x0
  3841a0: 9308         	str	r3, [sp, #0x20]
  3841a2: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x38443c <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3d4>
  3841a4: 58e3         	ldr	r3, [r4, r3]
  3841a6: 681b         	ldr	r3, [r3]
  3841a8: 681b         	ldr	r3, [r3]
  3841aa: f503 73e0    	add.w	r3, r3, #0x1c0
  3841ae: 681b         	ldr	r3, [r3]
  3841b0: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x38443c <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3d4>
  3841b2: 58a2         	ldr	r2, [r4, r2]
  3841b4: 6812         	ldr	r2, [r2]
  3841b6: a907         	add	r1, sp, #0x1c
  3841b8: 4608         	mov	r0, r1
  3841ba: 4611         	mov	r1, r2
  3841bc: 4798         	blx	r3
  3841be: aa07         	add	r2, sp, #0x1c
  3841c0: ab06         	add	r3, sp, #0x18
  3841c2: 4610         	mov	r0, r2
  3841c4: 4619         	mov	r1, r3
  3841c6: f031 f259    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x4314b2
  3841ca: 4603         	mov	r3, r0
  3841cc: 2b00         	cmp	r3, #0x0
  3841ce: bf14         	ite	ne
  3841d0: 2300         	movne	r3, #0x0
  3841d2: 2301         	moveq	r3, #0x1
  3841d4: b2dd         	uxtb	r5, r3
  3841d6: ab07         	add	r3, sp, #0x1c
  3841d8: 4618         	mov	r0, r3
  3841da: f031 f39b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431736
  3841de: 2d00         	cmp	r5, #0x0
  3841e0: d004         	beq	0x3841ec <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x184> @ imm = #0x8
  3841e2: 4b96         	ldr	r3, [pc, #0x258]        @ 0x38443c <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3d4>
  3841e4: 58e3         	ldr	r3, [r4, r3]
  3841e6: 681b         	ldr	r3, [r3]
  3841e8: 9308         	str	r3, [sp, #0x20]
  3841ea: e010         	b	0x38420e <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x1a6> @ imm = #0x20
  3841ec: aa22         	add	r2, sp, #0x88
  3841ee: ab06         	add	r3, sp, #0x18
  3841f0: 4610         	mov	r0, r2
  3841f2: 4619         	mov	r1, r3
  3841f4: f032 f178    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4322f0
  3841f8: ab22         	add	r3, sp, #0x88
  3841fa: 9801         	ldr	r0, [sp, #0x4]
  3841fc: 4619         	mov	r1, r3
  3841fe: f003 fab9    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x3572
  384202: 4603         	mov	r3, r0
  384204: 9308         	str	r3, [sp, #0x20]
  384206: ab22         	add	r3, sp, #0x88
  384208: 4618         	mov	r0, r3
  38420a: f031 f383    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431706
  38420e: 9b08         	ldr	r3, [sp, #0x20]
  384210: 2b00         	cmp	r3, #0x0
  384212: d046         	beq	0x3842a2 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x23a> @ imm = #0x8c
  384214: 9b08         	ldr	r3, [sp, #0x20]
  384216: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  38421a: aa22         	add	r2, sp, #0x88
  38421c: ed9d 4b1a    	vldr	d4, [sp, #104]
  384220: ed9d 5b1c    	vldr	d5, [sp, #112]
  384224: ed93 6b0a    	vldr	d6, [r3, #40]
  384228: ed93 7b0c    	vldr	d7, [r3, #48]
  38422c: 4610         	mov	r0, r2
  38422e: eeb0 0b44    	vmov.f64	d0, d4
  384232: eeb0 1b45    	vmov.f64	d1, d5
  384236: eeb0 2b46    	vmov.f64	d2, d6
  38423a: eeb0 3b47    	vmov.f64	d3, d7
  38423e: f7fc fe29    	bl	0x380e94 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xe8> @ imm = #-0x33ae
  384242: ed9d 7b22    	vldr	d7, [sp, #136]
  384246: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38424a: ee17 0a90    	vmov	r0, s15
  38424e: f758 fd19    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa75ce
  384252: 4603         	mov	r3, r0
  384254: 9311         	str	r3, [sp, #0x44]
  384256: ed9d 7b24    	vldr	d7, [sp, #144]
  38425a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38425e: ee17 0a90    	vmov	r0, s15
  384262: f758 fd0f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa75e2
  384266: 4603         	mov	r3, r0
  384268: 9312         	str	r3, [sp, #0x48]
  38426a: ab1e         	add	r3, sp, #0x78
  38426c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38426e: f7fc ff33    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x319a
  384272: 4603         	mov	r3, r0
  384274: 4618         	mov	r0, r3
  384276: f758 fd05    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa75f6
  38427a: 4603         	mov	r3, r0
  38427c: 9313         	str	r3, [sp, #0x4c]
  38427e: 9811         	ldr	r0, [sp, #0x44]
  384280: 9912         	ldr	r1, [sp, #0x48]
  384282: 9a13         	ldr	r2, [sp, #0x4c]
  384284: 2300         	movs	r3, #0x0
  384286: f215 fdc3    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x215b86
  38428a: 4603         	mov	r3, r0
  38428c: 9314         	str	r3, [sp, #0x50]
  38428e: f25c fa0f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25c41e
  384292: 4603         	mov	r3, r0
  384294: 4618         	mov	r0, r3
  384296: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x384440 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3d8>
  384298: 447b         	add	r3, pc
  38429a: 4619         	mov	r1, r3
  38429c: 9a14         	ldr	r2, [sp, #0x50]
  38429e: f25c fc45    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25c88a
  3842a2: ab06         	add	r3, sp, #0x18
  3842a4: 4618         	mov	r0, r3
  3842a6: f031 f02b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x431056
  3842aa: 4607         	mov	r7, r0
  3842ac: ab06         	add	r3, sp, #0x18
  3842ae: 4618         	mov	r0, r3
  3842b0: f030 f6d4    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x430da8
  3842b4: 4606         	mov	r6, r0
  3842b6: 201c         	movs	r0, #0x1c
  3842b8: f003 f354    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4036a8
  3842bc: 4603         	mov	r3, r0
  3842be: 461d         	mov	r5, r3
  3842c0: 4628         	mov	r0, r5
  3842c2: 4639         	mov	r1, r7
  3842c4: 4632         	mov	r2, r6
  3842c6: f0bf ff91    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbff22
  3842ca: 9515         	str	r5, [sp, #0x54]
  3842cc: 9b15         	ldr	r3, [sp, #0x54]
  3842ce: 4618         	mov	r0, r3
  3842d0: f213 fe14    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x213c28
  3842d4: ed9d 7b1a    	vldr	d7, [sp, #104]
  3842d8: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3842dc: ee16 3a90    	vmov	r3, s13
  3842e0: 9316         	str	r3, [sp, #0x58]
  3842e2: ed9d 7b1c    	vldr	d7, [sp, #112]
  3842e6: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3842ea: ee16 3a90    	vmov	r3, s13
  3842ee: 9317         	str	r3, [sp, #0x5c]
  3842f0: ab1e         	add	r3, sp, #0x78
  3842f2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3842f4: f7fc fef0    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x3220
  3842f8: ee07 0a10    	vmov	s14, r0
  3842fc: 4b51         	ldr	r3, [pc, #0x144]        @ 0x384444 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3dc>
  3842fe: 58e3         	ldr	r3, [r4, r3]
  384300: edd3 7a00    	vldr	s15, [r3]
  384304: ee67 7a27    	vmul.f32	s15, s14, s15
  384308: eefd 7ae7    	vcvt.s32.f32	s15, s15
  38430c: ee17 3a90    	vmov	r3, s15
  384310: f88d 3011    	strb.w	r3, [sp, #0x11]
  384314: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x384448 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3e0>
  384316: 447b         	add	r3, pc
  384318: 9318         	str	r3, [sp, #0x60]
  38431a: 9b18         	ldr	r3, [sp, #0x60]
  38431c: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  384320: 701a         	strb	r2, [r3]
  384322: 9b18         	ldr	r3, [sp, #0x60]
  384324: 3301         	adds	r3, #0x1
  384326: 9318         	str	r3, [sp, #0x60]
  384328: 9b16         	ldr	r3, [sp, #0x58]
  38432a: b2da         	uxtb	r2, r3
  38432c: 9b18         	ldr	r3, [sp, #0x60]
  38432e: 701a         	strb	r2, [r3]
  384330: 9b18         	ldr	r3, [sp, #0x60]
  384332: 3301         	adds	r3, #0x1
  384334: 9318         	str	r3, [sp, #0x60]
  384336: 9b17         	ldr	r3, [sp, #0x5c]
  384338: b2da         	uxtb	r2, r3
  38433a: 9b18         	ldr	r3, [sp, #0x60]
  38433c: 701a         	strb	r2, [r3]
  38433e: 9b18         	ldr	r3, [sp, #0x60]
  384340: 3301         	adds	r3, #0x1
  384342: 9318         	str	r3, [sp, #0x60]
  384344: 9b18         	ldr	r3, [sp, #0x60]
  384346: f89d 2011    	ldrb.w	r2, [sp, #0x11]
  38434a: 701a         	strb	r2, [r3]
  38434c: 9b18         	ldr	r3, [sp, #0x60]
  38434e: 3301         	adds	r3, #0x1
  384350: 9318         	str	r3, [sp, #0x60]
  384352: f8bd 3014    	ldrh.w	r3, [sp, #0x14]
  384356: b2da         	uxtb	r2, r3
  384358: 9b18         	ldr	r3, [sp, #0x60]
  38435a: 701a         	strb	r2, [r3]
  38435c: 9b18         	ldr	r3, [sp, #0x60]
  38435e: 3301         	adds	r3, #0x1
  384360: 9318         	str	r3, [sp, #0x60]
  384362: f8bd 3012    	ldrh.w	r3, [sp, #0x12]
  384366: b2da         	uxtb	r2, r3
  384368: 9b18         	ldr	r3, [sp, #0x60]
  38436a: 701a         	strb	r2, [r3]
  38436c: 9b18         	ldr	r3, [sp, #0x60]
  38436e: 3301         	adds	r3, #0x1
  384370: 9318         	str	r3, [sp, #0x60]
  384372: f8bd 3016    	ldrh.w	r3, [sp, #0x16]
  384376: b2da         	uxtb	r2, r3
  384378: 9b18         	ldr	r3, [sp, #0x60]
  38437a: 701a         	strb	r2, [r3]
  38437c: 9b18         	ldr	r3, [sp, #0x60]
  38437e: 3301         	adds	r3, #0x1
  384380: 9318         	str	r3, [sp, #0x60]
  384382: 9b18         	ldr	r3, [sp, #0x60]
  384384: f89d 2010    	ldrb.w	r2, [sp, #0x10]
  384388: 701a         	strb	r2, [r3]
  38438a: 9b18         	ldr	r3, [sp, #0x60]
  38438c: 3301         	adds	r3, #0x1
  38438e: 9318         	str	r3, [sp, #0x60]
  384390: 9815         	ldr	r0, [sp, #0x54]
  384392: f0bf ffd1    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbffa2
  384396: 4604         	mov	r4, r0
  384398: 9815         	ldr	r0, [sp, #0x54]
  38439a: f0bf ffd5    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbffaa
  38439e: 4603         	mov	r3, r0
  3843a0: 9818         	ldr	r0, [sp, #0x60]
  3843a2: 4621         	mov	r1, r4
  3843a4: 461a         	mov	r2, r3
  3843a6: f751 edce    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xae464
  3843aa: 9815         	ldr	r0, [sp, #0x54]
  3843ac: f0bf ffcc    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbff98
  3843b0: 4603         	mov	r3, r0
  3843b2: 9a18         	ldr	r2, [sp, #0x60]
  3843b4: 4413         	add	r3, r2
  3843b6: 9318         	str	r3, [sp, #0x60]
  3843b8: 201c         	movs	r0, #0x1c
  3843ba: f003 f2d3    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4035a6
  3843be: 4603         	mov	r3, r0
  3843c0: 461c         	mov	r4, r3
  3843c2: 9a18         	ldr	r2, [sp, #0x60]
  3843c4: 4b21         	ldr	r3, [pc, #0x84]         @ 0x38444c <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3e4>
  3843c6: 447b         	add	r3, pc
  3843c8: 1ad3         	subs	r3, r2, r3
  3843ca: 4620         	mov	r0, r4
  3843cc: 4a20         	ldr	r2, [pc, #0x80]         @ 0x384450 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3e8>
  3843ce: 447a         	add	r2, pc
  3843d0: 4611         	mov	r1, r2
  3843d2: 461a         	mov	r2, r3
  3843d4: f0bf ff0a    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbfe14
  3843d8: 9419         	str	r4, [sp, #0x64]
  3843da: 9b19         	ldr	r3, [sp, #0x64]
  3843dc: 4618         	mov	r0, r3
  3843de: f213 fd8d    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x213b1a
  3843e2: 9c19         	ldr	r4, [sp, #0x64]
  3843e4: ab06         	add	r3, sp, #0x18
  3843e6: 4618         	mov	r0, r3
  3843e8: f031 f294    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431528
  3843ec: 4623         	mov	r3, r4
  3843ee: e01d         	b	0x38442c <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3c4> @ imm = #0x3a
  3843f0: ab22         	add	r3, sp, #0x88
  3843f2: 4618         	mov	r0, r3
  3843f4: f006 f002    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x406004
  3843f8: f003 f658    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x403cb0
  3843fc: ab07         	add	r3, sp, #0x1c
  3843fe: 4618         	mov	r0, r3
  384400: f031 f288    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431510
  384404: e00c         	b	0x384420 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3b8> @ imm = #0x18
  384406: ab22         	add	r3, sp, #0x88
  384408: 4618         	mov	r0, r3
  38440a: f031 f283    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431506
  38440e: e007         	b	0x384420 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3b8> @ imm = #0xe
  384410: 4628         	mov	r0, r5
  384412: f003 f647    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x403c8e
  384416: e003         	b	0x384420 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3b8> @ imm = #0x6
  384418: 4620         	mov	r0, r4
  38441a: f003 f643    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x403c86
  38441e: e7ff         	b	0x384420 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x3b8> @ imm = #-0x2
  384420: ab06         	add	r3, sp, #0x18
  384422: 4618         	mov	r0, r3
  384424: f031 f276    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4314ec
  384428: f003 f640    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x403c80
  38442c: 4618         	mov	r0, r3
  38442e: b027         	add	sp, #0x9c
  384430: ecbd 8b02    	vpop	{d8}
  384434: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x384435); words below are literal-pool data ---
  384436: bf00         	nop
  384438: e992 005a    	<unknown>
  38443c: d784         	bvc	0x384348 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x2e0> @ imm = #-0xf8
  38443e: ffff c3e0    	<unknown>
  384442: 0044         	lsls	r4, r0, #0x1
  384444: dcdc         	bgt	0x384400 <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x398> @ imm = #-0x48
  384446: ffff c7ce    	<unknown>
  38444a: 005b         	lsls	r3, r3, #0x1
  38444c: c71e         	stm	r7!, {r1, r2, r3, r4}
  38444e: 005b         	lsls	r3, r3, #0x1
  384450: c716         	stm	r7!, {r1, r2, r4}
  384452: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::updatePeerDamage
//      file offset 0x384458 (= ELF address; Ghidra 0x394458), 1532 bytes, Thumb-2
  384458: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  38445c: ed2d 8b02    	vpush	{d8}
  384460: b0ac         	sub	sp, #0xb0
  384462: 9009         	str	r0, [sp, #0x24]
  384464: 9108         	str	r1, [sp, #0x20]
  384466: 9207         	str	r2, [sp, #0x1c]
  384468: 4c9c         	ldr	r4, [pc, #0x270]        @ 0x3846dc <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x284>
  38446a: 447c         	add	r4, pc
  38446c: f7f3 fb68    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xc930
  384470: 4603         	mov	r3, r0
  384472: 4618         	mov	r0, r3
  384474: f7f5 fc88    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xa6f0
  384478: 4603         	mov	r3, r0
  38447a: f083 0301    	eor	r3, r3, #0x1
  38447e: b2db         	uxtb	r3, r3
  384480: 2b00         	cmp	r3, #0x0
  384482: d000         	beq	0x384486 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x2e> @ imm = #0x0
  384484: e2d5         	b	0x384a32 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5da> @ imm = #0x5aa
  384486: 9808         	ldr	r0, [sp, #0x20]
  384488: f0bf ff56    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbfeac
  38448c: 4603         	mov	r3, r0
  38448e: 930f         	str	r3, [sp, #0x3c]
  384490: 9b0f         	ldr	r3, [sp, #0x3c]
  384492: 3301         	adds	r3, #0x1
  384494: 930f         	str	r3, [sp, #0x3c]
  384496: 9b0f         	ldr	r3, [sp, #0x3c]
  384498: 781b         	ldrb	r3, [r3]
  38449a: f88d 302d    	strb.w	r3, [sp, #0x2d]
  38449e: 9b0f         	ldr	r3, [sp, #0x3c]
  3844a0: 3301         	adds	r3, #0x1
  3844a2: 930f         	str	r3, [sp, #0x3c]
  3844a4: 9b0f         	ldr	r3, [sp, #0x3c]
  3844a6: 781b         	ldrb	r3, [r3]
  3844a8: f88d 302e    	strb.w	r3, [sp, #0x2e]
  3844ac: 9b0f         	ldr	r3, [sp, #0x3c]
  3844ae: 3301         	adds	r3, #0x1
  3844b0: 930f         	str	r3, [sp, #0x3c]
  3844b2: 9b0f         	ldr	r3, [sp, #0x3c]
  3844b4: 781b         	ldrb	r3, [r3]
  3844b6: f88d 302f    	strb.w	r3, [sp, #0x2f]
  3844ba: 9b0f         	ldr	r3, [sp, #0x3c]
  3844bc: 3301         	adds	r3, #0x1
  3844be: 930f         	str	r3, [sp, #0x3c]
  3844c0: 9b0f         	ldr	r3, [sp, #0x3c]
  3844c2: 781b         	ldrb	r3, [r3]
  3844c4: f88d 3030    	strb.w	r3, [sp, #0x30]
  3844c8: 9b0f         	ldr	r3, [sp, #0x3c]
  3844ca: 3301         	adds	r3, #0x1
  3844cc: 930f         	str	r3, [sp, #0x3c]
  3844ce: 9b0f         	ldr	r3, [sp, #0x3c]
  3844d0: 781b         	ldrb	r3, [r3]
  3844d2: f88d 3031    	strb.w	r3, [sp, #0x31]
  3844d6: 9b0f         	ldr	r3, [sp, #0x3c]
  3844d8: 3301         	adds	r3, #0x1
  3844da: 930f         	str	r3, [sp, #0x3c]
  3844dc: 9b0f         	ldr	r3, [sp, #0x3c]
  3844de: 781b         	ldrb	r3, [r3]
  3844e0: f88d 3032    	strb.w	r3, [sp, #0x32]
  3844e4: 9b0f         	ldr	r3, [sp, #0x3c]
  3844e6: 3301         	adds	r3, #0x1
  3844e8: 930f         	str	r3, [sp, #0x3c]
  3844ea: 9b0f         	ldr	r3, [sp, #0x3c]
  3844ec: 781b         	ldrb	r3, [r3]
  3844ee: f88d 3033    	strb.w	r3, [sp, #0x33]
  3844f2: 9b0f         	ldr	r3, [sp, #0x3c]
  3844f4: 3301         	adds	r3, #0x1
  3844f6: 930f         	str	r3, [sp, #0x3c]
  3844f8: 9808         	ldr	r0, [sp, #0x20]
  3844fa: f0bf ff25    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbfe4a
  3844fe: 4605         	mov	r5, r0
  384500: 9808         	ldr	r0, [sp, #0x20]
  384502: f0bf ff19    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbfe32
  384506: 4603         	mov	r3, r0
  384508: 461a         	mov	r2, r3
  38450a: 9b0f         	ldr	r3, [sp, #0x3c]
  38450c: 1ad3         	subs	r3, r2, r3
  38450e: 442b         	add	r3, r5
  384510: 980f         	ldr	r0, [sp, #0x3c]
  384512: 4619         	mov	r1, r3
  384514: f215 faae    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x21555c
  384518: 4603         	mov	r3, r0
  38451a: 9310         	str	r3, [sp, #0x40]
  38451c: 9808         	ldr	r0, [sp, #0x20]
  38451e: f0bf ff13    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbfe26
  384522: 4605         	mov	r5, r0
  384524: 9808         	ldr	r0, [sp, #0x20]
  384526: f0bf ff07    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbfe0e
  38452a: 4603         	mov	r3, r0
  38452c: 461a         	mov	r2, r3
  38452e: 9b0f         	ldr	r3, [sp, #0x3c]
  384530: 1ad3         	subs	r3, r2, r3
  384532: 442b         	add	r3, r5
  384534: 9a0f         	ldr	r2, [sp, #0x3c]
  384536: 4413         	add	r3, r2
  384538: 930f         	str	r3, [sp, #0x3c]
  38453a: f89d 302d    	ldrb.w	r3, [sp, #0x2d]
  38453e: ee05 3a90    	vmov	s11, r3
  384542: eeb8 6b65    	vcvt.f64.u32	d6, s11
  384546: f89d 302e    	ldrb.w	r3, [sp, #0x2e]
  38454a: ee05 3a90    	vmov	s11, r3
  38454e: eeb8 7b65    	vcvt.f64.u32	d7, s11
  384552: ab1c         	add	r3, sp, #0x70
  384554: 4618         	mov	r0, r3
  384556: eeb0 0b46    	vmov.f64	d0, d6
  38455a: eeb0 1b47    	vmov.f64	d1, d7
  38455e: f7fc fc85    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x36f6
  384562: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  384566: ee06 3a90    	vmov	s13, r3
  38456a: eeb8 7a66    	vcvt.f32.u32	s14, s13
  38456e: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3846e0 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x288>
  384570: 58e3         	ldr	r3, [r4, r3]
  384572: edd3 7a00    	vldr	s15, [r3]
  384576: ee67 7a27    	vmul.f32	s15, s14, s15
  38457a: edcd 7a11    	vstr	s15, [sp, #68]
  38457e: ed9d 7a11    	vldr	s14, [sp, #68]
  384582: eddf 7a55    	vldr	s15, [pc, #340]         @ 0x3846d8 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x280>
  384586: ee67 7a27    	vmul.f32	s15, s14, s15
  38458a: eef1 7a67    	vneg.f32	s15, s15
  38458e: edcd 7a12    	vstr	s15, [sp, #72]
  384592: 9812         	ldr	r0, [sp, #0x48]
  384594: f7a4 ff72    	bl	0x32947c <std::cos(float)> @ imm = #-0x5b11c
  384598: ee07 0a90    	vmov	s15, r0
  38459c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3845a0: 9812         	ldr	r0, [sp, #0x48]
  3845a2: f7a4 ff83    	bl	0x3294ac <std::sin(float)> @ imm = #-0x5b0fa
  3845a6: ee07 0a90    	vmov	s15, r0
  3845aa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3845ae: ab20         	add	r3, sp, #0x80
  3845b0: 4618         	mov	r0, r3
  3845b2: eeb0 0b48    	vmov.f64	d0, d8
  3845b6: eeb0 1b47    	vmov.f64	d1, d7
  3845ba: f7fc fc57    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x3752
  3845be: 9b10         	ldr	r3, [sp, #0x40]
  3845c0: 2b00         	cmp	r3, #0x0
  3845c2: f000 8207    	beq.w	0x3849d4 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x57c> @ imm = #0x40e
  3845c6: f89d 3030    	ldrb.w	r3, [sp, #0x30]
  3845ca: 930d         	str	r3, [sp, #0x34]
  3845cc: f89d 3031    	ldrb.w	r3, [sp, #0x31]
  3845d0: 9313         	str	r3, [sp, #0x4c]
  3845d2: f093 f9d7    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x933ae
  3845d6: 4602         	mov	r2, r0
  3845d8: f89d 3031    	ldrb.w	r3, [sp, #0x31]
  3845dc: a91a         	add	r1, sp, #0x68
  3845de: 4608         	mov	r0, r1
  3845e0: 4611         	mov	r1, r2
  3845e2: 461a         	mov	r2, r3
  3845e4: f094 fa4c    	bl	0x418a80 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)> @ imm = #0x94498
  3845e8: 9b1a         	ldr	r3, [sp, #0x68]
  3845ea: 2b00         	cmp	r3, #0x0
  3845ec: dd35         	ble	0x38465a <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x202> @ imm = #0x6a
  3845ee: 9b1a         	ldr	r3, [sp, #0x68]
  3845f0: ee07 3a90    	vmov	s15, r3
  3845f4: eeb8 8be7    	vcvt.f64.s32	d8, s15
  3845f8: f89d 2032    	ldrb.w	r2, [sp, #0x32]
  3845fc: 9b1b         	ldr	r3, [sp, #0x6c]
  3845fe: 4610         	mov	r0, r2
  384600: 4619         	mov	r1, r3
  384602: f03a f1f9    	bl	0x7be9f8 <__divsi3>     @ imm = #0x43a3f2
  384606: 4603         	mov	r3, r0
  384608: f1c3 0301    	rsb.w	r3, r3, #0x1
  38460c: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  384610: ee05 3a90    	vmov	s11, r3
  384614: eeb8 6be5    	vcvt.f64.s32	d6, s11
  384618: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  38461c: ee26 6b07    	vmul.f64	d6, d6, d7
  384620: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  384624: ee36 7b07    	vadd.f64	d7, d6, d7
  384628: ee28 7b07    	vmul.f64	d7, d8, d7
  38462c: eefd 6bc7    	vcvt.s32.f64	s13, d7
  384630: ee16 3a90    	vmov	r3, s13
  384634: 930d         	str	r3, [sp, #0x34]
  384636: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  38463a: 2b00         	cmp	r3, #0x0
  38463c: d00d         	beq	0x38465a <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x202> @ imm = #0x1a
  38463e: 9b0d         	ldr	r3, [sp, #0x34]
  384640: ee07 3a90    	vmov	s15, r3
  384644: eeb8 6be7    	vcvt.f64.s32	d6, s15
  384648: eeb7 7b08    	vmov.f64	d7, #1.500000e+00
  38464c: ee26 7b07    	vmul.f64	d7, d6, d7
  384650: eefd 5bc7    	vcvt.s32.f64	s11, d7
  384654: ee15 3a90    	vmov	r3, s11
  384658: 930d         	str	r3, [sp, #0x34]
  38465a: 9810         	ldr	r0, [sp, #0x40]
  38465c: f215 f964    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2152c8
  384660: 4605         	mov	r5, r0
  384662: ab24         	add	r3, sp, #0x90
  384664: 4618         	mov	r0, r3
  384666: f005 f6c5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x405d8a
  38466a: aa28         	add	r2, sp, #0xa0
  38466c: ab24         	add	r3, sp, #0x90
  38466e: 4610         	mov	r0, r2
  384670: 4629         	mov	r1, r5
  384672: 461a         	mov	r2, r3
  384674: f032 f1f4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4323e8
  384678: ab28         	add	r3, sp, #0xa0
  38467a: 9809         	ldr	r0, [sp, #0x24]
  38467c: 4619         	mov	r1, r3
  38467e: f003 f879    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x30f2
  384682: 4603         	mov	r3, r0
  384684: 930e         	str	r3, [sp, #0x38]
  384686: ab28         	add	r3, sp, #0xa0
  384688: 4618         	mov	r0, r3
  38468a: f031 f143    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431286
  38468e: ab24         	add	r3, sp, #0x90
  384690: 4618         	mov	r0, r3
  384692: f005 f6b3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x405d66
  384696: 9b0e         	ldr	r3, [sp, #0x38]
  384698: 2b00         	cmp	r3, #0x0
  38469a: d023         	beq	0x3846e4 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x28c> @ imm = #0x46
  38469c: 9b0e         	ldr	r3, [sp, #0x38]
  38469e: 681b         	ldr	r3, [r3]
  3846a0: f503 7316    	add.w	r3, r3, #0x258
  3846a4: 681c         	ldr	r4, [r3]
  3846a6: 9b0d         	ldr	r3, [sp, #0x34]
  3846a8: ee06 3a90    	vmov	s13, r3
  3846ac: eeb8 8ae6    	vcvt.f32.s32	s16, s13
  3846b0: ab28         	add	r3, sp, #0xa0
  3846b2: 4618         	mov	r0, r3
  3846b4: 9907         	ldr	r1, [sp, #0x1c]
  3846b6: f031 f717    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x431e2e
  3846ba: ab28         	add	r3, sp, #0xa0
  3846bc: 2201         	movs	r2, #0x1
  3846be: 9200         	str	r2, [sp]
  3846c0: 980e         	ldr	r0, [sp, #0x38]
  3846c2: ee18 1a10    	vmov	r1, s16
  3846c6: 461a         	mov	r2, r3
  3846c8: 9b13         	ldr	r3, [sp, #0x4c]
  3846ca: 47a0         	blx	r4
  3846cc: ab28         	add	r3, sp, #0xa0
  3846ce: 4618         	mov	r0, r3
  3846d0: f031 f120    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431240
  3846d4: e0b4         	b	0x384840 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x3e8> @ imm = #0x168
  3846d6: bf00         	nop
  3846d8: fa35 3c8e    	<unknown>
  3846dc: e59e         	b	0x38421c <NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*)+0x1b4> @ imm = #-0x4c4
  3846de: 005a         	lsls	r2, r3, #0x1
  3846e0: dce0         	bgt	0x3846a4 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x24c> @ imm = #-0x40
  3846e2: ffff 4bd8    	<unknown>
  3846e6: 58e3         	ldr	r3, [r4, r3]
  3846e8: 681b         	ldr	r3, [r3]
  3846ea: 681b         	ldr	r3, [r3]
  3846ec: f503 73e0    	add.w	r3, r3, #0x1c0
  3846f0: 681b         	ldr	r3, [r3]
  3846f2: 4ad5         	ldr	r2, [pc, #0x354]        @ 0x384a48 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f0>
  3846f4: 58a2         	ldr	r2, [r4, r2]
  3846f6: 6812         	ldr	r2, [r2]
  3846f8: a928         	add	r1, sp, #0xa0
  3846fa: 4608         	mov	r0, r1
  3846fc: 4611         	mov	r1, r2
  3846fe: 4798         	blx	r3
  384700: 9810         	ldr	r0, [sp, #0x40]
  384702: f215 f911    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x215222
  384706: 4603         	mov	r3, r0
  384708: aa28         	add	r2, sp, #0xa0
  38470a: 4610         	mov	r0, r2
  38470c: 4619         	mov	r1, r3
  38470e: f031 f009    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x431012
  384712: 4603         	mov	r3, r0
  384714: 2b00         	cmp	r3, #0x0
  384716: bf14         	ite	ne
  384718: 2300         	movne	r3, #0x0
  38471a: 2301         	moveq	r3, #0x1
  38471c: b2dd         	uxtb	r5, r3
  38471e: ab28         	add	r3, sp, #0xa0
  384720: 4618         	mov	r0, r3
  384722: f031 f0f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4311ee
  384726: 2d00         	cmp	r5, #0x0
  384728: f000 808a    	beq.w	0x384840 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x3e8> @ imm = #0x114
  38472c: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x384a48 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f0>
  38472e: 58e3         	ldr	r3, [r4, r3]
  384730: 681b         	ldr	r3, [r3]
  384732: 930e         	str	r3, [sp, #0x38]
  384734: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x384a48 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f0>
  384736: 58e3         	ldr	r3, [r4, r3]
  384738: 681b         	ldr	r3, [r3]
  38473a: 681b         	ldr	r3, [r3]
  38473c: f503 7316    	add.w	r3, r3, #0x258
  384740: 681d         	ldr	r5, [r3]
  384742: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x384a48 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f0>
  384744: 58e3         	ldr	r3, [r4, r3]
  384746: 681b         	ldr	r3, [r3]
  384748: 461e         	mov	r6, r3
  38474a: 9b0d         	ldr	r3, [sp, #0x34]
  38474c: ee07 3a90    	vmov	s15, r3
  384750: eeb8 8ae7    	vcvt.f32.s32	s16, s15
  384754: ab28         	add	r3, sp, #0xa0
  384756: 4618         	mov	r0, r3
  384758: 9907         	ldr	r1, [sp, #0x1c]
  38475a: f031 f6c5    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x431d8a
  38475e: f89d 3031    	ldrb.w	r3, [sp, #0x31]
  384762: aa28         	add	r2, sp, #0xa0
  384764: 2101         	movs	r1, #0x1
  384766: 9100         	str	r1, [sp]
  384768: 4630         	mov	r0, r6
  38476a: ee18 1a10    	vmov	r1, s16
  38476e: 47a8         	blx	r5
  384770: ab28         	add	r3, sp, #0xa0
  384772: 4618         	mov	r0, r3
  384774: f031 f0ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43119c
  384778: 9b0d         	ldr	r3, [sp, #0x34]
  38477a: ee05 3a90    	vmov	s11, r3
  38477e: eeb8 6be5    	vcvt.f64.s32	d6, s11
  384782: ed9f 7baf    	vldr	d7, [pc, #700]          @ 0x384a40 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5e8>
  384786: ee26 7b07    	vmul.f64	d7, d6, d7
  38478a: ab24         	add	r3, sp, #0x90
  38478c: ed9d 5b20    	vldr	d5, [sp, #128]
  384790: ed9d 6b22    	vldr	d6, [sp, #136]
  384794: 4618         	mov	r0, r3
  384796: eeb0 0b45    	vmov.f64	d0, d5
  38479a: eeb0 1b46    	vmov.f64	d1, d6
  38479e: eeb0 2b47    	vmov.f64	d2, d7
  3847a2: f7fc fba3    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x38ba
  3847a6: ed9d 7b26    	vldr	d7, [sp, #152]
  3847aa: eeb0 0b47    	vmov.f64	d0, d7
  3847ae: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  3847b2: eeb7 2b00    	vmov.f64	d2, #1.000000e+00
  3847b6: f7fc fb3b    	bl	0x380e30 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x84> @ imm = #-0x398a
  3847ba: eeb0 7b40    	vmov.f64	d7, d0
  3847be: ed8d 7b26    	vstr	d7, [sp, #152]
  3847c2: ed9d 7b24    	vldr	d7, [sp, #144]
  3847c6: eeb0 0b47    	vmov.f64	d0, d7
  3847ca: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  3847ce: eeb7 2b00    	vmov.f64	d2, #1.000000e+00
  3847d2: f7fc fb2d    	bl	0x380e30 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x84> @ imm = #-0x39a6
  3847d6: eeb0 7b40    	vmov.f64	d7, d0
  3847da: ed8d 7b24    	vstr	d7, [sp, #144]
  3847de: 4b9a         	ldr	r3, [pc, #0x268]        @ 0x384a48 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f0>
  3847e0: 58e3         	ldr	r3, [r4, r3]
  3847e2: 681b         	ldr	r3, [r3]
  3847e4: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3847e8: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x384a48 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f0>
  3847ea: 58e3         	ldr	r3, [r4, r3]
  3847ec: 681b         	ldr	r3, [r3]
  3847ee: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3847f2: aa28         	add	r2, sp, #0xa0
  3847f4: ed9d 4b1c    	vldr	d4, [sp, #112]
  3847f8: ed9d 5b1e    	vldr	d5, [sp, #120]
  3847fc: ed93 6b0a    	vldr	d6, [r3, #40]
  384800: ed93 7b0c    	vldr	d7, [r3, #48]
  384804: 4610         	mov	r0, r2
  384806: eeb0 0b44    	vmov.f64	d0, d4
  38480a: eeb0 1b45    	vmov.f64	d1, d5
  38480e: eeb0 2b46    	vmov.f64	d2, d6
  384812: eeb0 3b47    	vmov.f64	d3, d7
  384816: f7fc fb3d    	bl	0x380e94 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xe8> @ imm = #-0x3986
  38481a: ed9d 4b24    	vldr	d4, [sp, #144]
  38481e: ed9d 5b26    	vldr	d5, [sp, #152]
  384822: ed9d 6b28    	vldr	d6, [sp, #160]
  384826: ed9d 7b2a    	vldr	d7, [sp, #168]
  38482a: 4628         	mov	r0, r5
  38482c: eeb0 0b44    	vmov.f64	d0, d4
  384830: eeb0 1b45    	vmov.f64	d1, d5
  384834: eeb0 2b46    	vmov.f64	d2, d6
  384838: eeb0 3b47    	vmov.f64	d3, d7
  38483c: f7fc fbb6    	bl	0x380fac <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x200> @ imm = #-0x3894
  384840: 9b0e         	ldr	r3, [sp, #0x38]
  384842: 2b00         	cmp	r3, #0x0
  384844: d042         	beq	0x3848cc <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x474> @ imm = #0x84
  384846: 9b0e         	ldr	r3, [sp, #0x38]
  384848: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  38484c: aa24         	add	r2, sp, #0x90
  38484e: ed9d 4b1c    	vldr	d4, [sp, #112]
  384852: ed9d 5b1e    	vldr	d5, [sp, #120]
  384856: ed93 6b0a    	vldr	d6, [r3, #40]
  38485a: ed93 7b0c    	vldr	d7, [r3, #48]
  38485e: 4610         	mov	r0, r2
  384860: eeb0 0b44    	vmov.f64	d0, d4
  384864: eeb0 1b45    	vmov.f64	d1, d5
  384868: eeb0 2b46    	vmov.f64	d2, d6
  38486c: eeb0 3b47    	vmov.f64	d3, d7
  384870: f7fc fb10    	bl	0x380e94 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xe8> @ imm = #-0x39e0
  384874: ed9d 7b24    	vldr	d7, [sp, #144]
  384878: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38487c: ee17 0a90    	vmov	r0, s15
  384880: f758 fa00    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7c00
  384884: 4603         	mov	r3, r0
  384886: 9314         	str	r3, [sp, #0x50]
  384888: ed9d 7b26    	vldr	d7, [sp, #152]
  38488c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  384890: ee17 0a90    	vmov	r0, s15
  384894: f758 f9f6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7c14
  384898: 4603         	mov	r3, r0
  38489a: 9315         	str	r3, [sp, #0x54]
  38489c: 9811         	ldr	r0, [sp, #0x44]
  38489e: f758 f9f1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7c1e
  3848a2: 4603         	mov	r3, r0
  3848a4: 9316         	str	r3, [sp, #0x58]
  3848a6: 9814         	ldr	r0, [sp, #0x50]
  3848a8: 9915         	ldr	r1, [sp, #0x54]
  3848aa: 9a16         	ldr	r2, [sp, #0x58]
  3848ac: 2300         	movs	r3, #0x0
  3848ae: f215 faaf    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x21555e
  3848b2: 4603         	mov	r3, r0
  3848b4: 9317         	str	r3, [sp, #0x5c]
  3848b6: f25b fefb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25bdf6
  3848ba: 4603         	mov	r3, r0
  3848bc: 4618         	mov	r0, r3
  3848be: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x384a4c <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f4>
  3848c0: 447b         	add	r3, pc
  3848c2: 4619         	mov	r1, r3
  3848c4: 9a17         	ldr	r2, [sp, #0x5c]
  3848c6: f25c f931    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25c262
  3848ca: e083         	b	0x3849d4 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x57c> @ imm = #0x106
  3848cc: 9810         	ldr	r0, [sp, #0x40]
  3848ce: f215 f82b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x215056
  3848d2: 4604         	mov	r4, r0
  3848d4: ab0b         	add	r3, sp, #0x2c
  3848d6: 4618         	mov	r0, r3
  3848d8: f005 f58c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x405b18
  3848dc: aa24         	add	r2, sp, #0x90
  3848de: ab0b         	add	r3, sp, #0x2c
  3848e0: 4610         	mov	r0, r2
  3848e2: 4621         	mov	r1, r4
  3848e4: 461a         	mov	r2, r3
  3848e6: f032 f0bb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x432176
  3848ea: ab24         	add	r3, sp, #0x90
  3848ec: 9809         	ldr	r0, [sp, #0x24]
  3848ee: 4619         	mov	r1, r3
  3848f0: f002 ff56    	bl	0x3877a0 <NetworkMessageDispatcher::getEnemy(std::string)> @ imm = #0x2eac
  3848f4: 4603         	mov	r3, r0
  3848f6: 9318         	str	r3, [sp, #0x60]
  3848f8: ab24         	add	r3, sp, #0x90
  3848fa: 4618         	mov	r0, r3
  3848fc: f031 f00a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x431014
  384900: ab0b         	add	r3, sp, #0x2c
  384902: 4618         	mov	r0, r3
  384904: f005 f57a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x405af4
  384908: 9b18         	ldr	r3, [sp, #0x60]
  38490a: 2b00         	cmp	r3, #0x0
  38490c: d062         	beq	0x3849d4 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x57c> @ imm = #0xc4
  38490e: 9b18         	ldr	r3, [sp, #0x60]
  384910: 681b         	ldr	r3, [r3]
  384912: f503 73f0    	add.w	r3, r3, #0x1e0
  384916: 681c         	ldr	r4, [r3]
  384918: ab24         	add	r3, sp, #0x90
  38491a: 4618         	mov	r0, r3
  38491c: 9907         	ldr	r1, [sp, #0x1c]
  38491e: f031 f5e3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x431bc6
  384922: ab24         	add	r3, sp, #0x90
  384924: 9818         	ldr	r0, [sp, #0x60]
  384926: 990d         	ldr	r1, [sp, #0x34]
  384928: 461a         	mov	r2, r3
  38492a: 9b13         	ldr	r3, [sp, #0x4c]
  38492c: 47a0         	blx	r4
  38492e: ab24         	add	r3, sp, #0x90
  384930: 4618         	mov	r0, r3
  384932: f030 f7ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430fde
  384936: ed9d 7b20    	vldr	d7, [sp, #128]
  38493a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38493e: ee17 0a90    	vmov	r0, s15
  384942: f758 f99f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7cc2
  384946: 4607         	mov	r7, r0
  384948: ed9d 7b22    	vldr	d7, [sp, #136]
  38494c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  384950: ee17 0a90    	vmov	r0, s15
  384954: f758 f996    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7cd4
  384958: 4606         	mov	r6, r0
  38495a: ed9d 7b1c    	vldr	d7, [sp, #112]
  38495e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  384962: ee17 0a90    	vmov	r0, s15
  384966: f758 f98d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7ce6
  38496a: 4605         	mov	r5, r0
  38496c: ed9d 7b1e    	vldr	d7, [sp, #120]
  384970: eef7 7bc7    	vcvt.f32.f64	s15, d7
  384974: ee17 0a90    	vmov	r0, s15
  384978: f758 f984    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa7cf8
  38497c: 4604         	mov	r4, r0
  38497e: 20ff         	movs	r0, #0xff
  384980: f760 f9c2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9fc7c
  384984: 4682         	mov	r10, r0
  384986: 20ff         	movs	r0, #0xff
  384988: f760 f9be    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9fc84
  38498c: 4681         	mov	r9, r0
  38498e: 20ff         	movs	r0, #0xff
  384990: f760 f9ba    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9fc8c
  384994: 4680         	mov	r8, r0
  384996: 2001         	movs	r0, #0x1
  384998: f760 f9b6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9fc94
  38499c: 4603         	mov	r3, r0
  38499e: f8cd a000    	str.w	r10, [sp]
  3849a2: f8cd 9004    	str.w	r9, [sp, #0x4]
  3849a6: f8cd 8008    	str.w	r8, [sp, #0x8]
  3849aa: 9303         	str	r3, [sp, #0xc]
  3849ac: 2300         	movs	r3, #0x0
  3849ae: 9304         	str	r3, [sp, #0x10]
  3849b0: 4638         	mov	r0, r7
  3849b2: 4631         	mov	r1, r6
  3849b4: 462a         	mov	r2, r5
  3849b6: 4623         	mov	r3, r4
  3849b8: f215 fa2a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x215454
  3849bc: 4603         	mov	r3, r0
  3849be: 9319         	str	r3, [sp, #0x64]
  3849c0: f25b fe76    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25bcec
  3849c4: 4603         	mov	r3, r0
  3849c6: 4618         	mov	r0, r3
  3849c8: 4b21         	ldr	r3, [pc, #0x84]         @ 0x384a50 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5f8>
  3849ca: 447b         	add	r3, pc
  3849cc: 4619         	mov	r1, r3
  3849ce: 9a19         	ldr	r2, [sp, #0x64]
  3849d0: f25c f8ac    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25c158
  3849d4: e02d         	b	0x384a32 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5da> @ imm = #0x5a
  3849d6: ab28         	add	r3, sp, #0xa0
  3849d8: 4618         	mov	r0, r3
  3849da: f030 f79b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430f36
  3849de: e7ff         	b	0x3849e0 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x588> @ imm = #-0x2
  3849e0: ab24         	add	r3, sp, #0x90
  3849e2: 4618         	mov	r0, r3
  3849e4: f005 f50a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x405a14
  3849e8: f003 f360    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4036c0
  3849ec: ab28         	add	r3, sp, #0xa0
  3849ee: 4618         	mov	r0, r3
  3849f0: f030 f790    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430f20
  3849f4: f003 f35a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4036b4
  3849f8: ab28         	add	r3, sp, #0xa0
  3849fa: 4618         	mov	r0, r3
  3849fc: f030 f78a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430f14
  384a00: f003 f354    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4036a8
  384a04: ab28         	add	r3, sp, #0xa0
  384a06: 4618         	mov	r0, r3
  384a08: f030 f784    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430f08
  384a0c: f003 f34e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40369c
  384a10: ab24         	add	r3, sp, #0x90
  384a12: 4618         	mov	r0, r3
  384a14: f030 f77e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430efc
  384a18: e7ff         	b	0x384a1a <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x5c2> @ imm = #-0x2
  384a1a: ab0b         	add	r3, sp, #0x2c
  384a1c: 4618         	mov	r0, r3
  384a1e: f005 f4ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4059da
  384a22: f003 f343    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x403686
  384a26: ab24         	add	r3, sp, #0x90
  384a28: 4618         	mov	r0, r3
  384a2a: f030 f773    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430ee6
  384a2e: f003 f33d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40367a
  384a32: b02c         	add	sp, #0xb0
  384a34: ecbd 8b02    	vpop	{d8}
  384a38: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
  ; --- end of code (Ghidra body ends at 0x384a3b); words below are literal-pool data ---
  384a3c: f3af 8000    	nop.w
  384a40: 999a         	ldr	r1, [sp, #0x268]
  384a42: 9999         	ldr	r1, [sp, #0x264]
  384a44: 9999         	ldr	r1, [sp, #0x264]
  384a46: 3f99         	subs	r7, #0x99
  384a48: d784         	bvc	0x384954 <NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string)+0x4fc> @ imm = #-0xf8
  384a4a: ffff bdb8    	<unknown>
  384a4e: 0044         	lsls	r4, r0, #0x1
  384a50: bcb6         	pop	{r1, r2, r4, r5, r7}
  384a52: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getPlayerSetupDataRequest
//      file offset 0x384a58 (= ELF address; Ghidra 0x394a58), 108 bytes, Thumb-2
  384a58: b510         	push	{r4, lr}
  384a5a: b086         	sub	sp, #0x18
  384a5c: 9001         	str	r0, [sp, #0x4]
  384a5e: 9100         	str	r1, [sp]
  384a60: 232b         	movs	r3, #0x2b
  384a62: f88d 300f    	strb.w	r3, [sp, #0xf]
  384a66: 4b14         	ldr	r3, [pc, #0x50]         @ 0x384ab8 <NetworkMessageDispatcher::getPlayerSetupDataRequest(std::string)+0x60>
  384a68: 447b         	add	r3, pc
  384a6a: 9304         	str	r3, [sp, #0x10]
  384a6c: 9b04         	ldr	r3, [sp, #0x10]
  384a6e: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  384a72: 701a         	strb	r2, [r3]
  384a74: 9b04         	ldr	r3, [sp, #0x10]
  384a76: 3301         	adds	r3, #0x1
  384a78: 9304         	str	r3, [sp, #0x10]
  384a7a: 201c         	movs	r0, #0x1c
  384a7c: f002 f772    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x402ee4
  384a80: 4603         	mov	r3, r0
  384a82: 461c         	mov	r4, r3
  384a84: 9a04         	ldr	r2, [sp, #0x10]
  384a86: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x384abc <NetworkMessageDispatcher::getPlayerSetupDataRequest(std::string)+0x64>
  384a88: 447b         	add	r3, pc
  384a8a: 1ad3         	subs	r3, r2, r3
  384a8c: 4620         	mov	r0, r4
  384a8e: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x384ac0 <NetworkMessageDispatcher::getPlayerSetupDataRequest(std::string)+0x68>
  384a90: 447a         	add	r2, pc
  384a92: 4611         	mov	r1, r2
  384a94: 461a         	mov	r2, r3
  384a96: f0bf fba9    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbf752
  384a9a: 9405         	str	r4, [sp, #0x14]
  384a9c: 9b05         	ldr	r3, [sp, #0x14]
  384a9e: 4618         	mov	r0, r3
  384aa0: f213 fa2c    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x213458
  384aa4: 9b05         	ldr	r3, [sp, #0x14]
  384aa6: e004         	b	0x384ab2 <NetworkMessageDispatcher::getPlayerSetupDataRequest(std::string)+0x5a> @ imm = #0x8
  384aa8: 4620         	mov	r0, r4
  384aaa: f003 f2fb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4035f6
  384aae: f003 f2fd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4035fa
  384ab2: 4618         	mov	r0, r3
  384ab4: b006         	add	sp, #0x18
  384ab6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x384ab7); words below are literal-pool data ---
  384ab8: c07c         	stm	r0!, {r2, r3, r4, r5, r6}
  384aba: 005b         	lsls	r3, r3, #0x1
  384abc: c05c         	stm	r0!, {r2, r3, r4, r6}
  384abe: 005b         	lsls	r3, r3, #0x1
  384ac0: c054         	stm	r0!, {r2, r4, r6}
  384ac2: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::peerRequestSetupData
//      file offset 0x384ac4 (= ELF address; Ghidra 0x394ac4), 48 bytes, Thumb-2
  384ac4: b510         	push	{r4, lr}
  384ac6: b084         	sub	sp, #0x10
  384ac8: 9003         	str	r0, [sp, #0xc]
  384aca: 9102         	str	r1, [sp, #0x8]
  384acc: 9201         	str	r2, [sp, #0x4]
  384ace: f25b fdef    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25bbde
  384ad2: 4604         	mov	r4, r0
  384ad4: 9801         	ldr	r0, [sp, #0x4]
  384ad6: f214 ffb1    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x214f62
  384ada: 4603         	mov	r3, r0
  384adc: 4620         	mov	r0, r4
  384ade: 4a04         	ldr	r2, [pc, #0x10]         @ 0x384af0 <NetworkMessageDispatcher::peerRequestSetupData(cocos2d::extension::CCData*, std::string)+0x2c>
  384ae0: 447a         	add	r2, pc
  384ae2: 4611         	mov	r1, r2
  384ae4: 461a         	mov	r2, r3
  384ae6: f25c f821    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25c042
  384aea: b004         	add	sp, #0x10
  384aec: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x384aed); words below are literal-pool data ---
  384aee: bf00         	nop
  384af0: bba8         	cbnz	r0, 0x384b5e <NetworkMessageDispatcher::getMapVote(int)+0x6a> @ imm = #0x6a
  384af2: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getMapVote
//      file offset 0x384af4 (= ELF address; Ghidra 0x394af4), 124 bytes, Thumb-2
  384af4: b510         	push	{r4, lr}
  384af6: b086         	sub	sp, #0x18
  384af8: 9001         	str	r0, [sp, #0x4]
  384afa: 9100         	str	r1, [sp]
  384afc: 232e         	movs	r3, #0x2e
  384afe: f88d 300f    	strb.w	r3, [sp, #0xf]
  384b02: 4b18         	ldr	r3, [pc, #0x60]         @ 0x384b64 <NetworkMessageDispatcher::getMapVote(int)+0x70>
  384b04: 447b         	add	r3, pc
  384b06: 9304         	str	r3, [sp, #0x10]
  384b08: 9b04         	ldr	r3, [sp, #0x10]
  384b0a: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  384b0e: 701a         	strb	r2, [r3]
  384b10: 9b04         	ldr	r3, [sp, #0x10]
  384b12: 3301         	adds	r3, #0x1
  384b14: 9304         	str	r3, [sp, #0x10]
  384b16: 9b00         	ldr	r3, [sp]
  384b18: b2da         	uxtb	r2, r3
  384b1a: 9b04         	ldr	r3, [sp, #0x10]
  384b1c: 701a         	strb	r2, [r3]
  384b1e: 9b04         	ldr	r3, [sp, #0x10]
  384b20: 3301         	adds	r3, #0x1
  384b22: 9304         	str	r3, [sp, #0x10]
  384b24: 201c         	movs	r0, #0x1c
  384b26: f002 f71d    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x402e3a
  384b2a: 4603         	mov	r3, r0
  384b2c: 461c         	mov	r4, r3
  384b2e: 9a04         	ldr	r2, [sp, #0x10]
  384b30: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x384b68 <NetworkMessageDispatcher::getMapVote(int)+0x74>
  384b32: 447b         	add	r3, pc
  384b34: 1ad3         	subs	r3, r2, r3
  384b36: 4620         	mov	r0, r4
  384b38: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x384b6c <NetworkMessageDispatcher::getMapVote(int)+0x78>
  384b3a: 447a         	add	r2, pc
  384b3c: 4611         	mov	r1, r2
  384b3e: 461a         	mov	r2, r3
  384b40: f0bf fb54    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbf6a8
  384b44: 9405         	str	r4, [sp, #0x14]
  384b46: 9b05         	ldr	r3, [sp, #0x14]
  384b48: 4618         	mov	r0, r3
  384b4a: f213 f9d7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2133ae
  384b4e: 9b05         	ldr	r3, [sp, #0x14]
  384b50: e004         	b	0x384b5c <NetworkMessageDispatcher::getMapVote(int)+0x68> @ imm = #0x8
  384b52: 4620         	mov	r0, r4
  384b54: f003 f2a6    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40354c
  384b58: f003 f2a8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x403550
  384b5c: 4618         	mov	r0, r3
  384b5e: b006         	add	sp, #0x18
  384b60: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x384b61); words below are literal-pool data ---
  384b62: bf00         	nop
  384b64: bfe0         	hint	#0xe
  384b66: 005b         	lsls	r3, r3, #0x1
  384b68: bfb2         	itee	lt
  384b6a: 005b         	lsllt	r3, r3, #0x1
  384b6c: bfaa         	itet	ge
  384b6e: 005b         	lslge	r3, r3, #0x1

// ==== NetworkMessageDispatcher::serverSetMap
//      file offset 0x384b70 (= ELF address; Ghidra 0x394b70), 268 bytes, Thumb-2
  384b70: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
  384b74: b08b         	sub	sp, #0x2c
  384b76: 9005         	str	r0, [sp, #0x14]
  384b78: 9104         	str	r1, [sp, #0x10]
  384b7a: 9804         	ldr	r0, [sp, #0x10]
  384b7c: f0bf fbdc    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf7b8
  384b80: 4603         	mov	r3, r0
  384b82: 9308         	str	r3, [sp, #0x20]
  384b84: 9b08         	ldr	r3, [sp, #0x20]
  384b86: 3301         	adds	r3, #0x1
  384b88: 9308         	str	r3, [sp, #0x20]
  384b8a: 9b08         	ldr	r3, [sp, #0x20]
  384b8c: 781b         	ldrb	r3, [r3]
  384b8e: f88d 3019    	strb.w	r3, [sp, #0x19]
  384b92: 9b08         	ldr	r3, [sp, #0x20]
  384b94: 3301         	adds	r3, #0x1
  384b96: 9308         	str	r3, [sp, #0x20]
  384b98: 9b08         	ldr	r3, [sp, #0x20]
  384b9a: 781b         	ldrb	r3, [r3]
  384b9c: f88d 301a    	strb.w	r3, [sp, #0x1a]
  384ba0: 9b08         	ldr	r3, [sp, #0x20]
  384ba2: 3301         	adds	r3, #0x1
  384ba4: 9308         	str	r3, [sp, #0x20]
  384ba6: 9b08         	ldr	r3, [sp, #0x20]
  384ba8: 781b         	ldrb	r3, [r3]
  384baa: f88d 301b    	strb.w	r3, [sp, #0x1b]
  384bae: 9b08         	ldr	r3, [sp, #0x20]
  384bb0: 3301         	adds	r3, #0x1
  384bb2: 9308         	str	r3, [sp, #0x20]
  384bb4: 9b08         	ldr	r3, [sp, #0x20]
  384bb6: 781b         	ldrb	r3, [r3]
  384bb8: f88d 301c    	strb.w	r3, [sp, #0x1c]
  384bbc: 9b08         	ldr	r3, [sp, #0x20]
  384bbe: 3301         	adds	r3, #0x1
  384bc0: 9308         	str	r3, [sp, #0x20]
  384bc2: 9b08         	ldr	r3, [sp, #0x20]
  384bc4: 781b         	ldrb	r3, [r3]
  384bc6: f88d 301d    	strb.w	r3, [sp, #0x1d]
  384bca: 9b08         	ldr	r3, [sp, #0x20]
  384bcc: 3301         	adds	r3, #0x1
  384bce: 9308         	str	r3, [sp, #0x20]
  384bd0: 9b08         	ldr	r3, [sp, #0x20]
  384bd2: 781b         	ldrb	r3, [r3]
  384bd4: f88d 301e    	strb.w	r3, [sp, #0x1e]
  384bd8: 9b08         	ldr	r3, [sp, #0x20]
  384bda: 3301         	adds	r3, #0x1
  384bdc: 9308         	str	r3, [sp, #0x20]
  384bde: 9b08         	ldr	r3, [sp, #0x20]
  384be0: 781b         	ldrb	r3, [r3]
  384be2: f88d 301f    	strb.w	r3, [sp, #0x1f]
  384be6: 9b08         	ldr	r3, [sp, #0x20]
  384be8: 3301         	adds	r3, #0x1
  384bea: 9308         	str	r3, [sp, #0x20]
  384bec: f89d 3019    	ldrb.w	r3, [sp, #0x19]
  384bf0: 4618         	mov	r0, r3
  384bf2: f760 f889    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9feee
  384bf6: 4607         	mov	r7, r0
  384bf8: f89d 301a    	ldrb.w	r3, [sp, #0x1a]
  384bfc: 4618         	mov	r0, r3
  384bfe: f760 f883    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9fefa
  384c02: 4606         	mov	r6, r0
  384c04: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  384c08: 4618         	mov	r0, r3
  384c0a: f760 f87d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9ff06
  384c0e: 4605         	mov	r5, r0
  384c10: f89d 301c    	ldrb.w	r3, [sp, #0x1c]
  384c14: 4618         	mov	r0, r3
  384c16: f760 f877    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9ff12
  384c1a: 4604         	mov	r4, r0
  384c1c: f89d 301d    	ldrb.w	r3, [sp, #0x1d]
  384c20: 4618         	mov	r0, r3
  384c22: f760 f871    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9ff1e
  384c26: 4681         	mov	r9, r0
  384c28: f89d 301e    	ldrb.w	r3, [sp, #0x1e]
  384c2c: 4618         	mov	r0, r3
  384c2e: f760 f86b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9ff2a
  384c32: 4680         	mov	r8, r0
  384c34: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  384c38: 4618         	mov	r0, r3
  384c3a: f760 f865    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9ff36
  384c3e: 4603         	mov	r3, r0
  384c40: f8cd 9000    	str.w	r9, [sp]
  384c44: f8cd 8004    	str.w	r8, [sp, #0x4]
  384c48: 9302         	str	r3, [sp, #0x8]
  384c4a: 2300         	movs	r3, #0x0
  384c4c: 9303         	str	r3, [sp, #0xc]
  384c4e: 4638         	mov	r0, r7
  384c50: 4631         	mov	r1, r6
  384c52: 462a         	mov	r2, r5
  384c54: 4623         	mov	r3, r4
  384c56: f215 f8db    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2151b6
  384c5a: 4603         	mov	r3, r0
  384c5c: 9309         	str	r3, [sp, #0x24]
  384c5e: f25b fd27    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25ba4e
  384c62: 4603         	mov	r3, r0
  384c64: 4618         	mov	r0, r3
  384c66: 4b04         	ldr	r3, [pc, #0x10]         @ 0x384c78 <NetworkMessageDispatcher::serverSetMap(cocos2d::extension::CCData*)+0x108>
  384c68: 447b         	add	r3, pc
  384c6a: 4619         	mov	r1, r3
  384c6c: 9a09         	ldr	r2, [sp, #0x24]
  384c6e: f25b ff5d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25beba
  384c72: b00b         	add	sp, #0x2c
  384c74: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
  ; --- end of code (Ghidra body ends at 0x384c77); words below are literal-pool data ---
  384c78: ba38         	rev	r0, r7
  384c7a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getPlayerSetupData
//      file offset 0x384c7c (= ELF address; Ghidra 0x394c7c), 600 bytes, Thumb-2
  384c7c: b5f0         	push	{r4, r5, r6, r7, lr}
  384c7e: b08f         	sub	sp, #0x3c
  384c80: 9003         	str	r0, [sp, #0xc]
  384c82: 9102         	str	r1, [sp, #0x8]
  384c84: f8ad 2006    	strh.w	r2, [sp, #0x6]
  384c88: f8ad 3004    	strh.w	r3, [sp, #0x4]
  384c8c: 4d8c         	ldr	r5, [pc, #0x230]        @ 0x384ec0 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x244>
  384c8e: 447d         	add	r5, pc
  384c90: 2321         	movs	r3, #0x21
  384c92: f88d 3011    	strb.w	r3, [sp, #0x11]
  384c96: 9802         	ldr	r0, [sp, #0x8]
  384c98: f030 f332    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x430664
  384c9c: 4607         	mov	r7, r0
  384c9e: 9802         	ldr	r0, [sp, #0x8]
  384ca0: f030 f1dc    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4303b8
  384ca4: 4606         	mov	r6, r0
  384ca6: 201c         	movs	r0, #0x1c
  384ca8: f002 f65c    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x402cb8
  384cac: 4603         	mov	r3, r0
  384cae: 461c         	mov	r4, r3
  384cb0: 4620         	mov	r0, r4
  384cb2: 4639         	mov	r1, r7
  384cb4: 4632         	mov	r2, r6
  384cb6: f0bf fa99    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbf532
  384cba: 9409         	str	r4, [sp, #0x24]
  384cbc: 9b09         	ldr	r3, [sp, #0x24]
  384cbe: 4618         	mov	r0, r3
  384cc0: f213 f91c    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x213238
  384cc4: 9802         	ldr	r0, [sp, #0x8]
  384cc6: f030 f1c9    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x430392
  384cca: 4603         	mov	r3, r0
  384ccc: f8ad 3012    	strh.w	r3, [sp, #0x12]
  384cd0: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x384ec4 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x248>
  384cd2: 58eb         	ldr	r3, [r5, r3]
  384cd4: 4618         	mov	r0, r3
  384cd6: f030 f313    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x430626
  384cda: 4607         	mov	r7, r0
  384cdc: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x384ec4 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x248>
  384cde: 58eb         	ldr	r3, [r5, r3]
  384ce0: 4618         	mov	r0, r3
  384ce2: f030 f1bb    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x430376
  384ce6: 4606         	mov	r6, r0
  384ce8: 201c         	movs	r0, #0x1c
  384cea: f002 f63b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x402c76
  384cee: 4603         	mov	r3, r0
  384cf0: 461c         	mov	r4, r3
  384cf2: 4620         	mov	r0, r4
  384cf4: 4639         	mov	r1, r7
  384cf6: 4632         	mov	r2, r6
  384cf8: f0bf fa78    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbf4f0
  384cfc: 940a         	str	r4, [sp, #0x28]
  384cfe: 9b0a         	ldr	r3, [sp, #0x28]
  384d00: 4618         	mov	r0, r3
  384d02: f213 f8fb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2131f6
  384d06: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x384ec4 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x248>
  384d08: 58eb         	ldr	r3, [r5, r3]
  384d0a: 4618         	mov	r0, r3
  384d0c: f030 f1a6    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x43034c
  384d10: 4603         	mov	r3, r0
  384d12: f8ad 3014    	strh.w	r3, [sp, #0x14]
  384d16: f0a7 fded    	bl	0x42c8f4 <ApplicationInterface::getOSType()> @ imm = #0xa7bda
  384d1a: 4603         	mov	r3, r0
  384d1c: f8ad 3016    	strh.w	r3, [sp, #0x16]
  384d20: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x384ec8 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x24c>
  384d22: 447b         	add	r3, pc
  384d24: 9307         	str	r3, [sp, #0x1c]
  384d26: 9b07         	ldr	r3, [sp, #0x1c]
  384d28: f89d 2011    	ldrb.w	r2, [sp, #0x11]
  384d2c: 701a         	strb	r2, [r3]
  384d2e: 9b07         	ldr	r3, [sp, #0x1c]
  384d30: 3301         	adds	r3, #0x1
  384d32: 9307         	str	r3, [sp, #0x1c]
  384d34: f8bd 3006    	ldrh.w	r3, [sp, #0x6]
  384d38: b2da         	uxtb	r2, r3
  384d3a: 9b07         	ldr	r3, [sp, #0x1c]
  384d3c: 701a         	strb	r2, [r3]
  384d3e: 9b07         	ldr	r3, [sp, #0x1c]
  384d40: 3301         	adds	r3, #0x1
  384d42: 9307         	str	r3, [sp, #0x1c]
  384d44: f8bd 3004    	ldrh.w	r3, [sp, #0x4]
  384d48: b2da         	uxtb	r2, r3
  384d4a: 9b07         	ldr	r3, [sp, #0x1c]
  384d4c: 701a         	strb	r2, [r3]
  384d4e: 9b07         	ldr	r3, [sp, #0x1c]
  384d50: 3301         	adds	r3, #0x1
  384d52: 9307         	str	r3, [sp, #0x1c]
  384d54: f8bd 3050    	ldrh.w	r3, [sp, #0x50]
  384d58: b2da         	uxtb	r2, r3
  384d5a: 9b07         	ldr	r3, [sp, #0x1c]
  384d5c: 701a         	strb	r2, [r3]
  384d5e: 9b07         	ldr	r3, [sp, #0x1c]
  384d60: 3301         	adds	r3, #0x1
  384d62: 9307         	str	r3, [sp, #0x1c]
  384d64: f8bd 3054    	ldrh.w	r3, [sp, #0x54]
  384d68: b2da         	uxtb	r2, r3
  384d6a: 9b07         	ldr	r3, [sp, #0x1c]
  384d6c: 701a         	strb	r2, [r3]
  384d6e: 9b07         	ldr	r3, [sp, #0x1c]
  384d70: 3301         	adds	r3, #0x1
  384d72: 9307         	str	r3, [sp, #0x1c]
  384d74: f8bd 3012    	ldrh.w	r3, [sp, #0x12]
  384d78: b2da         	uxtb	r2, r3
  384d7a: 9b07         	ldr	r3, [sp, #0x1c]
  384d7c: 701a         	strb	r2, [r3]
  384d7e: 9b07         	ldr	r3, [sp, #0x1c]
  384d80: 3301         	adds	r3, #0x1
  384d82: 9307         	str	r3, [sp, #0x1c]
  384d84: 9809         	ldr	r0, [sp, #0x24]
  384d86: f0bf fad7    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf5ae
  384d8a: 4604         	mov	r4, r0
  384d8c: 9809         	ldr	r0, [sp, #0x24]
  384d8e: f0bf fadb    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf5b6
  384d92: 4603         	mov	r3, r0
  384d94: 9807         	ldr	r0, [sp, #0x1c]
  384d96: 4621         	mov	r1, r4
  384d98: 461a         	mov	r2, r3
  384d9a: f751 e8d4    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xaee58
  384d9e: 9809         	ldr	r0, [sp, #0x24]
  384da0: f0bf fad2    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf5a4
  384da4: 4603         	mov	r3, r0
  384da6: 9a07         	ldr	r2, [sp, #0x1c]
  384da8: 4413         	add	r3, r2
  384daa: 9307         	str	r3, [sp, #0x1c]
  384dac: f8bd 3014    	ldrh.w	r3, [sp, #0x14]
  384db0: b2da         	uxtb	r2, r3
  384db2: 9b07         	ldr	r3, [sp, #0x1c]
  384db4: 701a         	strb	r2, [r3]
  384db6: 9b07         	ldr	r3, [sp, #0x1c]
  384db8: 3301         	adds	r3, #0x1
  384dba: 9307         	str	r3, [sp, #0x1c]
  384dbc: 980a         	ldr	r0, [sp, #0x28]
  384dbe: f0bf fabb    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf576
  384dc2: 4604         	mov	r4, r0
  384dc4: 980a         	ldr	r0, [sp, #0x28]
  384dc6: f0bf fabf    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf57e
  384dca: 4603         	mov	r3, r0
  384dcc: 9807         	ldr	r0, [sp, #0x1c]
  384dce: 4621         	mov	r1, r4
  384dd0: 461a         	mov	r2, r3
  384dd2: f751 e8b8    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xaee90
  384dd6: 980a         	ldr	r0, [sp, #0x28]
  384dd8: f0bf fab6    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf56c
  384ddc: 4603         	mov	r3, r0
  384dde: 9a07         	ldr	r2, [sp, #0x1c]
  384de0: 4413         	add	r3, r2
  384de2: 9307         	str	r3, [sp, #0x1c]
  384de4: f76e fe68    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x91330
  384de8: 4603         	mov	r3, r0
  384dea: 4618         	mov	r0, r3
  384dec: f773 fab0    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #-0x8caa0
  384df0: 4603         	mov	r3, r0
  384df2: 930b         	str	r3, [sp, #0x2c]
  384df4: 980b         	ldr	r0, [sp, #0x2c]
  384df6: f215 f973    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2152e6
  384dfa: 4603         	mov	r3, r0
  384dfc: f8ad 3018    	strh.w	r3, [sp, #0x18]
  384e00: f8bd 3018    	ldrh.w	r3, [sp, #0x18]
  384e04: b2da         	uxtb	r2, r3
  384e06: 9b07         	ldr	r3, [sp, #0x1c]
  384e08: 701a         	strb	r2, [r3]
  384e0a: 9b07         	ldr	r3, [sp, #0x1c]
  384e0c: 3301         	adds	r3, #0x1
  384e0e: 9307         	str	r3, [sp, #0x1c]
  384e10: 2300         	movs	r3, #0x0
  384e12: 9308         	str	r3, [sp, #0x20]
  384e14: e017         	b	0x384e46 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x1ca> @ imm = #0x2e
  384e16: 9b08         	ldr	r3, [sp, #0x20]
  384e18: 980b         	ldr	r0, [sp, #0x2c]
  384e1a: 4619         	mov	r1, r3
  384e1c: f215 f980    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x215300
  384e20: 4603         	mov	r3, r0
  384e22: 930c         	str	r3, [sp, #0x30]
  384e24: 980c         	ldr	r0, [sp, #0x30]
  384e26: f214 fcbb    	bl	0x5997a0 <cocos2d::CCString::intValue() const> @ imm = #0x214976
  384e2a: 4603         	mov	r3, r0
  384e2c: f8ad 301a    	strh.w	r3, [sp, #0x1a]
  384e30: f8bd 301a    	ldrh.w	r3, [sp, #0x1a]
  384e34: b2da         	uxtb	r2, r3
  384e36: 9b07         	ldr	r3, [sp, #0x1c]
  384e38: 701a         	strb	r2, [r3]
  384e3a: 9b07         	ldr	r3, [sp, #0x1c]
  384e3c: 3301         	adds	r3, #0x1
  384e3e: 9307         	str	r3, [sp, #0x1c]
  384e40: 9b08         	ldr	r3, [sp, #0x20]
  384e42: 3301         	adds	r3, #0x1
  384e44: 9308         	str	r3, [sp, #0x20]
  384e46: 9c08         	ldr	r4, [sp, #0x20]
  384e48: 980b         	ldr	r0, [sp, #0x2c]
  384e4a: f215 f949    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x215292
  384e4e: 4603         	mov	r3, r0
  384e50: 429c         	cmp	r4, r3
  384e52: bf2c         	ite	hs
  384e54: 2300         	movhs	r3, #0x0
  384e56: 2301         	movlo	r3, #0x1
  384e58: b2db         	uxtb	r3, r3
  384e5a: 2b00         	cmp	r3, #0x0
  384e5c: d1db         	bne	0x384e16 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x19a> @ imm = #-0x4a
  384e5e: f8bd 3016    	ldrh.w	r3, [sp, #0x16]
  384e62: b2da         	uxtb	r2, r3
  384e64: 9b07         	ldr	r3, [sp, #0x1c]
  384e66: 701a         	strb	r2, [r3]
  384e68: 9b07         	ldr	r3, [sp, #0x1c]
  384e6a: 3301         	adds	r3, #0x1
  384e6c: 9307         	str	r3, [sp, #0x1c]
  384e6e: 201c         	movs	r0, #0x1c
  384e70: f002 f578    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x402af0
  384e74: 4603         	mov	r3, r0
  384e76: 461c         	mov	r4, r3
  384e78: 9a07         	ldr	r2, [sp, #0x1c]
  384e7a: 4b14         	ldr	r3, [pc, #0x50]         @ 0x384ecc <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x250>
  384e7c: 447b         	add	r3, pc
  384e7e: 1ad3         	subs	r3, r2, r3
  384e80: 4620         	mov	r0, r4
  384e82: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x384ed0 <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x254>
  384e84: 447a         	add	r2, pc
  384e86: 4611         	mov	r1, r2
  384e88: 461a         	mov	r2, r3
  384e8a: f0bf f9af    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbf35e
  384e8e: 940d         	str	r4, [sp, #0x34]
  384e90: 9b0d         	ldr	r3, [sp, #0x34]
  384e92: 4618         	mov	r0, r3
  384e94: f213 f832    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x213064
  384e98: 9b0d         	ldr	r3, [sp, #0x34]
  384e9a: e00e         	b	0x384eba <NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short)+0x23e> @ imm = #0x1c
  384e9c: 4620         	mov	r0, r4
  384e9e: f003 f101    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x403202
  384ea2: f003 f103    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x403206
  384ea6: 4620         	mov	r0, r4
  384ea8: f003 f0fc    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4031f8
  384eac: f003 f0fe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4031fc
  384eb0: 4620         	mov	r0, r4
  384eb2: f003 f0f7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4031ee
  384eb6: f003 f0f9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4031f2
  384eba: 4618         	mov	r0, r3
  384ebc: b00f         	add	sp, #0x3c
  384ebe: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x384ebf); words below are literal-pool data ---
  384ec0: dd7a         	ble	0x384fb8 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0xe4> @ imm = #0xf4
  384ec2: 005a         	lsls	r2, r3, #0x1
  384ec4: d958         	bls	0x384f78 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0xa4> @ imm = #0xb0
  384ec6: ffff bdc2    	<unknown>
  384eca: 005b         	lsls	r3, r3, #0x1
  384ecc: bc68         	pop	{r3, r5, r6}
  384ece: 005b         	lsls	r3, r3, #0x1
  384ed0: bc60         	pop	{r5, r6}
  384ed2: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::updatePeerSetup
//      file offset 0x384ed4 (= ELF address; Ghidra 0x394ed4), 880 bytes, Thumb-2
  384ed4: b5f0         	push	{r4, r5, r6, r7, lr}
  384ed6: b09d         	sub	sp, #0x74
  384ed8: 9009         	str	r0, [sp, #0x24]
  384eda: 9108         	str	r1, [sp, #0x20]
  384edc: 9207         	str	r2, [sp, #0x1c]
  384ede: 9808         	ldr	r0, [sp, #0x20]
  384ee0: f0bf fa2a    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf454
  384ee4: 4603         	mov	r3, r0
  384ee6: 9310         	str	r3, [sp, #0x40]
  384ee8: 9b10         	ldr	r3, [sp, #0x40]
  384eea: 3301         	adds	r3, #0x1
  384eec: 9310         	str	r3, [sp, #0x40]
  384eee: 9b10         	ldr	r3, [sp, #0x40]
  384ef0: 781b         	ldrb	r3, [r3]
  384ef2: f88d 302f    	strb.w	r3, [sp, #0x2f]
  384ef6: 9b10         	ldr	r3, [sp, #0x40]
  384ef8: 3301         	adds	r3, #0x1
  384efa: 9310         	str	r3, [sp, #0x40]
  384efc: 9b10         	ldr	r3, [sp, #0x40]
  384efe: 781b         	ldrb	r3, [r3]
  384f00: f88d 3030    	strb.w	r3, [sp, #0x30]
  384f04: 9b10         	ldr	r3, [sp, #0x40]
  384f06: 3301         	adds	r3, #0x1
  384f08: 9310         	str	r3, [sp, #0x40]
  384f0a: 9b10         	ldr	r3, [sp, #0x40]
  384f0c: 781b         	ldrb	r3, [r3]
  384f0e: f88d 3031    	strb.w	r3, [sp, #0x31]
  384f12: 9b10         	ldr	r3, [sp, #0x40]
  384f14: 3301         	adds	r3, #0x1
  384f16: 9310         	str	r3, [sp, #0x40]
  384f18: 9b10         	ldr	r3, [sp, #0x40]
  384f1a: 781b         	ldrb	r3, [r3]
  384f1c: f88d 3032    	strb.w	r3, [sp, #0x32]
  384f20: 9b10         	ldr	r3, [sp, #0x40]
  384f22: 3301         	adds	r3, #0x1
  384f24: 9310         	str	r3, [sp, #0x40]
  384f26: 9b10         	ldr	r3, [sp, #0x40]
  384f28: 781b         	ldrb	r3, [r3]
  384f2a: f88d 3033    	strb.w	r3, [sp, #0x33]
  384f2e: 9b10         	ldr	r3, [sp, #0x40]
  384f30: 3301         	adds	r3, #0x1
  384f32: 9310         	str	r3, [sp, #0x40]
  384f34: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  384f38: 9810         	ldr	r0, [sp, #0x40]
  384f3a: 4619         	mov	r1, r3
  384f3c: f214 fd9a    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x214b34
  384f40: 4603         	mov	r3, r0
  384f42: 9312         	str	r3, [sp, #0x48]
  384f44: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  384f48: 9a10         	ldr	r2, [sp, #0x40]
  384f4a: 4413         	add	r3, r2
  384f4c: 9310         	str	r3, [sp, #0x40]
  384f4e: 9b10         	ldr	r3, [sp, #0x40]
  384f50: 781b         	ldrb	r3, [r3]
  384f52: f88d 3034    	strb.w	r3, [sp, #0x34]
  384f56: 9b10         	ldr	r3, [sp, #0x40]
  384f58: 3301         	adds	r3, #0x1
  384f5a: 9310         	str	r3, [sp, #0x40]
  384f5c: f89d 3034    	ldrb.w	r3, [sp, #0x34]
  384f60: 9810         	ldr	r0, [sp, #0x40]
  384f62: 4619         	mov	r1, r3
  384f64: f214 fd86    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x214b0c
  384f68: 4603         	mov	r3, r0
  384f6a: 9313         	str	r3, [sp, #0x4c]
  384f6c: f89d 3034    	ldrb.w	r3, [sp, #0x34]
  384f70: 9a10         	ldr	r2, [sp, #0x40]
  384f72: 4413         	add	r3, r2
  384f74: 9310         	str	r3, [sp, #0x40]
  384f76: 9b10         	ldr	r3, [sp, #0x40]
  384f78: 781b         	ldrb	r3, [r3]
  384f7a: f88d 3035    	strb.w	r3, [sp, #0x35]
  384f7e: 9b10         	ldr	r3, [sp, #0x40]
  384f80: 3301         	adds	r3, #0x1
  384f82: 9310         	str	r3, [sp, #0x40]
  384f84: f214 fed6    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x214dac
  384f88: 4603         	mov	r3, r0
  384f8a: 9314         	str	r3, [sp, #0x50]
  384f8c: 2300         	movs	r3, #0x0
  384f8e: 9311         	str	r3, [sp, #0x44]
  384f90: e016         	b	0x384fc0 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0xec> @ imm = #0x2c
  384f92: 9b10         	ldr	r3, [sp, #0x40]
  384f94: 781b         	ldrb	r3, [r3]
  384f96: f88d 3036    	strb.w	r3, [sp, #0x36]
  384f9a: 9b10         	ldr	r3, [sp, #0x40]
  384f9c: 3301         	adds	r3, #0x1
  384f9e: 9310         	str	r3, [sp, #0x40]
  384fa0: f89d 3036    	ldrb.w	r3, [sp, #0x36]
  384fa4: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x38523c <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x368>
  384fa6: 447a         	add	r2, pc
  384fa8: 4610         	mov	r0, r2
  384faa: 4619         	mov	r1, r3
  384fac: f214 fdb0    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x214b60
  384fb0: 4603         	mov	r3, r0
  384fb2: 9814         	ldr	r0, [sp, #0x50]
  384fb4: 4619         	mov	r1, r3
  384fb6: f215 f959    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2152b2
  384fba: 9b11         	ldr	r3, [sp, #0x44]
  384fbc: 3301         	adds	r3, #0x1
  384fbe: 9311         	str	r3, [sp, #0x44]
  384fc0: f89d 2035    	ldrb.w	r2, [sp, #0x35]
  384fc4: 9b11         	ldr	r3, [sp, #0x44]
  384fc6: 429a         	cmp	r2, r3
  384fc8: dce3         	bgt	0x384f92 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0xbe> @ imm = #-0x3a
  384fca: f7f2 fdb9    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xd48e
  384fce: 4603         	mov	r3, r0
  384fd0: 4618         	mov	r0, r3
  384fd2: f7f4 fed9    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xb24e
  384fd6: 4603         	mov	r3, r0
  384fd8: 2b00         	cmp	r3, #0x0
  384fda: f000 8085    	beq.w	0x3850e8 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x214> @ imm = #0x10a
  384fde: ab0f         	add	r3, sp, #0x3c
  384fe0: 4618         	mov	r0, r3
  384fe2: 9907         	ldr	r1, [sp, #0x1c]
  384fe4: f031 f280    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x431500
  384fe8: ab0f         	add	r3, sp, #0x3c
  384fea: 9809         	ldr	r0, [sp, #0x24]
  384fec: 4619         	mov	r1, r3
  384fee: f002 fbc1    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x2782
  384ff2: 4603         	mov	r3, r0
  384ff4: 9315         	str	r3, [sp, #0x54]
  384ff6: ab0f         	add	r3, sp, #0x3c
  384ff8: 4618         	mov	r0, r3
  384ffa: f030 f48b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430916
  384ffe: 9b15         	ldr	r3, [sp, #0x54]
  385000: 2b00         	cmp	r3, #0x0
  385002: d071         	beq	0x3850e8 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x214> @ imm = #0xe2
  385004: f76e fd58    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x91550
  385008: 4602         	mov	r2, r0
  38500a: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  38500e: 4610         	mov	r0, r2
  385010: 9914         	ldr	r1, [sp, #0x50]
  385012: 461a         	mov	r2, r3
  385014: f772 f82c    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0x8dfa8
  385018: 4603         	mov	r3, r0
  38501a: 9316         	str	r3, [sp, #0x58]
  38501c: f76e fd4c    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x91568
  385020: 4602         	mov	r2, r0
  385022: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  385026: 4610         	mov	r0, r2
  385028: 9914         	ldr	r1, [sp, #0x50]
  38502a: 461a         	mov	r2, r3
  38502c: f772 ff2a    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #-0x8d1ac
  385030: 4603         	mov	r3, r0
  385032: 9317         	str	r3, [sp, #0x5c]
  385034: f76e fd40    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x91580
  385038: 4602         	mov	r2, r0
  38503a: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  38503e: 4610         	mov	r0, r2
  385040: 9914         	ldr	r1, [sp, #0x50]
  385042: 461a         	mov	r2, r3
  385044: f772 ffbc    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #-0x8d088
  385048: 4603         	mov	r3, r0
  38504a: 9318         	str	r3, [sp, #0x60]
  38504c: f76e fd34    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x91598
  385050: 4602         	mov	r2, r0
  385052: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  385056: 4610         	mov	r0, r2
  385058: 9914         	ldr	r1, [sp, #0x50]
  38505a: 461a         	mov	r2, r3
  38505c: f773 f84e    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #-0x8cf64
  385060: 4603         	mov	r3, r0
  385062: 9319         	str	r3, [sp, #0x64]
  385064: f76e fd28    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x915b0
  385068: 4602         	mov	r2, r0
  38506a: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  38506e: 4610         	mov	r0, r2
  385070: 9914         	ldr	r1, [sp, #0x50]
  385072: 461a         	mov	r2, r3
  385074: f773 f8e0    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #-0x8ce40
  385078: 4603         	mov	r3, r0
  38507a: 931a         	str	r3, [sp, #0x68]
  38507c: 9b15         	ldr	r3, [sp, #0x54]
  38507e: 681b         	ldr	r3, [r3]
  385080: f503 73ec    	add.w	r3, r3, #0x1d8
  385084: 681b         	ldr	r3, [r3]
  385086: 9815         	ldr	r0, [sp, #0x54]
  385088: 4798         	blx	r3
  38508a: 4603         	mov	r3, r0
  38508c: 9a18         	ldr	r2, [sp, #0x60]
  38508e: 9200         	str	r2, [sp]
  385090: 9a19         	ldr	r2, [sp, #0x64]
  385092: 9201         	str	r2, [sp, #0x4]
  385094: 4618         	mov	r0, r3
  385096: 991a         	ldr	r1, [sp, #0x68]
  385098: 9a16         	ldr	r2, [sp, #0x58]
  38509a: 9b17         	ldr	r3, [sp, #0x5c]
  38509c: f06e fff2    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x6efe4
  3850a0: 9b15         	ldr	r3, [sp, #0x54]
  3850a2: 681b         	ldr	r3, [r3]
  3850a4: f503 73ec    	add.w	r3, r3, #0x1d8
  3850a8: 681b         	ldr	r3, [r3]
  3850aa: 9815         	ldr	r0, [sp, #0x54]
  3850ac: 4798         	blx	r3
  3850ae: 4604         	mov	r4, r0
  3850b0: 9812         	ldr	r0, [sp, #0x48]
  3850b2: f214 fc39    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x214872
  3850b6: 4605         	mov	r5, r0
  3850b8: ab0e         	add	r3, sp, #0x38
  3850ba: 4618         	mov	r0, r3
  3850bc: f005 f19a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x405334
  3850c0: aa0f         	add	r2, sp, #0x3c
  3850c2: ab0e         	add	r3, sp, #0x38
  3850c4: 4610         	mov	r0, r2
  3850c6: 4629         	mov	r1, r5
  3850c8: 461a         	mov	r2, r3
  3850ca: f031 f4c9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x431992
  3850ce: ab0f         	add	r3, sp, #0x3c
  3850d0: 4620         	mov	r0, r4
  3850d2: 4619         	mov	r1, r3
  3850d4: f06e ff46    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #0x6ee8c
  3850d8: ab0f         	add	r3, sp, #0x3c
  3850da: 4618         	mov	r0, r3
  3850dc: f030 f41a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430834
  3850e0: ab0e         	add	r3, sp, #0x38
  3850e2: 4618         	mov	r0, r3
  3850e4: f005 f18a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x405314
  3850e8: 9b12         	ldr	r3, [sp, #0x48]
  3850ea: f103 0414    	add.w	r4, r3, #0x14
  3850ee: 9812         	ldr	r0, [sp, #0x48]
  3850f0: f214 fc1a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x214834
  3850f4: 4605         	mov	r5, r0
  3850f6: ab0b         	add	r3, sp, #0x2c
  3850f8: 4618         	mov	r0, r3
  3850fa: f005 f17b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4052f6
  3850fe: aa0e         	add	r2, sp, #0x38
  385100: ab0b         	add	r3, sp, #0x2c
  385102: 4610         	mov	r0, r2
  385104: 4629         	mov	r1, r5
  385106: 461a         	mov	r2, r3
  385108: f031 f4aa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x431954
  38510c: aa0f         	add	r2, sp, #0x3c
  38510e: ab0e         	add	r3, sp, #0x38
  385110: 4610         	mov	r0, r2
  385112: 9909         	ldr	r1, [sp, #0x24]
  385114: 461a         	mov	r2, r3
  385116: f002 fd4f    	bl	0x387bb8 <NetworkMessageDispatcher::filterText(std::string)> @ imm = #0x2a9e
  38511a: ab0f         	add	r3, sp, #0x3c
  38511c: 4620         	mov	r0, r4
  38511e: 4619         	mov	r1, r3
  385120: f030 f0e2    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x4301c4
  385124: ab0f         	add	r3, sp, #0x3c
  385126: 4618         	mov	r0, r3
  385128: f030 f3f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4307e8
  38512c: ab0e         	add	r3, sp, #0x38
  38512e: 4618         	mov	r0, r3
  385130: f030 f3f0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4307e0
  385134: ab0b         	add	r3, sp, #0x2c
  385136: 4618         	mov	r0, r3
  385138: f005 f160    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4052c0
  38513c: 9807         	ldr	r0, [sp, #0x1c]
  38513e: f214 fc7d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2148fa
  385142: 4605         	mov	r5, r0
  385144: f89d 302f    	ldrb.w	r3, [sp, #0x2f]
  385148: 4618         	mov	r0, r3
  38514a: f75f fddd    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0446
  38514e: 4604         	mov	r4, r0
  385150: f89d 3030    	ldrb.w	r3, [sp, #0x30]
  385154: 4618         	mov	r0, r3
  385156: f75f fdd7    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0452
  38515a: 4607         	mov	r7, r0
  38515c: f89d 3031    	ldrb.w	r3, [sp, #0x31]
  385160: 4618         	mov	r0, r3
  385162: f75f fdd1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa045e
  385166: 4606         	mov	r6, r0
  385168: f89d 3032    	ldrb.w	r3, [sp, #0x32]
  38516c: 4618         	mov	r0, r3
  38516e: f75f fdcb    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa046a
  385172: 4603         	mov	r3, r0
  385174: 9700         	str	r7, [sp]
  385176: 9601         	str	r6, [sp, #0x4]
  385178: 9302         	str	r3, [sp, #0x8]
  38517a: 9b14         	ldr	r3, [sp, #0x50]
  38517c: 9303         	str	r3, [sp, #0xc]
  38517e: 2300         	movs	r3, #0x0
  385180: 9304         	str	r3, [sp, #0x10]
  385182: 4628         	mov	r0, r5
  385184: 9912         	ldr	r1, [sp, #0x48]
  385186: 4622         	mov	r2, r4
  385188: 9b13         	ldr	r3, [sp, #0x4c]
  38518a: f214 fe41    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x214c82
  38518e: 4603         	mov	r3, r0
  385190: 931b         	str	r3, [sp, #0x6c]
  385192: 9808         	ldr	r0, [sp, #0x20]
  385194: f0bf f8d8    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf1b0
  385198: 4602         	mov	r2, r0
  38519a: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  38519e: f103 0108    	add.w	r1, r3, #0x8
  3851a2: f89d 3034    	ldrb.w	r3, [sp, #0x34]
  3851a6: 4419         	add	r1, r3
  3851a8: f89d 3035    	ldrb.w	r3, [sp, #0x35]
  3851ac: 440b         	add	r3, r1
  3851ae: 429a         	cmp	r2, r3
  3851b0: bf94         	ite	ls
  3851b2: 2300         	movls	r3, #0x0
  3851b4: 2301         	movhi	r3, #0x1
  3851b6: b2db         	uxtb	r3, r3
  3851b8: 2b00         	cmp	r3, #0x0
  3851ba: d010         	beq	0x3851de <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x30a> @ imm = #0x20
  3851bc: 9b10         	ldr	r3, [sp, #0x40]
  3851be: 781b         	ldrb	r3, [r3]
  3851c0: f88d 3037    	strb.w	r3, [sp, #0x37]
  3851c4: 9b10         	ldr	r3, [sp, #0x40]
  3851c6: 3301         	adds	r3, #0x1
  3851c8: 9310         	str	r3, [sp, #0x40]
  3851ca: f89d 3037    	ldrb.w	r3, [sp, #0x37]
  3851ce: 4618         	mov	r0, r3
  3851d0: f75f fd9a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa04cc
  3851d4: 4603         	mov	r3, r0
  3851d6: 981b         	ldr	r0, [sp, #0x6c]
  3851d8: 4619         	mov	r1, r3
  3851da: f215 f847    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x21508e
  3851de: f25b fa67    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25b4ce
  3851e2: 4603         	mov	r3, r0
  3851e4: 4618         	mov	r0, r3
  3851e6: 4b16         	ldr	r3, [pc, #0x58]         @ 0x385240 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x36c>
  3851e8: 447b         	add	r3, pc
  3851ea: 4619         	mov	r1, r3
  3851ec: 9a1b         	ldr	r2, [sp, #0x6c]
  3851ee: f25b fc9d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b93a
  3851f2: e020         	b	0x385236 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x362> @ imm = #0x40
  3851f4: ab0f         	add	r3, sp, #0x3c
  3851f6: 4618         	mov	r0, r3
  3851f8: f030 f38c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430718
  3851fc: f002 f756    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402eac
  385200: ab0f         	add	r3, sp, #0x3c
  385202: 4618         	mov	r0, r3
  385204: f030 f386    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43070c
  385208: e7ff         	b	0x38520a <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x336> @ imm = #-0x2
  38520a: ab0e         	add	r3, sp, #0x38
  38520c: 4618         	mov	r0, r3
  38520e: f005 f0f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4051ea
  385212: f002 f74b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402e96
  385216: ab0f         	add	r3, sp, #0x3c
  385218: 4618         	mov	r0, r3
  38521a: f030 f37b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4306f6
  38521e: e7ff         	b	0x385220 <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x34c> @ imm = #-0x2
  385220: ab0e         	add	r3, sp, #0x38
  385222: 4618         	mov	r0, r3
  385224: f030 f376    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4306ec
  385228: e7ff         	b	0x38522a <NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string)+0x356> @ imm = #-0x2
  38522a: ab0b         	add	r3, sp, #0x2c
  38522c: 4618         	mov	r0, r3
  38522e: f005 f0e5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4051ca
  385232: f002 f73b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402e76
  385236: b01d         	add	sp, #0x74
  385238: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x385239); words below are literal-pool data ---
  38523a: bf00         	nop
  38523c: b70a         	<unknown>
  38523e: 0044         	lsls	r4, r0, #0x1
  385240: b4cc         	push	{r2, r3, r6, r7}
  385242: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::peerWeaponLockQuery
//      file offset 0x385244 (= ELF address; Ghidra 0x395244), 512 bytes, Thumb-2
  385244: b570         	push	{r4, r5, r6, lr}
  385246: b08a         	sub	sp, #0x28
  385248: 9003         	str	r0, [sp, #0xc]
  38524a: 9102         	str	r1, [sp, #0x8]
  38524c: 9201         	str	r2, [sp, #0x4]
  38524e: 4e78         	ldr	r6, [pc, #0x1e0]        @ 0x385430 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1ec>
  385250: 447e         	add	r6, pc
  385252: f7f2 fc75    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xd716
  385256: 4603         	mov	r3, r0
  385258: 4618         	mov	r0, r3
  38525a: f7f4 fd95    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xb4d6
  38525e: 4603         	mov	r3, r0
  385260: f083 0301    	eor	r3, r3, #0x1
  385264: b2db         	uxtb	r3, r3
  385266: 2b00         	cmp	r3, #0x0
  385268: d000         	beq	0x38526c <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x28> @ imm = #0x0
  38526a: e0de         	b	0x38542a <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1e6> @ imm = #0x1bc
  38526c: 9802         	ldr	r0, [sp, #0x8]
  38526e: f0bf f863    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf0c6
  385272: 4603         	mov	r3, r0
  385274: 9306         	str	r3, [sp, #0x18]
  385276: 9b06         	ldr	r3, [sp, #0x18]
  385278: 3301         	adds	r3, #0x1
  38527a: 9306         	str	r3, [sp, #0x18]
  38527c: 9802         	ldr	r0, [sp, #0x8]
  38527e: f0bf f863    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf0c6
  385282: 4604         	mov	r4, r0
  385284: 9802         	ldr	r0, [sp, #0x8]
  385286: f0bf f857    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf0ae
  38528a: 4603         	mov	r3, r0
  38528c: 461a         	mov	r2, r3
  38528e: 9b06         	ldr	r3, [sp, #0x18]
  385290: 1ad3         	subs	r3, r2, r3
  385292: 4423         	add	r3, r4
  385294: 9806         	ldr	r0, [sp, #0x18]
  385296: 4619         	mov	r1, r3
  385298: f214 fbec    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x2147d8
  38529c: 4603         	mov	r3, r0
  38529e: 9307         	str	r3, [sp, #0x1c]
  3852a0: 9802         	ldr	r0, [sp, #0x8]
  3852a2: f0bf f851    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbf0a2
  3852a6: 4604         	mov	r4, r0
  3852a8: 9802         	ldr	r0, [sp, #0x8]
  3852aa: f0bf f845    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbf08a
  3852ae: 4603         	mov	r3, r0
  3852b0: 461a         	mov	r2, r3
  3852b2: 9b06         	ldr	r3, [sp, #0x18]
  3852b4: 1ad3         	subs	r3, r2, r3
  3852b6: 4423         	add	r3, r4
  3852b8: 9a06         	ldr	r2, [sp, #0x18]
  3852ba: 4413         	add	r3, r2
  3852bc: 9306         	str	r3, [sp, #0x18]
  3852be: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x385434 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1f0>
  3852c0: 58f3         	ldr	r3, [r6, r3]
  3852c2: 681c         	ldr	r4, [r3]
  3852c4: 9807         	ldr	r0, [sp, #0x1c]
  3852c6: f214 fb2f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21465e
  3852ca: 4605         	mov	r5, r0
  3852cc: ab04         	add	r3, sp, #0x10
  3852ce: 4618         	mov	r0, r3
  3852d0: f005 f090    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x405120
  3852d4: aa05         	add	r2, sp, #0x14
  3852d6: ab04         	add	r3, sp, #0x10
  3852d8: 4610         	mov	r0, r2
  3852da: 4629         	mov	r1, r5
  3852dc: 461a         	mov	r2, r3
  3852de: f031 f3bf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x43177e
  3852e2: ab05         	add	r3, sp, #0x14
  3852e4: 4620         	mov	r0, r4
  3852e6: 4619         	mov	r1, r3
  3852e8: f20e fe02    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x20ec04
  3852ec: 4603         	mov	r3, r0
  3852ee: 9308         	str	r3, [sp, #0x20]
  3852f0: ab05         	add	r3, sp, #0x14
  3852f2: 4618         	mov	r0, r3
  3852f4: f030 f30e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43061c
  3852f8: ab04         	add	r3, sp, #0x10
  3852fa: 4618         	mov	r0, r3
  3852fc: f005 f07e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4050fc
  385300: 2400         	movs	r4, #0x0
  385302: 2500         	movs	r5, #0x0
  385304: 9b08         	ldr	r3, [sp, #0x20]
  385306: 2b00         	cmp	r3, #0x0
  385308: d024         	beq	0x385354 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x110> @ imm = #0x48
  38530a: 9b08         	ldr	r3, [sp, #0x20]
  38530c: 681b         	ldr	r3, [r3]
  38530e: f503 7301    	add.w	r3, r3, #0x204
  385312: 681b         	ldr	r3, [r3]
  385314: 9a08         	ldr	r2, [sp, #0x20]
  385316: a904         	add	r1, sp, #0x10
  385318: 4608         	mov	r0, r1
  38531a: 4611         	mov	r1, r2
  38531c: 4798         	blx	r3
  38531e: 2401         	movs	r4, #0x1
  385320: 4b45         	ldr	r3, [pc, #0x114]        @ 0x385438 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1f4>
  385322: 58f3         	ldr	r3, [r6, r3]
  385324: 681b         	ldr	r3, [r3]
  385326: 681b         	ldr	r3, [r3]
  385328: f503 73e0    	add.w	r3, r3, #0x1c0
  38532c: 681b         	ldr	r3, [r3]
  38532e: 4a42         	ldr	r2, [pc, #0x108]        @ 0x385438 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1f4>
  385330: 58b2         	ldr	r2, [r6, r2]
  385332: 6812         	ldr	r2, [r2]
  385334: a905         	add	r1, sp, #0x14
  385336: 4608         	mov	r0, r1
  385338: 4611         	mov	r1, r2
  38533a: 4798         	blx	r3
  38533c: 2501         	movs	r5, #0x1
  38533e: aa04         	add	r2, sp, #0x10
  385340: ab05         	add	r3, sp, #0x14
  385342: 4610         	mov	r0, r2
  385344: 4619         	mov	r1, r3
  385346: f030 f199    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x430332
  38534a: 4603         	mov	r3, r0
  38534c: 2b00         	cmp	r3, #0x0
  38534e: d101         	bne	0x385354 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x110> @ imm = #0x2
  385350: 2301         	movs	r3, #0x1
  385352: e000         	b	0x385356 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x112> @ imm = #0x0
  385354: 2300         	movs	r3, #0x0
  385356: 461e         	mov	r6, r3
  385358: 2d00         	cmp	r5, #0x0
  38535a: d003         	beq	0x385364 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x120> @ imm = #0x6
  38535c: ab05         	add	r3, sp, #0x14
  38535e: 4618         	mov	r0, r3
  385360: f030 f2d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4305b0
  385364: 2c00         	cmp	r4, #0x0
  385366: d004         	beq	0x385372 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x12e> @ imm = #0x8
  385368: bf00         	nop
  38536a: ab04         	add	r3, sp, #0x10
  38536c: 4618         	mov	r0, r3
  38536e: f030 f2d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4305a2
  385372: 2e00         	cmp	r6, #0x0
  385374: d059         	beq	0x38542a <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1e6> @ imm = #0xb2
  385376: 9801         	ldr	r0, [sp, #0x4]
  385378: f214 fb60    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2146c0
  38537c: 4603         	mov	r3, r0
  38537e: 9807         	ldr	r0, [sp, #0x1c]
  385380: 4619         	mov	r1, r3
  385382: 2200         	movs	r2, #0x0
  385384: f214 fd44    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x214a88
  385388: 4603         	mov	r3, r0
  38538a: 9309         	str	r3, [sp, #0x24]
  38538c: 9b08         	ldr	r3, [sp, #0x20]
  38538e: 2b00         	cmp	r3, #0x0
  385390: d00e         	beq	0x3853b0 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x16c> @ imm = #0x1c
  385392: 9b08         	ldr	r3, [sp, #0x20]
  385394: 681b         	ldr	r3, [r3]
  385396: f503 732a    	add.w	r3, r3, #0x2a8
  38539a: 681b         	ldr	r3, [r3]
  38539c: 9808         	ldr	r0, [sp, #0x20]
  38539e: 4798         	blx	r3
  3853a0: 4603         	mov	r3, r0
  3853a2: f083 0301    	eor	r3, r3, #0x1
  3853a6: b2db         	uxtb	r3, r3
  3853a8: 2b00         	cmp	r3, #0x0
  3853aa: d001         	beq	0x3853b0 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x16c> @ imm = #0x2
  3853ac: 2301         	movs	r3, #0x1
  3853ae: e000         	b	0x3853b2 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x16e> @ imm = #0x0
  3853b0: 2300         	movs	r3, #0x0
  3853b2: 2b00         	cmp	r3, #0x0
  3853b4: d012         	beq	0x3853dc <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x198> @ imm = #0x24
  3853b6: 9b08         	ldr	r3, [sp, #0x20]
  3853b8: 681b         	ldr	r3, [r3]
  3853ba: f503 732b    	add.w	r3, r3, #0x2ac
  3853be: 681b         	ldr	r3, [r3]
  3853c0: 9808         	ldr	r0, [sp, #0x20]
  3853c2: 2101         	movs	r1, #0x1
  3853c4: 4798         	blx	r3
  3853c6: f25b f973    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25b2e6
  3853ca: 4603         	mov	r3, r0
  3853cc: 4618         	mov	r0, r3
  3853ce: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x38543c <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1f8>
  3853d0: 447b         	add	r3, pc
  3853d2: 4619         	mov	r1, r3
  3853d4: 9a09         	ldr	r2, [sp, #0x24]
  3853d6: f25b fba9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b752
  3853da: e027         	b	0x38542c <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1e8> @ imm = #0x4e
  3853dc: f25b f968    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25b2d0
  3853e0: 4603         	mov	r3, r0
  3853e2: 4618         	mov	r0, r3
  3853e4: 4b16         	ldr	r3, [pc, #0x58]         @ 0x385440 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1fc>
  3853e6: 447b         	add	r3, pc
  3853e8: 4619         	mov	r1, r3
  3853ea: 9a09         	ldr	r2, [sp, #0x24]
  3853ec: f25b fb9e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b73c
  3853f0: e01c         	b	0x38542c <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1e8> @ imm = #0x38
  3853f2: ab05         	add	r3, sp, #0x14
  3853f4: 4618         	mov	r0, r3
  3853f6: f030 f28d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43051a
  3853fa: e7ff         	b	0x3853fc <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1b8> @ imm = #-0x2
  3853fc: ab04         	add	r3, sp, #0x10
  3853fe: 4618         	mov	r0, r3
  385400: f004 f7fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x404ff8
  385404: f002 f652    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402ca4
  385408: 2d00         	cmp	r5, #0x0
  38540a: d003         	beq	0x385414 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1d0> @ imm = #0x6
  38540c: ab05         	add	r3, sp, #0x14
  38540e: 4618         	mov	r0, r3
  385410: f030 f280    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430500
  385414: 2c00         	cmp	r4, #0x0
  385416: d005         	beq	0x385424 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1e0> @ imm = #0xa
  385418: bf00         	nop
  38541a: ab04         	add	r3, sp, #0x10
  38541c: 4618         	mov	r0, r3
  38541e: f030 f279    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4304f2
  385422: e000         	b	0x385426 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1e2> @ imm = #0x0
  385424: bf00         	nop
  385426: f002 f641    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402c82
  38542a: bf00         	nop
  38542c: b00a         	add	sp, #0x28
  38542e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x38542f); words below are literal-pool data ---
  385430: d7b8         	bvc	0x3853a4 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x160> @ imm = #-0x90
  385432: 005a         	lsls	r2, r3, #0x1
  385434: dcec         	bgt	0x385410 <NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string)+0x1cc> @ imm = #-0x28
  385436: ffff d784    	<unknown>
  38543a: ffff b2f0    	<unknown>
  38543e: 0044         	lsls	r4, r0, #0x1
  385440: b2ea         	uxtb	r2, r5
  385442: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::peerWeaponLockReply
//      file offset 0x385444 (= ELF address; Ghidra 0x395444), 368 bytes, Thumb-2
  385444: b530         	push	{r4, r5, lr}
  385446: b08b         	sub	sp, #0x2c
  385448: 9003         	str	r0, [sp, #0xc]
  38544a: 9102         	str	r1, [sp, #0x8]
  38544c: 9201         	str	r2, [sp, #0x4]
  38544e: 4d55         	ldr	r5, [pc, #0x154]        @ 0x3855a4 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x160>
  385450: 447d         	add	r5, pc
  385452: f7f2 fb75    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xd916
  385456: 4603         	mov	r3, r0
  385458: 4618         	mov	r0, r3
  38545a: f7f4 fc95    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xb6d6
  38545e: 4603         	mov	r3, r0
  385460: f083 0301    	eor	r3, r3, #0x1
  385464: b2db         	uxtb	r3, r3
  385466: 2b00         	cmp	r3, #0x0
  385468: d000         	beq	0x38546c <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x28> @ imm = #0x0
  38546a: e097         	b	0x38559c <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x158> @ imm = #0x12e
  38546c: 9802         	ldr	r0, [sp, #0x8]
  38546e: f0be ff63    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbeec6
  385472: 4603         	mov	r3, r0
  385474: 9307         	str	r3, [sp, #0x1c]
  385476: 9b07         	ldr	r3, [sp, #0x1c]
  385478: 3301         	adds	r3, #0x1
  38547a: 9307         	str	r3, [sp, #0x1c]
  38547c: 9b07         	ldr	r3, [sp, #0x1c]
  38547e: 781b         	ldrb	r3, [r3]
  385480: f88d 3015    	strb.w	r3, [sp, #0x15]
  385484: 9b07         	ldr	r3, [sp, #0x1c]
  385486: 3301         	adds	r3, #0x1
  385488: 9307         	str	r3, [sp, #0x1c]
  38548a: 9b07         	ldr	r3, [sp, #0x1c]
  38548c: 881b         	ldrh	r3, [r3]
  38548e: f8ad 3016    	strh.w	r3, [sp, #0x16]
  385492: 9b07         	ldr	r3, [sp, #0x1c]
  385494: 3302         	adds	r3, #0x2
  385496: 9307         	str	r3, [sp, #0x1c]
  385498: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  38549c: 9807         	ldr	r0, [sp, #0x1c]
  38549e: 4619         	mov	r1, r3
  3854a0: f214 fae8    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x2145d0
  3854a4: 4603         	mov	r3, r0
  3854a6: 9308         	str	r3, [sp, #0x20]
  3854a8: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  3854ac: 9a07         	ldr	r2, [sp, #0x1c]
  3854ae: 4413         	add	r3, r2
  3854b0: 9307         	str	r3, [sp, #0x1c]
  3854b2: 9802         	ldr	r0, [sp, #0x8]
  3854b4: f0be ff48    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbee90
  3854b8: 4604         	mov	r4, r0
  3854ba: 9802         	ldr	r0, [sp, #0x8]
  3854bc: f0be ff3c    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbee78
  3854c0: 4603         	mov	r3, r0
  3854c2: 461a         	mov	r2, r3
  3854c4: 9b07         	ldr	r3, [sp, #0x1c]
  3854c6: 1ad3         	subs	r3, r2, r3
  3854c8: 4423         	add	r3, r4
  3854ca: 9807         	ldr	r0, [sp, #0x1c]
  3854cc: 4619         	mov	r1, r3
  3854ce: f214 fad1    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x2145a2
  3854d2: 4603         	mov	r3, r0
  3854d4: 9309         	str	r3, [sp, #0x24]
  3854d6: 9802         	ldr	r0, [sp, #0x8]
  3854d8: f0be ff36    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbee6c
  3854dc: 4604         	mov	r4, r0
  3854de: 9802         	ldr	r0, [sp, #0x8]
  3854e0: f0be ff2a    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbee54
  3854e4: 4603         	mov	r3, r0
  3854e6: 461a         	mov	r2, r3
  3854e8: 9b07         	ldr	r3, [sp, #0x1c]
  3854ea: 1ad3         	subs	r3, r2, r3
  3854ec: 4423         	add	r3, r4
  3854ee: 9a07         	ldr	r2, [sp, #0x1c]
  3854f0: 4413         	add	r3, r2
  3854f2: 9307         	str	r3, [sp, #0x1c]
  3854f4: 2400         	movs	r4, #0x0
  3854f6: 9801         	ldr	r0, [sp, #0x4]
  3854f8: f02f f5b0    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42fb60
  3854fc: 4603         	mov	r3, r0
  3854fe: 2b00         	cmp	r3, #0x0
  385500: d01c         	beq	0x38553c <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0xf8> @ imm = #0x38
  385502: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3855a8 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x164>
  385504: 58eb         	ldr	r3, [r5, r3]
  385506: 681b         	ldr	r3, [r3]
  385508: 681b         	ldr	r3, [r3]
  38550a: f503 73e0    	add.w	r3, r3, #0x1c0
  38550e: 681b         	ldr	r3, [r3]
  385510: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3855a8 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x164>
  385512: 58aa         	ldr	r2, [r5, r2]
  385514: 6812         	ldr	r2, [r2]
  385516: a906         	add	r1, sp, #0x18
  385518: 4608         	mov	r0, r1
  38551a: 4611         	mov	r1, r2
  38551c: 4798         	blx	r3
  38551e: 2401         	movs	r4, #0x1
  385520: 9809         	ldr	r0, [sp, #0x24]
  385522: f214 fa01    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x214402
  385526: 4603         	mov	r3, r0
  385528: aa06         	add	r2, sp, #0x18
  38552a: 4610         	mov	r0, r2
  38552c: 4619         	mov	r1, r3
  38552e: f030 f0f9    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x4301f2
  385532: 4603         	mov	r3, r0
  385534: 2b00         	cmp	r3, #0x0
  385536: d101         	bne	0x38553c <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0xf8> @ imm = #0x2
  385538: 2301         	movs	r3, #0x1
  38553a: e000         	b	0x38553e <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0xfa> @ imm = #0x0
  38553c: 2300         	movs	r3, #0x0
  38553e: 461d         	mov	r5, r3
  385540: 2c00         	cmp	r4, #0x0
  385542: d004         	beq	0x38554e <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x10a> @ imm = #0x8
  385544: bf00         	nop
  385546: ab06         	add	r3, sp, #0x18
  385548: 4618         	mov	r0, r3
  38554a: f030 f1e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4303c6
  38554e: 2d00         	cmp	r5, #0x0
  385550: d024         	beq	0x38559c <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x158> @ imm = #0x48
  385552: f89d 3015    	ldrb.w	r3, [sp, #0x15]
  385556: 2b00         	cmp	r3, #0x0
  385558: d00a         	beq	0x385570 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x12c> @ imm = #0x14
  38555a: f25b f8a9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25b152
  38555e: 4603         	mov	r3, r0
  385560: 4618         	mov	r0, r3
  385562: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3855ac <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x168>
  385564: 447b         	add	r3, pc
  385566: 4619         	mov	r1, r3
  385568: 9a08         	ldr	r2, [sp, #0x20]
  38556a: f25b fadf    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b5be
  38556e: e016         	b	0x38559e <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x15a> @ imm = #0x2c
  385570: f25b f89e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25b13c
  385574: 4603         	mov	r3, r0
  385576: 4618         	mov	r0, r3
  385578: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3855b0 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x16c>
  38557a: 447b         	add	r3, pc
  38557c: 4619         	mov	r1, r3
  38557e: 9a08         	ldr	r2, [sp, #0x20]
  385580: f25b fad4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b5a8
  385584: e00a         	b	0x38559c <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x158> @ imm = #0x14
  385586: 2c00         	cmp	r4, #0x0
  385588: d005         	beq	0x385596 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x152> @ imm = #0xa
  38558a: bf00         	nop
  38558c: ab06         	add	r3, sp, #0x18
  38558e: 4618         	mov	r0, r3
  385590: f030 f1c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x430380
  385594: e000         	b	0x385598 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x154> @ imm = #0x0
  385596: bf00         	nop
  385598: f002 f588    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402b10
  38559c: bf00         	nop
  38559e: b00b         	add	sp, #0x2c
  3855a0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3855a1); words below are literal-pool data ---
  3855a2: bf00         	nop
  3855a4: d5b8         	bpl	0x385518 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0xd4> @ imm = #-0x90
  3855a6: 005a         	lsls	r2, r3, #0x1
  3855a8: d784         	bvc	0x3854b4 <NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string)+0x70> @ imm = #-0xf8
  3855aa: ffff b17c    	<unknown>
  3855ae: 0044         	lsls	r4, r0, #0x1
  3855b0: b17a         	cbz	r2, 0x3855d2 <NetworkMessageDispatcher::peerExplosionRemove(cocos2d::extension::CCData*, std::string)+0x1e> @ imm = #0x1e
  3855b2: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::peerExplosionRemove
//      file offset 0x3855b4 (= ELF address; Ghidra 0x3955b4), 216 bytes, Thumb-2
  3855b4: b510         	push	{r4, lr}
  3855b6: b088         	sub	sp, #0x20
  3855b8: 9003         	str	r0, [sp, #0xc]
  3855ba: 9102         	str	r1, [sp, #0x8]
  3855bc: 9201         	str	r2, [sp, #0x4]
  3855be: f7f2 fabf    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xda82
  3855c2: 4603         	mov	r3, r0
  3855c4: 4618         	mov	r0, r3
  3855c6: f7f4 fbdf    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xb842
  3855ca: 4603         	mov	r3, r0
  3855cc: f083 0301    	eor	r3, r3, #0x1
  3855d0: b2db         	uxtb	r3, r3
  3855d2: 2b00         	cmp	r3, #0x0
  3855d4: d000         	beq	0x3855d8 <NetworkMessageDispatcher::peerExplosionRemove(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  3855d6: e054         	b	0x385682 <NetworkMessageDispatcher::peerExplosionRemove(cocos2d::extension::CCData*, std::string)+0xce> @ imm = #0xa8
  3855d8: 9802         	ldr	r0, [sp, #0x8]
  3855da: f0be fead    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbed5a
  3855de: 4603         	mov	r3, r0
  3855e0: 9305         	str	r3, [sp, #0x14]
  3855e2: 9b05         	ldr	r3, [sp, #0x14]
  3855e4: 3301         	adds	r3, #0x1
  3855e6: 9305         	str	r3, [sp, #0x14]
  3855e8: 9b05         	ldr	r3, [sp, #0x14]
  3855ea: 881b         	ldrh	r3, [r3]
  3855ec: f8ad 3010    	strh.w	r3, [sp, #0x10]
  3855f0: 9b05         	ldr	r3, [sp, #0x14]
  3855f2: 3302         	adds	r3, #0x2
  3855f4: 9305         	str	r3, [sp, #0x14]
  3855f6: 9b05         	ldr	r3, [sp, #0x14]
  3855f8: 881b         	ldrh	r3, [r3]
  3855fa: f8ad 3012    	strh.w	r3, [sp, #0x12]
  3855fe: 9b05         	ldr	r3, [sp, #0x14]
  385600: 3302         	adds	r3, #0x2
  385602: 9305         	str	r3, [sp, #0x14]
  385604: 9802         	ldr	r0, [sp, #0x8]
  385606: f0be fe9f    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbed3e
  38560a: 4604         	mov	r4, r0
  38560c: 9802         	ldr	r0, [sp, #0x8]
  38560e: f0be fe93    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbed26
  385612: 4603         	mov	r3, r0
  385614: 461a         	mov	r2, r3
  385616: 9b05         	ldr	r3, [sp, #0x14]
  385618: 1ad3         	subs	r3, r2, r3
  38561a: 4423         	add	r3, r4
  38561c: 9805         	ldr	r0, [sp, #0x14]
  38561e: 4619         	mov	r1, r3
  385620: f214 fa28    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x214450
  385624: 4603         	mov	r3, r0
  385626: 9306         	str	r3, [sp, #0x18]
  385628: 9802         	ldr	r0, [sp, #0x8]
  38562a: f0be fe8d    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbed1a
  38562e: 4604         	mov	r4, r0
  385630: 9802         	ldr	r0, [sp, #0x8]
  385632: f0be fe81    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbed02
  385636: 4603         	mov	r3, r0
  385638: 461a         	mov	r2, r3
  38563a: 9b05         	ldr	r3, [sp, #0x14]
  38563c: 1ad3         	subs	r3, r2, r3
  38563e: 4423         	add	r3, r4
  385640: 9a05         	ldr	r2, [sp, #0x14]
  385642: 4413         	add	r3, r2
  385644: 9305         	str	r3, [sp, #0x14]
  385646: f9bd 3010    	ldrsh.w	r3, [sp, #0x10]
  38564a: 4618         	mov	r0, r3
  38564c: f75f fb5c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0948
  385650: 4604         	mov	r4, r0
  385652: f9bd 3012    	ldrsh.w	r3, [sp, #0x12]
  385656: 4618         	mov	r0, r3
  385658: f75f fb56    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0954
  38565c: 4603         	mov	r3, r0
  38565e: 4620         	mov	r0, r4
  385660: 4619         	mov	r1, r3
  385662: 9a06         	ldr	r2, [sp, #0x18]
  385664: 2300         	movs	r3, #0x0
  385666: f214 fbd3    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2147a6
  38566a: 4603         	mov	r3, r0
  38566c: 9307         	str	r3, [sp, #0x1c]
  38566e: f25b f81f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25b03e
  385672: 4603         	mov	r3, r0
  385674: 4618         	mov	r0, r3
  385676: 4b04         	ldr	r3, [pc, #0x10]         @ 0x385688 <NetworkMessageDispatcher::peerExplosionRemove(cocos2d::extension::CCData*, std::string)+0xd4>
  385678: 447b         	add	r3, pc
  38567a: 4619         	mov	r1, r3
  38567c: 9a07         	ldr	r2, [sp, #0x1c]
  38567e: f25b fa55    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b4aa
  385682: b008         	add	sp, #0x20
  385684: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x385685); words below are literal-pool data ---
  385686: bf00         	nop
  385688: b090         	sub	sp, #0x40
  38568a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::peerExplosionCreate
//      file offset 0x38568c (= ELF address; Ghidra 0x39568c), 480 bytes, Thumb-2
  38568c: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
  385690: b09b         	sub	sp, #0x6c
  385692: 9009         	str	r0, [sp, #0x24]
  385694: 9108         	str	r1, [sp, #0x20]
  385696: 9207         	str	r2, [sp, #0x1c]
  385698: f7f2 fa52    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xdb5c
  38569c: 4603         	mov	r3, r0
  38569e: 4618         	mov	r0, r3
  3856a0: f7f4 fb72    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xb91c
  3856a4: 4603         	mov	r3, r0
  3856a6: f083 0301    	eor	r3, r3, #0x1
  3856aa: b2db         	uxtb	r3, r3
  3856ac: 2b00         	cmp	r3, #0x0
  3856ae: f040 80d8    	bne.w	0x385862 <NetworkMessageDispatcher::peerExplosionCreate(cocos2d::extension::CCData*, std::string)+0x1d6> @ imm = #0x1b0
  3856b2: 9808         	ldr	r0, [sp, #0x20]
  3856b4: f0be fe40    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbec80
  3856b8: 4603         	mov	r3, r0
  3856ba: 930f         	str	r3, [sp, #0x3c]
  3856bc: 9b0f         	ldr	r3, [sp, #0x3c]
  3856be: 3301         	adds	r3, #0x1
  3856c0: 930f         	str	r3, [sp, #0x3c]
  3856c2: 9b0f         	ldr	r3, [sp, #0x3c]
  3856c4: 881b         	ldrh	r3, [r3]
  3856c6: f8ad 302e    	strh.w	r3, [sp, #0x2e]
  3856ca: 9b0f         	ldr	r3, [sp, #0x3c]
  3856cc: 3302         	adds	r3, #0x2
  3856ce: 930f         	str	r3, [sp, #0x3c]
  3856d0: 9b0f         	ldr	r3, [sp, #0x3c]
  3856d2: 881b         	ldrh	r3, [r3]
  3856d4: f8ad 3030    	strh.w	r3, [sp, #0x30]
  3856d8: 9b0f         	ldr	r3, [sp, #0x3c]
  3856da: 3302         	adds	r3, #0x2
  3856dc: 930f         	str	r3, [sp, #0x3c]
  3856de: 9b0f         	ldr	r3, [sp, #0x3c]
  3856e0: 881b         	ldrh	r3, [r3]
  3856e2: f8ad 3032    	strh.w	r3, [sp, #0x32]
  3856e6: 9b0f         	ldr	r3, [sp, #0x3c]
  3856e8: 3302         	adds	r3, #0x2
  3856ea: 930f         	str	r3, [sp, #0x3c]
  3856ec: 9b0f         	ldr	r3, [sp, #0x3c]
  3856ee: 881b         	ldrh	r3, [r3]
  3856f0: f8ad 3034    	strh.w	r3, [sp, #0x34]
  3856f4: 9b0f         	ldr	r3, [sp, #0x3c]
  3856f6: 3302         	adds	r3, #0x2
  3856f8: 930f         	str	r3, [sp, #0x3c]
  3856fa: f9bd 302e    	ldrsh.w	r3, [sp, #0x2e]
  3856fe: ee05 3a90    	vmov	s11, r3
  385702: eeb8 6be5    	vcvt.f64.s32	d6, s11
  385706: f9bd 3030    	ldrsh.w	r3, [sp, #0x30]
  38570a: ee05 3a90    	vmov	s11, r3
  38570e: eeb8 7be5    	vcvt.f64.s32	d7, s11
  385712: ab12         	add	r3, sp, #0x48
  385714: 4618         	mov	r0, r3
  385716: eeb0 0b46    	vmov.f64	d0, d6
  38571a: eeb0 1b47    	vmov.f64	d1, d7
  38571e: f7fb fba5    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x48b6
  385722: f9bd 3032    	ldrsh.w	r3, [sp, #0x32]
  385726: ee07 3a10    	vmov	s14, r3
  38572a: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  38572e: f9bd 3034    	ldrsh.w	r3, [sp, #0x34]
  385732: ee05 3a90    	vmov	s11, r3
  385736: eeb8 7be5    	vcvt.f64.s32	d7, s11
  38573a: ab16         	add	r3, sp, #0x58
  38573c: 4618         	mov	r0, r3
  38573e: eeb0 0b46    	vmov.f64	d0, d6
  385742: eeb0 1b47    	vmov.f64	d1, d7
  385746: f7fb fb91    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x48de
  38574a: 9b0f         	ldr	r3, [sp, #0x3c]
  38574c: 881b         	ldrh	r3, [r3]
  38574e: f8ad 3036    	strh.w	r3, [sp, #0x36]
  385752: 9b0f         	ldr	r3, [sp, #0x3c]
  385754: 3302         	adds	r3, #0x2
  385756: 930f         	str	r3, [sp, #0x3c]
  385758: 9b0f         	ldr	r3, [sp, #0x3c]
  38575a: 881b         	ldrh	r3, [r3]
  38575c: f8ad 3038    	strh.w	r3, [sp, #0x38]
  385760: 9b0f         	ldr	r3, [sp, #0x3c]
  385762: 3302         	adds	r3, #0x2
  385764: 930f         	str	r3, [sp, #0x3c]
  385766: 9b0f         	ldr	r3, [sp, #0x3c]
  385768: 881b         	ldrh	r3, [r3]
  38576a: f8ad 303a    	strh.w	r3, [sp, #0x3a]
  38576e: 9b0f         	ldr	r3, [sp, #0x3c]
  385770: 3302         	adds	r3, #0x2
  385772: 930f         	str	r3, [sp, #0x3c]
  385774: 9808         	ldr	r0, [sp, #0x20]
  385776: f0be fde7    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbebce
  38577a: 4604         	mov	r4, r0
  38577c: 9808         	ldr	r0, [sp, #0x20]
  38577e: f0be fddb    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbebb6
  385782: 4603         	mov	r3, r0
  385784: 461a         	mov	r2, r3
  385786: 9b0f         	ldr	r3, [sp, #0x3c]
  385788: 1ad3         	subs	r3, r2, r3
  38578a: 4423         	add	r3, r4
  38578c: 980f         	ldr	r0, [sp, #0x3c]
  38578e: 4619         	mov	r1, r3
  385790: f214 f970    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x2142e0
  385794: 4603         	mov	r3, r0
  385796: 9310         	str	r3, [sp, #0x40]
  385798: 9808         	ldr	r0, [sp, #0x20]
  38579a: f0be fdd5    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbebaa
  38579e: 4604         	mov	r4, r0
  3857a0: 9808         	ldr	r0, [sp, #0x20]
  3857a2: f0be fdc9    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbeb92
  3857a6: 4603         	mov	r3, r0
  3857a8: 461a         	mov	r2, r3
  3857aa: 9b0f         	ldr	r3, [sp, #0x3c]
  3857ac: 1ad3         	subs	r3, r2, r3
  3857ae: 4423         	add	r3, r4
  3857b0: 9a0f         	ldr	r2, [sp, #0x3c]
  3857b2: 4413         	add	r3, r2
  3857b4: 930f         	str	r3, [sp, #0x3c]
  3857b6: ed9d 7b12    	vldr	d7, [sp, #72]
  3857ba: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3857be: ee17 0a90    	vmov	r0, s15
  3857c2: f757 fa5f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa8b42
  3857c6: 4607         	mov	r7, r0
  3857c8: ed9d 7b14    	vldr	d7, [sp, #80]
  3857cc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3857d0: ee17 0a90    	vmov	r0, s15
  3857d4: f757 fa56    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa8b54
  3857d8: 4606         	mov	r6, r0
  3857da: ed9d 7b16    	vldr	d7, [sp, #88]
  3857de: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3857e2: ee17 0a90    	vmov	r0, s15
  3857e6: f757 fa4d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa8b66
  3857ea: 4605         	mov	r5, r0
  3857ec: ed9d 7b18    	vldr	d7, [sp, #96]
  3857f0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3857f4: ee17 0a90    	vmov	r0, s15
  3857f8: f757 fa44    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa8b78
  3857fc: 4604         	mov	r4, r0
  3857fe: f9bd 3036    	ldrsh.w	r3, [sp, #0x36]
  385802: 4618         	mov	r0, r3
  385804: f75f fa80    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0b00
  385808: 4681         	mov	r9, r0
  38580a: f9bd 3038    	ldrsh.w	r3, [sp, #0x38]
  38580e: ee07 3a10    	vmov	s14, r3
  385812: eef8 7ac7    	vcvt.f32.s32	s15, s14
  385816: ee17 0a90    	vmov	r0, s15
  38581a: f757 fa33    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa8b9a
  38581e: 4680         	mov	r8, r0
  385820: f9bd 303a    	ldrsh.w	r3, [sp, #0x3a]
  385824: 4618         	mov	r0, r3
  385826: f75f fa6f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0b22
  38582a: 4603         	mov	r3, r0
  38582c: f8cd 9000    	str.w	r9, [sp]
  385830: f8cd 8004    	str.w	r8, [sp, #0x4]
  385834: 9302         	str	r3, [sp, #0x8]
  385836: 9b10         	ldr	r3, [sp, #0x40]
  385838: 9303         	str	r3, [sp, #0xc]
  38583a: 2300         	movs	r3, #0x0
  38583c: 9304         	str	r3, [sp, #0x10]
  38583e: 4638         	mov	r0, r7
  385840: 4631         	mov	r1, r6
  385842: 462a         	mov	r2, r5
  385844: 4623         	mov	r3, r4
  385846: f214 fae3    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2145c6
  38584a: 4603         	mov	r3, r0
  38584c: 9311         	str	r3, [sp, #0x44]
  38584e: f25a ff2f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25ae5e
  385852: 4603         	mov	r3, r0
  385854: 4618         	mov	r0, r3
  385856: 4b04         	ldr	r3, [pc, #0x10]         @ 0x385868 <NetworkMessageDispatcher::peerExplosionCreate(cocos2d::extension::CCData*, std::string)+0x1dc>
  385858: 447b         	add	r3, pc
  38585a: 4619         	mov	r1, r3
  38585c: 9a11         	ldr	r2, [sp, #0x44]
  38585e: f25b f965    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b2ca
  385862: b01b         	add	sp, #0x6c
  385864: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
  ; --- end of code (Ghidra body ends at 0x385867); words below are literal-pool data ---
  385868: aec4         	add	r6, sp, #0x310
  38586a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerDied
//      file offset 0x38586c (= ELF address; Ghidra 0x39586c), 364 bytes, Thumb-2
  38586c: b5f0         	push	{r4, r5, r6, r7, lr}
  38586e: b08f         	sub	sp, #0x3c
  385870: 9005         	str	r0, [sp, #0x14]
  385872: 9104         	str	r1, [sp, #0x10]
  385874: 9203         	str	r2, [sp, #0xc]
  385876: 4c55         	ldr	r4, [pc, #0x154]        @ 0x3859cc <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x160>
  385878: 447c         	add	r4, pc
  38587a: f7f2 f961    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xdd3e
  38587e: 4603         	mov	r3, r0
  385880: 4618         	mov	r0, r3
  385882: f7f4 fa81    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xbafe
  385886: 4603         	mov	r3, r0
  385888: f083 0301    	eor	r3, r3, #0x1
  38588c: b2db         	uxtb	r3, r3
  38588e: 2b00         	cmp	r3, #0x0
  385890: d000         	beq	0x385894 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x28> @ imm = #0x0
  385892: e099         	b	0x3859c8 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x15c> @ imm = #0x132
  385894: 9804         	ldr	r0, [sp, #0x10]
  385896: f0be fd4f    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbea9e
  38589a: 4603         	mov	r3, r0
  38589c: 930a         	str	r3, [sp, #0x28]
  38589e: 9b0a         	ldr	r3, [sp, #0x28]
  3858a0: 3301         	adds	r3, #0x1
  3858a2: 930a         	str	r3, [sp, #0x28]
  3858a4: 9b0a         	ldr	r3, [sp, #0x28]
  3858a6: 881b         	ldrh	r3, [r3]
  3858a8: f8ad 3020    	strh.w	r3, [sp, #0x20]
  3858ac: 9b0a         	ldr	r3, [sp, #0x28]
  3858ae: 3302         	adds	r3, #0x2
  3858b0: 930a         	str	r3, [sp, #0x28]
  3858b2: 9b0a         	ldr	r3, [sp, #0x28]
  3858b4: 881b         	ldrh	r3, [r3]
  3858b6: f8ad 3022    	strh.w	r3, [sp, #0x22]
  3858ba: 9b0a         	ldr	r3, [sp, #0x28]
  3858bc: 3302         	adds	r3, #0x2
  3858be: 930a         	str	r3, [sp, #0x28]
  3858c0: 9b0a         	ldr	r3, [sp, #0x28]
  3858c2: 781b         	ldrb	r3, [r3]
  3858c4: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3858c8: 9b0a         	ldr	r3, [sp, #0x28]
  3858ca: 3301         	adds	r3, #0x1
  3858cc: 930a         	str	r3, [sp, #0x28]
  3858ce: 9804         	ldr	r0, [sp, #0x10]
  3858d0: f0be fd3a    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbea74
  3858d4: 4605         	mov	r5, r0
  3858d6: 9804         	ldr	r0, [sp, #0x10]
  3858d8: f0be fd2e    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbea5c
  3858dc: 4603         	mov	r3, r0
  3858de: 461a         	mov	r2, r3
  3858e0: 9b0a         	ldr	r3, [sp, #0x28]
  3858e2: 1ad3         	subs	r3, r2, r3
  3858e4: 442b         	add	r3, r5
  3858e6: 980a         	ldr	r0, [sp, #0x28]
  3858e8: 4619         	mov	r1, r3
  3858ea: f214 f8c3    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x214186
  3858ee: 4603         	mov	r3, r0
  3858f0: 930b         	str	r3, [sp, #0x2c]
  3858f2: 9804         	ldr	r0, [sp, #0x10]
  3858f4: f0be fd28    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbea50
  3858f8: 4605         	mov	r5, r0
  3858fa: 9804         	ldr	r0, [sp, #0x10]
  3858fc: f0be fd1c    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbea38
  385900: 4603         	mov	r3, r0
  385902: 461a         	mov	r2, r3
  385904: 9b0a         	ldr	r3, [sp, #0x28]
  385906: 1ad3         	subs	r3, r2, r3
  385908: 442b         	add	r3, r5
  38590a: 9a0a         	ldr	r2, [sp, #0x28]
  38590c: 4413         	add	r3, r2
  38590e: 930a         	str	r3, [sp, #0x28]
  385910: 9803         	ldr	r0, [sp, #0xc]
  385912: f214 f893    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x214126
  385916: 4607         	mov	r7, r0
  385918: 2001         	movs	r0, #0x1
  38591a: f75f f9f5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0c16
  38591e: 4606         	mov	r6, r0
  385920: f9bd 3020    	ldrsh.w	r3, [sp, #0x20]
  385924: 4618         	mov	r0, r3
  385926: f75f f9ef    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0c22
  38592a: 4605         	mov	r5, r0
  38592c: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  385930: 2b00         	cmp	r3, #0x0
  385932: d001         	beq	0x385938 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0xcc> @ imm = #0x2
  385934: 2301         	movs	r3, #0x1
  385936: e000         	b	0x38593a <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0xce> @ imm = #0x0
  385938: 2300         	movs	r3, #0x0
  38593a: 4618         	mov	r0, r3
  38593c: f75f f9e4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa0c38
  385940: 4603         	mov	r3, r0
  385942: 9300         	str	r3, [sp]
  385944: 2300         	movs	r3, #0x0
  385946: 9301         	str	r3, [sp, #0x4]
  385948: 980b         	ldr	r0, [sp, #0x2c]
  38594a: 4639         	mov	r1, r7
  38594c: 4632         	mov	r2, r6
  38594e: 462b         	mov	r3, r5
  385950: f214 fa5e    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2144bc
  385954: 4603         	mov	r3, r0
  385956: 930c         	str	r3, [sp, #0x30]
  385958: ab09         	add	r3, sp, #0x24
  38595a: 4618         	mov	r0, r3
  38595c: 9903         	ldr	r1, [sp, #0xc]
  38595e: f030 f5c3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x430b86
  385962: ab09         	add	r3, sp, #0x24
  385964: 9805         	ldr	r0, [sp, #0x14]
  385966: 4619         	mov	r1, r3
  385968: f001 ff04    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x1e08
  38596c: 4603         	mov	r3, r0
  38596e: 930d         	str	r3, [sp, #0x34]
  385970: ab09         	add	r3, sp, #0x24
  385972: 4618         	mov	r0, r3
  385974: f02f f7ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42ff9c
  385978: 9b0d         	ldr	r3, [sp, #0x34]
  38597a: 2b00         	cmp	r3, #0x0
  38597c: d013         	beq	0x3859a6 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x13a> @ imm = #0x26
  38597e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3859d0 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x164>
  385980: 58e3         	ldr	r3, [r4, r3]
  385982: 681d         	ldr	r5, [r3]
  385984: f9bd 4022    	ldrsh.w	r4, [sp, #0x22]
  385988: 9b0d         	ldr	r3, [sp, #0x34]
  38598a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  38598e: 466a         	mov	r2, sp
  385990: f103 0130    	add.w	r1, r3, #0x30
  385994: c903         	ldm	r1, {r0, r1}
  385996: e882 0003    	stm.w	r2, {r0, r1}
  38599a: 3328         	adds	r3, #0x28
  38599c: cb0c         	ldm	r3, {r2, r3}
  38599e: 4628         	mov	r0, r5
  3859a0: 4621         	mov	r1, r4
  3859a2: f072 fb29    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x72652
  3859a6: f25a fe83    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25ad06
  3859aa: 4603         	mov	r3, r0
  3859ac: 4618         	mov	r0, r3
  3859ae: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3859d4 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x168>
  3859b0: 447b         	add	r3, pc
  3859b2: 4619         	mov	r1, r3
  3859b4: 9a0c         	ldr	r2, [sp, #0x30]
  3859b6: f25b f8b9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25b172
  3859ba: e005         	b	0x3859c8 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x15c> @ imm = #0xa
  3859bc: ab09         	add	r3, sp, #0x24
  3859be: 4618         	mov	r0, r3
  3859c0: f02f f7a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42ff50
  3859c4: f002 f372    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4026e4
  3859c8: b00f         	add	sp, #0x3c
  3859ca: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3859cb); words below are literal-pool data ---
  3859cc: d190         	bne	0x3858f0 <NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string)+0x84> @ imm = #-0xe0
  3859ce: 005a         	lsls	r2, r3, #0x1
  3859d0: d730         	bvc	0x385a34 <NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string)+0x5c> @ imm = #0x60
  3859d2: ffff ad78    	<unknown>
  3859d6: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerPunch
//      file offset 0x3859d8 (= ELF address; Ghidra 0x3959d8), 110 bytes, Thumb-2
  3859d8: b500         	push	{lr}
  3859da: b087         	sub	sp, #0x1c
  3859dc: 9003         	str	r0, [sp, #0xc]
  3859de: 9102         	str	r1, [sp, #0x8]
  3859e0: 9201         	str	r2, [sp, #0x4]
  3859e2: f7f2 f8ad    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xdea6
  3859e6: 4603         	mov	r3, r0
  3859e8: 4618         	mov	r0, r3
  3859ea: f7f4 f9cd    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xbc66
  3859ee: 4603         	mov	r3, r0
  3859f0: f083 0301    	eor	r3, r3, #0x1
  3859f4: b2db         	uxtb	r3, r3
  3859f6: 2b00         	cmp	r3, #0x0
  3859f8: d000         	beq	0x3859fc <NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  3859fa: e020         	b	0x385a3e <NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string)+0x66> @ imm = #0x40
  3859fc: ab04         	add	r3, sp, #0x10
  3859fe: 4618         	mov	r0, r3
  385a00: 9901         	ldr	r1, [sp, #0x4]
  385a02: f030 f571    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x430ae2
  385a06: ab04         	add	r3, sp, #0x10
  385a08: 9803         	ldr	r0, [sp, #0xc]
  385a0a: 4619         	mov	r1, r3
  385a0c: f001 feb2    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x1d64
  385a10: 4603         	mov	r3, r0
  385a12: 9305         	str	r3, [sp, #0x14]
  385a14: ab04         	add	r3, sp, #0x10
  385a16: 4618         	mov	r0, r3
  385a18: f02f f77c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fef8
  385a1c: 9b05         	ldr	r3, [sp, #0x14]
  385a1e: 2b00         	cmp	r3, #0x0
  385a20: d00d         	beq	0x385a3e <NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string)+0x66> @ imm = #0x1a
  385a22: 9b05         	ldr	r3, [sp, #0x14]
  385a24: 681b         	ldr	r3, [r3]
  385a26: f503 732e    	add.w	r3, r3, #0x2b8
  385a2a: 681b         	ldr	r3, [r3]
  385a2c: 9805         	ldr	r0, [sp, #0x14]
  385a2e: 4798         	blx	r3
  385a30: e006         	b	0x385a40 <NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string)+0x68> @ imm = #0xc
  385a32: ab04         	add	r3, sp, #0x10
  385a34: 4618         	mov	r0, r3
  385a36: f02f f76d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42feda
  385a3a: f002 f337    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40266e
  385a3e: bf00         	nop
  385a40: b007         	add	sp, #0x1c
  385a42: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkMessageDispatcher::updatePeerThrow
//      file offset 0x385a48 (= ELF address; Ghidra 0x395a48), 110 bytes, Thumb-2
  385a48: b500         	push	{lr}
  385a4a: b087         	sub	sp, #0x1c
  385a4c: 9003         	str	r0, [sp, #0xc]
  385a4e: 9102         	str	r1, [sp, #0x8]
  385a50: 9201         	str	r2, [sp, #0x4]
  385a52: f7f2 f875    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xdf16
  385a56: 4603         	mov	r3, r0
  385a58: 4618         	mov	r0, r3
  385a5a: f7f4 f995    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xbcd6
  385a5e: 4603         	mov	r3, r0
  385a60: f083 0301    	eor	r3, r3, #0x1
  385a64: b2db         	uxtb	r3, r3
  385a66: 2b00         	cmp	r3, #0x0
  385a68: d000         	beq	0x385a6c <NetworkMessageDispatcher::updatePeerThrow(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  385a6a: e020         	b	0x385aae <NetworkMessageDispatcher::updatePeerThrow(cocos2d::extension::CCData*, std::string)+0x66> @ imm = #0x40
  385a6c: ab04         	add	r3, sp, #0x10
  385a6e: 4618         	mov	r0, r3
  385a70: 9901         	ldr	r1, [sp, #0x4]
  385a72: f030 f539    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x430a72
  385a76: ab04         	add	r3, sp, #0x10
  385a78: 9803         	ldr	r0, [sp, #0xc]
  385a7a: 4619         	mov	r1, r3
  385a7c: f001 fe7a    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x1cf4
  385a80: 4603         	mov	r3, r0
  385a82: 9305         	str	r3, [sp, #0x14]
  385a84: ab04         	add	r3, sp, #0x10
  385a86: 4618         	mov	r0, r3
  385a88: f02f f744    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fe88
  385a8c: 9b05         	ldr	r3, [sp, #0x14]
  385a8e: 2b00         	cmp	r3, #0x0
  385a90: d00d         	beq	0x385aae <NetworkMessageDispatcher::updatePeerThrow(cocos2d::extension::CCData*, std::string)+0x66> @ imm = #0x1a
  385a92: 9b05         	ldr	r3, [sp, #0x14]
  385a94: 681b         	ldr	r3, [r3]
  385a96: f503 731d    	add.w	r3, r3, #0x274
  385a9a: 681b         	ldr	r3, [r3]
  385a9c: 9805         	ldr	r0, [sp, #0x14]
  385a9e: 4798         	blx	r3
  385aa0: e006         	b	0x385ab0 <NetworkMessageDispatcher::updatePeerThrow(cocos2d::extension::CCData*, std::string)+0x68> @ imm = #0xc
  385aa2: ab04         	add	r3, sp, #0x10
  385aa4: 4618         	mov	r0, r3
  385aa6: f02f f735    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fe6a
  385aaa: f002 f2ff    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4025fe
  385aae: bf00         	nop
  385ab0: b007         	add	sp, #0x1c
  385ab2: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkMessageDispatcher::updatePeerPowerUp
//      file offset 0x385ab8 (= ELF address; Ghidra 0x395ab8), 236 bytes, Thumb-2
  385ab8: b510         	push	{r4, lr}
  385aba: b08a         	sub	sp, #0x28
  385abc: 9003         	str	r0, [sp, #0xc]
  385abe: 9102         	str	r1, [sp, #0x8]
  385ac0: 9201         	str	r2, [sp, #0x4]
  385ac2: f7f2 f83d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xdf86
  385ac6: 4603         	mov	r3, r0
  385ac8: 4618         	mov	r0, r3
  385aca: f7f4 f95d    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xbd46
  385ace: 4603         	mov	r3, r0
  385ad0: f083 0301    	eor	r3, r3, #0x1
  385ad4: b2db         	uxtb	r3, r3
  385ad6: 2b00         	cmp	r3, #0x0
  385ad8: d000         	beq	0x385adc <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  385ada: e060         	b	0x385b9e <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0xe6> @ imm = #0xc0
  385adc: 9802         	ldr	r0, [sp, #0x8]
  385ade: f0be fc2b    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe856
  385ae2: 4603         	mov	r3, r0
  385ae4: 9308         	str	r3, [sp, #0x20]
  385ae6: 9b08         	ldr	r3, [sp, #0x20]
  385ae8: 3301         	adds	r3, #0x1
  385aea: 9308         	str	r3, [sp, #0x20]
  385aec: 9b08         	ldr	r3, [sp, #0x20]
  385aee: 881b         	ldrh	r3, [r3]
  385af0: f8ad 3016    	strh.w	r3, [sp, #0x16]
  385af4: 9b08         	ldr	r3, [sp, #0x20]
  385af6: 3302         	adds	r3, #0x2
  385af8: 9308         	str	r3, [sp, #0x20]
  385afa: 9b08         	ldr	r3, [sp, #0x20]
  385afc: 781b         	ldrb	r3, [r3]
  385afe: f88d 3015    	strb.w	r3, [sp, #0x15]
  385b02: 9b08         	ldr	r3, [sp, #0x20]
  385b04: 3301         	adds	r3, #0x1
  385b06: 9308         	str	r3, [sp, #0x20]
  385b08: ab07         	add	r3, sp, #0x1c
  385b0a: 4618         	mov	r0, r3
  385b0c: 9901         	ldr	r1, [sp, #0x4]
  385b0e: f030 f4eb    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4309d6
  385b12: ab07         	add	r3, sp, #0x1c
  385b14: 9803         	ldr	r0, [sp, #0xc]
  385b16: 4619         	mov	r1, r3
  385b18: f001 fe2c    	bl	0x387774 <NetworkMessageDispatcher::getPeerSoldier(std::string)> @ imm = #0x1c58
  385b1c: 4603         	mov	r3, r0
  385b1e: 9309         	str	r3, [sp, #0x24]
  385b20: ab07         	add	r3, sp, #0x1c
  385b22: 4618         	mov	r0, r3
  385b24: f02f f6f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fdec
  385b28: 9b09         	ldr	r3, [sp, #0x24]
  385b2a: 2b00         	cmp	r3, #0x0
  385b2c: d037         	beq	0x385b9e <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0xe6> @ imm = #0x6e
  385b2e: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  385b32: 2b0f         	cmp	r3, #0xf
  385b34: d133         	bne	0x385b9e <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0xe6> @ imm = #0x66
  385b36: f89d 3015    	ldrb.w	r3, [sp, #0x15]
  385b3a: 2b00         	cmp	r3, #0x0
  385b3c: d014         	beq	0x385b68 <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0xb0> @ imm = #0x28
  385b3e: 9b09         	ldr	r3, [sp, #0x24]
  385b40: 681b         	ldr	r3, [r3]
  385b42: f503 73ec    	add.w	r3, r3, #0x1d8
  385b46: 681b         	ldr	r3, [r3]
  385b48: 9809         	ldr	r0, [sp, #0x24]
  385b4a: 4798         	blx	r3
  385b4c: 4604         	mov	r4, r0
  385b4e: 20ff         	movs	r0, #0xff
  385b50: 2100         	movs	r1, #0x0
  385b52: 2200         	movs	r2, #0x0
  385b54: 23ff         	movs	r3, #0xff
  385b56: f7fb f8b1    	bl	0x380cbc <std::move_iterator<ServerListObject*>::base() const+0x2f4> @ imm = #-0x4e9e
  385b5a: 4603         	mov	r3, r0
  385b5c: 9306         	str	r3, [sp, #0x18]
  385b5e: 4620         	mov	r0, r4
  385b60: 9906         	ldr	r1, [sp, #0x18]
  385b62: f06e facb    	bl	0x3f40fc <SoldierView::setBoostColor(cocos2d::_ccColor4B)> @ imm = #0x6e596
  385b66: e01b         	b	0x385ba0 <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0xe8> @ imm = #0x36
  385b68: 9b09         	ldr	r3, [sp, #0x24]
  385b6a: 681b         	ldr	r3, [r3]
  385b6c: f503 73ec    	add.w	r3, r3, #0x1d8
  385b70: 681b         	ldr	r3, [r3]
  385b72: 9809         	ldr	r0, [sp, #0x24]
  385b74: 4798         	blx	r3
  385b76: 4604         	mov	r4, r0
  385b78: 20ff         	movs	r0, #0xff
  385b7a: 21ff         	movs	r1, #0xff
  385b7c: 22ff         	movs	r2, #0xff
  385b7e: 23ff         	movs	r3, #0xff
  385b80: f7fb f89c    	bl	0x380cbc <std::move_iterator<ServerListObject*>::base() const+0x2f4> @ imm = #-0x4ec8
  385b84: 4603         	mov	r3, r0
  385b86: 9307         	str	r3, [sp, #0x1c]
  385b88: 4620         	mov	r0, r4
  385b8a: 9907         	ldr	r1, [sp, #0x1c]
  385b8c: f06e fab6    	bl	0x3f40fc <SoldierView::setBoostColor(cocos2d::_ccColor4B)> @ imm = #0x6e56c
  385b90: e005         	b	0x385b9e <NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string)+0xe6> @ imm = #0xa
  385b92: ab07         	add	r3, sp, #0x1c
  385b94: 4618         	mov	r0, r3
  385b96: f02f f6bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fd7a
  385b9a: f002 f287    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40250e
  385b9e: bf00         	nop
  385ba0: b00a         	add	sp, #0x28
  385ba2: bd10         	pop	{r4, pc}

// ==== NetworkMessageDispatcher::updatePeerEnteredGame
//      file offset 0x385ba4 (= ELF address; Ghidra 0x395ba4), 72 bytes, Thumb-2
  385ba4: b510         	push	{r4, lr}
  385ba6: b084         	sub	sp, #0x10
  385ba8: 9003         	str	r0, [sp, #0xc]
  385baa: 9102         	str	r1, [sp, #0x8]
  385bac: 9201         	str	r2, [sp, #0x4]
  385bae: f7f1 ffc7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xe072
  385bb2: 4603         	mov	r3, r0
  385bb4: 4618         	mov	r0, r3
  385bb6: f7f4 f8e7    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0xbe32
  385bba: 4603         	mov	r3, r0
  385bbc: f083 0301    	eor	r3, r3, #0x1
  385bc0: b2db         	uxtb	r3, r3
  385bc2: 2b00         	cmp	r3, #0x0
  385bc4: d000         	beq	0x385bc8 <NetworkMessageDispatcher::updatePeerEnteredGame(cocos2d::extension::CCData*, std::string)+0x24> @ imm = #0x0
  385bc6: e00d         	b	0x385be4 <NetworkMessageDispatcher::updatePeerEnteredGame(cocos2d::extension::CCData*, std::string)+0x40> @ imm = #0x1a
  385bc8: f25a fd72    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25aae4
  385bcc: 4604         	mov	r4, r0
  385bce: 9801         	ldr	r0, [sp, #0x4]
  385bd0: f213 ff34    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x213e68
  385bd4: 4603         	mov	r3, r0
  385bd6: 4620         	mov	r0, r4
  385bd8: 4a03         	ldr	r2, [pc, #0xc]          @ 0x385be8 <NetworkMessageDispatcher::updatePeerEnteredGame(cocos2d::extension::CCData*, std::string)+0x44>
  385bda: 447a         	add	r2, pc
  385bdc: 4611         	mov	r1, r2
  385bde: 461a         	mov	r2, r3
  385be0: f25a ffa4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25af48
  385be4: b004         	add	sp, #0x10
  385be6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x385be7); words below are literal-pool data ---
  385be8: ab5e         	add	r3, sp, #0x178
  385bea: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerEnteredLobby
//      file offset 0x385bec (= ELF address; Ghidra 0x395bec), 48 bytes, Thumb-2
  385bec: b510         	push	{r4, lr}
  385bee: b084         	sub	sp, #0x10
  385bf0: 9003         	str	r0, [sp, #0xc]
  385bf2: 9102         	str	r1, [sp, #0x8]
  385bf4: 9201         	str	r2, [sp, #0x4]
  385bf6: f25a fd5b    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25aab6
  385bfa: 4604         	mov	r4, r0
  385bfc: 9801         	ldr	r0, [sp, #0x4]
  385bfe: f213 ff1d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x213e3a
  385c02: 4603         	mov	r3, r0
  385c04: 4620         	mov	r0, r4
  385c06: 4a04         	ldr	r2, [pc, #0x10]         @ 0x385c18 <NetworkMessageDispatcher::updatePeerEnteredLobby(cocos2d::extension::CCData*, std::string)+0x2c>
  385c08: 447a         	add	r2, pc
  385c0a: 4611         	mov	r1, r2
  385c0c: 461a         	mov	r2, r3
  385c0e: f25a ff8d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25af1a
  385c12: b004         	add	sp, #0x10
  385c14: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x385c15); words below are literal-pool data ---
  385c16: bf00         	nop
  385c18: ab44         	add	r3, sp, #0x110
  385c1a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerEnteredLobbyResponse
//      file offset 0x385c1c (= ELF address; Ghidra 0x395c1c), 48 bytes, Thumb-2
  385c1c: b510         	push	{r4, lr}
  385c1e: b084         	sub	sp, #0x10
  385c20: 9003         	str	r0, [sp, #0xc]
  385c22: 9102         	str	r1, [sp, #0x8]
  385c24: 9201         	str	r2, [sp, #0x4]
  385c26: f25a fd43    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25aa86
  385c2a: 4604         	mov	r4, r0
  385c2c: 9801         	ldr	r0, [sp, #0x4]
  385c2e: f213 ff05    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x213e0a
  385c32: 4603         	mov	r3, r0
  385c34: 4620         	mov	r0, r4
  385c36: 4a04         	ldr	r2, [pc, #0x10]         @ 0x385c48 <NetworkMessageDispatcher::updatePeerEnteredLobbyResponse(cocos2d::extension::CCData*, std::string)+0x2c>
  385c38: 447a         	add	r2, pc
  385c3a: 4611         	mov	r1, r2
  385c3c: 461a         	mov	r2, r3
  385c3e: f25a ff75    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25aeea
  385c42: b004         	add	sp, #0x10
  385c44: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x385c45); words below are literal-pool data ---
  385c46: bf00         	nop
  385c48: ab28         	add	r3, sp, #0xa0
  385c4a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updateServerPingTime
//      file offset 0x385c50 (= ELF address; Ghidra 0x395c50), 116 bytes, Thumb-2
  385c50: b500         	push	{lr}
  385c52: b085         	sub	sp, #0x14
  385c54: 9001         	str	r0, [sp, #0x4]
  385c56: f215 fc8d    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x21591a
  385c5a: 4603         	mov	r3, r0
  385c5c: 681a         	ldr	r2, [r3]
  385c5e: 3258         	adds	r2, #0x58
  385c60: 6812         	ldr	r2, [r2]
  385c62: 4618         	mov	r0, r3
  385c64: 4790         	blx	r2
  385c66: ee07 0a90    	vmov	s15, r0
  385c6a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  385c6e: ed8d 7b02    	vstr	d7, [sp, #8]
  385c72: 9b01         	ldr	r3, [sp, #0x4]
  385c74: ed93 7a07    	vldr	s14, [r3, #28]
  385c78: eddf 7a11    	vldr	s15, [pc, #68]          @ 0x385cc0 <NetworkMessageDispatcher::updateServerPingTime()+0x70>
  385c7c: ee67 7a27    	vmul.f32	s15, s14, s15
  385c80: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  385c84: 9b01         	ldr	r3, [sp, #0x4]
  385c86: edd3 7a06    	vldr	s15, [r3, #24]
  385c8a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  385c8e: ed9d 5b02    	vldr	d5, [sp, #8]
  385c92: ee35 5b47    	vsub.f64	d5, d5, d7
  385c96: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x385cb8 <NetworkMessageDispatcher::updateServerPingTime()+0x68>
  385c9a: ee25 7b07    	vmul.f64	d7, d5, d7
  385c9e: ee36 7b07    	vadd.f64	d7, d6, d7
  385ca2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  385ca6: 9b01         	ldr	r3, [sp, #0x4]
  385ca8: edc3 7a07    	vstr	s15, [r3, #28]
  385cac: b005         	add	sp, #0x14
  385cae: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x385cb1); words below are literal-pool data ---
  385cb2: bf00         	nop
  385cb4: f3af 8000    	nop.w
  385cb8: 0000         	movs	r0, r0
  385cba: 6000         	str	r0, [r0]
  385cbc: 6666         	str	r6, [r4, #0x64]
  385cbe: 3fe6         	subs	r7, #0xe6
  385cc0: 999a         	ldr	r1, [sp, #0x268]
  385cc2: 3e99         	subs	r6, #0x99

// ==== NetworkMessageDispatcher::updatePeerPingTime
//      file offset 0x385cc8 (= ELF address; Ghidra 0x395cc8), 172 bytes, Thumb-2
  385cc8: b510         	push	{r4, lr}
  385cca: ed2d 8b02    	vpush	{d8}
  385cce: b088         	sub	sp, #0x20
  385cd0: 9003         	str	r0, [sp, #0xc]
  385cd2: 9102         	str	r1, [sp, #0x8]
  385cd4: 9201         	str	r2, [sp, #0x4]
  385cd6: f215 fc4d    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x21589a
  385cda: 4603         	mov	r3, r0
  385cdc: 681a         	ldr	r2, [r3]
  385cde: 3258         	adds	r2, #0x58
  385ce0: 6812         	ldr	r2, [r2]
  385ce2: 4618         	mov	r0, r3
  385ce4: 4790         	blx	r2
  385ce6: ee07 0a90    	vmov	s15, r0
  385cea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  385cee: ed8d 7b06    	vstr	d7, [sp, #24]
  385cf2: 9b03         	ldr	r3, [sp, #0xc]
  385cf4: ed93 7a07    	vldr	s14, [r3, #28]
  385cf8: eddf 7a1d    	vldr	s15, [pc, #116]         @ 0x385d70 <NetworkMessageDispatcher::updatePeerPingTime(cocos2d::extension::CCData*, std::string)+0xa8>
  385cfc: ee67 7a27    	vmul.f32	s15, s14, s15
  385d00: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  385d04: ab05         	add	r3, sp, #0x14
  385d06: 4618         	mov	r0, r3
  385d08: 9901         	ldr	r1, [sp, #0x4]
  385d0a: f030 f3ed    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4307da
  385d0e: ab05         	add	r3, sp, #0x14
  385d10: 9803         	ldr	r0, [sp, #0xc]
  385d12: 4619         	mov	r1, r3
  385d14: f001 fd84    	bl	0x387820 <NetworkMessageDispatcher::getPingTimeFor(std::string)> @ imm = #0x1b08
  385d18: ec41 0b16    	vmov	d6, r0, r1
  385d1c: ed9f 7b12    	vldr	d7, [pc, #72]           @ 0x385d68 <NetworkMessageDispatcher::updatePeerPingTime(cocos2d::extension::CCData*, std::string)+0xa0>
  385d20: ee26 7b07    	vmul.f64	d7, d6, d7
  385d24: ee38 7b07    	vadd.f64	d7, d8, d7
  385d28: eef7 7bc7    	vcvt.f32.f64	s15, d7
  385d2c: 9b03         	ldr	r3, [sp, #0xc]
  385d2e: edc3 7a07    	vstr	s15, [r3, #28]
  385d32: ab05         	add	r3, sp, #0x14
  385d34: 4618         	mov	r0, r3
  385d36: f02f f5ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fbda
  385d3a: 9b03         	ldr	r3, [sp, #0xc]
  385d3c: 695c         	ldr	r4, [r3, #0x14]
  385d3e: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  385d42: f7fb f813    	bl	0x380d6c <cocos2d::CCDouble::create(double)> @ imm = #-0x4fda
  385d46: 4603         	mov	r3, r0
  385d48: 4620         	mov	r0, r4
  385d4a: 4619         	mov	r1, r3
  385d4c: 9a01         	ldr	r2, [sp, #0x4]
  385d4e: f20e fdf3    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x20ebe6
  385d52: e005         	b	0x385d60 <NetworkMessageDispatcher::updatePeerPingTime(cocos2d::extension::CCData*, std::string)+0x98> @ imm = #0xa
  385d54: ab05         	add	r3, sp, #0x14
  385d56: 4618         	mov	r0, r3
  385d58: f02f f5dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42fbb8
  385d5c: f002 f1a6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40234c
  385d60: b008         	add	sp, #0x20
  385d62: ecbd 8b02    	vpop	{d8}
  385d66: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x385d67); words below are literal-pool data ---
  385d68: 0000         	movs	r0, r0
  385d6a: 6000         	str	r0, [r0]
  385d6c: 6666         	str	r6, [r4, #0x64]
  385d6e: 3fe6         	subs	r7, #0xe6
  385d70: 999a         	ldr	r1, [sp, #0x268]
  385d72: 3e99         	subs	r6, #0x99

// ==== NetworkMessageDispatcher::getLobbyStatusData
//      file offset 0x385d78 (= ELF address; Ghidra 0x395d78), 304 bytes, Thumb-2
  385d78: b5f0         	push	{r4, r5, r6, r7, lr}
  385d7a: b089         	sub	sp, #0x24
  385d7c: 9003         	str	r0, [sp, #0xc]
  385d7e: 9102         	str	r1, [sp, #0x8]
  385d80: 9201         	str	r2, [sp, #0x4]
  385d82: 4d44         	ldr	r5, [pc, #0x110]        @ 0x385e94 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x11c>
  385d84: 447d         	add	r5, pc
  385d86: 2327         	movs	r3, #0x27
  385d88: f88d 3010    	strb.w	r3, [sp, #0x10]
  385d8c: 9802         	ldr	r0, [sp, #0x8]
  385d8e: 2100         	movs	r1, #0x0
  385d90: f02f f6c4    	bl	0x7b5b1c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x1906c> @ imm = #0x42fd88
  385d94: 4603         	mov	r3, r0
  385d96: 781b         	ldrb	r3, [r3]
  385d98: f88d 3011    	strb.w	r3, [sp, #0x11]
  385d9c: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x385e98 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x120>
  385d9e: 58eb         	ldr	r3, [r5, r3]
  385da0: 4618         	mov	r0, r3
  385da2: f02f f2ad    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42f55a
  385da6: 4607         	mov	r7, r0
  385da8: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x385e98 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x120>
  385daa: 58eb         	ldr	r3, [r5, r3]
  385dac: 4618         	mov	r0, r3
  385dae: f02f f155    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42f2aa
  385db2: 4606         	mov	r6, r0
  385db4: 201c         	movs	r0, #0x1c
  385db6: f001 f5d5    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x401baa
  385dba: 4603         	mov	r3, r0
  385dbc: 461c         	mov	r4, r3
  385dbe: 4620         	mov	r0, r4
  385dc0: 4639         	mov	r1, r7
  385dc2: 4632         	mov	r2, r6
  385dc4: f0be fa12    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbe424
  385dc8: 9405         	str	r4, [sp, #0x14]
  385dca: 9b05         	ldr	r3, [sp, #0x14]
  385dcc: 4618         	mov	r0, r3
  385dce: f212 f895    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21212a
  385dd2: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x385e98 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x120>
  385dd4: 58eb         	ldr	r3, [r5, r3]
  385dd6: 4618         	mov	r0, r3
  385dd8: f02f f140    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42f280
  385ddc: 4603         	mov	r3, r0
  385dde: f8ad 3012    	strh.w	r3, [sp, #0x12]
  385de2: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x385e9c <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x124>
  385de4: 447b         	add	r3, pc
  385de6: 9306         	str	r3, [sp, #0x18]
  385de8: 9b06         	ldr	r3, [sp, #0x18]
  385dea: f89d 2010    	ldrb.w	r2, [sp, #0x10]
  385dee: 701a         	strb	r2, [r3]
  385df0: 9b06         	ldr	r3, [sp, #0x18]
  385df2: 3301         	adds	r3, #0x1
  385df4: 9306         	str	r3, [sp, #0x18]
  385df6: 9b01         	ldr	r3, [sp, #0x4]
  385df8: b2da         	uxtb	r2, r3
  385dfa: 9b06         	ldr	r3, [sp, #0x18]
  385dfc: 701a         	strb	r2, [r3]
  385dfe: 9b06         	ldr	r3, [sp, #0x18]
  385e00: 3301         	adds	r3, #0x1
  385e02: 9306         	str	r3, [sp, #0x18]
  385e04: 9b06         	ldr	r3, [sp, #0x18]
  385e06: f89d 2011    	ldrb.w	r2, [sp, #0x11]
  385e0a: 701a         	strb	r2, [r3]
  385e0c: 9b06         	ldr	r3, [sp, #0x18]
  385e0e: 3301         	adds	r3, #0x1
  385e10: 9306         	str	r3, [sp, #0x18]
  385e12: f8bd 3012    	ldrh.w	r3, [sp, #0x12]
  385e16: b2da         	uxtb	r2, r3
  385e18: 9b06         	ldr	r3, [sp, #0x18]
  385e1a: 701a         	strb	r2, [r3]
  385e1c: 9b06         	ldr	r3, [sp, #0x18]
  385e1e: 3301         	adds	r3, #0x1
  385e20: 9306         	str	r3, [sp, #0x18]
  385e22: 9805         	ldr	r0, [sp, #0x14]
  385e24: f0be fa88    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe510
  385e28: 4604         	mov	r4, r0
  385e2a: 9805         	ldr	r0, [sp, #0x14]
  385e2c: f0be fa8c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe518
  385e30: 4603         	mov	r3, r0
  385e32: 9806         	ldr	r0, [sp, #0x18]
  385e34: 4621         	mov	r1, r4
  385e36: 461a         	mov	r2, r3
  385e38: f750 e884    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xafef8
  385e3c: 9805         	ldr	r0, [sp, #0x14]
  385e3e: f0be fa83    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe506
  385e42: 4603         	mov	r3, r0
  385e44: 9a06         	ldr	r2, [sp, #0x18]
  385e46: 4413         	add	r3, r2
  385e48: 9306         	str	r3, [sp, #0x18]
  385e4a: 201c         	movs	r0, #0x1c
  385e4c: f001 f58a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x401b14
  385e50: 4603         	mov	r3, r0
  385e52: 461c         	mov	r4, r3
  385e54: 9a06         	ldr	r2, [sp, #0x18]
  385e56: 4b12         	ldr	r3, [pc, #0x48]         @ 0x385ea0 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x128>
  385e58: 447b         	add	r3, pc
  385e5a: 1ad3         	subs	r3, r2, r3
  385e5c: 4620         	mov	r0, r4
  385e5e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x385ea4 <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x12c>
  385e60: 447a         	add	r2, pc
  385e62: 4611         	mov	r1, r2
  385e64: 461a         	mov	r2, r3
  385e66: f0be f9c1    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbe382
  385e6a: 9407         	str	r4, [sp, #0x1c]
  385e6c: 9b07         	ldr	r3, [sp, #0x1c]
  385e6e: 4618         	mov	r0, r3
  385e70: f212 f844    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x212088
  385e74: 9b07         	ldr	r3, [sp, #0x1c]
  385e76: e009         	b	0x385e8c <NetworkMessageDispatcher::getLobbyStatusData(std::string, int)+0x114> @ imm = #0x12
  385e78: 4620         	mov	r0, r4
  385e7a: f002 f113    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x402226
  385e7e: f002 f115    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40222a
  385e82: 4620         	mov	r0, r4
  385e84: f002 f10e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40221c
  385e88: f002 f110    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x402220
  385e8c: 4618         	mov	r0, r3
  385e8e: b009         	add	sp, #0x24
  385e90: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x385e91); words below are literal-pool data ---
  385e92: bf00         	nop
  385e94: cc84         	ldm	r4!, {r2, r7}
  385e96: 005a         	lsls	r2, r3, #0x1
  385e98: d958         	bls	0x385f4c <NetworkMessageDispatcher::peerLobbyStatus(cocos2d::extension::CCData*, std::string)+0xa4> @ imm = #0xb0
  385e9a: ffff ad00    	<unknown>
  385e9e: 005b         	lsls	r3, r3, #0x1
  385ea0: ac8c         	add	r4, sp, #0x230
  385ea2: 005b         	lsls	r3, r3, #0x1
  385ea4: ac84         	add	r4, sp, #0x210
  385ea6: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::peerLobbyStatus
//      file offset 0x385ea8 (= ELF address; Ghidra 0x395ea8), 184 bytes, Thumb-2
  385ea8: b530         	push	{r4, r5, lr}
  385eaa: b08b         	sub	sp, #0x2c
  385eac: 9005         	str	r0, [sp, #0x14]
  385eae: 9104         	str	r1, [sp, #0x10]
  385eb0: 9203         	str	r2, [sp, #0xc]
  385eb2: 9804         	ldr	r0, [sp, #0x10]
  385eb4: f0be fa40    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe480
  385eb8: 4603         	mov	r3, r0
  385eba: 9307         	str	r3, [sp, #0x1c]
  385ebc: 9b07         	ldr	r3, [sp, #0x1c]
  385ebe: 3301         	adds	r3, #0x1
  385ec0: 9307         	str	r3, [sp, #0x1c]
  385ec2: 9b07         	ldr	r3, [sp, #0x1c]
  385ec4: 781b         	ldrb	r3, [r3]
  385ec6: f88d 3019    	strb.w	r3, [sp, #0x19]
  385eca: 9b07         	ldr	r3, [sp, #0x1c]
  385ecc: 3301         	adds	r3, #0x1
  385ece: 9307         	str	r3, [sp, #0x1c]
  385ed0: 9b07         	ldr	r3, [sp, #0x1c]
  385ed2: 781b         	ldrb	r3, [r3]
  385ed4: f88d 301a    	strb.w	r3, [sp, #0x1a]
  385ed8: 9b07         	ldr	r3, [sp, #0x1c]
  385eda: 3301         	adds	r3, #0x1
  385edc: 9307         	str	r3, [sp, #0x1c]
  385ede: 9b07         	ldr	r3, [sp, #0x1c]
  385ee0: 781b         	ldrb	r3, [r3]
  385ee2: f88d 301b    	strb.w	r3, [sp, #0x1b]
  385ee6: 9b07         	ldr	r3, [sp, #0x1c]
  385ee8: 3301         	adds	r3, #0x1
  385eea: 9307         	str	r3, [sp, #0x1c]
  385eec: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  385ef0: 9807         	ldr	r0, [sp, #0x1c]
  385ef2: 4619         	mov	r1, r3
  385ef4: f213 fdbe    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x213b7c
  385ef8: 4603         	mov	r3, r0
  385efa: 9308         	str	r3, [sp, #0x20]
  385efc: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  385f00: 9a07         	ldr	r2, [sp, #0x1c]
  385f02: 4413         	add	r3, r2
  385f04: 9307         	str	r3, [sp, #0x1c]
  385f06: f89d 301a    	ldrb.w	r3, [sp, #0x1a]
  385f0a: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x385f58 <NetworkMessageDispatcher::peerLobbyStatus(cocos2d::extension::CCData*, std::string)+0xb0>
  385f0c: 447a         	add	r2, pc
  385f0e: 4610         	mov	r0, r2
  385f10: 4619         	mov	r1, r3
  385f12: f213 fdfd    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x213bfa
  385f16: 4605         	mov	r5, r0
  385f18: 9803         	ldr	r0, [sp, #0xc]
  385f1a: f213 fd8f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x213b1e
  385f1e: 4604         	mov	r4, r0
  385f20: f89d 3019    	ldrb.w	r3, [sp, #0x19]
  385f24: 4618         	mov	r0, r3
  385f26: f75e feef    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa1222
  385f2a: 4603         	mov	r3, r0
  385f2c: 2200         	movs	r2, #0x0
  385f2e: 9200         	str	r2, [sp]
  385f30: 4628         	mov	r0, r5
  385f32: 4621         	mov	r1, r4
  385f34: 461a         	mov	r2, r3
  385f36: 9b08         	ldr	r3, [sp, #0x20]
  385f38: f213 ff6a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x213ed4
  385f3c: 4603         	mov	r3, r0
  385f3e: 9309         	str	r3, [sp, #0x24]
  385f40: f25a fbb6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25a76c
  385f44: 4603         	mov	r3, r0
  385f46: 4618         	mov	r0, r3
  385f48: 4b04         	ldr	r3, [pc, #0x10]         @ 0x385f5c <NetworkMessageDispatcher::peerLobbyStatus(cocos2d::extension::CCData*, std::string)+0xb4>
  385f4a: 447b         	add	r3, pc
  385f4c: 4619         	mov	r1, r3
  385f4e: 9a09         	ldr	r2, [sp, #0x24]
  385f50: f25a fdec    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25abd8
  385f54: b00b         	add	sp, #0x2c
  385f56: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x385f57); words below are literal-pool data ---
  385f58: a870         	add	r0, sp, #0x1c0
  385f5a: 0044         	lsls	r4, r0, #0x1
  385f5c: a836         	add	r0, sp, #0xd8
  385f5e: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::peerIM
//      file offset 0x385f60 (= ELF address; Ghidra 0x395f60), 436 bytes, Thumb-2
  385f60: b530         	push	{r4, r5, lr}
  385f62: b08b         	sub	sp, #0x2c
  385f64: 9003         	str	r0, [sp, #0xc]
  385f66: 9102         	str	r1, [sp, #0x8]
  385f68: 9201         	str	r2, [sp, #0x4]
  385f6a: 9802         	ldr	r0, [sp, #0x8]
  385f6c: f0be f9e4    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe3c8
  385f70: 4603         	mov	r3, r0
  385f72: 9307         	str	r3, [sp, #0x1c]
  385f74: 9b07         	ldr	r3, [sp, #0x1c]
  385f76: 3301         	adds	r3, #0x1
  385f78: 9307         	str	r3, [sp, #0x1c]
  385f7a: 9b07         	ldr	r3, [sp, #0x1c]
  385f7c: 781b         	ldrb	r3, [r3]
  385f7e: 2b01         	cmp	r3, #0x1
  385f80: bf14         	ite	ne
  385f82: 2300         	movne	r3, #0x0
  385f84: 2301         	moveq	r3, #0x1
  385f86: f88d 3013    	strb.w	r3, [sp, #0x13]
  385f8a: 9b07         	ldr	r3, [sp, #0x1c]
  385f8c: 3301         	adds	r3, #0x1
  385f8e: 9307         	str	r3, [sp, #0x1c]
  385f90: 9802         	ldr	r0, [sp, #0x8]
  385f92: f0be f9d9    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe3b2
  385f96: 4604         	mov	r4, r0
  385f98: 9802         	ldr	r0, [sp, #0x8]
  385f9a: f0be f9cd    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe39a
  385f9e: 4603         	mov	r3, r0
  385fa0: 461a         	mov	r2, r3
  385fa2: 9b07         	ldr	r3, [sp, #0x1c]
  385fa4: 1ad3         	subs	r3, r2, r3
  385fa6: 4423         	add	r3, r4
  385fa8: 9807         	ldr	r0, [sp, #0x1c]
  385faa: 4619         	mov	r1, r3
  385fac: f213 fd62    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x213ac4
  385fb0: 4603         	mov	r3, r0
  385fb2: 9308         	str	r3, [sp, #0x20]
  385fb4: 9802         	ldr	r0, [sp, #0x8]
  385fb6: f0be f9c7    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe38e
  385fba: 4604         	mov	r4, r0
  385fbc: 9802         	ldr	r0, [sp, #0x8]
  385fbe: f0be f9bb    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe376
  385fc2: 4603         	mov	r3, r0
  385fc4: 461a         	mov	r2, r3
  385fc6: 9b07         	ldr	r3, [sp, #0x1c]
  385fc8: 1ad3         	subs	r3, r2, r3
  385fca: 4423         	add	r3, r4
  385fcc: 9a07         	ldr	r2, [sp, #0x1c]
  385fce: 4413         	add	r3, r2
  385fd0: 9307         	str	r3, [sp, #0x1c]
  385fd2: 9b08         	ldr	r3, [sp, #0x20]
  385fd4: f103 0414    	add.w	r4, r3, #0x14
  385fd8: 9b08         	ldr	r3, [sp, #0x20]
  385fda: 2b00         	cmp	r3, #0x0
  385fdc: d004         	beq	0x385fe8 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x88> @ imm = #0x8
  385fde: 9808         	ldr	r0, [sp, #0x20]
  385fe0: f213 fca2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x213944
  385fe4: 4603         	mov	r3, r0
  385fe6: e001         	b	0x385fec <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x8c> @ imm = #0x2
  385fe8: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x386108 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x1a8>
  385fea: 447b         	add	r3, pc
  385fec: 4620         	mov	r0, r4
  385fee: 4619         	mov	r1, r3
  385ff0: f02f f73e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x42fe7c
  385ff4: 9b08         	ldr	r3, [sp, #0x20]
  385ff6: f103 0414    	add.w	r4, r3, #0x14
  385ffa: 9808         	ldr	r0, [sp, #0x20]
  385ffc: f213 fc94    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x213928
  386000: 4605         	mov	r5, r0
  386002: ab04         	add	r3, sp, #0x10
  386004: 4618         	mov	r0, r3
  386006: f004 f1f5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4043ea
  38600a: aa05         	add	r2, sp, #0x14
  38600c: ab04         	add	r3, sp, #0x10
  38600e: 4610         	mov	r0, r2
  386010: 4629         	mov	r1, r5
  386012: 461a         	mov	r2, r3
  386014: f030 f524    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x430a48
  386018: aa06         	add	r2, sp, #0x18
  38601a: ab05         	add	r3, sp, #0x14
  38601c: 4610         	mov	r0, r2
  38601e: 9903         	ldr	r1, [sp, #0xc]
  386020: 461a         	mov	r2, r3
  386022: f001 fdc9    	bl	0x387bb8 <NetworkMessageDispatcher::filterText(std::string)> @ imm = #0x1b92
  386026: ab06         	add	r3, sp, #0x18
  386028: 4620         	mov	r0, r4
  38602a: 4619         	mov	r1, r3
  38602c: f02f f15c    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x42f2b8
  386030: ab06         	add	r3, sp, #0x18
  386032: 4618         	mov	r0, r3
  386034: f02f f46e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42f8dc
  386038: ab05         	add	r3, sp, #0x14
  38603a: 4618         	mov	r0, r3
  38603c: f02f f46a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42f8d4
  386040: ab04         	add	r3, sp, #0x10
  386042: 4618         	mov	r0, r3
  386044: f004 f1da    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4043b4
  386048: 2400         	movs	r4, #0x0
  38604a: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  38604e: 2b00         	cmp	r3, #0x0
  386050: d00e         	beq	0x386070 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x110> @ imm = #0x1c
  386052: ab05         	add	r3, sp, #0x14
  386054: 4618         	mov	r0, r3
  386056: f004 f1cd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40439a
  38605a: 2401         	movs	r4, #0x1
  38605c: aa06         	add	r2, sp, #0x18
  38605e: ab05         	add	r3, sp, #0x14
  386060: 4610         	mov	r0, r2
  386062: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x38610c <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x1ac>
  386064: 447a         	add	r2, pc
  386066: 4611         	mov	r1, r2
  386068: 461a         	mov	r2, r3
  38606a: f030 f4f9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4309f2
  38606e: e004         	b	0x38607a <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x11a> @ imm = #0x8
  386070: ab06         	add	r3, sp, #0x18
  386072: 4618         	mov	r0, r3
  386074: 9901         	ldr	r1, [sp, #0x4]
  386076: f030 f237    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x43046e
  38607a: ab06         	add	r3, sp, #0x18
  38607c: 4618         	mov	r0, r3
  38607e: f213 fcdd    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2139ba
  386082: 4603         	mov	r3, r0
  386084: 4618         	mov	r0, r3
  386086: 9908         	ldr	r1, [sp, #0x20]
  386088: 2200         	movs	r2, #0x0
  38608a: f213 fec1    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x213d82
  38608e: 4603         	mov	r3, r0
  386090: 9309         	str	r3, [sp, #0x24]
  386092: ab06         	add	r3, sp, #0x18
  386094: 4618         	mov	r0, r3
  386096: f02f f43d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42f87a
  38609a: 2c00         	cmp	r4, #0x0
  38609c: d005         	beq	0x3860aa <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x14a> @ imm = #0xa
  38609e: bf00         	nop
  3860a0: ab05         	add	r3, sp, #0x14
  3860a2: 4618         	mov	r0, r3
  3860a4: f004 f1aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x404354
  3860a8: e000         	b	0x3860ac <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x14c> @ imm = #0x0
  3860aa: bf00         	nop
  3860ac: f25a fb00    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25a600
  3860b0: 4603         	mov	r3, r0
  3860b2: 4618         	mov	r0, r3
  3860b4: 4b16         	ldr	r3, [pc, #0x58]         @ 0x386110 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x1b0>
  3860b6: 447b         	add	r3, pc
  3860b8: 4619         	mov	r1, r3
  3860ba: 9a09         	ldr	r2, [sp, #0x24]
  3860bc: f25a fd36    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25aa6c
  3860c0: e01f         	b	0x386102 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x1a2> @ imm = #0x3e
  3860c2: ab06         	add	r3, sp, #0x18
  3860c4: 4618         	mov	r0, r3
  3860c6: f02f f425    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42f84a
  3860ca: e7ff         	b	0x3860cc <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x16c> @ imm = #-0x2
  3860cc: ab05         	add	r3, sp, #0x14
  3860ce: 4618         	mov	r0, r3
  3860d0: f02f f420    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42f840
  3860d4: e7ff         	b	0x3860d6 <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x176> @ imm = #-0x2
  3860d6: ab04         	add	r3, sp, #0x10
  3860d8: 4618         	mov	r0, r3
  3860da: f004 f18f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40431e
  3860de: f001 f7e5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401fca
  3860e2: ab06         	add	r3, sp, #0x18
  3860e4: 4618         	mov	r0, r3
  3860e6: f02f f415    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42f82a
  3860ea: e7ff         	b	0x3860ec <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x18c> @ imm = #-0x2
  3860ec: 2c00         	cmp	r4, #0x0
  3860ee: d005         	beq	0x3860fc <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x19c> @ imm = #0xa
  3860f0: bf00         	nop
  3860f2: ab05         	add	r3, sp, #0x14
  3860f4: 4618         	mov	r0, r3
  3860f6: f004 f181    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x404302
  3860fa: e000         	b	0x3860fe <NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string)+0x19e> @ imm = #0x0
  3860fc: bf00         	nop
  3860fe: f001 f7d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401faa
  386102: b00b         	add	sp, #0x2c
  386104: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x386105); words below are literal-pool data ---
  386106: bf00         	nop
  386108: a5da         	adr	r5, #872 <NetworkMessageDispatcher::updatePeerEnemyDestroy(cocos2d::extension::CCData*, std::string)+0x32>
  38610a: 0044         	lsls	r4, r0, #0x1
  38610c: a730         	adr	r7, #192 <NetworkMessageDispatcher::updatePeerEnemySpawn(cocos2d::extension::CCData*, std::string)+0x2c>
  38610e: 0044         	lsls	r4, r0, #0x1
  386110: a6e6         	adr	r6, #920 <NetworkMessageDispatcher::updatePeerEnemyDestroy(cocos2d::extension::CCData*, std::string)+0x46>
  386112: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerEnemySpawn
//      file offset 0x386114 (= ELF address; Ghidra 0x396114), 160 bytes, Thumb-2
  386114: b510         	push	{r4, lr}
  386116: b088         	sub	sp, #0x20
  386118: 9003         	str	r0, [sp, #0xc]
  38611a: 9102         	str	r1, [sp, #0x8]
  38611c: 9201         	str	r2, [sp, #0x4]
  38611e: 9802         	ldr	r0, [sp, #0x8]
  386120: f0be f90a    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe214
  386124: 4603         	mov	r3, r0
  386126: 9305         	str	r3, [sp, #0x14]
  386128: 9b05         	ldr	r3, [sp, #0x14]
  38612a: 3301         	adds	r3, #0x1
  38612c: 9305         	str	r3, [sp, #0x14]
  38612e: 9b05         	ldr	r3, [sp, #0x14]
  386130: 881b         	ldrh	r3, [r3]
  386132: f8ad 3012    	strh.w	r3, [sp, #0x12]
  386136: 9b05         	ldr	r3, [sp, #0x14]
  386138: 3302         	adds	r3, #0x2
  38613a: 9305         	str	r3, [sp, #0x14]
  38613c: 9802         	ldr	r0, [sp, #0x8]
  38613e: f0be f903    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe206
  386142: 4604         	mov	r4, r0
  386144: 9802         	ldr	r0, [sp, #0x8]
  386146: f0be f8f7    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe1ee
  38614a: 4603         	mov	r3, r0
  38614c: 461a         	mov	r2, r3
  38614e: 9b05         	ldr	r3, [sp, #0x14]
  386150: 1ad3         	subs	r3, r2, r3
  386152: 4423         	add	r3, r4
  386154: 9805         	ldr	r0, [sp, #0x14]
  386156: 4619         	mov	r1, r3
  386158: f213 fc8c    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x213918
  38615c: 4603         	mov	r3, r0
  38615e: 9306         	str	r3, [sp, #0x18]
  386160: 9802         	ldr	r0, [sp, #0x8]
  386162: f0be f8f1    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe1e2
  386166: 4604         	mov	r4, r0
  386168: 9802         	ldr	r0, [sp, #0x8]
  38616a: f0be f8e5    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe1ca
  38616e: 4603         	mov	r3, r0
  386170: 461a         	mov	r2, r3
  386172: 9b05         	ldr	r3, [sp, #0x14]
  386174: 1ad3         	subs	r3, r2, r3
  386176: 4423         	add	r3, r4
  386178: 9a05         	ldr	r2, [sp, #0x14]
  38617a: 4413         	add	r3, r2
  38617c: 9305         	str	r3, [sp, #0x14]
  38617e: f9bd 3012    	ldrsh.w	r3, [sp, #0x12]
  386182: 4618         	mov	r0, r3
  386184: f75e fdc0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa1480
  386188: 4603         	mov	r3, r0
  38618a: 9806         	ldr	r0, [sp, #0x18]
  38618c: 4619         	mov	r1, r3
  38618e: 2200         	movs	r2, #0x0
  386190: f213 fe3e    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x213c7c
  386194: 4603         	mov	r3, r0
  386196: 9307         	str	r3, [sp, #0x1c]
  386198: f25a fa8a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25a514
  38619c: 4603         	mov	r3, r0
  38619e: 4618         	mov	r0, r3
  3861a0: 4b03         	ldr	r3, [pc, #0xc]          @ 0x3861b0 <NetworkMessageDispatcher::updatePeerEnemySpawn(cocos2d::extension::CCData*, std::string)+0x9c>
  3861a2: 447b         	add	r3, pc
  3861a4: 4619         	mov	r1, r3
  3861a6: 9a07         	ldr	r2, [sp, #0x1c]
  3861a8: f25a fcc0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25a980
  3861ac: b008         	add	sp, #0x20
  3861ae: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3861af); words below are literal-pool data ---
  3861b0: a612         	adr	r6, #72 <NetworkMessageDispatcher::updatePeerEnemyDestroy(cocos2d::extension::CCData*, std::string)+0x12>
  3861b2: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::updatePeerEnemyDestroy
//      file offset 0x3861b4 (= ELF address; Ghidra 0x3961b4), 120 bytes, Thumb-2
  3861b4: b510         	push	{r4, lr}
  3861b6: b086         	sub	sp, #0x18
  3861b8: 9003         	str	r0, [sp, #0xc]
  3861ba: 9102         	str	r1, [sp, #0x8]
  3861bc: 9201         	str	r2, [sp, #0x4]
  3861be: 9802         	ldr	r0, [sp, #0x8]
  3861c0: f0be f8ba    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe174
  3861c4: 4603         	mov	r3, r0
  3861c6: 9304         	str	r3, [sp, #0x10]
  3861c8: 9b04         	ldr	r3, [sp, #0x10]
  3861ca: 3301         	adds	r3, #0x1
  3861cc: 9304         	str	r3, [sp, #0x10]
  3861ce: 9802         	ldr	r0, [sp, #0x8]
  3861d0: f0be f8ba    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe174
  3861d4: 4604         	mov	r4, r0
  3861d6: 9802         	ldr	r0, [sp, #0x8]
  3861d8: f0be f8ae    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe15c
  3861dc: 4603         	mov	r3, r0
  3861de: 461a         	mov	r2, r3
  3861e0: 9b04         	ldr	r3, [sp, #0x10]
  3861e2: 1ad3         	subs	r3, r2, r3
  3861e4: 4423         	add	r3, r4
  3861e6: 9804         	ldr	r0, [sp, #0x10]
  3861e8: 4619         	mov	r1, r3
  3861ea: f213 fc43    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x213886
  3861ee: 4603         	mov	r3, r0
  3861f0: 9305         	str	r3, [sp, #0x14]
  3861f2: 9802         	ldr	r0, [sp, #0x8]
  3861f4: f0be f8a8    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbe150
  3861f8: 4604         	mov	r4, r0
  3861fa: 9802         	ldr	r0, [sp, #0x8]
  3861fc: f0be f89c    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbe138
  386200: 4603         	mov	r3, r0
  386202: 461a         	mov	r2, r3
  386204: 9b04         	ldr	r3, [sp, #0x10]
  386206: 1ad3         	subs	r3, r2, r3
  386208: 4423         	add	r3, r4
  38620a: 9a04         	ldr	r2, [sp, #0x10]
  38620c: 4413         	add	r3, r2
  38620e: 9304         	str	r3, [sp, #0x10]
  386210: f25a fa4e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25a49c
  386214: 4603         	mov	r3, r0
  386216: 4618         	mov	r0, r3
  386218: 4b03         	ldr	r3, [pc, #0xc]          @ 0x386228 <NetworkMessageDispatcher::updatePeerEnemyDestroy(cocos2d::extension::CCData*, std::string)+0x74>
  38621a: 447b         	add	r3, pc
  38621c: 4619         	mov	r1, r3
  38621e: 9a05         	ldr	r2, [sp, #0x14]
  386220: f25a fc84    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25a908
  386224: b006         	add	sp, #0x18
  386226: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x386227); words below are literal-pool data ---
  386228: a5aa         	adr	r5, #680 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0xa6>
  38622a: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getEnemyPositionData
//      file offset 0x386230 (= ELF address; Ghidra 0x396230), 720 bytes, Thumb-2
  386230: b082         	sub	sp, #0x8
  386232: b5f0         	push	{r4, r5, r6, r7, lr}
  386234: b097         	sub	sp, #0x5c
  386236: 9001         	str	r0, [sp, #0x4]
  386238: 9100         	str	r1, [sp]
  38623a: a91c         	add	r1, sp, #0x70
  38623c: e881 000c    	stm.w	r1, {r2, r3}
  386240: 4ca8         	ldr	r4, [pc, #0x2a0]        @ 0x3864e4 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2b4>
  386242: 447c         	add	r4, pc
  386244: 2329         	movs	r3, #0x29
  386246: f88d 300f    	strb.w	r3, [sp, #0xf]
  38624a: 9800         	ldr	r0, [sp]
  38624c: f02f f058    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42f0b0
  386250: 4607         	mov	r7, r0
  386252: 9800         	ldr	r0, [sp]
  386254: f02e f702    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42ee04
  386258: 4606         	mov	r6, r0
  38625a: 201c         	movs	r0, #0x1c
  38625c: f001 f382    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x401704
  386260: 4603         	mov	r3, r0
  386262: 461d         	mov	r5, r3
  386264: 4628         	mov	r0, r5
  386266: 4639         	mov	r1, r7
  386268: 4632         	mov	r2, r6
  38626a: f0bd ffbf    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbdf7e
  38626e: 9507         	str	r5, [sp, #0x1c]
  386270: 9b07         	ldr	r3, [sp, #0x1c]
  386272: 4618         	mov	r0, r3
  386274: f211 fe42    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x211c84
  386278: ed9d 7b1c    	vldr	d7, [sp, #112]
  38627c: eefd 6bc7    	vcvt.s32.f64	s13, d7
  386280: ee16 3a90    	vmov	r3, s13
  386284: f8ad 3016    	strh.w	r3, [sp, #0x16]
  386288: ed9d 7b1e    	vldr	d7, [sp, #120]
  38628c: eefd 6bc7    	vcvt.s32.f64	s13, d7
  386290: ee16 3a90    	vmov	r3, s13
  386294: f8ad 3018    	strh.w	r3, [sp, #0x18]
  386298: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x3864e8 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2b8>
  38629a: 58e3         	ldr	r3, [r4, r3]
  38629c: ed93 7a00    	vldr	s14, [r3]
  3862a0: eddd 7a21    	vldr	s15, [sp, #132]
  3862a4: ee67 7a27    	vmul.f32	s15, s14, s15
  3862a8: eefc 7ae7    	vcvt.u32.f32	s15, s15
  3862ac: ee17 3a90    	vmov	r3, s15
  3862b0: f8ad 301a    	strh.w	r3, [sp, #0x1a]
  3862b4: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x3864ec <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2bc>
  3862b6: 58e3         	ldr	r3, [r4, r3]
  3862b8: ed93 7a00    	vldr	s14, [r3]
  3862bc: eddd 7a20    	vldr	s15, [sp, #128]
  3862c0: ee67 7a27    	vmul.f32	s15, s14, s15
  3862c4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3862c8: ee17 3a90    	vmov	r3, s15
  3862cc: f88d 3010    	strb.w	r3, [sp, #0x10]
  3862d0: ed9d 6b24    	vldr	d6, [sp, #144]
  3862d4: ed9d 7b26    	vldr	d7, [sp, #152]
  3862d8: ab0e         	add	r3, sp, #0x38
  3862da: 4618         	mov	r0, r3
  3862dc: eeb0 0b46    	vmov.f64	d0, d6
  3862e0: eeb0 1b47    	vmov.f64	d1, d7
  3862e4: f7fa fdc2    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x547c
  3862e8: ab0e         	add	r3, sp, #0x38
  3862ea: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3862ec: f350 fee4    	bl	0x6d70b8 <cpvlength>    @ imm = #0x350dc8
  3862f0: ec41 0b17    	vmov	d7, r0, r1
  3862f4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3862f8: edcd 7a08    	vstr	s15, [sp, #32]
  3862fc: ab24         	add	r3, sp, #0x90
  3862fe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  386300: f7fa feea    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x522c
  386304: 9009         	str	r0, [sp, #0x24]
  386306: eddd 7a08    	vldr	s15, [sp, #32]
  38630a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38630e: ed9f 7b72    	vldr	d7, [pc, #456]          @ 0x3864d8 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2a8>
  386312: ee26 7b07    	vmul.f64	d7, d6, d7
  386316: eefd 6bc7    	vcvt.s32.f64	s13, d7
  38631a: ee16 3a90    	vmov	r3, s13
  38631e: f88d 3011    	strb.w	r3, [sp, #0x11]
  386322: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x3864f0 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2c0>
  386324: 58e3         	ldr	r3, [r4, r3]
  386326: ed93 7a00    	vldr	s14, [r3]
  38632a: eddd 7a09    	vldr	s15, [sp, #36]
  38632e: ee67 7a27    	vmul.f32	s15, s14, s15
  386332: eefd 7ae7    	vcvt.s32.f32	s15, s15
  386336: ee17 3a90    	vmov	r3, s15
  38633a: f88d 3012    	strb.w	r3, [sp, #0x12]
  38633e: ed9d 6b28    	vldr	d6, [sp, #160]
  386342: ed9d 7b2a    	vldr	d7, [sp, #168]
  386346: ab12         	add	r3, sp, #0x48
  386348: 4618         	mov	r0, r3
  38634a: eeb0 0b46    	vmov.f64	d0, d6
  38634e: eeb0 1b47    	vmov.f64	d1, d7
  386352: f7fa fd8b    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x54ea
  386356: ab12         	add	r3, sp, #0x48
  386358: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38635a: f350 fead    	bl	0x6d70b8 <cpvlength>    @ imm = #0x350d5a
  38635e: ec41 0b17    	vmov	d7, r0, r1
  386362: eef7 7bc7    	vcvt.f32.f64	s15, d7
  386366: edcd 7a0a    	vstr	s15, [sp, #40]
  38636a: ab28         	add	r3, sp, #0xa0
  38636c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38636e: f7fa feb3    	bl	0x3810d8 <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x32c> @ imm = #-0x529a
  386372: 900b         	str	r0, [sp, #0x2c]
  386374: ed9d 7a0a    	vldr	s14, [sp, #40]
  386378: eddf 7a59    	vldr	s15, [pc, #356]         @ 0x3864e0 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2b0>
  38637c: ee67 7a27    	vmul.f32	s15, s14, s15
  386380: eefd 7ae7    	vcvt.s32.f32	s15, s15
  386384: ee17 3a90    	vmov	r3, s15
  386388: f88d 3013    	strb.w	r3, [sp, #0x13]
  38638c: 4b58         	ldr	r3, [pc, #0x160]        @ 0x3864f0 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2c0>
  38638e: 58e3         	ldr	r3, [r4, r3]
  386390: ed93 7a00    	vldr	s14, [r3]
  386394: eddd 7a0b    	vldr	s15, [sp, #44]
  386398: ee67 7a27    	vmul.f32	s15, s14, s15
  38639c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3863a0: ee17 3a90    	vmov	r3, s15
  3863a4: f88d 3014    	strb.w	r3, [sp, #0x14]
  3863a8: ed9d 7a2c    	vldr	s14, [sp, #176]
  3863ac: eddf 7a4c    	vldr	s15, [pc, #304]         @ 0x3864e0 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2b0>
  3863b0: ee67 7a27    	vmul.f32	s15, s14, s15
  3863b4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3863b8: ee17 3a90    	vmov	r3, s15
  3863bc: f88d 3015    	strb.w	r3, [sp, #0x15]
  3863c0: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x3864f4 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2c4>
  3863c2: 447b         	add	r3, pc
  3863c4: 930c         	str	r3, [sp, #0x30]
  3863c6: 9b0c         	ldr	r3, [sp, #0x30]
  3863c8: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  3863cc: 701a         	strb	r2, [r3]
  3863ce: 9b0c         	ldr	r3, [sp, #0x30]
  3863d0: 3301         	adds	r3, #0x1
  3863d2: 930c         	str	r3, [sp, #0x30]
  3863d4: 9b0c         	ldr	r3, [sp, #0x30]
  3863d6: f8bd 2016    	ldrh.w	r2, [sp, #0x16]
  3863da: 801a         	strh	r2, [r3]
  3863dc: 9b0c         	ldr	r3, [sp, #0x30]
  3863de: 3302         	adds	r3, #0x2
  3863e0: 930c         	str	r3, [sp, #0x30]
  3863e2: 9b0c         	ldr	r3, [sp, #0x30]
  3863e4: f8bd 2018    	ldrh.w	r2, [sp, #0x18]
  3863e8: 801a         	strh	r2, [r3]
  3863ea: 9b0c         	ldr	r3, [sp, #0x30]
  3863ec: 3302         	adds	r3, #0x2
  3863ee: 930c         	str	r3, [sp, #0x30]
  3863f0: 9b0c         	ldr	r3, [sp, #0x30]
  3863f2: f89d 2010    	ldrb.w	r2, [sp, #0x10]
  3863f6: 701a         	strb	r2, [r3]
  3863f8: 9b0c         	ldr	r3, [sp, #0x30]
  3863fa: 3301         	adds	r3, #0x1
  3863fc: 930c         	str	r3, [sp, #0x30]
  3863fe: 9b0c         	ldr	r3, [sp, #0x30]
  386400: f8bd 201a    	ldrh.w	r2, [sp, #0x1a]
  386404: 801a         	strh	r2, [r3]
  386406: 9b0c         	ldr	r3, [sp, #0x30]
  386408: 3302         	adds	r3, #0x2
  38640a: 930c         	str	r3, [sp, #0x30]
  38640c: 9b0c         	ldr	r3, [sp, #0x30]
  38640e: f89d 20b4    	ldrb.w	r2, [sp, #0xb4]
  386412: 701a         	strb	r2, [r3]
  386414: 9b0c         	ldr	r3, [sp, #0x30]
  386416: 3301         	adds	r3, #0x1
  386418: 930c         	str	r3, [sp, #0x30]
  38641a: 9b0c         	ldr	r3, [sp, #0x30]
  38641c: f89d 2011    	ldrb.w	r2, [sp, #0x11]
  386420: 701a         	strb	r2, [r3]
  386422: 9b0c         	ldr	r3, [sp, #0x30]
  386424: 3301         	adds	r3, #0x1
  386426: 930c         	str	r3, [sp, #0x30]
  386428: 9b0c         	ldr	r3, [sp, #0x30]
  38642a: f89d 2012    	ldrb.w	r2, [sp, #0x12]
  38642e: 701a         	strb	r2, [r3]
  386430: 9b0c         	ldr	r3, [sp, #0x30]
  386432: 3301         	adds	r3, #0x1
  386434: 930c         	str	r3, [sp, #0x30]
  386436: 9b0c         	ldr	r3, [sp, #0x30]
  386438: f89d 2013    	ldrb.w	r2, [sp, #0x13]
  38643c: 701a         	strb	r2, [r3]
  38643e: 9b0c         	ldr	r3, [sp, #0x30]
  386440: 3301         	adds	r3, #0x1
  386442: 930c         	str	r3, [sp, #0x30]
  386444: 9b0c         	ldr	r3, [sp, #0x30]
  386446: f89d 2014    	ldrb.w	r2, [sp, #0x14]
  38644a: 701a         	strb	r2, [r3]
  38644c: 9b0c         	ldr	r3, [sp, #0x30]
  38644e: 3301         	adds	r3, #0x1
  386450: 930c         	str	r3, [sp, #0x30]
  386452: 9b0c         	ldr	r3, [sp, #0x30]
  386454: f89d 2015    	ldrb.w	r2, [sp, #0x15]
  386458: 701a         	strb	r2, [r3]
  38645a: 9b0c         	ldr	r3, [sp, #0x30]
  38645c: 3301         	adds	r3, #0x1
  38645e: 930c         	str	r3, [sp, #0x30]
  386460: 9807         	ldr	r0, [sp, #0x1c]
  386462: f0bd ff69    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbded2
  386466: 4604         	mov	r4, r0
  386468: 9807         	ldr	r0, [sp, #0x1c]
  38646a: f0bd ff6d    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbdeda
  38646e: 4603         	mov	r3, r0
  386470: 980c         	ldr	r0, [sp, #0x30]
  386472: 4621         	mov	r1, r4
  386474: 461a         	mov	r2, r3
  386476: f74f ed66    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb0534
  38647a: 9807         	ldr	r0, [sp, #0x1c]
  38647c: f0bd ff64    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbdec8
  386480: 4603         	mov	r3, r0
  386482: 9a0c         	ldr	r2, [sp, #0x30]
  386484: 4413         	add	r3, r2
  386486: 930c         	str	r3, [sp, #0x30]
  386488: 201c         	movs	r0, #0x1c
  38648a: f001 f26b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4014d6
  38648e: 4603         	mov	r3, r0
  386490: 461c         	mov	r4, r3
  386492: 9a0c         	ldr	r2, [sp, #0x30]
  386494: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3864f8 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2c8>
  386496: 447b         	add	r3, pc
  386498: 1ad3         	subs	r3, r2, r3
  38649a: 4620         	mov	r0, r4
  38649c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3864fc <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x2cc>
  38649e: 447a         	add	r2, pc
  3864a0: 4611         	mov	r1, r2
  3864a2: 461a         	mov	r2, r3
  3864a4: f0bd fea2    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbdd44
  3864a8: 940d         	str	r4, [sp, #0x34]
  3864aa: 9b0d         	ldr	r3, [sp, #0x34]
  3864ac: 4618         	mov	r0, r3
  3864ae: f211 fd25    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x211a4a
  3864b2: 9b0d         	ldr	r3, [sp, #0x34]
  3864b4: e009         	b	0x3864ca <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x29a> @ imm = #0x12
  3864b6: 4628         	mov	r0, r5
  3864b8: f001 f5f4    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x401be8
  3864bc: f001 f5f6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401bec
  3864c0: 4620         	mov	r0, r4
  3864c2: f001 f5ef    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x401bde
  3864c6: f001 f5f1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401be2
  3864ca: 4618         	mov	r0, r3
  3864cc: b017         	add	sp, #0x5c
  3864ce: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
  3864d2: b002         	add	sp, #0x8
  3864d4: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3864d5); words below are literal-pool data ---
  3864d6: bf00         	nop
  3864d8: b852         	<unknown>
  3864da: 851e         	strh	r6, [r3, #0x28]
  3864dc: 51eb         	str	r3, [r5, r7]
  3864de: 3fe0         	subs	r7, #0xe0
  3864e0: 0000         	movs	r0, r0
  3864e2: 437f         	muls	r7, r7, r7
  3864e4: c7c6         	stm	r7!, {r1, r2, r6, r7}
  3864e6: 005a         	lsls	r2, r3, #0x1
  3864e8: dcd4         	bgt	0x386494 <NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect, cpVect, float, unsigned char)+0x264> @ imm = #-0x58
  3864ea: ffff dcd8    	<unknown>
  3864ee: ffff dcdc    	<unknown>
  3864f2: ffff a722    	<unknown>
  3864f6: 005b         	lsls	r3, r3, #0x1
  3864f8: a64e         	adr	r6, #312 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x4a>
  3864fa: 005b         	lsls	r3, r3, #0x1
  3864fc: a646         	adr	r6, #280 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x46>
  3864fe: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::updatePeerEnemyPosition
//      file offset 0x386500 (= ELF address; Ghidra 0x396500), 932 bytes, Thumb-2
  386500: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  386504: ed2d 8b02    	vpush	{d8}
  386508: b0b1         	sub	sp, #0xc4
  38650a: 900b         	str	r0, [sp, #0x2c]
  38650c: 910a         	str	r1, [sp, #0x28]
  38650e: 9209         	str	r2, [sp, #0x24]
  386510: 4cdf         	ldr	r4, [pc, #0x37c]        @ 0x386890 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x390>
  386512: 447c         	add	r4, pc
  386514: 980a         	ldr	r0, [sp, #0x28]
  386516: f0bd ff0f    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbde1e
  38651a: 4603         	mov	r3, r0
  38651c: 9310         	str	r3, [sp, #0x40]
  38651e: 9b10         	ldr	r3, [sp, #0x40]
  386520: 3301         	adds	r3, #0x1
  386522: 9310         	str	r3, [sp, #0x40]
  386524: 9b10         	ldr	r3, [sp, #0x40]
  386526: 881b         	ldrh	r3, [r3]
  386528: f8ad 303a    	strh.w	r3, [sp, #0x3a]
  38652c: 9b10         	ldr	r3, [sp, #0x40]
  38652e: 3302         	adds	r3, #0x2
  386530: 9310         	str	r3, [sp, #0x40]
  386532: 9b10         	ldr	r3, [sp, #0x40]
  386534: 881b         	ldrh	r3, [r3]
  386536: f8ad 303c    	strh.w	r3, [sp, #0x3c]
  38653a: 9b10         	ldr	r3, [sp, #0x40]
  38653c: 3302         	adds	r3, #0x2
  38653e: 9310         	str	r3, [sp, #0x40]
  386540: 9b10         	ldr	r3, [sp, #0x40]
  386542: 781b         	ldrb	r3, [r3]
  386544: f88d 3033    	strb.w	r3, [sp, #0x33]
  386548: 9b10         	ldr	r3, [sp, #0x40]
  38654a: 3301         	adds	r3, #0x1
  38654c: 9310         	str	r3, [sp, #0x40]
  38654e: 9b10         	ldr	r3, [sp, #0x40]
  386550: 881b         	ldrh	r3, [r3]
  386552: f8ad 303e    	strh.w	r3, [sp, #0x3e]
  386556: 9b10         	ldr	r3, [sp, #0x40]
  386558: 3302         	adds	r3, #0x2
  38655a: 9310         	str	r3, [sp, #0x40]
  38655c: 9b10         	ldr	r3, [sp, #0x40]
  38655e: 781b         	ldrb	r3, [r3]
  386560: f88d 3034    	strb.w	r3, [sp, #0x34]
  386564: 9b10         	ldr	r3, [sp, #0x40]
  386566: 3301         	adds	r3, #0x1
  386568: 9310         	str	r3, [sp, #0x40]
  38656a: 9b10         	ldr	r3, [sp, #0x40]
  38656c: 781b         	ldrb	r3, [r3]
  38656e: f88d 3035    	strb.w	r3, [sp, #0x35]
  386572: 9b10         	ldr	r3, [sp, #0x40]
  386574: 3301         	adds	r3, #0x1
  386576: 9310         	str	r3, [sp, #0x40]
  386578: 9b10         	ldr	r3, [sp, #0x40]
  38657a: 781b         	ldrb	r3, [r3]
  38657c: f88d 3036    	strb.w	r3, [sp, #0x36]
  386580: 9b10         	ldr	r3, [sp, #0x40]
  386582: 3301         	adds	r3, #0x1
  386584: 9310         	str	r3, [sp, #0x40]
  386586: 9b10         	ldr	r3, [sp, #0x40]
  386588: 781b         	ldrb	r3, [r3]
  38658a: f88d 3037    	strb.w	r3, [sp, #0x37]
  38658e: 9b10         	ldr	r3, [sp, #0x40]
  386590: 3301         	adds	r3, #0x1
  386592: 9310         	str	r3, [sp, #0x40]
  386594: 9b10         	ldr	r3, [sp, #0x40]
  386596: 781b         	ldrb	r3, [r3]
  386598: f88d 3038    	strb.w	r3, [sp, #0x38]
  38659c: 9b10         	ldr	r3, [sp, #0x40]
  38659e: 3301         	adds	r3, #0x1
  3865a0: 9310         	str	r3, [sp, #0x40]
  3865a2: 9b10         	ldr	r3, [sp, #0x40]
  3865a4: 781b         	ldrb	r3, [r3]
  3865a6: f88d 3039    	strb.w	r3, [sp, #0x39]
  3865aa: 9b10         	ldr	r3, [sp, #0x40]
  3865ac: 3301         	adds	r3, #0x1
  3865ae: 9310         	str	r3, [sp, #0x40]
  3865b0: 980a         	ldr	r0, [sp, #0x28]
  3865b2: f0bd fec9    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbdd92
  3865b6: 4605         	mov	r5, r0
  3865b8: 980a         	ldr	r0, [sp, #0x28]
  3865ba: f0bd febd    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbdd7a
  3865be: 4603         	mov	r3, r0
  3865c0: 461a         	mov	r2, r3
  3865c2: 9b10         	ldr	r3, [sp, #0x40]
  3865c4: 1ad3         	subs	r3, r2, r3
  3865c6: 442b         	add	r3, r5
  3865c8: 9810         	ldr	r0, [sp, #0x40]
  3865ca: 4619         	mov	r1, r3
  3865cc: f213 fa52    	bl	0x599a74 <cocos2d::CCString::createWithData(unsigned char const*, unsigned long)> @ imm = #0x2134a4
  3865d0: 4603         	mov	r3, r0
  3865d2: 9311         	str	r3, [sp, #0x44]
  3865d4: 980a         	ldr	r0, [sp, #0x28]
  3865d6: f0bd feb7    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbdd6e
  3865da: 4605         	mov	r5, r0
  3865dc: 980a         	ldr	r0, [sp, #0x28]
  3865de: f0bd feab    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbdd56
  3865e2: 4603         	mov	r3, r0
  3865e4: 461a         	mov	r2, r3
  3865e6: 9b10         	ldr	r3, [sp, #0x40]
  3865e8: 1ad3         	subs	r3, r2, r3
  3865ea: 442b         	add	r3, r5
  3865ec: 9a10         	ldr	r2, [sp, #0x40]
  3865ee: 4413         	add	r3, r2
  3865f0: 9310         	str	r3, [sp, #0x40]
  3865f2: f89d 3035    	ldrb.w	r3, [sp, #0x35]
  3865f6: ee05 3a90    	vmov	s11, r3
  3865fa: eef8 7a65    	vcvt.f32.u32	s15, s11
  3865fe: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  386602: ed9f 7b9f    	vldr	d7, [pc, #636]          @ 0x386880 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x380>
  386606: ee26 7b07    	vmul.f64	d7, d6, d7
  38660a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38660e: edcd 7a12    	vstr	s15, [sp, #72]
  386612: f89d 3036    	ldrb.w	r3, [sp, #0x36]
  386616: ee07 3a90    	vmov	s15, r3
  38661a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  38661e: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x386894 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x394>
  386620: 58e3         	ldr	r3, [r4, r3]
  386622: edd3 7a00    	vldr	s15, [r3]
  386626: ee67 7a27    	vmul.f32	s15, s14, s15
  38662a: edcd 7a13    	vstr	s15, [sp, #76]
  38662e: ed9d 7a13    	vldr	s14, [sp, #76]
  386632: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x386888 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x388>
  386636: ee67 7a27    	vmul.f32	s15, s14, s15
  38663a: eef1 7a67    	vneg.f32	s15, s15
  38663e: edcd 7a14    	vstr	s15, [sp, #80]
  386642: 9814         	ldr	r0, [sp, #0x50]
  386644: f7a2 ff1a    	bl	0x32947c <std::cos(float)> @ imm = #-0x5d1cc
  386648: ee07 0a90    	vmov	s15, r0
  38664c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  386650: 9814         	ldr	r0, [sp, #0x50]
  386652: f7a2 ff2b    	bl	0x3294ac <std::sin(float)> @ imm = #-0x5d1aa
  386656: ee07 0a90    	vmov	s15, r0
  38665a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38665e: ab28         	add	r3, sp, #0xa0
  386660: 4618         	mov	r0, r3
  386662: eeb0 0b48    	vmov.f64	d0, d8
  386666: eeb0 1b47    	vmov.f64	d1, d7
  38666a: f7fa fbff    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x5802
  38666e: eddd 7a12    	vldr	s15, [sp, #72]
  386672: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  386676: ab1c         	add	r3, sp, #0x70
  386678: ed9d 5b28    	vldr	d5, [sp, #160]
  38667c: ed9d 6b2a    	vldr	d6, [sp, #168]
  386680: 4618         	mov	r0, r3
  386682: eeb0 0b45    	vmov.f64	d0, d5
  386686: eeb0 1b46    	vmov.f64	d1, d6
  38668a: eeb0 2b47    	vmov.f64	d2, d7
  38668e: f7fa fc2d    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x57a6
  386692: f89d 3037    	ldrb.w	r3, [sp, #0x37]
  386696: ee05 3a90    	vmov	s11, r3
  38669a: eeb8 7a65    	vcvt.f32.u32	s14, s11
  38669e: eddf 7a7b    	vldr	s15, [pc, #492]         @ 0x38688c <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x38c>
  3866a2: eec7 7a27    	vdiv.f32	s15, s14, s15
  3866a6: edcd 7a15    	vstr	s15, [sp, #84]
  3866aa: f89d 3038    	ldrb.w	r3, [sp, #0x38]
  3866ae: ee07 3a90    	vmov	s15, r3
  3866b2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3866b6: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x386894 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x394>
  3866b8: 58e3         	ldr	r3, [r4, r3]
  3866ba: edd3 7a00    	vldr	s15, [r3]
  3866be: ee67 7a27    	vmul.f32	s15, s14, s15
  3866c2: edcd 7a16    	vstr	s15, [sp, #88]
  3866c6: ed9d 7a16    	vldr	s14, [sp, #88]
  3866ca: eddf 7a6f    	vldr	s15, [pc, #444]         @ 0x386888 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x388>
  3866ce: ee67 7a27    	vmul.f32	s15, s14, s15
  3866d2: eef1 7a67    	vneg.f32	s15, s15
  3866d6: edcd 7a17    	vstr	s15, [sp, #92]
  3866da: 9817         	ldr	r0, [sp, #0x5c]
  3866dc: f7a2 fece    	bl	0x32947c <std::cos(float)> @ imm = #-0x5d264
  3866e0: ee07 0a90    	vmov	s15, r0
  3866e4: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3866e8: 9817         	ldr	r0, [sp, #0x5c]
  3866ea: f7a2 fedf    	bl	0x3294ac <std::sin(float)> @ imm = #-0x5d242
  3866ee: ee07 0a90    	vmov	s15, r0
  3866f2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3866f6: ab2c         	add	r3, sp, #0xb0
  3866f8: 4618         	mov	r0, r3
  3866fa: eeb0 0b48    	vmov.f64	d0, d8
  3866fe: eeb0 1b47    	vmov.f64	d1, d7
  386702: f7fa fbb3    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x589a
  386706: eddd 7a15    	vldr	s15, [sp, #84]
  38670a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38670e: ab20         	add	r3, sp, #0x80
  386710: ed9d 5b2c    	vldr	d5, [sp, #176]
  386714: ed9d 6b2e    	vldr	d6, [sp, #184]
  386718: 4618         	mov	r0, r3
  38671a: eeb0 0b45    	vmov.f64	d0, d5
  38671e: eeb0 1b46    	vmov.f64	d1, d6
  386722: eeb0 2b47    	vmov.f64	d2, d7
  386726: f7fa fbe1    	bl	0x380eec <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0x140> @ imm = #-0x583e
  38672a: f89d 3039    	ldrb.w	r3, [sp, #0x39]
  38672e: ee05 3a90    	vmov	s11, r3
  386732: eeb8 7a65    	vcvt.f32.u32	s14, s11
  386736: eddf 7a55    	vldr	s15, [pc, #340]         @ 0x38688c <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x38c>
  38673a: eec7 7a27    	vdiv.f32	s15, s14, s15
  38673e: edcd 7a18    	vstr	s15, [sp, #96]
  386742: f9bd 303a    	ldrsh.w	r3, [sp, #0x3a]
  386746: ee07 3a10    	vmov	s14, r3
  38674a: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  38674e: f9bd 303c    	ldrsh.w	r3, [sp, #0x3c]
  386752: ee05 3a90    	vmov	s11, r3
  386756: eeb8 7be5    	vcvt.f64.s32	d7, s11
  38675a: ab24         	add	r3, sp, #0x90
  38675c: 4618         	mov	r0, r3
  38675e: eeb0 0b46    	vmov.f64	d0, d6
  386762: eeb0 1b47    	vmov.f64	d1, d7
  386766: f7fa fb81    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x58fe
  38676a: f8bd 303e    	ldrh.w	r3, [sp, #0x3e]
  38676e: ee07 3a90    	vmov	s15, r3
  386772: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  386776: 4b48         	ldr	r3, [pc, #0x120]        @ 0x386898 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x398>
  386778: 58e3         	ldr	r3, [r4, r3]
  38677a: edd3 7a00    	vldr	s15, [r3]
  38677e: ee67 7a27    	vmul.f32	s15, s14, s15
  386782: edcd 7a19    	vstr	s15, [sp, #100]
  386786: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  38678a: ee05 3a90    	vmov	s11, r3
  38678e: eeb8 7a65    	vcvt.f32.u32	s14, s11
  386792: 4b42         	ldr	r3, [pc, #0x108]        @ 0x38689c <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x39c>
  386794: 58e3         	ldr	r3, [r4, r3]
  386796: edd3 7a00    	vldr	s15, [r3]
  38679a: ee67 7a27    	vmul.f32	s15, s14, s15
  38679e: edcd 7a1a    	vstr	s15, [sp, #104]
  3867a2: ed9d 7b24    	vldr	d7, [sp, #144]
  3867a6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3867aa: ee17 0a90    	vmov	r0, s15
  3867ae: f756 fa69    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b2e
  3867b2: 4606         	mov	r6, r0
  3867b4: ed9d 7b26    	vldr	d7, [sp, #152]
  3867b8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3867bc: ee17 0a90    	vmov	r0, s15
  3867c0: f756 fa60    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b40
  3867c4: 4605         	mov	r5, r0
  3867c6: 981a         	ldr	r0, [sp, #0x68]
  3867c8: f756 fa5c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b48
  3867cc: 4604         	mov	r4, r0
  3867ce: 9819         	ldr	r0, [sp, #0x64]
  3867d0: f756 fa58    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b50
  3867d4: 9008         	str	r0, [sp, #0x20]
  3867d6: f89d 3034    	ldrb.w	r3, [sp, #0x34]
  3867da: 4618         	mov	r0, r3
  3867dc: f75e fa94    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa1ad8
  3867e0: 4683         	mov	r11, r0
  3867e2: ed9d 7b1c    	vldr	d7, [sp, #112]
  3867e6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3867ea: ee17 0a90    	vmov	r0, s15
  3867ee: f756 fa49    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b6e
  3867f2: 4682         	mov	r10, r0
  3867f4: ed9d 7b1e    	vldr	d7, [sp, #120]
  3867f8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3867fc: ee17 0a90    	vmov	r0, s15
  386800: f756 fa40    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b80
  386804: 4681         	mov	r9, r0
  386806: ed9d 7b20    	vldr	d7, [sp, #128]
  38680a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38680e: ee17 0a90    	vmov	r0, s15
  386812: f756 fa37    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9b92
  386816: 4680         	mov	r8, r0
  386818: ed9d 7b22    	vldr	d7, [sp, #136]
  38681c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  386820: ee17 0a90    	vmov	r0, s15
  386824: f756 fa2e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9ba4
  386828: 4607         	mov	r7, r0
  38682a: 9818         	ldr	r0, [sp, #0x60]
  38682c: f756 fa2a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9bac
  386830: 4603         	mov	r3, r0
  386832: 9a08         	ldr	r2, [sp, #0x20]
  386834: 9200         	str	r2, [sp]
  386836: f8cd b004    	str.w	r11, [sp, #0x4]
  38683a: f8cd a008    	str.w	r10, [sp, #0x8]
  38683e: f8cd 900c    	str.w	r9, [sp, #0xc]
  386842: f8cd 8010    	str.w	r8, [sp, #0x10]
  386846: 9705         	str	r7, [sp, #0x14]
  386848: 9306         	str	r3, [sp, #0x18]
  38684a: 2300         	movs	r3, #0x0
  38684c: 9307         	str	r3, [sp, #0x1c]
  38684e: 9811         	ldr	r0, [sp, #0x44]
  386850: 4631         	mov	r1, r6
  386852: 462a         	mov	r2, r5
  386854: 4623         	mov	r3, r4
  386856: f213 fadb    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2135b6
  38685a: 4603         	mov	r3, r0
  38685c: 931b         	str	r3, [sp, #0x6c]
  38685e: f259 ff27    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x259e4e
  386862: 4603         	mov	r3, r0
  386864: 4618         	mov	r0, r3
  386866: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3868a0 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x3a0>
  386868: 447b         	add	r3, pc
  38686a: 4619         	mov	r1, r3
  38686c: 9a1b         	ldr	r2, [sp, #0x6c]
  38686e: f25a f95d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x25a2ba
  386872: b031         	add	sp, #0xc4
  386874: ecbd 8b02    	vpop	{d8}
  386878: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x38687b); words below are literal-pool data ---
  38687c: f3af 8000    	nop.w
  386880: 6a01         	ldr	r1, [r0, #0x20]
  386882: d96a         	bls	0x38695a <NetworkMessageDispatcher::getWeaponChangeData()+0xb2> @ imm = #0xd4
  386884: 5f5a         	ldrsh	r2, [r3, r5]
  386886: 3fff         	subs	r7, #0xff
  386888: fa35 3c8e    	<unknown>
  38688c: 0000         	movs	r0, r0
  38688e: 437f         	muls	r7, r7, r7
  386890: c4f6         	stm	r4!, {r1, r2, r4, r5, r6, r7}
  386892: 005a         	lsls	r2, r3, #0x1
  386894: dce0         	bgt	0x386858 <NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string)+0x358> @ imm = #-0x40
  386896: ffff dce4    	<unknown>
  38689a: ffff dce8    	<unknown>
  38689e: ffff 9f6c    	<unknown>
  3868a2: 0044         	lsls	r4, r0, #0x1

// ==== NetworkMessageDispatcher::getWeaponChangeData
//      file offset 0x3868a8 (= ELF address; Ghidra 0x3968a8), 416 bytes, Thumb-2
  3868a8: b510         	push	{r4, lr}
  3868aa: b08c         	sub	sp, #0x30
  3868ac: 9001         	str	r0, [sp, #0x4]
  3868ae: 4c61         	ldr	r4, [pc, #0x184]        @ 0x386a34 <NetworkMessageDispatcher::getWeaponChangeData()+0x18c>
  3868b0: 447c         	add	r4, pc
  3868b2: 2319         	movs	r3, #0x19
  3868b4: f88d 300f    	strb.w	r3, [sp, #0xf]
  3868b8: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  3868ba: 58e3         	ldr	r3, [r4, r3]
  3868bc: 681b         	ldr	r3, [r3]
  3868be: 681b         	ldr	r3, [r3]
  3868c0: f503 73fa    	add.w	r3, r3, #0x1f4
  3868c4: 681b         	ldr	r3, [r3]
  3868c6: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  3868c8: 58a2         	ldr	r2, [r4, r2]
  3868ca: 6812         	ldr	r2, [r2]
  3868cc: 4610         	mov	r0, r2
  3868ce: 4798         	blx	r3
  3868d0: 4603         	mov	r3, r0
  3868d2: 9306         	str	r3, [sp, #0x18]
  3868d4: 4b58         	ldr	r3, [pc, #0x160]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  3868d6: 58e3         	ldr	r3, [r4, r3]
  3868d8: 681b         	ldr	r3, [r3]
  3868da: 681b         	ldr	r3, [r3]
  3868dc: f503 73fc    	add.w	r3, r3, #0x1f8
  3868e0: 681b         	ldr	r3, [r3]
  3868e2: 4a55         	ldr	r2, [pc, #0x154]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  3868e4: 58a2         	ldr	r2, [r4, r2]
  3868e6: 6812         	ldr	r2, [r2]
  3868e8: 4610         	mov	r0, r2
  3868ea: 4798         	blx	r3
  3868ec: 4603         	mov	r3, r0
  3868ee: 9307         	str	r3, [sp, #0x1c]
  3868f0: 4b51         	ldr	r3, [pc, #0x144]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  3868f2: 58e3         	ldr	r3, [r4, r3]
  3868f4: 681b         	ldr	r3, [r3]
  3868f6: 681b         	ldr	r3, [r3]
  3868f8: f503 7300    	add.w	r3, r3, #0x200
  3868fc: 681b         	ldr	r3, [r3]
  3868fe: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  386900: 58a2         	ldr	r2, [r4, r2]
  386902: 6812         	ldr	r2, [r2]
  386904: 4610         	mov	r0, r2
  386906: 4798         	blx	r3
  386908: 4603         	mov	r3, r0
  38690a: 9308         	str	r3, [sp, #0x20]
  38690c: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  38690e: 58e3         	ldr	r3, [r4, r3]
  386910: 681b         	ldr	r3, [r3]
  386912: 681b         	ldr	r3, [r3]
  386914: f503 73fe    	add.w	r3, r3, #0x1fc
  386918: 681b         	ldr	r3, [r3]
  38691a: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x386a38 <NetworkMessageDispatcher::getWeaponChangeData()+0x190>
  38691c: 58a2         	ldr	r2, [r4, r2]
  38691e: 6812         	ldr	r2, [r2]
  386920: 4610         	mov	r0, r2
  386922: 4798         	blx	r3
  386924: 4603         	mov	r3, r0
  386926: 9309         	str	r3, [sp, #0x24]
  386928: 9b06         	ldr	r3, [sp, #0x18]
  38692a: 2b00         	cmp	r3, #0x0
  38692c: d009         	beq	0x386942 <NetworkMessageDispatcher::getWeaponChangeData()+0x9a> @ imm = #0x12
  38692e: 9b06         	ldr	r3, [sp, #0x18]
  386930: 681b         	ldr	r3, [r3]
  386932: f503 731f    	add.w	r3, r3, #0x27c
  386936: 681b         	ldr	r3, [r3]
  386938: 9806         	ldr	r0, [sp, #0x18]
  38693a: 4798         	blx	r3
  38693c: 4603         	mov	r3, r0
  38693e: b29b         	uxth	r3, r3
  386940: e000         	b	0x386944 <NetworkMessageDispatcher::getWeaponChangeData()+0x9c> @ imm = #0x0
  386942: 2300         	movs	r3, #0x0
  386944: f8ad 3010    	strh.w	r3, [sp, #0x10]
  386948: 9b07         	ldr	r3, [sp, #0x1c]
  38694a: 2b00         	cmp	r3, #0x0
  38694c: d009         	beq	0x386962 <NetworkMessageDispatcher::getWeaponChangeData()+0xba> @ imm = #0x12
  38694e: 9b07         	ldr	r3, [sp, #0x1c]
  386950: 681b         	ldr	r3, [r3]
  386952: f503 731f    	add.w	r3, r3, #0x27c
  386956: 681b         	ldr	r3, [r3]
  386958: 9807         	ldr	r0, [sp, #0x1c]
  38695a: 4798         	blx	r3
  38695c: 4603         	mov	r3, r0
  38695e: b29b         	uxth	r3, r3
  386960: e000         	b	0x386964 <NetworkMessageDispatcher::getWeaponChangeData()+0xbc> @ imm = #0x0
  386962: 2300         	movs	r3, #0x0
  386964: f8ad 3012    	strh.w	r3, [sp, #0x12]
  386968: 9b08         	ldr	r3, [sp, #0x20]
  38696a: 2b00         	cmp	r3, #0x0
  38696c: d009         	beq	0x386982 <NetworkMessageDispatcher::getWeaponChangeData()+0xda> @ imm = #0x12
  38696e: 9b08         	ldr	r3, [sp, #0x20]
  386970: 681b         	ldr	r3, [r3]
  386972: f503 731f    	add.w	r3, r3, #0x27c
  386976: 681b         	ldr	r3, [r3]
  386978: 9808         	ldr	r0, [sp, #0x20]
  38697a: 4798         	blx	r3
  38697c: 4603         	mov	r3, r0
  38697e: b29b         	uxth	r3, r3
  386980: e000         	b	0x386984 <NetworkMessageDispatcher::getWeaponChangeData()+0xdc> @ imm = #0x0
  386982: 2300         	movs	r3, #0x0
  386984: f8ad 3014    	strh.w	r3, [sp, #0x14]
  386988: 9b09         	ldr	r3, [sp, #0x24]
  38698a: 2b00         	cmp	r3, #0x0
  38698c: d009         	beq	0x3869a2 <NetworkMessageDispatcher::getWeaponChangeData()+0xfa> @ imm = #0x12
  38698e: 9b09         	ldr	r3, [sp, #0x24]
  386990: 681b         	ldr	r3, [r3]
  386992: f503 731f    	add.w	r3, r3, #0x27c
  386996: 681b         	ldr	r3, [r3]
  386998: 9809         	ldr	r0, [sp, #0x24]
  38699a: 4798         	blx	r3
  38699c: 4603         	mov	r3, r0
  38699e: b29b         	uxth	r3, r3
  3869a0: e000         	b	0x3869a4 <NetworkMessageDispatcher::getWeaponChangeData()+0xfc> @ imm = #0x0
  3869a2: 2300         	movs	r3, #0x0
  3869a4: f8ad 3016    	strh.w	r3, [sp, #0x16]
  3869a8: 4b24         	ldr	r3, [pc, #0x90]         @ 0x386a3c <NetworkMessageDispatcher::getWeaponChangeData()+0x194>
  3869aa: 447b         	add	r3, pc
  3869ac: 930a         	str	r3, [sp, #0x28]
  3869ae: 9b0a         	ldr	r3, [sp, #0x28]
  3869b0: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  3869b4: 701a         	strb	r2, [r3]
  3869b6: 9b0a         	ldr	r3, [sp, #0x28]
  3869b8: 3301         	adds	r3, #0x1
  3869ba: 930a         	str	r3, [sp, #0x28]
  3869bc: 9b0a         	ldr	r3, [sp, #0x28]
  3869be: f8bd 2010    	ldrh.w	r2, [sp, #0x10]
  3869c2: 801a         	strh	r2, [r3]
  3869c4: 9b0a         	ldr	r3, [sp, #0x28]
  3869c6: 3302         	adds	r3, #0x2
  3869c8: 930a         	str	r3, [sp, #0x28]
  3869ca: 9b0a         	ldr	r3, [sp, #0x28]
  3869cc: f8bd 2012    	ldrh.w	r2, [sp, #0x12]
  3869d0: 801a         	strh	r2, [r3]
  3869d2: 9b0a         	ldr	r3, [sp, #0x28]
  3869d4: 3302         	adds	r3, #0x2
  3869d6: 930a         	str	r3, [sp, #0x28]
  3869d8: 9b0a         	ldr	r3, [sp, #0x28]
  3869da: f8bd 2014    	ldrh.w	r2, [sp, #0x14]
  3869de: 801a         	strh	r2, [r3]
  3869e0: 9b0a         	ldr	r3, [sp, #0x28]
  3869e2: 3302         	adds	r3, #0x2
  3869e4: 930a         	str	r3, [sp, #0x28]
  3869e6: 9b0a         	ldr	r3, [sp, #0x28]
  3869e8: f8bd 2016    	ldrh.w	r2, [sp, #0x16]
  3869ec: 801a         	strh	r2, [r3]
  3869ee: 9b0a         	ldr	r3, [sp, #0x28]
  3869f0: 3302         	adds	r3, #0x2
  3869f2: 930a         	str	r3, [sp, #0x28]
  3869f4: 201c         	movs	r0, #0x1c
  3869f6: f000 f7b5    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400f6a
  3869fa: 4603         	mov	r3, r0
  3869fc: 461c         	mov	r4, r3
  3869fe: 9a0a         	ldr	r2, [sp, #0x28]
  386a00: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x386a40 <NetworkMessageDispatcher::getWeaponChangeData()+0x198>
  386a02: 447b         	add	r3, pc
  386a04: 1ad3         	subs	r3, r2, r3
  386a06: 4620         	mov	r0, r4
  386a08: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x386a44 <NetworkMessageDispatcher::getWeaponChangeData()+0x19c>
  386a0a: 447a         	add	r2, pc
  386a0c: 4611         	mov	r1, r2
  386a0e: 461a         	mov	r2, r3
  386a10: f0bd fbec    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd7d8
  386a14: 940b         	str	r4, [sp, #0x2c]
  386a16: 9b0b         	ldr	r3, [sp, #0x2c]
  386a18: 4618         	mov	r0, r3
  386a1a: f211 fa6f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2114de
  386a1e: 9b0b         	ldr	r3, [sp, #0x2c]
  386a20: e004         	b	0x386a2c <NetworkMessageDispatcher::getWeaponChangeData()+0x184> @ imm = #0x8
  386a22: 4620         	mov	r0, r4
  386a24: f001 f33e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40167c
  386a28: f001 f340    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401680
  386a2c: 4618         	mov	r0, r3
  386a2e: b00c         	add	sp, #0x30
  386a30: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x386a31); words below are literal-pool data ---
  386a32: bf00         	nop
  386a34: c158         	stm	r1!, {r3, r4, r6}
  386a36: 005a         	lsls	r2, r3, #0x1
  386a38: d784         	bvc	0x386944 <NetworkMessageDispatcher::getWeaponChangeData()+0x9c> @ imm = #-0xf8
  386a3a: ffff a13a    	vsra.u32	d26, d26, #0x1
  386a3e: 005b         	lsls	r3, r3, #0x1
  386a40: a0e2         	adr	r0, #904 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0xde>
  386a42: 005b         	lsls	r3, r3, #0x1
  386a44: a0da         	adr	r0, #872 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0xda>
  386a46: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getWeaponCreateData
//      file offset 0x386a48 (= ELF address; Ghidra 0x396a48), 540 bytes, Thumb-2
  386a48: b570         	push	{r4, r5, r6, lr}
  386a4a: ed2d 8b02    	vpush	{d8}
  386a4e: b08e         	sub	sp, #0x38
  386a50: 9001         	str	r0, [sp, #0x4]
  386a52: 9100         	str	r1, [sp]
  386a54: 231a         	movs	r3, #0x1a
  386a56: f88d 300f    	strb.w	r3, [sp, #0xf]
  386a5a: 9b00         	ldr	r3, [sp]
  386a5c: 681b         	ldr	r3, [r3]
  386a5e: f503 73fe    	add.w	r3, r3, #0x1fc
  386a62: 681b         	ldr	r3, [r3]
  386a64: 9a00         	ldr	r2, [sp]
  386a66: a906         	add	r1, sp, #0x18
  386a68: 4608         	mov	r0, r1
  386a6a: 4611         	mov	r1, r2
  386a6c: 4798         	blx	r3
  386a6e: ab06         	add	r3, sp, #0x18
  386a70: 4618         	mov	r0, r3
  386a72: f02e f445    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e88a
  386a76: 4606         	mov	r6, r0
  386a78: ab06         	add	r3, sp, #0x18
  386a7a: 4618         	mov	r0, r3
  386a7c: f02e f2ee    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e5dc
  386a80: 4605         	mov	r5, r0
  386a82: 201c         	movs	r0, #0x1c
  386a84: f000 f76e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400edc
  386a88: 4603         	mov	r3, r0
  386a8a: 461c         	mov	r4, r3
  386a8c: 4620         	mov	r0, r4
  386a8e: 4631         	mov	r1, r6
  386a90: 462a         	mov	r2, r5
  386a92: f0bd fbab    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd756
  386a96: 9407         	str	r4, [sp, #0x1c]
  386a98: 9b07         	ldr	r3, [sp, #0x1c]
  386a9a: 4618         	mov	r0, r3
  386a9c: f211 fa2e    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21145c
  386aa0: 9b00         	ldr	r3, [sp]
  386aa2: 681b         	ldr	r3, [r3]
  386aa4: f503 731f    	add.w	r3, r3, #0x27c
  386aa8: 681b         	ldr	r3, [r3]
  386aaa: 9800         	ldr	r0, [sp]
  386aac: 4798         	blx	r3
  386aae: 4603         	mov	r3, r0
  386ab0: f8ad 3012    	strh.w	r3, [sp, #0x12]
  386ab4: 9b00         	ldr	r3, [sp]
  386ab6: 681b         	ldr	r3, [r3]
  386ab8: f503 731d    	add.w	r3, r3, #0x274
  386abc: 681b         	ldr	r3, [r3]
  386abe: 9800         	ldr	r0, [sp]
  386ac0: 4798         	blx	r3
  386ac2: 4603         	mov	r3, r0
  386ac4: f8ad 3014    	strh.w	r3, [sp, #0x14]
  386ac8: 9b00         	ldr	r3, [sp]
  386aca: 681b         	ldr	r3, [r3]
  386acc: f503 7321    	add.w	r3, r3, #0x284
  386ad0: 681b         	ldr	r3, [r3]
  386ad2: 9800         	ldr	r0, [sp]
  386ad4: 4798         	blx	r3
  386ad6: 4603         	mov	r3, r0
  386ad8: f8ad 3016    	strh.w	r3, [sp, #0x16]
  386adc: 9b00         	ldr	r3, [sp]
  386ade: 681b         	ldr	r3, [r3]
  386ae0: 3350         	adds	r3, #0x50
  386ae2: 681b         	ldr	r3, [r3]
  386ae4: 9a00         	ldr	r2, [sp]
  386ae6: 4610         	mov	r0, r2
  386ae8: 4798         	blx	r3
  386aea: 4603         	mov	r3, r0
  386aec: edd3 7a00    	vldr	s15, [r3]
  386af0: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  386af4: 9b00         	ldr	r3, [sp]
  386af6: 681b         	ldr	r3, [r3]
  386af8: 3350         	adds	r3, #0x50
  386afa: 681b         	ldr	r3, [r3]
  386afc: 9a00         	ldr	r2, [sp]
  386afe: 4610         	mov	r0, r2
  386b00: 4798         	blx	r3
  386b02: 4603         	mov	r3, r0
  386b04: edd3 7a01    	vldr	s15, [r3, #4]
  386b08: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  386b0c: ab0a         	add	r3, sp, #0x28
  386b0e: 4618         	mov	r0, r3
  386b10: eeb0 0b48    	vmov.f64	d0, d8
  386b14: eeb0 1b47    	vmov.f64	d1, d7
  386b18: f7fa f9a8    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x5cb0
  386b1c: 9b00         	ldr	r3, [sp]
  386b1e: 681b         	ldr	r3, [r3]
  386b20: f503 7302    	add.w	r3, r3, #0x208
  386b24: 681b         	ldr	r3, [r3]
  386b26: 9a00         	ldr	r2, [sp]
  386b28: 4610         	mov	r0, r2
  386b2a: 4798         	blx	r3
  386b2c: 4603         	mov	r3, r0
  386b2e: f88d 3010    	strb.w	r3, [sp, #0x10]
  386b32: 9b00         	ldr	r3, [sp]
  386b34: 681b         	ldr	r3, [r3]
  386b36: f503 73ce    	add.w	r3, r3, #0x19c
  386b3a: 681b         	ldr	r3, [r3]
  386b3c: 9a00         	ldr	r2, [sp]
  386b3e: 4610         	mov	r0, r2
  386b40: 4798         	blx	r3
  386b42: 4603         	mov	r3, r0
  386b44: f88d 3011    	strb.w	r3, [sp, #0x11]
  386b48: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x386c58 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0x210>
  386b4a: 447b         	add	r3, pc
  386b4c: 9308         	str	r3, [sp, #0x20]
  386b4e: 9b08         	ldr	r3, [sp, #0x20]
  386b50: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  386b54: 701a         	strb	r2, [r3]
  386b56: 9b08         	ldr	r3, [sp, #0x20]
  386b58: 3301         	adds	r3, #0x1
  386b5a: 9308         	str	r3, [sp, #0x20]
  386b5c: 9b08         	ldr	r3, [sp, #0x20]
  386b5e: f8bd 2012    	ldrh.w	r2, [sp, #0x12]
  386b62: 801a         	strh	r2, [r3]
  386b64: 9b08         	ldr	r3, [sp, #0x20]
  386b66: 3302         	adds	r3, #0x2
  386b68: 9308         	str	r3, [sp, #0x20]
  386b6a: 9b08         	ldr	r3, [sp, #0x20]
  386b6c: f8bd 2014    	ldrh.w	r2, [sp, #0x14]
  386b70: 801a         	strh	r2, [r3]
  386b72: 9b08         	ldr	r3, [sp, #0x20]
  386b74: 3302         	adds	r3, #0x2
  386b76: 9308         	str	r3, [sp, #0x20]
  386b78: 9b08         	ldr	r3, [sp, #0x20]
  386b7a: f8bd 2016    	ldrh.w	r2, [sp, #0x16]
  386b7e: 801a         	strh	r2, [r3]
  386b80: 9b08         	ldr	r3, [sp, #0x20]
  386b82: 3302         	adds	r3, #0x2
  386b84: 9308         	str	r3, [sp, #0x20]
  386b86: 9b08         	ldr	r3, [sp, #0x20]
  386b88: f89d 2010    	ldrb.w	r2, [sp, #0x10]
  386b8c: 701a         	strb	r2, [r3]
  386b8e: 9b08         	ldr	r3, [sp, #0x20]
  386b90: 3301         	adds	r3, #0x1
  386b92: 9308         	str	r3, [sp, #0x20]
  386b94: 9b08         	ldr	r3, [sp, #0x20]
  386b96: f89d 2011    	ldrb.w	r2, [sp, #0x11]
  386b9a: 701a         	strb	r2, [r3]
  386b9c: 9b08         	ldr	r3, [sp, #0x20]
  386b9e: 3301         	adds	r3, #0x1
  386ba0: 9308         	str	r3, [sp, #0x20]
  386ba2: ed9d 7b0a    	vldr	d7, [sp, #40]
  386ba6: eefd 6bc7    	vcvt.s32.f64	s13, d7
  386baa: ee16 3a90    	vmov	r3, s13
  386bae: b29a         	uxth	r2, r3
  386bb0: 9b08         	ldr	r3, [sp, #0x20]
  386bb2: 801a         	strh	r2, [r3]
  386bb4: 9b08         	ldr	r3, [sp, #0x20]
  386bb6: 3302         	adds	r3, #0x2
  386bb8: 9308         	str	r3, [sp, #0x20]
  386bba: ed9d 7b0c    	vldr	d7, [sp, #48]
  386bbe: eefd 6bc7    	vcvt.s32.f64	s13, d7
  386bc2: ee16 3a90    	vmov	r3, s13
  386bc6: b29a         	uxth	r2, r3
  386bc8: 9b08         	ldr	r3, [sp, #0x20]
  386bca: 801a         	strh	r2, [r3]
  386bcc: 9b08         	ldr	r3, [sp, #0x20]
  386bce: 3302         	adds	r3, #0x2
  386bd0: 9308         	str	r3, [sp, #0x20]
  386bd2: 9807         	ldr	r0, [sp, #0x1c]
  386bd4: f0bd fbb0    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd760
  386bd8: 4604         	mov	r4, r0
  386bda: 9807         	ldr	r0, [sp, #0x1c]
  386bdc: f0bd fbb4    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd768
  386be0: 4603         	mov	r3, r0
  386be2: 9808         	ldr	r0, [sp, #0x20]
  386be4: 4621         	mov	r1, r4
  386be6: 461a         	mov	r2, r3
  386be8: f74f e9ac    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb0ca8
  386bec: 9807         	ldr	r0, [sp, #0x1c]
  386bee: f0bd fbab    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd756
  386bf2: 4603         	mov	r3, r0
  386bf4: 9a08         	ldr	r2, [sp, #0x20]
  386bf6: 4413         	add	r3, r2
  386bf8: 9308         	str	r3, [sp, #0x20]
  386bfa: 201c         	movs	r0, #0x1c
  386bfc: f000 f6b2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400d64
  386c00: 4603         	mov	r3, r0
  386c02: 461c         	mov	r4, r3
  386c04: 9a08         	ldr	r2, [sp, #0x20]
  386c06: 4b15         	ldr	r3, [pc, #0x54]         @ 0x386c5c <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0x214>
  386c08: 447b         	add	r3, pc
  386c0a: 1ad3         	subs	r3, r2, r3
  386c0c: 4620         	mov	r0, r4
  386c0e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x386c60 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0x218>
  386c10: 447a         	add	r2, pc
  386c12: 4611         	mov	r1, r2
  386c14: 461a         	mov	r2, r3
  386c16: f0bd fae9    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd5d2
  386c1a: 9409         	str	r4, [sp, #0x24]
  386c1c: 9b09         	ldr	r3, [sp, #0x24]
  386c1e: 4618         	mov	r0, r3
  386c20: f211 f96c    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2112d8
  386c24: 9c09         	ldr	r4, [sp, #0x24]
  386c26: ab06         	add	r3, sp, #0x18
  386c28: 4618         	mov	r0, r3
  386c2a: f02e f673    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42ece6
  386c2e: 4623         	mov	r3, r4
  386c30: e00d         	b	0x386c4e <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0x206> @ imm = #0x1a
  386c32: 4620         	mov	r0, r4
  386c34: f001 f236    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40146c
  386c38: e003         	b	0x386c42 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0x1fa> @ imm = #0x6
  386c3a: 4620         	mov	r0, r4
  386c3c: f001 f232    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x401464
  386c40: e7ff         	b	0x386c42 <NetworkMessageDispatcher::getWeaponCreateData(Weapon*)+0x1fa> @ imm = #-0x2
  386c42: ab06         	add	r3, sp, #0x18
  386c44: 4618         	mov	r0, r3
  386c46: f02e f665    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42ecca
  386c4a: f001 f22f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40145e
  386c4e: 4618         	mov	r0, r3
  386c50: b00e         	add	sp, #0x38
  386c52: ecbd 8b02    	vpop	{d8}
  386c56: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x386c57); words below are literal-pool data ---
  386c58: 9f9a         	ldr	r7, [sp, #0x268]
  386c5a: 005b         	lsls	r3, r3, #0x1
  386c5c: 9edc         	ldr	r6, [sp, #0x370]
  386c5e: 005b         	lsls	r3, r3, #0x1
  386c60: 9ed4         	ldr	r6, [sp, #0x350]
  386c62: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getWeaponRemoveData
//      file offset 0x386c64 (= ELF address; Ghidra 0x396c64), 204 bytes, Thumb-2
  386c64: b570         	push	{r4, r5, r6, lr}
  386c66: b086         	sub	sp, #0x18
  386c68: 9001         	str	r0, [sp, #0x4]
  386c6a: 9100         	str	r1, [sp]
  386c6c: 231b         	movs	r3, #0x1b
  386c6e: f88d 300b    	strb.w	r3, [sp, #0xb]
  386c72: 9800         	ldr	r0, [sp]
  386c74: f02e f344    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e688
  386c78: 4606         	mov	r6, r0
  386c7a: 9800         	ldr	r0, [sp]
  386c7c: f02e f1ee    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e3dc
  386c80: 4605         	mov	r5, r0
  386c82: 201c         	movs	r0, #0x1c
  386c84: f000 f66e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400cdc
  386c88: 4603         	mov	r3, r0
  386c8a: 461c         	mov	r4, r3
  386c8c: 4620         	mov	r0, r4
  386c8e: 4631         	mov	r1, r6
  386c90: 462a         	mov	r2, r5
  386c92: f0bd faab    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd556
  386c96: 9403         	str	r4, [sp, #0xc]
  386c98: 9b03         	ldr	r3, [sp, #0xc]
  386c9a: 4618         	mov	r0, r3
  386c9c: f211 f92e    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21125c
  386ca0: 4b20         	ldr	r3, [pc, #0x80]         @ 0x386d24 <NetworkMessageDispatcher::getWeaponRemoveData(std::string)+0xc0>
  386ca2: 447b         	add	r3, pc
  386ca4: 9304         	str	r3, [sp, #0x10]
  386ca6: 9b04         	ldr	r3, [sp, #0x10]
  386ca8: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  386cac: 701a         	strb	r2, [r3]
  386cae: 9b04         	ldr	r3, [sp, #0x10]
  386cb0: 3301         	adds	r3, #0x1
  386cb2: 9304         	str	r3, [sp, #0x10]
  386cb4: 9803         	ldr	r0, [sp, #0xc]
  386cb6: f0bd fb3f    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd67e
  386cba: 4604         	mov	r4, r0
  386cbc: 9803         	ldr	r0, [sp, #0xc]
  386cbe: f0bd fb43    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd686
  386cc2: 4603         	mov	r3, r0
  386cc4: 9804         	ldr	r0, [sp, #0x10]
  386cc6: 4621         	mov	r1, r4
  386cc8: 461a         	mov	r2, r3
  386cca: f74f e93c    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb0d88
  386cce: 9803         	ldr	r0, [sp, #0xc]
  386cd0: f0bd fb3a    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd674
  386cd4: 4603         	mov	r3, r0
  386cd6: 9a04         	ldr	r2, [sp, #0x10]
  386cd8: 4413         	add	r3, r2
  386cda: 9304         	str	r3, [sp, #0x10]
  386cdc: 201c         	movs	r0, #0x1c
  386cde: f000 f641    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400c82
  386ce2: 4603         	mov	r3, r0
  386ce4: 461c         	mov	r4, r3
  386ce6: 9a04         	ldr	r2, [sp, #0x10]
  386ce8: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x386d28 <NetworkMessageDispatcher::getWeaponRemoveData(std::string)+0xc4>
  386cea: 447b         	add	r3, pc
  386cec: 1ad3         	subs	r3, r2, r3
  386cee: 4620         	mov	r0, r4
  386cf0: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x386d2c <NetworkMessageDispatcher::getWeaponRemoveData(std::string)+0xc8>
  386cf2: 447a         	add	r2, pc
  386cf4: 4611         	mov	r1, r2
  386cf6: 461a         	mov	r2, r3
  386cf8: f0bd fa78    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd4f0
  386cfc: 9405         	str	r4, [sp, #0x14]
  386cfe: 9b05         	ldr	r3, [sp, #0x14]
  386d00: 4618         	mov	r0, r3
  386d02: f211 f8fb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2111f6
  386d06: 9b05         	ldr	r3, [sp, #0x14]
  386d08: e009         	b	0x386d1e <NetworkMessageDispatcher::getWeaponRemoveData(std::string)+0xba> @ imm = #0x12
  386d0a: 4620         	mov	r0, r4
  386d0c: f001 f1ca    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x401394
  386d10: f001 f1cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401398
  386d14: 4620         	mov	r0, r4
  386d16: f001 f1c5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40138a
  386d1a: f001 f1c7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40138e
  386d1e: 4618         	mov	r0, r3
  386d20: b006         	add	sp, #0x18
  386d22: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x386d23); words below are literal-pool data ---
  386d24: 9e42         	ldr	r6, [sp, #0x108]
  386d26: 005b         	lsls	r3, r3, #0x1
  386d28: 9dfa         	ldr	r5, [sp, #0x3e8]
  386d2a: 005b         	lsls	r3, r3, #0x1
  386d2c: 9df2         	ldr	r5, [sp, #0x3c8]
  386d2e: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getWeaponLockQueryData
//      file offset 0x386d30 (= ELF address; Ghidra 0x396d30), 284 bytes, Thumb-2
  386d30: b570         	push	{r4, r5, r6, lr}
  386d32: b088         	sub	sp, #0x20
  386d34: 9001         	str	r0, [sp, #0x4]
  386d36: 9100         	str	r1, [sp]
  386d38: 231c         	movs	r3, #0x1c
  386d3a: f88d 300b    	strb.w	r3, [sp, #0xb]
  386d3e: 9b00         	ldr	r3, [sp]
  386d40: 681b         	ldr	r3, [r3]
  386d42: f503 73fe    	add.w	r3, r3, #0x1fc
  386d46: 681b         	ldr	r3, [r3]
  386d48: 9a00         	ldr	r2, [sp]
  386d4a: a903         	add	r1, sp, #0xc
  386d4c: 4608         	mov	r0, r1
  386d4e: 4611         	mov	r1, r2
  386d50: 4798         	blx	r3
  386d52: ab03         	add	r3, sp, #0xc
  386d54: 4618         	mov	r0, r3
  386d56: f02e f2d3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e5a6
  386d5a: 4606         	mov	r6, r0
  386d5c: 9b00         	ldr	r3, [sp]
  386d5e: 681b         	ldr	r3, [r3]
  386d60: f503 73fe    	add.w	r3, r3, #0x1fc
  386d64: 681b         	ldr	r3, [r3]
  386d66: 9a00         	ldr	r2, [sp]
  386d68: a904         	add	r1, sp, #0x10
  386d6a: 4608         	mov	r0, r1
  386d6c: 4611         	mov	r1, r2
  386d6e: 4798         	blx	r3
  386d70: ab04         	add	r3, sp, #0x10
  386d72: 4618         	mov	r0, r3
  386d74: f02e f172    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e2e4
  386d78: 4605         	mov	r5, r0
  386d7a: 201c         	movs	r0, #0x1c
  386d7c: f000 f5f2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400be4
  386d80: 4603         	mov	r3, r0
  386d82: 461c         	mov	r4, r3
  386d84: 4620         	mov	r0, r4
  386d86: 4631         	mov	r1, r6
  386d88: 462a         	mov	r2, r5
  386d8a: f0bd fa2f    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd45e
  386d8e: 9405         	str	r4, [sp, #0x14]
  386d90: ab04         	add	r3, sp, #0x10
  386d92: 4618         	mov	r0, r3
  386d94: f02e f5be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42eb7c
  386d98: ab03         	add	r3, sp, #0xc
  386d9a: 4618         	mov	r0, r3
  386d9c: f02e f5ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42eb74
  386da0: 9b05         	ldr	r3, [sp, #0x14]
  386da2: 4618         	mov	r0, r3
  386da4: f211 f8aa    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x211154
  386da8: 4b25         	ldr	r3, [pc, #0x94]         @ 0x386e40 <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)+0x110>
  386daa: 447b         	add	r3, pc
  386dac: 9306         	str	r3, [sp, #0x18]
  386dae: 9b06         	ldr	r3, [sp, #0x18]
  386db0: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  386db4: 701a         	strb	r2, [r3]
  386db6: 9b06         	ldr	r3, [sp, #0x18]
  386db8: 3301         	adds	r3, #0x1
  386dba: 9306         	str	r3, [sp, #0x18]
  386dbc: 9805         	ldr	r0, [sp, #0x14]
  386dbe: f0bd fabb    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd576
  386dc2: 4604         	mov	r4, r0
  386dc4: 9805         	ldr	r0, [sp, #0x14]
  386dc6: f0bd fabf    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd57e
  386dca: 4603         	mov	r3, r0
  386dcc: 9806         	ldr	r0, [sp, #0x18]
  386dce: 4621         	mov	r1, r4
  386dd0: 461a         	mov	r2, r3
  386dd2: f74f e8b8    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb0e90
  386dd6: 9805         	ldr	r0, [sp, #0x14]
  386dd8: f0bd fab6    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd56c
  386ddc: 4603         	mov	r3, r0
  386dde: 9a06         	ldr	r2, [sp, #0x18]
  386de0: 4413         	add	r3, r2
  386de2: 9306         	str	r3, [sp, #0x18]
  386de4: 201c         	movs	r0, #0x1c
  386de6: f000 f5bd    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400b7a
  386dea: 4603         	mov	r3, r0
  386dec: 461c         	mov	r4, r3
  386dee: 9a06         	ldr	r2, [sp, #0x18]
  386df0: 4b14         	ldr	r3, [pc, #0x50]         @ 0x386e44 <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)+0x114>
  386df2: 447b         	add	r3, pc
  386df4: 1ad3         	subs	r3, r2, r3
  386df6: 4620         	mov	r0, r4
  386df8: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x386e48 <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)+0x118>
  386dfa: 447a         	add	r2, pc
  386dfc: 4611         	mov	r1, r2
  386dfe: 461a         	mov	r2, r3
  386e00: f0bd f9f4    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd3e8
  386e04: 9407         	str	r4, [sp, #0x1c]
  386e06: 9b07         	ldr	r3, [sp, #0x1c]
  386e08: 4618         	mov	r0, r3
  386e0a: f211 f877    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2110ee
  386e0e: 9b07         	ldr	r3, [sp, #0x1c]
  386e10: e013         	b	0x386e3a <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)+0x10a> @ imm = #0x26
  386e12: 4620         	mov	r0, r4
  386e14: f001 f146    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40128c
  386e18: e7ff         	b	0x386e1a <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)+0xea> @ imm = #-0x2
  386e1a: ab04         	add	r3, sp, #0x10
  386e1c: 4618         	mov	r0, r3
  386e1e: f02e f579    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42eaf2
  386e22: e7ff         	b	0x386e24 <NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*)+0xf4> @ imm = #-0x2
  386e24: ab03         	add	r3, sp, #0xc
  386e26: 4618         	mov	r0, r3
  386e28: f02e f574    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42eae8
  386e2c: f001 f13e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40127c
  386e30: 4620         	mov	r0, r4
  386e32: f001 f137    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40126e
  386e36: f001 f139    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401272
  386e3a: 4618         	mov	r0, r3
  386e3c: b008         	add	sp, #0x20
  386e3e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x386e3f); words below are literal-pool data ---
  386e40: 9d3a         	ldr	r5, [sp, #0xe8]
  386e42: 005b         	lsls	r3, r3, #0x1
  386e44: 9cf2         	ldr	r4, [sp, #0x3c8]
  386e46: 005b         	lsls	r3, r3, #0x1
  386e48: 9cea         	ldr	r4, [sp, #0x3a8]
  386e4a: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getWeaponLockReplyData
//      file offset 0x386e4c (= ELF address; Ghidra 0x396e4c), 348 bytes, Thumb-2
  386e4c: b570         	push	{r4, r5, r6, lr}
  386e4e: b08a         	sub	sp, #0x28
  386e50: 9003         	str	r0, [sp, #0xc]
  386e52: 9201         	str	r2, [sp, #0x4]
  386e54: 9300         	str	r3, [sp]
  386e56: 460b         	mov	r3, r1
  386e58: f88d 300b    	strb.w	r3, [sp, #0xb]
  386e5c: 231d         	movs	r3, #0x1d
  386e5e: f88d 3015    	strb.w	r3, [sp, #0x15]
  386e62: 9801         	ldr	r0, [sp, #0x4]
  386e64: f02e f24c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e498
  386e68: 4606         	mov	r6, r0
  386e6a: 9801         	ldr	r0, [sp, #0x4]
  386e6c: f02e f0f6    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e1ec
  386e70: 4605         	mov	r5, r0
  386e72: 201c         	movs	r0, #0x1c
  386e74: f000 f576    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400aec
  386e78: 4603         	mov	r3, r0
  386e7a: 461c         	mov	r4, r3
  386e7c: 4620         	mov	r0, r4
  386e7e: 4631         	mov	r1, r6
  386e80: 462a         	mov	r2, r5
  386e82: f0bd f9b3    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd366
  386e86: 9406         	str	r4, [sp, #0x18]
  386e88: 9b06         	ldr	r3, [sp, #0x18]
  386e8a: 4618         	mov	r0, r3
  386e8c: f211 f836    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21106c
  386e90: 9801         	ldr	r0, [sp, #0x4]
  386e92: f02e f0e3    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e1c6
  386e96: 4603         	mov	r3, r0
  386e98: f8ad 3016    	strh.w	r3, [sp, #0x16]
  386e9c: 9800         	ldr	r0, [sp]
  386e9e: f02e f22f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e45e
  386ea2: 4606         	mov	r6, r0
  386ea4: 9800         	ldr	r0, [sp]
  386ea6: f02e f0d9    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e1b2
  386eaa: 4605         	mov	r5, r0
  386eac: 201c         	movs	r0, #0x1c
  386eae: f000 f559    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400ab2
  386eb2: 4603         	mov	r3, r0
  386eb4: 461c         	mov	r4, r3
  386eb6: 4620         	mov	r0, r4
  386eb8: 4631         	mov	r1, r6
  386eba: 462a         	mov	r2, r5
  386ebc: f0bd f996    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd32c
  386ec0: 9407         	str	r4, [sp, #0x1c]
  386ec2: 9b07         	ldr	r3, [sp, #0x1c]
  386ec4: 4618         	mov	r0, r3
  386ec6: f211 f819    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x211032
  386eca: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x386f9c <NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string)+0x150>
  386ecc: 447b         	add	r3, pc
  386ece: 9308         	str	r3, [sp, #0x20]
  386ed0: 9b08         	ldr	r3, [sp, #0x20]
  386ed2: f89d 2015    	ldrb.w	r2, [sp, #0x15]
  386ed6: 701a         	strb	r2, [r3]
  386ed8: 9b08         	ldr	r3, [sp, #0x20]
  386eda: 3301         	adds	r3, #0x1
  386edc: 9308         	str	r3, [sp, #0x20]
  386ede: 9b08         	ldr	r3, [sp, #0x20]
  386ee0: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  386ee4: 701a         	strb	r2, [r3]
  386ee6: 9b08         	ldr	r3, [sp, #0x20]
  386ee8: 3301         	adds	r3, #0x1
  386eea: 9308         	str	r3, [sp, #0x20]
  386eec: 9b08         	ldr	r3, [sp, #0x20]
  386eee: f8bd 2016    	ldrh.w	r2, [sp, #0x16]
  386ef2: 801a         	strh	r2, [r3]
  386ef4: 9b08         	ldr	r3, [sp, #0x20]
  386ef6: 3302         	adds	r3, #0x2
  386ef8: 9308         	str	r3, [sp, #0x20]
  386efa: 9806         	ldr	r0, [sp, #0x18]
  386efc: f0bd fa1c    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd438
  386f00: 4604         	mov	r4, r0
  386f02: 9806         	ldr	r0, [sp, #0x18]
  386f04: f0bd fa20    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd440
  386f08: 4603         	mov	r3, r0
  386f0a: 9808         	ldr	r0, [sp, #0x20]
  386f0c: 4621         	mov	r1, r4
  386f0e: 461a         	mov	r2, r3
  386f10: f74f e818    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb0fd0
  386f14: 9806         	ldr	r0, [sp, #0x18]
  386f16: f0bd fa17    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd42e
  386f1a: 4603         	mov	r3, r0
  386f1c: 9a08         	ldr	r2, [sp, #0x20]
  386f1e: 4413         	add	r3, r2
  386f20: 9308         	str	r3, [sp, #0x20]
  386f22: 9807         	ldr	r0, [sp, #0x1c]
  386f24: f0bd fa08    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd410
  386f28: 4604         	mov	r4, r0
  386f2a: 9807         	ldr	r0, [sp, #0x1c]
  386f2c: f0bd fa0c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd418
  386f30: 4603         	mov	r3, r0
  386f32: 9808         	ldr	r0, [sp, #0x20]
  386f34: 4621         	mov	r1, r4
  386f36: 461a         	mov	r2, r3
  386f38: f74f e804    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb0ff8
  386f3c: 9807         	ldr	r0, [sp, #0x1c]
  386f3e: f0bd fa03    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd406
  386f42: 4603         	mov	r3, r0
  386f44: 9a08         	ldr	r2, [sp, #0x20]
  386f46: 4413         	add	r3, r2
  386f48: 9308         	str	r3, [sp, #0x20]
  386f4a: 201c         	movs	r0, #0x1c
  386f4c: f000 f50a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400a14
  386f50: 4603         	mov	r3, r0
  386f52: 461c         	mov	r4, r3
  386f54: 9a08         	ldr	r2, [sp, #0x20]
  386f56: 4b12         	ldr	r3, [pc, #0x48]         @ 0x386fa0 <NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string)+0x154>
  386f58: 447b         	add	r3, pc
  386f5a: 1ad3         	subs	r3, r2, r3
  386f5c: 4620         	mov	r0, r4
  386f5e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x386fa4 <NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string)+0x158>
  386f60: 447a         	add	r2, pc
  386f62: 4611         	mov	r1, r2
  386f64: 461a         	mov	r2, r3
  386f66: f0bd f941    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd282
  386f6a: 9409         	str	r4, [sp, #0x24]
  386f6c: 9b09         	ldr	r3, [sp, #0x24]
  386f6e: 4618         	mov	r0, r3
  386f70: f210 ffc4    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210f88
  386f74: 9b09         	ldr	r3, [sp, #0x24]
  386f76: e00e         	b	0x386f96 <NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string)+0x14a> @ imm = #0x1c
  386f78: 4620         	mov	r0, r4
  386f7a: f001 f093    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x401126
  386f7e: f001 f095    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40112a
  386f82: 4620         	mov	r0, r4
  386f84: f001 f08e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40111c
  386f88: f001 f090    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401120
  386f8c: 4620         	mov	r0, r4
  386f8e: f001 f089    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x401112
  386f92: f001 f08b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x401116
  386f96: 4618         	mov	r0, r3
  386f98: b00a         	add	sp, #0x28
  386f9a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x386f9b); words below are literal-pool data ---
  386f9c: 9c18         	ldr	r4, [sp, #0x60]
  386f9e: 005b         	lsls	r3, r3, #0x1
  386fa0: 9b8c         	ldr	r3, [sp, #0x230]
  386fa2: 005b         	lsls	r3, r3, #0x1
  386fa4: 9b84         	ldr	r3, [sp, #0x210]
  386fa6: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getExplosionRemoveData
//      file offset 0x386fa8 (= ELF address; Ghidra 0x396fa8), 364 bytes, Thumb-2
  386fa8: b570         	push	{r4, r5, r6, lr}
  386faa: b08a         	sub	sp, #0x28
  386fac: 9001         	str	r0, [sp, #0x4]
  386fae: 9100         	str	r1, [sp]
  386fb0: 232c         	movs	r3, #0x2c
  386fb2: f88d 300b    	strb.w	r3, [sp, #0xb]
  386fb6: 9800         	ldr	r0, [sp]
  386fb8: 2100         	movs	r1, #0x0
  386fba: f213 f8b1    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x213162
  386fbe: 4603         	mov	r3, r0
  386fc0: 9305         	str	r3, [sp, #0x14]
  386fc2: 9800         	ldr	r0, [sp]
  386fc4: 2101         	movs	r1, #0x1
  386fc6: f213 f8ab    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x213156
  386fca: 4603         	mov	r3, r0
  386fcc: 9306         	str	r3, [sp, #0x18]
  386fce: 9800         	ldr	r0, [sp]
  386fd0: 2102         	movs	r1, #0x2
  386fd2: f213 f8a5    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x21314a
  386fd6: 4603         	mov	r3, r0
  386fd8: 4618         	mov	r0, r3
  386fda: f212 fca5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21294a
  386fde: 4604         	mov	r4, r0
  386fe0: ab02         	add	r3, sp, #0x8
  386fe2: 4618         	mov	r0, r3
  386fe4: f003 f206    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x40340c
  386fe8: aa04         	add	r2, sp, #0x10
  386fea: ab02         	add	r3, sp, #0x8
  386fec: 4610         	mov	r0, r2
  386fee: 4621         	mov	r1, r4
  386ff0: 461a         	mov	r2, r3
  386ff2: f02f f535    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x42fa6a
  386ff6: ab02         	add	r3, sp, #0x8
  386ff8: 4618         	mov	r0, r3
  386ffa: f003 f1ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4033fe
  386ffe: 9805         	ldr	r0, [sp, #0x14]
  387000: f765 ff28    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x9a1b0
  387004: 4603         	mov	r3, r0
  387006: f8ad 300c    	strh.w	r3, [sp, #0xc]
  38700a: 9806         	ldr	r0, [sp, #0x18]
  38700c: f765 ff22    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x9a1bc
  387010: 4603         	mov	r3, r0
  387012: f8ad 300e    	strh.w	r3, [sp, #0xe]
  387016: ab04         	add	r3, sp, #0x10
  387018: 4618         	mov	r0, r3
  38701a: f02e f171    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e2e2
  38701e: 4606         	mov	r6, r0
  387020: ab04         	add	r3, sp, #0x10
  387022: 4618         	mov	r0, r3
  387024: f02e f01a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42e034
  387028: 4605         	mov	r5, r0
  38702a: 201c         	movs	r0, #0x1c
  38702c: f000 f49a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400934
  387030: 4603         	mov	r3, r0
  387032: 461c         	mov	r4, r3
  387034: 4620         	mov	r0, r4
  387036: 4631         	mov	r1, r6
  387038: 462a         	mov	r2, r5
  38703a: f0bd f8d7    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd1ae
  38703e: 9407         	str	r4, [sp, #0x1c]
  387040: 9b07         	ldr	r3, [sp, #0x1c]
  387042: 4618         	mov	r0, r3
  387044: f210 ff5a    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210eb4
  387048: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x387108 <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)+0x160>
  38704a: 447b         	add	r3, pc
  38704c: 9308         	str	r3, [sp, #0x20]
  38704e: 9b08         	ldr	r3, [sp, #0x20]
  387050: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  387054: 701a         	strb	r2, [r3]
  387056: 9b08         	ldr	r3, [sp, #0x20]
  387058: 3301         	adds	r3, #0x1
  38705a: 9308         	str	r3, [sp, #0x20]
  38705c: 9b08         	ldr	r3, [sp, #0x20]
  38705e: f8bd 200c    	ldrh.w	r2, [sp, #0xc]
  387062: 801a         	strh	r2, [r3]
  387064: 9b08         	ldr	r3, [sp, #0x20]
  387066: 3302         	adds	r3, #0x2
  387068: 9308         	str	r3, [sp, #0x20]
  38706a: 9b08         	ldr	r3, [sp, #0x20]
  38706c: f8bd 200e    	ldrh.w	r2, [sp, #0xe]
  387070: 801a         	strh	r2, [r3]
  387072: 9b08         	ldr	r3, [sp, #0x20]
  387074: 3302         	adds	r3, #0x2
  387076: 9308         	str	r3, [sp, #0x20]
  387078: 9807         	ldr	r0, [sp, #0x1c]
  38707a: f0bd f95d    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd2ba
  38707e: 4604         	mov	r4, r0
  387080: 9807         	ldr	r0, [sp, #0x1c]
  387082: f0bd f961    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd2c2
  387086: 4603         	mov	r3, r0
  387088: 9808         	ldr	r0, [sp, #0x20]
  38708a: 4621         	mov	r1, r4
  38708c: 461a         	mov	r2, r3
  38708e: f74e ef5a    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb114c
  387092: 9807         	ldr	r0, [sp, #0x1c]
  387094: f0bd f958    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd2b0
  387098: 4603         	mov	r3, r0
  38709a: 9a08         	ldr	r2, [sp, #0x20]
  38709c: 4413         	add	r3, r2
  38709e: 9308         	str	r3, [sp, #0x20]
  3870a0: 201c         	movs	r0, #0x1c
  3870a2: f000 f45f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4008be
  3870a6: 4603         	mov	r3, r0
  3870a8: 461c         	mov	r4, r3
  3870aa: 9a08         	ldr	r2, [sp, #0x20]
  3870ac: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x38710c <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)+0x164>
  3870ae: 447b         	add	r3, pc
  3870b0: 1ad3         	subs	r3, r2, r3
  3870b2: 4620         	mov	r0, r4
  3870b4: 4a16         	ldr	r2, [pc, #0x58]         @ 0x387110 <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)+0x168>
  3870b6: 447a         	add	r2, pc
  3870b8: 4611         	mov	r1, r2
  3870ba: 461a         	mov	r2, r3
  3870bc: f0bd f896    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbd12c
  3870c0: 9409         	str	r4, [sp, #0x24]
  3870c2: 9b09         	ldr	r3, [sp, #0x24]
  3870c4: 4618         	mov	r0, r3
  3870c6: f210 ff19    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210e32
  3870ca: 9c09         	ldr	r4, [sp, #0x24]
  3870cc: ab04         	add	r3, sp, #0x10
  3870ce: 4618         	mov	r0, r3
  3870d0: f02e f420    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42e840
  3870d4: 4623         	mov	r3, r4
  3870d6: e013         	b	0x387100 <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)+0x158> @ imm = #0x26
  3870d8: ab02         	add	r3, sp, #0x8
  3870da: 4618         	mov	r0, r3
  3870dc: f003 f18e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x40331c
  3870e0: f000 f7e4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400fc8
  3870e4: 4620         	mov	r0, r4
  3870e6: f000 f7dd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400fba
  3870ea: e003         	b	0x3870f4 <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)+0x14c> @ imm = #0x6
  3870ec: 4620         	mov	r0, r4
  3870ee: f000 f7d9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400fb2
  3870f2: e7ff         	b	0x3870f4 <NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*)+0x14c> @ imm = #-0x2
  3870f4: ab04         	add	r3, sp, #0x10
  3870f6: 4618         	mov	r0, r3
  3870f8: f02e f40c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42e818
  3870fc: f000 f7d6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400fac
  387100: 4618         	mov	r0, r3
  387102: b00a         	add	sp, #0x28
  387104: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x387105); words below are literal-pool data ---
  387106: bf00         	nop
  387108: 9a9a         	ldr	r2, [sp, #0x268]
  38710a: 005b         	lsls	r3, r3, #0x1
  38710c: 9a36         	ldr	r2, [sp, #0xd8]
  38710e: 005b         	lsls	r3, r3, #0x1
  387110: 9a2e         	ldr	r2, [sp, #0xb8]
  387112: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getExplosionData
//      file offset 0x387114 (= ELF address; Ghidra 0x397114), 652 bytes, Thumb-2
  387114: b570         	push	{r4, r5, r6, lr}
  387116: ed2d 8b02    	vpush	{d8}
  38711a: b098         	sub	sp, #0x60
  38711c: 9001         	str	r0, [sp, #0x4]
  38711e: 9100         	str	r1, [sp]
  387120: 2318         	movs	r3, #0x18
  387122: f88d 300d    	strb.w	r3, [sp, #0xd]
  387126: 9800         	ldr	r0, [sp]
  387128: 2100         	movs	r1, #0x0
  38712a: f212 fff9    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212ff2
  38712e: 4603         	mov	r3, r0
  387130: 9306         	str	r3, [sp, #0x18]
  387132: 9800         	ldr	r0, [sp]
  387134: 2101         	movs	r1, #0x1
  387136: f212 fff3    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212fe6
  38713a: 4603         	mov	r3, r0
  38713c: 9307         	str	r3, [sp, #0x1c]
  38713e: 9800         	ldr	r0, [sp]
  387140: 2102         	movs	r1, #0x2
  387142: f212 ffed    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212fda
  387146: 4603         	mov	r3, r0
  387148: 9308         	str	r3, [sp, #0x20]
  38714a: 9800         	ldr	r0, [sp]
  38714c: 2103         	movs	r1, #0x3
  38714e: f212 ffe7    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212fce
  387152: 4603         	mov	r3, r0
  387154: 9309         	str	r3, [sp, #0x24]
  387156: 9800         	ldr	r0, [sp]
  387158: 2104         	movs	r1, #0x4
  38715a: f212 ffe1    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212fc2
  38715e: 4603         	mov	r3, r0
  387160: 930a         	str	r3, [sp, #0x28]
  387162: 9800         	ldr	r0, [sp]
  387164: 2105         	movs	r1, #0x5
  387166: f212 ffdb    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212fb6
  38716a: 4603         	mov	r3, r0
  38716c: 930b         	str	r3, [sp, #0x2c]
  38716e: 9800         	ldr	r0, [sp]
  387170: 2106         	movs	r1, #0x6
  387172: f212 ffd5    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212faa
  387176: 4603         	mov	r3, r0
  387178: 930c         	str	r3, [sp, #0x30]
  38717a: 9800         	ldr	r0, [sp]
  38717c: 2107         	movs	r1, #0x7
  38717e: f212 ffcf    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x212f9e
  387182: 4603         	mov	r3, r0
  387184: 4618         	mov	r0, r3
  387186: f212 fbcf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x21279e
  38718a: 4604         	mov	r4, r0
  38718c: ab14         	add	r3, sp, #0x50
  38718e: 4618         	mov	r0, r3
  387190: f003 f130    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x403260
  387194: aa05         	add	r2, sp, #0x14
  387196: ab14         	add	r3, sp, #0x50
  387198: 4610         	mov	r0, r2
  38719a: 4621         	mov	r1, r4
  38719c: 461a         	mov	r2, r3
  38719e: f02f f45f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x42f8be
  3871a2: ab14         	add	r3, sp, #0x50
  3871a4: 4618         	mov	r0, r3
  3871a6: f003 f129    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x403252
  3871aa: 980a         	ldr	r0, [sp, #0x28]
  3871ac: f765 fe52    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x9a35c
  3871b0: 4603         	mov	r3, r0
  3871b2: f8ad 300e    	strh.w	r3, [sp, #0xe]
  3871b6: 980b         	ldr	r0, [sp, #0x2c]
  3871b8: f755 fd5c    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xaa548
  3871bc: ee07 0a90    	vmov	s15, r0
  3871c0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3871c4: ee17 3a90    	vmov	r3, s15
  3871c8: f8ad 3010    	strh.w	r3, [sp, #0x10]
  3871cc: 980c         	ldr	r0, [sp, #0x30]
  3871ce: f765 fe41    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x9a37e
  3871d2: 4603         	mov	r3, r0
  3871d4: f8ad 3012    	strh.w	r3, [sp, #0x12]
  3871d8: ab05         	add	r3, sp, #0x14
  3871da: 4618         	mov	r0, r3
  3871dc: f02e f090    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42e120
  3871e0: 4606         	mov	r6, r0
  3871e2: ab05         	add	r3, sp, #0x14
  3871e4: 4618         	mov	r0, r3
  3871e6: f02d f739    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42de72
  3871ea: 4605         	mov	r5, r0
  3871ec: 201c         	movs	r0, #0x1c
  3871ee: f000 f3b9    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400772
  3871f2: 4603         	mov	r3, r0
  3871f4: 461c         	mov	r4, r3
  3871f6: 4620         	mov	r0, r4
  3871f8: 4631         	mov	r1, r6
  3871fa: 462a         	mov	r2, r5
  3871fc: f0bc fff6    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcfec
  387200: 940d         	str	r4, [sp, #0x34]
  387202: 9b0d         	ldr	r3, [sp, #0x34]
  387204: 4618         	mov	r0, r3
  387206: f210 fe79    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210cf2
  38720a: 9806         	ldr	r0, [sp, #0x18]
  38720c: f755 fd32    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xaa59c
  387210: ee07 0a90    	vmov	s15, r0
  387214: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  387218: 9807         	ldr	r0, [sp, #0x1c]
  38721a: f755 fd2b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xaa5aa
  38721e: ee07 0a90    	vmov	s15, r0
  387222: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  387226: ab10         	add	r3, sp, #0x40
  387228: 4618         	mov	r0, r3
  38722a: eeb0 0b48    	vmov.f64	d0, d8
  38722e: eeb0 1b47    	vmov.f64	d1, d7
  387232: f7f9 fe1b    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x63ca
  387236: 9808         	ldr	r0, [sp, #0x20]
  387238: f755 fd1c    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xaa5c8
  38723c: ee07 0a90    	vmov	s15, r0
  387240: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  387244: 9809         	ldr	r0, [sp, #0x24]
  387246: f755 fd15    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xaa5d6
  38724a: ee07 0a90    	vmov	s15, r0
  38724e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  387252: ab14         	add	r3, sp, #0x50
  387254: 4618         	mov	r0, r3
  387256: eeb0 0b48    	vmov.f64	d0, d8
  38725a: eeb0 1b47    	vmov.f64	d1, d7
  38725e: f7f9 fe05    	bl	0x380e6c <cocos2d::CCDouble::acceptVisitor(cocos2d::CCDataVisitor&)+0xc0> @ imm = #-0x63f6
  387262: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x387394 <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)+0x280>
  387264: 447b         	add	r3, pc
  387266: 930e         	str	r3, [sp, #0x38]
  387268: 9b0e         	ldr	r3, [sp, #0x38]
  38726a: f89d 200d    	ldrb.w	r2, [sp, #0xd]
  38726e: 701a         	strb	r2, [r3]
  387270: 9b0e         	ldr	r3, [sp, #0x38]
  387272: 3301         	adds	r3, #0x1
  387274: 930e         	str	r3, [sp, #0x38]
  387276: ed9d 7b10    	vldr	d7, [sp, #64]
  38727a: eefd 6bc7    	vcvt.s32.f64	s13, d7
  38727e: ee16 3a90    	vmov	r3, s13
  387282: b29a         	uxth	r2, r3
  387284: 9b0e         	ldr	r3, [sp, #0x38]
  387286: 801a         	strh	r2, [r3]
  387288: 9b0e         	ldr	r3, [sp, #0x38]
  38728a: 3302         	adds	r3, #0x2
  38728c: 930e         	str	r3, [sp, #0x38]
  38728e: ed9d 7b12    	vldr	d7, [sp, #72]
  387292: eefd 6bc7    	vcvt.s32.f64	s13, d7
  387296: ee16 3a90    	vmov	r3, s13
  38729a: b29a         	uxth	r2, r3
  38729c: 9b0e         	ldr	r3, [sp, #0x38]
  38729e: 801a         	strh	r2, [r3]
  3872a0: 9b0e         	ldr	r3, [sp, #0x38]
  3872a2: 3302         	adds	r3, #0x2
  3872a4: 930e         	str	r3, [sp, #0x38]
  3872a6: ed9d 7b14    	vldr	d7, [sp, #80]
  3872aa: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3872ae: ee16 3a90    	vmov	r3, s13
  3872b2: b29a         	uxth	r2, r3
  3872b4: 9b0e         	ldr	r3, [sp, #0x38]
  3872b6: 801a         	strh	r2, [r3]
  3872b8: 9b0e         	ldr	r3, [sp, #0x38]
  3872ba: 3302         	adds	r3, #0x2
  3872bc: 930e         	str	r3, [sp, #0x38]
  3872be: ed9d 7b16    	vldr	d7, [sp, #88]
  3872c2: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3872c6: ee16 3a90    	vmov	r3, s13
  3872ca: b29a         	uxth	r2, r3
  3872cc: 9b0e         	ldr	r3, [sp, #0x38]
  3872ce: 801a         	strh	r2, [r3]
  3872d0: 9b0e         	ldr	r3, [sp, #0x38]
  3872d2: 3302         	adds	r3, #0x2
  3872d4: 930e         	str	r3, [sp, #0x38]
  3872d6: 9b0e         	ldr	r3, [sp, #0x38]
  3872d8: f8bd 200e    	ldrh.w	r2, [sp, #0xe]
  3872dc: 801a         	strh	r2, [r3]
  3872de: 9b0e         	ldr	r3, [sp, #0x38]
  3872e0: 3302         	adds	r3, #0x2
  3872e2: 930e         	str	r3, [sp, #0x38]
  3872e4: 9b0e         	ldr	r3, [sp, #0x38]
  3872e6: f8bd 2010    	ldrh.w	r2, [sp, #0x10]
  3872ea: 801a         	strh	r2, [r3]
  3872ec: 9b0e         	ldr	r3, [sp, #0x38]
  3872ee: 3302         	adds	r3, #0x2
  3872f0: 930e         	str	r3, [sp, #0x38]
  3872f2: 9b0e         	ldr	r3, [sp, #0x38]
  3872f4: f8bd 2012    	ldrh.w	r2, [sp, #0x12]
  3872f8: 801a         	strh	r2, [r3]
  3872fa: 9b0e         	ldr	r3, [sp, #0x38]
  3872fc: 3302         	adds	r3, #0x2
  3872fe: 930e         	str	r3, [sp, #0x38]
  387300: 980d         	ldr	r0, [sp, #0x34]
  387302: f0bd f819    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbd032
  387306: 4604         	mov	r4, r0
  387308: 980d         	ldr	r0, [sp, #0x34]
  38730a: f0bd f81d    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd03a
  38730e: 4603         	mov	r3, r0
  387310: 980e         	ldr	r0, [sp, #0x38]
  387312: 4621         	mov	r1, r4
  387314: 461a         	mov	r2, r3
  387316: f74e ee16    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb13d4
  38731a: 980d         	ldr	r0, [sp, #0x34]
  38731c: f0bd f814    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbd028
  387320: 4603         	mov	r3, r0
  387322: 9a0e         	ldr	r2, [sp, #0x38]
  387324: 4413         	add	r3, r2
  387326: 930e         	str	r3, [sp, #0x38]
  387328: 201c         	movs	r0, #0x1c
  38732a: f000 f31b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400636
  38732e: 4603         	mov	r3, r0
  387330: 461c         	mov	r4, r3
  387332: 9a0e         	ldr	r2, [sp, #0x38]
  387334: 4b18         	ldr	r3, [pc, #0x60]         @ 0x387398 <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)+0x284>
  387336: 447b         	add	r3, pc
  387338: 1ad3         	subs	r3, r2, r3
  38733a: 4620         	mov	r0, r4
  38733c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x38739c <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)+0x288>
  38733e: 447a         	add	r2, pc
  387340: 4611         	mov	r1, r2
  387342: 461a         	mov	r2, r3
  387344: f0bc ff52    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcea4
  387348: 940f         	str	r4, [sp, #0x3c]
  38734a: 9b0f         	ldr	r3, [sp, #0x3c]
  38734c: 4618         	mov	r0, r3
  38734e: f210 fdd5    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210baa
  387352: 9c0f         	ldr	r4, [sp, #0x3c]
  387354: ab05         	add	r3, sp, #0x14
  387356: 4618         	mov	r0, r3
  387358: f02e f2dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42e5b8
  38735c: 4623         	mov	r3, r4
  38735e: e013         	b	0x387388 <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)+0x274> @ imm = #0x26
  387360: ab14         	add	r3, sp, #0x50
  387362: 4618         	mov	r0, r3
  387364: f003 f04a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x403094
  387368: f000 f6a0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400d40
  38736c: 4620         	mov	r0, r4
  38736e: f000 f699    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400d32
  387372: e003         	b	0x38737c <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)+0x268> @ imm = #0x6
  387374: 4620         	mov	r0, r4
  387376: f000 f695    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400d2a
  38737a: e7ff         	b	0x38737c <NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*)+0x268> @ imm = #-0x2
  38737c: ab05         	add	r3, sp, #0x14
  38737e: 4618         	mov	r0, r3
  387380: f02e f2c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42e590
  387384: f000 f692    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400d24
  387388: 4618         	mov	r0, r3
  38738a: b018         	add	sp, #0x60
  38738c: ecbd 8b02    	vpop	{d8}
  387390: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x387391); words below are literal-pool data ---
  387392: bf00         	nop
  387394: 9880         	ldr	r0, [sp, #0x200]
  387396: 005b         	lsls	r3, r3, #0x1
  387398: 97ae         	str	r7, [sp, #0x2b8]
  38739a: 005b         	lsls	r3, r3, #0x1
  38739c: 97a6         	str	r7, [sp, #0x298]
  38739e: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPlayerPunchData
//      file offset 0x3873a0 (= ELF address; Ghidra 0x3973a0), 108 bytes, Thumb-2
  3873a0: b510         	push	{r4, lr}
  3873a2: b086         	sub	sp, #0x18
  3873a4: 9001         	str	r0, [sp, #0x4]
  3873a6: 231e         	movs	r3, #0x1e
  3873a8: f88d 300f    	strb.w	r3, [sp, #0xf]
  3873ac: 4b14         	ldr	r3, [pc, #0x50]         @ 0x387400 <NetworkMessageDispatcher::getPlayerPunchData()+0x60>
  3873ae: 447b         	add	r3, pc
  3873b0: 9304         	str	r3, [sp, #0x10]
  3873b2: 9b04         	ldr	r3, [sp, #0x10]
  3873b4: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  3873b8: 701a         	strb	r2, [r3]
  3873ba: 9b04         	ldr	r3, [sp, #0x10]
  3873bc: 3301         	adds	r3, #0x1
  3873be: 9304         	str	r3, [sp, #0x10]
  3873c0: 201c         	movs	r0, #0x1c
  3873c2: f000 f2cf    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40059e
  3873c6: 4603         	mov	r3, r0
  3873c8: 461c         	mov	r4, r3
  3873ca: 9a04         	ldr	r2, [sp, #0x10]
  3873cc: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x387404 <NetworkMessageDispatcher::getPlayerPunchData()+0x64>
  3873ce: 447b         	add	r3, pc
  3873d0: 1ad3         	subs	r3, r2, r3
  3873d2: 4620         	mov	r0, r4
  3873d4: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x387408 <NetworkMessageDispatcher::getPlayerPunchData()+0x68>
  3873d6: 447a         	add	r2, pc
  3873d8: 4611         	mov	r1, r2
  3873da: 461a         	mov	r2, r3
  3873dc: f0bc ff06    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbce0c
  3873e0: 9405         	str	r4, [sp, #0x14]
  3873e2: 9b05         	ldr	r3, [sp, #0x14]
  3873e4: 4618         	mov	r0, r3
  3873e6: f210 fd89    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210b12
  3873ea: 9b05         	ldr	r3, [sp, #0x14]
  3873ec: e004         	b	0x3873f8 <NetworkMessageDispatcher::getPlayerPunchData()+0x58> @ imm = #0x8
  3873ee: 4620         	mov	r0, r4
  3873f0: f000 f658    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400cb0
  3873f4: f000 f65a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400cb4
  3873f8: 4618         	mov	r0, r3
  3873fa: b006         	add	sp, #0x18
  3873fc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3873fd); words below are literal-pool data ---
  3873fe: bf00         	nop
  387400: 9736         	str	r7, [sp, #0xd8]
  387402: 005b         	lsls	r3, r3, #0x1
  387404: 9716         	str	r7, [sp, #0x58]
  387406: 005b         	lsls	r3, r3, #0x1
  387408: 970e         	str	r7, [sp, #0x38]
  38740a: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPlayerThrowData
//      file offset 0x38740c (= ELF address; Ghidra 0x39740c), 108 bytes, Thumb-2
  38740c: b510         	push	{r4, lr}
  38740e: b086         	sub	sp, #0x18
  387410: 9001         	str	r0, [sp, #0x4]
  387412: 231f         	movs	r3, #0x1f
  387414: f88d 300f    	strb.w	r3, [sp, #0xf]
  387418: 4b14         	ldr	r3, [pc, #0x50]         @ 0x38746c <NetworkMessageDispatcher::getPlayerThrowData()+0x60>
  38741a: 447b         	add	r3, pc
  38741c: 9304         	str	r3, [sp, #0x10]
  38741e: 9b04         	ldr	r3, [sp, #0x10]
  387420: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  387424: 701a         	strb	r2, [r3]
  387426: 9b04         	ldr	r3, [sp, #0x10]
  387428: 3301         	adds	r3, #0x1
  38742a: 9304         	str	r3, [sp, #0x10]
  38742c: 201c         	movs	r0, #0x1c
  38742e: f000 f299    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400532
  387432: 4603         	mov	r3, r0
  387434: 461c         	mov	r4, r3
  387436: 9a04         	ldr	r2, [sp, #0x10]
  387438: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x387470 <NetworkMessageDispatcher::getPlayerThrowData()+0x64>
  38743a: 447b         	add	r3, pc
  38743c: 1ad3         	subs	r3, r2, r3
  38743e: 4620         	mov	r0, r4
  387440: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x387474 <NetworkMessageDispatcher::getPlayerThrowData()+0x68>
  387442: 447a         	add	r2, pc
  387444: 4611         	mov	r1, r2
  387446: 461a         	mov	r2, r3
  387448: f0bc fed0    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcda0
  38744c: 9405         	str	r4, [sp, #0x14]
  38744e: 9b05         	ldr	r3, [sp, #0x14]
  387450: 4618         	mov	r0, r3
  387452: f210 fd53    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210aa6
  387456: 9b05         	ldr	r3, [sp, #0x14]
  387458: e004         	b	0x387464 <NetworkMessageDispatcher::getPlayerThrowData()+0x58> @ imm = #0x8
  38745a: 4620         	mov	r0, r4
  38745c: f000 f622    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400c44
  387460: f000 f624    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400c48
  387464: 4618         	mov	r0, r3
  387466: b006         	add	sp, #0x18
  387468: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x387469); words below are literal-pool data ---
  38746a: bf00         	nop
  38746c: 96ca         	str	r6, [sp, #0x328]
  38746e: 005b         	lsls	r3, r3, #0x1
  387470: 96aa         	str	r6, [sp, #0x2a8]
  387472: 005b         	lsls	r3, r3, #0x1
  387474: 96a2         	str	r6, [sp, #0x288]
  387476: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPlayerDiedData
//      file offset 0x387478 (= ELF address; Ghidra 0x397478), 484 bytes, Thumb-2
  387478: b570         	push	{r4, r5, r6, lr}
  38747a: b088         	sub	sp, #0x20
  38747c: 9001         	str	r0, [sp, #0x4]
  38747e: 4c71         	ldr	r4, [pc, #0x1c4]        @ 0x387644 <NetworkMessageDispatcher::getPlayerDiedData()+0x1cc>
  387480: 447c         	add	r4, pc
  387482: 2320         	movs	r3, #0x20
  387484: f88d 300a    	strb.w	r3, [sp, #0xa]
  387488: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x387648 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d0>
  38748a: 58e3         	ldr	r3, [r4, r3]
  38748c: 681b         	ldr	r3, [r3]
  38748e: 681b         	ldr	r3, [r3]
  387490: f503 73da    	add.w	r3, r3, #0x1b4
  387494: 681b         	ldr	r3, [r3]
  387496: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x387648 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d0>
  387498: 58a2         	ldr	r2, [r4, r2]
  38749a: 6812         	ldr	r2, [r2]
  38749c: 4610         	mov	r0, r2
  38749e: 4798         	blx	r3
  3874a0: 4603         	mov	r3, r0
  3874a2: f8ad 300c    	strh.w	r3, [sp, #0xc]
  3874a6: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x387648 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d0>
  3874a8: 58e3         	ldr	r3, [r4, r3]
  3874aa: 681b         	ldr	r3, [r3]
  3874ac: 681b         	ldr	r3, [r3]
  3874ae: f503 73dc    	add.w	r3, r3, #0x1b8
  3874b2: 681b         	ldr	r3, [r3]
  3874b4: 4a64         	ldr	r2, [pc, #0x190]        @ 0x387648 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d0>
  3874b6: 58a2         	ldr	r2, [r4, r2]
  3874b8: 6812         	ldr	r2, [r2]
  3874ba: a904         	add	r1, sp, #0x10
  3874bc: 4608         	mov	r0, r1
  3874be: 4611         	mov	r1, r2
  3874c0: 4798         	blx	r3
  3874c2: 4b61         	ldr	r3, [pc, #0x184]        @ 0x387648 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d0>
  3874c4: 58e3         	ldr	r3, [r4, r3]
  3874c6: 681b         	ldr	r3, [r3]
  3874c8: 681b         	ldr	r3, [r3]
  3874ca: f503 7344    	add.w	r3, r3, #0x310
  3874ce: 681b         	ldr	r3, [r3]
  3874d0: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x387648 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d0>
  3874d2: 58a2         	ldr	r2, [r4, r2]
  3874d4: 6812         	ldr	r2, [r2]
  3874d6: 4610         	mov	r0, r2
  3874d8: 4798         	blx	r3
  3874da: 4603         	mov	r3, r0
  3874dc: f88d 300b    	strb.w	r3, [sp, #0xb]
  3874e0: f7f9 fbb8    	bl	0x380c54 <std::move_iterator<ServerListObject*>::base() const+0x28c> @ imm = #-0x6890
  3874e4: 4603         	mov	r3, r0
  3874e6: ee06 3a90    	vmov	s13, r3
  3874ea: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3874ee: eddf 7a54    	vldr	s15, [pc, #336]         @ 0x387640 <NetworkMessageDispatcher::getPlayerDiedData()+0x1c8>
  3874f2: ee87 7a27    	vdiv.f32	s14, s14, s15
  3874f6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3874fa: ee77 7a67    	vsub.f32	s15, s14, s15
  3874fe: ee17 0a90    	vmov	r0, s15
  387502: f7b7 ffdb    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0x4804a
  387506: ee07 0a90    	vmov	s15, r0
  38750a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38750e: ed9f 7b4a    	vldr	d7, [pc, #296]          @ 0x387638 <NetworkMessageDispatcher::getPlayerDiedData()+0x1c0>
  387512: ee26 6b07    	vmul.f64	d6, d6, d7
  387516: eeb3 7b08    	vmov.f64	d7, #2.400000e+01
  38751a: ee36 7b07    	vadd.f64	d7, d6, d7
  38751e: eefd 6bc7    	vcvt.s32.f64	s13, d7
  387522: ee16 3a90    	vmov	r3, s13
  387526: f8ad 300e    	strh.w	r3, [sp, #0xe]
  38752a: 4b48         	ldr	r3, [pc, #0x120]        @ 0x38764c <NetworkMessageDispatcher::getPlayerDiedData()+0x1d4>
  38752c: 58e3         	ldr	r3, [r4, r3]
  38752e: 681a         	ldr	r2, [r3]
  387530: f9bd 300e    	ldrsh.w	r3, [sp, #0xe]
  387534: 4610         	mov	r0, r2
  387536: 4619         	mov	r1, r3
  387538: f04f 527e    	mov.w	r2, #0x3f800000
  38753c: f04f 537e    	mov.w	r3, #0x3f800000
  387540: f070 fc9e    	bl	0x3f7e80 <Sound::playSoundVP(int, float, float)> @ imm = #0x7093c
  387544: ab04         	add	r3, sp, #0x10
  387546: 4618         	mov	r0, r3
  387548: f02d f6da    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42ddb4
  38754c: 4606         	mov	r6, r0
  38754e: ab04         	add	r3, sp, #0x10
  387550: 4618         	mov	r0, r3
  387552: f02d f583    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42db06
  387556: 4605         	mov	r5, r0
  387558: 201c         	movs	r0, #0x1c
  38755a: f000 f203    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400406
  38755e: 4603         	mov	r3, r0
  387560: 461c         	mov	r4, r3
  387562: 4620         	mov	r0, r4
  387564: 4631         	mov	r1, r6
  387566: 462a         	mov	r2, r5
  387568: f0bc fe40    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcc80
  38756c: 9405         	str	r4, [sp, #0x14]
  38756e: 9b05         	ldr	r3, [sp, #0x14]
  387570: 4618         	mov	r0, r3
  387572: f210 fcc3    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210986
  387576: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x387650 <NetworkMessageDispatcher::getPlayerDiedData()+0x1d8>
  387578: 447b         	add	r3, pc
  38757a: 9306         	str	r3, [sp, #0x18]
  38757c: 9b06         	ldr	r3, [sp, #0x18]
  38757e: f89d 200a    	ldrb.w	r2, [sp, #0xa]
  387582: 701a         	strb	r2, [r3]
  387584: 9b06         	ldr	r3, [sp, #0x18]
  387586: 3301         	adds	r3, #0x1
  387588: 9306         	str	r3, [sp, #0x18]
  38758a: 9b06         	ldr	r3, [sp, #0x18]
  38758c: f8bd 200c    	ldrh.w	r2, [sp, #0xc]
  387590: 801a         	strh	r2, [r3]
  387592: 9b06         	ldr	r3, [sp, #0x18]
  387594: 3302         	adds	r3, #0x2
  387596: 9306         	str	r3, [sp, #0x18]
  387598: 9b06         	ldr	r3, [sp, #0x18]
  38759a: f8bd 200e    	ldrh.w	r2, [sp, #0xe]
  38759e: 801a         	strh	r2, [r3]
  3875a0: 9b06         	ldr	r3, [sp, #0x18]
  3875a2: 3302         	adds	r3, #0x2
  3875a4: 9306         	str	r3, [sp, #0x18]
  3875a6: 9b06         	ldr	r3, [sp, #0x18]
  3875a8: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  3875ac: 701a         	strb	r2, [r3]
  3875ae: 9b06         	ldr	r3, [sp, #0x18]
  3875b0: 3301         	adds	r3, #0x1
  3875b2: 9306         	str	r3, [sp, #0x18]
  3875b4: 9805         	ldr	r0, [sp, #0x14]
  3875b6: f0bc febf    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbcd7e
  3875ba: 4604         	mov	r4, r0
  3875bc: 9805         	ldr	r0, [sp, #0x14]
  3875be: f0bc fec3    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbcd86
  3875c2: 4603         	mov	r3, r0
  3875c4: 9806         	ldr	r0, [sp, #0x18]
  3875c6: 4621         	mov	r1, r4
  3875c8: 461a         	mov	r2, r3
  3875ca: f74e ecbc    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb1688
  3875ce: 9805         	ldr	r0, [sp, #0x14]
  3875d0: f0bc feba    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbcd74
  3875d4: 4603         	mov	r3, r0
  3875d6: 9a06         	ldr	r2, [sp, #0x18]
  3875d8: 4413         	add	r3, r2
  3875da: 9306         	str	r3, [sp, #0x18]
  3875dc: 201c         	movs	r0, #0x1c
  3875de: f000 f1c1    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400382
  3875e2: 4603         	mov	r3, r0
  3875e4: 461c         	mov	r4, r3
  3875e6: 9a06         	ldr	r2, [sp, #0x18]
  3875e8: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x387654 <NetworkMessageDispatcher::getPlayerDiedData()+0x1dc>
  3875ea: 447b         	add	r3, pc
  3875ec: 1ad3         	subs	r3, r2, r3
  3875ee: 4620         	mov	r0, r4
  3875f0: 4a19         	ldr	r2, [pc, #0x64]         @ 0x387658 <NetworkMessageDispatcher::getPlayerDiedData()+0x1e0>
  3875f2: 447a         	add	r2, pc
  3875f4: 4611         	mov	r1, r2
  3875f6: 461a         	mov	r2, r3
  3875f8: f0bc fdf8    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcbf0
  3875fc: 9407         	str	r4, [sp, #0x1c]
  3875fe: 9b07         	ldr	r3, [sp, #0x1c]
  387600: 4618         	mov	r0, r3
  387602: f210 fc7b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2108f6
  387606: 9c07         	ldr	r4, [sp, #0x1c]
  387608: ab04         	add	r3, sp, #0x10
  38760a: 4618         	mov	r0, r3
  38760c: f02e f182    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42e304
  387610: 4623         	mov	r3, r4
  387612: e00d         	b	0x387630 <NetworkMessageDispatcher::getPlayerDiedData()+0x1b8> @ imm = #0x1a
  387614: 4620         	mov	r0, r4
  387616: f000 f545    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400a8a
  38761a: e003         	b	0x387624 <NetworkMessageDispatcher::getPlayerDiedData()+0x1ac> @ imm = #0x6
  38761c: 4620         	mov	r0, r4
  38761e: f000 f541    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400a82
  387622: e7ff         	b	0x387624 <NetworkMessageDispatcher::getPlayerDiedData()+0x1ac> @ imm = #-0x2
  387624: ab04         	add	r3, sp, #0x10
  387626: 4618         	mov	r0, r3
  387628: f02e f174    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42e2e8
  38762c: f000 f53e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400a7c
  387630: 4618         	mov	r0, r3
  387632: b008         	add	sp, #0x20
  387634: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x387635); words below are literal-pool data ---
  387636: bf00         	nop
  387638: 28f6         	cmp	r0, #0xf6
  38763a: 8f5c         	ldrh	r4, [r3, #0x3a]
  38763c: f5c2 401f    	rsb.w	r0, r2, #0x9f00
  387640: 0000         	movs	r0, r0
  387642: 4e80         	ldr	r6, [pc, #0x200]        @ 0x387844 <NetworkMessageDispatcher::getPingTimeFor(std::string)+0x24>
  387644: b588         	push	{r3, r7, lr}
  387646: 005a         	lsls	r2, r3, #0x1
  387648: d784         	bvc	0x387554 <NetworkMessageDispatcher::getPlayerDiedData()+0xdc> @ imm = #-0xf8
  38764a: ffff d730    	vqshl.u32	d29, d16, #0x1f
  38764e: ffff 956c    	<unknown>
  387652: 005b         	lsls	r3, r3, #0x1
  387654: 94fa         	str	r4, [sp, #0x3e8]
  387656: 005b         	lsls	r3, r3, #0x1
  387658: 94f2         	str	r4, [sp, #0x3c8]
  38765a: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPlayerEnteredGameData
//      file offset 0x387660 (= ELF address; Ghidra 0x397660), 124 bytes, Thumb-2
  387660: b510         	push	{r4, lr}
  387662: b086         	sub	sp, #0x18
  387664: 9001         	str	r0, [sp, #0x4]
  387666: 460b         	mov	r3, r1
  387668: f88d 3003    	strb.w	r3, [sp, #0x3]
  38766c: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  387670: 2b00         	cmp	r3, #0x0
  387672: d001         	beq	0x387678 <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)+0x18> @ imm = #0x2
  387674: 2324         	movs	r3, #0x24
  387676: e000         	b	0x38767a <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)+0x1a> @ imm = #0x0
  387678: 2323         	movs	r3, #0x23
  38767a: f88d 300f    	strb.w	r3, [sp, #0xf]
  38767e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3876d0 <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)+0x70>
  387680: 447b         	add	r3, pc
  387682: 9304         	str	r3, [sp, #0x10]
  387684: 9b04         	ldr	r3, [sp, #0x10]
  387686: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  38768a: 701a         	strb	r2, [r3]
  38768c: 9b04         	ldr	r3, [sp, #0x10]
  38768e: 3301         	adds	r3, #0x1
  387690: 9304         	str	r3, [sp, #0x10]
  387692: 201c         	movs	r0, #0x1c
  387694: f000 f166    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4002cc
  387698: 4603         	mov	r3, r0
  38769a: 461c         	mov	r4, r3
  38769c: 9a04         	ldr	r2, [sp, #0x10]
  38769e: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3876d4 <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)+0x74>
  3876a0: 447b         	add	r3, pc
  3876a2: 1ad3         	subs	r3, r2, r3
  3876a4: 4620         	mov	r0, r4
  3876a6: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3876d8 <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)+0x78>
  3876a8: 447a         	add	r2, pc
  3876aa: 4611         	mov	r1, r2
  3876ac: 461a         	mov	r2, r3
  3876ae: f0bc fd9d    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcb3a
  3876b2: 9405         	str	r4, [sp, #0x14]
  3876b4: 9b05         	ldr	r3, [sp, #0x14]
  3876b6: 4618         	mov	r0, r3
  3876b8: f210 fc20    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210840
  3876bc: 9b05         	ldr	r3, [sp, #0x14]
  3876be: e004         	b	0x3876ca <NetworkMessageDispatcher::getPlayerEnteredGameData(bool)+0x6a> @ imm = #0x8
  3876c0: 4620         	mov	r0, r4
  3876c2: f000 f4ef    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4009de
  3876c6: f000 f4f1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4009e2
  3876ca: 4618         	mov	r0, r3
  3876cc: b006         	add	sp, #0x18
  3876ce: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3876cf); words below are literal-pool data ---
  3876d0: 9464         	str	r4, [sp, #0x190]
  3876d2: 005b         	lsls	r3, r3, #0x1
  3876d4: 9444         	str	r4, [sp, #0x110]
  3876d6: 005b         	lsls	r3, r3, #0x1
  3876d8: 943c         	str	r4, [sp, #0xf0]
  3876da: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPingData
//      file offset 0x3876dc (= ELF address; Ghidra 0x3976dc), 152 bytes, Thumb-2
  3876dc: b510         	push	{r4, lr}
  3876de: b086         	sub	sp, #0x18
  3876e0: 9001         	str	r0, [sp, #0x4]
  3876e2: 2325         	movs	r3, #0x25
  3876e4: f88d 300f    	strb.w	r3, [sp, #0xf]
  3876e8: f7f0 fa2a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xfbac
  3876ec: 4603         	mov	r3, r0
  3876ee: 4618         	mov	r0, r3
  3876f0: f7f3 f818    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0xcfd0
  3876f4: 4603         	mov	r3, r0
  3876f6: 2b00         	cmp	r3, #0x0
  3876f8: d00d         	beq	0x387716 <NetworkMessageDispatcher::getPingData()+0x3a> @ imm = #0x1a
  3876fa: f213 ff3b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x213e76
  3876fe: 4603         	mov	r3, r0
  387700: 681a         	ldr	r2, [r3]
  387702: 3258         	adds	r2, #0x58
  387704: 6812         	ldr	r2, [r2]
  387706: 4618         	mov	r0, r3
  387708: 4790         	blx	r2
  38770a: 4602         	mov	r2, r0
  38770c: 9b01         	ldr	r3, [sp, #0x4]
  38770e: 619a         	str	r2, [r3, #0x18]
  387710: 2307         	movs	r3, #0x7
  387712: f88d 300f    	strb.w	r3, [sp, #0xf]
  387716: 4b14         	ldr	r3, [pc, #0x50]         @ 0x387768 <NetworkMessageDispatcher::getPingData()+0x8c>
  387718: 447b         	add	r3, pc
  38771a: 9304         	str	r3, [sp, #0x10]
  38771c: 9b04         	ldr	r3, [sp, #0x10]
  38771e: f89d 200f    	ldrb.w	r2, [sp, #0xf]
  387722: 701a         	strb	r2, [r3]
  387724: 9b04         	ldr	r3, [sp, #0x10]
  387726: 3301         	adds	r3, #0x1
  387728: 9304         	str	r3, [sp, #0x10]
  38772a: 201c         	movs	r0, #0x1c
  38772c: f000 f11a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x400234
  387730: 4603         	mov	r3, r0
  387732: 461c         	mov	r4, r3
  387734: 9a04         	ldr	r2, [sp, #0x10]
  387736: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x38776c <NetworkMessageDispatcher::getPingData()+0x90>
  387738: 447b         	add	r3, pc
  38773a: 1ad3         	subs	r3, r2, r3
  38773c: 4620         	mov	r0, r4
  38773e: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x387770 <NetworkMessageDispatcher::getPingData()+0x94>
  387740: 447a         	add	r2, pc
  387742: 4611         	mov	r1, r2
  387744: 461a         	mov	r2, r3
  387746: f0bc fd51    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbcaa2
  38774a: 9405         	str	r4, [sp, #0x14]
  38774c: 9b05         	ldr	r3, [sp, #0x14]
  38774e: 4618         	mov	r0, r3
  387750: f210 fbd4    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2107a8
  387754: 9b05         	ldr	r3, [sp, #0x14]
  387756: e004         	b	0x387762 <NetworkMessageDispatcher::getPingData()+0x86> @ imm = #0x8
  387758: 4620         	mov	r0, r4
  38775a: f000 f4a3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400946
  38775e: f000 f4a5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x40094a
  387762: 4618         	mov	r0, r3
  387764: b006         	add	sp, #0x18
  387766: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x387767); words below are literal-pool data ---
  387768: 93cc         	str	r3, [sp, #0x330]
  38776a: 005b         	lsls	r3, r3, #0x1
  38776c: 93ac         	str	r3, [sp, #0x2b0]
  38776e: 005b         	lsls	r3, r3, #0x1
  387770: 93a4         	str	r3, [sp, #0x290]
  387772: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPeerSoldier
//      file offset 0x387774 (= ELF address; Ghidra 0x397774), 44 bytes, Thumb-2
  387774: b500         	push	{lr}
  387776: b083         	sub	sp, #0xc
  387778: 9001         	str	r0, [sp, #0x4]
  38777a: 9100         	str	r1, [sp]
  38777c: 4a06         	ldr	r2, [pc, #0x18]         @ 0x387798 <NetworkMessageDispatcher::getPeerSoldier(std::string)+0x24>
  38777e: 447a         	add	r2, pc
  387780: 4b06         	ldr	r3, [pc, #0x18]         @ 0x38779c <NetworkMessageDispatcher::getPeerSoldier(std::string)+0x28>
  387782: 58d3         	ldr	r3, [r2, r3]
  387784: 681b         	ldr	r3, [r3]
  387786: 4618         	mov	r0, r3
  387788: 9900         	ldr	r1, [sp]
  38778a: f20c fbb1    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x20c762
  38778e: 4603         	mov	r3, r0
  387790: 4618         	mov	r0, r3
  387792: b003         	add	sp, #0xc
  387794: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x387797); words below are literal-pool data ---
  387798: b28a         	uxth	r2, r1
  38779a: 005a         	lsls	r2, r3, #0x1
  38779c: d920         	bls	0x3877e0 <NetworkMessageDispatcher::getPeerSoldiers()+0x4> @ imm = #0x40
  38779e: ffff b500    	<unknown>

// ==== NetworkMessageDispatcher::getEnemy
//      file offset 0x3877a0 (= ELF address; Ghidra 0x3977a0), 60 bytes, Thumb-2
  3877a0: b500         	push	{lr}
  3877a2: b083         	sub	sp, #0xc
  3877a4: 9001         	str	r0, [sp, #0x4]
  3877a6: 9100         	str	r1, [sp]
  3877a8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3877d4 <NetworkMessageDispatcher::getEnemy(std::string)+0x34>
  3877aa: 447b         	add	r3, pc
  3877ac: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3877d8 <NetworkMessageDispatcher::getEnemy(std::string)+0x38>
  3877ae: 589a         	ldr	r2, [r3, r2]
  3877b0: 6812         	ldr	r2, [r2]
  3877b2: 2a00         	cmp	r2, #0x0
  3877b4: d008         	beq	0x3877c8 <NetworkMessageDispatcher::getEnemy(std::string)+0x28> @ imm = #0x10
  3877b6: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3877d8 <NetworkMessageDispatcher::getEnemy(std::string)+0x38>
  3877b8: 589b         	ldr	r3, [r3, r2]
  3877ba: 681b         	ldr	r3, [r3]
  3877bc: 4618         	mov	r0, r3
  3877be: 9900         	ldr	r1, [sp]
  3877c0: f20c fb96    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x20c72c
  3877c4: 4603         	mov	r3, r0
  3877c6: e000         	b	0x3877ca <NetworkMessageDispatcher::getEnemy(std::string)+0x2a> @ imm = #0x0
  3877c8: 2300         	movs	r3, #0x0
  3877ca: 4618         	mov	r0, r3
  3877cc: b003         	add	sp, #0xc
  3877ce: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3877d1); words below are literal-pool data ---
  3877d2: bf00         	nop
  3877d4: b25e         	sxtb	r6, r3
  3877d6: 005a         	lsls	r2, r3, #0x1
  3877d8: d9f8         	bls	0x3877cc <NetworkMessageDispatcher::getEnemy(std::string)+0x2c> @ imm = #-0x10
  3877da: ffff b082    	<unknown>

// ==== NetworkMessageDispatcher::getPeerSoldiers
//      file offset 0x3877dc (= ELF address; Ghidra 0x3977dc), 28 bytes, Thumb-2
  3877dc: b082         	sub	sp, #0x8
  3877de: 9001         	str	r0, [sp, #0x4]
  3877e0: 4a03         	ldr	r2, [pc, #0xc]          @ 0x3877f0 <NetworkMessageDispatcher::getPeerSoldiers()+0x14>
  3877e2: 447a         	add	r2, pc
  3877e4: 4b03         	ldr	r3, [pc, #0xc]          @ 0x3877f4 <NetworkMessageDispatcher::getPeerSoldiers()+0x18>
  3877e6: 58d3         	ldr	r3, [r2, r3]
  3877e8: 681b         	ldr	r3, [r3]
  3877ea: 4618         	mov	r0, r3
  3877ec: b002         	add	sp, #0x8
  3877ee: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3877ef); words below are literal-pool data ---
  3877f0: b226         	sxth	r6, r4
  3877f2: 005a         	lsls	r2, r3, #0x1
  3877f4: d920         	bls	0x387838 <NetworkMessageDispatcher::getPingTimeFor(std::string)+0x18> @ imm = #0x40
  3877f6: ffff b500    	<unknown>

// ==== NetworkMessageDispatcher::getPeerKeys
//      file offset 0x3877f8 (= ELF address; Ghidra 0x3977f8), 40 bytes, Thumb-2
  3877f8: b500         	push	{lr}
  3877fa: b083         	sub	sp, #0xc
  3877fc: 9001         	str	r0, [sp, #0x4]
  3877fe: 4a06         	ldr	r2, [pc, #0x18]         @ 0x387818 <NetworkMessageDispatcher::getPeerKeys()+0x20>
  387800: 447a         	add	r2, pc
  387802: 4b06         	ldr	r3, [pc, #0x18]         @ 0x38781c <NetworkMessageDispatcher::getPeerKeys()+0x24>
  387804: 58d3         	ldr	r3, [r2, r3]
  387806: 681b         	ldr	r3, [r3]
  387808: 4618         	mov	r0, r3
  38780a: f20c fa3f    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x20c47e
  38780e: 4603         	mov	r3, r0
  387810: 4618         	mov	r0, r3
  387812: b003         	add	sp, #0xc
  387814: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x387817); words below are literal-pool data ---
  387818: b208         	sxth	r0, r1
  38781a: 005a         	lsls	r2, r3, #0x1
  38781c: d920         	bls	0x387860 <NetworkMessageDispatcher::getPingTimeFor(std::string)+0x40> @ imm = #0x40
  38781e: ffff b500    	<unknown>

// ==== NetworkMessageDispatcher::getPingTimeFor
//      file offset 0x387820 (= ELF address; Ghidra 0x397820), 110 bytes, Thumb-2
  387820: b500         	push	{lr}
  387822: b089         	sub	sp, #0x24
  387824: 9001         	str	r0, [sp, #0x4]
  387826: 9100         	str	r1, [sp]
  387828: 9b01         	ldr	r3, [sp, #0x4]
  38782a: 695b         	ldr	r3, [r3, #0x14]
  38782c: 4618         	mov	r0, r3
  38782e: 9900         	ldr	r1, [sp]
  387830: f20c fb5e    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x20c6bc
  387834: 4603         	mov	r3, r0
  387836: 9303         	str	r3, [sp, #0xc]
  387838: 9b03         	ldr	r3, [sp, #0xc]
  38783a: 2b00         	cmp	r3, #0x0
  38783c: d01b         	beq	0x387876 <NetworkMessageDispatcher::getPingTimeFor(std::string)+0x56> @ imm = #0x36
  38783e: f213 fe99    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x213d32
  387842: 4603         	mov	r3, r0
  387844: 681a         	ldr	r2, [r3]
  387846: 3258         	adds	r2, #0x58
  387848: 6812         	ldr	r2, [r2]
  38784a: 4618         	mov	r0, r3
  38784c: 4790         	blx	r2
  38784e: ee07 0a90    	vmov	s15, r0
  387852: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  387856: ed8d 7b04    	vstr	d7, [sp, #16]
  38785a: 9803         	ldr	r0, [sp, #0xc]
  38785c: f7f9 fa7c    	bl	0x380d58 <cocos2d::CCDouble::getValue() const> @ imm = #-0x6b08
  387860: ec41 0b16    	vmov	d6, r0, r1
  387864: ed9d 7b04    	vldr	d7, [sp, #16]
  387868: ee37 7b46    	vsub.f64	d7, d7, d6
  38786c: ed8d 7b06    	vstr	d7, [sp, #24]
  387870: ed9d 7b06    	vldr	d7, [sp, #24]
  387874: e004         	b	0x387880 <NetworkMessageDispatcher::getPingTimeFor(std::string)+0x60> @ imm = #0x8
  387876: 9b01         	ldr	r3, [sp, #0x4]
  387878: edd3 7a07    	vldr	s15, [r3, #28]
  38787c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  387880: ec53 2b17    	vmov	r2, r3, d7
  387884: 4610         	mov	r0, r2
  387886: 4619         	mov	r1, r3
  387888: b009         	add	sp, #0x24
  38788a: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkMessageDispatcher::getIMData
//      file offset 0x387890 (= ELF address; Ghidra 0x397890), 216 bytes, Thumb-2
  387890: b570         	push	{r4, r5, r6, lr}
  387892: b086         	sub	sp, #0x18
  387894: 9001         	str	r0, [sp, #0x4]
  387896: 9100         	str	r1, [sp]
  387898: 2326         	movs	r3, #0x26
  38789a: f88d 300b    	strb.w	r3, [sp, #0xb]
  38789e: 9800         	ldr	r0, [sp]
  3878a0: f02d f52e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42da5c
  3878a4: 4606         	mov	r6, r0
  3878a6: 9800         	ldr	r0, [sp]
  3878a8: f02d f3d8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42d7b0
  3878ac: 4605         	mov	r5, r0
  3878ae: 201c         	movs	r0, #0x1c
  3878b0: f000 f058    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4000b0
  3878b4: 4603         	mov	r3, r0
  3878b6: 461c         	mov	r4, r3
  3878b8: 4620         	mov	r0, r4
  3878ba: 4631         	mov	r1, r6
  3878bc: 462a         	mov	r2, r5
  3878be: f0bc fc95    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc92a
  3878c2: 9403         	str	r4, [sp, #0xc]
  3878c4: 9b03         	ldr	r3, [sp, #0xc]
  3878c6: 4618         	mov	r0, r3
  3878c8: f210 fb18    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210630
  3878cc: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x38795c <NetworkMessageDispatcher::getIMData(std::string)+0xcc>
  3878ce: 447b         	add	r3, pc
  3878d0: 9304         	str	r3, [sp, #0x10]
  3878d2: 9b04         	ldr	r3, [sp, #0x10]
  3878d4: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  3878d8: 701a         	strb	r2, [r3]
  3878da: 9b04         	ldr	r3, [sp, #0x10]
  3878dc: 3301         	adds	r3, #0x1
  3878de: 9304         	str	r3, [sp, #0x10]
  3878e0: 9b04         	ldr	r3, [sp, #0x10]
  3878e2: 2200         	movs	r2, #0x0
  3878e4: 701a         	strb	r2, [r3]
  3878e6: 9b04         	ldr	r3, [sp, #0x10]
  3878e8: 3301         	adds	r3, #0x1
  3878ea: 9304         	str	r3, [sp, #0x10]
  3878ec: 9803         	ldr	r0, [sp, #0xc]
  3878ee: f0bc fd23    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbca46
  3878f2: 4604         	mov	r4, r0
  3878f4: 9803         	ldr	r0, [sp, #0xc]
  3878f6: f0bc fd27    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbca4e
  3878fa: 4603         	mov	r3, r0
  3878fc: 9804         	ldr	r0, [sp, #0x10]
  3878fe: 4621         	mov	r1, r4
  387900: 461a         	mov	r2, r3
  387902: f74e eb20    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb19c0
  387906: 9803         	ldr	r0, [sp, #0xc]
  387908: f0bc fd1e    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbca3c
  38790c: 4603         	mov	r3, r0
  38790e: 9a04         	ldr	r2, [sp, #0x10]
  387910: 4413         	add	r3, r2
  387912: 9304         	str	r3, [sp, #0x10]
  387914: 201c         	movs	r0, #0x1c
  387916: f000 f025    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x40004a
  38791a: 4603         	mov	r3, r0
  38791c: 461c         	mov	r4, r3
  38791e: 9a04         	ldr	r2, [sp, #0x10]
  387920: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x387960 <NetworkMessageDispatcher::getIMData(std::string)+0xd0>
  387922: 447b         	add	r3, pc
  387924: 1ad3         	subs	r3, r2, r3
  387926: 4620         	mov	r0, r4
  387928: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x387964 <NetworkMessageDispatcher::getIMData(std::string)+0xd4>
  38792a: 447a         	add	r2, pc
  38792c: 4611         	mov	r1, r2
  38792e: 461a         	mov	r2, r3
  387930: f0bc fc5c    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc8b8
  387934: 9405         	str	r4, [sp, #0x14]
  387936: 9b05         	ldr	r3, [sp, #0x14]
  387938: 4618         	mov	r0, r3
  38793a: f210 fadf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2105be
  38793e: 9b05         	ldr	r3, [sp, #0x14]
  387940: e009         	b	0x387956 <NetworkMessageDispatcher::getIMData(std::string)+0xc6> @ imm = #0x12
  387942: 4620         	mov	r0, r4
  387944: f000 f3ae    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40075c
  387948: f000 f3b0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400760
  38794c: 4620         	mov	r0, r4
  38794e: f000 f3a9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400752
  387952: f000 f3ab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400756
  387956: 4618         	mov	r0, r3
  387958: b006         	add	sp, #0x18
  38795a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x38795b); words below are literal-pool data ---
  38795c: 9216         	str	r2, [sp, #0x58]
  38795e: 005b         	lsls	r3, r3, #0x1
  387960: 91c2         	str	r1, [sp, #0x308]
  387962: 005b         	lsls	r3, r3, #0x1
  387964: 91ba         	str	r1, [sp, #0x2e8]
  387966: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPlayerPowerUpData
//      file offset 0x387968 (= ELF address; Ghidra 0x397968), 148 bytes, Thumb-2
  387968: b510         	push	{r4, lr}
  38796a: b088         	sub	sp, #0x20
  38796c: 9003         	str	r0, [sp, #0xc]
  38796e: 9102         	str	r1, [sp, #0x8]
  387970: 4613         	mov	r3, r2
  387972: f88d 3007    	strb.w	r3, [sp, #0x7]
  387976: 2322         	movs	r3, #0x22
  387978: f88d 3015    	strb.w	r3, [sp, #0x15]
  38797c: 9b02         	ldr	r3, [sp, #0x8]
  38797e: f8ad 3016    	strh.w	r3, [sp, #0x16]
  387982: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3879f0 <NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool)+0x88>
  387984: 447b         	add	r3, pc
  387986: 9306         	str	r3, [sp, #0x18]
  387988: 9b06         	ldr	r3, [sp, #0x18]
  38798a: f89d 2015    	ldrb.w	r2, [sp, #0x15]
  38798e: 701a         	strb	r2, [r3]
  387990: 9b06         	ldr	r3, [sp, #0x18]
  387992: 3301         	adds	r3, #0x1
  387994: 9306         	str	r3, [sp, #0x18]
  387996: 9b06         	ldr	r3, [sp, #0x18]
  387998: f8bd 2016    	ldrh.w	r2, [sp, #0x16]
  38799c: 801a         	strh	r2, [r3]
  38799e: 9b06         	ldr	r3, [sp, #0x18]
  3879a0: 3302         	adds	r3, #0x2
  3879a2: 9306         	str	r3, [sp, #0x18]
  3879a4: 9b06         	ldr	r3, [sp, #0x18]
  3879a6: f89d 2007    	ldrb.w	r2, [sp, #0x7]
  3879aa: 701a         	strb	r2, [r3]
  3879ac: 9b06         	ldr	r3, [sp, #0x18]
  3879ae: 3301         	adds	r3, #0x1
  3879b0: 9306         	str	r3, [sp, #0x18]
  3879b2: 201c         	movs	r0, #0x1c
  3879b4: f3ff ffd6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3fffac
  3879b8: 4603         	mov	r3, r0
  3879ba: 461c         	mov	r4, r3
  3879bc: 9a06         	ldr	r2, [sp, #0x18]
  3879be: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3879f4 <NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool)+0x8c>
  3879c0: 447b         	add	r3, pc
  3879c2: 1ad3         	subs	r3, r2, r3
  3879c4: 4620         	mov	r0, r4
  3879c6: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3879f8 <NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool)+0x90>
  3879c8: 447a         	add	r2, pc
  3879ca: 4611         	mov	r1, r2
  3879cc: 461a         	mov	r2, r3
  3879ce: f0bc fc0d    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc81a
  3879d2: 9407         	str	r4, [sp, #0x1c]
  3879d4: 9b07         	ldr	r3, [sp, #0x1c]
  3879d6: 4618         	mov	r0, r3
  3879d8: f210 fa90    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x210520
  3879dc: 9b07         	ldr	r3, [sp, #0x1c]
  3879de: e004         	b	0x3879ea <NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool)+0x82> @ imm = #0x8
  3879e0: 4620         	mov	r0, r4
  3879e2: f000 f35f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4006be
  3879e6: f000 f361    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4006c2
  3879ea: 4618         	mov	r0, r3
  3879ec: b008         	add	sp, #0x20
  3879ee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3879ef); words below are literal-pool data ---
  3879f0: 9160         	str	r1, [sp, #0x180]
  3879f2: 005b         	lsls	r3, r3, #0x1
  3879f4: 9124         	str	r1, [sp, #0x90]
  3879f6: 005b         	lsls	r3, r3, #0x1
  3879f8: 911c         	str	r1, [sp, #0x70]
  3879fa: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getPlayerListData
//      file offset 0x3879fc (= ELF address; Ghidra 0x3979fc), 14 bytes, Thumb-2
  3879fc: b082         	sub	sp, #0x8
  3879fe: 9001         	str	r0, [sp, #0x4]
  387a00: 9100         	str	r1, [sp]
  387a02: 2300         	movs	r3, #0x0
  387a04: 4618         	mov	r0, r3
  387a06: b002         	add	sp, #0x8
  387a08: 4770         	bx	lr

// ==== NetworkMessageDispatcher::getEnemySpawnData
//      file offset 0x387a0c (= ELF address; Ghidra 0x397a0c), 224 bytes, Thumb-2
  387a0c: b570         	push	{r4, r5, r6, lr}
  387a0e: b088         	sub	sp, #0x20
  387a10: 9003         	str	r0, [sp, #0xc]
  387a12: 9102         	str	r1, [sp, #0x8]
  387a14: 4613         	mov	r3, r2
  387a16: f8ad 3006    	strh.w	r3, [sp, #0x6]
  387a1a: 2328         	movs	r3, #0x28
  387a1c: f88d 3013    	strb.w	r3, [sp, #0x13]
  387a20: 9802         	ldr	r0, [sp, #0x8]
  387a22: f02d f46d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42d8da
  387a26: 4606         	mov	r6, r0
  387a28: 9802         	ldr	r0, [sp, #0x8]
  387a2a: f02d f317    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42d62e
  387a2e: 4605         	mov	r5, r0
  387a30: 201c         	movs	r0, #0x1c
  387a32: f3ff ff97    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3fff2e
  387a36: 4603         	mov	r3, r0
  387a38: 461c         	mov	r4, r3
  387a3a: 4620         	mov	r0, r4
  387a3c: 4631         	mov	r1, r6
  387a3e: 462a         	mov	r2, r5
  387a40: f0bc fbd4    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc7a8
  387a44: 9405         	str	r4, [sp, #0x14]
  387a46: 9b05         	ldr	r3, [sp, #0x14]
  387a48: 4618         	mov	r0, r3
  387a4a: f210 fa57    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2104ae
  387a4e: 4b24         	ldr	r3, [pc, #0x90]         @ 0x387ae0 <NetworkMessageDispatcher::getEnemySpawnData(std::string, short)+0xd4>
  387a50: 447b         	add	r3, pc
  387a52: 9306         	str	r3, [sp, #0x18]
  387a54: 9b06         	ldr	r3, [sp, #0x18]
  387a56: f89d 2013    	ldrb.w	r2, [sp, #0x13]
  387a5a: 701a         	strb	r2, [r3]
  387a5c: 9b06         	ldr	r3, [sp, #0x18]
  387a5e: 3301         	adds	r3, #0x1
  387a60: 9306         	str	r3, [sp, #0x18]
  387a62: 9b06         	ldr	r3, [sp, #0x18]
  387a64: f8bd 2006    	ldrh.w	r2, [sp, #0x6]
  387a68: 801a         	strh	r2, [r3]
  387a6a: 9b06         	ldr	r3, [sp, #0x18]
  387a6c: 3302         	adds	r3, #0x2
  387a6e: 9306         	str	r3, [sp, #0x18]
  387a70: 9805         	ldr	r0, [sp, #0x14]
  387a72: f0bc fc61    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbc8c2
  387a76: 4604         	mov	r4, r0
  387a78: 9805         	ldr	r0, [sp, #0x14]
  387a7a: f0bc fc65    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbc8ca
  387a7e: 4603         	mov	r3, r0
  387a80: 9806         	ldr	r0, [sp, #0x18]
  387a82: 4621         	mov	r1, r4
  387a84: 461a         	mov	r2, r3
  387a86: f74e ea5e    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb1b44
  387a8a: 9805         	ldr	r0, [sp, #0x14]
  387a8c: f0bc fc5c    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbc8b8
  387a90: 4603         	mov	r3, r0
  387a92: 9a06         	ldr	r2, [sp, #0x18]
  387a94: 4413         	add	r3, r2
  387a96: 9306         	str	r3, [sp, #0x18]
  387a98: 201c         	movs	r0, #0x1c
  387a9a: f3ff ff63    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3ffec6
  387a9e: 4603         	mov	r3, r0
  387aa0: 461c         	mov	r4, r3
  387aa2: 9a06         	ldr	r2, [sp, #0x18]
  387aa4: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x387ae4 <NetworkMessageDispatcher::getEnemySpawnData(std::string, short)+0xd8>
  387aa6: 447b         	add	r3, pc
  387aa8: 1ad3         	subs	r3, r2, r3
  387aaa: 4620         	mov	r0, r4
  387aac: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x387ae8 <NetworkMessageDispatcher::getEnemySpawnData(std::string, short)+0xdc>
  387aae: 447a         	add	r2, pc
  387ab0: 4611         	mov	r1, r2
  387ab2: 461a         	mov	r2, r3
  387ab4: f0bc fb9a    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc734
  387ab8: 9407         	str	r4, [sp, #0x1c]
  387aba: 9b07         	ldr	r3, [sp, #0x1c]
  387abc: 4618         	mov	r0, r3
  387abe: f210 fa1d    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21043a
  387ac2: 9b07         	ldr	r3, [sp, #0x1c]
  387ac4: e009         	b	0x387ada <NetworkMessageDispatcher::getEnemySpawnData(std::string, short)+0xce> @ imm = #0x12
  387ac6: 4620         	mov	r0, r4
  387ac8: f000 f2ec    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4005d8
  387acc: f000 f2ee    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4005dc
  387ad0: 4620         	mov	r0, r4
  387ad2: f000 f2e7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4005ce
  387ad6: f000 f2e9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4005d2
  387ada: 4618         	mov	r0, r3
  387adc: b008         	add	sp, #0x20
  387ade: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x387adf); words below are literal-pool data ---
  387ae0: 9094         	str	r0, [sp, #0x250]
  387ae2: 005b         	lsls	r3, r3, #0x1
  387ae4: 903e         	str	r0, [sp, #0xf8]
  387ae6: 005b         	lsls	r3, r3, #0x1
  387ae8: 9036         	str	r0, [sp, #0xd8]
  387aea: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::getEnemyDestroyData
//      file offset 0x387aec (= ELF address; Ghidra 0x397aec), 204 bytes, Thumb-2
  387aec: b570         	push	{r4, r5, r6, lr}
  387aee: b086         	sub	sp, #0x18
  387af0: 9001         	str	r0, [sp, #0x4]
  387af2: 9100         	str	r1, [sp]
  387af4: 232a         	movs	r3, #0x2a
  387af6: f88d 300b    	strb.w	r3, [sp, #0xb]
  387afa: 9800         	ldr	r0, [sp]
  387afc: f02d f400    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42d800
  387b00: 4606         	mov	r6, r0
  387b02: 9800         	ldr	r0, [sp]
  387b04: f02d f2aa    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42d554
  387b08: 4605         	mov	r5, r0
  387b0a: 201c         	movs	r0, #0x1c
  387b0c: f3ff ff2a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3ffe54
  387b10: 4603         	mov	r3, r0
  387b12: 461c         	mov	r4, r3
  387b14: 4620         	mov	r0, r4
  387b16: 4631         	mov	r1, r6
  387b18: 462a         	mov	r2, r5
  387b1a: f0bc fb67    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc6ce
  387b1e: 9403         	str	r4, [sp, #0xc]
  387b20: 9b03         	ldr	r3, [sp, #0xc]
  387b22: 4618         	mov	r0, r3
  387b24: f210 f9ea    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2103d4
  387b28: 4b20         	ldr	r3, [pc, #0x80]         @ 0x387bac <NetworkMessageDispatcher::getEnemyDestroyData(std::string)+0xc0>
  387b2a: 447b         	add	r3, pc
  387b2c: 9304         	str	r3, [sp, #0x10]
  387b2e: 9b04         	ldr	r3, [sp, #0x10]
  387b30: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  387b34: 701a         	strb	r2, [r3]
  387b36: 9b04         	ldr	r3, [sp, #0x10]
  387b38: 3301         	adds	r3, #0x1
  387b3a: 9304         	str	r3, [sp, #0x10]
  387b3c: 9803         	ldr	r0, [sp, #0xc]
  387b3e: f0bc fbfb    	bl	0x444338 <cocos2d::extension::CCData::getBytes()> @ imm = #0xbc7f6
  387b42: 4604         	mov	r4, r0
  387b44: 9803         	ldr	r0, [sp, #0xc]
  387b46: f0bc fbff    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbc7fe
  387b4a: 4603         	mov	r3, r0
  387b4c: 9804         	ldr	r0, [sp, #0x10]
  387b4e: 4621         	mov	r1, r4
  387b50: 461a         	mov	r2, r3
  387b52: f74e e9f8    	blx	0x2d5f44 <.plt+0x74>    @ imm = #-0xb1c10
  387b56: 9803         	ldr	r0, [sp, #0xc]
  387b58: f0bc fbf6    	bl	0x444348 <cocos2d::extension::CCData::getSize()> @ imm = #0xbc7ec
  387b5c: 4603         	mov	r3, r0
  387b5e: 9a04         	ldr	r2, [sp, #0x10]
  387b60: 4413         	add	r3, r2
  387b62: 9304         	str	r3, [sp, #0x10]
  387b64: 201c         	movs	r0, #0x1c
  387b66: f3ff fefd    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3ffdfa
  387b6a: 4603         	mov	r3, r0
  387b6c: 461c         	mov	r4, r3
  387b6e: 9a04         	ldr	r2, [sp, #0x10]
  387b70: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x387bb0 <NetworkMessageDispatcher::getEnemyDestroyData(std::string)+0xc4>
  387b72: 447b         	add	r3, pc
  387b74: 1ad3         	subs	r3, r2, r3
  387b76: 4620         	mov	r0, r4
  387b78: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x387bb4 <NetworkMessageDispatcher::getEnemyDestroyData(std::string)+0xc8>
  387b7a: 447a         	add	r2, pc
  387b7c: 4611         	mov	r1, r2
  387b7e: 461a         	mov	r2, r3
  387b80: f0bc fb34    	bl	0x4441ec <cocos2d::extension::CCData::CCData(unsigned char*, unsigned long)> @ imm = #0xbc668
  387b84: 9405         	str	r4, [sp, #0x14]
  387b86: 9b05         	ldr	r3, [sp, #0x14]
  387b88: 4618         	mov	r0, r3
  387b8a: f210 f9b7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x21036e
  387b8e: 9b05         	ldr	r3, [sp, #0x14]
  387b90: e009         	b	0x387ba6 <NetworkMessageDispatcher::getEnemyDestroyData(std::string)+0xba> @ imm = #0x12
  387b92: 4620         	mov	r0, r4
  387b94: f000 f286    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x40050c
  387b98: f000 f288    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400510
  387b9c: 4620         	mov	r0, r4
  387b9e: f000 f281    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x400502
  387ba2: f000 f283    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x400506
  387ba6: 4618         	mov	r0, r3
  387ba8: b006         	add	sp, #0x18
  387baa: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x387bab); words below are literal-pool data ---
  387bac: 8fba         	ldrh	r2, [r7, #0x3c]
  387bae: 005b         	lsls	r3, r3, #0x1
  387bb0: 8f72         	ldrh	r2, [r6, #0x3a]
  387bb2: 005b         	lsls	r3, r3, #0x1
  387bb4: 8f6a         	ldrh	r2, [r5, #0x3a]
  387bb6: 005b         	lsls	r3, r3, #0x1

// ==== NetworkMessageDispatcher::filterText
//      file offset 0x387bb8 (= ELF address; Ghidra 0x397bb8), 412 bytes, Thumb-2
  387bb8: b510         	push	{r4, lr}
  387bba: b086         	sub	sp, #0x18
  387bbc: 9003         	str	r0, [sp, #0xc]
  387bbe: 9102         	str	r1, [sp, #0x8]
  387bc0: 9201         	str	r2, [sp, #0x4]
  387bc2: 4b61         	ldr	r3, [pc, #0x184]        @ 0x387d48 <NetworkMessageDispatcher::filterText(std::string)+0x190>
  387bc4: 447b         	add	r3, pc
  387bc6: 4a61         	ldr	r2, [pc, #0x184]        @ 0x387d4c <NetworkMessageDispatcher::filterText(std::string)+0x194>
  387bc8: 589a         	ldr	r2, [r3, r2]
  387bca: 6812         	ldr	r2, [r2]
  387bcc: 2a01         	cmp	r2, #0x1
  387bce: f040 80a9    	bne.w	0x387d24 <NetworkMessageDispatcher::filterText(std::string)+0x16c> @ imm = #0x152
  387bd2: 9801         	ldr	r0, [sp, #0x4]
  387bd4: f02d f74e    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42de9c
  387bd8: 4604         	mov	r4, r0
  387bda: 9801         	ldr	r0, [sp, #0x4]
  387bdc: f02d f766    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42decc
  387be0: 4601         	mov	r1, r0
  387be2: 2361         	movs	r3, #0x61
  387be4: f88d 3016    	strb.w	r3, [sp, #0x16]
  387be8: 235f         	movs	r3, #0x5f
  387bea: f88d 3017    	strb.w	r3, [sp, #0x17]
  387bee: f10d 0216    	add.w	r2, sp, #0x16
  387bf2: f10d 0317    	add.w	r3, sp, #0x17
  387bf6: 4620         	mov	r0, r4
  387bf8: f000 f8ac    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0x158
  387bfc: 9801         	ldr	r0, [sp, #0x4]
  387bfe: f02d f739    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42de72
  387c02: 4604         	mov	r4, r0
  387c04: 9801         	ldr	r0, [sp, #0x4]
  387c06: f02d f751    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42dea2
  387c0a: 4601         	mov	r1, r0
  387c0c: 2365         	movs	r3, #0x65
  387c0e: f88d 3016    	strb.w	r3, [sp, #0x16]
  387c12: 235f         	movs	r3, #0x5f
  387c14: f88d 3017    	strb.w	r3, [sp, #0x17]
  387c18: f10d 0216    	add.w	r2, sp, #0x16
  387c1c: f10d 0317    	add.w	r3, sp, #0x17
  387c20: 4620         	mov	r0, r4
  387c22: f000 f897    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0x12e
  387c26: 9801         	ldr	r0, [sp, #0x4]
  387c28: f02d f724    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42de48
  387c2c: 4604         	mov	r4, r0
  387c2e: 9801         	ldr	r0, [sp, #0x4]
  387c30: f02d f73c    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42de78
  387c34: 4601         	mov	r1, r0
  387c36: 2369         	movs	r3, #0x69
  387c38: f88d 3016    	strb.w	r3, [sp, #0x16]
  387c3c: 235f         	movs	r3, #0x5f
  387c3e: f88d 3017    	strb.w	r3, [sp, #0x17]
  387c42: f10d 0216    	add.w	r2, sp, #0x16
  387c46: f10d 0317    	add.w	r3, sp, #0x17
  387c4a: 4620         	mov	r0, r4
  387c4c: f000 f882    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0x104
  387c50: 9801         	ldr	r0, [sp, #0x4]
  387c52: f02d f70f    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42de1e
  387c56: 4604         	mov	r4, r0
  387c58: 9801         	ldr	r0, [sp, #0x4]
  387c5a: f02d f727    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42de4e
  387c5e: 4601         	mov	r1, r0
  387c60: 2375         	movs	r3, #0x75
  387c62: f88d 3016    	strb.w	r3, [sp, #0x16]
  387c66: 235f         	movs	r3, #0x5f
  387c68: f88d 3017    	strb.w	r3, [sp, #0x17]
  387c6c: f10d 0216    	add.w	r2, sp, #0x16
  387c70: f10d 0317    	add.w	r3, sp, #0x17
  387c74: 4620         	mov	r0, r4
  387c76: f000 f86d    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0xda
  387c7a: 9801         	ldr	r0, [sp, #0x4]
  387c7c: f02d f6fa    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42ddf4
  387c80: 4604         	mov	r4, r0
  387c82: 9801         	ldr	r0, [sp, #0x4]
  387c84: f02d f712    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42de24
  387c88: 4601         	mov	r1, r0
  387c8a: 2341         	movs	r3, #0x41
  387c8c: f88d 3016    	strb.w	r3, [sp, #0x16]
  387c90: 235f         	movs	r3, #0x5f
  387c92: f88d 3017    	strb.w	r3, [sp, #0x17]
  387c96: f10d 0216    	add.w	r2, sp, #0x16
  387c9a: f10d 0317    	add.w	r3, sp, #0x17
  387c9e: 4620         	mov	r0, r4
  387ca0: f000 f858    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0xb0
  387ca4: 9801         	ldr	r0, [sp, #0x4]
  387ca6: f02d f6e5    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42ddca
  387caa: 4604         	mov	r4, r0
  387cac: 9801         	ldr	r0, [sp, #0x4]
  387cae: f02d f6fd    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42ddfa
  387cb2: 4601         	mov	r1, r0
  387cb4: 2345         	movs	r3, #0x45
  387cb6: f88d 3016    	strb.w	r3, [sp, #0x16]
  387cba: 235f         	movs	r3, #0x5f
  387cbc: f88d 3017    	strb.w	r3, [sp, #0x17]
  387cc0: f10d 0216    	add.w	r2, sp, #0x16
  387cc4: f10d 0317    	add.w	r3, sp, #0x17
  387cc8: 4620         	mov	r0, r4
  387cca: f000 f843    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0x86
  387cce: 9801         	ldr	r0, [sp, #0x4]
  387cd0: f02d f6d0    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42dda0
  387cd4: 4604         	mov	r4, r0
  387cd6: 9801         	ldr	r0, [sp, #0x4]
  387cd8: f02d f6e8    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42ddd0
  387cdc: 4601         	mov	r1, r0
  387cde: 2349         	movs	r3, #0x49
  387ce0: f88d 3016    	strb.w	r3, [sp, #0x16]
  387ce4: 235f         	movs	r3, #0x5f
  387ce6: f88d 3017    	strb.w	r3, [sp, #0x17]
  387cea: f10d 0216    	add.w	r2, sp, #0x16
  387cee: f10d 0317    	add.w	r3, sp, #0x17
  387cf2: 4620         	mov	r0, r4
  387cf4: f000 f82e    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0x5c
  387cf8: 9801         	ldr	r0, [sp, #0x4]
  387cfa: f02d f6bb    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x42dd76
  387cfe: 4604         	mov	r4, r0
  387d00: 9801         	ldr	r0, [sp, #0x4]
  387d02: f02d f6d3    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x42dda6
  387d06: 4601         	mov	r1, r0
  387d08: 2355         	movs	r3, #0x55
  387d0a: f88d 3016    	strb.w	r3, [sp, #0x16]
  387d0e: 235f         	movs	r3, #0x5f
  387d10: f88d 3017    	strb.w	r3, [sp, #0x17]
  387d14: f10d 0216    	add.w	r2, sp, #0x16
  387d18: f10d 0317    	add.w	r3, sp, #0x17
  387d1c: 4620         	mov	r0, r4
  387d1e: f000 f819    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #0x32
  387d22: e00a         	b	0x387d3a <NetworkMessageDispatcher::filterText(std::string)+0x182> @ imm = #0x14
  387d24: 4a09         	ldr	r2, [pc, #0x24]         @ 0x387d4c <NetworkMessageDispatcher::filterText(std::string)+0x194>
  387d26: 589b         	ldr	r3, [r3, r2]
  387d28: 681b         	ldr	r3, [r3]
  387d2a: 2b02         	cmp	r3, #0x2
  387d2c: d105         	bne	0x387d3a <NetworkMessageDispatcher::filterText(std::string)+0x182> @ imm = #0xa
  387d2e: 9801         	ldr	r0, [sp, #0x4]
  387d30: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x387d50 <NetworkMessageDispatcher::filterText(std::string)+0x198>
  387d32: 447b         	add	r3, pc
  387d34: 4619         	mov	r1, r3
  387d36: f02e f09b    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x42e136
  387d3a: 9803         	ldr	r0, [sp, #0xc]
  387d3c: 9901         	ldr	r1, [sp, #0x4]
  387d3e: f02d f23f    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x42d47e
  387d42: 9803         	ldr	r0, [sp, #0xc]
  387d44: b006         	add	sp, #0x18
  387d46: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x387d47); words below are literal-pool data ---
  387d48: ae44         	add	r6, sp, #0x110
  387d4a: 005a         	lsls	r2, r3, #0x1
  387d4c: d790         	bvc	0x387c70 <NetworkMessageDispatcher::filterText(std::string)+0xb8> @ imm = #-0xe0
  387d4e: ffff 8aba    	<unknown>
  387d52: 0044         	lsls	r4, r0, #0x1
