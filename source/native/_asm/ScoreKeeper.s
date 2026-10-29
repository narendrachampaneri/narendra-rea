// ScoreKeeper: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ScoreKeeper.cpp

// ==== ScoreKeeper::ScoreKeeper
//      file offset 0x3d2184 (= ELF address; Ghidra 0x3e2184), 44 bytes, Thumb-2
  3d2184: b510         	push	{r4, lr}
  3d2186: b082         	sub	sp, #0x8
  3d2188: 9001         	str	r0, [sp, #0x4]
  3d218a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3d21a8 <ScoreKeeper::ScoreKeeper()+0x24>
  3d218c: 447c         	add	r4, pc
  3d218e: 9b01         	ldr	r3, [sp, #0x4]
  3d2190: 4618         	mov	r0, r3
  3d2192: f1c5 fdeb    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1c5bd6
  3d2196: 9b01         	ldr	r3, [sp, #0x4]
  3d2198: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3d21ac <ScoreKeeper::ScoreKeeper()+0x28>
  3d219a: 58a2         	ldr	r2, [r4, r2]
  3d219c: 3208         	adds	r2, #0x8
  3d219e: 601a         	str	r2, [r3]
  3d21a0: 9b01         	ldr	r3, [sp, #0x4]
  3d21a2: 4618         	mov	r0, r3
  3d21a4: b002         	add	sp, #0x8
  3d21a6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d21a7); words below are literal-pool data ---
  3d21a8: 087c         	lsrs	r4, r7, #0x1
  3d21aa: 0056         	lsls	r6, r2, #0x1
  3d21ac: de9c         	udf	#0x9c
  3d21ae: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ScoreKeeper::sharedScoreKeeper
//      file offset 0x3d22c8 (= ELF address; Ghidra 0x3e22c8), 80 bytes, Thumb-2
  3d22c8: b538         	push	{r3, r4, r5, lr}
  3d22ca: 4c11         	ldr	r4, [pc, #0x44]         @ 0x3d2310 <ScoreKeeper::sharedScoreKeeper()+0x48>
  3d22cc: 447c         	add	r4, pc
  3d22ce: 4b11         	ldr	r3, [pc, #0x44]         @ 0x3d2314 <ScoreKeeper::sharedScoreKeeper()+0x4c>
  3d22d0: 58e3         	ldr	r3, [r4, r3]
  3d22d2: 681b         	ldr	r3, [r3]
  3d22d4: 2b00         	cmp	r3, #0x0
  3d22d6: d110         	bne	0x3d22fa <ScoreKeeper::sharedScoreKeeper()+0x32> @ imm = #0x20
  3d22d8: 2030         	movs	r0, #0x30
  3d22da: f3b5 fb43    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3b5686
  3d22de: 4603         	mov	r3, r0
  3d22e0: 461d         	mov	r5, r3
  3d22e2: 4628         	mov	r0, r5
  3d22e4: f7ff ff4e    	bl	0x3d2184 <ScoreKeeper::ScoreKeeper()> @ imm = #-0x164
  3d22e8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3d2314 <ScoreKeeper::sharedScoreKeeper()+0x4c>
  3d22ea: 58e3         	ldr	r3, [r4, r3]
  3d22ec: 601d         	str	r5, [r3]
  3d22ee: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3d2314 <ScoreKeeper::sharedScoreKeeper()+0x4c>
  3d22f0: 58e3         	ldr	r3, [r4, r3]
  3d22f2: 681b         	ldr	r3, [r3]
  3d22f4: 4618         	mov	r0, r3
  3d22f6: f000 f80f    	bl	0x3d2318 <ScoreKeeper::init()> @ imm = #0x1e
  3d22fa: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3d2314 <ScoreKeeper::sharedScoreKeeper()+0x4c>
  3d22fc: 58e3         	ldr	r3, [r4, r3]
  3d22fe: 681b         	ldr	r3, [r3]
  3d2300: e004         	b	0x3d230c <ScoreKeeper::sharedScoreKeeper()+0x44> @ imm = #0x8
  3d2302: 4628         	mov	r0, r5
  3d2304: f3b5 fece    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b5d9c
  3d2308: f3b5 fed0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b5da0
  3d230c: 4618         	mov	r0, r3
  3d230e: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d230f); words below are literal-pool data ---
  3d2310: 073c         	lsls	r4, r7, #0x1c
  3d2312: 0056         	lsls	r6, r2, #0x1
  3d2314: dea4         	udf	#0xa4
  3d2316: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ScoreKeeper::init
//      file offset 0x3d2318 (= ELF address; Ghidra 0x3e2318), 248 bytes, Thumb-2
  3d2318: b510         	push	{r4, lr}
  3d231a: b08a         	sub	sp, #0x28
  3d231c: 9003         	str	r0, [sp, #0xc]
  3d231e: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x3d23f4 <ScoreKeeper::init()+0xdc>
  3d2320: 447c         	add	r4, pc
  3d2322: 9b03         	ldr	r3, [sp, #0xc]
  3d2324: 2201         	movs	r2, #0x1
  3d2326: f883 2028    	strb.w	r2, [r3, #0x28]
  3d232a: 9b03         	ldr	r3, [sp, #0xc]
  3d232c: 2200         	movs	r2, #0x0
  3d232e: 62da         	str	r2, [r3, #0x2c]
  3d2330: f20e f9be    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20e37c
  3d2334: 4602         	mov	r2, r0
  3d2336: 9b03         	ldr	r3, [sp, #0xc]
  3d2338: 492f         	ldr	r1, [pc, #0xbc]         @ 0x3d23f8 <ScoreKeeper::init()+0xe0>
  3d233a: 5861         	ldr	r1, [r4, r1]
  3d233c: 9104         	str	r1, [sp, #0x10]
  3d233e: 2100         	movs	r1, #0x0
  3d2340: 9105         	str	r1, [sp, #0x14]
  3d2342: 492e         	ldr	r1, [pc, #0xb8]         @ 0x3d23fc <ScoreKeeper::init()+0xe4>
  3d2344: 4479         	add	r1, pc
  3d2346: 9100         	str	r1, [sp]
  3d2348: 2100         	movs	r1, #0x0
  3d234a: 9101         	str	r1, [sp, #0x4]
  3d234c: 4610         	mov	r0, r2
  3d234e: 4619         	mov	r1, r3
  3d2350: ab04         	add	r3, sp, #0x10
  3d2352: cb0c         	ldm	r3, {r2, r3}
  3d2354: f20e fa48    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x20e490
  3d2358: f20e f9aa    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20e354
  3d235c: 4602         	mov	r2, r0
  3d235e: 9b03         	ldr	r3, [sp, #0xc]
  3d2360: 4927         	ldr	r1, [pc, #0x9c]         @ 0x3d2400 <ScoreKeeper::init()+0xe8>
  3d2362: 5861         	ldr	r1, [r4, r1]
  3d2364: 9106         	str	r1, [sp, #0x18]
  3d2366: 2100         	movs	r1, #0x0
  3d2368: 9107         	str	r1, [sp, #0x1c]
  3d236a: 4926         	ldr	r1, [pc, #0x98]         @ 0x3d2404 <ScoreKeeper::init()+0xec>
  3d236c: 4479         	add	r1, pc
  3d236e: 9100         	str	r1, [sp]
  3d2370: 2100         	movs	r1, #0x0
  3d2372: 9101         	str	r1, [sp, #0x4]
  3d2374: 4610         	mov	r0, r2
  3d2376: 4619         	mov	r1, r3
  3d2378: ab06         	add	r3, sp, #0x18
  3d237a: cb0c         	ldm	r3, {r2, r3}
  3d237c: f20e fa34    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x20e468
  3d2380: f20e f996    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20e32c
  3d2384: 4602         	mov	r2, r0
  3d2386: 9b03         	ldr	r3, [sp, #0xc]
  3d2388: 491f         	ldr	r1, [pc, #0x7c]         @ 0x3d2408 <ScoreKeeper::init()+0xf0>
  3d238a: 5861         	ldr	r1, [r4, r1]
  3d238c: 9108         	str	r1, [sp, #0x20]
  3d238e: 2100         	movs	r1, #0x0
  3d2390: 9109         	str	r1, [sp, #0x24]
  3d2392: 491e         	ldr	r1, [pc, #0x78]         @ 0x3d240c <ScoreKeeper::init()+0xf4>
  3d2394: 4479         	add	r1, pc
  3d2396: 9100         	str	r1, [sp]
  3d2398: 2100         	movs	r1, #0x0
  3d239a: 9101         	str	r1, [sp, #0x4]
  3d239c: 4610         	mov	r0, r2
  3d239e: 4619         	mov	r1, r3
  3d23a0: ab08         	add	r3, sp, #0x20
  3d23a2: cb0c         	ldm	r3, {r2, r3}
  3d23a4: f20e fa20    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x20e440
  3d23a8: 9b03         	ldr	r3, [sp, #0xc]
  3d23aa: 2200         	movs	r2, #0x0
  3d23ac: 621a         	str	r2, [r3, #0x20]
  3d23ae: f1c4 ffff    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1c4ffe
  3d23b2: 4602         	mov	r2, r0
  3d23b4: 9b03         	ldr	r3, [sp, #0xc]
  3d23b6: 615a         	str	r2, [r3, #0x14]
  3d23b8: f1c4 fffa    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1c4ff4
  3d23bc: 4602         	mov	r2, r0
  3d23be: 9b03         	ldr	r3, [sp, #0xc]
  3d23c0: 619a         	str	r2, [r3, #0x18]
  3d23c2: f1c4 fff5    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1c4fea
  3d23c6: 4602         	mov	r2, r0
  3d23c8: 9b03         	ldr	r3, [sp, #0xc]
  3d23ca: 61da         	str	r2, [r3, #0x1c]
  3d23cc: 9b03         	ldr	r3, [sp, #0xc]
  3d23ce: 695b         	ldr	r3, [r3, #0x14]
  3d23d0: 4618         	mov	r0, r3
  3d23d2: f1c5 fd89    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c5b12
  3d23d6: 9b03         	ldr	r3, [sp, #0xc]
  3d23d8: 699b         	ldr	r3, [r3, #0x18]
  3d23da: 4618         	mov	r0, r3
  3d23dc: f1c5 fd84    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c5b08
  3d23e0: 9b03         	ldr	r3, [sp, #0xc]
  3d23e2: 69db         	ldr	r3, [r3, #0x1c]
  3d23e4: 4618         	mov	r0, r3
  3d23e6: f1c5 fd7f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c5afe
  3d23ea: 2301         	movs	r3, #0x1
  3d23ec: 4618         	mov	r0, r3
  3d23ee: b00a         	add	sp, #0x28
  3d23f0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d23f1); words below are literal-pool data ---
  3d23f2: bf00         	nop
  3d23f4: 06e8         	lsls	r0, r5, #0x1b
  3d23f6: 0056         	lsls	r6, r2, #0x1
  3d23f8: dea8         	udf	#0xa8
  3d23fa: ffff 4edc    	<unknown>
  3d23fe: 0040         	lsls	r0, r0, #0x1
  3d2400: deac         	udf	#0xac
  3d2402: ffff 4ec4    	<unknown>
  3d2406: 0040         	lsls	r0, r0, #0x1
  3d2408: deb0         	udf	#0xb0
  3d240a: ffff 4ea8    	<unknown>
  3d240e: 0040         	lsls	r0, r0, #0x1

// ==== ScoreKeeper::~ScoreKeeper
//      file offset 0x3d2410 (= ELF address; Ghidra 0x3e2410), 104 bytes, Thumb-2
  3d2410: b500         	push	{lr}
  3d2412: b083         	sub	sp, #0xc
  3d2414: 9001         	str	r0, [sp, #0x4]
  3d2416: 4916         	ldr	r1, [pc, #0x58]         @ 0x3d2470 <ScoreKeeper::~ScoreKeeper()+0x60>
  3d2418: 4479         	add	r1, pc
  3d241a: 9b01         	ldr	r3, [sp, #0x4]
  3d241c: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3d2474 <ScoreKeeper::~ScoreKeeper()+0x64>
  3d241e: 588a         	ldr	r2, [r1, r2]
  3d2420: 3208         	adds	r2, #0x8
  3d2422: 601a         	str	r2, [r3]
  3d2424: f20e f944    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20e288
  3d2428: 4602         	mov	r2, r0
  3d242a: 9b01         	ldr	r3, [sp, #0x4]
  3d242c: 4610         	mov	r0, r2
  3d242e: 4619         	mov	r1, r3
  3d2430: f20e fa76    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x20e4ec
  3d2434: 9b01         	ldr	r3, [sp, #0x4]
  3d2436: 695b         	ldr	r3, [r3, #0x14]
  3d2438: 4618         	mov	r0, r3
  3d243a: f1c5 fd3d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c5a7a
  3d243e: 9b01         	ldr	r3, [sp, #0x4]
  3d2440: 699b         	ldr	r3, [r3, #0x18]
  3d2442: 4618         	mov	r0, r3
  3d2444: f1c5 fd38    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c5a70
  3d2448: 9b01         	ldr	r3, [sp, #0x4]
  3d244a: 69db         	ldr	r3, [r3, #0x1c]
  3d244c: 4618         	mov	r0, r3
  3d244e: f1c5 fd33    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c5a66
  3d2452: 9b01         	ldr	r3, [sp, #0x4]
  3d2454: 4618         	mov	r0, r3
  3d2456: f1c5 fcbb    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1c5976
  3d245a: 2300         	movs	r3, #0x0
  3d245c: 2b00         	cmp	r3, #0x0
  3d245e: d002         	beq	0x3d2466 <ScoreKeeper::~ScoreKeeper()+0x56> @ imm = #0x4
  3d2460: 9801         	ldr	r0, [sp, #0x4]
  3d2462: f3b5 fe1f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b5c3e
  3d2466: 9b01         	ldr	r3, [sp, #0x4]
  3d2468: 4618         	mov	r0, r3
  3d246a: b003         	add	sp, #0xc
  3d246c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d246f); words below are literal-pool data ---
  3d2470: 05f0         	lsls	r0, r6, #0x17
  3d2472: 0056         	lsls	r6, r2, #0x1
  3d2474: de9c         	udf	#0x9c
  3d2476: ffff b500    	<unknown>

// ==== ScoreKeeper::~ScoreKeeper
//      file offset 0x3d2478 (= ELF address; Ghidra 0x3e2478), 28 bytes, Thumb-2
  3d2478: b500         	push	{lr}
  3d247a: b083         	sub	sp, #0xc
  3d247c: 9001         	str	r0, [sp, #0x4]
  3d247e: 9801         	ldr	r0, [sp, #0x4]
  3d2480: f7ff ffc6    	bl	0x3d2410 <ScoreKeeper::~ScoreKeeper()> @ imm = #-0x74
  3d2484: 9801         	ldr	r0, [sp, #0x4]
  3d2486: f3b5 fe0d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b5c1a
  3d248a: 9b01         	ldr	r3, [sp, #0x4]
  3d248c: 4618         	mov	r0, r3
  3d248e: b003         	add	sp, #0xc
  3d2490: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreKeeper::onHostDead
//      file offset 0x3d2494 (= ELF address; Ghidra 0x3e2494), 216 bytes, Thumb-2
  3d2494: b510         	push	{r4, lr}
  3d2496: b086         	sub	sp, #0x18
  3d2498: 9001         	str	r0, [sp, #0x4]
  3d249a: 9100         	str	r1, [sp]
  3d249c: 4c31         	ldr	r4, [pc, #0xc4]         @ 0x3d2564 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd0>
  3d249e: 447c         	add	r4, pc
  3d24a0: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3d2568 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd4>
  3d24a2: 58e3         	ldr	r3, [r4, r3]
  3d24a4: 681b         	ldr	r3, [r3]
  3d24a6: 681b         	ldr	r3, [r3]
  3d24a8: f503 73dc    	add.w	r3, r3, #0x1b8
  3d24ac: 681b         	ldr	r3, [r3]
  3d24ae: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3d2568 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd4>
  3d24b0: 58a2         	ldr	r2, [r4, r2]
  3d24b2: 6812         	ldr	r2, [r2]
  3d24b4: a902         	add	r1, sp, #0x8
  3d24b6: 4608         	mov	r0, r1
  3d24b8: 4611         	mov	r1, r2
  3d24ba: 4798         	blx	r3
  3d24bc: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x3d2568 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd4>
  3d24be: 58e3         	ldr	r3, [r4, r3]
  3d24c0: 681b         	ldr	r3, [r3]
  3d24c2: 681b         	ldr	r3, [r3]
  3d24c4: f503 73e0    	add.w	r3, r3, #0x1c0
  3d24c8: 681b         	ldr	r3, [r3]
  3d24ca: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3d2568 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd4>
  3d24cc: 58a2         	ldr	r2, [r4, r2]
  3d24ce: 6812         	ldr	r2, [r2]
  3d24d0: a903         	add	r1, sp, #0xc
  3d24d2: 4608         	mov	r0, r1
  3d24d4: 4611         	mov	r1, r2
  3d24d6: 4798         	blx	r3
  3d24d8: aa04         	add	r2, sp, #0x10
  3d24da: ab02         	add	r3, sp, #0x8
  3d24dc: 4610         	mov	r0, r2
  3d24de: 4619         	mov	r1, r3
  3d24e0: f3e4 f802    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3e4004
  3d24e4: aa05         	add	r2, sp, #0x14
  3d24e6: ab03         	add	r3, sp, #0xc
  3d24e8: 4610         	mov	r0, r2
  3d24ea: 4619         	mov	r1, r3
  3d24ec: f3e3 fffc    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3e3ff8
  3d24f0: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3d2568 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd4>
  3d24f2: 58e3         	ldr	r3, [r4, r3]
  3d24f4: 681b         	ldr	r3, [r3]
  3d24f6: 681b         	ldr	r3, [r3]
  3d24f8: f503 7344    	add.w	r3, r3, #0x310
  3d24fc: 681b         	ldr	r3, [r3]
  3d24fe: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3d2568 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xd4>
  3d2500: 58a2         	ldr	r2, [r4, r2]
  3d2502: 6812         	ldr	r2, [r2]
  3d2504: 4610         	mov	r0, r2
  3d2506: 4798         	blx	r3
  3d2508: 4603         	mov	r3, r0
  3d250a: a904         	add	r1, sp, #0x10
  3d250c: aa05         	add	r2, sp, #0x14
  3d250e: 9801         	ldr	r0, [sp, #0x4]
  3d2510: f000 f8aa    	bl	0x3d2668 <ScoreKeeper::addKill(std::string, std::string, bool)> @ imm = #0x154
  3d2514: ab05         	add	r3, sp, #0x14
  3d2516: 4618         	mov	r0, r3
  3d2518: f3e3 f9fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33f8
  3d251c: ab04         	add	r3, sp, #0x10
  3d251e: 4618         	mov	r0, r3
  3d2520: f3e3 f9f8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33f0
  3d2524: ab03         	add	r3, sp, #0xc
  3d2526: 4618         	mov	r0, r3
  3d2528: f3e3 f9f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33e8
  3d252c: ab02         	add	r3, sp, #0x8
  3d252e: 4618         	mov	r0, r3
  3d2530: f3e3 f9f0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33e0
  3d2534: e014         	b	0x3d2560 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xcc> @ imm = #0x28
  3d2536: ab05         	add	r3, sp, #0x14
  3d2538: 4618         	mov	r0, r3
  3d253a: f3e3 f9eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33d6
  3d253e: e7ff         	b	0x3d2540 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xac> @ imm = #-0x2
  3d2540: ab04         	add	r3, sp, #0x10
  3d2542: 4618         	mov	r0, r3
  3d2544: f3e3 f9e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33cc
  3d2548: e7ff         	b	0x3d254a <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xb6> @ imm = #-0x2
  3d254a: ab03         	add	r3, sp, #0xc
  3d254c: 4618         	mov	r0, r3
  3d254e: f3e3 f9e1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33c2
  3d2552: e7ff         	b	0x3d2554 <ScoreKeeper::onHostDead(cocos2d::CCObject*)+0xc0> @ imm = #-0x2
  3d2554: ab02         	add	r3, sp, #0x8
  3d2556: 4618         	mov	r0, r3
  3d2558: f3e3 f9dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e33b8
  3d255c: f3b5 fda6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b5b4c
  3d2560: b006         	add	sp, #0x18
  3d2562: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d2563); words below are literal-pool data ---
  3d2564: 056a         	lsls	r2, r5, #0x15
  3d2566: 0056         	lsls	r6, r2, #0x1
  3d2568: d784         	bvc	0x3d2474 <ScoreKeeper::~ScoreKeeper()+0x64> @ imm = #-0xf8
  3d256a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ScoreKeeper::onPeerDead
//      file offset 0x3d256c (= ELF address; Ghidra 0x3e256c), 252 bytes, Thumb-2
  3d256c: b510         	push	{r4, lr}
  3d256e: b08c         	sub	sp, #0x30
  3d2570: 9001         	str	r0, [sp, #0x4]
  3d2572: 9100         	str	r1, [sp]
  3d2574: 9b00         	ldr	r3, [sp]
  3d2576: 9307         	str	r3, [sp, #0x1c]
  3d2578: 9807         	ldr	r0, [sp, #0x1c]
  3d257a: 2100         	movs	r1, #0x0
  3d257c: f1c7 fdd0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c7ba0
  3d2580: 4603         	mov	r3, r0
  3d2582: 9308         	str	r3, [sp, #0x20]
  3d2584: 9807         	ldr	r0, [sp, #0x1c]
  3d2586: 2101         	movs	r1, #0x1
  3d2588: f1c7 fdca    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c7b94
  3d258c: 4603         	mov	r3, r0
  3d258e: 9309         	str	r3, [sp, #0x24]
  3d2590: 9807         	ldr	r0, [sp, #0x1c]
  3d2592: 2102         	movs	r1, #0x2
  3d2594: f1c7 fdc4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c7b88
  3d2598: 4603         	mov	r3, r0
  3d259a: 930a         	str	r3, [sp, #0x28]
  3d259c: 9807         	ldr	r0, [sp, #0x1c]
  3d259e: 2104         	movs	r1, #0x4
  3d25a0: f1c7 fdbe    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c7b7c
  3d25a4: 4603         	mov	r3, r0
  3d25a6: 930b         	str	r3, [sp, #0x2c]
  3d25a8: 980b         	ldr	r0, [sp, #0x2c]
  3d25aa: f71a fc53    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe575a
  3d25ae: 4603         	mov	r3, r0
  3d25b0: 2b00         	cmp	r3, #0x0
  3d25b2: bf0c         	ite	eq
  3d25b4: 2300         	moveq	r3, #0x0
  3d25b6: 2301         	movne	r3, #0x1
  3d25b8: f88d 3013    	strb.w	r3, [sp, #0x13]
  3d25bc: 9808         	ldr	r0, [sp, #0x20]
  3d25be: f1c7 f9b3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c7366
  3d25c2: 4604         	mov	r4, r0
  3d25c4: ab03         	add	r3, sp, #0xc
  3d25c6: 4618         	mov	r0, r3
  3d25c8: f3b7 ff14    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b7e28
  3d25cc: aa05         	add	r2, sp, #0x14
  3d25ce: ab03         	add	r3, sp, #0xc
  3d25d0: 4610         	mov	r0, r2
  3d25d2: 4621         	mov	r1, r4
  3d25d4: 461a         	mov	r2, r3
  3d25d6: f3e4 fa43    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e4486
  3d25da: 9809         	ldr	r0, [sp, #0x24]
  3d25dc: f1c7 f9a4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c7348
  3d25e0: 4604         	mov	r4, r0
  3d25e2: ab04         	add	r3, sp, #0x10
  3d25e4: 4618         	mov	r0, r3
  3d25e6: f3b7 ff05    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b7e0a
  3d25ea: aa06         	add	r2, sp, #0x18
  3d25ec: ab04         	add	r3, sp, #0x10
  3d25ee: 4610         	mov	r0, r2
  3d25f0: 4621         	mov	r1, r4
  3d25f2: 461a         	mov	r2, r3
  3d25f4: f3e4 fa34    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e4468
  3d25f8: a905         	add	r1, sp, #0x14
  3d25fa: aa06         	add	r2, sp, #0x18
  3d25fc: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  3d2600: 9801         	ldr	r0, [sp, #0x4]
  3d2602: f000 f831    	bl	0x3d2668 <ScoreKeeper::addKill(std::string, std::string, bool)> @ imm = #0x62
  3d2606: ab06         	add	r3, sp, #0x18
  3d2608: 4618         	mov	r0, r3
  3d260a: f3e3 f983    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e3306
  3d260e: ab04         	add	r3, sp, #0x10
  3d2610: 4618         	mov	r0, r3
  3d2612: f3b7 fef3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b7de6
  3d2616: ab05         	add	r3, sp, #0x14
  3d2618: 4618         	mov	r0, r3
  3d261a: f3e3 f97b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e32f6
  3d261e: ab03         	add	r3, sp, #0xc
  3d2620: 4618         	mov	r0, r3
  3d2622: f3b7 feeb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b7dd6
  3d2626: 980a         	ldr	r0, [sp, #0x28]
  3d2628: f71a fc14    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe57d8
  3d262c: 4603         	mov	r3, r0
  3d262e: 9a01         	ldr	r2, [sp, #0x4]
  3d2630: 6a12         	ldr	r2, [r2, #0x20]
  3d2632: 441a         	add	r2, r3
  3d2634: 9b01         	ldr	r3, [sp, #0x4]
  3d2636: 621a         	str	r2, [r3, #0x20]
  3d2638: e014         	b	0x3d2664 <ScoreKeeper::onPeerDead(cocos2d::CCObject*)+0xf8> @ imm = #0x28
  3d263a: ab06         	add	r3, sp, #0x18
  3d263c: 4618         	mov	r0, r3
  3d263e: f3e3 f969    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e32d2
  3d2642: e7ff         	b	0x3d2644 <ScoreKeeper::onPeerDead(cocos2d::CCObject*)+0xd8> @ imm = #-0x2
  3d2644: ab04         	add	r3, sp, #0x10
  3d2646: 4618         	mov	r0, r3
  3d2648: f3b7 fed8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b7db0
  3d264c: e7ff         	b	0x3d264e <ScoreKeeper::onPeerDead(cocos2d::CCObject*)+0xe2> @ imm = #-0x2
  3d264e: ab05         	add	r3, sp, #0x14
  3d2650: 4618         	mov	r0, r3
  3d2652: f3e3 f95f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e32be
  3d2656: e7ff         	b	0x3d2658 <ScoreKeeper::onPeerDead(cocos2d::CCObject*)+0xec> @ imm = #-0x2
  3d2658: ab03         	add	r3, sp, #0xc
  3d265a: 4618         	mov	r0, r3
  3d265c: f3b7 fece    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b7d9c
  3d2660: f3b5 fd24    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b5a48
  3d2664: b00c         	add	sp, #0x30
  3d2666: bd10         	pop	{r4, pc}

// ==== ScoreKeeper::addKill
//      file offset 0x3d2668 (= ELF address; Ghidra 0x3e2668), 176 bytes, Thumb-2
  3d2668: b510         	push	{r4, lr}
  3d266a: b088         	sub	sp, #0x20
  3d266c: 9003         	str	r0, [sp, #0xc]
  3d266e: 9102         	str	r1, [sp, #0x8]
  3d2670: 9201         	str	r2, [sp, #0x4]
  3d2672: f88d 3003    	strb.w	r3, [sp, #0x3]
  3d2676: 9b03         	ldr	r3, [sp, #0xc]
  3d2678: 695b         	ldr	r3, [r3, #0x14]
  3d267a: 4618         	mov	r0, r3
  3d267c: 9902         	ldr	r1, [sp, #0x8]
  3d267e: f1c1 fc37    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1c186e
  3d2682: 4603         	mov	r3, r0
  3d2684: 9306         	str	r3, [sp, #0x18]
  3d2686: 9b03         	ldr	r3, [sp, #0xc]
  3d2688: 699b         	ldr	r3, [r3, #0x18]
  3d268a: 4618         	mov	r0, r3
  3d268c: 9901         	ldr	r1, [sp, #0x4]
  3d268e: f1c1 fc2f    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1c185e
  3d2692: 4603         	mov	r3, r0
  3d2694: 9307         	str	r3, [sp, #0x1c]
  3d2696: 2300         	movs	r3, #0x0
  3d2698: 9304         	str	r3, [sp, #0x10]
  3d269a: 2300         	movs	r3, #0x0
  3d269c: 9305         	str	r3, [sp, #0x14]
  3d269e: 9b06         	ldr	r3, [sp, #0x18]
  3d26a0: 2b00         	cmp	r3, #0x0
  3d26a2: d004         	beq	0x3d26ae <ScoreKeeper::addKill(std::string, std::string, bool)+0x46> @ imm = #0x8
  3d26a4: 9806         	ldr	r0, [sp, #0x18]
  3d26a6: f71a fbd5    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe5856
  3d26aa: 4603         	mov	r3, r0
  3d26ac: 9304         	str	r3, [sp, #0x10]
  3d26ae: 9b07         	ldr	r3, [sp, #0x1c]
  3d26b0: 2b00         	cmp	r3, #0x0
  3d26b2: d004         	beq	0x3d26be <ScoreKeeper::addKill(std::string, std::string, bool)+0x56> @ imm = #0x8
  3d26b4: 9807         	ldr	r0, [sp, #0x1c]
  3d26b6: f71a fbcd    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe5866
  3d26ba: 4603         	mov	r3, r0
  3d26bc: 9305         	str	r3, [sp, #0x14]
  3d26be: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3d26c2: 2b00         	cmp	r3, #0x0
  3d26c4: d00c         	beq	0x3d26e0 <ScoreKeeper::addKill(std::string, std::string, bool)+0x78> @ imm = #0x18
  3d26c6: 9b03         	ldr	r3, [sp, #0xc]
  3d26c8: 695c         	ldr	r4, [r3, #0x14]
  3d26ca: 9b04         	ldr	r3, [sp, #0x10]
  3d26cc: 3301         	adds	r3, #0x1
  3d26ce: 4618         	mov	r0, r3
  3d26d0: f712 fb1a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xed9cc
  3d26d4: 4603         	mov	r3, r0
  3d26d6: 4620         	mov	r0, r4
  3d26d8: 4619         	mov	r1, r3
  3d26da: 9a02         	ldr	r2, [sp, #0x8]
  3d26dc: f1c2 f92c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1c2258
  3d26e0: 9b03         	ldr	r3, [sp, #0xc]
  3d26e2: 699c         	ldr	r4, [r3, #0x18]
  3d26e4: 9b05         	ldr	r3, [sp, #0x14]
  3d26e6: 3301         	adds	r3, #0x1
  3d26e8: 4618         	mov	r0, r3
  3d26ea: f712 fb0d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xed9e6
  3d26ee: 4603         	mov	r3, r0
  3d26f0: 4620         	mov	r0, r4
  3d26f2: 4619         	mov	r1, r3
  3d26f4: 9a01         	ldr	r2, [sp, #0x4]
  3d26f6: f1c2 f91f    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1c223e
  3d26fa: f20d ffd9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20dfb2
  3d26fe: 4603         	mov	r3, r0
  3d2700: 4618         	mov	r0, r3
  3d2702: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3d2714 <ScoreKeeper::addKill(std::string, std::string, bool)+0xac>
  3d2704: 447b         	add	r3, pc
  3d2706: 4619         	mov	r1, r3
  3d2708: 2200         	movs	r2, #0x0
  3d270a: f20e fa0f    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x20e41e
  3d270e: b008         	add	sp, #0x20
  3d2710: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d2711); words below are literal-pool data ---
  3d2712: bf00         	nop
  3d2714: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3d2838 <ScoreKeeper::addPlayerScore(std::string, std::string, int)+0x50>
  3d2716: 0040         	lsls	r0, r0, #0x1

// ==== ScoreKeeper::getKills
//      file offset 0x3d2718 (= ELF address; Ghidra 0x3e2718), 54 bytes, Thumb-2
  3d2718: b500         	push	{lr}
  3d271a: b085         	sub	sp, #0x14
  3d271c: 9001         	str	r0, [sp, #0x4]
  3d271e: 9100         	str	r1, [sp]
  3d2720: 9b01         	ldr	r3, [sp, #0x4]
  3d2722: 695b         	ldr	r3, [r3, #0x14]
  3d2724: 4618         	mov	r0, r3
  3d2726: 9900         	ldr	r1, [sp]
  3d2728: f1c1 fbe2    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1c17c4
  3d272c: 4603         	mov	r3, r0
  3d272e: 9303         	str	r3, [sp, #0xc]
  3d2730: 2300         	movs	r3, #0x0
  3d2732: 9302         	str	r3, [sp, #0x8]
  3d2734: 9b03         	ldr	r3, [sp, #0xc]
  3d2736: 2b00         	cmp	r3, #0x0
  3d2738: d004         	beq	0x3d2744 <ScoreKeeper::getKills(std::string)+0x2c> @ imm = #0x8
  3d273a: 9803         	ldr	r0, [sp, #0xc]
  3d273c: f71a fb8a    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe58ec
  3d2740: 4603         	mov	r3, r0
  3d2742: 9302         	str	r3, [sp, #0x8]
  3d2744: 9b02         	ldr	r3, [sp, #0x8]
  3d2746: 4618         	mov	r0, r3
  3d2748: b005         	add	sp, #0x14
  3d274a: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreKeeper::getDeaths
//      file offset 0x3d2750 (= ELF address; Ghidra 0x3e2750), 54 bytes, Thumb-2
  3d2750: b500         	push	{lr}
  3d2752: b085         	sub	sp, #0x14
  3d2754: 9001         	str	r0, [sp, #0x4]
  3d2756: 9100         	str	r1, [sp]
  3d2758: 9b01         	ldr	r3, [sp, #0x4]
  3d275a: 699b         	ldr	r3, [r3, #0x18]
  3d275c: 4618         	mov	r0, r3
  3d275e: 9900         	ldr	r1, [sp]
  3d2760: f1c1 fbc6    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1c178c
  3d2764: 4603         	mov	r3, r0
  3d2766: 9303         	str	r3, [sp, #0xc]
  3d2768: 2300         	movs	r3, #0x0
  3d276a: 9302         	str	r3, [sp, #0x8]
  3d276c: 9b03         	ldr	r3, [sp, #0xc]
  3d276e: 2b00         	cmp	r3, #0x0
  3d2770: d004         	beq	0x3d277c <ScoreKeeper::getDeaths(std::string)+0x2c> @ imm = #0x8
  3d2772: 9803         	ldr	r0, [sp, #0xc]
  3d2774: f71a fb6e    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe5924
  3d2778: 4603         	mov	r3, r0
  3d277a: 9302         	str	r3, [sp, #0x8]
  3d277c: 9b02         	ldr	r3, [sp, #0x8]
  3d277e: 4618         	mov	r0, r3
  3d2780: b005         	add	sp, #0x14
  3d2782: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreKeeper::onPlayerPoints
//      file offset 0x3d2788 (= ELF address; Ghidra 0x3e2788), 36 bytes, Thumb-2
  3d2788: b500         	push	{lr}
  3d278a: b085         	sub	sp, #0x14
  3d278c: 9001         	str	r0, [sp, #0x4]
  3d278e: 9100         	str	r1, [sp]
  3d2790: 9b00         	ldr	r3, [sp]
  3d2792: 9303         	str	r3, [sp, #0xc]
  3d2794: 9803         	ldr	r0, [sp, #0xc]
  3d2796: f71a fb5d    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xe5946
  3d279a: 4603         	mov	r3, r0
  3d279c: 9a01         	ldr	r2, [sp, #0x4]
  3d279e: 6a12         	ldr	r2, [r2, #0x20]
  3d27a0: 441a         	add	r2, r3
  3d27a2: 9b01         	ldr	r3, [sp, #0x4]
  3d27a4: 621a         	str	r2, [r3, #0x20]
  3d27a6: b005         	add	sp, #0x14
  3d27a8: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreKeeper::clearScores
//      file offset 0x3d27ac (= ELF address; Ghidra 0x3e27ac), 60 bytes, Thumb-2
  3d27ac: b500         	push	{lr}
  3d27ae: b083         	sub	sp, #0xc
  3d27b0: 9001         	str	r0, [sp, #0x4]
  3d27b2: 9b01         	ldr	r3, [sp, #0x4]
  3d27b4: 695b         	ldr	r3, [r3, #0x14]
  3d27b6: 4618         	mov	r0, r3
  3d27b8: f1c4 fc06    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x1c480c
  3d27bc: 9b01         	ldr	r3, [sp, #0x4]
  3d27be: 699b         	ldr	r3, [r3, #0x18]
  3d27c0: 4618         	mov	r0, r3
  3d27c2: f1c4 fc01    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x1c4802
  3d27c6: 9b01         	ldr	r3, [sp, #0x4]
  3d27c8: 69db         	ldr	r3, [r3, #0x1c]
  3d27ca: 4618         	mov	r0, r3
  3d27cc: f1c4 fbfc    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x1c47f8
  3d27d0: 9b01         	ldr	r3, [sp, #0x4]
  3d27d2: 2200         	movs	r2, #0x0
  3d27d4: 621a         	str	r2, [r3, #0x20]
  3d27d6: 9b01         	ldr	r3, [sp, #0x4]
  3d27d8: 2200         	movs	r2, #0x0
  3d27da: 625a         	str	r2, [r3, #0x24]
  3d27dc: 9b01         	ldr	r3, [sp, #0x4]
  3d27de: 2200         	movs	r2, #0x0
  3d27e0: 62da         	str	r2, [r3, #0x2c]
  3d27e2: b003         	add	sp, #0xc
  3d27e4: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreKeeper::addPlayerScore
//      file offset 0x3d27e8 (= ELF address; Ghidra 0x3e27e8), 142 bytes, Thumb-2
  3d27e8: b510         	push	{r4, lr}
  3d27ea: b086         	sub	sp, #0x18
  3d27ec: 9003         	str	r0, [sp, #0xc]
  3d27ee: 9102         	str	r1, [sp, #0x8]
  3d27f0: 9201         	str	r2, [sp, #0x4]
  3d27f2: 9300         	str	r3, [sp]
  3d27f4: 2020         	movs	r0, #0x20
  3d27f6: f3b5 f8b5    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3b516a
  3d27fa: 4603         	mov	r3, r0
  3d27fc: 461c         	mov	r4, r3
  3d27fe: 4620         	mov	r0, r4
  3d2800: f7ff fcd6    	bl	0x3d21b0 <ScoreKeeperRow::ScoreKeeperRow()> @ imm = #-0x654
  3d2804: 9405         	str	r4, [sp, #0x14]
  3d2806: 9b05         	ldr	r3, [sp, #0x14]
  3d2808: 4618         	mov	r0, r3
  3d280a: f1c5 fb77    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1c56ee
  3d280e: 9b05         	ldr	r3, [sp, #0x14]
  3d2810: 3314         	adds	r3, #0x14
  3d2812: 4618         	mov	r0, r3
  3d2814: 9902         	ldr	r1, [sp, #0x8]
  3d2816: f3e3 fecd    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3e3d9a
  3d281a: 9b05         	ldr	r3, [sp, #0x14]
  3d281c: 9a00         	ldr	r2, [sp]
  3d281e: 61da         	str	r2, [r3, #0x1c]
  3d2820: 9b05         	ldr	r3, [sp, #0x14]
  3d2822: 3318         	adds	r3, #0x18
  3d2824: 4618         	mov	r0, r3
  3d2826: 9901         	ldr	r1, [sp, #0x4]
  3d2828: f3e3 fec4    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3e3d88
  3d282c: 9b03         	ldr	r3, [sp, #0xc]
  3d282e: 69db         	ldr	r3, [r3, #0x1c]
  3d2830: 4618         	mov	r0, r3
  3d2832: 9905         	ldr	r1, [sp, #0x14]
  3d2834: 9a01         	ldr	r2, [sp, #0x4]
  3d2836: f1c2 f87f    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1c20fe
  3d283a: 9b03         	ldr	r3, [sp, #0xc]
  3d283c: 695c         	ldr	r4, [r3, #0x14]
  3d283e: 2000         	movs	r0, #0x0
  3d2840: f712 fa62    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xedb3c
  3d2844: 4603         	mov	r3, r0
  3d2846: 4620         	mov	r0, r4
  3d2848: 4619         	mov	r1, r3
  3d284a: 9a01         	ldr	r2, [sp, #0x4]
  3d284c: f1c2 f874    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1c20e8
  3d2850: 9b03         	ldr	r3, [sp, #0xc]
  3d2852: 699c         	ldr	r4, [r3, #0x18]
  3d2854: 2000         	movs	r0, #0x0
  3d2856: f712 fa57    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xedb52
  3d285a: 4603         	mov	r3, r0
  3d285c: 4620         	mov	r0, r4
  3d285e: 4619         	mov	r1, r3
  3d2860: 9a01         	ldr	r2, [sp, #0x4]
  3d2862: f1c2 f869    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1c20d2
  3d2866: e004         	b	0x3d2872 <ScoreKeeper::addPlayerScore(std::string, std::string, int)+0x8a> @ imm = #0x8
  3d2868: 4620         	mov	r0, r4
  3d286a: f3b5 fc1b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b5836
  3d286e: f3b5 fc1d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b583a
  3d2872: b006         	add	sp, #0x18
  3d2874: bd10         	pop	{r4, pc}

// ==== ScoreKeeper::setScore
//      file offset 0x3d2878 (= ELF address; Ghidra 0x3e2878), 16 bytes, Thumb-2
  3d2878: b082         	sub	sp, #0x8
  3d287a: 9001         	str	r0, [sp, #0x4]
  3d287c: 9100         	str	r1, [sp]
  3d287e: 9b01         	ldr	r3, [sp, #0x4]
  3d2880: 9a00         	ldr	r2, [sp]
  3d2882: 621a         	str	r2, [r3, #0x20]
  3d2884: b002         	add	sp, #0x8
  3d2886: 4770         	bx	lr

// ==== ScoreKeeper::getScore
//      file offset 0x3d2888 (= ELF address; Ghidra 0x3e2888), 14 bytes, Thumb-2
  3d2888: b082         	sub	sp, #0x8
  3d288a: 9001         	str	r0, [sp, #0x4]
  3d288c: 9b01         	ldr	r3, [sp, #0x4]
  3d288e: 6a1b         	ldr	r3, [r3, #0x20]
  3d2890: 4618         	mov	r0, r3
  3d2892: b002         	add	sp, #0x8
  3d2894: 4770         	bx	lr

// ==== ScoreKeeper::getPlayerInfo
//      file offset 0x3d2898 (= ELF address; Ghidra 0x3e2898), 14 bytes, Thumb-2
  3d2898: b082         	sub	sp, #0x8
  3d289a: 9001         	str	r0, [sp, #0x4]
  3d289c: 9b01         	ldr	r3, [sp, #0x4]
  3d289e: 69db         	ldr	r3, [r3, #0x1c]
  3d28a0: 4618         	mov	r0, r3
  3d28a2: b002         	add	sp, #0x8
  3d28a4: 4770         	bx	lr

// ==== ScoreKeeper::addSuicide
//      file offset 0x3d28a8 (= ELF address; Ghidra 0x3e28a8), 18 bytes, Thumb-2
  3d28a8: b082         	sub	sp, #0x8
  3d28aa: 9001         	str	r0, [sp, #0x4]
  3d28ac: 9b01         	ldr	r3, [sp, #0x4]
  3d28ae: 6a5b         	ldr	r3, [r3, #0x24]
  3d28b0: 1c5a         	adds	r2, r3, #0x1
  3d28b2: 9b01         	ldr	r3, [sp, #0x4]
  3d28b4: 625a         	str	r2, [r3, #0x24]
  3d28b6: b002         	add	sp, #0x8
  3d28b8: 4770         	bx	lr

// ==== ScoreKeeper::getSuicides
//      file offset 0x3d28bc (= ELF address; Ghidra 0x3e28bc), 14 bytes, Thumb-2
  3d28bc: b082         	sub	sp, #0x8
  3d28be: 9001         	str	r0, [sp, #0x4]
  3d28c0: 9b01         	ldr	r3, [sp, #0x4]
  3d28c2: 6a5b         	ldr	r3, [r3, #0x24]
  3d28c4: 4618         	mov	r0, r3
  3d28c6: b002         	add	sp, #0x8
  3d28c8: 4770         	bx	lr

// ==== ScoreKeeper::applyAward
//      file offset 0x3d28cc (= ELF address; Ghidra 0x3e28cc), 400 bytes, Thumb-2
  3d28cc: b510         	push	{r4, lr}
  3d28ce: b08c         	sub	sp, #0x30
  3d28d0: 9003         	str	r0, [sp, #0xc]
  3d28d2: 9102         	str	r1, [sp, #0x8]
  3d28d4: 9201         	str	r2, [sp, #0x4]
  3d28d6: 9300         	str	r3, [sp]
  3d28d8: 9b03         	ldr	r3, [sp, #0xc]
  3d28da: f893 3028    	ldrb.w	r3, [r3, #0x28]
  3d28de: f083 0301    	eor	r3, r3, #0x1
  3d28e2: b2db         	uxtb	r3, r3
  3d28e4: 2b00         	cmp	r3, #0x0
  3d28e6: f000 80b5    	beq.w	0x3d2a54 <ScoreKeeper::applyAward(int, int, int, int)+0x188> @ imm = #0x16a
  3d28ea: f052 fbe5    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x527ca
  3d28ee: 4603         	mov	r3, r0
  3d28f0: 4618         	mov	r0, r3
  3d28f2: f052 fd77    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x52aee
  3d28f6: 4603         	mov	r3, r0
  3d28f8: 4618         	mov	r0, r3
  3d28fa: f7ff fbdf    	bl	0x3d20bc <SMAW::doRemoteFire(float, cpVect, cpVect, int, std::string)+0xe34> @ imm = #-0x842
  3d28fe: 9006         	str	r0, [sp, #0x18]
  3d2900: f052 fbda    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x527b4
  3d2904: 4601         	mov	r1, r0
  3d2906: 9b02         	ldr	r3, [sp, #0x8]
  3d2908: 461a         	mov	r2, r3
  3d290a: ea4f 73e2    	asr.w	r3, r2, #0x1f
  3d290e: 4608         	mov	r0, r1
  3d2910: 2100         	movs	r1, #0x0
  3d2912: f052 ff65    	bl	0x4257e0 <LeaderBoardBridge::addLocalScore(ELeaderboardType, long long)> @ imm = #0x52eca
  3d2916: f052 fbcf    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x5279e
  3d291a: 4601         	mov	r1, r0
  3d291c: 9b01         	ldr	r3, [sp, #0x4]
  3d291e: 461a         	mov	r2, r3
  3d2920: ea4f 73e2    	asr.w	r3, r2, #0x1f
  3d2924: 4608         	mov	r0, r1
  3d2926: 2102         	movs	r1, #0x2
  3d2928: f052 ff5a    	bl	0x4257e0 <LeaderBoardBridge::addLocalScore(ELeaderboardType, long long)> @ imm = #0x52eb4
  3d292c: f052 fbc4    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x52788
  3d2930: 4601         	mov	r1, r0
  3d2932: 9b00         	ldr	r3, [sp]
  3d2934: 461a         	mov	r2, r3
  3d2936: ea4f 73e2    	asr.w	r3, r2, #0x1f
  3d293a: 4608         	mov	r0, r1
  3d293c: 2103         	movs	r1, #0x3
  3d293e: f052 ff4f    	bl	0x4257e0 <LeaderBoardBridge::addLocalScore(ELeaderboardType, long long)> @ imm = #0x52e9e
  3d2942: f052 fbb9    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x52772
  3d2946: 4601         	mov	r1, r0
  3d2948: 9b0e         	ldr	r3, [sp, #0x38]
  3d294a: 461a         	mov	r2, r3
  3d294c: ea4f 73e2    	asr.w	r3, r2, #0x1f
  3d2950: 4608         	mov	r0, r1
  3d2952: 2106         	movs	r1, #0x6
  3d2954: f052 ff44    	bl	0x4257e0 <LeaderBoardBridge::addLocalScore(ELeaderboardType, long long)> @ imm = #0x52e88
  3d2958: f052 fbae    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x5275c
  3d295c: 4603         	mov	r3, r0
  3d295e: 4618         	mov	r0, r3
  3d2960: 9901         	ldr	r1, [sp, #0x4]
  3d2962: 9a00         	ldr	r2, [sp]
  3d2964: f052 fd38    	bl	0x4253d8 <LeaderBoardBridge::updatePlayerSkill(int, int)> @ imm = #0x52a70
  3d2968: f052 fba6    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x5274c
  3d296c: 4603         	mov	r3, r0
  3d296e: 4618         	mov	r0, r3
  3d2970: f052 feb4    	bl	0x4256dc <LeaderBoardBridge::sendServerScores()> @ imm = #0x52d68
  3d2974: f052 fba0    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x52740
  3d2978: 4603         	mov	r3, r0
  3d297a: 4618         	mov	r0, r3
  3d297c: f052 fd32    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x52a64
  3d2980: 4603         	mov	r3, r0
  3d2982: 9307         	str	r3, [sp, #0x1c]
  3d2984: 9807         	ldr	r0, [sp, #0x1c]
  3d2986: f7ff fb99    	bl	0x3d20bc <SMAW::doRemoteFire(float, cpVect, cpVect, int, std::string)+0xe34> @ imm = #-0x8ce
  3d298a: 9008         	str	r0, [sp, #0x20]
  3d298c: 9808         	ldr	r0, [sp, #0x20]
  3d298e: f7ff fb6d    	bl	0x3d206c <SMAW::doRemoteFire(float, cpVect, cpVect, int, std::string)+0xde4> @ imm = #-0x926
  3d2992: 4603         	mov	r3, r0
  3d2994: 9a07         	ldr	r2, [sp, #0x1c]
  3d2996: 1ad3         	subs	r3, r2, r3
  3d2998: 9309         	str	r3, [sp, #0x24]
  3d299a: 9b08         	ldr	r3, [sp, #0x20]
  3d299c: 3301         	adds	r3, #0x1
  3d299e: 4618         	mov	r0, r3
  3d29a0: f7ff fb64    	bl	0x3d206c <SMAW::doRemoteFire(float, cpVect, cpVect, int, std::string)+0xde4> @ imm = #-0x938
  3d29a4: 4604         	mov	r4, r0
  3d29a6: 9808         	ldr	r0, [sp, #0x20]
  3d29a8: f7ff fb60    	bl	0x3d206c <SMAW::doRemoteFire(float, cpVect, cpVect, int, std::string)+0xde4> @ imm = #-0x940
  3d29ac: 4603         	mov	r3, r0
  3d29ae: 1ae3         	subs	r3, r4, r3
  3d29b0: 930a         	str	r3, [sp, #0x28]
  3d29b2: 9b09         	ldr	r3, [sp, #0x24]
  3d29b4: ee06 3a90    	vmov	s13, r3
  3d29b8: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3d29bc: 9b0a         	ldr	r3, [sp, #0x28]
  3d29be: ee06 3a90    	vmov	s13, r3
  3d29c2: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3d29c6: eec7 7a27    	vdiv.f32	s15, s14, s15
  3d29ca: edcd 7a0b    	vstr	s15, [sp, #44]
  3d29ce: 2300         	movs	r3, #0x0
  3d29d0: 9305         	str	r3, [sp, #0x14]
  3d29d2: e016         	b	0x3d2a02 <ScoreKeeper::applyAward(int, int, int, int)+0x136> @ imm = #0x2c
  3d29d4: f04e f80c    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x4e018
  3d29d8: 4602         	mov	r2, r0
  3d29da: 9b05         	ldr	r3, [sp, #0x14]
  3d29dc: 4610         	mov	r0, r2
  3d29de: 4619         	mov	r1, r3
  3d29e0: f04f 0200    	mov.w	r2, #0x0
  3d29e4: f2c4 22c8    	movt	r2, #0x42c8
  3d29e8: f04e fb5a    	bl	0x4210a0 <AchievementBridge::setLocalProgress(EAchievementType, float)> @ imm = #0x4e6b4
  3d29ec: f04e f800    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x4e000
  3d29f0: 4602         	mov	r2, r0
  3d29f2: 9b05         	ldr	r3, [sp, #0x14]
  3d29f4: 4610         	mov	r0, r2
  3d29f6: 4619         	mov	r1, r3
  3d29f8: f04e fb04    	bl	0x421004 <AchievementBridge::sendServerProgress(EAchievementType)> @ imm = #0x4e608
  3d29fc: 9b05         	ldr	r3, [sp, #0x14]
  3d29fe: 3301         	adds	r3, #0x1
  3d2a00: 9305         	str	r3, [sp, #0x14]
  3d2a02: 9a05         	ldr	r2, [sp, #0x14]
  3d2a04: 9b08         	ldr	r3, [sp, #0x20]
  3d2a06: 429a         	cmp	r2, r3
  3d2a08: dde4         	ble	0x3d29d4 <ScoreKeeper::applyAward(int, int, int, int)+0x108> @ imm = #-0x38
  3d2a0a: 9b08         	ldr	r3, [sp, #0x20]
  3d2a0c: 3301         	adds	r3, #0x1
  3d2a0e: 2b14         	cmp	r3, #0x14
  3d2a10: dc19         	bgt	0x3d2a46 <ScoreKeeper::applyAward(int, int, int, int)+0x17a> @ imm = #0x32
  3d2a12: f04d ffed    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x4dfda
  3d2a16: 4602         	mov	r2, r0
  3d2a18: 9b08         	ldr	r3, [sp, #0x20]
  3d2a1a: 3301         	adds	r3, #0x1
  3d2a1c: ed9d 7a0b    	vldr	s14, [sp, #44]
  3d2a20: eddf 7a0d    	vldr	s15, [pc, #52]          @ 0x3d2a58 <ScoreKeeper::applyAward(int, int, int, int)+0x18c>
  3d2a24: ee67 7a27    	vmul.f32	s15, s14, s15
  3d2a28: 4610         	mov	r0, r2
  3d2a2a: 4619         	mov	r1, r3
  3d2a2c: ee17 2a90    	vmov	r2, s15
  3d2a30: f04e fb36    	bl	0x4210a0 <AchievementBridge::setLocalProgress(EAchievementType, float)> @ imm = #0x4e66c
  3d2a34: f04d ffdc    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x4dfb8
  3d2a38: 4602         	mov	r2, r0
  3d2a3a: 9b08         	ldr	r3, [sp, #0x20]
  3d2a3c: 3301         	adds	r3, #0x1
  3d2a3e: 4610         	mov	r0, r2
  3d2a40: 4619         	mov	r1, r3
  3d2a42: f04e fadf    	bl	0x421004 <AchievementBridge::sendServerProgress(EAchievementType)> @ imm = #0x4e5be
  3d2a46: 9a06         	ldr	r2, [sp, #0x18]
  3d2a48: 9b08         	ldr	r3, [sp, #0x20]
  3d2a4a: 429a         	cmp	r2, r3
  3d2a4c: da02         	bge	0x3d2a54 <ScoreKeeper::applyAward(int, int, int, int)+0x188> @ imm = #0x4
  3d2a4e: 9b03         	ldr	r3, [sp, #0xc]
  3d2a50: 2201         	movs	r2, #0x1
  3d2a52: 62da         	str	r2, [r3, #0x2c]
  3d2a54: b00c         	add	sp, #0x30
  3d2a56: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d2a57); words below are literal-pool data ---
  3d2a58: 0000         	movs	r0, r0
  3d2a5a: 42c8         	cmn	r0, r1

// ==== ScoreKeeper::applyPenalty
//      file offset 0x3d2a5c (= ELF address; Ghidra 0x3e2a5c), 52 bytes, Thumb-2
  3d2a5c: b500         	push	{lr}
  3d2a5e: b083         	sub	sp, #0xc
  3d2a60: 9001         	str	r0, [sp, #0x4]
  3d2a62: 9b01         	ldr	r3, [sp, #0x4]
  3d2a64: f893 3028    	ldrb.w	r3, [r3, #0x28]
  3d2a68: f083 0301    	eor	r3, r3, #0x1
  3d2a6c: b2db         	uxtb	r3, r3
  3d2a6e: 2b00         	cmp	r3, #0x0
  3d2a70: d009         	beq	0x3d2a86 <ScoreKeeper::applyPenalty()+0x2a> @ imm = #0x12
  3d2a72: f20f fddb    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x20fbb6
  3d2a76: 4603         	mov	r3, r0
  3d2a78: 4618         	mov	r0, r3
  3d2a7a: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3d2a8c <ScoreKeeper::applyPenalty()+0x30>
  3d2a7c: 447b         	add	r3, pc
  3d2a7e: 4619         	mov	r1, r3
  3d2a80: 2201         	movs	r2, #0x1
  3d2a82: f20f fd8d    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x20fb1a
  3d2a86: b003         	add	sp, #0xc
  3d2a88: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d2a8b); words below are literal-pool data ---
  3d2a8c: 47e0         	blx	r12
  3d2a8e: 0040         	lsls	r0, r0, #0x1

// ==== ScoreKeeper::getRankChange
//      file offset 0x3d2a90 (= ELF address; Ghidra 0x3e2a90), 14 bytes, Thumb-2
  3d2a90: b082         	sub	sp, #0x8
  3d2a92: 9001         	str	r0, [sp, #0x4]
  3d2a94: 9b01         	ldr	r3, [sp, #0x4]
  3d2a96: 6adb         	ldr	r3, [r3, #0x2c]
  3d2a98: 4618         	mov	r0, r3
  3d2a9a: b002         	add	sp, #0x8
  3d2a9c: 4770         	bx	lr
