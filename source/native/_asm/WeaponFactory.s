// WeaponFactory: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 18 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../WeaponFactory.cpp

// ==== WeaponFactory::WeaponFactory
//      file offset 0x41786c (= ELF address; Ghidra 0x42786c), 44 bytes, Thumb-2
  41786c: b510         	push	{r4, lr}
  41786e: b082         	sub	sp, #0x8
  417870: 9001         	str	r0, [sp, #0x4]
  417872: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x417890 <WeaponFactory::WeaponFactory()+0x24>
  417874: 447c         	add	r4, pc
  417876: 9b01         	ldr	r3, [sp, #0x4]
  417878: 4618         	mov	r0, r3
  41787a: f180 fa77    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1804ee
  41787e: 9b01         	ldr	r3, [sp, #0x4]
  417880: 4a04         	ldr	r2, [pc, #0x10]         @ 0x417894 <WeaponFactory::WeaponFactory()+0x28>
  417882: 58a2         	ldr	r2, [r4, r2]
  417884: 3208         	adds	r2, #0x8
  417886: 601a         	str	r2, [r3]
  417888: 9b01         	ldr	r3, [sp, #0x4]
  41788a: 4618         	mov	r0, r3
  41788c: b002         	add	sp, #0x8
  41788e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41788f); words below are literal-pool data ---
  417890: b194         	cbz	r4, 0x4178b8 <WeaponType::WeaponType()+0x20> @ imm = #0x24
  417892: 0051         	lsls	r1, r2, #0x1
  417894: dfa0         	svc	#0xa0
  417896: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== WeaponFactory::sharedWeaponFactory
//      file offset 0x417984 (= ELF address; Ghidra 0x427984), 80 bytes, Thumb-2
  417984: b538         	push	{r3, r4, r5, lr}
  417986: 4c11         	ldr	r4, [pc, #0x44]         @ 0x4179cc <WeaponFactory::sharedWeaponFactory()+0x48>
  417988: 447c         	add	r4, pc
  41798a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x4179d0 <WeaponFactory::sharedWeaponFactory()+0x4c>
  41798c: 58e3         	ldr	r3, [r4, r3]
  41798e: 681b         	ldr	r3, [r3]
  417990: 2b00         	cmp	r3, #0x0
  417992: d110         	bne	0x4179b6 <WeaponFactory::sharedWeaponFactory()+0x32> @ imm = #0x20
  417994: 2028         	movs	r0, #0x28
  417996: f36f ffe5    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x36ffca
  41799a: 4603         	mov	r3, r0
  41799c: 461d         	mov	r5, r3
  41799e: 4628         	mov	r0, r5
  4179a0: f7ff ff64    	bl	0x41786c <WeaponFactory::WeaponFactory()> @ imm = #-0x138
  4179a4: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x4179d0 <WeaponFactory::sharedWeaponFactory()+0x4c>
  4179a6: 58e3         	ldr	r3, [r4, r3]
  4179a8: 601d         	str	r5, [r3]
  4179aa: 4b09         	ldr	r3, [pc, #0x24]         @ 0x4179d0 <WeaponFactory::sharedWeaponFactory()+0x4c>
  4179ac: 58e3         	ldr	r3, [r4, r3]
  4179ae: 681b         	ldr	r3, [r3]
  4179b0: 4618         	mov	r0, r3
  4179b2: f000 f80f    	bl	0x4179d4 <WeaponFactory::init()> @ imm = #0x1e
  4179b6: 4b06         	ldr	r3, [pc, #0x18]         @ 0x4179d0 <WeaponFactory::sharedWeaponFactory()+0x4c>
  4179b8: 58e3         	ldr	r3, [r4, r3]
  4179ba: 681b         	ldr	r3, [r3]
  4179bc: e004         	b	0x4179c8 <WeaponFactory::sharedWeaponFactory()+0x44> @ imm = #0x8
  4179be: 4628         	mov	r0, r5
  4179c0: f370 fb70    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3706e0
  4179c4: f370 fb72    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3706e4
  4179c8: 4618         	mov	r0, r3
  4179ca: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4179cb); words below are literal-pool data ---
  4179cc: b080         	sub	sp, #0x0
  4179ce: 0051         	lsls	r1, r2, #0x1
  4179d0: dfa8         	svc	#0xa8
  4179d2: ffff e92d    	vtbl.8	d30, {d15, d16}, d29

// ==== WeaponFactory::init
//      file offset 0x4179d4 (= ELF address; Ghidra 0x4279d4), 2460 bytes, Thumb-2
  4179d4: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  4179d8: b0e3         	sub	sp, #0x18c
  4179da: 9031         	str	r0, [sp, #0xc4]
  4179dc: 2001         	movs	r0, #0x1
  4179de: f6cd f993    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132cda
  4179e2: 9030         	str	r0, [sp, #0xc0]
  4179e4: 2002         	movs	r0, #0x2
  4179e6: f6cd f98f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132ce2
  4179ea: 902f         	str	r0, [sp, #0xbc]
  4179ec: 2003         	movs	r0, #0x3
  4179ee: f6cd f98b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132cea
  4179f2: 902e         	str	r0, [sp, #0xb8]
  4179f4: 2004         	movs	r0, #0x4
  4179f6: f6cd f987    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132cf2
  4179fa: 902d         	str	r0, [sp, #0xb4]
  4179fc: 2006         	movs	r0, #0x6
  4179fe: f6cd f983    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132cfa
  417a02: 4680         	mov	r8, r0
  417a04: 2005         	movs	r0, #0x5
  417a06: f6cd f97f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d02
  417a0a: 4681         	mov	r9, r0
  417a0c: 2007         	movs	r0, #0x7
  417a0e: f6cd f97b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d0a
  417a12: 4683         	mov	r11, r0
  417a14: 2008         	movs	r0, #0x8
  417a16: f6cd f977    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d12
  417a1a: 902c         	str	r0, [sp, #0xb0]
  417a1c: 2009         	movs	r0, #0x9
  417a1e: f6cd f973    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d1a
  417a22: 902b         	str	r0, [sp, #0xac]
  417a24: 200a         	movs	r0, #0xa
  417a26: f6cd f96f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d22
  417a2a: 902a         	str	r0, [sp, #0xa8]
  417a2c: 200b         	movs	r0, #0xb
  417a2e: f6cd f96b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d2a
  417a32: 9029         	str	r0, [sp, #0xa4]
  417a34: 2010         	movs	r0, #0x10
  417a36: f6cd f967    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d32
  417a3a: 9028         	str	r0, [sp, #0xa0]
  417a3c: 2011         	movs	r0, #0x11
  417a3e: f6cd f963    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d3a
  417a42: 9027         	str	r0, [sp, #0x9c]
  417a44: 2012         	movs	r0, #0x12
  417a46: f6cd f95f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d42
  417a4a: 9026         	str	r0, [sp, #0x98]
  417a4c: 2013         	movs	r0, #0x13
  417a4e: f6cd f95b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d4a
  417a52: 4682         	mov	r10, r0
  417a54: 2019         	movs	r0, #0x19
  417a56: f6cd f957    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d52
  417a5a: 4607         	mov	r7, r0
  417a5c: 2014         	movs	r0, #0x14
  417a5e: f6cd f953    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d5a
  417a62: 4606         	mov	r6, r0
  417a64: 2015         	movs	r0, #0x15
  417a66: f6cd f94f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d62
  417a6a: 4605         	mov	r5, r0
  417a6c: 2017         	movs	r0, #0x17
  417a6e: f6cd f94b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d6a
  417a72: 4604         	mov	r4, r0
  417a74: 2018         	movs	r0, #0x18
  417a76: f6cd f947    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132d72
  417a7a: 4603         	mov	r3, r0
  417a7c: f8cd 8000    	str.w	r8, [sp]
  417a80: f8cd 9004    	str.w	r9, [sp, #0x4]
  417a84: f8cd b008    	str.w	r11, [sp, #0x8]
  417a88: 9a2c         	ldr	r2, [sp, #0xb0]
  417a8a: 9203         	str	r2, [sp, #0xc]
  417a8c: 9a2b         	ldr	r2, [sp, #0xac]
  417a8e: 9204         	str	r2, [sp, #0x10]
  417a90: 9a2a         	ldr	r2, [sp, #0xa8]
  417a92: 9205         	str	r2, [sp, #0x14]
  417a94: 9a29         	ldr	r2, [sp, #0xa4]
  417a96: 9206         	str	r2, [sp, #0x18]
  417a98: 9a28         	ldr	r2, [sp, #0xa0]
  417a9a: 9207         	str	r2, [sp, #0x1c]
  417a9c: 9a27         	ldr	r2, [sp, #0x9c]
  417a9e: 9208         	str	r2, [sp, #0x20]
  417aa0: 9a26         	ldr	r2, [sp, #0x98]
  417aa2: 9209         	str	r2, [sp, #0x24]
  417aa4: f8cd a028    	str.w	r10, [sp, #0x28]
  417aa8: 970b         	str	r7, [sp, #0x2c]
  417aaa: 960c         	str	r6, [sp, #0x30]
  417aac: 950d         	str	r5, [sp, #0x34]
  417aae: 940e         	str	r4, [sp, #0x38]
  417ab0: 930f         	str	r3, [sp, #0x3c]
  417ab2: 2300         	movs	r3, #0x0
  417ab4: 9310         	str	r3, [sp, #0x40]
  417ab6: 9830         	ldr	r0, [sp, #0xc0]
  417ab8: 992f         	ldr	r1, [sp, #0xbc]
  417aba: 9a2e         	ldr	r2, [sp, #0xb8]
  417abc: 9b2d         	ldr	r3, [sp, #0xb4]
  417abe: f182 f9a7    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x18234e
  417ac2: 4602         	mov	r2, r0
  417ac4: 9b31         	ldr	r3, [sp, #0xc4]
  417ac6: 615a         	str	r2, [r3, #0x14]
  417ac8: 9b31         	ldr	r3, [sp, #0xc4]
  417aca: 695b         	ldr	r3, [r3, #0x14]
  417acc: 4618         	mov	r0, r3
  417ace: f180 fa0b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x180416
  417ad2: 2003         	movs	r0, #0x3
  417ad4: f6cd f918    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132dd0
  417ad8: 4607         	mov	r7, r0
  417ada: 2004         	movs	r0, #0x4
  417adc: f6cd f914    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132dd8
  417ae0: 4606         	mov	r6, r0
  417ae2: 2005         	movs	r0, #0x5
  417ae4: f6cd f910    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132de0
  417ae8: 4605         	mov	r5, r0
  417aea: 2006         	movs	r0, #0x6
  417aec: f6cd f90c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132de8
  417af0: 4604         	mov	r4, r0
  417af2: 2007         	movs	r0, #0x7
  417af4: f6cd f908    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132df0
  417af8: 4683         	mov	r11, r0
  417afa: 2008         	movs	r0, #0x8
  417afc: f6cd f904    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132df8
  417b00: 4682         	mov	r10, r0
  417b02: 2009         	movs	r0, #0x9
  417b04: f6cd f900    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132e00
  417b08: 4681         	mov	r9, r0
  417b0a: 200a         	movs	r0, #0xa
  417b0c: f6cd f8fc    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132e08
  417b10: 4680         	mov	r8, r0
  417b12: 200b         	movs	r0, #0xb
  417b14: f6cd f8f8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132e10
  417b18: 4603         	mov	r3, r0
  417b1a: f8cd b000    	str.w	r11, [sp]
  417b1e: f8cd a004    	str.w	r10, [sp, #0x4]
  417b22: f8cd 9008    	str.w	r9, [sp, #0x8]
  417b26: f8cd 800c    	str.w	r8, [sp, #0xc]
  417b2a: 9304         	str	r3, [sp, #0x10]
  417b2c: 2300         	movs	r3, #0x0
  417b2e: 9305         	str	r3, [sp, #0x14]
  417b30: 4638         	mov	r0, r7
  417b32: 4631         	mov	r1, r6
  417b34: 462a         	mov	r2, r5
  417b36: 4623         	mov	r3, r4
  417b38: f182 f96a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1822d4
  417b3c: 4602         	mov	r2, r0
  417b3e: 9b31         	ldr	r3, [sp, #0xc4]
  417b40: 619a         	str	r2, [r3, #0x18]
  417b42: 9b31         	ldr	r3, [sp, #0xc4]
  417b44: 699b         	ldr	r3, [r3, #0x18]
  417b46: 4618         	mov	r0, r3
  417b48: f180 f9ce    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18039c
  417b4c: 2004         	movs	r0, #0x4
  417b4e: f6cd f8db    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132e4a
  417b52: 4604         	mov	r4, r0
  417b54: 2005         	movs	r0, #0x5
  417b56: f6cd f8d7    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132e52
  417b5a: 4603         	mov	r3, r0
  417b5c: 4620         	mov	r0, r4
  417b5e: 4619         	mov	r1, r3
  417b60: 2200         	movs	r2, #0x0
  417b62: f182 f955    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1822aa
  417b66: 4602         	mov	r2, r0
  417b68: 9b31         	ldr	r3, [sp, #0xc4]
  417b6a: 61da         	str	r2, [r3, #0x1c]
  417b6c: 9b31         	ldr	r3, [sp, #0xc4]
  417b6e: 69db         	ldr	r3, [r3, #0x1c]
  417b70: 4618         	mov	r0, r3
  417b72: f180 f9b9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x180372
  417b76: 2003         	movs	r0, #0x3
  417b78: f6cd f8c6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x132e74
  417b7c: 4603         	mov	r3, r0
  417b7e: 4618         	mov	r0, r3
  417b80: 2100         	movs	r1, #0x0
  417b82: f182 f945    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x18228a
  417b86: 4602         	mov	r2, r0
  417b88: 9b31         	ldr	r3, [sp, #0xc4]
  417b8a: 621a         	str	r2, [r3, #0x20]
  417b8c: 9b31         	ldr	r3, [sp, #0xc4]
  417b8e: 6a1b         	ldr	r3, [r3, #0x20]
  417b90: 4618         	mov	r0, r3
  417b92: f180 f9a9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x180352
  417b96: ab32         	add	r3, sp, #0xc8
  417b98: 4618         	mov	r0, r3
  417b9a: f372 fc2b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372856
  417b9e: aa4a         	add	r2, sp, #0x128
  417ba0: ab32         	add	r3, sp, #0xc8
  417ba2: 4610         	mov	r0, r2
  417ba4: f8df 2768    	ldr.w	r2, [pc, #0x768]        @ 0x418310 <WeaponFactory::init()+0x93c>
  417ba8: 447a         	add	r2, pc
  417baa: 4611         	mov	r1, r2
  417bac: 461a         	mov	r2, r3
  417bae: f39e ff57    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39eeae
  417bb2: ab4a         	add	r3, sp, #0x128
  417bb4: 4618         	mov	r0, r3
  417bb6: 2102         	movs	r1, #0x2
  417bb8: f7ff fec0    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x280
  417bbc: 9025         	str	r0, [sp, #0x94]
  417bbe: ab33         	add	r3, sp, #0xcc
  417bc0: 4618         	mov	r0, r3
  417bc2: f372 fc17    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37282e
  417bc6: aa4b         	add	r2, sp, #0x12c
  417bc8: ab33         	add	r3, sp, #0xcc
  417bca: 4610         	mov	r0, r2
  417bcc: f8df 2744    	ldr.w	r2, [pc, #0x744]        @ 0x418314 <WeaponFactory::init()+0x940>
  417bd0: 447a         	add	r2, pc
  417bd2: 4611         	mov	r1, r2
  417bd4: 461a         	mov	r2, r3
  417bd6: f39e ff43    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ee86
  417bda: ab4b         	add	r3, sp, #0x12c
  417bdc: 4618         	mov	r0, r3
  417bde: 2101         	movs	r1, #0x1
  417be0: f7ff feac    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x2a8
  417be4: 9024         	str	r0, [sp, #0x90]
  417be6: ab34         	add	r3, sp, #0xd0
  417be8: 4618         	mov	r0, r3
  417bea: f372 fc03    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372806
  417bee: aa4c         	add	r2, sp, #0x130
  417bf0: ab34         	add	r3, sp, #0xd0
  417bf2: 4610         	mov	r0, r2
  417bf4: f8df 2720    	ldr.w	r2, [pc, #0x720]        @ 0x418318 <WeaponFactory::init()+0x944>
  417bf8: 447a         	add	r2, pc
  417bfa: 4611         	mov	r1, r2
  417bfc: 461a         	mov	r2, r3
  417bfe: f39e ff2f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ee5e
  417c02: ab4c         	add	r3, sp, #0x130
  417c04: 4618         	mov	r0, r3
  417c06: 210d         	movs	r1, #0xd
  417c08: f7ff fe98    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x2d0
  417c0c: 9023         	str	r0, [sp, #0x8c]
  417c0e: ab35         	add	r3, sp, #0xd4
  417c10: 4618         	mov	r0, r3
  417c12: f372 fbef    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3727de
  417c16: aa4d         	add	r2, sp, #0x134
  417c18: ab35         	add	r3, sp, #0xd4
  417c1a: 4610         	mov	r0, r2
  417c1c: f8df 26fc    	ldr.w	r2, [pc, #0x6fc]        @ 0x41831c <WeaponFactory::init()+0x948>
  417c20: 447a         	add	r2, pc
  417c22: 4611         	mov	r1, r2
  417c24: 461a         	mov	r2, r3
  417c26: f39e ff1b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ee36
  417c2a: ab4d         	add	r3, sp, #0x134
  417c2c: 4618         	mov	r0, r3
  417c2e: 2105         	movs	r1, #0x5
  417c30: f7ff fe84    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x2f8
  417c34: 9022         	str	r0, [sp, #0x88]
  417c36: ab36         	add	r3, sp, #0xd8
  417c38: 4618         	mov	r0, r3
  417c3a: f372 fbdb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3727b6
  417c3e: aa4e         	add	r2, sp, #0x138
  417c40: ab36         	add	r3, sp, #0xd8
  417c42: 4610         	mov	r0, r2
  417c44: f8df 26d8    	ldr.w	r2, [pc, #0x6d8]        @ 0x418320 <WeaponFactory::init()+0x94c>
  417c48: 447a         	add	r2, pc
  417c4a: 4611         	mov	r1, r2
  417c4c: 461a         	mov	r2, r3
  417c4e: f39e ff07    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ee0e
  417c52: ab4e         	add	r3, sp, #0x138
  417c54: 4618         	mov	r0, r3
  417c56: 2106         	movs	r1, #0x6
  417c58: f7ff fe70    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x320
  417c5c: 9021         	str	r0, [sp, #0x84]
  417c5e: ab37         	add	r3, sp, #0xdc
  417c60: 4618         	mov	r0, r3
  417c62: f372 fbc7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37278e
  417c66: aa4f         	add	r2, sp, #0x13c
  417c68: ab37         	add	r3, sp, #0xdc
  417c6a: 4610         	mov	r0, r2
  417c6c: f8df 26b4    	ldr.w	r2, [pc, #0x6b4]        @ 0x418324 <WeaponFactory::init()+0x950>
  417c70: 447a         	add	r2, pc
  417c72: 4611         	mov	r1, r2
  417c74: 461a         	mov	r2, r3
  417c76: f39e fef3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ede6
  417c7a: ab4f         	add	r3, sp, #0x13c
  417c7c: 4618         	mov	r0, r3
  417c7e: 2107         	movs	r1, #0x7
  417c80: f7ff fe5c    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x348
  417c84: 9020         	str	r0, [sp, #0x80]
  417c86: ab38         	add	r3, sp, #0xe0
  417c88: 4618         	mov	r0, r3
  417c8a: f372 fbb3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372766
  417c8e: aa50         	add	r2, sp, #0x140
  417c90: ab38         	add	r3, sp, #0xe0
  417c92: 4610         	mov	r0, r2
  417c94: f8df 2690    	ldr.w	r2, [pc, #0x690]        @ 0x418328 <WeaponFactory::init()+0x954>
  417c98: 447a         	add	r2, pc
  417c9a: 4611         	mov	r1, r2
  417c9c: 461a         	mov	r2, r3
  417c9e: f39e fedf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39edbe
  417ca2: ab50         	add	r3, sp, #0x140
  417ca4: 4618         	mov	r0, r3
  417ca6: 2108         	movs	r1, #0x8
  417ca8: f7ff fe48    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x370
  417cac: 901f         	str	r0, [sp, #0x7c]
  417cae: ab39         	add	r3, sp, #0xe4
  417cb0: 4618         	mov	r0, r3
  417cb2: f372 fb9f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37273e
  417cb6: aa51         	add	r2, sp, #0x144
  417cb8: ab39         	add	r3, sp, #0xe4
  417cba: 4610         	mov	r0, r2
  417cbc: f8df 266c    	ldr.w	r2, [pc, #0x66c]        @ 0x41832c <WeaponFactory::init()+0x958>
  417cc0: 447a         	add	r2, pc
  417cc2: 4611         	mov	r1, r2
  417cc4: 461a         	mov	r2, r3
  417cc6: f39e fecb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ed96
  417cca: ab51         	add	r3, sp, #0x144
  417ccc: 4618         	mov	r0, r3
  417cce: 2104         	movs	r1, #0x4
  417cd0: f7ff fe34    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x398
  417cd4: 901e         	str	r0, [sp, #0x78]
  417cd6: ab3a         	add	r3, sp, #0xe8
  417cd8: 4618         	mov	r0, r3
  417cda: f372 fb8b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372716
  417cde: aa52         	add	r2, sp, #0x148
  417ce0: ab3a         	add	r3, sp, #0xe8
  417ce2: 4610         	mov	r0, r2
  417ce4: f8df 2648    	ldr.w	r2, [pc, #0x648]        @ 0x418330 <WeaponFactory::init()+0x95c>
  417ce8: 447a         	add	r2, pc
  417cea: 4611         	mov	r1, r2
  417cec: 461a         	mov	r2, r3
  417cee: f39e feb7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ed6e
  417cf2: ab52         	add	r3, sp, #0x148
  417cf4: 4618         	mov	r0, r3
  417cf6: 2109         	movs	r1, #0x9
  417cf8: f7ff fe20    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x3c0
  417cfc: 901d         	str	r0, [sp, #0x74]
  417cfe: ab3b         	add	r3, sp, #0xec
  417d00: 4618         	mov	r0, r3
  417d02: f372 fb77    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3726ee
  417d06: aa53         	add	r2, sp, #0x14c
  417d08: ab3b         	add	r3, sp, #0xec
  417d0a: 4610         	mov	r0, r2
  417d0c: f8df 2624    	ldr.w	r2, [pc, #0x624]        @ 0x418334 <WeaponFactory::init()+0x960>
  417d10: 447a         	add	r2, pc
  417d12: 4611         	mov	r1, r2
  417d14: 461a         	mov	r2, r3
  417d16: f39e fea3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ed46
  417d1a: ab53         	add	r3, sp, #0x14c
  417d1c: 4618         	mov	r0, r3
  417d1e: 210a         	movs	r1, #0xa
  417d20: f7ff fe0c    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x3e8
  417d24: 901c         	str	r0, [sp, #0x70]
  417d26: ab3c         	add	r3, sp, #0xf0
  417d28: 4618         	mov	r0, r3
  417d2a: f372 fb63    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3726c6
  417d2e: aa54         	add	r2, sp, #0x150
  417d30: ab3c         	add	r3, sp, #0xf0
  417d32: 4610         	mov	r0, r2
  417d34: f8df 2600    	ldr.w	r2, [pc, #0x600]        @ 0x418338 <WeaponFactory::init()+0x964>
  417d38: 447a         	add	r2, pc
  417d3a: 4611         	mov	r1, r2
  417d3c: 461a         	mov	r2, r3
  417d3e: f39e fe8f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ed1e
  417d42: ab54         	add	r3, sp, #0x150
  417d44: 4618         	mov	r0, r3
  417d46: 2103         	movs	r1, #0x3
  417d48: f7ff fdf8    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x410
  417d4c: 901b         	str	r0, [sp, #0x6c]
  417d4e: ab3d         	add	r3, sp, #0xf4
  417d50: 4618         	mov	r0, r3
  417d52: f372 fb4f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37269e
  417d56: aa55         	add	r2, sp, #0x154
  417d58: ab3d         	add	r3, sp, #0xf4
  417d5a: 4610         	mov	r0, r2
  417d5c: f8df 25dc    	ldr.w	r2, [pc, #0x5dc]        @ 0x41833c <WeaponFactory::init()+0x968>
  417d60: 447a         	add	r2, pc
  417d62: 4611         	mov	r1, r2
  417d64: 461a         	mov	r2, r3
  417d66: f39e fe7b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ecf6
  417d6a: ab55         	add	r3, sp, #0x154
  417d6c: 4618         	mov	r0, r3
  417d6e: 210b         	movs	r1, #0xb
  417d70: f7ff fde4    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x438
  417d74: 901a         	str	r0, [sp, #0x68]
  417d76: ab3e         	add	r3, sp, #0xf8
  417d78: 4618         	mov	r0, r3
  417d7a: f372 fb3b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372676
  417d7e: ab56         	add	r3, sp, #0x158
  417d80: aa3e         	add	r2, sp, #0xf8
  417d82: 4618         	mov	r0, r3
  417d84: f8df 35b8    	ldr.w	r3, [pc, #0x5b8]        @ 0x418340 <WeaponFactory::init()+0x96c>
  417d88: 447b         	add	r3, pc
  417d8a: 4619         	mov	r1, r3
  417d8c: f39e fe68    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ecd0
  417d90: ab56         	add	r3, sp, #0x158
  417d92: 4618         	mov	r0, r3
  417d94: 2110         	movs	r1, #0x10
  417d96: f7ff fdd1    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x45e
  417d9a: 9019         	str	r0, [sp, #0x64]
  417d9c: ab3f         	add	r3, sp, #0xfc
  417d9e: 4618         	mov	r0, r3
  417da0: f372 fb28    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372650
  417da4: ab57         	add	r3, sp, #0x15c
  417da6: aa3f         	add	r2, sp, #0xfc
  417da8: 4618         	mov	r0, r3
  417daa: f8df 3598    	ldr.w	r3, [pc, #0x598]        @ 0x418344 <WeaponFactory::init()+0x970>
  417dae: 447b         	add	r3, pc
  417db0: 4619         	mov	r1, r3
  417db2: f39e fe55    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ecaa
  417db6: ab57         	add	r3, sp, #0x15c
  417db8: 4618         	mov	r0, r3
  417dba: 2111         	movs	r1, #0x11
  417dbc: f7ff fdbe    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x484
  417dc0: 9018         	str	r0, [sp, #0x60]
  417dc2: ab40         	add	r3, sp, #0x100
  417dc4: 4618         	mov	r0, r3
  417dc6: f372 fb15    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37262a
  417dca: ab58         	add	r3, sp, #0x160
  417dcc: aa40         	add	r2, sp, #0x100
  417dce: 4618         	mov	r0, r3
  417dd0: f8df 3574    	ldr.w	r3, [pc, #0x574]        @ 0x418348 <WeaponFactory::init()+0x974>
  417dd4: 447b         	add	r3, pc
  417dd6: 4619         	mov	r1, r3
  417dd8: f39e fe42    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ec84
  417ddc: ab58         	add	r3, sp, #0x160
  417dde: 4618         	mov	r0, r3
  417de0: 2112         	movs	r1, #0x12
  417de2: f7ff fdab    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x4aa
  417de6: 9017         	str	r0, [sp, #0x5c]
  417de8: ab41         	add	r3, sp, #0x104
  417dea: 4618         	mov	r0, r3
  417dec: f372 fb02    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372604
  417df0: ab59         	add	r3, sp, #0x164
  417df2: aa41         	add	r2, sp, #0x104
  417df4: 4618         	mov	r0, r3
  417df6: f8df 3554    	ldr.w	r3, [pc, #0x554]        @ 0x41834c <WeaponFactory::init()+0x978>
  417dfa: 447b         	add	r3, pc
  417dfc: 4619         	mov	r1, r3
  417dfe: f39e fe2f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ec5e
  417e02: ab59         	add	r3, sp, #0x164
  417e04: 4618         	mov	r0, r3
  417e06: 2113         	movs	r1, #0x13
  417e08: f7ff fd98    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x4d0
  417e0c: 4683         	mov	r11, r0
  417e0e: ab42         	add	r3, sp, #0x108
  417e10: 4618         	mov	r0, r3
  417e12: f372 faef    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3725de
  417e16: ab5a         	add	r3, sp, #0x168
  417e18: aa42         	add	r2, sp, #0x108
  417e1a: 4618         	mov	r0, r3
  417e1c: f8df 3530    	ldr.w	r3, [pc, #0x530]        @ 0x418350 <WeaponFactory::init()+0x97c>
  417e20: 447b         	add	r3, pc
  417e22: 4619         	mov	r1, r3
  417e24: f39e fe1c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ec38
  417e28: ab5a         	add	r3, sp, #0x168
  417e2a: 4618         	mov	r0, r3
  417e2c: 2119         	movs	r1, #0x19
  417e2e: f7ff fd85    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x4f6
  417e32: 4682         	mov	r10, r0
  417e34: ab43         	add	r3, sp, #0x10c
  417e36: 4618         	mov	r0, r3
  417e38: f372 fadc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3725b8
  417e3c: ab5b         	add	r3, sp, #0x16c
  417e3e: aa43         	add	r2, sp, #0x10c
  417e40: 4618         	mov	r0, r3
  417e42: f8df 3510    	ldr.w	r3, [pc, #0x510]        @ 0x418354 <WeaponFactory::init()+0x980>
  417e46: 447b         	add	r3, pc
  417e48: 4619         	mov	r1, r3
  417e4a: f39e fe09    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ec12
  417e4e: ab5b         	add	r3, sp, #0x16c
  417e50: 4618         	mov	r0, r3
  417e52: 2118         	movs	r1, #0x18
  417e54: f7ff fd72    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x51c
  417e58: 4681         	mov	r9, r0
  417e5a: ab44         	add	r3, sp, #0x110
  417e5c: 4618         	mov	r0, r3
  417e5e: f372 fac9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372592
  417e62: ab5c         	add	r3, sp, #0x170
  417e64: aa44         	add	r2, sp, #0x110
  417e66: 4618         	mov	r0, r3
  417e68: f8df 34ec    	ldr.w	r3, [pc, #0x4ec]        @ 0x418358 <WeaponFactory::init()+0x984>
  417e6c: 447b         	add	r3, pc
  417e6e: 4619         	mov	r1, r3
  417e70: f39e fdf6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ebec
  417e74: ab5c         	add	r3, sp, #0x170
  417e76: 4618         	mov	r0, r3
  417e78: 210c         	movs	r1, #0xc
  417e7a: f7ff fd5f    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x542
  417e7e: 4680         	mov	r8, r0
  417e80: ab45         	add	r3, sp, #0x114
  417e82: 4618         	mov	r0, r3
  417e84: f372 fab6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37256c
  417e88: ab5d         	add	r3, sp, #0x174
  417e8a: aa45         	add	r2, sp, #0x114
  417e8c: 4618         	mov	r0, r3
  417e8e: f8df 34cc    	ldr.w	r3, [pc, #0x4cc]        @ 0x41835c <WeaponFactory::init()+0x988>
  417e92: 447b         	add	r3, pc
  417e94: 4619         	mov	r1, r3
  417e96: f39e fde3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ebc6
  417e9a: ab5d         	add	r3, sp, #0x174
  417e9c: 4618         	mov	r0, r3
  417e9e: 210e         	movs	r1, #0xe
  417ea0: f7ff fd4c    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x568
  417ea4: 4607         	mov	r7, r0
  417ea6: ab46         	add	r3, sp, #0x118
  417ea8: 4618         	mov	r0, r3
  417eaa: f372 faa3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372546
  417eae: ab5e         	add	r3, sp, #0x178
  417eb0: aa46         	add	r2, sp, #0x118
  417eb2: 4618         	mov	r0, r3
  417eb4: f8df 34a8    	ldr.w	r3, [pc, #0x4a8]        @ 0x418360 <WeaponFactory::init()+0x98c>
  417eb8: 447b         	add	r3, pc
  417eba: 4619         	mov	r1, r3
  417ebc: f39e fdd0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39eba0
  417ec0: ab5e         	add	r3, sp, #0x178
  417ec2: 4618         	mov	r0, r3
  417ec4: 210f         	movs	r1, #0xf
  417ec6: f7ff fd39    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x58e
  417eca: 4606         	mov	r6, r0
  417ecc: ab47         	add	r3, sp, #0x11c
  417ece: 4618         	mov	r0, r3
  417ed0: f372 fa90    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x372520
  417ed4: ab5f         	add	r3, sp, #0x17c
  417ed6: aa47         	add	r2, sp, #0x11c
  417ed8: 4618         	mov	r0, r3
  417eda: f8df 3488    	ldr.w	r3, [pc, #0x488]        @ 0x418364 <WeaponFactory::init()+0x990>
  417ede: 447b         	add	r3, pc
  417ee0: 4619         	mov	r1, r3
  417ee2: f39e fdbd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39eb7a
  417ee6: ab5f         	add	r3, sp, #0x17c
  417ee8: 4618         	mov	r0, r3
  417eea: 2114         	movs	r1, #0x14
  417eec: f7ff fd26    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x5b4
  417ef0: 4605         	mov	r5, r0
  417ef2: ab48         	add	r3, sp, #0x120
  417ef4: 4618         	mov	r0, r3
  417ef6: f372 fa7d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3724fa
  417efa: ab60         	add	r3, sp, #0x180
  417efc: aa48         	add	r2, sp, #0x120
  417efe: 4618         	mov	r0, r3
  417f00: f8df 3464    	ldr.w	r3, [pc, #0x464]        @ 0x418368 <WeaponFactory::init()+0x994>
  417f04: 447b         	add	r3, pc
  417f06: 4619         	mov	r1, r3
  417f08: f39e fdaa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39eb54
  417f0c: ab60         	add	r3, sp, #0x180
  417f0e: 4618         	mov	r0, r3
  417f10: 2115         	movs	r1, #0x15
  417f12: f7ff fd13    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x5da
  417f16: 4604         	mov	r4, r0
  417f18: ab49         	add	r3, sp, #0x124
  417f1a: 4618         	mov	r0, r3
  417f1c: f372 fa6a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3724d4
  417f20: ab61         	add	r3, sp, #0x184
  417f22: aa49         	add	r2, sp, #0x124
  417f24: 4618         	mov	r0, r3
  417f26: f8df 3444    	ldr.w	r3, [pc, #0x444]        @ 0x41836c <WeaponFactory::init()+0x998>
  417f2a: 447b         	add	r3, pc
  417f2c: 4619         	mov	r1, r3
  417f2e: f39e fd97    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39eb2e
  417f32: ab61         	add	r3, sp, #0x184
  417f34: 4618         	mov	r0, r3
  417f36: 2117         	movs	r1, #0x17
  417f38: f7ff fd00    	bl	0x41793c <WeaponType::initWithName(std::string, ItemType)> @ imm = #-0x600
  417f3c: 4603         	mov	r3, r0
  417f3e: 9a21         	ldr	r2, [sp, #0x84]
  417f40: 9200         	str	r2, [sp]
  417f42: 9a20         	ldr	r2, [sp, #0x80]
  417f44: 9201         	str	r2, [sp, #0x4]
  417f46: 9a1f         	ldr	r2, [sp, #0x7c]
  417f48: 9202         	str	r2, [sp, #0x8]
  417f4a: 9a1e         	ldr	r2, [sp, #0x78]
  417f4c: 9203         	str	r2, [sp, #0xc]
  417f4e: 9a1d         	ldr	r2, [sp, #0x74]
  417f50: 9204         	str	r2, [sp, #0x10]
  417f52: 9a1c         	ldr	r2, [sp, #0x70]
  417f54: 9205         	str	r2, [sp, #0x14]
  417f56: 9a1b         	ldr	r2, [sp, #0x6c]
  417f58: 9206         	str	r2, [sp, #0x18]
  417f5a: 9a1a         	ldr	r2, [sp, #0x68]
  417f5c: 9207         	str	r2, [sp, #0x1c]
  417f5e: 9a19         	ldr	r2, [sp, #0x64]
  417f60: 9208         	str	r2, [sp, #0x20]
  417f62: 9a18         	ldr	r2, [sp, #0x60]
  417f64: 9209         	str	r2, [sp, #0x24]
  417f66: 9a17         	ldr	r2, [sp, #0x5c]
  417f68: 920a         	str	r2, [sp, #0x28]
  417f6a: f8cd b02c    	str.w	r11, [sp, #0x2c]
  417f6e: f8cd a030    	str.w	r10, [sp, #0x30]
  417f72: f8cd 9034    	str.w	r9, [sp, #0x34]
  417f76: f8cd 8038    	str.w	r8, [sp, #0x38]
  417f7a: 970f         	str	r7, [sp, #0x3c]
  417f7c: 9610         	str	r6, [sp, #0x40]
  417f7e: 9511         	str	r5, [sp, #0x44]
  417f80: 9412         	str	r4, [sp, #0x48]
  417f82: 9313         	str	r3, [sp, #0x4c]
  417f84: 2300         	movs	r3, #0x0
  417f86: 9314         	str	r3, [sp, #0x50]
  417f88: 9825         	ldr	r0, [sp, #0x94]
  417f8a: 9924         	ldr	r1, [sp, #0x90]
  417f8c: 9a23         	ldr	r2, [sp, #0x8c]
  417f8e: 9b22         	ldr	r3, [sp, #0x88]
  417f90: f181 ff3e    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x181e7c
  417f94: 4602         	mov	r2, r0
  417f96: 9b31         	ldr	r3, [sp, #0xc4]
  417f98: 625a         	str	r2, [r3, #0x24]
  417f9a: ab61         	add	r3, sp, #0x184
  417f9c: 4618         	mov	r0, r3
  417f9e: f39d fcb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d972
  417fa2: ab49         	add	r3, sp, #0x124
  417fa4: 4618         	mov	r0, r3
  417fa6: f372 fa29    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372452
  417faa: ab60         	add	r3, sp, #0x180
  417fac: 4618         	mov	r0, r3
  417fae: f39d fcb1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d962
  417fb2: ab48         	add	r3, sp, #0x120
  417fb4: 4618         	mov	r0, r3
  417fb6: f372 fa21    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372442
  417fba: ab5f         	add	r3, sp, #0x17c
  417fbc: 4618         	mov	r0, r3
  417fbe: f39d fca9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d952
  417fc2: ab47         	add	r3, sp, #0x11c
  417fc4: 4618         	mov	r0, r3
  417fc6: f372 fa19    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372432
  417fca: ab5e         	add	r3, sp, #0x178
  417fcc: 4618         	mov	r0, r3
  417fce: f39d fca1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d942
  417fd2: ab46         	add	r3, sp, #0x118
  417fd4: 4618         	mov	r0, r3
  417fd6: f372 fa11    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372422
  417fda: ab5d         	add	r3, sp, #0x174
  417fdc: 4618         	mov	r0, r3
  417fde: f39d fc99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d932
  417fe2: ab45         	add	r3, sp, #0x114
  417fe4: 4618         	mov	r0, r3
  417fe6: f372 fa09    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372412
  417fea: ab5c         	add	r3, sp, #0x170
  417fec: 4618         	mov	r0, r3
  417fee: f39d fc91    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d922
  417ff2: ab44         	add	r3, sp, #0x110
  417ff4: 4618         	mov	r0, r3
  417ff6: f372 fa01    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372402
  417ffa: ab5b         	add	r3, sp, #0x16c
  417ffc: 4618         	mov	r0, r3
  417ffe: f39d fc89    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d912
  418002: ab43         	add	r3, sp, #0x10c
  418004: 4618         	mov	r0, r3
  418006: f372 f9f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3723f2
  41800a: ab5a         	add	r3, sp, #0x168
  41800c: 4618         	mov	r0, r3
  41800e: f39d fc81    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d902
  418012: ab42         	add	r3, sp, #0x108
  418014: 4618         	mov	r0, r3
  418016: f372 f9f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3723e2
  41801a: ab59         	add	r3, sp, #0x164
  41801c: 4618         	mov	r0, r3
  41801e: f39d fc79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d8f2
  418022: ab41         	add	r3, sp, #0x104
  418024: 4618         	mov	r0, r3
  418026: f372 f9e9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3723d2
  41802a: ab58         	add	r3, sp, #0x160
  41802c: 4618         	mov	r0, r3
  41802e: f39d fc71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d8e2
  418032: ab40         	add	r3, sp, #0x100
  418034: 4618         	mov	r0, r3
  418036: f372 f9e1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3723c2
  41803a: ab57         	add	r3, sp, #0x15c
  41803c: 4618         	mov	r0, r3
  41803e: f39d fc69    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d8d2
  418042: ab3f         	add	r3, sp, #0xfc
  418044: 4618         	mov	r0, r3
  418046: f372 f9d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3723b2
  41804a: ab56         	add	r3, sp, #0x158
  41804c: 4618         	mov	r0, r3
  41804e: f39d fc61    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d8c2
  418052: ab3e         	add	r3, sp, #0xf8
  418054: 4618         	mov	r0, r3
  418056: f372 f9d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3723a2
  41805a: ab55         	add	r3, sp, #0x154
  41805c: 4618         	mov	r0, r3
  41805e: f39d fc59    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d8b2
  418062: ab3d         	add	r3, sp, #0xf4
  418064: 4618         	mov	r0, r3
  418066: f372 f9c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372392
  41806a: ab54         	add	r3, sp, #0x150
  41806c: 4618         	mov	r0, r3
  41806e: f39d fc51    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d8a2
  418072: ab3c         	add	r3, sp, #0xf0
  418074: 4618         	mov	r0, r3
  418076: f372 f9c1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372382
  41807a: ab53         	add	r3, sp, #0x14c
  41807c: 4618         	mov	r0, r3
  41807e: f39d fc49    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d892
  418082: ab3b         	add	r3, sp, #0xec
  418084: 4618         	mov	r0, r3
  418086: f372 f9b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372372
  41808a: ab52         	add	r3, sp, #0x148
  41808c: 4618         	mov	r0, r3
  41808e: f39d fc41    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d882
  418092: ab3a         	add	r3, sp, #0xe8
  418094: 4618         	mov	r0, r3
  418096: f372 f9b1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372362
  41809a: ab51         	add	r3, sp, #0x144
  41809c: 4618         	mov	r0, r3
  41809e: f39d fc39    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d872
  4180a2: ab39         	add	r3, sp, #0xe4
  4180a4: 4618         	mov	r0, r3
  4180a6: f372 f9a9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372352
  4180aa: ab50         	add	r3, sp, #0x140
  4180ac: 4618         	mov	r0, r3
  4180ae: f39d fc31    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d862
  4180b2: ab38         	add	r3, sp, #0xe0
  4180b4: 4618         	mov	r0, r3
  4180b6: f372 f9a1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372342
  4180ba: ab4f         	add	r3, sp, #0x13c
  4180bc: 4618         	mov	r0, r3
  4180be: f39d fc29    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d852
  4180c2: ab37         	add	r3, sp, #0xdc
  4180c4: 4618         	mov	r0, r3
  4180c6: f372 f999    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372332
  4180ca: ab4e         	add	r3, sp, #0x138
  4180cc: 4618         	mov	r0, r3
  4180ce: f39d fc21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d842
  4180d2: ab36         	add	r3, sp, #0xd8
  4180d4: 4618         	mov	r0, r3
  4180d6: f372 f991    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372322
  4180da: ab4d         	add	r3, sp, #0x134
  4180dc: 4618         	mov	r0, r3
  4180de: f39d fc19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d832
  4180e2: ab35         	add	r3, sp, #0xd4
  4180e4: 4618         	mov	r0, r3
  4180e6: f372 f989    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372312
  4180ea: ab4c         	add	r3, sp, #0x130
  4180ec: 4618         	mov	r0, r3
  4180ee: f39d fc11    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d822
  4180f2: ab34         	add	r3, sp, #0xd0
  4180f4: 4618         	mov	r0, r3
  4180f6: f372 f981    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372302
  4180fa: ab4b         	add	r3, sp, #0x12c
  4180fc: 4618         	mov	r0, r3
  4180fe: f39d fc09    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d812
  418102: ab33         	add	r3, sp, #0xcc
  418104: 4618         	mov	r0, r3
  418106: f372 f979    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3722f2
  41810a: ab4a         	add	r3, sp, #0x128
  41810c: 4618         	mov	r0, r3
  41810e: f39d fc01    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d802
  418112: ab32         	add	r3, sp, #0xc8
  418114: 4618         	mov	r0, r3
  418116: f372 f971    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3722e2
  41811a: 9b31         	ldr	r3, [sp, #0xc4]
  41811c: 6a5b         	ldr	r3, [r3, #0x24]
  41811e: 4618         	mov	r0, r3
  418120: f17f fee2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17fdc4
  418124: e0f0         	b	0x418308 <WeaponFactory::init()+0x934> @ imm = #0x1e0
  418126: ab61         	add	r3, sp, #0x184
  418128: 4618         	mov	r0, r3
  41812a: f39d fbf3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d7e6
  41812e: e7ff         	b	0x418130 <WeaponFactory::init()+0x75c> @ imm = #-0x2
  418130: ab49         	add	r3, sp, #0x124
  418132: 4618         	mov	r0, r3
  418134: f372 f962    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3722c4
  418138: e7ff         	b	0x41813a <WeaponFactory::init()+0x766> @ imm = #-0x2
  41813a: ab60         	add	r3, sp, #0x180
  41813c: 4618         	mov	r0, r3
  41813e: f39d fbe9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d7d2
  418142: e7ff         	b	0x418144 <WeaponFactory::init()+0x770> @ imm = #-0x2
  418144: ab48         	add	r3, sp, #0x120
  418146: 4618         	mov	r0, r3
  418148: f372 f958    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3722b0
  41814c: e7ff         	b	0x41814e <WeaponFactory::init()+0x77a> @ imm = #-0x2
  41814e: ab5f         	add	r3, sp, #0x17c
  418150: 4618         	mov	r0, r3
  418152: f39d fbdf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d7be
  418156: e7ff         	b	0x418158 <WeaponFactory::init()+0x784> @ imm = #-0x2
  418158: ab47         	add	r3, sp, #0x11c
  41815a: 4618         	mov	r0, r3
  41815c: f372 f94e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37229c
  418160: e7ff         	b	0x418162 <WeaponFactory::init()+0x78e> @ imm = #-0x2
  418162: ab5e         	add	r3, sp, #0x178
  418164: 4618         	mov	r0, r3
  418166: f39d fbd5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d7aa
  41816a: e7ff         	b	0x41816c <WeaponFactory::init()+0x798> @ imm = #-0x2
  41816c: ab46         	add	r3, sp, #0x118
  41816e: 4618         	mov	r0, r3
  418170: f372 f944    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372288
  418174: e7ff         	b	0x418176 <WeaponFactory::init()+0x7a2> @ imm = #-0x2
  418176: ab5d         	add	r3, sp, #0x174
  418178: 4618         	mov	r0, r3
  41817a: f39d fbcb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d796
  41817e: e7ff         	b	0x418180 <WeaponFactory::init()+0x7ac> @ imm = #-0x2
  418180: ab45         	add	r3, sp, #0x114
  418182: 4618         	mov	r0, r3
  418184: f372 f93a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372274
  418188: e7ff         	b	0x41818a <WeaponFactory::init()+0x7b6> @ imm = #-0x2
  41818a: ab5c         	add	r3, sp, #0x170
  41818c: 4618         	mov	r0, r3
  41818e: f39d fbc1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d782
  418192: e7ff         	b	0x418194 <WeaponFactory::init()+0x7c0> @ imm = #-0x2
  418194: ab44         	add	r3, sp, #0x110
  418196: 4618         	mov	r0, r3
  418198: f372 f930    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372260
  41819c: e7ff         	b	0x41819e <WeaponFactory::init()+0x7ca> @ imm = #-0x2
  41819e: ab5b         	add	r3, sp, #0x16c
  4181a0: 4618         	mov	r0, r3
  4181a2: f39d fbb7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d76e
  4181a6: e7ff         	b	0x4181a8 <WeaponFactory::init()+0x7d4> @ imm = #-0x2
  4181a8: ab43         	add	r3, sp, #0x10c
  4181aa: 4618         	mov	r0, r3
  4181ac: f372 f926    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37224c
  4181b0: e7ff         	b	0x4181b2 <WeaponFactory::init()+0x7de> @ imm = #-0x2
  4181b2: ab5a         	add	r3, sp, #0x168
  4181b4: 4618         	mov	r0, r3
  4181b6: f39d fbad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d75a
  4181ba: e7ff         	b	0x4181bc <WeaponFactory::init()+0x7e8> @ imm = #-0x2
  4181bc: ab42         	add	r3, sp, #0x108
  4181be: 4618         	mov	r0, r3
  4181c0: f372 f91c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372238
  4181c4: e7ff         	b	0x4181c6 <WeaponFactory::init()+0x7f2> @ imm = #-0x2
  4181c6: ab59         	add	r3, sp, #0x164
  4181c8: 4618         	mov	r0, r3
  4181ca: f39d fba3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d746
  4181ce: e7ff         	b	0x4181d0 <WeaponFactory::init()+0x7fc> @ imm = #-0x2
  4181d0: ab41         	add	r3, sp, #0x104
  4181d2: 4618         	mov	r0, r3
  4181d4: f372 f912    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372224
  4181d8: e7ff         	b	0x4181da <WeaponFactory::init()+0x806> @ imm = #-0x2
  4181da: ab58         	add	r3, sp, #0x160
  4181dc: 4618         	mov	r0, r3
  4181de: f39d fb99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d732
  4181e2: e7ff         	b	0x4181e4 <WeaponFactory::init()+0x810> @ imm = #-0x2
  4181e4: ab40         	add	r3, sp, #0x100
  4181e6: 4618         	mov	r0, r3
  4181e8: f372 f908    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372210
  4181ec: e7ff         	b	0x4181ee <WeaponFactory::init()+0x81a> @ imm = #-0x2
  4181ee: ab57         	add	r3, sp, #0x15c
  4181f0: 4618         	mov	r0, r3
  4181f2: f39d fb8f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d71e
  4181f6: e7ff         	b	0x4181f8 <WeaponFactory::init()+0x824> @ imm = #-0x2
  4181f8: ab3f         	add	r3, sp, #0xfc
  4181fa: 4618         	mov	r0, r3
  4181fc: f372 f8fe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3721fc
  418200: e7ff         	b	0x418202 <WeaponFactory::init()+0x82e> @ imm = #-0x2
  418202: ab56         	add	r3, sp, #0x158
  418204: 4618         	mov	r0, r3
  418206: f39d fb85    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d70a
  41820a: e7ff         	b	0x41820c <WeaponFactory::init()+0x838> @ imm = #-0x2
  41820c: ab3e         	add	r3, sp, #0xf8
  41820e: 4618         	mov	r0, r3
  418210: f372 f8f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3721e8
  418214: e7ff         	b	0x418216 <WeaponFactory::init()+0x842> @ imm = #-0x2
  418216: ab55         	add	r3, sp, #0x154
  418218: 4618         	mov	r0, r3
  41821a: f39d fb7b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d6f6
  41821e: e7ff         	b	0x418220 <WeaponFactory::init()+0x84c> @ imm = #-0x2
  418220: ab3d         	add	r3, sp, #0xf4
  418222: 4618         	mov	r0, r3
  418224: f372 f8ea    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3721d4
  418228: e7ff         	b	0x41822a <WeaponFactory::init()+0x856> @ imm = #-0x2
  41822a: ab54         	add	r3, sp, #0x150
  41822c: 4618         	mov	r0, r3
  41822e: f39d fb71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d6e2
  418232: e7ff         	b	0x418234 <WeaponFactory::init()+0x860> @ imm = #-0x2
  418234: ab3c         	add	r3, sp, #0xf0
  418236: 4618         	mov	r0, r3
  418238: f372 f8e0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3721c0
  41823c: e7ff         	b	0x41823e <WeaponFactory::init()+0x86a> @ imm = #-0x2
  41823e: ab53         	add	r3, sp, #0x14c
  418240: 4618         	mov	r0, r3
  418242: f39d fb67    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d6ce
  418246: e7ff         	b	0x418248 <WeaponFactory::init()+0x874> @ imm = #-0x2
  418248: ab3b         	add	r3, sp, #0xec
  41824a: 4618         	mov	r0, r3
  41824c: f372 f8d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3721ac
  418250: e7ff         	b	0x418252 <WeaponFactory::init()+0x87e> @ imm = #-0x2
  418252: ab52         	add	r3, sp, #0x148
  418254: 4618         	mov	r0, r3
  418256: f39d fb5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d6ba
  41825a: e7ff         	b	0x41825c <WeaponFactory::init()+0x888> @ imm = #-0x2
  41825c: ab3a         	add	r3, sp, #0xe8
  41825e: 4618         	mov	r0, r3
  418260: f372 f8cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372198
  418264: e7ff         	b	0x418266 <WeaponFactory::init()+0x892> @ imm = #-0x2
  418266: ab51         	add	r3, sp, #0x144
  418268: 4618         	mov	r0, r3
  41826a: f39d fb53    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d6a6
  41826e: e7ff         	b	0x418270 <WeaponFactory::init()+0x89c> @ imm = #-0x2
  418270: ab39         	add	r3, sp, #0xe4
  418272: 4618         	mov	r0, r3
  418274: f372 f8c2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372184
  418278: e7ff         	b	0x41827a <WeaponFactory::init()+0x8a6> @ imm = #-0x2
  41827a: ab50         	add	r3, sp, #0x140
  41827c: 4618         	mov	r0, r3
  41827e: f39d fb49    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d692
  418282: e7ff         	b	0x418284 <WeaponFactory::init()+0x8b0> @ imm = #-0x2
  418284: ab38         	add	r3, sp, #0xe0
  418286: 4618         	mov	r0, r3
  418288: f372 f8b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372170
  41828c: e7ff         	b	0x41828e <WeaponFactory::init()+0x8ba> @ imm = #-0x2
  41828e: ab4f         	add	r3, sp, #0x13c
  418290: 4618         	mov	r0, r3
  418292: f39d fb3f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d67e
  418296: e7ff         	b	0x418298 <WeaponFactory::init()+0x8c4> @ imm = #-0x2
  418298: ab37         	add	r3, sp, #0xdc
  41829a: 4618         	mov	r0, r3
  41829c: f372 f8ae    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37215c
  4182a0: e7ff         	b	0x4182a2 <WeaponFactory::init()+0x8ce> @ imm = #-0x2
  4182a2: ab4e         	add	r3, sp, #0x138
  4182a4: 4618         	mov	r0, r3
  4182a6: f39d fb35    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d66a
  4182aa: e7ff         	b	0x4182ac <WeaponFactory::init()+0x8d8> @ imm = #-0x2
  4182ac: ab36         	add	r3, sp, #0xd8
  4182ae: 4618         	mov	r0, r3
  4182b0: f372 f8a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372148
  4182b4: e7ff         	b	0x4182b6 <WeaponFactory::init()+0x8e2> @ imm = #-0x2
  4182b6: ab4d         	add	r3, sp, #0x134
  4182b8: 4618         	mov	r0, r3
  4182ba: f39d fb2b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d656
  4182be: e7ff         	b	0x4182c0 <WeaponFactory::init()+0x8ec> @ imm = #-0x2
  4182c0: ab35         	add	r3, sp, #0xd4
  4182c2: 4618         	mov	r0, r3
  4182c4: f372 f89a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372134
  4182c8: e7ff         	b	0x4182ca <WeaponFactory::init()+0x8f6> @ imm = #-0x2
  4182ca: ab4c         	add	r3, sp, #0x130
  4182cc: 4618         	mov	r0, r3
  4182ce: f39d fb21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d642
  4182d2: e7ff         	b	0x4182d4 <WeaponFactory::init()+0x900> @ imm = #-0x2
  4182d4: ab34         	add	r3, sp, #0xd0
  4182d6: 4618         	mov	r0, r3
  4182d8: f372 f890    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x372120
  4182dc: e7ff         	b	0x4182de <WeaponFactory::init()+0x90a> @ imm = #-0x2
  4182de: ab4b         	add	r3, sp, #0x12c
  4182e0: 4618         	mov	r0, r3
  4182e2: f39d fb17    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d62e
  4182e6: e7ff         	b	0x4182e8 <WeaponFactory::init()+0x914> @ imm = #-0x2
  4182e8: ab33         	add	r3, sp, #0xcc
  4182ea: 4618         	mov	r0, r3
  4182ec: f372 f886    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37210c
  4182f0: e7ff         	b	0x4182f2 <WeaponFactory::init()+0x91e> @ imm = #-0x2
  4182f2: ab4a         	add	r3, sp, #0x128
  4182f4: 4618         	mov	r0, r3
  4182f6: f39d fb0d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39d61a
  4182fa: e7ff         	b	0x4182fc <WeaponFactory::init()+0x928> @ imm = #-0x2
  4182fc: ab32         	add	r3, sp, #0xc8
  4182fe: 4618         	mov	r0, r3
  418300: f372 f87c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3720f8
  418304: f36f fed2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36fda4
  418308: b063         	add	sp, #0x18c
  41830a: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x41830d); words below are literal-pool data ---
  41830e: bf00         	nop
  418310: 3a74         	subs	r2, #0x74
  418312: 003c         	movs	r4, r7
  418314: 3a58         	subs	r2, #0x58
  418316: 003c         	movs	r4, r7
  418318: 3a38         	subs	r2, #0x38
  41831a: 003c         	movs	r4, r7
  41831c: 3a18         	subs	r2, #0x18
  41831e: 003c         	movs	r4, r7
  418320: 39f4         	subs	r1, #0xf4
  418322: 003c         	movs	r4, r7
  418324: 39d0         	subs	r1, #0xd0
  418326: 003c         	movs	r4, r7
  418328: 39b0         	subs	r1, #0xb0
  41832a: 003c         	movs	r4, r7
  41832c: 398c         	subs	r1, #0x8c
  41832e: 003c         	movs	r4, r7
  418330: 396c         	subs	r1, #0x6c
  418332: 003c         	movs	r4, r7
  418334: 394c         	subs	r1, #0x4c
  418336: 003c         	movs	r4, r7
  418338: 392c         	subs	r1, #0x2c
  41833a: 003c         	movs	r4, r7
  41833c: 390c         	subs	r1, #0xc
  41833e: 003c         	movs	r4, r7
  418340: 38ec         	subs	r0, #0xec
  418342: 003c         	movs	r4, r7
  418344: 38ca         	subs	r0, #0xca
  418346: 003c         	movs	r4, r7
  418348: 38ac         	subs	r0, #0xac
  41834a: 003c         	movs	r4, r7
  41834c: 388e         	subs	r0, #0x8e
  41834e: 003c         	movs	r4, r7
  418350: 3870         	subs	r0, #0x70
  418352: 003c         	movs	r4, r7
  418354: 3852         	subs	r0, #0x52
  418356: 003c         	movs	r4, r7
  418358: 3830         	subs	r0, #0x30
  41835a: 003c         	movs	r4, r7
  41835c: 3812         	subs	r0, #0x12
  41835e: 003c         	movs	r4, r7
  418360: 37f8         	adds	r7, #0xf8
  418362: 003c         	movs	r4, r7
  418364: 37de         	adds	r7, #0xde
  418366: 003c         	movs	r4, r7
  418368: 37c0         	adds	r7, #0xc0
  41836a: 003c         	movs	r4, r7
  41836c: 379e         	adds	r7, #0x9e
  41836e: 003c         	movs	r4, r7

// ==== WeaponFactory::~WeaponFactory
//      file offset 0x418370 (= ELF address; Ghidra 0x428370), 100 bytes, Thumb-2
  418370: b500         	push	{lr}
  418372: b083         	sub	sp, #0xc
  418374: 9001         	str	r0, [sp, #0x4]
  418376: 4915         	ldr	r1, [pc, #0x54]         @ 0x4183cc <WeaponFactory::~WeaponFactory()+0x5c>
  418378: 4479         	add	r1, pc
  41837a: 9b01         	ldr	r3, [sp, #0x4]
  41837c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x4183d0 <WeaponFactory::~WeaponFactory()+0x60>
  41837e: 588a         	ldr	r2, [r1, r2]
  418380: 3208         	adds	r2, #0x8
  418382: 601a         	str	r2, [r3]
  418384: 9b01         	ldr	r3, [sp, #0x4]
  418386: 695b         	ldr	r3, [r3, #0x14]
  418388: 4618         	mov	r0, r3
  41838a: f17f fd95    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17fb2a
  41838e: 9b01         	ldr	r3, [sp, #0x4]
  418390: 699b         	ldr	r3, [r3, #0x18]
  418392: 4618         	mov	r0, r3
  418394: f17f fd90    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17fb20
  418398: 9b01         	ldr	r3, [sp, #0x4]
  41839a: 6a1b         	ldr	r3, [r3, #0x20]
  41839c: 4618         	mov	r0, r3
  41839e: f17f fd8b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17fb16
  4183a2: 9b01         	ldr	r3, [sp, #0x4]
  4183a4: 69db         	ldr	r3, [r3, #0x1c]
  4183a6: 4618         	mov	r0, r3
  4183a8: f17f fd86    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17fb0c
  4183ac: 9b01         	ldr	r3, [sp, #0x4]
  4183ae: 4618         	mov	r0, r3
  4183b0: f17f fd0e    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x17fa1c
  4183b4: 2300         	movs	r3, #0x0
  4183b6: 2b00         	cmp	r3, #0x0
  4183b8: d002         	beq	0x4183c0 <WeaponFactory::~WeaponFactory()+0x50> @ imm = #0x4
  4183ba: 9801         	ldr	r0, [sp, #0x4]
  4183bc: f36f fe72    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36fce4
  4183c0: 9b01         	ldr	r3, [sp, #0x4]
  4183c2: 4618         	mov	r0, r3
  4183c4: b003         	add	sp, #0xc
  4183c6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4183c9); words below are literal-pool data ---
  4183ca: bf00         	nop
  4183cc: a690         	adr	r6, #576 <WeaponFactory::createRandomWeapon()+0x70>
  4183ce: 0051         	lsls	r1, r2, #0x1
  4183d0: dfa0         	svc	#0xa0
  4183d2: ffff b500    	<unknown>

// ==== WeaponFactory::~WeaponFactory
//      file offset 0x4183d4 (= ELF address; Ghidra 0x4283d4), 28 bytes, Thumb-2
  4183d4: b500         	push	{lr}
  4183d6: b083         	sub	sp, #0xc
  4183d8: 9001         	str	r0, [sp, #0x4]
  4183da: 9801         	ldr	r0, [sp, #0x4]
  4183dc: f7ff ffc8    	bl	0x418370 <WeaponFactory::~WeaponFactory()> @ imm = #-0x70
  4183e0: 9801         	ldr	r0, [sp, #0x4]
  4183e2: f36f fe5f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36fcbe
  4183e6: 9b01         	ldr	r3, [sp, #0x4]
  4183e8: 4618         	mov	r0, r3
  4183ea: b003         	add	sp, #0xc
  4183ec: f85d fb04    	ldr	pc, [sp], #4

// ==== WeaponFactory::createRandomWeapon
//      file offset 0x4183f0 (= ELF address; Ghidra 0x4283f0), 168 bytes, Thumb-2
  4183f0: b510         	push	{r4, lr}
  4183f2: ed2d 8b02    	vpush	{d8}
  4183f6: b084         	sub	sp, #0x10
  4183f8: 9001         	str	r0, [sp, #0x4]
  4183fa: f7fd fe75    	bl	0x4160e8 <Weapon::setContact(bool, std::string, int)+0x15c> @ imm = #-0x2316
  4183fe: 4603         	mov	r3, r0
  418400: ee07 3a90    	vmov	s15, r3
  418404: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  418408: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x418494 <WeaponFactory::createRandomWeapon()+0xa4>
  41840c: ee87 7a27    	vdiv.f32	s14, s14, s15
  418410: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  418414: ee37 8a67    	vsub.f32	s16, s14, s15
  418418: 9b01         	ldr	r3, [sp, #0x4]
  41841a: 695b         	ldr	r3, [r3, #0x14]
  41841c: 4618         	mov	r0, r3
  41841e: f181 fe5f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181cbe
  418422: 4603         	mov	r3, r0
  418424: ee07 3a10    	vmov	s14, r3
  418428: eef8 7a47    	vcvt.f32.u32	s15, s14
  41842c: ee68 7a27    	vmul.f32	s15, s16, s15
  418430: ee17 0a90    	vmov	r0, s15
  418434: f727 f836    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xd8f94
  418438: ee07 0a90    	vmov	s15, r0
  41843c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  418440: ee17 3a90    	vmov	r3, s15
  418444: 9302         	str	r3, [sp, #0x8]
  418446: 9c02         	ldr	r4, [sp, #0x8]
  418448: 9b01         	ldr	r3, [sp, #0x4]
  41844a: 695b         	ldr	r3, [r3, #0x14]
  41844c: 4618         	mov	r0, r3
  41844e: f181 fe47    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181c8e
  418452: 4603         	mov	r3, r0
  418454: 429c         	cmp	r4, r3
  418456: bf34         	ite	lo
  418458: 2300         	movlo	r3, #0x0
  41845a: 2301         	movhs	r3, #0x1
  41845c: b2db         	uxtb	r3, r3
  41845e: 2b00         	cmp	r3, #0x0
  418460: d001         	beq	0x418466 <WeaponFactory::createRandomWeapon()+0x76> @ imm = #0x2
  418462: 2300         	movs	r3, #0x0
  418464: 9302         	str	r3, [sp, #0x8]
  418466: 9b01         	ldr	r3, [sp, #0x4]
  418468: 695a         	ldr	r2, [r3, #0x14]
  41846a: 9b02         	ldr	r3, [sp, #0x8]
  41846c: 4610         	mov	r0, r2
  41846e: 4619         	mov	r1, r3
  418470: f181 fe56    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x181cac
  418474: 4603         	mov	r3, r0
  418476: 9303         	str	r3, [sp, #0xc]
  418478: 9803         	ldr	r0, [sp, #0xc]
  41847a: f6d4 fceb    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x12b62a
  41847e: 4603         	mov	r3, r0
  418480: 9801         	ldr	r0, [sp, #0x4]
  418482: 4619         	mov	r1, r3
  418484: f000 f93a    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x274
  418488: 4603         	mov	r3, r0
  41848a: 4618         	mov	r0, r3
  41848c: b004         	add	sp, #0x10
  41848e: ecbd 8b02    	vpop	{d8}
  418492: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x418493); words below are literal-pool data ---
  418494: 0000         	movs	r0, r0
  418496: 4e80         	ldr	r6, [pc, #0x200]        @ 0x418698 <WeaponFactory::getAmmoTypeFromString(std::string)+0x8>

// ==== WeaponFactory::createRandomPrimaryWeapon
//      file offset 0x418498 (= ELF address; Ghidra 0x428498), 168 bytes, Thumb-2
  418498: b510         	push	{r4, lr}
  41849a: ed2d 8b02    	vpush	{d8}
  41849e: b084         	sub	sp, #0x10
  4184a0: 9001         	str	r0, [sp, #0x4]
  4184a2: f7fd fe21    	bl	0x4160e8 <Weapon::setContact(bool, std::string, int)+0x15c> @ imm = #-0x23be
  4184a6: 4603         	mov	r3, r0
  4184a8: ee07 3a90    	vmov	s15, r3
  4184ac: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  4184b0: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x41853c <WeaponFactory::createRandomPrimaryWeapon()+0xa4>
  4184b4: ee87 7a27    	vdiv.f32	s14, s14, s15
  4184b8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  4184bc: ee37 8a67    	vsub.f32	s16, s14, s15
  4184c0: 9b01         	ldr	r3, [sp, #0x4]
  4184c2: 699b         	ldr	r3, [r3, #0x18]
  4184c4: 4618         	mov	r0, r3
  4184c6: f181 fe0b    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181c16
  4184ca: 4603         	mov	r3, r0
  4184cc: ee07 3a10    	vmov	s14, r3
  4184d0: eef8 7a47    	vcvt.f32.u32	s15, s14
  4184d4: ee68 7a27    	vmul.f32	s15, s16, s15
  4184d8: ee17 0a90    	vmov	r0, s15
  4184dc: f726 ffe2    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xd903c
  4184e0: ee07 0a90    	vmov	s15, r0
  4184e4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  4184e8: ee17 3a90    	vmov	r3, s15
  4184ec: 9302         	str	r3, [sp, #0x8]
  4184ee: 9c02         	ldr	r4, [sp, #0x8]
  4184f0: 9b01         	ldr	r3, [sp, #0x4]
  4184f2: 699b         	ldr	r3, [r3, #0x18]
  4184f4: 4618         	mov	r0, r3
  4184f6: f181 fdf3    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181be6
  4184fa: 4603         	mov	r3, r0
  4184fc: 429c         	cmp	r4, r3
  4184fe: bf34         	ite	lo
  418500: 2300         	movlo	r3, #0x0
  418502: 2301         	movhs	r3, #0x1
  418504: b2db         	uxtb	r3, r3
  418506: 2b00         	cmp	r3, #0x0
  418508: d001         	beq	0x41850e <WeaponFactory::createRandomPrimaryWeapon()+0x76> @ imm = #0x2
  41850a: 2300         	movs	r3, #0x0
  41850c: 9302         	str	r3, [sp, #0x8]
  41850e: 9b01         	ldr	r3, [sp, #0x4]
  418510: 699a         	ldr	r2, [r3, #0x18]
  418512: 9b02         	ldr	r3, [sp, #0x8]
  418514: 4610         	mov	r0, r2
  418516: 4619         	mov	r1, r3
  418518: f181 fe02    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x181c04
  41851c: 4603         	mov	r3, r0
  41851e: 9303         	str	r3, [sp, #0xc]
  418520: 9803         	ldr	r0, [sp, #0xc]
  418522: f6d4 fc97    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x12b6d2
  418526: 4603         	mov	r3, r0
  418528: 9801         	ldr	r0, [sp, #0x4]
  41852a: 4619         	mov	r1, r3
  41852c: f000 f8e6    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x1cc
  418530: 4603         	mov	r3, r0
  418532: 4618         	mov	r0, r3
  418534: b004         	add	sp, #0x10
  418536: ecbd 8b02    	vpop	{d8}
  41853a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41853b); words below are literal-pool data ---
  41853c: 0000         	movs	r0, r0
  41853e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x418740 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x44>

// ==== WeaponFactory::createRandomStartWeapon
//      file offset 0x418540 (= ELF address; Ghidra 0x428540), 168 bytes, Thumb-2
  418540: b510         	push	{r4, lr}
  418542: ed2d 8b02    	vpush	{d8}
  418546: b084         	sub	sp, #0x10
  418548: 9001         	str	r0, [sp, #0x4]
  41854a: f7fd fdcd    	bl	0x4160e8 <Weapon::setContact(bool, std::string, int)+0x15c> @ imm = #-0x2466
  41854e: 4603         	mov	r3, r0
  418550: ee07 3a90    	vmov	s15, r3
  418554: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  418558: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x4185e4 <WeaponFactory::createRandomStartWeapon()+0xa4>
  41855c: ee87 7a27    	vdiv.f32	s14, s14, s15
  418560: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  418564: ee37 8a67    	vsub.f32	s16, s14, s15
  418568: 9b01         	ldr	r3, [sp, #0x4]
  41856a: 69db         	ldr	r3, [r3, #0x1c]
  41856c: 4618         	mov	r0, r3
  41856e: f181 fdb7    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181b6e
  418572: 4603         	mov	r3, r0
  418574: ee07 3a10    	vmov	s14, r3
  418578: eef8 7a47    	vcvt.f32.u32	s15, s14
  41857c: ee68 7a27    	vmul.f32	s15, s16, s15
  418580: ee17 0a90    	vmov	r0, s15
  418584: f726 ff8e    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xd90e4
  418588: ee07 0a90    	vmov	s15, r0
  41858c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  418590: ee17 3a90    	vmov	r3, s15
  418594: 9302         	str	r3, [sp, #0x8]
  418596: 9c02         	ldr	r4, [sp, #0x8]
  418598: 9b01         	ldr	r3, [sp, #0x4]
  41859a: 69db         	ldr	r3, [r3, #0x1c]
  41859c: 4618         	mov	r0, r3
  41859e: f181 fd9f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181b3e
  4185a2: 4603         	mov	r3, r0
  4185a4: 429c         	cmp	r4, r3
  4185a6: bf34         	ite	lo
  4185a8: 2300         	movlo	r3, #0x0
  4185aa: 2301         	movhs	r3, #0x1
  4185ac: b2db         	uxtb	r3, r3
  4185ae: 2b00         	cmp	r3, #0x0
  4185b0: d001         	beq	0x4185b6 <WeaponFactory::createRandomStartWeapon()+0x76> @ imm = #0x2
  4185b2: 2300         	movs	r3, #0x0
  4185b4: 9302         	str	r3, [sp, #0x8]
  4185b6: 9b01         	ldr	r3, [sp, #0x4]
  4185b8: 69da         	ldr	r2, [r3, #0x1c]
  4185ba: 9b02         	ldr	r3, [sp, #0x8]
  4185bc: 4610         	mov	r0, r2
  4185be: 4619         	mov	r1, r3
  4185c0: f181 fdae    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x181b5c
  4185c4: 4603         	mov	r3, r0
  4185c6: 9303         	str	r3, [sp, #0xc]
  4185c8: 9803         	ldr	r0, [sp, #0xc]
  4185ca: f6d4 fc43    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x12b77a
  4185ce: 4603         	mov	r3, r0
  4185d0: 9801         	ldr	r0, [sp, #0x4]
  4185d2: 4619         	mov	r1, r3
  4185d4: f000 f892    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x124
  4185d8: 4603         	mov	r3, r0
  4185da: 4618         	mov	r0, r3
  4185dc: b004         	add	sp, #0x10
  4185de: ecbd 8b02    	vpop	{d8}
  4185e2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4185e3); words below are literal-pool data ---
  4185e4: 0000         	movs	r0, r0
  4185e6: 4e80         	ldr	r6, [pc, #0x200]        @ 0x4187e8 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0xec>

// ==== WeaponFactory::createRandomSecondaryWeapon
//      file offset 0x4185e8 (= ELF address; Ghidra 0x4285e8), 168 bytes, Thumb-2
  4185e8: b510         	push	{r4, lr}
  4185ea: ed2d 8b02    	vpush	{d8}
  4185ee: b084         	sub	sp, #0x10
  4185f0: 9001         	str	r0, [sp, #0x4]
  4185f2: f7fd fd79    	bl	0x4160e8 <Weapon::setContact(bool, std::string, int)+0x15c> @ imm = #-0x250e
  4185f6: 4603         	mov	r3, r0
  4185f8: ee07 3a90    	vmov	s15, r3
  4185fc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  418600: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x41868c <WeaponFactory::createRandomSecondaryWeapon()+0xa4>
  418604: ee87 7a27    	vdiv.f32	s14, s14, s15
  418608: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41860c: ee37 8a67    	vsub.f32	s16, s14, s15
  418610: 9b01         	ldr	r3, [sp, #0x4]
  418612: 6a1b         	ldr	r3, [r3, #0x20]
  418614: 4618         	mov	r0, r3
  418616: f181 fd63    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181ac6
  41861a: 4603         	mov	r3, r0
  41861c: ee07 3a10    	vmov	s14, r3
  418620: eef8 7a47    	vcvt.f32.u32	s15, s14
  418624: ee68 7a27    	vmul.f32	s15, s16, s15
  418628: ee17 0a90    	vmov	r0, s15
  41862c: f726 ff3a    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xd918c
  418630: ee07 0a90    	vmov	s15, r0
  418634: eefd 7ae7    	vcvt.s32.f32	s15, s15
  418638: ee17 3a90    	vmov	r3, s15
  41863c: 9302         	str	r3, [sp, #0x8]
  41863e: 9c02         	ldr	r4, [sp, #0x8]
  418640: 9b01         	ldr	r3, [sp, #0x4]
  418642: 6a1b         	ldr	r3, [r3, #0x20]
  418644: 4618         	mov	r0, r3
  418646: f181 fd4b    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x181a96
  41864a: 4603         	mov	r3, r0
  41864c: 429c         	cmp	r4, r3
  41864e: bf34         	ite	lo
  418650: 2300         	movlo	r3, #0x0
  418652: 2301         	movhs	r3, #0x1
  418654: b2db         	uxtb	r3, r3
  418656: 2b00         	cmp	r3, #0x0
  418658: d001         	beq	0x41865e <WeaponFactory::createRandomSecondaryWeapon()+0x76> @ imm = #0x2
  41865a: 2300         	movs	r3, #0x0
  41865c: 9302         	str	r3, [sp, #0x8]
  41865e: 9b01         	ldr	r3, [sp, #0x4]
  418660: 6a1a         	ldr	r2, [r3, #0x20]
  418662: 9b02         	ldr	r3, [sp, #0x8]
  418664: 4610         	mov	r0, r2
  418666: 4619         	mov	r1, r3
  418668: f181 fd5a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x181ab4
  41866c: 4603         	mov	r3, r0
  41866e: 9303         	str	r3, [sp, #0xc]
  418670: 9803         	ldr	r0, [sp, #0xc]
  418672: f6d4 fbef    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x12b822
  418676: 4603         	mov	r3, r0
  418678: 9801         	ldr	r0, [sp, #0x4]
  41867a: 4619         	mov	r1, r3
  41867c: f000 f83e    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x7c
  418680: 4603         	mov	r3, r0
  418682: 4618         	mov	r0, r3
  418684: b004         	add	sp, #0x10
  418686: ecbd 8b02    	vpop	{d8}
  41868a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41868b); words below are literal-pool data ---
  41868c: 0000         	movs	r0, r0
  41868e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x418890 <WeaponFactory::isClipHandgun(ItemType)>

// ==== WeaponFactory::getAmmoTypeFromString
//      file offset 0x418690 (= ELF address; Ghidra 0x428690), 108 bytes, Thumb-2
  418690: b510         	push	{r4, lr}
  418692: b084         	sub	sp, #0x10
  418694: 9001         	str	r0, [sp, #0x4]
  418696: 9100         	str	r1, [sp]
  418698: 2300         	movs	r3, #0x0
  41869a: 9302         	str	r3, [sp, #0x8]
  41869c: e01c         	b	0x4186d8 <WeaponFactory::getAmmoTypeFromString(std::string)+0x48> @ imm = #0x38
  41869e: 9b01         	ldr	r3, [sp, #0x4]
  4186a0: 6a5a         	ldr	r2, [r3, #0x24]
  4186a2: 9b02         	ldr	r3, [sp, #0x8]
  4186a4: 4610         	mov	r0, r2
  4186a6: 4619         	mov	r1, r3
  4186a8: f181 fd3a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x181a74
  4186ac: 4603         	mov	r3, r0
  4186ae: 9303         	str	r3, [sp, #0xc]
  4186b0: 9b03         	ldr	r3, [sp, #0xc]
  4186b2: 3314         	adds	r3, #0x14
  4186b4: 4618         	mov	r0, r3
  4186b6: 9900         	ldr	r1, [sp]
  4186b8: f39c ffe0    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x39cfc0
  4186bc: 4603         	mov	r3, r0
  4186be: 2b00         	cmp	r3, #0x0
  4186c0: bf14         	ite	ne
  4186c2: 2300         	movne	r3, #0x0
  4186c4: 2301         	moveq	r3, #0x1
  4186c6: b2db         	uxtb	r3, r3
  4186c8: 2b00         	cmp	r3, #0x0
  4186ca: d002         	beq	0x4186d2 <WeaponFactory::getAmmoTypeFromString(std::string)+0x42> @ imm = #0x4
  4186cc: 9b03         	ldr	r3, [sp, #0xc]
  4186ce: 699b         	ldr	r3, [r3, #0x18]
  4186d0: e011         	b	0x4186f6 <WeaponFactory::getAmmoTypeFromString(std::string)+0x66> @ imm = #0x22
  4186d2: 9b02         	ldr	r3, [sp, #0x8]
  4186d4: 3301         	adds	r3, #0x1
  4186d6: 9302         	str	r3, [sp, #0x8]
  4186d8: 9c02         	ldr	r4, [sp, #0x8]
  4186da: 9b01         	ldr	r3, [sp, #0x4]
  4186dc: 6a5b         	ldr	r3, [r3, #0x24]
  4186de: 4618         	mov	r0, r3
  4186e0: f181 fcfe    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1819fc
  4186e4: 4603         	mov	r3, r0
  4186e6: 429c         	cmp	r4, r3
  4186e8: bf2c         	ite	hs
  4186ea: 2300         	movhs	r3, #0x0
  4186ec: 2301         	movlo	r3, #0x1
  4186ee: b2db         	uxtb	r3, r3
  4186f0: 2b00         	cmp	r3, #0x0
  4186f2: d1d4         	bne	0x41869e <WeaponFactory::getAmmoTypeFromString(std::string)+0xe> @ imm = #-0x58
  4186f4: 2300         	movs	r3, #0x0
  4186f6: 4618         	mov	r0, r3
  4186f8: b004         	add	sp, #0x10
  4186fa: bd10         	pop	{r4, pc}

// ==== WeaponFactory::createWeaponFromAmmoType
//      file offset 0x4186fc (= ELF address; Ghidra 0x4286fc), 402 bytes, Thumb-2
  4186fc: b500         	push	{lr}
  4186fe: b085         	sub	sp, #0x14
  418700: 9001         	str	r0, [sp, #0x4]
  418702: 9100         	str	r1, [sp]
  418704: 2300         	movs	r3, #0x0
  418706: 9303         	str	r3, [sp, #0xc]
  418708: 9b00         	ldr	r3, [sp]
  41870a: 3b01         	subs	r3, #0x1
  41870c: 2b18         	cmp	r3, #0x18
  41870e: f200 80af    	bhi.w	0x418870 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x174> @ imm = #0x15e
  418712: a102         	adr	r1, #8 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x1c>
  418714: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  418718: 4411         	add	r1, r2
  41871a: 4708         	bx	r1
  41871c: 0119         	lsls	r1, r3, #0x4
  41871e: 0000         	movs	r0, r0
  418720: 0123         	lsls	r3, r4, #0x4
  418722: 0000         	movs	r0, r0
  418724: 006f         	lsls	r7, r5, #0x1
  418726: 0000         	movs	r0, r0
  418728: 0065         	lsls	r5, r4, #0x1
  41872a: 0000         	movs	r0, r0
  41872c: 0079         	lsls	r1, r7, #0x1
  41872e: 0000         	movs	r0, r0
  418730: 008d         	lsls	r5, r1, #0x2
  418732: 0000         	movs	r0, r0
  418734: 00a1         	lsls	r1, r4, #0x2
  418736: 0000         	movs	r0, r0
  418738: 0097         	lsls	r7, r2, #0x2
  41873a: 0000         	movs	r0, r0
  41873c: 00b5         	lsls	r5, r6, #0x2
  41873e: 0000         	movs	r0, r0
  418740: 00c9         	lsls	r1, r1, #0x3
  418742: 0000         	movs	r0, r0
  418744: 0105         	lsls	r5, r0, #0x4
  418746: 0000         	movs	r0, r0
  418748: 00d3         	lsls	r3, r2, #0x3
  41874a: 0000         	movs	r0, r0
  41874c: 010f         	lsls	r7, r1, #0x4
  41874e: 0000         	movs	r0, r0
  418750: 0141         	lsls	r1, r0, #0x5
  418752: 0000         	movs	r0, r0
  418754: 014b         	lsls	r3, r1, #0x5
  418756: 0000         	movs	r0, r0
  418758: 00bf         	lsls	r7, r7, #0x2
  41875a: 0000         	movs	r0, r0
  41875c: 00ab         	lsls	r3, r5, #0x2
  41875e: 0000         	movs	r0, r0
  418760: 0083         	lsls	r3, r0, #0x2
  418762: 0000         	movs	r0, r0
  418764: 00fb         	lsls	r3, r7, #0x3
  418766: 0000         	movs	r0, r0
  418768: 00dd         	lsls	r5, r3, #0x3
  41876a: 0000         	movs	r0, r0
  41876c: 00e7         	lsls	r7, r4, #0x3
  41876e: 0000         	movs	r0, r0
  418770: 0155         	lsls	r5, r2, #0x5
  418772: 0000         	movs	r0, r0
  418774: 00f1         	lsls	r1, r6, #0x3
  418776: 0000         	movs	r0, r0
  418778: 0137         	lsls	r7, r6, #0x4
  41877a: 0000         	movs	r0, r0
  41877c: 012d         	lsls	r5, r5, #0x4
  41877e: 0000         	movs	r0, r0
  418780: f7fe fc4c    	bl	0x41701c <MAGNUM::create()> @ imm = #-0x1768
  418784: 4603         	mov	r3, r0
  418786: 9303         	str	r3, [sp, #0xc]
  418788: e074         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xe8
  41878a: f7fe fc0f    	bl	0x416fac <DEAGLE::create()> @ imm = #-0x17e2
  41878e: 4603         	mov	r3, r0
  418790: 9303         	str	r3, [sp, #0xc]
  418792: e06f         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xde
  418794: f7fe fc7a    	bl	0x41708c <UZI::create()> @ imm = #-0x170c
  418798: 4603         	mov	r3, r0
  41879a: 9303         	str	r3, [sp, #0xc]
  41879c: e06a         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xd4
  41879e: f7fe fe35    	bl	0x41740c <GDEAGLE::create()> @ imm = #-0x1396
  4187a2: 4603         	mov	r3, r0
  4187a4: 9303         	str	r3, [sp, #0xc]
  4187a6: e065         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xca
  4187a8: f7fe fca8    	bl	0x4170fc <MP5::create()> @ imm = #-0x16b0
  4187ac: 4603         	mov	r3, r0
  4187ae: 9303         	str	r3, [sp, #0xc]
  4187b0: e060         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xc0
  4187b2: f7fe fb8b    	bl	0x416ecc <M16::create()> @ imm = #-0x18ea
  4187b6: 4603         	mov	r3, r0
  4187b8: 9303         	str	r3, [sp, #0xc]
  4187ba: e05b         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xb6
  4187bc: f7fe fbbe    	bl	0x416f3c <AK47::create()> @ imm = #-0x1884
  4187c0: 4603         	mov	r3, r0
  4187c2: 9303         	str	r3, [sp, #0xc]
  4187c4: e056         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xac
  4187c6: f7fe fe59    	bl	0x41747c <PHASR::create()> @ imm = #-0x134e
  4187ca: 4603         	mov	r3, r0
  4187cc: 9303         	str	r3, [sp, #0xc]
  4187ce: e051         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xa2
  4187d0: f7fe fccc    	bl	0x41716c <SHOTGUN::create()> @ imm = #-0x1668
  4187d4: 4603         	mov	r3, r0
  4187d6: 9303         	str	r3, [sp, #0xc]
  4187d8: e04c         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x98
  4187da: f7fe fddf    	bl	0x41739c <M14::create()> @ imm = #-0x1442
  4187de: 4603         	mov	r3, r0
  4187e0: 9303         	str	r3, [sp, #0xc]
  4187e2: e047         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x8e
  4187e4: f7fe fd6a    	bl	0x4172bc <M93BA::create()> @ imm = #-0x152c
  4187e8: 4603         	mov	r3, r0
  4187ea: 9303         	str	r3, [sp, #0xc]
  4187ec: e042         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x84
  4187ee: f7fe ff25    	bl	0x41763c <ROCKET::create()> @ imm = #-0x11b6
  4187f2: 4603         	mov	r3, r0
  4187f4: 9303         	str	r3, [sp, #0xc]
  4187f6: e03d         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x7a
  4187f8: f7fe ff90    	bl	0x41771c <GASNADE::create()> @ imm = #-0x10e0
  4187fc: 4603         	mov	r3, r0
  4187fe: 9303         	str	r3, [sp, #0xc]
  418800: e038         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x70
  418802: f7fe ffc3    	bl	0x41778c <EMP::create()> @ imm = #-0x107a
  418806: 4603         	mov	r3, r0
  418808: 9303         	str	r3, [sp, #0xc]
  41880a: e033         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x66
  41880c: f7fe fff6    	bl	0x4177fc <PROXYNADE::create()> @ imm = #-0x1014
  418810: 4603         	mov	r3, r0
  418812: 9303         	str	r3, [sp, #0xc]
  418814: e02e         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x5c
  418816: f7fe fe69    	bl	0x4174ec <FLAMETHROWER::create()> @ imm = #-0x132e
  41881a: 4603         	mov	r3, r0
  41881c: 9303         	str	r3, [sp, #0xc]
  41881e: e029         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x52
  418820: f7fe fd84    	bl	0x41732c <SMAW::create()> @ imm = #-0x14f8
  418824: 4603         	mov	r3, r0
  418826: 9303         	str	r3, [sp, #0xc]
  418828: e024         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x48
  41882a: f7fe ff3f    	bl	0x4176ac <RIOTSHIELD::create()> @ imm = #-0x1182
  41882e: 4603         	mov	r3, r0
  418830: 9303         	str	r3, [sp, #0xc]
  418832: e01f         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x3e
  418834: f7fe fd0a    	bl	0x41724c <MACHETE::create()> @ imm = #-0x15ec
  418838: 4603         	mov	r3, r0
  41883a: 9303         	str	r3, [sp, #0xc]
  41883c: e01a         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x34
  41883e: f7fe fccd    	bl	0x4171dc <FRAGNADE::create()> @ imm = #-0x1666
  418842: 4603         	mov	r3, r0
  418844: 9303         	str	r3, [sp, #0xc]
  418846: e015         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x2a
  418848: f7fe fe88    	bl	0x41755c <SAWGUN::create()> @ imm = #-0x12f0
  41884c: 4603         	mov	r3, r0
  41884e: 9303         	str	r3, [sp, #0xc]
  418850: e010         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x20
  418852: f7fe febb    	bl	0x4175cc <SAW::create()> @ imm = #-0x128a
  418856: 4603         	mov	r3, r0
  418858: 9303         	str	r3, [sp, #0xc]
  41885a: e00b         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x16
  41885c: f77a f956    	bl	0x392b0c <POWERUP::create()> @ imm = #-0x85d54
  418860: 4603         	mov	r3, r0
  418862: 9303         	str	r3, [sp, #0xc]
  418864: e006         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0xc
  418866: f77a f951    	bl	0x392b0c <POWERUP::create()> @ imm = #-0x85d5e
  41886a: 4603         	mov	r3, r0
  41886c: 9303         	str	r3, [sp, #0xc]
  41886e: e001         	b	0x418874 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x178> @ imm = #0x2
  418870: 2300         	movs	r3, #0x0
  418872: e008         	b	0x418886 <WeaponFactory::createWeaponFromAmmoType(ItemType)+0x18a> @ imm = #0x10
  418874: 9b03         	ldr	r3, [sp, #0xc]
  418876: 681b         	ldr	r3, [r3]
  418878: f503 7320    	add.w	r3, r3, #0x280
  41887c: 681b         	ldr	r3, [r3]
  41887e: 9803         	ldr	r0, [sp, #0xc]
  418880: 9900         	ldr	r1, [sp]
  418882: 4798         	blx	r3
  418884: 9b03         	ldr	r3, [sp, #0xc]
  418886: 4618         	mov	r0, r3
  418888: b005         	add	sp, #0x14
  41888a: f85d fb04    	ldr	pc, [sp], #4

// ==== WeaponFactory::isClipHandgun
//      file offset 0x418890 (= ELF address; Ghidra 0x428890), 46 bytes, Thumb-2
  418890: b084         	sub	sp, #0x10
  418892: 9001         	str	r0, [sp, #0x4]
  418894: 9100         	str	r1, [sp]
  418896: 2300         	movs	r3, #0x0
  418898: f88d 300f    	strb.w	r3, [sp, #0xf]
  41889c: 9b00         	ldr	r3, [sp]
  41889e: 2b05         	cmp	r3, #0x5
  4188a0: d004         	beq	0x4188ac <WeaponFactory::isClipHandgun(ItemType)+0x1c> @ imm = #0x8
  4188a2: 2b12         	cmp	r3, #0x12
  4188a4: d002         	beq	0x4188ac <WeaponFactory::isClipHandgun(ItemType)+0x1c> @ imm = #0x4
  4188a6: 2b03         	cmp	r3, #0x3
  4188a8: d000         	beq	0x4188ac <WeaponFactory::isClipHandgun(ItemType)+0x1c> @ imm = #0x0
  4188aa: e003         	b	0x4188b4 <WeaponFactory::isClipHandgun(ItemType)+0x24> @ imm = #0x6
  4188ac: 2301         	movs	r3, #0x1
  4188ae: f88d 300f    	strb.w	r3, [sp, #0xf]
  4188b2: bf00         	nop
  4188b4: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  4188b8: 4618         	mov	r0, r3
  4188ba: b004         	add	sp, #0x10
  4188bc: 4770         	bx	lr

// ==== WeaponFactory::isReloadHandgun
//      file offset 0x4188c0 (= ELF address; Ghidra 0x4288c0), 48 bytes, Thumb-2
  4188c0: b084         	sub	sp, #0x10
  4188c2: 9001         	str	r0, [sp, #0x4]
  4188c4: 9100         	str	r1, [sp]
  4188c6: 2300         	movs	r3, #0x0
  4188c8: f88d 300f    	strb.w	r3, [sp, #0xf]
  4188cc: 9b00         	ldr	r3, [sp]
  4188ce: 2b03         	cmp	r3, #0x3
  4188d0: db08         	blt	0x4188e4 <WeaponFactory::isReloadHandgun(ItemType)+0x24> @ imm = #0x10
  4188d2: 2b05         	cmp	r3, #0x5
  4188d4: dd02         	ble	0x4188dc <WeaponFactory::isReloadHandgun(ItemType)+0x1c> @ imm = #0x4
  4188d6: 2b12         	cmp	r3, #0x12
  4188d8: d000         	beq	0x4188dc <WeaponFactory::isReloadHandgun(ItemType)+0x1c> @ imm = #0x0
  4188da: e003         	b	0x4188e4 <WeaponFactory::isReloadHandgun(ItemType)+0x24> @ imm = #0x6
  4188dc: 2301         	movs	r3, #0x1
  4188de: f88d 300f    	strb.w	r3, [sp, #0xf]
  4188e2: e000         	b	0x4188e6 <WeaponFactory::isReloadHandgun(ItemType)+0x26> @ imm = #0x0
  4188e4: bf00         	nop
  4188e6: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  4188ea: 4618         	mov	r0, r3
  4188ec: b004         	add	sp, #0x10
  4188ee: 4770         	bx	lr

// ==== WeaponFactory::isClipRifle
//      file offset 0x4188f0 (= ELF address; Ghidra 0x4288f0), 48 bytes, Thumb-2
  4188f0: b084         	sub	sp, #0x10
  4188f2: 9001         	str	r0, [sp, #0x4]
  4188f4: 9100         	str	r1, [sp]
  4188f6: 2300         	movs	r3, #0x0
  4188f8: f88d 300f    	strb.w	r3, [sp, #0xf]
  4188fc: 9b00         	ldr	r3, [sp]
  4188fe: 2b07         	cmp	r3, #0x7
  418900: db08         	blt	0x418914 <WeaponFactory::isClipRifle(ItemType)+0x24> @ imm = #0x10
  418902: 2b08         	cmp	r3, #0x8
  418904: dd02         	ble	0x41890c <WeaponFactory::isClipRifle(ItemType)+0x1c> @ imm = #0x4
  418906: 2b10         	cmp	r3, #0x10
  418908: d000         	beq	0x41890c <WeaponFactory::isClipRifle(ItemType)+0x1c> @ imm = #0x0
  41890a: e003         	b	0x418914 <WeaponFactory::isClipRifle(ItemType)+0x24> @ imm = #0x6
  41890c: 2301         	movs	r3, #0x1
  41890e: f88d 300f    	strb.w	r3, [sp, #0xf]
  418912: e000         	b	0x418916 <WeaponFactory::isClipRifle(ItemType)+0x26> @ imm = #0x0
  418914: bf00         	nop
  418916: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  41891a: 4618         	mov	r0, r3
  41891c: b004         	add	sp, #0x10
  41891e: 4770         	bx	lr

// ==== WeaponFactory::isLaserSight
//      file offset 0x418920 (= ELF address; Ghidra 0x428920), 48 bytes, Thumb-2
  418920: b084         	sub	sp, #0x10
  418922: 9001         	str	r0, [sp, #0x4]
  418924: 9100         	str	r1, [sp]
  418926: 2300         	movs	r3, #0x0
  418928: f88d 300f    	strb.w	r3, [sp, #0xf]
  41892c: 9b00         	ldr	r3, [sp]
  41892e: 2b03         	cmp	r3, #0x3
  418930: db08         	blt	0x418944 <WeaponFactory::isLaserSight(ItemType)+0x24> @ imm = #0x10
  418932: 2b09         	cmp	r3, #0x9
  418934: dd02         	ble	0x41893c <WeaponFactory::isLaserSight(ItemType)+0x1c> @ imm = #0x4
  418936: 2b12         	cmp	r3, #0x12
  418938: d000         	beq	0x41893c <WeaponFactory::isLaserSight(ItemType)+0x1c> @ imm = #0x0
  41893a: e003         	b	0x418944 <WeaponFactory::isLaserSight(ItemType)+0x24> @ imm = #0x6
  41893c: 2301         	movs	r3, #0x1
  41893e: f88d 300f    	strb.w	r3, [sp, #0xf]
  418942: e000         	b	0x418946 <WeaponFactory::isLaserSight(ItemType)+0x26> @ imm = #0x0
  418944: bf00         	nop
  418946: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  41894a: 4618         	mov	r0, r3
  41894c: b004         	add	sp, #0x10
  41894e: 4770         	bx	lr

// ==== WeaponFactory::isProPackWeapon
//      file offset 0x418950 (= ELF address; Ghidra 0x428950), 152 bytes, Thumb-2
  418950: b084         	sub	sp, #0x10
  418952: 9001         	str	r0, [sp, #0x4]
  418954: 9100         	str	r1, [sp]
  418956: 2300         	movs	r3, #0x0
  418958: f88d 300f    	strb.w	r3, [sp, #0xf]
  41895c: 9b00         	ldr	r3, [sp]
  41895e: 3b01         	subs	r3, #0x1
  418960: 2b18         	cmp	r3, #0x18
  418962: d83b         	bhi	0x4189dc <WeaponFactory::isProPackWeapon(ItemType)+0x8c> @ imm = #0x76
  418964: a102         	adr	r1, #8 <WeaponFactory::isProPackWeapon(ItemType)+0x1a>
  418966: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  41896a: 4411         	add	r1, r2
  41896c: 4708         	bx	r1
  41896e: bf00         	nop
  418970: 0065         	lsls	r5, r4, #0x1
  418972: 0000         	movs	r0, r0
  418974: 006d         	lsls	r5, r5, #0x1
  418976: 0000         	movs	r0, r0
  418978: 006d         	lsls	r5, r5, #0x1
  41897a: 0000         	movs	r0, r0
  41897c: 006d         	lsls	r5, r5, #0x1
  41897e: 0000         	movs	r0, r0
  418980: 006d         	lsls	r5, r5, #0x1
  418982: 0000         	movs	r0, r0
  418984: 006d         	lsls	r5, r5, #0x1
  418986: 0000         	movs	r0, r0
  418988: 006d         	lsls	r5, r5, #0x1
  41898a: 0000         	movs	r0, r0
  41898c: 006d         	lsls	r5, r5, #0x1
  41898e: 0000         	movs	r0, r0
  418990: 006d         	lsls	r5, r5, #0x1
  418992: 0000         	movs	r0, r0
  418994: 0065         	lsls	r5, r4, #0x1
  418996: 0000         	movs	r0, r0
  418998: 0065         	lsls	r5, r4, #0x1
  41899a: 0000         	movs	r0, r0
  41899c: 006d         	lsls	r5, r5, #0x1
  41899e: 0000         	movs	r0, r0
  4189a0: 006d         	lsls	r5, r5, #0x1
  4189a2: 0000         	movs	r0, r0
  4189a4: 006d         	lsls	r5, r5, #0x1
  4189a6: 0000         	movs	r0, r0
  4189a8: 006d         	lsls	r5, r5, #0x1
  4189aa: 0000         	movs	r0, r0
  4189ac: 006d         	lsls	r5, r5, #0x1
  4189ae: 0000         	movs	r0, r0
  4189b0: 0065         	lsls	r5, r4, #0x1
  4189b2: 0000         	movs	r0, r0
  4189b4: 0065         	lsls	r5, r4, #0x1
  4189b6: 0000         	movs	r0, r0
  4189b8: 0065         	lsls	r5, r4, #0x1
  4189ba: 0000         	movs	r0, r0
  4189bc: 006d         	lsls	r5, r5, #0x1
  4189be: 0000         	movs	r0, r0
  4189c0: 0065         	lsls	r5, r4, #0x1
  4189c2: 0000         	movs	r0, r0
  4189c4: 006d         	lsls	r5, r5, #0x1
  4189c6: 0000         	movs	r0, r0
  4189c8: 006d         	lsls	r5, r5, #0x1
  4189ca: 0000         	movs	r0, r0
  4189cc: 006d         	lsls	r5, r5, #0x1
  4189ce: 0000         	movs	r0, r0
  4189d0: 0065         	lsls	r5, r4, #0x1
  4189d2: 0000         	movs	r0, r0
  4189d4: 2301         	movs	r3, #0x1
  4189d6: f88d 300f    	strb.w	r3, [sp, #0xf]
  4189da: e000         	b	0x4189de <WeaponFactory::isProPackWeapon(ItemType)+0x8e> @ imm = #0x0
  4189dc: bf00         	nop
  4189de: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  4189e2: 4618         	mov	r0, r3
  4189e4: b004         	add	sp, #0x10
  4189e6: 4770         	bx	lr

// ==== WeaponFactory::isDualWeapon
//      file offset 0x4189e8 (= ELF address; Ghidra 0x4289e8), 152 bytes, Thumb-2
  4189e8: b084         	sub	sp, #0x10
  4189ea: 9001         	str	r0, [sp, #0x4]
  4189ec: 9100         	str	r1, [sp]
  4189ee: 2300         	movs	r3, #0x0
  4189f0: f88d 300f    	strb.w	r3, [sp, #0xf]
  4189f4: 9b00         	ldr	r3, [sp]
  4189f6: 3301         	adds	r3, #0x1
  4189f8: 2b18         	cmp	r3, #0x18
  4189fa: d83b         	bhi	0x418a74 <WeaponFactory::isDualWeapon(ItemType)+0x8c> @ imm = #0x76
  4189fc: a102         	adr	r1, #8 <WeaponFactory::isDualWeapon(ItemType)+0x1a>
  4189fe: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  418a02: 4411         	add	r1, r2
  418a04: 4708         	bx	r1
  418a06: bf00         	nop
  418a08: 0065         	lsls	r5, r4, #0x1
  418a0a: 0000         	movs	r0, r0
  418a0c: 0065         	lsls	r5, r4, #0x1
  418a0e: 0000         	movs	r0, r0
  418a10: 0065         	lsls	r5, r4, #0x1
  418a12: 0000         	movs	r0, r0
  418a14: 0065         	lsls	r5, r4, #0x1
  418a16: 0000         	movs	r0, r0
  418a18: 0065         	lsls	r5, r4, #0x1
  418a1a: 0000         	movs	r0, r0
  418a1c: 0065         	lsls	r5, r4, #0x1
  418a1e: 0000         	movs	r0, r0
  418a20: 0065         	lsls	r5, r4, #0x1
  418a22: 0000         	movs	r0, r0
  418a24: 006d         	lsls	r5, r5, #0x1
  418a26: 0000         	movs	r0, r0
  418a28: 006d         	lsls	r5, r5, #0x1
  418a2a: 0000         	movs	r0, r0
  418a2c: 006d         	lsls	r5, r5, #0x1
  418a2e: 0000         	movs	r0, r0
  418a30: 006d         	lsls	r5, r5, #0x1
  418a32: 0000         	movs	r0, r0
  418a34: 006d         	lsls	r5, r5, #0x1
  418a36: 0000         	movs	r0, r0
  418a38: 006d         	lsls	r5, r5, #0x1
  418a3a: 0000         	movs	r0, r0
  418a3c: 006d         	lsls	r5, r5, #0x1
  418a3e: 0000         	movs	r0, r0
  418a40: 0065         	lsls	r5, r4, #0x1
  418a42: 0000         	movs	r0, r0
  418a44: 006d         	lsls	r5, r5, #0x1
  418a46: 0000         	movs	r0, r0
  418a48: 006d         	lsls	r5, r5, #0x1
  418a4a: 0000         	movs	r0, r0
  418a4c: 006d         	lsls	r5, r5, #0x1
  418a4e: 0000         	movs	r0, r0
  418a50: 006d         	lsls	r5, r5, #0x1
  418a52: 0000         	movs	r0, r0
  418a54: 0065         	lsls	r5, r4, #0x1
  418a56: 0000         	movs	r0, r0
  418a58: 006d         	lsls	r5, r5, #0x1
  418a5a: 0000         	movs	r0, r0
  418a5c: 0065         	lsls	r5, r4, #0x1
  418a5e: 0000         	movs	r0, r0
  418a60: 006d         	lsls	r5, r5, #0x1
  418a62: 0000         	movs	r0, r0
  418a64: 006d         	lsls	r5, r5, #0x1
  418a66: 0000         	movs	r0, r0
  418a68: 0065         	lsls	r5, r4, #0x1
  418a6a: 0000         	movs	r0, r0
  418a6c: 2301         	movs	r3, #0x1
  418a6e: f88d 300f    	strb.w	r3, [sp, #0xf]
  418a72: e000         	b	0x418a76 <WeaponFactory::isDualWeapon(ItemType)+0x8e> @ imm = #0x0
  418a74: bf00         	nop
  418a76: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  418a7a: 4618         	mov	r0, r3
  418a7c: b004         	add	sp, #0x10
  418a7e: 4770         	bx	lr

// ==== WeaponFactory::getWeaponInfoFromAmmoType
//      file offset 0x418a80 (= ELF address; Ghidra 0x428a80), 374 bytes, Thumb-2
  418a80: b500         	push	{lr}
  418a82: b085         	sub	sp, #0x14
  418a84: 9003         	str	r0, [sp, #0xc]
  418a86: 9102         	str	r1, [sp, #0x8]
  418a88: 9201         	str	r2, [sp, #0x4]
  418a8a: 9b03         	ldr	r3, [sp, #0xc]
  418a8c: 2200         	movs	r2, #0x0
  418a8e: 601a         	str	r2, [r3]
  418a90: 9b03         	ldr	r3, [sp, #0xc]
  418a92: 2201         	movs	r2, #0x1
  418a94: 605a         	str	r2, [r3, #0x4]
  418a96: 9b01         	ldr	r3, [sp, #0x4]
  418a98: 3b03         	subs	r3, #0x3
  418a9a: 2b0f         	cmp	r3, #0xf
  418a9c: f200 809f    	bhi.w	0x418bde <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x15e> @ imm = #0x13e
  418aa0: a102         	adr	r1, #8 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x26>
  418aa2: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  418aa6: 4411         	add	r1, r2
  418aa8: 4708         	bx	r1
  418aaa: bf00         	nop
  418aac: 00db         	lsls	r3, r3, #0x3
  418aae: 0000         	movs	r0, r0
  418ab0: 00f1         	lsls	r1, r6, #0x3
  418ab2: 0000         	movs	r0, r0
  418ab4: 0041         	lsls	r1, r0, #0x1
  418ab6: 0000         	movs	r0, r0
  418ab8: 0057         	lsls	r7, r2, #0x1
  418aba: 0000         	movs	r0, r0
  418abc: 0083         	lsls	r3, r0, #0x2
  418abe: 0000         	movs	r0, r0
  418ac0: 006d         	lsls	r5, r5, #0x1
  418ac2: 0000         	movs	r0, r0
  418ac4: 00af         	lsls	r7, r5, #0x2
  418ac6: 0000         	movs	r0, r0
  418ac8: 011d         	lsls	r5, r3, #0x4
  418aca: 0000         	movs	r0, r0
  418acc: 0133         	lsls	r3, r6, #0x4
  418ace: 0000         	movs	r0, r0
  418ad0: 0133         	lsls	r3, r6, #0x4
  418ad2: 0000         	movs	r0, r0
  418ad4: 0133         	lsls	r3, r6, #0x4
  418ad6: 0000         	movs	r0, r0
  418ad8: 0133         	lsls	r3, r6, #0x4
  418ada: 0000         	movs	r0, r0
  418adc: 0133         	lsls	r3, r6, #0x4
  418ade: 0000         	movs	r0, r0
  418ae0: 0107         	lsls	r7, r0, #0x4
  418ae2: 0000         	movs	r0, r0
  418ae4: 0099         	lsls	r1, r3, #0x2
  418ae6: 0000         	movs	r0, r0
  418ae8: 00c5         	lsls	r5, r0, #0x3
  418aea: 0000         	movs	r0, r0
  418aec: f7fb f8aa    	bl	0x413c44 <UZI::getDAMAGE()> @ imm = #-0x4eac
  418af0: 4602         	mov	r2, r0
  418af2: 9b03         	ldr	r3, [sp, #0xc]
  418af4: 601a         	str	r2, [r3]
  418af6: f7fb f89d    	bl	0x413c34 <UZI::getRANGE()> @ imm = #-0x4ec6
  418afa: 4602         	mov	r2, r0
  418afc: 9b03         	ldr	r3, [sp, #0xc]
  418afe: 605a         	str	r2, [r3, #0x4]
  418b00: e074         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0xe8
  418b02: f744 fed7    	bl	0x35d8b4 <MP5::getDAMAGE()> @ imm = #-0xbb252
  418b06: 4602         	mov	r2, r0
  418b08: 9b03         	ldr	r3, [sp, #0xc]
  418b0a: 601a         	str	r2, [r3]
  418b0c: f744 feca    	bl	0x35d8a4 <MP5::getRANGE()> @ imm = #-0xbb26c
  418b10: 4602         	mov	r2, r0
  418b12: 9b03         	ldr	r3, [sp, #0xc]
  418b14: 605a         	str	r2, [r3, #0x4]
  418b16: e069         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0xd2
  418b18: f73e f830    	bl	0x356b7c <M16::getDAMAGE()> @ imm = #-0xc1fa0
  418b1c: 4602         	mov	r2, r0
  418b1e: 9b03         	ldr	r3, [sp, #0xc]
  418b20: 601a         	str	r2, [r3]
  418b22: f73e f823    	bl	0x356b6c <M16::getRANGE()> @ imm = #-0xc1fba
  418b26: 4602         	mov	r2, r0
  418b28: 9b03         	ldr	r3, [sp, #0xc]
  418b2a: 605a         	str	r2, [r3, #0x4]
  418b2c: e05e         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0xbc
  418b2e: f6c5 fe69    	bl	0x2de804 <AK47::getDAMAGE()> @ imm = #-0x13a32e
  418b32: 4602         	mov	r2, r0
  418b34: 9b03         	ldr	r3, [sp, #0xc]
  418b36: 601a         	str	r2, [r3]
  418b38: f6c5 fe5c    	bl	0x2de7f4 <AK47::getRANGE()> @ imm = #-0x13a348
  418b3c: 4602         	mov	r2, r0
  418b3e: 9b03         	ldr	r3, [sp, #0xc]
  418b40: 605a         	str	r2, [r3, #0x4]
  418b42: e053         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0xa6
  418b44: f773 fa90    	bl	0x38c068 <PHASR::getDAMAGE()> @ imm = #-0x8cae0
  418b48: 4602         	mov	r2, r0
  418b4a: 9b03         	ldr	r3, [sp, #0xc]
  418b4c: 601a         	str	r2, [r3]
  418b4e: f773 fa83    	bl	0x38c058 <PHASR::getRANGE()> @ imm = #-0x8cafa
  418b52: 4602         	mov	r2, r0
  418b54: 9b03         	ldr	r3, [sp, #0xc]
  418b56: 605a         	str	r2, [r3, #0x4]
  418b58: e048         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0x90
  418b5a: f7b6 fd09    	bl	0x3cf570 <SHOTGUN::getDAMAGE()> @ imm = #-0x495ee
  418b5e: 4602         	mov	r2, r0
  418b60: 9b03         	ldr	r3, [sp, #0xc]
  418b62: 601a         	str	r2, [r3]
  418b64: f7b6 fcfc    	bl	0x3cf560 <SHOTGUN::getRANGE()> @ imm = #-0x49608
  418b68: 4602         	mov	r2, r0
  418b6a: 9b03         	ldr	r3, [sp, #0xc]
  418b6c: 605a         	str	r2, [r3, #0x4]
  418b6e: e03d         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0x7a
  418b70: f710 fbe4    	bl	0x32933c <GDEAGLE::getDAMAGE()> @ imm = #-0xef838
  418b74: 4602         	mov	r2, r0
  418b76: 9b03         	ldr	r3, [sp, #0xc]
  418b78: 601a         	str	r2, [r3]
  418b7a: f710 fbd7    	bl	0x32932c <GDEAGLE::getRANGE()> @ imm = #-0xef852
  418b7e: 4602         	mov	r2, r0
  418b80: 9b03         	ldr	r3, [sp, #0xc]
  418b82: 605a         	str	r2, [r3, #0x4]
  418b84: e032         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0x64
  418b86: f6f8 f81d    	bl	0x310bc4 <DEAGLE::getDAMAGE()> @ imm = #-0x107fc6
  418b8a: 4602         	mov	r2, r0
  418b8c: 9b03         	ldr	r3, [sp, #0xc]
  418b8e: 601a         	str	r2, [r3]
  418b90: f6f8 f810    	bl	0x310bb4 <DEAGLE::getRANGE()> @ imm = #-0x107fe0
  418b94: 4602         	mov	r2, r0
  418b96: 9b03         	ldr	r3, [sp, #0xc]
  418b98: 605a         	str	r2, [r3, #0x4]
  418b9a: e027         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0x4e
  418b9c: f743 f89e    	bl	0x35bcdc <MAGNUM::getDAMAGE()> @ imm = #-0xbcec4
  418ba0: 4602         	mov	r2, r0
  418ba2: 9b03         	ldr	r3, [sp, #0xc]
  418ba4: 601a         	str	r2, [r3]
  418ba6: f743 f891    	bl	0x35bccc <MAGNUM::getRANGE()> @ imm = #-0xbcede
  418baa: 4602         	mov	r2, r0
  418bac: 9b03         	ldr	r3, [sp, #0xc]
  418bae: 605a         	str	r2, [r3, #0x4]
  418bb0: e01c         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0x38
  418bb2: f73c f92b    	bl	0x354e0c <M14::getDAMAGE()> @ imm = #-0xc3daa
  418bb6: 4602         	mov	r2, r0
  418bb8: 9b03         	ldr	r3, [sp, #0xc]
  418bba: 601a         	str	r2, [r3]
  418bbc: f73c f91e    	bl	0x354dfc <M14::getRANGE()> @ imm = #-0xc3dc4
  418bc0: 4602         	mov	r2, r0
  418bc2: 9b03         	ldr	r3, [sp, #0xc]
  418bc4: 605a         	str	r2, [r3, #0x4]
  418bc6: e011         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0x22
  418bc8: f73f fe46    	bl	0x358858 <M93BA::getDAMAGE()> @ imm = #-0xc0374
  418bcc: 4602         	mov	r2, r0
  418bce: 9b03         	ldr	r3, [sp, #0xc]
  418bd0: 601a         	str	r2, [r3]
  418bd2: f73f fe39    	bl	0x358848 <M93BA::getRANGE()> @ imm = #-0xc038e
  418bd6: 4602         	mov	r2, r0
  418bd8: 9b03         	ldr	r3, [sp, #0xc]
  418bda: 605a         	str	r2, [r3, #0x4]
  418bdc: e006         	b	0x418bec <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x16c> @ imm = #0xc
  418bde: 9b03         	ldr	r3, [sp, #0xc]
  418be0: 2200         	movs	r2, #0x0
  418be2: 601a         	str	r2, [r3]
  418be4: 9b03         	ldr	r3, [sp, #0xc]
  418be6: 2201         	movs	r2, #0x1
  418be8: 605a         	str	r2, [r3, #0x4]
  418bea: bf00         	nop
  418bec: bf00         	nop
  418bee: 9803         	ldr	r0, [sp, #0xc]
  418bf0: b005         	add	sp, #0x14
  418bf2: f85d fb04    	ldr	pc, [sp], #4
