// MACHETE: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MACHETE.cpp

// ==== MACHETE::MACHETE
//      file offset 0x35979c (= ELF address; Ghidra 0x36979c), 44 bytes, Thumb-2
  35979c: b510         	push	{r4, lr}
  35979e: b082         	sub	sp, #0x8
  3597a0: 9001         	str	r0, [sp, #0x4]
  3597a2: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3597c0 <MACHETE::MACHETE()+0x24>
  3597a4: 447c         	add	r4, pc
  3597a6: 9b01         	ldr	r3, [sp, #0x4]
  3597a8: 4618         	mov	r0, r3
  3597aa: f0bb fbfd    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xbb7fa
  3597ae: 9b01         	ldr	r3, [sp, #0x4]
  3597b0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3597c4 <MACHETE::MACHETE()+0x28>
  3597b2: 58a2         	ldr	r2, [r4, r2]
  3597b4: 3208         	adds	r2, #0x8
  3597b6: 601a         	str	r2, [r3]
  3597b8: 9b01         	ldr	r3, [sp, #0x4]
  3597ba: 4618         	mov	r0, r3
  3597bc: b002         	add	sp, #0x8
  3597be: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3597bf); words below are literal-pool data ---
  3597c0: 9264         	str	r2, [sp, #0x190]
  3597c2: 005d         	lsls	r5, r3, #0x1
  3597c4: db84         	blt	0x3596d0 <M93BA::getDAMAGE()+0xe78> @ imm = #-0xf8
  3597c6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MACHETE::init
//      file offset 0x3597c8 (= ELF address; Ghidra 0x3697c8), 480 bytes, Thumb-2
  3597c8: b510         	push	{r4, lr}
  3597ca: b088         	sub	sp, #0x20
  3597cc: 9005         	str	r0, [sp, #0x14]
  3597ce: 9b05         	ldr	r3, [sp, #0x14]
  3597d0: 4618         	mov	r0, r3
  3597d2: f0bb fc0d    	bl	0x414ff0 <Weapon::init()> @ imm = #0xbb81a
  3597d6: 4603         	mov	r3, r0
  3597d8: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3597dc: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3597e0: f083 0301    	eor	r3, r3, #0x1
  3597e4: b2db         	uxtb	r3, r3
  3597e6: 2b00         	cmp	r3, #0x0
  3597e8: d001         	beq	0x3597ee <MACHETE::init()+0x26> @ imm = #0x2
  3597ea: 2300         	movs	r3, #0x0
  3597ec: e0d0         	b	0x359990 <MACHETE::init()+0x1c8> @ imm = #0x1a0
  3597ee: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x3599a0 <MACHETE::init()+0x1d8>
  3597f0: 447b         	add	r3, pc
  3597f2: 4618         	mov	r0, r3
  3597f4: f27e fd86    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x27eb0c
  3597f8: 4602         	mov	r2, r0
  3597fa: 9b05         	ldr	r3, [sp, #0x14]
  3597fc: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  359800: 9b05         	ldr	r3, [sp, #0x14]
  359802: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359806: 4618         	mov	r0, r3
  359808: f23e fb6e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23e6dc
  35980c: 9b05         	ldr	r3, [sp, #0x14]
  35980e: 681b         	ldr	r3, [r3]
  359810: f503 73f0    	add.w	r3, r3, #0x1e0
  359814: 681b         	ldr	r3, [r3]
  359816: 9805         	ldr	r0, [sp, #0x14]
  359818: 4798         	blx	r3
  35981a: 9b05         	ldr	r3, [sp, #0x14]
  35981c: 681b         	ldr	r3, [r3]
  35981e: 33cc         	adds	r3, #0xcc
  359820: 681b         	ldr	r3, [r3]
  359822: 9905         	ldr	r1, [sp, #0x14]
  359824: 9a05         	ldr	r2, [sp, #0x14]
  359826: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35982a: 4608         	mov	r0, r1
  35982c: 4611         	mov	r1, r2
  35982e: 2200         	movs	r2, #0x0
  359830: 4798         	blx	r3
  359832: 9b05         	ldr	r3, [sp, #0x14]
  359834: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  359838: f04f 507e    	mov.w	r0, #0x3f800000
  35983c: f783 fa22    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7cbbc
  359840: 4603         	mov	r3, r0
  359842: 4620         	mov	r0, r4
  359844: 4619         	mov	r1, r3
  359846: f240 fd11    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x240a22
  35984a: 9b05         	ldr	r3, [sp, #0x14]
  35984c: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  359850: ab06         	add	r3, sp, #0x18
  359852: 4618         	mov	r0, r3
  359854: f030 f5ce    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x430b9c
  359858: aa07         	add	r2, sp, #0x1c
  35985a: ab06         	add	r3, sp, #0x18
  35985c: 4610         	mov	r0, r2
  35985e: 4a51         	ldr	r2, [pc, #0x144]        @ 0x3599a4 <MACHETE::init()+0x1dc>
  359860: 447a         	add	r2, pc
  359862: 4611         	mov	r1, r2
  359864: 461a         	mov	r2, r3
  359866: f05d f0fb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45d1f6
  35986a: ab07         	add	r3, sp, #0x1c
  35986c: 4618         	mov	r0, r3
  35986e: f240 f8e5    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2401ca
  359872: 4603         	mov	r3, r0
  359874: 4620         	mov	r0, r4
  359876: 4619         	mov	r1, r3
  359878: f240 fcf8    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2409f0
  35987c: ab07         	add	r3, sp, #0x1c
  35987e: 4618         	mov	r0, r3
  359880: f05c f048    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45c090
  359884: ab06         	add	r3, sp, #0x18
  359886: 4618         	mov	r0, r3
  359888: f030 f5b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x430b70
  35988c: 9b05         	ldr	r3, [sp, #0x14]
  35988e: 2200         	movs	r2, #0x0
  359890: f8c3 2144    	str.w	r2, [r3, #0x144]
  359894: 9b05         	ldr	r3, [sp, #0x14]
  359896: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  35989a: 4618         	mov	r0, r3
  35989c: 2100         	movs	r1, #0x0
  35989e: f240 fc3f    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x24087e
  3598a2: 4603         	mov	r3, r0
  3598a4: 4618         	mov	r0, r3
  3598a6: f783 f9e5    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x7cc36
  3598aa: 4602         	mov	r2, r0
  3598ac: 9b05         	ldr	r3, [sp, #0x14]
  3598ae: f8c3 2148    	str.w	r2, [r3, #0x148]
  3598b2: 9b05         	ldr	r3, [sp, #0x14]
  3598b4: f649 129a    	movw	r2, #0x999a
  3598b8: f6c3 7219    	movt	r2, #0x3f19
  3598bc: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3598c0: 9b05         	ldr	r3, [sp, #0x14]
  3598c2: f04f 4280    	mov.w	r2, #0x40000000
  3598c6: f8c3 2160    	str.w	r2, [r3, #0x160]
  3598ca: 9b05         	ldr	r3, [sp, #0x14]
  3598cc: f04f 527e    	mov.w	r2, #0x3f800000
  3598d0: f8c3 2164    	str.w	r2, [r3, #0x164]
  3598d4: 9b05         	ldr	r3, [sp, #0x14]
  3598d6: f04f 0200    	mov.w	r2, #0x0
  3598da: f2c4 12c8    	movt	r2, #0x41c8
  3598de: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3598e2: 9b05         	ldr	r3, [sp, #0x14]
  3598e4: 2201         	movs	r2, #0x1
  3598e6: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3598ea: 9b05         	ldr	r3, [sp, #0x14]
  3598ec: 2201         	movs	r2, #0x1
  3598ee: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3598f2: 9b05         	ldr	r3, [sp, #0x14]
  3598f4: 2228         	movs	r2, #0x28
  3598f6: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3598fa: 9b05         	ldr	r3, [sp, #0x14]
  3598fc: 2201         	movs	r2, #0x1
  3598fe: f8c3 2188    	str.w	r2, [r3, #0x188]
  359902: 9b05         	ldr	r3, [sp, #0x14]
  359904: 2264         	movs	r2, #0x64
  359906: f8c3 219c    	str.w	r2, [r3, #0x19c]
  35990a: 9b05         	ldr	r3, [sp, #0x14]
  35990c: 2228         	movs	r2, #0x28
  35990e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  359912: 9b05         	ldr	r3, [sp, #0x14]
  359914: 2200         	movs	r2, #0x0
  359916: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  35991a: 9b05         	ldr	r3, [sp, #0x14]
  35991c: 2201         	movs	r2, #0x1
  35991e: f883 21b0    	strb.w	r2, [r3, #0x1b0]
  359922: 9b05         	ldr	r3, [sp, #0x14]
  359924: 2201         	movs	r2, #0x1
  359926: f883 2183    	strb.w	r2, [r3, #0x183]
  35992a: 9b05         	ldr	r3, [sp, #0x14]
  35992c: 2201         	movs	r2, #0x1
  35992e: f883 2184    	strb.w	r2, [r3, #0x184]
  359932: 9b05         	ldr	r3, [sp, #0x14]
  359934: f246 6266    	movw	r2, #0x6666
  359938: f6c3 7266    	movt	r2, #0x3f66
  35993c: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  359940: 9b05         	ldr	r3, [sp, #0x14]
  359942: 2200         	movs	r2, #0x0
  359944: f8c3 2170    	str.w	r2, [r3, #0x170]
  359948: 9b05         	ldr	r3, [sp, #0x14]
  35994a: 2200         	movs	r2, #0x0
  35994c: f8c3 2174    	str.w	r2, [r3, #0x174]
  359950: 9c05         	ldr	r4, [sp, #0x14]
  359952: 466b         	mov	r3, sp
  359954: 4618         	mov	r0, r3
  359956: ed9f 0b10    	vldr	d0, [pc, #64]           @ 0x359998 <MACHETE::init()+0x1d0>
  35995a: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  35995e: f7ff f847    	bl	0x3589f0 <M93BA::getDAMAGE()+0x198> @ imm = #-0xf72
  359962: f504 74ec    	add.w	r4, r4, #0x1d8
  359966: 466b         	mov	r3, sp
  359968: cb0f         	ldm	r3, {r0, r1, r2, r3}
  35996a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  35996e: 9b05         	ldr	r3, [sp, #0x14]
  359970: 2200         	movs	r2, #0x0
  359972: f8c3 2198    	str.w	r2, [r3, #0x198]
  359976: 2301         	movs	r3, #0x1
  359978: e00a         	b	0x359990 <MACHETE::init()+0x1c8> @ imm = #0x14
  35997a: ab07         	add	r3, sp, #0x1c
  35997c: 4618         	mov	r0, r3
  35997e: f05b f7c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45bf92
  359982: e7ff         	b	0x359984 <MACHETE::init()+0x1bc> @ imm = #-0x2
  359984: ab06         	add	r3, sp, #0x18
  359986: 4618         	mov	r0, r3
  359988: f030 f538    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x430a70
  35998c: f02e f38e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42e71c
  359990: 4618         	mov	r0, r3
  359992: b008         	add	sp, #0x20
  359994: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x359995); words below are literal-pool data ---
  359996: bf00         	nop
  359998: 0000         	movs	r0, r0
  35999a: 0000         	movs	r0, r0
  35999c: 4000         	ands	r0, r0
  35999e: 405a         	eors	r2, r3
  3599a0: 2ddc         	cmp	r5, #0xdc
  3599a2: 0047         	lsls	r7, r0, #0x1
  3599a4: 2d78         	cmp	r5, #0x78
  3599a6: 0047         	lsls	r7, r0, #0x1

// ==== MACHETE::~MACHETE
//      file offset 0x3599a8 (= ELF address; Ghidra 0x3699a8), 80 bytes, Thumb-2
  3599a8: b500         	push	{lr}
  3599aa: b083         	sub	sp, #0xc
  3599ac: 9001         	str	r0, [sp, #0x4]
  3599ae: 4910         	ldr	r1, [pc, #0x40]         @ 0x3599f0 <MACHETE::~MACHETE()+0x48>
  3599b0: 4479         	add	r1, pc
  3599b2: 9b01         	ldr	r3, [sp, #0x4]
  3599b4: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3599f4 <MACHETE::~MACHETE()+0x4c>
  3599b6: 588a         	ldr	r2, [r1, r2]
  3599b8: 3208         	adds	r2, #0x8
  3599ba: 601a         	str	r2, [r3]
  3599bc: 9b01         	ldr	r3, [sp, #0x4]
  3599be: 4618         	mov	r0, r3
  3599c0: f236 fe34    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x236c68
  3599c4: 9b01         	ldr	r3, [sp, #0x4]
  3599c6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3599ca: 4618         	mov	r0, r3
  3599cc: f23e fa74    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23e4e8
  3599d0: 9b01         	ldr	r3, [sp, #0x4]
  3599d2: 4618         	mov	r0, r3
  3599d4: f0bb fc0c    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xbb818
  3599d8: 2300         	movs	r3, #0x0
  3599da: 2b00         	cmp	r3, #0x0
  3599dc: d002         	beq	0x3599e4 <MACHETE::~MACHETE()+0x3c> @ imm = #0x4
  3599de: 9801         	ldr	r0, [sp, #0x4]
  3599e0: f02e f360    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42e6c0
  3599e4: 9b01         	ldr	r3, [sp, #0x4]
  3599e6: 4618         	mov	r0, r3
  3599e8: b003         	add	sp, #0xc
  3599ea: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3599ed); words below are literal-pool data ---
  3599ee: bf00         	nop
  3599f0: 9058         	str	r0, [sp, #0x160]
  3599f2: 005d         	lsls	r5, r3, #0x1
  3599f4: db84         	blt	0x359900 <MACHETE::init()+0x138> @ imm = #-0xf8
  3599f6: ffff b500    	<unknown>

// ==== MACHETE::~MACHETE
//      file offset 0x3599f8 (= ELF address; Ghidra 0x3699f8), 28 bytes, Thumb-2
  3599f8: b500         	push	{lr}
  3599fa: b083         	sub	sp, #0xc
  3599fc: 9001         	str	r0, [sp, #0x4]
  3599fe: 9801         	ldr	r0, [sp, #0x4]
  359a00: f7ff ffd2    	bl	0x3599a8 <MACHETE::~MACHETE()> @ imm = #-0x5c
  359a04: 9801         	ldr	r0, [sp, #0x4]
  359a06: f02e f34d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42e69a
  359a0a: 9b01         	ldr	r3, [sp, #0x4]
  359a0c: 4618         	mov	r0, r3
  359a0e: b003         	add	sp, #0xc
  359a10: f85d fb04    	ldr	pc, [sp], #4

// ==== MACHETE::updateItemStep
//      file offset 0x359a14 (= ELF address; Ghidra 0x369a14), 10 bytes, Thumb-2
  359a14: b082         	sub	sp, #0x8
  359a16: 9001         	str	r0, [sp, #0x4]
  359a18: 9100         	str	r1, [sp]
  359a1a: b002         	add	sp, #0x8
  359a1c: 4770         	bx	lr

// ==== MACHETE::triggerPull
//      file offset 0x359a20 (= ELF address; Ghidra 0x369a20), 10 bytes, Thumb-2
  359a20: b082         	sub	sp, #0x8
  359a22: 9001         	str	r0, [sp, #0x4]
  359a24: 9100         	str	r1, [sp]
  359a26: b002         	add	sp, #0x8
  359a28: 4770         	bx	lr

// ==== MACHETE::updateRemoteItemStep
//      file offset 0x359a2c (= ELF address; Ghidra 0x369a2c), 10 bytes, Thumb-2
  359a2c: b082         	sub	sp, #0x8
  359a2e: 9001         	str	r0, [sp, #0x4]
  359a30: 9100         	str	r1, [sp]
  359a32: b002         	add	sp, #0x8
  359a34: 4770         	bx	lr

// ==== MACHETE::remoteTriggerPull
//      file offset 0x359a38 (= ELF address; Ghidra 0x369a38), 10 bytes, Thumb-2
  359a38: b082         	sub	sp, #0x8
  359a3a: 9001         	str	r0, [sp, #0x4]
  359a3c: 9100         	str	r1, [sp]
  359a3e: b002         	add	sp, #0x8
  359a40: 4770         	bx	lr

// ==== MACHETE::getShellPoint
//      file offset 0x359a44 (= ELF address; Ghidra 0x369a44), 192 bytes, Thumb-2
  359a44: b530         	push	{r4, r5, lr}
  359a46: b08f         	sub	sp, #0x3c
  359a48: 9001         	str	r0, [sp, #0x4]
  359a4a: 9100         	str	r1, [sp]
  359a4c: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x359afc <MACHETE::getShellPoint()+0xb8>
  359a4e: 447c         	add	r4, pc
  359a50: 9b00         	ldr	r3, [sp]
  359a52: 681b         	ldr	r3, [r3]
  359a54: 3350         	adds	r3, #0x50
  359a56: 681b         	ldr	r3, [r3]
  359a58: 9a00         	ldr	r2, [sp]
  359a5a: 4610         	mov	r0, r2
  359a5c: 4798         	blx	r3
  359a5e: 4605         	mov	r5, r0
  359a60: ab04         	add	r3, sp, #0x10
  359a62: 4618         	mov	r0, r3
  359a64: f04f 0100    	mov.w	r1, #0x0
  359a68: f2c4 2148    	movt	r1, #0x4248
  359a6c: f04f 0200    	mov.w	r2, #0x0
  359a70: f2c4 1270    	movt	r2, #0x4170
  359a74: f239 f93c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x239278
  359a78: aa06         	add	r2, sp, #0x18
  359a7a: ab04         	add	r3, sp, #0x10
  359a7c: 4610         	mov	r0, r2
  359a7e: 4629         	mov	r1, r5
  359a80: 461a         	mov	r2, r3
  359a82: f7fe ffa5    	bl	0x3589d0 <M93BA::getDAMAGE()+0x178> @ imm = #-0x10b6
  359a86: 9b00         	ldr	r3, [sp]
  359a88: 681b         	ldr	r3, [r3]
  359a8a: f503 73c2    	add.w	r3, r3, #0x184
  359a8e: 681b         	ldr	r3, [r3]
  359a90: 9a00         	ldr	r2, [sp]
  359a92: a908         	add	r1, sp, #0x20
  359a94: 4608         	mov	r0, r1
  359a96: 4611         	mov	r1, r2
  359a98: 4798         	blx	r3
  359a9a: a902         	add	r1, sp, #0x8
  359a9c: aa06         	add	r2, sp, #0x18
  359a9e: ab08         	add	r3, sp, #0x20
  359aa0: 4608         	mov	r0, r1
  359aa2: 4611         	mov	r1, r2
  359aa4: 461a         	mov	r2, r3
  359aa6: f238 fc3d    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x23887a
  359aaa: 4b15         	ldr	r3, [pc, #0x54]         @ 0x359b00 <MACHETE::getShellPoint()+0xbc>
  359aac: 58e3         	ldr	r3, [r4, r3]
  359aae: 681b         	ldr	r3, [r3]
  359ab0: 681b         	ldr	r3, [r3]
  359ab2: f503 73c4    	add.w	r3, r3, #0x188
  359ab6: 681b         	ldr	r3, [r3]
  359ab8: 4a11         	ldr	r2, [pc, #0x44]         @ 0x359b00 <MACHETE::getShellPoint()+0xbc>
  359aba: 58a2         	ldr	r2, [r4, r2]
  359abc: 6812         	ldr	r2, [r2]
  359abe: a908         	add	r1, sp, #0x20
  359ac0: 4608         	mov	r0, r1
  359ac2: 4611         	mov	r1, r2
  359ac4: 4798         	blx	r3
  359ac6: a906         	add	r1, sp, #0x18
  359ac8: aa02         	add	r2, sp, #0x8
  359aca: ab08         	add	r3, sp, #0x20
  359acc: 4608         	mov	r0, r1
  359ace: 4611         	mov	r1, r2
  359ad0: 461a         	mov	r2, r3
  359ad2: f238 fc27    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x23884e
  359ad6: eddd 7a06    	vldr	s15, [sp, #24]
  359ada: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  359ade: eddd 7a07    	vldr	s15, [sp, #28]
  359ae2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  359ae6: 9b01         	ldr	r3, [sp, #0x4]
  359ae8: 4618         	mov	r0, r3
  359aea: eeb0 0b46    	vmov.f64	d0, d6
  359aee: eeb0 1b47    	vmov.f64	d1, d7
  359af2: f7fe ff7d    	bl	0x3589f0 <M93BA::getDAMAGE()+0x198> @ imm = #-0x1106
  359af6: 9801         	ldr	r0, [sp, #0x4]
  359af8: b00f         	add	sp, #0x3c
  359afa: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x359afb); words below are literal-pool data ---
  359afc: 8fba         	ldrh	r2, [r7, #0x3c]
  359afe: 005d         	lsls	r5, r3, #0x1
  359b00: d744         	bvc	0x359b8c <MACHETE::setPrimaryConfiguration()+0x80> @ imm = #0x88
  359b02: ffff b082    	<unknown>

// ==== MACHETE::playSound
//      file offset 0x359b04 (= ELF address; Ghidra 0x369b04), 8 bytes, Thumb-2
  359b04: b082         	sub	sp, #0x8
  359b06: 9001         	str	r0, [sp, #0x4]
  359b08: b002         	add	sp, #0x8
  359b0a: 4770         	bx	lr

// ==== MACHETE::setPrimaryConfiguration
//      file offset 0x359b0c (= ELF address; Ghidra 0x369b0c), 300 bytes, Thumb-2
  359b0c: b530         	push	{r4, r5, lr}
  359b0e: b085         	sub	sp, #0x14
  359b10: 9001         	str	r0, [sp, #0x4]
  359b12: 9b01         	ldr	r3, [sp, #0x4]
  359b14: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  359b18: 2b00         	cmp	r3, #0x0
  359b1a: d019         	beq	0x359b50 <MACHETE::setPrimaryConfiguration()+0x44> @ imm = #0x32
  359b1c: 9b01         	ldr	r3, [sp, #0x4]
  359b1e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  359b22: 4b44         	ldr	r3, [pc, #0x110]        @ 0x359c34 <MACHETE::setPrimaryConfiguration()+0x128>
  359b24: 447b         	add	r3, pc
  359b26: ed93 6b00    	vldr	d6, [r3]
  359b2a: ed93 7b02    	vldr	d7, [r3, #8]
  359b2e: 4610         	mov	r0, r2
  359b30: eeb0 0b46    	vmov.f64	d0, d6
  359b34: eeb0 1b47    	vmov.f64	d1, d7
  359b38: f7fe ff6e    	bl	0x358a18 <M93BA::getDAMAGE()+0x1c0> @ imm = #-0x1124
  359b3c: 9b01         	ldr	r3, [sp, #0x4]
  359b3e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  359b42: 4618         	mov	r0, r3
  359b44: f04f 0200    	mov.w	r2, #0x0
  359b48: f04f 0300    	mov.w	r3, #0x0
  359b4c: f379 fb21    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x379642
  359b50: 9b01         	ldr	r3, [sp, #0x4]
  359b52: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359b56: 681b         	ldr	r3, [r3]
  359b58: 334c         	adds	r3, #0x4c
  359b5a: 681c         	ldr	r4, [r3]
  359b5c: 9b01         	ldr	r3, [sp, #0x4]
  359b5e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  359b62: ab02         	add	r3, sp, #0x8
  359b64: 4618         	mov	r0, r3
  359b66: f04f 0100    	mov.w	r1, #0x0
  359b6a: f2c4 11c8    	movt	r1, #0x41c8
  359b6e: f04f 0200    	mov.w	r2, #0x0
  359b72: f2cc 02a0    	movt	r2, #0xc0a0
  359b76: f239 f8bb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x239176
  359b7a: ab02         	add	r3, sp, #0x8
  359b7c: 4628         	mov	r0, r5
  359b7e: 4619         	mov	r1, r3
  359b80: 47a0         	blx	r4
  359b82: 9b01         	ldr	r3, [sp, #0x4]
  359b84: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359b88: 681b         	ldr	r3, [r3]
  359b8a: 337c         	adds	r3, #0x7c
  359b8c: 681c         	ldr	r4, [r3]
  359b8e: 9b01         	ldr	r3, [sp, #0x4]
  359b90: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  359b94: ab02         	add	r3, sp, #0x8
  359b96: 4618         	mov	r0, r3
  359b98: f64c 41cd    	movw	r1, #0xcccd
  359b9c: f6c3 51cc    	movt	r1, #0x3dcc
  359ba0: f04f 527c    	mov.w	r2, #0x3f000000
  359ba4: f239 f8a4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x239148
  359ba8: ab02         	add	r3, sp, #0x8
  359baa: 4628         	mov	r0, r5
  359bac: 4619         	mov	r1, r3
  359bae: 47a0         	blx	r4
  359bb0: 9b01         	ldr	r3, [sp, #0x4]
  359bb2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359bb6: 681b         	ldr	r3, [r3]
  359bb8: 3398         	adds	r3, #0x98
  359bba: 681b         	ldr	r3, [r3]
  359bbc: 9a01         	ldr	r2, [sp, #0x4]
  359bbe: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359bc2: 4610         	mov	r0, r2
  359bc4: f04f 0100    	mov.w	r1, #0x0
  359bc8: f2cc 2120    	movt	r1, #0xc220
  359bcc: 4798         	blx	r3
  359bce: 9b01         	ldr	r3, [sp, #0x4]
  359bd0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359bd4: 681b         	ldr	r3, [r3]
  359bd6: 3340         	adds	r3, #0x40
  359bd8: 681b         	ldr	r3, [r3]
  359bda: 9a01         	ldr	r2, [sp, #0x4]
  359bdc: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359be0: 4610         	mov	r0, r2
  359be2: f04f 517e    	mov.w	r1, #0x3f800000
  359be6: 4798         	blx	r3
  359be8: 9b01         	ldr	r3, [sp, #0x4]
  359bea: 681b         	ldr	r3, [r3]
  359bec: 334c         	adds	r3, #0x4c
  359bee: 681c         	ldr	r4, [r3]
  359bf0: 9d01         	ldr	r5, [sp, #0x4]
  359bf2: ab02         	add	r3, sp, #0x8
  359bf4: 4618         	mov	r0, r3
  359bf6: f04f 0100    	mov.w	r1, #0x0
  359bfa: f04f 0200    	mov.w	r2, #0x0
  359bfe: f239 f877    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2390ee
  359c02: ab02         	add	r3, sp, #0x8
  359c04: 4628         	mov	r0, r5
  359c06: 4619         	mov	r1, r3
  359c08: 47a0         	blx	r4
  359c0a: 9b01         	ldr	r3, [sp, #0x4]
  359c0c: 681b         	ldr	r3, [r3]
  359c0e: 3340         	adds	r3, #0x40
  359c10: 681b         	ldr	r3, [r3]
  359c12: 9a01         	ldr	r2, [sp, #0x4]
  359c14: 4610         	mov	r0, r2
  359c16: f04f 517e    	mov.w	r1, #0x3f800000
  359c1a: 4798         	blx	r3
  359c1c: 9b01         	ldr	r3, [sp, #0x4]
  359c1e: 681b         	ldr	r3, [r3]
  359c20: 3398         	adds	r3, #0x98
  359c22: 681b         	ldr	r3, [r3]
  359c24: 9a01         	ldr	r2, [sp, #0x4]
  359c26: 4610         	mov	r0, r2
  359c28: f04f 0100    	mov.w	r1, #0x0
  359c2c: 4798         	blx	r3
  359c2e: b005         	add	sp, #0x14
  359c30: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x359c31); words below are literal-pool data ---
  359c32: bf00         	nop
  359c34: 2b00         	cmp	r3, #0x0
  359c36: 0047         	lsls	r7, r0, #0x1

// ==== MACHETE::setSecondaryConfiguration
//      file offset 0x359c38 (= ELF address; Ghidra 0x369c38), 296 bytes, Thumb-2
  359c38: b530         	push	{r4, r5, lr}
  359c3a: b085         	sub	sp, #0x14
  359c3c: 9001         	str	r0, [sp, #0x4]
  359c3e: 9b01         	ldr	r3, [sp, #0x4]
  359c40: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  359c44: 2b00         	cmp	r3, #0x0
  359c46: d019         	beq	0x359c7c <MACHETE::setSecondaryConfiguration()+0x44> @ imm = #0x32
  359c48: 9b01         	ldr	r3, [sp, #0x4]
  359c4a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  359c4e: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x359d5c <MACHETE::setSecondaryConfiguration()+0x124>
  359c50: 447b         	add	r3, pc
  359c52: ed93 6b00    	vldr	d6, [r3]
  359c56: ed93 7b02    	vldr	d7, [r3, #8]
  359c5a: 4610         	mov	r0, r2
  359c5c: eeb0 0b46    	vmov.f64	d0, d6
  359c60: eeb0 1b47    	vmov.f64	d1, d7
  359c64: f7fe fed8    	bl	0x358a18 <M93BA::getDAMAGE()+0x1c0> @ imm = #-0x1250
  359c68: 9b01         	ldr	r3, [sp, #0x4]
  359c6a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  359c6e: 4618         	mov	r0, r3
  359c70: f04f 0200    	mov.w	r2, #0x0
  359c74: f04f 0300    	mov.w	r3, #0x0
  359c78: f379 fa8b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x379516
  359c7c: 9b01         	ldr	r3, [sp, #0x4]
  359c7e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359c82: 681b         	ldr	r3, [r3]
  359c84: 334c         	adds	r3, #0x4c
  359c86: 681c         	ldr	r4, [r3]
  359c88: 9b01         	ldr	r3, [sp, #0x4]
  359c8a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  359c8e: ab02         	add	r3, sp, #0x8
  359c90: 4618         	mov	r0, r3
  359c92: f04f 0100    	mov.w	r1, #0x0
  359c96: f2cc 11a0    	movt	r1, #0xc1a0
  359c9a: f04f 0200    	mov.w	r2, #0x0
  359c9e: f2c4 02a0    	movt	r2, #0x40a0
  359ca2: f239 f825    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23904a
  359ca6: ab02         	add	r3, sp, #0x8
  359ca8: 4628         	mov	r0, r5
  359caa: 4619         	mov	r1, r3
  359cac: 47a0         	blx	r4
  359cae: 9b01         	ldr	r3, [sp, #0x4]
  359cb0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359cb4: 681b         	ldr	r3, [r3]
  359cb6: 337c         	adds	r3, #0x7c
  359cb8: 681c         	ldr	r4, [r3]
  359cba: 9b01         	ldr	r3, [sp, #0x4]
  359cbc: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  359cc0: ab02         	add	r3, sp, #0x8
  359cc2: 4618         	mov	r0, r3
  359cc4: f04f 517c    	mov.w	r1, #0x3f000000
  359cc8: f04f 527c    	mov.w	r2, #0x3f000000
  359ccc: f239 f810    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x239020
  359cd0: ab02         	add	r3, sp, #0x8
  359cd2: 4628         	mov	r0, r5
  359cd4: 4619         	mov	r1, r3
  359cd6: 47a0         	blx	r4
  359cd8: 9b01         	ldr	r3, [sp, #0x4]
  359cda: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359cde: 681b         	ldr	r3, [r3]
  359ce0: 3398         	adds	r3, #0x98
  359ce2: 681b         	ldr	r3, [r3]
  359ce4: 9a01         	ldr	r2, [sp, #0x4]
  359ce6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359cea: 4610         	mov	r0, r2
  359cec: f04f 0100    	mov.w	r1, #0x0
  359cf0: f2c4 2182    	movt	r1, #0x4282
  359cf4: 4798         	blx	r3
  359cf6: 9b01         	ldr	r3, [sp, #0x4]
  359cf8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359cfc: 681b         	ldr	r3, [r3]
  359cfe: 3340         	adds	r3, #0x40
  359d00: 681b         	ldr	r3, [r3]
  359d02: 9a01         	ldr	r2, [sp, #0x4]
  359d04: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359d08: 4610         	mov	r0, r2
  359d0a: f04f 517e    	mov.w	r1, #0x3f800000
  359d0e: 4798         	blx	r3
  359d10: 9b01         	ldr	r3, [sp, #0x4]
  359d12: 681b         	ldr	r3, [r3]
  359d14: 334c         	adds	r3, #0x4c
  359d16: 681c         	ldr	r4, [r3]
  359d18: 9d01         	ldr	r5, [sp, #0x4]
  359d1a: ab02         	add	r3, sp, #0x8
  359d1c: 4618         	mov	r0, r3
  359d1e: f04f 0100    	mov.w	r1, #0x0
  359d22: f04f 0200    	mov.w	r2, #0x0
  359d26: f238 ffe3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238fc6
  359d2a: ab02         	add	r3, sp, #0x8
  359d2c: 4628         	mov	r0, r5
  359d2e: 4619         	mov	r1, r3
  359d30: 47a0         	blx	r4
  359d32: 9b01         	ldr	r3, [sp, #0x4]
  359d34: 681b         	ldr	r3, [r3]
  359d36: 3340         	adds	r3, #0x40
  359d38: 681b         	ldr	r3, [r3]
  359d3a: 9a01         	ldr	r2, [sp, #0x4]
  359d3c: 4610         	mov	r0, r2
  359d3e: f04f 517e    	mov.w	r1, #0x3f800000
  359d42: 4798         	blx	r3
  359d44: 9b01         	ldr	r3, [sp, #0x4]
  359d46: 681b         	ldr	r3, [r3]
  359d48: 3398         	adds	r3, #0x98
  359d4a: 681b         	ldr	r3, [r3]
  359d4c: 9a01         	ldr	r2, [sp, #0x4]
  359d4e: 4610         	mov	r0, r2
  359d50: f04f 0100    	mov.w	r1, #0x0
  359d54: 4798         	blx	r3
  359d56: b005         	add	sp, #0x14
  359d58: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x359d59); words below are literal-pool data ---
  359d5a: bf00         	nop
  359d5c: 29d4         	cmp	r1, #0xd4
  359d5e: 0047         	lsls	r7, r0, #0x1

// ==== MACHETE::setDualConfiguration
//      file offset 0x359d60 (= ELF address; Ghidra 0x369d60), 300 bytes, Thumb-2
  359d60: b530         	push	{r4, r5, lr}
  359d62: b085         	sub	sp, #0x14
  359d64: 9001         	str	r0, [sp, #0x4]
  359d66: 9b01         	ldr	r3, [sp, #0x4]
  359d68: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  359d6c: 2b00         	cmp	r3, #0x0
  359d6e: d019         	beq	0x359da4 <MACHETE::setDualConfiguration()+0x44> @ imm = #0x32
  359d70: 9b01         	ldr	r3, [sp, #0x4]
  359d72: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  359d76: 4b44         	ldr	r3, [pc, #0x110]        @ 0x359e88 <MACHETE::setDualConfiguration()+0x128>
  359d78: 447b         	add	r3, pc
  359d7a: ed93 6b00    	vldr	d6, [r3]
  359d7e: ed93 7b02    	vldr	d7, [r3, #8]
  359d82: 4610         	mov	r0, r2
  359d84: eeb0 0b46    	vmov.f64	d0, d6
  359d88: eeb0 1b47    	vmov.f64	d1, d7
  359d8c: f7fe fe44    	bl	0x358a18 <M93BA::getDAMAGE()+0x1c0> @ imm = #-0x1378
  359d90: 9b01         	ldr	r3, [sp, #0x4]
  359d92: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  359d96: 4618         	mov	r0, r3
  359d98: f04f 0200    	mov.w	r2, #0x0
  359d9c: f04f 0300    	mov.w	r3, #0x0
  359da0: f379 f9f7    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3793ee
  359da4: 9b01         	ldr	r3, [sp, #0x4]
  359da6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359daa: 681b         	ldr	r3, [r3]
  359dac: 334c         	adds	r3, #0x4c
  359dae: 681c         	ldr	r4, [r3]
  359db0: 9b01         	ldr	r3, [sp, #0x4]
  359db2: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  359db6: ab02         	add	r3, sp, #0x8
  359db8: 4618         	mov	r0, r3
  359dba: f04f 0100    	mov.w	r1, #0x0
  359dbe: f2c4 11c8    	movt	r1, #0x41c8
  359dc2: f04f 0200    	mov.w	r2, #0x0
  359dc6: f2cc 02a0    	movt	r2, #0xc0a0
  359dca: f238 ff91    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238f22
  359dce: ab02         	add	r3, sp, #0x8
  359dd0: 4628         	mov	r0, r5
  359dd2: 4619         	mov	r1, r3
  359dd4: 47a0         	blx	r4
  359dd6: 9b01         	ldr	r3, [sp, #0x4]
  359dd8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359ddc: 681b         	ldr	r3, [r3]
  359dde: 337c         	adds	r3, #0x7c
  359de0: 681c         	ldr	r4, [r3]
  359de2: 9b01         	ldr	r3, [sp, #0x4]
  359de4: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  359de8: ab02         	add	r3, sp, #0x8
  359dea: 4618         	mov	r0, r3
  359dec: f64c 41cd    	movw	r1, #0xcccd
  359df0: f6c3 51cc    	movt	r1, #0x3dcc
  359df4: f04f 527c    	mov.w	r2, #0x3f000000
  359df8: f238 ff7a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238ef4
  359dfc: ab02         	add	r3, sp, #0x8
  359dfe: 4628         	mov	r0, r5
  359e00: 4619         	mov	r1, r3
  359e02: 47a0         	blx	r4
  359e04: 9b01         	ldr	r3, [sp, #0x4]
  359e06: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359e0a: 681b         	ldr	r3, [r3]
  359e0c: 3398         	adds	r3, #0x98
  359e0e: 681b         	ldr	r3, [r3]
  359e10: 9a01         	ldr	r2, [sp, #0x4]
  359e12: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359e16: 4610         	mov	r0, r2
  359e18: f04f 0100    	mov.w	r1, #0x0
  359e1c: f2cc 2120    	movt	r1, #0xc220
  359e20: 4798         	blx	r3
  359e22: 9b01         	ldr	r3, [sp, #0x4]
  359e24: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359e28: 681b         	ldr	r3, [r3]
  359e2a: 3340         	adds	r3, #0x40
  359e2c: 681b         	ldr	r3, [r3]
  359e2e: 9a01         	ldr	r2, [sp, #0x4]
  359e30: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359e34: 4610         	mov	r0, r2
  359e36: f04f 517e    	mov.w	r1, #0x3f800000
  359e3a: 4798         	blx	r3
  359e3c: 9b01         	ldr	r3, [sp, #0x4]
  359e3e: 681b         	ldr	r3, [r3]
  359e40: 334c         	adds	r3, #0x4c
  359e42: 681c         	ldr	r4, [r3]
  359e44: 9d01         	ldr	r5, [sp, #0x4]
  359e46: ab02         	add	r3, sp, #0x8
  359e48: 4618         	mov	r0, r3
  359e4a: f04f 0100    	mov.w	r1, #0x0
  359e4e: f04f 0200    	mov.w	r2, #0x0
  359e52: f238 ff4d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238e9a
  359e56: ab02         	add	r3, sp, #0x8
  359e58: 4628         	mov	r0, r5
  359e5a: 4619         	mov	r1, r3
  359e5c: 47a0         	blx	r4
  359e5e: 9b01         	ldr	r3, [sp, #0x4]
  359e60: 681b         	ldr	r3, [r3]
  359e62: 3340         	adds	r3, #0x40
  359e64: 681b         	ldr	r3, [r3]
  359e66: 9a01         	ldr	r2, [sp, #0x4]
  359e68: 4610         	mov	r0, r2
  359e6a: f04f 517e    	mov.w	r1, #0x3f800000
  359e6e: 4798         	blx	r3
  359e70: 9b01         	ldr	r3, [sp, #0x4]
  359e72: 681b         	ldr	r3, [r3]
  359e74: 3398         	adds	r3, #0x98
  359e76: 681b         	ldr	r3, [r3]
  359e78: 9a01         	ldr	r2, [sp, #0x4]
  359e7a: 4610         	mov	r0, r2
  359e7c: f04f 0100    	mov.w	r1, #0x0
  359e80: 4798         	blx	r3
  359e82: b005         	add	sp, #0x14
  359e84: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x359e85); words below are literal-pool data ---
  359e86: bf00         	nop
  359e88: 28ac         	cmp	r0, #0xac
  359e8a: 0047         	lsls	r7, r0, #0x1

// ==== MACHETE::setMapConfiguration
//      file offset 0x359e8c (= ELF address; Ghidra 0x369e8c), 200 bytes, Thumb-2
  359e8c: b570         	push	{r4, r5, r6, lr}
  359e8e: b084         	sub	sp, #0x10
  359e90: 9001         	str	r0, [sp, #0x4]
  359e92: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x359f4c <MACHETE::setMapConfiguration()+0xc0>
  359e94: 447c         	add	r4, pc
  359e96: 9b01         	ldr	r3, [sp, #0x4]
  359e98: f04f 0200    	mov.w	r2, #0x0
  359e9c: f8c3 2190    	str.w	r2, [r3, #0x190]
  359ea0: 9b01         	ldr	r3, [sp, #0x4]
  359ea2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359ea6: 681b         	ldr	r3, [r3]
  359ea8: 334c         	adds	r3, #0x4c
  359eaa: 681d         	ldr	r5, [r3]
  359eac: 9b01         	ldr	r3, [sp, #0x4]
  359eae: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  359eb2: ab02         	add	r3, sp, #0x8
  359eb4: 4618         	mov	r0, r3
  359eb6: f04f 0100    	mov.w	r1, #0x0
  359eba: f04f 0200    	mov.w	r2, #0x0
  359ebe: f238 ff17    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238e2e
  359ec2: ab02         	add	r3, sp, #0x8
  359ec4: 4630         	mov	r0, r6
  359ec6: 4619         	mov	r1, r3
  359ec8: 47a8         	blx	r5
  359eca: 9b01         	ldr	r3, [sp, #0x4]
  359ecc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359ed0: 681b         	ldr	r3, [r3]
  359ed2: 337c         	adds	r3, #0x7c
  359ed4: 681d         	ldr	r5, [r3]
  359ed6: 9b01         	ldr	r3, [sp, #0x4]
  359ed8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  359edc: ab02         	add	r3, sp, #0x8
  359ede: 4618         	mov	r0, r3
  359ee0: f04f 517c    	mov.w	r1, #0x3f000000
  359ee4: f04f 527c    	mov.w	r2, #0x3f000000
  359ee8: f238 ff02    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238e04
  359eec: ab02         	add	r3, sp, #0x8
  359eee: 4630         	mov	r0, r6
  359ef0: 4619         	mov	r1, r3
  359ef2: 47a8         	blx	r5
  359ef4: 9b01         	ldr	r3, [sp, #0x4]
  359ef6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359efa: 681b         	ldr	r3, [r3]
  359efc: 3398         	adds	r3, #0x98
  359efe: 681b         	ldr	r3, [r3]
  359f00: 9a01         	ldr	r2, [sp, #0x4]
  359f02: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359f06: 4610         	mov	r0, r2
  359f08: f04f 0100    	mov.w	r1, #0x0
  359f0c: 4798         	blx	r3
  359f0e: 9b01         	ldr	r3, [sp, #0x4]
  359f10: 681b         	ldr	r3, [r3]
  359f12: 334c         	adds	r3, #0x4c
  359f14: 681d         	ldr	r5, [r3]
  359f16: 9e01         	ldr	r6, [sp, #0x4]
  359f18: ab02         	add	r3, sp, #0x8
  359f1a: 4618         	mov	r0, r3
  359f1c: f04f 0100    	mov.w	r1, #0x0
  359f20: f04f 0200    	mov.w	r2, #0x0
  359f24: f238 fee4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x238dc8
  359f28: ab02         	add	r3, sp, #0x8
  359f2a: 4630         	mov	r0, r6
  359f2c: 4619         	mov	r1, r3
  359f2e: 47a8         	blx	r5
  359f30: 9b01         	ldr	r3, [sp, #0x4]
  359f32: 681b         	ldr	r3, [r3]
  359f34: 3340         	adds	r3, #0x40
  359f36: 681b         	ldr	r3, [r3]
  359f38: 9901         	ldr	r1, [sp, #0x4]
  359f3a: 4a05         	ldr	r2, [pc, #0x14]         @ 0x359f50 <MACHETE::setMapConfiguration()+0xc4>
  359f3c: 58a2         	ldr	r2, [r4, r2]
  359f3e: 6812         	ldr	r2, [r2]
  359f40: 4608         	mov	r0, r1
  359f42: 4611         	mov	r1, r2
  359f44: 4798         	blx	r3
  359f46: b004         	add	sp, #0x10
  359f48: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x359f49); words below are literal-pool data ---
  359f4a: bf00         	nop
  359f4c: 8b74         	ldrh	r4, [r6, #0x1a]
  359f4e: 005d         	lsls	r5, r3, #0x1
  359f50: d748         	bvc	0x359fe4 <MACHETE::setRight(bool)+0x4> @ imm = #0x90
  359f52: ffff b500    	<unknown>

// ==== MACHETE::getWeaponTexture
//      file offset 0x359f54 (= ELF address; Ghidra 0x369f54), 40 bytes, Thumb-2
  359f54: b500         	push	{lr}
  359f56: b083         	sub	sp, #0xc
  359f58: 9001         	str	r0, [sp, #0x4]
  359f5a: 9b01         	ldr	r3, [sp, #0x4]
  359f5c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359f60: 681b         	ldr	r3, [r3]
  359f62: f503 73fa    	add.w	r3, r3, #0x1f4
  359f66: 681b         	ldr	r3, [r3]
  359f68: 9a01         	ldr	r2, [sp, #0x4]
  359f6a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359f6e: 4610         	mov	r0, r2
  359f70: 4798         	blx	r3
  359f72: 4603         	mov	r3, r0
  359f74: 4618         	mov	r0, r3
  359f76: b003         	add	sp, #0xc
  359f78: f85d fb04    	ldr	pc, [sp], #4

// ==== MACHETE::getWeaponRect
//      file offset 0x359f7c (= ELF address; Ghidra 0x369f7c), 38 bytes, Thumb-2
  359f7c: b500         	push	{lr}
  359f7e: b083         	sub	sp, #0xc
  359f80: 9001         	str	r0, [sp, #0x4]
  359f82: 9100         	str	r1, [sp]
  359f84: 9b00         	ldr	r3, [sp]
  359f86: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359f8a: 4618         	mov	r0, r3
  359f8c: f782 fea6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x7d2b4
  359f90: 4603         	mov	r3, r0
  359f92: 9801         	ldr	r0, [sp, #0x4]
  359f94: 4619         	mov	r1, r3
  359f96: f239 f9bf    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x23937e
  359f9a: 9801         	ldr	r0, [sp, #0x4]
  359f9c: b003         	add	sp, #0xc
  359f9e: f85d fb04    	ldr	pc, [sp], #4

// ==== MACHETE::isRight
//      file offset 0x359fa4 (= ELF address; Ghidra 0x369fa4), 60 bytes, Thumb-2
  359fa4: b500         	push	{lr}
  359fa6: b083         	sub	sp, #0xc
  359fa8: 9001         	str	r0, [sp, #0x4]
  359faa: 9b01         	ldr	r3, [sp, #0x4]
  359fac: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359fb0: 681b         	ldr	r3, [r3]
  359fb2: 3334         	adds	r3, #0x34
  359fb4: 681b         	ldr	r3, [r3]
  359fb6: 9a01         	ldr	r2, [sp, #0x4]
  359fb8: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  359fbc: 4610         	mov	r0, r2
  359fbe: 4798         	blx	r3
  359fc0: ee07 0a10    	vmov	s14, r0
  359fc4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  359fc8: eeb4 7ae7    	vcmpe.f32	s14, s15
  359fcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  359fd0: bfd4         	ite	le
  359fd2: 2300         	movle	r3, #0x0
  359fd4: 2301         	movgt	r3, #0x1
  359fd6: b2db         	uxtb	r3, r3
  359fd8: 4618         	mov	r0, r3
  359fda: b003         	add	sp, #0xc
  359fdc: f85d fb04    	ldr	pc, [sp], #4

// ==== MACHETE::setRight
//      file offset 0x359fe0 (= ELF address; Ghidra 0x369fe0), 64 bytes, Thumb-2
  359fe0: b500         	push	{lr}
  359fe2: b083         	sub	sp, #0xc
  359fe4: 9001         	str	r0, [sp, #0x4]
  359fe6: 460b         	mov	r3, r1
  359fe8: f88d 3003    	strb.w	r3, [sp, #0x3]
  359fec: 9b01         	ldr	r3, [sp, #0x4]
  359fee: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  359ff2: 681b         	ldr	r3, [r3]
  359ff4: 3330         	adds	r3, #0x30
  359ff6: 681a         	ldr	r2, [r3]
  359ff8: 9b01         	ldr	r3, [sp, #0x4]
  359ffa: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  359ffe: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  35a002: 2b00         	cmp	r3, #0x0
  35a004: d002         	beq	0x35a00c <MACHETE::setRight(bool)+0x2c> @ imm = #0x4
  35a006: f04f 537e    	mov.w	r3, #0x3f800000
  35a00a: e003         	b	0x35a014 <MACHETE::setRight(bool)+0x34> @ imm = #0x6
  35a00c: f04f 0300    	mov.w	r3, #0x0
  35a010: f6cb 7380    	movt	r3, #0xbf80
  35a014: 4608         	mov	r0, r1
  35a016: 4619         	mov	r1, r3
  35a018: 4790         	blx	r2
  35a01a: b003         	add	sp, #0xc
  35a01c: f85d fb04    	ldr	pc, [sp], #4

// ==== MACHETE::create
//      file offset 0x41724c (= ELF address; Ghidra 0x42724c), 112 bytes, Thumb-2
  41724c: b510         	push	{r4, lr}
  41724e: b082         	sub	sp, #0x8
  417250: f44f 70f8    	mov.w	r0, #0x1f0
  417254: f370 fb86    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37070c
  417258: 4603         	mov	r3, r0
  41725a: 461c         	mov	r4, r3
  41725c: 4620         	mov	r0, r4
  41725e: f742 fa9d    	bl	0x35979c <MACHETE::MACHETE()> @ imm = #-0xbdac6
  417262: 9401         	str	r4, [sp, #0x4]
  417264: 9b01         	ldr	r3, [sp, #0x4]
  417266: 2b00         	cmp	r3, #0x0
  417268: d00a         	beq	0x417280 <MACHETE::create()+0x34> @ imm = #0x14
  41726a: 9b01         	ldr	r3, [sp, #0x4]
  41726c: 681b         	ldr	r3, [r3]
  41726e: 3318         	adds	r3, #0x18
  417270: 681b         	ldr	r3, [r3]
  417272: 9801         	ldr	r0, [sp, #0x4]
  417274: 4798         	blx	r3
  417276: 4603         	mov	r3, r0
  417278: 2b00         	cmp	r3, #0x0
  41727a: d001         	beq	0x417280 <MACHETE::create()+0x34> @ imm = #0x2
  41727c: 2301         	movs	r3, #0x1
  41727e: e000         	b	0x417282 <MACHETE::create()+0x36> @ imm = #0x0
  417280: 2300         	movs	r3, #0x0
  417282: 2b00         	cmp	r3, #0x0
  417284: d005         	beq	0x417292 <MACHETE::create()+0x46> @ imm = #0xa
  417286: 9b01         	ldr	r3, [sp, #0x4]
  417288: 4618         	mov	r0, r3
  41728a: f180 fe37    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180c6e
  41728e: 9b01         	ldr	r3, [sp, #0x4]
  417290: e011         	b	0x4172b6 <MACHETE::create()+0x6a> @ imm = #0x22
  417292: 9b01         	ldr	r3, [sp, #0x4]
  417294: 2b00         	cmp	r3, #0x0
  417296: d005         	beq	0x4172a4 <MACHETE::create()+0x58> @ imm = #0xa
  417298: 9b01         	ldr	r3, [sp, #0x4]
  41729a: 681b         	ldr	r3, [r3]
  41729c: 3308         	adds	r3, #0x8
  41729e: 681b         	ldr	r3, [r3]
  4172a0: 9801         	ldr	r0, [sp, #0x4]
  4172a2: 4798         	blx	r3
  4172a4: 2300         	movs	r3, #0x0
  4172a6: 9301         	str	r3, [sp, #0x4]
  4172a8: 2300         	movs	r3, #0x0
  4172aa: e004         	b	0x4172b6 <MACHETE::create()+0x6a> @ imm = #0x8
  4172ac: 4620         	mov	r0, r4
  4172ae: f370 fef9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370df2
  4172b2: f370 fefb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370df6
  4172b6: 4618         	mov	r0, r3
  4172b8: b002         	add	sp, #0x8
  4172ba: bd10         	pop	{r4, pc}
