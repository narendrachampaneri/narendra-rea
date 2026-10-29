// WeaponType: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../WeaponType.cpp

// ==== WeaponType::WeaponType
//      file offset 0x417898 (= ELF address; Ghidra 0x427898), 68 bytes, Thumb-2
  417898: b510         	push	{r4, lr}
  41789a: b082         	sub	sp, #0x8
  41789c: 9001         	str	r0, [sp, #0x4]
  41789e: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x4178d4 <WeaponType::WeaponType()+0x3c>
  4178a0: 447c         	add	r4, pc
  4178a2: 9b01         	ldr	r3, [sp, #0x4]
  4178a4: 4618         	mov	r0, r3
  4178a6: f180 fa61    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1804c2
  4178aa: 9b01         	ldr	r3, [sp, #0x4]
  4178ac: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x4178d8 <WeaponType::WeaponType()+0x40>
  4178ae: 58a2         	ldr	r2, [r4, r2]
  4178b0: 3208         	adds	r2, #0x8
  4178b2: 601a         	str	r2, [r3]
  4178b4: 9b01         	ldr	r3, [sp, #0x4]
  4178b6: 3314         	adds	r3, #0x14
  4178b8: 4618         	mov	r0, r3
  4178ba: f39d fc79    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x39d8f2
  4178be: 9b01         	ldr	r3, [sp, #0x4]
  4178c0: e005         	b	0x4178ce <WeaponType::WeaponType()+0x36> @ imm = #0xa
  4178c2: 9b01         	ldr	r3, [sp, #0x4]
  4178c4: 4618         	mov	r0, r3
  4178c6: f180 fa83    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x180506
  4178ca: f370 fbef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3707de
  4178ce: 4618         	mov	r0, r3
  4178d0: b002         	add	sp, #0x8
  4178d2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4178d3); words below are literal-pool data ---
  4178d4: b168         	cbz	r0, 0x4178f2 <WeaponType::~WeaponType()+0x16> @ imm = #0x1a
  4178d6: 0051         	lsls	r1, r2, #0x1
  4178d8: dfa4         	svc	#0xa4
  4178da: ffff b500    	<unknown>

// ==== WeaponType::~WeaponType
//      file offset 0x4178dc (= ELF address; Ghidra 0x4278dc), 68 bytes, Thumb-2
  4178dc: b500         	push	{lr}
  4178de: b083         	sub	sp, #0xc
  4178e0: 9001         	str	r0, [sp, #0x4]
  4178e2: 490d         	ldr	r1, [pc, #0x34]         @ 0x417918 <WeaponType::~WeaponType()+0x3c>
  4178e4: 4479         	add	r1, pc
  4178e6: 9b01         	ldr	r3, [sp, #0x4]
  4178e8: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x41791c <WeaponType::~WeaponType()+0x40>
  4178ea: 588a         	ldr	r2, [r1, r2]
  4178ec: 3208         	adds	r2, #0x8
  4178ee: 601a         	str	r2, [r3]
  4178f0: 9b01         	ldr	r3, [sp, #0x4]
  4178f2: 3314         	adds	r3, #0x14
  4178f4: 4618         	mov	r0, r3
  4178f6: f39e f80d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39e01a
  4178fa: 9b01         	ldr	r3, [sp, #0x4]
  4178fc: 4618         	mov	r0, r3
  4178fe: f180 fa67    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1804ce
  417902: 2300         	movs	r3, #0x0
  417904: 2b00         	cmp	r3, #0x0
  417906: d002         	beq	0x41790e <WeaponType::~WeaponType()+0x32> @ imm = #0x4
  417908: 9801         	ldr	r0, [sp, #0x4]
  41790a: f370 fbcb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370796
  41790e: 9b01         	ldr	r3, [sp, #0x4]
  417910: 4618         	mov	r0, r3
  417912: b003         	add	sp, #0xc
  417914: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x417917); words below are literal-pool data ---
  417918: b124         	cbz	r4, 0x417924 <WeaponType::~WeaponType()+0x4> @ imm = #0x8
  41791a: 0051         	lsls	r1, r2, #0x1
  41791c: dfa4         	svc	#0xa4
  41791e: ffff b500    	<unknown>

// ==== WeaponType::~WeaponType
//      file offset 0x417920 (= ELF address; Ghidra 0x427920), 28 bytes, Thumb-2
  417920: b500         	push	{lr}
  417922: b083         	sub	sp, #0xc
  417924: 9001         	str	r0, [sp, #0x4]
  417926: 9801         	ldr	r0, [sp, #0x4]
  417928: f7ff ffd8    	bl	0x4178dc <WeaponType::~WeaponType()> @ imm = #-0x50
  41792c: 9801         	ldr	r0, [sp, #0x4]
  41792e: f370 fbb9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370772
  417932: 9b01         	ldr	r3, [sp, #0x4]
  417934: 4618         	mov	r0, r3
  417936: b003         	add	sp, #0xc
  417938: f85d fb04    	ldr	pc, [sp], #4

// ==== WeaponType::initWithName
//      file offset 0x41793c (= ELF address; Ghidra 0x42793c), 72 bytes, Thumb-2
  41793c: b510         	push	{r4, lr}
  41793e: b084         	sub	sp, #0x10
  417940: 9001         	str	r0, [sp, #0x4]
  417942: 9100         	str	r1, [sp]
  417944: 201c         	movs	r0, #0x1c
  417946: f370 f80d    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37001a
  41794a: 4603         	mov	r3, r0
  41794c: 461c         	mov	r4, r3
  41794e: 4620         	mov	r0, r4
  417950: f7ff ffa2    	bl	0x417898 <WeaponType::WeaponType()> @ imm = #-0xbc
  417954: 9403         	str	r4, [sp, #0xc]
  417956: 9b03         	ldr	r3, [sp, #0xc]
  417958: 3314         	adds	r3, #0x14
  41795a: 4618         	mov	r0, r3
  41795c: 9901         	ldr	r1, [sp, #0x4]
  41795e: f39e fe29    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x39ec52
  417962: 9b03         	ldr	r3, [sp, #0xc]
  417964: 9a00         	ldr	r2, [sp]
  417966: 619a         	str	r2, [r3, #0x18]
  417968: 9b03         	ldr	r3, [sp, #0xc]
  41796a: 4618         	mov	r0, r3
  41796c: f180 fac6    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x18058c
  417970: 9b03         	ldr	r3, [sp, #0xc]
  417972: e004         	b	0x41797e <WeaponType::initWithName(std::string, ItemType)+0x42> @ imm = #0x8
  417974: 4620         	mov	r0, r4
  417976: f370 fb95    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37072a
  41797a: f370 fb97    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37072e
  41797e: 4618         	mov	r0, r3
  417980: b004         	add	sp, #0x10
  417982: bd10         	pop	{r4, pc}
