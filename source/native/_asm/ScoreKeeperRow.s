// ScoreKeeperRow: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ScoreKeeperRow.cpp

// ==== ScoreKeeperRow::ScoreKeeperRow
//      file offset 0x3d21b0 (= ELF address; Ghidra 0x3e21b0), 108 bytes, Thumb-2
  3d21b0: b510         	push	{r4, lr}
  3d21b2: b082         	sub	sp, #0x8
  3d21b4: 9001         	str	r0, [sp, #0x4]
  3d21b6: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x3d2214 <ScoreKeeperRow::ScoreKeeperRow()+0x64>
  3d21b8: 447c         	add	r4, pc
  3d21ba: 9b01         	ldr	r3, [sp, #0x4]
  3d21bc: 4618         	mov	r0, r3
  3d21be: f1c5 fdd5    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1c5baa
  3d21c2: 9b01         	ldr	r3, [sp, #0x4]
  3d21c4: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3d2218 <ScoreKeeperRow::ScoreKeeperRow()+0x68>
  3d21c6: 58a2         	ldr	r2, [r4, r2]
  3d21c8: 3208         	adds	r2, #0x8
  3d21ca: 601a         	str	r2, [r3]
  3d21cc: 9b01         	ldr	r3, [sp, #0x4]
  3d21ce: 3314         	adds	r3, #0x14
  3d21d0: 4618         	mov	r0, r3
  3d21d2: f3e2 ffed    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3e2fda
  3d21d6: 9b01         	ldr	r3, [sp, #0x4]
  3d21d8: 3318         	adds	r3, #0x18
  3d21da: 4618         	mov	r0, r3
  3d21dc: f3e2 ffe8    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3e2fd0
  3d21e0: 9801         	ldr	r0, [sp, #0x4]
  3d21e2: f000 f81b    	bl	0x3d221c <ScoreKeeperRow::init()> @ imm = #0x36
  3d21e6: 9b01         	ldr	r3, [sp, #0x4]
  3d21e8: e011         	b	0x3d220e <ScoreKeeperRow::ScoreKeeperRow()+0x5e> @ imm = #0x22
  3d21ea: 9b01         	ldr	r3, [sp, #0x4]
  3d21ec: 3318         	adds	r3, #0x18
  3d21ee: 4618         	mov	r0, r3
  3d21f0: f3e3 fb90    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e3720
  3d21f4: e7ff         	b	0x3d21f6 <ScoreKeeperRow::ScoreKeeperRow()+0x46> @ imm = #-0x2
  3d21f6: 9b01         	ldr	r3, [sp, #0x4]
  3d21f8: 3314         	adds	r3, #0x14
  3d21fa: 4618         	mov	r0, r3
  3d21fc: f3e3 fb8a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e3714
  3d2200: e7ff         	b	0x3d2202 <ScoreKeeperRow::ScoreKeeperRow()+0x52> @ imm = #-0x2
  3d2202: 9b01         	ldr	r3, [sp, #0x4]
  3d2204: 4618         	mov	r0, r3
  3d2206: f1c5 fde3    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1c5bc6
  3d220a: f3b5 ff4f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b5e9e
  3d220e: 4618         	mov	r0, r3
  3d2210: b002         	add	sp, #0x8
  3d2212: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d2213); words below are literal-pool data ---
  3d2214: 0850         	lsrs	r0, r2, #0x1
  3d2216: 0056         	lsls	r6, r2, #0x1
  3d2218: dea0         	udf	#0xa0
  3d221a: ffff b500    	<unknown>

// ==== ScoreKeeperRow::init
//      file offset 0x3d221c (= ELF address; Ghidra 0x3e221c), 64 bytes, Thumb-2
  3d221c: b500         	push	{lr}
  3d221e: b083         	sub	sp, #0xc
  3d2220: 9001         	str	r0, [sp, #0x4]
  3d2222: 9b01         	ldr	r3, [sp, #0x4]
  3d2224: 3314         	adds	r3, #0x14
  3d2226: 4618         	mov	r0, r3
  3d2228: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3d2254 <ScoreKeeperRow::init()+0x38>
  3d222a: 447b         	add	r3, pc
  3d222c: 4619         	mov	r1, r3
  3d222e: f3e3 fe1f    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3e3c3e
  3d2232: 9b01         	ldr	r3, [sp, #0x4]
  3d2234: 3318         	adds	r3, #0x18
  3d2236: 4618         	mov	r0, r3
  3d2238: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3d2258 <ScoreKeeperRow::init()+0x3c>
  3d223a: 447b         	add	r3, pc
  3d223c: 4619         	mov	r1, r3
  3d223e: f3e3 fe17    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3e3c2e
  3d2242: 9b01         	ldr	r3, [sp, #0x4]
  3d2244: 2200         	movs	r2, #0x0
  3d2246: 61da         	str	r2, [r3, #0x1c]
  3d2248: 2301         	movs	r3, #0x1
  3d224a: 4618         	mov	r0, r3
  3d224c: b003         	add	sp, #0xc
  3d224e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d2251); words below are literal-pool data ---
  3d2252: bf00         	nop
  3d2254: 4ff2         	ldr	r7, [pc, #0x3c8]        @ 0x3d2620 <ScoreKeeper::onPeerDead(cocos2d::CCObject*)+0xb4>
  3d2256: 0040         	lsls	r0, r0, #0x1
  3d2258: 4fe2         	ldr	r7, [pc, #0x388]        @ 0x3d25e4 <ScoreKeeper::onPeerDead(cocos2d::CCObject*)+0x78>
  3d225a: 0040         	lsls	r0, r0, #0x1

// ==== ScoreKeeperRow::~ScoreKeeperRow
//      file offset 0x3d225c (= ELF address; Ghidra 0x3e225c), 80 bytes, Thumb-2
  3d225c: b500         	push	{lr}
  3d225e: b083         	sub	sp, #0xc
  3d2260: 9001         	str	r0, [sp, #0x4]
  3d2262: 4910         	ldr	r1, [pc, #0x40]         @ 0x3d22a4 <ScoreKeeperRow::~ScoreKeeperRow()+0x48>
  3d2264: 4479         	add	r1, pc
  3d2266: 9b01         	ldr	r3, [sp, #0x4]
  3d2268: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3d22a8 <ScoreKeeperRow::~ScoreKeeperRow()+0x4c>
  3d226a: 588a         	ldr	r2, [r1, r2]
  3d226c: 3208         	adds	r2, #0x8
  3d226e: 601a         	str	r2, [r3]
  3d2270: 9b01         	ldr	r3, [sp, #0x4]
  3d2272: 3318         	adds	r3, #0x18
  3d2274: 4618         	mov	r0, r3
  3d2276: f3e3 fb4d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e369a
  3d227a: 9b01         	ldr	r3, [sp, #0x4]
  3d227c: 3314         	adds	r3, #0x14
  3d227e: 4618         	mov	r0, r3
  3d2280: f3e3 fb48    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e3690
  3d2284: 9b01         	ldr	r3, [sp, #0x4]
  3d2286: 4618         	mov	r0, r3
  3d2288: f1c5 fda2    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1c5b44
  3d228c: 2300         	movs	r3, #0x0
  3d228e: 2b00         	cmp	r3, #0x0
  3d2290: d002         	beq	0x3d2298 <ScoreKeeperRow::~ScoreKeeperRow()+0x3c> @ imm = #0x4
  3d2292: 9801         	ldr	r0, [sp, #0x4]
  3d2294: f3b5 ff06    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b5e0c
  3d2298: 9b01         	ldr	r3, [sp, #0x4]
  3d229a: 4618         	mov	r0, r3
  3d229c: b003         	add	sp, #0xc
  3d229e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d22a1); words below are literal-pool data ---
  3d22a2: bf00         	nop
  3d22a4: 07a4         	lsls	r4, r4, #0x1e
  3d22a6: 0056         	lsls	r6, r2, #0x1
  3d22a8: dea0         	udf	#0xa0
  3d22aa: ffff b500    	<unknown>

// ==== ScoreKeeperRow::~ScoreKeeperRow
//      file offset 0x3d22ac (= ELF address; Ghidra 0x3e22ac), 28 bytes, Thumb-2
  3d22ac: b500         	push	{lr}
  3d22ae: b083         	sub	sp, #0xc
  3d22b0: 9001         	str	r0, [sp, #0x4]
  3d22b2: 9801         	ldr	r0, [sp, #0x4]
  3d22b4: f7ff ffd2    	bl	0x3d225c <ScoreKeeperRow::~ScoreKeeperRow()> @ imm = #-0x5c
  3d22b8: 9801         	ldr	r0, [sp, #0x4]
  3d22ba: f3b5 fef3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b5de6
  3d22be: 9b01         	ldr	r3, [sp, #0x4]
  3d22c0: 4618         	mov	r0, r3
  3d22c2: b003         	add	sp, #0xc
  3d22c4: f85d fb04    	ldr	pc, [sp], #4
