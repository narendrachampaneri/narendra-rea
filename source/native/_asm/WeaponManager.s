// WeaponManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 28 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../WeaponManager.cpp

// ==== WeaponManager::WeaponManager
//      file offset 0x419b24 (= ELF address; Ghidra 0x429b24), 64 bytes, Thumb-2
  419b24: b510         	push	{r4, lr}
  419b26: b082         	sub	sp, #0x8
  419b28: 9001         	str	r0, [sp, #0x4]
  419b2a: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x419b5c <WeaponManager::WeaponManager()+0x38>
  419b2c: 447c         	add	r4, pc
  419b2e: 9b01         	ldr	r3, [sp, #0x4]
  419b30: 4618         	mov	r0, r3
  419b32: f17e f91b    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x17e236
  419b36: 9b01         	ldr	r3, [sp, #0x4]
  419b38: 4a09         	ldr	r2, [pc, #0x24]         @ 0x419b60 <WeaponManager::WeaponManager()+0x3c>
  419b3a: 58a2         	ldr	r2, [r4, r2]
  419b3c: 3208         	adds	r2, #0x8
  419b3e: 601a         	str	r2, [r3]
  419b40: 9801         	ldr	r0, [sp, #0x4]
  419b42: f000 f80f    	bl	0x419b64 <WeaponManager::init()> @ imm = #0x1e
  419b46: 9b01         	ldr	r3, [sp, #0x4]
  419b48: e005         	b	0x419b56 <WeaponManager::WeaponManager()+0x32> @ imm = #0xa
  419b4a: 9b01         	ldr	r3, [sp, #0x4]
  419b4c: 4618         	mov	r0, r3
  419b4e: f17e f93f    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x17e27e
  419b52: f36e faab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36e556
  419b56: 4618         	mov	r0, r3
  419b58: b002         	add	sp, #0x8
  419b5a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x419b5b); words below are literal-pool data ---
  419b5c: 8edc         	ldrh	r4, [r3, #0x36]
  419b5e: 0051         	lsls	r1, r2, #0x1
  419b60: dfac         	svc	#0xac
  419b62: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== WeaponManager::init
//      file offset 0x419b64 (= ELF address; Ghidra 0x429b64), 744 bytes, Thumb-2
  419b64: b510         	push	{r4, lr}
  419b66: b09a         	sub	sp, #0x68
  419b68: 9003         	str	r0, [sp, #0xc]
  419b6a: 4ca4         	ldr	r4, [pc, #0x290]        @ 0x419dfc <WeaponManager::init()+0x298>
  419b6c: 447c         	add	r4, pc
  419b6e: 9b03         	ldr	r3, [sp, #0xc]
  419b70: 2200         	movs	r2, #0x0
  419b72: 61da         	str	r2, [r3, #0x1c]
  419b74: 9b03         	ldr	r3, [sp, #0xc]
  419b76: 2200         	movs	r2, #0x0
  419b78: 621a         	str	r2, [r3, #0x20]
  419b7a: 9b03         	ldr	r3, [sp, #0xc]
  419b7c: 2200         	movs	r2, #0x0
  419b7e: 625a         	str	r2, [r3, #0x24]
  419b80: 9b03         	ldr	r3, [sp, #0xc]
  419b82: 2200         	movs	r2, #0x0
  419b84: 629a         	str	r2, [r3, #0x28]
  419b86: 9b03         	ldr	r3, [sp, #0xc]
  419b88: f04f 0200    	mov.w	r2, #0x0
  419b8c: 631a         	str	r2, [r3, #0x30]
  419b8e: 9b03         	ldr	r3, [sp, #0xc]
  419b90: f04f 0200    	mov.w	r2, #0x0
  419b94: 635a         	str	r2, [r3, #0x34]
  419b96: 9b03         	ldr	r3, [sp, #0xc]
  419b98: 220a         	movs	r2, #0xa
  419b9a: 639a         	str	r2, [r3, #0x38]
  419b9c: 9b03         	ldr	r3, [sp, #0xc]
  419b9e: 220f         	movs	r2, #0xf
  419ba0: 63da         	str	r2, [r3, #0x3c]
  419ba2: 9b03         	ldr	r3, [sp, #0xc]
  419ba4: 220f         	movs	r2, #0xf
  419ba6: 641a         	str	r2, [r3, #0x40]
  419ba8: 9b03         	ldr	r3, [sp, #0xc]
  419baa: 2201         	movs	r2, #0x1
  419bac: f883 2044    	strb.w	r2, [r3, #0x44]
  419bb0: 9b03         	ldr	r3, [sp, #0xc]
  419bb2: 2201         	movs	r2, #0x1
  419bb4: f883 2045    	strb.w	r2, [r3, #0x45]
  419bb8: f1c6 fd7a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6af4
  419bbc: 4602         	mov	r2, r0
  419bbe: 9b03         	ldr	r3, [sp, #0xc]
  419bc0: 498f         	ldr	r1, [pc, #0x23c]        @ 0x419e00 <WeaponManager::init()+0x29c>
  419bc2: 5861         	ldr	r1, [r4, r1]
  419bc4: 910a         	str	r1, [sp, #0x28]
  419bc6: 2100         	movs	r1, #0x0
  419bc8: 910b         	str	r1, [sp, #0x2c]
  419bca: 498e         	ldr	r1, [pc, #0x238]        @ 0x419e04 <WeaponManager::init()+0x2a0>
  419bcc: 4479         	add	r1, pc
  419bce: 9100         	str	r1, [sp]
  419bd0: 2100         	movs	r1, #0x0
  419bd2: 9101         	str	r1, [sp, #0x4]
  419bd4: 4610         	mov	r0, r2
  419bd6: 4619         	mov	r1, r3
  419bd8: ab0a         	add	r3, sp, #0x28
  419bda: cb0c         	ldm	r3, {r2, r3}
  419bdc: f1c6 fe04    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6c08
  419be0: f1c6 fd66    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6acc
  419be4: 4602         	mov	r2, r0
  419be6: 9b03         	ldr	r3, [sp, #0xc]
  419be8: 4987         	ldr	r1, [pc, #0x21c]        @ 0x419e08 <WeaponManager::init()+0x2a4>
  419bea: 5861         	ldr	r1, [r4, r1]
  419bec: 910c         	str	r1, [sp, #0x30]
  419bee: 2100         	movs	r1, #0x0
  419bf0: 910d         	str	r1, [sp, #0x34]
  419bf2: 4986         	ldr	r1, [pc, #0x218]        @ 0x419e0c <WeaponManager::init()+0x2a8>
  419bf4: 4479         	add	r1, pc
  419bf6: 9100         	str	r1, [sp]
  419bf8: 2100         	movs	r1, #0x0
  419bfa: 9101         	str	r1, [sp, #0x4]
  419bfc: 4610         	mov	r0, r2
  419bfe: 4619         	mov	r1, r3
  419c00: ab0c         	add	r3, sp, #0x30
  419c02: cb0c         	ldm	r3, {r2, r3}
  419c04: f1c6 fdf0    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6be0
  419c08: f1c6 fd52    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6aa4
  419c0c: 4602         	mov	r2, r0
  419c0e: 9b03         	ldr	r3, [sp, #0xc]
  419c10: 497f         	ldr	r1, [pc, #0x1fc]        @ 0x419e10 <WeaponManager::init()+0x2ac>
  419c12: 5861         	ldr	r1, [r4, r1]
  419c14: 910e         	str	r1, [sp, #0x38]
  419c16: 2100         	movs	r1, #0x0
  419c18: 910f         	str	r1, [sp, #0x3c]
  419c1a: 497e         	ldr	r1, [pc, #0x1f8]        @ 0x419e14 <WeaponManager::init()+0x2b0>
  419c1c: 4479         	add	r1, pc
  419c1e: 9100         	str	r1, [sp]
  419c20: 2100         	movs	r1, #0x0
  419c22: 9101         	str	r1, [sp, #0x4]
  419c24: 4610         	mov	r0, r2
  419c26: 4619         	mov	r1, r3
  419c28: ab0e         	add	r3, sp, #0x38
  419c2a: cb0c         	ldm	r3, {r2, r3}
  419c2c: f1c6 fddc    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6bb8
  419c30: f1c6 fd3e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6a7c
  419c34: 4602         	mov	r2, r0
  419c36: 9b03         	ldr	r3, [sp, #0xc]
  419c38: 4977         	ldr	r1, [pc, #0x1dc]        @ 0x419e18 <WeaponManager::init()+0x2b4>
  419c3a: 5861         	ldr	r1, [r4, r1]
  419c3c: 9110         	str	r1, [sp, #0x40]
  419c3e: 2100         	movs	r1, #0x0
  419c40: 9111         	str	r1, [sp, #0x44]
  419c42: 4976         	ldr	r1, [pc, #0x1d8]        @ 0x419e1c <WeaponManager::init()+0x2b8>
  419c44: 4479         	add	r1, pc
  419c46: 9100         	str	r1, [sp]
  419c48: 2100         	movs	r1, #0x0
  419c4a: 9101         	str	r1, [sp, #0x4]
  419c4c: 4610         	mov	r0, r2
  419c4e: 4619         	mov	r1, r3
  419c50: ab10         	add	r3, sp, #0x40
  419c52: cb0c         	ldm	r3, {r2, r3}
  419c54: f1c6 fdc8    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6b90
  419c58: f1c6 fd2a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6a54
  419c5c: 4602         	mov	r2, r0
  419c5e: 9b03         	ldr	r3, [sp, #0xc]
  419c60: 496f         	ldr	r1, [pc, #0x1bc]        @ 0x419e20 <WeaponManager::init()+0x2bc>
  419c62: 5861         	ldr	r1, [r4, r1]
  419c64: 9112         	str	r1, [sp, #0x48]
  419c66: 2100         	movs	r1, #0x0
  419c68: 9113         	str	r1, [sp, #0x4c]
  419c6a: 496e         	ldr	r1, [pc, #0x1b8]        @ 0x419e24 <WeaponManager::init()+0x2c0>
  419c6c: 4479         	add	r1, pc
  419c6e: 9100         	str	r1, [sp]
  419c70: 2100         	movs	r1, #0x0
  419c72: 9101         	str	r1, [sp, #0x4]
  419c74: 4610         	mov	r0, r2
  419c76: 4619         	mov	r1, r3
  419c78: ab12         	add	r3, sp, #0x48
  419c7a: cb0c         	ldm	r3, {r2, r3}
  419c7c: f1c6 fdb4    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6b68
  419c80: f1c6 fd16    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6a2c
  419c84: 4602         	mov	r2, r0
  419c86: 9b03         	ldr	r3, [sp, #0xc]
  419c88: 4967         	ldr	r1, [pc, #0x19c]        @ 0x419e28 <WeaponManager::init()+0x2c4>
  419c8a: 5861         	ldr	r1, [r4, r1]
  419c8c: 9114         	str	r1, [sp, #0x50]
  419c8e: 2100         	movs	r1, #0x0
  419c90: 9115         	str	r1, [sp, #0x54]
  419c92: 4966         	ldr	r1, [pc, #0x198]        @ 0x419e2c <WeaponManager::init()+0x2c8>
  419c94: 4479         	add	r1, pc
  419c96: 9100         	str	r1, [sp]
  419c98: 2100         	movs	r1, #0x0
  419c9a: 9101         	str	r1, [sp, #0x4]
  419c9c: 4610         	mov	r0, r2
  419c9e: 4619         	mov	r1, r3
  419ca0: ab14         	add	r3, sp, #0x50
  419ca2: cb0c         	ldm	r3, {r2, r3}
  419ca4: f1c6 fda0    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6b40
  419ca8: f1c6 fd02    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c6a04
  419cac: 4602         	mov	r2, r0
  419cae: 9b03         	ldr	r3, [sp, #0xc]
  419cb0: 495f         	ldr	r1, [pc, #0x17c]        @ 0x419e30 <WeaponManager::init()+0x2cc>
  419cb2: 5861         	ldr	r1, [r4, r1]
  419cb4: 9116         	str	r1, [sp, #0x58]
  419cb6: 2100         	movs	r1, #0x0
  419cb8: 9117         	str	r1, [sp, #0x5c]
  419cba: 495e         	ldr	r1, [pc, #0x178]        @ 0x419e34 <WeaponManager::init()+0x2d0>
  419cbc: 4479         	add	r1, pc
  419cbe: 9100         	str	r1, [sp]
  419cc0: 2100         	movs	r1, #0x0
  419cc2: 9101         	str	r1, [sp, #0x4]
  419cc4: 4610         	mov	r0, r2
  419cc6: 4619         	mov	r1, r3
  419cc8: ab16         	add	r3, sp, #0x58
  419cca: cb0c         	ldm	r3, {r2, r3}
  419ccc: f1c6 fd8c    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6b18
  419cd0: f1c6 fcee    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c69dc
  419cd4: 4602         	mov	r2, r0
  419cd6: 9b03         	ldr	r3, [sp, #0xc]
  419cd8: 4957         	ldr	r1, [pc, #0x15c]        @ 0x419e38 <WeaponManager::init()+0x2d4>
  419cda: 5861         	ldr	r1, [r4, r1]
  419cdc: 9118         	str	r1, [sp, #0x60]
  419cde: 2100         	movs	r1, #0x0
  419ce0: 9119         	str	r1, [sp, #0x64]
  419ce2: 4956         	ldr	r1, [pc, #0x158]        @ 0x419e3c <WeaponManager::init()+0x2d8>
  419ce4: 4479         	add	r1, pc
  419ce6: 9100         	str	r1, [sp]
  419ce8: 2100         	movs	r1, #0x0
  419cea: 9101         	str	r1, [sp, #0x4]
  419cec: 4610         	mov	r0, r2
  419cee: 4619         	mov	r1, r3
  419cf0: ab18         	add	r3, sp, #0x60
  419cf2: cb0c         	ldm	r3, {r2, r3}
  419cf4: f1c6 fd78    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1c6af0
  419cf8: f17d fb5a    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x17d6b4
  419cfc: 4603         	mov	r3, r0
  419cfe: 461a         	mov	r2, r3
  419d00: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x419e40 <WeaponManager::init()+0x2dc>
  419d02: 58e3         	ldr	r3, [r4, r3]
  419d04: 601a         	str	r2, [r3]
  419d06: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x419e40 <WeaponManager::init()+0x2dc>
  419d08: 58e3         	ldr	r3, [r4, r3]
  419d0a: 681b         	ldr	r3, [r3]
  419d0c: 4618         	mov	r0, r3
  419d0e: f17e f8eb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17e1d6
  419d12: f17d fb4d    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x17d69a
  419d16: 4602         	mov	r2, r0
  419d18: 9b03         	ldr	r3, [sp, #0xc]
  419d1a: 615a         	str	r2, [r3, #0x14]
  419d1c: 9b03         	ldr	r3, [sp, #0xc]
  419d1e: 695b         	ldr	r3, [r3, #0x14]
  419d20: 4618         	mov	r0, r3
  419d22: f17e f8e1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17e1c2
  419d26: f17d fb43    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x17d686
  419d2a: 4602         	mov	r2, r0
  419d2c: 9b03         	ldr	r3, [sp, #0xc]
  419d2e: 619a         	str	r2, [r3, #0x18]
  419d30: 9b03         	ldr	r3, [sp, #0xc]
  419d32: 699b         	ldr	r3, [r3, #0x18]
  419d34: 4618         	mov	r0, r3
  419d36: f17e f8d7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17e1ae
  419d3a: 9b03         	ldr	r3, [sp, #0xc]
  419d3c: 2200         	movs	r2, #0x0
  419d3e: f883 202c    	strb.w	r2, [r3, #0x2c]
  419d42: 4b40         	ldr	r3, [pc, #0x100]        @ 0x419e44 <WeaponManager::init()+0x2e0>
  419d44: 58e3         	ldr	r3, [r4, r3]
  419d46: 681c         	ldr	r4, [r3]
  419d48: ab04         	add	r3, sp, #0x10
  419d4a: 4618         	mov	r0, r3
  419d4c: f370 fb52    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3706a4
  419d50: aa05         	add	r2, sp, #0x14
  419d52: ab04         	add	r3, sp, #0x10
  419d54: 4610         	mov	r0, r2
  419d56: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x419e48 <WeaponManager::init()+0x2e4>
  419d58: 447a         	add	r2, pc
  419d5a: 4611         	mov	r1, r2
  419d5c: 461a         	mov	r2, r3
  419d5e: f39c fe7f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ccfe
  419d62: ab05         	add	r3, sp, #0x14
  419d64: 4620         	mov	r0, r4
  419d66: 4619         	mov	r1, r3
  419d68: f74b fb6e    	bl	0x365448 <MapManager::objectsNamed(std::string)> @ imm = #-0xb4924
  419d6c: 4603         	mov	r3, r0
  419d6e: 9307         	str	r3, [sp, #0x1c]
  419d70: ab05         	add	r3, sp, #0x14
  419d72: 4618         	mov	r0, r3
  419d74: f39b fdce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39bb9c
  419d78: ab04         	add	r3, sp, #0x10
  419d7a: 4618         	mov	r0, r3
  419d7c: f370 fb3e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37067c
  419d80: f17f ffd8    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x17ffb0
  419d84: 4602         	mov	r2, r0
  419d86: 9b03         	ldr	r3, [sp, #0xc]
  419d88: 649a         	str	r2, [r3, #0x48]
  419d8a: 9b03         	ldr	r3, [sp, #0xc]
  419d8c: 6c9b         	ldr	r3, [r3, #0x48]
  419d8e: 4618         	mov	r0, r3
  419d90: f17e f8aa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17e154
  419d94: 2300         	movs	r3, #0x0
  419d96: 9306         	str	r3, [sp, #0x18]
  419d98: e014         	b	0x419dc4 <WeaponManager::init()+0x260> @ imm = #0x28
  419d9a: 9b06         	ldr	r3, [sp, #0x18]
  419d9c: 9807         	ldr	r0, [sp, #0x1c]
  419d9e: 4619         	mov	r1, r3
  419da0: f180 f9be    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x18037c
  419da4: 4603         	mov	r3, r0
  419da6: 9308         	str	r3, [sp, #0x20]
  419da8: 9808         	ldr	r0, [sp, #0x20]
  419daa: f17d fb1d    	bl	0x5973e8 <cocos2d::CCDictionary::createWithDictionary(cocos2d::CCDictionary*)> @ imm = #0x17d63a
  419dae: 4603         	mov	r3, r0
  419db0: 9309         	str	r3, [sp, #0x24]
  419db2: 9b03         	ldr	r3, [sp, #0xc]
  419db4: 6c9b         	ldr	r3, [r3, #0x48]
  419db6: 4618         	mov	r0, r3
  419db8: 9909         	ldr	r1, [sp, #0x24]
  419dba: f180 fa57    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1804ae
  419dbe: 9b06         	ldr	r3, [sp, #0x18]
  419dc0: 3301         	adds	r3, #0x1
  419dc2: 9306         	str	r3, [sp, #0x18]
  419dc4: 9c06         	ldr	r4, [sp, #0x18]
  419dc6: 9807         	ldr	r0, [sp, #0x1c]
  419dc8: f180 f98a    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x180314
  419dcc: 4603         	mov	r3, r0
  419dce: 429c         	cmp	r4, r3
  419dd0: bf2c         	ite	hs
  419dd2: 2300         	movhs	r3, #0x0
  419dd4: 2301         	movlo	r3, #0x1
  419dd6: b2db         	uxtb	r3, r3
  419dd8: 2b00         	cmp	r3, #0x0
  419dda: d1de         	bne	0x419d9a <WeaponManager::init()+0x236> @ imm = #-0x44
  419ddc: 2301         	movs	r3, #0x1
  419dde: e00a         	b	0x419df6 <WeaponManager::init()+0x292> @ imm = #0x14
  419de0: ab05         	add	r3, sp, #0x14
  419de2: 4618         	mov	r0, r3
  419de4: f39b fd96    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39bb2c
  419de8: e7ff         	b	0x419dea <WeaponManager::init()+0x286> @ imm = #-0x2
  419dea: ab04         	add	r3, sp, #0x10
  419dec: 4618         	mov	r0, r3
  419dee: f370 fb05    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37060a
  419df2: f36e f95b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36e2b6
  419df6: 4618         	mov	r0, r3
  419df8: b01a         	add	sp, #0x68
  419dfa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x419dfb); words below are literal-pool data ---
  419dfc: 8e9c         	ldrh	r4, [r3, #0x34]
  419dfe: 0051         	lsls	r1, r2, #0x1
  419e00: dfb0         	svc	#0xb0
  419e02: ffff 1d48    	<unknown>
  419e06: 003c         	movs	r4, r7
  419e08: dfb4         	svc	#0xb4
  419e0a: ffff 1d30    	<unknown>
  419e0e: 003c         	movs	r4, r7
  419e10: dfb8         	svc	#0xb8
  419e12: ffff 1d18    	<unknown>
  419e16: 003c         	movs	r4, r7
  419e18: dfbc         	svc	#0xbc
  419e1a: ffff 1d04    	<unknown>
  419e1e: 003c         	movs	r4, r7
  419e20: dfc0         	svc	#0xc0
  419e22: ffff 1cf0    	<unknown>
  419e26: 003c         	movs	r4, r7
  419e28: dfc4         	svc	#0xc4
  419e2a: ffff 1cd8    	<unknown>
  419e2e: 003c         	movs	r4, r7
  419e30: dfc8         	svc	#0xc8
  419e32: ffff 1cc4    	<unknown>
  419e36: 003c         	movs	r4, r7
  419e38: dfcc         	svc	#0xcc
  419e3a: ffff 1cb0    	<unknown>
  419e3e: 003c         	movs	r4, r7
  419e40: dcec         	bgt	0x419e1c <WeaponManager::init()+0x2b8> @ imm = #-0x28
  419e42: ffff df04    	<unknown>
  419e46: ffff 1c50    	<unknown>
  419e4a: 003c         	movs	r4, r7

// ==== WeaponManager::~WeaponManager
//      file offset 0x419e4c (= ELF address; Ghidra 0x429e4c), 120 bytes, Thumb-2
  419e4c: b510         	push	{r4, lr}
  419e4e: b082         	sub	sp, #0x8
  419e50: 9001         	str	r0, [sp, #0x4]
  419e52: 4c19         	ldr	r4, [pc, #0x64]         @ 0x419eb8 <WeaponManager::~WeaponManager()+0x6c>
  419e54: 447c         	add	r4, pc
  419e56: 9b01         	ldr	r3, [sp, #0x4]
  419e58: 4a18         	ldr	r2, [pc, #0x60]         @ 0x419ebc <WeaponManager::~WeaponManager()+0x70>
  419e5a: 58a2         	ldr	r2, [r4, r2]
  419e5c: 3208         	adds	r2, #0x8
  419e5e: 601a         	str	r2, [r3]
  419e60: f1c6 fc26    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c684c
  419e64: 4602         	mov	r2, r0
  419e66: 9b01         	ldr	r3, [sp, #0x4]
  419e68: 4610         	mov	r0, r2
  419e6a: 4619         	mov	r1, r3
  419e6c: f1c6 fd58    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x1c6ab0
  419e70: 9b01         	ldr	r3, [sp, #0x4]
  419e72: 699b         	ldr	r3, [r3, #0x18]
  419e74: 4618         	mov	r0, r3
  419e76: f17e f81f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17e03e
  419e7a: 9b01         	ldr	r3, [sp, #0x4]
  419e7c: 695b         	ldr	r3, [r3, #0x14]
  419e7e: 4618         	mov	r0, r3
  419e80: f17e f81a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17e034
  419e84: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x419ec0 <WeaponManager::~WeaponManager()+0x74>
  419e86: 58e3         	ldr	r3, [r4, r3]
  419e88: 681b         	ldr	r3, [r3]
  419e8a: 4618         	mov	r0, r3
  419e8c: f17e f814    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17e028
  419e90: 9b01         	ldr	r3, [sp, #0x4]
  419e92: 6c9b         	ldr	r3, [r3, #0x48]
  419e94: 4618         	mov	r0, r3
  419e96: f17e f80f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17e01e
  419e9a: 9b01         	ldr	r3, [sp, #0x4]
  419e9c: 4618         	mov	r0, r3
  419e9e: f17d ff97    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x17df2e
  419ea2: 2300         	movs	r3, #0x0
  419ea4: 2b00         	cmp	r3, #0x0
  419ea6: d002         	beq	0x419eae <WeaponManager::~WeaponManager()+0x62> @ imm = #0x4
  419ea8: 9801         	ldr	r0, [sp, #0x4]
  419eaa: f36e f8fb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36e1f6
  419eae: 9b01         	ldr	r3, [sp, #0x4]
  419eb0: 4618         	mov	r0, r3
  419eb2: b002         	add	sp, #0x8
  419eb4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x419eb5); words below are literal-pool data ---
  419eb6: bf00         	nop
  419eb8: 8bb4         	ldrh	r4, [r6, #0x1c]
  419eba: 0051         	lsls	r1, r2, #0x1
  419ebc: dfac         	svc	#0xac
  419ebe: ffff dcec    	<unknown>
  419ec2: ffff b500    	<unknown>

// ==== WeaponManager::~WeaponManager
//      file offset 0x419ec4 (= ELF address; Ghidra 0x429ec4), 28 bytes, Thumb-2
  419ec4: b500         	push	{lr}
  419ec6: b083         	sub	sp, #0xc
  419ec8: 9001         	str	r0, [sp, #0x4]
  419eca: 9801         	ldr	r0, [sp, #0x4]
  419ecc: f7ff ffbe    	bl	0x419e4c <WeaponManager::~WeaponManager()> @ imm = #-0x84
  419ed0: 9801         	ldr	r0, [sp, #0x4]
  419ed2: f36e f8e7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36e1ce
  419ed6: 9b01         	ldr	r3, [sp, #0x4]
  419ed8: 4618         	mov	r0, r3
  419eda: b003         	add	sp, #0xc
  419edc: f85d fb04    	ldr	pc, [sp], #4

// ==== WeaponManager::removeAllWeaponsFromSpace
//      file offset 0x419ee0 (= ELF address; Ghidra 0x429ee0), 228 bytes, Thumb-2
  419ee0: b510         	push	{r4, lr}
  419ee2: b086         	sub	sp, #0x18
  419ee4: 9001         	str	r0, [sp, #0x4]
  419ee6: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x419fbc <WeaponManager::removeAllWeaponsFromSpace()+0xdc>
  419ee8: 447c         	add	r4, pc
  419eea: 9b01         	ldr	r3, [sp, #0x4]
  419eec: 699b         	ldr	r3, [r3, #0x18]
  419eee: 4618         	mov	r0, r3
  419ef0: f17d f86a    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x17d0d4
  419ef4: 9b01         	ldr	r3, [sp, #0x4]
  419ef6: 695b         	ldr	r3, [r3, #0x14]
  419ef8: 4618         	mov	r0, r3
  419efa: f17d f865    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x17d0ca
  419efe: 2300         	movs	r3, #0x0
  419f00: 9303         	str	r3, [sp, #0xc]
  419f02: 2300         	movs	r3, #0x0
  419f04: 9304         	str	r3, [sp, #0x10]
  419f06: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x419fc0 <WeaponManager::removeAllWeaponsFromSpace()+0xe0>
  419f08: 58e3         	ldr	r3, [r4, r3]
  419f0a: 681b         	ldr	r3, [r3]
  419f0c: 2b00         	cmp	r3, #0x0
  419f0e: d00a         	beq	0x419f26 <WeaponManager::removeAllWeaponsFromSpace()+0x46> @ imm = #0x14
  419f10: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x419fc0 <WeaponManager::removeAllWeaponsFromSpace()+0xe0>
  419f12: 58e3         	ldr	r3, [r4, r3]
  419f14: 681b         	ldr	r3, [r3]
  419f16: 4618         	mov	r0, r3
  419f18: f179 fea8    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x179d50
  419f1c: 4603         	mov	r3, r0
  419f1e: 2b00         	cmp	r3, #0x0
  419f20: d001         	beq	0x419f26 <WeaponManager::removeAllWeaponsFromSpace()+0x46> @ imm = #0x2
  419f22: 2301         	movs	r3, #0x1
  419f24: e000         	b	0x419f28 <WeaponManager::removeAllWeaponsFromSpace()+0x48> @ imm = #0x0
  419f26: 2300         	movs	r3, #0x0
  419f28: 2b00         	cmp	r3, #0x0
  419f2a: d03f         	beq	0x419fac <WeaponManager::removeAllWeaponsFromSpace()+0xcc> @ imm = #0x7e
  419f2c: 4b24         	ldr	r3, [pc, #0x90]         @ 0x419fc0 <WeaponManager::removeAllWeaponsFromSpace()+0xe0>
  419f2e: 58e3         	ldr	r3, [r4, r3]
  419f30: 681b         	ldr	r3, [r3]
  419f32: 695b         	ldr	r3, [r3, #0x14]
  419f34: 9303         	str	r3, [sp, #0xc]
  419f36: 4b22         	ldr	r3, [pc, #0x88]         @ 0x419fc0 <WeaponManager::removeAllWeaponsFromSpace()+0xe0>
  419f38: 58e3         	ldr	r3, [r4, r3]
  419f3a: 681b         	ldr	r3, [r3]
  419f3c: 695b         	ldr	r3, [r3, #0x14]
  419f3e: 2b00         	cmp	r3, #0x0
  419f40: d006         	beq	0x419f50 <WeaponManager::removeAllWeaponsFromSpace()+0x70> @ imm = #0xc
  419f42: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x419fc0 <WeaponManager::removeAllWeaponsFromSpace()+0xe0>
  419f44: 58e3         	ldr	r3, [r4, r3]
  419f46: 681b         	ldr	r3, [r3]
  419f48: 695b         	ldr	r3, [r3, #0x14]
  419f4a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  419f4e: e000         	b	0x419f52 <WeaponManager::removeAllWeaponsFromSpace()+0x72> @ imm = #0x0
  419f50: 2300         	movs	r3, #0x0
  419f52: 9304         	str	r3, [sp, #0x10]
  419f54: e027         	b	0x419fa6 <WeaponManager::removeAllWeaponsFromSpace()+0xc6> @ imm = #0x4e
  419f56: 9803         	ldr	r0, [sp, #0xc]
  419f58: f6e4 fb6c    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x11b928
  419f5c: 4603         	mov	r3, r0
  419f5e: 9305         	str	r3, [sp, #0x14]
  419f60: 9b05         	ldr	r3, [sp, #0x14]
  419f62: 681b         	ldr	r3, [r3]
  419f64: f503 73f6    	add.w	r3, r3, #0x1ec
  419f68: 681b         	ldr	r3, [r3]
  419f6a: 9805         	ldr	r0, [sp, #0x14]
  419f6c: 4798         	blx	r3
  419f6e: 4603         	mov	r3, r0
  419f70: 2b00         	cmp	r3, #0x0
  419f72: d00d         	beq	0x419f90 <WeaponManager::removeAllWeaponsFromSpace()+0xb0> @ imm = #0x1a
  419f74: 9b05         	ldr	r3, [sp, #0x14]
  419f76: 681b         	ldr	r3, [r3]
  419f78: f503 73e2    	add.w	r3, r3, #0x1c4
  419f7c: 681b         	ldr	r3, [r3]
  419f7e: 9805         	ldr	r0, [sp, #0x14]
  419f80: 4798         	blx	r3
  419f82: 9b05         	ldr	r3, [sp, #0x14]
  419f84: 681b         	ldr	r3, [r3]
  419f86: f503 73de    	add.w	r3, r3, #0x1bc
  419f8a: 681b         	ldr	r3, [r3]
  419f8c: 9805         	ldr	r0, [sp, #0x14]
  419f8e: 4798         	blx	r3
  419f90: 9b04         	ldr	r3, [sp, #0x10]
  419f92: 9303         	str	r3, [sp, #0xc]
  419f94: 9b04         	ldr	r3, [sp, #0x10]
  419f96: 2b00         	cmp	r3, #0x0
  419f98: d003         	beq	0x419fa2 <WeaponManager::removeAllWeaponsFromSpace()+0xc2> @ imm = #0x6
  419f9a: 9b04         	ldr	r3, [sp, #0x10]
  419f9c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  419fa0: e000         	b	0x419fa4 <WeaponManager::removeAllWeaponsFromSpace()+0xc4> @ imm = #0x0
  419fa2: 2300         	movs	r3, #0x0
  419fa4: 9304         	str	r3, [sp, #0x10]
  419fa6: 9b03         	ldr	r3, [sp, #0xc]
  419fa8: 2b00         	cmp	r3, #0x0
  419faa: d1d4         	bne	0x419f56 <WeaponManager::removeAllWeaponsFromSpace()+0x76> @ imm = #-0x58
  419fac: 4b04         	ldr	r3, [pc, #0x10]         @ 0x419fc0 <WeaponManager::removeAllWeaponsFromSpace()+0xe0>
  419fae: 58e3         	ldr	r3, [r4, r3]
  419fb0: 681b         	ldr	r3, [r3]
  419fb2: 4618         	mov	r0, r3
  419fb4: f17d f808    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x17d010
  419fb8: b006         	add	sp, #0x18
  419fba: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x419fbb); words below are literal-pool data ---
  419fbc: 8b20         	ldrh	r0, [r4, #0x18]
  419fbe: 0051         	lsls	r1, r2, #0x1
  419fc0: dcec         	bgt	0x419f9c <WeaponManager::removeAllWeaponsFromSpace()+0xbc> @ imm = #-0x28
  419fc2: ffff 0000    	<unknown>

// ==== WeaponManager::updateStep
//      file offset 0x419fc8 (= ELF address; Ghidra 0x429fc8), 1768 bytes, Thumb-2
  419fc8: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
  419fcc: b098         	sub	sp, #0x60
  419fce: 9001         	str	r0, [sp, #0x4]
  419fd0: 9100         	str	r1, [sp]
  419fd2: f8df 46bc    	ldr.w	r4, [pc, #0x6bc]        @ 0x41a690 <WeaponManager::updateStep(float)+0x6c8>
  419fd6: 447c         	add	r4, pc
  419fd8: f8df 36b8    	ldr.w	r3, [pc, #0x6b8]        @ 0x41a694 <WeaponManager::updateStep(float)+0x6cc>
  419fdc: 58e3         	ldr	r3, [r4, r3]
  419fde: 681b         	ldr	r3, [r3]
  419fe0: 4618         	mov	r0, r3
  419fe2: f179 fe43    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x179c86
  419fe6: 4602         	mov	r2, r0
  419fe8: 9b01         	ldr	r3, [sp, #0x4]
  419fea: 6b9b         	ldr	r3, [r3, #0x38]
  419fec: 429a         	cmp	r2, r3
  419fee: bf94         	ite	ls
  419ff0: 2300         	movls	r3, #0x0
  419ff2: 2301         	movhi	r3, #0x1
  419ff4: b2db         	uxtb	r3, r3
  419ff6: 2b00         	cmp	r3, #0x0
  419ff8: d003         	beq	0x41a002 <WeaponManager::updateStep(float)+0x3a> @ imm = #0x6
  419ffa: 9b01         	ldr	r3, [sp, #0x4]
  419ffc: 2208         	movs	r2, #0x8
  419ffe: 641a         	str	r2, [r3, #0x40]
  41a000: e002         	b	0x41a008 <WeaponManager::updateStep(float)+0x40> @ imm = #0x4
  41a002: 9b01         	ldr	r3, [sp, #0x4]
  41a004: 220f         	movs	r2, #0xf
  41a006: 641a         	str	r2, [r3, #0x40]
  41a008: 9b01         	ldr	r3, [sp, #0x4]
  41a00a: f893 3044    	ldrb.w	r3, [r3, #0x44]
  41a00e: 2b00         	cmp	r3, #0x0
  41a010: d012         	beq	0x41a038 <WeaponManager::updateStep(float)+0x70> @ imm = #0x24
  41a012: f75d fd95    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xa24d6
  41a016: 4603         	mov	r3, r0
  41a018: 4618         	mov	r0, r3
  41a01a: f75f ff35    	bl	0x379e88 <NetworkManager::isHostLeader()> @ imm = #-0xa0196
  41a01e: 4603         	mov	r3, r0
  41a020: 2b00         	cmp	r3, #0x0
  41a022: d009         	beq	0x41a038 <WeaponManager::updateStep(float)+0x70> @ imm = #0x12
  41a024: 9b01         	ldr	r3, [sp, #0x4]
  41a026: 6c9b         	ldr	r3, [r3, #0x48]
  41a028: 4618         	mov	r0, r3
  41a02a: f180 f859    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1800b2
  41a02e: 4603         	mov	r3, r0
  41a030: 2b00         	cmp	r3, #0x0
  41a032: d001         	beq	0x41a038 <WeaponManager::updateStep(float)+0x70> @ imm = #0x2
  41a034: 2301         	movs	r3, #0x1
  41a036: e000         	b	0x41a03a <WeaponManager::updateStep(float)+0x72> @ imm = #0x0
  41a038: 2300         	movs	r3, #0x0
  41a03a: 2b00         	cmp	r3, #0x0
  41a03c: f000 8170    	beq.w	0x41a320 <WeaponManager::updateStep(float)+0x358> @ imm = #0x2e0
  41a040: 9b01         	ldr	r3, [sp, #0x4]
  41a042: 6a5b         	ldr	r3, [r3, #0x24]
  41a044: 1c5a         	adds	r2, r3, #0x1
  41a046: 9b01         	ldr	r3, [sp, #0x4]
  41a048: 625a         	str	r2, [r3, #0x24]
  41a04a: 9b01         	ldr	r3, [sp, #0x4]
  41a04c: 6a5b         	ldr	r3, [r3, #0x24]
  41a04e: 461d         	mov	r5, r3
  41a050: 9b01         	ldr	r3, [sp, #0x4]
  41a052: 6c9b         	ldr	r3, [r3, #0x48]
  41a054: 4618         	mov	r0, r3
  41a056: f180 f843    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x180086
  41a05a: 4603         	mov	r3, r0
  41a05c: 429d         	cmp	r5, r3
  41a05e: bf34         	ite	lo
  41a060: 2300         	movlo	r3, #0x0
  41a062: 2301         	movhs	r3, #0x1
  41a064: b2db         	uxtb	r3, r3
  41a066: 2b00         	cmp	r3, #0x0
  41a068: d002         	beq	0x41a070 <WeaponManager::updateStep(float)+0xa8> @ imm = #0x4
  41a06a: 9b01         	ldr	r3, [sp, #0x4]
  41a06c: 2200         	movs	r2, #0x0
  41a06e: 625a         	str	r2, [r3, #0x24]
  41a070: 9b01         	ldr	r3, [sp, #0x4]
  41a072: ed93 7a0c    	vldr	s14, [r3, #48]
  41a076: eddd 7a00    	vldr	s15, [sp]
  41a07a: ee77 7a27    	vadd.f32	s15, s14, s15
  41a07e: 9b01         	ldr	r3, [sp, #0x4]
  41a080: edc3 7a0c    	vstr	s15, [r3, #48]
  41a084: 9b01         	ldr	r3, [sp, #0x4]
  41a086: 6c9a         	ldr	r2, [r3, #0x48]
  41a088: 9b01         	ldr	r3, [sp, #0x4]
  41a08a: 6a5b         	ldr	r3, [r3, #0x24]
  41a08c: 4610         	mov	r0, r2
  41a08e: 4619         	mov	r1, r3
  41a090: f180 f846    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x18008c
  41a094: 4603         	mov	r3, r0
  41a096: 930b         	str	r3, [sp, #0x2c]
  41a098: 9b0b         	ldr	r3, [sp, #0x2c]
  41a09a: 2b00         	cmp	r3, #0x0
  41a09c: f000 8140    	beq.w	0x41a320 <WeaponManager::updateStep(float)+0x358> @ imm = #0x280
  41a0a0: ab12         	add	r3, sp, #0x48
  41a0a2: 4618         	mov	r0, r3
  41a0a4: f370 f9a6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37034c
  41a0a8: aa14         	add	r2, sp, #0x50
  41a0aa: ab12         	add	r3, sp, #0x48
  41a0ac: 4610         	mov	r0, r2
  41a0ae: f8df 25e8    	ldr.w	r2, [pc, #0x5e8]        @ 0x41a698 <WeaponManager::updateStep(float)+0x6d0>
  41a0b2: 447a         	add	r2, pc
  41a0b4: 4611         	mov	r1, r2
  41a0b6: 461a         	mov	r2, r3
  41a0b8: f39c fcd2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c9a4
  41a0bc: ab14         	add	r3, sp, #0x50
  41a0be: 980b         	ldr	r0, [sp, #0x2c]
  41a0c0: 4619         	mov	r1, r3
  41a0c2: f179 ff15    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x179e2a
  41a0c6: 4603         	mov	r3, r0
  41a0c8: 930c         	str	r3, [sp, #0x30]
  41a0ca: ab14         	add	r3, sp, #0x50
  41a0cc: 4618         	mov	r0, r3
  41a0ce: f39b fc21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b842
  41a0d2: ab12         	add	r3, sp, #0x48
  41a0d4: 4618         	mov	r0, r3
  41a0d6: f370 f991    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x370322
  41a0da: 9b0c         	ldr	r3, [sp, #0x30]
  41a0dc: 2b00         	cmp	r3, #0x0
  41a0de: d120         	bne	0x41a122 <WeaponManager::updateStep(float)+0x15a> @ imm = #0x40
  41a0e0: f04f 0000    	mov.w	r0, #0x0
  41a0e4: f6c2 fdce    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x13d464
  41a0e8: 4605         	mov	r5, r0
  41a0ea: ab12         	add	r3, sp, #0x48
  41a0ec: 4618         	mov	r0, r3
  41a0ee: f370 f981    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x370302
  41a0f2: aa14         	add	r2, sp, #0x50
  41a0f4: ab12         	add	r3, sp, #0x48
  41a0f6: 4610         	mov	r0, r2
  41a0f8: f8df 25a0    	ldr.w	r2, [pc, #0x5a0]        @ 0x41a69c <WeaponManager::updateStep(float)+0x6d4>
  41a0fc: 447a         	add	r2, pc
  41a0fe: 4611         	mov	r1, r2
  41a100: 461a         	mov	r2, r3
  41a102: f39c fcad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c95a
  41a106: ab14         	add	r3, sp, #0x50
  41a108: 980b         	ldr	r0, [sp, #0x2c]
  41a10a: 4629         	mov	r1, r5
  41a10c: 461a         	mov	r2, r3
  41a10e: f17a fc13    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x17a826
  41a112: ab14         	add	r3, sp, #0x50
  41a114: 4618         	mov	r0, r3
  41a116: f39b fbfd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b7fa
  41a11a: ab12         	add	r3, sp, #0x48
  41a11c: 4618         	mov	r0, r3
  41a11e: f370 f96d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3702da
  41a122: 2500         	movs	r5, #0x0
  41a124: 2600         	movs	r6, #0x0
  41a126: 9b0c         	ldr	r3, [sp, #0x30]
  41a128: 2b00         	cmp	r3, #0x0
  41a12a: d01e         	beq	0x41a16a <WeaponManager::updateStep(float)+0x1a2> @ imm = #0x3c
  41a12c: f8df 3564    	ldr.w	r3, [pc, #0x564]        @ 0x41a694 <WeaponManager::updateStep(float)+0x6cc>
  41a130: 58e3         	ldr	r3, [r4, r3]
  41a132: 681f         	ldr	r7, [r3]
  41a134: 980c         	ldr	r0, [sp, #0x30]
  41a136: f17f fbf7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17f7ee
  41a13a: 4680         	mov	r8, r0
  41a13c: ab03         	add	r3, sp, #0xc
  41a13e: 4618         	mov	r0, r3
  41a140: f370 f958    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3702b0
  41a144: 2501         	movs	r5, #0x1
  41a146: aa05         	add	r2, sp, #0x14
  41a148: ab03         	add	r3, sp, #0xc
  41a14a: 4610         	mov	r0, r2
  41a14c: 4641         	mov	r1, r8
  41a14e: 461a         	mov	r2, r3
  41a150: f39c fc86    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c90c
  41a154: 2601         	movs	r6, #0x1
  41a156: ab05         	add	r3, sp, #0x14
  41a158: 4638         	mov	r0, r7
  41a15a: 4619         	mov	r1, r3
  41a15c: f179 fec8    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x179d90
  41a160: 4603         	mov	r3, r0
  41a162: 2b00         	cmp	r3, #0x0
  41a164: d001         	beq	0x41a16a <WeaponManager::updateStep(float)+0x1a2> @ imm = #0x2
  41a166: 2301         	movs	r3, #0x1
  41a168: e000         	b	0x41a16c <WeaponManager::updateStep(float)+0x1a4> @ imm = #0x0
  41a16a: 2300         	movs	r3, #0x0
  41a16c: 461f         	mov	r7, r3
  41a16e: 2e00         	cmp	r6, #0x0
  41a170: d003         	beq	0x41a17a <WeaponManager::updateStep(float)+0x1b2> @ imm = #0x6
  41a172: ab05         	add	r3, sp, #0x14
  41a174: 4618         	mov	r0, r3
  41a176: f39b fbcd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b79a
  41a17a: 2d00         	cmp	r5, #0x0
  41a17c: d004         	beq	0x41a188 <WeaponManager::updateStep(float)+0x1c0> @ imm = #0x8
  41a17e: bf00         	nop
  41a180: ab03         	add	r3, sp, #0xc
  41a182: 4618         	mov	r0, r3
  41a184: f370 f93a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x370274
  41a188: 2f00         	cmp	r7, #0x0
  41a18a: d008         	beq	0x41a19e <WeaponManager::updateStep(float)+0x1d6> @ imm = #0x10
  41a18c: 9801         	ldr	r0, [sp, #0x4]
  41a18e: 990b         	ldr	r1, [sp, #0x2c]
  41a190: f04f 0200    	mov.w	r2, #0x0
  41a194: f2c4 2270    	movt	r2, #0x4270
  41a198: f000 fb7e    	bl	0x41a898 <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)> @ imm = #0x6fc
  41a19c: e0c0         	b	0x41a320 <WeaponManager::updateStep(float)+0x358> @ imm = #0x180
  41a19e: 9b01         	ldr	r3, [sp, #0x4]
  41a1a0: ed93 7a0c    	vldr	s14, [r3, #48]
  41a1a4: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  41a1a8: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a1ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a1b0: dc00         	bgt	0x41a1b4 <WeaponManager::updateStep(float)+0x1ec> @ imm = #0x0
  41a1b2: e0b5         	b	0x41a320 <WeaponManager::updateStep(float)+0x358> @ imm = #0x16a
  41a1b4: f04f 0300    	mov.w	r3, #0x0
  41a1b8: 9307         	str	r3, [sp, #0x1c]
  41a1ba: ab12         	add	r3, sp, #0x48
  41a1bc: 4618         	mov	r0, r3
  41a1be: f370 f919    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x370232
  41a1c2: aa14         	add	r2, sp, #0x50
  41a1c4: ab12         	add	r3, sp, #0x48
  41a1c6: 4610         	mov	r0, r2
  41a1c8: f8df 24d4    	ldr.w	r2, [pc, #0x4d4]        @ 0x41a6a0 <WeaponManager::updateStep(float)+0x6d8>
  41a1cc: 447a         	add	r2, pc
  41a1ce: 4611         	mov	r1, r2
  41a1d0: 461a         	mov	r2, r3
  41a1d2: f39c fc45    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c88a
  41a1d6: ab14         	add	r3, sp, #0x50
  41a1d8: 980b         	ldr	r0, [sp, #0x2c]
  41a1da: 4619         	mov	r1, r3
  41a1dc: f179 fe88    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x179d10
  41a1e0: 4603         	mov	r3, r0
  41a1e2: 930d         	str	r3, [sp, #0x34]
  41a1e4: ab14         	add	r3, sp, #0x50
  41a1e6: 4618         	mov	r0, r3
  41a1e8: f39b fb94    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b728
  41a1ec: ab12         	add	r3, sp, #0x48
  41a1ee: 4618         	mov	r0, r3
  41a1f0: f370 f904    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x370208
  41a1f4: 9b0d         	ldr	r3, [sp, #0x34]
  41a1f6: 2b00         	cmp	r3, #0x0
  41a1f8: d004         	beq	0x41a204 <WeaponManager::updateStep(float)+0x23c> @ imm = #0x8
  41a1fa: 980d         	ldr	r0, [sp, #0x34]
  41a1fc: f6c2 fd3a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x13d58c
  41a200: 4603         	mov	r3, r0
  41a202: 9307         	str	r3, [sp, #0x1c]
  41a204: 9b01         	ldr	r3, [sp, #0x4]
  41a206: ed93 7a0c    	vldr	s14, [r3, #48]
  41a20a: eddd 7a07    	vldr	s15, [sp, #28]
  41a20e: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a212: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a216: da00         	bge	0x41a21a <WeaponManager::updateStep(float)+0x252> @ imm = #0x0
  41a218: e082         	b	0x41a320 <WeaponManager::updateStep(float)+0x358> @ imm = #0x104
  41a21a: 9801         	ldr	r0, [sp, #0x4]
  41a21c: 990b         	ldr	r1, [sp, #0x2c]
  41a21e: f001 fdc5    	bl	0x41bdac <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)> @ imm = #0x1b8a
  41a222: 4603         	mov	r3, r0
  41a224: 930e         	str	r3, [sp, #0x38]
  41a226: 9b0e         	ldr	r3, [sp, #0x38]
  41a228: 2b00         	cmp	r3, #0x0
  41a22a: d079         	beq	0x41a320 <WeaponManager::updateStep(float)+0x358> @ imm = #0xf2
  41a22c: 9b0e         	ldr	r3, [sp, #0x38]
  41a22e: 681b         	ldr	r3, [r3]
  41a230: f503 7300    	add.w	r3, r3, #0x200
  41a234: 681d         	ldr	r5, [r3]
  41a236: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x41a6a4 <WeaponManager::updateStep(float)+0x6dc>
  41a23a: 58e3         	ldr	r3, [r4, r3]
  41a23c: 681b         	ldr	r3, [r3]
  41a23e: 681b         	ldr	r3, [r3]
  41a240: f503 73e0    	add.w	r3, r3, #0x1c0
  41a244: 681b         	ldr	r3, [r3]
  41a246: f8df 245c    	ldr.w	r2, [pc, #0x45c]        @ 0x41a6a4 <WeaponManager::updateStep(float)+0x6dc>
  41a24a: 58a2         	ldr	r2, [r4, r2]
  41a24c: 6812         	ldr	r2, [r2]
  41a24e: a914         	add	r1, sp, #0x50
  41a250: 4608         	mov	r0, r1
  41a252: 4611         	mov	r1, r2
  41a254: 4798         	blx	r3
  41a256: ab14         	add	r3, sp, #0x50
  41a258: 980e         	ldr	r0, [sp, #0x38]
  41a25a: 4619         	mov	r1, r3
  41a25c: 47a8         	blx	r5
  41a25e: ab14         	add	r3, sp, #0x50
  41a260: 4618         	mov	r0, r3
  41a262: f39b fb57    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b6ae
  41a266: f8df 3440    	ldr.w	r3, [pc, #0x440]        @ 0x41a6a8 <WeaponManager::updateStep(float)+0x6e0>
  41a26a: 58e3         	ldr	r3, [r4, r3]
  41a26c: 681b         	ldr	r3, [r3]
  41a26e: aa14         	add	r2, sp, #0x50
  41a270: 4610         	mov	r0, r2
  41a272: 4619         	mov	r1, r3
  41a274: 9a0b         	ldr	r2, [sp, #0x2c]
  41a276: f74b f9d7    	bl	0x365628 <MapManager::objectLocation(cocos2d::CCDictionary*)> @ imm = #-0xb4c52
  41a27a: 9b0e         	ldr	r3, [sp, #0x38]
  41a27c: 681b         	ldr	r3, [r3]
  41a27e: 334c         	adds	r3, #0x4c
  41a280: 681d         	ldr	r5, [r3]
  41a282: 9e0e         	ldr	r6, [sp, #0x38]
  41a284: ed9d 7b14    	vldr	d7, [sp, #80]
  41a288: eef7 6bc7    	vcvt.f32.f64	s13, d7
  41a28c: ed9d 7b16    	vldr	d7, [sp, #88]
  41a290: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41a294: ab12         	add	r3, sp, #0x48
  41a296: 4618         	mov	r0, r3
  41a298: ee16 1a90    	vmov	r1, s13
  41a29c: ee17 2a90    	vmov	r2, s15
  41a2a0: f178 fd26    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x178a4c
  41a2a4: ab12         	add	r3, sp, #0x48
  41a2a6: 4630         	mov	r0, r6
  41a2a8: 4619         	mov	r1, r3
  41a2aa: 47a8         	blx	r5
  41a2ac: 9801         	ldr	r0, [sp, #0x4]
  41a2ae: 990e         	ldr	r1, [sp, #0x38]
  41a2b0: f000 fb72    	bl	0x41a998 <WeaponManager::addItem(Item*)> @ imm = #0x6e4
  41a2b4: 9b0e         	ldr	r3, [sp, #0x38]
  41a2b6: 681b         	ldr	r3, [r3]
  41a2b8: f503 73fe    	add.w	r3, r3, #0x1fc
  41a2bc: 681b         	ldr	r3, [r3]
  41a2be: 9a0e         	ldr	r2, [sp, #0x38]
  41a2c0: a906         	add	r1, sp, #0x18
  41a2c2: 4608         	mov	r0, r1
  41a2c4: 4611         	mov	r1, r2
  41a2c6: 4798         	blx	r3
  41a2c8: ab06         	add	r3, sp, #0x18
  41a2ca: 4618         	mov	r0, r3
  41a2cc: f17f fbb6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x17f76c
  41a2d0: 4605         	mov	r5, r0
  41a2d2: ab04         	add	r3, sp, #0x10
  41a2d4: 4618         	mov	r0, r3
  41a2d6: f370 f88d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37011a
  41a2da: aa12         	add	r2, sp, #0x48
  41a2dc: ab04         	add	r3, sp, #0x10
  41a2de: 4610         	mov	r0, r2
  41a2e0: 4af2         	ldr	r2, [pc, #0x3c8]        @ 0x41a6ac <WeaponManager::updateStep(float)+0x6e4>
  41a2e2: 447a         	add	r2, pc
  41a2e4: 4611         	mov	r1, r2
  41a2e6: 461a         	mov	r2, r3
  41a2e8: f39c fbba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c774
  41a2ec: ab12         	add	r3, sp, #0x48
  41a2ee: 980b         	ldr	r0, [sp, #0x2c]
  41a2f0: 4629         	mov	r1, r5
  41a2f2: 461a         	mov	r2, r3
  41a2f4: f17a fb20    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x17a640
  41a2f8: ab12         	add	r3, sp, #0x48
  41a2fa: 4618         	mov	r0, r3
  41a2fc: f39b fb0a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b614
  41a300: ab04         	add	r3, sp, #0x10
  41a302: 4618         	mov	r0, r3
  41a304: f370 f87a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3700f4
  41a308: ab06         	add	r3, sp, #0x18
  41a30a: 4618         	mov	r0, r3
  41a30c: f39b fb02    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b604
  41a310: 9801         	ldr	r0, [sp, #0x4]
  41a312: 990b         	ldr	r1, [sp, #0x2c]
  41a314: f04f 0200    	mov.w	r2, #0x0
  41a318: f2c4 2270    	movt	r2, #0x4270
  41a31c: f000 fabc    	bl	0x41a898 <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)> @ imm = #0x578
  41a320: 4bdc         	ldr	r3, [pc, #0x370]        @ 0x41a694 <WeaponManager::updateStep(float)+0x6cc>
  41a322: 58e3         	ldr	r3, [r4, r3]
  41a324: 681b         	ldr	r3, [r3]
  41a326: 4618         	mov	r0, r3
  41a328: f179 fca0    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x179940
  41a32c: 4603         	mov	r3, r0
  41a32e: 2b00         	cmp	r3, #0x0
  41a330: bf0c         	ite	eq
  41a332: 2300         	moveq	r3, #0x0
  41a334: 2301         	movne	r3, #0x1
  41a336: b2db         	uxtb	r3, r3
  41a338: 2b00         	cmp	r3, #0x0
  41a33a: f000 80d7    	beq.w	0x41a4ec <WeaponManager::updateStep(float)+0x524> @ imm = #0x1ae
  41a33e: 9b01         	ldr	r3, [sp, #0x4]
  41a340: 6a1b         	ldr	r3, [r3, #0x20]
  41a342: 1c5a         	adds	r2, r3, #0x1
  41a344: 9b01         	ldr	r3, [sp, #0x4]
  41a346: 621a         	str	r2, [r3, #0x20]
  41a348: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x41a694 <WeaponManager::updateStep(float)+0x6cc>
  41a34a: 58e3         	ldr	r3, [r4, r3]
  41a34c: 681b         	ldr	r3, [r3]
  41a34e: 4618         	mov	r0, r3
  41a350: f179 fc9c    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x179938
  41a354: 4603         	mov	r3, r0
  41a356: 930f         	str	r3, [sp, #0x3c]
  41a358: 9b01         	ldr	r3, [sp, #0x4]
  41a35a: 6a1b         	ldr	r3, [r3, #0x20]
  41a35c: 461d         	mov	r5, r3
  41a35e: 980f         	ldr	r0, [sp, #0x3c]
  41a360: f17f febe    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x17fd7c
  41a364: 4603         	mov	r3, r0
  41a366: 429d         	cmp	r5, r3
  41a368: bf34         	ite	lo
  41a36a: 2300         	movlo	r3, #0x0
  41a36c: 2301         	movhs	r3, #0x1
  41a36e: b2db         	uxtb	r3, r3
  41a370: 2b00         	cmp	r3, #0x0
  41a372: d002         	beq	0x41a37a <WeaponManager::updateStep(float)+0x3b2> @ imm = #0x4
  41a374: 9b01         	ldr	r3, [sp, #0x4]
  41a376: 2200         	movs	r2, #0x0
  41a378: 621a         	str	r2, [r3, #0x20]
  41a37a: 9b01         	ldr	r3, [sp, #0x4]
  41a37c: 6a1b         	ldr	r3, [r3, #0x20]
  41a37e: 980f         	ldr	r0, [sp, #0x3c]
  41a380: 4619         	mov	r1, r3
  41a382: f17f fecd    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x17fd9a
  41a386: 4603         	mov	r3, r0
  41a388: 9310         	str	r3, [sp, #0x40]
  41a38a: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x41a694 <WeaponManager::updateStep(float)+0x6cc>
  41a38c: 58e3         	ldr	r3, [r4, r3]
  41a38e: 681c         	ldr	r4, [r3]
  41a390: 9810         	ldr	r0, [sp, #0x40]
  41a392: f17f fac9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17f592
  41a396: 4605         	mov	r5, r0
  41a398: ab12         	add	r3, sp, #0x48
  41a39a: 4618         	mov	r0, r3
  41a39c: f370 f82a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x370054
  41a3a0: aa14         	add	r2, sp, #0x50
  41a3a2: ab12         	add	r3, sp, #0x48
  41a3a4: 4610         	mov	r0, r2
  41a3a6: 4629         	mov	r1, r5
  41a3a8: 461a         	mov	r2, r3
  41a3aa: f39c fb59    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c6b2
  41a3ae: ab14         	add	r3, sp, #0x50
  41a3b0: 4620         	mov	r0, r4
  41a3b2: 4619         	mov	r1, r3
  41a3b4: f179 fd9c    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x179b38
  41a3b8: 4603         	mov	r3, r0
  41a3ba: 9308         	str	r3, [sp, #0x20]
  41a3bc: ab14         	add	r3, sp, #0x50
  41a3be: 4618         	mov	r0, r3
  41a3c0: f39b faa8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b550
  41a3c4: ab12         	add	r3, sp, #0x48
  41a3c6: 4618         	mov	r0, r3
  41a3c8: f370 f818    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x370030
  41a3cc: 9b08         	ldr	r3, [sp, #0x20]
  41a3ce: 2b00         	cmp	r3, #0x0
  41a3d0: f000 808c    	beq.w	0x41a4ec <WeaponManager::updateStep(float)+0x524> @ imm = #0x118
  41a3d4: 9b08         	ldr	r3, [sp, #0x20]
  41a3d6: ed93 7a64    	vldr	s14, [r3, #400]
  41a3da: eddd 7a00    	vldr	s15, [sp]
  41a3de: ee77 7a27    	vadd.f32	s15, s14, s15
  41a3e2: 9b08         	ldr	r3, [sp, #0x20]
  41a3e4: edc3 7a64    	vstr	s15, [r3, #400]
  41a3e8: 9b01         	ldr	r3, [sp, #0x4]
  41a3ea: f893 3045    	ldrb.w	r3, [r3, #0x45]
  41a3ee: 2b00         	cmp	r3, #0x0
  41a3f0: d018         	beq	0x41a424 <WeaponManager::updateStep(float)+0x45c> @ imm = #0x30
  41a3f2: 9b08         	ldr	r3, [sp, #0x20]
  41a3f4: ed93 7a64    	vldr	s14, [r3, #400]
  41a3f8: 9b01         	ldr	r3, [sp, #0x4]
  41a3fa: 6c1b         	ldr	r3, [r3, #0x40]
  41a3fc: ee06 3a90    	vmov	s13, r3
  41a400: eef8 7ae6    	vcvt.f32.s32	s15, s13
  41a404: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a408: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a40c: dd0a         	ble	0x41a424 <WeaponManager::updateStep(float)+0x45c> @ imm = #0x14
  41a40e: 9b08         	ldr	r3, [sp, #0x20]
  41a410: f04f 0200    	mov.w	r2, #0x0
  41a414: f8c3 2190    	str.w	r2, [r3, #0x190]
  41a418: 9801         	ldr	r0, [sp, #0x4]
  41a41a: 9908         	ldr	r1, [sp, #0x20]
  41a41c: f000 fb88    	bl	0x41ab30 <WeaponManager::removeItem(Item*)> @ imm = #0x710
  41a420: 2300         	movs	r3, #0x0
  41a422: 9308         	str	r3, [sp, #0x20]
  41a424: 9b08         	ldr	r3, [sp, #0x20]
  41a426: 2b00         	cmp	r3, #0x0
  41a428: d016         	beq	0x41a458 <WeaponManager::updateStep(float)+0x490> @ imm = #0x2c
  41a42a: 9b08         	ldr	r3, [sp, #0x20]
  41a42c: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  41a430: 2b00         	cmp	r3, #0x0
  41a432: d011         	beq	0x41a458 <WeaponManager::updateStep(float)+0x490> @ imm = #0x22
  41a434: 9b08         	ldr	r3, [sp, #0x20]
  41a436: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  41a43a: ed93 6b0c    	vldr	d6, [r3, #48]
  41a43e: ed9f 7b92    	vldr	d7, [pc, #584]          @ 0x41a688 <WeaponManager::updateStep(float)+0x6c0>
  41a442: eeb4 6bc7    	vcmpe.f64	d6, d7
  41a446: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a44a: d505         	bpl	0x41a458 <WeaponManager::updateStep(float)+0x490> @ imm = #0xa
  41a44c: 9801         	ldr	r0, [sp, #0x4]
  41a44e: 9908         	ldr	r1, [sp, #0x20]
  41a450: f000 fb6e    	bl	0x41ab30 <WeaponManager::removeItem(Item*)> @ imm = #0x6dc
  41a454: 2300         	movs	r3, #0x0
  41a456: 9308         	str	r3, [sp, #0x20]
  41a458: 9b08         	ldr	r3, [sp, #0x20]
  41a45a: 2b00         	cmp	r3, #0x0
  41a45c: d00b         	beq	0x41a476 <WeaponManager::updateStep(float)+0x4ae> @ imm = #0x16
  41a45e: 9b08         	ldr	r3, [sp, #0x20]
  41a460: 681b         	ldr	r3, [r3]
  41a462: f503 732a    	add.w	r3, r3, #0x2a8
  41a466: 681b         	ldr	r3, [r3]
  41a468: 9808         	ldr	r0, [sp, #0x20]
  41a46a: 4798         	blx	r3
  41a46c: 4603         	mov	r3, r0
  41a46e: 2b00         	cmp	r3, #0x0
  41a470: d001         	beq	0x41a476 <WeaponManager::updateStep(float)+0x4ae> @ imm = #0x2
  41a472: 2301         	movs	r3, #0x1
  41a474: e000         	b	0x41a478 <WeaponManager::updateStep(float)+0x4b0> @ imm = #0x0
  41a476: 2300         	movs	r3, #0x0
  41a478: 2b00         	cmp	r3, #0x0
  41a47a: d020         	beq	0x41a4be <WeaponManager::updateStep(float)+0x4f6> @ imm = #0x40
  41a47c: 9b08         	ldr	r3, [sp, #0x20]
  41a47e: ed93 7a4e    	vldr	s14, [r3, #312]
  41a482: eddd 7a00    	vldr	s15, [sp]
  41a486: ee77 7a27    	vadd.f32	s15, s14, s15
  41a48a: 9b08         	ldr	r3, [sp, #0x20]
  41a48c: edc3 7a4e    	vstr	s15, [r3, #312]
  41a490: 9b08         	ldr	r3, [sp, #0x20]
  41a492: ed93 7a4e    	vldr	s14, [r3, #312]
  41a496: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41a49a: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a49e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a4a2: dd0c         	ble	0x41a4be <WeaponManager::updateStep(float)+0x4f6> @ imm = #0x18
  41a4a4: 9b08         	ldr	r3, [sp, #0x20]
  41a4a6: 681b         	ldr	r3, [r3]
  41a4a8: f503 732b    	add.w	r3, r3, #0x2ac
  41a4ac: 681b         	ldr	r3, [r3]
  41a4ae: 9808         	ldr	r0, [sp, #0x20]
  41a4b0: 2100         	movs	r1, #0x0
  41a4b2: 4798         	blx	r3
  41a4b4: 9b08         	ldr	r3, [sp, #0x20]
  41a4b6: f04f 0200    	mov.w	r2, #0x0
  41a4ba: f8c3 2138    	str.w	r2, [r3, #0x138]
  41a4be: 9b08         	ldr	r3, [sp, #0x20]
  41a4c0: 2b00         	cmp	r3, #0x0
  41a4c2: d00c         	beq	0x41a4de <WeaponManager::updateStep(float)+0x516> @ imm = #0x18
  41a4c4: 9b08         	ldr	r3, [sp, #0x20]
  41a4c6: 681b         	ldr	r3, [r3]
  41a4c8: f503 73ce    	add.w	r3, r3, #0x19c
  41a4cc: 681b         	ldr	r3, [r3]
  41a4ce: 9a08         	ldr	r2, [sp, #0x20]
  41a4d0: 4610         	mov	r0, r2
  41a4d2: 4798         	blx	r3
  41a4d4: 4603         	mov	r3, r0
  41a4d6: 2b00         	cmp	r3, #0x0
  41a4d8: d001         	beq	0x41a4de <WeaponManager::updateStep(float)+0x516> @ imm = #0x2
  41a4da: 2301         	movs	r3, #0x1
  41a4dc: e000         	b	0x41a4e0 <WeaponManager::updateStep(float)+0x518> @ imm = #0x0
  41a4de: 2300         	movs	r3, #0x0
  41a4e0: 2b00         	cmp	r3, #0x0
  41a4e2: d003         	beq	0x41a4ec <WeaponManager::updateStep(float)+0x524> @ imm = #0x6
  41a4e4: 9801         	ldr	r0, [sp, #0x4]
  41a4e6: 9908         	ldr	r1, [sp, #0x20]
  41a4e8: f000 ffae    	bl	0x41b448 <WeaponManager::weaponProximity(Weapon*)> @ imm = #0xf5c
  41a4ec: 2300         	movs	r3, #0x0
  41a4ee: 9309         	str	r3, [sp, #0x24]
  41a4f0: 2300         	movs	r3, #0x0
  41a4f2: 930a         	str	r3, [sp, #0x28]
  41a4f4: 9b01         	ldr	r3, [sp, #0x4]
  41a4f6: 699b         	ldr	r3, [r3, #0x18]
  41a4f8: 2b00         	cmp	r3, #0x0
  41a4fa: d009         	beq	0x41a510 <WeaponManager::updateStep(float)+0x548> @ imm = #0x12
  41a4fc: 9b01         	ldr	r3, [sp, #0x4]
  41a4fe: 699b         	ldr	r3, [r3, #0x18]
  41a500: 4618         	mov	r0, r3
  41a502: f179 fbb3    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x179766
  41a506: 4603         	mov	r3, r0
  41a508: 2b00         	cmp	r3, #0x0
  41a50a: d001         	beq	0x41a510 <WeaponManager::updateStep(float)+0x548> @ imm = #0x2
  41a50c: 2301         	movs	r3, #0x1
  41a50e: e000         	b	0x41a512 <WeaponManager::updateStep(float)+0x54a> @ imm = #0x0
  41a510: 2300         	movs	r3, #0x0
  41a512: 2b00         	cmp	r3, #0x0
  41a514: f000 80b2    	beq.w	0x41a67c <WeaponManager::updateStep(float)+0x6b4> @ imm = #0x164
  41a518: 9b01         	ldr	r3, [sp, #0x4]
  41a51a: 699b         	ldr	r3, [r3, #0x18]
  41a51c: 695b         	ldr	r3, [r3, #0x14]
  41a51e: 9309         	str	r3, [sp, #0x24]
  41a520: 9b01         	ldr	r3, [sp, #0x4]
  41a522: 699b         	ldr	r3, [r3, #0x18]
  41a524: 695b         	ldr	r3, [r3, #0x14]
  41a526: 2b00         	cmp	r3, #0x0
  41a528: d005         	beq	0x41a536 <WeaponManager::updateStep(float)+0x56e> @ imm = #0xa
  41a52a: 9b01         	ldr	r3, [sp, #0x4]
  41a52c: 699b         	ldr	r3, [r3, #0x18]
  41a52e: 695b         	ldr	r3, [r3, #0x14]
  41a530: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41a534: e000         	b	0x41a538 <WeaponManager::updateStep(float)+0x570> @ imm = #0x0
  41a536: 2300         	movs	r3, #0x0
  41a538: 930a         	str	r3, [sp, #0x28]
  41a53a: e042         	b	0x41a5c2 <WeaponManager::updateStep(float)+0x5fa> @ imm = #0x84
  41a53c: 9809         	ldr	r0, [sp, #0x24]
  41a53e: f6e4 f879    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x11bf0e
  41a542: 4603         	mov	r3, r0
  41a544: 9311         	str	r3, [sp, #0x44]
  41a546: 9b11         	ldr	r3, [sp, #0x44]
  41a548: 681b         	ldr	r3, [r3]
  41a54a: f503 7316    	add.w	r3, r3, #0x258
  41a54e: 681b         	ldr	r3, [r3]
  41a550: 9811         	ldr	r0, [sp, #0x44]
  41a552: 9900         	ldr	r1, [sp]
  41a554: 4798         	blx	r3
  41a556: 9b11         	ldr	r3, [sp, #0x44]
  41a558: 681b         	ldr	r3, [r3]
  41a55a: f503 7304    	add.w	r3, r3, #0x210
  41a55e: 681b         	ldr	r3, [r3]
  41a560: 9a11         	ldr	r2, [sp, #0x44]
  41a562: 4610         	mov	r0, r2
  41a564: 4798         	blx	r3
  41a566: ee07 0a10    	vmov	s14, r0
  41a56a: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41a56e: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a572: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a576: bfd4         	ite	le
  41a578: 2300         	movle	r3, #0x0
  41a57a: 2301         	movgt	r3, #0x1
  41a57c: b2db         	uxtb	r3, r3
  41a57e: 2b00         	cmp	r3, #0x0
  41a580: d014         	beq	0x41a5ac <WeaponManager::updateStep(float)+0x5e4> @ imm = #0x28
  41a582: 9b01         	ldr	r3, [sp, #0x4]
  41a584: 699c         	ldr	r4, [r3, #0x18]
  41a586: 9b11         	ldr	r3, [sp, #0x44]
  41a588: 681b         	ldr	r3, [r3]
  41a58a: f503 73fe    	add.w	r3, r3, #0x1fc
  41a58e: 681b         	ldr	r3, [r3]
  41a590: 9a11         	ldr	r2, [sp, #0x44]
  41a592: a914         	add	r1, sp, #0x50
  41a594: 4608         	mov	r0, r1
  41a596: 4611         	mov	r1, r2
  41a598: 4798         	blx	r3
  41a59a: ab14         	add	r3, sp, #0x50
  41a59c: 4620         	mov	r0, r4
  41a59e: 4619         	mov	r1, r3
  41a5a0: f17a fe8a    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x17ad14
  41a5a4: ab14         	add	r3, sp, #0x50
  41a5a6: 4618         	mov	r0, r3
  41a5a8: f39b f9b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b368
  41a5ac: 9b0a         	ldr	r3, [sp, #0x28]
  41a5ae: 9309         	str	r3, [sp, #0x24]
  41a5b0: 9b0a         	ldr	r3, [sp, #0x28]
  41a5b2: 2b00         	cmp	r3, #0x0
  41a5b4: d003         	beq	0x41a5be <WeaponManager::updateStep(float)+0x5f6> @ imm = #0x6
  41a5b6: 9b0a         	ldr	r3, [sp, #0x28]
  41a5b8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41a5bc: e000         	b	0x41a5c0 <WeaponManager::updateStep(float)+0x5f8> @ imm = #0x0
  41a5be: 2300         	movs	r3, #0x0
  41a5c0: 930a         	str	r3, [sp, #0x28]
  41a5c2: 9b09         	ldr	r3, [sp, #0x24]
  41a5c4: 2b00         	cmp	r3, #0x0
  41a5c6: d1b9         	bne	0x41a53c <WeaponManager::updateStep(float)+0x574> @ imm = #-0x8e
  41a5c8: e058         	b	0x41a67c <WeaponManager::updateStep(float)+0x6b4> @ imm = #0xb0
  41a5ca: ab14         	add	r3, sp, #0x50
  41a5cc: 4618         	mov	r0, r3
  41a5ce: f39b f9a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b342
  41a5d2: e7ff         	b	0x41a5d4 <WeaponManager::updateStep(float)+0x60c> @ imm = #-0x2
  41a5d4: ab12         	add	r3, sp, #0x48
  41a5d6: 4618         	mov	r0, r3
  41a5d8: f36f ff10    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fe20
  41a5dc: f36d fd66    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36dacc
  41a5e0: ab14         	add	r3, sp, #0x50
  41a5e2: 4618         	mov	r0, r3
  41a5e4: f39b f996    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b32c
  41a5e8: e7ff         	b	0x41a5ea <WeaponManager::updateStep(float)+0x622> @ imm = #-0x2
  41a5ea: ab12         	add	r3, sp, #0x48
  41a5ec: 4618         	mov	r0, r3
  41a5ee: f36f ff05    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fe0a
  41a5f2: f36d fd5b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36dab6
  41a5f6: 2e00         	cmp	r6, #0x0
  41a5f8: d003         	beq	0x41a602 <WeaponManager::updateStep(float)+0x63a> @ imm = #0x6
  41a5fa: ab05         	add	r3, sp, #0x14
  41a5fc: 4618         	mov	r0, r3
  41a5fe: f39b f989    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b312
  41a602: 2d00         	cmp	r5, #0x0
  41a604: d005         	beq	0x41a612 <WeaponManager::updateStep(float)+0x64a> @ imm = #0xa
  41a606: bf00         	nop
  41a608: ab03         	add	r3, sp, #0xc
  41a60a: 4618         	mov	r0, r3
  41a60c: f36f fef6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fdec
  41a610: e000         	b	0x41a614 <WeaponManager::updateStep(float)+0x64c> @ imm = #0x0
  41a612: bf00         	nop
  41a614: f36d fd4a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36da94
  41a618: ab14         	add	r3, sp, #0x50
  41a61a: 4618         	mov	r0, r3
  41a61c: f39b f97a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b2f4
  41a620: e7ff         	b	0x41a622 <WeaponManager::updateStep(float)+0x65a> @ imm = #-0x2
  41a622: ab12         	add	r3, sp, #0x48
  41a624: 4618         	mov	r0, r3
  41a626: f36f fee9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fdd2
  41a62a: f36d fd3f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36da7e
  41a62e: ab14         	add	r3, sp, #0x50
  41a630: 4618         	mov	r0, r3
  41a632: f39b f96f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b2de
  41a636: f36d fd39    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36da72
  41a63a: ab12         	add	r3, sp, #0x48
  41a63c: 4618         	mov	r0, r3
  41a63e: f39b f969    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b2d2
  41a642: e7ff         	b	0x41a644 <WeaponManager::updateStep(float)+0x67c> @ imm = #-0x2
  41a644: ab04         	add	r3, sp, #0x10
  41a646: 4618         	mov	r0, r3
  41a648: f36f fed8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fdb0
  41a64c: e7ff         	b	0x41a64e <WeaponManager::updateStep(float)+0x686> @ imm = #-0x2
  41a64e: ab06         	add	r3, sp, #0x18
  41a650: 4618         	mov	r0, r3
  41a652: f39b f95f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b2be
  41a656: f36d fd29    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36da52
  41a65a: ab14         	add	r3, sp, #0x50
  41a65c: 4618         	mov	r0, r3
  41a65e: f39b f959    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b2b2
  41a662: e7ff         	b	0x41a664 <WeaponManager::updateStep(float)+0x69c> @ imm = #-0x2
  41a664: ab12         	add	r3, sp, #0x48
  41a666: 4618         	mov	r0, r3
  41a668: f36f fec8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fd90
  41a66c: f36d fd1e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36da3c
  41a670: ab14         	add	r3, sp, #0x50
  41a672: 4618         	mov	r0, r3
  41a674: f39b f94e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b29c
  41a678: f36d fd18    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36da30
  41a67c: b018         	add	sp, #0x60
  41a67e: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
  ; --- end of code (Ghidra body ends at 0x41a681); words below are literal-pool data ---
  41a682: bf00         	nop
  41a684: f3af 8000    	nop.w
  41a688: 0000         	movs	r0, r0
  41a68a: 0000         	movs	r0, r0
  41a68c: 4000         	ands	r0, r0
  41a68e: c07f         	stm	r0!, {r0, r1, r2, r3, r4, r5, r6}
  41a690: 8a32         	ldrh	r2, [r6, #0x10]
  41a692: 0051         	lsls	r1, r2, #0x1
  41a694: dcec         	bgt	0x41a670 <WeaponManager::updateStep(float)+0x6a8> @ imm = #-0x28
  41a696: ffff 18fa    	<unknown>
  41a69a: 003c         	movs	r4, r7
  41a69c: 18c4         	adds	r4, r0, r3
  41a69e: 003c         	movs	r4, r7
  41a6a0: 17f4         	asrs	r4, r6, #0x1f
  41a6a2: 003c         	movs	r4, r7
  41a6a4: d784         	bvc	0x41a5b0 <WeaponManager::updateStep(float)+0x5e8> @ imm = #-0xf8
  41a6a6: ffff df04    	<unknown>
  41a6aa: ffff 16ca    	<unknown>
  41a6ae: 003c         	movs	r4, r7

// ==== WeaponManager::updateWeaponsStep
//      file offset 0x41a6b0 (= ELF address; Ghidra 0x42a6b0), 488 bytes, Thumb-2
  41a6b0: b510         	push	{r4, lr}
  41a6b2: b086         	sub	sp, #0x18
  41a6b4: 9001         	str	r0, [sp, #0x4]
  41a6b6: 9100         	str	r1, [sp]
  41a6b8: 2300         	movs	r3, #0x0
  41a6ba: 9303         	str	r3, [sp, #0xc]
  41a6bc: 2300         	movs	r3, #0x0
  41a6be: 9304         	str	r3, [sp, #0x10]
  41a6c0: 9b01         	ldr	r3, [sp, #0x4]
  41a6c2: 695b         	ldr	r3, [r3, #0x14]
  41a6c4: 2b00         	cmp	r3, #0x0
  41a6c6: d009         	beq	0x41a6dc <WeaponManager::updateWeaponsStep(float)+0x2c> @ imm = #0x12
  41a6c8: 9b01         	ldr	r3, [sp, #0x4]
  41a6ca: 695b         	ldr	r3, [r3, #0x14]
  41a6cc: 4618         	mov	r0, r3
  41a6ce: f179 facd    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x17959a
  41a6d2: 4603         	mov	r3, r0
  41a6d4: 2b00         	cmp	r3, #0x0
  41a6d6: d001         	beq	0x41a6dc <WeaponManager::updateWeaponsStep(float)+0x2c> @ imm = #0x2
  41a6d8: 2301         	movs	r3, #0x1
  41a6da: e000         	b	0x41a6de <WeaponManager::updateWeaponsStep(float)+0x2e> @ imm = #0x0
  41a6dc: 2300         	movs	r3, #0x0
  41a6de: 2b00         	cmp	r3, #0x0
  41a6e0: f000 80d3    	beq.w	0x41a88a <WeaponManager::updateWeaponsStep(float)+0x1da> @ imm = #0x1a6
  41a6e4: 9b01         	ldr	r3, [sp, #0x4]
  41a6e6: 695b         	ldr	r3, [r3, #0x14]
  41a6e8: 695b         	ldr	r3, [r3, #0x14]
  41a6ea: 9303         	str	r3, [sp, #0xc]
  41a6ec: 9b01         	ldr	r3, [sp, #0x4]
  41a6ee: 695b         	ldr	r3, [r3, #0x14]
  41a6f0: 695b         	ldr	r3, [r3, #0x14]
  41a6f2: 2b00         	cmp	r3, #0x0
  41a6f4: d005         	beq	0x41a702 <WeaponManager::updateWeaponsStep(float)+0x52> @ imm = #0xa
  41a6f6: 9b01         	ldr	r3, [sp, #0x4]
  41a6f8: 695b         	ldr	r3, [r3, #0x14]
  41a6fa: 695b         	ldr	r3, [r3, #0x14]
  41a6fc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41a700: e000         	b	0x41a704 <WeaponManager::updateWeaponsStep(float)+0x54> @ imm = #0x0
  41a702: 2300         	movs	r3, #0x0
  41a704: 9304         	str	r3, [sp, #0x10]
  41a706: e0b5         	b	0x41a874 <WeaponManager::updateWeaponsStep(float)+0x1c4> @ imm = #0x16a
  41a708: 9803         	ldr	r0, [sp, #0xc]
  41a70a: f6e3 ff93    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x11c0da
  41a70e: 4603         	mov	r3, r0
  41a710: 9305         	str	r3, [sp, #0x14]
  41a712: 9b05         	ldr	r3, [sp, #0x14]
  41a714: ed93 7a47    	vldr	s14, [r3, #284]
  41a718: eddd 7a00    	vldr	s15, [sp]
  41a71c: ee77 7a27    	vadd.f32	s15, s14, s15
  41a720: 9b05         	ldr	r3, [sp, #0x14]
  41a722: edc3 7a47    	vstr	s15, [r3, #284]
  41a726: 9b05         	ldr	r3, [sp, #0x14]
  41a728: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  41a72c: 3338         	adds	r3, #0x38
  41a72e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41a730: f2bc fcc2    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2bc984
  41a734: ec41 0b17    	vmov	d7, r0, r1
  41a738: eeb0 6bc7    	vabs.f64	d6, d7
  41a73c: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  41a740: eeb4 6bc7    	vcmpe.f64	d6, d7
  41a744: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a748: d50f         	bpl	0x41a76a <WeaponManager::updateWeaponsStep(float)+0xba> @ imm = #0x1e
  41a74a: 9b05         	ldr	r3, [sp, #0x14]
  41a74c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  41a750: ed93 7b18    	vldr	d7, [r3, #96]
  41a754: eeb0 6bc7    	vabs.f64	d6, d7
  41a758: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  41a75c: eeb4 6bc7    	vcmpe.f64	d6, d7
  41a760: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a764: d501         	bpl	0x41a76a <WeaponManager::updateWeaponsStep(float)+0xba> @ imm = #0x2
  41a766: 2301         	movs	r3, #0x1
  41a768: e000         	b	0x41a76c <WeaponManager::updateWeaponsStep(float)+0xbc> @ imm = #0x0
  41a76a: 2300         	movs	r3, #0x0
  41a76c: 2b00         	cmp	r3, #0x0
  41a76e: d00a         	beq	0x41a786 <WeaponManager::updateWeaponsStep(float)+0xd6> @ imm = #0x14
  41a770: 9b05         	ldr	r3, [sp, #0x14]
  41a772: ed93 7a46    	vldr	s14, [r3, #280]
  41a776: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41a77a: ee77 7a27    	vadd.f32	s15, s14, s15
  41a77e: 9b05         	ldr	r3, [sp, #0x14]
  41a780: edc3 7a46    	vstr	s15, [r3, #280]
  41a784: e004         	b	0x41a790 <WeaponManager::updateWeaponsStep(float)+0xe0> @ imm = #0x8
  41a786: 9b05         	ldr	r3, [sp, #0x14]
  41a788: f04f 0200    	mov.w	r2, #0x0
  41a78c: f8c3 2118    	str.w	r2, [r3, #0x118]
  41a790: 9b05         	ldr	r3, [sp, #0x14]
  41a792: ed93 7a46    	vldr	s14, [r3, #280]
  41a796: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  41a79a: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a79e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a7a2: dc16         	bgt	0x41a7d2 <WeaponManager::updateWeaponsStep(float)+0x122> @ imm = #0x2c
  41a7a4: 9b05         	ldr	r3, [sp, #0x14]
  41a7a6: 681b         	ldr	r3, [r3]
  41a7a8: f503 73f6    	add.w	r3, r3, #0x1ec
  41a7ac: 681b         	ldr	r3, [r3]
  41a7ae: 9805         	ldr	r0, [sp, #0x14]
  41a7b0: 4798         	blx	r3
  41a7b2: 4603         	mov	r3, r0
  41a7b4: f083 0301    	eor	r3, r3, #0x1
  41a7b8: b2db         	uxtb	r3, r3
  41a7ba: 2b00         	cmp	r3, #0x0
  41a7bc: d109         	bne	0x41a7d2 <WeaponManager::updateWeaponsStep(float)+0x122> @ imm = #0x12
  41a7be: 9b05         	ldr	r3, [sp, #0x14]
  41a7c0: ed93 7a47    	vldr	s14, [r3, #284]
  41a7c4: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  41a7c8: eeb4 7ae7    	vcmpe.f32	s14, s15
  41a7cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a7d0: dd01         	ble	0x41a7d6 <WeaponManager::updateWeaponsStep(float)+0x126> @ imm = #0x2
  41a7d2: 2301         	movs	r3, #0x1
  41a7d4: e000         	b	0x41a7d8 <WeaponManager::updateWeaponsStep(float)+0x128> @ imm = #0x0
  41a7d6: 2300         	movs	r3, #0x0
  41a7d8: 2b00         	cmp	r3, #0x0
  41a7da: d036         	beq	0x41a84a <WeaponManager::updateWeaponsStep(float)+0x19a> @ imm = #0x6c
  41a7dc: 9b05         	ldr	r3, [sp, #0x14]
  41a7de: f04f 0200    	mov.w	r2, #0x0
  41a7e2: f8c3 2118    	str.w	r2, [r3, #0x118]
  41a7e6: 9b05         	ldr	r3, [sp, #0x14]
  41a7e8: f04f 0200    	mov.w	r2, #0x0
  41a7ec: f8c3 211c    	str.w	r2, [r3, #0x11c]
  41a7f0: 9b05         	ldr	r3, [sp, #0x14]
  41a7f2: 681b         	ldr	r3, [r3]
  41a7f4: f503 73e2    	add.w	r3, r3, #0x1c4
  41a7f8: 681b         	ldr	r3, [r3]
  41a7fa: 9805         	ldr	r0, [sp, #0x14]
  41a7fc: 4798         	blx	r3
  41a7fe: 9b05         	ldr	r3, [sp, #0x14]
  41a800: 681b         	ldr	r3, [r3]
  41a802: f503 73de    	add.w	r3, r3, #0x1bc
  41a806: 681b         	ldr	r3, [r3]
  41a808: 9805         	ldr	r0, [sp, #0x14]
  41a80a: 4798         	blx	r3
  41a80c: 9b01         	ldr	r3, [sp, #0x4]
  41a80e: 695c         	ldr	r4, [r3, #0x14]
  41a810: 9b05         	ldr	r3, [sp, #0x14]
  41a812: 681b         	ldr	r3, [r3]
  41a814: f503 73fe    	add.w	r3, r3, #0x1fc
  41a818: 681b         	ldr	r3, [r3]
  41a81a: aa02         	add	r2, sp, #0x8
  41a81c: 4610         	mov	r0, r2
  41a81e: 9905         	ldr	r1, [sp, #0x14]
  41a820: 4798         	blx	r3
  41a822: ab02         	add	r3, sp, #0x8
  41a824: 4620         	mov	r0, r4
  41a826: 4619         	mov	r1, r3
  41a828: f17a fd46    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x17aa8c
  41a82c: ab02         	add	r3, sp, #0x8
  41a82e: 4618         	mov	r0, r3
  41a830: f39b f870    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b0e0
  41a834: f1c5 ff3c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c5e78
  41a838: 4603         	mov	r3, r0
  41a83a: 4618         	mov	r0, r3
  41a83c: 4b14         	ldr	r3, [pc, #0x50]         @ 0x41a890 <WeaponManager::updateWeaponsStep(float)+0x1e0>
  41a83e: 447b         	add	r3, pc
  41a840: 4619         	mov	r1, r3
  41a842: 9a05         	ldr	r2, [sp, #0x14]
  41a844: f1c6 f972    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c62e4
  41a848: e009         	b	0x41a85e <WeaponManager::updateWeaponsStep(float)+0x1ae> @ imm = #0x12
  41a84a: f1c5 ff31    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c5e62
  41a84e: 4603         	mov	r3, r0
  41a850: 4618         	mov	r0, r3
  41a852: 4b10         	ldr	r3, [pc, #0x40]         @ 0x41a894 <WeaponManager::updateWeaponsStep(float)+0x1e4>
  41a854: 447b         	add	r3, pc
  41a856: 4619         	mov	r1, r3
  41a858: 9a05         	ldr	r2, [sp, #0x14]
  41a85a: f1c6 f967    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c62ce
  41a85e: 9b04         	ldr	r3, [sp, #0x10]
  41a860: 9303         	str	r3, [sp, #0xc]
  41a862: 9b04         	ldr	r3, [sp, #0x10]
  41a864: 2b00         	cmp	r3, #0x0
  41a866: d003         	beq	0x41a870 <WeaponManager::updateWeaponsStep(float)+0x1c0> @ imm = #0x6
  41a868: 9b04         	ldr	r3, [sp, #0x10]
  41a86a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41a86e: e000         	b	0x41a872 <WeaponManager::updateWeaponsStep(float)+0x1c2> @ imm = #0x0
  41a870: 2300         	movs	r3, #0x0
  41a872: 9304         	str	r3, [sp, #0x10]
  41a874: 9b03         	ldr	r3, [sp, #0xc]
  41a876: 2b00         	cmp	r3, #0x0
  41a878: f47f af46    	bne.w	0x41a708 <WeaponManager::updateWeaponsStep(float)+0x58> @ imm = #-0x174
  41a87c: e005         	b	0x41a88a <WeaponManager::updateWeaponsStep(float)+0x1da> @ imm = #0xa
  41a87e: ab02         	add	r3, sp, #0x8
  41a880: 4618         	mov	r0, r3
  41a882: f39b f847    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b08e
  41a886: f36d fc11    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d822
  41a88a: b006         	add	sp, #0x18
  41a88c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41a88d); words below are literal-pool data ---
  41a88e: bf00         	nop
  41a890: 1196         	asrs	r6, r2, #0x6
  41a892: 003c         	movs	r4, r7
  41a894: 1198         	asrs	r0, r3, #0x6
  41a896: 003c         	movs	r4, r7

// ==== WeaponManager::setSpawnPeriod
//      file offset 0x41a898 (= ELF address; Ghidra 0x42a898), 256 bytes, Thumb-2
  41a898: b510         	push	{r4, lr}
  41a89a: b08a         	sub	sp, #0x28
  41a89c: 9003         	str	r0, [sp, #0xc]
  41a89e: 9102         	str	r1, [sp, #0x8]
  41a8a0: 9201         	str	r2, [sp, #0x4]
  41a8a2: ab05         	add	r3, sp, #0x14
  41a8a4: 4618         	mov	r0, r3
  41a8a6: f36f fda5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36fb4a
  41a8aa: aa06         	add	r2, sp, #0x18
  41a8ac: ab05         	add	r3, sp, #0x14
  41a8ae: 4610         	mov	r0, r2
  41a8b0: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x41a990 <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0xf8>
  41a8b2: 447a         	add	r2, pc
  41a8b4: 4611         	mov	r1, r2
  41a8b6: 461a         	mov	r2, r3
  41a8b8: f39c f8d2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c1a4
  41a8bc: ab06         	add	r3, sp, #0x18
  41a8be: 9802         	ldr	r0, [sp, #0x8]
  41a8c0: 4619         	mov	r1, r3
  41a8c2: f179 fb15    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x17962a
  41a8c6: 4603         	mov	r3, r0
  41a8c8: 9307         	str	r3, [sp, #0x1c]
  41a8ca: ab06         	add	r3, sp, #0x18
  41a8cc: 4618         	mov	r0, r3
  41a8ce: f39b f821    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39b042
  41a8d2: ab05         	add	r3, sp, #0x14
  41a8d4: 4618         	mov	r0, r3
  41a8d6: f36f fd91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fb22
  41a8da: 9b07         	ldr	r3, [sp, #0x1c]
  41a8dc: 2b00         	cmp	r3, #0x0
  41a8de: d016         	beq	0x41a90e <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0x76> @ imm = #0x2c
  41a8e0: 9807         	ldr	r0, [sp, #0x1c]
  41a8e2: f17f f821    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17f042
  41a8e6: 4603         	mov	r3, r0
  41a8e8: 4618         	mov	r0, r3
  41a8ea: f7fe fa0b    	bl	0x418d04 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x284> @ imm = #-0x1bea
  41a8ee: ec41 0b17    	vmov	d7, r0, r1
  41a8f2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41a8f6: edcd 7a08    	vstr	s15, [sp, #32]
  41a8fa: eddd 7a08    	vldr	s15, [sp, #32]
  41a8fe: eef5 7ac0    	vcmpe.f32	s15, #0
  41a902: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41a906: dc00         	bgt	0x41a90a <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0x72> @ imm = #0x0
  41a908: e001         	b	0x41a90e <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0x76> @ imm = #0x2
  41a90a: 9b08         	ldr	r3, [sp, #0x20]
  41a90c: 9301         	str	r3, [sp, #0x4]
  41a90e: 9b03         	ldr	r3, [sp, #0xc]
  41a910: ed93 7a0c    	vldr	s14, [r3, #48]
  41a914: eddd 7a01    	vldr	s15, [sp, #4]
  41a918: ee77 7a27    	vadd.f32	s15, s14, s15
  41a91c: edcd 7a09    	vstr	s15, [sp, #36]
  41a920: 9809         	ldr	r0, [sp, #0x24]
  41a922: f6c2 f9af    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x13dca2
  41a926: 4604         	mov	r4, r0
  41a928: ab05         	add	r3, sp, #0x14
  41a92a: 4618         	mov	r0, r3
  41a92c: f36f fd62    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36fac4
  41a930: aa06         	add	r2, sp, #0x18
  41a932: ab05         	add	r3, sp, #0x14
  41a934: 4610         	mov	r0, r2
  41a936: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x41a994 <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0xfc>
  41a938: 447a         	add	r2, pc
  41a93a: 4611         	mov	r1, r2
  41a93c: 461a         	mov	r2, r3
  41a93e: f39c f88f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c11e
  41a942: ab06         	add	r3, sp, #0x18
  41a944: 9802         	ldr	r0, [sp, #0x8]
  41a946: 4621         	mov	r1, r4
  41a948: 461a         	mov	r2, r3
  41a94a: f179 fff5    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x179fea
  41a94e: ab06         	add	r3, sp, #0x18
  41a950: 4618         	mov	r0, r3
  41a952: f39a ffdf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39afbe
  41a956: ab05         	add	r3, sp, #0x14
  41a958: 4618         	mov	r0, r3
  41a95a: f36f fd4f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fa9e
  41a95e: e015         	b	0x41a98c <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0xf4> @ imm = #0x2a
  41a960: ab06         	add	r3, sp, #0x18
  41a962: 4618         	mov	r0, r3
  41a964: f39a ffd6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39afac
  41a968: e7ff         	b	0x41a96a <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0xd2> @ imm = #-0x2
  41a96a: ab05         	add	r3, sp, #0x14
  41a96c: 4618         	mov	r0, r3
  41a96e: f36f fd45    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fa8a
  41a972: f36d fb9b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d736
  41a976: ab06         	add	r3, sp, #0x18
  41a978: 4618         	mov	r0, r3
  41a97a: f39a ffcb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39af96
  41a97e: e7ff         	b	0x41a980 <WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float)+0xe8> @ imm = #-0x2
  41a980: ab05         	add	r3, sp, #0x14
  41a982: 4618         	mov	r0, r3
  41a984: f36f fd3a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36fa74
  41a988: f36d fb90    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d720
  41a98c: b00a         	add	sp, #0x28
  41a98e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41a98f); words below are literal-pool data ---
  41a990: 114a         	asrs	r2, r1, #0x5
  41a992: 003c         	movs	r4, r7
  41a994: 1088         	asrs	r0, r1, #0x2
  41a996: 003c         	movs	r4, r7

// ==== WeaponManager::addItem
//      file offset 0x41a998 (= ELF address; Ghidra 0x42a998), 352 bytes, Thumb-2
  41a998: b570         	push	{r4, r5, r6, lr}
  41a99a: b086         	sub	sp, #0x18
  41a99c: 9001         	str	r0, [sp, #0x4]
  41a99e: 9100         	str	r1, [sp]
  41a9a0: 4c51         	ldr	r4, [pc, #0x144]        @ 0x41aae8 <WeaponManager::addItem(Item*)+0x150>
  41a9a2: 447c         	add	r4, pc
  41a9a4: 9b00         	ldr	r3, [sp]
  41a9a6: 2b00         	cmp	r3, #0x0
  41a9a8: d100         	bne	0x41a9ac <WeaponManager::addItem(Item*)+0x14> @ imm = #0x0
  41a9aa: e09a         	b	0x41aae2 <WeaponManager::addItem(Item*)+0x14a> @ imm = #0x134
  41a9ac: 9b01         	ldr	r3, [sp, #0x4]
  41a9ae: 6a9b         	ldr	r3, [r3, #0x28]
  41a9b0: 1c5a         	adds	r2, r3, #0x1
  41a9b2: 9b01         	ldr	r3, [sp, #0x4]
  41a9b4: 629a         	str	r2, [r3, #0x28]
  41a9b6: 9b00         	ldr	r3, [sp]
  41a9b8: 681b         	ldr	r3, [r3]
  41a9ba: f503 7301    	add.w	r3, r3, #0x204
  41a9be: 681b         	ldr	r3, [r3]
  41a9c0: aa04         	add	r2, sp, #0x10
  41a9c2: 4610         	mov	r0, r2
  41a9c4: 9900         	ldr	r1, [sp]
  41a9c6: 4798         	blx	r3
  41a9c8: ab04         	add	r3, sp, #0x10
  41a9ca: 4618         	mov	r0, r3
  41a9cc: f39a fc98    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x39a930
  41a9d0: 4602         	mov	r2, r0
  41a9d2: 9b01         	ldr	r3, [sp, #0x4]
  41a9d4: 6a9b         	ldr	r3, [r3, #0x28]
  41a9d6: 4945         	ldr	r1, [pc, #0x114]        @ 0x41aaec <WeaponManager::addItem(Item*)+0x154>
  41a9d8: 4479         	add	r1, pc
  41a9da: 4608         	mov	r0, r1
  41a9dc: 4611         	mov	r1, r2
  41a9de: 461a         	mov	r2, r3
  41a9e0: f17f f896    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x17f12c
  41a9e4: 4603         	mov	r3, r0
  41a9e6: 9305         	str	r3, [sp, #0x14]
  41a9e8: ab04         	add	r3, sp, #0x10
  41a9ea: 4618         	mov	r0, r3
  41a9ec: f39a ff92    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39af24
  41a9f0: 9b00         	ldr	r3, [sp]
  41a9f2: 681b         	ldr	r3, [r3]
  41a9f4: f503 73fc    	add.w	r3, r3, #0x1f8
  41a9f8: 681d         	ldr	r5, [r3]
  41a9fa: 9805         	ldr	r0, [sp, #0x14]
  41a9fc: f17e ff94    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17ef28
  41aa00: 4606         	mov	r6, r0
  41aa02: ab03         	add	r3, sp, #0xc
  41aa04: 4618         	mov	r0, r3
  41aa06: f36f fcf5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f9ea
  41aa0a: aa04         	add	r2, sp, #0x10
  41aa0c: ab03         	add	r3, sp, #0xc
  41aa0e: 4610         	mov	r0, r2
  41aa10: 4631         	mov	r1, r6
  41aa12: 461a         	mov	r2, r3
  41aa14: f39c f824    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39c048
  41aa18: ab04         	add	r3, sp, #0x10
  41aa1a: 9800         	ldr	r0, [sp]
  41aa1c: 4619         	mov	r1, r3
  41aa1e: 47a8         	blx	r5
  41aa20: ab04         	add	r3, sp, #0x10
  41aa22: 4618         	mov	r0, r3
  41aa24: f39a ff76    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39aeec
  41aa28: ab03         	add	r3, sp, #0xc
  41aa2a: 4618         	mov	r0, r3
  41aa2c: f36f fce6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f9cc
  41aa30: 9b00         	ldr	r3, [sp]
  41aa32: 681b         	ldr	r3, [r3]
  41aa34: f503 7309    	add.w	r3, r3, #0x224
  41aa38: 681b         	ldr	r3, [r3]
  41aa3a: 9800         	ldr	r0, [sp]
  41aa3c: 2100         	movs	r1, #0x0
  41aa3e: 4798         	blx	r3
  41aa40: 9b00         	ldr	r3, [sp]
  41aa42: 681b         	ldr	r3, [r3]
  41aa44: f503 7303    	add.w	r3, r3, #0x20c
  41aa48: 681d         	ldr	r5, [r3]
  41aa4a: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x41aaf0 <WeaponManager::addItem(Item*)+0x158>
  41aa4c: 58e3         	ldr	r3, [r4, r3]
  41aa4e: 681b         	ldr	r3, [r3]
  41aa50: 681b         	ldr	r3, [r3]
  41aa52: f503 7315    	add.w	r3, r3, #0x254
  41aa56: 681b         	ldr	r3, [r3]
  41aa58: 4a25         	ldr	r2, [pc, #0x94]         @ 0x41aaf0 <WeaponManager::addItem(Item*)+0x158>
  41aa5a: 58a2         	ldr	r2, [r4, r2]
  41aa5c: 6812         	ldr	r2, [r2]
  41aa5e: 4610         	mov	r0, r2
  41aa60: 4798         	blx	r3
  41aa62: 4603         	mov	r3, r0
  41aa64: 9800         	ldr	r0, [sp]
  41aa66: 4619         	mov	r1, r3
  41aa68: 47a8         	blx	r5
  41aa6a: f1c5 fe21    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c5c42
  41aa6e: 4603         	mov	r3, r0
  41aa70: 4618         	mov	r0, r3
  41aa72: 4b20         	ldr	r3, [pc, #0x80]         @ 0x41aaf4 <WeaponManager::addItem(Item*)+0x15c>
  41aa74: 447b         	add	r3, pc
  41aa76: 4619         	mov	r1, r3
  41aa78: 9a00         	ldr	r2, [sp]
  41aa7a: f1c6 f857    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c60ae
  41aa7e: 9b01         	ldr	r3, [sp, #0x4]
  41aa80: 695c         	ldr	r4, [r3, #0x14]
  41aa82: 9b00         	ldr	r3, [sp]
  41aa84: 681b         	ldr	r3, [r3]
  41aa86: f503 73fe    	add.w	r3, r3, #0x1fc
  41aa8a: 681b         	ldr	r3, [r3]
  41aa8c: aa04         	add	r2, sp, #0x10
  41aa8e: 4610         	mov	r0, r2
  41aa90: 9900         	ldr	r1, [sp]
  41aa92: 4798         	blx	r3
  41aa94: ab04         	add	r3, sp, #0x10
  41aa96: 4620         	mov	r0, r4
  41aa98: 9900         	ldr	r1, [sp]
  41aa9a: 461a         	mov	r2, r3
  41aa9c: f179 ff4c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x179e98
  41aaa0: ab04         	add	r3, sp, #0x10
  41aaa2: 4618         	mov	r0, r3
  41aaa4: f39a ff36    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ae6c
  41aaa8: 9801         	ldr	r0, [sp, #0x4]
  41aaaa: 9900         	ldr	r1, [sp]
  41aaac: 2201         	movs	r2, #0x1
  41aaae: f000 f903    	bl	0x41acb8 <WeaponManager::addItemToWorld(Item*, bool)> @ imm = #0x206
  41aab2: e016         	b	0x41aae2 <WeaponManager::addItem(Item*)+0x14a> @ imm = #0x2c
  41aab4: ab04         	add	r3, sp, #0x10
  41aab6: 4618         	mov	r0, r3
  41aab8: f39a ff2c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ae58
  41aabc: f36d faf6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d5ec
  41aac0: ab04         	add	r3, sp, #0x10
  41aac2: 4618         	mov	r0, r3
  41aac4: f39a ff26    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ae4c
  41aac8: e7ff         	b	0x41aaca <WeaponManager::addItem(Item*)+0x132> @ imm = #-0x2
  41aaca: ab03         	add	r3, sp, #0xc
  41aacc: 4618         	mov	r0, r3
  41aace: f36f fc95    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f92a
  41aad2: f36d faeb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d5d6
  41aad6: ab04         	add	r3, sp, #0x10
  41aad8: 4618         	mov	r0, r3
  41aada: f39a ff1b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ae36
  41aade: f36d fae5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d5ca
  41aae2: b006         	add	sp, #0x18
  41aae4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x41aae5); words below are literal-pool data ---
  41aae6: bf00         	nop
  41aae8: 8066         	strh	r6, [r4, #0x2]
  41aaea: 0051         	lsls	r1, r2, #0x1
  41aaec: 102c         	asrs	r4, r5, #0x20
  41aaee: 003c         	movs	r4, r7
  41aaf0: d784         	bvc	0x41a9fc <WeaponManager::addItem(Item*)+0x64> @ imm = #-0xf8
  41aaf2: ffff 0f98    	<unknown>
  41aaf6: 003c         	movs	r4, r7

// ==== WeaponManager::itemCreate
//      file offset 0x41aaf8 (= ELF address; Ghidra 0x42aaf8), 26 bytes, Thumb-2
  41aaf8: b500         	push	{lr}
  41aafa: b085         	sub	sp, #0x14
  41aafc: 9001         	str	r0, [sp, #0x4]
  41aafe: 9100         	str	r1, [sp]
  41ab00: 9b00         	ldr	r3, [sp]
  41ab02: 9303         	str	r3, [sp, #0xc]
  41ab04: 9801         	ldr	r0, [sp, #0x4]
  41ab06: 9903         	ldr	r1, [sp, #0xc]
  41ab08: f7ff ff46    	bl	0x41a998 <WeaponManager::addItem(Item*)> @ imm = #-0x174
  41ab0c: b005         	add	sp, #0x14
  41ab0e: f85d fb04    	ldr	pc, [sp], #4

// ==== WeaponManager::itemRemove
//      file offset 0x41ab14 (= ELF address; Ghidra 0x42ab14), 26 bytes, Thumb-2
  41ab14: b500         	push	{lr}
  41ab16: b085         	sub	sp, #0x14
  41ab18: 9001         	str	r0, [sp, #0x4]
  41ab1a: 9100         	str	r1, [sp]
  41ab1c: 9b00         	ldr	r3, [sp]
  41ab1e: 9303         	str	r3, [sp, #0xc]
  41ab20: 9801         	ldr	r0, [sp, #0x4]
  41ab22: 9903         	ldr	r1, [sp, #0xc]
  41ab24: f000 f804    	bl	0x41ab30 <WeaponManager::removeItem(Item*)> @ imm = #0x8
  41ab28: b005         	add	sp, #0x14
  41ab2a: f85d fb04    	ldr	pc, [sp], #4

// ==== WeaponManager::removeItem
//      file offset 0x41ab30 (= ELF address; Ghidra 0x42ab30), 128 bytes, Thumb-2
  41ab30: b500         	push	{lr}
  41ab32: b085         	sub	sp, #0x14
  41ab34: 9001         	str	r0, [sp, #0x4]
  41ab36: 9100         	str	r1, [sp]
  41ab38: 9b00         	ldr	r3, [sp]
  41ab3a: 2b00         	cmp	r3, #0x0
  41ab3c: d100         	bne	0x41ab40 <WeaponManager::removeItem(Item*)+0x10> @ imm = #0x0
  41ab3e: e032         	b	0x41aba6 <WeaponManager::removeItem(Item*)+0x76> @ imm = #0x64
  41ab40: 9b00         	ldr	r3, [sp]
  41ab42: 681b         	ldr	r3, [r3]
  41ab44: f503 7308    	add.w	r3, r3, #0x220
  41ab48: 681b         	ldr	r3, [r3]
  41ab4a: 9800         	ldr	r0, [sp]
  41ab4c: 4798         	blx	r3
  41ab4e: 4603         	mov	r3, r0
  41ab50: 2b00         	cmp	r3, #0x0
  41ab52: d000         	beq	0x41ab56 <WeaponManager::removeItem(Item*)+0x26> @ imm = #0x0
  41ab54: e027         	b	0x41aba6 <WeaponManager::removeItem(Item*)+0x76> @ imm = #0x4e
  41ab56: 9b00         	ldr	r3, [sp]
  41ab58: 681b         	ldr	r3, [r3]
  41ab5a: f503 73fe    	add.w	r3, r3, #0x1fc
  41ab5e: 681b         	ldr	r3, [r3]
  41ab60: aa02         	add	r2, sp, #0x8
  41ab62: 4610         	mov	r0, r2
  41ab64: 9900         	ldr	r1, [sp]
  41ab66: 4798         	blx	r3
  41ab68: ab02         	add	r3, sp, #0x8
  41ab6a: 4618         	mov	r0, r3
  41ab6c: f17e ff66    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x17eecc
  41ab70: 4603         	mov	r3, r0
  41ab72: 9303         	str	r3, [sp, #0xc]
  41ab74: ab02         	add	r3, sp, #0x8
  41ab76: 4618         	mov	r0, r3
  41ab78: f39a fecc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ad98
  41ab7c: f1c5 fd98    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c5b30
  41ab80: 4603         	mov	r3, r0
  41ab82: 4618         	mov	r0, r3
  41ab84: 4b09         	ldr	r3, [pc, #0x24]         @ 0x41abac <WeaponManager::removeItem(Item*)+0x7c>
  41ab86: 447b         	add	r3, pc
  41ab88: 4619         	mov	r1, r3
  41ab8a: 9a03         	ldr	r2, [sp, #0xc]
  41ab8c: f1c5 ffce    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c5f9c
  41ab90: 9801         	ldr	r0, [sp, #0x4]
  41ab92: 9900         	ldr	r1, [sp]
  41ab94: f000 f920    	bl	0x41add8 <WeaponManager::removeItemFromWorld(Item*)> @ imm = #0x240
  41ab98: e005         	b	0x41aba6 <WeaponManager::removeItem(Item*)+0x76> @ imm = #0xa
  41ab9a: ab02         	add	r3, sp, #0x8
  41ab9c: 4618         	mov	r0, r3
  41ab9e: f39a feb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ad72
  41aba2: f36d fa83    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d506
  41aba6: b005         	add	sp, #0x14
  41aba8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x41abab); words below are literal-pool data ---
  41abac: 0e96         	lsrs	r6, r2, #0x1a
  41abae: 003c         	movs	r4, r7

// ==== WeaponManager::peerWeaponCreated
//      file offset 0x41abb0 (= ELF address; Ghidra 0x42abb0), 128 bytes, Thumb-2
  41abb0: b510         	push	{r4, lr}
  41abb2: b084         	sub	sp, #0x10
  41abb4: 9001         	str	r0, [sp, #0x4]
  41abb6: 9100         	str	r1, [sp]
  41abb8: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x41ac28 <WeaponManager::peerWeaponCreated(cocos2d::CCObject*)+0x78>
  41abba: 447a         	add	r2, pc
  41abbc: 9b00         	ldr	r3, [sp]
  41abbe: 9303         	str	r3, [sp, #0xc]
  41abc0: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x41ac2c <WeaponManager::peerWeaponCreated(cocos2d::CCObject*)+0x7c>
  41abc2: 58d3         	ldr	r3, [r2, r3]
  41abc4: 681c         	ldr	r4, [r3]
  41abc6: 9b03         	ldr	r3, [sp, #0xc]
  41abc8: 681b         	ldr	r3, [r3]
  41abca: f503 73fe    	add.w	r3, r3, #0x1fc
  41abce: 681b         	ldr	r3, [r3]
  41abd0: aa02         	add	r2, sp, #0x8
  41abd2: 4610         	mov	r0, r2
  41abd4: 9903         	ldr	r1, [sp, #0xc]
  41abd6: 4798         	blx	r3
  41abd8: ab02         	add	r3, sp, #0x8
  41abda: 4620         	mov	r0, r4
  41abdc: 4619         	mov	r1, r3
  41abde: f179 f987    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x17930e
  41abe2: 4603         	mov	r3, r0
  41abe4: 2b00         	cmp	r3, #0x0
  41abe6: bf14         	ite	ne
  41abe8: 2300         	movne	r3, #0x0
  41abea: 2301         	moveq	r3, #0x1
  41abec: b2dc         	uxtb	r4, r3
  41abee: ab02         	add	r3, sp, #0x8
  41abf0: 4618         	mov	r0, r3
  41abf2: f39a fe8f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ad1e
  41abf6: 2c00         	cmp	r4, #0x0
  41abf8: d013         	beq	0x41ac22 <WeaponManager::peerWeaponCreated(cocos2d::CCObject*)+0x72> @ imm = #0x26
  41abfa: 9b03         	ldr	r3, [sp, #0xc]
  41abfc: 681b         	ldr	r3, [r3]
  41abfe: f503 7309    	add.w	r3, r3, #0x224
  41ac02: 681b         	ldr	r3, [r3]
  41ac04: 9803         	ldr	r0, [sp, #0xc]
  41ac06: 2100         	movs	r1, #0x0
  41ac08: 4798         	blx	r3
  41ac0a: 9801         	ldr	r0, [sp, #0x4]
  41ac0c: 9903         	ldr	r1, [sp, #0xc]
  41ac0e: 2200         	movs	r2, #0x0
  41ac10: f000 f852    	bl	0x41acb8 <WeaponManager::addItemToWorld(Item*, bool)> @ imm = #0xa4
  41ac14: e005         	b	0x41ac22 <WeaponManager::peerWeaponCreated(cocos2d::CCObject*)+0x72> @ imm = #0xa
  41ac16: ab02         	add	r3, sp, #0x8
  41ac18: 4618         	mov	r0, r3
  41ac1a: f39a fe7b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39acf6
  41ac1e: f36d fa45    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d48a
  41ac22: b004         	add	sp, #0x10
  41ac24: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41ac25); words below are literal-pool data ---
  41ac26: bf00         	nop
  41ac28: 7e4e         	ldrb	r6, [r1, #0x19]
  41ac2a: 0051         	lsls	r1, r2, #0x1
  41ac2c: dcec         	bgt	0x41ac08 <WeaponManager::peerWeaponCreated(cocos2d::CCObject*)+0x58> @ imm = #-0x28
  41ac2e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== WeaponManager::peerWeaponRemoved
//      file offset 0x41ac30 (= ELF address; Ghidra 0x42ac30), 136 bytes, Thumb-2
  41ac30: b530         	push	{r4, r5, lr}
  41ac32: b087         	sub	sp, #0x1c
  41ac34: 9001         	str	r0, [sp, #0x4]
  41ac36: 9100         	str	r1, [sp]
  41ac38: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x41acb0 <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x80>
  41ac3a: 447a         	add	r2, pc
  41ac3c: 9b00         	ldr	r3, [sp]
  41ac3e: 9304         	str	r3, [sp, #0x10]
  41ac40: 9b04         	ldr	r3, [sp, #0x10]
  41ac42: 2b00         	cmp	r3, #0x0
  41ac44: d100         	bne	0x41ac48 <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x18> @ imm = #0x0
  41ac46: e030         	b	0x41acaa <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x7a> @ imm = #0x60
  41ac48: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x41acb4 <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x84>
  41ac4a: 58d3         	ldr	r3, [r2, r3]
  41ac4c: 681c         	ldr	r4, [r3]
  41ac4e: 9804         	ldr	r0, [sp, #0x10]
  41ac50: f17e fe6a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17ecd4
  41ac54: 4605         	mov	r5, r0
  41ac56: ab02         	add	r3, sp, #0x8
  41ac58: 4618         	mov	r0, r3
  41ac5a: f36f fbcb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f796
  41ac5e: aa03         	add	r2, sp, #0xc
  41ac60: ab02         	add	r3, sp, #0x8
  41ac62: 4610         	mov	r0, r2
  41ac64: 4629         	mov	r1, r5
  41ac66: 461a         	mov	r2, r3
  41ac68: f39b fefa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39bdf4
  41ac6c: ab03         	add	r3, sp, #0xc
  41ac6e: 4620         	mov	r0, r4
  41ac70: 4619         	mov	r1, r3
  41ac72: f179 f93d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x17927a
  41ac76: 4603         	mov	r3, r0
  41ac78: 9305         	str	r3, [sp, #0x14]
  41ac7a: ab03         	add	r3, sp, #0xc
  41ac7c: 4618         	mov	r0, r3
  41ac7e: f39a fe49    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ac92
  41ac82: ab02         	add	r3, sp, #0x8
  41ac84: 4618         	mov	r0, r3
  41ac86: f36f fbb9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f772
  41ac8a: 9801         	ldr	r0, [sp, #0x4]
  41ac8c: 9905         	ldr	r1, [sp, #0x14]
  41ac8e: f000 f8a3    	bl	0x41add8 <WeaponManager::removeItemFromWorld(Item*)> @ imm = #0x146
  41ac92: e00a         	b	0x41acaa <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x7a> @ imm = #0x14
  41ac94: ab03         	add	r3, sp, #0xc
  41ac96: 4618         	mov	r0, r3
  41ac98: f39a fe3c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ac78
  41ac9c: e7ff         	b	0x41ac9e <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x6e> @ imm = #-0x2
  41ac9e: ab02         	add	r3, sp, #0x8
  41aca0: 4618         	mov	r0, r3
  41aca2: f36f fbab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f756
  41aca6: f36d fa01    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d402
  41acaa: b007         	add	sp, #0x1c
  41acac: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41acad); words below are literal-pool data ---
  41acae: bf00         	nop
  41acb0: 7dce         	ldrb	r6, [r1, #0x17]
  41acb2: 0051         	lsls	r1, r2, #0x1
  41acb4: dcec         	bgt	0x41ac90 <WeaponManager::peerWeaponRemoved(cocos2d::CCObject*)+0x60> @ imm = #-0x28
  41acb6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== WeaponManager::addItemToWorld
//      file offset 0x41acb8 (= ELF address; Ghidra 0x42acb8), 288 bytes, Thumb-2
  41acb8: b510         	push	{r4, lr}
  41acba: b08c         	sub	sp, #0x30
  41acbc: 9007         	str	r0, [sp, #0x1c]
  41acbe: 9106         	str	r1, [sp, #0x18]
  41acc0: 4613         	mov	r3, r2
  41acc2: f88d 3017    	strb.w	r3, [sp, #0x17]
  41acc6: 4c41         	ldr	r4, [pc, #0x104]        @ 0x41adcc <WeaponManager::addItemToWorld(Item*, bool)+0x114>
  41acc8: 447c         	add	r4, pc
  41acca: 4b41         	ldr	r3, [pc, #0x104]        @ 0x41add0 <WeaponManager::addItemToWorld(Item*, bool)+0x118>
  41accc: 58e3         	ldr	r3, [r4, r3]
  41acce: 681b         	ldr	r3, [r3]
  41acd0: 681b         	ldr	r3, [r3]
  41acd2: 33cc         	adds	r3, #0xcc
  41acd4: 681b         	ldr	r3, [r3]
  41acd6: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x41add0 <WeaponManager::addItemToWorld(Item*, bool)+0x118>
  41acd8: 58a2         	ldr	r2, [r4, r2]
  41acda: 6812         	ldr	r2, [r2]
  41acdc: 4610         	mov	r0, r2
  41acde: 9906         	ldr	r1, [sp, #0x18]
  41ace0: 2203         	movs	r2, #0x3
  41ace2: 4798         	blx	r3
  41ace4: 9b06         	ldr	r3, [sp, #0x18]
  41ace6: 681b         	ldr	r3, [r3]
  41ace8: 3350         	adds	r3, #0x50
  41acea: 681b         	ldr	r3, [r3]
  41acec: 9a06         	ldr	r2, [sp, #0x18]
  41acee: 4610         	mov	r0, r2
  41acf0: 4798         	blx	r3
  41acf2: 4603         	mov	r3, r0
  41acf4: aa0a         	add	r2, sp, #0x28
  41acf6: 4610         	mov	r0, r2
  41acf8: 4619         	mov	r1, r3
  41acfa: f178 f807    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x17800e
  41acfe: 9b06         	ldr	r3, [sp, #0x18]
  41ad00: 681b         	ldr	r3, [r3]
  41ad02: f503 73f0    	add.w	r3, r3, #0x1e0
  41ad06: 681b         	ldr	r3, [r3]
  41ad08: 9806         	ldr	r0, [sp, #0x18]
  41ad0a: 4798         	blx	r3
  41ad0c: 9b06         	ldr	r3, [sp, #0x18]
  41ad0e: 681b         	ldr	r3, [r3]
  41ad10: 334c         	adds	r3, #0x4c
  41ad12: 681b         	ldr	r3, [r3]
  41ad14: 9906         	ldr	r1, [sp, #0x18]
  41ad16: aa0a         	add	r2, sp, #0x28
  41ad18: 4608         	mov	r0, r1
  41ad1a: 4611         	mov	r1, r2
  41ad1c: 4798         	blx	r3
  41ad1e: 9b06         	ldr	r3, [sp, #0x18]
  41ad20: 681b         	ldr	r3, [r3]
  41ad22: f503 73d0    	add.w	r3, r3, #0x1a0
  41ad26: 681b         	ldr	r3, [r3]
  41ad28: 9806         	ldr	r0, [sp, #0x18]
  41ad2a: 4798         	blx	r3
  41ad2c: 4603         	mov	r3, r0
  41ad2e: f083 0301    	eor	r3, r3, #0x1
  41ad32: b2db         	uxtb	r3, r3
  41ad34: 2b00         	cmp	r3, #0x0
  41ad36: d015         	beq	0x41ad64 <WeaponManager::addItemToWorld(Item*, bool)+0xac> @ imm = #0x2a
  41ad38: 4b26         	ldr	r3, [pc, #0x98]         @ 0x41add4 <WeaponManager::addItemToWorld(Item*, bool)+0x11c>
  41ad3a: 58e3         	ldr	r3, [r4, r3]
  41ad3c: 681c         	ldr	r4, [r3]
  41ad3e: 9b06         	ldr	r3, [sp, #0x18]
  41ad40: 681b         	ldr	r3, [r3]
  41ad42: f503 73fe    	add.w	r3, r3, #0x1fc
  41ad46: 681b         	ldr	r3, [r3]
  41ad48: aa09         	add	r2, sp, #0x24
  41ad4a: 4610         	mov	r0, r2
  41ad4c: 9906         	ldr	r1, [sp, #0x18]
  41ad4e: 4798         	blx	r3
  41ad50: ab09         	add	r3, sp, #0x24
  41ad52: 4620         	mov	r0, r4
  41ad54: 9906         	ldr	r1, [sp, #0x18]
  41ad56: 461a         	mov	r2, r3
  41ad58: f179 fdee    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x179bdc
  41ad5c: ab09         	add	r3, sp, #0x24
  41ad5e: 4618         	mov	r0, r3
  41ad60: f39a fdd8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39abb0
  41ad64: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  41ad68: 2b00         	cmp	r3, #0x0
  41ad6a: d02c         	beq	0x41adc6 <WeaponManager::addItemToWorld(Item*, bool)+0x10e> @ imm = #0x58
  41ad6c: 9b06         	ldr	r3, [sp, #0x18]
  41ad6e: 681b         	ldr	r3, [r3]
  41ad70: f503 73dc    	add.w	r3, r3, #0x1b8
  41ad74: 681b         	ldr	r3, [r3]
  41ad76: 9806         	ldr	r0, [sp, #0x18]
  41ad78: 4798         	blx	r3
  41ad7a: 9b06         	ldr	r3, [sp, #0x18]
  41ad7c: 681b         	ldr	r3, [r3]
  41ad7e: f503 73e0    	add.w	r3, r3, #0x1c0
  41ad82: 681b         	ldr	r3, [r3]
  41ad84: 9806         	ldr	r0, [sp, #0x18]
  41ad86: 4798         	blx	r3
  41ad88: 9b06         	ldr	r3, [sp, #0x18]
  41ad8a: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  41ad8e: eddd 7a0a    	vldr	s15, [sp, #40]
  41ad92: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41ad96: eddd 7a0b    	vldr	s15, [sp, #44]
  41ad9a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41ad9e: 466b         	mov	r3, sp
  41ada0: 4618         	mov	r0, r3
  41ada2: eeb0 0b46    	vmov.f64	d0, d6
  41ada6: eeb0 1b47    	vmov.f64	d1, d7
  41adaa: f7fd fffd    	bl	0x418da8 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x328> @ imm = #-0x2006
  41adae: 3428         	adds	r4, #0x28
  41adb0: 466b         	mov	r3, sp
  41adb2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41adb4: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41adb8: e005         	b	0x41adc6 <WeaponManager::addItemToWorld(Item*, bool)+0x10e> @ imm = #0xa
  41adba: ab09         	add	r3, sp, #0x24
  41adbc: 4618         	mov	r0, r3
  41adbe: f39a fda9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ab52
  41adc2: f36d f973    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36d2e6
  41adc6: b00c         	add	sp, #0x30
  41adc8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41adc9); words below are literal-pool data ---
  41adca: bf00         	nop
  41adcc: 7d40         	ldrb	r0, [r0, #0x15]
  41adce: 0051         	lsls	r1, r2, #0x1
  41add0: d744         	bvc	0x41ae5c <WeaponManager::removeItemFromWorld(Item*)+0x84> @ imm = #0x88
  41add2: ffff dcec    	<unknown>
  41add6: ffff b570    	<unknown>

// ==== WeaponManager::removeItemFromWorld
//      file offset 0x41add8 (= ELF address; Ghidra 0x42add8), 980 bytes, Thumb-2
  41add8: b570         	push	{r4, r5, r6, lr}
  41adda: b088         	sub	sp, #0x20
  41addc: 9001         	str	r0, [sp, #0x4]
  41adde: 9100         	str	r1, [sp]
  41ade0: 4cee         	ldr	r4, [pc, #0x3b8]        @ 0x41b19c <WeaponManager::removeItemFromWorld(Item*)+0x3c4>
  41ade2: 447c         	add	r4, pc
  41ade4: 9b00         	ldr	r3, [sp]
  41ade6: 2b00         	cmp	r3, #0x0
  41ade8: d100         	bne	0x41adec <WeaponManager::removeItemFromWorld(Item*)+0x14> @ imm = #0x0
  41adea: e1d5         	b	0x41b198 <WeaponManager::removeItemFromWorld(Item*)+0x3c0> @ imm = #0x3aa
  41adec: 9b00         	ldr	r3, [sp]
  41adee: 681b         	ldr	r3, [r3]
  41adf0: f503 73fe    	add.w	r3, r3, #0x1fc
  41adf4: 681b         	ldr	r3, [r3]
  41adf6: aa05         	add	r2, sp, #0x14
  41adf8: 4610         	mov	r0, r2
  41adfa: 9900         	ldr	r1, [sp]
  41adfc: 4798         	blx	r3
  41adfe: ab05         	add	r3, sp, #0x14
  41ae00: 4618         	mov	r0, r3
  41ae02: f17e fe1b    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x17ec36
  41ae06: 4603         	mov	r3, r0
  41ae08: 9306         	str	r3, [sp, #0x18]
  41ae0a: ab05         	add	r3, sp, #0x14
  41ae0c: 4618         	mov	r0, r3
  41ae0e: f39a fd81    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39ab02
  41ae12: 2500         	movs	r5, #0x0
  41ae14: 9b01         	ldr	r3, [sp, #0x4]
  41ae16: 69db         	ldr	r3, [r3, #0x1c]
  41ae18: 2b00         	cmp	r3, #0x0
  41ae1a: d01a         	beq	0x41ae52 <WeaponManager::removeItemFromWorld(Item*)+0x7a> @ imm = #0x34
  41ae1c: 9b01         	ldr	r3, [sp, #0x4]
  41ae1e: 69db         	ldr	r3, [r3, #0x1c]
  41ae20: 681b         	ldr	r3, [r3]
  41ae22: f503 73fe    	add.w	r3, r3, #0x1fc
  41ae26: 681b         	ldr	r3, [r3]
  41ae28: 9a01         	ldr	r2, [sp, #0x4]
  41ae2a: 69d2         	ldr	r2, [r2, #0x1c]
  41ae2c: a904         	add	r1, sp, #0x10
  41ae2e: 4608         	mov	r0, r1
  41ae30: 4611         	mov	r1, r2
  41ae32: 4798         	blx	r3
  41ae34: 2501         	movs	r5, #0x1
  41ae36: 9806         	ldr	r0, [sp, #0x18]
  41ae38: f17e fd76    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17eaec
  41ae3c: 4603         	mov	r3, r0
  41ae3e: aa04         	add	r2, sp, #0x10
  41ae40: 4610         	mov	r0, r2
  41ae42: 4619         	mov	r1, r3
  41ae44: f39a fc6e    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x39a8dc
  41ae48: 4603         	mov	r3, r0
  41ae4a: 2b00         	cmp	r3, #0x0
  41ae4c: d101         	bne	0x41ae52 <WeaponManager::removeItemFromWorld(Item*)+0x7a> @ imm = #0x2
  41ae4e: 2301         	movs	r3, #0x1
  41ae50: e000         	b	0x41ae54 <WeaponManager::removeItemFromWorld(Item*)+0x7c> @ imm = #0x0
  41ae52: 2300         	movs	r3, #0x0
  41ae54: 461e         	mov	r6, r3
  41ae56: 2d00         	cmp	r5, #0x0
  41ae58: d004         	beq	0x41ae64 <WeaponManager::removeItemFromWorld(Item*)+0x8c> @ imm = #0x8
  41ae5a: bf00         	nop
  41ae5c: ab04         	add	r3, sp, #0x10
  41ae5e: 4618         	mov	r0, r3
  41ae60: f39a fd58    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39aab0
  41ae64: 2e00         	cmp	r6, #0x0
  41ae66: d00c         	beq	0x41ae82 <WeaponManager::removeItemFromWorld(Item*)+0xaa> @ imm = #0x18
  41ae68: f1c5 fc22    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c5844
  41ae6c: 4603         	mov	r3, r0
  41ae6e: 4618         	mov	r0, r3
  41ae70: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x41b1a0 <WeaponManager::removeItemFromWorld(Item*)+0x3c8>
  41ae72: 447b         	add	r3, pc
  41ae74: 4619         	mov	r1, r3
  41ae76: 2200         	movs	r2, #0x0
  41ae78: f1c5 fe58    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c5cb0
  41ae7c: 9b01         	ldr	r3, [sp, #0x4]
  41ae7e: 2200         	movs	r2, #0x0
  41ae80: 61da         	str	r2, [r3, #0x1c]
  41ae82: 2300         	movs	r3, #0x0
  41ae84: f88d 300d    	strb.w	r3, [sp, #0xd]
  41ae88: 2300         	movs	r3, #0x0
  41ae8a: f88d 300e    	strb.w	r3, [sp, #0xe]
  41ae8e: 2300         	movs	r3, #0x0
  41ae90: f88d 300f    	strb.w	r3, [sp, #0xf]
  41ae94: 9b01         	ldr	r3, [sp, #0x4]
  41ae96: 695d         	ldr	r5, [r3, #0x14]
  41ae98: 9806         	ldr	r0, [sp, #0x18]
  41ae9a: f17e fd45    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17ea8a
  41ae9e: 4606         	mov	r6, r0
  41aea0: ab03         	add	r3, sp, #0xc
  41aea2: 4618         	mov	r0, r3
  41aea4: f36f faa6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f54c
  41aea8: aa05         	add	r2, sp, #0x14
  41aeaa: ab03         	add	r3, sp, #0xc
  41aeac: 4610         	mov	r0, r2
  41aeae: 4631         	mov	r1, r6
  41aeb0: 461a         	mov	r2, r3
  41aeb2: f39b fdd5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39bbaa
  41aeb6: ab05         	add	r3, sp, #0x14
  41aeb8: 4628         	mov	r0, r5
  41aeba: 4619         	mov	r1, r3
  41aebc: f179 f818    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x179030
  41aec0: 4603         	mov	r3, r0
  41aec2: 2b00         	cmp	r3, #0x0
  41aec4: bf0c         	ite	eq
  41aec6: 2300         	moveq	r3, #0x0
  41aec8: 2301         	movne	r3, #0x1
  41aeca: f88d 300d    	strb.w	r3, [sp, #0xd]
  41aece: ab05         	add	r3, sp, #0x14
  41aed0: 4618         	mov	r0, r3
  41aed2: f39a fd1f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39aa3e
  41aed6: ab03         	add	r3, sp, #0xc
  41aed8: 4618         	mov	r0, r3
  41aeda: f36f fa8f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f51e
  41aede: 9b01         	ldr	r3, [sp, #0x4]
  41aee0: 699d         	ldr	r5, [r3, #0x18]
  41aee2: 9806         	ldr	r0, [sp, #0x18]
  41aee4: f17e fd20    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17ea40
  41aee8: 4606         	mov	r6, r0
  41aeea: ab03         	add	r3, sp, #0xc
  41aeec: 4618         	mov	r0, r3
  41aeee: f36f fa81    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f502
  41aef2: aa05         	add	r2, sp, #0x14
  41aef4: ab03         	add	r3, sp, #0xc
  41aef6: 4610         	mov	r0, r2
  41aef8: 4631         	mov	r1, r6
  41aefa: 461a         	mov	r2, r3
  41aefc: f39b fdb0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39bb60
  41af00: ab05         	add	r3, sp, #0x14
  41af02: 4628         	mov	r0, r5
  41af04: 4619         	mov	r1, r3
  41af06: f178 fff3    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x178fe6
  41af0a: 4603         	mov	r3, r0
  41af0c: 2b00         	cmp	r3, #0x0
  41af0e: bf0c         	ite	eq
  41af10: 2300         	moveq	r3, #0x0
  41af12: 2301         	movne	r3, #0x1
  41af14: f88d 300e    	strb.w	r3, [sp, #0xe]
  41af18: ab05         	add	r3, sp, #0x14
  41af1a: 4618         	mov	r0, r3
  41af1c: f39a fcfa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a9f4
  41af20: ab03         	add	r3, sp, #0xc
  41af22: 4618         	mov	r0, r3
  41af24: f36f fa6a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f4d4
  41af28: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x41b1a4 <WeaponManager::removeItemFromWorld(Item*)+0x3cc>
  41af2a: 58e3         	ldr	r3, [r4, r3]
  41af2c: 681d         	ldr	r5, [r3]
  41af2e: 9806         	ldr	r0, [sp, #0x18]
  41af30: f17e fcfa    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e9f4
  41af34: 4606         	mov	r6, r0
  41af36: ab03         	add	r3, sp, #0xc
  41af38: 4618         	mov	r0, r3
  41af3a: f36f fa5b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f4b6
  41af3e: aa05         	add	r2, sp, #0x14
  41af40: ab03         	add	r3, sp, #0xc
  41af42: 4610         	mov	r0, r2
  41af44: 4631         	mov	r1, r6
  41af46: 461a         	mov	r2, r3
  41af48: f39b fd8a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39bb14
  41af4c: ab05         	add	r3, sp, #0x14
  41af4e: 4628         	mov	r0, r5
  41af50: 4619         	mov	r1, r3
  41af52: f178 ffcd    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x178f9a
  41af56: 4603         	mov	r3, r0
  41af58: 2b00         	cmp	r3, #0x0
  41af5a: bf0c         	ite	eq
  41af5c: 2300         	moveq	r3, #0x0
  41af5e: 2301         	movne	r3, #0x1
  41af60: f88d 300f    	strb.w	r3, [sp, #0xf]
  41af64: ab05         	add	r3, sp, #0x14
  41af66: 4618         	mov	r0, r3
  41af68: f39a fcd4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a9a8
  41af6c: ab03         	add	r3, sp, #0xc
  41af6e: 4618         	mov	r0, r3
  41af70: f36f fa44    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f488
  41af74: f89d 300d    	ldrb.w	r3, [sp, #0xd]
  41af78: 2b00         	cmp	r3, #0x0
  41af7a: d01d         	beq	0x41afb8 <WeaponManager::removeItemFromWorld(Item*)+0x1e0> @ imm = #0x3a
  41af7c: 9b01         	ldr	r3, [sp, #0x4]
  41af7e: 695d         	ldr	r5, [r3, #0x14]
  41af80: 9806         	ldr	r0, [sp, #0x18]
  41af82: f17e fcd1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e9a2
  41af86: 4606         	mov	r6, r0
  41af88: ab03         	add	r3, sp, #0xc
  41af8a: 4618         	mov	r0, r3
  41af8c: f36f fa32    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f464
  41af90: aa05         	add	r2, sp, #0x14
  41af92: ab03         	add	r3, sp, #0xc
  41af94: 4610         	mov	r0, r2
  41af96: 4631         	mov	r1, r6
  41af98: 461a         	mov	r2, r3
  41af9a: f39b fd61    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39bac2
  41af9e: ab05         	add	r3, sp, #0x14
  41afa0: 4628         	mov	r0, r5
  41afa2: 4619         	mov	r1, r3
  41afa4: f17a f988    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x17a310
  41afa8: ab05         	add	r3, sp, #0x14
  41afaa: 4618         	mov	r0, r3
  41afac: f39a fcb2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a964
  41afb0: ab03         	add	r3, sp, #0xc
  41afb2: 4618         	mov	r0, r3
  41afb4: f36f fa22    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f444
  41afb8: f89d 300e    	ldrb.w	r3, [sp, #0xe]
  41afbc: 2b00         	cmp	r3, #0x0
  41afbe: d01d         	beq	0x41affc <WeaponManager::removeItemFromWorld(Item*)+0x224> @ imm = #0x3a
  41afc0: 9b01         	ldr	r3, [sp, #0x4]
  41afc2: 699d         	ldr	r5, [r3, #0x18]
  41afc4: 9806         	ldr	r0, [sp, #0x18]
  41afc6: f17e fcaf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e95e
  41afca: 4606         	mov	r6, r0
  41afcc: ab03         	add	r3, sp, #0xc
  41afce: 4618         	mov	r0, r3
  41afd0: f36f fa10    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f420
  41afd4: aa05         	add	r2, sp, #0x14
  41afd6: ab03         	add	r3, sp, #0xc
  41afd8: 4610         	mov	r0, r2
  41afda: 4631         	mov	r1, r6
  41afdc: 461a         	mov	r2, r3
  41afde: f39b fd3f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ba7e
  41afe2: ab05         	add	r3, sp, #0x14
  41afe4: 4628         	mov	r0, r5
  41afe6: 4619         	mov	r1, r3
  41afe8: f17a f966    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x17a2cc
  41afec: ab05         	add	r3, sp, #0x14
  41afee: 4618         	mov	r0, r3
  41aff0: f39a fc90    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a920
  41aff4: ab03         	add	r3, sp, #0xc
  41aff6: 4618         	mov	r0, r3
  41aff8: f36f fa00    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f400
  41affc: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  41b000: 2b00         	cmp	r3, #0x0
  41b002: d03f         	beq	0x41b084 <WeaponManager::removeItemFromWorld(Item*)+0x2ac> @ imm = #0x7e
  41b004: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x41b1a4 <WeaponManager::removeItemFromWorld(Item*)+0x3cc>
  41b006: 58e3         	ldr	r3, [r4, r3]
  41b008: 681d         	ldr	r5, [r3]
  41b00a: 9806         	ldr	r0, [sp, #0x18]
  41b00c: f17e fc8c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e918
  41b010: 4606         	mov	r6, r0
  41b012: ab03         	add	r3, sp, #0xc
  41b014: 4618         	mov	r0, r3
  41b016: f36f f9ed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f3da
  41b01a: aa05         	add	r2, sp, #0x14
  41b01c: ab03         	add	r3, sp, #0xc
  41b01e: 4610         	mov	r0, r2
  41b020: 4631         	mov	r1, r6
  41b022: 461a         	mov	r2, r3
  41b024: f39b fd1c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ba38
  41b028: ab05         	add	r3, sp, #0x14
  41b02a: 4628         	mov	r0, r5
  41b02c: 4619         	mov	r1, r3
  41b02e: f178 ff5f    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x178ebe
  41b032: 4603         	mov	r3, r0
  41b034: 9307         	str	r3, [sp, #0x1c]
  41b036: ab05         	add	r3, sp, #0x14
  41b038: 4618         	mov	r0, r3
  41b03a: f39a fc6b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a8d6
  41b03e: ab03         	add	r3, sp, #0xc
  41b040: 4618         	mov	r0, r3
  41b042: f36f f9db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f3b6
  41b046: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x41b1a4 <WeaponManager::removeItemFromWorld(Item*)+0x3cc>
  41b048: 58e3         	ldr	r3, [r4, r3]
  41b04a: 681d         	ldr	r5, [r3]
  41b04c: 9806         	ldr	r0, [sp, #0x18]
  41b04e: f17e fc6b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e8d6
  41b052: 4606         	mov	r6, r0
  41b054: ab03         	add	r3, sp, #0xc
  41b056: 4618         	mov	r0, r3
  41b058: f36f f9cc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f398
  41b05c: aa05         	add	r2, sp, #0x14
  41b05e: ab03         	add	r3, sp, #0xc
  41b060: 4610         	mov	r0, r2
  41b062: 4631         	mov	r1, r6
  41b064: 461a         	mov	r2, r3
  41b066: f39b fcfb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39b9f6
  41b06a: ab05         	add	r3, sp, #0x14
  41b06c: 4628         	mov	r0, r5
  41b06e: 4619         	mov	r1, r3
  41b070: f17a f922    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x17a244
  41b074: ab05         	add	r3, sp, #0x14
  41b076: 4618         	mov	r0, r3
  41b078: f39a fc4c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a898
  41b07c: ab03         	add	r3, sp, #0xc
  41b07e: 4618         	mov	r0, r3
  41b080: f36f f9bc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f378
  41b084: 9b00         	ldr	r3, [sp]
  41b086: 681b         	ldr	r3, [r3]
  41b088: f503 73e2    	add.w	r3, r3, #0x1c4
  41b08c: 681b         	ldr	r3, [r3]
  41b08e: 9800         	ldr	r0, [sp]
  41b090: 4798         	blx	r3
  41b092: 9b00         	ldr	r3, [sp]
  41b094: 681b         	ldr	r3, [r3]
  41b096: f503 73de    	add.w	r3, r3, #0x1bc
  41b09a: 681b         	ldr	r3, [r3]
  41b09c: 9800         	ldr	r0, [sp]
  41b09e: 4798         	blx	r3
  41b0a0: 9b00         	ldr	r3, [sp]
  41b0a2: 681b         	ldr	r3, [r3]
  41b0a4: 3398         	adds	r3, #0x98
  41b0a6: 681b         	ldr	r3, [r3]
  41b0a8: 9a00         	ldr	r2, [sp]
  41b0aa: 4610         	mov	r0, r2
  41b0ac: f04f 0100    	mov.w	r1, #0x0
  41b0b0: 4798         	blx	r3
  41b0b2: 9b00         	ldr	r3, [sp]
  41b0b4: 681b         	ldr	r3, [r3]
  41b0b6: f503 7303    	add.w	r3, r3, #0x20c
  41b0ba: 681b         	ldr	r3, [r3]
  41b0bc: 9800         	ldr	r0, [sp]
  41b0be: 2101         	movs	r1, #0x1
  41b0c0: 4798         	blx	r3
  41b0c2: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x41b1a8 <WeaponManager::removeItemFromWorld(Item*)+0x3d0>
  41b0c4: 58e3         	ldr	r3, [r4, r3]
  41b0c6: 681b         	ldr	r3, [r3]
  41b0c8: 681b         	ldr	r3, [r3]
  41b0ca: 33f0         	adds	r3, #0xf0
  41b0cc: 681b         	ldr	r3, [r3]
  41b0ce: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x41b1a8 <WeaponManager::removeItemFromWorld(Item*)+0x3d0>
  41b0d0: 58a2         	ldr	r2, [r4, r2]
  41b0d2: 6812         	ldr	r2, [r2]
  41b0d4: 4610         	mov	r0, r2
  41b0d6: 9900         	ldr	r1, [sp]
  41b0d8: 4798         	blx	r3
  41b0da: e05d         	b	0x41b198 <WeaponManager::removeItemFromWorld(Item*)+0x3c0> @ imm = #0xba
  41b0dc: ab05         	add	r3, sp, #0x14
  41b0de: 4618         	mov	r0, r3
  41b0e0: f39a fc18    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a830
  41b0e4: f36c ffe2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cfc4
  41b0e8: 2d00         	cmp	r5, #0x0
  41b0ea: d005         	beq	0x41b0f8 <WeaponManager::removeItemFromWorld(Item*)+0x320> @ imm = #0xa
  41b0ec: bf00         	nop
  41b0ee: ab04         	add	r3, sp, #0x10
  41b0f0: 4618         	mov	r0, r3
  41b0f2: f39a fc0f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a81e
  41b0f6: e000         	b	0x41b0fa <WeaponManager::removeItemFromWorld(Item*)+0x322> @ imm = #0x0
  41b0f8: bf00         	nop
  41b0fa: f36c ffd7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cfae
  41b0fe: ab05         	add	r3, sp, #0x14
  41b100: 4618         	mov	r0, r3
  41b102: f39a fc07    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a80e
  41b106: e7ff         	b	0x41b108 <WeaponManager::removeItemFromWorld(Item*)+0x330> @ imm = #-0x2
  41b108: ab03         	add	r3, sp, #0xc
  41b10a: 4618         	mov	r0, r3
  41b10c: f36f f976    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f2ec
  41b110: f36c ffcc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf98
  41b114: ab05         	add	r3, sp, #0x14
  41b116: 4618         	mov	r0, r3
  41b118: f39a fbfc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a7f8
  41b11c: e7ff         	b	0x41b11e <WeaponManager::removeItemFromWorld(Item*)+0x346> @ imm = #-0x2
  41b11e: ab03         	add	r3, sp, #0xc
  41b120: 4618         	mov	r0, r3
  41b122: f36f f96b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f2d6
  41b126: f36c ffc1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf82
  41b12a: ab05         	add	r3, sp, #0x14
  41b12c: 4618         	mov	r0, r3
  41b12e: f39a fbf1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a7e2
  41b132: e7ff         	b	0x41b134 <WeaponManager::removeItemFromWorld(Item*)+0x35c> @ imm = #-0x2
  41b134: ab03         	add	r3, sp, #0xc
  41b136: 4618         	mov	r0, r3
  41b138: f36f f960    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f2c0
  41b13c: f36c ffb6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf6c
  41b140: ab05         	add	r3, sp, #0x14
  41b142: 4618         	mov	r0, r3
  41b144: f39a fbe6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a7cc
  41b148: e7ff         	b	0x41b14a <WeaponManager::removeItemFromWorld(Item*)+0x372> @ imm = #-0x2
  41b14a: ab03         	add	r3, sp, #0xc
  41b14c: 4618         	mov	r0, r3
  41b14e: f36f f955    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f2aa
  41b152: f36c ffab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf56
  41b156: ab05         	add	r3, sp, #0x14
  41b158: 4618         	mov	r0, r3
  41b15a: f39a fbdb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a7b6
  41b15e: e7ff         	b	0x41b160 <WeaponManager::removeItemFromWorld(Item*)+0x388> @ imm = #-0x2
  41b160: ab03         	add	r3, sp, #0xc
  41b162: 4618         	mov	r0, r3
  41b164: f36f f94a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f294
  41b168: f36c ffa0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf40
  41b16c: ab05         	add	r3, sp, #0x14
  41b16e: 4618         	mov	r0, r3
  41b170: f39a fbd0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a7a0
  41b174: e7ff         	b	0x41b176 <WeaponManager::removeItemFromWorld(Item*)+0x39e> @ imm = #-0x2
  41b176: ab03         	add	r3, sp, #0xc
  41b178: 4618         	mov	r0, r3
  41b17a: f36f f93f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f27e
  41b17e: f36c ff95    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf2a
  41b182: ab05         	add	r3, sp, #0x14
  41b184: 4618         	mov	r0, r3
  41b186: f39a fbc5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a78a
  41b18a: e7ff         	b	0x41b18c <WeaponManager::removeItemFromWorld(Item*)+0x3b4> @ imm = #-0x2
  41b18c: ab03         	add	r3, sp, #0xc
  41b18e: 4618         	mov	r0, r3
  41b190: f36f f934    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f268
  41b194: f36c ff8a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cf14
  41b198: b008         	add	sp, #0x20
  41b19a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x41b19b); words below are literal-pool data ---
  41b19c: 7c26         	ldrb	r6, [r4, #0x10]
  41b19e: 0051         	lsls	r1, r2, #0x1
  41b1a0: 0bba         	lsrs	r2, r7, #0xe
  41b1a2: 003c         	movs	r4, r7
  41b1a4: dcec         	bgt	0x41b180 <WeaponManager::removeItemFromWorld(Item*)+0x3a8> @ imm = #-0x28
  41b1a6: ffff d744    	<unknown>
  41b1aa: ffff b5f0    	<unknown>

// ==== WeaponManager::setAllWeaponsUUIDWithHostPeerID
//      file offset 0x41b1ac (= ELF address; Ghidra 0x42b1ac), 640 bytes, Thumb-2
  41b1ac: b5f0         	push	{r4, r5, r6, r7, lr}
  41b1ae: b08f         	sub	sp, #0x3c
  41b1b0: 9001         	str	r0, [sp, #0x4]
  41b1b2: 9100         	str	r1, [sp]
  41b1b4: 4c9a         	ldr	r4, [pc, #0x268]        @ 0x41b420 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x274>
  41b1b6: 447c         	add	r4, pc
  41b1b8: 9b01         	ldr	r3, [sp, #0x4]
  41b1ba: f893 302c    	ldrb.w	r3, [r3, #0x2c]
  41b1be: 2b00         	cmp	r3, #0x0
  41b1c0: d000         	beq	0x41b1c4 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x18> @ imm = #0x0
  41b1c2: e12a         	b	0x41b41a <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x26e> @ imm = #0x254
  41b1c4: f17e fdb6    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x17eb6c
  41b1c8: 4603         	mov	r3, r0
  41b1ca: 930b         	str	r3, [sp, #0x2c]
  41b1cc: 2300         	movs	r3, #0x0
  41b1ce: 9308         	str	r3, [sp, #0x20]
  41b1d0: 2300         	movs	r3, #0x0
  41b1d2: 9309         	str	r3, [sp, #0x24]
  41b1d4: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b1d6: 58e3         	ldr	r3, [r4, r3]
  41b1d8: 681b         	ldr	r3, [r3]
  41b1da: 2b00         	cmp	r3, #0x0
  41b1dc: d00a         	beq	0x41b1f4 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x48> @ imm = #0x14
  41b1de: 4b91         	ldr	r3, [pc, #0x244]        @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b1e0: 58e3         	ldr	r3, [r4, r3]
  41b1e2: 681b         	ldr	r3, [r3]
  41b1e4: 4618         	mov	r0, r3
  41b1e6: f178 fd41    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x178a82
  41b1ea: 4603         	mov	r3, r0
  41b1ec: 2b00         	cmp	r3, #0x0
  41b1ee: d001         	beq	0x41b1f4 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x48> @ imm = #0x2
  41b1f0: 2301         	movs	r3, #0x1
  41b1f2: e000         	b	0x41b1f6 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x4a> @ imm = #0x0
  41b1f4: 2300         	movs	r3, #0x0
  41b1f6: 2b00         	cmp	r3, #0x0
  41b1f8: d02a         	beq	0x41b250 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0xa4> @ imm = #0x54
  41b1fa: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b1fc: 58e3         	ldr	r3, [r4, r3]
  41b1fe: 681b         	ldr	r3, [r3]
  41b200: 695b         	ldr	r3, [r3, #0x14]
  41b202: 9308         	str	r3, [sp, #0x20]
  41b204: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b206: 58e3         	ldr	r3, [r4, r3]
  41b208: 681b         	ldr	r3, [r3]
  41b20a: 695b         	ldr	r3, [r3, #0x14]
  41b20c: 2b00         	cmp	r3, #0x0
  41b20e: d006         	beq	0x41b21e <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x72> @ imm = #0xc
  41b210: 4b84         	ldr	r3, [pc, #0x210]        @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b212: 58e3         	ldr	r3, [r4, r3]
  41b214: 681b         	ldr	r3, [r3]
  41b216: 695b         	ldr	r3, [r3, #0x14]
  41b218: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41b21c: e000         	b	0x41b220 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x74> @ imm = #0x0
  41b21e: 2300         	movs	r3, #0x0
  41b220: 9309         	str	r3, [sp, #0x24]
  41b222: e012         	b	0x41b24a <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x9e> @ imm = #0x24
  41b224: 9808         	ldr	r0, [sp, #0x20]
  41b226: f6e3 fa05    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x11cbf6
  41b22a: 4603         	mov	r3, r0
  41b22c: 980b         	ldr	r0, [sp, #0x2c]
  41b22e: 4619         	mov	r1, r3
  41b230: f17f f81c    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x17f038
  41b234: 9b09         	ldr	r3, [sp, #0x24]
  41b236: 9308         	str	r3, [sp, #0x20]
  41b238: 9b09         	ldr	r3, [sp, #0x24]
  41b23a: 2b00         	cmp	r3, #0x0
  41b23c: d003         	beq	0x41b246 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x9a> @ imm = #0x6
  41b23e: 9b09         	ldr	r3, [sp, #0x24]
  41b240: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41b244: e000         	b	0x41b248 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x9c> @ imm = #0x0
  41b246: 2300         	movs	r3, #0x0
  41b248: 9309         	str	r3, [sp, #0x24]
  41b24a: 9b08         	ldr	r3, [sp, #0x20]
  41b24c: 2b00         	cmp	r3, #0x0
  41b24e: d1e9         	bne	0x41b224 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x78> @ imm = #-0x2e
  41b250: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b252: 58e3         	ldr	r3, [r4, r3]
  41b254: 681b         	ldr	r3, [r3]
  41b256: 4618         	mov	r0, r3
  41b258: f17b feb6    	bl	0x596fc8 <cocos2d::CCDictionary::removeAllObjects()> @ imm = #0x17bd6c
  41b25c: 2300         	movs	r3, #0x0
  41b25e: 930a         	str	r3, [sp, #0x28]
  41b260: e0a5         	b	0x41b3ae <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x202> @ imm = #0x14a
  41b262: 9b0a         	ldr	r3, [sp, #0x28]
  41b264: 980b         	ldr	r0, [sp, #0x2c]
  41b266: 4619         	mov	r1, r3
  41b268: f17e ff5a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x17eeb4
  41b26c: 4603         	mov	r3, r0
  41b26e: 930c         	str	r3, [sp, #0x30]
  41b270: 9b0c         	ldr	r3, [sp, #0x30]
  41b272: 681b         	ldr	r3, [r3]
  41b274: f503 7301    	add.w	r3, r3, #0x204
  41b278: 681b         	ldr	r3, [r3]
  41b27a: 9a0c         	ldr	r2, [sp, #0x30]
  41b27c: a903         	add	r1, sp, #0xc
  41b27e: 4608         	mov	r0, r1
  41b280: 4611         	mov	r1, r2
  41b282: 4798         	blx	r3
  41b284: ab03         	add	r3, sp, #0xc
  41b286: 4618         	mov	r0, r3
  41b288: f39a f83a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x39a074
  41b28c: 4603         	mov	r3, r0
  41b28e: 4618         	mov	r0, r3
  41b290: f6ba eeca    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0x14526c
  41b294: 4603         	mov	r3, r0
  41b296: 2b00         	cmp	r3, #0x0
  41b298: bf14         	ite	ne
  41b29a: 2300         	movne	r3, #0x0
  41b29c: 2301         	moveq	r3, #0x1
  41b29e: b2db         	uxtb	r3, r3
  41b2a0: 2b00         	cmp	r3, #0x0
  41b2a2: d066         	beq	0x41b372 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x1c6> @ imm = #0xcc
  41b2a4: 9800         	ldr	r0, [sp]
  41b2a6: f39a f82b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x39a056
  41b2aa: 4602         	mov	r2, r0
  41b2ac: 9b01         	ldr	r3, [sp, #0x4]
  41b2ae: 6a9b         	ldr	r3, [r3, #0x28]
  41b2b0: 495d         	ldr	r1, [pc, #0x174]        @ 0x41b428 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x27c>
  41b2b2: 4479         	add	r1, pc
  41b2b4: 4608         	mov	r0, r1
  41b2b6: 4611         	mov	r1, r2
  41b2b8: 461a         	mov	r2, r3
  41b2ba: f17e fc29    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x17e852
  41b2be: 4603         	mov	r3, r0
  41b2c0: 930d         	str	r3, [sp, #0x34]
  41b2c2: 9b0c         	ldr	r3, [sp, #0x30]
  41b2c4: 681b         	ldr	r3, [r3]
  41b2c6: f503 73fc    	add.w	r3, r3, #0x1f8
  41b2ca: 681d         	ldr	r5, [r3]
  41b2cc: 9e0c         	ldr	r6, [sp, #0x30]
  41b2ce: 980d         	ldr	r0, [sp, #0x34]
  41b2d0: f17e fb2a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e654
  41b2d4: 4607         	mov	r7, r0
  41b2d6: ab07         	add	r3, sp, #0x1c
  41b2d8: 4618         	mov	r0, r3
  41b2da: f36f f88b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f116
  41b2de: aa04         	add	r2, sp, #0x10
  41b2e0: ab07         	add	r3, sp, #0x1c
  41b2e2: 4610         	mov	r0, r2
  41b2e4: 4639         	mov	r1, r7
  41b2e6: 461a         	mov	r2, r3
  41b2e8: f39b fbba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39b774
  41b2ec: ab04         	add	r3, sp, #0x10
  41b2ee: 4630         	mov	r0, r6
  41b2f0: 4619         	mov	r1, r3
  41b2f2: 47a8         	blx	r5
  41b2f4: ab04         	add	r3, sp, #0x10
  41b2f6: 4618         	mov	r0, r3
  41b2f8: f39a fb0c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a618
  41b2fc: ab07         	add	r3, sp, #0x1c
  41b2fe: 4618         	mov	r0, r3
  41b300: f36f f87c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f0f8
  41b304: 9b0c         	ldr	r3, [sp, #0x30]
  41b306: 681b         	ldr	r3, [r3]
  41b308: f503 7300    	add.w	r3, r3, #0x200
  41b30c: 681d         	ldr	r5, [r3]
  41b30e: ab05         	add	r3, sp, #0x14
  41b310: 4618         	mov	r0, r3
  41b312: 9900         	ldr	r1, [sp]
  41b314: f39b f8e8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x39b1d0
  41b318: ab05         	add	r3, sp, #0x14
  41b31a: 980c         	ldr	r0, [sp, #0x30]
  41b31c: 4619         	mov	r1, r3
  41b31e: 47a8         	blx	r5
  41b320: ab05         	add	r3, sp, #0x14
  41b322: 4618         	mov	r0, r3
  41b324: f39a faf6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a5ec
  41b328: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b32a: 58e3         	ldr	r3, [r4, r3]
  41b32c: 681d         	ldr	r5, [r3]
  41b32e: 980d         	ldr	r0, [sp, #0x34]
  41b330: f17e fafa    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e5f4
  41b334: 4606         	mov	r6, r0
  41b336: ab07         	add	r3, sp, #0x1c
  41b338: 4618         	mov	r0, r3
  41b33a: f36f f85b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36f0b6
  41b33e: aa06         	add	r2, sp, #0x18
  41b340: ab07         	add	r3, sp, #0x1c
  41b342: 4610         	mov	r0, r2
  41b344: 4631         	mov	r1, r6
  41b346: 461a         	mov	r2, r3
  41b348: f39b fb8a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39b714
  41b34c: ab06         	add	r3, sp, #0x18
  41b34e: 4628         	mov	r0, r5
  41b350: 990c         	ldr	r1, [sp, #0x30]
  41b352: 461a         	mov	r2, r3
  41b354: f179 faf0    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1795e0
  41b358: ab06         	add	r3, sp, #0x18
  41b35a: 4618         	mov	r0, r3
  41b35c: f39a fada    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a5b4
  41b360: ab07         	add	r3, sp, #0x1c
  41b362: 4618         	mov	r0, r3
  41b364: f36f f84a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f094
  41b368: 9b01         	ldr	r3, [sp, #0x4]
  41b36a: 6a9b         	ldr	r3, [r3, #0x28]
  41b36c: 1c5a         	adds	r2, r3, #0x1
  41b36e: 9b01         	ldr	r3, [sp, #0x4]
  41b370: 629a         	str	r2, [r3, #0x28]
  41b372: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x41b424 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x278>
  41b374: 58e3         	ldr	r3, [r4, r3]
  41b376: 681d         	ldr	r5, [r3]
  41b378: 9b0c         	ldr	r3, [sp, #0x30]
  41b37a: 681b         	ldr	r3, [r3]
  41b37c: f503 73fe    	add.w	r3, r3, #0x1fc
  41b380: 681b         	ldr	r3, [r3]
  41b382: 9a0c         	ldr	r2, [sp, #0x30]
  41b384: a907         	add	r1, sp, #0x1c
  41b386: 4608         	mov	r0, r1
  41b388: 4611         	mov	r1, r2
  41b38a: 4798         	blx	r3
  41b38c: ab07         	add	r3, sp, #0x1c
  41b38e: 4628         	mov	r0, r5
  41b390: 990c         	ldr	r1, [sp, #0x30]
  41b392: 461a         	mov	r2, r3
  41b394: f179 fad0    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1795a0
  41b398: ab07         	add	r3, sp, #0x1c
  41b39a: 4618         	mov	r0, r3
  41b39c: f39a faba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a574
  41b3a0: ab03         	add	r3, sp, #0xc
  41b3a2: 4618         	mov	r0, r3
  41b3a4: f39a fab6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a56c
  41b3a8: 9b0a         	ldr	r3, [sp, #0x28]
  41b3aa: 3301         	adds	r3, #0x1
  41b3ac: 930a         	str	r3, [sp, #0x28]
  41b3ae: 9d0a         	ldr	r5, [sp, #0x28]
  41b3b0: 980b         	ldr	r0, [sp, #0x2c]
  41b3b2: f17e fe95    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x17ed2a
  41b3b6: 4603         	mov	r3, r0
  41b3b8: 429d         	cmp	r5, r3
  41b3ba: bf2c         	ite	hs
  41b3bc: 2300         	movhs	r3, #0x0
  41b3be: 2301         	movlo	r3, #0x1
  41b3c0: b2db         	uxtb	r3, r3
  41b3c2: 2b00         	cmp	r3, #0x0
  41b3c4: f47f af4d    	bne.w	0x41b262 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0xb6> @ imm = #-0x166
  41b3c8: 9b01         	ldr	r3, [sp, #0x4]
  41b3ca: 2201         	movs	r2, #0x1
  41b3cc: f883 202c    	strb.w	r2, [r3, #0x2c]
  41b3d0: e023         	b	0x41b41a <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x26e> @ imm = #0x46
  41b3d2: ab04         	add	r3, sp, #0x10
  41b3d4: 4618         	mov	r0, r3
  41b3d6: f39a fa9d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a53a
  41b3da: e7ff         	b	0x41b3dc <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x230> @ imm = #-0x2
  41b3dc: ab07         	add	r3, sp, #0x1c
  41b3de: 4618         	mov	r0, r3
  41b3e0: f36f f80c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36f018
  41b3e4: e013         	b	0x41b40e <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x262> @ imm = #0x26
  41b3e6: ab05         	add	r3, sp, #0x14
  41b3e8: 4618         	mov	r0, r3
  41b3ea: f39a fa93    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a526
  41b3ee: e00e         	b	0x41b40e <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x262> @ imm = #0x1c
  41b3f0: ab06         	add	r3, sp, #0x18
  41b3f2: 4618         	mov	r0, r3
  41b3f4: f39a fa8e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a51c
  41b3f8: e7ff         	b	0x41b3fa <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x24e> @ imm = #-0x2
  41b3fa: ab07         	add	r3, sp, #0x1c
  41b3fc: 4618         	mov	r0, r3
  41b3fe: f36e fffd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36effa
  41b402: e004         	b	0x41b40e <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x262> @ imm = #0x8
  41b404: ab07         	add	r3, sp, #0x1c
  41b406: 4618         	mov	r0, r3
  41b408: f39a fa84    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a508
  41b40c: e7ff         	b	0x41b40e <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x262> @ imm = #-0x2
  41b40e: ab03         	add	r3, sp, #0xc
  41b410: 4618         	mov	r0, r3
  41b412: f39a fa7f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39a4fe
  41b416: f36c fe49    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36cc92
  41b41a: b00f         	add	sp, #0x3c
  41b41c: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x41b41d); words below are literal-pool data ---
  41b41e: bf00         	nop
  41b420: 7852         	ldrb	r2, [r2, #0x1]
  41b422: 0051         	lsls	r1, r2, #0x1
  41b424: dcec         	bgt	0x41b400 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x254> @ imm = #-0x28
  41b426: ffff 0752    	vqshl.u32	q8, q1, #0x1f
  41b42a: 003c         	movs	r4, r7

// ==== WeaponManager::getWeapons
//      file offset 0x41b42c (= ELF address; Ghidra 0x42b42c), 28 bytes, Thumb-2
  41b42c: b082         	sub	sp, #0x8
  41b42e: 9001         	str	r0, [sp, #0x4]
  41b430: 4a03         	ldr	r2, [pc, #0xc]          @ 0x41b440 <WeaponManager::getWeapons()+0x14>
  41b432: 447a         	add	r2, pc
  41b434: 4b03         	ldr	r3, [pc, #0xc]          @ 0x41b444 <WeaponManager::getWeapons()+0x18>
  41b436: 58d3         	ldr	r3, [r2, r3]
  41b438: 681b         	ldr	r3, [r3]
  41b43a: 4618         	mov	r0, r3
  41b43c: b002         	add	sp, #0x8
  41b43e: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x41b43f); words below are literal-pool data ---
  41b440: 75d6         	strb	r6, [r2, #0x17]
  41b442: 0051         	lsls	r1, r2, #0x1
  41b444: dcec         	bgt	0x41b420 <WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string)+0x274> @ imm = #-0x28
  41b446: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== WeaponManager::weaponProximity
//      file offset 0x41b448 (= ELF address; Ghidra 0x42b448), 1076 bytes, Thumb-2
  41b448: b530         	push	{r4, r5, lr}
  41b44a: b08d         	sub	sp, #0x34
  41b44c: 9001         	str	r0, [sp, #0x4]
  41b44e: 9100         	str	r1, [sp]
  41b450: 4cac         	ldr	r4, [pc, #0x2b0]        @ 0x41b704 <WeaponManager::weaponProximity(Weapon*)+0x2bc>
  41b452: 447c         	add	r4, pc
  41b454: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x41b708 <WeaponManager::weaponProximity(Weapon*)+0x2c0>
  41b456: 58e3         	ldr	r3, [r4, r3]
  41b458: 681b         	ldr	r3, [r3]
  41b45a: 9303         	str	r3, [sp, #0xc]
  41b45c: 9b03         	ldr	r3, [sp, #0xc]
  41b45e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  41b462: ed93 7b0a    	vldr	d7, [r3, #40]
  41b466: eef7 6bc7    	vcvt.f32.f64	s13, d7
  41b46a: 9b03         	ldr	r3, [sp, #0xc]
  41b46c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  41b470: ed93 7b0c    	vldr	d7, [r3, #48]
  41b474: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41b478: ab08         	add	r3, sp, #0x20
  41b47a: 4618         	mov	r0, r3
  41b47c: ee16 1a90    	vmov	r1, s13
  41b480: ee17 2a90    	vmov	r2, s15
  41b484: f177 fc34    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x177868
  41b488: 9b03         	ldr	r3, [sp, #0xc]
  41b48a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  41b48e: 3338         	adds	r3, #0x38
  41b490: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41b492: f2bb fe11    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2bbc22
  41b496: ec41 0b16    	vmov	d6, r0, r1
  41b49a: ed9f 7b97    	vldr	d7, [pc, #604]          @ 0x41b6f8 <WeaponManager::weaponProximity(Weapon*)+0x2b0>
  41b49e: eeb4 6bc7    	vcmpe.f64	d6, d7
  41b4a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41b4a6: dc0e         	bgt	0x41b4c6 <WeaponManager::weaponProximity(Weapon*)+0x7e> @ imm = #0x1c
  41b4a8: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x41b708 <WeaponManager::weaponProximity(Weapon*)+0x2c0>
  41b4aa: 58e3         	ldr	r3, [r4, r3]
  41b4ac: 681b         	ldr	r3, [r3]
  41b4ae: 681b         	ldr	r3, [r3]
  41b4b0: f503 7319    	add.w	r3, r3, #0x264
  41b4b4: 681b         	ldr	r3, [r3]
  41b4b6: 4a94         	ldr	r2, [pc, #0x250]        @ 0x41b708 <WeaponManager::weaponProximity(Weapon*)+0x2c0>
  41b4b8: 58a2         	ldr	r2, [r4, r2]
  41b4ba: 6812         	ldr	r2, [r2]
  41b4bc: 4610         	mov	r0, r2
  41b4be: 4798         	blx	r3
  41b4c0: 4603         	mov	r3, r0
  41b4c2: 2b00         	cmp	r3, #0x0
  41b4c4: d001         	beq	0x41b4ca <WeaponManager::weaponProximity(Weapon*)+0x82> @ imm = #0x2
  41b4c6: 2301         	movs	r3, #0x1
  41b4c8: e000         	b	0x41b4cc <WeaponManager::weaponProximity(Weapon*)+0x84> @ imm = #0x0
  41b4ca: 2300         	movs	r3, #0x0
  41b4cc: 2b00         	cmp	r3, #0x0
  41b4ce: d00d         	beq	0x41b4ec <WeaponManager::weaponProximity(Weapon*)+0xa4> @ imm = #0x1a
  41b4d0: f1c5 f8ee    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c51dc
  41b4d4: 4603         	mov	r3, r0
  41b4d6: 4618         	mov	r0, r3
  41b4d8: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x41b70c <WeaponManager::weaponProximity(Weapon*)+0x2c4>
  41b4da: 447b         	add	r3, pc
  41b4dc: 4619         	mov	r1, r3
  41b4de: 2200         	movs	r2, #0x0
  41b4e0: f1c5 fb24    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c5648
  41b4e4: 9b01         	ldr	r3, [sp, #0x4]
  41b4e6: 2200         	movs	r2, #0x0
  41b4e8: 61da         	str	r2, [r3, #0x1c]
  41b4ea: e1c1         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x382
  41b4ec: f04f 0300    	mov.w	r3, #0x0
  41b4f0: 9302         	str	r3, [sp, #0x8]
  41b4f2: 9b01         	ldr	r3, [sp, #0x4]
  41b4f4: 69db         	ldr	r3, [r3, #0x1c]
  41b4f6: 2b00         	cmp	r3, #0x0
  41b4f8: d02c         	beq	0x41b554 <WeaponManager::weaponProximity(Weapon*)+0x10c> @ imm = #0x58
  41b4fa: 9b01         	ldr	r3, [sp, #0x4]
  41b4fc: 69db         	ldr	r3, [r3, #0x1c]
  41b4fe: 681b         	ldr	r3, [r3]
  41b500: 3350         	adds	r3, #0x50
  41b502: 681b         	ldr	r3, [r3]
  41b504: 9a01         	ldr	r2, [sp, #0x4]
  41b506: 69d2         	ldr	r2, [r2, #0x1c]
  41b508: 4610         	mov	r0, r2
  41b50a: 4798         	blx	r3
  41b50c: 4602         	mov	r2, r0
  41b50e: a90a         	add	r1, sp, #0x28
  41b510: ab08         	add	r3, sp, #0x20
  41b512: 4608         	mov	r0, r1
  41b514: 4611         	mov	r1, r2
  41b516: 461a         	mov	r2, r3
  41b518: f7fd fc36    	bl	0x418d88 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x308> @ imm = #-0x2794
  41b51c: ab0a         	add	r3, sp, #0x28
  41b51e: 4618         	mov	r0, r3
  41b520: f1c6 f906    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x1c620c
  41b524: 4603         	mov	r3, r0
  41b526: 9302         	str	r3, [sp, #0x8]
  41b528: ed9d 7a02    	vldr	s14, [sp, #8]
  41b52c: eddf 7a74    	vldr	s15, [pc, #464]         @ 0x41b700 <WeaponManager::weaponProximity(Weapon*)+0x2b8>
  41b530: eeb4 7ae7    	vcmpe.f32	s14, s15
  41b534: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41b538: dd0c         	ble	0x41b554 <WeaponManager::weaponProximity(Weapon*)+0x10c> @ imm = #0x18
  41b53a: f1c5 f8b9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c5172
  41b53e: 4603         	mov	r3, r0
  41b540: 4618         	mov	r0, r3
  41b542: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x41b710 <WeaponManager::weaponProximity(Weapon*)+0x2c8>
  41b544: 447b         	add	r3, pc
  41b546: 4619         	mov	r1, r3
  41b548: 2200         	movs	r2, #0x0
  41b54a: f1c5 faef    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c55de
  41b54e: 9b01         	ldr	r3, [sp, #0x4]
  41b550: 2200         	movs	r2, #0x0
  41b552: 61da         	str	r2, [r3, #0x1c]
  41b554: 9b00         	ldr	r3, [sp]
  41b556: 681b         	ldr	r3, [r3]
  41b558: 3350         	adds	r3, #0x50
  41b55a: 681b         	ldr	r3, [r3]
  41b55c: 9a00         	ldr	r2, [sp]
  41b55e: 4610         	mov	r0, r2
  41b560: 4798         	blx	r3
  41b562: 4602         	mov	r2, r0
  41b564: a90a         	add	r1, sp, #0x28
  41b566: ab08         	add	r3, sp, #0x20
  41b568: 4608         	mov	r0, r1
  41b56a: 4611         	mov	r1, r2
  41b56c: 461a         	mov	r2, r3
  41b56e: f7fd fc0b    	bl	0x418d88 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x308> @ imm = #-0x27ea
  41b572: ab0a         	add	r3, sp, #0x28
  41b574: 4618         	mov	r0, r3
  41b576: f1c6 f8db    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x1c61b6
  41b57a: 4603         	mov	r3, r0
  41b57c: 9304         	str	r3, [sp, #0x10]
  41b57e: ed9d 7a04    	vldr	s14, [sp, #16]
  41b582: eddf 7a5f    	vldr	s15, [pc, #380]         @ 0x41b700 <WeaponManager::weaponProximity(Weapon*)+0x2b8>
  41b586: eeb4 7ae7    	vcmpe.f32	s14, s15
  41b58a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41b58e: d400         	bmi	0x41b592 <WeaponManager::weaponProximity(Weapon*)+0x14a> @ imm = #0x0
  41b590: e16e         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x2dc
  41b592: 9b01         	ldr	r3, [sp, #0x4]
  41b594: 69db         	ldr	r3, [r3, #0x1c]
  41b596: 2b00         	cmp	r3, #0x0
  41b598: d009         	beq	0x41b5ae <WeaponManager::weaponProximity(Weapon*)+0x166> @ imm = #0x12
  41b59a: ed9d 7a04    	vldr	s14, [sp, #16]
  41b59e: eddd 7a02    	vldr	s15, [sp, #8]
  41b5a2: eeb4 7ae7    	vcmpe.f32	s14, s15
  41b5a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41b5aa: d400         	bmi	0x41b5ae <WeaponManager::weaponProximity(Weapon*)+0x166> @ imm = #0x0
  41b5ac: e160         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x2c0
  41b5ae: 9b03         	ldr	r3, [sp, #0xc]
  41b5b0: 681b         	ldr	r3, [r3]
  41b5b2: f503 73fa    	add.w	r3, r3, #0x1f4
  41b5b6: 681b         	ldr	r3, [r3]
  41b5b8: 9a03         	ldr	r2, [sp, #0xc]
  41b5ba: 4610         	mov	r0, r2
  41b5bc: 4798         	blx	r3
  41b5be: 4603         	mov	r3, r0
  41b5c0: 9305         	str	r3, [sp, #0x14]
  41b5c2: 9b03         	ldr	r3, [sp, #0xc]
  41b5c4: 681b         	ldr	r3, [r3]
  41b5c6: f503 73fc    	add.w	r3, r3, #0x1f8
  41b5ca: 681b         	ldr	r3, [r3]
  41b5cc: 9a03         	ldr	r2, [sp, #0xc]
  41b5ce: 4610         	mov	r0, r2
  41b5d0: 4798         	blx	r3
  41b5d2: 4603         	mov	r3, r0
  41b5d4: 9306         	str	r3, [sp, #0x18]
  41b5d6: 9b03         	ldr	r3, [sp, #0xc]
  41b5d8: 681b         	ldr	r3, [r3]
  41b5da: f503 73fe    	add.w	r3, r3, #0x1fc
  41b5de: 681b         	ldr	r3, [r3]
  41b5e0: 9a03         	ldr	r2, [sp, #0xc]
  41b5e2: 4610         	mov	r0, r2
  41b5e4: 4798         	blx	r3
  41b5e6: 4603         	mov	r3, r0
  41b5e8: 9307         	str	r3, [sp, #0x1c]
  41b5ea: 9b05         	ldr	r3, [sp, #0x14]
  41b5ec: 2b00         	cmp	r3, #0x0
  41b5ee: d013         	beq	0x41b618 <WeaponManager::weaponProximity(Weapon*)+0x1d0> @ imm = #0x26
  41b5f0: 9b05         	ldr	r3, [sp, #0x14]
  41b5f2: 681b         	ldr	r3, [r3]
  41b5f4: f503 731a    	add.w	r3, r3, #0x268
  41b5f8: 681b         	ldr	r3, [r3]
  41b5fa: 9805         	ldr	r0, [sp, #0x14]
  41b5fc: 4798         	blx	r3
  41b5fe: 4605         	mov	r5, r0
  41b600: 9b00         	ldr	r3, [sp]
  41b602: 681b         	ldr	r3, [r3]
  41b604: f503 731a    	add.w	r3, r3, #0x268
  41b608: 681b         	ldr	r3, [r3]
  41b60a: 9800         	ldr	r0, [sp]
  41b60c: 4798         	blx	r3
  41b60e: 4603         	mov	r3, r0
  41b610: 429d         	cmp	r5, r3
  41b612: d101         	bne	0x41b618 <WeaponManager::weaponProximity(Weapon*)+0x1d0> @ imm = #0x2
  41b614: 2301         	movs	r3, #0x1
  41b616: e000         	b	0x41b61a <WeaponManager::weaponProximity(Weapon*)+0x1d2> @ imm = #0x0
  41b618: 2300         	movs	r3, #0x0
  41b61a: 2b00         	cmp	r3, #0x0
  41b61c: d02f         	beq	0x41b67e <WeaponManager::weaponProximity(Weapon*)+0x236> @ imm = #0x5e
  41b61e: 9b05         	ldr	r3, [sp, #0x14]
  41b620: 681b         	ldr	r3, [r3]
  41b622: f503 731d    	add.w	r3, r3, #0x274
  41b626: 681b         	ldr	r3, [r3]
  41b628: 9805         	ldr	r0, [sp, #0x14]
  41b62a: 4798         	blx	r3
  41b62c: 4603         	mov	r3, r0
  41b62e: b29b         	uxth	r3, r3
  41b630: b21d         	sxth	r5, r3
  41b632: 9b05         	ldr	r3, [sp, #0x14]
  41b634: 681b         	ldr	r3, [r3]
  41b636: f503 732c    	add.w	r3, r3, #0x2b0
  41b63a: 681b         	ldr	r3, [r3]
  41b63c: 9805         	ldr	r0, [sp, #0x14]
  41b63e: 4798         	blx	r3
  41b640: 4603         	mov	r3, r0
  41b642: 429d         	cmp	r5, r3
  41b644: bfac         	ite	ge
  41b646: 2300         	movge	r3, #0x0
  41b648: 2301         	movlt	r3, #0x1
  41b64a: b2db         	uxtb	r3, r3
  41b64c: 2b00         	cmp	r3, #0x0
  41b64e: d008         	beq	0x41b662 <WeaponManager::weaponProximity(Weapon*)+0x21a> @ imm = #0x10
  41b650: 9801         	ldr	r0, [sp, #0x4]
  41b652: 9900         	ldr	r1, [sp]
  41b654: 9a05         	ldr	r2, [sp, #0x14]
  41b656: f000 fa6b    	bl	0x41bb30 <WeaponManager::transferAmmo(Weapon*, Weapon*)> @ imm = #0x4d6
  41b65a: 4603         	mov	r3, r0
  41b65c: 2b00         	cmp	r3, #0x0
  41b65e: d000         	beq	0x41b662 <WeaponManager::weaponProximity(Weapon*)+0x21a> @ imm = #0x0
  41b660: e106         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x20c
  41b662: 9b00         	ldr	r3, [sp]
  41b664: 681b         	ldr	r3, [r3]
  41b666: f503 733b    	add.w	r3, r3, #0x2ec
  41b66a: 681b         	ldr	r3, [r3]
  41b66c: 9800         	ldr	r0, [sp]
  41b66e: 4798         	blx	r3
  41b670: 4603         	mov	r3, r0
  41b672: f083 0301    	eor	r3, r3, #0x1
  41b676: b2db         	uxtb	r3, r3
  41b678: 2b00         	cmp	r3, #0x0
  41b67a: d000         	beq	0x41b67e <WeaponManager::weaponProximity(Weapon*)+0x236> @ imm = #0x0
  41b67c: e0f8         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x1f0
  41b67e: 9b06         	ldr	r3, [sp, #0x18]
  41b680: 2b00         	cmp	r3, #0x0
  41b682: d013         	beq	0x41b6ac <WeaponManager::weaponProximity(Weapon*)+0x264> @ imm = #0x26
  41b684: 9b06         	ldr	r3, [sp, #0x18]
  41b686: 681b         	ldr	r3, [r3]
  41b688: f503 731a    	add.w	r3, r3, #0x268
  41b68c: 681b         	ldr	r3, [r3]
  41b68e: 9806         	ldr	r0, [sp, #0x18]
  41b690: 4798         	blx	r3
  41b692: 4605         	mov	r5, r0
  41b694: 9b00         	ldr	r3, [sp]
  41b696: 681b         	ldr	r3, [r3]
  41b698: f503 731a    	add.w	r3, r3, #0x268
  41b69c: 681b         	ldr	r3, [r3]
  41b69e: 9800         	ldr	r0, [sp]
  41b6a0: 4798         	blx	r3
  41b6a2: 4603         	mov	r3, r0
  41b6a4: 429d         	cmp	r5, r3
  41b6a6: d101         	bne	0x41b6ac <WeaponManager::weaponProximity(Weapon*)+0x264> @ imm = #0x2
  41b6a8: 2301         	movs	r3, #0x1
  41b6aa: e000         	b	0x41b6ae <WeaponManager::weaponProximity(Weapon*)+0x266> @ imm = #0x0
  41b6ac: 2300         	movs	r3, #0x0
  41b6ae: 2b00         	cmp	r3, #0x0
  41b6b0: d03e         	beq	0x41b730 <WeaponManager::weaponProximity(Weapon*)+0x2e8> @ imm = #0x7c
  41b6b2: 9b06         	ldr	r3, [sp, #0x18]
  41b6b4: 681b         	ldr	r3, [r3]
  41b6b6: f503 731d    	add.w	r3, r3, #0x274
  41b6ba: 681b         	ldr	r3, [r3]
  41b6bc: 9806         	ldr	r0, [sp, #0x18]
  41b6be: 4798         	blx	r3
  41b6c0: 4603         	mov	r3, r0
  41b6c2: b29b         	uxth	r3, r3
  41b6c4: b21d         	sxth	r5, r3
  41b6c6: 9b06         	ldr	r3, [sp, #0x18]
  41b6c8: 681b         	ldr	r3, [r3]
  41b6ca: f503 732c    	add.w	r3, r3, #0x2b0
  41b6ce: 681b         	ldr	r3, [r3]
  41b6d0: 9806         	ldr	r0, [sp, #0x18]
  41b6d2: 4798         	blx	r3
  41b6d4: 4603         	mov	r3, r0
  41b6d6: 429d         	cmp	r5, r3
  41b6d8: bfac         	ite	ge
  41b6da: 2300         	movge	r3, #0x0
  41b6dc: 2301         	movlt	r3, #0x1
  41b6de: b2db         	uxtb	r3, r3
  41b6e0: 2b00         	cmp	r3, #0x0
  41b6e2: d017         	beq	0x41b714 <WeaponManager::weaponProximity(Weapon*)+0x2cc> @ imm = #0x2e
  41b6e4: 9801         	ldr	r0, [sp, #0x4]
  41b6e6: 9900         	ldr	r1, [sp]
  41b6e8: 9a06         	ldr	r2, [sp, #0x18]
  41b6ea: f000 fa21    	bl	0x41bb30 <WeaponManager::transferAmmo(Weapon*, Weapon*)> @ imm = #0x442
  41b6ee: 4603         	mov	r3, r0
  41b6f0: 2b00         	cmp	r3, #0x0
  41b6f2: d00f         	beq	0x41b714 <WeaponManager::weaponProximity(Weapon*)+0x2cc> @ imm = #0x1e
  41b6f4: e0bc         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x178
  41b6f6: bf00         	nop
  41b6f8: 0000         	movs	r0, r0
  41b6fa: 0000         	movs	r0, r0
  41b6fc: 0000         	movs	r0, r0
  41b6fe: 4069         	eors	r1, r5
  41b700: 0000         	movs	r0, r0
  41b702: 420c         	tst	r4, r1
  41b704: 75b6         	strb	r6, [r6, #0x16]
  41b706: 0051         	lsls	r1, r2, #0x1
  41b708: d784         	bvc	0x41b614 <WeaponManager::weaponProximity(Weapon*)+0x1cc> @ imm = #-0xf8
  41b70a: ffff 0552    	vsli.32	q8, q1, #0x1f
  41b70e: 003c         	movs	r4, r7
  41b710: 04e8         	lsls	r0, r5, #0x13
  41b712: 003c         	movs	r4, r7
  41b714: 9b00         	ldr	r3, [sp]
  41b716: 681b         	ldr	r3, [r3]
  41b718: f503 733b    	add.w	r3, r3, #0x2ec
  41b71c: 681b         	ldr	r3, [r3]
  41b71e: 9800         	ldr	r0, [sp]
  41b720: 4798         	blx	r3
  41b722: 4603         	mov	r3, r0
  41b724: f083 0301    	eor	r3, r3, #0x1
  41b728: b2db         	uxtb	r3, r3
  41b72a: 2b00         	cmp	r3, #0x0
  41b72c: d000         	beq	0x41b730 <WeaponManager::weaponProximity(Weapon*)+0x2e8> @ imm = #0x0
  41b72e: e09f         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x13e
  41b730: 9b07         	ldr	r3, [sp, #0x1c]
  41b732: 2b00         	cmp	r3, #0x0
  41b734: d013         	beq	0x41b75e <WeaponManager::weaponProximity(Weapon*)+0x316> @ imm = #0x26
  41b736: 9b07         	ldr	r3, [sp, #0x1c]
  41b738: 681b         	ldr	r3, [r3]
  41b73a: f503 731a    	add.w	r3, r3, #0x268
  41b73e: 681b         	ldr	r3, [r3]
  41b740: 9807         	ldr	r0, [sp, #0x1c]
  41b742: 4798         	blx	r3
  41b744: 4605         	mov	r5, r0
  41b746: 9b00         	ldr	r3, [sp]
  41b748: 681b         	ldr	r3, [r3]
  41b74a: f503 731a    	add.w	r3, r3, #0x268
  41b74e: 681b         	ldr	r3, [r3]
  41b750: 9800         	ldr	r0, [sp]
  41b752: 4798         	blx	r3
  41b754: 4603         	mov	r3, r0
  41b756: 429d         	cmp	r5, r3
  41b758: d101         	bne	0x41b75e <WeaponManager::weaponProximity(Weapon*)+0x316> @ imm = #0x2
  41b75a: 2301         	movs	r3, #0x1
  41b75c: e000         	b	0x41b760 <WeaponManager::weaponProximity(Weapon*)+0x318> @ imm = #0x0
  41b75e: 2300         	movs	r3, #0x0
  41b760: 2b00         	cmp	r3, #0x0
  41b762: d021         	beq	0x41b7a8 <WeaponManager::weaponProximity(Weapon*)+0x360> @ imm = #0x42
  41b764: 9b07         	ldr	r3, [sp, #0x1c]
  41b766: 681b         	ldr	r3, [r3]
  41b768: f503 731d    	add.w	r3, r3, #0x274
  41b76c: 681b         	ldr	r3, [r3]
  41b76e: 9807         	ldr	r0, [sp, #0x1c]
  41b770: 4798         	blx	r3
  41b772: 4603         	mov	r3, r0
  41b774: b29b         	uxth	r3, r3
  41b776: b21d         	sxth	r5, r3
  41b778: 9b07         	ldr	r3, [sp, #0x1c]
  41b77a: 681b         	ldr	r3, [r3]
  41b77c: f503 732c    	add.w	r3, r3, #0x2b0
  41b780: 681b         	ldr	r3, [r3]
  41b782: 9807         	ldr	r0, [sp, #0x1c]
  41b784: 4798         	blx	r3
  41b786: 4603         	mov	r3, r0
  41b788: 429d         	cmp	r5, r3
  41b78a: bfac         	ite	ge
  41b78c: 2300         	movge	r3, #0x0
  41b78e: 2301         	movlt	r3, #0x1
  41b790: b2db         	uxtb	r3, r3
  41b792: 2b00         	cmp	r3, #0x0
  41b794: d008         	beq	0x41b7a8 <WeaponManager::weaponProximity(Weapon*)+0x360> @ imm = #0x10
  41b796: 9801         	ldr	r0, [sp, #0x4]
  41b798: 9900         	ldr	r1, [sp]
  41b79a: 9a07         	ldr	r2, [sp, #0x1c]
  41b79c: f000 f9c8    	bl	0x41bb30 <WeaponManager::transferAmmo(Weapon*, Weapon*)> @ imm = #0x390
  41b7a0: 4603         	mov	r3, r0
  41b7a2: 2b00         	cmp	r3, #0x0
  41b7a4: d000         	beq	0x41b7a8 <WeaponManager::weaponProximity(Weapon*)+0x360> @ imm = #0x0
  41b7a6: e063         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0xc6
  41b7a8: 9b00         	ldr	r3, [sp]
  41b7aa: 681b         	ldr	r3, [r3]
  41b7ac: f503 731a    	add.w	r3, r3, #0x268
  41b7b0: 681b         	ldr	r3, [r3]
  41b7b2: 9800         	ldr	r0, [sp]
  41b7b4: 4798         	blx	r3
  41b7b6: 4603         	mov	r3, r0
  41b7b8: 2b02         	cmp	r3, #0x2
  41b7ba: d013         	beq	0x41b7e4 <WeaponManager::weaponProximity(Weapon*)+0x39c> @ imm = #0x26
  41b7bc: 9b00         	ldr	r3, [sp]
  41b7be: 681b         	ldr	r3, [r3]
  41b7c0: f503 731a    	add.w	r3, r3, #0x268
  41b7c4: 681b         	ldr	r3, [r3]
  41b7c6: 9800         	ldr	r0, [sp]
  41b7c8: 4798         	blx	r3
  41b7ca: 4603         	mov	r3, r0
  41b7cc: 2b14         	cmp	r3, #0x14
  41b7ce: d009         	beq	0x41b7e4 <WeaponManager::weaponProximity(Weapon*)+0x39c> @ imm = #0x12
  41b7d0: 9b00         	ldr	r3, [sp]
  41b7d2: 681b         	ldr	r3, [r3]
  41b7d4: f503 731a    	add.w	r3, r3, #0x268
  41b7d8: 681b         	ldr	r3, [r3]
  41b7da: 9800         	ldr	r0, [sp]
  41b7dc: 4798         	blx	r3
  41b7de: 4603         	mov	r3, r0
  41b7e0: 2b17         	cmp	r3, #0x17
  41b7e2: d101         	bne	0x41b7e8 <WeaponManager::weaponProximity(Weapon*)+0x3a0> @ imm = #0x2
  41b7e4: 2301         	movs	r3, #0x1
  41b7e6: e000         	b	0x41b7ea <WeaponManager::weaponProximity(Weapon*)+0x3a2> @ imm = #0x0
  41b7e8: 2300         	movs	r3, #0x0
  41b7ea: 2b00         	cmp	r3, #0x0
  41b7ec: d00d         	beq	0x41b80a <WeaponManager::weaponProximity(Weapon*)+0x3c2> @ imm = #0x1a
  41b7ee: 4b21         	ldr	r3, [pc, #0x84]         @ 0x41b874 <WeaponManager::weaponProximity(Weapon*)+0x42c>
  41b7f0: 58e3         	ldr	r3, [r4, r3]
  41b7f2: 681b         	ldr	r3, [r3]
  41b7f4: 681b         	ldr	r3, [r3]
  41b7f6: f503 7308    	add.w	r3, r3, #0x220
  41b7fa: 681b         	ldr	r3, [r3]
  41b7fc: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x41b874 <WeaponManager::weaponProximity(Weapon*)+0x42c>
  41b7fe: 58a2         	ldr	r2, [r4, r2]
  41b800: 6812         	ldr	r2, [r2]
  41b802: 4610         	mov	r0, r2
  41b804: 9900         	ldr	r1, [sp]
  41b806: 4798         	blx	r3
  41b808: e032         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x64
  41b80a: 9b00         	ldr	r3, [sp]
  41b80c: 681b         	ldr	r3, [r3]
  41b80e: f503 730b    	add.w	r3, r3, #0x22c
  41b812: 681b         	ldr	r3, [r3]
  41b814: 9a00         	ldr	r2, [sp]
  41b816: 4610         	mov	r0, r2
  41b818: 4798         	blx	r3
  41b81a: 4603         	mov	r3, r0
  41b81c: 2b00         	cmp	r3, #0x0
  41b81e: d018         	beq	0x41b852 <WeaponManager::weaponProximity(Weapon*)+0x40a> @ imm = #0x30
  41b820: 9b00         	ldr	r3, [sp]
  41b822: 681b         	ldr	r3, [r3]
  41b824: f503 730a    	add.w	r3, r3, #0x228
  41b828: 681b         	ldr	r3, [r3]
  41b82a: 9a00         	ldr	r2, [sp]
  41b82c: 4610         	mov	r0, r2
  41b82e: 4798         	blx	r3
  41b830: 4603         	mov	r3, r0
  41b832: 2b00         	cmp	r3, #0x0
  41b834: d00c         	beq	0x41b850 <WeaponManager::weaponProximity(Weapon*)+0x408> @ imm = #0x18
  41b836: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x41b874 <WeaponManager::weaponProximity(Weapon*)+0x42c>
  41b838: 58e3         	ldr	r3, [r4, r3]
  41b83a: 681b         	ldr	r3, [r3]
  41b83c: 681b         	ldr	r3, [r3]
  41b83e: f503 733a    	add.w	r3, r3, #0x2e8
  41b842: 681b         	ldr	r3, [r3]
  41b844: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x41b874 <WeaponManager::weaponProximity(Weapon*)+0x42c>
  41b846: 58a2         	ldr	r2, [r4, r2]
  41b848: 6812         	ldr	r2, [r2]
  41b84a: 4610         	mov	r0, r2
  41b84c: 9900         	ldr	r1, [sp]
  41b84e: 4798         	blx	r3
  41b850: e00e         	b	0x41b870 <WeaponManager::weaponProximity(Weapon*)+0x428> @ imm = #0x1c
  41b852: 9b01         	ldr	r3, [sp, #0x4]
  41b854: 9a00         	ldr	r2, [sp]
  41b856: 61da         	str	r2, [r3, #0x1c]
  41b858: f1c4 ff2a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c4e54
  41b85c: 4602         	mov	r2, r0
  41b85e: 9b01         	ldr	r3, [sp, #0x4]
  41b860: 69db         	ldr	r3, [r3, #0x1c]
  41b862: 4610         	mov	r0, r2
  41b864: 4a04         	ldr	r2, [pc, #0x10]         @ 0x41b878 <WeaponManager::weaponProximity(Weapon*)+0x430>
  41b866: 447a         	add	r2, pc
  41b868: 4611         	mov	r1, r2
  41b86a: 461a         	mov	r2, r3
  41b86c: f1c5 f95e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c52bc
  41b870: b00d         	add	sp, #0x34
  41b872: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41b873); words below are literal-pool data ---
  41b874: d784         	bvc	0x41b780 <WeaponManager::weaponProximity(Weapon*)+0x338> @ imm = #-0xf8
  41b876: ffff 01de    	vsra.u64	q8, q7, #0x1
  41b87a: 003c         	movs	r4, r7

// ==== WeaponManager::onPickUpWeapon
//      file offset 0x41b880 (= ELF address; Ghidra 0x42b880), 256 bytes, Thumb-2
  41b880: b530         	push	{r4, r5, lr}
  41b882: b085         	sub	sp, #0x14
  41b884: 9001         	str	r0, [sp, #0x4]
  41b886: 9100         	str	r1, [sp]
  41b888: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x41b974 <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xf4>
  41b88a: 447c         	add	r4, pc
  41b88c: 9800         	ldr	r0, [sp]
  41b88e: f17e f84b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17e096
  41b892: 4605         	mov	r5, r0
  41b894: ab02         	add	r3, sp, #0x8
  41b896: 4618         	mov	r0, r3
  41b898: f36e fdac    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36eb58
  41b89c: aa03         	add	r2, sp, #0xc
  41b89e: ab02         	add	r3, sp, #0x8
  41b8a0: 4610         	mov	r0, r2
  41b8a2: 4629         	mov	r1, r5
  41b8a4: 461a         	mov	r2, r3
  41b8a6: f39b f8db    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39b1b6
  41b8aa: ab02         	add	r3, sp, #0x8
  41b8ac: 4618         	mov	r0, r3
  41b8ae: f36e fda5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36eb4a
  41b8b2: 9b01         	ldr	r3, [sp, #0x4]
  41b8b4: 69db         	ldr	r3, [r3, #0x1c]
  41b8b6: 2b00         	cmp	r3, #0x0
  41b8b8: d011         	beq	0x41b8de <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0x5e> @ imm = #0x22
  41b8ba: 9b01         	ldr	r3, [sp, #0x4]
  41b8bc: 69db         	ldr	r3, [r3, #0x1c]
  41b8be: 681b         	ldr	r3, [r3]
  41b8c0: f503 732a    	add.w	r3, r3, #0x2a8
  41b8c4: 681b         	ldr	r3, [r3]
  41b8c6: 9a01         	ldr	r2, [sp, #0x4]
  41b8c8: 69d2         	ldr	r2, [r2, #0x1c]
  41b8ca: 4610         	mov	r0, r2
  41b8cc: 4798         	blx	r3
  41b8ce: 4603         	mov	r3, r0
  41b8d0: f083 0301    	eor	r3, r3, #0x1
  41b8d4: b2db         	uxtb	r3, r3
  41b8d6: 2b00         	cmp	r3, #0x0
  41b8d8: d001         	beq	0x41b8de <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0x5e> @ imm = #0x2
  41b8da: 2301         	movs	r3, #0x1
  41b8dc: e000         	b	0x41b8e0 <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0x60> @ imm = #0x0
  41b8de: 2300         	movs	r3, #0x0
  41b8e0: 2b00         	cmp	r3, #0x0
  41b8e2: d033         	beq	0x41b94c <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xcc> @ imm = #0x66
  41b8e4: ab03         	add	r3, sp, #0xc
  41b8e6: 4618         	mov	r0, r3
  41b8e8: f399 fbb8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x399770
  41b8ec: 4603         	mov	r3, r0
  41b8ee: 2b00         	cmp	r3, #0x0
  41b8f0: bf0c         	ite	eq
  41b8f2: 2300         	moveq	r3, #0x0
  41b8f4: 2301         	movne	r3, #0x1
  41b8f6: f88d 300b    	strb.w	r3, [sp, #0xb]
  41b8fa: 9b01         	ldr	r3, [sp, #0x4]
  41b8fc: 69db         	ldr	r3, [r3, #0x1c]
  41b8fe: 681b         	ldr	r3, [r3]
  41b900: f503 7340    	add.w	r3, r3, #0x300
  41b904: 681b         	ldr	r3, [r3]
  41b906: 9a01         	ldr	r2, [sp, #0x4]
  41b908: 69d1         	ldr	r1, [r2, #0x1c]
  41b90a: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  41b90e: 4608         	mov	r0, r1
  41b910: 4611         	mov	r1, r2
  41b912: 4798         	blx	r3
  41b914: 4b18         	ldr	r3, [pc, #0x60]         @ 0x41b978 <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xf8>
  41b916: 58e3         	ldr	r3, [r4, r3]
  41b918: 681b         	ldr	r3, [r3]
  41b91a: 681b         	ldr	r3, [r3]
  41b91c: f503 732a    	add.w	r3, r3, #0x2a8
  41b920: 681b         	ldr	r3, [r3]
  41b922: 4a15         	ldr	r2, [pc, #0x54]         @ 0x41b978 <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xf8>
  41b924: 58a2         	ldr	r2, [r4, r2]
  41b926: 6811         	ldr	r1, [r2]
  41b928: 9a01         	ldr	r2, [sp, #0x4]
  41b92a: 69d2         	ldr	r2, [r2, #0x1c]
  41b92c: 4608         	mov	r0, r1
  41b92e: 4611         	mov	r1, r2
  41b930: 4798         	blx	r3
  41b932: f1c4 febd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c4d7a
  41b936: 4603         	mov	r3, r0
  41b938: 4618         	mov	r0, r3
  41b93a: 4b10         	ldr	r3, [pc, #0x40]         @ 0x41b97c <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xfc>
  41b93c: 447b         	add	r3, pc
  41b93e: 4619         	mov	r1, r3
  41b940: 2200         	movs	r2, #0x0
  41b942: f1c5 f8f3    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c51e6
  41b946: 9b01         	ldr	r3, [sp, #0x4]
  41b948: 2200         	movs	r2, #0x0
  41b94a: 61da         	str	r2, [r3, #0x1c]
  41b94c: ab03         	add	r3, sp, #0xc
  41b94e: 4618         	mov	r0, r3
  41b950: f399 ffe0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399fc0
  41b954: e00b         	b	0x41b96e <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xee> @ imm = #0x16
  41b956: ab02         	add	r3, sp, #0x8
  41b958: 4618         	mov	r0, r3
  41b95a: f36e fd4f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36ea9e
  41b95e: f36c fba5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c74a
  41b962: ab03         	add	r3, sp, #0xc
  41b964: 4618         	mov	r0, r3
  41b966: f399 ffd5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399faa
  41b96a: f36c fb9f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c73e
  41b96e: b005         	add	sp, #0x14
  41b970: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41b971); words below are literal-pool data ---
  41b972: bf00         	nop
  41b974: 717e         	strb	r6, [r7, #0x5]
  41b976: 0051         	lsls	r1, r2, #0x1
  41b978: d784         	bvc	0x41b884 <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0x4> @ imm = #-0xf8
  41b97a: ffff 00f0    	vshr.u64	q8, q8, #0x1
  41b97e: 003c         	movs	r4, r7

// ==== WeaponManager::onPickUpWeaponAllowed
//      file offset 0x41b980 (= ELF address; Ghidra 0x42b980), 200 bytes, Thumb-2
  41b980: b570         	push	{r4, r5, r6, lr}
  41b982: b084         	sub	sp, #0x10
  41b984: 9001         	str	r0, [sp, #0x4]
  41b986: 9100         	str	r1, [sp]
  41b988: 4d2c         	ldr	r5, [pc, #0xb0]         @ 0x41ba3c <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xbc>
  41b98a: 447d         	add	r5, pc
  41b98c: 9b00         	ldr	r3, [sp]
  41b98e: 9303         	str	r3, [sp, #0xc]
  41b990: 2400         	movs	r4, #0x0
  41b992: 9b01         	ldr	r3, [sp, #0x4]
  41b994: 69db         	ldr	r3, [r3, #0x1c]
  41b996: 2b00         	cmp	r3, #0x0
  41b998: d01a         	beq	0x41b9d0 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0x50> @ imm = #0x34
  41b99a: 9b01         	ldr	r3, [sp, #0x4]
  41b99c: 69db         	ldr	r3, [r3, #0x1c]
  41b99e: 681b         	ldr	r3, [r3]
  41b9a0: f503 73fe    	add.w	r3, r3, #0x1fc
  41b9a4: 681b         	ldr	r3, [r3]
  41b9a6: 9a01         	ldr	r2, [sp, #0x4]
  41b9a8: 69d2         	ldr	r2, [r2, #0x1c]
  41b9aa: a902         	add	r1, sp, #0x8
  41b9ac: 4608         	mov	r0, r1
  41b9ae: 4611         	mov	r1, r2
  41b9b0: 4798         	blx	r3
  41b9b2: 2401         	movs	r4, #0x1
  41b9b4: 9803         	ldr	r0, [sp, #0xc]
  41b9b6: f17d ffb7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17df6e
  41b9ba: 4603         	mov	r3, r0
  41b9bc: aa02         	add	r2, sp, #0x8
  41b9be: 4610         	mov	r0, r2
  41b9c0: 4619         	mov	r1, r3
  41b9c2: f399 feaf    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x399d5e
  41b9c6: 4603         	mov	r3, r0
  41b9c8: 2b00         	cmp	r3, #0x0
  41b9ca: d101         	bne	0x41b9d0 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0x50> @ imm = #0x2
  41b9cc: 2301         	movs	r3, #0x1
  41b9ce: e000         	b	0x41b9d2 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0x52> @ imm = #0x0
  41b9d0: 2300         	movs	r3, #0x0
  41b9d2: 461e         	mov	r6, r3
  41b9d4: 2c00         	cmp	r4, #0x0
  41b9d6: d004         	beq	0x41b9e2 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0x62> @ imm = #0x8
  41b9d8: bf00         	nop
  41b9da: ab02         	add	r3, sp, #0x8
  41b9dc: 4618         	mov	r0, r3
  41b9de: f399 ff99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399f32
  41b9e2: 2e00         	cmp	r6, #0x0
  41b9e4: d027         	beq	0x41ba36 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xb6> @ imm = #0x4e
  41b9e6: 4b16         	ldr	r3, [pc, #0x58]         @ 0x41ba40 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xc0>
  41b9e8: 58eb         	ldr	r3, [r5, r3]
  41b9ea: 681b         	ldr	r3, [r3]
  41b9ec: 681b         	ldr	r3, [r3]
  41b9ee: f503 732a    	add.w	r3, r3, #0x2a8
  41b9f2: 681b         	ldr	r3, [r3]
  41b9f4: 4a12         	ldr	r2, [pc, #0x48]         @ 0x41ba40 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xc0>
  41b9f6: 58aa         	ldr	r2, [r5, r2]
  41b9f8: 6811         	ldr	r1, [r2]
  41b9fa: 9a01         	ldr	r2, [sp, #0x4]
  41b9fc: 69d2         	ldr	r2, [r2, #0x1c]
  41b9fe: 4608         	mov	r0, r1
  41ba00: 4611         	mov	r1, r2
  41ba02: 4798         	blx	r3
  41ba04: f1c4 fe54    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c4ca8
  41ba08: 4603         	mov	r3, r0
  41ba0a: 4618         	mov	r0, r3
  41ba0c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x41ba44 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xc4>
  41ba0e: 447b         	add	r3, pc
  41ba10: 4619         	mov	r1, r3
  41ba12: 2200         	movs	r2, #0x0
  41ba14: f1c5 f88a    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c5114
  41ba18: 9b01         	ldr	r3, [sp, #0x4]
  41ba1a: 2200         	movs	r2, #0x0
  41ba1c: 61da         	str	r2, [r3, #0x1c]
  41ba1e: e00a         	b	0x41ba36 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xb6> @ imm = #0x14
  41ba20: 2c00         	cmp	r4, #0x0
  41ba22: d005         	beq	0x41ba30 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xb0> @ imm = #0xa
  41ba24: bf00         	nop
  41ba26: ab02         	add	r3, sp, #0x8
  41ba28: 4618         	mov	r0, r3
  41ba2a: f399 ff73    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399ee6
  41ba2e: e000         	b	0x41ba32 <WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*)+0xb2> @ imm = #0x0
  41ba30: bf00         	nop
  41ba32: f36c fb3b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c676
  41ba36: b004         	add	sp, #0x10
  41ba38: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x41ba39); words below are literal-pool data ---
  41ba3a: bf00         	nop
  41ba3c: 707e         	strb	r6, [r7, #0x1]
  41ba3e: 0051         	lsls	r1, r2, #0x1
  41ba40: d784         	bvc	0x41b94c <WeaponManager::onPickUpWeapon(cocos2d::CCObject*)+0xcc> @ imm = #-0xf8
  41ba42: ffff 001e    	vshr.u32	d16, d14, #0x1
  41ba46: 003c         	movs	r4, r7

// ==== WeaponManager::onPickUpWeaponDenied
//      file offset 0x41ba48 (= ELF address; Ghidra 0x42ba48), 156 bytes, Thumb-2
  41ba48: b530         	push	{r4, r5, lr}
  41ba4a: b085         	sub	sp, #0x14
  41ba4c: 9001         	str	r0, [sp, #0x4]
  41ba4e: 9100         	str	r1, [sp]
  41ba50: 9b00         	ldr	r3, [sp]
  41ba52: 9303         	str	r3, [sp, #0xc]
  41ba54: 2400         	movs	r4, #0x0
  41ba56: 9b01         	ldr	r3, [sp, #0x4]
  41ba58: 69db         	ldr	r3, [r3, #0x1c]
  41ba5a: 2b00         	cmp	r3, #0x0
  41ba5c: d01a         	beq	0x41ba94 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x4c> @ imm = #0x34
  41ba5e: 9b01         	ldr	r3, [sp, #0x4]
  41ba60: 69db         	ldr	r3, [r3, #0x1c]
  41ba62: 681b         	ldr	r3, [r3]
  41ba64: f503 73fe    	add.w	r3, r3, #0x1fc
  41ba68: 681b         	ldr	r3, [r3]
  41ba6a: 9a01         	ldr	r2, [sp, #0x4]
  41ba6c: 69d2         	ldr	r2, [r2, #0x1c]
  41ba6e: a902         	add	r1, sp, #0x8
  41ba70: 4608         	mov	r0, r1
  41ba72: 4611         	mov	r1, r2
  41ba74: 4798         	blx	r3
  41ba76: 2401         	movs	r4, #0x1
  41ba78: 9803         	ldr	r0, [sp, #0xc]
  41ba7a: f17d ff55    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17deaa
  41ba7e: 4603         	mov	r3, r0
  41ba80: aa02         	add	r2, sp, #0x8
  41ba82: 4610         	mov	r0, r2
  41ba84: 4619         	mov	r1, r3
  41ba86: f399 fe4d    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x399c9a
  41ba8a: 4603         	mov	r3, r0
  41ba8c: 2b00         	cmp	r3, #0x0
  41ba8e: d101         	bne	0x41ba94 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x4c> @ imm = #0x2
  41ba90: 2301         	movs	r3, #0x1
  41ba92: e000         	b	0x41ba96 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x4e> @ imm = #0x0
  41ba94: 2300         	movs	r3, #0x0
  41ba96: 461d         	mov	r5, r3
  41ba98: 2c00         	cmp	r4, #0x0
  41ba9a: d004         	beq	0x41baa6 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x5e> @ imm = #0x8
  41ba9c: bf00         	nop
  41ba9e: ab02         	add	r3, sp, #0x8
  41baa0: 4618         	mov	r0, r3
  41baa2: f399 ff37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399e6e
  41baa6: 2d00         	cmp	r5, #0x0
  41baa8: d018         	beq	0x41badc <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x94> @ imm = #0x30
  41baaa: f1c4 fe01    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c4c02
  41baae: 4603         	mov	r3, r0
  41bab0: 4618         	mov	r0, r3
  41bab2: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x41bae0 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x98>
  41bab4: 447b         	add	r3, pc
  41bab6: 4619         	mov	r1, r3
  41bab8: 2200         	movs	r2, #0x0
  41baba: f1c5 f837    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c506e
  41babe: 9b01         	ldr	r3, [sp, #0x4]
  41bac0: 2200         	movs	r2, #0x0
  41bac2: 61da         	str	r2, [r3, #0x1c]
  41bac4: e00a         	b	0x41badc <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x94> @ imm = #0x14
  41bac6: 2c00         	cmp	r4, #0x0
  41bac8: d005         	beq	0x41bad6 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x8e> @ imm = #0xa
  41baca: bf00         	nop
  41bacc: ab02         	add	r3, sp, #0x8
  41bace: 4618         	mov	r0, r3
  41bad0: f399 ff20    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399e40
  41bad4: e000         	b	0x41bad8 <WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*)+0x90> @ imm = #0x0
  41bad6: bf00         	nop
  41bad8: f36c fae8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c5d0
  41badc: b005         	add	sp, #0x14
  41bade: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41badf); words below are literal-pool data ---
  41bae0: ff78 003b    	vqadd.u64	d16, d8, d27

// ==== WeaponManager::peerWeaponUpdated
//      file offset 0x41bae4 (= ELF address; Ghidra 0x42bae4), 74 bytes, Thumb-2
  41bae4: b510         	push	{r4, lr}
  41bae6: b084         	sub	sp, #0x10
  41bae8: 9001         	str	r0, [sp, #0x4]
  41baea: 9100         	str	r1, [sp]
  41baec: 9b00         	ldr	r3, [sp]
  41baee: 9303         	str	r3, [sp, #0xc]
  41baf0: 9b01         	ldr	r3, [sp, #0x4]
  41baf2: 699c         	ldr	r4, [r3, #0x18]
  41baf4: 9b03         	ldr	r3, [sp, #0xc]
  41baf6: 681b         	ldr	r3, [r3]
  41baf8: f503 73fe    	add.w	r3, r3, #0x1fc
  41bafc: 681b         	ldr	r3, [r3]
  41bafe: 9a03         	ldr	r2, [sp, #0xc]
  41bb00: a902         	add	r1, sp, #0x8
  41bb02: 4608         	mov	r0, r1
  41bb04: 4611         	mov	r1, r2
  41bb06: 4798         	blx	r3
  41bb08: ab02         	add	r3, sp, #0x8
  41bb0a: 4620         	mov	r0, r4
  41bb0c: 9903         	ldr	r1, [sp, #0xc]
  41bb0e: 461a         	mov	r2, r3
  41bb10: f178 ff12    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x178e24
  41bb14: ab02         	add	r3, sp, #0x8
  41bb16: 4618         	mov	r0, r3
  41bb18: f399 fefc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399df8
  41bb1c: e005         	b	0x41bb2a <WeaponManager::peerWeaponUpdated(cocos2d::CCObject*)+0x46> @ imm = #0xa
  41bb1e: ab02         	add	r3, sp, #0x8
  41bb20: 4618         	mov	r0, r3
  41bb22: f399 fef7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399dee
  41bb26: f36c fac1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c582
  41bb2a: b004         	add	sp, #0x10
  41bb2c: bd10         	pop	{r4, pc}

// ==== WeaponManager::transferAmmo
//      file offset 0x41bb30 (= ELF address; Ghidra 0x42bb30), 240 bytes, Thumb-2
  41bb30: b530         	push	{r4, r5, lr}
  41bb32: b087         	sub	sp, #0x1c
  41bb34: 9003         	str	r0, [sp, #0xc]
  41bb36: 9102         	str	r1, [sp, #0x8]
  41bb38: 9201         	str	r2, [sp, #0x4]
  41bb3a: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x41bc14 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xe4>
  41bb3c: 447c         	add	r4, pc
  41bb3e: 9b01         	ldr	r3, [sp, #0x4]
  41bb40: 681b         	ldr	r3, [r3]
  41bb42: f503 732c    	add.w	r3, r3, #0x2b0
  41bb46: 681b         	ldr	r3, [r3]
  41bb48: 9801         	ldr	r0, [sp, #0x4]
  41bb4a: 4798         	blx	r3
  41bb4c: 4605         	mov	r5, r0
  41bb4e: 9b01         	ldr	r3, [sp, #0x4]
  41bb50: 681b         	ldr	r3, [r3]
  41bb52: f503 731d    	add.w	r3, r3, #0x274
  41bb56: 681b         	ldr	r3, [r3]
  41bb58: 9801         	ldr	r0, [sp, #0x4]
  41bb5a: 4798         	blx	r3
  41bb5c: 4603         	mov	r3, r0
  41bb5e: b29b         	uxth	r3, r3
  41bb60: b21b         	sxth	r3, r3
  41bb62: 1aeb         	subs	r3, r5, r3
  41bb64: 9304         	str	r3, [sp, #0x10]
  41bb66: 9b02         	ldr	r3, [sp, #0x8]
  41bb68: 681b         	ldr	r3, [r3]
  41bb6a: f503 7332    	add.w	r3, r3, #0x2c8
  41bb6e: 681b         	ldr	r3, [r3]
  41bb70: 9802         	ldr	r0, [sp, #0x8]
  41bb72: 9904         	ldr	r1, [sp, #0x10]
  41bb74: 4798         	blx	r3
  41bb76: 4603         	mov	r3, r0
  41bb78: 9305         	str	r3, [sp, #0x14]
  41bb7a: 9b01         	ldr	r3, [sp, #0x4]
  41bb7c: 681b         	ldr	r3, [r3]
  41bb7e: f503 7331    	add.w	r3, r3, #0x2c4
  41bb82: 681b         	ldr	r3, [r3]
  41bb84: 9801         	ldr	r0, [sp, #0x4]
  41bb86: 9905         	ldr	r1, [sp, #0x14]
  41bb88: 4798         	blx	r3
  41bb8a: 9b02         	ldr	r3, [sp, #0x8]
  41bb8c: 681b         	ldr	r3, [r3]
  41bb8e: f503 733b    	add.w	r3, r3, #0x2ec
  41bb92: 681b         	ldr	r3, [r3]
  41bb94: 9802         	ldr	r0, [sp, #0x8]
  41bb96: 4798         	blx	r3
  41bb98: 4603         	mov	r3, r0
  41bb9a: 2b00         	cmp	r3, #0x0
  41bb9c: d010         	beq	0x41bbc0 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0x90> @ imm = #0x20
  41bb9e: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x41bc18 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xe8>
  41bba0: 58e3         	ldr	r3, [r4, r3]
  41bba2: 681b         	ldr	r3, [r3]
  41bba4: 681b         	ldr	r3, [r3]
  41bba6: f503 73fe    	add.w	r3, r3, #0x1fc
  41bbaa: 681b         	ldr	r3, [r3]
  41bbac: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x41bc18 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xe8>
  41bbae: 58a2         	ldr	r2, [r4, r2]
  41bbb0: 6812         	ldr	r2, [r2]
  41bbb2: 4610         	mov	r0, r2
  41bbb4: 4798         	blx	r3
  41bbb6: 4603         	mov	r3, r0
  41bbb8: 2b00         	cmp	r3, #0x0
  41bbba: d101         	bne	0x41bbc0 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0x90> @ imm = #0x2
  41bbbc: 2301         	movs	r3, #0x1
  41bbbe: e000         	b	0x41bbc2 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0x92> @ imm = #0x0
  41bbc0: 2300         	movs	r3, #0x0
  41bbc2: 2b00         	cmp	r3, #0x0
  41bbc4: d015         	beq	0x41bbf2 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xc2> @ imm = #0x2a
  41bbc6: 9b02         	ldr	r3, [sp, #0x8]
  41bbc8: ed93 7a64    	vldr	s14, [r3, #400]
  41bbcc: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41bbd0: eeb4 7ae7    	vcmpe.f32	s14, s15
  41bbd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41bbd8: dd06         	ble	0x41bbe8 <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xb8> @ imm = #0xc
  41bbda: 9b02         	ldr	r3, [sp, #0x8]
  41bbdc: f04f 0200    	mov.w	r2, #0x0
  41bbe0: f2c4 02a0    	movt	r2, #0x40a0
  41bbe4: f8c3 2190    	str.w	r2, [r3, #0x190]
  41bbe8: 9b03         	ldr	r3, [sp, #0xc]
  41bbea: 9a02         	ldr	r2, [sp, #0x8]
  41bbec: 61da         	str	r2, [r3, #0x1c]
  41bbee: 2300         	movs	r3, #0x0
  41bbf0: e00d         	b	0x41bc0e <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xde> @ imm = #0x1a
  41bbf2: f1c4 fd5d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c4aba
  41bbf6: 4603         	mov	r3, r0
  41bbf8: 4618         	mov	r0, r3
  41bbfa: 4b08         	ldr	r3, [pc, #0x20]         @ 0x41bc1c <WeaponManager::transferAmmo(Weapon*, Weapon*)+0xec>
  41bbfc: 447b         	add	r3, pc
  41bbfe: 4619         	mov	r1, r3
  41bc00: 9a02         	ldr	r2, [sp, #0x8]
  41bc02: f1c4 ff93    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c4f26
  41bc06: 9b03         	ldr	r3, [sp, #0xc]
  41bc08: 2200         	movs	r2, #0x0
  41bc0a: 61da         	str	r2, [r3, #0x1c]
  41bc0c: 2301         	movs	r3, #0x1
  41bc0e: 4618         	mov	r0, r3
  41bc10: b007         	add	sp, #0x1c
  41bc12: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41bc13); words below are literal-pool data ---
  41bc14: 6ecc         	ldr	r4, [r1, #0x6c]
  41bc16: 0051         	lsls	r1, r2, #0x1
  41bc18: d784         	bvc	0x41bb24 <WeaponManager::peerWeaponUpdated(cocos2d::CCObject*)+0x40> @ imm = #-0xf8
  41bc1a: ffff fd28    	<unknown>
  41bc1e: 003b         	movs	r3, r7

// ==== WeaponManager::removeAllWeaponsForPeer
//      file offset 0x41bc20 (= ELF address; Ghidra 0x42bc20), 228 bytes, Thumb-2
  41bc20: b510         	push	{r4, lr}
  41bc22: b086         	sub	sp, #0x18
  41bc24: 9001         	str	r0, [sp, #0x4]
  41bc26: 9100         	str	r1, [sp]
  41bc28: 4c34         	ldr	r4, [pc, #0xd0]         @ 0x41bcfc <WeaponManager::removeAllWeaponsForPeer(std::string)+0xdc>
  41bc2a: 447c         	add	r4, pc
  41bc2c: 2300         	movs	r3, #0x0
  41bc2e: 9303         	str	r3, [sp, #0xc]
  41bc30: 2300         	movs	r3, #0x0
  41bc32: 9304         	str	r3, [sp, #0x10]
  41bc34: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x41bd00 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xe0>
  41bc36: 58e3         	ldr	r3, [r4, r3]
  41bc38: 681b         	ldr	r3, [r3]
  41bc3a: 2b00         	cmp	r3, #0x0
  41bc3c: d00a         	beq	0x41bc54 <WeaponManager::removeAllWeaponsForPeer(std::string)+0x34> @ imm = #0x14
  41bc3e: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x41bd00 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xe0>
  41bc40: 58e3         	ldr	r3, [r4, r3]
  41bc42: 681b         	ldr	r3, [r3]
  41bc44: 4618         	mov	r0, r3
  41bc46: f178 f811    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x178022
  41bc4a: 4603         	mov	r3, r0
  41bc4c: 2b00         	cmp	r3, #0x0
  41bc4e: d001         	beq	0x41bc54 <WeaponManager::removeAllWeaponsForPeer(std::string)+0x34> @ imm = #0x2
  41bc50: 2301         	movs	r3, #0x1
  41bc52: e000         	b	0x41bc56 <WeaponManager::removeAllWeaponsForPeer(std::string)+0x36> @ imm = #0x0
  41bc54: 2300         	movs	r3, #0x0
  41bc56: 2b00         	cmp	r3, #0x0
  41bc58: d04d         	beq	0x41bcf6 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xd6> @ imm = #0x9a
  41bc5a: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x41bd00 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xe0>
  41bc5c: 58e3         	ldr	r3, [r4, r3]
  41bc5e: 681b         	ldr	r3, [r3]
  41bc60: 695b         	ldr	r3, [r3, #0x14]
  41bc62: 9303         	str	r3, [sp, #0xc]
  41bc64: 4b26         	ldr	r3, [pc, #0x98]         @ 0x41bd00 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xe0>
  41bc66: 58e3         	ldr	r3, [r4, r3]
  41bc68: 681b         	ldr	r3, [r3]
  41bc6a: 695b         	ldr	r3, [r3, #0x14]
  41bc6c: 2b00         	cmp	r3, #0x0
  41bc6e: d006         	beq	0x41bc7e <WeaponManager::removeAllWeaponsForPeer(std::string)+0x5e> @ imm = #0xc
  41bc70: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x41bd00 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xe0>
  41bc72: 58e3         	ldr	r3, [r4, r3]
  41bc74: 681b         	ldr	r3, [r3]
  41bc76: 695b         	ldr	r3, [r3, #0x14]
  41bc78: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41bc7c: e000         	b	0x41bc80 <WeaponManager::removeAllWeaponsForPeer(std::string)+0x60> @ imm = #0x0
  41bc7e: 2300         	movs	r3, #0x0
  41bc80: 9304         	str	r3, [sp, #0x10]
  41bc82: e02e         	b	0x41bce2 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xc2> @ imm = #0x5c
  41bc84: 9803         	ldr	r0, [sp, #0xc]
  41bc86: f6e2 fcd5    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x11d656
  41bc8a: 4603         	mov	r3, r0
  41bc8c: 9305         	str	r3, [sp, #0x14]
  41bc8e: 9b05         	ldr	r3, [sp, #0x14]
  41bc90: 681b         	ldr	r3, [r3]
  41bc92: f503 7301    	add.w	r3, r3, #0x204
  41bc96: 681b         	ldr	r3, [r3]
  41bc98: 9a05         	ldr	r2, [sp, #0x14]
  41bc9a: a902         	add	r1, sp, #0x8
  41bc9c: 4608         	mov	r0, r1
  41bc9e: 4611         	mov	r1, r2
  41bca0: 4798         	blx	r3
  41bca2: ab02         	add	r3, sp, #0x8
  41bca4: 4618         	mov	r0, r3
  41bca6: 9900         	ldr	r1, [sp]
  41bca8: f399 fce8    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3999d0
  41bcac: 4603         	mov	r3, r0
  41bcae: 2b00         	cmp	r3, #0x0
  41bcb0: bf14         	ite	ne
  41bcb2: 2300         	movne	r3, #0x0
  41bcb4: 2301         	moveq	r3, #0x1
  41bcb6: b2dc         	uxtb	r4, r3
  41bcb8: ab02         	add	r3, sp, #0x8
  41bcba: 4618         	mov	r0, r3
  41bcbc: f399 fe2a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399c54
  41bcc0: 2c00         	cmp	r4, #0x0
  41bcc2: d003         	beq	0x41bccc <WeaponManager::removeAllWeaponsForPeer(std::string)+0xac> @ imm = #0x6
  41bcc4: 9801         	ldr	r0, [sp, #0x4]
  41bcc6: 9905         	ldr	r1, [sp, #0x14]
  41bcc8: f7ff f886    	bl	0x41add8 <WeaponManager::removeItemFromWorld(Item*)> @ imm = #-0xef4
  41bccc: 9b04         	ldr	r3, [sp, #0x10]
  41bcce: 9303         	str	r3, [sp, #0xc]
  41bcd0: 9b04         	ldr	r3, [sp, #0x10]
  41bcd2: 2b00         	cmp	r3, #0x0
  41bcd4: d003         	beq	0x41bcde <WeaponManager::removeAllWeaponsForPeer(std::string)+0xbe> @ imm = #0x6
  41bcd6: 9b04         	ldr	r3, [sp, #0x10]
  41bcd8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41bcdc: e000         	b	0x41bce0 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xc0> @ imm = #0x0
  41bcde: 2300         	movs	r3, #0x0
  41bce0: 9304         	str	r3, [sp, #0x10]
  41bce2: 9b03         	ldr	r3, [sp, #0xc]
  41bce4: 2b00         	cmp	r3, #0x0
  41bce6: d1cd         	bne	0x41bc84 <WeaponManager::removeAllWeaponsForPeer(std::string)+0x64> @ imm = #-0x66
  41bce8: e005         	b	0x41bcf6 <WeaponManager::removeAllWeaponsForPeer(std::string)+0xd6> @ imm = #0xa
  41bcea: ab02         	add	r3, sp, #0x8
  41bcec: 4618         	mov	r0, r3
  41bcee: f399 fe11    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399c22
  41bcf2: f36c f9db    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c3b6
  41bcf6: b006         	add	sp, #0x18
  41bcf8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41bcf9); words below are literal-pool data ---
  41bcfa: bf00         	nop
  41bcfc: 6dde         	ldr	r6, [r3, #0x5c]
  41bcfe: 0051         	lsls	r1, r2, #0x1
  41bd00: dcec         	bgt	0x41bcdc <WeaponManager::removeAllWeaponsForPeer(std::string)+0xbc> @ imm = #-0x28
  41bd02: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== WeaponManager::removeAllWeapons
//      file offset 0x41bd04 (= ELF address; Ghidra 0x42bd04), 168 bytes, Thumb-2
  41bd04: b510         	push	{r4, lr}
  41bd06: b086         	sub	sp, #0x18
  41bd08: 9001         	str	r0, [sp, #0x4]
  41bd0a: 4c26         	ldr	r4, [pc, #0x98]         @ 0x41bda4 <WeaponManager::removeAllWeapons()+0xa0>
  41bd0c: 447c         	add	r4, pc
  41bd0e: 2300         	movs	r3, #0x0
  41bd10: 9303         	str	r3, [sp, #0xc]
  41bd12: 2300         	movs	r3, #0x0
  41bd14: 9304         	str	r3, [sp, #0x10]
  41bd16: 4b24         	ldr	r3, [pc, #0x90]         @ 0x41bda8 <WeaponManager::removeAllWeapons()+0xa4>
  41bd18: 58e3         	ldr	r3, [r4, r3]
  41bd1a: 681b         	ldr	r3, [r3]
  41bd1c: 2b00         	cmp	r3, #0x0
  41bd1e: d00a         	beq	0x41bd36 <WeaponManager::removeAllWeapons()+0x32> @ imm = #0x14
  41bd20: 4b21         	ldr	r3, [pc, #0x84]         @ 0x41bda8 <WeaponManager::removeAllWeapons()+0xa4>
  41bd22: 58e3         	ldr	r3, [r4, r3]
  41bd24: 681b         	ldr	r3, [r3]
  41bd26: 4618         	mov	r0, r3
  41bd28: f177 ffa0    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x177f40
  41bd2c: 4603         	mov	r3, r0
  41bd2e: 2b00         	cmp	r3, #0x0
  41bd30: d001         	beq	0x41bd36 <WeaponManager::removeAllWeapons()+0x32> @ imm = #0x2
  41bd32: 2301         	movs	r3, #0x1
  41bd34: e000         	b	0x41bd38 <WeaponManager::removeAllWeapons()+0x34> @ imm = #0x0
  41bd36: 2300         	movs	r3, #0x0
  41bd38: 2b00         	cmp	r3, #0x0
  41bd3a: d030         	beq	0x41bd9e <WeaponManager::removeAllWeapons()+0x9a> @ imm = #0x60
  41bd3c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x41bda8 <WeaponManager::removeAllWeapons()+0xa4>
  41bd3e: 58e3         	ldr	r3, [r4, r3]
  41bd40: 681b         	ldr	r3, [r3]
  41bd42: 695b         	ldr	r3, [r3, #0x14]
  41bd44: 9303         	str	r3, [sp, #0xc]
  41bd46: 4b18         	ldr	r3, [pc, #0x60]         @ 0x41bda8 <WeaponManager::removeAllWeapons()+0xa4>
  41bd48: 58e3         	ldr	r3, [r4, r3]
  41bd4a: 681b         	ldr	r3, [r3]
  41bd4c: 695b         	ldr	r3, [r3, #0x14]
  41bd4e: 2b00         	cmp	r3, #0x0
  41bd50: d006         	beq	0x41bd60 <WeaponManager::removeAllWeapons()+0x5c> @ imm = #0xc
  41bd52: 4b15         	ldr	r3, [pc, #0x54]         @ 0x41bda8 <WeaponManager::removeAllWeapons()+0xa4>
  41bd54: 58e3         	ldr	r3, [r4, r3]
  41bd56: 681b         	ldr	r3, [r3]
  41bd58: 695b         	ldr	r3, [r3, #0x14]
  41bd5a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41bd5e: e000         	b	0x41bd62 <WeaponManager::removeAllWeapons()+0x5e> @ imm = #0x0
  41bd60: 2300         	movs	r3, #0x0
  41bd62: 9304         	str	r3, [sp, #0x10]
  41bd64: e018         	b	0x41bd98 <WeaponManager::removeAllWeapons()+0x94> @ imm = #0x30
  41bd66: 9803         	ldr	r0, [sp, #0xc]
  41bd68: f6e2 fc64    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x11d738
  41bd6c: 4603         	mov	r3, r0
  41bd6e: 9305         	str	r3, [sp, #0x14]
  41bd70: 9b01         	ldr	r3, [sp, #0x4]
  41bd72: 6c1b         	ldr	r3, [r3, #0x40]
  41bd74: ee07 3a10    	vmov	s14, r3
  41bd78: eef8 7ac7    	vcvt.f32.s32	s15, s14
  41bd7c: 9b05         	ldr	r3, [sp, #0x14]
  41bd7e: edc3 7a64    	vstr	s15, [r3, #400]
  41bd82: 9b04         	ldr	r3, [sp, #0x10]
  41bd84: 9303         	str	r3, [sp, #0xc]
  41bd86: 9b04         	ldr	r3, [sp, #0x10]
  41bd88: 2b00         	cmp	r3, #0x0
  41bd8a: d003         	beq	0x41bd94 <WeaponManager::removeAllWeapons()+0x90> @ imm = #0x6
  41bd8c: 9b04         	ldr	r3, [sp, #0x10]
  41bd8e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  41bd92: e000         	b	0x41bd96 <WeaponManager::removeAllWeapons()+0x92> @ imm = #0x0
  41bd94: 2300         	movs	r3, #0x0
  41bd96: 9304         	str	r3, [sp, #0x10]
  41bd98: 9b03         	ldr	r3, [sp, #0xc]
  41bd9a: 2b00         	cmp	r3, #0x0
  41bd9c: d1e3         	bne	0x41bd66 <WeaponManager::removeAllWeapons()+0x62> @ imm = #-0x3a
  41bd9e: b006         	add	sp, #0x18
  41bda0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41bda1); words below are literal-pool data ---
  41bda2: bf00         	nop
  41bda4: 6cfc         	ldr	r4, [r7, #0x4c]
  41bda6: 0051         	lsls	r1, r2, #0x1
  41bda8: dcec         	bgt	0x41bd84 <WeaponManager::removeAllWeapons()+0x80> @ imm = #-0x28
  41bdaa: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== WeaponManager::getWeaponForSpawnPoint
//      file offset 0x41bdac (= ELF address; Ghidra 0x42bdac), 568 bytes, Thumb-2
  41bdac: b510         	push	{r4, lr}
  41bdae: b08c         	sub	sp, #0x30
  41bdb0: 9001         	str	r0, [sp, #0x4]
  41bdb2: 9100         	str	r1, [sp]
  41bdb4: ab04         	add	r3, sp, #0x10
  41bdb6: 4618         	mov	r0, r3
  41bdb8: f36e fb1c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36e638
  41bdbc: aa09         	add	r2, sp, #0x24
  41bdbe: ab04         	add	r3, sp, #0x10
  41bdc0: 4610         	mov	r0, r2
  41bdc2: 4a85         	ldr	r2, [pc, #0x214]        @ 0x41bfd8 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x22c>
  41bdc4: 447a         	add	r2, pc
  41bdc6: 4611         	mov	r1, r2
  41bdc8: 461a         	mov	r2, r3
  41bdca: f39a fe49    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ac92
  41bdce: ab09         	add	r3, sp, #0x24
  41bdd0: 9800         	ldr	r0, [sp]
  41bdd2: 4619         	mov	r1, r3
  41bdd4: f178 f88c    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x178118
  41bdd8: 4603         	mov	r3, r0
  41bdda: 9305         	str	r3, [sp, #0x14]
  41bddc: ab09         	add	r3, sp, #0x24
  41bdde: 4618         	mov	r0, r3
  41bde0: f399 fd98    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399b30
  41bde4: ab04         	add	r3, sp, #0x10
  41bde6: 4618         	mov	r0, r3
  41bde8: f36e fb08    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36e610
  41bdec: 9b05         	ldr	r3, [sp, #0x14]
  41bdee: 2b00         	cmp	r3, #0x0
  41bdf0: d11b         	bne	0x41be2a <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x7e> @ imm = #0x36
  41bdf2: ab04         	add	r3, sp, #0x10
  41bdf4: 4618         	mov	r0, r3
  41bdf6: f36e fafd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36e5fa
  41bdfa: aa09         	add	r2, sp, #0x24
  41bdfc: ab04         	add	r3, sp, #0x10
  41bdfe: 4610         	mov	r0, r2
  41be00: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x41bfdc <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x230>
  41be02: 447a         	add	r2, pc
  41be04: 4611         	mov	r1, r2
  41be06: 461a         	mov	r2, r3
  41be08: f39a fe2a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ac54
  41be0c: ab09         	add	r3, sp, #0x24
  41be0e: 9800         	ldr	r0, [sp]
  41be10: 4619         	mov	r1, r3
  41be12: f178 f86d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1780da
  41be16: 4603         	mov	r3, r0
  41be18: 9305         	str	r3, [sp, #0x14]
  41be1a: ab09         	add	r3, sp, #0x24
  41be1c: 4618         	mov	r0, r3
  41be1e: f399 fd79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399af2
  41be22: ab04         	add	r3, sp, #0x10
  41be24: 4618         	mov	r0, r3
  41be26: f36e fae9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36e5d2
  41be2a: 9b05         	ldr	r3, [sp, #0x14]
  41be2c: 2b00         	cmp	r3, #0x0
  41be2e: d104         	bne	0x41be3a <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x8e> @ imm = #0x8
  41be30: 9801         	ldr	r0, [sp, #0x4]
  41be32: f000 f8d7    	bl	0x41bfe4 <WeaponManager::getRandomWeapon()> @ imm = #0x1ae
  41be36: 4604         	mov	r4, r0
  41be38: e095         	b	0x41bf66 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x1ba> @ imm = #0x12a
  41be3a: 9805         	ldr	r0, [sp, #0x14]
  41be3c: f17d fd74    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x17dae8
  41be40: 4604         	mov	r4, r0
  41be42: ab03         	add	r3, sp, #0xc
  41be44: 4618         	mov	r0, r3
  41be46: f36e fad5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36e5aa
  41be4a: aa04         	add	r2, sp, #0x10
  41be4c: ab03         	add	r3, sp, #0xc
  41be4e: 4610         	mov	r0, r2
  41be50: 4621         	mov	r1, r4
  41be52: 461a         	mov	r2, r3
  41be54: f39a fe04    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39ac08
  41be58: aa09         	add	r2, sp, #0x24
  41be5a: ab04         	add	r3, sp, #0x10
  41be5c: 4610         	mov	r0, r2
  41be5e: 4619         	mov	r1, r3
  41be60: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x41bfe0 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x234>
  41be62: 447b         	add	r3, pc
  41be64: 461a         	mov	r2, r3
  41be66: f7fd fb09    	bl	0x41947c <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x9fc> @ imm = #-0x29ee
  41be6a: ab04         	add	r3, sp, #0x10
  41be6c: 4618         	mov	r0, r3
  41be6e: f399 fd51    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399aa2
  41be72: ab03         	add	r3, sp, #0xc
  41be74: 4618         	mov	r0, r3
  41be76: f36e fac1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36e582
  41be7a: ab09         	add	r3, sp, #0x24
  41be7c: 4618         	mov	r0, r3
  41be7e: f6c0 f961    	bl	0x2dc144 <std::vector<std::string, std::allocator<std::string>>::size() const> @ imm = #-0x13fd3e
  41be82: 4603         	mov	r3, r0
  41be84: 2b00         	cmp	r3, #0x0
  41be86: bf14         	ite	ne
  41be88: 2300         	movne	r3, #0x0
  41be8a: 2301         	moveq	r3, #0x1
  41be8c: b2db         	uxtb	r3, r3
  41be8e: 2b00         	cmp	r3, #0x0
  41be90: d004         	beq	0x41be9c <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0xf0> @ imm = #0x8
  41be92: 9801         	ldr	r0, [sp, #0x4]
  41be94: f000 f8a6    	bl	0x41bfe4 <WeaponManager::getRandomWeapon()> @ imm = #0x14c
  41be98: 4604         	mov	r4, r0
  41be9a: e060         	b	0x41bf5e <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x1b2> @ imm = #0xc0
  41be9c: f7fc ff40    	bl	0x418d20 <WeaponFactory::getWeaponInfoFromAmmoType(ItemType)+0x2a0> @ imm = #-0x3180
  41bea0: 4603         	mov	r3, r0
  41bea2: ee07 3a90    	vmov	s15, r3
  41bea6: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  41beaa: eddf 7a4a    	vldr	s15, [pc, #296]         @ 0x41bfd4 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x228>
  41beae: ee87 7a27    	vdiv.f32	s14, s14, s15
  41beb2: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41beb6: ee77 7a67    	vsub.f32	s15, s14, s15
  41beba: eef0 7ae7    	vabs.f32	s15, s15
  41bebe: edcd 7a07    	vstr	s15, [sp, #28]
  41bec2: ab09         	add	r3, sp, #0x24
  41bec4: 4618         	mov	r0, r3
  41bec6: f6c0 f93d    	bl	0x2dc144 <std::vector<std::string, std::allocator<std::string>>::size() const> @ imm = #-0x13fd86
  41beca: 4603         	mov	r3, r0
  41becc: ee07 3a90    	vmov	s15, r3
  41bed0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  41bed4: eddd 7a07    	vldr	s15, [sp, #28]
  41bed8: ee67 7a27    	vmul.f32	s15, s14, s15
  41bedc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  41bee0: ee17 3a90    	vmov	r3, s15
  41bee4: 9306         	str	r3, [sp, #0x18]
  41bee6: 9c06         	ldr	r4, [sp, #0x18]
  41bee8: ab09         	add	r3, sp, #0x24
  41beea: 4618         	mov	r0, r3
  41beec: f6c0 f92a    	bl	0x2dc144 <std::vector<std::string, std::allocator<std::string>>::size() const> @ imm = #-0x13fdac
  41bef0: 4603         	mov	r3, r0
  41bef2: 429c         	cmp	r4, r3
  41bef4: bf14         	ite	ne
  41bef6: 2300         	movne	r3, #0x0
  41bef8: 2301         	moveq	r3, #0x1
  41befa: b2db         	uxtb	r3, r3
  41befc: 2b00         	cmp	r3, #0x0
  41befe: d002         	beq	0x41bf06 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x15a> @ imm = #0x4
  41bf00: 9b06         	ldr	r3, [sp, #0x18]
  41bf02: 3b01         	subs	r3, #0x1
  41bf04: 9306         	str	r3, [sp, #0x18]
  41bf06: 9b06         	ldr	r3, [sp, #0x18]
  41bf08: aa09         	add	r2, sp, #0x24
  41bf0a: 4610         	mov	r0, r2
  41bf0c: 4619         	mov	r1, r3
  41bf0e: f730 faed    	bl	0x34c4ec <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)> @ imm = #-0xcfa26
  41bf12: 4603         	mov	r3, r0
  41bf14: aa03         	add	r2, sp, #0xc
  41bf16: 4610         	mov	r0, r2
  41bf18: 4619         	mov	r1, r3
  41bf1a: f39a fae5    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x39a5ca
  41bf1e: f7fb fd31    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #-0x459e
  41bf22: 4604         	mov	r4, r0
  41bf24: aa04         	add	r2, sp, #0x10
  41bf26: ab03         	add	r3, sp, #0xc
  41bf28: 4610         	mov	r0, r2
  41bf2a: 4619         	mov	r1, r3
  41bf2c: f39a fadc    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x39a5b8
  41bf30: ab04         	add	r3, sp, #0x10
  41bf32: 4620         	mov	r0, r4
  41bf34: 4619         	mov	r1, r3
  41bf36: f7fc fbab    	bl	0x418690 <WeaponFactory::getAmmoTypeFromString(std::string)> @ imm = #-0x38aa
  41bf3a: 4603         	mov	r3, r0
  41bf3c: 9308         	str	r3, [sp, #0x20]
  41bf3e: ab04         	add	r3, sp, #0x10
  41bf40: 4618         	mov	r0, r3
  41bf42: f399 fce7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3999ce
  41bf46: f7fb fd1d    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #-0x45c6
  41bf4a: 4603         	mov	r3, r0
  41bf4c: 4618         	mov	r0, r3
  41bf4e: 9908         	ldr	r1, [sp, #0x20]
  41bf50: f7fc fbd4    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #-0x3858
  41bf54: 4604         	mov	r4, r0
  41bf56: ab03         	add	r3, sp, #0xc
  41bf58: 4618         	mov	r0, r3
  41bf5a: f399 fcdb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3999b6
  41bf5e: ab09         	add	r3, sp, #0x24
  41bf60: 4618         	mov	r0, r3
  41bf62: f6bf ff89    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x1400ee
  41bf66: 4623         	mov	r3, r4
  41bf68: e030         	b	0x41bfcc <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x220> @ imm = #0x60
  41bf6a: ab09         	add	r3, sp, #0x24
  41bf6c: 4618         	mov	r0, r3
  41bf6e: f399 fcd1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3999a2
  41bf72: e7ff         	b	0x41bf74 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x1c8> @ imm = #-0x2
  41bf74: ab04         	add	r3, sp, #0x10
  41bf76: 4618         	mov	r0, r3
  41bf78: f36e fa40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36e480
  41bf7c: f36c f896    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c12c
  41bf80: ab09         	add	r3, sp, #0x24
  41bf82: 4618         	mov	r0, r3
  41bf84: f399 fcc6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39998c
  41bf88: e7ff         	b	0x41bf8a <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x1de> @ imm = #-0x2
  41bf8a: ab04         	add	r3, sp, #0x10
  41bf8c: 4618         	mov	r0, r3
  41bf8e: f36e fa35    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36e46a
  41bf92: f36c f88b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c116
  41bf96: ab04         	add	r3, sp, #0x10
  41bf98: 4618         	mov	r0, r3
  41bf9a: f399 fcbb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399976
  41bf9e: e7ff         	b	0x41bfa0 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x1f4> @ imm = #-0x2
  41bfa0: ab03         	add	r3, sp, #0xc
  41bfa2: 4618         	mov	r0, r3
  41bfa4: f36e fa2a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36e454
  41bfa8: f36c f880    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c100
  41bfac: ab04         	add	r3, sp, #0x10
  41bfae: 4618         	mov	r0, r3
  41bfb0: f399 fcb0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399960
  41bfb4: e7ff         	b	0x41bfb6 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x20a> @ imm = #-0x2
  41bfb6: ab03         	add	r3, sp, #0xc
  41bfb8: 4618         	mov	r0, r3
  41bfba: f399 fcab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x399956
  41bfbe: e7ff         	b	0x41bfc0 <WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*)+0x214> @ imm = #-0x2
  41bfc0: ab09         	add	r3, sp, #0x24
  41bfc2: 4618         	mov	r0, r3
  41bfc4: f6bf ff58    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x140150
  41bfc8: f36c f870    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36c0e0
  41bfcc: 4618         	mov	r0, r3
  41bfce: b00c         	add	sp, #0x30
  41bfd0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41bfd1); words below are literal-pool data ---
  41bfd2: bf00         	nop
  41bfd4: 0000         	movs	r0, r0
  41bfd6: 4e80         	ldr	r6, [pc, #0x200]        @ 0x41c1d8 <WeaponManager::getRandomWeapon()+0x1f4>
  41bfd8: fc98 003b    	ldc2	p0, c0, [r8], {59}
  41bfdc: fc62 003b    	stc2l	p0, c0, [r2], #-236
  41bfe0: fc0a 003b    	<unknown>

// ==== WeaponManager::getRandomWeapon
//      file offset 0x41bfe4 (= ELF address; Ghidra 0x42bfe4), 28 bytes, Thumb-2
  41bfe4: b500         	push	{lr}
  41bfe6: b083         	sub	sp, #0xc
  41bfe8: 9001         	str	r0, [sp, #0x4]
  41bfea: f7fb fccb    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #-0x466a
  41bfee: 4603         	mov	r3, r0
  41bff0: 4618         	mov	r0, r3
  41bff2: f7fc f9fd    	bl	0x4183f0 <WeaponFactory::createRandomWeapon()> @ imm = #-0x3c06
  41bff6: 4603         	mov	r3, r0
  41bff8: 4618         	mov	r0, r3
  41bffa: b003         	add	sp, #0xc
  41bffc: f85d fb04    	ldr	pc, [sp], #4
