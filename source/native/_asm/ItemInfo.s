// ItemInfo: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 5 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ItemInfo.cpp

// ==== ItemInfo::ItemInfo
//      file offset 0x349184 (= ELF address; Ghidra 0x359184), 260 bytes, Thumb-2
  349184: b510         	push	{r4, lr}
  349186: b088         	sub	sp, #0x20
  349188: 9003         	str	r0, [sp, #0xc]
  34918a: 9b03         	ldr	r3, [sp, #0xc]
  34918c: 4618         	mov	r0, r3
  34918e: f06c f00f    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46c01e
  349192: 9b03         	ldr	r3, [sp, #0xc]
  349194: 3304         	adds	r3, #0x4
  349196: 4618         	mov	r0, r3
  349198: f06c f00a    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46c014
  34919c: 9b03         	ldr	r3, [sp, #0xc]
  34919e: 3308         	adds	r3, #0x8
  3491a0: 4618         	mov	r0, r3
  3491a2: f06c f005    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46c00a
  3491a6: 9b03         	ldr	r3, [sp, #0xc]
  3491a8: 331c         	adds	r3, #0x1c
  3491aa: 4618         	mov	r0, r3
  3491ac: f06c f000    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x46c000
  3491b0: 9b03         	ldr	r3, [sp, #0xc]
  3491b2: 3320         	adds	r3, #0x20
  3491b4: 4618         	mov	r0, r3
  3491b6: f24a f875    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x24a0ea
  3491ba: 9b03         	ldr	r3, [sp, #0xc]
  3491bc: 4618         	mov	r0, r3
  3491be: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x349278 <ItemInfo::ItemInfo()+0xf4>
  3491c0: 447b         	add	r3, pc
  3491c2: 4619         	mov	r1, r3
  3491c4: f06c f654    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46cca8
  3491c8: 9b03         	ldr	r3, [sp, #0xc]
  3491ca: 3304         	adds	r3, #0x4
  3491cc: 4618         	mov	r0, r3
  3491ce: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x34927c <ItemInfo::ItemInfo()+0xf8>
  3491d0: 447b         	add	r3, pc
  3491d2: 4619         	mov	r1, r3
  3491d4: f06c f64c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46cc98
  3491d8: 9b03         	ldr	r3, [sp, #0xc]
  3491da: 3308         	adds	r3, #0x8
  3491dc: 4618         	mov	r0, r3
  3491de: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x349280 <ItemInfo::ItemInfo()+0xfc>
  3491e0: 447b         	add	r3, pc
  3491e2: 4619         	mov	r1, r3
  3491e4: f06c f644    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46cc88
  3491e8: 9b03         	ldr	r3, [sp, #0xc]
  3491ea: 331c         	adds	r3, #0x1c
  3491ec: 4618         	mov	r0, r3
  3491ee: 4b25         	ldr	r3, [pc, #0x94]         @ 0x349284 <ItemInfo::ItemInfo()+0x100>
  3491f0: 447b         	add	r3, pc
  3491f2: 4619         	mov	r1, r3
  3491f4: f06c f63c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46cc78
  3491f8: 9b03         	ldr	r3, [sp, #0xc]
  3491fa: 2200         	movs	r2, #0x0
  3491fc: 60da         	str	r2, [r3, #0xc]
  3491fe: 9b03         	ldr	r3, [sp, #0xc]
  349200: f04f 0200    	mov.w	r2, #0x0
  349204: 611a         	str	r2, [r3, #0x10]
  349206: 9b03         	ldr	r3, [sp, #0xc]
  349208: f04f 0200    	mov.w	r2, #0x0
  34920c: 615a         	str	r2, [r3, #0x14]
  34920e: 9b03         	ldr	r3, [sp, #0xc]
  349210: f103 0420    	add.w	r4, r3, #0x20
  349214: ab04         	add	r3, sp, #0x10
  349216: f04f 0200    	mov.w	r2, #0x0
  34921a: 9200         	str	r2, [sp]
  34921c: 4618         	mov	r0, r3
  34921e: f04f 0100    	mov.w	r1, #0x0
  349222: f04f 0200    	mov.w	r2, #0x0
  349226: f04f 0300    	mov.w	r3, #0x0
  34922a: f24a f859    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x24a0b2
  34922e: ab04         	add	r3, sp, #0x10
  349230: 4620         	mov	r0, r4
  349232: 4619         	mov	r1, r3
  349234: f24a f88e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x24a11c
  349238: 9b03         	ldr	r3, [sp, #0xc]
  34923a: 2200         	movs	r2, #0x0
  34923c: 761a         	strb	r2, [r3, #0x18]
  34923e: 9b03         	ldr	r3, [sp, #0xc]
  349240: e017         	b	0x349272 <ItemInfo::ItemInfo()+0xee> @ imm = #0x2e
  349242: 9b03         	ldr	r3, [sp, #0xc]
  349244: 331c         	adds	r3, #0x1c
  349246: 4618         	mov	r0, r3
  349248: f06c f364    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c6c8
  34924c: e7ff         	b	0x34924e <ItemInfo::ItemInfo()+0xca> @ imm = #-0x2
  34924e: 9b03         	ldr	r3, [sp, #0xc]
  349250: 3308         	adds	r3, #0x8
  349252: 4618         	mov	r0, r3
  349254: f06c f35e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c6bc
  349258: e7ff         	b	0x34925a <ItemInfo::ItemInfo()+0xd6> @ imm = #-0x2
  34925a: 9b03         	ldr	r3, [sp, #0xc]
  34925c: 3304         	adds	r3, #0x4
  34925e: 4618         	mov	r0, r3
  349260: f06c f358    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c6b0
  349264: e7ff         	b	0x349266 <ItemInfo::ItemInfo()+0xe2> @ imm = #-0x2
  349266: 9b03         	ldr	r3, [sp, #0xc]
  349268: 4618         	mov	r0, r3
  34926a: f06c f353    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c6a6
  34926e: f03e f71d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43ee3a
  349272: 4618         	mov	r0, r3
  349274: b008         	add	sp, #0x20
  349276: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x349277); words below are literal-pool data ---
  349278: 18ac         	adds	r4, r5, r2
  34927a: 0048         	lsls	r0, r1, #0x1
  34927c: 189c         	adds	r4, r3, r2
  34927e: 0048         	lsls	r0, r1, #0x1
  349280: 188c         	adds	r4, r1, r2
  349282: 0048         	lsls	r0, r1, #0x1
  349284: 187c         	adds	r4, r7, r1
  349286: 0048         	lsls	r0, r1, #0x1

// ==== ItemInfo::~ItemInfo
//      file offset 0x3492cc (= ELF address; Ghidra 0x3592cc), 54 bytes, Thumb-2
  3492cc: b500         	push	{lr}
  3492ce: b083         	sub	sp, #0xc
  3492d0: 9001         	str	r0, [sp, #0x4]
  3492d2: 9b01         	ldr	r3, [sp, #0x4]
  3492d4: 331c         	adds	r3, #0x1c
  3492d6: 4618         	mov	r0, r3
  3492d8: f06c f31c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c638
  3492dc: 9b01         	ldr	r3, [sp, #0x4]
  3492de: 3308         	adds	r3, #0x8
  3492e0: 4618         	mov	r0, r3
  3492e2: f06c f317    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c62e
  3492e6: 9b01         	ldr	r3, [sp, #0x4]
  3492e8: 3304         	adds	r3, #0x4
  3492ea: 4618         	mov	r0, r3
  3492ec: f06c f312    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c624
  3492f0: 9b01         	ldr	r3, [sp, #0x4]
  3492f2: 4618         	mov	r0, r3
  3492f4: f06c f30e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46c61c
  3492f8: 9b01         	ldr	r3, [sp, #0x4]
  3492fa: 4618         	mov	r0, r3
  3492fc: b003         	add	sp, #0xc
  3492fe: f85d fb04    	ldr	pc, [sp], #4

// ==== ItemInfo::operator=
//      file offset 0x349dbc (= ELF address; Ghidra 0x359dbc), 132 bytes, Thumb-2
  349dbc: b500         	push	{lr}
  349dbe: b083         	sub	sp, #0xc
  349dc0: 9001         	str	r0, [sp, #0x4]
  349dc2: 9100         	str	r1, [sp]
  349dc4: 9a01         	ldr	r2, [sp, #0x4]
  349dc6: 9b00         	ldr	r3, [sp]
  349dc8: 4610         	mov	r0, r2
  349dca: 4619         	mov	r1, r3
  349dcc: f06b f28c    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x46b518
  349dd0: 9b01         	ldr	r3, [sp, #0x4]
  349dd2: 1d1a         	adds	r2, r3, #0x4
  349dd4: 9b00         	ldr	r3, [sp]
  349dd6: 3304         	adds	r3, #0x4
  349dd8: 4610         	mov	r0, r2
  349dda: 4619         	mov	r1, r3
  349ddc: f06b f284    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x46b508
  349de0: 9b01         	ldr	r3, [sp, #0x4]
  349de2: f103 0208    	add.w	r2, r3, #0x8
  349de6: 9b00         	ldr	r3, [sp]
  349de8: 3308         	adds	r3, #0x8
  349dea: 4610         	mov	r0, r2
  349dec: 4619         	mov	r1, r3
  349dee: f06b f27b    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x46b4f6
  349df2: 9b00         	ldr	r3, [sp]
  349df4: 68da         	ldr	r2, [r3, #0xc]
  349df6: 9b01         	ldr	r3, [sp, #0x4]
  349df8: 60da         	str	r2, [r3, #0xc]
  349dfa: 9b00         	ldr	r3, [sp]
  349dfc: 691a         	ldr	r2, [r3, #0x10]
  349dfe: 9b01         	ldr	r3, [sp, #0x4]
  349e00: 611a         	str	r2, [r3, #0x10]
  349e02: 9b00         	ldr	r3, [sp]
  349e04: 695a         	ldr	r2, [r3, #0x14]
  349e06: 9b01         	ldr	r3, [sp, #0x4]
  349e08: 615a         	str	r2, [r3, #0x14]
  349e0a: 9b00         	ldr	r3, [sp]
  349e0c: 7e1a         	ldrb	r2, [r3, #0x18]
  349e0e: 9b01         	ldr	r3, [sp, #0x4]
  349e10: 761a         	strb	r2, [r3, #0x18]
  349e12: 9b01         	ldr	r3, [sp, #0x4]
  349e14: f103 021c    	add.w	r2, r3, #0x1c
  349e18: 9b00         	ldr	r3, [sp]
  349e1a: 331c         	adds	r3, #0x1c
  349e1c: 4610         	mov	r0, r2
  349e1e: 4619         	mov	r1, r3
  349e20: f06b f262    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x46b4c4
  349e24: 9b01         	ldr	r3, [sp, #0x4]
  349e26: f103 0220    	add.w	r2, r3, #0x20
  349e2a: 9b00         	ldr	r3, [sp]
  349e2c: 3320         	adds	r3, #0x20
  349e2e: 4610         	mov	r0, r2
  349e30: 4619         	mov	r1, r3
  349e32: f249 fa8f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x24951e
  349e36: 9b01         	ldr	r3, [sp, #0x4]
  349e38: 4618         	mov	r0, r3
  349e3a: b003         	add	sp, #0xc
  349e3c: f85d fb04    	ldr	pc, [sp], #4

// ==== ItemInfo::ItemInfo
//      file offset 0x34a314 (= ELF address; Ghidra 0x35a314), 182 bytes, Thumb-2
  34a314: b500         	push	{lr}
  34a316: b083         	sub	sp, #0xc
  34a318: 9001         	str	r0, [sp, #0x4]
  34a31a: 9100         	str	r1, [sp]
  34a31c: 9a01         	ldr	r2, [sp, #0x4]
  34a31e: 9b00         	ldr	r3, [sp]
  34a320: 4610         	mov	r0, r2
  34a322: 4619         	mov	r1, r3
  34a324: f06c f0e0    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c1c0
  34a328: 9b01         	ldr	r3, [sp, #0x4]
  34a32a: 1d1a         	adds	r2, r3, #0x4
  34a32c: 9b00         	ldr	r3, [sp]
  34a32e: 3304         	adds	r3, #0x4
  34a330: 4610         	mov	r0, r2
  34a332: 4619         	mov	r1, r3
  34a334: f06c f0d8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c1b0
  34a338: 9b01         	ldr	r3, [sp, #0x4]
  34a33a: f103 0208    	add.w	r2, r3, #0x8
  34a33e: 9b00         	ldr	r3, [sp]
  34a340: 3308         	adds	r3, #0x8
  34a342: 4610         	mov	r0, r2
  34a344: 4619         	mov	r1, r3
  34a346: f06c f0cf    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c19e
  34a34a: 9b00         	ldr	r3, [sp]
  34a34c: 68da         	ldr	r2, [r3, #0xc]
  34a34e: 9b01         	ldr	r3, [sp, #0x4]
  34a350: 60da         	str	r2, [r3, #0xc]
  34a352: 9b00         	ldr	r3, [sp]
  34a354: 691a         	ldr	r2, [r3, #0x10]
  34a356: 9b01         	ldr	r3, [sp, #0x4]
  34a358: 611a         	str	r2, [r3, #0x10]
  34a35a: 9b00         	ldr	r3, [sp]
  34a35c: 695a         	ldr	r2, [r3, #0x14]
  34a35e: 9b01         	ldr	r3, [sp, #0x4]
  34a360: 615a         	str	r2, [r3, #0x14]
  34a362: 9b00         	ldr	r3, [sp]
  34a364: 7e1a         	ldrb	r2, [r3, #0x18]
  34a366: 9b01         	ldr	r3, [sp, #0x4]
  34a368: 761a         	strb	r2, [r3, #0x18]
  34a36a: 9b01         	ldr	r3, [sp, #0x4]
  34a36c: f103 021c    	add.w	r2, r3, #0x1c
  34a370: 9b00         	ldr	r3, [sp]
  34a372: 331c         	adds	r3, #0x1c
  34a374: 4610         	mov	r0, r2
  34a376: 4619         	mov	r1, r3
  34a378: f06c f0b6    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c16c
  34a37c: 9b01         	ldr	r3, [sp, #0x4]
  34a37e: f103 0220    	add.w	r2, r3, #0x20
  34a382: 9b00         	ldr	r3, [sp]
  34a384: 3320         	adds	r3, #0x20
  34a386: 4610         	mov	r0, r2
  34a388: 4619         	mov	r1, r3
  34a38a: f248 ffc5    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x248f8a
  34a38e: 9b01         	ldr	r3, [sp, #0x4]
  34a390: e017         	b	0x34a3c2 <ItemInfo::ItemInfo(ItemInfo const&)+0xae> @ imm = #0x2e
  34a392: 9b01         	ldr	r3, [sp, #0x4]
  34a394: 331c         	adds	r3, #0x1c
  34a396: 4618         	mov	r0, r3
  34a398: f06b f2bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b578
  34a39c: e7ff         	b	0x34a39e <ItemInfo::ItemInfo(ItemInfo const&)+0x8a> @ imm = #-0x2
  34a39e: 9b01         	ldr	r3, [sp, #0x4]
  34a3a0: 3308         	adds	r3, #0x8
  34a3a2: 4618         	mov	r0, r3
  34a3a4: f06b f2b6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b56c
  34a3a8: e7ff         	b	0x34a3aa <ItemInfo::ItemInfo(ItemInfo const&)+0x96> @ imm = #-0x2
  34a3aa: 9b01         	ldr	r3, [sp, #0x4]
  34a3ac: 3304         	adds	r3, #0x4
  34a3ae: 4618         	mov	r0, r3
  34a3b0: f06b f2b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b560
  34a3b4: e7ff         	b	0x34a3b6 <ItemInfo::ItemInfo(ItemInfo const&)+0xa2> @ imm = #-0x2
  34a3b6: 9b01         	ldr	r3, [sp, #0x4]
  34a3b8: 4618         	mov	r0, r3
  34a3ba: f06b f2ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b556
  34a3be: f03d f675    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43dcea
  34a3c2: 4618         	mov	r0, r3
  34a3c4: b003         	add	sp, #0xc
  34a3c6: f85d fb04    	ldr	pc, [sp], #4

// ==== ItemInfo::ItemInfo
//      file offset 0x34a4b8 (= ELF address; Ghidra 0x35a4b8), 176 bytes, Thumb-2
  34a4b8: b500         	push	{lr}
  34a4ba: b083         	sub	sp, #0xc
  34a4bc: 9001         	str	r0, [sp, #0x4]
  34a4be: 9100         	str	r1, [sp]
  34a4c0: 9a01         	ldr	r2, [sp, #0x4]
  34a4c2: 9b00         	ldr	r3, [sp]
  34a4c4: 4610         	mov	r0, r2
  34a4c6: 4619         	mov	r1, r3
  34a4c8: f06a f67a    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x46acf4
  34a4cc: 9b01         	ldr	r3, [sp, #0x4]
  34a4ce: 1d1a         	adds	r2, r3, #0x4
  34a4d0: 9b00         	ldr	r3, [sp]
  34a4d2: 3304         	adds	r3, #0x4
  34a4d4: 4610         	mov	r0, r2
  34a4d6: 4619         	mov	r1, r3
  34a4d8: f06a f672    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x46ace4
  34a4dc: 9b01         	ldr	r3, [sp, #0x4]
  34a4de: f103 0208    	add.w	r2, r3, #0x8
  34a4e2: 9b00         	ldr	r3, [sp]
  34a4e4: 3308         	adds	r3, #0x8
  34a4e6: 4610         	mov	r0, r2
  34a4e8: 4619         	mov	r1, r3
  34a4ea: f06a f669    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x46acd2
  34a4ee: 9b00         	ldr	r3, [sp]
  34a4f0: 68da         	ldr	r2, [r3, #0xc]
  34a4f2: 9b01         	ldr	r3, [sp, #0x4]
  34a4f4: 60da         	str	r2, [r3, #0xc]
  34a4f6: 9b00         	ldr	r3, [sp]
  34a4f8: 691a         	ldr	r2, [r3, #0x10]
  34a4fa: 9b01         	ldr	r3, [sp, #0x4]
  34a4fc: 611a         	str	r2, [r3, #0x10]
  34a4fe: 9b00         	ldr	r3, [sp]
  34a500: 695a         	ldr	r2, [r3, #0x14]
  34a502: 9b01         	ldr	r3, [sp, #0x4]
  34a504: 615a         	str	r2, [r3, #0x14]
  34a506: 9b00         	ldr	r3, [sp]
  34a508: 7e1a         	ldrb	r2, [r3, #0x18]
  34a50a: 9b01         	ldr	r3, [sp, #0x4]
  34a50c: 761a         	strb	r2, [r3, #0x18]
  34a50e: 9b01         	ldr	r3, [sp, #0x4]
  34a510: f103 021c    	add.w	r2, r3, #0x1c
  34a514: 9b00         	ldr	r3, [sp]
  34a516: 331c         	adds	r3, #0x1c
  34a518: 4610         	mov	r0, r2
  34a51a: 4619         	mov	r1, r3
  34a51c: f06a f650    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x46aca0
  34a520: 9b01         	ldr	r3, [sp, #0x4]
  34a522: f103 0220    	add.w	r2, r3, #0x20
  34a526: 9b00         	ldr	r3, [sp]
  34a528: 3320         	adds	r3, #0x20
  34a52a: 4610         	mov	r0, r2
  34a52c: 4619         	mov	r1, r3
  34a52e: f248 fef3    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x248de6
  34a532: 9b01         	ldr	r3, [sp, #0x4]
  34a534: e014         	b	0x34a560 <ItemInfo::ItemInfo(ItemInfo&&)+0xa8> @ imm = #0x28
  34a536: 9b01         	ldr	r3, [sp, #0x4]
  34a538: 331c         	adds	r3, #0x1c
  34a53a: 4618         	mov	r0, r3
  34a53c: f06b f1ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b3d4
  34a540: 9b01         	ldr	r3, [sp, #0x4]
  34a542: 3308         	adds	r3, #0x8
  34a544: 4618         	mov	r0, r3
  34a546: f06b f1e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b3ca
  34a54a: 9b01         	ldr	r3, [sp, #0x4]
  34a54c: 3304         	adds	r3, #0x4
  34a54e: 4618         	mov	r0, r3
  34a550: f06b f1e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b3c0
  34a554: 9b01         	ldr	r3, [sp, #0x4]
  34a556: 4618         	mov	r0, r3
  34a558: f06b f1dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b3b8
  34a55c: f03d f5a6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43db4c
  34a560: 4618         	mov	r0, r3
  34a562: b003         	add	sp, #0xc
  34a564: f85d fb04    	ldr	pc, [sp], #4
