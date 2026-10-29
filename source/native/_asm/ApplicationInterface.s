// ApplicationInterface: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 62 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ApplicationInterface.cpp

// ==== ApplicationInterface::isBigEndian
//      file offset 0x4221b4 (= ELF address; Ghidra 0x4321b4), 56 bytes, Thumb-2
  4221b4: b082         	sub	sp, #0x8
  4221b6: 2301         	movs	r3, #0x1
  4221b8: 9300         	str	r3, [sp]
  4221ba: 9b00         	ldr	r3, [sp]
  4221bc: 9301         	str	r3, [sp, #0x4]
  4221be: 9b01         	ldr	r3, [sp, #0x4]
  4221c0: 061a         	lsls	r2, r3, #0x18
  4221c2: 9b01         	ldr	r3, [sp, #0x4]
  4221c4: f403 437f    	and	r3, r3, #0xff00
  4221c8: 021b         	lsls	r3, r3, #0x8
  4221ca: 431a         	orrs	r2, r3
  4221cc: 9b01         	ldr	r3, [sp, #0x4]
  4221ce: f403 037f    	and	r3, r3, #0xff0000
  4221d2: 0a1b         	lsrs	r3, r3, #0x8
  4221d4: 431a         	orrs	r2, r3
  4221d6: 9b01         	ldr	r3, [sp, #0x4]
  4221d8: 0e1b         	lsrs	r3, r3, #0x18
  4221da: 4313         	orrs	r3, r2
  4221dc: 2b01         	cmp	r3, #0x1
  4221de: bf14         	ite	ne
  4221e0: 2300         	movne	r3, #0x0
  4221e2: 2301         	moveq	r3, #0x1
  4221e4: b2db         	uxtb	r3, r3
  4221e6: 4618         	mov	r0, r3
  4221e8: b002         	add	sp, #0x8
  4221ea: 4770         	bx	lr

// ==== ApplicationInterface::getClaimedIdentity
//      file offset 0x4221ec (= ELF address; Ghidra 0x4321ec), 148 bytes, Thumb-2
  4221ec: b510         	push	{r4, lr}
  4221ee: b084         	sub	sp, #0x10
  4221f0: 9001         	str	r0, [sp, #0x4]
  4221f2: 4c20         	ldr	r4, [pc, #0x80]         @ 0x422274 <ApplicationInterface::getClaimedIdentity()+0x88>
  4221f4: 447c         	add	r4, pc
  4221f6: 4b20         	ldr	r3, [pc, #0x80]         @ 0x422278 <ApplicationInterface::getClaimedIdentity()+0x8c>
  4221f8: 58e3         	ldr	r3, [r4, r3]
  4221fa: 4618         	mov	r0, r3
  4221fc: f392 ff2e    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x392e5c
  422200: 4603         	mov	r3, r0
  422202: 2b00         	cmp	r3, #0x0
  422204: bf14         	ite	ne
  422206: 2300         	movne	r3, #0x0
  422208: 2301         	moveq	r3, #0x1
  42220a: b2db         	uxtb	r3, r3
  42220c: 2b00         	cmp	r3, #0x0
  42220e: d021         	beq	0x422254 <ApplicationInterface::getClaimedIdentity()+0x68> @ imm = #0x42
  422210: f1c0 fa0c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c0418
  422214: 4603         	mov	r3, r0
  422216: aa03         	add	r2, sp, #0xc
  422218: 4610         	mov	r0, r2
  42221a: 4619         	mov	r1, r3
  42221c: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x42227c <ApplicationInterface::getClaimedIdentity()+0x90>
  42221e: 447b         	add	r3, pc
  422220: 461a         	mov	r2, r3
  422222: f1c0 f907    	bl	0x5e2434 <cocos2d::CCUserDefault::getStringForKey(char const*)> @ imm = #0x1c020e
  422226: ab03         	add	r3, sp, #0xc
  422228: 4618         	mov	r0, r3
  42222a: f392 ff17    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x392e2e
  42222e: 4603         	mov	r3, r0
  422230: 2b00         	cmp	r3, #0x0
  422232: bf0c         	ite	eq
  422234: 2300         	moveq	r3, #0x0
  422236: 2301         	movne	r3, #0x1
  422238: b2db         	uxtb	r3, r3
  42223a: 2b00         	cmp	r3, #0x0
  42223c: d006         	beq	0x42224c <ApplicationInterface::getClaimedIdentity()+0x60> @ imm = #0xc
  42223e: ab03         	add	r3, sp, #0xc
  422240: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x422278 <ApplicationInterface::getClaimedIdentity()+0x8c>
  422242: 58a2         	ldr	r2, [r4, r2]
  422244: 4610         	mov	r0, r2
  422246: 4619         	mov	r1, r3
  422248: f394 f9b4    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x394368
  42224c: ab03         	add	r3, sp, #0xc
  42224e: 4618         	mov	r0, r3
  422250: f393 fb60    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3936c0
  422254: 9801         	ldr	r0, [sp, #0x4]
  422256: 4b08         	ldr	r3, [pc, #0x20]         @ 0x422278 <ApplicationInterface::getClaimedIdentity()+0x8c>
  422258: 58e3         	ldr	r3, [r4, r3]
  42225a: 4619         	mov	r1, r3
  42225c: f394 f944    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x394288
  422260: e005         	b	0x42226e <ApplicationInterface::getClaimedIdentity()+0x82> @ imm = #0xa
  422262: ab03         	add	r3, sp, #0xc
  422264: 4618         	mov	r0, r3
  422266: f393 fb55    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3936aa
  42226a: f365 ff1f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x365e3e
  42226e: 9801         	ldr	r0, [sp, #0x4]
  422270: b004         	add	sp, #0x10
  422272: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x422273); words below are literal-pool data ---
  422274: 0814         	lsrs	r4, r2, #0x20
  422276: 0051         	lsls	r1, r2, #0x1
  422278: dfe4         	svc	#0xe4
  42227a: ffff 9ffe    	<unknown>
  42227e: 003b         	movs	r3, r7

// ==== ApplicationInterface::getClaimedAvatarName
//      file offset 0x422280 (= ELF address; Ghidra 0x432280), 108 bytes, Thumb-2
  422280: b510         	push	{r4, lr}
  422282: b084         	sub	sp, #0x10
  422284: 9001         	str	r0, [sp, #0x4]
  422286: f1c0 f9d1    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c03a2
  42228a: 4604         	mov	r4, r0
  42228c: ab02         	add	r3, sp, #0x8
  42228e: 4618         	mov	r0, r3
  422290: f368 f8b0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x368160
  422294: aa03         	add	r2, sp, #0xc
  422296: ab02         	add	r3, sp, #0x8
  422298: 4610         	mov	r0, r2
  42229a: 4a12         	ldr	r2, [pc, #0x48]         @ 0x4222e4 <ApplicationInterface::getClaimedAvatarName()+0x64>
  42229c: 447a         	add	r2, pc
  42229e: 4611         	mov	r1, r2
  4222a0: 461a         	mov	r2, r3
  4222a2: f394 fbdd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3947ba
  4222a6: 9a01         	ldr	r2, [sp, #0x4]
  4222a8: ab03         	add	r3, sp, #0xc
  4222aa: 4610         	mov	r0, r2
  4222ac: 4621         	mov	r1, r4
  4222ae: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x4222e8 <ApplicationInterface::getClaimedAvatarName()+0x68>
  4222b0: 447a         	add	r2, pc
  4222b2: f1c0 f8f3    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x1c01e6
  4222b6: ab03         	add	r3, sp, #0xc
  4222b8: 4618         	mov	r0, r3
  4222ba: f393 fb2b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x393656
  4222be: ab02         	add	r3, sp, #0x8
  4222c0: 4618         	mov	r0, r3
  4222c2: f368 f89b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x368136
  4222c6: e00a         	b	0x4222de <ApplicationInterface::getClaimedAvatarName()+0x5e> @ imm = #0x14
  4222c8: ab03         	add	r3, sp, #0xc
  4222ca: 4618         	mov	r0, r3
  4222cc: f393 fb22    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x393644
  4222d0: e7ff         	b	0x4222d2 <ApplicationInterface::getClaimedAvatarName()+0x52> @ imm = #-0x2
  4222d2: ab02         	add	r3, sp, #0x8
  4222d4: 4618         	mov	r0, r3
  4222d6: f368 f891    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x368122
  4222da: f365 fee7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x365dce
  4222de: 9801         	ldr	r0, [sp, #0x4]
  4222e0: b004         	add	sp, #0x10
  4222e2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4222e3); words below are literal-pool data ---
  4222e4: 9f98         	ldr	r7, [sp, #0x260]
  4222e6: 003b         	movs	r3, r7
  4222e8: 9f8c         	ldr	r7, [sp, #0x230]
  4222ea: 003b         	movs	r3, r7

// ==== ApplicationInterface::getDeviceIdentity
//      file offset 0x4222ec (= ELF address; Ghidra 0x4322ec), 148 bytes, Thumb-2
  4222ec: b510         	push	{r4, lr}
  4222ee: b084         	sub	sp, #0x10
  4222f0: 9001         	str	r0, [sp, #0x4]
  4222f2: 4c20         	ldr	r4, [pc, #0x80]         @ 0x422374 <ApplicationInterface::getDeviceIdentity()+0x88>
  4222f4: 447c         	add	r4, pc
  4222f6: 4b20         	ldr	r3, [pc, #0x80]         @ 0x422378 <ApplicationInterface::getDeviceIdentity()+0x8c>
  4222f8: 58e3         	ldr	r3, [r4, r3]
  4222fa: 4618         	mov	r0, r3
  4222fc: f392 feae    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x392d5c
  422300: 4603         	mov	r3, r0
  422302: 2b00         	cmp	r3, #0x0
  422304: bf14         	ite	ne
  422306: 2300         	movne	r3, #0x0
  422308: 2301         	moveq	r3, #0x1
  42230a: b2db         	uxtb	r3, r3
  42230c: 2b00         	cmp	r3, #0x0
  42230e: d021         	beq	0x422354 <ApplicationInterface::getDeviceIdentity()+0x68> @ imm = #0x42
  422310: f1c0 f98c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c0318
  422314: 4603         	mov	r3, r0
  422316: aa03         	add	r2, sp, #0xc
  422318: 4610         	mov	r0, r2
  42231a: 4619         	mov	r1, r3
  42231c: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x42237c <ApplicationInterface::getDeviceIdentity()+0x90>
  42231e: 447b         	add	r3, pc
  422320: 461a         	mov	r2, r3
  422322: f1c0 f887    	bl	0x5e2434 <cocos2d::CCUserDefault::getStringForKey(char const*)> @ imm = #0x1c010e
  422326: ab03         	add	r3, sp, #0xc
  422328: 4618         	mov	r0, r3
  42232a: f392 fe97    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x392d2e
  42232e: 4603         	mov	r3, r0
  422330: 2b00         	cmp	r3, #0x0
  422332: bf0c         	ite	eq
  422334: 2300         	moveq	r3, #0x0
  422336: 2301         	movne	r3, #0x1
  422338: b2db         	uxtb	r3, r3
  42233a: 2b00         	cmp	r3, #0x0
  42233c: d006         	beq	0x42234c <ApplicationInterface::getDeviceIdentity()+0x60> @ imm = #0xc
  42233e: ab03         	add	r3, sp, #0xc
  422340: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x422378 <ApplicationInterface::getDeviceIdentity()+0x8c>
  422342: 58a2         	ldr	r2, [r4, r2]
  422344: 4610         	mov	r0, r2
  422346: 4619         	mov	r1, r3
  422348: f394 f934    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x394268
  42234c: ab03         	add	r3, sp, #0xc
  42234e: 4618         	mov	r0, r3
  422350: f393 fae0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3935c0
  422354: 9801         	ldr	r0, [sp, #0x4]
  422356: 4b08         	ldr	r3, [pc, #0x20]         @ 0x422378 <ApplicationInterface::getDeviceIdentity()+0x8c>
  422358: 58e3         	ldr	r3, [r4, r3]
  42235a: 4619         	mov	r1, r3
  42235c: f394 f8c4    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x394188
  422360: e005         	b	0x42236e <ApplicationInterface::getDeviceIdentity()+0x82> @ imm = #0xa
  422362: ab03         	add	r3, sp, #0xc
  422364: 4618         	mov	r0, r3
  422366: f393 fad5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3935aa
  42236a: f365 fe9f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x365d3e
  42236e: 9801         	ldr	r0, [sp, #0x4]
  422370: b004         	add	sp, #0x10
  422372: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x422373); words below are literal-pool data ---
  422374: 0714         	lsls	r4, r2, #0x1c
  422376: 0051         	lsls	r1, r2, #0x1
  422378: dfe8         	svc	#0xe8
  42237a: ffff 9f2a    	<unknown>
  42237e: 003b         	movs	r3, r7

// ==== ApplicationInterface::setClaimedIdentity
//      file offset 0x422380 (= ELF address; Ghidra 0x432380), 88 bytes, Thumb-2
  422380: b510         	push	{r4, lr}
  422382: b082         	sub	sp, #0x8
  422384: 9001         	str	r0, [sp, #0x4]
  422386: 4c11         	ldr	r4, [pc, #0x44]         @ 0x4223cc <ApplicationInterface::setClaimedIdentity(std::string)+0x4c>
  422388: 447c         	add	r4, pc
  42238a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x4223d0 <ApplicationInterface::setClaimedIdentity(std::string)+0x50>
  42238c: 58e3         	ldr	r3, [r4, r3]
  42238e: 4618         	mov	r0, r3
  422390: 9901         	ldr	r1, [sp, #0x4]
  422392: f393 f973    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3932e6
  422396: 4603         	mov	r3, r0
  422398: 2b00         	cmp	r3, #0x0
  42239a: bf0c         	ite	eq
  42239c: 2300         	moveq	r3, #0x0
  42239e: 2301         	movne	r3, #0x1
  4223a0: b2db         	uxtb	r3, r3
  4223a2: 2b00         	cmp	r3, #0x0
  4223a4: d00f         	beq	0x4223c6 <ApplicationInterface::setClaimedIdentity(std::string)+0x46> @ imm = #0x1e
  4223a6: f1c0 f941    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c0282
  4223aa: 4603         	mov	r3, r0
  4223ac: 4618         	mov	r0, r3
  4223ae: 4b09         	ldr	r3, [pc, #0x24]         @ 0x4223d4 <ApplicationInterface::setClaimedIdentity(std::string)+0x54>
  4223b0: 447b         	add	r3, pc
  4223b2: 4619         	mov	r1, r3
  4223b4: 9a01         	ldr	r2, [sp, #0x4]
  4223b6: f1c0 f925    	bl	0x5e2604 <cocos2d::CCUserDefault::setStringForKey(char const*, std::string const&)> @ imm = #0x1c024a
  4223ba: 4b05         	ldr	r3, [pc, #0x14]         @ 0x4223d0 <ApplicationInterface::setClaimedIdentity(std::string)+0x50>
  4223bc: 58e3         	ldr	r3, [r4, r3]
  4223be: 4618         	mov	r0, r3
  4223c0: 9901         	ldr	r1, [sp, #0x4]
  4223c2: f394 f8f7    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3941ee
  4223c6: b002         	add	sp, #0x8
  4223c8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4223c9); words below are literal-pool data ---
  4223ca: bf00         	nop
  4223cc: 0680         	lsls	r0, r0, #0x1a
  4223ce: 0051         	lsls	r1, r2, #0x1
  4223d0: dfe4         	svc	#0xe4
  4223d2: ffff 9e6c    	<unknown>
  4223d6: 003b         	movs	r3, r7

// ==== ApplicationInterface::setDeviceIdentity
//      file offset 0x4223d8 (= ELF address; Ghidra 0x4323d8), 88 bytes, Thumb-2
  4223d8: b510         	push	{r4, lr}
  4223da: b082         	sub	sp, #0x8
  4223dc: 9001         	str	r0, [sp, #0x4]
  4223de: 4c11         	ldr	r4, [pc, #0x44]         @ 0x422424 <ApplicationInterface::setDeviceIdentity(std::string)+0x4c>
  4223e0: 447c         	add	r4, pc
  4223e2: 4b11         	ldr	r3, [pc, #0x44]         @ 0x422428 <ApplicationInterface::setDeviceIdentity(std::string)+0x50>
  4223e4: 58e3         	ldr	r3, [r4, r3]
  4223e6: 4618         	mov	r0, r3
  4223e8: 9901         	ldr	r1, [sp, #0x4]
  4223ea: f393 f947    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x39328e
  4223ee: 4603         	mov	r3, r0
  4223f0: 2b00         	cmp	r3, #0x0
  4223f2: bf0c         	ite	eq
  4223f4: 2300         	moveq	r3, #0x0
  4223f6: 2301         	movne	r3, #0x1
  4223f8: b2db         	uxtb	r3, r3
  4223fa: 2b00         	cmp	r3, #0x0
  4223fc: d00f         	beq	0x42241e <ApplicationInterface::setDeviceIdentity(std::string)+0x46> @ imm = #0x1e
  4223fe: f1c0 f915    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1c022a
  422402: 4603         	mov	r3, r0
  422404: 4618         	mov	r0, r3
  422406: 4b09         	ldr	r3, [pc, #0x24]         @ 0x42242c <ApplicationInterface::setDeviceIdentity(std::string)+0x54>
  422408: 447b         	add	r3, pc
  42240a: 4619         	mov	r1, r3
  42240c: 9a01         	ldr	r2, [sp, #0x4]
  42240e: f1c0 f8f9    	bl	0x5e2604 <cocos2d::CCUserDefault::setStringForKey(char const*, std::string const&)> @ imm = #0x1c01f2
  422412: 4b05         	ldr	r3, [pc, #0x14]         @ 0x422428 <ApplicationInterface::setDeviceIdentity(std::string)+0x50>
  422414: 58e3         	ldr	r3, [r4, r3]
  422416: 4618         	mov	r0, r3
  422418: 9901         	ldr	r1, [sp, #0x4]
  42241a: f394 f8cb    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x394196
  42241e: b002         	add	sp, #0x8
  422420: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x422421); words below are literal-pool data ---
  422422: bf00         	nop
  422424: 0628         	lsls	r0, r5, #0x18
  422426: 0051         	lsls	r1, r2, #0x1
  422428: dfe8         	svc	#0xe8
  42242a: ffff 9e40    	<unknown>
  42242e: 003b         	movs	r3, r7

// ==== ApplicationInterface::hasClaimedIdentity
//      file offset 0x422430 (= ELF address; Ghidra 0x432430), 48 bytes, Thumb-2
  422430: b510         	push	{r4, lr}
  422432: b082         	sub	sp, #0x8
  422434: ab01         	add	r3, sp, #0x4
  422436: 4618         	mov	r0, r3
  422438: f7ff fed8    	bl	0x4221ec <ApplicationInterface::getClaimedIdentity()> @ imm = #-0x250
  42243c: ab01         	add	r3, sp, #0x4
  42243e: 4618         	mov	r0, r3
  422440: f392 fe0c    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x392c18
  422444: 4603         	mov	r3, r0
  422446: 2b00         	cmp	r3, #0x0
  422448: bf0c         	ite	eq
  42244a: 2300         	moveq	r3, #0x0
  42244c: 2301         	movne	r3, #0x1
  42244e: b2dc         	uxtb	r4, r3
  422450: ab01         	add	r3, sp, #0x4
  422452: 4618         	mov	r0, r3
  422454: f393 fa5e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3934bc
  422458: 4623         	mov	r3, r4
  42245a: 4618         	mov	r0, r3
  42245c: b002         	add	sp, #0x8
  42245e: bd10         	pop	{r4, pc}

// ==== ApplicationInterface::hasDeviceIdentity
//      file offset 0x422460 (= ELF address; Ghidra 0x432460), 48 bytes, Thumb-2
  422460: b510         	push	{r4, lr}
  422462: b082         	sub	sp, #0x8
  422464: ab01         	add	r3, sp, #0x4
  422466: 4618         	mov	r0, r3
  422468: f7ff ff40    	bl	0x4222ec <ApplicationInterface::getDeviceIdentity()> @ imm = #-0x180
  42246c: ab01         	add	r3, sp, #0x4
  42246e: 4618         	mov	r0, r3
  422470: f392 fdf4    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x392be8
  422474: 4603         	mov	r3, r0
  422476: 2b00         	cmp	r3, #0x0
  422478: bf0c         	ite	eq
  42247a: 2300         	moveq	r3, #0x0
  42247c: 2301         	movne	r3, #0x1
  42247e: b2dc         	uxtb	r4, r3
  422480: ab01         	add	r3, sp, #0x4
  422482: 4618         	mov	r0, r3
  422484: f393 fa46    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39348c
  422488: 4623         	mov	r3, r4
  42248a: 4618         	mov	r0, r3
  42248c: b002         	add	sp, #0x8
  42248e: bd10         	pop	{r4, pc}

// ==== ApplicationInterface::isTabletDisplay
//      file offset 0x422490 (= ELF address; Ghidra 0x432490), 80 bytes, Thumb-2
  422490: b500         	push	{lr}
  422492: b085         	sub	sp, #0x14
  422494: f1ab f97c    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x1ab2f8
  422498: 4603         	mov	r3, r0
  42249a: 681a         	ldr	r2, [r3]
  42249c: 3218         	adds	r2, #0x18
  42249e: 6812         	ldr	r2, [r2]
  4224a0: 4618         	mov	r0, r3
  4224a2: 4790         	blx	r2
  4224a4: 4603         	mov	r3, r0
  4224a6: aa02         	add	r2, sp, #0x8
  4224a8: 4610         	mov	r0, r2
  4224aa: 4619         	mov	r1, r3
  4224ac: f170 fe00    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x170c00
  4224b0: ed9d 7a02    	vldr	s14, [sp, #8]
  4224b4: eddd 7a03    	vldr	s15, [sp, #12]
  4224b8: eec7 7a27    	vdiv.f32	s15, s14, s15
  4224bc: edcd 7a01    	vstr	s15, [sp, #4]
  4224c0: ed9d 7a01    	vldr	s14, [sp, #4]
  4224c4: eef7 7a08    	vmov.f32	s15, #1.500000e+00
  4224c8: eeb4 7ae7    	vcmpe.f32	s14, s15
  4224cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4224d0: d501         	bpl	0x4224d6 <ApplicationInterface::isTabletDisplay()+0x46> @ imm = #0x2
  4224d2: 2301         	movs	r3, #0x1
  4224d4: e000         	b	0x4224d8 <ApplicationInterface::isTabletDisplay()+0x48> @ imm = #0x0
  4224d6: 2300         	movs	r3, #0x0
  4224d8: 4618         	mov	r0, r3
  4224da: b005         	add	sp, #0x14
  4224dc: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationInterface::aspectCorrection
//      file offset 0x4224e0 (= ELF address; Ghidra 0x4324e0), 80 bytes, Thumb-2
  4224e0: b500         	push	{lr}
  4224e2: b085         	sub	sp, #0x14
  4224e4: f1ab f954    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x1ab2a8
  4224e8: 4603         	mov	r3, r0
  4224ea: 681a         	ldr	r2, [r3]
  4224ec: 3218         	adds	r2, #0x18
  4224ee: 6812         	ldr	r2, [r2]
  4224f0: 4618         	mov	r0, r3
  4224f2: 4790         	blx	r2
  4224f4: 4603         	mov	r3, r0
  4224f6: aa02         	add	r2, sp, #0x8
  4224f8: 4610         	mov	r0, r2
  4224fa: 4619         	mov	r1, r3
  4224fc: f170 fdd8    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x170bb0
  422500: ed9d 7a02    	vldr	s14, [sp, #8]
  422504: eddd 7a03    	vldr	s15, [sp, #12]
  422508: eec7 7a27    	vdiv.f32	s15, s14, s15
  42250c: edcd 7a00    	vstr	s15, [sp]
  422510: ed9d 7a00    	vldr	s14, [sp]
  422514: eddf 7a05    	vldr	s15, [pc, #20]          @ 0x42252c <ApplicationInterface::aspectCorrection()+0x4c>
  422518: eec7 7a27    	vdiv.f32	s15, s14, s15
  42251c: edcd 7a01    	vstr	s15, [sp, #4]
  422520: 9b01         	ldr	r3, [sp, #0x4]
  422522: 4618         	mov	r0, r3
  422524: b005         	add	sp, #0x14
  422526: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x422529); words below are literal-pool data ---
  42252a: bf00         	nop
  42252c: 8e39         	ldrh	r1, [r7, #0x30]
  42252e: 3fe3         	subs	r7, #0xe3

// ==== ApplicationInterface::viewFactor
//      file offset 0x422530 (= ELF address; Ghidra 0x432530), 36 bytes, Thumb-2
  422530: 4a06         	ldr	r2, [pc, #0x18]         @ 0x42254c <ApplicationInterface::viewFactor()+0x1c>
  422532: 447a         	add	r2, pc
  422534: 4b06         	ldr	r3, [pc, #0x18]         @ 0x422550 <ApplicationInterface::viewFactor()+0x20>
  422536: 58d3         	ldr	r3, [r2, r3]
  422538: 781b         	ldrb	r3, [r3]
  42253a: 2b00         	cmp	r3, #0x0
  42253c: d002         	beq	0x422544 <ApplicationInterface::viewFactor()+0x14> @ imm = #0x4
  42253e: f04f 537d    	mov.w	r3, #0x3f400000
  422542: e001         	b	0x422548 <ApplicationInterface::viewFactor()+0x18> @ imm = #0x2
  422544: f04f 537e    	mov.w	r3, #0x3f800000
  422548: 4618         	mov	r0, r3
  42254a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x42254b); words below are literal-pool data ---
  42254c: 04d6         	lsls	r6, r2, #0x13
  42254e: 0051         	lsls	r1, r2, #0x1
  422550: d7a4         	bvc	0x42249c <ApplicationInterface::isTabletDisplay()+0xc> @ imm = #-0xb8
  422552: ffff 230a    	<unknown>

// ==== ApplicationInterface::getPlatformId
//      file offset 0x422554 (= ELF address; Ghidra 0x432554), 6 bytes, Thumb-2
  422554: 230a         	movs	r3, #0xa
  422556: 4618         	mov	r0, r3
  422558: 4770         	bx	lr

// ==== ApplicationInterface::getDiagnosticProperties
//      file offset 0x422590 (= ELF address; Ghidra 0x432590), 1932 bytes, Thumb-2
  422590: b5f0         	push	{r4, r5, r6, r7, lr}
  422592: b0b3         	sub	sp, #0xcc
  422594: 9003         	str	r0, [sp, #0xc]
  422596: ab15         	add	r3, sp, #0x54
  422598: 4618         	mov	r0, r3
  42259a: f009 fe1f    	bl	0x42c1dc <ApplicationInterface::getAppVersion()> @ imm = #0x9c3e
  42259e: ab15         	add	r3, sp, #0x54
  4225a0: 4618         	mov	r0, r3
  4225a2: f392 fead    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392d5a
  4225a6: 4606         	mov	r6, r0
  4225a8: f00a f9a4    	bl	0x42c8f4 <ApplicationInterface::getOSType()> @ imm = #0xa348
  4225ac: 4605         	mov	r5, r0
  4225ae: ab19         	add	r3, sp, #0x64
  4225b0: 4618         	mov	r0, r3
  4225b2: f7ff fe1b    	bl	0x4221ec <ApplicationInterface::getClaimedIdentity()> @ imm = #-0x3ca
  4225b6: ab19         	add	r3, sp, #0x64
  4225b8: 4618         	mov	r0, r3
  4225ba: f392 fea1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392d42
  4225be: 4604         	mov	r4, r0
  4225c0: ab1f         	add	r3, sp, #0x7c
  4225c2: 4618         	mov	r0, r3
  4225c4: f7ff fe5c    	bl	0x422280 <ApplicationInterface::getClaimedAvatarName()> @ imm = #-0x348
  4225c8: ab1f         	add	r3, sp, #0x7c
  4225ca: 4618         	mov	r0, r3
  4225cc: f392 fe98    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392d30
  4225d0: 4607         	mov	r7, r0
  4225d2: ab14         	add	r3, sp, #0x50
  4225d4: 4618         	mov	r0, r3
  4225d6: f367 ff0d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367e1a
  4225da: aa26         	add	r2, sp, #0x98
  4225dc: ab14         	add	r3, sp, #0x50
  4225de: 4610         	mov	r0, r2
  4225e0: f8df 26cc    	ldr.w	r2, [pc, #0x6cc]        @ 0x422cb0 <ApplicationInterface::getDiagnosticProperties()+0x720>
  4225e4: 447a         	add	r2, pc
  4225e6: 4611         	mov	r1, r2
  4225e8: 461a         	mov	r2, r3
  4225ea: f394 fa39    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x394472
  4225ee: ab26         	add	r3, sp, #0x98
  4225f0: 4618         	mov	r0, r3
  4225f2: f00f f8b5    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xf16a
  4225f6: 4603         	mov	r3, r0
  4225f8: 2b00         	cmp	r3, #0x0
  4225fa: d001         	beq	0x422600 <ApplicationInterface::getDiagnosticProperties()+0x70> @ imm = #0x2
  4225fc: 2301         	movs	r3, #0x1
  4225fe: e000         	b	0x422602 <ApplicationInterface::getDiagnosticProperties()+0x72> @ imm = #0x0
  422600: 2300         	movs	r3, #0x0
  422602: 9700         	str	r7, [sp]
  422604: 9301         	str	r3, [sp, #0x4]
  422606: f8df 36ac    	ldr.w	r3, [pc, #0x6ac]        @ 0x422cb4 <ApplicationInterface::getDiagnosticProperties()+0x724>
  42260a: 447b         	add	r3, pc
  42260c: 4618         	mov	r0, r3
  42260e: 4631         	mov	r1, r6
  422610: 462a         	mov	r2, r5
  422612: 4623         	mov	r3, r4
  422614: f177 fa7c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1774f8
  422618: 4603         	mov	r3, r0
  42261a: 9316         	str	r3, [sp, #0x58]
  42261c: ab26         	add	r3, sp, #0x98
  42261e: 4618         	mov	r0, r3
  422620: f393 f978    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3932f0
  422624: ab14         	add	r3, sp, #0x50
  422626: 4618         	mov	r0, r3
  422628: f367 fee8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367dd0
  42262c: ab1f         	add	r3, sp, #0x7c
  42262e: 4618         	mov	r0, r3
  422630: f393 f970    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3932e0
  422634: ab19         	add	r3, sp, #0x64
  422636: 4618         	mov	r0, r3
  422638: f393 f96c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3932d8
  42263c: ab15         	add	r3, sp, #0x54
  42263e: 4618         	mov	r0, r3
  422640: f393 f968    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3932d0
  422644: 9803         	ldr	r0, [sp, #0xc]
  422646: f392 fdb3    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x392b66
  42264a: 9816         	ldr	r0, [sp, #0x58]
  42264c: f177 f96c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1772d8
  422650: 4604         	mov	r4, r0
  422652: ab1f         	add	r3, sp, #0x7c
  422654: 4618         	mov	r0, r3
  422656: f367 fecd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367d9a
  42265a: aa05         	add	r2, sp, #0x14
  42265c: ab1f         	add	r3, sp, #0x7c
  42265e: 4610         	mov	r0, r2
  422660: f8df 2654    	ldr.w	r2, [pc, #0x654]        @ 0x422cb8 <ApplicationInterface::getDiagnosticProperties()+0x728>
  422664: 447a         	add	r2, pc
  422666: 4611         	mov	r1, r2
  422668: 461a         	mov	r2, r3
  42266a: f394 f9f9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3943f2
  42266e: aa06         	add	r2, sp, #0x18
  422670: ab05         	add	r3, sp, #0x14
  422672: 4610         	mov	r0, r2
  422674: 4621         	mov	r1, r4
  422676: 461a         	mov	r2, r3
  422678: f000 fe8e    	bl	0x423398 <std::basic_string<char, std::char_traits<char>, std::allocator<char>> std::operator+<char, std::char_traits<char>, std::allocator<char>>(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char>>&&)> @ imm = #0xd1c
  42267c: ab26         	add	r3, sp, #0x98
  42267e: 4618         	mov	r0, r3
  422680: f367 feb8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367d70
  422684: aa07         	add	r2, sp, #0x1c
  422686: ab26         	add	r3, sp, #0x98
  422688: 4610         	mov	r0, r2
  42268a: f8df 2630    	ldr.w	r2, [pc, #0x630]        @ 0x422cbc <ApplicationInterface::getDiagnosticProperties()+0x72c>
  42268e: 447a         	add	r2, pc
  422690: 4611         	mov	r1, r2
  422692: 461a         	mov	r2, r3
  422694: f394 f9e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3943c8
  422698: a908         	add	r1, sp, #0x20
  42269a: aa06         	add	r2, sp, #0x18
  42269c: ab07         	add	r3, sp, #0x1c
  42269e: 4608         	mov	r0, r1
  4226a0: 4611         	mov	r1, r2
  4226a2: 461a         	mov	r2, r3
  4226a4: f000 fe90    	bl	0x4233c8 <std::basic_string<char, std::char_traits<char>, std::allocator<char>> std::operator+<char, std::char_traits<char>, std::allocator<char>>(std::basic_string<char, std::char_traits<char>, std::allocator<char>>&&, std::basic_string<char, std::char_traits<char>, std::allocator<char>>&&)> @ imm = #0xd20
  4226a8: ab08         	add	r3, sp, #0x20
  4226aa: 9803         	ldr	r0, [sp, #0xc]
  4226ac: 4619         	mov	r1, r3
  4226ae: f393 fd37    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x393a6e
  4226b2: ab08         	add	r3, sp, #0x20
  4226b4: 4618         	mov	r0, r3
  4226b6: f393 f92d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39325a
  4226ba: ab07         	add	r3, sp, #0x1c
  4226bc: 4618         	mov	r0, r3
  4226be: f393 f929    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x393252
  4226c2: ab26         	add	r3, sp, #0x98
  4226c4: 4618         	mov	r0, r3
  4226c6: f367 fe99    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367d32
  4226ca: ab06         	add	r3, sp, #0x18
  4226cc: 4618         	mov	r0, r3
  4226ce: f393 f921    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x393242
  4226d2: ab05         	add	r3, sp, #0x14
  4226d4: 4618         	mov	r0, r3
  4226d6: f393 f91d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39323a
  4226da: ab1f         	add	r3, sp, #0x7c
  4226dc: 4618         	mov	r0, r3
  4226de: f367 fe8d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367d1a
  4226e2: ab26         	add	r3, sp, #0x98
  4226e4: 4618         	mov	r0, r3
  4226e6: 2100         	movs	r1, #0x0
  4226e8: f44f 6280    	mov.w	r2, #0x400
  4226ec: f759 fc46    	bl	0x37bf7c <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericDocument(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #-0xa6774
  4226f0: ab26         	add	r3, sp, #0x98
  4226f2: 4618         	mov	r0, r3
  4226f4: f000 feb0    	bl	0x423458 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetObject()> @ imm = #0xd60
  4226f8: ab19         	add	r3, sp, #0x64
  4226fa: 4618         	mov	r0, r3
  4226fc: 2100         	movs	r1, #0x0
  4226fe: f44f 7280    	mov.w	r2, #0x100
  422702: f000 fec7    	bl	0x423494 <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::GenericStringBuffer(rapidjson::CrtAllocator*, unsigned int)> @ imm = #0xd8e
  422706: aa1f         	add	r2, sp, #0x7c
  422708: ab19         	add	r3, sp, #0x64
  42270a: 4610         	mov	r0, r2
  42270c: 4619         	mov	r1, r3
  42270e: 2200         	movs	r2, #0x0
  422710: 2320         	movs	r3, #0x20
  422712: f000 fee1    	bl	0x4234d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Writer(rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>&, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int)> @ imm = #0xdc2
  422716: aa26         	add	r2, sp, #0x98
  422718: ab1f         	add	r3, sp, #0x7c
  42271a: 4610         	mov	r0, r2
  42271c: 4619         	mov	r1, r3
  42271e: f000 fef3    	bl	0x423508 <rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> const& rapidjson::GenericValue<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>&) const> @ imm = #0xde6
  422722: ab1f         	add	r3, sp, #0x7c
  422724: 4618         	mov	r0, r3
  422726: f000 ffaf    	bl	0x423688 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StartObject()> @ imm = #0xf5e
  42272a: ab1f         	add	r3, sp, #0x7c
  42272c: 4618         	mov	r0, r3
  42272e: f8df 3590    	ldr.w	r3, [pc, #0x590]        @ 0x422cc0 <ApplicationInterface::getDiagnosticProperties()+0x730>
  422732: 447b         	add	r3, pc
  422734: 4619         	mov	r1, r3
  422736: f000 ffcf    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf9e
  42273a: ab09         	add	r3, sp, #0x24
  42273c: 4618         	mov	r0, r3
  42273e: f009 fd4d    	bl	0x42c1dc <ApplicationInterface::getAppVersion()> @ imm = #0x9a9a
  422742: ab09         	add	r3, sp, #0x24
  422744: 4618         	mov	r0, r3
  422746: f392 fddb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392bb6
  42274a: 4603         	mov	r3, r0
  42274c: aa1f         	add	r2, sp, #0x7c
  42274e: 4610         	mov	r0, r2
  422750: 4619         	mov	r1, r3
  422752: f000 ffc1    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf82
  422756: ab09         	add	r3, sp, #0x24
  422758: 4618         	mov	r0, r3
  42275a: f393 f8db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3931b6
  42275e: ab1f         	add	r3, sp, #0x7c
  422760: 4618         	mov	r0, r3
  422762: f8df 3560    	ldr.w	r3, [pc, #0x560]        @ 0x422cc4 <ApplicationInterface::getDiagnosticProperties()+0x734>
  422766: 447b         	add	r3, pc
  422768: 4619         	mov	r1, r3
  42276a: f000 ffb5    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf6a
  42276e: ab0a         	add	r3, sp, #0x28
  422770: 4618         	mov	r0, r3
  422772: f7ff fd85    	bl	0x422280 <ApplicationInterface::getClaimedAvatarName()> @ imm = #-0x4f6
  422776: ab0a         	add	r3, sp, #0x28
  422778: 4618         	mov	r0, r3
  42277a: f392 fdc1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392b82
  42277e: 4603         	mov	r3, r0
  422780: aa1f         	add	r2, sp, #0x7c
  422782: 4610         	mov	r0, r2
  422784: 4619         	mov	r1, r3
  422786: f000 ffa7    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf4e
  42278a: ab0a         	add	r3, sp, #0x28
  42278c: 4618         	mov	r0, r3
  42278e: f393 f8c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x393182
  422792: ab1f         	add	r3, sp, #0x7c
  422794: 4618         	mov	r0, r3
  422796: f8df 3530    	ldr.w	r3, [pc, #0x530]        @ 0x422cc8 <ApplicationInterface::getDiagnosticProperties()+0x738>
  42279a: 447b         	add	r3, pc
  42279c: 4619         	mov	r1, r3
  42279e: f000 ff9b    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf36
  4227a2: ab0b         	add	r3, sp, #0x2c
  4227a4: 4618         	mov	r0, r3
  4227a6: f7ff fd21    	bl	0x4221ec <ApplicationInterface::getClaimedIdentity()> @ imm = #-0x5be
  4227aa: ab0b         	add	r3, sp, #0x2c
  4227ac: 4618         	mov	r0, r3
  4227ae: f392 fda7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392b4e
  4227b2: 4603         	mov	r3, r0
  4227b4: aa1f         	add	r2, sp, #0x7c
  4227b6: 4610         	mov	r0, r2
  4227b8: 4619         	mov	r1, r3
  4227ba: f000 ff8d    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf1a
  4227be: ab0b         	add	r3, sp, #0x2c
  4227c0: 4618         	mov	r0, r3
  4227c2: f393 f8a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39314e
  4227c6: ab1f         	add	r3, sp, #0x7c
  4227c8: 4618         	mov	r0, r3
  4227ca: f8df 3500    	ldr.w	r3, [pc, #0x500]        @ 0x422ccc <ApplicationInterface::getDiagnosticProperties()+0x73c>
  4227ce: 447b         	add	r3, pc
  4227d0: 4619         	mov	r1, r3
  4227d2: f000 ff81    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xf02
  4227d6: ab0c         	add	r3, sp, #0x30
  4227d8: 4618         	mov	r0, r3
  4227da: f7ff fd87    	bl	0x4222ec <ApplicationInterface::getDeviceIdentity()> @ imm = #-0x4f2
  4227de: ab0c         	add	r3, sp, #0x30
  4227e0: 4618         	mov	r0, r3
  4227e2: f392 fd8d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392b1a
  4227e6: 4603         	mov	r3, r0
  4227e8: aa1f         	add	r2, sp, #0x7c
  4227ea: 4610         	mov	r0, r2
  4227ec: 4619         	mov	r1, r3
  4227ee: f000 ff73    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xee6
  4227f2: ab0c         	add	r3, sp, #0x30
  4227f4: 4618         	mov	r0, r3
  4227f6: f393 f88d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39311a
  4227fa: ab1f         	add	r3, sp, #0x7c
  4227fc: 4618         	mov	r0, r3
  4227fe: f8df 34d0    	ldr.w	r3, [pc, #0x4d0]        @ 0x422cd0 <ApplicationInterface::getDiagnosticProperties()+0x740>
  422802: 447b         	add	r3, pc
  422804: 4619         	mov	r1, r3
  422806: f000 ff67    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xece
  42280a: f00a f873    	bl	0x42c8f4 <ApplicationInterface::getOSType()> @ imm = #0xa0e6
  42280e: 4603         	mov	r3, r0
  422810: aa1f         	add	r2, sp, #0x7c
  422812: 4610         	mov	r0, r2
  422814: 4619         	mov	r1, r3
  422816: f000 ff73    	bl	0x423700 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int(int)> @ imm = #0xee6
  42281a: ab1f         	add	r3, sp, #0x7c
  42281c: 4618         	mov	r0, r3
  42281e: f8df 34b4    	ldr.w	r3, [pc, #0x4b4]        @ 0x422cd4 <ApplicationInterface::getDiagnosticProperties()+0x744>
  422822: 447b         	add	r3, pc
  422824: 4619         	mov	r1, r3
  422826: f000 ff57    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xeae
  42282a: f7ff fe93    	bl	0x422554 <ApplicationInterface::getPlatformId()> @ imm = #-0x2da
  42282e: 4603         	mov	r3, r0
  422830: aa1f         	add	r2, sp, #0x7c
  422832: 4610         	mov	r0, r2
  422834: 4619         	mov	r1, r3
  422836: f000 ff63    	bl	0x423700 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int(int)> @ imm = #0xec6
  42283a: ab1f         	add	r3, sp, #0x7c
  42283c: 4618         	mov	r0, r3
  42283e: f8df 3498    	ldr.w	r3, [pc, #0x498]        @ 0x422cd8 <ApplicationInterface::getDiagnosticProperties()+0x748>
  422842: 447b         	add	r3, pc
  422844: 4619         	mov	r1, r3
  422846: f000 ff47    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xe8e
  42284a: f755 f979    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaad0e
  42284e: 4603         	mov	r3, r0
  422850: aa0d         	add	r2, sp, #0x34
  422852: 4610         	mov	r0, r2
  422854: 4619         	mov	r1, r3
  422856: f758 fbe9    	bl	0x37b02c <NetworkManager::getPrivateClientToken()> @ imm = #-0xa782e
  42285a: ab0d         	add	r3, sp, #0x34
  42285c: 4618         	mov	r0, r3
  42285e: f392 fd4f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x392a9e
  422862: 4603         	mov	r3, r0
  422864: aa1f         	add	r2, sp, #0x7c
  422866: 4610         	mov	r0, r2
  422868: 4619         	mov	r1, r3
  42286a: f000 ff35    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xe6a
  42286e: ab0d         	add	r3, sp, #0x34
  422870: 4618         	mov	r0, r3
  422872: f393 f84f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39309e
  422876: ab1f         	add	r3, sp, #0x7c
  422878: 4618         	mov	r0, r3
  42287a: f8df 3460    	ldr.w	r3, [pc, #0x460]        @ 0x422cdc <ApplicationInterface::getDiagnosticProperties()+0x74c>
  42287e: 447b         	add	r3, pc
  422880: 4619         	mov	r1, r3
  422882: f000 ff29    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xe52
  422886: f755 f95b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaad4a
  42288a: 4603         	mov	r3, r0
  42288c: 4618         	mov	r0, r3
  42288e: f758 fbad    	bl	0x37afec <NetworkManager::hasCompletedSessionRequest()> @ imm = #-0xa78a6
  422892: 4603         	mov	r3, r0
  422894: aa1f         	add	r2, sp, #0x7c
  422896: 4610         	mov	r0, r2
  422898: 4619         	mov	r1, r3
  42289a: f000 ff43    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xe86
  42289e: ab1f         	add	r3, sp, #0x7c
  4228a0: 4618         	mov	r0, r3
  4228a2: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x422ce0 <ApplicationInterface::getDiagnosticProperties()+0x750>
  4228a6: 447b         	add	r3, pc
  4228a8: 4619         	mov	r1, r3
  4228aa: f000 ff15    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xe2a
  4228ae: f755 f947    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaad72
  4228b2: 4603         	mov	r3, r0
  4228b4: 4618         	mov	r0, r3
  4228b6: f011 f9fb    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x113f6
  4228ba: 4603         	mov	r3, r0
  4228bc: aa1f         	add	r2, sp, #0x7c
  4228be: 4610         	mov	r0, r2
  4228c0: 4619         	mov	r1, r3
  4228c2: f000 ff2f    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xe5e
  4228c6: ab1f         	add	r3, sp, #0x7c
  4228c8: 4618         	mov	r0, r3
  4228ca: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x422ce4 <ApplicationInterface::getDiagnosticProperties()+0x754>
  4228ce: 447b         	add	r3, pc
  4228d0: 4619         	mov	r1, r3
  4228d2: f000 ff01    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xe02
  4228d6: f00a f811    	bl	0x42c8fc <ApplicationInterface::isGpgsInstalled()> @ imm = #0xa022
  4228da: 4603         	mov	r3, r0
  4228dc: aa1f         	add	r2, sp, #0x7c
  4228de: 4610         	mov	r0, r2
  4228e0: 4619         	mov	r1, r3
  4228e2: f000 ff1f    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xe3e
  4228e6: ab1f         	add	r3, sp, #0x7c
  4228e8: 4618         	mov	r0, r3
  4228ea: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x422ce8 <ApplicationInterface::getDiagnosticProperties()+0x758>
  4228ec: 447b         	add	r3, pc
  4228ee: 4619         	mov	r1, r3
  4228f0: f000 fef2    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xde4
  4228f4: f00a f802    	bl	0x42c8fc <ApplicationInterface::isGpgsInstalled()> @ imm = #0xa004
  4228f8: 4603         	mov	r3, r0
  4228fa: aa1f         	add	r2, sp, #0x7c
  4228fc: 4610         	mov	r0, r2
  4228fe: 4619         	mov	r1, r3
  422900: f000 ff10    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xe20
  422904: ab1f         	add	r3, sp, #0x7c
  422906: 4618         	mov	r0, r3
  422908: 4bf8         	ldr	r3, [pc, #0x3e0]        @ 0x422cec <ApplicationInterface::getDiagnosticProperties()+0x75c>
  42290a: 447b         	add	r3, pc
  42290c: 4619         	mov	r1, r3
  42290e: f000 fee3    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xdc6
  422912: f009 fff3    	bl	0x42c8fc <ApplicationInterface::isGpgsInstalled()> @ imm = #0x9fe6
  422916: 4603         	mov	r3, r0
  422918: aa1f         	add	r2, sp, #0x7c
  42291a: 4610         	mov	r0, r2
  42291c: 4619         	mov	r1, r3
  42291e: f000 ff01    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xe02
  422922: ab1f         	add	r3, sp, #0x7c
  422924: 4618         	mov	r0, r3
  422926: 4bf2         	ldr	r3, [pc, #0x3c8]        @ 0x422cf0 <ApplicationInterface::getDiagnosticProperties()+0x760>
  422928: 447b         	add	r3, pc
  42292a: 4619         	mov	r1, r3
  42292c: f000 fed4    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xda8
  422930: f7ff fdd6    	bl	0x4224e0 <ApplicationInterface::aspectCorrection()> @ imm = #-0x454
  422934: ee07 0a90    	vmov	s15, r0
  422938: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  42293c: ab1f         	add	r3, sp, #0x7c
  42293e: 4618         	mov	r0, r3
  422940: ec53 2b17    	vmov	r2, r3, d7
  422944: f000 ff0a    	bl	0x42375c <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Double(double)> @ imm = #0xe14
  422948: ab1f         	add	r3, sp, #0x7c
  42294a: 4618         	mov	r0, r3
  42294c: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x422cf4 <ApplicationInterface::getDiagnosticProperties()+0x764>
  42294e: 447b         	add	r3, pc
  422950: 4619         	mov	r1, r3
  422952: f000 fec1    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xd82
  422956: f009 fc8d    	bl	0x42c274 <ApplicationInterface::hasCrashCartInstalled()> @ imm = #0x991a
  42295a: 4603         	mov	r3, r0
  42295c: aa1f         	add	r2, sp, #0x7c
  42295e: 4610         	mov	r0, r2
  422960: 4619         	mov	r1, r3
  422962: f000 fedf    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xdbe
  422966: ab1f         	add	r3, sp, #0x7c
  422968: 4618         	mov	r0, r3
  42296a: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x422cf8 <ApplicationInterface::getDiagnosticProperties()+0x768>
  42296c: 447b         	add	r3, pc
  42296e: 4619         	mov	r1, r3
  422970: f000 feb2    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xd64
  422974: f009 fd0e    	bl	0x42c394 <ApplicationInterface::hasDoodleArmyBCInstalled()> @ imm = #0x9a1c
  422978: 4603         	mov	r3, r0
  42297a: aa1f         	add	r2, sp, #0x7c
  42297c: 4610         	mov	r0, r2
  42297e: 4619         	mov	r1, r3
  422980: f000 fed0    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xda0
  422984: ab1f         	add	r3, sp, #0x7c
  422986: 4618         	mov	r0, r3
  422988: 4bdc         	ldr	r3, [pc, #0x370]        @ 0x422cfc <ApplicationInterface::getDiagnosticProperties()+0x76c>
  42298a: 447b         	add	r3, pc
  42298c: 4619         	mov	r1, r3
  42298e: f000 fea3    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xd46
  422992: f009 fccf    	bl	0x42c334 <ApplicationInterface::hasDoodleArmyInstalled()> @ imm = #0x999e
  422996: 4603         	mov	r3, r0
  422998: aa1f         	add	r2, sp, #0x7c
  42299a: 4610         	mov	r0, r2
  42299c: 4619         	mov	r1, r3
  42299e: f000 fec1    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xd82
  4229a2: ab1f         	add	r3, sp, #0x7c
  4229a4: 4618         	mov	r0, r3
  4229a6: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x422d00 <ApplicationInterface::getDiagnosticProperties()+0x770>
  4229a8: 447b         	add	r3, pc
  4229aa: 4619         	mov	r1, r3
  4229ac: f000 fe94    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xd28
  4229b0: f009 fc90    	bl	0x42c2d4 <ApplicationInterface::hasZombieRoadRageInstalled()> @ imm = #0x9920
  4229b4: 4603         	mov	r3, r0
  4229b6: aa1f         	add	r2, sp, #0x7c
  4229b8: 4610         	mov	r0, r2
  4229ba: 4619         	mov	r1, r3
  4229bc: f000 feb2    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xd64
  4229c0: ab1f         	add	r3, sp, #0x7c
  4229c2: 4618         	mov	r0, r3
  4229c4: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x422d04 <ApplicationInterface::getDiagnosticProperties()+0x774>
  4229c6: 447b         	add	r3, pc
  4229c8: 4619         	mov	r1, r3
  4229ca: f000 fe85    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xd0a
  4229ce: f00e ff71    	bl	0x4318b4 <InAppPurchaseBridge::canMakePurchases()> @ imm = #0xeee2
  4229d2: 4603         	mov	r3, r0
  4229d4: aa1f         	add	r2, sp, #0x7c
  4229d6: 4610         	mov	r0, r2
  4229d8: 4619         	mov	r1, r3
  4229da: f000 fea3    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xd46
  4229de: ab1f         	add	r3, sp, #0x7c
  4229e0: 4618         	mov	r0, r3
  4229e2: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x422d08 <ApplicationInterface::getDiagnosticProperties()+0x778>
  4229e4: 447b         	add	r3, pc
  4229e6: 4619         	mov	r1, r3
  4229e8: f000 fe76    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xcec
  4229ec: ab15         	add	r3, sp, #0x54
  4229ee: 4618         	mov	r0, r3
  4229f0: f367 fd00    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367a00
  4229f4: aa0e         	add	r2, sp, #0x38
  4229f6: ab15         	add	r3, sp, #0x54
  4229f8: 4610         	mov	r0, r2
  4229fa: 4ac4         	ldr	r2, [pc, #0x310]        @ 0x422d0c <ApplicationInterface::getDiagnosticProperties()+0x77c>
  4229fc: 447a         	add	r2, pc
  4229fe: 4611         	mov	r1, r2
  422a00: 461a         	mov	r2, r3
  422a02: f394 f82d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39405a
  422a06: aa0f         	add	r2, sp, #0x3c
  422a08: ab0e         	add	r3, sp, #0x38
  422a0a: 4610         	mov	r0, r2
  422a0c: 4619         	mov	r1, r3
  422a0e: f00f f899    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0xf132
  422a12: ab0f         	add	r3, sp, #0x3c
  422a14: 4618         	mov	r0, r3
  422a16: f392 fc73    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3928e6
  422a1a: 4603         	mov	r3, r0
  422a1c: aa1f         	add	r2, sp, #0x7c
  422a1e: 4610         	mov	r0, r2
  422a20: 4619         	mov	r1, r3
  422a22: f000 fe59    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xcb2
  422a26: ab0f         	add	r3, sp, #0x3c
  422a28: 4618         	mov	r0, r3
  422a2a: f392 ff73    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392ee6
  422a2e: ab0e         	add	r3, sp, #0x38
  422a30: 4618         	mov	r0, r3
  422a32: f392 ff6f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392ede
  422a36: ab15         	add	r3, sp, #0x54
  422a38: 4618         	mov	r0, r3
  422a3a: f367 fcdf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3679be
  422a3e: ab1f         	add	r3, sp, #0x7c
  422a40: 4618         	mov	r0, r3
  422a42: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x422d10 <ApplicationInterface::getDiagnosticProperties()+0x780>
  422a44: 447b         	add	r3, pc
  422a46: 4619         	mov	r1, r3
  422a48: f000 fe46    	bl	0x4236d8 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String(char const*)> @ imm = #0xc8c
  422a4c: ab15         	add	r3, sp, #0x54
  422a4e: 4618         	mov	r0, r3
  422a50: f367 fcd0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3679a0
  422a54: aa10         	add	r2, sp, #0x40
  422a56: ab15         	add	r3, sp, #0x54
  422a58: 4610         	mov	r0, r2
  422a5a: 4aae         	ldr	r2, [pc, #0x2b8]        @ 0x422d14 <ApplicationInterface::getDiagnosticProperties()+0x784>
  422a5c: 447a         	add	r2, pc
  422a5e: 4611         	mov	r1, r2
  422a60: 461a         	mov	r2, r3
  422a62: f393 fffd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393ffa
  422a66: ab10         	add	r3, sp, #0x40
  422a68: 4618         	mov	r0, r3
  422a6a: f00e fe79    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xecf2
  422a6e: 4603         	mov	r3, r0
  422a70: aa1f         	add	r2, sp, #0x7c
  422a72: 4610         	mov	r0, r2
  422a74: 4619         	mov	r1, r3
  422a76: f000 fe55    	bl	0x423724 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool(bool)> @ imm = #0xcaa
  422a7a: ab10         	add	r3, sp, #0x40
  422a7c: 4618         	mov	r0, r3
  422a7e: f392 ff49    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392e92
  422a82: ab15         	add	r3, sp, #0x54
  422a84: 4618         	mov	r0, r3
  422a86: f367 fcb9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367972
  422a8a: ab1f         	add	r3, sp, #0x7c
  422a8c: 4618         	mov	r0, r3
  422a8e: 2100         	movs	r1, #0x0
  422a90: f000 fe78    	bl	0x423784 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::EndObject(unsigned int)> @ imm = #0xcf0
  422a94: ab19         	add	r3, sp, #0x64
  422a96: 4618         	mov	r0, r3
  422a98: f000 fe86    	bl	0x4237a8 <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::GetString() const> @ imm = #0xd0c
  422a9c: 4604         	mov	r4, r0
  422a9e: ab15         	add	r3, sp, #0x54
  422aa0: 4618         	mov	r0, r3
  422aa2: f367 fca7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36794e
  422aa6: aa11         	add	r2, sp, #0x44
  422aa8: ab15         	add	r3, sp, #0x54
  422aaa: 4610         	mov	r0, r2
  422aac: 4621         	mov	r1, r4
  422aae: 461a         	mov	r2, r3
  422ab0: f393 ffd6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393fac
  422ab4: ab15         	add	r3, sp, #0x54
  422ab6: 4618         	mov	r0, r3
  422ab8: f367 fca0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367940
  422abc: ab11         	add	r3, sp, #0x44
  422abe: 4618         	mov	r0, r3
  422ac0: f392 fc1e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x39283c
  422ac4: 9017         	str	r0, [sp, #0x5c]
  422ac6: ab11         	add	r3, sp, #0x44
  422ac8: 4618         	mov	r0, r3
  422aca: f392 fac7    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x39258e
  422ace: 9018         	str	r0, [sp, #0x60]
  422ad0: ab12         	add	r3, sp, #0x48
  422ad2: 9817         	ldr	r0, [sp, #0x5c]
  422ad4: 9918         	ldr	r1, [sp, #0x60]
  422ad6: 461a         	mov	r2, r3
  422ad8: f1c0 f8c6    	bl	0x5e2c68 <base64Encode> @ imm = #0x1c018c
  422adc: f755 f830    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xaafa0
  422ae0: 4604         	mov	r4, r0
  422ae2: 9d12         	ldr	r5, [sp, #0x48]
  422ae4: ab15         	add	r3, sp, #0x54
  422ae6: 4618         	mov	r0, r3
  422ae8: f367 fc84    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367908
  422aec: aa13         	add	r2, sp, #0x4c
  422aee: ab15         	add	r3, sp, #0x54
  422af0: 4610         	mov	r0, r2
  422af2: 4629         	mov	r1, r5
  422af4: 461a         	mov	r2, r3
  422af6: f393 ffb3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393f66
  422afa: aa14         	add	r2, sp, #0x50
  422afc: ab13         	add	r3, sp, #0x4c
  422afe: 4610         	mov	r0, r2
  422b00: 4621         	mov	r1, r4
  422b02: 461a         	mov	r2, r3
  422b04: f754 ff5c    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #-0xab148
  422b08: ab14         	add	r3, sp, #0x50
  422b0a: 9803         	ldr	r0, [sp, #0xc]
  422b0c: 4619         	mov	r1, r3
  422b0e: f393 fb07    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x39360e
  422b12: ab14         	add	r3, sp, #0x50
  422b14: 4618         	mov	r0, r3
  422b16: f392 fefd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392dfa
  422b1a: ab13         	add	r3, sp, #0x4c
  422b1c: 4618         	mov	r0, r3
  422b1e: f392 fef9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392df2
  422b22: ab15         	add	r3, sp, #0x54
  422b24: 4618         	mov	r0, r3
  422b26: f367 fc69    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3678d2
  422b2a: ab15         	add	r3, sp, #0x54
  422b2c: 4618         	mov	r0, r3
  422b2e: f009 ff61    	bl	0x42c9f4 <ApplicationInterface::getEncodedPlatformSpecificDiagnosticMessageBody()> @ imm = #0x9ec2
  422b32: ab15         	add	r3, sp, #0x54
  422b34: 9803         	ldr	r0, [sp, #0xc]
  422b36: 4619         	mov	r1, r3
  422b38: f393 faf2    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x3935e4
  422b3c: ab15         	add	r3, sp, #0x54
  422b3e: 4618         	mov	r0, r3
  422b40: f392 fee8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392dd0
  422b44: 9803         	ldr	r0, [sp, #0xc]
  422b46: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x422d18 <ApplicationInterface::getDiagnosticProperties()+0x788>
  422b48: 447b         	add	r3, pc
  422b4a: 4619         	mov	r1, r3
  422b4c: f393 fbd0    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x3937a0
  422b50: bf00         	nop
  422b52: ab11         	add	r3, sp, #0x44
  422b54: 4618         	mov	r0, r3
  422b56: f392 fedd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392dba
  422b5a: ab1f         	add	r3, sp, #0x7c
  422b5c: 4618         	mov	r0, r3
  422b5e: f7ff fd09    	bl	0x422574 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Writer()> @ imm = #-0x5ee
  422b62: ab19         	add	r3, sp, #0x64
  422b64: 4618         	mov	r0, r3
  422b66: f7ff fcf9    	bl	0x42255c <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::~GenericStringBuffer()> @ imm = #-0x60e
  422b6a: ab26         	add	r3, sp, #0x98
  422b6c: 4618         	mov	r0, r3
  422b6e: f757 fed9    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0xa824e
  422b72: e099         	b	0x422ca8 <ApplicationInterface::getDiagnosticProperties()+0x718> @ imm = #0x132
  422b74: ab26         	add	r3, sp, #0x98
  422b76: 4618         	mov	r0, r3
  422b78: f392 fecc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d98
  422b7c: e7ff         	b	0x422b7e <ApplicationInterface::getDiagnosticProperties()+0x5ee> @ imm = #-0x2
  422b7e: ab14         	add	r3, sp, #0x50
  422b80: 4618         	mov	r0, r3
  422b82: f367 fc3b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367876
  422b86: ab1f         	add	r3, sp, #0x7c
  422b88: 4618         	mov	r0, r3
  422b8a: f392 fec3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d86
  422b8e: e7ff         	b	0x422b90 <ApplicationInterface::getDiagnosticProperties()+0x600> @ imm = #-0x2
  422b90: ab19         	add	r3, sp, #0x64
  422b92: 4618         	mov	r0, r3
  422b94: f392 febe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d7c
  422b98: e7ff         	b	0x422b9a <ApplicationInterface::getDiagnosticProperties()+0x60a> @ imm = #-0x2
  422b9a: ab15         	add	r3, sp, #0x54
  422b9c: 4618         	mov	r0, r3
  422b9e: f392 feb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d72
  422ba2: f365 fa83    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x365506
  422ba6: ab08         	add	r3, sp, #0x20
  422ba8: 4618         	mov	r0, r3
  422baa: f392 feb3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d66
  422bae: e7ff         	b	0x422bb0 <ApplicationInterface::getDiagnosticProperties()+0x620> @ imm = #-0x2
  422bb0: ab07         	add	r3, sp, #0x1c
  422bb2: 4618         	mov	r0, r3
  422bb4: f392 feae    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d5c
  422bb8: e7ff         	b	0x422bba <ApplicationInterface::getDiagnosticProperties()+0x62a> @ imm = #-0x2
  422bba: ab26         	add	r3, sp, #0x98
  422bbc: 4618         	mov	r0, r3
  422bbe: f367 fc1d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36783a
  422bc2: ab06         	add	r3, sp, #0x18
  422bc4: 4618         	mov	r0, r3
  422bc6: f392 fea5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d4a
  422bca: e7ff         	b	0x422bcc <ApplicationInterface::getDiagnosticProperties()+0x63c> @ imm = #-0x2
  422bcc: ab05         	add	r3, sp, #0x14
  422bce: 4618         	mov	r0, r3
  422bd0: f392 fea0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d40
  422bd4: e7ff         	b	0x422bd6 <ApplicationInterface::getDiagnosticProperties()+0x646> @ imm = #-0x2
  422bd6: ab1f         	add	r3, sp, #0x7c
  422bd8: 4618         	mov	r0, r3
  422bda: f367 fc0f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36781e
  422bde: e05e         	b	0x422c9e <ApplicationInterface::getDiagnosticProperties()+0x70e> @ imm = #0xbc
  422be0: ab09         	add	r3, sp, #0x24
  422be2: 4618         	mov	r0, r3
  422be4: f392 fe96    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d2c
  422be8: e04a         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x94
  422bea: ab0a         	add	r3, sp, #0x28
  422bec: 4618         	mov	r0, r3
  422bee: f392 fe91    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d22
  422bf2: e045         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x8a
  422bf4: ab0b         	add	r3, sp, #0x2c
  422bf6: 4618         	mov	r0, r3
  422bf8: f392 fe8c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d18
  422bfc: e040         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x80
  422bfe: ab0c         	add	r3, sp, #0x30
  422c00: 4618         	mov	r0, r3
  422c02: f392 fe87    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d0e
  422c06: e03b         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x76
  422c08: ab0d         	add	r3, sp, #0x34
  422c0a: 4618         	mov	r0, r3
  422c0c: f392 fe82    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392d04
  422c10: e036         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x6c
  422c12: ab0f         	add	r3, sp, #0x3c
  422c14: 4618         	mov	r0, r3
  422c16: f392 fe7d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392cfa
  422c1a: e7ff         	b	0x422c1c <ApplicationInterface::getDiagnosticProperties()+0x68c> @ imm = #-0x2
  422c1c: ab0e         	add	r3, sp, #0x38
  422c1e: 4618         	mov	r0, r3
  422c20: f392 fe78    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392cf0
  422c24: e7ff         	b	0x422c26 <ApplicationInterface::getDiagnosticProperties()+0x696> @ imm = #-0x2
  422c26: ab15         	add	r3, sp, #0x54
  422c28: 4618         	mov	r0, r3
  422c2a: f367 fbe7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3677ce
  422c2e: e027         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x4e
  422c30: ab10         	add	r3, sp, #0x40
  422c32: 4618         	mov	r0, r3
  422c34: f392 fe6e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392cdc
  422c38: e7ff         	b	0x422c3a <ApplicationInterface::getDiagnosticProperties()+0x6aa> @ imm = #-0x2
  422c3a: ab15         	add	r3, sp, #0x54
  422c3c: 4618         	mov	r0, r3
  422c3e: f367 fbdd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3677ba
  422c42: e01d         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x3a
  422c44: ab15         	add	r3, sp, #0x54
  422c46: 4618         	mov	r0, r3
  422c48: f367 fbd8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3677b0
  422c4c: e018         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #0x30
  422c4e: ab14         	add	r3, sp, #0x50
  422c50: 4618         	mov	r0, r3
  422c52: f392 fe5f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392cbe
  422c56: e7ff         	b	0x422c58 <ApplicationInterface::getDiagnosticProperties()+0x6c8> @ imm = #-0x2
  422c58: ab13         	add	r3, sp, #0x4c
  422c5a: 4618         	mov	r0, r3
  422c5c: f392 fe5a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392cb4
  422c60: e7ff         	b	0x422c62 <ApplicationInterface::getDiagnosticProperties()+0x6d2> @ imm = #-0x2
  422c62: ab15         	add	r3, sp, #0x54
  422c64: 4618         	mov	r0, r3
  422c66: f367 fbc9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367792
  422c6a: e004         	b	0x422c76 <ApplicationInterface::getDiagnosticProperties()+0x6e6> @ imm = #0x8
  422c6c: ab15         	add	r3, sp, #0x54
  422c6e: 4618         	mov	r0, r3
  422c70: f392 fe50    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392ca0
  422c74: e7ff         	b	0x422c76 <ApplicationInterface::getDiagnosticProperties()+0x6e6> @ imm = #-0x2
  422c76: ab11         	add	r3, sp, #0x44
  422c78: 4618         	mov	r0, r3
  422c7a: f392 fe4b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392c96
  422c7e: e7ff         	b	0x422c80 <ApplicationInterface::getDiagnosticProperties()+0x6f0> @ imm = #-0x2
  422c80: ab1f         	add	r3, sp, #0x7c
  422c82: 4618         	mov	r0, r3
  422c84: f7ff fc76    	bl	0x422574 <rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>, rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Writer()> @ imm = #-0x714
  422c88: e7ff         	b	0x422c8a <ApplicationInterface::getDiagnosticProperties()+0x6fa> @ imm = #-0x2
  422c8a: ab19         	add	r3, sp, #0x64
  422c8c: 4618         	mov	r0, r3
  422c8e: f7ff fc65    	bl	0x42255c <rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::~GenericStringBuffer()> @ imm = #-0x736
  422c92: e7ff         	b	0x422c94 <ApplicationInterface::getDiagnosticProperties()+0x704> @ imm = #-0x2
  422c94: ab26         	add	r3, sp, #0x98
  422c96: 4618         	mov	r0, r3
  422c98: f757 fe44    	bl	0x37a924 <rapidjson::GenericDocument<rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument()> @ imm = #-0xa8378
  422c9c: e7ff         	b	0x422c9e <ApplicationInterface::getDiagnosticProperties()+0x70e> @ imm = #-0x2
  422c9e: 9803         	ldr	r0, [sp, #0xc]
  422ca0: f392 fe38    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392c70
  422ca4: f365 fa02    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x365404
  422ca8: 9803         	ldr	r0, [sp, #0xc]
  422caa: b033         	add	sp, #0xcc
  422cac: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x422cad); words below are literal-pool data ---
  422cae: bf00         	nop
  422cb0: 9c78         	ldr	r4, [sp, #0x1e0]
  422cb2: 003b         	movs	r3, r7
  422cb4: 9c6e         	ldr	r4, [sp, #0x1b8]
  422cb6: 003b         	movs	r3, r7
  422cb8: 9c38         	ldr	r4, [sp, #0xe0]
  422cba: 003b         	movs	r3, r7
  422cbc: 9c0e         	ldr	r4, [sp, #0x38]
  422cbe: 003b         	movs	r3, r7
  422cc0: 9b6e         	ldr	r3, [sp, #0x1b8]
  422cc2: 003b         	movs	r3, r7
  422cc4: 9b3e         	ldr	r3, [sp, #0xf8]
  422cc6: 003b         	movs	r3, r7
  422cc8: 9b0e         	ldr	r3, [sp, #0x38]
  422cca: 003b         	movs	r3, r7
  422ccc: 9ade         	ldr	r2, [sp, #0x378]
  422cce: 003b         	movs	r3, r7
  422cd0: 9aae         	ldr	r2, [sp, #0x2b8]
  422cd2: 003b         	movs	r3, r7
  422cd4: 9a92         	ldr	r2, [sp, #0x248]
  422cd6: 003b         	movs	r3, r7
  422cd8: 9a76         	ldr	r2, [sp, #0x1d8]
  422cda: 003b         	movs	r3, r7
  422cdc: 9a3e         	ldr	r2, [sp, #0xf8]
  422cde: 003b         	movs	r3, r7
  422ce0: 9a1a         	ldr	r2, [sp, #0x68]
  422ce2: 003b         	movs	r3, r7
  422ce4: 99f6         	ldr	r1, [sp, #0x3d8]
  422ce6: 003b         	movs	r3, r7
  422ce8: 99dc         	ldr	r1, [sp, #0x370]
  422cea: 003b         	movs	r3, r7
  422cec: 99c2         	ldr	r1, [sp, #0x308]
  422cee: 003b         	movs	r3, r7
  422cf0: 99a8         	ldr	r1, [sp, #0x2a0]
  422cf2: 003b         	movs	r3, r7
  422cf4: 9986         	ldr	r1, [sp, #0x218]
  422cf6: 003b         	movs	r3, r7
  422cf8: 996c         	ldr	r1, [sp, #0x1b0]
  422cfa: 003b         	movs	r3, r7
  422cfc: 9952         	ldr	r1, [sp, #0x148]
  422cfe: 003b         	movs	r3, r7
  422d00: 9938         	ldr	r1, [sp, #0xe0]
  422d02: 003b         	movs	r3, r7
  422d04: 991e         	ldr	r1, [sp, #0x78]
  422d06: 003b         	movs	r3, r7
  422d08: 9904         	ldr	r1, [sp, #0x10]
  422d0a: 003b         	movs	r3, r7
  422d0c: 9860         	ldr	r0, [sp, #0x180]
  422d0e: 003b         	movs	r3, r7
  422d10: 98a8         	ldr	r0, [sp, #0x2a0]
  422d12: 003b         	movs	r3, r7
  422d14: 9800         	ldr	r0, [sp]
  422d16: 003b         	movs	r3, r7
  422d18: 9754         	str	r7, [sp, #0x150]
  422d1a: 003b         	movs	r3, r7

// ==== ApplicationInterface::startVideoRecording
//      file offset 0x422d1c (= ELF address; Ghidra 0x432d1c), 464 bytes, Thumb-2
  422d1c: b530         	push	{r4, r5, lr}
  422d1e: b085         	sub	sp, #0x14
  422d20: 4c64         	ldr	r4, [pc, #0x190]        @ 0x422eb4 <ApplicationInterface::startVideoRecording()+0x198>
  422d22: 447c         	add	r4, pc
  422d24: 4b64         	ldr	r3, [pc, #0x190]        @ 0x422eb8 <ApplicationInterface::startVideoRecording()+0x19c>
  422d26: 58e3         	ldr	r3, [r4, r3]
  422d28: 781b         	ldrb	r3, [r3]
  422d2a: f083 0301    	eor	r3, r3, #0x1
  422d2e: b2db         	uxtb	r3, r3
  422d30: 2b00         	cmp	r3, #0x0
  422d32: d005         	beq	0x422d40 <ApplicationInterface::startVideoRecording()+0x24> @ imm = #0xa
  422d34: f000 f994    	bl	0x423060 <ApplicationInterface::initVideoRecording()> @ imm = #0x328
  422d38: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x422eb8 <ApplicationInterface::startVideoRecording()+0x19c>
  422d3a: 58e3         	ldr	r3, [r4, r3]
  422d3c: 2201         	movs	r2, #0x1
  422d3e: 701a         	strb	r2, [r3]
  422d40: 2000         	movs	r0, #0x0
  422d42: f6b3 e960    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0x14cd40
  422d46: 4603         	mov	r3, r0
  422d48: ee07 3a10    	vmov	s14, r3
  422d4c: eef8 7ac7    	vcvt.f32.s32	s15, s14
  422d50: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x422ebc <ApplicationInterface::startVideoRecording()+0x1a0>
  422d52: 58e3         	ldr	r3, [r4, r3]
  422d54: edc3 7a00    	vstr	s15, [r3]
  422d58: 4b59         	ldr	r3, [pc, #0x164]        @ 0x422ec0 <ApplicationInterface::startVideoRecording()+0x1a4>
  422d5a: 58e3         	ldr	r3, [r4, r3]
  422d5c: 2201         	movs	r2, #0x1
  422d5e: 701a         	strb	r2, [r3]
  422d60: f000 f9a8    	bl	0x4230b4 <ApplicationManager::sharedApplicationManager()> @ imm = #0x350
  422d64: 4603         	mov	r3, r0
  422d66: 2200         	movs	r2, #0x0
  422d68: f883 20e4    	strb.w	r2, [r3, #0xe4]
  422d6c: ab03         	add	r3, sp, #0xc
  422d6e: 4618         	mov	r0, r3
  422d70: f367 fb40    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367680
  422d74: aa01         	add	r2, sp, #0x4
  422d76: ab03         	add	r3, sp, #0xc
  422d78: 4610         	mov	r0, r2
  422d7a: 4a52         	ldr	r2, [pc, #0x148]        @ 0x422ec4 <ApplicationInterface::startVideoRecording()+0x1a8>
  422d7c: 447a         	add	r2, pc
  422d7e: 4611         	mov	r1, r2
  422d80: 461a         	mov	r2, r3
  422d82: f393 fe6d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393cda
  422d86: ab03         	add	r3, sp, #0xc
  422d88: 4618         	mov	r0, r3
  422d8a: f367 fb37    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36766e
  422d8e: f1bf fc4d    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1bf89a
  422d92: 4605         	mov	r5, r0
  422d94: 466b         	mov	r3, sp
  422d96: 4618         	mov	r0, r3
  422d98: f367 fb2c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367658
  422d9c: aa02         	add	r2, sp, #0x8
  422d9e: 466b         	mov	r3, sp
  422da0: 4610         	mov	r0, r2
  422da2: 4a49         	ldr	r2, [pc, #0x124]        @ 0x422ec8 <ApplicationInterface::startVideoRecording()+0x1ac>
  422da4: 447a         	add	r2, pc
  422da6: 4611         	mov	r1, r2
  422da8: 461a         	mov	r2, r3
  422daa: f393 fe59    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393cb2
  422dae: aa03         	add	r2, sp, #0xc
  422db0: ab02         	add	r3, sp, #0x8
  422db2: 4610         	mov	r0, r2
  422db4: 4629         	mov	r1, r5
  422db6: 4a45         	ldr	r2, [pc, #0x114]        @ 0x422ecc <ApplicationInterface::startVideoRecording()+0x1b0>
  422db8: 447a         	add	r2, pc
  422dba: f1bf fb6f    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x1bf6de
  422dbe: aa01         	add	r2, sp, #0x4
  422dc0: ab03         	add	r3, sp, #0xc
  422dc2: 4610         	mov	r0, r2
  422dc4: 4619         	mov	r1, r3
  422dc6: f393 f9ab    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x393356
  422dca: ab03         	add	r3, sp, #0xc
  422dcc: 4618         	mov	r0, r3
  422dce: f392 fda1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392b42
  422dd2: ab02         	add	r3, sp, #0x8
  422dd4: 4618         	mov	r0, r3
  422dd6: f392 fd9d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392b3a
  422dda: 466b         	mov	r3, sp
  422ddc: 4618         	mov	r0, r3
  422dde: f367 fb0d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36761a
  422de2: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x422ed0 <ApplicationInterface::startVideoRecording()+0x1b4>
  422de4: 58e3         	ldr	r3, [r4, r3]
  422de6: 681b         	ldr	r3, [r3]
  422de8: 2b05         	cmp	r3, #0x5
  422dea: d841         	bhi	0x422e70 <ApplicationInterface::startVideoRecording()+0x154> @ imm = #0x82
  422dec: a102         	adr	r1, #8 <ApplicationInterface::startVideoRecording()+0xd6>
  422dee: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  422df2: 4411         	add	r1, r2
  422df4: 4708         	bx	r1
  422df6: bf00         	nop
  422df8: 0019         	movs	r1, r3
  422dfa: 0000         	movs	r0, r0
  422dfc: 0029         	movs	r1, r5
  422dfe: 0000         	movs	r0, r0
  422e00: 0039         	movs	r1, r7
  422e02: 0000         	movs	r0, r0
  422e04: 0049         	lsls	r1, r1, #0x1
  422e06: 0000         	movs	r0, r0
  422e08: 0059         	lsls	r1, r3, #0x1
  422e0a: 0000         	movs	r0, r0
  422e0c: 0069         	lsls	r1, r5, #0x1
  422e0e: 0000         	movs	r0, r0
  422e10: ab01         	add	r3, sp, #0x4
  422e12: 4618         	mov	r0, r3
  422e14: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x422ed4 <ApplicationInterface::startVideoRecording()+0x1b8>
  422e16: 447b         	add	r3, pc
  422e18: 4619         	mov	r1, r3
  422e1a: f393 fa69    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x3934d2
  422e1e: e027         	b	0x422e70 <ApplicationInterface::startVideoRecording()+0x154> @ imm = #0x4e
  422e20: ab01         	add	r3, sp, #0x4
  422e22: 4618         	mov	r0, r3
  422e24: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x422ed8 <ApplicationInterface::startVideoRecording()+0x1bc>
  422e26: 447b         	add	r3, pc
  422e28: 4619         	mov	r1, r3
  422e2a: f393 fa61    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x3934c2
  422e2e: e01f         	b	0x422e70 <ApplicationInterface::startVideoRecording()+0x154> @ imm = #0x3e
  422e30: ab01         	add	r3, sp, #0x4
  422e32: 4618         	mov	r0, r3
  422e34: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x422edc <ApplicationInterface::startVideoRecording()+0x1c0>
  422e36: 447b         	add	r3, pc
  422e38: 4619         	mov	r1, r3
  422e3a: f393 fa59    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x3934b2
  422e3e: e017         	b	0x422e70 <ApplicationInterface::startVideoRecording()+0x154> @ imm = #0x2e
  422e40: ab01         	add	r3, sp, #0x4
  422e42: 4618         	mov	r0, r3
  422e44: 4b26         	ldr	r3, [pc, #0x98]         @ 0x422ee0 <ApplicationInterface::startVideoRecording()+0x1c4>
  422e46: 447b         	add	r3, pc
  422e48: 4619         	mov	r1, r3
  422e4a: f393 fa51    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x3934a2
  422e4e: e00f         	b	0x422e70 <ApplicationInterface::startVideoRecording()+0x154> @ imm = #0x1e
  422e50: ab01         	add	r3, sp, #0x4
  422e52: 4618         	mov	r0, r3
  422e54: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x422ee4 <ApplicationInterface::startVideoRecording()+0x1c8>
  422e56: 447b         	add	r3, pc
  422e58: 4619         	mov	r1, r3
  422e5a: f393 fa49    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x393492
  422e5e: e007         	b	0x422e70 <ApplicationInterface::startVideoRecording()+0x154> @ imm = #0xe
  422e60: ab01         	add	r3, sp, #0x4
  422e62: 4618         	mov	r0, r3
  422e64: 4b20         	ldr	r3, [pc, #0x80]         @ 0x422ee8 <ApplicationInterface::startVideoRecording()+0x1cc>
  422e66: 447b         	add	r3, pc
  422e68: 4619         	mov	r1, r3
  422e6a: f393 fa41    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x393482
  422e6e: bf00         	nop
  422e70: ab01         	add	r3, sp, #0x4
  422e72: 4618         	mov	r0, r3
  422e74: f392 fd4e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392a9c
  422e78: e01a         	b	0x422eb0 <ApplicationInterface::startVideoRecording()+0x194> @ imm = #0x34
  422e7a: ab03         	add	r3, sp, #0xc
  422e7c: 4618         	mov	r0, r3
  422e7e: f367 fabd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36757a
  422e82: f365 f913    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x365226
  422e86: ab03         	add	r3, sp, #0xc
  422e88: 4618         	mov	r0, r3
  422e8a: f392 fd43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392a86
  422e8e: e7ff         	b	0x422e90 <ApplicationInterface::startVideoRecording()+0x174> @ imm = #-0x2
  422e90: ab02         	add	r3, sp, #0x8
  422e92: 4618         	mov	r0, r3
  422e94: f392 fd3e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392a7c
  422e98: e7ff         	b	0x422e9a <ApplicationInterface::startVideoRecording()+0x17e> @ imm = #-0x2
  422e9a: 466b         	mov	r3, sp
  422e9c: 4618         	mov	r0, r3
  422e9e: f367 faad    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36755a
  422ea2: e7ff         	b	0x422ea4 <ApplicationInterface::startVideoRecording()+0x188> @ imm = #-0x2
  422ea4: ab01         	add	r3, sp, #0x4
  422ea6: 4618         	mov	r0, r3
  422ea8: f392 fd34    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x392a68
  422eac: f365 f8fe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3651fc
  422eb0: b005         	add	sp, #0x14
  422eb2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x422eb3); words below are literal-pool data ---
  422eb4: fce6 0050    	stc2l	p0, c0, [r6], #320
  422eb8: dfec         	svc	#0xec
  422eba: ffff dff0    	<unknown>
  422ebe: ffff dff4    	<unknown>
  422ec2: ffff 9574    	<unknown>
  422ec6: 003b         	movs	r3, r7
  422ec8: 9554         	str	r5, [sp, #0x150]
  422eca: 003b         	movs	r3, r7
  422ecc: 9484         	str	r4, [sp, #0x210]
  422ece: 003b         	movs	r3, r7
  422ed0: d838         	bhi	0x422f44 <ApplicationInterface::isVideoRecording()+0x8> @ imm = #0x70
  422ed2: ffff 94f2    	<unknown>
  422ed6: 003b         	movs	r3, r7
  422ed8: 94ee         	str	r4, [sp, #0x3b8]
  422eda: 003b         	movs	r3, r7
  422edc: 94ea         	str	r4, [sp, #0x3a8]
  422ede: 003b         	movs	r3, r7
  422ee0: 94ea         	str	r4, [sp, #0x3a8]
  422ee2: 003b         	movs	r3, r7
  422ee4: 94ee         	str	r4, [sp, #0x3b8]
  422ee6: 003b         	movs	r3, r7
  422ee8: 94f2         	str	r4, [sp, #0x3c8]
  422eea: 003b         	movs	r3, r7

// ==== ApplicationInterface::stopVideoRecording
//      file offset 0x422eec (= ELF address; Ghidra 0x432eec), 80 bytes, Thumb-2
  422eec: b510         	push	{r4, lr}
  422eee: 4c10         	ldr	r4, [pc, #0x40]         @ 0x422f30 <ApplicationInterface::stopVideoRecording()+0x44>
  422ef0: 447c         	add	r4, pc
  422ef2: 4b10         	ldr	r3, [pc, #0x40]         @ 0x422f34 <ApplicationInterface::stopVideoRecording()+0x48>
  422ef4: 58e3         	ldr	r3, [r4, r3]
  422ef6: 781b         	ldrb	r3, [r3]
  422ef8: f083 0301    	eor	r3, r3, #0x1
  422efc: b2db         	uxtb	r3, r3
  422efe: 2b00         	cmp	r3, #0x0
  422f00: d000         	beq	0x422f04 <ApplicationInterface::stopVideoRecording()+0x18> @ imm = #0x0
  422f02: e013         	b	0x422f2c <ApplicationInterface::stopVideoRecording()+0x40> @ imm = #0x26
  422f04: f000 f82e    	bl	0x422f64 <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()> @ imm = #0x5c
  422f08: ee07 0a10    	vmov	s14, r0
  422f0c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  422f10: eeb4 7ae7    	vcmpe.f32	s14, s15
  422f14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  422f18: bf54         	ite	pl
  422f1a: 2300         	movpl	r3, #0x0
  422f1c: 2301         	movmi	r3, #0x1
  422f1e: b2db         	uxtb	r3, r3
  422f20: 2b00         	cmp	r3, #0x0
  422f22: d003         	beq	0x422f2c <ApplicationInterface::stopVideoRecording()+0x40> @ imm = #0x6
  422f24: 4b04         	ldr	r3, [pc, #0x10]         @ 0x422f38 <ApplicationInterface::stopVideoRecording()+0x4c>
  422f26: 58e3         	ldr	r3, [r4, r3]
  422f28: 2200         	movs	r2, #0x0
  422f2a: 701a         	strb	r2, [r3]
  422f2c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x422f2d); words below are literal-pool data ---
  422f2e: bf00         	nop
  422f30: fb18 0050    	<unknown>
  422f34: dfec         	svc	#0xec
  422f36: ffff dff4    	<unknown>
  422f3a: ffff 4a07    	vtbl.8	d20, {d15, d16, d17}, d7

// ==== ApplicationInterface::isVideoRecording
//      file offset 0x422f3c (= ELF address; Ghidra 0x432f3c), 40 bytes, Thumb-2
  422f3c: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x422f5c <ApplicationInterface::isVideoRecording()+0x20>
  422f3e: 447a         	add	r2, pc
  422f40: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x422f60 <ApplicationInterface::isVideoRecording()+0x24>
  422f42: 58d3         	ldr	r3, [r2, r3]
  422f44: 781b         	ldrb	r3, [r3]
  422f46: f083 0301    	eor	r3, r3, #0x1
  422f4a: b2db         	uxtb	r3, r3
  422f4c: 2b00         	cmp	r3, #0x0
  422f4e: d001         	beq	0x422f54 <ApplicationInterface::isVideoRecording()+0x18> @ imm = #0x2
  422f50: 2300         	movs	r3, #0x0
  422f52: e000         	b	0x422f56 <ApplicationInterface::isVideoRecording()+0x1a> @ imm = #0x0
  422f54: 2300         	movs	r3, #0x0
  422f56: 4618         	mov	r0, r3
  422f58: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x422f59); words below are literal-pool data ---
  422f5a: bf00         	nop
  422f5c: faca 0050    	<unknown>
  422f60: dfec         	svc	#0xec
  422f62: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ApplicationInterface::getVideoRecordingElapsedTimeInSeconds
//      file offset 0x422f64 (= ELF address; Ghidra 0x432f64), 108 bytes, Thumb-2
  422f64: b510         	push	{r4, lr}
  422f66: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x422fc4 <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x60>
  422f68: 447c         	add	r4, pc
  422f6a: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x422fc8 <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x64>
  422f6c: 58e3         	ldr	r3, [r4, r3]
  422f6e: 781b         	ldrb	r3, [r3]
  422f70: f083 0301    	eor	r3, r3, #0x1
  422f74: b2db         	uxtb	r3, r3
  422f76: 2b00         	cmp	r3, #0x0
  422f78: d107         	bne	0x422f8a <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x26> @ imm = #0xe
  422f7a: f7ff ffdf    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #-0x42
  422f7e: 4603         	mov	r3, r0
  422f80: f083 0301    	eor	r3, r3, #0x1
  422f84: b2db         	uxtb	r3, r3
  422f86: 2b00         	cmp	r3, #0x0
  422f88: d001         	beq	0x422f8e <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x2a> @ imm = #0x2
  422f8a: 2301         	movs	r3, #0x1
  422f8c: e000         	b	0x422f90 <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x2c> @ imm = #0x0
  422f8e: 2300         	movs	r3, #0x0
  422f90: 2b00         	cmp	r3, #0x0
  422f92: d002         	beq	0x422f9a <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x36> @ imm = #0x4
  422f94: eddf 7a0a    	vldr	s15, [pc, #40]          @ 0x422fc0 <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x5c>
  422f98: e00d         	b	0x422fb6 <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x52> @ imm = #0x1a
  422f9a: 2000         	movs	r0, #0x0
  422f9c: f6b3 e832    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0x14cf9c
  422fa0: 4603         	mov	r3, r0
  422fa2: ee07 3a90    	vmov	s15, r3
  422fa6: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  422faa: 4b08         	ldr	r3, [pc, #0x20]         @ 0x422fcc <ApplicationInterface::getVideoRecordingElapsedTimeInSeconds()+0x68>
  422fac: 58e3         	ldr	r3, [r4, r3]
  422fae: edd3 7a00    	vldr	s15, [r3]
  422fb2: ee77 7a67    	vsub.f32	s15, s14, s15
  422fb6: ee17 3a90    	vmov	r3, s15
  422fba: 4618         	mov	r0, r3
  422fbc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x422fbd); words below are literal-pool data ---
  422fbe: bf00         	nop
  422fc0: 0000         	movs	r0, r0
  422fc2: 0000         	movs	r0, r0
  422fc4: faa0 0050    	<unknown>
  422fc8: dfec         	svc	#0xec
  422fca: ffff dff0    	<unknown>
  422fce: ffff 4a03    	vtbl.8	d20, {d15, d16, d17}, d3

// ==== ApplicationInterface::hasUnViewedVideo
//      file offset 0x422fd0 (= ELF address; Ghidra 0x432fd0), 24 bytes, Thumb-2
  422fd0: 4a03         	ldr	r2, [pc, #0xc]          @ 0x422fe0 <ApplicationInterface::hasUnViewedVideo()+0x10>
  422fd2: 447a         	add	r2, pc
  422fd4: 4b03         	ldr	r3, [pc, #0xc]          @ 0x422fe4 <ApplicationInterface::hasUnViewedVideo()+0x14>
  422fd6: 58d3         	ldr	r3, [r2, r3]
  422fd8: 781b         	ldrb	r3, [r3]
  422fda: 4618         	mov	r0, r3
  422fdc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x422fdd); words below are literal-pool data ---
  422fde: bf00         	nop
  422fe0: fa36 0050    	<unknown>
  422fe4: dff4         	svc	#0xf4
  422fe6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ApplicationInterface::showVideoRecordingInterface
//      file offset 0x422fe8 (= ELF address; Ghidra 0x432fe8), 56 bytes, Thumb-2
  422fe8: b510         	push	{r4, lr}
  422fea: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x423014 <ApplicationInterface::showVideoRecordingInterface()+0x2c>
  422fec: 447c         	add	r4, pc
  422fee: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x423018 <ApplicationInterface::showVideoRecordingInterface()+0x30>
  422ff0: 58e3         	ldr	r3, [r4, r3]
  422ff2: 781b         	ldrb	r3, [r3]
  422ff4: f083 0301    	eor	r3, r3, #0x1
  422ff8: b2db         	uxtb	r3, r3
  422ffa: 2b00         	cmp	r3, #0x0
  422ffc: d005         	beq	0x42300a <ApplicationInterface::showVideoRecordingInterface()+0x22> @ imm = #0xa
  422ffe: f000 f82f    	bl	0x423060 <ApplicationInterface::initVideoRecording()> @ imm = #0x5e
  423002: 4b05         	ldr	r3, [pc, #0x14]         @ 0x423018 <ApplicationInterface::showVideoRecordingInterface()+0x30>
  423004: 58e3         	ldr	r3, [r4, r3]
  423006: 2201         	movs	r2, #0x1
  423008: 701a         	strb	r2, [r3]
  42300a: 4b04         	ldr	r3, [pc, #0x10]         @ 0x42301c <ApplicationInterface::showVideoRecordingInterface()+0x34>
  42300c: 58e3         	ldr	r3, [r4, r3]
  42300e: 2200         	movs	r2, #0x0
  423010: 701a         	strb	r2, [r3]
  423012: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x423013); words below are literal-pool data ---
  423014: fa1c 0050    	<unknown>
  423018: dfec         	svc	#0xec
  42301a: ffff dff4    	<unknown>
  42301e: ffff b500    	<unknown>

// ==== ApplicationInterface::setVideoTitle
//      file offset 0x423020 (= ELF address; Ghidra 0x433020), 64 bytes, Thumb-2
  423020: b500         	push	{lr}
  423022: b083         	sub	sp, #0xc
  423024: 9001         	str	r0, [sp, #0x4]
  423026: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x423058 <ApplicationInterface::setVideoTitle(std::string)+0x38>
  423028: 447a         	add	r2, pc
  42302a: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x42305c <ApplicationInterface::setVideoTitle(std::string)+0x3c>
  42302c: 58d3         	ldr	r3, [r2, r3]
  42302e: 781b         	ldrb	r3, [r3]
  423030: 2b00         	cmp	r3, #0x0
  423032: d107         	bne	0x423044 <ApplicationInterface::setVideoTitle(std::string)+0x24> @ imm = #0xe
  423034: f7ff ff82    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #-0xfc
  423038: 4603         	mov	r3, r0
  42303a: f083 0301    	eor	r3, r3, #0x1
  42303e: b2db         	uxtb	r3, r3
  423040: 2b00         	cmp	r3, #0x0
  423042: d001         	beq	0x423048 <ApplicationInterface::setVideoTitle(std::string)+0x28> @ imm = #0x2
  423044: 2301         	movs	r3, #0x1
  423046: e000         	b	0x42304a <ApplicationInterface::setVideoTitle(std::string)+0x2a> @ imm = #0x0
  423048: 2300         	movs	r3, #0x0
  42304a: 2b00         	cmp	r3, #0x0
  42304c: d000         	beq	0x423050 <ApplicationInterface::setVideoTitle(std::string)+0x30> @ imm = #0x0
  42304e: bf00         	nop
  423050: b003         	add	sp, #0xc
  423052: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x423055); words below are literal-pool data ---
  423056: bf00         	nop
  423058: f9e0 0050    	<unknown>
  42305c: dfec         	svc	#0xec
  42305e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ApplicationInterface::initVideoRecording
//      file offset 0x423060 (= ELF address; Ghidra 0x433060), 84 bytes, Thumb-2
  423060: b510         	push	{r4, lr}
  423062: b086         	sub	sp, #0x18
  423064: 4c11         	ldr	r4, [pc, #0x44]         @ 0x4230ac <ApplicationInterface::initVideoRecording()+0x4c>
  423066: 447c         	add	r4, pc
  423068: f000 f824    	bl	0x4230b4 <ApplicationManager::sharedApplicationManager()> @ imm = #0x48
  42306c: 4603         	mov	r3, r0
  42306e: 9303         	str	r3, [sp, #0xc]
  423070: f178 fa80    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x178500
  423074: 4603         	mov	r3, r0
  423076: 681a         	ldr	r2, [r3]
  423078: 3230         	adds	r2, #0x30
  42307a: 6812         	ldr	r2, [r2]
  42307c: 4618         	mov	r0, r3
  42307e: 4790         	blx	r2
  423080: 4603         	mov	r3, r0
  423082: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x4230b0 <ApplicationInterface::initVideoRecording()+0x50>
  423084: 58a2         	ldr	r2, [r4, r2]
  423086: 9204         	str	r2, [sp, #0x10]
  423088: 2200         	movs	r2, #0x0
  42308a: 9205         	str	r2, [sp, #0x14]
  42308c: f04f 0200    	mov.w	r2, #0x0
  423090: 9200         	str	r2, [sp]
  423092: 2200         	movs	r2, #0x0
  423094: 9201         	str	r2, [sp, #0x4]
  423096: 4618         	mov	r0, r3
  423098: ab04         	add	r3, sp, #0x10
  42309a: e893 0006    	ldm.w	r3, {r1, r2}
  42309e: 9b03         	ldr	r3, [sp, #0xc]
  4230a0: f14c fde6    	bl	0x56fc70 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, bool)> @ imm = #0x14cbcc
  4230a4: f009 fd34    	bl	0x42cb10 <ApplicationInterface::initVideoRecordingForPlatform()> @ imm = #0x9a68
  4230a8: b006         	add	sp, #0x18
  4230aa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4230ab); words below are literal-pool data ---
  4230ac: f9a2 0050    	<unknown>
  4230b0: dff8         	svc	#0xf8
  4230b2: ffff b538    	vsli.32	d27, d24, #0x1f

// ==== ApplicationInterface::canOpenApp
//      file offset 0x42bf4c (= ELF address; Ghidra 0x43bf4c), 144 bytes, Thumb-2
  42bf4c: b5f0         	push	{r4, r5, r6, r7, lr}
  42bf4e: b087         	sub	sp, #0x1c
  42bf50: 9001         	str	r0, [sp, #0x4]
  42bf52: ab03         	add	r3, sp, #0xc
  42bf54: 4618         	mov	r0, r3
  42bf56: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x42bfd0 <ApplicationInterface::canOpenApp(std::string)+0x84>
  42bf58: 447b         	add	r3, pc
  42bf5a: 4619         	mov	r1, r3
  42bf5c: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x42bfd4 <ApplicationInterface::canOpenApp(std::string)+0x88>
  42bf5e: 447b         	add	r3, pc
  42bf60: 461a         	mov	r2, r3
  42bf62: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x42bfd8 <ApplicationInterface::canOpenApp(std::string)+0x8c>
  42bf64: 447b         	add	r3, pc
  42bf66: f1a6 f8db    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a61b6
  42bf6a: 4603         	mov	r3, r0
  42bf6c: f88d 3009    	strb.w	r3, [sp, #0x9]
  42bf70: f89d 3009    	ldrb.w	r3, [sp, #0x9]
  42bf74: f083 0301    	eor	r3, r3, #0x1
  42bf78: b2db         	uxtb	r3, r3
  42bf7a: 2b00         	cmp	r3, #0x0
  42bf7c: d001         	beq	0x42bf82 <ApplicationInterface::canOpenApp(std::string)+0x36> @ imm = #0x2
  42bf7e: 2300         	movs	r3, #0x0
  42bf80: e022         	b	0x42bfc8 <ApplicationInterface::canOpenApp(std::string)+0x7c> @ imm = #0x44
  42bf82: 9e03         	ldr	r6, [sp, #0xc]
  42bf84: 9d04         	ldr	r5, [sp, #0x10]
  42bf86: 9c05         	ldr	r4, [sp, #0x14]
  42bf88: 9f03         	ldr	r7, [sp, #0xc]
  42bf8a: 9801         	ldr	r0, [sp, #0x4]
  42bf8c: f389 f9b8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x389370
  42bf90: 4603         	mov	r3, r0
  42bf92: 4638         	mov	r0, r7
  42bf94: 4619         	mov	r1, r3
  42bf96: f6af facd    	bl	0x2db534 <_JNIEnv::NewStringUTF(char const*)> @ imm = #-0x150a66
  42bf9a: 4603         	mov	r3, r0
  42bf9c: 4630         	mov	r0, r6
  42bf9e: 4629         	mov	r1, r5
  42bfa0: 4622         	mov	r2, r4
  42bfa2: f7ff f8f5    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0xe16
  42bfa6: 4603         	mov	r3, r0
  42bfa8: f88d 300a    	strb.w	r3, [sp, #0xa]
  42bfac: 9b03         	ldr	r3, [sp, #0xc]
  42bfae: 4618         	mov	r0, r3
  42bfb0: f1a6 f97a    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a62f4
  42bfb4: f89d 300a    	ldrb.w	r3, [sp, #0xa]
  42bfb8: 2b00         	cmp	r3, #0x0
  42bfba: bf0c         	ite	eq
  42bfbc: 2300         	moveq	r3, #0x0
  42bfbe: 2301         	movne	r3, #0x1
  42bfc0: f88d 300b    	strb.w	r3, [sp, #0xb]
  42bfc4: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  42bfc8: 4618         	mov	r0, r3
  42bfca: b007         	add	sp, #0x1c
  42bfcc: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x42bfcd); words below are literal-pool data ---
  42bfce: bf00         	nop
  42bfd0: 16f0         	asrs	r0, r6, #0x1b
  42bfd2: 003b         	movs	r3, r7
  42bfd4: 170a         	asrs	r2, r1, #0x1c
  42bfd6: 003b         	movs	r3, r7
  42bfd8: 1714         	asrs	r4, r2, #0x1c
  42bfda: 003b         	movs	r3, r7

// ==== ApplicationInterface::openURL
//      file offset 0x42bfdc (= ELF address; Ghidra 0x43bfdc), 112 bytes, Thumb-2
  42bfdc: b5f0         	push	{r4, r5, r6, r7, lr}
  42bfde: b087         	sub	sp, #0x1c
  42bfe0: 9001         	str	r0, [sp, #0x4]
  42bfe2: ab03         	add	r3, sp, #0xc
  42bfe4: 4618         	mov	r0, r3
  42bfe6: 4b16         	ldr	r3, [pc, #0x58]         @ 0x42c040 <ApplicationInterface::openURL(std::string)+0x64>
  42bfe8: 447b         	add	r3, pc
  42bfea: 4619         	mov	r1, r3
  42bfec: 4b15         	ldr	r3, [pc, #0x54]         @ 0x42c044 <ApplicationInterface::openURL(std::string)+0x68>
  42bfee: 447b         	add	r3, pc
  42bff0: 461a         	mov	r2, r3
  42bff2: 4b15         	ldr	r3, [pc, #0x54]         @ 0x42c048 <ApplicationInterface::openURL(std::string)+0x6c>
  42bff4: 447b         	add	r3, pc
  42bff6: f1a6 f893    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a6126
  42bffa: 4603         	mov	r3, r0
  42bffc: f88d 300b    	strb.w	r3, [sp, #0xb]
  42c000: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  42c004: f083 0301    	eor	r3, r3, #0x1
  42c008: b2db         	uxtb	r3, r3
  42c00a: 2b00         	cmp	r3, #0x0
  42c00c: d115         	bne	0x42c03a <ApplicationInterface::openURL(std::string)+0x5e> @ imm = #0x2a
  42c00e: 9e03         	ldr	r6, [sp, #0xc]
  42c010: 9d04         	ldr	r5, [sp, #0x10]
  42c012: 9c05         	ldr	r4, [sp, #0x14]
  42c014: 9f03         	ldr	r7, [sp, #0xc]
  42c016: 9801         	ldr	r0, [sp, #0x4]
  42c018: f389 f972    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3892e4
  42c01c: 4603         	mov	r3, r0
  42c01e: 4638         	mov	r0, r7
  42c020: 4619         	mov	r1, r3
  42c022: f6af fa87    	bl	0x2db534 <_JNIEnv::NewStringUTF(char const*)> @ imm = #-0x150af2
  42c026: 4603         	mov	r3, r0
  42c028: 4630         	mov	r0, r6
  42c02a: 4629         	mov	r1, r5
  42c02c: 4622         	mov	r2, r4
  42c02e: f7ff f8cb    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0xe6a
  42c032: 9b03         	ldr	r3, [sp, #0xc]
  42c034: 4618         	mov	r0, r3
  42c036: f1a6 f937    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a626e
  42c03a: b007         	add	sp, #0x1c
  42c03c: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x42c03d); words below are literal-pool data ---
  42c03e: bf00         	nop
  42c040: 1660         	asrs	r0, r4, #0x19
  42c042: 003b         	movs	r3, r7
  42c044: 16a2         	asrs	r2, r4, #0x1a
  42c046: 003b         	movs	r3, r7
  42c048: 16a4         	asrs	r4, r4, #0x1a
  42c04a: 003b         	movs	r3, r7

// ==== ApplicationInterface::createAdBanner
//      file offset 0x42c04c (= ELF address; Ghidra 0x43c04c), 92 bytes, Thumb-2
  42c04c: b500         	push	{lr}
  42c04e: b085         	sub	sp, #0x14
  42c050: ab01         	add	r3, sp, #0x4
  42c052: 4618         	mov	r0, r3
  42c054: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c09c <ApplicationInterface::createAdBanner()+0x50>
  42c056: 447b         	add	r3, pc
  42c058: 4619         	mov	r1, r3
  42c05a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c0a0 <ApplicationInterface::createAdBanner()+0x54>
  42c05c: 447b         	add	r3, pc
  42c05e: 461a         	mov	r2, r3
  42c060: 4b10         	ldr	r3, [pc, #0x40]         @ 0x42c0a4 <ApplicationInterface::createAdBanner()+0x58>
  42c062: 447b         	add	r3, pc
  42c064: f1a6 f85c    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a60b8
  42c068: 4603         	mov	r3, r0
  42c06a: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c06e: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c072: f083 0301    	eor	r3, r3, #0x1
  42c076: b2db         	uxtb	r3, r3
  42c078: 2b00         	cmp	r3, #0x0
  42c07a: d10b         	bne	0x42c094 <ApplicationInterface::createAdBanner()+0x48> @ imm = #0x16
  42c07c: 9901         	ldr	r1, [sp, #0x4]
  42c07e: 9a02         	ldr	r2, [sp, #0x8]
  42c080: 9b03         	ldr	r3, [sp, #0xc]
  42c082: 4608         	mov	r0, r1
  42c084: 4611         	mov	r1, r2
  42c086: 461a         	mov	r2, r3
  42c088: f7ff f89e    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0xec4
  42c08c: 9b01         	ldr	r3, [sp, #0x4]
  42c08e: 4618         	mov	r0, r3
  42c090: f1a6 f90a    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a6214
  42c094: b005         	add	sp, #0x14
  42c096: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c099); words below are literal-pool data ---
  42c09a: bf00         	nop
  42c09c: 15f2         	asrs	r2, r6, #0x17
  42c09e: 003b         	movs	r3, r7
  42c0a0: 1654         	asrs	r4, r2, #0x19
  42c0a2: 003b         	movs	r3, r7
  42c0a4: 165e         	asrs	r6, r3, #0x19
  42c0a6: 003b         	movs	r3, r7

// ==== ApplicationInterface::removeAdBanner
//      file offset 0x42c0a8 (= ELF address; Ghidra 0x43c0a8), 92 bytes, Thumb-2
  42c0a8: b500         	push	{lr}
  42c0aa: b085         	sub	sp, #0x14
  42c0ac: ab01         	add	r3, sp, #0x4
  42c0ae: 4618         	mov	r0, r3
  42c0b0: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c0f8 <ApplicationInterface::removeAdBanner()+0x50>
  42c0b2: 447b         	add	r3, pc
  42c0b4: 4619         	mov	r1, r3
  42c0b6: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c0fc <ApplicationInterface::removeAdBanner()+0x54>
  42c0b8: 447b         	add	r3, pc
  42c0ba: 461a         	mov	r2, r3
  42c0bc: 4b10         	ldr	r3, [pc, #0x40]         @ 0x42c100 <ApplicationInterface::removeAdBanner()+0x58>
  42c0be: 447b         	add	r3, pc
  42c0c0: f1a6 f82e    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a605c
  42c0c4: 4603         	mov	r3, r0
  42c0c6: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c0ca: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c0ce: f083 0301    	eor	r3, r3, #0x1
  42c0d2: b2db         	uxtb	r3, r3
  42c0d4: 2b00         	cmp	r3, #0x0
  42c0d6: d10b         	bne	0x42c0f0 <ApplicationInterface::removeAdBanner()+0x48> @ imm = #0x16
  42c0d8: 9901         	ldr	r1, [sp, #0x4]
  42c0da: 9a02         	ldr	r2, [sp, #0x8]
  42c0dc: 9b03         	ldr	r3, [sp, #0xc]
  42c0de: 4608         	mov	r0, r1
  42c0e0: 4611         	mov	r1, r2
  42c0e2: 461a         	mov	r2, r3
  42c0e4: f7ff f870    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0xf20
  42c0e8: 9b01         	ldr	r3, [sp, #0x4]
  42c0ea: 4618         	mov	r0, r3
  42c0ec: f1a6 f8dc    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a61b8
  42c0f0: b005         	add	sp, #0x14
  42c0f2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c0f5); words below are literal-pool data ---
  42c0f6: bf00         	nop
  42c0f8: 1596         	asrs	r6, r2, #0x16
  42c0fa: 003b         	movs	r3, r7
  42c0fc: 160c         	asrs	r4, r1, #0x18
  42c0fe: 003b         	movs	r3, r7
  42c100: 1602         	asrs	r2, r0, #0x18
  42c102: 003b         	movs	r3, r7

// ==== ApplicationInterface::prepareInterstitial
//      file offset 0x42c104 (= ELF address; Ghidra 0x43c104), 92 bytes, Thumb-2
  42c104: b500         	push	{lr}
  42c106: b085         	sub	sp, #0x14
  42c108: ab01         	add	r3, sp, #0x4
  42c10a: 4618         	mov	r0, r3
  42c10c: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c154 <ApplicationInterface::prepareInterstitial()+0x50>
  42c10e: 447b         	add	r3, pc
  42c110: 4619         	mov	r1, r3
  42c112: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c158 <ApplicationInterface::prepareInterstitial()+0x54>
  42c114: 447b         	add	r3, pc
  42c116: 461a         	mov	r2, r3
  42c118: 4b10         	ldr	r3, [pc, #0x40]         @ 0x42c15c <ApplicationInterface::prepareInterstitial()+0x58>
  42c11a: 447b         	add	r3, pc
  42c11c: f1a6 f800    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a6000
  42c120: 4603         	mov	r3, r0
  42c122: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c126: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c12a: f083 0301    	eor	r3, r3, #0x1
  42c12e: b2db         	uxtb	r3, r3
  42c130: 2b00         	cmp	r3, #0x0
  42c132: d10b         	bne	0x42c14c <ApplicationInterface::prepareInterstitial()+0x48> @ imm = #0x16
  42c134: 9901         	ldr	r1, [sp, #0x4]
  42c136: 9a02         	ldr	r2, [sp, #0x8]
  42c138: 9b03         	ldr	r3, [sp, #0xc]
  42c13a: 4608         	mov	r0, r1
  42c13c: 4611         	mov	r1, r2
  42c13e: 461a         	mov	r2, r3
  42c140: f7ff f842    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0xf7c
  42c144: 9b01         	ldr	r3, [sp, #0x4]
  42c146: 4618         	mov	r0, r3
  42c148: f1a6 f8ae    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a615c
  42c14c: b005         	add	sp, #0x14
  42c14e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c151); words below are literal-pool data ---
  42c152: bf00         	nop
  42c154: 153a         	asrs	r2, r7, #0x14
  42c156: 003b         	movs	r3, r7
  42c158: 15c0         	asrs	r0, r0, #0x17
  42c15a: 003b         	movs	r3, r7
  42c15c: 15a6         	asrs	r6, r4, #0x16
  42c15e: 003b         	movs	r3, r7

// ==== ApplicationInterface::showInterstitial
//      file offset 0x42c160 (= ELF address; Ghidra 0x43c160), 116 bytes, Thumb-2
  42c160: b500         	push	{lr}
  42c162: b085         	sub	sp, #0x14
  42c164: f1b6 fa62    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1b64c4
  42c168: 4603         	mov	r3, r0
  42c16a: 4618         	mov	r0, r3
  42c16c: 4b15         	ldr	r3, [pc, #0x54]         @ 0x42c1c4 <ApplicationInterface::showInterstitial()+0x64>
  42c16e: 447b         	add	r3, pc
  42c170: 4619         	mov	r1, r3
  42c172: 2200         	movs	r2, #0x0
  42c174: f1b6 fa14    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x1b6428
  42c178: ab01         	add	r3, sp, #0x4
  42c17a: 4618         	mov	r0, r3
  42c17c: 4b12         	ldr	r3, [pc, #0x48]         @ 0x42c1c8 <ApplicationInterface::showInterstitial()+0x68>
  42c17e: 447b         	add	r3, pc
  42c180: 4619         	mov	r1, r3
  42c182: 4b12         	ldr	r3, [pc, #0x48]         @ 0x42c1cc <ApplicationInterface::showInterstitial()+0x6c>
  42c184: 447b         	add	r3, pc
  42c186: 461a         	mov	r2, r3
  42c188: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c1d0 <ApplicationInterface::showInterstitial()+0x70>
  42c18a: 447b         	add	r3, pc
  42c18c: f1a5 ffc8    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a5f90
  42c190: 4603         	mov	r3, r0
  42c192: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c196: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c19a: f083 0301    	eor	r3, r3, #0x1
  42c19e: b2db         	uxtb	r3, r3
  42c1a0: 2b00         	cmp	r3, #0x0
  42c1a2: d10b         	bne	0x42c1bc <ApplicationInterface::showInterstitial()+0x5c> @ imm = #0x16
  42c1a4: 9901         	ldr	r1, [sp, #0x4]
  42c1a6: 9a02         	ldr	r2, [sp, #0x8]
  42c1a8: 9b03         	ldr	r3, [sp, #0xc]
  42c1aa: 4608         	mov	r0, r1
  42c1ac: 4611         	mov	r1, r2
  42c1ae: 461a         	mov	r2, r3
  42c1b0: f7ff f80a    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0xfec
  42c1b4: 9b01         	ldr	r3, [sp, #0x4]
  42c1b6: 4618         	mov	r0, r3
  42c1b8: f1a6 f876    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a60ec
  42c1bc: b005         	add	sp, #0x14
  42c1be: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c1c1); words below are literal-pool data ---
  42c1c2: bf00         	nop
  42c1c4: 157a         	asrs	r2, r7, #0x15
  42c1c6: 003b         	movs	r3, r7
  42c1c8: 14ca         	asrs	r2, r1, #0x13
  42c1ca: 003b         	movs	r3, r7
  42c1cc: 1570         	asrs	r0, r6, #0x15
  42c1ce: 003b         	movs	r3, r7
  42c1d0: 1536         	asrs	r6, r6, #0x14
  42c1d2: 003b         	movs	r3, r7

// ==== ApplicationInterface::getAppVersion
//      file offset 0x42c1dc (= ELF address; Ghidra 0x43c1dc), 152 bytes, Thumb-2
  42c1dc: b500         	push	{lr}
  42c1de: b089         	sub	sp, #0x24
  42c1e0: 9001         	str	r0, [sp, #0x4]
  42c1e2: ab05         	add	r3, sp, #0x14
  42c1e4: 4618         	mov	r0, r3
  42c1e6: 4b20         	ldr	r3, [pc, #0x80]         @ 0x42c268 <ApplicationInterface::getAppVersion()+0x8c>
  42c1e8: 447b         	add	r3, pc
  42c1ea: 4619         	mov	r1, r3
  42c1ec: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x42c26c <ApplicationInterface::getAppVersion()+0x90>
  42c1ee: 447b         	add	r3, pc
  42c1f0: 461a         	mov	r2, r3
  42c1f2: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x42c270 <ApplicationInterface::getAppVersion()+0x94>
  42c1f4: 447b         	add	r3, pc
  42c1f6: f1a5 ff93    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a5f26
  42c1fa: 4603         	mov	r3, r0
  42c1fc: f88d 300b    	strb.w	r3, [sp, #0xb]
  42c200: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  42c204: f083 0301    	eor	r3, r3, #0x1
  42c208: b2db         	uxtb	r3, r3
  42c20a: 2b00         	cmp	r3, #0x0
  42c20c: d127         	bne	0x42c25e <ApplicationInterface::getAppVersion()+0x82> @ imm = #0x4e
  42c20e: 9905         	ldr	r1, [sp, #0x14]
  42c210: 9a06         	ldr	r2, [sp, #0x18]
  42c212: 9b07         	ldr	r3, [sp, #0x1c]
  42c214: 4608         	mov	r0, r1
  42c216: 4611         	mov	r1, r2
  42c218: 461a         	mov	r2, r3
  42c21a: f7fe ff9f    	bl	0x42b15c <_JNIEnv::CallStaticObjectMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x10c2
  42c21e: 4603         	mov	r3, r0
  42c220: 9304         	str	r3, [sp, #0x10]
  42c222: ab03         	add	r3, sp, #0xc
  42c224: 4618         	mov	r0, r3
  42c226: 9904         	ldr	r1, [sp, #0x10]
  42c228: f1a5 ff9e    	bl	0x5d2168 <cocos2d::JniHelper::jstring2string(_jstring*)> @ imm = #0x1a5f3c
  42c22c: 9b05         	ldr	r3, [sp, #0x14]
  42c22e: 4618         	mov	r0, r3
  42c230: 9904         	ldr	r1, [sp, #0x10]
  42c232: f6af f933    	bl	0x2db49c <_JNIEnv::NewGlobalRef(_jobject*)+0x20> @ imm = #-0x150d9a
  42c236: 9b05         	ldr	r3, [sp, #0x14]
  42c238: 4618         	mov	r0, r3
  42c23a: f1a6 f835    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a606a
  42c23e: ab03         	add	r3, sp, #0xc
  42c240: 9801         	ldr	r0, [sp, #0x4]
  42c242: 4619         	mov	r1, r3
  42c244: f388 ffbc    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x388f78
  42c248: ab03         	add	r3, sp, #0xc
  42c24a: 4618         	mov	r0, r3
  42c24c: f389 fb62    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3896c4
  42c250: e005         	b	0x42c25e <ApplicationInterface::getAppVersion()+0x82> @ imm = #0xa
  42c252: ab03         	add	r3, sp, #0xc
  42c254: 4618         	mov	r0, r3
  42c256: f389 fb5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3896ba
  42c25a: f35b ff27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35be4e
  42c25e: 9801         	ldr	r0, [sp, #0x4]
  42c260: b009         	add	sp, #0x24
  42c262: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c265); words below are literal-pool data ---
  42c266: bf00         	nop
  42c268: 1460         	asrs	r0, r4, #0x11
  42c26a: 003b         	movs	r3, r7
  42c26c: 151a         	asrs	r2, r3, #0x14
  42c26e: 003b         	movs	r3, r7
  42c270: 152c         	asrs	r4, r5, #0x14
  42c272: 003b         	movs	r3, r7

// ==== ApplicationInterface::hasCrashCartInstalled
//      file offset 0x42c274 (= ELF address; Ghidra 0x43c274), 96 bytes, Thumb-2
  42c274: b510         	push	{r4, lr}
  42c276: b082         	sub	sp, #0x8
  42c278: 466b         	mov	r3, sp
  42c27a: 4618         	mov	r0, r3
  42c27c: f35e f8ba    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35e174
  42c280: aa01         	add	r2, sp, #0x4
  42c282: 466b         	mov	r3, sp
  42c284: 4610         	mov	r0, r2
  42c286: 4a12         	ldr	r2, [pc, #0x48]         @ 0x42c2d0 <ApplicationInterface::hasCrashCartInstalled()+0x5c>
  42c288: 447a         	add	r2, pc
  42c28a: 4611         	mov	r1, r2
  42c28c: 461a         	mov	r2, r3
  42c28e: f38a fbe7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a7ce
  42c292: ab01         	add	r3, sp, #0x4
  42c294: 4618         	mov	r0, r3
  42c296: f7ff fe59    	bl	0x42bf4c <ApplicationInterface::canOpenApp(std::string)> @ imm = #-0x34e
  42c29a: 4603         	mov	r3, r0
  42c29c: 461c         	mov	r4, r3
  42c29e: ab01         	add	r3, sp, #0x4
  42c2a0: 4618         	mov	r0, r3
  42c2a2: f389 fb37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38966e
  42c2a6: 466b         	mov	r3, sp
  42c2a8: 4618         	mov	r0, r3
  42c2aa: f35e f8a7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e14e
  42c2ae: 4623         	mov	r3, r4
  42c2b0: e00a         	b	0x42c2c8 <ApplicationInterface::hasCrashCartInstalled()+0x54> @ imm = #0x14
  42c2b2: ab01         	add	r3, sp, #0x4
  42c2b4: 4618         	mov	r0, r3
  42c2b6: f389 fb2d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38965a
  42c2ba: e7ff         	b	0x42c2bc <ApplicationInterface::hasCrashCartInstalled()+0x48> @ imm = #-0x2
  42c2bc: 466b         	mov	r3, sp
  42c2be: 4618         	mov	r0, r3
  42c2c0: f35e f89c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e138
  42c2c4: f35b fef2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bde4
  42c2c8: 4618         	mov	r0, r3
  42c2ca: b002         	add	sp, #0x8
  42c2cc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42c2cd); words below are literal-pool data ---
  42c2ce: bf00         	nop
  42c2d0: 14b0         	asrs	r0, r6, #0x12
  42c2d2: 003b         	movs	r3, r7

// ==== ApplicationInterface::hasZombieRoadRageInstalled
//      file offset 0x42c2d4 (= ELF address; Ghidra 0x43c2d4), 96 bytes, Thumb-2
  42c2d4: b510         	push	{r4, lr}
  42c2d6: b082         	sub	sp, #0x8
  42c2d8: 466b         	mov	r3, sp
  42c2da: 4618         	mov	r0, r3
  42c2dc: f35e f88a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35e114
  42c2e0: aa01         	add	r2, sp, #0x4
  42c2e2: 466b         	mov	r3, sp
  42c2e4: 4610         	mov	r0, r2
  42c2e6: 4a12         	ldr	r2, [pc, #0x48]         @ 0x42c330 <ApplicationInterface::hasZombieRoadRageInstalled()+0x5c>
  42c2e8: 447a         	add	r2, pc
  42c2ea: 4611         	mov	r1, r2
  42c2ec: 461a         	mov	r2, r3
  42c2ee: f38a fbb7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a76e
  42c2f2: ab01         	add	r3, sp, #0x4
  42c2f4: 4618         	mov	r0, r3
  42c2f6: f7ff fe29    	bl	0x42bf4c <ApplicationInterface::canOpenApp(std::string)> @ imm = #-0x3ae
  42c2fa: 4603         	mov	r3, r0
  42c2fc: 461c         	mov	r4, r3
  42c2fe: ab01         	add	r3, sp, #0x4
  42c300: 4618         	mov	r0, r3
  42c302: f389 fb07    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38960e
  42c306: 466b         	mov	r3, sp
  42c308: 4618         	mov	r0, r3
  42c30a: f35e f877    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e0ee
  42c30e: 4623         	mov	r3, r4
  42c310: e00a         	b	0x42c328 <ApplicationInterface::hasZombieRoadRageInstalled()+0x54> @ imm = #0x14
  42c312: ab01         	add	r3, sp, #0x4
  42c314: 4618         	mov	r0, r3
  42c316: f389 fafd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3895fa
  42c31a: e7ff         	b	0x42c31c <ApplicationInterface::hasZombieRoadRageInstalled()+0x48> @ imm = #-0x2
  42c31c: 466b         	mov	r3, sp
  42c31e: 4618         	mov	r0, r3
  42c320: f35e f86c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e0d8
  42c324: f35b fec2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bd84
  42c328: 4618         	mov	r0, r3
  42c32a: b002         	add	sp, #0x8
  42c32c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42c32d); words below are literal-pool data ---
  42c32e: bf00         	nop
  42c330: 1464         	asrs	r4, r4, #0x11
  42c332: 003b         	movs	r3, r7

// ==== ApplicationInterface::hasDoodleArmyInstalled
//      file offset 0x42c334 (= ELF address; Ghidra 0x43c334), 96 bytes, Thumb-2
  42c334: b510         	push	{r4, lr}
  42c336: b082         	sub	sp, #0x8
  42c338: 466b         	mov	r3, sp
  42c33a: 4618         	mov	r0, r3
  42c33c: f35e f85a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35e0b4
  42c340: aa01         	add	r2, sp, #0x4
  42c342: 466b         	mov	r3, sp
  42c344: 4610         	mov	r0, r2
  42c346: 4a12         	ldr	r2, [pc, #0x48]         @ 0x42c390 <ApplicationInterface::hasDoodleArmyInstalled()+0x5c>
  42c348: 447a         	add	r2, pc
  42c34a: 4611         	mov	r1, r2
  42c34c: 461a         	mov	r2, r3
  42c34e: f38a fb87    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a70e
  42c352: ab01         	add	r3, sp, #0x4
  42c354: 4618         	mov	r0, r3
  42c356: f7ff fdf9    	bl	0x42bf4c <ApplicationInterface::canOpenApp(std::string)> @ imm = #-0x40e
  42c35a: 4603         	mov	r3, r0
  42c35c: 461c         	mov	r4, r3
  42c35e: ab01         	add	r3, sp, #0x4
  42c360: 4618         	mov	r0, r3
  42c362: f389 fad7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3895ae
  42c366: 466b         	mov	r3, sp
  42c368: 4618         	mov	r0, r3
  42c36a: f35e f847    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e08e
  42c36e: 4623         	mov	r3, r4
  42c370: e00a         	b	0x42c388 <ApplicationInterface::hasDoodleArmyInstalled()+0x54> @ imm = #0x14
  42c372: ab01         	add	r3, sp, #0x4
  42c374: 4618         	mov	r0, r3
  42c376: f389 facd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38959a
  42c37a: e7ff         	b	0x42c37c <ApplicationInterface::hasDoodleArmyInstalled()+0x48> @ imm = #-0x2
  42c37c: 466b         	mov	r3, sp
  42c37e: 4618         	mov	r0, r3
  42c380: f35e f83c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e078
  42c384: f35b fe92    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bd24
  42c388: 4618         	mov	r0, r3
  42c38a: b002         	add	sp, #0x8
  42c38c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42c38d); words below are literal-pool data ---
  42c38e: bf00         	nop
  42c390: 1418         	asrs	r0, r3, #0x10
  42c392: 003b         	movs	r3, r7

// ==== ApplicationInterface::hasDoodleArmyBCInstalled
//      file offset 0x42c394 (= ELF address; Ghidra 0x43c394), 96 bytes, Thumb-2
  42c394: b510         	push	{r4, lr}
  42c396: b082         	sub	sp, #0x8
  42c398: 466b         	mov	r3, sp
  42c39a: 4618         	mov	r0, r3
  42c39c: f35e f82a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35e054
  42c3a0: aa01         	add	r2, sp, #0x4
  42c3a2: 466b         	mov	r3, sp
  42c3a4: 4610         	mov	r0, r2
  42c3a6: 4a12         	ldr	r2, [pc, #0x48]         @ 0x42c3f0 <ApplicationInterface::hasDoodleArmyBCInstalled()+0x5c>
  42c3a8: 447a         	add	r2, pc
  42c3aa: 4611         	mov	r1, r2
  42c3ac: 461a         	mov	r2, r3
  42c3ae: f38a fb57    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a6ae
  42c3b2: ab01         	add	r3, sp, #0x4
  42c3b4: 4618         	mov	r0, r3
  42c3b6: f7ff fdc9    	bl	0x42bf4c <ApplicationInterface::canOpenApp(std::string)> @ imm = #-0x46e
  42c3ba: 4603         	mov	r3, r0
  42c3bc: 461c         	mov	r4, r3
  42c3be: ab01         	add	r3, sp, #0x4
  42c3c0: 4618         	mov	r0, r3
  42c3c2: f389 faa7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38954e
  42c3c6: 466b         	mov	r3, sp
  42c3c8: 4618         	mov	r0, r3
  42c3ca: f35e f817    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e02e
  42c3ce: 4623         	mov	r3, r4
  42c3d0: e00a         	b	0x42c3e8 <ApplicationInterface::hasDoodleArmyBCInstalled()+0x54> @ imm = #0x14
  42c3d2: ab01         	add	r3, sp, #0x4
  42c3d4: 4618         	mov	r0, r3
  42c3d6: f389 fa9d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38953a
  42c3da: e7ff         	b	0x42c3dc <ApplicationInterface::hasDoodleArmyBCInstalled()+0x48> @ imm = #-0x2
  42c3dc: 466b         	mov	r3, sp
  42c3de: 4618         	mov	r0, r3
  42c3e0: f35e f80c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35e018
  42c3e4: f35b fe62    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bcc4
  42c3e8: 4618         	mov	r0, r3
  42c3ea: b002         	add	sp, #0x8
  42c3ec: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x42c3ed); words below are literal-pool data ---
  42c3ee: bf00         	nop
  42c3f0: 13cc         	asrs	r4, r1, #0xf
  42c3f2: 003b         	movs	r3, r7

// ==== ApplicationInterface::openDoodleArmyAppLink
//      file offset 0x42c3f4 (= ELF address; Ghidra 0x43c3f4), 88 bytes, Thumb-2
  42c3f4: b500         	push	{lr}
  42c3f6: b083         	sub	sp, #0xc
  42c3f8: 466b         	mov	r3, sp
  42c3fa: 4618         	mov	r0, r3
  42c3fc: f35d fffa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dff4
  42c400: aa01         	add	r2, sp, #0x4
  42c402: 466b         	mov	r3, sp
  42c404: 4610         	mov	r0, r2
  42c406: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c448 <ApplicationInterface::openDoodleArmyAppLink()+0x54>
  42c408: 447a         	add	r2, pc
  42c40a: 4611         	mov	r1, r2
  42c40c: 461a         	mov	r2, r3
  42c40e: f38a fb27    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a64e
  42c412: ab01         	add	r3, sp, #0x4
  42c414: 4618         	mov	r0, r3
  42c416: f7ff fde1    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x43e
  42c41a: ab01         	add	r3, sp, #0x4
  42c41c: 4618         	mov	r0, r3
  42c41e: f389 fa79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3894f2
  42c422: 466b         	mov	r3, sp
  42c424: 4618         	mov	r0, r3
  42c426: f35d ffe9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dfd2
  42c42a: e00a         	b	0x42c442 <ApplicationInterface::openDoodleArmyAppLink()+0x4e> @ imm = #0x14
  42c42c: ab01         	add	r3, sp, #0x4
  42c42e: 4618         	mov	r0, r3
  42c430: f389 fa70    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3894e0
  42c434: e7ff         	b	0x42c436 <ApplicationInterface::openDoodleArmyAppLink()+0x42> @ imm = #-0x2
  42c436: 466b         	mov	r3, sp
  42c438: 4618         	mov	r0, r3
  42c43a: f35d ffdf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dfbe
  42c43e: f35b fe35    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bc6a
  42c442: b003         	add	sp, #0xc
  42c444: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c447); words below are literal-pool data ---
  42c448: 1384         	asrs	r4, r0, #0xe
  42c44a: 003b         	movs	r3, r7

// ==== ApplicationInterface::openDoodleArmyBCAppLink
//      file offset 0x42c44c (= ELF address; Ghidra 0x43c44c), 88 bytes, Thumb-2
  42c44c: b500         	push	{lr}
  42c44e: b083         	sub	sp, #0xc
  42c450: 466b         	mov	r3, sp
  42c452: 4618         	mov	r0, r3
  42c454: f35d ffce    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35df9c
  42c458: aa01         	add	r2, sp, #0x4
  42c45a: 466b         	mov	r3, sp
  42c45c: 4610         	mov	r0, r2
  42c45e: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c4a0 <ApplicationInterface::openDoodleArmyBCAppLink()+0x54>
  42c460: 447a         	add	r2, pc
  42c462: 4611         	mov	r1, r2
  42c464: 461a         	mov	r2, r3
  42c466: f38a fafb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a5f6
  42c46a: ab01         	add	r3, sp, #0x4
  42c46c: 4618         	mov	r0, r3
  42c46e: f7ff fdb5    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x496
  42c472: ab01         	add	r3, sp, #0x4
  42c474: 4618         	mov	r0, r3
  42c476: f389 fa4d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38949a
  42c47a: 466b         	mov	r3, sp
  42c47c: 4618         	mov	r0, r3
  42c47e: f35d ffbd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35df7a
  42c482: e00a         	b	0x42c49a <ApplicationInterface::openDoodleArmyBCAppLink()+0x4e> @ imm = #0x14
  42c484: ab01         	add	r3, sp, #0x4
  42c486: 4618         	mov	r0, r3
  42c488: f389 fa44    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389488
  42c48c: e7ff         	b	0x42c48e <ApplicationInterface::openDoodleArmyBCAppLink()+0x42> @ imm = #-0x2
  42c48e: 466b         	mov	r3, sp
  42c490: 4618         	mov	r0, r3
  42c492: f35d ffb3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35df66
  42c496: f35b fe09    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bc12
  42c49a: b003         	add	sp, #0xc
  42c49c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c49f); words below are literal-pool data ---
  42c4a0: 1354         	asrs	r4, r2, #0xd
  42c4a2: 003b         	movs	r3, r7

// ==== ApplicationInterface::openCrashCartLink
//      file offset 0x42c4a4 (= ELF address; Ghidra 0x43c4a4), 88 bytes, Thumb-2
  42c4a4: b500         	push	{lr}
  42c4a6: b083         	sub	sp, #0xc
  42c4a8: 466b         	mov	r3, sp
  42c4aa: 4618         	mov	r0, r3
  42c4ac: f35d ffa2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35df44
  42c4b0: aa01         	add	r2, sp, #0x4
  42c4b2: 466b         	mov	r3, sp
  42c4b4: 4610         	mov	r0, r2
  42c4b6: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c4f8 <ApplicationInterface::openCrashCartLink()+0x54>
  42c4b8: 447a         	add	r2, pc
  42c4ba: 4611         	mov	r1, r2
  42c4bc: 461a         	mov	r2, r3
  42c4be: f38a facf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a59e
  42c4c2: ab01         	add	r3, sp, #0x4
  42c4c4: 4618         	mov	r0, r3
  42c4c6: f7ff fd89    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x4ee
  42c4ca: ab01         	add	r3, sp, #0x4
  42c4cc: 4618         	mov	r0, r3
  42c4ce: f389 fa21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389442
  42c4d2: 466b         	mov	r3, sp
  42c4d4: 4618         	mov	r0, r3
  42c4d6: f35d ff91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35df22
  42c4da: e00a         	b	0x42c4f2 <ApplicationInterface::openCrashCartLink()+0x4e> @ imm = #0x14
  42c4dc: ab01         	add	r3, sp, #0x4
  42c4de: 4618         	mov	r0, r3
  42c4e0: f389 fa18    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389430
  42c4e4: e7ff         	b	0x42c4e6 <ApplicationInterface::openCrashCartLink()+0x42> @ imm = #-0x2
  42c4e6: 466b         	mov	r3, sp
  42c4e8: 4618         	mov	r0, r3
  42c4ea: f35d ff87    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35df0e
  42c4ee: f35b fddd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bbba
  42c4f2: b003         	add	sp, #0xc
  42c4f4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c4f7); words below are literal-pool data ---
  42c4f8: 1328         	asrs	r0, r5, #0xc
  42c4fa: 003b         	movs	r3, r7

// ==== ApplicationInterface::openZombieRoadRageLink
//      file offset 0x42c4fc (= ELF address; Ghidra 0x43c4fc), 88 bytes, Thumb-2
  42c4fc: b500         	push	{lr}
  42c4fe: b083         	sub	sp, #0xc
  42c500: 466b         	mov	r3, sp
  42c502: 4618         	mov	r0, r3
  42c504: f35d ff76    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35deec
  42c508: aa01         	add	r2, sp, #0x4
  42c50a: 466b         	mov	r3, sp
  42c50c: 4610         	mov	r0, r2
  42c50e: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c550 <ApplicationInterface::openZombieRoadRageLink()+0x54>
  42c510: 447a         	add	r2, pc
  42c512: 4611         	mov	r1, r2
  42c514: 461a         	mov	r2, r3
  42c516: f38a faa3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a546
  42c51a: ab01         	add	r3, sp, #0x4
  42c51c: 4618         	mov	r0, r3
  42c51e: f7ff fd5d    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x546
  42c522: ab01         	add	r3, sp, #0x4
  42c524: 4618         	mov	r0, r3
  42c526: f389 f9f5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3893ea
  42c52a: 466b         	mov	r3, sp
  42c52c: 4618         	mov	r0, r3
  42c52e: f35d ff65    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35deca
  42c532: e00a         	b	0x42c54a <ApplicationInterface::openZombieRoadRageLink()+0x4e> @ imm = #0x14
  42c534: ab01         	add	r3, sp, #0x4
  42c536: 4618         	mov	r0, r3
  42c538: f389 f9ec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3893d8
  42c53c: e7ff         	b	0x42c53e <ApplicationInterface::openZombieRoadRageLink()+0x42> @ imm = #-0x2
  42c53e: 466b         	mov	r3, sp
  42c540: 4618         	mov	r0, r3
  42c542: f35d ff5b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35deb6
  42c546: f35b fdb1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bb62
  42c54a: b003         	add	sp, #0xc
  42c54c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c54f); words below are literal-pool data ---
  42c550: 1300         	asrs	r0, r0, #0xc
  42c552: 003b         	movs	r3, r7

// ==== ApplicationInterface::openPocketKiteLink
//      file offset 0x42c554 (= ELF address; Ghidra 0x43c554), 88 bytes, Thumb-2
  42c554: b500         	push	{lr}
  42c556: b083         	sub	sp, #0xc
  42c558: 466b         	mov	r3, sp
  42c55a: 4618         	mov	r0, r3
  42c55c: f35d ff4a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35de94
  42c560: aa01         	add	r2, sp, #0x4
  42c562: 466b         	mov	r3, sp
  42c564: 4610         	mov	r0, r2
  42c566: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c5a8 <ApplicationInterface::openPocketKiteLink()+0x54>
  42c568: 447a         	add	r2, pc
  42c56a: 4611         	mov	r1, r2
  42c56c: 461a         	mov	r2, r3
  42c56e: f38a fa77    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a4ee
  42c572: ab01         	add	r3, sp, #0x4
  42c574: 4618         	mov	r0, r3
  42c576: f7ff fd31    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x59e
  42c57a: ab01         	add	r3, sp, #0x4
  42c57c: 4618         	mov	r0, r3
  42c57e: f389 f9c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389392
  42c582: 466b         	mov	r3, sp
  42c584: 4618         	mov	r0, r3
  42c586: f35d ff39    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35de72
  42c58a: e00a         	b	0x42c5a2 <ApplicationInterface::openPocketKiteLink()+0x4e> @ imm = #0x14
  42c58c: ab01         	add	r3, sp, #0x4
  42c58e: 4618         	mov	r0, r3
  42c590: f389 f9c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389380
  42c594: e7ff         	b	0x42c596 <ApplicationInterface::openPocketKiteLink()+0x42> @ imm = #-0x2
  42c596: 466b         	mov	r3, sp
  42c598: 4618         	mov	r0, r3
  42c59a: f35d ff2f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35de5e
  42c59e: f35b fd85    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bb0a
  42c5a2: b003         	add	sp, #0xc
  42c5a4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c5a7); words below are literal-pool data ---
  42c5a8: 12a8         	asrs	r0, r5, #0xa
  42c5aa: 003b         	movs	r3, r7

// ==== ApplicationInterface::openCannonSiegeLink
//      file offset 0x42c5ac (= ELF address; Ghidra 0x43c5ac), 88 bytes, Thumb-2
  42c5ac: b500         	push	{lr}
  42c5ae: b083         	sub	sp, #0xc
  42c5b0: 466b         	mov	r3, sp
  42c5b2: 4618         	mov	r0, r3
  42c5b4: f35d ff1e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35de3c
  42c5b8: aa01         	add	r2, sp, #0x4
  42c5ba: 466b         	mov	r3, sp
  42c5bc: 4610         	mov	r0, r2
  42c5be: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c600 <ApplicationInterface::openCannonSiegeLink()+0x54>
  42c5c0: 447a         	add	r2, pc
  42c5c2: 4611         	mov	r1, r2
  42c5c4: 461a         	mov	r2, r3
  42c5c6: f38a fa4b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a496
  42c5ca: ab01         	add	r3, sp, #0x4
  42c5cc: 4618         	mov	r0, r3
  42c5ce: f7ff fd05    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x5f6
  42c5d2: ab01         	add	r3, sp, #0x4
  42c5d4: 4618         	mov	r0, r3
  42c5d6: f389 f99d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38933a
  42c5da: 466b         	mov	r3, sp
  42c5dc: 4618         	mov	r0, r3
  42c5de: f35d ff0d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35de1a
  42c5e2: e00a         	b	0x42c5fa <ApplicationInterface::openCannonSiegeLink()+0x4e> @ imm = #0x14
  42c5e4: ab01         	add	r3, sp, #0x4
  42c5e6: 4618         	mov	r0, r3
  42c5e8: f389 f994    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389328
  42c5ec: e7ff         	b	0x42c5ee <ApplicationInterface::openCannonSiegeLink()+0x42> @ imm = #-0x2
  42c5ee: 466b         	mov	r3, sp
  42c5f0: 4618         	mov	r0, r3
  42c5f2: f35d ff03    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35de06
  42c5f6: f35b fd59    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35bab2
  42c5fa: b003         	add	sp, #0xc
  42c5fc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c5ff); words below are literal-pool data ---
  42c600: 1250         	asrs	r0, r2, #0x9
  42c602: 003b         	movs	r3, r7

// ==== ApplicationInterface::openFlipTheBirdLink
//      file offset 0x42c604 (= ELF address; Ghidra 0x43c604), 88 bytes, Thumb-2
  42c604: b500         	push	{lr}
  42c606: b083         	sub	sp, #0xc
  42c608: 466b         	mov	r3, sp
  42c60a: 4618         	mov	r0, r3
  42c60c: f35d fef2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dde4
  42c610: aa01         	add	r2, sp, #0x4
  42c612: 466b         	mov	r3, sp
  42c614: 4610         	mov	r0, r2
  42c616: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c658 <ApplicationInterface::openFlipTheBirdLink()+0x54>
  42c618: 447a         	add	r2, pc
  42c61a: 4611         	mov	r1, r2
  42c61c: 461a         	mov	r2, r3
  42c61e: f38a fa1f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a43e
  42c622: ab01         	add	r3, sp, #0x4
  42c624: 4618         	mov	r0, r3
  42c626: f7ff fcd9    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x64e
  42c62a: ab01         	add	r3, sp, #0x4
  42c62c: 4618         	mov	r0, r3
  42c62e: f389 f971    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3892e2
  42c632: 466b         	mov	r3, sp
  42c634: 4618         	mov	r0, r3
  42c636: f35d fee1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ddc2
  42c63a: e00a         	b	0x42c652 <ApplicationInterface::openFlipTheBirdLink()+0x4e> @ imm = #0x14
  42c63c: ab01         	add	r3, sp, #0x4
  42c63e: 4618         	mov	r0, r3
  42c640: f389 f968    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3892d0
  42c644: e7ff         	b	0x42c646 <ApplicationInterface::openFlipTheBirdLink()+0x42> @ imm = #-0x2
  42c646: 466b         	mov	r3, sp
  42c648: 4618         	mov	r0, r3
  42c64a: f35d fed7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35ddae
  42c64e: f35b fd2d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35ba5a
  42c652: b003         	add	sp, #0xc
  42c654: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c657); words below are literal-pool data ---
  42c658: 11f8         	asrs	r0, r7, #0x7
  42c65a: 003b         	movs	r3, r7

// ==== ApplicationInterface::openJonahLink
//      file offset 0x42c65c (= ELF address; Ghidra 0x43c65c), 88 bytes, Thumb-2
  42c65c: b500         	push	{lr}
  42c65e: b083         	sub	sp, #0xc
  42c660: 466b         	mov	r3, sp
  42c662: 4618         	mov	r0, r3
  42c664: f35d fec6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dd8c
  42c668: aa01         	add	r2, sp, #0x4
  42c66a: 466b         	mov	r3, sp
  42c66c: 4610         	mov	r0, r2
  42c66e: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c6b0 <ApplicationInterface::openJonahLink()+0x54>
  42c670: 447a         	add	r2, pc
  42c672: 4611         	mov	r1, r2
  42c674: 461a         	mov	r2, r3
  42c676: f38a f9f3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a3e6
  42c67a: ab01         	add	r3, sp, #0x4
  42c67c: 4618         	mov	r0, r3
  42c67e: f7ff fcad    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x6a6
  42c682: ab01         	add	r3, sp, #0x4
  42c684: 4618         	mov	r0, r3
  42c686: f389 f945    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38928a
  42c68a: 466b         	mov	r3, sp
  42c68c: 4618         	mov	r0, r3
  42c68e: f35d feb5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dd6a
  42c692: e00a         	b	0x42c6aa <ApplicationInterface::openJonahLink()+0x4e> @ imm = #0x14
  42c694: ab01         	add	r3, sp, #0x4
  42c696: 4618         	mov	r0, r3
  42c698: f389 f93c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389278
  42c69c: e7ff         	b	0x42c69e <ApplicationInterface::openJonahLink()+0x42> @ imm = #-0x2
  42c69e: 466b         	mov	r3, sp
  42c6a0: 4618         	mov	r0, r3
  42c6a2: f35d feab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dd56
  42c6a6: f35b fd01    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35ba02
  42c6aa: b003         	add	sp, #0xc
  42c6ac: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c6af); words below are literal-pool data ---
  42c6b0: 11a0         	asrs	r0, r4, #0x6
  42c6b2: 003b         	movs	r3, r7

// ==== ApplicationInterface::openMiniMilitiaLink
//      file offset 0x42c6b4 (= ELF address; Ghidra 0x43c6b4), 88 bytes, Thumb-2
  42c6b4: b500         	push	{lr}
  42c6b6: b083         	sub	sp, #0xc
  42c6b8: 466b         	mov	r3, sp
  42c6ba: 4618         	mov	r0, r3
  42c6bc: f35d fe9a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dd34
  42c6c0: aa01         	add	r2, sp, #0x4
  42c6c2: 466b         	mov	r3, sp
  42c6c4: 4610         	mov	r0, r2
  42c6c6: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c708 <ApplicationInterface::openMiniMilitiaLink()+0x54>
  42c6c8: 447a         	add	r2, pc
  42c6ca: 4611         	mov	r1, r2
  42c6cc: 461a         	mov	r2, r3
  42c6ce: f38a f9c7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a38e
  42c6d2: ab01         	add	r3, sp, #0x4
  42c6d4: 4618         	mov	r0, r3
  42c6d6: f7ff fc81    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x6fe
  42c6da: ab01         	add	r3, sp, #0x4
  42c6dc: 4618         	mov	r0, r3
  42c6de: f389 f919    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389232
  42c6e2: 466b         	mov	r3, sp
  42c6e4: 4618         	mov	r0, r3
  42c6e6: f35d fe89    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dd12
  42c6ea: e00a         	b	0x42c702 <ApplicationInterface::openMiniMilitiaLink()+0x4e> @ imm = #0x14
  42c6ec: ab01         	add	r3, sp, #0x4
  42c6ee: 4618         	mov	r0, r3
  42c6f0: f389 f910    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389220
  42c6f4: e7ff         	b	0x42c6f6 <ApplicationInterface::openMiniMilitiaLink()+0x42> @ imm = #-0x2
  42c6f6: 466b         	mov	r3, sp
  42c6f8: 4618         	mov	r0, r3
  42c6fa: f35d fe7f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dcfe
  42c6fe: f35b fcd5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35b9aa
  42c702: b003         	add	sp, #0xc
  42c704: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c707); words below are literal-pool data ---
  42c708: 1170         	asrs	r0, r6, #0x5
  42c70a: 003b         	movs	r3, r7

// ==== ApplicationInterface::getRandomAdNumber
//      file offset 0x42c70c (= ELF address; Ghidra 0x43c70c), 6 bytes, Thumb-2
  42c70c: 2301         	movs	r3, #0x1
  42c70e: 4618         	mov	r0, r3
  42c710: 4770         	bx	lr

// ==== ApplicationInterface::getAdSpriteName
//      file offset 0x42c714 (= ELF address; Ghidra 0x43c714), 124 bytes, Thumb-2
  42c714: b500         	push	{lr}
  42c716: b085         	sub	sp, #0x14
  42c718: 9001         	str	r0, [sp, #0x4]
  42c71a: 9100         	str	r1, [sp]
  42c71c: 9b00         	ldr	r3, [sp]
  42c71e: 2b01         	cmp	r3, #0x1
  42c720: d110         	bne	0x42c744 <ApplicationInterface::getAdSpriteName(int)+0x30> @ imm = #0x20
  42c722: ab03         	add	r3, sp, #0xc
  42c724: 4618         	mov	r0, r3
  42c726: f35d fe65    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dcca
  42c72a: ab03         	add	r3, sp, #0xc
  42c72c: 9801         	ldr	r0, [sp, #0x4]
  42c72e: 4a16         	ldr	r2, [pc, #0x58]         @ 0x42c788 <ApplicationInterface::getAdSpriteName(int)+0x74>
  42c730: 447a         	add	r2, pc
  42c732: 4611         	mov	r1, r2
  42c734: 461a         	mov	r2, r3
  42c736: f38a f993    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a326
  42c73a: ab03         	add	r3, sp, #0xc
  42c73c: 4618         	mov	r0, r3
  42c73e: f35d fe5d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dcba
  42c742: e01c         	b	0x42c77e <ApplicationInterface::getAdSpriteName(int)+0x6a> @ imm = #0x38
  42c744: ab03         	add	r3, sp, #0xc
  42c746: 4618         	mov	r0, r3
  42c748: f35d fe54    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dca8
  42c74c: ab03         	add	r3, sp, #0xc
  42c74e: 9801         	ldr	r0, [sp, #0x4]
  42c750: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x42c78c <ApplicationInterface::getAdSpriteName(int)+0x78>
  42c752: 447a         	add	r2, pc
  42c754: 4611         	mov	r1, r2
  42c756: 461a         	mov	r2, r3
  42c758: f38a f982    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a304
  42c75c: ab03         	add	r3, sp, #0xc
  42c75e: 4618         	mov	r0, r3
  42c760: f35d fe4c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dc98
  42c764: e00b         	b	0x42c77e <ApplicationInterface::getAdSpriteName(int)+0x6a> @ imm = #0x16
  42c766: ab03         	add	r3, sp, #0xc
  42c768: 4618         	mov	r0, r3
  42c76a: f35d fe47    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dc8e
  42c76e: f35b fc9d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35b93a
  42c772: ab03         	add	r3, sp, #0xc
  42c774: 4618         	mov	r0, r3
  42c776: f35d fe41    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dc82
  42c77a: f35b fc97    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35b92e
  42c77e: 9801         	ldr	r0, [sp, #0x4]
  42c780: b005         	add	sp, #0x14
  42c782: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c785); words below are literal-pool data ---
  42c786: bf00         	nop
  42c788: 1130         	asrs	r0, r6, #0x4
  42c78a: 003b         	movs	r3, r7
  42c78c: 110e         	asrs	r6, r1, #0x4
  42c78e: 003b         	movs	r3, r7

// ==== ApplicationInterface::adClicked
//      file offset 0x42c790 (= ELF address; Ghidra 0x43c790), 30 bytes, Thumb-2
  42c790: b500         	push	{lr}
  42c792: b083         	sub	sp, #0xc
  42c794: 9001         	str	r0, [sp, #0x4]
  42c796: 9b01         	ldr	r3, [sp, #0x4]
  42c798: 2b01         	cmp	r3, #0x1
  42c79a: d102         	bne	0x42c7a2 <ApplicationInterface::adClicked(int)+0x12> @ imm = #0x4
  42c79c: f7ff fe2a    	bl	0x42c3f4 <ApplicationInterface::openDoodleArmyAppLink()> @ imm = #-0x3ac
  42c7a0: e002         	b	0x42c7a8 <ApplicationInterface::adClicked(int)+0x18> @ imm = #0x4
  42c7a2: f000 f815    	bl	0x42c7d0 <ApplicationInterface::openDeveloperLink()> @ imm = #0x2a
  42c7a6: bf00         	nop
  42c7a8: b003         	add	sp, #0xc
  42c7aa: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationInterface::zombieRoadRageIsAvailable
//      file offset 0x42c7b0 (= ELF address; Ghidra 0x43c7b0), 6 bytes, Thumb-2
  42c7b0: 2300         	movs	r3, #0x0
  42c7b2: 4618         	mov	r0, r3
  42c7b4: 4770         	bx	lr

// ==== ApplicationInterface::crashCartIsAvailable
//      file offset 0x42c7b8 (= ELF address; Ghidra 0x43c7b8), 6 bytes, Thumb-2
  42c7b8: 2300         	movs	r3, #0x0
  42c7ba: 4618         	mov	r0, r3
  42c7bc: 4770         	bx	lr

// ==== ApplicationInterface::doodleArmyIsAvailable
//      file offset 0x42c7c0 (= ELF address; Ghidra 0x43c7c0), 6 bytes, Thumb-2
  42c7c0: 2301         	movs	r3, #0x1
  42c7c2: 4618         	mov	r0, r3
  42c7c4: 4770         	bx	lr

// ==== ApplicationInterface::doodleArmyBCIsAvailable
//      file offset 0x42c7c8 (= ELF address; Ghidra 0x43c7c8), 6 bytes, Thumb-2
  42c7c8: 2301         	movs	r3, #0x1
  42c7ca: 4618         	mov	r0, r3
  42c7cc: 4770         	bx	lr

// ==== ApplicationInterface::openDeveloperLink
//      file offset 0x42c7d0 (= ELF address; Ghidra 0x43c7d0), 88 bytes, Thumb-2
  42c7d0: b500         	push	{lr}
  42c7d2: b083         	sub	sp, #0xc
  42c7d4: 466b         	mov	r3, sp
  42c7d6: 4618         	mov	r0, r3
  42c7d8: f35d fe0c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35dc18
  42c7dc: aa01         	add	r2, sp, #0x4
  42c7de: 466b         	mov	r3, sp
  42c7e0: 4610         	mov	r0, r2
  42c7e2: 4a10         	ldr	r2, [pc, #0x40]         @ 0x42c824 <ApplicationInterface::openDeveloperLink()+0x54>
  42c7e4: 447a         	add	r2, pc
  42c7e6: 4611         	mov	r1, r2
  42c7e8: 461a         	mov	r2, r3
  42c7ea: f38a f939    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a272
  42c7ee: ab01         	add	r3, sp, #0x4
  42c7f0: 4618         	mov	r0, r3
  42c7f2: f7ff fbf3    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #-0x81a
  42c7f6: ab01         	add	r3, sp, #0x4
  42c7f8: 4618         	mov	r0, r3
  42c7fa: f389 f88b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389116
  42c7fe: 466b         	mov	r3, sp
  42c800: 4618         	mov	r0, r3
  42c802: f35d fdfb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dbf6
  42c806: e00a         	b	0x42c81e <ApplicationInterface::openDeveloperLink()+0x4e> @ imm = #0x14
  42c808: ab01         	add	r3, sp, #0x4
  42c80a: 4618         	mov	r0, r3
  42c80c: f389 f882    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x389104
  42c810: e7ff         	b	0x42c812 <ApplicationInterface::openDeveloperLink()+0x42> @ imm = #-0x2
  42c812: 466b         	mov	r3, sp
  42c814: 4618         	mov	r0, r3
  42c816: f35d fdf1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35dbe2
  42c81a: f35b fc47    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35b88e
  42c81e: b003         	add	sp, #0xc
  42c820: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c823); words below are literal-pool data ---
  42c824: 102c         	asrs	r4, r5, #0x20
  42c826: 003b         	movs	r3, r7

// ==== ApplicationInterface::pickClaimedIdentity
//      file offset 0x42c828 (= ELF address; Ghidra 0x43c828), 92 bytes, Thumb-2
  42c828: b500         	push	{lr}
  42c82a: b085         	sub	sp, #0x14
  42c82c: ab01         	add	r3, sp, #0x4
  42c82e: 4618         	mov	r0, r3
  42c830: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c878 <ApplicationInterface::pickClaimedIdentity()+0x50>
  42c832: 447b         	add	r3, pc
  42c834: 4619         	mov	r1, r3
  42c836: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c87c <ApplicationInterface::pickClaimedIdentity()+0x54>
  42c838: 447b         	add	r3, pc
  42c83a: 461a         	mov	r2, r3
  42c83c: 4b10         	ldr	r3, [pc, #0x40]         @ 0x42c880 <ApplicationInterface::pickClaimedIdentity()+0x58>
  42c83e: 447b         	add	r3, pc
  42c840: f1a5 fc6e    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a58dc
  42c844: 4603         	mov	r3, r0
  42c846: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c84a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c84e: f083 0301    	eor	r3, r3, #0x1
  42c852: b2db         	uxtb	r3, r3
  42c854: 2b00         	cmp	r3, #0x0
  42c856: d10b         	bne	0x42c870 <ApplicationInterface::pickClaimedIdentity()+0x48> @ imm = #0x16
  42c858: 9901         	ldr	r1, [sp, #0x4]
  42c85a: 9a02         	ldr	r2, [sp, #0x8]
  42c85c: 9b03         	ldr	r3, [sp, #0xc]
  42c85e: 4608         	mov	r0, r1
  42c860: 4611         	mov	r1, r2
  42c862: 461a         	mov	r2, r3
  42c864: f7fe fcb0    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x16a0
  42c868: 9b01         	ldr	r3, [sp, #0x4]
  42c86a: 4618         	mov	r0, r3
  42c86c: f1a5 fd1c    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a5a38
  42c870: b005         	add	sp, #0x14
  42c872: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c875); words below are literal-pool data ---
  42c876: bf00         	nop
  42c878: 0e16         	lsrs	r6, r2, #0x18
  42c87a: 003b         	movs	r3, r7
  42c87c: 1034         	asrs	r4, r6, #0x20
  42c87e: 003b         	movs	r3, r7
  42c880: 0e82         	lsrs	r2, r0, #0x1a
  42c882: 003b         	movs	r3, r7

// ==== ApplicationInterface::requiresClaimedIdentity
//      file offset 0x42c884 (= ELF address; Ghidra 0x43c884), 6 bytes, Thumb-2
  42c884: 2301         	movs	r3, #0x1
  42c886: 4618         	mov	r0, r3
  42c888: 4770         	bx	lr

// ==== ApplicationInterface::exit
//      file offset 0x42c88c (= ELF address; Ghidra 0x43c88c), 92 bytes, Thumb-2
  42c88c: b500         	push	{lr}
  42c88e: b085         	sub	sp, #0x14
  42c890: ab01         	add	r3, sp, #0x4
  42c892: 4618         	mov	r0, r3
  42c894: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c8dc <ApplicationInterface::exit()+0x50>
  42c896: 447b         	add	r3, pc
  42c898: 4619         	mov	r1, r3
  42c89a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x42c8e0 <ApplicationInterface::exit()+0x54>
  42c89c: 447b         	add	r3, pc
  42c89e: 461a         	mov	r2, r3
  42c8a0: 4b10         	ldr	r3, [pc, #0x40]         @ 0x42c8e4 <ApplicationInterface::exit()+0x58>
  42c8a2: 447b         	add	r3, pc
  42c8a4: f1a5 fc3c    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a5878
  42c8a8: 4603         	mov	r3, r0
  42c8aa: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c8ae: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c8b2: f083 0301    	eor	r3, r3, #0x1
  42c8b6: b2db         	uxtb	r3, r3
  42c8b8: 2b00         	cmp	r3, #0x0
  42c8ba: d10b         	bne	0x42c8d4 <ApplicationInterface::exit()+0x48> @ imm = #0x16
  42c8bc: 9901         	ldr	r1, [sp, #0x4]
  42c8be: 9a02         	ldr	r2, [sp, #0x8]
  42c8c0: 9b03         	ldr	r3, [sp, #0xc]
  42c8c2: 4608         	mov	r0, r1
  42c8c4: 4611         	mov	r1, r2
  42c8c6: 461a         	mov	r2, r3
  42c8c8: f7fe fc7e    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x1704
  42c8cc: 9b01         	ldr	r3, [sp, #0x4]
  42c8ce: 4618         	mov	r0, r3
  42c8d0: f1a5 fcea    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a59d4
  42c8d4: b005         	add	sp, #0x14
  42c8d6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c8d9); words below are literal-pool data ---
  42c8da: bf00         	nop
  42c8dc: 0db2         	lsrs	r2, r6, #0x16
  42c8de: 003b         	movs	r3, r7
  42c8e0: 0fe0         	lsrs	r0, r4, #0x1f
  42c8e2: 003b         	movs	r3, r7
  42c8e4: 0e1e         	lsrs	r6, r3, #0x18
  42c8e6: 003b         	movs	r3, r7

// ==== ApplicationInterface::setShowNavBar
//      file offset 0x42c8e8 (= ELF address; Ghidra 0x43c8e8), 12 bytes, Thumb-2
  42c8e8: b082         	sub	sp, #0x8
  42c8ea: 4603         	mov	r3, r0
  42c8ec: f88d 3007    	strb.w	r3, [sp, #0x7]
  42c8f0: b002         	add	sp, #0x8
  42c8f2: 4770         	bx	lr

// ==== ApplicationInterface::getOSType
//      file offset 0x42c8f4 (= ELF address; Ghidra 0x43c8f4), 6 bytes, Thumb-2
  42c8f4: 2301         	movs	r3, #0x1
  42c8f6: 4618         	mov	r0, r3
  42c8f8: 4770         	bx	lr

// ==== ApplicationInterface::isGpgsInstalled
//      file offset 0x42c8fc (= ELF address; Ghidra 0x43c8fc), 124 bytes, Thumb-2
  42c8fc: b500         	push	{lr}
  42c8fe: b085         	sub	sp, #0x14
  42c900: ab01         	add	r3, sp, #0x4
  42c902: 4618         	mov	r0, r3
  42c904: 4b19         	ldr	r3, [pc, #0x64]         @ 0x42c96c <ApplicationInterface::isGpgsInstalled()+0x70>
  42c906: 447b         	add	r3, pc
  42c908: 4619         	mov	r1, r3
  42c90a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x42c970 <ApplicationInterface::isGpgsInstalled()+0x74>
  42c90c: 447b         	add	r3, pc
  42c90e: 461a         	mov	r2, r3
  42c910: 4b18         	ldr	r3, [pc, #0x60]         @ 0x42c974 <ApplicationInterface::isGpgsInstalled()+0x78>
  42c912: 447b         	add	r3, pc
  42c914: f1a5 fc04    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a5808
  42c918: 4603         	mov	r3, r0
  42c91a: f88d 3001    	strb.w	r3, [sp, #0x1]
  42c91e: f89d 3001    	ldrb.w	r3, [sp, #0x1]
  42c922: f083 0301    	eor	r3, r3, #0x1
  42c926: b2db         	uxtb	r3, r3
  42c928: 2b00         	cmp	r3, #0x0
  42c92a: d001         	beq	0x42c930 <ApplicationInterface::isGpgsInstalled()+0x34> @ imm = #0x2
  42c92c: 2300         	movs	r3, #0x0
  42c92e: e018         	b	0x42c962 <ApplicationInterface::isGpgsInstalled()+0x66> @ imm = #0x30
  42c930: 9901         	ldr	r1, [sp, #0x4]
  42c932: 9a02         	ldr	r2, [sp, #0x8]
  42c934: 9b03         	ldr	r3, [sp, #0xc]
  42c936: 4608         	mov	r0, r1
  42c938: 4611         	mov	r1, r2
  42c93a: 461a         	mov	r2, r3
  42c93c: f7fe fc28    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x17b0
  42c940: 4603         	mov	r3, r0
  42c942: f88d 3002    	strb.w	r3, [sp, #0x2]
  42c946: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  42c94a: 2b00         	cmp	r3, #0x0
  42c94c: bf0c         	ite	eq
  42c94e: 2300         	moveq	r3, #0x0
  42c950: 2301         	movne	r3, #0x1
  42c952: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c956: 9b01         	ldr	r3, [sp, #0x4]
  42c958: 4618         	mov	r0, r3
  42c95a: f1a5 fca5    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a594a
  42c95e: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c962: 4618         	mov	r0, r3
  42c964: b005         	add	sp, #0x14
  42c966: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c969); words below are literal-pool data ---
  42c96a: bf00         	nop
  42c96c: 0d42         	lsrs	r2, r0, #0x15
  42c96e: 003b         	movs	r3, r7
  42c970: 0f7c         	lsrs	r4, r7, #0x1d
  42c972: 003b         	movs	r3, r7
  42c974: 0f8e         	lsrs	r6, r1, #0x1e
  42c976: 003b         	movs	r3, r7

// ==== ApplicationInterface::isGpgsReady
//      file offset 0x42c978 (= ELF address; Ghidra 0x43c978), 124 bytes, Thumb-2
  42c978: b500         	push	{lr}
  42c97a: b085         	sub	sp, #0x14
  42c97c: ab01         	add	r3, sp, #0x4
  42c97e: 4618         	mov	r0, r3
  42c980: 4b19         	ldr	r3, [pc, #0x64]         @ 0x42c9e8 <ApplicationInterface::isGpgsReady()+0x70>
  42c982: 447b         	add	r3, pc
  42c984: 4619         	mov	r1, r3
  42c986: 4b19         	ldr	r3, [pc, #0x64]         @ 0x42c9ec <ApplicationInterface::isGpgsReady()+0x74>
  42c988: 447b         	add	r3, pc
  42c98a: 461a         	mov	r2, r3
  42c98c: 4b18         	ldr	r3, [pc, #0x60]         @ 0x42c9f0 <ApplicationInterface::isGpgsReady()+0x78>
  42c98e: 447b         	add	r3, pc
  42c990: f1a5 fbc6    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a578c
  42c994: 4603         	mov	r3, r0
  42c996: f88d 3001    	strb.w	r3, [sp, #0x1]
  42c99a: f89d 3001    	ldrb.w	r3, [sp, #0x1]
  42c99e: f083 0301    	eor	r3, r3, #0x1
  42c9a2: b2db         	uxtb	r3, r3
  42c9a4: 2b00         	cmp	r3, #0x0
  42c9a6: d001         	beq	0x42c9ac <ApplicationInterface::isGpgsReady()+0x34> @ imm = #0x2
  42c9a8: 2300         	movs	r3, #0x0
  42c9aa: e018         	b	0x42c9de <ApplicationInterface::isGpgsReady()+0x66> @ imm = #0x30
  42c9ac: 9901         	ldr	r1, [sp, #0x4]
  42c9ae: 9a02         	ldr	r2, [sp, #0x8]
  42c9b0: 9b03         	ldr	r3, [sp, #0xc]
  42c9b2: 4608         	mov	r0, r1
  42c9b4: 4611         	mov	r1, r2
  42c9b6: 461a         	mov	r2, r3
  42c9b8: f7fe fbea    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x182c
  42c9bc: 4603         	mov	r3, r0
  42c9be: f88d 3002    	strb.w	r3, [sp, #0x2]
  42c9c2: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  42c9c6: 2b00         	cmp	r3, #0x0
  42c9c8: bf0c         	ite	eq
  42c9ca: 2300         	moveq	r3, #0x0
  42c9cc: 2301         	movne	r3, #0x1
  42c9ce: f88d 3003    	strb.w	r3, [sp, #0x3]
  42c9d2: 9b01         	ldr	r3, [sp, #0x4]
  42c9d4: 4618         	mov	r0, r3
  42c9d6: f1a5 fc67    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a58ce
  42c9da: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42c9de: 4618         	mov	r0, r3
  42c9e0: b005         	add	sp, #0x14
  42c9e2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42c9e5); words below are literal-pool data ---
  42c9e6: bf00         	nop
  42c9e8: 0cc6         	lsrs	r6, r0, #0x13
  42c9ea: 003b         	movs	r3, r7
  42c9ec: 0f1c         	lsrs	r4, r3, #0x1c
  42c9ee: 003b         	movs	r3, r7
  42c9f0: 0f12         	lsrs	r2, r2, #0x1c
  42c9f2: 003b         	movs	r3, r7

// ==== ApplicationInterface::getEncodedPlatformSpecificDiagnosticMessageBody
//      file offset 0x42c9f4 (= ELF address; Ghidra 0x43c9f4), 22 bytes, Thumb-2
  42c9f4: b500         	push	{lr}
  42c9f6: b083         	sub	sp, #0xc
  42c9f8: 9001         	str	r0, [sp, #0x4]
  42c9fa: 9801         	ldr	r0, [sp, #0x4]
  42c9fc: f388 fbd8    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3887b0
  42ca00: bf00         	nop
  42ca02: 9801         	ldr	r0, [sp, #0x4]
  42ca04: b003         	add	sp, #0xc
  42ca06: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationInterface::isVideoRecordingAvaliable
//      file offset 0x42ca0c (= ELF address; Ghidra 0x43ca0c), 252 bytes, Thumb-2
  42ca0c: b500         	push	{lr}
  42ca0e: b089         	sub	sp, #0x24
  42ca10: ab03         	add	r3, sp, #0xc
  42ca12: 4618         	mov	r0, r3
  42ca14: f35d fcee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35d9dc
  42ca18: aa06         	add	r2, sp, #0x18
  42ca1a: ab03         	add	r3, sp, #0xc
  42ca1c: 4610         	mov	r0, r2
  42ca1e: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x42cafc <ApplicationInterface::isVideoRecordingAvaliable()+0xf0>
  42ca20: 447a         	add	r2, pc
  42ca22: 4611         	mov	r1, r2
  42ca24: 461a         	mov	r2, r3
  42ca26: f38a f81b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a036
  42ca2a: ab04         	add	r3, sp, #0x10
  42ca2c: 4618         	mov	r0, r3
  42ca2e: f35d fce1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35d9c2
  42ca32: aa07         	add	r2, sp, #0x1c
  42ca34: ab04         	add	r3, sp, #0x10
  42ca36: 4610         	mov	r0, r2
  42ca38: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x42cb00 <ApplicationInterface::isVideoRecordingAvaliable()+0xf4>
  42ca3a: 447a         	add	r2, pc
  42ca3c: 4611         	mov	r1, r2
  42ca3e: 461a         	mov	r2, r3
  42ca40: f38a f80e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a01c
  42ca44: ab02         	add	r3, sp, #0x8
  42ca46: 4618         	mov	r0, r3
  42ca48: f35d fcd4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x35d9a8
  42ca4c: aa05         	add	r2, sp, #0x14
  42ca4e: ab02         	add	r3, sp, #0x8
  42ca50: 4610         	mov	r0, r2
  42ca52: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x42cb04 <ApplicationInterface::isVideoRecordingAvaliable()+0xf8>
  42ca54: 447a         	add	r2, pc
  42ca56: 4611         	mov	r1, r2
  42ca58: 461a         	mov	r2, r3
  42ca5a: f38a f801    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x38a002
  42ca5e: ab05         	add	r3, sp, #0x14
  42ca60: 4618         	mov	r0, r3
  42ca62: f16c ffeb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x16cfd6
  42ca66: 4603         	mov	r3, r0
  42ca68: 4618         	mov	r0, r3
  42ca6a: 2100         	movs	r1, #0x0
  42ca6c: f16d f9d0    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x16d3a0
  42ca70: 4603         	mov	r3, r0
  42ca72: a906         	add	r1, sp, #0x18
  42ca74: aa07         	add	r2, sp, #0x1c
  42ca76: 2000         	movs	r0, #0x0
  42ca78: 9000         	str	r0, [sp]
  42ca7a: 2000         	movs	r0, #0x0
  42ca7c: 9001         	str	r0, [sp, #0x4]
  42ca7e: 2000         	movs	r0, #0x0
  42ca80: f6b2 feb8    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x14d290
  42ca84: ab05         	add	r3, sp, #0x14
  42ca86: 4618         	mov	r0, r3
  42ca88: f388 ff44    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x388e88
  42ca8c: ab02         	add	r3, sp, #0x8
  42ca8e: 4618         	mov	r0, r3
  42ca90: f35d fcb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35d968
  42ca94: ab07         	add	r3, sp, #0x1c
  42ca96: 4618         	mov	r0, r3
  42ca98: f388 ff3c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x388e78
  42ca9c: ab04         	add	r3, sp, #0x10
  42ca9e: 4618         	mov	r0, r3
  42caa0: f35d fcac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35d958
  42caa4: ab06         	add	r3, sp, #0x18
  42caa6: 4618         	mov	r0, r3
  42caa8: f388 ff34    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x388e68
  42caac: ab03         	add	r3, sp, #0xc
  42caae: 4618         	mov	r0, r3
  42cab0: f35d fca4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35d948
  42cab4: 2300         	movs	r3, #0x0
  42cab6: e01c         	b	0x42caf2 <ApplicationInterface::isVideoRecordingAvaliable()+0xe6> @ imm = #0x38
  42cab8: ab05         	add	r3, sp, #0x14
  42caba: 4618         	mov	r0, r3
  42cabc: f388 ff2a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x388e54
  42cac0: e7ff         	b	0x42cac2 <ApplicationInterface::isVideoRecordingAvaliable()+0xb6> @ imm = #-0x2
  42cac2: ab02         	add	r3, sp, #0x8
  42cac4: 4618         	mov	r0, r3
  42cac6: f35d fc99    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35d932
  42caca: ab07         	add	r3, sp, #0x1c
  42cacc: 4618         	mov	r0, r3
  42cace: f388 ff21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x388e42
  42cad2: e7ff         	b	0x42cad4 <ApplicationInterface::isVideoRecordingAvaliable()+0xc8> @ imm = #-0x2
  42cad4: ab04         	add	r3, sp, #0x10
  42cad6: 4618         	mov	r0, r3
  42cad8: f35d fc90    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35d920
  42cadc: ab06         	add	r3, sp, #0x18
  42cade: 4618         	mov	r0, r3
  42cae0: f388 ff18    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x388e30
  42cae4: e7ff         	b	0x42cae6 <ApplicationInterface::isVideoRecordingAvaliable()+0xda> @ imm = #-0x2
  42cae6: ab03         	add	r3, sp, #0xc
  42cae8: 4618         	mov	r0, r3
  42caea: f35d fc87    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x35d90e
  42caee: f35b fadd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35b5ba
  42caf2: 4618         	mov	r0, r3
  42caf4: b009         	add	sp, #0x24
  42caf6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42caf9); words below are literal-pool data ---
  42cafa: bf00         	nop
  42cafc: 0e90         	lsrs	r0, r2, #0x1a
  42cafe: 003b         	movs	r3, r7
  42cb00: 0e96         	lsrs	r6, r2, #0x1a
  42cb02: 003b         	movs	r3, r7
  42cb04: 0ed0         	lsrs	r0, r2, #0x1b
  42cb06: 003b         	movs	r3, r7

// ==== ApplicationInterface::initVideoRecordingForPlatform
//      file offset 0x42cb10 (= ELF address; Ghidra 0x43cb10), 2 bytes, Thumb-2
  42cb10: 4770         	bx	lr

// ==== ApplicationInterface::enableBlueToothMonitor
//      file offset 0x42cb14 (= ELF address; Ghidra 0x43cb14), 2 bytes, Thumb-2
  42cb14: 4770         	bx	lr

// ==== ApplicationInterface::isBlueToothEnabled
//      file offset 0x42cb18 (= ELF address; Ghidra 0x43cb18), 6 bytes, Thumb-2
  42cb18: 2300         	movs	r3, #0x0
  42cb1a: 4618         	mov	r0, r3
  42cb1c: 4770         	bx	lr

// ==== ApplicationInterface::initGPGS
//      file offset 0x42cb20 (= ELF address; Ghidra 0x43cb20), 136 bytes, Thumb-2
  42cb20: b500         	push	{lr}
  42cb22: b085         	sub	sp, #0x14
  42cb24: f705 ffc0    	bl	0x332aa8 <GPGSStateManager::isServiceInitialized()> @ imm = #-0xfa080
  42cb28: 4603         	mov	r3, r0
  42cb2a: 2b00         	cmp	r3, #0x0
  42cb2c: d001         	beq	0x42cb32 <ApplicationInterface::initGPGS()+0x12> @ imm = #0x2
  42cb2e: 2301         	movs	r3, #0x1
  42cb30: e030         	b	0x42cb94 <ApplicationInterface::initGPGS()+0x74> @ imm = #0x60
  42cb32: ab01         	add	r3, sp, #0x4
  42cb34: 4618         	mov	r0, r3
  42cb36: 4b19         	ldr	r3, [pc, #0x64]         @ 0x42cb9c <ApplicationInterface::initGPGS()+0x7c>
  42cb38: 447b         	add	r3, pc
  42cb3a: 4619         	mov	r1, r3
  42cb3c: 4b18         	ldr	r3, [pc, #0x60]         @ 0x42cba0 <ApplicationInterface::initGPGS()+0x80>
  42cb3e: 447b         	add	r3, pc
  42cb40: 461a         	mov	r2, r3
  42cb42: 4b18         	ldr	r3, [pc, #0x60]         @ 0x42cba4 <ApplicationInterface::initGPGS()+0x84>
  42cb44: 447b         	add	r3, pc
  42cb46: f1a5 faeb    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a55d6
  42cb4a: 4603         	mov	r3, r0
  42cb4c: f88d 3001    	strb.w	r3, [sp, #0x1]
  42cb50: f89d 3001    	ldrb.w	r3, [sp, #0x1]
  42cb54: f083 0301    	eor	r3, r3, #0x1
  42cb58: b2db         	uxtb	r3, r3
  42cb5a: 2b00         	cmp	r3, #0x0
  42cb5c: d001         	beq	0x42cb62 <ApplicationInterface::initGPGS()+0x42> @ imm = #0x2
  42cb5e: 2300         	movs	r3, #0x0
  42cb60: e018         	b	0x42cb94 <ApplicationInterface::initGPGS()+0x74> @ imm = #0x30
  42cb62: 9901         	ldr	r1, [sp, #0x4]
  42cb64: 9a02         	ldr	r2, [sp, #0x8]
  42cb66: 9b03         	ldr	r3, [sp, #0xc]
  42cb68: 4608         	mov	r0, r1
  42cb6a: 4611         	mov	r1, r2
  42cb6c: 461a         	mov	r2, r3
  42cb6e: f7fe fb0f    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x19e2
  42cb72: 4603         	mov	r3, r0
  42cb74: f88d 3002    	strb.w	r3, [sp, #0x2]
  42cb78: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  42cb7c: 2b00         	cmp	r3, #0x0
  42cb7e: bf0c         	ite	eq
  42cb80: 2300         	moveq	r3, #0x0
  42cb82: 2301         	movne	r3, #0x1
  42cb84: f88d 3003    	strb.w	r3, [sp, #0x3]
  42cb88: 9b01         	ldr	r3, [sp, #0x4]
  42cb8a: 4618         	mov	r0, r3
  42cb8c: f1a5 fb8c    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a5718
  42cb90: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  42cb94: 4618         	mov	r0, r3
  42cb96: b005         	add	sp, #0x14
  42cb98: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x42cb9b); words below are literal-pool data ---
  42cb9c: 0b10         	lsrs	r0, r2, #0xc
  42cb9e: 003b         	movs	r3, r7
  42cba0: 0dea         	lsrs	r2, r5, #0x17
  42cba2: 003b         	movs	r3, r7
  42cba4: 0d5c         	lsrs	r4, r3, #0x15
  42cba6: 003b         	movs	r3, r7
