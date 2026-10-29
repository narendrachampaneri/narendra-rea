// Tracer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 11 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Tracer.cpp

// ==== Tracer::Tracer
//      file offset 0x4070e4 (= ELF address; Ghidra 0x4170e4), 104 bytes, Thumb-2
  4070e4: b510         	push	{r4, lr}
  4070e6: b082         	sub	sp, #0x8
  4070e8: 9001         	str	r0, [sp, #0x4]
  4070ea: 9100         	str	r1, [sp]
  4070ec: 4c15         	ldr	r4, [pc, #0x54]         @ 0x407144 <Tracer::Tracer(cocos2d::CCSpriteBatchNode*)+0x60>
  4070ee: 447c         	add	r4, pc
  4070f0: 9b01         	ldr	r3, [sp, #0x4]
  4070f2: 4618         	mov	r0, r3
  4070f4: 9900         	ldr	r1, [sp]
  4070f6: f7aa fb69    	bl	0x3b17cc <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)> @ imm = #-0x5592e
  4070fa: 9b01         	ldr	r3, [sp, #0x4]
  4070fc: 4a12         	ldr	r2, [pc, #0x48]         @ 0x407148 <Tracer::Tracer(cocos2d::CCSpriteBatchNode*)+0x64>
  4070fe: 58a2         	ldr	r2, [r4, r2]
  407100: 3208         	adds	r2, #0x8
  407102: 601a         	str	r2, [r3]
  407104: 9b01         	ldr	r3, [sp, #0x4]
  407106: 2200         	movs	r2, #0x0
  407108: f8c3 209c    	str.w	r2, [r3, #0x9c]
  40710c: 9b01         	ldr	r3, [sp, #0x4]
  40710e: 2201         	movs	r2, #0x1
  407110: f883 20a0    	strb.w	r2, [r3, #0xa0]
  407114: 9b01         	ldr	r3, [sp, #0x4]
  407116: f04f 0200    	mov.w	r2, #0x0
  40711a: f8c3 20a4    	str.w	r2, [r3, #0xa4]
  40711e: 9901         	ldr	r1, [sp, #0x4]
  407120: f04f 0200    	mov.w	r2, #0x0
  407124: f04f 0300    	mov.w	r3, #0x0
  407128: e9c1 232a    	strd	r2, r3, [r1, #168]
  40712c: 9901         	ldr	r1, [sp, #0x4]
  40712e: f04f 0200    	mov.w	r2, #0x0
  407132: f04f 0300    	mov.w	r3, #0x0
  407136: e9c1 232c    	strd	r2, r3, [r1, #176]
  40713a: 9b01         	ldr	r3, [sp, #0x4]
  40713c: 4618         	mov	r0, r3
  40713e: b002         	add	sp, #0x8
  407140: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x407141); words below are literal-pool data ---
  407142: bf00         	nop
  407144: b91a         	cbnz	r2, 0x40714e <Tracer::~Tracer()+0x2> @ imm = #0x6
  407146: 0052         	lsls	r2, r2, #0x1
  407148: df90         	svc	#0x90
  40714a: ffff b500    	<unknown>

// ==== Tracer::~Tracer
//      file offset 0x40714c (= ELF address; Ghidra 0x41714c), 104 bytes, Thumb-2
  40714c: b500         	push	{lr}
  40714e: b083         	sub	sp, #0xc
  407150: 9001         	str	r0, [sp, #0x4]
  407152: 4916         	ldr	r1, [pc, #0x58]         @ 0x4071ac <Tracer::~Tracer()+0x60>
  407154: 4479         	add	r1, pc
  407156: 9b01         	ldr	r3, [sp, #0x4]
  407158: 4a15         	ldr	r2, [pc, #0x54]         @ 0x4071b0 <Tracer::~Tracer()+0x64>
  40715a: 588a         	ldr	r2, [r1, r2]
  40715c: 3208         	adds	r2, #0x8
  40715e: 601a         	str	r2, [r3]
  407160: 9b01         	ldr	r3, [sp, #0x4]
  407162: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  407166: 2b00         	cmp	r3, #0x0
  407168: d010         	beq	0x40718c <Tracer::~Tracer()+0x40> @ imm = #0x20
  40716a: 9b01         	ldr	r3, [sp, #0x4]
  40716c: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  407170: 681b         	ldr	r3, [r3]
  407172: 33e8         	adds	r3, #0xe8
  407174: 681b         	ldr	r3, [r3]
  407176: 9a01         	ldr	r2, [sp, #0x4]
  407178: f8d2 209c    	ldr.w	r2, [r2, #0x9c]
  40717c: 4610         	mov	r0, r2
  40717e: 4798         	blx	r3
  407180: 9b01         	ldr	r3, [sp, #0x4]
  407182: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  407186: 4618         	mov	r0, r3
  407188: f190 fe96    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x190d2c
  40718c: 9b01         	ldr	r3, [sp, #0x4]
  40718e: 4618         	mov	r0, r3
  407190: f7aa fbf2    	bl	0x3b1978 <Projectile::~Projectile()> @ imm = #-0x5581c
  407194: 2300         	movs	r3, #0x0
  407196: 2b00         	cmp	r3, #0x0
  407198: d002         	beq	0x4071a0 <Tracer::~Tracer()+0x54> @ imm = #0x4
  40719a: 9801         	ldr	r0, [sp, #0x4]
  40719c: f380 ff82    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x380f04
  4071a0: 9b01         	ldr	r3, [sp, #0x4]
  4071a2: 4618         	mov	r0, r3
  4071a4: b003         	add	sp, #0xc
  4071a6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4071a9); words below are literal-pool data ---
  4071aa: bf00         	nop
  4071ac: b8b4         	<unknown>
  4071ae: 0052         	lsls	r2, r2, #0x1
  4071b0: df90         	svc	#0x90
  4071b2: ffff b500    	<unknown>

// ==== Tracer::~Tracer
//      file offset 0x4071b4 (= ELF address; Ghidra 0x4171b4), 28 bytes, Thumb-2
  4071b4: b500         	push	{lr}
  4071b6: b083         	sub	sp, #0xc
  4071b8: 9001         	str	r0, [sp, #0x4]
  4071ba: 9801         	ldr	r0, [sp, #0x4]
  4071bc: f7ff ffc6    	bl	0x40714c <Tracer::~Tracer()> @ imm = #-0x74
  4071c0: 9801         	ldr	r0, [sp, #0x4]
  4071c2: f380 ff6f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x380ede
  4071c6: 9b01         	ldr	r3, [sp, #0x4]
  4071c8: 4618         	mov	r0, r3
  4071ca: b003         	add	sp, #0xc
  4071cc: f85d fb04    	ldr	pc, [sp], #4

// ==== Tracer::reset
//      file offset 0x4071d0 (= ELF address; Ghidra 0x4171d0), 796 bytes, Thumb-2
  4071d0: b5f0         	push	{r4, r5, r6, r7, lr}
  4071d2: ed2d 8b02    	vpush	{d8}
  4071d6: b099         	sub	sp, #0x64
  4071d8: 9009         	str	r0, [sp, #0x24]
  4071da: 9108         	str	r1, [sp, #0x20]
  4071dc: 9207         	str	r2, [sp, #0x1c]
  4071de: 9306         	str	r3, [sp, #0x18]
  4071e0: 4dbe         	ldr	r5, [pc, #0x2f8]        @ 0x4074dc <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x30c>
  4071e2: 447d         	add	r5, pc
  4071e4: 9c09         	ldr	r4, [sp, #0x24]
  4071e6: 20ff         	movs	r0, #0xff
  4071e8: 21ff         	movs	r1, #0xff
  4071ea: 22ff         	movs	r2, #0xff
  4071ec: f7fe ff6a    	bl	0x4060c4 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1a8> @ imm = #-0x112c
  4071f0: 4603         	mov	r3, r0
  4071f2: 461a         	mov	r2, r3
  4071f4: f884 20b8    	strb.w	r2, [r4, #0xb8]
  4071f8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  4071fc: f884 20b9    	strb.w	r2, [r4, #0xb9]
  407200: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  407204: f884 30ba    	strb.w	r3, [r4, #0xba]
  407208: 9b09         	ldr	r3, [sp, #0x24]
  40720a: 2201         	movs	r2, #0x1
  40720c: f883 20a0    	strb.w	r2, [r3, #0xa0]
  407210: 9909         	ldr	r1, [sp, #0x24]
  407212: f04f 0200    	mov.w	r2, #0x0
  407216: f04f 0300    	mov.w	r3, #0x0
  40721a: e9c1 231e    	strd	r2, r3, [r1, #120]
  40721e: 9909         	ldr	r1, [sp, #0x24]
  407220: f04f 0200    	mov.w	r2, #0x0
  407224: f04f 0300    	mov.w	r3, #0x0
  407228: e9c1 2320    	strd	r2, r3, [r1, #128]
  40722c: 9b09         	ldr	r3, [sp, #0x24]
  40722e: f103 04a8    	add.w	r4, r3, #0xa8
  407232: ab2a         	add	r3, sp, #0xa8
  407234: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407236: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40723a: 9a09         	ldr	r2, [sp, #0x24]
  40723c: 9b09         	ldr	r3, [sp, #0x24]
  40723e: f102 0450    	add.w	r4, r2, #0x50
  407242: 33a8         	adds	r3, #0xa8
  407244: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407246: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40724a: 9b09         	ldr	r3, [sp, #0x24]
  40724c: 695b         	ldr	r3, [r3, #0x14]
  40724e: 681b         	ldr	r3, [r3]
  407250: 334c         	adds	r3, #0x4c
  407252: 681c         	ldr	r4, [r3]
  407254: 9b09         	ldr	r3, [sp, #0x24]
  407256: 695e         	ldr	r6, [r3, #0x14]
  407258: ed9d 7b20    	vldr	d7, [sp, #128]
  40725c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  407260: ed9d 7b22    	vldr	d7, [sp, #136]
  407264: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407268: ab14         	add	r3, sp, #0x50
  40726a: 4618         	mov	r0, r3
  40726c: ee16 1a90    	vmov	r1, s13
  407270: ee17 2a90    	vmov	r2, s15
  407274: f18b fd3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18ba78
  407278: ab14         	add	r3, sp, #0x50
  40727a: 4630         	mov	r0, r6
  40727c: 4619         	mov	r1, r3
  40727e: 47a0         	blx	r4
  407280: 9b09         	ldr	r3, [sp, #0x24]
  407282: 695b         	ldr	r3, [r3, #0x14]
  407284: 681b         	ldr	r3, [r3]
  407286: 3350         	adds	r3, #0x50
  407288: 681b         	ldr	r3, [r3]
  40728a: 9a09         	ldr	r2, [sp, #0x24]
  40728c: 6952         	ldr	r2, [r2, #0x14]
  40728e: 4610         	mov	r0, r2
  407290: 4798         	blx	r3
  407292: 4603         	mov	r3, r0
  407294: edd3 7a00    	vldr	s15, [r3]
  407298: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  40729c: 9b09         	ldr	r3, [sp, #0x24]
  40729e: 695b         	ldr	r3, [r3, #0x14]
  4072a0: 681b         	ldr	r3, [r3]
  4072a2: 3350         	adds	r3, #0x50
  4072a4: 681b         	ldr	r3, [r3]
  4072a6: 9a09         	ldr	r2, [sp, #0x24]
  4072a8: 6952         	ldr	r2, [r2, #0x14]
  4072aa: 4610         	mov	r0, r2
  4072ac: 4798         	blx	r3
  4072ae: 4603         	mov	r3, r0
  4072b0: edd3 7a01    	vldr	s15, [r3, #4]
  4072b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4072b8: 9c09         	ldr	r4, [sp, #0x24]
  4072ba: ab02         	add	r3, sp, #0x8
  4072bc: 4618         	mov	r0, r3
  4072be: eeb0 0b48    	vmov.f64	d0, d8
  4072c2: eeb0 1b47    	vmov.f64	d1, d7
  4072c6: f7fe ff4b    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x116a
  4072ca: 3460         	adds	r4, #0x60
  4072cc: ab02         	add	r3, sp, #0x8
  4072ce: cb0f         	ldm	r3, {r0, r1, r2, r3}
  4072d0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  4072d4: 9b09         	ldr	r3, [sp, #0x24]
  4072d6: 3330         	adds	r3, #0x30
  4072d8: 4618         	mov	r0, r3
  4072da: 4b81         	ldr	r3, [pc, #0x204]        @ 0x4074e0 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x310>
  4072dc: 447b         	add	r3, pc
  4072de: 4619         	mov	r1, r3
  4072e0: f3ae fdc6    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3aeb8c
  4072e4: 9b09         	ldr	r3, [sp, #0x24]
  4072e6: 3334         	adds	r3, #0x34
  4072e8: 4618         	mov	r0, r3
  4072ea: 992e         	ldr	r1, [sp, #0xb8]
  4072ec: f3af f962    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3af2c4
  4072f0: 9b09         	ldr	r3, [sp, #0x24]
  4072f2: 9a08         	ldr	r2, [sp, #0x20]
  4072f4: f8c3 208c    	str.w	r2, [r3, #0x8c]
  4072f8: 9b09         	ldr	r3, [sp, #0x24]
  4072fa: 695b         	ldr	r3, [r3, #0x14]
  4072fc: 681b         	ldr	r3, [r3]
  4072fe: 3340         	adds	r3, #0x40
  407300: 681b         	ldr	r3, [r3]
  407302: 9a09         	ldr	r2, [sp, #0x24]
  407304: 6952         	ldr	r2, [r2, #0x14]
  407306: 4610         	mov	r0, r2
  407308: f04f 517e    	mov.w	r1, #0x3f800000
  40730c: 4798         	blx	r3
  40730e: 9b09         	ldr	r3, [sp, #0x24]
  407310: 695b         	ldr	r3, [r3, #0x14]
  407312: 681b         	ldr	r3, [r3]
  407314: f503 73d2    	add.w	r3, r3, #0x1a4
  407318: 681b         	ldr	r3, [r3]
  40731a: 9a09         	ldr	r2, [sp, #0x24]
  40731c: 6952         	ldr	r2, [r2, #0x14]
  40731e: 4610         	mov	r0, r2
  407320: 21ff         	movs	r1, #0xff
  407322: 4798         	blx	r3
  407324: 9b09         	ldr	r3, [sp, #0x24]
  407326: 2201         	movs	r2, #0x1
  407328: 761a         	strb	r2, [r3, #0x18]
  40732a: 9b09         	ldr	r3, [sp, #0x24]
  40732c: 695b         	ldr	r3, [r3, #0x14]
  40732e: 681b         	ldr	r3, [r3]
  407330: 3390         	adds	r3, #0x90
  407332: 681b         	ldr	r3, [r3]
  407334: 9a09         	ldr	r2, [sp, #0x24]
  407336: 6952         	ldr	r2, [r2, #0x14]
  407338: 4610         	mov	r0, r2
  40733a: 2101         	movs	r1, #0x1
  40733c: 4798         	blx	r3
  40733e: 9b09         	ldr	r3, [sp, #0x24]
  407340: 695b         	ldr	r3, [r3, #0x14]
  407342: 681b         	ldr	r3, [r3]
  407344: 3398         	adds	r3, #0x98
  407346: 681b         	ldr	r3, [r3]
  407348: 9a09         	ldr	r2, [sp, #0x24]
  40734a: 6952         	ldr	r2, [r2, #0x14]
  40734c: eddd 7a28    	vldr	s15, [sp, #160]
  407350: eeb1 7a67    	vneg.f32	s14, s15
  407354: eddf 7a60    	vldr	s15, [pc, #384]         @ 0x4074d8 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x308>
  407358: ee67 7a27    	vmul.f32	s15, s14, s15
  40735c: 4610         	mov	r0, r2
  40735e: ee17 1a90    	vmov	r1, s15
  407362: 4798         	blx	r3
  407364: 9b09         	ldr	r3, [sp, #0x24]
  407366: 9a06         	ldr	r2, [sp, #0x18]
  407368: f8c3 2090    	str.w	r2, [r3, #0x90]
  40736c: 9b09         	ldr	r3, [sp, #0x24]
  40736e: 9a07         	ldr	r2, [sp, #0x1c]
  407370: 671a         	str	r2, [r3, #0x70]
  407372: 9b09         	ldr	r3, [sp, #0x24]
  407374: f04f 0200    	mov.w	r2, #0x0
  407378: f8c3 2094    	str.w	r2, [r3, #0x94]
  40737c: eddd 7a28    	vldr	s15, [sp, #160]
  407380: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407384: ec51 0b17    	vmov	r0, r1, d7
  407388: f6ce edbe    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x131484
  40738c: 4606         	mov	r6, r0
  40738e: 460f         	mov	r7, r1
  407390: eddd 7a28    	vldr	s15, [sp, #160]
  407394: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407398: ec51 0b17    	vmov	r0, r1, d7
  40739c: f6ce edba    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x13148c
  4073a0: 4602         	mov	r2, r0
  4073a2: 460b         	mov	r3, r1
  4073a4: a90c         	add	r1, sp, #0x30
  4073a6: 4608         	mov	r0, r1
  4073a8: ec47 6b10    	vmov	d0, r6, r7
  4073ac: ec43 2b11    	vmov	d1, r2, r3
  4073b0: f7fe fed6    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x1254
  4073b4: 9b29         	ldr	r3, [sp, #0xa4]
  4073b6: ee06 3a90    	vmov	s13, r3
  4073ba: eeb8 7be6    	vcvt.f64.s32	d7, s13
  4073be: ab10         	add	r3, sp, #0x40
  4073c0: ed9d 5b0c    	vldr	d5, [sp, #48]
  4073c4: ed9d 6b0e    	vldr	d6, [sp, #56]
  4073c8: 4618         	mov	r0, r3
  4073ca: eeb0 0b45    	vmov.f64	d0, d5
  4073ce: eeb0 1b46    	vmov.f64	d1, d6
  4073d2: eeb0 2b47    	vmov.f64	d2, d7
  4073d6: f7fe ff2f    	bl	0x406238 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x31c> @ imm = #-0x11a2
  4073da: ab14         	add	r3, sp, #0x50
  4073dc: ed9d 6b24    	vldr	d6, [sp, #144]
  4073e0: ed9d 7b26    	vldr	d7, [sp, #152]
  4073e4: 4618         	mov	r0, r3
  4073e6: eeb0 0b46    	vmov.f64	d0, d6
  4073ea: eeb0 1b47    	vmov.f64	d1, d7
  4073ee: ed9f 2b38    	vldr	d2, [pc, #224]          @ 0x4074d0 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x300>
  4073f2: f7fe ff21    	bl	0x406238 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x31c> @ imm = #-0x11be
  4073f6: 9c09         	ldr	r4, [sp, #0x24]
  4073f8: ab02         	add	r3, sp, #0x8
  4073fa: ed9d 4b10    	vldr	d4, [sp, #64]
  4073fe: ed9d 5b12    	vldr	d5, [sp, #72]
  407402: ed9d 6b14    	vldr	d6, [sp, #80]
  407406: ed9d 7b16    	vldr	d7, [sp, #88]
  40740a: 4618         	mov	r0, r3
  40740c: eeb0 0b44    	vmov.f64	d0, d4
  407410: eeb0 1b45    	vmov.f64	d1, d5
  407414: eeb0 2b46    	vmov.f64	d2, d6
  407418: eeb0 3b47    	vmov.f64	d3, d7
  40741c: f7fe feb4    	bl	0x406188 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x26c> @ imm = #-0x1298
  407420: 3478         	adds	r4, #0x78
  407422: ab02         	add	r3, sp, #0x8
  407424: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407426: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40742a: 9b09         	ldr	r3, [sp, #0x24]
  40742c: 2200         	movs	r2, #0x0
  40742e: f883 2098    	strb.w	r2, [r3, #0x98]
  407432: 9b09         	ldr	r3, [sp, #0x24]
  407434: f04f 0200    	mov.w	r2, #0x0
  407438: f8c3 20a4    	str.w	r2, [r3, #0xa4]
  40743c: 9b09         	ldr	r3, [sp, #0x24]
  40743e: f8d3 308c    	ldr.w	r3, [r3, #0x8c]
  407442: 2b0a         	cmp	r3, #0xa
  407444: d13e         	bne	0x4074c4 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x2f4> @ imm = #0x7c
  407446: 9b09         	ldr	r3, [sp, #0x24]
  407448: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  40744c: 2b00         	cmp	r3, #0x0
  40744e: d139         	bne	0x4074c4 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x2f4> @ imm = #0x72
  407450: 20ff         	movs	r0, #0xff
  407452: 21ff         	movs	r1, #0xff
  407454: 22ff         	movs	r2, #0xff
  407456: f7fe fe35    	bl	0x4060c4 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1a8> @ imm = #-0x1396
  40745a: 4603         	mov	r3, r0
  40745c: 461a         	mov	r2, r3
  40745e: f88d 202c    	strb.w	r2, [sp, #0x2c]
  407462: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  407466: f88d 202d    	strb.w	r2, [sp, #0x2d]
  40746a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  40746e: f88d 302e    	strb.w	r3, [sp, #0x2e]
  407472: ab0b         	add	r3, sp, #0x2c
  407474: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x4074e4 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x314>
  407476: 447a         	add	r2, pc
  407478: 9200         	str	r2, [sp]
  40747a: f04f 507c    	mov.w	r0, #0x3f000000
  40747e: f04f 517e    	mov.w	r1, #0x3f800000
  407482: f04f 0200    	mov.w	r2, #0x0
  407486: f2c4 0240    	movt	r2, #0x4040
  40748a: f1b2 fc53    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x1b28a6
  40748e: 4602         	mov	r2, r0
  407490: 9b09         	ldr	r3, [sp, #0x24]
  407492: f8c3 209c    	str.w	r2, [r3, #0x9c]
  407496: 9b09         	ldr	r3, [sp, #0x24]
  407498: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  40749c: 4618         	mov	r0, r3
  40749e: f190 fd23    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x190a46
  4074a2: 4b11         	ldr	r3, [pc, #0x44]         @ 0x4074e8 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x318>
  4074a4: 58eb         	ldr	r3, [r5, r3]
  4074a6: 681b         	ldr	r3, [r3]
  4074a8: 681b         	ldr	r3, [r3]
  4074aa: 33cc         	adds	r3, #0xcc
  4074ac: 681b         	ldr	r3, [r3]
  4074ae: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x4074e8 <Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x318>
  4074b0: 58aa         	ldr	r2, [r5, r2]
  4074b2: 6812         	ldr	r2, [r2]
  4074b4: 4611         	mov	r1, r2
  4074b6: 9a09         	ldr	r2, [sp, #0x24]
  4074b8: f8d2 209c    	ldr.w	r2, [r2, #0x9c]
  4074bc: 4608         	mov	r0, r1
  4074be: 4611         	mov	r1, r2
  4074c0: 2204         	movs	r2, #0x4
  4074c2: 4798         	blx	r3
  4074c4: b019         	add	sp, #0x64
  4074c6: ecbd 8b02    	vpop	{d8}
  4074ca: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x4074cb); words below are literal-pool data ---
  4074cc: f3af 8000    	nop.w
  4074d0: 999a         	ldr	r1, [sp, #0x268]
  4074d2: 9999         	ldr	r1, [sp, #0x264]
  4074d4: 9999         	ldr	r1, [sp, #0x264]
  4074d6: 3fe9         	subs	r7, #0xe9
  4074d8: 2ee1         	cmp	r6, #0xe1
  4074da: 4265         	rsbs	r5, r4, #0
  4074dc: b826         	<unknown>
  4074de: 0052         	lsls	r2, r2, #0x1
  4074e0: 3308         	adds	r3, #0x8
  4074e2: 003d         	movs	r5, r7
  4074e4: 3172         	adds	r1, #0x72
  4074e6: 003d         	movs	r5, r7
  4074e8: d744         	bvc	0x407574 <Tracer::updateStep(float)+0x84> @ imm = #0x88
  4074ea: ffff f3af    	<unknown>

// ==== Tracer::updateStep
//      file offset 0x4074f0 (= ELF address; Ghidra 0x4174f0), 382 bytes, Thumb-2
  4074f0: b570         	push	{r4, r5, r6, lr}
  4074f2: b088         	sub	sp, #0x20
  4074f4: 9001         	str	r0, [sp, #0x4]
  4074f6: 9100         	str	r1, [sp]
  4074f8: 9b01         	ldr	r3, [sp, #0x4]
  4074fa: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  4074fe: 2b00         	cmp	r3, #0x0
  407500: d056         	beq	0x4075b0 <Tracer::updateStep(float)+0xc0> @ imm = #0xac
  407502: 9b01         	ldr	r3, [sp, #0x4]
  407504: f893 30a0    	ldrb.w	r3, [r3, #0xa0]
  407508: f083 0301    	eor	r3, r3, #0x1
  40750c: b2db         	uxtb	r3, r3
  40750e: 2b00         	cmp	r3, #0x0
  407510: d04e         	beq	0x4075b0 <Tracer::updateStep(float)+0xc0> @ imm = #0x9c
  407512: 9b01         	ldr	r3, [sp, #0x4]
  407514: ed93 7a29    	vldr	s14, [r3, #164]
  407518: eddd 7a00    	vldr	s15, [sp]
  40751c: ee77 7a27    	vadd.f32	s15, s14, s15
  407520: 9b01         	ldr	r3, [sp, #0x4]
  407522: edc3 7a29    	vstr	s15, [r3, #164]
  407526: 9b01         	ldr	r3, [sp, #0x4]
  407528: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  40752c: 681b         	ldr	r3, [r3]
  40752e: f503 73f2    	add.w	r3, r3, #0x1e4
  407532: 681b         	ldr	r3, [r3]
  407534: 9a01         	ldr	r2, [sp, #0x4]
  407536: f8d2 209c    	ldr.w	r2, [r2, #0x9c]
  40753a: 4610         	mov	r0, r2
  40753c: f04f 0100    	mov.w	r1, #0x0
  407540: f2c4 0140    	movt	r1, #0x4040
  407544: 4798         	blx	r3
  407546: 9b01         	ldr	r3, [sp, #0x4]
  407548: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  40754c: 681b         	ldr	r3, [r3]
  40754e: 334c         	adds	r3, #0x4c
  407550: 681c         	ldr	r4, [r3]
  407552: 9b01         	ldr	r3, [sp, #0x4]
  407554: f8d3 509c    	ldr.w	r5, [r3, #0x9c]
  407558: 9b01         	ldr	r3, [sp, #0x4]
  40755a: 695b         	ldr	r3, [r3, #0x14]
  40755c: 681b         	ldr	r3, [r3]
  40755e: 3350         	adds	r3, #0x50
  407560: 681b         	ldr	r3, [r3]
  407562: 9a01         	ldr	r2, [sp, #0x4]
  407564: 6952         	ldr	r2, [r2, #0x14]
  407566: 4610         	mov	r0, r2
  407568: 4798         	blx	r3
  40756a: 4603         	mov	r3, r0
  40756c: 4628         	mov	r0, r5
  40756e: 4619         	mov	r1, r3
  407570: 47a0         	blx	r4
  407572: 9b01         	ldr	r3, [sp, #0x4]
  407574: ed93 7a29    	vldr	s14, [r3, #164]
  407578: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40757c: eeb4 7ae7    	vcmpe.f32	s14, s15
  407580: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  407584: dd14         	ble	0x4075b0 <Tracer::updateStep(float)+0xc0> @ imm = #0x28
  407586: 9b01         	ldr	r3, [sp, #0x4]
  407588: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  40758c: 681b         	ldr	r3, [r3]
  40758e: 33e8         	adds	r3, #0xe8
  407590: 681b         	ldr	r3, [r3]
  407592: 9a01         	ldr	r2, [sp, #0x4]
  407594: f8d2 209c    	ldr.w	r2, [r2, #0x9c]
  407598: 4610         	mov	r0, r2
  40759a: 4798         	blx	r3
  40759c: 9b01         	ldr	r3, [sp, #0x4]
  40759e: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  4075a2: 4618         	mov	r0, r3
  4075a4: f190 fc88    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x190910
  4075a8: 9b01         	ldr	r3, [sp, #0x4]
  4075aa: 2200         	movs	r2, #0x0
  4075ac: f8c3 209c    	str.w	r2, [r3, #0x9c]
  4075b0: 9b01         	ldr	r3, [sp, #0x4]
  4075b2: 695b         	ldr	r3, [r3, #0x14]
  4075b4: 681b         	ldr	r3, [r3]
  4075b6: 3390         	adds	r3, #0x90
  4075b8: 681b         	ldr	r3, [r3]
  4075ba: 9a01         	ldr	r2, [sp, #0x4]
  4075bc: 6951         	ldr	r1, [r2, #0x14]
  4075be: 9a01         	ldr	r2, [sp, #0x4]
  4075c0: 7e12         	ldrb	r2, [r2, #0x18]
  4075c2: 4608         	mov	r0, r1
  4075c4: 4611         	mov	r1, r2
  4075c6: 4798         	blx	r3
  4075c8: 9b01         	ldr	r3, [sp, #0x4]
  4075ca: 4618         	mov	r0, r3
  4075cc: f7aa fd2a    	bl	0x3b2024 <Projectile::getActive()> @ imm = #-0x555ac
  4075d0: 4603         	mov	r3, r0
  4075d2: 2b00         	cmp	r3, #0x0
  4075d4: d049         	beq	0x40766a <Tracer::updateStep(float)+0x17a> @ imm = #0x92
  4075d6: 9b01         	ldr	r3, [sp, #0x4]
  4075d8: f893 30a0    	ldrb.w	r3, [r3, #0xa0]
  4075dc: f083 0301    	eor	r3, r3, #0x1
  4075e0: b2db         	uxtb	r3, r3
  4075e2: 2b00         	cmp	r3, #0x0
  4075e4: d03a         	beq	0x40765c <Tracer::updateStep(float)+0x16c> @ imm = #0x74
  4075e6: 9b01         	ldr	r3, [sp, #0x4]
  4075e8: 4618         	mov	r0, r3
  4075ea: 9900         	ldr	r1, [sp]
  4075ec: f7aa fa06    	bl	0x3b19fc <Projectile::updateStep(float)> @ imm = #-0x55bf4
  4075f0: 9b01         	ldr	r3, [sp, #0x4]
  4075f2: 695b         	ldr	r3, [r3, #0x14]
  4075f4: 681b         	ldr	r3, [r3]
  4075f6: 334c         	adds	r3, #0x4c
  4075f8: 681c         	ldr	r4, [r3]
  4075fa: 9b01         	ldr	r3, [sp, #0x4]
  4075fc: 695d         	ldr	r5, [r3, #0x14]
  4075fe: 9b01         	ldr	r3, [sp, #0x4]
  407600: 695b         	ldr	r3, [r3, #0x14]
  407602: 681b         	ldr	r3, [r3]
  407604: 3350         	adds	r3, #0x50
  407606: 681b         	ldr	r3, [r3]
  407608: 9a01         	ldr	r2, [sp, #0x4]
  40760a: 6952         	ldr	r2, [r2, #0x14]
  40760c: 4610         	mov	r0, r2
  40760e: 4798         	blx	r3
  407610: 4606         	mov	r6, r0
  407612: 9b01         	ldr	r3, [sp, #0x4]
  407614: ed93 7b1e    	vldr	d7, [r3, #120]
  407618: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40761c: 9b01         	ldr	r3, [sp, #0x4]
  40761e: ed93 7b20    	vldr	d7, [r3, #128]
  407622: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407626: ab02         	add	r3, sp, #0x8
  407628: 4618         	mov	r0, r3
  40762a: ee16 1a90    	vmov	r1, s13
  40762e: ee17 2a90    	vmov	r2, s15
  407632: f18b fb5d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18b6ba
  407636: aa04         	add	r2, sp, #0x10
  407638: ab02         	add	r3, sp, #0x8
  40763a: 4610         	mov	r0, r2
  40763c: 4619         	mov	r1, r3
  40763e: ed9d 0a00    	vldr	s0, [sp]
  407642: f7fe fd7d    	bl	0x406140 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x224> @ imm = #-0x1506
  407646: aa06         	add	r2, sp, #0x18
  407648: ab04         	add	r3, sp, #0x10
  40764a: 4610         	mov	r0, r2
  40764c: 4631         	mov	r1, r6
  40764e: 461a         	mov	r2, r3
  407650: f7fe fd66    	bl	0x406120 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x204> @ imm = #-0x1534
  407654: ab06         	add	r3, sp, #0x18
  407656: 4628         	mov	r0, r5
  407658: 4619         	mov	r1, r3
  40765a: 47a0         	blx	r4
  40765c: 9b01         	ldr	r3, [sp, #0x4]
  40765e: 2200         	movs	r2, #0x0
  407660: f883 20a0    	strb.w	r2, [r3, #0xa0]
  407664: 9801         	ldr	r0, [sp, #0x4]
  407666: f000 fd11    	bl	0x40808c <Tracer::checkCollision()> @ imm = #0xa22
  40766a: b008         	add	sp, #0x20
  40766c: bd70         	pop	{r4, r5, r6, pc}

// ==== Tracer::onSpark
//      file offset 0x407670 (= ELF address; Ghidra 0x417670), 524 bytes, Thumb-2
  407670: b082         	sub	sp, #0x8
  407672: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  407676: ed2d 8b02    	vpush	{d8}
  40767a: b0a2         	sub	sp, #0x88
  40767c: 900b         	str	r0, [sp, #0x2c]
  40767e: a92c         	add	r1, sp, #0xb0
  407680: e881 000c    	stm.w	r1, {r2, r3}
  407684: 9b0b         	ldr	r3, [sp, #0x2c]
  407686: 695b         	ldr	r3, [r3, #0x14]
  407688: 681b         	ldr	r3, [r3]
  40768a: 3350         	adds	r3, #0x50
  40768c: 681b         	ldr	r3, [r3]
  40768e: 9a0b         	ldr	r2, [sp, #0x2c]
  407690: 6952         	ldr	r2, [r2, #0x14]
  407692: 4610         	mov	r0, r2
  407694: 4798         	blx	r3
  407696: 4603         	mov	r3, r0
  407698: edd3 7a00    	vldr	s15, [r3]
  40769c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  4076a0: 9b0b         	ldr	r3, [sp, #0x2c]
  4076a2: 695b         	ldr	r3, [r3, #0x14]
  4076a4: 681b         	ldr	r3, [r3]
  4076a6: 3350         	adds	r3, #0x50
  4076a8: 681b         	ldr	r3, [r3]
  4076aa: 9a0b         	ldr	r2, [sp, #0x2c]
  4076ac: 6952         	ldr	r2, [r2, #0x14]
  4076ae: 4610         	mov	r0, r2
  4076b0: 4798         	blx	r3
  4076b2: 4603         	mov	r3, r0
  4076b4: edd3 7a01    	vldr	s15, [r3, #4]
  4076b8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4076bc: ab0e         	add	r3, sp, #0x38
  4076be: 4618         	mov	r0, r3
  4076c0: eeb0 0b48    	vmov.f64	d0, d8
  4076c4: eeb0 1b47    	vmov.f64	d1, d7
  4076c8: f7fe fd4a    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x156c
  4076cc: ae06         	add	r6, sp, #0x18
  4076ce: 9b0b         	ldr	r3, [sp, #0x2c]
  4076d0: ed93 4b14    	vldr	d4, [r3, #80]
  4076d4: ed93 5b16    	vldr	d5, [r3, #88]
  4076d8: ed9d 6b0e    	vldr	d6, [sp, #56]
  4076dc: ed9d 7b10    	vldr	d7, [sp, #64]
  4076e0: 466c         	mov	r4, sp
  4076e2: ad2e         	add	r5, sp, #0xb8
  4076e4: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  4076e6: c40f         	stm	r4!, {r0, r1, r2, r3}
  4076e8: e895 0003    	ldm.w	r5, {r0, r1}
  4076ec: e884 0003    	stm.w	r4, {r0, r1}
  4076f0: a92c         	add	r1, sp, #0xb0
  4076f2: e891 000c    	ldm.w	r1, {r2, r3}
  4076f6: 4630         	mov	r0, r6
  4076f8: eeb0 0b44    	vmov.f64	d0, d4
  4076fc: eeb0 1b45    	vmov.f64	d1, d5
  407700: eeb0 2b46    	vmov.f64	d2, d6
  407704: eeb0 3b47    	vmov.f64	d3, d7
  407708: f7fe fe0a    	bl	0x406320 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x404> @ imm = #-0x13ec
  40770c: ac0e         	add	r4, sp, #0x38
  40770e: ab06         	add	r3, sp, #0x18
  407710: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407712: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  407716: 9b0b         	ldr	r3, [sp, #0x2c]
  407718: 695b         	ldr	r3, [r3, #0x14]
  40771a: 681b         	ldr	r3, [r3]
  40771c: 334c         	adds	r3, #0x4c
  40771e: 681c         	ldr	r4, [r3]
  407720: 9b0b         	ldr	r3, [sp, #0x2c]
  407722: 695d         	ldr	r5, [r3, #0x14]
  407724: ed9d 7b0e    	vldr	d7, [sp, #56]
  407728: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40772c: ed9d 7b10    	vldr	d7, [sp, #64]
  407730: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407734: ab1e         	add	r3, sp, #0x78
  407736: 4618         	mov	r0, r3
  407738: ee16 1a90    	vmov	r1, s13
  40773c: ee17 2a90    	vmov	r2, s15
  407740: f18b fad6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18b5ac
  407744: ab1e         	add	r3, sp, #0x78
  407746: 4628         	mov	r0, r5
  407748: 4619         	mov	r1, r3
  40774a: 47a0         	blx	r4
  40774c: 9b0b         	ldr	r3, [sp, #0x2c]
  40774e: 681b         	ldr	r3, [r3]
  407750: 3334         	adds	r3, #0x34
  407752: 681b         	ldr	r3, [r3]
  407754: 9a0b         	ldr	r2, [sp, #0x2c]
  407756: a912         	add	r1, sp, #0x48
  407758: 4608         	mov	r0, r1
  40775a: 4611         	mov	r1, r2
  40775c: 4798         	blx	r3
  40775e: ed9d 7b12    	vldr	d7, [sp, #72]
  407762: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407766: ee17 0a90    	vmov	r0, s15
  40776a: f6d5 fa8b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x12aaea
  40776e: 4607         	mov	r7, r0
  407770: 9b0b         	ldr	r3, [sp, #0x2c]
  407772: 681b         	ldr	r3, [r3]
  407774: 3334         	adds	r3, #0x34
  407776: 681b         	ldr	r3, [r3]
  407778: 9a0b         	ldr	r2, [sp, #0x2c]
  40777a: a916         	add	r1, sp, #0x58
  40777c: 4608         	mov	r0, r1
  40777e: 4611         	mov	r1, r2
  407780: 4798         	blx	r3
  407782: ed9d 7b18    	vldr	d7, [sp, #96]
  407786: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40778a: ee17 0a90    	vmov	r0, s15
  40778e: f6d5 fa79    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x12ab0e
  407792: 4606         	mov	r6, r0
  407794: 9b0b         	ldr	r3, [sp, #0x2c]
  407796: 681b         	ldr	r3, [r3]
  407798: 3320         	adds	r3, #0x20
  40779a: 681b         	ldr	r3, [r3]
  40779c: 9a0b         	ldr	r2, [sp, #0x2c]
  40779e: a91a         	add	r1, sp, #0x68
  4077a0: 4608         	mov	r0, r1
  4077a2: 4611         	mov	r1, r2
  4077a4: 4798         	blx	r3
  4077a6: ed9d 7b1a    	vldr	d7, [sp, #104]
  4077aa: eef7 7bc7    	vcvt.f32.f64	s15, d7
  4077ae: ee17 0a90    	vmov	r0, s15
  4077b2: f6d5 fa67    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x12ab32
  4077b6: 4605         	mov	r5, r0
  4077b8: 9b0b         	ldr	r3, [sp, #0x2c]
  4077ba: 681b         	ldr	r3, [r3]
  4077bc: 3320         	adds	r3, #0x20
  4077be: 681b         	ldr	r3, [r3]
  4077c0: 9a0b         	ldr	r2, [sp, #0x2c]
  4077c2: a91e         	add	r1, sp, #0x78
  4077c4: 4608         	mov	r0, r1
  4077c6: 4611         	mov	r1, r2
  4077c8: 4798         	blx	r3
  4077ca: ed9d 7b20    	vldr	d7, [sp, #128]
  4077ce: eef7 7bc7    	vcvt.f32.f64	s15, d7
  4077d2: ee17 0a90    	vmov	r0, s15
  4077d6: f6d5 fa55    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x12ab56
  4077da: 4604         	mov	r4, r0
  4077dc: 9b0b         	ldr	r3, [sp, #0x2c]
  4077de: f893 30b8    	ldrb.w	r3, [r3, #0xb8]
  4077e2: 4618         	mov	r0, r3
  4077e4: f6dd fa90    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x122ae0
  4077e8: 4682         	mov	r10, r0
  4077ea: 9b0b         	ldr	r3, [sp, #0x2c]
  4077ec: f893 30b9    	ldrb.w	r3, [r3, #0xb9]
  4077f0: 4618         	mov	r0, r3
  4077f2: f6dd fa89    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x122aee
  4077f6: 4681         	mov	r9, r0
  4077f8: 9b0b         	ldr	r3, [sp, #0x2c]
  4077fa: f893 30ba    	ldrb.w	r3, [r3, #0xba]
  4077fe: 4618         	mov	r0, r3
  407800: f6dd fa82    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x122afc
  407804: 4680         	mov	r8, r0
  407806: 2000         	movs	r0, #0x0
  407808: f6dd fa7e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x122b04
  40780c: 4603         	mov	r3, r0
  40780e: f8cd a000    	str.w	r10, [sp]
  407812: f8cd 9004    	str.w	r9, [sp, #0x4]
  407816: f8cd 8008    	str.w	r8, [sp, #0x8]
  40781a: 9303         	str	r3, [sp, #0xc]
  40781c: 2300         	movs	r3, #0x0
  40781e: 9304         	str	r3, [sp, #0x10]
  407820: 4638         	mov	r0, r7
  407822: 4631         	mov	r1, r6
  407824: 462a         	mov	r2, r5
  407826: 4623         	mov	r3, r4
  407828: f192 faf2    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1925e4
  40782c: 4603         	mov	r3, r0
  40782e: 930d         	str	r3, [sp, #0x34]
  407830: f1d8 ff3e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1d8e7c
  407834: 4603         	mov	r3, r0
  407836: 4618         	mov	r0, r3
  407838: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x407878 <Tracer::onSpark(cpSegmentQueryInfo)+0x208>
  40783a: 447b         	add	r3, pc
  40783c: 4619         	mov	r1, r3
  40783e: 9a0d         	ldr	r2, [sp, #0x34]
  407840: f1d9 f974    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1d92e8
  407844: 9b0b         	ldr	r3, [sp, #0x2c]
  407846: 681b         	ldr	r3, [r3]
  407848: 3328         	adds	r3, #0x28
  40784a: 681b         	ldr	r3, [r3]
  40784c: 9a0b         	ldr	r2, [sp, #0x2c]
  40784e: 4610         	mov	r0, r2
  407850: 2100         	movs	r1, #0x0
  407852: 4798         	blx	r3
  407854: 9b0b         	ldr	r3, [sp, #0x2c]
  407856: 695b         	ldr	r3, [r3, #0x14]
  407858: 681b         	ldr	r3, [r3]
  40785a: 3390         	adds	r3, #0x90
  40785c: 681b         	ldr	r3, [r3]
  40785e: 9a0b         	ldr	r2, [sp, #0x2c]
  407860: 6952         	ldr	r2, [r2, #0x14]
  407862: 4610         	mov	r0, r2
  407864: 2100         	movs	r1, #0x0
  407866: 4798         	blx	r3
  407868: b022         	add	sp, #0x88
  40786a: ecbd 8b02    	vpop	{d8}
  40786e: e8bd 47f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  407872: b002         	add	sp, #0x8
  407874: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x407875); words below are literal-pool data ---
  407876: bf00         	nop
  407878: 2dbe         	cmp	r5, #0xbe
  40787a: 003d         	movs	r5, r7

// ==== Tracer::onItemBulletCollision
//      file offset 0x40787c (= ELF address; Ghidra 0x41787c), 320 bytes, Thumb-2
  40787c: b570         	push	{r4, r5, r6, lr}
  40787e: ed2d 8b02    	vpush	{d8}
  407882: b098         	sub	sp, #0x60
  407884: 9009         	str	r0, [sp, #0x24]
  407886: 9108         	str	r1, [sp, #0x20]
  407888: 9207         	str	r2, [sp, #0x1c]
  40788a: 4e4a         	ldr	r6, [pc, #0x128]        @ 0x4079b4 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x138>
  40788c: 447e         	add	r6, pc
  40788e: 2400         	movs	r4, #0x0
  407890: 9b08         	ldr	r3, [sp, #0x20]
  407892: 2b00         	cmp	r3, #0x0
  407894: d014         	beq	0x4078c0 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x44> @ imm = #0x28
  407896: 9b08         	ldr	r3, [sp, #0x20]
  407898: 681b         	ldr	r3, [r3]
  40789a: f503 73fa    	add.w	r3, r3, #0x1f4
  40789e: 681b         	ldr	r3, [r3]
  4078a0: 9a08         	ldr	r2, [sp, #0x20]
  4078a2: a90b         	add	r1, sp, #0x2c
  4078a4: 4608         	mov	r0, r1
  4078a6: 4611         	mov	r1, r2
  4078a8: 4798         	blx	r3
  4078aa: 2401         	movs	r4, #0x1
  4078ac: 9b09         	ldr	r3, [sp, #0x24]
  4078ae: 3334         	adds	r3, #0x34
  4078b0: aa0b         	add	r2, sp, #0x2c
  4078b2: 4610         	mov	r0, r2
  4078b4: 4619         	mov	r1, r3
  4078b6: f3ad fee1    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3addc2
  4078ba: 4603         	mov	r3, r0
  4078bc: 2b00         	cmp	r3, #0x0
  4078be: d001         	beq	0x4078c4 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x48> @ imm = #0x2
  4078c0: 2301         	movs	r3, #0x1
  4078c2: e000         	b	0x4078c6 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x4a> @ imm = #0x0
  4078c4: 2300         	movs	r3, #0x0
  4078c6: 461d         	mov	r5, r3
  4078c8: 2c00         	cmp	r4, #0x0
  4078ca: d004         	beq	0x4078d6 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x5a> @ imm = #0x8
  4078cc: bf00         	nop
  4078ce: ab0b         	add	r3, sp, #0x2c
  4078d0: 4618         	mov	r0, r3
  4078d2: f3ae f81f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ae03e
  4078d6: 2d00         	cmp	r5, #0x0
  4078d8: d066         	beq	0x4079a8 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x12c> @ imm = #0xcc
  4078da: 466c         	mov	r4, sp
  4078dc: ad20         	add	r5, sp, #0x80
  4078de: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  4078e0: c40f         	stm	r4!, {r0, r1, r2, r3}
  4078e2: e895 0003    	ldm.w	r5, {r0, r1}
  4078e6: e884 0003    	stm.w	r4, {r0, r1}
  4078ea: a91e         	add	r1, sp, #0x78
  4078ec: e891 000c    	ldm.w	r1, {r2, r3}
  4078f0: 9809         	ldr	r0, [sp, #0x24]
  4078f2: f7ff febd    	bl	0x407670 <Tracer::onSpark(cpSegmentQueryInfo)> @ imm = #-0x286
  4078f6: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x4079b8 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x13c>
  4078f8: 58f3         	ldr	r3, [r6, r3]
  4078fa: 681c         	ldr	r4, [r3]
  4078fc: 9b09         	ldr	r3, [sp, #0x24]
  4078fe: 681b         	ldr	r3, [r3]
  407900: 3320         	adds	r3, #0x20
  407902: 681b         	ldr	r3, [r3]
  407904: 9a09         	ldr	r2, [sp, #0x24]
  407906: a90c         	add	r1, sp, #0x30
  407908: 4608         	mov	r0, r1
  40790a: 4611         	mov	r1, r2
  40790c: 4798         	blx	r3
  40790e: ed9d 8b0c    	vldr	d8, [sp, #48]
  407912: 9b09         	ldr	r3, [sp, #0x24]
  407914: 681b         	ldr	r3, [r3]
  407916: 3320         	adds	r3, #0x20
  407918: 681b         	ldr	r3, [r3]
  40791a: 9a09         	ldr	r2, [sp, #0x24]
  40791c: a910         	add	r1, sp, #0x40
  40791e: 4608         	mov	r0, r1
  407920: 4611         	mov	r1, r2
  407922: 4798         	blx	r3
  407924: ed9d 7b12    	vldr	d7, [sp, #72]
  407928: ab14         	add	r3, sp, #0x50
  40792a: 4618         	mov	r0, r3
  40792c: eeb0 0b48    	vmov.f64	d0, d8
  407930: eeb0 1b47    	vmov.f64	d1, d7
  407934: f7fe fc14    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x17d8
  407938: f7fe fbbe    	bl	0x4060b8 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x19c> @ imm = #-0x1884
  40793c: 4603         	mov	r3, r0
  40793e: ee07 3a90    	vmov	s15, r3
  407942: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  407946: eddf 7a1a    	vldr	s15, [pc, #104]         @ 0x4079b0 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x134>
  40794a: ee87 7a27    	vdiv.f32	s14, s14, s15
  40794e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  407952: ee77 7a67    	vsub.f32	s15, s14, s15
  407956: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40795a: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  40795e: ee26 6b07    	vmul.f64	d6, d6, d7
  407962: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  407966: ee36 7b07    	vadd.f64	d7, d6, d7
  40796a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40796e: f04f 537e    	mov.w	r3, #0x3f800000
  407972: 9302         	str	r3, [sp, #0x8]
  407974: edcd 7a03    	vstr	s15, [sp, #12]
  407978: 466b         	mov	r3, sp
  40797a: aa16         	add	r2, sp, #0x58
  40797c: e892 0003    	ldm.w	r2, {r0, r1}
  407980: e883 0003    	stm.w	r3, {r0, r1}
  407984: ab14         	add	r3, sp, #0x50
  407986: cb0c         	ldm	r3, {r2, r3}
  407988: 4620         	mov	r0, r4
  40798a: 210f         	movs	r1, #0xf
  40798c: f7f0 fb5a    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #-0xf94c
  407990: e00a         	b	0x4079a8 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x12c> @ imm = #0x14
  407992: 2c00         	cmp	r4, #0x0
  407994: d005         	beq	0x4079a2 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x126> @ imm = #0xa
  407996: bf00         	nop
  407998: ab0b         	add	r3, sp, #0x2c
  40799a: 4618         	mov	r0, r3
  40799c: f3ad ffba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3adf74
  4079a0: e000         	b	0x4079a4 <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)+0x128> @ imm = #0x0
  4079a2: bf00         	nop
  4079a4: f380 fb82    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x380704
  4079a8: b018         	add	sp, #0x60
  4079aa: ecbd 8b02    	vpop	{d8}
  4079ae: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x4079af); words below are literal-pool data ---
  4079b0: 0000         	movs	r0, r0
  4079b2: 4e80         	ldr	r6, [pc, #0x200]        @ 0x407bb4 <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x1f8>
  4079b4: b17c         	cbz	r4, 0x4079d6 <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x1a> @ imm = #0x1e
  4079b6: 0052         	lsls	r2, r2, #0x1
  4079b8: d730         	bvc	0x407a1c <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x60> @ imm = #0x60
  4079ba: ffff b570    	<unknown>

// ==== Tracer::onHostBulletCollision
//      file offset 0x4079bc (= ELF address; Ghidra 0x4179bc), 624 bytes, Thumb-2
  4079bc: b570         	push	{r4, r5, r6, lr}
  4079be: ed2d 8b02    	vpush	{d8}
  4079c2: b09c         	sub	sp, #0x70
  4079c4: 900d         	str	r0, [sp, #0x34]
  4079c6: 910c         	str	r1, [sp, #0x30]
  4079c8: 920b         	str	r2, [sp, #0x2c]
  4079ca: 9b0c         	ldr	r3, [sp, #0x30]
  4079cc: f8d3 2140    	ldr.w	r2, [r3, #0x140]
  4079d0: 9b0b         	ldr	r3, [sp, #0x2c]
  4079d2: 429a         	cmp	r2, r3
  4079d4: d10e         	bne	0x4079f4 <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x38> @ imm = #0x1c
  4079d6: 9b0c         	ldr	r3, [sp, #0x30]
  4079d8: 681b         	ldr	r3, [r3]
  4079da: f503 731b    	add.w	r3, r3, #0x26c
  4079de: 681b         	ldr	r3, [r3]
  4079e0: 980c         	ldr	r0, [sp, #0x30]
  4079e2: 4798         	blx	r3
  4079e4: 4603         	mov	r3, r0
  4079e6: 2b00         	cmp	r3, #0x0
  4079e8: d000         	beq	0x4079ec <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x30> @ imm = #0x0
  4079ea: e11b         	b	0x407c24 <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x268> @ imm = #0x236
  4079ec: 9b0d         	ldr	r3, [sp, #0x34]
  4079ee: 2201         	movs	r2, #0x1
  4079f0: f883 2098    	strb.w	r2, [r3, #0x98]
  4079f4: 9c0d         	ldr	r4, [sp, #0x34]
  4079f6: 9b0d         	ldr	r3, [sp, #0x34]
  4079f8: 4618         	mov	r0, r3
  4079fa: f7aa fba7    	bl	0x3b214c <Projectile::getDamage()> @ imm = #-0x558b2
  4079fe: 4603         	mov	r3, r0
  407a00: 4620         	mov	r0, r4
  407a02: 4619         	mov	r1, r3
  407a04: f7aa fbec    	bl	0x3b21e0 <Projectile::setDamageAmount(float)> @ imm = #-0x55828
  407a08: 9b0d         	ldr	r3, [sp, #0x34]
  407a0a: 695b         	ldr	r3, [r3, #0x14]
  407a0c: 681b         	ldr	r3, [r3]
  407a0e: 3350         	adds	r3, #0x50
  407a10: 681b         	ldr	r3, [r3]
  407a12: 9a0d         	ldr	r2, [sp, #0x34]
  407a14: 6952         	ldr	r2, [r2, #0x14]
  407a16: 4610         	mov	r0, r2
  407a18: 4798         	blx	r3
  407a1a: 4603         	mov	r3, r0
  407a1c: edd3 7a00    	vldr	s15, [r3]
  407a20: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  407a24: 9b0d         	ldr	r3, [sp, #0x34]
  407a26: 695b         	ldr	r3, [r3, #0x14]
  407a28: 681b         	ldr	r3, [r3]
  407a2a: 3350         	adds	r3, #0x50
  407a2c: 681b         	ldr	r3, [r3]
  407a2e: 9a0d         	ldr	r2, [sp, #0x34]
  407a30: 6952         	ldr	r2, [r2, #0x14]
  407a32: 4610         	mov	r0, r2
  407a34: 4798         	blx	r3
  407a36: 4603         	mov	r3, r0
  407a38: edd3 7a01    	vldr	s15, [r3, #4]
  407a3c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407a40: ab10         	add	r3, sp, #0x40
  407a42: 4618         	mov	r0, r3
  407a44: eeb0 0b48    	vmov.f64	d0, d8
  407a48: eeb0 1b47    	vmov.f64	d1, d7
  407a4c: f7fe fb88    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x18f0
  407a50: ae06         	add	r6, sp, #0x18
  407a52: 9b0d         	ldr	r3, [sp, #0x34]
  407a54: ed93 4b14    	vldr	d4, [r3, #80]
  407a58: ed93 5b16    	vldr	d5, [r3, #88]
  407a5c: ed9d 6b10    	vldr	d6, [sp, #64]
  407a60: ed9d 7b12    	vldr	d7, [sp, #72]
  407a64: 466c         	mov	r4, sp
  407a66: ad24         	add	r5, sp, #0x90
  407a68: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  407a6a: c40f         	stm	r4!, {r0, r1, r2, r3}
  407a6c: e895 0003    	ldm.w	r5, {r0, r1}
  407a70: e884 0003    	stm.w	r4, {r0, r1}
  407a74: a922         	add	r1, sp, #0x88
  407a76: e891 000c    	ldm.w	r1, {r2, r3}
  407a7a: 4630         	mov	r0, r6
  407a7c: eeb0 0b44    	vmov.f64	d0, d4
  407a80: eeb0 1b45    	vmov.f64	d1, d5
  407a84: eeb0 2b46    	vmov.f64	d2, d6
  407a88: eeb0 3b47    	vmov.f64	d3, d7
  407a8c: f7fe fc48    	bl	0x406320 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x404> @ imm = #-0x1770
  407a90: ac10         	add	r4, sp, #0x40
  407a92: ab06         	add	r3, sp, #0x18
  407a94: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407a96: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  407a9a: 9b0d         	ldr	r3, [sp, #0x34]
  407a9c: 695b         	ldr	r3, [r3, #0x14]
  407a9e: 681b         	ldr	r3, [r3]
  407aa0: 334c         	adds	r3, #0x4c
  407aa2: 681c         	ldr	r4, [r3]
  407aa4: 9b0d         	ldr	r3, [sp, #0x34]
  407aa6: 695d         	ldr	r5, [r3, #0x14]
  407aa8: ed9d 7b10    	vldr	d7, [sp, #64]
  407aac: eef7 6bc7    	vcvt.f32.f64	s13, d7
  407ab0: ed9d 7b12    	vldr	d7, [sp, #72]
  407ab4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407ab8: ab18         	add	r3, sp, #0x60
  407aba: 4618         	mov	r0, r3
  407abc: ee16 1a90    	vmov	r1, s13
  407ac0: ee17 2a90    	vmov	r2, s15
  407ac4: f18b f914    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18b228
  407ac8: ab18         	add	r3, sp, #0x60
  407aca: 4628         	mov	r0, r5
  407acc: 4619         	mov	r1, r3
  407ace: 47a0         	blx	r4
  407ad0: 9c0d         	ldr	r4, [sp, #0x34]
  407ad2: 9b0c         	ldr	r3, [sp, #0x30]
  407ad4: 681b         	ldr	r3, [r3]
  407ad6: f503 73e0    	add.w	r3, r3, #0x1c0
  407ada: 681b         	ldr	r3, [r3]
  407adc: aa18         	add	r2, sp, #0x60
  407ade: 4610         	mov	r0, r2
  407ae0: 990c         	ldr	r1, [sp, #0x30]
  407ae2: 4798         	blx	r3
  407ae4: ab18         	add	r3, sp, #0x60
  407ae6: 4620         	mov	r0, r4
  407ae8: 4619         	mov	r1, r3
  407aea: f7aa fb05    	bl	0x3b20f8 <Projectile::setDamagedPlayerID(std::string)> @ imm = #-0x559f6
  407aee: ab18         	add	r3, sp, #0x60
  407af0: 4618         	mov	r0, r3
  407af2: f3ad ff0f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ade1e
  407af6: 9c0d         	ldr	r4, [sp, #0x34]
  407af8: 9b0d         	ldr	r3, [sp, #0x34]
  407afa: 695b         	ldr	r3, [r3, #0x14]
  407afc: 681b         	ldr	r3, [r3]
  407afe: 3350         	adds	r3, #0x50
  407b00: 681b         	ldr	r3, [r3]
  407b02: 9a0d         	ldr	r2, [sp, #0x34]
  407b04: 6952         	ldr	r2, [r2, #0x14]
  407b06: 4610         	mov	r0, r2
  407b08: 4798         	blx	r3
  407b0a: 4603         	mov	r3, r0
  407b0c: edd3 7a00    	vldr	s15, [r3]
  407b10: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  407b14: 9b0d         	ldr	r3, [sp, #0x34]
  407b16: 695b         	ldr	r3, [r3, #0x14]
  407b18: 681b         	ldr	r3, [r3]
  407b1a: 3350         	adds	r3, #0x50
  407b1c: 681b         	ldr	r3, [r3]
  407b1e: 9a0d         	ldr	r2, [sp, #0x34]
  407b20: 6952         	ldr	r2, [r2, #0x14]
  407b22: 4610         	mov	r0, r2
  407b24: 4798         	blx	r3
  407b26: 4603         	mov	r3, r0
  407b28: edd3 7a01    	vldr	s15, [r3, #4]
  407b2c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407b30: ab14         	add	r3, sp, #0x50
  407b32: 4618         	mov	r0, r3
  407b34: eeb0 0b48    	vmov.f64	d0, d8
  407b38: eeb0 1b47    	vmov.f64	d1, d7
  407b3c: f7fe fb10    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x19e0
  407b40: 9b0c         	ldr	r3, [sp, #0x30]
  407b42: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  407b46: aa18         	add	r2, sp, #0x60
  407b48: ed9d 4b14    	vldr	d4, [sp, #80]
  407b4c: ed9d 5b16    	vldr	d5, [sp, #88]
  407b50: ed93 6b0a    	vldr	d6, [r3, #40]
  407b54: ed93 7b0c    	vldr	d7, [r3, #48]
  407b58: 4610         	mov	r0, r2
  407b5a: eeb0 0b44    	vmov.f64	d0, d4
  407b5e: eeb0 1b45    	vmov.f64	d1, d5
  407b62: eeb0 2b46    	vmov.f64	d2, d6
  407b66: eeb0 3b47    	vmov.f64	d3, d7
  407b6a: f7fe fb39    	bl	0x4061e0 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x2c4> @ imm = #-0x198e
  407b6e: 466b         	mov	r3, sp
  407b70: aa1a         	add	r2, sp, #0x68
  407b72: e892 0003    	ldm.w	r2, {r0, r1}
  407b76: e883 0003    	stm.w	r3, {r0, r1}
  407b7a: ab18         	add	r3, sp, #0x60
  407b7c: cb0c         	ldm	r3, {r2, r3}
  407b7e: 4620         	mov	r0, r4
  407b80: f7aa fa98    	bl	0x3b20b4 <Projectile::setDamagePosition(cpVect)> @ imm = #-0x55ad0
  407b84: 9c0d         	ldr	r4, [sp, #0x34]
  407b86: 9b0d         	ldr	r3, [sp, #0x34]
  407b88: 466a         	mov	r2, sp
  407b8a: f103 0180    	add.w	r1, r3, #0x80
  407b8e: c903         	ldm	r1, {r0, r1}
  407b90: e882 0003    	stm.w	r2, {r0, r1}
  407b94: 3378         	adds	r3, #0x78
  407b96: cb0c         	ldm	r3, {r2, r3}
  407b98: 4620         	mov	r0, r4
  407b9a: f7aa fa77    	bl	0x3b208c <Projectile::setDamageVelocity(cpVect)> @ imm = #-0x55b12
  407b9e: 9b0d         	ldr	r3, [sp, #0x34]
  407ba0: 4618         	mov	r0, r3
  407ba2: 2101         	movs	r1, #0x1
  407ba4: f7aa fb2c    	bl	0x3b2200 <Projectile::setCollided(bool)> @ imm = #-0x559a8
  407ba8: 9b0c         	ldr	r3, [sp, #0x30]
  407baa: 681b         	ldr	r3, [r3]
  407bac: f503 7316    	add.w	r3, r3, #0x258
  407bb0: 681c         	ldr	r4, [r3]
  407bb2: 9b0d         	ldr	r3, [sp, #0x34]
  407bb4: 4618         	mov	r0, r3
  407bb6: f7aa fac9    	bl	0x3b214c <Projectile::getDamage()> @ imm = #-0x55a6e
  407bba: 4605         	mov	r5, r0
  407bbc: 9b0d         	ldr	r3, [sp, #0x34]
  407bbe: aa0f         	add	r2, sp, #0x3c
  407bc0: 4610         	mov	r0, r2
  407bc2: 4619         	mov	r1, r3
  407bc4: f7aa faa6    	bl	0x3b2114 <Projectile::getShooterPlayerID()> @ imm = #-0x55ab4
  407bc8: 9b0d         	ldr	r3, [sp, #0x34]
  407bca: 4618         	mov	r0, r3
  407bcc: f7aa fb24    	bl	0x3b2218 <Projectile::getAmmoType()> @ imm = #-0x559b8
  407bd0: 4603         	mov	r3, r0
  407bd2: aa0f         	add	r2, sp, #0x3c
  407bd4: 2101         	movs	r1, #0x1
  407bd6: 9100         	str	r1, [sp]
  407bd8: 980c         	ldr	r0, [sp, #0x30]
  407bda: 4629         	mov	r1, r5
  407bdc: 47a0         	blx	r4
  407bde: ab0f         	add	r3, sp, #0x3c
  407be0: 4618         	mov	r0, r3
  407be2: f3ad fe97    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3add2e
  407be6: 9b0d         	ldr	r3, [sp, #0x34]
  407be8: 681b         	ldr	r3, [r3]
  407bea: 3328         	adds	r3, #0x28
  407bec: 681b         	ldr	r3, [r3]
  407bee: 9a0d         	ldr	r2, [sp, #0x34]
  407bf0: 4610         	mov	r0, r2
  407bf2: 2100         	movs	r1, #0x0
  407bf4: 4798         	blx	r3
  407bf6: 9b0d         	ldr	r3, [sp, #0x34]
  407bf8: 695b         	ldr	r3, [r3, #0x14]
  407bfa: 681b         	ldr	r3, [r3]
  407bfc: 3390         	adds	r3, #0x90
  407bfe: 681b         	ldr	r3, [r3]
  407c00: 9a0d         	ldr	r2, [sp, #0x34]
  407c02: 6952         	ldr	r2, [r2, #0x14]
  407c04: 4610         	mov	r0, r2
  407c06: 2100         	movs	r1, #0x0
  407c08: 4798         	blx	r3
  407c0a: e00b         	b	0x407c24 <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)+0x268> @ imm = #0x16
  407c0c: ab18         	add	r3, sp, #0x60
  407c0e: 4618         	mov	r0, r3
  407c10: f3ad fe80    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3add00
  407c14: f380 fa4a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x380494
  407c18: ab0f         	add	r3, sp, #0x3c
  407c1a: 4618         	mov	r0, r3
  407c1c: f3ad fe7a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3adcf4
  407c20: f380 fa44    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x380488
  407c24: b01c         	add	sp, #0x70
  407c26: ecbd 8b02    	vpop	{d8}
  407c2a: bd70         	pop	{r4, r5, r6, pc}

// ==== Tracer::onRemotePlayerBulletCollision
//      file offset 0x407c2c (= ELF address; Ghidra 0x417c2c), 628 bytes, Thumb-2
  407c2c: b570         	push	{r4, r5, r6, lr}
  407c2e: ed2d 8b02    	vpush	{d8}
  407c32: b09a         	sub	sp, #0x68
  407c34: 900d         	str	r0, [sp, #0x34]
  407c36: 910c         	str	r1, [sp, #0x30]
  407c38: 920b         	str	r2, [sp, #0x2c]
  407c3a: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x407e98 <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x26c>
  407c3c: 447b         	add	r3, pc
  407c3e: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x407e9c <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x270>
  407c40: 589a         	ldr	r2, [r3, r2]
  407c42: 6812         	ldr	r2, [r2]
  407c44: 6812         	ldr	r2, [r2]
  407c46: f502 7240    	add.w	r2, r2, #0x300
  407c4a: 6814         	ldr	r4, [r2]
  407c4c: 4a93         	ldr	r2, [pc, #0x24c]        @ 0x407e9c <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x270>
  407c4e: 589b         	ldr	r3, [r3, r2]
  407c50: 681d         	ldr	r5, [r3]
  407c52: 9b0c         	ldr	r3, [sp, #0x30]
  407c54: 681b         	ldr	r3, [r3]
  407c56: f503 73e2    	add.w	r3, r3, #0x1c4
  407c5a: 681b         	ldr	r3, [r3]
  407c5c: 9a0c         	ldr	r2, [sp, #0x30]
  407c5e: 4610         	mov	r0, r2
  407c60: 4798         	blx	r3
  407c62: 4603         	mov	r3, r0
  407c64: 4628         	mov	r0, r5
  407c66: 4619         	mov	r1, r3
  407c68: 47a0         	blx	r4
  407c6a: 4603         	mov	r3, r0
  407c6c: f083 0301    	eor	r3, r3, #0x1
  407c70: b2db         	uxtb	r3, r3
  407c72: 2b00         	cmp	r3, #0x0
  407c74: f000 810a    	beq.w	0x407e8c <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x260> @ imm = #0x214
  407c78: 9b0c         	ldr	r3, [sp, #0x30]
  407c7a: f8d3 2140    	ldr.w	r2, [r3, #0x140]
  407c7e: 9b0b         	ldr	r3, [sp, #0x2c]
  407c80: 429a         	cmp	r2, r3
  407c82: d10f         	bne	0x407ca4 <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x78> @ imm = #0x1e
  407c84: 9b0c         	ldr	r3, [sp, #0x30]
  407c86: 681b         	ldr	r3, [r3]
  407c88: f503 731b    	add.w	r3, r3, #0x26c
  407c8c: 681b         	ldr	r3, [r3]
  407c8e: 9a0c         	ldr	r2, [sp, #0x30]
  407c90: 4610         	mov	r0, r2
  407c92: 4798         	blx	r3
  407c94: 4603         	mov	r3, r0
  407c96: 2b00         	cmp	r3, #0x0
  407c98: d000         	beq	0x407c9c <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x70> @ imm = #0x0
  407c9a: e0f7         	b	0x407e8c <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x260> @ imm = #0x1ee
  407c9c: 9b0d         	ldr	r3, [sp, #0x34]
  407c9e: 2201         	movs	r2, #0x1
  407ca0: f883 2098    	strb.w	r2, [r3, #0x98]
  407ca4: 9c0d         	ldr	r4, [sp, #0x34]
  407ca6: 9b0d         	ldr	r3, [sp, #0x34]
  407ca8: 4618         	mov	r0, r3
  407caa: f7aa fa4f    	bl	0x3b214c <Projectile::getDamage()> @ imm = #-0x55b62
  407cae: 4603         	mov	r3, r0
  407cb0: 4620         	mov	r0, r4
  407cb2: 4619         	mov	r1, r3
  407cb4: f7aa fa94    	bl	0x3b21e0 <Projectile::setDamageAmount(float)> @ imm = #-0x55ad8
  407cb8: 9b0d         	ldr	r3, [sp, #0x34]
  407cba: 695b         	ldr	r3, [r3, #0x14]
  407cbc: 681b         	ldr	r3, [r3]
  407cbe: 3350         	adds	r3, #0x50
  407cc0: 681b         	ldr	r3, [r3]
  407cc2: 9a0d         	ldr	r2, [sp, #0x34]
  407cc4: 6952         	ldr	r2, [r2, #0x14]
  407cc6: 4610         	mov	r0, r2
  407cc8: 4798         	blx	r3
  407cca: 4603         	mov	r3, r0
  407ccc: edd3 7a00    	vldr	s15, [r3]
  407cd0: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  407cd4: 9b0d         	ldr	r3, [sp, #0x34]
  407cd6: 695b         	ldr	r3, [r3, #0x14]
  407cd8: 681b         	ldr	r3, [r3]
  407cda: 3350         	adds	r3, #0x50
  407cdc: 681b         	ldr	r3, [r3]
  407cde: 9a0d         	ldr	r2, [sp, #0x34]
  407ce0: 6952         	ldr	r2, [r2, #0x14]
  407ce2: 4610         	mov	r0, r2
  407ce4: 4798         	blx	r3
  407ce6: 4603         	mov	r3, r0
  407ce8: edd3 7a01    	vldr	s15, [r3, #4]
  407cec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407cf0: ab0e         	add	r3, sp, #0x38
  407cf2: 4618         	mov	r0, r3
  407cf4: eeb0 0b48    	vmov.f64	d0, d8
  407cf8: eeb0 1b47    	vmov.f64	d1, d7
  407cfc: f7fe fa30    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x1ba0
  407d00: ae06         	add	r6, sp, #0x18
  407d02: 9b0d         	ldr	r3, [sp, #0x34]
  407d04: ed93 4b14    	vldr	d4, [r3, #80]
  407d08: ed93 5b16    	vldr	d5, [r3, #88]
  407d0c: ed9d 6b0e    	vldr	d6, [sp, #56]
  407d10: ed9d 7b10    	vldr	d7, [sp, #64]
  407d14: 466c         	mov	r4, sp
  407d16: ad22         	add	r5, sp, #0x88
  407d18: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  407d1a: c40f         	stm	r4!, {r0, r1, r2, r3}
  407d1c: e895 0003    	ldm.w	r5, {r0, r1}
  407d20: e884 0003    	stm.w	r4, {r0, r1}
  407d24: a920         	add	r1, sp, #0x80
  407d26: e891 000c    	ldm.w	r1, {r2, r3}
  407d2a: 4630         	mov	r0, r6
  407d2c: eeb0 0b44    	vmov.f64	d0, d4
  407d30: eeb0 1b45    	vmov.f64	d1, d5
  407d34: eeb0 2b46    	vmov.f64	d2, d6
  407d38: eeb0 3b47    	vmov.f64	d3, d7
  407d3c: f7fe faf0    	bl	0x406320 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x404> @ imm = #-0x1a20
  407d40: ac0e         	add	r4, sp, #0x38
  407d42: ab06         	add	r3, sp, #0x18
  407d44: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407d46: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  407d4a: 9b0d         	ldr	r3, [sp, #0x34]
  407d4c: 695b         	ldr	r3, [r3, #0x14]
  407d4e: 681b         	ldr	r3, [r3]
  407d50: 334c         	adds	r3, #0x4c
  407d52: 681c         	ldr	r4, [r3]
  407d54: 9b0d         	ldr	r3, [sp, #0x34]
  407d56: 695d         	ldr	r5, [r3, #0x14]
  407d58: ed9d 7b0e    	vldr	d7, [sp, #56]
  407d5c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  407d60: ed9d 7b10    	vldr	d7, [sp, #64]
  407d64: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407d68: ab16         	add	r3, sp, #0x58
  407d6a: 4618         	mov	r0, r3
  407d6c: ee16 1a90    	vmov	r1, s13
  407d70: ee17 2a90    	vmov	r2, s15
  407d74: f18a ffbc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18af78
  407d78: ab16         	add	r3, sp, #0x58
  407d7a: 4628         	mov	r0, r5
  407d7c: 4619         	mov	r1, r3
  407d7e: 47a0         	blx	r4
  407d80: 9c0d         	ldr	r4, [sp, #0x34]
  407d82: 9b0c         	ldr	r3, [sp, #0x30]
  407d84: 681b         	ldr	r3, [r3]
  407d86: f503 73e0    	add.w	r3, r3, #0x1c0
  407d8a: 681b         	ldr	r3, [r3]
  407d8c: 9a0c         	ldr	r2, [sp, #0x30]
  407d8e: a916         	add	r1, sp, #0x58
  407d90: 4608         	mov	r0, r1
  407d92: 4611         	mov	r1, r2
  407d94: 4798         	blx	r3
  407d96: ab16         	add	r3, sp, #0x58
  407d98: 4620         	mov	r0, r4
  407d9a: 4619         	mov	r1, r3
  407d9c: f7aa f9ac    	bl	0x3b20f8 <Projectile::setDamagedPlayerID(std::string)> @ imm = #-0x55ca8
  407da0: ab16         	add	r3, sp, #0x58
  407da2: 4618         	mov	r0, r3
  407da4: f3ad fdb6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3adb6c
  407da8: 9c0d         	ldr	r4, [sp, #0x34]
  407daa: 9b0d         	ldr	r3, [sp, #0x34]
  407dac: 695b         	ldr	r3, [r3, #0x14]
  407dae: 681b         	ldr	r3, [r3]
  407db0: 3350         	adds	r3, #0x50
  407db2: 681b         	ldr	r3, [r3]
  407db4: 9a0d         	ldr	r2, [sp, #0x34]
  407db6: 6952         	ldr	r2, [r2, #0x14]
  407db8: 4610         	mov	r0, r2
  407dba: 4798         	blx	r3
  407dbc: 4603         	mov	r3, r0
  407dbe: edd3 7a00    	vldr	s15, [r3]
  407dc2: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  407dc6: 9b0d         	ldr	r3, [sp, #0x34]
  407dc8: 695b         	ldr	r3, [r3, #0x14]
  407dca: 681b         	ldr	r3, [r3]
  407dcc: 3350         	adds	r3, #0x50
  407dce: 681b         	ldr	r3, [r3]
  407dd0: 9a0d         	ldr	r2, [sp, #0x34]
  407dd2: 6952         	ldr	r2, [r2, #0x14]
  407dd4: 4610         	mov	r0, r2
  407dd6: 4798         	blx	r3
  407dd8: 4603         	mov	r3, r0
  407dda: edd3 7a01    	vldr	s15, [r3, #4]
  407dde: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407de2: ab12         	add	r3, sp, #0x48
  407de4: 4618         	mov	r0, r3
  407de6: eeb0 0b48    	vmov.f64	d0, d8
  407dea: eeb0 1b47    	vmov.f64	d1, d7
  407dee: f7fe f9b7    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x1c92
  407df2: 9b0c         	ldr	r3, [sp, #0x30]
  407df4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  407df8: aa16         	add	r2, sp, #0x58
  407dfa: ed9d 4b12    	vldr	d4, [sp, #72]
  407dfe: ed9d 5b14    	vldr	d5, [sp, #80]
  407e02: ed93 6b0a    	vldr	d6, [r3, #40]
  407e06: ed93 7b0c    	vldr	d7, [r3, #48]
  407e0a: 4610         	mov	r0, r2
  407e0c: eeb0 0b44    	vmov.f64	d0, d4
  407e10: eeb0 1b45    	vmov.f64	d1, d5
  407e14: eeb0 2b46    	vmov.f64	d2, d6
  407e18: eeb0 3b47    	vmov.f64	d3, d7
  407e1c: f7fe f9e0    	bl	0x4061e0 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x2c4> @ imm = #-0x1c40
  407e20: 466b         	mov	r3, sp
  407e22: aa18         	add	r2, sp, #0x60
  407e24: e892 0003    	ldm.w	r2, {r0, r1}
  407e28: e883 0003    	stm.w	r3, {r0, r1}
  407e2c: ab16         	add	r3, sp, #0x58
  407e2e: cb0c         	ldm	r3, {r2, r3}
  407e30: 4620         	mov	r0, r4
  407e32: f7aa f93f    	bl	0x3b20b4 <Projectile::setDamagePosition(cpVect)> @ imm = #-0x55d82
  407e36: 9c0d         	ldr	r4, [sp, #0x34]
  407e38: 9b0d         	ldr	r3, [sp, #0x34]
  407e3a: 466a         	mov	r2, sp
  407e3c: f103 0180    	add.w	r1, r3, #0x80
  407e40: c903         	ldm	r1, {r0, r1}
  407e42: e882 0003    	stm.w	r2, {r0, r1}
  407e46: 3378         	adds	r3, #0x78
  407e48: cb0c         	ldm	r3, {r2, r3}
  407e4a: 4620         	mov	r0, r4
  407e4c: f7aa f91e    	bl	0x3b208c <Projectile::setDamageVelocity(cpVect)> @ imm = #-0x55dc4
  407e50: 9b0d         	ldr	r3, [sp, #0x34]
  407e52: 4618         	mov	r0, r3
  407e54: 2101         	movs	r1, #0x1
  407e56: f7aa f9d3    	bl	0x3b2200 <Projectile::setCollided(bool)> @ imm = #-0x55c5a
  407e5a: 9b0d         	ldr	r3, [sp, #0x34]
  407e5c: 681b         	ldr	r3, [r3]
  407e5e: 3328         	adds	r3, #0x28
  407e60: 681b         	ldr	r3, [r3]
  407e62: 9a0d         	ldr	r2, [sp, #0x34]
  407e64: 4610         	mov	r0, r2
  407e66: 2100         	movs	r1, #0x0
  407e68: 4798         	blx	r3
  407e6a: 9b0d         	ldr	r3, [sp, #0x34]
  407e6c: 695b         	ldr	r3, [r3, #0x14]
  407e6e: 681b         	ldr	r3, [r3]
  407e70: 3390         	adds	r3, #0x90
  407e72: 681b         	ldr	r3, [r3]
  407e74: 9a0d         	ldr	r2, [sp, #0x34]
  407e76: 6952         	ldr	r2, [r2, #0x14]
  407e78: 4610         	mov	r0, r2
  407e7a: 2100         	movs	r1, #0x0
  407e7c: 4798         	blx	r3
  407e7e: e006         	b	0x407e8e <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x262> @ imm = #0xc
  407e80: ab16         	add	r3, sp, #0x58
  407e82: 4618         	mov	r0, r3
  407e84: f3ad fd46    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ada8c
  407e88: f380 f910    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x380220
  407e8c: bf00         	nop
  407e8e: b01a         	add	sp, #0x68
  407e90: ecbd 8b02    	vpop	{d8}
  407e94: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x407e95); words below are literal-pool data ---
  407e96: bf00         	nop
  407e98: adcc         	add	r5, sp, #0x330
  407e9a: 0052         	lsls	r2, r2, #0x1
  407e9c: d784         	bvc	0x407da8 <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)+0x17c> @ imm = #-0xf8
  407e9e: ffff b570    	<unknown>

// ==== Tracer::onHostEnemyBulletCollision
//      file offset 0x407ea0 (= ELF address; Ghidra 0x417ea0), 492 bytes, Thumb-2
  407ea0: b570         	push	{r4, r5, r6, lr}
  407ea2: ed2d 8b02    	vpush	{d8}
  407ea6: b096         	sub	sp, #0x58
  407ea8: 900d         	str	r0, [sp, #0x34]
  407eaa: 910c         	str	r1, [sp, #0x30]
  407eac: 920b         	str	r2, [sp, #0x2c]
  407eae: 9c0d         	ldr	r4, [sp, #0x34]
  407eb0: 9b0d         	ldr	r3, [sp, #0x34]
  407eb2: 4618         	mov	r0, r3
  407eb4: f7aa f94a    	bl	0x3b214c <Projectile::getDamage()> @ imm = #-0x55d6c
  407eb8: 4603         	mov	r3, r0
  407eba: 4620         	mov	r0, r4
  407ebc: 4619         	mov	r1, r3
  407ebe: f7aa f98f    	bl	0x3b21e0 <Projectile::setDamageAmount(float)> @ imm = #-0x55ce2
  407ec2: 9b0d         	ldr	r3, [sp, #0x34]
  407ec4: 695b         	ldr	r3, [r3, #0x14]
  407ec6: 681b         	ldr	r3, [r3]
  407ec8: 3350         	adds	r3, #0x50
  407eca: 681b         	ldr	r3, [r3]
  407ecc: 9a0d         	ldr	r2, [sp, #0x34]
  407ece: 6952         	ldr	r2, [r2, #0x14]
  407ed0: 4610         	mov	r0, r2
  407ed2: 4798         	blx	r3
  407ed4: 4603         	mov	r3, r0
  407ed6: edd3 7a00    	vldr	s15, [r3]
  407eda: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  407ede: 9b0d         	ldr	r3, [sp, #0x34]
  407ee0: 695b         	ldr	r3, [r3, #0x14]
  407ee2: 681b         	ldr	r3, [r3]
  407ee4: 3350         	adds	r3, #0x50
  407ee6: 681b         	ldr	r3, [r3]
  407ee8: 9a0d         	ldr	r2, [sp, #0x34]
  407eea: 6952         	ldr	r2, [r2, #0x14]
  407eec: 4610         	mov	r0, r2
  407eee: 4798         	blx	r3
  407ef0: 4603         	mov	r3, r0
  407ef2: edd3 7a01    	vldr	s15, [r3, #4]
  407ef6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  407efa: ab0e         	add	r3, sp, #0x38
  407efc: 4618         	mov	r0, r3
  407efe: eeb0 0b48    	vmov.f64	d0, d8
  407f02: eeb0 1b47    	vmov.f64	d1, d7
  407f06: f7fe f92b    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x1daa
  407f0a: ae06         	add	r6, sp, #0x18
  407f0c: 9b0d         	ldr	r3, [sp, #0x34]
  407f0e: ed93 4b14    	vldr	d4, [r3, #80]
  407f12: ed93 5b16    	vldr	d5, [r3, #88]
  407f16: ed9d 6b0e    	vldr	d6, [sp, #56]
  407f1a: ed9d 7b10    	vldr	d7, [sp, #64]
  407f1e: 466c         	mov	r4, sp
  407f20: ad1e         	add	r5, sp, #0x78
  407f22: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  407f24: c40f         	stm	r4!, {r0, r1, r2, r3}
  407f26: e895 0003    	ldm.w	r5, {r0, r1}
  407f2a: e884 0003    	stm.w	r4, {r0, r1}
  407f2e: a91c         	add	r1, sp, #0x70
  407f30: e891 000c    	ldm.w	r1, {r2, r3}
  407f34: 4630         	mov	r0, r6
  407f36: eeb0 0b44    	vmov.f64	d0, d4
  407f3a: eeb0 1b45    	vmov.f64	d1, d5
  407f3e: eeb0 2b46    	vmov.f64	d2, d6
  407f42: eeb0 3b47    	vmov.f64	d3, d7
  407f46: f7fe f9eb    	bl	0x406320 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x404> @ imm = #-0x1c2a
  407f4a: ac0e         	add	r4, sp, #0x38
  407f4c: ab06         	add	r3, sp, #0x18
  407f4e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  407f50: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  407f54: 9b0d         	ldr	r3, [sp, #0x34]
  407f56: 695b         	ldr	r3, [r3, #0x14]
  407f58: 681b         	ldr	r3, [r3]
  407f5a: 334c         	adds	r3, #0x4c
  407f5c: 681c         	ldr	r4, [r3]
  407f5e: 9b0d         	ldr	r3, [sp, #0x34]
  407f60: 695d         	ldr	r5, [r3, #0x14]
  407f62: ed9d 7b0e    	vldr	d7, [sp, #56]
  407f66: eef7 6bc7    	vcvt.f32.f64	s13, d7
  407f6a: ed9d 7b10    	vldr	d7, [sp, #64]
  407f6e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  407f72: ab12         	add	r3, sp, #0x48
  407f74: 4618         	mov	r0, r3
  407f76: ee16 1a90    	vmov	r1, s13
  407f7a: ee17 2a90    	vmov	r2, s15
  407f7e: f18a feb7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18ad6e
  407f82: ab12         	add	r3, sp, #0x48
  407f84: 4628         	mov	r0, r5
  407f86: 4619         	mov	r1, r3
  407f88: 47a0         	blx	r4
  407f8a: f1d8 fb91    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1d8722
  407f8e: 4602         	mov	r2, r0
  407f90: 9b0d         	ldr	r3, [sp, #0x34]
  407f92: 4610         	mov	r0, r2
  407f94: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x408088 <Tracer::onHostEnemyBulletCollision(Enemy*, cpShape*, cpSegmentQueryInfo)+0x1e8>
  407f96: 447a         	add	r2, pc
  407f98: 4611         	mov	r1, r2
  407f9a: 461a         	mov	r2, r3
  407f9c: f1d8 fdc6    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1d8b8c
  407fa0: 9c0d         	ldr	r4, [sp, #0x34]
  407fa2: 9b0c         	ldr	r3, [sp, #0x30]
  407fa4: 681b         	ldr	r3, [r3]
  407fa6: f503 73e0    	add.w	r3, r3, #0x1c0
  407faa: 681b         	ldr	r3, [r3]
  407fac: 9a0c         	ldr	r2, [sp, #0x30]
  407fae: a912         	add	r1, sp, #0x48
  407fb0: 4608         	mov	r0, r1
  407fb2: 4611         	mov	r1, r2
  407fb4: 4798         	blx	r3
  407fb6: ab12         	add	r3, sp, #0x48
  407fb8: 4620         	mov	r0, r4
  407fba: 4619         	mov	r1, r3
  407fbc: f7aa f89c    	bl	0x3b20f8 <Projectile::setDamagedPlayerID(std::string)> @ imm = #-0x55ec8
  407fc0: ab12         	add	r3, sp, #0x48
  407fc2: 4618         	mov	r0, r3
  407fc4: f3ad fca6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ad94c
  407fc8: 9c0d         	ldr	r4, [sp, #0x34]
  407fca: 9b0d         	ldr	r3, [sp, #0x34]
  407fcc: 695b         	ldr	r3, [r3, #0x14]
  407fce: 681b         	ldr	r3, [r3]
  407fd0: 3350         	adds	r3, #0x50
  407fd2: 681b         	ldr	r3, [r3]
  407fd4: 9a0d         	ldr	r2, [sp, #0x34]
  407fd6: 6952         	ldr	r2, [r2, #0x14]
  407fd8: 4610         	mov	r0, r2
  407fda: 4798         	blx	r3
  407fdc: 4603         	mov	r3, r0
  407fde: edd3 7a00    	vldr	s15, [r3]
  407fe2: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  407fe6: 9b0d         	ldr	r3, [sp, #0x34]
  407fe8: 695b         	ldr	r3, [r3, #0x14]
  407fea: 681b         	ldr	r3, [r3]
  407fec: 3350         	adds	r3, #0x50
  407fee: 681b         	ldr	r3, [r3]
  407ff0: 9a0d         	ldr	r2, [sp, #0x34]
  407ff2: 6952         	ldr	r2, [r2, #0x14]
  407ff4: 4610         	mov	r0, r2
  407ff6: 4798         	blx	r3
  407ff8: 4603         	mov	r3, r0
  407ffa: edd3 7a01    	vldr	s15, [r3, #4]
  407ffe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  408002: ab12         	add	r3, sp, #0x48
  408004: 4618         	mov	r0, r3
  408006: eeb0 0b48    	vmov.f64	d0, d8
  40800a: eeb0 1b47    	vmov.f64	d1, d7
  40800e: f7fe f8a7    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x1eb2
  408012: 466b         	mov	r3, sp
  408014: aa14         	add	r2, sp, #0x50
  408016: e892 0003    	ldm.w	r2, {r0, r1}
  40801a: e883 0003    	stm.w	r3, {r0, r1}
  40801e: ab12         	add	r3, sp, #0x48
  408020: cb0c         	ldm	r3, {r2, r3}
  408022: 4620         	mov	r0, r4
  408024: f7aa f846    	bl	0x3b20b4 <Projectile::setDamagePosition(cpVect)> @ imm = #-0x55f74
  408028: 9c0d         	ldr	r4, [sp, #0x34]
  40802a: 9b0d         	ldr	r3, [sp, #0x34]
  40802c: 466a         	mov	r2, sp
  40802e: f103 0180    	add.w	r1, r3, #0x80
  408032: c903         	ldm	r1, {r0, r1}
  408034: e882 0003    	stm.w	r2, {r0, r1}
  408038: 3378         	adds	r3, #0x78
  40803a: cb0c         	ldm	r3, {r2, r3}
  40803c: 4620         	mov	r0, r4
  40803e: f7aa f825    	bl	0x3b208c <Projectile::setDamageVelocity(cpVect)> @ imm = #-0x55fb6
  408042: 9b0d         	ldr	r3, [sp, #0x34]
  408044: 4618         	mov	r0, r3
  408046: 2101         	movs	r1, #0x1
  408048: f7aa f8da    	bl	0x3b2200 <Projectile::setCollided(bool)> @ imm = #-0x55e4c
  40804c: 9b0d         	ldr	r3, [sp, #0x34]
  40804e: 681b         	ldr	r3, [r3]
  408050: 3328         	adds	r3, #0x28
  408052: 681b         	ldr	r3, [r3]
  408054: 9a0d         	ldr	r2, [sp, #0x34]
  408056: 4610         	mov	r0, r2
  408058: 2100         	movs	r1, #0x0
  40805a: 4798         	blx	r3
  40805c: 9b0d         	ldr	r3, [sp, #0x34]
  40805e: 695b         	ldr	r3, [r3, #0x14]
  408060: 681b         	ldr	r3, [r3]
  408062: 3390         	adds	r3, #0x90
  408064: 681b         	ldr	r3, [r3]
  408066: 9a0d         	ldr	r2, [sp, #0x34]
  408068: 6952         	ldr	r2, [r2, #0x14]
  40806a: 4610         	mov	r0, r2
  40806c: 2100         	movs	r1, #0x0
  40806e: 4798         	blx	r3
  408070: e005         	b	0x40807e <Tracer::onHostEnemyBulletCollision(Enemy*, cpShape*, cpSegmentQueryInfo)+0x1de> @ imm = #0xa
  408072: ab12         	add	r3, sp, #0x48
  408074: 4618         	mov	r0, r3
  408076: f3ad fc4d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ad89a
  40807a: f380 f817    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38002e
  40807e: b016         	add	sp, #0x58
  408080: ecbd 8b02    	vpop	{d8}
  408084: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x408085); words below are literal-pool data ---
  408086: bf00         	nop
  408088: 266a         	movs	r6, #0x6a
  40808a: 003d         	movs	r5, r7

// ==== Tracer::checkCollision
//      file offset 0x40808c (= ELF address; Ghidra 0x41808c), 692 bytes, Thumb-2
  40808c: b5f0         	push	{r4, r5, r6, r7, lr}
  40808e: ed2d 8b02    	vpush	{d8}
  408092: b0a7         	sub	sp, #0x9c
  408094: 900b         	str	r0, [sp, #0x2c]
  408096: 4ca8         	ldr	r4, [pc, #0x2a0]        @ 0x408338 <Tracer::checkCollision()+0x2ac>
  408098: 447c         	add	r4, pc
  40809a: f44f 7322    	mov.w	r3, #0x288
  40809e: 930e         	str	r3, [sp, #0x38]
  4080a0: f44f 7380    	mov.w	r3, #0x100
  4080a4: 930f         	str	r3, [sp, #0x3c]
  4080a6: 9b0b         	ldr	r3, [sp, #0x2c]
  4080a8: 681b         	ldr	r3, [r3]
  4080aa: 332c         	adds	r3, #0x2c
  4080ac: 681b         	ldr	r3, [r3]
  4080ae: 9a0b         	ldr	r2, [sp, #0x2c]
  4080b0: 4610         	mov	r0, r2
  4080b2: 4798         	blx	r3
  4080b4: 4603         	mov	r3, r0
  4080b6: 2b20         	cmp	r3, #0x20
  4080b8: d003         	beq	0x4080c2 <Tracer::checkCollision()+0x36> @ imm = #0x6
  4080ba: f5b3 7f82    	cmp.w	r3, #0x104
  4080be: d004         	beq	0x4080ca <Tracer::checkCollision()+0x3e> @ imm = #0x8
  4080c0: e007         	b	0x4080d2 <Tracer::checkCollision()+0x46> @ imm = #0xe
  4080c2: f44f 7384    	mov.w	r3, #0x108
  4080c6: 930e         	str	r3, [sp, #0x38]
  4080c8: e003         	b	0x4080d2 <Tracer::checkCollision()+0x46> @ imm = #0x6
  4080ca: f44f 73cc    	mov.w	r3, #0x198
  4080ce: 930e         	str	r3, [sp, #0x38]
  4080d0: bf00         	nop
  4080d2: 2300         	movs	r3, #0x0
  4080d4: f88d 3037    	strb.w	r3, [sp, #0x37]
  4080d8: 9b0b         	ldr	r3, [sp, #0x2c]
  4080da: 695b         	ldr	r3, [r3, #0x14]
  4080dc: 681b         	ldr	r3, [r3]
  4080de: 3350         	adds	r3, #0x50
  4080e0: 681b         	ldr	r3, [r3]
  4080e2: 9a0b         	ldr	r2, [sp, #0x2c]
  4080e4: 6952         	ldr	r2, [r2, #0x14]
  4080e6: 4610         	mov	r0, r2
  4080e8: 4798         	blx	r3
  4080ea: 4603         	mov	r3, r0
  4080ec: edd3 7a00    	vldr	s15, [r3]
  4080f0: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  4080f4: 9b0b         	ldr	r3, [sp, #0x2c]
  4080f6: 695b         	ldr	r3, [r3, #0x14]
  4080f8: 681b         	ldr	r3, [r3]
  4080fa: 3350         	adds	r3, #0x50
  4080fc: 681b         	ldr	r3, [r3]
  4080fe: 9a0b         	ldr	r2, [sp, #0x2c]
  408100: 6952         	ldr	r2, [r2, #0x14]
  408102: 4610         	mov	r0, r2
  408104: 4798         	blx	r3
  408106: 4603         	mov	r3, r0
  408108: edd3 7a01    	vldr	s15, [r3, #4]
  40810c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  408110: ab12         	add	r3, sp, #0x48
  408112: 4618         	mov	r0, r3
  408114: eeb0 0b48    	vmov.f64	d0, d8
  408118: eeb0 1b47    	vmov.f64	d1, d7
  40811c: f7fe f820    	bl	0x406160 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x244> @ imm = #-0x1fc0
  408120: 4b86         	ldr	r3, [pc, #0x218]        @ 0x40833c <Tracer::checkCollision()+0x2b0>
  408122: 58e3         	ldr	r3, [r4, r3]
  408124: 681f         	ldr	r7, [r3]
  408126: f8dd e03c    	ldr.w	lr, [sp, #0x3c]
  40812a: 9d0b         	ldr	r5, [sp, #0x2c]
  40812c: ae02         	add	r6, sp, #0x8
  40812e: ab12         	add	r3, sp, #0x48
  408130: cb0f         	ldm	r3, {r0, r1, r2, r3}
  408132: e886 000f    	stm.w	r6, {r0, r1, r2, r3}
  408136: f8cd e018    	str.w	lr, [sp, #0x18]
  40813a: 2300         	movs	r3, #0x0
  40813c: 9307         	str	r3, [sp, #0x1c]
  40813e: ab16         	add	r3, sp, #0x58
  408140: 9308         	str	r3, [sp, #0x20]
  408142: 466b         	mov	r3, sp
  408144: f105 0258    	add.w	r2, r5, #0x58
  408148: e892 0003    	ldm.w	r2, {r0, r1}
  40814c: e883 0003    	stm.w	r3, {r0, r1}
  408150: f105 0350    	add.w	r3, r5, #0x50
  408154: cb0c         	ldm	r3, {r2, r3}
  408156: 4638         	mov	r0, r7
  408158: f2cd fefe    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x2cddfc
  40815c: 4603         	mov	r3, r0
  40815e: 9310         	str	r3, [sp, #0x40]
  408160: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x40833c <Tracer::checkCollision()+0x2b0>
  408162: 58e3         	ldr	r3, [r4, r3]
  408164: 681e         	ldr	r6, [r3]
  408166: 9f0e         	ldr	r7, [sp, #0x38]
  408168: 9c0b         	ldr	r4, [sp, #0x2c]
  40816a: ad02         	add	r5, sp, #0x8
  40816c: ab12         	add	r3, sp, #0x48
  40816e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  408170: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  408174: 9706         	str	r7, [sp, #0x18]
  408176: 2300         	movs	r3, #0x0
  408178: 9307         	str	r3, [sp, #0x1c]
  40817a: ab1e         	add	r3, sp, #0x78
  40817c: 9308         	str	r3, [sp, #0x20]
  40817e: 466b         	mov	r3, sp
  408180: f104 0258    	add.w	r2, r4, #0x58
  408184: e892 0003    	ldm.w	r2, {r0, r1}
  408188: e883 0003    	stm.w	r3, {r0, r1}
  40818c: f104 0350    	add.w	r3, r4, #0x50
  408190: cb0c         	ldm	r3, {r2, r3}
  408192: 4630         	mov	r0, r6
  408194: f2cd fee0    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x2cddc0
  408198: 4603         	mov	r3, r0
  40819a: 9311         	str	r3, [sp, #0x44]
  40819c: 9b10         	ldr	r3, [sp, #0x40]
  40819e: 2b00         	cmp	r3, #0x0
  4081a0: d034         	beq	0x40820c <Tracer::checkCollision()+0x180> @ imm = #0x68
  4081a2: 9b11         	ldr	r3, [sp, #0x44]
  4081a4: 2b00         	cmp	r3, #0x0
  4081a6: d014         	beq	0x4081d2 <Tracer::checkCollision()+0x146> @ imm = #0x28
  4081a8: 9b11         	ldr	r3, [sp, #0x44]
  4081aa: 6ddb         	ldr	r3, [r3, #0x5c]
  4081ac: 2b0d         	cmp	r3, #0xd
  4081ae: d110         	bne	0x4081d2 <Tracer::checkCollision()+0x146> @ imm = #0x20
  4081b0: 466c         	mov	r4, sp
  4081b2: ad18         	add	r5, sp, #0x60
  4081b4: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  4081b6: c40f         	stm	r4!, {r0, r1, r2, r3}
  4081b8: e895 0003    	ldm.w	r5, {r0, r1}
  4081bc: e884 0003    	stm.w	r4, {r0, r1}
  4081c0: ab16         	add	r3, sp, #0x58
  4081c2: cb0c         	ldm	r3, {r2, r3}
  4081c4: 980b         	ldr	r0, [sp, #0x2c]
  4081c6: f7ff fa53    	bl	0x407670 <Tracer::onSpark(cpSegmentQueryInfo)> @ imm = #-0xb5a
  4081ca: 2301         	movs	r3, #0x1
  4081cc: f88d 3037    	strb.w	r3, [sp, #0x37]
  4081d0: e0ad         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x15a
  4081d2: 9b11         	ldr	r3, [sp, #0x44]
  4081d4: 2b00         	cmp	r3, #0x0
  4081d6: d008         	beq	0x4081ea <Tracer::checkCollision()+0x15e> @ imm = #0x10
  4081d8: ed9d 6b18    	vldr	d6, [sp, #96]
  4081dc: ed9d 7b20    	vldr	d7, [sp, #128]
  4081e0: eeb4 6bc7    	vcmpe.f64	d6, d7
  4081e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4081e8: d810         	bhi	0x40820c <Tracer::checkCollision()+0x180> @ imm = #0x20
  4081ea: 466c         	mov	r4, sp
  4081ec: ad18         	add	r5, sp, #0x60
  4081ee: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  4081f0: c40f         	stm	r4!, {r0, r1, r2, r3}
  4081f2: e895 0003    	ldm.w	r5, {r0, r1}
  4081f6: e884 0003    	stm.w	r4, {r0, r1}
  4081fa: ab16         	add	r3, sp, #0x58
  4081fc: cb0c         	ldm	r3, {r2, r3}
  4081fe: 980b         	ldr	r0, [sp, #0x2c]
  408200: f7ff fa36    	bl	0x407670 <Tracer::onSpark(cpSegmentQueryInfo)> @ imm = #-0xb94
  408204: 2301         	movs	r3, #0x1
  408206: f88d 3037    	strb.w	r3, [sp, #0x37]
  40820a: e090         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x120
  40820c: 9b11         	ldr	r3, [sp, #0x44]
  40820e: 2b00         	cmp	r3, #0x0
  408210: f000 808d    	beq.w	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x11a
  408214: 9b11         	ldr	r3, [sp, #0x44]
  408216: 6ddb         	ldr	r3, [r3, #0x5c]
  408218: 2b15         	cmp	r3, #0x15
  40821a: d050         	beq	0x4082be <Tracer::checkCollision()+0x232> @ imm = #0xa0
  40821c: 2b15         	cmp	r3, #0x15
  40821e: d805         	bhi	0x40822c <Tracer::checkCollision()+0x1a0> @ imm = #0xa
  408220: 2b01         	cmp	r3, #0x1
  408222: f000 8083    	beq.w	0x40832c <Tracer::checkCollision()+0x2a0> @ imm = #0x106
  408226: 2b0d         	cmp	r3, #0xd
  408228: d059         	beq	0x4082de <Tracer::checkCollision()+0x252> @ imm = #0xb2
  40822a: e06a         	b	0x408302 <Tracer::checkCollision()+0x276> @ imm = #0xd4
  40822c: 2b84         	cmp	r3, #0x84
  40822e: d013         	beq	0x408258 <Tracer::checkCollision()+0x1cc> @ imm = #0x26
  408230: f240 2241    	movw	r2, #0x241
  408234: 4293         	cmp	r3, r2
  408236: d164         	bne	0x408302 <Tracer::checkCollision()+0x276> @ imm = #0xc8
  408238: 9b11         	ldr	r3, [sp, #0x44]
  40823a: 6d1e         	ldr	r6, [r3, #0x50]
  40823c: 466c         	mov	r4, sp
  40823e: ad1e         	add	r5, sp, #0x78
  408240: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  408242: c40f         	stm	r4!, {r0, r1, r2, r3}
  408244: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
  408248: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40824c: 980b         	ldr	r0, [sp, #0x2c]
  40824e: 4631         	mov	r1, r6
  408250: 9a11         	ldr	r2, [sp, #0x44]
  408252: f7ff fe25    	bl	0x407ea0 <Tracer::onHostEnemyBulletCollision(Enemy*, cpShape*, cpSegmentQueryInfo)> @ imm = #-0x3b6
  408256: e06a         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0xd4
  408258: 9b0b         	ldr	r3, [sp, #0x2c]
  40825a: 681b         	ldr	r3, [r3]
  40825c: 332c         	adds	r3, #0x2c
  40825e: 681b         	ldr	r3, [r3]
  408260: 9a0b         	ldr	r2, [sp, #0x2c]
  408262: 4610         	mov	r0, r2
  408264: 4798         	blx	r3
  408266: 4603         	mov	r3, r0
  408268: f5b3 6f80    	cmp.w	r3, #0x400
  40826c: bf14         	ite	ne
  40826e: 2300         	movne	r3, #0x0
  408270: 2301         	moveq	r3, #0x1
  408272: b2db         	uxtb	r3, r3
  408274: 2b00         	cmp	r3, #0x0
  408276: d00f         	beq	0x408298 <Tracer::checkCollision()+0x20c> @ imm = #0x1e
  408278: 9b11         	ldr	r3, [sp, #0x44]
  40827a: 6d1e         	ldr	r6, [r3, #0x50]
  40827c: 466c         	mov	r4, sp
  40827e: ad1e         	add	r5, sp, #0x78
  408280: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  408282: c40f         	stm	r4!, {r0, r1, r2, r3}
  408284: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
  408288: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40828c: 980b         	ldr	r0, [sp, #0x2c]
  40828e: 4631         	mov	r1, r6
  408290: 9a11         	ldr	r2, [sp, #0x44]
  408292: f7ff fccb    	bl	0x407c2c <Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo)> @ imm = #-0x66a
  408296: e04a         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x94
  408298: 9b0b         	ldr	r3, [sp, #0x2c]
  40829a: 681b         	ldr	r3, [r3]
  40829c: 3328         	adds	r3, #0x28
  40829e: 681b         	ldr	r3, [r3]
  4082a0: 9a0b         	ldr	r2, [sp, #0x2c]
  4082a2: 4610         	mov	r0, r2
  4082a4: 2100         	movs	r1, #0x0
  4082a6: 4798         	blx	r3
  4082a8: 9b0b         	ldr	r3, [sp, #0x2c]
  4082aa: 695b         	ldr	r3, [r3, #0x14]
  4082ac: 681b         	ldr	r3, [r3]
  4082ae: 3390         	adds	r3, #0x90
  4082b0: 681b         	ldr	r3, [r3]
  4082b2: 9a0b         	ldr	r2, [sp, #0x2c]
  4082b4: 6952         	ldr	r2, [r2, #0x14]
  4082b6: 4610         	mov	r0, r2
  4082b8: 2100         	movs	r1, #0x0
  4082ba: 4798         	blx	r3
  4082bc: e037         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x6e
  4082be: 9b11         	ldr	r3, [sp, #0x44]
  4082c0: 6d1e         	ldr	r6, [r3, #0x50]
  4082c2: 466c         	mov	r4, sp
  4082c4: ad1e         	add	r5, sp, #0x78
  4082c6: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  4082c8: c40f         	stm	r4!, {r0, r1, r2, r3}
  4082ca: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
  4082ce: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  4082d2: 980b         	ldr	r0, [sp, #0x2c]
  4082d4: 4631         	mov	r1, r6
  4082d6: 9a11         	ldr	r2, [sp, #0x44]
  4082d8: f7ff fb70    	bl	0x4079bc <Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo)> @ imm = #-0x920
  4082dc: e027         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x4e
  4082de: 9b11         	ldr	r3, [sp, #0x44]
  4082e0: 685b         	ldr	r3, [r3, #0x4]
  4082e2: f8d3 6090    	ldr.w	r6, [r3, #0x90]
  4082e6: 466c         	mov	r4, sp
  4082e8: ad1e         	add	r5, sp, #0x78
  4082ea: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  4082ec: c40f         	stm	r4!, {r0, r1, r2, r3}
  4082ee: e895 000f    	ldm.w	r5, {r0, r1, r2, r3}
  4082f2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  4082f6: 980b         	ldr	r0, [sp, #0x2c]
  4082f8: 4631         	mov	r1, r6
  4082fa: 9a11         	ldr	r2, [sp, #0x44]
  4082fc: f7ff fabe    	bl	0x40787c <Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo)> @ imm = #-0xa84
  408300: e015         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x2a
  408302: f89d 3037    	ldrb.w	r3, [sp, #0x37]
  408306: f083 0301    	eor	r3, r3, #0x1
  40830a: b2db         	uxtb	r3, r3
  40830c: 2b00         	cmp	r3, #0x0
  40830e: d00c         	beq	0x40832a <Tracer::checkCollision()+0x29e> @ imm = #0x18
  408310: 466c         	mov	r4, sp
  408312: ad20         	add	r5, sp, #0x80
  408314: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  408316: c40f         	stm	r4!, {r0, r1, r2, r3}
  408318: e895 0003    	ldm.w	r5, {r0, r1}
  40831c: e884 0003    	stm.w	r4, {r0, r1}
  408320: ab1e         	add	r3, sp, #0x78
  408322: cb0c         	ldm	r3, {r2, r3}
  408324: 980b         	ldr	r0, [sp, #0x2c]
  408326: f7ff f9a3    	bl	0x407670 <Tracer::onSpark(cpSegmentQueryInfo)> @ imm = #-0xcba
  40832a: e000         	b	0x40832e <Tracer::checkCollision()+0x2a2> @ imm = #0x0
  40832c: bf00         	nop
  40832e: b027         	add	sp, #0x9c
  408330: ecbd 8b02    	vpop	{d8}
  408334: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x408335); words below are literal-pool data ---
  408336: bf00         	nop
  408338: a970         	add	r1, sp, #0x1c0
  40833a: 0052         	lsls	r2, r2, #0x1
  40833c: da00         	bge	0x408340 <Tracer::checkCollision()+0x2b4> @ imm = #0x0
  40833e: ffff b510    	vsli.32	d27, d0, #0x1f
