// PlasmaEnergy: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlasmaEnergy.cpp

// ==== PlasmaEnergy::PlasmaEnergy
//      file offset 0x39457c (= ELF address; Ghidra 0x3a457c), 392 bytes, Thumb-2
  39457c: b530         	push	{r4, r5, lr}
  39457e: b085         	sub	sp, #0x14
  394580: 9001         	str	r0, [sp, #0x4]
  394582: 4c5a         	ldr	r4, [pc, #0x168]        @ 0x3946ec <PlasmaEnergy::PlasmaEnergy()+0x170>
  394584: 447c         	add	r4, pc
  394586: 9b01         	ldr	r3, [sp, #0x4]
  394588: 4618         	mov	r0, r3
  39458a: f1fb f855    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1fb0aa
  39458e: 9b01         	ldr	r3, [sp, #0x4]
  394590: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x3946f0 <PlasmaEnergy::PlasmaEnergy()+0x174>
  394592: 58a2         	ldr	r2, [r4, r2]
  394594: 3208         	adds	r2, #0x8
  394596: 601a         	str	r2, [r3]
  394598: 9b01         	ldr	r3, [sp, #0x4]
  39459a: 33fc         	adds	r3, #0xfc
  39459c: 2401         	movs	r4, #0x1
  39459e: 461d         	mov	r5, r3
  3945a0: e004         	b	0x3945ac <PlasmaEnergy::PlasmaEnergy()+0x30> @ imm = #0x8
  3945a2: 4628         	mov	r0, r5
  3945a4: f1fe fe7e    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x1fecfc
  3945a8: 3510         	adds	r5, #0x10
  3945aa: 3c01         	subs	r4, #0x1
  3945ac: f1b4 3fff    	cmp.w	r4, #0xffffffff
  3945b0: d1f7         	bne	0x3945a2 <PlasmaEnergy::PlasmaEnergy()+0x26> @ imm = #-0x12
  3945b2: 9b01         	ldr	r3, [sp, #0x4]
  3945b4: f503 7390    	add.w	r3, r3, #0x120
  3945b8: 4618         	mov	r0, r3
  3945ba: f020 f5f9    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x420bf2
  3945be: 9b01         	ldr	r3, [sp, #0x4]
  3945c0: 4618         	mov	r0, r3
  3945c2: 2100         	movs	r1, #0x0
  3945c4: f1fb fc64    	bl	0x58fe90 <cocos2d::CCNode::setVisible(bool)> @ imm = #0x1fb8c8
  3945c8: 9b01         	ldr	r3, [sp, #0x4]
  3945ca: f103 04fc    	add.w	r4, r3, #0xfc
  3945ce: 4b49         	ldr	r3, [pc, #0x124]        @ 0x3946f4 <PlasmaEnergy::PlasmaEnergy()+0x178>
  3945d0: 447b         	add	r3, pc
  3945d2: 4618         	mov	r0, r3
  3945d4: f243 fe96    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x243d2c
  3945d8: 4603         	mov	r3, r0
  3945da: 4618         	mov	r0, r3
  3945dc: f748 fb7e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb7904
  3945e0: 4603         	mov	r3, r0
  3945e2: 4620         	mov	r0, r4
  3945e4: 4619         	mov	r1, r3
  3945e6: f1fe feb5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x1fed6a
  3945ea: 9b01         	ldr	r3, [sp, #0x4]
  3945ec: f503 7486    	add.w	r4, r3, #0x10c
  3945f0: 4b41         	ldr	r3, [pc, #0x104]        @ 0x3946f8 <PlasmaEnergy::PlasmaEnergy()+0x17c>
  3945f2: 447b         	add	r3, pc
  3945f4: 4618         	mov	r0, r3
  3945f6: f243 fe85    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x243d0a
  3945fa: 4603         	mov	r3, r0
  3945fc: 4618         	mov	r0, r3
  3945fe: f748 fb6d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb7926
  394602: 4603         	mov	r3, r0
  394604: 4620         	mov	r0, r4
  394606: 4619         	mov	r1, r3
  394608: f1fe fea4    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x1fed48
  39460c: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x3946fc <PlasmaEnergy::PlasmaEnergy()+0x180>
  39460e: 447b         	add	r3, pc
  394610: 4618         	mov	r0, r3
  394612: f243 fe77    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x243cee
  394616: 4602         	mov	r2, r0
  394618: 9b01         	ldr	r3, [sp, #0x4]
  39461a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  39461e: 9b01         	ldr	r3, [sp, #0x4]
  394620: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394624: 4618         	mov	r0, r3
  394626: f203 fc5f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2038be
  39462a: 9a01         	ldr	r2, [sp, #0x4]
  39462c: 9b01         	ldr	r3, [sp, #0x4]
  39462e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394632: 4610         	mov	r0, r2
  394634: 4619         	mov	r1, r3
  394636: f1fb ff59    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x1fbeb2
  39463a: 9b01         	ldr	r3, [sp, #0x4]
  39463c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394640: 681b         	ldr	r3, [r3]
  394642: 3390         	adds	r3, #0x90
  394644: 681b         	ldr	r3, [r3]
  394646: 9a01         	ldr	r2, [sp, #0x4]
  394648: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  39464c: 4610         	mov	r0, r2
  39464e: 2100         	movs	r1, #0x0
  394650: 4798         	blx	r3
  394652: 9b01         	ldr	r3, [sp, #0x4]
  394654: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394658: 681b         	ldr	r3, [r3]
  39465a: 334c         	adds	r3, #0x4c
  39465c: 681c         	ldr	r4, [r3]
  39465e: 9b01         	ldr	r3, [sp, #0x4]
  394660: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  394664: ab02         	add	r3, sp, #0x8
  394666: 4618         	mov	r0, r3
  394668: f04f 0100    	mov.w	r1, #0x0
  39466c: f04f 0200    	mov.w	r2, #0x0
  394670: f2cc 1280    	movt	r2, #0xc180
  394674: f1fe fb3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fe678
  394678: ab02         	add	r3, sp, #0x8
  39467a: 4628         	mov	r0, r5
  39467c: 4619         	mov	r1, r3
  39467e: 47a0         	blx	r4
  394680: 9b01         	ldr	r3, [sp, #0x4]
  394682: f04f 0200    	mov.w	r2, #0x0
  394686: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  39468a: 9b01         	ldr	r3, [sp, #0x4]
  39468c: f04f 0200    	mov.w	r2, #0x0
  394690: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  394694: 9b01         	ldr	r3, [sp, #0x4]
  394696: f04f 0200    	mov.w	r2, #0x0
  39469a: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  39469e: 9b01         	ldr	r3, [sp, #0x4]
  3946a0: f04f 0200    	mov.w	r2, #0x0
  3946a4: f2c4 1220    	movt	r2, #0x4120
  3946a8: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3946ac: 9b01         	ldr	r3, [sp, #0x4]
  3946ae: 2200         	movs	r2, #0x0
  3946b0: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3946b4: 9b01         	ldr	r3, [sp, #0x4]
  3946b6: f503 7390    	add.w	r3, r3, #0x120
  3946ba: 4618         	mov	r0, r3
  3946bc: 4b10         	ldr	r3, [pc, #0x40]         @ 0x394700 <PlasmaEnergy::PlasmaEnergy()+0x184>
  3946be: 447b         	add	r3, pc
  3946c0: 4619         	mov	r1, r3
  3946c2: f021 f3d5    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4217aa
  3946c6: 9b01         	ldr	r3, [sp, #0x4]
  3946c8: e00c         	b	0x3946e4 <PlasmaEnergy::PlasmaEnergy()+0x168> @ imm = #0x18
  3946ca: 9b01         	ldr	r3, [sp, #0x4]
  3946cc: f503 7390    	add.w	r3, r3, #0x120
  3946d0: 4618         	mov	r0, r3
  3946d2: f021 f11f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42123e
  3946d6: e7ff         	b	0x3946d8 <PlasmaEnergy::PlasmaEnergy()+0x15c> @ imm = #-0x2
  3946d8: 9b01         	ldr	r3, [sp, #0x4]
  3946da: 4618         	mov	r0, r3
  3946dc: f1fb f8b2    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1fb164
  3946e0: f3f3 fce4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f39c8
  3946e4: 4618         	mov	r0, r3
  3946e6: b005         	add	sp, #0x14
  3946e8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3946e9); words below are literal-pool data ---
  3946ea: bf00         	nop
  3946ec: e484         	b	0x393ff8 <PlasmaBall::updateStep(float)+0xe90> @ imm = #-0x6f8
  3946ee: 0059         	lsls	r1, r3, #0x1
  3946f0: dd1c         	ble	0x39472c <PlasmaEnergy::~PlasmaEnergy()+0x28> @ imm = #0x38
  3946f2: ffff d3ac    	<unknown>
  3946f6: 0043         	lsls	r3, r0, #0x1
  3946f8: d396         	blo	0x394628 <PlasmaEnergy::PlasmaEnergy()+0xac> @ imm = #-0xd4
  3946fa: 0043         	lsls	r3, r0, #0x1
  3946fc: d36e         	blo	0x3947dc <PlasmaEnergy::reset(std::string)+0x38> @ imm = #0xdc
  3946fe: 0043         	lsls	r3, r0, #0x1
  394700: d2d6         	bhs	0x3946b0 <PlasmaEnergy::PlasmaEnergy()+0x134> @ imm = #-0x54
  394702: 0043         	lsls	r3, r0, #0x1

// ==== PlasmaEnergy::~PlasmaEnergy
//      file offset 0x394704 (= ELF address; Ghidra 0x3a4704), 92 bytes, Thumb-2
  394704: b500         	push	{lr}
  394706: b083         	sub	sp, #0xc
  394708: 9001         	str	r0, [sp, #0x4]
  39470a: 4913         	ldr	r1, [pc, #0x4c]         @ 0x394758 <PlasmaEnergy::~PlasmaEnergy()+0x54>
  39470c: 4479         	add	r1, pc
  39470e: 9b01         	ldr	r3, [sp, #0x4]
  394710: 4a12         	ldr	r2, [pc, #0x48]         @ 0x39475c <PlasmaEnergy::~PlasmaEnergy()+0x58>
  394712: 588a         	ldr	r2, [r1, r2]
  394714: 3208         	adds	r2, #0x8
  394716: 601a         	str	r2, [r3]
  394718: 9b01         	ldr	r3, [sp, #0x4]
  39471a: 4618         	mov	r0, r3
  39471c: f1fb ff86    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1fbf0c
  394720: 9b01         	ldr	r3, [sp, #0x4]
  394722: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394726: 4618         	mov	r0, r3
  394728: f203 fbc6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20378c
  39472c: 9b01         	ldr	r3, [sp, #0x4]
  39472e: f503 7390    	add.w	r3, r3, #0x120
  394732: 4618         	mov	r0, r3
  394734: f021 f0ee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4211dc
  394738: 9b01         	ldr	r3, [sp, #0x4]
  39473a: 4618         	mov	r0, r3
  39473c: f1fb f882    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1fb104
  394740: 2300         	movs	r3, #0x0
  394742: 2b00         	cmp	r3, #0x0
  394744: d002         	beq	0x39474c <PlasmaEnergy::~PlasmaEnergy()+0x48> @ imm = #0x4
  394746: 9801         	ldr	r0, [sp, #0x4]
  394748: f3f3 fcac    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f3958
  39474c: 9b01         	ldr	r3, [sp, #0x4]
  39474e: 4618         	mov	r0, r3
  394750: b003         	add	sp, #0xc
  394752: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x394755); words below are literal-pool data ---
  394756: bf00         	nop
  394758: e2fc         	b	0x394d54 <PlasmaEnergy::updateStep(float)+0x4fc> @ imm = #0x5f8
  39475a: 0059         	lsls	r1, r3, #0x1
  39475c: dd1c         	ble	0x394798 <PlasmaEnergy::init()+0x1c> @ imm = #0x38
  39475e: ffff b500    	<unknown>

// ==== PlasmaEnergy::~PlasmaEnergy
//      file offset 0x394760 (= ELF address; Ghidra 0x3a4760), 28 bytes, Thumb-2
  394760: b500         	push	{lr}
  394762: b083         	sub	sp, #0xc
  394764: 9001         	str	r0, [sp, #0x4]
  394766: 9801         	ldr	r0, [sp, #0x4]
  394768: f7ff ffcc    	bl	0x394704 <PlasmaEnergy::~PlasmaEnergy()> @ imm = #-0x68
  39476c: 9801         	ldr	r0, [sp, #0x4]
  39476e: f3f3 fc99    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f3932
  394772: 9b01         	ldr	r3, [sp, #0x4]
  394774: 4618         	mov	r0, r3
  394776: b003         	add	sp, #0xc
  394778: f85d fb04    	ldr	pc, [sp], #4

// ==== PlasmaEnergy::init
//      file offset 0x39477c (= ELF address; Ghidra 0x3a477c), 40 bytes, Thumb-2
  39477c: b500         	push	{lr}
  39477e: b083         	sub	sp, #0xc
  394780: 9001         	str	r0, [sp, #0x4]
  394782: 9b01         	ldr	r3, [sp, #0x4]
  394784: 4618         	mov	r0, r3
  394786: f1fb f961    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1fb2c2
  39478a: 4603         	mov	r3, r0
  39478c: f083 0301    	eor	r3, r3, #0x1
  394790: b2db         	uxtb	r3, r3
  394792: 2b00         	cmp	r3, #0x0
  394794: d001         	beq	0x39479a <PlasmaEnergy::init()+0x1e> @ imm = #0x2
  394796: 2300         	movs	r3, #0x0
  394798: e000         	b	0x39479c <PlasmaEnergy::init()+0x20> @ imm = #0x0
  39479a: 2301         	movs	r3, #0x1
  39479c: 4618         	mov	r0, r3
  39479e: b003         	add	sp, #0xc
  3947a0: f85d fb04    	ldr	pc, [sp], #4

// ==== PlasmaEnergy::reset
//      file offset 0x3947a4 (= ELF address; Ghidra 0x3a47a4), 176 bytes, Thumb-2
  3947a4: b530         	push	{r4, r5, lr}
  3947a6: b083         	sub	sp, #0xc
  3947a8: 9001         	str	r0, [sp, #0x4]
  3947aa: 9100         	str	r1, [sp]
  3947ac: 9b01         	ldr	r3, [sp, #0x4]
  3947ae: 2201         	movs	r2, #0x1
  3947b0: f883 20e8    	strb.w	r2, [r3, #0xe8]
  3947b4: 9b01         	ldr	r3, [sp, #0x4]
  3947b6: f04f 0200    	mov.w	r2, #0x0
  3947ba: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3947be: 9b01         	ldr	r3, [sp, #0x4]
  3947c0: f04f 0200    	mov.w	r2, #0x0
  3947c4: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3947c8: 9b01         	ldr	r3, [sp, #0x4]
  3947ca: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3947ce: 681b         	ldr	r3, [r3]
  3947d0: 3340         	adds	r3, #0x40
  3947d2: 681b         	ldr	r3, [r3]
  3947d4: 9a01         	ldr	r2, [sp, #0x4]
  3947d6: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3947da: 4610         	mov	r0, r2
  3947dc: f04f 517c    	mov.w	r1, #0x3f000000
  3947e0: 4798         	blx	r3
  3947e2: 9b01         	ldr	r3, [sp, #0x4]
  3947e4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3947e8: 681b         	ldr	r3, [r3]
  3947ea: 3390         	adds	r3, #0x90
  3947ec: 681b         	ldr	r3, [r3]
  3947ee: 9a01         	ldr	r2, [sp, #0x4]
  3947f0: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3947f4: 4610         	mov	r0, r2
  3947f6: 2101         	movs	r1, #0x1
  3947f8: 4798         	blx	r3
  3947fa: 9b01         	ldr	r3, [sp, #0x4]
  3947fc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394800: 681b         	ldr	r3, [r3]
  394802: 3398         	adds	r3, #0x98
  394804: 681c         	ldr	r4, [r3]
  394806: 9b01         	ldr	r3, [sp, #0x4]
  394808: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  39480c: f7fe ffc2    	bl	0x393794 <PlasmaBall::updateStep(float)+0x62c> @ imm = #-0x107c
  394810: 4603         	mov	r3, r0
  394812: ee07 3a90    	vmov	s15, r3
  394816: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  39481a: eddf 7a0c    	vldr	s15, [pc, #48]          @ 0x39484c <PlasmaEnergy::reset(std::string)+0xa8>
  39481e: ee87 7a27    	vdiv.f32	s14, s14, s15
  394822: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  394826: ee37 7a67    	vsub.f32	s14, s14, s15
  39482a: eddf 7a09    	vldr	s15, [pc, #36]          @ 0x394850 <PlasmaEnergy::reset(std::string)+0xac>
  39482e: ee67 7a27    	vmul.f32	s15, s14, s15
  394832: 4628         	mov	r0, r5
  394834: ee17 1a90    	vmov	r1, s15
  394838: 47a0         	blx	r4
  39483a: 9b01         	ldr	r3, [sp, #0x4]
  39483c: f503 7390    	add.w	r3, r3, #0x120
  394840: 4618         	mov	r0, r3
  394842: 9900         	ldr	r1, [sp]
  394844: f021 f6b6    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x421d6c
  394848: b003         	add	sp, #0xc
  39484a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39484b); words below are literal-pool data ---
  39484c: 0000         	movs	r0, r0
  39484e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x394a50 <PlasmaEnergy::updateStep(float)+0x1f8>
  394850: 0000         	movs	r0, r0
  394852: 4334         	orrs	r4, r6

// ==== PlasmaEnergy::updateStep
//      file offset 0x394858 (= ELF address; Ghidra 0x3a4858), 960 bytes, Thumb-2
  394858: b570         	push	{r4, r5, r6, lr}
  39485a: ed2d 8b02    	vpush	{d8}
  39485e: b094         	sub	sp, #0x50
  394860: 9005         	str	r0, [sp, #0x14]
  394862: 9104         	str	r1, [sp, #0x10]
  394864: 4ce8         	ldr	r4, [pc, #0x3a0]        @ 0x394c08 <PlasmaEnergy::updateStep(float)+0x3b0>
  394866: 447c         	add	r4, pc
  394868: 9b05         	ldr	r3, [sp, #0x14]
  39486a: ed93 7a3b    	vldr	s14, [r3, #236]
  39486e: eddd 7a04    	vldr	s15, [sp, #16]
  394872: ee77 7a27    	vadd.f32	s15, s14, s15
  394876: 9b05         	ldr	r3, [sp, #0x14]
  394878: edc3 7a3b    	vstr	s15, [r3, #236]
  39487c: 9b05         	ldr	r3, [sp, #0x14]
  39487e: 681b         	ldr	r3, [r3]
  394880: 3390         	adds	r3, #0x90
  394882: 681b         	ldr	r3, [r3]
  394884: 9a05         	ldr	r2, [sp, #0x14]
  394886: 4610         	mov	r0, r2
  394888: 2100         	movs	r1, #0x0
  39488a: 4798         	blx	r3
  39488c: 9b05         	ldr	r3, [sp, #0x14]
  39488e: ed93 7a3b    	vldr	s14, [r3, #236]
  394892: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  394896: eeb4 7ae7    	vcmpe.f32	s14, s15
  39489a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39489e: dd04         	ble	0x3948aa <PlasmaEnergy::updateStep(float)+0x52> @ imm = #0x8
  3948a0: 9b05         	ldr	r3, [sp, #0x14]
  3948a2: 2200         	movs	r2, #0x0
  3948a4: f883 20e8    	strb.w	r2, [r3, #0xe8]
  3948a8: e199         	b	0x394bde <PlasmaEnergy::updateStep(float)+0x386> @ imm = #0x332
  3948aa: 2300         	movs	r3, #0x0
  3948ac: 9307         	str	r3, [sp, #0x1c]
  3948ae: 9b05         	ldr	r3, [sp, #0x14]
  3948b0: f503 7590    	add.w	r5, r3, #0x120
  3948b4: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x394c0c <PlasmaEnergy::updateStep(float)+0x3b4>
  3948b6: 58e3         	ldr	r3, [r4, r3]
  3948b8: 681b         	ldr	r3, [r3]
  3948ba: 681b         	ldr	r3, [r3]
  3948bc: f503 73e0    	add.w	r3, r3, #0x1c0
  3948c0: 681b         	ldr	r3, [r3]
  3948c2: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x394c0c <PlasmaEnergy::updateStep(float)+0x3b4>
  3948c4: 58a2         	ldr	r2, [r4, r2]
  3948c6: 6812         	ldr	r2, [r2]
  3948c8: a910         	add	r1, sp, #0x40
  3948ca: 4608         	mov	r0, r1
  3948cc: 4611         	mov	r1, r2
  3948ce: 4798         	blx	r3
  3948d0: ab10         	add	r3, sp, #0x40
  3948d2: 4628         	mov	r0, r5
  3948d4: 4619         	mov	r1, r3
  3948d6: f020 f6d1    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x420da2
  3948da: 4603         	mov	r3, r0
  3948dc: 2b00         	cmp	r3, #0x0
  3948de: bf14         	ite	ne
  3948e0: 2300         	movne	r3, #0x0
  3948e2: 2301         	moveq	r3, #0x1
  3948e4: b2dd         	uxtb	r5, r3
  3948e6: ab10         	add	r3, sp, #0x40
  3948e8: 4618         	mov	r0, r3
  3948ea: f021 f013    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x421026
  3948ee: 2d00         	cmp	r5, #0x0
  3948f0: d004         	beq	0x3948fc <PlasmaEnergy::updateStep(float)+0xa4> @ imm = #0x8
  3948f2: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x394c0c <PlasmaEnergy::updateStep(float)+0x3b4>
  3948f4: 58e3         	ldr	r3, [r4, r3]
  3948f6: 681b         	ldr	r3, [r3]
  3948f8: 9307         	str	r3, [sp, #0x1c]
  3948fa: e00b         	b	0x394914 <PlasmaEnergy::updateStep(float)+0xbc> @ imm = #0x16
  3948fc: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x394c10 <PlasmaEnergy::updateStep(float)+0x3b8>
  3948fe: 58e3         	ldr	r3, [r4, r3]
  394900: 681a         	ldr	r2, [r3]
  394902: 9b05         	ldr	r3, [sp, #0x14]
  394904: f503 7390    	add.w	r3, r3, #0x120
  394908: 4610         	mov	r0, r2
  39490a: 4619         	mov	r1, r3
  39490c: f1ff faf0    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1ff5e0
  394910: 4603         	mov	r3, r0
  394912: 9307         	str	r3, [sp, #0x1c]
  394914: 9b07         	ldr	r3, [sp, #0x1c]
  394916: 2b00         	cmp	r3, #0x0
  394918: d00e         	beq	0x394938 <PlasmaEnergy::updateStep(float)+0xe0> @ imm = #0x1c
  39491a: 9b07         	ldr	r3, [sp, #0x1c]
  39491c: 681b         	ldr	r3, [r3]
  39491e: f503 7319    	add.w	r3, r3, #0x264
  394922: 681b         	ldr	r3, [r3]
  394924: 9807         	ldr	r0, [sp, #0x1c]
  394926: 4798         	blx	r3
  394928: 4603         	mov	r3, r0
  39492a: f083 0301    	eor	r3, r3, #0x1
  39492e: b2db         	uxtb	r3, r3
  394930: 2b00         	cmp	r3, #0x0
  394932: d001         	beq	0x394938 <PlasmaEnergy::updateStep(float)+0xe0> @ imm = #0x2
  394934: 2301         	movs	r3, #0x1
  394936: e000         	b	0x39493a <PlasmaEnergy::updateStep(float)+0xe2> @ imm = #0x0
  394938: 2300         	movs	r3, #0x0
  39493a: 2b00         	cmp	r3, #0x0
  39493c: d03f         	beq	0x3949be <PlasmaEnergy::updateStep(float)+0x166> @ imm = #0x7e
  39493e: 9b05         	ldr	r3, [sp, #0x14]
  394940: 681b         	ldr	r3, [r3]
  394942: 334c         	adds	r3, #0x4c
  394944: 681d         	ldr	r5, [r3]
  394946: 9e05         	ldr	r6, [sp, #0x14]
  394948: 9b07         	ldr	r3, [sp, #0x1c]
  39494a: 681b         	ldr	r3, [r3]
  39494c: f503 73d6    	add.w	r3, r3, #0x1ac
  394950: 681b         	ldr	r3, [r3]
  394952: aa0c         	add	r2, sp, #0x30
  394954: 4610         	mov	r0, r2
  394956: 9907         	ldr	r1, [sp, #0x1c]
  394958: 4798         	blx	r3
  39495a: ed9d 7b0c    	vldr	d7, [sp, #48]
  39495e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  394962: 9b07         	ldr	r3, [sp, #0x1c]
  394964: 681b         	ldr	r3, [r3]
  394966: f503 73d6    	add.w	r3, r3, #0x1ac
  39496a: 681b         	ldr	r3, [r3]
  39496c: aa10         	add	r2, sp, #0x40
  39496e: 4610         	mov	r0, r2
  394970: 9907         	ldr	r1, [sp, #0x1c]
  394972: 4798         	blx	r3
  394974: ed9d 7b12    	vldr	d7, [sp, #72]
  394978: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39497c: ab08         	add	r3, sp, #0x20
  39497e: 4618         	mov	r0, r3
  394980: ee18 1a10    	vmov	r1, s16
  394984: ee17 2a90    	vmov	r2, s15
  394988: f1fe f9b2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fe364
  39498c: ab08         	add	r3, sp, #0x20
  39498e: 4630         	mov	r0, r6
  394990: 4619         	mov	r1, r3
  394992: 47a8         	blx	r5
  394994: 9b05         	ldr	r3, [sp, #0x14]
  394996: 681b         	ldr	r3, [r3]
  394998: 3398         	adds	r3, #0x98
  39499a: 681d         	ldr	r5, [r3]
  39499c: 9e05         	ldr	r6, [sp, #0x14]
  39499e: 9b07         	ldr	r3, [sp, #0x1c]
  3949a0: 681b         	ldr	r3, [r3]
  3949a2: f503 73ec    	add.w	r3, r3, #0x1d8
  3949a6: 681b         	ldr	r3, [r3]
  3949a8: 9807         	ldr	r0, [sp, #0x1c]
  3949aa: 4798         	blx	r3
  3949ac: 4603         	mov	r3, r0
  3949ae: 4618         	mov	r0, r3
  3949b0: f05f fa34    	bl	0x3f3e1c <SoldierView::getBodyRotation()> @ imm = #0x5f468
  3949b4: 4603         	mov	r3, r0
  3949b6: 4630         	mov	r0, r6
  3949b8: 4619         	mov	r1, r3
  3949ba: 47a8         	blx	r5
  3949bc: e003         	b	0x3949c6 <PlasmaEnergy::updateStep(float)+0x16e> @ imm = #0x6
  3949be: 9b05         	ldr	r3, [sp, #0x14]
  3949c0: 2200         	movs	r2, #0x0
  3949c2: f883 20e8    	strb.w	r2, [r3, #0xe8]
  3949c6: 9b05         	ldr	r3, [sp, #0x14]
  3949c8: ed93 7a3d    	vldr	s14, [r3, #244]
  3949cc: eddd 7a04    	vldr	s15, [sp, #16]
  3949d0: ee77 7a27    	vadd.f32	s15, s14, s15
  3949d4: 9b05         	ldr	r3, [sp, #0x14]
  3949d6: edc3 7a3d    	vstr	s15, [r3, #244]
  3949da: 9b05         	ldr	r3, [sp, #0x14]
  3949dc: ed93 7a3d    	vldr	s14, [r3, #244]
  3949e0: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  3949e4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3949e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3949ec: dd24         	ble	0x394a38 <PlasmaEnergy::updateStep(float)+0x1e0> @ imm = #0x48
  3949ee: 9b05         	ldr	r3, [sp, #0x14]
  3949f0: f04f 0200    	mov.w	r2, #0x0
  3949f4: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3949f8: 9b05         	ldr	r3, [sp, #0x14]
  3949fa: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3949fe: 681b         	ldr	r3, [r3]
  394a00: 3398         	adds	r3, #0x98
  394a02: 681d         	ldr	r5, [r3]
  394a04: 9b05         	ldr	r3, [sp, #0x14]
  394a06: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  394a0a: f7fe fec3    	bl	0x393794 <PlasmaBall::updateStep(float)+0x62c> @ imm = #-0x127a
  394a0e: 4603         	mov	r3, r0
  394a10: ee07 3a90    	vmov	s15, r3
  394a14: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  394a18: eddf 7a79    	vldr	s15, [pc, #484]         @ 0x394c00 <PlasmaEnergy::updateStep(float)+0x3a8>
  394a1c: ee87 7a27    	vdiv.f32	s14, s14, s15
  394a20: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  394a24: ee37 7a67    	vsub.f32	s14, s14, s15
  394a28: eddf 7a76    	vldr	s15, [pc, #472]         @ 0x394c04 <PlasmaEnergy::updateStep(float)+0x3ac>
  394a2c: ee67 7a27    	vmul.f32	s15, s14, s15
  394a30: 4630         	mov	r0, r6
  394a32: ee17 1a90    	vmov	r1, s15
  394a36: 47a8         	blx	r5
  394a38: 9b05         	ldr	r3, [sp, #0x14]
  394a3a: ed93 7a3c    	vldr	s14, [r3, #240]
  394a3e: eddd 7a04    	vldr	s15, [sp, #16]
  394a42: ee77 7a27    	vadd.f32	s15, s14, s15
  394a46: 9b05         	ldr	r3, [sp, #0x14]
  394a48: edc3 7a3c    	vstr	s15, [r3, #240]
  394a4c: 9b05         	ldr	r3, [sp, #0x14]
  394a4e: edd3 7a3c    	vldr	s15, [r3, #240]
  394a52: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  394a56: ed9f 7b64    	vldr	d7, [pc, #400]          @ 0x394be8 <PlasmaEnergy::updateStep(float)+0x390>
  394a5a: eeb4 6bc7    	vcmpe.f64	d6, d7
  394a5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  394a62: dd29         	ble	0x394ab8 <PlasmaEnergy::updateStep(float)+0x260> @ imm = #0x52
  394a64: 9b05         	ldr	r3, [sp, #0x14]
  394a66: f04f 0200    	mov.w	r2, #0x0
  394a6a: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  394a6e: 9b05         	ldr	r3, [sp, #0x14]
  394a70: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  394a74: 1c5a         	adds	r2, r3, #0x1
  394a76: 9b05         	ldr	r3, [sp, #0x14]
  394a78: f8c3 211c    	str.w	r2, [r3, #0x11c]
  394a7c: 9b05         	ldr	r3, [sp, #0x14]
  394a7e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  394a82: 2b01         	cmp	r3, #0x1
  394a84: dd03         	ble	0x394a8e <PlasmaEnergy::updateStep(float)+0x236> @ imm = #0x6
  394a86: 9b05         	ldr	r3, [sp, #0x14]
  394a88: 2200         	movs	r2, #0x0
  394a8a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  394a8e: 9b05         	ldr	r3, [sp, #0x14]
  394a90: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  394a94: 681b         	ldr	r3, [r3]
  394a96: f503 7302    	add.w	r3, r3, #0x208
  394a9a: 681b         	ldr	r3, [r3]
  394a9c: 9a05         	ldr	r2, [sp, #0x14]
  394a9e: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  394aa2: 9a05         	ldr	r2, [sp, #0x14]
  394aa4: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  394aa8: 0112         	lsls	r2, r2, #0x4
  394aaa: 32f8         	adds	r2, #0xf8
  394aac: 9805         	ldr	r0, [sp, #0x14]
  394aae: 4402         	add	r2, r0
  394ab0: 3204         	adds	r2, #0x4
  394ab2: 4608         	mov	r0, r1
  394ab4: 4611         	mov	r1, r2
  394ab6: 4798         	blx	r3
  394ab8: 9b05         	ldr	r3, [sp, #0x14]
  394aba: ed93 7a3e    	vldr	s14, [r3, #248]
  394abe: eddd 7a04    	vldr	s15, [sp, #16]
  394ac2: ee77 7a27    	vadd.f32	s15, s14, s15
  394ac6: 9b05         	ldr	r3, [sp, #0x14]
  394ac8: edc3 7a3e    	vstr	s15, [r3, #248]
  394acc: 9b05         	ldr	r3, [sp, #0x14]
  394ace: edd3 7a3e    	vldr	s15, [r3, #248]
  394ad2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  394ad6: ed9f 7b46    	vldr	d7, [pc, #280]          @ 0x394bf0 <PlasmaEnergy::updateStep(float)+0x398>
  394ada: eeb4 6bc7    	vcmpe.f64	d6, d7
  394ade: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  394ae2: dd39         	ble	0x394b58 <PlasmaEnergy::updateStep(float)+0x300> @ imm = #0x72
  394ae4: 9b05         	ldr	r3, [sp, #0x14]
  394ae6: f04f 0200    	mov.w	r2, #0x0
  394aea: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  394aee: 4b49         	ldr	r3, [pc, #0x124]        @ 0x394c14 <PlasmaEnergy::updateStep(float)+0x3bc>
  394af0: 58e3         	ldr	r3, [r4, r3]
  394af2: 681c         	ldr	r4, [r3]
  394af4: 9b05         	ldr	r3, [sp, #0x14]
  394af6: 681b         	ldr	r3, [r3]
  394af8: 3350         	adds	r3, #0x50
  394afa: 681b         	ldr	r3, [r3]
  394afc: 9a05         	ldr	r2, [sp, #0x14]
  394afe: 4610         	mov	r0, r2
  394b00: 4798         	blx	r3
  394b02: 4603         	mov	r3, r0
  394b04: edd3 7a00    	vldr	s15, [r3]
  394b08: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  394b0c: 9b05         	ldr	r3, [sp, #0x14]
  394b0e: 681b         	ldr	r3, [r3]
  394b10: 3350         	adds	r3, #0x50
  394b12: 681b         	ldr	r3, [r3]
  394b14: 9a05         	ldr	r2, [sp, #0x14]
  394b16: 4610         	mov	r0, r2
  394b18: 4798         	blx	r3
  394b1a: 4603         	mov	r3, r0
  394b1c: edd3 7a01    	vldr	s15, [r3, #4]
  394b20: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  394b24: ab08         	add	r3, sp, #0x20
  394b26: 4618         	mov	r0, r3
  394b28: eeb0 0b48    	vmov.f64	d0, d8
  394b2c: eeb0 1b47    	vmov.f64	d1, d7
  394b30: f7fe fe64    	bl	0x3937fc <PlasmaBall::updateStep(float)+0x694> @ imm = #-0x1338
  394b34: f04f 537a    	mov.w	r3, #0x3e800000
  394b38: 9302         	str	r3, [sp, #0x8]
  394b3a: f04f 537e    	mov.w	r3, #0x3f800000
  394b3e: 9303         	str	r3, [sp, #0xc]
  394b40: 466b         	mov	r3, sp
  394b42: aa0a         	add	r2, sp, #0x28
  394b44: e892 0003    	ldm.w	r2, {r0, r1}
  394b48: e883 0003    	stm.w	r3, {r0, r1}
  394b4c: ab08         	add	r3, sp, #0x20
  394b4e: cb0c         	ldm	r3, {r2, r3}
  394b50: 4620         	mov	r0, r4
  394b52: 2130         	movs	r1, #0x30
  394b54: f063 fa76    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x634ec
  394b58: 9b05         	ldr	r3, [sp, #0x14]
  394b5a: 681b         	ldr	r3, [r3]
  394b5c: 3350         	adds	r3, #0x50
  394b5e: 681b         	ldr	r3, [r3]
  394b60: 9a05         	ldr	r2, [sp, #0x14]
  394b62: 4610         	mov	r0, r2
  394b64: 4798         	blx	r3
  394b66: 4603         	mov	r3, r0
  394b68: edd3 7a00    	vldr	s15, [r3]
  394b6c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  394b70: 9b05         	ldr	r3, [sp, #0x14]
  394b72: 681b         	ldr	r3, [r3]
  394b74: 3350         	adds	r3, #0x50
  394b76: 681b         	ldr	r3, [r3]
  394b78: 9a05         	ldr	r2, [sp, #0x14]
  394b7a: 4610         	mov	r0, r2
  394b7c: 4798         	blx	r3
  394b7e: 4603         	mov	r3, r0
  394b80: edd3 7a01    	vldr	s15, [r3, #4]
  394b84: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  394b88: ab0c         	add	r3, sp, #0x30
  394b8a: 4618         	mov	r0, r3
  394b8c: eeb0 0b48    	vmov.f64	d0, d8
  394b90: eeb0 1b47    	vmov.f64	d1, d7
  394b94: f7fe fe32    	bl	0x3937fc <PlasmaBall::updateStep(float)+0x694> @ imm = #-0x139c
  394b98: ab10         	add	r3, sp, #0x40
  394b9a: 4618         	mov	r0, r3
  394b9c: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x394bf8 <PlasmaEnergy::updateStep(float)+0x3a0>
  394ba0: ed9f 1b15    	vldr	d1, [pc, #84]           @ 0x394bf8 <PlasmaEnergy::updateStep(float)+0x3a0>
  394ba4: f7fe fe2a    	bl	0x3937fc <PlasmaBall::updateStep(float)+0x694> @ imm = #-0x13ac
  394ba8: 466c         	mov	r4, sp
  394baa: ab10         	add	r3, sp, #0x40
  394bac: cb0f         	ldm	r3, {r0, r1, r2, r3}
  394bae: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  394bb2: ab0c         	add	r3, sp, #0x30
  394bb4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  394bb6: f7fe ffaf    	bl	0x393b18 <PlasmaBall::updateStep(float)+0x9b0> @ imm = #-0x10a2
  394bba: 4603         	mov	r3, r0
  394bbc: 2b00         	cmp	r3, #0x0
  394bbe: d00e         	beq	0x394bde <PlasmaEnergy::updateStep(float)+0x386> @ imm = #0x1c
  394bc0: 9b05         	ldr	r3, [sp, #0x14]
  394bc2: 681b         	ldr	r3, [r3]
  394bc4: 3390         	adds	r3, #0x90
  394bc6: 681b         	ldr	r3, [r3]
  394bc8: 9a05         	ldr	r2, [sp, #0x14]
  394bca: 4610         	mov	r0, r2
  394bcc: 2101         	movs	r1, #0x1
  394bce: 4798         	blx	r3
  394bd0: e006         	b	0x394be0 <PlasmaEnergy::updateStep(float)+0x388> @ imm = #0xc
  394bd2: ab10         	add	r3, sp, #0x40
  394bd4: 4618         	mov	r0, r3
  394bd6: f020 f69d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x420d3a
  394bda: f3f3 fa67    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f34ce
  394bde: bf00         	nop
  394be0: b014         	add	sp, #0x50
  394be2: ecbd 8b02    	vpop	{d8}
  394be6: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x394be7); words below are literal-pool data ---
  394be8: 999a         	ldr	r1, [sp, #0x268]
  394bea: 9999         	ldr	r1, [sp, #0x264]
  394bec: 9999         	ldr	r1, [sp, #0x264]
  394bee: 3fb9         	subs	r7, #0xb9
  394bf0: 3333         	adds	r3, #0x33
  394bf2: 3333         	adds	r3, #0x33
  394bf4: 3333         	adds	r3, #0x33
  394bf6: 3fd3         	subs	r7, #0xd3
  394bf8: 0000         	movs	r0, r0
  394bfa: 0000         	movs	r0, r0
  394bfc: 0000         	movs	r0, r0
  394bfe: 4059         	eors	r1, r3
  394c00: 0000         	movs	r0, r0
  394c02: 4e80         	ldr	r6, [pc, #0x200]        @ 0x394e04 <PlasmaEnergy::updateStep(float)+0x5ac>
  394c04: 0000         	movs	r0, r0
  394c06: 43b4         	bics	r4, r6
  394c08: e1a2         	b	0x394f50 <PlasmaEnergy::updateStep(float)+0x6f8> @ imm = #0x344
  394c0a: 0059         	lsls	r1, r3, #0x1
  394c0c: d784         	bvc	0x394b18 <PlasmaEnergy::updateStep(float)+0x2c0> @ imm = #-0xf8
  394c0e: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  394c12: ffff d730    	vqshl.u32	d29, d16, #0x1f
  394c16: ffff b510    	vsli.32	d27, d0, #0x1f
