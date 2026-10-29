// PlayerLobbyOnline: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlayerLobbyOnline.cpp

// ==== PlayerLobbyOnline::create
//      file offset 0x350f14 (= ELF address; Ghidra 0x360f14), 112 bytes, Thumb-2
  350f14: b510         	push	{r4, lr}
  350f16: b082         	sub	sp, #0x8
  350f18: f44f 70be    	mov.w	r0, #0x17c
  350f1c: f036 f522    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x436a44
  350f20: 4603         	mov	r3, r0
  350f22: 461c         	mov	r4, r3
  350f24: 4620         	mov	r0, r4
  350f26: f051 f8e1    	bl	0x3a20ec <PlayerLobbyOnline::PlayerLobbyOnline()> @ imm = #0x511c2
  350f2a: 9401         	str	r4, [sp, #0x4]
  350f2c: 9b01         	ldr	r3, [sp, #0x4]
  350f2e: 2b00         	cmp	r3, #0x0
  350f30: d00a         	beq	0x350f48 <PlayerLobbyOnline::create()+0x34> @ imm = #0x14
  350f32: 9b01         	ldr	r3, [sp, #0x4]
  350f34: 681b         	ldr	r3, [r3]
  350f36: 3318         	adds	r3, #0x18
  350f38: 681b         	ldr	r3, [r3]
  350f3a: 9801         	ldr	r0, [sp, #0x4]
  350f3c: 4798         	blx	r3
  350f3e: 4603         	mov	r3, r0
  350f40: 2b00         	cmp	r3, #0x0
  350f42: d001         	beq	0x350f48 <PlayerLobbyOnline::create()+0x34> @ imm = #0x2
  350f44: 2301         	movs	r3, #0x1
  350f46: e000         	b	0x350f4a <PlayerLobbyOnline::create()+0x36> @ imm = #0x0
  350f48: 2300         	movs	r3, #0x0
  350f4a: 2b00         	cmp	r3, #0x0
  350f4c: d005         	beq	0x350f5a <PlayerLobbyOnline::create()+0x46> @ imm = #0xa
  350f4e: 9b01         	ldr	r3, [sp, #0x4]
  350f50: 4618         	mov	r0, r3
  350f52: f246 ffd3    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x246fa6
  350f56: 9b01         	ldr	r3, [sp, #0x4]
  350f58: e011         	b	0x350f7e <PlayerLobbyOnline::create()+0x6a> @ imm = #0x22
  350f5a: 9b01         	ldr	r3, [sp, #0x4]
  350f5c: 2b00         	cmp	r3, #0x0
  350f5e: d005         	beq	0x350f6c <PlayerLobbyOnline::create()+0x58> @ imm = #0xa
  350f60: 9b01         	ldr	r3, [sp, #0x4]
  350f62: 681b         	ldr	r3, [r3]
  350f64: 3308         	adds	r3, #0x8
  350f66: 681b         	ldr	r3, [r3]
  350f68: 9801         	ldr	r0, [sp, #0x4]
  350f6a: 4798         	blx	r3
  350f6c: 2300         	movs	r3, #0x0
  350f6e: 9301         	str	r3, [sp, #0x4]
  350f70: 2300         	movs	r3, #0x0
  350f72: e004         	b	0x350f7e <PlayerLobbyOnline::create()+0x6a> @ imm = #0x8
  350f74: 4620         	mov	r0, r4
  350f76: f037 f095    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43712a
  350f7a: f037 f097    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43712e
  350f7e: 4618         	mov	r0, r3
  350f80: b002         	add	sp, #0x8
  350f82: bd10         	pop	{r4, pc}

// ==== PlayerLobbyOnline::PlayerLobbyOnline
//      file offset 0x3a20ec (= ELF address; Ghidra 0x3b20ec), 88 bytes, Thumb-2
  3a20ec: b510         	push	{r4, lr}
  3a20ee: b082         	sub	sp, #0x8
  3a20f0: 9001         	str	r0, [sp, #0x4]
  3a20f2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3a213c <PlayerLobbyOnline::PlayerLobbyOnline()+0x50>
  3a20f4: 447c         	add	r4, pc
  3a20f6: 9b01         	ldr	r3, [sp, #0x4]
  3a20f8: 4618         	mov	r0, r3
  3a20fa: f7f7 fe87    	bl	0x399e0c <PlayerLobby::PlayerLobby()> @ imm = #-0x82f2
  3a20fe: 9b01         	ldr	r3, [sp, #0x4]
  3a2100: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a2140 <PlayerLobbyOnline::PlayerLobbyOnline()+0x54>
  3a2102: 58a2         	ldr	r2, [r4, r2]
  3a2104: 3208         	adds	r2, #0x8
  3a2106: 601a         	str	r2, [r3]
  3a2108: 9b01         	ldr	r3, [sp, #0x4]
  3a210a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a2140 <PlayerLobbyOnline::PlayerLobbyOnline()+0x54>
  3a210c: 58a2         	ldr	r2, [r4, r2]
  3a210e: f502 7219    	add.w	r2, r2, #0x264
  3a2112: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3a2116: 9b01         	ldr	r3, [sp, #0x4]
  3a2118: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3a2140 <PlayerLobbyOnline::PlayerLobbyOnline()+0x54>
  3a211a: 58a2         	ldr	r2, [r4, r2]
  3a211c: f502 7223    	add.w	r2, r2, #0x28c
  3a2120: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a2124: 9b01         	ldr	r3, [sp, #0x4]
  3a2126: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a2140 <PlayerLobbyOnline::PlayerLobbyOnline()+0x54>
  3a2128: 58a2         	ldr	r2, [r4, r2]
  3a212a: f502 722b    	add.w	r2, r2, #0x2ac
  3a212e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3a2132: 9b01         	ldr	r3, [sp, #0x4]
  3a2134: 4618         	mov	r0, r3
  3a2136: b002         	add	sp, #0x8
  3a2138: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a2139); words below are literal-pool data ---
  3a213a: bf00         	nop
  3a213c: 0914         	lsrs	r4, r2, #0x4
  3a213e: 0059         	lsls	r1, r3, #0x1
  3a2140: dd64         	ble	0x3a220c <PlayerLobbyOnline::init()+0xc8> @ imm = #0xc8
  3a2142: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobbyOnline::init
//      file offset 0x3a2144 (= ELF address; Ghidra 0x3b2144), 276 bytes, Thumb-2
  3a2144: b530         	push	{r4, r5, lr}
  3a2146: b08b         	sub	sp, #0x2c
  3a2148: 9003         	str	r0, [sp, #0xc]
  3a214a: 4c3c         	ldr	r4, [pc, #0xf0]         @ 0x3a223c <PlayerLobbyOnline::init()+0xf8>
  3a214c: 447c         	add	r4, pc
  3a214e: 9b03         	ldr	r3, [sp, #0xc]
  3a2150: 4618         	mov	r0, r3
  3a2152: f7f7 fecb    	bl	0x399eec <PlayerLobby::init()> @ imm = #-0x826a
  3a2156: 4603         	mov	r3, r0
  3a2158: f083 0301    	eor	r3, r3, #0x1
  3a215c: b2db         	uxtb	r3, r3
  3a215e: 2b00         	cmp	r3, #0x0
  3a2160: d001         	beq	0x3a2166 <PlayerLobbyOnline::init()+0x22> @ imm = #0x2
  3a2162: 2300         	movs	r3, #0x0
  3a2164: e067         	b	0x3a2236 <PlayerLobbyOnline::init()+0xf2> @ imm = #0xce
  3a2166: 9b03         	ldr	r3, [sp, #0xc]
  3a2168: 2200         	movs	r2, #0x0
  3a216a: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a216e: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3a2240 <PlayerLobbyOnline::init()+0xfc>
  3a2170: 58e3         	ldr	r3, [r4, r3]
  3a2172: 681b         	ldr	r3, [r3]
  3a2174: 2b04         	cmp	r3, #0x4
  3a2176: d134         	bne	0x3a21e2 <PlayerLobbyOnline::init()+0x9e> @ imm = #0x68
  3a2178: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3a2244 <PlayerLobbyOnline::init()+0x100>
  3a217a: 58e3         	ldr	r3, [r4, r3]
  3a217c: 681b         	ldr	r3, [r3]
  3a217e: 4618         	mov	r0, r3
  3a2180: f1f1 fd84    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x1f1b08
  3a2184: 4603         	mov	r3, r0
  3a2186: 9306         	str	r3, [sp, #0x18]
  3a2188: 2000         	movs	r0, #0x0
  3a218a: f733 ef3c    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0xcc188
  3a218e: 9007         	str	r0, [sp, #0x1c]
  3a2190: 9d07         	ldr	r5, [sp, #0x1c]
  3a2192: 9806         	ldr	r0, [sp, #0x18]
  3a2194: f1f7 ffa4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1f7f48
  3a2198: 4603         	mov	r3, r0
  3a219a: 4628         	mov	r0, r5
  3a219c: 4619         	mov	r1, r3
  3a219e: f01c f41d    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x41c83a
  3a21a2: 460b         	mov	r3, r1
  3a21a4: 9305         	str	r3, [sp, #0x14]
  3a21a6: 9d05         	ldr	r5, [sp, #0x14]
  3a21a8: 9806         	ldr	r0, [sp, #0x18]
  3a21aa: f1f7 ff99    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1f7f32
  3a21ae: 4603         	mov	r3, r0
  3a21b0: 429d         	cmp	r5, r3
  3a21b2: bf34         	ite	lo
  3a21b4: 2300         	movlo	r3, #0x0
  3a21b6: 2301         	movhs	r3, #0x1
  3a21b8: b2db         	uxtb	r3, r3
  3a21ba: 2b00         	cmp	r3, #0x0
  3a21bc: d001         	beq	0x3a21c2 <PlayerLobbyOnline::init()+0x7e> @ imm = #0x2
  3a21be: 2300         	movs	r3, #0x0
  3a21c0: 9305         	str	r3, [sp, #0x14]
  3a21c2: 9b05         	ldr	r3, [sp, #0x14]
  3a21c4: 9806         	ldr	r0, [sp, #0x18]
  3a21c6: 4619         	mov	r1, r3
  3a21c8: f1f7 ffaa    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f7f54
  3a21cc: 4603         	mov	r3, r0
  3a21ce: 4618         	mov	r0, r3
  3a21d0: f1f7 fbaa    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f7754
  3a21d4: 4603         	mov	r3, r0
  3a21d6: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x3a2248 <PlayerLobbyOnline::init()+0x104>
  3a21d8: 58a2         	ldr	r2, [r4, r2]
  3a21da: 4610         	mov	r0, r2
  3a21dc: 4619         	mov	r1, r3
  3a21de: f013 f647    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x413c8e
  3a21e2: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3a2240 <PlayerLobbyOnline::init()+0xfc>
  3a21e4: 58e3         	ldr	r3, [r4, r3]
  3a21e6: 681b         	ldr	r3, [r3]
  3a21e8: 2b02         	cmp	r3, #0x2
  3a21ea: d10f         	bne	0x3a220c <PlayerLobbyOnline::init()+0xc8> @ imm = #0x1e
  3a21ec: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3a2248 <PlayerLobbyOnline::init()+0x104>
  3a21ee: 58e3         	ldr	r3, [r4, r3]
  3a21f0: 4618         	mov	r0, r3
  3a21f2: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3a224c <PlayerLobbyOnline::init()+0x108>
  3a21f4: 447b         	add	r3, pc
  3a21f6: 4619         	mov	r1, r3
  3a21f8: f013 f63a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x413c74
  3a21fc: 9b03         	ldr	r3, [sp, #0xc]
  3a21fe: 681b         	ldr	r3, [r3]
  3a2200: f503 73e2    	add.w	r3, r3, #0x1c4
  3a2204: 681b         	ldr	r3, [r3]
  3a2206: 9a03         	ldr	r2, [sp, #0xc]
  3a2208: 4610         	mov	r0, r2
  3a220a: 4798         	blx	r3
  3a220c: f23e fa50    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23e4a0
  3a2210: 4602         	mov	r2, r0
  3a2212: 9b03         	ldr	r3, [sp, #0xc]
  3a2214: 490e         	ldr	r1, [pc, #0x38]         @ 0x3a2250 <PlayerLobbyOnline::init()+0x10c>
  3a2216: 5861         	ldr	r1, [r4, r1]
  3a2218: 9108         	str	r1, [sp, #0x20]
  3a221a: 2100         	movs	r1, #0x0
  3a221c: 9109         	str	r1, [sp, #0x24]
  3a221e: 490d         	ldr	r1, [pc, #0x34]         @ 0x3a2254 <PlayerLobbyOnline::init()+0x110>
  3a2220: 4479         	add	r1, pc
  3a2222: 9100         	str	r1, [sp]
  3a2224: 2100         	movs	r1, #0x0
  3a2226: 9101         	str	r1, [sp, #0x4]
  3a2228: 4610         	mov	r0, r2
  3a222a: 4619         	mov	r1, r3
  3a222c: ab08         	add	r3, sp, #0x20
  3a222e: cb0c         	ldm	r3, {r2, r3}
  3a2230: f23e fada    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x23e5b4
  3a2234: 2301         	movs	r3, #0x1
  3a2236: 4618         	mov	r0, r3
  3a2238: b00b         	add	sp, #0x2c
  3a223a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3a223b); words below are literal-pool data ---
  3a223c: 08bc         	lsrs	r4, r7, #0x2
  3a223e: 0059         	lsls	r1, r3, #0x1
  3a2240: d838         	bhi	0x3a22b4 <PlayerLobbyOnline::~PlayerLobbyOnline()+0x5c> @ imm = #0x70
  3a2242: ffff d7cc    	<unknown>
  3a2246: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  3a224a: ffff 0618    	vqshlu.s32	d16, d8, #0x1f
  3a224e: 0043         	lsls	r3, r0, #0x1
  3a2250: dd68         	ble	0x3a2324 <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x1c> @ imm = #0xd0
  3a2252: ffff 05f8    	vsli.64	q8, q12, #0x3f
  3a2256: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a2258 (= ELF address; Ghidra 0x3b2258), 100 bytes, Thumb-2
  3a2258: b500         	push	{lr}
  3a225a: b083         	sub	sp, #0xc
  3a225c: 9001         	str	r0, [sp, #0x4]
  3a225e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3a22b4 <PlayerLobbyOnline::~PlayerLobbyOnline()+0x5c>
  3a2260: 447b         	add	r3, pc
  3a2262: 9a01         	ldr	r2, [sp, #0x4]
  3a2264: 4914         	ldr	r1, [pc, #0x50]         @ 0x3a22b8 <PlayerLobbyOnline::~PlayerLobbyOnline()+0x60>
  3a2266: 5859         	ldr	r1, [r3, r1]
  3a2268: 3108         	adds	r1, #0x8
  3a226a: 6011         	str	r1, [r2]
  3a226c: 9a01         	ldr	r2, [sp, #0x4]
  3a226e: 4912         	ldr	r1, [pc, #0x48]         @ 0x3a22b8 <PlayerLobbyOnline::~PlayerLobbyOnline()+0x60>
  3a2270: 5859         	ldr	r1, [r3, r1]
  3a2272: f501 7119    	add.w	r1, r1, #0x264
  3a2276: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3a227a: 9a01         	ldr	r2, [sp, #0x4]
  3a227c: 490e         	ldr	r1, [pc, #0x38]         @ 0x3a22b8 <PlayerLobbyOnline::~PlayerLobbyOnline()+0x60>
  3a227e: 5859         	ldr	r1, [r3, r1]
  3a2280: f501 7123    	add.w	r1, r1, #0x28c
  3a2284: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3a2288: 9a01         	ldr	r2, [sp, #0x4]
  3a228a: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3a22b8 <PlayerLobbyOnline::~PlayerLobbyOnline()+0x60>
  3a228c: 585b         	ldr	r3, [r3, r1]
  3a228e: f503 732b    	add.w	r3, r3, #0x2ac
  3a2292: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3a2296: 9b01         	ldr	r3, [sp, #0x4]
  3a2298: 4618         	mov	r0, r3
  3a229a: f7f8 f9bf    	bl	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x7c82
  3a229e: 2300         	movs	r3, #0x0
  3a22a0: 2b00         	cmp	r3, #0x0
  3a22a2: d002         	beq	0x3a22aa <PlayerLobbyOnline::~PlayerLobbyOnline()+0x52> @ imm = #0x4
  3a22a4: 9801         	ldr	r0, [sp, #0x4]
  3a22a6: f3e5 fefd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e5dfa
  3a22aa: 9b01         	ldr	r3, [sp, #0x4]
  3a22ac: 4618         	mov	r0, r3
  3a22ae: b003         	add	sp, #0xc
  3a22b0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a22b3); words below are literal-pool data ---
  3a22b4: 07a8         	lsls	r0, r5, #0x1e
  3a22b6: 0059         	lsls	r1, r3, #0x1
  3a22b8: dd64         	ble	0x3a2384 <PlayerLobbyOnline::updateCountDown(float)+0x24> @ imm = #0xc8
  3a22ba: ffff f1a0    	<unknown>

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a22bc (= ELF address; Ghidra 0x3b22bc), 8 bytes, Thumb-2
  3a22bc: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a22c0: f7ff bfca    	b.w	0x3a2258 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x6c

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a22c4 (= ELF address; Ghidra 0x3b22c4), 8 bytes, Thumb-2
  3a22c4: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a22c8: f7ff bfc6    	b.w	0x3a2258 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x74

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a22cc (= ELF address; Ghidra 0x3b22cc), 8 bytes, Thumb-2
  3a22cc: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a22d0: f7ff bfc2    	b.w	0x3a2258 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x7c

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a22d4 (= ELF address; Ghidra 0x3b22d4), 28 bytes, Thumb-2
  3a22d4: b500         	push	{lr}
  3a22d6: b083         	sub	sp, #0xc
  3a22d8: 9001         	str	r0, [sp, #0x4]
  3a22da: 9801         	ldr	r0, [sp, #0x4]
  3a22dc: f7ff ffbc    	bl	0x3a2258 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x88
  3a22e0: 9801         	ldr	r0, [sp, #0x4]
  3a22e2: f3e5 fedf    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e5dbe
  3a22e6: 9b01         	ldr	r3, [sp, #0x4]
  3a22e8: 4618         	mov	r0, r3
  3a22ea: b003         	add	sp, #0xc
  3a22ec: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a22f0 (= ELF address; Ghidra 0x3b22f0), 8 bytes, Thumb-2
  3a22f0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3a22f4: f7ff bfee    	b.w	0x3a22d4 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x24

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a22f8 (= ELF address; Ghidra 0x3b22f8), 8 bytes, Thumb-2
  3a22f8: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3a22fc: f7ff bfea    	b.w	0x3a22d4 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x2c

// ==== PlayerLobbyOnline::~PlayerLobbyOnline
//      file offset 0x3a2300 (= ELF address; Ghidra 0x3b2300), 8 bytes, Thumb-2
  3a2300: f1a0 00ec    	sub.w	r0, r0, #0xec
  3a2304: f7ff bfe6    	b.w	0x3a22d4 <PlayerLobbyOnline::~PlayerLobbyOnline()> @ imm = #-0x34

// ==== PlayerLobbyOnline::onPlayerDisconnected
//      file offset 0x3a2308 (= ELF address; Ghidra 0x3b2308), 88 bytes, Thumb-2
  3a2308: b500         	push	{lr}
  3a230a: b083         	sub	sp, #0xc
  3a230c: 9001         	str	r0, [sp, #0x4]
  3a230e: 9100         	str	r1, [sp]
  3a2310: 4b11         	ldr	r3, [pc, #0x44]         @ 0x3a2358 <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x50>
  3a2312: 447b         	add	r3, pc
  3a2314: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3a235c <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x54>
  3a2316: 589a         	ldr	r2, [r3, r2]
  3a2318: 6812         	ldr	r2, [r2]
  3a231a: 2a04         	cmp	r2, #0x4
  3a231c: d004         	beq	0x3a2328 <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x20> @ imm = #0x8
  3a231e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a235c <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x54>
  3a2320: 589b         	ldr	r3, [r3, r2]
  3a2322: 681b         	ldr	r3, [r3]
  3a2324: 2b02         	cmp	r3, #0x2
  3a2326: d10a         	bne	0x3a233e <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x36> @ imm = #0x14
  3a2328: f7d5 fc0a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2a7ec
  3a232c: 4603         	mov	r3, r0
  3a232e: 4618         	mov	r0, r3
  3a2330: f7d6 f9aa    	bl	0x378688 <NetworkManager::getPeerCount()> @ imm = #-0x29cac
  3a2334: 4603         	mov	r3, r0
  3a2336: 2b00         	cmp	r3, #0x0
  3a2338: d101         	bne	0x3a233e <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x36> @ imm = #0x2
  3a233a: 2301         	movs	r3, #0x1
  3a233c: e000         	b	0x3a2340 <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x38> @ imm = #0x0
  3a233e: 2300         	movs	r3, #0x0
  3a2340: 2b00         	cmp	r3, #0x0
  3a2342: d005         	beq	0x3a2350 <PlayerLobbyOnline::onPlayerDisconnected(cocos2d::CCObject*)+0x48> @ imm = #0xa
  3a2344: f7d5 fbfc    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2a808
  3a2348: 4603         	mov	r3, r0
  3a234a: 4618         	mov	r0, r3
  3a234c: f7d7 fcaa    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #-0x286ac
  3a2350: b003         	add	sp, #0xc
  3a2352: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a2355); words below are literal-pool data ---
  3a2356: bf00         	nop
  3a2358: 06f6         	lsls	r6, r6, #0x1b
  3a235a: 0059         	lsls	r1, r3, #0x1
  3a235c: d838         	bhi	0x3a23d0 <PlayerLobbyOnline::updateCountDown(float)+0x70> @ imm = #0x70
  3a235e: ffff b570    	<unknown>

// ==== PlayerLobbyOnline::updateCountDown
//      file offset 0x3a2360 (= ELF address; Ghidra 0x3b2360), 944 bytes, Thumb-2
  3a2360: b570         	push	{r4, r5, r6, lr}
  3a2362: b086         	sub	sp, #0x18
  3a2364: 9001         	str	r0, [sp, #0x4]
  3a2366: 9100         	str	r1, [sp]
  3a2368: 4ce3         	ldr	r4, [pc, #0x38c]        @ 0x3a26f8 <PlayerLobbyOnline::updateCountDown(float)+0x398>
  3a236a: 447c         	add	r4, pc
  3a236c: 9b01         	ldr	r3, [sp, #0x4]
  3a236e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a2372: 4618         	mov	r0, r3
  3a2374: f1f1 fc7a    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f18f4
  3a2378: 4603         	mov	r3, r0
  3a237a: 2b01         	cmp	r3, #0x1
  3a237c: bf8c         	ite	hi
  3a237e: 2300         	movhi	r3, #0x0
  3a2380: 2301         	movls	r3, #0x1
  3a2382: b2db         	uxtb	r3, r3
  3a2384: 2b00         	cmp	r3, #0x0
  3a2386: d03c         	beq	0x3a2402 <PlayerLobbyOnline::updateCountDown(float)+0xa2> @ imm = #0x78
  3a2388: 9b01         	ldr	r3, [sp, #0x4]
  3a238a: 681b         	ldr	r3, [r3]
  3a238c: f503 73ee    	add.w	r3, r3, #0x1dc
  3a2390: 681b         	ldr	r3, [r3]
  3a2392: 9a01         	ldr	r2, [sp, #0x4]
  3a2394: 4610         	mov	r0, r2
  3a2396: 4798         	blx	r3
  3a2398: 4603         	mov	r3, r0
  3a239a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a239e: 2b03         	cmp	r3, #0x3
  3a23a0: bf14         	ite	ne
  3a23a2: 2300         	movne	r3, #0x0
  3a23a4: 2301         	moveq	r3, #0x1
  3a23a6: b2db         	uxtb	r3, r3
  3a23a8: 2b00         	cmp	r3, #0x0
  3a23aa: d00b         	beq	0x3a23c4 <PlayerLobbyOnline::updateCountDown(float)+0x64> @ imm = #0x16
  3a23ac: 9b01         	ldr	r3, [sp, #0x4]
  3a23ae: 681b         	ldr	r3, [r3]
  3a23b0: f503 73ee    	add.w	r3, r3, #0x1dc
  3a23b4: 681b         	ldr	r3, [r3]
  3a23b6: 9a01         	ldr	r2, [sp, #0x4]
  3a23b8: 4610         	mov	r0, r2
  3a23ba: 4798         	blx	r3
  3a23bc: 4603         	mov	r3, r0
  3a23be: 2201         	movs	r2, #0x1
  3a23c0: f8c3 2118    	str.w	r2, [r3, #0x118]
  3a23c4: 9b01         	ldr	r3, [sp, #0x4]
  3a23c6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a23ca: 681b         	ldr	r3, [r3]
  3a23cc: f503 73fc    	add.w	r3, r3, #0x1f8
  3a23d0: 681b         	ldr	r3, [r3]
  3a23d2: 9a01         	ldr	r2, [sp, #0x4]
  3a23d4: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a23d8: 4610         	mov	r0, r2
  3a23da: 4ac8         	ldr	r2, [pc, #0x320]        @ 0x3a26fc <PlayerLobbyOnline::updateCountDown(float)+0x39c>
  3a23dc: 447a         	add	r2, pc
  3a23de: 4611         	mov	r1, r2
  3a23e0: 4798         	blx	r3
  3a23e2: 9b01         	ldr	r3, [sp, #0x4]
  3a23e4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a23e8: 681b         	ldr	r3, [r3]
  3a23ea: 334c         	adds	r3, #0x4c
  3a23ec: 681b         	ldr	r3, [r3]
  3a23ee: 9a01         	ldr	r2, [sp, #0x4]
  3a23f0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a23f4: 4611         	mov	r1, r2
  3a23f6: 9a01         	ldr	r2, [sp, #0x4]
  3a23f8: f502 72ae    	add.w	r2, r2, #0x15c
  3a23fc: 4608         	mov	r0, r1
  3a23fe: 4611         	mov	r1, r2
  3a2400: 4798         	blx	r3
  3a2402: f7d5 fb9d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2a8c6
  3a2406: 4603         	mov	r3, r0
  3a2408: 4618         	mov	r0, r3
  3a240a: f7d8 f98b    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0x27cea
  3a240e: 4603         	mov	r3, r0
  3a2410: f083 0301    	eor	r3, r3, #0x1
  3a2414: b2db         	uxtb	r3, r3
  3a2416: 2b00         	cmp	r3, #0x0
  3a2418: d016         	beq	0x3a2448 <PlayerLobbyOnline::updateCountDown(float)+0xe8> @ imm = #0x2c
  3a241a: f7d5 fb91    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2a8de
  3a241e: 4603         	mov	r3, r0
  3a2420: 4618         	mov	r0, r3
  3a2422: f7d8 f873    	bl	0x37a50c <NetworkManager::isConnected()> @ imm = #-0x27f1a
  3a2426: 4603         	mov	r3, r0
  3a2428: 2b00         	cmp	r3, #0x0
  3a242a: d00d         	beq	0x3a2448 <PlayerLobbyOnline::updateCountDown(float)+0xe8> @ imm = #0x1a
  3a242c: f7d5 fb88    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2a8f0
  3a2430: 4603         	mov	r3, r0
  3a2432: 4618         	mov	r0, r3
  3a2434: f7d7 fe72    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x2831c
  3a2438: 4603         	mov	r3, r0
  3a243a: f083 0301    	eor	r3, r3, #0x1
  3a243e: b2db         	uxtb	r3, r3
  3a2440: 2b00         	cmp	r3, #0x0
  3a2442: d001         	beq	0x3a2448 <PlayerLobbyOnline::updateCountDown(float)+0xe8> @ imm = #0x2
  3a2444: 2301         	movs	r3, #0x1
  3a2446: e000         	b	0x3a244a <PlayerLobbyOnline::updateCountDown(float)+0xea> @ imm = #0x0
  3a2448: 2300         	movs	r3, #0x0
  3a244a: 2b00         	cmp	r3, #0x0
  3a244c: d00f         	beq	0x3a246e <PlayerLobbyOnline::updateCountDown(float)+0x10e> @ imm = #0x1e
  3a244e: 9b01         	ldr	r3, [sp, #0x4]
  3a2450: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a2454: 681b         	ldr	r3, [r3]
  3a2456: f503 730f    	add.w	r3, r3, #0x23c
  3a245a: 681b         	ldr	r3, [r3]
  3a245c: 9a01         	ldr	r2, [sp, #0x4]
  3a245e: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a2462: 4610         	mov	r0, r2
  3a2464: 4aa6         	ldr	r2, [pc, #0x298]        @ 0x3a2700 <PlayerLobbyOnline::updateCountDown(float)+0x3a0>
  3a2466: 447a         	add	r2, pc
  3a2468: 4611         	mov	r1, r2
  3a246a: 4798         	blx	r3
  3a246c: e01a         	b	0x3a24a4 <PlayerLobbyOnline::updateCountDown(float)+0x144> @ imm = #0x34
  3a246e: 9b01         	ldr	r3, [sp, #0x4]
  3a2470: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a2474: 681b         	ldr	r3, [r3]
  3a2476: f503 730f    	add.w	r3, r3, #0x23c
  3a247a: 681d         	ldr	r5, [r3]
  3a247c: 9b01         	ldr	r3, [sp, #0x4]
  3a247e: f8d3 6128    	ldr.w	r6, [r3, #0x128]
  3a2482: 9b01         	ldr	r3, [sp, #0x4]
  3a2484: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3a2488: 4a9e         	ldr	r2, [pc, #0x278]        @ 0x3a2704 <PlayerLobbyOnline::updateCountDown(float)+0x3a4>
  3a248a: 447a         	add	r2, pc
  3a248c: 4610         	mov	r0, r2
  3a248e: 4619         	mov	r1, r3
  3a2490: f1f7 fb3e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f767c
  3a2494: 4603         	mov	r3, r0
  3a2496: 4618         	mov	r0, r3
  3a2498: f1f7 fa46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f748c
  3a249c: 4603         	mov	r3, r0
  3a249e: 4630         	mov	r0, r6
  3a24a0: 4619         	mov	r1, r3
  3a24a2: 47a8         	blx	r5
  3a24a4: 9b01         	ldr	r3, [sp, #0x4]
  3a24a6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a24aa: 4618         	mov	r0, r3
  3a24ac: f1f1 fbde    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f17bc
  3a24b0: 4603         	mov	r3, r0
  3a24b2: 2b01         	cmp	r3, #0x1
  3a24b4: bf94         	ite	ls
  3a24b6: 2300         	movls	r3, #0x0
  3a24b8: 2301         	movhi	r3, #0x1
  3a24ba: b2da         	uxtb	r2, r3
  3a24bc: 9b01         	ldr	r3, [sp, #0x4]
  3a24be: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a24c2: 4b91         	ldr	r3, [pc, #0x244]        @ 0x3a2708 <PlayerLobbyOnline::updateCountDown(float)+0x3a8>
  3a24c4: 58e3         	ldr	r3, [r4, r3]
  3a24c6: 681b         	ldr	r3, [r3]
  3a24c8: 2b04         	cmp	r3, #0x4
  3a24ca: d10a         	bne	0x3a24e2 <PlayerLobbyOnline::updateCountDown(float)+0x182> @ imm = #0x14
  3a24cc: f7d5 fb38    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2a990
  3a24d0: 4603         	mov	r3, r0
  3a24d2: 4618         	mov	r0, r3
  3a24d4: f7d7 fdf6    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x28414
  3a24d8: 4603         	mov	r3, r0
  3a24da: 2b00         	cmp	r3, #0x0
  3a24dc: d001         	beq	0x3a24e2 <PlayerLobbyOnline::updateCountDown(float)+0x182> @ imm = #0x2
  3a24de: 2301         	movs	r3, #0x1
  3a24e0: e000         	b	0x3a24e4 <PlayerLobbyOnline::updateCountDown(float)+0x184> @ imm = #0x0
  3a24e2: 2300         	movs	r3, #0x0
  3a24e4: 2b00         	cmp	r3, #0x0
  3a24e6: d004         	beq	0x3a24f2 <PlayerLobbyOnline::updateCountDown(float)+0x192> @ imm = #0x8
  3a24e8: 9b01         	ldr	r3, [sp, #0x4]
  3a24ea: 2200         	movs	r2, #0x0
  3a24ec: f883 214c    	strb.w	r2, [r3, #0x14c]
  3a24f0: e04e         	b	0x3a2590 <PlayerLobbyOnline::updateCountDown(float)+0x230> @ imm = #0x9c
  3a24f2: 2300         	movs	r3, #0x0
  3a24f4: 9303         	str	r3, [sp, #0xc]
  3a24f6: 2300         	movs	r3, #0x0
  3a24f8: 9304         	str	r3, [sp, #0x10]
  3a24fa: 9b01         	ldr	r3, [sp, #0x4]
  3a24fc: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a2500: 2b00         	cmp	r3, #0x0
  3a2502: d00a         	beq	0x3a251a <PlayerLobbyOnline::updateCountDown(float)+0x1ba> @ imm = #0x14
  3a2504: 9b01         	ldr	r3, [sp, #0x4]
  3a2506: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a250a: 4618         	mov	r0, r3
  3a250c: f1f1 fbae    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f175c
  3a2510: 4603         	mov	r3, r0
  3a2512: 2b00         	cmp	r3, #0x0
  3a2514: d001         	beq	0x3a251a <PlayerLobbyOnline::updateCountDown(float)+0x1ba> @ imm = #0x2
  3a2516: 2301         	movs	r3, #0x1
  3a2518: e000         	b	0x3a251c <PlayerLobbyOnline::updateCountDown(float)+0x1bc> @ imm = #0x0
  3a251a: 2300         	movs	r3, #0x0
  3a251c: 2b00         	cmp	r3, #0x0
  3a251e: d037         	beq	0x3a2590 <PlayerLobbyOnline::updateCountDown(float)+0x230> @ imm = #0x6e
  3a2520: 9b01         	ldr	r3, [sp, #0x4]
  3a2522: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a2526: 695b         	ldr	r3, [r3, #0x14]
  3a2528: 9303         	str	r3, [sp, #0xc]
  3a252a: 9b01         	ldr	r3, [sp, #0x4]
  3a252c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a2530: 695b         	ldr	r3, [r3, #0x14]
  3a2532: 2b00         	cmp	r3, #0x0
  3a2534: d006         	beq	0x3a2544 <PlayerLobbyOnline::updateCountDown(float)+0x1e4> @ imm = #0xc
  3a2536: 9b01         	ldr	r3, [sp, #0x4]
  3a2538: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a253c: 695b         	ldr	r3, [r3, #0x14]
  3a253e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a2542: e000         	b	0x3a2546 <PlayerLobbyOnline::updateCountDown(float)+0x1e6> @ imm = #0x0
  3a2544: 2300         	movs	r3, #0x0
  3a2546: 9304         	str	r3, [sp, #0x10]
  3a2548: e01f         	b	0x3a258a <PlayerLobbyOnline::updateCountDown(float)+0x22a> @ imm = #0x3e
  3a254a: 9803         	ldr	r0, [sp, #0xc]
  3a254c: f75c f872    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xa3f1c
  3a2550: 4603         	mov	r3, r0
  3a2552: 9305         	str	r3, [sp, #0x14]
  3a2554: 9b01         	ldr	r3, [sp, #0x4]
  3a2556: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a255a: 2b00         	cmp	r3, #0x0
  3a255c: d006         	beq	0x3a256c <PlayerLobbyOnline::updateCountDown(float)+0x20c> @ imm = #0xc
  3a255e: 9b05         	ldr	r3, [sp, #0x14]
  3a2560: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a2564: 2b03         	cmp	r3, #0x3
  3a2566: d101         	bne	0x3a256c <PlayerLobbyOnline::updateCountDown(float)+0x20c> @ imm = #0x2
  3a2568: 2301         	movs	r3, #0x1
  3a256a: e000         	b	0x3a256e <PlayerLobbyOnline::updateCountDown(float)+0x20e> @ imm = #0x0
  3a256c: 2300         	movs	r3, #0x0
  3a256e: 9a01         	ldr	r2, [sp, #0x4]
  3a2570: f882 314c    	strb.w	r3, [r2, #0x14c]
  3a2574: 9b04         	ldr	r3, [sp, #0x10]
  3a2576: 9303         	str	r3, [sp, #0xc]
  3a2578: 9b04         	ldr	r3, [sp, #0x10]
  3a257a: 2b00         	cmp	r3, #0x0
  3a257c: d003         	beq	0x3a2586 <PlayerLobbyOnline::updateCountDown(float)+0x226> @ imm = #0x6
  3a257e: 9b04         	ldr	r3, [sp, #0x10]
  3a2580: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a2584: e000         	b	0x3a2588 <PlayerLobbyOnline::updateCountDown(float)+0x228> @ imm = #0x0
  3a2586: 2300         	movs	r3, #0x0
  3a2588: 9304         	str	r3, [sp, #0x10]
  3a258a: 9b03         	ldr	r3, [sp, #0xc]
  3a258c: 2b00         	cmp	r3, #0x0
  3a258e: d1dc         	bne	0x3a254a <PlayerLobbyOnline::updateCountDown(float)+0x1ea> @ imm = #-0x48
  3a2590: 9b01         	ldr	r3, [sp, #0x4]
  3a2592: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  3a2596: 2b00         	cmp	r3, #0x0
  3a2598: f000 80a3    	beq.w	0x3a26e2 <PlayerLobbyOnline::updateCountDown(float)+0x382> @ imm = #0x146
  3a259c: 9b01         	ldr	r3, [sp, #0x4]
  3a259e: ed93 7a52    	vldr	s14, [r3, #328]
  3a25a2: eddd 7a00    	vldr	s15, [sp]
  3a25a6: ee77 7a67    	vsub.f32	s15, s14, s15
  3a25aa: eef5 7ac0    	vcmpe.f32	s15, #0
  3a25ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a25b2: dd07         	ble	0x3a25c4 <PlayerLobbyOnline::updateCountDown(float)+0x264> @ imm = #0xe
  3a25b4: 9b01         	ldr	r3, [sp, #0x4]
  3a25b6: ed93 7a52    	vldr	s14, [r3, #328]
  3a25ba: eddd 7a00    	vldr	s15, [sp]
  3a25be: ee77 7a67    	vsub.f32	s15, s14, s15
  3a25c2: e001         	b	0x3a25c8 <PlayerLobbyOnline::updateCountDown(float)+0x268> @ imm = #0x2
  3a25c4: eddf 7a4b    	vldr	s15, [pc, #300]         @ 0x3a26f4 <PlayerLobbyOnline::updateCountDown(float)+0x394>
  3a25c8: 9b01         	ldr	r3, [sp, #0x4]
  3a25ca: edc3 7a52    	vstr	s15, [r3, #328]
  3a25ce: 9b01         	ldr	r3, [sp, #0x4]
  3a25d0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a25d4: 681b         	ldr	r3, [r3]
  3a25d6: f503 730f    	add.w	r3, r3, #0x23c
  3a25da: 681c         	ldr	r4, [r3]
  3a25dc: 9b01         	ldr	r3, [sp, #0x4]
  3a25de: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  3a25e2: 9b01         	ldr	r3, [sp, #0x4]
  3a25e4: edd3 7a52    	vldr	s15, [r3, #328]
  3a25e8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a25ec: ee17 2a90    	vmov	r2, s15
  3a25f0: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3a270c <PlayerLobbyOnline::updateCountDown(float)+0x3ac>
  3a25f2: 447b         	add	r3, pc
  3a25f4: 4618         	mov	r0, r3
  3a25f6: 4611         	mov	r1, r2
  3a25f8: f1f7 fa8a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f7514
  3a25fc: 4603         	mov	r3, r0
  3a25fe: 4618         	mov	r0, r3
  3a2600: f1f7 f992    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f7324
  3a2604: 4603         	mov	r3, r0
  3a2606: 4628         	mov	r0, r5
  3a2608: 4619         	mov	r1, r3
  3a260a: 47a0         	blx	r4
  3a260c: 9b01         	ldr	r3, [sp, #0x4]
  3a260e: ed93 7a52    	vldr	s14, [r3, #328]
  3a2612: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a2616: eeb4 7ae7    	vcmpe.f32	s14, s15
  3a261a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a261e: d54f         	bpl	0x3a26c0 <PlayerLobbyOnline::updateCountDown(float)+0x360> @ imm = #0x9e
  3a2620: 9b01         	ldr	r3, [sp, #0x4]
  3a2622: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a2626: 681b         	ldr	r3, [r3]
  3a2628: f503 73de    	add.w	r3, r3, #0x1bc
  3a262c: 681c         	ldr	r4, [r3]
  3a262e: 9b01         	ldr	r3, [sp, #0x4]
  3a2630: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a2634: 461d         	mov	r5, r3
  3a2636: 20ff         	movs	r0, #0xff
  3a2638: 2100         	movs	r1, #0x0
  3a263a: 2200         	movs	r2, #0x0
  3a263c: f7fe fe6a    	bl	0x3a1314 <PlayerLobbyLocal::updateReadyLabel()+0x198> @ imm = #-0x132c
  3a2640: 4603         	mov	r3, r0
  3a2642: 461a         	mov	r2, r3
  3a2644: f88d 2008    	strb.w	r2, [sp, #0x8]
  3a2648: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a264c: f88d 2009    	strb.w	r2, [sp, #0x9]
  3a2650: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a2654: f88d 300a    	strb.w	r3, [sp, #0xa]
  3a2658: ab02         	add	r3, sp, #0x8
  3a265a: 4628         	mov	r0, r5
  3a265c: 4619         	mov	r1, r3
  3a265e: 47a0         	blx	r4
  3a2660: 9b01         	ldr	r3, [sp, #0x4]
  3a2662: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a2666: 681b         	ldr	r3, [r3]
  3a2668: 3390         	adds	r3, #0x90
  3a266a: 681b         	ldr	r3, [r3]
  3a266c: 9a01         	ldr	r2, [sp, #0x4]
  3a266e: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3a2672: 4610         	mov	r0, r2
  3a2674: 2100         	movs	r1, #0x0
  3a2676: 4798         	blx	r3
  3a2678: 9b01         	ldr	r3, [sp, #0x4]
  3a267a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a267e: 681b         	ldr	r3, [r3]
  3a2680: 3390         	adds	r3, #0x90
  3a2682: 681b         	ldr	r3, [r3]
  3a2684: 9a01         	ldr	r2, [sp, #0x4]
  3a2686: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a268a: 4610         	mov	r0, r2
  3a268c: 2100         	movs	r1, #0x0
  3a268e: 4798         	blx	r3
  3a2690: 9b01         	ldr	r3, [sp, #0x4]
  3a2692: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a2696: 681b         	ldr	r3, [r3]
  3a2698: 3390         	adds	r3, #0x90
  3a269a: 681b         	ldr	r3, [r3]
  3a269c: 9a01         	ldr	r2, [sp, #0x4]
  3a269e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a26a2: 4610         	mov	r0, r2
  3a26a4: 2100         	movs	r1, #0x0
  3a26a6: 4798         	blx	r3
  3a26a8: 9b01         	ldr	r3, [sp, #0x4]
  3a26aa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a26ae: 681b         	ldr	r3, [r3]
  3a26b0: 3390         	adds	r3, #0x90
  3a26b2: 681b         	ldr	r3, [r3]
  3a26b4: 9a01         	ldr	r2, [sp, #0x4]
  3a26b6: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a26ba: 4610         	mov	r0, r2
  3a26bc: 2100         	movs	r1, #0x0
  3a26be: 4798         	blx	r3
  3a26c0: 9b01         	ldr	r3, [sp, #0x4]
  3a26c2: edd3 7a52    	vldr	s15, [r3, #328]
  3a26c6: eef5 7a40    	vcmp.f32	s15, #0
  3a26ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3a26ce: d10f         	bne	0x3a26f0 <PlayerLobbyOnline::updateCountDown(float)+0x390> @ imm = #0x1e
  3a26d0: 9b01         	ldr	r3, [sp, #0x4]
  3a26d2: 681b         	ldr	r3, [r3]
  3a26d4: f503 73dc    	add.w	r3, r3, #0x1b8
  3a26d8: 681b         	ldr	r3, [r3]
  3a26da: 9a01         	ldr	r2, [sp, #0x4]
  3a26dc: 4610         	mov	r0, r2
  3a26de: 4798         	blx	r3
  3a26e0: e006         	b	0x3a26f0 <PlayerLobbyOnline::updateCountDown(float)+0x390> @ imm = #0xc
  3a26e2: 9b01         	ldr	r3, [sp, #0x4]
  3a26e4: f04f 0200    	mov.w	r2, #0x0
  3a26e8: f2c4 1220    	movt	r2, #0x4120
  3a26ec: f8c3 2148    	str.w	r2, [r3, #0x148]
  3a26f0: b006         	add	sp, #0x18
  3a26f2: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3a26f3); words below are literal-pool data ---
  3a26f4: 0000         	movs	r0, r0
  3a26f6: 0000         	movs	r0, r0
  3a26f8: 069e         	lsls	r6, r3, #0x1a
  3a26fa: 0059         	lsls	r1, r3, #0x1
  3a26fc: 0450         	lsls	r0, r2, #0x11
  3a26fe: 0043         	lsls	r3, r0, #0x1
  3a2700: 03ce         	lsls	r6, r1, #0xf
  3a2702: 0043         	lsls	r3, r0, #0x1
  3a2704: 03ba         	lsls	r2, r7, #0xe
  3a2706: 0043         	lsls	r3, r0, #0x1
  3a2708: d838         	bhi	0x3a277c <PlayerLobbyOnline::alertResponse(int)+0x6c> @ imm = #0x70
  3a270a: ffff 026a    	<unknown>
  3a270e: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobbyOnline::alertResponse
//      file offset 0x3a2710 (= ELF address; Ghidra 0x3b2710), 112 bytes, Thumb-2
  3a2710: b510         	push	{r4, lr}
  3a2712: b082         	sub	sp, #0x8
  3a2714: 9001         	str	r0, [sp, #0x4]
  3a2716: 9100         	str	r1, [sp]
  3a2718: 4c16         	ldr	r4, [pc, #0x58]         @ 0x3a2774 <PlayerLobbyOnline::alertResponse(int)+0x64>
  3a271a: 447c         	add	r4, pc
  3a271c: 9b01         	ldr	r3, [sp, #0x4]
  3a271e: 4618         	mov	r0, r3
  3a2720: 9900         	ldr	r1, [sp]
  3a2722: f7fa fc27    	bl	0x39cf74 <PlayerLobby::alertResponse(int)> @ imm = #-0x57b2
  3a2726: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a2778 <PlayerLobbyOnline::alertResponse(int)+0x68>
  3a2728: 58e3         	ldr	r3, [r4, r3]
  3a272a: 781b         	ldrb	r3, [r3]
  3a272c: 2b00         	cmp	r3, #0x0
  3a272e: d00a         	beq	0x3a2746 <PlayerLobbyOnline::alertResponse(int)+0x36> @ imm = #0x14
  3a2730: 9b01         	ldr	r3, [sp, #0x4]
  3a2732: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a2736: 4618         	mov	r0, r3
  3a2738: f1f1 fa98    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f1530
  3a273c: 4603         	mov	r3, r0
  3a273e: 2b01         	cmp	r3, #0x1
  3a2740: d101         	bne	0x3a2746 <PlayerLobbyOnline::alertResponse(int)+0x36> @ imm = #0x2
  3a2742: 2301         	movs	r3, #0x1
  3a2744: e000         	b	0x3a2748 <PlayerLobbyOnline::alertResponse(int)+0x38> @ imm = #0x0
  3a2746: 2300         	movs	r3, #0x0
  3a2748: 2b00         	cmp	r3, #0x0
  3a274a: d011         	beq	0x3a2770 <PlayerLobbyOnline::alertResponse(int)+0x60> @ imm = #0x22
  3a274c: 9b00         	ldr	r3, [sp]
  3a274e: 2b01         	cmp	r3, #0x1
  3a2750: d10e         	bne	0x3a2770 <PlayerLobbyOnline::alertResponse(int)+0x60> @ imm = #0x1c
  3a2752: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3a277c <PlayerLobbyOnline::alertResponse(int)+0x6c>
  3a2754: 58e3         	ldr	r3, [r4, r3]
  3a2756: 681b         	ldr	r3, [r3]
  3a2758: 4618         	mov	r0, r3
  3a275a: 210d         	movs	r1, #0xd
  3a275c: f055 fb30    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x55660
  3a2760: 9b01         	ldr	r3, [sp, #0x4]
  3a2762: 681b         	ldr	r3, [r3]
  3a2764: f503 73de    	add.w	r3, r3, #0x1bc
  3a2768: 681b         	ldr	r3, [r3]
  3a276a: 9a01         	ldr	r2, [sp, #0x4]
  3a276c: 4610         	mov	r0, r2
  3a276e: 4798         	blx	r3
  3a2770: b002         	add	sp, #0x8
  3a2772: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a2773); words below are literal-pool data ---
  3a2774: 02ee         	lsls	r6, r5, #0xb
  3a2776: 0059         	lsls	r1, r3, #0x1
  3a2778: da54         	bge	0x3a2824 <PlayerLobbyOnline::onServerPlayerCountUpdate(cocos2d::CCObject*)+0x3c> @ imm = #0xa8
  3a277a: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3a277e: ffff b500    	<unknown>

// ==== PlayerLobbyOnline::updateReadyLabel
//      file offset 0x3a2780 (= ELF address; Ghidra 0x3b2780), 104 bytes, Thumb-2
  3a2780: b500         	push	{lr}
  3a2782: b083         	sub	sp, #0xc
  3a2784: 9001         	str	r0, [sp, #0x4]
  3a2786: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3a27d8 <PlayerLobbyOnline::updateReadyLabel()+0x58>
  3a2788: 447a         	add	r2, pc
  3a278a: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3a27dc <PlayerLobbyOnline::updateReadyLabel()+0x5c>
  3a278c: 58d3         	ldr	r3, [r2, r3]
  3a278e: 781b         	ldrb	r3, [r3]
  3a2790: 2b00         	cmp	r3, #0x0
  3a2792: d00f         	beq	0x3a27b4 <PlayerLobbyOnline::updateReadyLabel()+0x34> @ imm = #0x1e
  3a2794: 9b01         	ldr	r3, [sp, #0x4]
  3a2796: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a279a: 681b         	ldr	r3, [r3]
  3a279c: f503 73fc    	add.w	r3, r3, #0x1f8
  3a27a0: 681b         	ldr	r3, [r3]
  3a27a2: 9a01         	ldr	r2, [sp, #0x4]
  3a27a4: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a27a8: 4610         	mov	r0, r2
  3a27aa: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3a27e0 <PlayerLobbyOnline::updateReadyLabel()+0x60>
  3a27ac: 447a         	add	r2, pc
  3a27ae: 4611         	mov	r1, r2
  3a27b0: 4798         	blx	r3
  3a27b2: e00e         	b	0x3a27d2 <PlayerLobbyOnline::updateReadyLabel()+0x52> @ imm = #0x1c
  3a27b4: 9b01         	ldr	r3, [sp, #0x4]
  3a27b6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a27ba: 681b         	ldr	r3, [r3]
  3a27bc: f503 73fc    	add.w	r3, r3, #0x1f8
  3a27c0: 681b         	ldr	r3, [r3]
  3a27c2: 9a01         	ldr	r2, [sp, #0x4]
  3a27c4: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a27c8: 4610         	mov	r0, r2
  3a27ca: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3a27e4 <PlayerLobbyOnline::updateReadyLabel()+0x64>
  3a27cc: 447a         	add	r2, pc
  3a27ce: 4611         	mov	r1, r2
  3a27d0: 4798         	blx	r3
  3a27d2: b003         	add	sp, #0xc
  3a27d4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a27d7); words below are literal-pool data ---
  3a27d8: 0280         	lsls	r0, r0, #0xa
  3a27da: 0059         	lsls	r1, r3, #0x1
  3a27dc: da54         	bge	0x3a2888 <PlayerLobbyOnline::onServerPlayerCountUpdate(cocos2d::CCObject*)+0xa0> @ imm = #0xa8
  3a27de: ffff 00c4    	<unknown>
  3a27e2: 0043         	lsls	r3, r0, #0x1
  3a27e4: 0060         	lsls	r0, r4, #0x1
  3a27e6: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobbyOnline::onServerPlayerCountUpdate
//      file offset 0x3a27e8 (= ELF address; Ghidra 0x3b27e8), 28 bytes, Thumb-2
  3a27e8: b500         	push	{lr}
  3a27ea: b083         	sub	sp, #0xc
  3a27ec: 9001         	str	r0, [sp, #0x4]
  3a27ee: 9100         	str	r1, [sp]
  3a27f0: 9800         	ldr	r0, [sp]
  3a27f2: f74a fb2f    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb59a2
  3a27f6: 4602         	mov	r2, r0
  3a27f8: 9b01         	ldr	r3, [sp, #0x4]
  3a27fa: f8c3 2150    	str.w	r2, [r3, #0x150]
  3a27fe: b003         	add	sp, #0xc
  3a2800: f85d fb04    	ldr	pc, [sp], #4
