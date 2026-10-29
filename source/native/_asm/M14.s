// M14: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../M14.cpp

// ==== M14::M14
//      file offset 0x354114 (= ELF address; Ghidra 0x364114), 44 bytes, Thumb-2
  354114: b510         	push	{r4, lr}
  354116: b082         	sub	sp, #0x8
  354118: 9001         	str	r0, [sp, #0x4]
  35411a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x354138 <M14::M14()+0x24>
  35411c: 447c         	add	r4, pc
  35411e: 9b01         	ldr	r3, [sp, #0x4]
  354120: 4618         	mov	r0, r3
  354122: f0c0 ff41    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xc0e82
  354126: 9b01         	ldr	r3, [sp, #0x4]
  354128: 4a04         	ldr	r2, [pc, #0x10]         @ 0x35413c <M14::M14()+0x28>
  35412a: 58a2         	ldr	r2, [r4, r2]
  35412c: 3208         	adds	r2, #0x8
  35412e: 601a         	str	r2, [r3]
  354130: 9b01         	ldr	r3, [sp, #0x4]
  354132: 4618         	mov	r0, r3
  354134: b002         	add	sp, #0x8
  354136: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x354137); words below are literal-pool data ---
  354138: e8ec 005d    	strd	r0, r0, [r12], #372
  35413c: db78         	blt	0x354230 <M14::init()+0xf0> @ imm = #0xf0
  35413e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== M14::init
//      file offset 0x354140 (= ELF address; Ghidra 0x364140), 908 bytes, Thumb-2
  354140: b530         	push	{r4, r5, lr}
  354142: b08b         	sub	sp, #0x2c
  354144: 9005         	str	r0, [sp, #0x14]
  354146: 9b05         	ldr	r3, [sp, #0x14]
  354148: 4618         	mov	r0, r3
  35414a: f0c0 ff51    	bl	0x414ff0 <Weapon::init()> @ imm = #0xc0ea2
  35414e: 4603         	mov	r3, r0
  354150: f88d 301f    	strb.w	r3, [sp, #0x1f]
  354154: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  354158: f083 0301    	eor	r3, r3, #0x1
  35415c: b2db         	uxtb	r3, r3
  35415e: 2b00         	cmp	r3, #0x0
  354160: d001         	beq	0x354166 <M14::init()+0x26> @ imm = #0x2
  354162: 2300         	movs	r3, #0x0
  354164: e19a         	b	0x35449c <M14::init()+0x35c> @ imm = #0x334
  354166: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x3544b0 <M14::init()+0x370>
  354168: 447b         	add	r3, pc
  35416a: 4618         	mov	r0, r3
  35416c: f284 f8ca    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x284194
  354170: 4602         	mov	r2, r0
  354172: 9b05         	ldr	r3, [sp, #0x14]
  354174: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  354178: 9b05         	ldr	r3, [sp, #0x14]
  35417a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35417e: 4618         	mov	r0, r3
  354180: f243 feb2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x243d64
  354184: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x3544b4 <M14::init()+0x374>
  354186: 447b         	add	r3, pc
  354188: 4618         	mov	r0, r3
  35418a: f284 f8bb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x284176
  35418e: 4602         	mov	r2, r0
  354190: 9b05         	ldr	r3, [sp, #0x14]
  354192: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  354196: 9b05         	ldr	r3, [sp, #0x14]
  354198: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35419c: 4618         	mov	r0, r3
  35419e: f243 fea3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x243d46
  3541a2: 9b05         	ldr	r3, [sp, #0x14]
  3541a4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3541a8: 681b         	ldr	r3, [r3]
  3541aa: 337c         	adds	r3, #0x7c
  3541ac: 681c         	ldr	r4, [r3]
  3541ae: 9b05         	ldr	r3, [sp, #0x14]
  3541b0: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  3541b4: ab08         	add	r3, sp, #0x20
  3541b6: 4618         	mov	r0, r3
  3541b8: f04f 4140    	mov.w	r1, #0xc0000000
  3541bc: f64c 42cd    	movw	r2, #0xcccd
  3541c0: f6c3 62cc    	movt	r2, #0x3ecc
  3541c4: f23e fd94    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23eb28
  3541c8: ab08         	add	r3, sp, #0x20
  3541ca: 4628         	mov	r0, r5
  3541cc: 4619         	mov	r1, r3
  3541ce: 47a0         	blx	r4
  3541d0: 9b05         	ldr	r3, [sp, #0x14]
  3541d2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3541d6: 681b         	ldr	r3, [r3]
  3541d8: 3340         	adds	r3, #0x40
  3541da: 681b         	ldr	r3, [r3]
  3541dc: 9a05         	ldr	r2, [sp, #0x14]
  3541de: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3541e2: 4610         	mov	r0, r2
  3541e4: f04f 0100    	mov.w	r1, #0x0
  3541e8: f6c3 71e0    	movt	r1, #0x3fe0
  3541ec: 4798         	blx	r3
  3541ee: 9b05         	ldr	r3, [sp, #0x14]
  3541f0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3541f4: 681b         	ldr	r3, [r3]
  3541f6: 3390         	adds	r3, #0x90
  3541f8: 681b         	ldr	r3, [r3]
  3541fa: 9a05         	ldr	r2, [sp, #0x14]
  3541fc: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  354200: 4610         	mov	r0, r2
  354202: 2100         	movs	r1, #0x0
  354204: 4798         	blx	r3
  354206: 9b05         	ldr	r3, [sp, #0x14]
  354208: 681b         	ldr	r3, [r3]
  35420a: f503 73f0    	add.w	r3, r3, #0x1e0
  35420e: 681b         	ldr	r3, [r3]
  354210: 9805         	ldr	r0, [sp, #0x14]
  354212: 4798         	blx	r3
  354214: 9b05         	ldr	r3, [sp, #0x14]
  354216: 681b         	ldr	r3, [r3]
  354218: 33cc         	adds	r3, #0xcc
  35421a: 681b         	ldr	r3, [r3]
  35421c: 9905         	ldr	r1, [sp, #0x14]
  35421e: 9a05         	ldr	r2, [sp, #0x14]
  354220: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  354224: 4608         	mov	r0, r1
  354226: 4611         	mov	r1, r2
  354228: 2200         	movs	r2, #0x0
  35422a: 4798         	blx	r3
  35422c: 9b05         	ldr	r3, [sp, #0x14]
  35422e: 681b         	ldr	r3, [r3]
  354230: 33cc         	adds	r3, #0xcc
  354232: 681b         	ldr	r3, [r3]
  354234: 9905         	ldr	r1, [sp, #0x14]
  354236: 9a05         	ldr	r2, [sp, #0x14]
  354238: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35423c: 4608         	mov	r0, r1
  35423e: 4611         	mov	r1, r2
  354240: 2200         	movs	r2, #0x0
  354242: 4798         	blx	r3
  354244: 9b05         	ldr	r3, [sp, #0x14]
  354246: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  35424a: f04f 507e    	mov.w	r0, #0x3f800000
  35424e: f788 fd19    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x775ce
  354252: 4603         	mov	r3, r0
  354254: 4620         	mov	r0, r4
  354256: 4619         	mov	r1, r3
  354258: f246 f808    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x246010
  35425c: 9b05         	ldr	r3, [sp, #0x14]
  35425e: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  354262: ab07         	add	r3, sp, #0x1c
  354264: 4618         	mov	r0, r3
  354266: f036 f0c5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43618a
  35426a: aa08         	add	r2, sp, #0x20
  35426c: ab07         	add	r3, sp, #0x1c
  35426e: 4610         	mov	r0, r2
  354270: 4a91         	ldr	r2, [pc, #0x244]        @ 0x3544b8 <M14::init()+0x378>
  354272: 447a         	add	r2, pc
  354274: 4611         	mov	r1, r2
  354276: 461a         	mov	r2, r3
  354278: f062 f3f2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4627e4
  35427c: ab08         	add	r3, sp, #0x20
  35427e: 4618         	mov	r0, r3
  354280: f245 fbdc    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2457b8
  354284: 4603         	mov	r3, r0
  354286: 4620         	mov	r0, r4
  354288: 4619         	mov	r1, r3
  35428a: f245 ffef    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x245fde
  35428e: ab08         	add	r3, sp, #0x20
  354290: 4618         	mov	r0, r3
  354292: f061 f33f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46167e
  354296: ab07         	add	r3, sp, #0x1c
  354298: 4618         	mov	r0, r3
  35429a: f036 f0af    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43615e
  35429e: 9b05         	ldr	r3, [sp, #0x14]
  3542a0: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3542a4: f243 3033    	movw	r0, #0x3333
  3542a8: f6c3 7033    	movt	r0, #0x3f33
  3542ac: f788 fcea    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7762c
  3542b0: 4603         	mov	r3, r0
  3542b2: 4620         	mov	r0, r4
  3542b4: 4619         	mov	r1, r3
  3542b6: f245 ffd9    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x245fb2
  3542ba: 9b05         	ldr	r3, [sp, #0x14]
  3542bc: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3542c0: ab07         	add	r3, sp, #0x1c
  3542c2: 4618         	mov	r0, r3
  3542c4: f036 f096    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43612c
  3542c8: aa08         	add	r2, sp, #0x20
  3542ca: ab07         	add	r3, sp, #0x1c
  3542cc: 4610         	mov	r0, r2
  3542ce: 4a7b         	ldr	r2, [pc, #0x1ec]        @ 0x3544bc <M14::init()+0x37c>
  3542d0: 447a         	add	r2, pc
  3542d2: 4611         	mov	r1, r2
  3542d4: 461a         	mov	r2, r3
  3542d6: f062 f3c3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x462786
  3542da: ab08         	add	r3, sp, #0x20
  3542dc: 4618         	mov	r0, r3
  3542de: f245 fbad    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x24575a
  3542e2: 4603         	mov	r3, r0
  3542e4: 4620         	mov	r0, r4
  3542e6: 4619         	mov	r1, r3
  3542e8: f245 ffc0    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x245f80
  3542ec: ab08         	add	r3, sp, #0x20
  3542ee: 4618         	mov	r0, r3
  3542f0: f061 f310    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x461620
  3542f4: ab07         	add	r3, sp, #0x1c
  3542f6: 4618         	mov	r0, r3
  3542f8: f036 f080    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x436100
  3542fc: 9b05         	ldr	r3, [sp, #0x14]
  3542fe: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  354302: f04f 507c    	mov.w	r0, #0x3f000000
  354306: f788 fcbd    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x77686
  35430a: 4603         	mov	r3, r0
  35430c: 4620         	mov	r0, r4
  35430e: 4619         	mov	r1, r3
  354310: f245 ffac    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x245f58
  354314: 9b05         	ldr	r3, [sp, #0x14]
  354316: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  35431a: ab07         	add	r3, sp, #0x1c
  35431c: 4618         	mov	r0, r3
  35431e: f036 f069    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4360d2
  354322: aa08         	add	r2, sp, #0x20
  354324: ab07         	add	r3, sp, #0x1c
  354326: 4610         	mov	r0, r2
  354328: 4a65         	ldr	r2, [pc, #0x194]        @ 0x3544c0 <M14::init()+0x380>
  35432a: 447a         	add	r2, pc
  35432c: 4611         	mov	r1, r2
  35432e: 461a         	mov	r2, r3
  354330: f062 f396    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x46272c
  354334: ab08         	add	r3, sp, #0x20
  354336: 4618         	mov	r0, r3
  354338: f245 fb80    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x245700
  35433c: 4603         	mov	r3, r0
  35433e: 4620         	mov	r0, r4
  354340: 4619         	mov	r1, r3
  354342: f245 ff93    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x245f26
  354346: ab08         	add	r3, sp, #0x20
  354348: 4618         	mov	r0, r3
  35434a: f061 f2e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4615c6
  35434e: ab07         	add	r3, sp, #0x1c
  354350: 4618         	mov	r0, r3
  354352: f036 f053    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4360a6
  354356: 9b05         	ldr	r3, [sp, #0x14]
  354358: 2200         	movs	r2, #0x0
  35435a: f8c3 2144    	str.w	r2, [r3, #0x144]
  35435e: 9b05         	ldr	r3, [sp, #0x14]
  354360: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  354364: 4618         	mov	r0, r3
  354366: 2100         	movs	r1, #0x0
  354368: f245 feda    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x245db4
  35436c: 4603         	mov	r3, r0
  35436e: 4618         	mov	r0, r3
  354370: f788 fc80    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x77700
  354374: 4602         	mov	r2, r0
  354376: 9b05         	ldr	r3, [sp, #0x14]
  354378: f8c3 2148    	str.w	r2, [r3, #0x148]
  35437c: 9b05         	ldr	r3, [sp, #0x14]
  35437e: f64c 42cd    	movw	r2, #0xcccd
  354382: f6c3 720c    	movt	r2, #0x3f0c
  354386: f8c3 215c    	str.w	r2, [r3, #0x15c]
  35438a: 9b05         	ldr	r3, [sp, #0x14]
  35438c: f04f 0200    	mov.w	r2, #0x0
  354390: f2c4 0210    	movt	r2, #0x4010
  354394: f8c3 2160    	str.w	r2, [r3, #0x160]
  354398: 9b05         	ldr	r3, [sp, #0x14]
  35439a: f04f 0200    	mov.w	r2, #0x0
  35439e: f8c3 2164    	str.w	r2, [r3, #0x164]
  3543a2: 9b05         	ldr	r3, [sp, #0x14]
  3543a4: f04f 0200    	mov.w	r2, #0x0
  3543a8: f2c4 12c8    	movt	r2, #0x41c8
  3543ac: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3543b0: 9b05         	ldr	r3, [sp, #0x14]
  3543b2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3543b6: 681b         	ldr	r3, [r3]
  3543b8: 3398         	adds	r3, #0x98
  3543ba: 681b         	ldr	r3, [r3]
  3543bc: 9a05         	ldr	r2, [sp, #0x14]
  3543be: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3543c2: 4610         	mov	r0, r2
  3543c4: f04f 0100    	mov.w	r1, #0x0
  3543c8: f2c4 1190    	movt	r1, #0x4190
  3543cc: 4798         	blx	r3
  3543ce: 9b05         	ldr	r3, [sp, #0x14]
  3543d0: 2224         	movs	r2, #0x24
  3543d2: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3543d6: 9b05         	ldr	r3, [sp, #0x14]
  3543d8: 2206         	movs	r2, #0x6
  3543da: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3543de: 9b05         	ldr	r3, [sp, #0x14]
  3543e0: 2278         	movs	r2, #0x78
  3543e2: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3543e6: 9b05         	ldr	r3, [sp, #0x14]
  3543e8: 2200         	movs	r2, #0x0
  3543ea: f883 2181    	strb.w	r2, [r3, #0x181]
  3543ee: 9b05         	ldr	r3, [sp, #0x14]
  3543f0: 2210         	movs	r2, #0x10
  3543f2: f8c3 2188    	str.w	r2, [r3, #0x188]
  3543f6: 9b05         	ldr	r3, [sp, #0x14]
  3543f8: 2223         	movs	r2, #0x23
  3543fa: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3543fe: 9b05         	ldr	r3, [sp, #0x14]
  354400: 2228         	movs	r2, #0x28
  354402: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  354406: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3544c4 <M14::init()+0x384>
  354408: 447b         	add	r3, pc
  35440a: 681a         	ldr	r2, [r3]
  35440c: 9b05         	ldr	r3, [sp, #0x14]
  35440e: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  354412: 9b05         	ldr	r3, [sp, #0x14]
  354414: f44f 62fa    	mov.w	r2, #0x7d0
  354418: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  35441c: 9b05         	ldr	r3, [sp, #0x14]
  35441e: 2206         	movs	r2, #0x6
  354420: f8c3 2170    	str.w	r2, [r3, #0x170]
  354424: 9b05         	ldr	r3, [sp, #0x14]
  354426: 2224         	movs	r2, #0x24
  354428: f8c3 2174    	str.w	r2, [r3, #0x174]
  35442c: 9c05         	ldr	r4, [sp, #0x14]
  35442e: 466b         	mov	r3, sp
  354430: 4618         	mov	r0, r3
  354432: ed9f 0b1d    	vldr	d0, [pc, #116]          @ 0x3544a8 <M14::init()+0x368>
  354436: eeb2 1b08    	vmov.f64	d1, #1.200000e+01
  35443a: f7fe ff95    	bl	0x353368 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x1d8> @ imm = #-0x10d6
  35443e: f504 74ec    	add.w	r4, r4, #0x1d8
  354442: 466b         	mov	r3, sp
  354444: cb0f         	ldm	r3, {r0, r1, r2, r3}
  354446: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  35444a: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3544c8 <M14::init()+0x388>
  35444c: 447b         	add	r3, pc
  35444e: 681a         	ldr	r2, [r3]
  354450: 9b05         	ldr	r3, [sp, #0x14]
  354452: f8c3 2198    	str.w	r2, [r3, #0x198]
  354456: 2301         	movs	r3, #0x1
  354458: e020         	b	0x35449c <M14::init()+0x35c> @ imm = #0x40
  35445a: ab08         	add	r3, sp, #0x20
  35445c: 4618         	mov	r0, r3
  35445e: f061 f259    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4614b2
  354462: e7ff         	b	0x354464 <M14::init()+0x324> @ imm = #-0x2
  354464: ab07         	add	r3, sp, #0x1c
  354466: 4618         	mov	r0, r3
  354468: f035 f7c8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x435f90
  35446c: f033 f61e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x433c3c
  354470: ab08         	add	r3, sp, #0x20
  354472: 4618         	mov	r0, r3
  354474: f061 f24e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46149c
  354478: e7ff         	b	0x35447a <M14::init()+0x33a> @ imm = #-0x2
  35447a: ab07         	add	r3, sp, #0x1c
  35447c: 4618         	mov	r0, r3
  35447e: f035 f7bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x435f7a
  354482: f033 f613    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x433c26
  354486: ab08         	add	r3, sp, #0x20
  354488: 4618         	mov	r0, r3
  35448a: f061 f243    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x461486
  35448e: e7ff         	b	0x354490 <M14::init()+0x350> @ imm = #-0x2
  354490: ab07         	add	r3, sp, #0x1c
  354492: 4618         	mov	r0, r3
  354494: f035 f7b2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x435f64
  354498: f033 f608    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x433c10
  35449c: 4618         	mov	r0, r3
  35449e: b00b         	add	sp, #0x2c
  3544a0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3544a1); words below are literal-pool data ---
  3544a2: bf00         	nop
  3544a4: f3af 8000    	nop.w
  3544a8: 0000         	movs	r0, r0
  3544aa: 0000         	movs	r0, r0
  3544ac: 8000         	strh	r0, [r0]
  3544ae: 405d         	eors	r5, r3
  3544b0: 7d7c         	ldrb	r4, [r7, #0x15]
  3544b2: 0047         	lsls	r7, r0, #0x1
  3544b4: 7d6a         	ldrb	r2, [r5, #0x15]
  3544b6: 0047         	lsls	r7, r0, #0x1
  3544b8: 7c8a         	ldrb	r2, [r1, #0x12]
  3544ba: 0047         	lsls	r7, r0, #0x1
  3544bc: 7c30         	ldrb	r0, [r6, #0x10]
  3544be: 0047         	lsls	r7, r0, #0x1
  3544c0: 7bda         	ldrb	r2, [r3, #0xf]
  3544c2: 0047         	lsls	r7, r0, #0x1
  3544c4: efac 005d    	<unknown>
  3544c8: ef64 005d    	<unknown>

// ==== M14::~M14
//      file offset 0x3544d0 (= ELF address; Ghidra 0x3644d0), 92 bytes, Thumb-2
  3544d0: b500         	push	{lr}
  3544d2: b083         	sub	sp, #0xc
  3544d4: 9001         	str	r0, [sp, #0x4]
  3544d6: 4913         	ldr	r1, [pc, #0x4c]         @ 0x354524 <M14::~M14()+0x54>
  3544d8: 4479         	add	r1, pc
  3544da: 9b01         	ldr	r3, [sp, #0x4]
  3544dc: 4a12         	ldr	r2, [pc, #0x48]         @ 0x354528 <M14::~M14()+0x58>
  3544de: 588a         	ldr	r2, [r1, r2]
  3544e0: 3208         	adds	r2, #0x8
  3544e2: 601a         	str	r2, [r3]
  3544e4: 9b01         	ldr	r3, [sp, #0x4]
  3544e6: 4618         	mov	r0, r3
  3544e8: f23c f8a0    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x23c140
  3544ec: 9b01         	ldr	r3, [sp, #0x4]
  3544ee: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3544f2: 4618         	mov	r0, r3
  3544f4: f243 fce0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2439c0
  3544f8: 9b01         	ldr	r3, [sp, #0x4]
  3544fa: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3544fe: 4618         	mov	r0, r3
  354500: f243 fcda    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2439b4
  354504: 9b01         	ldr	r3, [sp, #0x4]
  354506: 4618         	mov	r0, r3
  354508: f0c0 fe72    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xc0ce4
  35450c: 2300         	movs	r3, #0x0
  35450e: 2b00         	cmp	r3, #0x0
  354510: d002         	beq	0x354518 <M14::~M14()+0x48> @ imm = #0x4
  354512: 9801         	ldr	r0, [sp, #0x4]
  354514: f033 f5c6    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x433b8c
  354518: 9b01         	ldr	r3, [sp, #0x4]
  35451a: 4618         	mov	r0, r3
  35451c: b003         	add	sp, #0xc
  35451e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x354521); words below are literal-pool data ---
  354522: bf00         	nop
  354524: e530         	b	0x353f88 <LocalGameLayer::onDA(cocos2d::CCObject*)+0xdf8> @ imm = #-0x5a0
  354526: 005d         	lsls	r5, r3, #0x1
  354528: db78         	blt	0x35461c <M14::triggerPull(float)+0xd4> @ imm = #0xf0
  35452a: ffff b500    	<unknown>

// ==== M14::~M14
//      file offset 0x35452c (= ELF address; Ghidra 0x36452c), 28 bytes, Thumb-2
  35452c: b500         	push	{lr}
  35452e: b083         	sub	sp, #0xc
  354530: 9001         	str	r0, [sp, #0x4]
  354532: 9801         	ldr	r0, [sp, #0x4]
  354534: f7ff ffcc    	bl	0x3544d0 <M14::~M14()>  @ imm = #-0x68
  354538: 9801         	ldr	r0, [sp, #0x4]
  35453a: f033 f5b3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x433b66
  35453e: 9b01         	ldr	r3, [sp, #0x4]
  354540: 4618         	mov	r0, r3
  354542: b003         	add	sp, #0xc
  354544: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::triggerPull
//      file offset 0x354548 (= ELF address; Ghidra 0x364548), 352 bytes, Thumb-2
  354548: b510         	push	{r4, lr}
  35454a: b088         	sub	sp, #0x20
  35454c: 9003         	str	r0, [sp, #0xc]
  35454e: 9102         	str	r1, [sp, #0x8]
  354550: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x3546a0 <M14::triggerPull(float)+0x158>
  354552: 447c         	add	r4, pc
  354554: 9b03         	ldr	r3, [sp, #0xc]
  354556: ed93 7a44    	vldr	s14, [r3, #272]
  35455a: 9b03         	ldr	r3, [sp, #0xc]
  35455c: edd3 7a57    	vldr	s15, [r3, #348]
  354560: eeb4 7ae7    	vcmpe.f32	s14, s15
  354564: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  354568: dd71         	ble	0x35464e <M14::triggerPull(float)+0x106> @ imm = #0xe2
  35456a: 9b03         	ldr	r3, [sp, #0xc]
  35456c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  354570: b21b         	sxth	r3, r3
  354572: 2b00         	cmp	r3, #0x0
  354574: dd0f         	ble	0x354596 <M14::triggerPull(float)+0x4e> @ imm = #0x1e
  354576: 9b03         	ldr	r3, [sp, #0xc]
  354578: 681b         	ldr	r3, [r3]
  35457a: f503 7333    	add.w	r3, r3, #0x2cc
  35457e: 681b         	ldr	r3, [r3]
  354580: 9a03         	ldr	r2, [sp, #0xc]
  354582: 4610         	mov	r0, r2
  354584: 4798         	blx	r3
  354586: 4603         	mov	r3, r0
  354588: f083 0301    	eor	r3, r3, #0x1
  35458c: b2db         	uxtb	r3, r3
  35458e: 2b00         	cmp	r3, #0x0
  354590: d001         	beq	0x354596 <M14::triggerPull(float)+0x4e> @ imm = #0x2
  354592: 2301         	movs	r3, #0x1
  354594: e000         	b	0x354598 <M14::triggerPull(float)+0x50> @ imm = #0x0
  354596: 2300         	movs	r3, #0x0
  354598: 2b00         	cmp	r3, #0x0
  35459a: d02c         	beq	0x3545f6 <M14::triggerPull(float)+0xae> @ imm = #0x58
  35459c: 9b03         	ldr	r3, [sp, #0xc]
  35459e: 2201         	movs	r2, #0x1
  3545a0: f883 2180    	strb.w	r2, [r3, #0x180]
  3545a4: 9b03         	ldr	r3, [sp, #0xc]
  3545a6: 681b         	ldr	r3, [r3]
  3545a8: f503 7325    	add.w	r3, r3, #0x294
  3545ac: 681b         	ldr	r3, [r3]
  3545ae: 9803         	ldr	r0, [sp, #0xc]
  3545b0: 4798         	blx	r3
  3545b2: 9b03         	ldr	r3, [sp, #0xc]
  3545b4: 681b         	ldr	r3, [r3]
  3545b6: f503 7342    	add.w	r3, r3, #0x308
  3545ba: 681b         	ldr	r3, [r3]
  3545bc: 9a03         	ldr	r2, [sp, #0xc]
  3545be: 4610         	mov	r0, r2
  3545c0: 4798         	blx	r3
  3545c2: 9b03         	ldr	r3, [sp, #0xc]
  3545c4: 681b         	ldr	r3, [r3]
  3545c6: f503 7343    	add.w	r3, r3, #0x30c
  3545ca: 681b         	ldr	r3, [r3]
  3545cc: 9a03         	ldr	r2, [sp, #0xc]
  3545ce: 4610         	mov	r0, r2
  3545d0: 4798         	blx	r3
  3545d2: 9b03         	ldr	r3, [sp, #0xc]
  3545d4: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3545d8: 3301         	adds	r3, #0x1
  3545da: b2da         	uxtb	r2, r3
  3545dc: 9b03         	ldr	r3, [sp, #0xc]
  3545de: f883 2195    	strb.w	r2, [r3, #0x195]
  3545e2: 9b03         	ldr	r3, [sp, #0xc]
  3545e4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3545e8: b29b         	uxth	r3, r3
  3545ea: 3b00         	subs	r3, #0x0
  3545ec: b29a         	uxth	r2, r3
  3545ee: 9b03         	ldr	r3, [sp, #0xc]
  3545f0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3545f4: e026         	b	0x354644 <M14::triggerPull(float)+0xfc> @ imm = #0x4c
  3545f6: 9b03         	ldr	r3, [sp, #0xc]
  3545f8: 681b         	ldr	r3, [r3]
  3545fa: f503 7333    	add.w	r3, r3, #0x2cc
  3545fe: 681b         	ldr	r3, [r3]
  354600: 9a03         	ldr	r2, [sp, #0xc]
  354602: 4610         	mov	r0, r2
  354604: 4798         	blx	r3
  354606: 4603         	mov	r3, r0
  354608: f083 0301    	eor	r3, r3, #0x1
  35460c: b2db         	uxtb	r3, r3
  35460e: 2b00         	cmp	r3, #0x0
  354610: d018         	beq	0x354644 <M14::triggerPull(float)+0xfc> @ imm = #0x30
  354612: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3546a4 <M14::triggerPull(float)+0x15c>
  354614: 58e3         	ldr	r3, [r4, r3]
  354616: 681c         	ldr	r4, [r3]
  354618: 9b03         	ldr	r3, [sp, #0xc]
  35461a: 681b         	ldr	r3, [r3]
  35461c: f503 7348    	add.w	r3, r3, #0x320
  354620: 681b         	ldr	r3, [r3]
  354622: 9a03         	ldr	r2, [sp, #0xc]
  354624: a904         	add	r1, sp, #0x10
  354626: 4608         	mov	r0, r1
  354628: 4611         	mov	r1, r2
  35462a: 4798         	blx	r3
  35462c: 466b         	mov	r3, sp
  35462e: aa06         	add	r2, sp, #0x18
  354630: e892 0003    	ldm.w	r2, {r0, r1}
  354634: e883 0003    	stm.w	r3, {r0, r1}
  354638: ab04         	add	r3, sp, #0x10
  35463a: cb0c         	ldm	r3, {r2, r3}
  35463c: 4620         	mov	r0, r4
  35463e: 2100         	movs	r1, #0x0
  354640: f0a3 fcda    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xa39b4
  354644: 9b03         	ldr	r3, [sp, #0xc]
  354646: f04f 0200    	mov.w	r2, #0x0
  35464a: f8c3 2110    	str.w	r2, [r3, #0x110]
  35464e: 9b03         	ldr	r3, [sp, #0xc]
  354650: 681b         	ldr	r3, [r3]
  354652: f503 7333    	add.w	r3, r3, #0x2cc
  354656: 681b         	ldr	r3, [r3]
  354658: 9a03         	ldr	r2, [sp, #0xc]
  35465a: 4610         	mov	r0, r2
  35465c: 4798         	blx	r3
  35465e: 4603         	mov	r3, r0
  354660: f083 0301    	eor	r3, r3, #0x1
  354664: b2db         	uxtb	r3, r3
  354666: 2b00         	cmp	r3, #0x0
  354668: d00c         	beq	0x354684 <M14::triggerPull(float)+0x13c> @ imm = #0x18
  35466a: 9b03         	ldr	r3, [sp, #0xc]
  35466c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  354670: 2b00         	cmp	r3, #0x0
  354672: d107         	bne	0x354684 <M14::triggerPull(float)+0x13c> @ imm = #0xe
  354674: 9b03         	ldr	r3, [sp, #0xc]
  354676: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35467a: b21b         	sxth	r3, r3
  35467c: 2b00         	cmp	r3, #0x0
  35467e: dd01         	ble	0x354684 <M14::triggerPull(float)+0x13c> @ imm = #0x2
  354680: 2301         	movs	r3, #0x1
  354682: e000         	b	0x354686 <M14::triggerPull(float)+0x13e> @ imm = #0x0
  354684: 2300         	movs	r3, #0x0
  354686: 2b00         	cmp	r3, #0x0
  354688: d008         	beq	0x35469c <M14::triggerPull(float)+0x154> @ imm = #0x10
  35468a: 9b03         	ldr	r3, [sp, #0xc]
  35468c: 2201         	movs	r2, #0x1
  35468e: f883 2181    	strb.w	r2, [r3, #0x181]
  354692: 9b03         	ldr	r3, [sp, #0xc]
  354694: f04f 0200    	mov.w	r2, #0x0
  354698: f8c3 2158    	str.w	r2, [r3, #0x158]
  35469c: b008         	add	sp, #0x20
  35469e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35469f); words below are literal-pool data ---
  3546a0: e4b6         	b	0x354010 <LocalGameLayer::onDA(cocos2d::CCObject*)+0xe80> @ imm = #-0x694
  3546a2: 005d         	lsls	r5, r3, #0x1
  3546a4: d730         	bvc	0x354708 <M14::updateItemStep(float)+0x60> @ imm = #0x60
  3546a6: ffff b500    	<unknown>

// ==== M14::updateItemStep
//      file offset 0x3546a8 (= ELF address; Ghidra 0x3646a8), 282 bytes, Thumb-2
  3546a8: b500         	push	{lr}
  3546aa: ed2d 8b02    	vpush	{d8}
  3546ae: b085         	sub	sp, #0x14
  3546b0: 9001         	str	r0, [sp, #0x4]
  3546b2: 9100         	str	r1, [sp]
  3546b4: 9b01         	ldr	r3, [sp, #0x4]
  3546b6: ed93 7a56    	vldr	s14, [r3, #344]
  3546ba: eddd 7a00    	vldr	s15, [sp]
  3546be: ee77 7a27    	vadd.f32	s15, s14, s15
  3546c2: 9b01         	ldr	r3, [sp, #0x4]
  3546c4: edc3 7a56    	vstr	s15, [r3, #344]
  3546c8: 9b01         	ldr	r3, [sp, #0x4]
  3546ca: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3546ce: 681b         	ldr	r3, [r3]
  3546d0: 3390         	adds	r3, #0x90
  3546d2: 681b         	ldr	r3, [r3]
  3546d4: 9a01         	ldr	r2, [sp, #0x4]
  3546d6: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3546da: 9a01         	ldr	r2, [sp, #0x4]
  3546dc: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3546e0: 4608         	mov	r0, r1
  3546e2: 4611         	mov	r1, r2
  3546e4: 4798         	blx	r3
  3546e6: 9b01         	ldr	r3, [sp, #0x4]
  3546e8: 681b         	ldr	r3, [r3]
  3546ea: f503 7315    	add.w	r3, r3, #0x254
  3546ee: 681b         	ldr	r3, [r3]
  3546f0: 9a01         	ldr	r2, [sp, #0x4]
  3546f2: 4610         	mov	r0, r2
  3546f4: 9900         	ldr	r1, [sp]
  3546f6: 4798         	blx	r3
  3546f8: 9b01         	ldr	r3, [sp, #0x4]
  3546fa: f893 3181    	ldrb.w	r3, [r3, #0x181]
  3546fe: 2b00         	cmp	r3, #0x0
  354700: d013         	beq	0x35472a <M14::updateItemStep(float)+0x82> @ imm = #0x26
  354702: 9b01         	ldr	r3, [sp, #0x4]
  354704: ed93 8a56    	vldr	s16, [r3, #344]
  354708: 9b01         	ldr	r3, [sp, #0x4]
  35470a: 681b         	ldr	r3, [r3]
  35470c: f503 732e    	add.w	r3, r3, #0x2b8
  354710: 681b         	ldr	r3, [r3]
  354712: 9a01         	ldr	r2, [sp, #0x4]
  354714: 4610         	mov	r0, r2
  354716: 4798         	blx	r3
  354718: ee07 0a90    	vmov	s15, r0
  35471c: eeb4 8ae7    	vcmpe.f32	s16, s15
  354720: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  354724: dd01         	ble	0x35472a <M14::updateItemStep(float)+0x82> @ imm = #0x2
  354726: 2301         	movs	r3, #0x1
  354728: e000         	b	0x35472c <M14::updateItemStep(float)+0x84> @ imm = #0x0
  35472a: 2300         	movs	r3, #0x0
  35472c: 2b00         	cmp	r3, #0x0
  35472e: d043         	beq	0x3547b8 <M14::updateItemStep(float)+0x110> @ imm = #0x86
  354730: 9b01         	ldr	r3, [sp, #0x4]
  354732: 2200         	movs	r2, #0x0
  354734: f883 2181    	strb.w	r2, [r3, #0x181]
  354738: 9b01         	ldr	r3, [sp, #0x4]
  35473a: f04f 0200    	mov.w	r2, #0x0
  35473e: f8c3 2110    	str.w	r2, [r3, #0x110]
  354742: 9b01         	ldr	r3, [sp, #0x4]
  354744: 681b         	ldr	r3, [r3]
  354746: f503 732d    	add.w	r3, r3, #0x2b4
  35474a: 681b         	ldr	r3, [r3]
  35474c: 9a01         	ldr	r2, [sp, #0x4]
  35474e: 4610         	mov	r0, r2
  354750: 4798         	blx	r3
  354752: 4602         	mov	r2, r0
  354754: 9b01         	ldr	r3, [sp, #0x4]
  354756: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35475a: b21b         	sxth	r3, r3
  35475c: 1ad3         	subs	r3, r2, r3
  35475e: 9303         	str	r3, [sp, #0xc]
  354760: 9b01         	ldr	r3, [sp, #0x4]
  354762: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  354766: b29a         	uxth	r2, r3
  354768: 9b03         	ldr	r3, [sp, #0xc]
  35476a: b29b         	uxth	r3, r3
  35476c: 1ad3         	subs	r3, r2, r3
  35476e: b29b         	uxth	r3, r3
  354770: b29a         	uxth	r2, r3
  354772: 9b01         	ldr	r3, [sp, #0x4]
  354774: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  354778: 9b01         	ldr	r3, [sp, #0x4]
  35477a: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35477e: b29a         	uxth	r2, r3
  354780: 9b03         	ldr	r3, [sp, #0xc]
  354782: b29b         	uxth	r3, r3
  354784: 4413         	add	r3, r2
  354786: b29a         	uxth	r2, r3
  354788: 9b01         	ldr	r3, [sp, #0x4]
  35478a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35478e: b21b         	sxth	r3, r3
  354790: ea03 73e3    	and.w	r3, r3, r3, asr #31
  354794: b29b         	uxth	r3, r3
  354796: b29b         	uxth	r3, r3
  354798: 4413         	add	r3, r2
  35479a: b29b         	uxth	r3, r3
  35479c: b29a         	uxth	r2, r3
  35479e: 9b01         	ldr	r3, [sp, #0x4]
  3547a0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3547a4: 9b01         	ldr	r3, [sp, #0x4]
  3547a6: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3547aa: b21b         	sxth	r3, r3
  3547ac: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3547b0: b29a         	uxth	r2, r3
  3547b2: 9b01         	ldr	r3, [sp, #0x4]
  3547b4: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3547b8: b005         	add	sp, #0x14
  3547ba: ecbd 8b02    	vpop	{d8}
  3547be: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::updateRemoteItemStep
//      file offset 0x3547c4 (= ELF address; Ghidra 0x3647c4), 94 bytes, Thumb-2
  3547c4: b500         	push	{lr}
  3547c6: b083         	sub	sp, #0xc
  3547c8: 9001         	str	r0, [sp, #0x4]
  3547ca: 9100         	str	r1, [sp]
  3547cc: 9b01         	ldr	r3, [sp, #0x4]
  3547ce: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3547d2: 681b         	ldr	r3, [r3]
  3547d4: 3390         	adds	r3, #0x90
  3547d6: 681b         	ldr	r3, [r3]
  3547d8: 9a01         	ldr	r2, [sp, #0x4]
  3547da: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3547de: 9a01         	ldr	r2, [sp, #0x4]
  3547e0: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3547e4: 4608         	mov	r0, r1
  3547e6: 4611         	mov	r1, r2
  3547e8: 4798         	blx	r3
  3547ea: 9b01         	ldr	r3, [sp, #0x4]
  3547ec: 681b         	ldr	r3, [r3]
  3547ee: f503 7315    	add.w	r3, r3, #0x254
  3547f2: 681b         	ldr	r3, [r3]
  3547f4: 9a01         	ldr	r2, [sp, #0x4]
  3547f6: 4610         	mov	r0, r2
  3547f8: 9900         	ldr	r1, [sp]
  3547fa: 4798         	blx	r3
  3547fc: 9b01         	ldr	r3, [sp, #0x4]
  3547fe: f893 2194    	ldrb.w	r2, [r3, #0x194]
  354802: 9b01         	ldr	r3, [sp, #0x4]
  354804: f893 3195    	ldrb.w	r3, [r3, #0x195]
  354808: 429a         	cmp	r2, r3
  35480a: d007         	beq	0x35481c <M14::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  35480c: 9b01         	ldr	r3, [sp, #0x4]
  35480e: 681b         	ldr	r3, [r3]
  354810: f503 7318    	add.w	r3, r3, #0x260
  354814: 681b         	ldr	r3, [r3]
  354816: 9801         	ldr	r0, [sp, #0x4]
  354818: 9900         	ldr	r1, [sp]
  35481a: 4798         	blx	r3
  35481c: b003         	add	sp, #0xc
  35481e: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::remoteTriggerPull
//      file offset 0x354824 (= ELF address; Ghidra 0x364824), 116 bytes, Thumb-2
  354824: b500         	push	{lr}
  354826: b083         	sub	sp, #0xc
  354828: 9001         	str	r0, [sp, #0x4]
  35482a: 9100         	str	r1, [sp]
  35482c: 9b01         	ldr	r3, [sp, #0x4]
  35482e: ed93 7a44    	vldr	s14, [r3, #272]
  354832: 9b01         	ldr	r3, [sp, #0x4]
  354834: edd3 7a57    	vldr	s15, [r3, #348]
  354838: eeb4 7ae7    	vcmpe.f32	s14, s15
  35483c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  354840: dd27         	ble	0x354892 <M14::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  354842: 9b01         	ldr	r3, [sp, #0x4]
  354844: f04f 0200    	mov.w	r2, #0x0
  354848: f8c3 2110    	str.w	r2, [r3, #0x110]
  35484c: 9b01         	ldr	r3, [sp, #0x4]
  35484e: 2201         	movs	r2, #0x1
  354850: f883 2180    	strb.w	r2, [r3, #0x180]
  354854: 9b01         	ldr	r3, [sp, #0x4]
  354856: 681b         	ldr	r3, [r3]
  354858: f503 7325    	add.w	r3, r3, #0x294
  35485c: 681b         	ldr	r3, [r3]
  35485e: 9801         	ldr	r0, [sp, #0x4]
  354860: 4798         	blx	r3
  354862: 9b01         	ldr	r3, [sp, #0x4]
  354864: 681b         	ldr	r3, [r3]
  354866: f503 7342    	add.w	r3, r3, #0x308
  35486a: 681b         	ldr	r3, [r3]
  35486c: 9a01         	ldr	r2, [sp, #0x4]
  35486e: 4610         	mov	r0, r2
  354870: 4798         	blx	r3
  354872: 9b01         	ldr	r3, [sp, #0x4]
  354874: 681b         	ldr	r3, [r3]
  354876: f503 7343    	add.w	r3, r3, #0x30c
  35487a: 681b         	ldr	r3, [r3]
  35487c: 9a01         	ldr	r2, [sp, #0x4]
  35487e: 4610         	mov	r0, r2
  354880: 4798         	blx	r3
  354882: 9b01         	ldr	r3, [sp, #0x4]
  354884: f893 3195    	ldrb.w	r3, [r3, #0x195]
  354888: 3301         	adds	r3, #0x1
  35488a: b2da         	uxtb	r2, r3
  35488c: 9b01         	ldr	r3, [sp, #0x4]
  35488e: f883 2195    	strb.w	r2, [r3, #0x195]
  354892: b003         	add	sp, #0xc
  354894: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::getShellPoint
//      file offset 0x354898 (= ELF address; Ghidra 0x364898), 204 bytes, Thumb-2
  354898: b510         	push	{r4, lr}
  35489a: b08e         	sub	sp, #0x38
  35489c: 9001         	str	r0, [sp, #0x4]
  35489e: 9100         	str	r1, [sp]
  3548a0: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x35495c <M14::getShellPoint()+0xc4>
  3548a2: 447c         	add	r4, pc
  3548a4: ab02         	add	r3, sp, #0x8
  3548a6: 4618         	mov	r0, r3
  3548a8: f04f 0100    	mov.w	r1, #0x0
  3548ac: f2c4 2134    	movt	r1, #0x4234
  3548b0: f04f 0200    	mov.w	r2, #0x0
  3548b4: f2c4 1270    	movt	r2, #0x4170
  3548b8: f23e fa1a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e434
  3548bc: 9b00         	ldr	r3, [sp]
  3548be: 681b         	ldr	r3, [r3]
  3548c0: 3350         	adds	r3, #0x50
  3548c2: 681b         	ldr	r3, [r3]
  3548c4: 9a00         	ldr	r2, [sp]
  3548c6: 4610         	mov	r0, r2
  3548c8: 4798         	blx	r3
  3548ca: 4602         	mov	r2, r0
  3548cc: a906         	add	r1, sp, #0x18
  3548ce: ab02         	add	r3, sp, #0x8
  3548d0: 4608         	mov	r0, r1
  3548d2: 4611         	mov	r1, r2
  3548d4: 461a         	mov	r2, r3
  3548d6: f7fe fd37    	bl	0x353348 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x1b8> @ imm = #-0x1592
  3548da: 9b00         	ldr	r3, [sp]
  3548dc: 681b         	ldr	r3, [r3]
  3548de: f503 73c2    	add.w	r3, r3, #0x184
  3548e2: 681b         	ldr	r3, [r3]
  3548e4: 9a00         	ldr	r2, [sp]
  3548e6: a908         	add	r1, sp, #0x20
  3548e8: 4608         	mov	r0, r1
  3548ea: 4611         	mov	r1, r2
  3548ec: 4798         	blx	r3
  3548ee: a904         	add	r1, sp, #0x10
  3548f0: aa06         	add	r2, sp, #0x18
  3548f2: ab08         	add	r3, sp, #0x20
  3548f4: 4608         	mov	r0, r1
  3548f6: 4611         	mov	r1, r2
  3548f8: 461a         	mov	r2, r3
  3548fa: f23d fd13    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x23da26
  3548fe: 4b18         	ldr	r3, [pc, #0x60]         @ 0x354960 <M14::getShellPoint()+0xc8>
  354900: 58e3         	ldr	r3, [r4, r3]
  354902: 681b         	ldr	r3, [r3]
  354904: 681b         	ldr	r3, [r3]
  354906: f503 73c4    	add.w	r3, r3, #0x188
  35490a: 681b         	ldr	r3, [r3]
  35490c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x354960 <M14::getShellPoint()+0xc8>
  35490e: 58a2         	ldr	r2, [r4, r2]
  354910: 6812         	ldr	r2, [r2]
  354912: a908         	add	r1, sp, #0x20
  354914: 4608         	mov	r0, r1
  354916: 4611         	mov	r1, r2
  354918: 4798         	blx	r3
  35491a: a906         	add	r1, sp, #0x18
  35491c: aa04         	add	r2, sp, #0x10
  35491e: ab08         	add	r3, sp, #0x20
  354920: 4608         	mov	r0, r1
  354922: 4611         	mov	r1, r2
  354924: 461a         	mov	r2, r3
  354926: f23d fcfd    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x23d9fa
  35492a: aa04         	add	r2, sp, #0x10
  35492c: ab06         	add	r3, sp, #0x18
  35492e: 4610         	mov	r0, r2
  354930: 4619         	mov	r1, r3
  354932: f23e fa0b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x23e416
  354936: eddd 7a04    	vldr	s15, [sp, #16]
  35493a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  35493e: eddd 7a05    	vldr	s15, [sp, #20]
  354942: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  354946: 9b01         	ldr	r3, [sp, #0x4]
  354948: 4618         	mov	r0, r3
  35494a: eeb0 0b46    	vmov.f64	d0, d6
  35494e: eeb0 1b47    	vmov.f64	d1, d7
  354952: f7fe fd09    	bl	0x353368 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x1d8> @ imm = #-0x15ee
  354956: 9801         	ldr	r0, [sp, #0x4]
  354958: b00e         	add	sp, #0x38
  35495a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35495b); words below are literal-pool data ---
  35495c: e166         	b	0x354c2c <M14::setSecondaryConfiguration()+0x148> @ imm = #0x2cc
  35495e: 005d         	lsls	r5, r3, #0x1
  354960: d744         	bvc	0x3549ec <M14::setPrimaryConfiguration()+0x40> @ imm = #0x88
  354962: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== M14::playSound
//      file offset 0x354964 (= ELF address; Ghidra 0x364964), 72 bytes, Thumb-2
  354964: b510         	push	{r4, lr}
  354966: b088         	sub	sp, #0x20
  354968: 9003         	str	r0, [sp, #0xc]
  35496a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3549a4 <M14::playSound()+0x40>
  35496c: 447a         	add	r2, pc
  35496e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3549a8 <M14::playSound()+0x44>
  354970: 58d3         	ldr	r3, [r2, r3]
  354972: 681c         	ldr	r4, [r3]
  354974: 9b03         	ldr	r3, [sp, #0xc]
  354976: 681b         	ldr	r3, [r3]
  354978: f503 7348    	add.w	r3, r3, #0x320
  35497c: 681b         	ldr	r3, [r3]
  35497e: 9a03         	ldr	r2, [sp, #0xc]
  354980: a904         	add	r1, sp, #0x10
  354982: 4608         	mov	r0, r1
  354984: 4611         	mov	r1, r2
  354986: 4798         	blx	r3
  354988: 466b         	mov	r3, sp
  35498a: aa06         	add	r2, sp, #0x18
  35498c: e892 0003    	ldm.w	r2, {r0, r1}
  354990: e883 0003    	stm.w	r3, {r0, r1}
  354994: ab04         	add	r3, sp, #0x10
  354996: cb0c         	ldm	r3, {r2, r3}
  354998: 4620         	mov	r0, r4
  35499a: 2123         	movs	r1, #0x23
  35499c: f0a3 fb2c    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xa3658
  3549a0: b008         	add	sp, #0x20
  3549a2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3549a3); words below are literal-pool data ---
  3549a4: e09c         	b	0x354ae0 <M14::setPrimaryConfiguration()+0x134> @ imm = #0x138
  3549a6: 005d         	lsls	r5, r3, #0x1
  3549a8: d730         	bvc	0x354a0c <M14::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3549aa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== M14::setPrimaryConfiguration
//      file offset 0x3549ac (= ELF address; Ghidra 0x3649ac), 312 bytes, Thumb-2
  3549ac: b530         	push	{r4, r5, lr}
  3549ae: b085         	sub	sp, #0x14
  3549b0: 9001         	str	r0, [sp, #0x4]
  3549b2: 9b01         	ldr	r3, [sp, #0x4]
  3549b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3549b8: 2b00         	cmp	r3, #0x0
  3549ba: d019         	beq	0x3549f0 <M14::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3549bc: 9b01         	ldr	r3, [sp, #0x4]
  3549be: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3549c2: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x354ae0 <M14::setPrimaryConfiguration()+0x134>
  3549c4: 447b         	add	r3, pc
  3549c6: ed93 6b00    	vldr	d6, [r3]
  3549ca: ed93 7b02    	vldr	d7, [r3, #8]
  3549ce: 4610         	mov	r0, r2
  3549d0: eeb0 0b46    	vmov.f64	d0, d6
  3549d4: eeb0 1b47    	vmov.f64	d1, d7
  3549d8: f7fe fcda    	bl	0x353390 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x200> @ imm = #-0x164c
  3549dc: 9b01         	ldr	r3, [sp, #0x4]
  3549de: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3549e2: 4618         	mov	r0, r3
  3549e4: f04f 0200    	mov.w	r2, #0x0
  3549e8: f04f 0300    	mov.w	r3, #0x0
  3549ec: f37e fbd1    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x37e7a2
  3549f0: 9b01         	ldr	r3, [sp, #0x4]
  3549f2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3549f6: 681b         	ldr	r3, [r3]
  3549f8: 334c         	adds	r3, #0x4c
  3549fa: 681c         	ldr	r4, [r3]
  3549fc: 9b01         	ldr	r3, [sp, #0x4]
  3549fe: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  354a02: ab02         	add	r3, sp, #0x8
  354a04: 4618         	mov	r0, r3
  354a06: f04f 0100    	mov.w	r1, #0x0
  354a0a: f04f 0200    	mov.w	r2, #0x0
  354a0e: f23e f96f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e2de
  354a12: ab02         	add	r3, sp, #0x8
  354a14: 4628         	mov	r0, r5
  354a16: 4619         	mov	r1, r3
  354a18: 47a0         	blx	r4
  354a1a: 9b01         	ldr	r3, [sp, #0x4]
  354a1c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354a20: 681b         	ldr	r3, [r3]
  354a22: 337c         	adds	r3, #0x7c
  354a24: 681c         	ldr	r4, [r3]
  354a26: 9b01         	ldr	r3, [sp, #0x4]
  354a28: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  354a2c: ab02         	add	r3, sp, #0x8
  354a2e: 4618         	mov	r0, r3
  354a30: f04f 0100    	mov.w	r1, #0x0
  354a34: f243 3233    	movw	r2, #0x3333
  354a38: f6c3 62b3    	movt	r2, #0x3eb3
  354a3c: f23e f958    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e2b0
  354a40: ab02         	add	r3, sp, #0x8
  354a42: 4628         	mov	r0, r5
  354a44: 4619         	mov	r1, r3
  354a46: 47a0         	blx	r4
  354a48: 9b01         	ldr	r3, [sp, #0x4]
  354a4a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354a4e: 681b         	ldr	r3, [r3]
  354a50: 3398         	adds	r3, #0x98
  354a52: 681b         	ldr	r3, [r3]
  354a54: 9a01         	ldr	r2, [sp, #0x4]
  354a56: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354a5a: 4610         	mov	r0, r2
  354a5c: f04f 0100    	mov.w	r1, #0x0
  354a60: 4798         	blx	r3
  354a62: 9b01         	ldr	r3, [sp, #0x4]
  354a64: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354a68: 681b         	ldr	r3, [r3]
  354a6a: 3340         	adds	r3, #0x40
  354a6c: 681b         	ldr	r3, [r3]
  354a6e: 9a01         	ldr	r2, [sp, #0x4]
  354a70: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354a74: 4610         	mov	r0, r2
  354a76: f04f 517e    	mov.w	r1, #0x3f800000
  354a7a: 4798         	blx	r3
  354a7c: 9b01         	ldr	r3, [sp, #0x4]
  354a7e: 681b         	ldr	r3, [r3]
  354a80: 334c         	adds	r3, #0x4c
  354a82: 681c         	ldr	r4, [r3]
  354a84: 9d01         	ldr	r5, [sp, #0x4]
  354a86: ab02         	add	r3, sp, #0x8
  354a88: 4618         	mov	r0, r3
  354a8a: f04f 0100    	mov.w	r1, #0x0
  354a8e: f04f 0200    	mov.w	r2, #0x0
  354a92: f23e f92d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e25a
  354a96: ab02         	add	r3, sp, #0x8
  354a98: 4628         	mov	r0, r5
  354a9a: 4619         	mov	r1, r3
  354a9c: 47a0         	blx	r4
  354a9e: 9b01         	ldr	r3, [sp, #0x4]
  354aa0: 681b         	ldr	r3, [r3]
  354aa2: 3340         	adds	r3, #0x40
  354aa4: 681b         	ldr	r3, [r3]
  354aa6: 9a01         	ldr	r2, [sp, #0x4]
  354aa8: 4610         	mov	r0, r2
  354aaa: f04f 517e    	mov.w	r1, #0x3f800000
  354aae: 4798         	blx	r3
  354ab0: 9b01         	ldr	r3, [sp, #0x4]
  354ab2: 681b         	ldr	r3, [r3]
  354ab4: 3398         	adds	r3, #0x98
  354ab6: 681b         	ldr	r3, [r3]
  354ab8: 9a01         	ldr	r2, [sp, #0x4]
  354aba: 4610         	mov	r0, r2
  354abc: f04f 0100    	mov.w	r1, #0x0
  354ac0: 4798         	blx	r3
  354ac2: 9b01         	ldr	r3, [sp, #0x4]
  354ac4: 2200         	movs	r2, #0x0
  354ac6: f883 2195    	strb.w	r2, [r3, #0x195]
  354aca: 9b01         	ldr	r3, [sp, #0x4]
  354acc: 2200         	movs	r2, #0x0
  354ace: f883 2194    	strb.w	r2, [r3, #0x194]
  354ad2: 9b01         	ldr	r3, [sp, #0x4]
  354ad4: f04f 0200    	mov.w	r2, #0x0
  354ad8: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  354adc: b005         	add	sp, #0x14
  354ade: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x354adf); words below are literal-pool data ---
  354ae0: 7588         	strb	r0, [r1, #0x16]
  354ae2: 0047         	lsls	r7, r0, #0x1

// ==== M14::setSecondaryConfiguration
//      file offset 0x354ae4 (= ELF address; Ghidra 0x364ae4), 340 bytes, Thumb-2
  354ae4: b530         	push	{r4, r5, lr}
  354ae6: b085         	sub	sp, #0x14
  354ae8: 9001         	str	r0, [sp, #0x4]
  354aea: 9b01         	ldr	r3, [sp, #0x4]
  354aec: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  354af0: 2b00         	cmp	r3, #0x0
  354af2: d019         	beq	0x354b28 <M14::setSecondaryConfiguration()+0x44> @ imm = #0x32
  354af4: 9b01         	ldr	r3, [sp, #0x4]
  354af6: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  354afa: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x354c34 <M14::setSecondaryConfiguration()+0x150>
  354afc: 447b         	add	r3, pc
  354afe: ed93 6b00    	vldr	d6, [r3]
  354b02: ed93 7b02    	vldr	d7, [r3, #8]
  354b06: 4610         	mov	r0, r2
  354b08: eeb0 0b46    	vmov.f64	d0, d6
  354b0c: eeb0 1b47    	vmov.f64	d1, d7
  354b10: f7fe fc3e    	bl	0x353390 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x200> @ imm = #-0x1784
  354b14: 9b01         	ldr	r3, [sp, #0x4]
  354b16: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  354b1a: 4618         	mov	r0, r3
  354b1c: f04f 0200    	mov.w	r2, #0x0
  354b20: f04f 0300    	mov.w	r3, #0x0
  354b24: f37e fb35    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x37e66a
  354b28: 9b01         	ldr	r3, [sp, #0x4]
  354b2a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354b2e: 681b         	ldr	r3, [r3]
  354b30: 334c         	adds	r3, #0x4c
  354b32: 681c         	ldr	r4, [r3]
  354b34: 9b01         	ldr	r3, [sp, #0x4]
  354b36: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  354b3a: ab02         	add	r3, sp, #0x8
  354b3c: 4618         	mov	r0, r3
  354b3e: f04f 0100    	mov.w	r1, #0x0
  354b42: f2cc 1120    	movt	r1, #0xc120
  354b46: f04f 0200    	mov.w	r2, #0x0
  354b4a: f23e f8d1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e1a2
  354b4e: ab02         	add	r3, sp, #0x8
  354b50: 4628         	mov	r0, r5
  354b52: 4619         	mov	r1, r3
  354b54: 47a0         	blx	r4
  354b56: 9b01         	ldr	r3, [sp, #0x4]
  354b58: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354b5c: 681b         	ldr	r3, [r3]
  354b5e: 337c         	adds	r3, #0x7c
  354b60: 681c         	ldr	r4, [r3]
  354b62: 9b01         	ldr	r3, [sp, #0x4]
  354b64: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  354b68: ab02         	add	r3, sp, #0x8
  354b6a: 4618         	mov	r0, r3
  354b6c: f04f 517c    	mov.w	r1, #0x3f000000
  354b70: f04f 527c    	mov.w	r2, #0x3f000000
  354b74: f23e f8bc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e178
  354b78: ab02         	add	r3, sp, #0x8
  354b7a: 4628         	mov	r0, r5
  354b7c: 4619         	mov	r1, r3
  354b7e: 47a0         	blx	r4
  354b80: 9b01         	ldr	r3, [sp, #0x4]
  354b82: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354b86: 681b         	ldr	r3, [r3]
  354b88: 3398         	adds	r3, #0x98
  354b8a: 681b         	ldr	r3, [r3]
  354b8c: 9a01         	ldr	r2, [sp, #0x4]
  354b8e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354b92: 4610         	mov	r0, r2
  354b94: f04f 0100    	mov.w	r1, #0x0
  354b98: f2c4 2170    	movt	r1, #0x4270
  354b9c: 4798         	blx	r3
  354b9e: 9b01         	ldr	r3, [sp, #0x4]
  354ba0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354ba4: 681b         	ldr	r3, [r3]
  354ba6: 3340         	adds	r3, #0x40
  354ba8: 681b         	ldr	r3, [r3]
  354baa: 9a01         	ldr	r2, [sp, #0x4]
  354bac: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354bb0: 4610         	mov	r0, r2
  354bb2: f04f 517e    	mov.w	r1, #0x3f800000
  354bb6: 4798         	blx	r3
  354bb8: 9b01         	ldr	r3, [sp, #0x4]
  354bba: 681b         	ldr	r3, [r3]
  354bbc: 334c         	adds	r3, #0x4c
  354bbe: 681c         	ldr	r4, [r3]
  354bc0: 9d01         	ldr	r5, [sp, #0x4]
  354bc2: ab02         	add	r3, sp, #0x8
  354bc4: 4618         	mov	r0, r3
  354bc6: f04f 0100    	mov.w	r1, #0x0
  354bca: f04f 0200    	mov.w	r2, #0x0
  354bce: f23e f88f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e11e
  354bd2: ab02         	add	r3, sp, #0x8
  354bd4: 4628         	mov	r0, r5
  354bd6: 4619         	mov	r1, r3
  354bd8: 47a0         	blx	r4
  354bda: 9b01         	ldr	r3, [sp, #0x4]
  354bdc: 681b         	ldr	r3, [r3]
  354bde: 3340         	adds	r3, #0x40
  354be0: 681b         	ldr	r3, [r3]
  354be2: 9a01         	ldr	r2, [sp, #0x4]
  354be4: 4610         	mov	r0, r2
  354be6: f04f 517e    	mov.w	r1, #0x3f800000
  354bea: 4798         	blx	r3
  354bec: 9b01         	ldr	r3, [sp, #0x4]
  354bee: 681b         	ldr	r3, [r3]
  354bf0: 3398         	adds	r3, #0x98
  354bf2: 681b         	ldr	r3, [r3]
  354bf4: 9a01         	ldr	r2, [sp, #0x4]
  354bf6: 4610         	mov	r0, r2
  354bf8: f04f 0100    	mov.w	r1, #0x0
  354bfc: 4798         	blx	r3
  354bfe: 9b01         	ldr	r3, [sp, #0x4]
  354c00: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  354c04: 681b         	ldr	r3, [r3]
  354c06: 3390         	adds	r3, #0x90
  354c08: 681b         	ldr	r3, [r3]
  354c0a: 9a01         	ldr	r2, [sp, #0x4]
  354c0c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  354c10: 4610         	mov	r0, r2
  354c12: 2100         	movs	r1, #0x0
  354c14: 4798         	blx	r3
  354c16: 9b01         	ldr	r3, [sp, #0x4]
  354c18: 2200         	movs	r2, #0x0
  354c1a: f883 2195    	strb.w	r2, [r3, #0x195]
  354c1e: 9b01         	ldr	r3, [sp, #0x4]
  354c20: 2200         	movs	r2, #0x0
  354c22: f883 2194    	strb.w	r2, [r3, #0x194]
  354c26: 9b01         	ldr	r3, [sp, #0x4]
  354c28: f04f 0200    	mov.w	r2, #0x0
  354c2c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  354c30: b005         	add	sp, #0x14
  354c32: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x354c33); words below are literal-pool data ---
  354c34: 7450         	strb	r0, [r2, #0x11]
  354c36: 0047         	lsls	r7, r0, #0x1

// ==== M14::setMapConfiguration
//      file offset 0x354c38 (= ELF address; Ghidra 0x364c38), 248 bytes, Thumb-2
  354c38: b570         	push	{r4, r5, r6, lr}
  354c3a: b084         	sub	sp, #0x10
  354c3c: 9001         	str	r0, [sp, #0x4]
  354c3e: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x354d28 <M14::setMapConfiguration()+0xf0>
  354c40: 447c         	add	r4, pc
  354c42: 9b01         	ldr	r3, [sp, #0x4]
  354c44: f04f 0200    	mov.w	r2, #0x0
  354c48: f8c3 2190    	str.w	r2, [r3, #0x190]
  354c4c: 9b01         	ldr	r3, [sp, #0x4]
  354c4e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354c52: 681b         	ldr	r3, [r3]
  354c54: 334c         	adds	r3, #0x4c
  354c56: 681d         	ldr	r5, [r3]
  354c58: 9b01         	ldr	r3, [sp, #0x4]
  354c5a: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  354c5e: ab02         	add	r3, sp, #0x8
  354c60: 4618         	mov	r0, r3
  354c62: f04f 0100    	mov.w	r1, #0x0
  354c66: f04f 0200    	mov.w	r2, #0x0
  354c6a: f23e f841    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e082
  354c6e: ab02         	add	r3, sp, #0x8
  354c70: 4630         	mov	r0, r6
  354c72: 4619         	mov	r1, r3
  354c74: 47a8         	blx	r5
  354c76: 9b01         	ldr	r3, [sp, #0x4]
  354c78: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354c7c: 681b         	ldr	r3, [r3]
  354c7e: 337c         	adds	r3, #0x7c
  354c80: 681d         	ldr	r5, [r3]
  354c82: 9b01         	ldr	r3, [sp, #0x4]
  354c84: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  354c88: ab02         	add	r3, sp, #0x8
  354c8a: 4618         	mov	r0, r3
  354c8c: f04f 517c    	mov.w	r1, #0x3f000000
  354c90: f04f 527c    	mov.w	r2, #0x3f000000
  354c94: f23e f82c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e058
  354c98: ab02         	add	r3, sp, #0x8
  354c9a: 4630         	mov	r0, r6
  354c9c: 4619         	mov	r1, r3
  354c9e: 47a8         	blx	r5
  354ca0: 9b01         	ldr	r3, [sp, #0x4]
  354ca2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354ca6: 681b         	ldr	r3, [r3]
  354ca8: 3398         	adds	r3, #0x98
  354caa: 681b         	ldr	r3, [r3]
  354cac: 9a01         	ldr	r2, [sp, #0x4]
  354cae: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354cb2: 4610         	mov	r0, r2
  354cb4: f04f 0100    	mov.w	r1, #0x0
  354cb8: 4798         	blx	r3
  354cba: 9b01         	ldr	r3, [sp, #0x4]
  354cbc: 681b         	ldr	r3, [r3]
  354cbe: 334c         	adds	r3, #0x4c
  354cc0: 681d         	ldr	r5, [r3]
  354cc2: 9e01         	ldr	r6, [sp, #0x4]
  354cc4: ab02         	add	r3, sp, #0x8
  354cc6: 4618         	mov	r0, r3
  354cc8: f04f 0100    	mov.w	r1, #0x0
  354ccc: f04f 0200    	mov.w	r2, #0x0
  354cd0: f23e f80e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23e01c
  354cd4: ab02         	add	r3, sp, #0x8
  354cd6: 4630         	mov	r0, r6
  354cd8: 4619         	mov	r1, r3
  354cda: 47a8         	blx	r5
  354cdc: 9b01         	ldr	r3, [sp, #0x4]
  354cde: 681b         	ldr	r3, [r3]
  354ce0: 3340         	adds	r3, #0x40
  354ce2: 681b         	ldr	r3, [r3]
  354ce4: 9901         	ldr	r1, [sp, #0x4]
  354ce6: 4a11         	ldr	r2, [pc, #0x44]         @ 0x354d2c <M14::setMapConfiguration()+0xf4>
  354ce8: 58a2         	ldr	r2, [r4, r2]
  354cea: 6812         	ldr	r2, [r2]
  354cec: 4608         	mov	r0, r1
  354cee: 4611         	mov	r1, r2
  354cf0: 4798         	blx	r3
  354cf2: 9b01         	ldr	r3, [sp, #0x4]
  354cf4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  354cf8: 681b         	ldr	r3, [r3]
  354cfa: 3390         	adds	r3, #0x90
  354cfc: 681b         	ldr	r3, [r3]
  354cfe: 9a01         	ldr	r2, [sp, #0x4]
  354d00: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  354d04: 4610         	mov	r0, r2
  354d06: 2100         	movs	r1, #0x0
  354d08: 4798         	blx	r3
  354d0a: 9b01         	ldr	r3, [sp, #0x4]
  354d0c: 2200         	movs	r2, #0x0
  354d0e: f883 2195    	strb.w	r2, [r3, #0x195]
  354d12: 9b01         	ldr	r3, [sp, #0x4]
  354d14: 2200         	movs	r2, #0x0
  354d16: f883 2194    	strb.w	r2, [r3, #0x194]
  354d1a: 9b01         	ldr	r3, [sp, #0x4]
  354d1c: f04f 0200    	mov.w	r2, #0x0
  354d20: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  354d24: b004         	add	sp, #0x10
  354d26: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x354d27); words below are literal-pool data ---
  354d28: ddc8         	ble	0x354cbc <M14::setMapConfiguration()+0x84> @ imm = #-0x70
  354d2a: 005d         	lsls	r5, r3, #0x1
  354d2c: d748         	bvc	0x354dc0 <M14::setRight(bool)+0x4> @ imm = #0x90
  354d2e: ffff b500    	<unknown>

// ==== M14::getWeaponTexture
//      file offset 0x354d30 (= ELF address; Ghidra 0x364d30), 40 bytes, Thumb-2
  354d30: b500         	push	{lr}
  354d32: b083         	sub	sp, #0xc
  354d34: 9001         	str	r0, [sp, #0x4]
  354d36: 9b01         	ldr	r3, [sp, #0x4]
  354d38: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354d3c: 681b         	ldr	r3, [r3]
  354d3e: f503 73fa    	add.w	r3, r3, #0x1f4
  354d42: 681b         	ldr	r3, [r3]
  354d44: 9a01         	ldr	r2, [sp, #0x4]
  354d46: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354d4a: 4610         	mov	r0, r2
  354d4c: 4798         	blx	r3
  354d4e: 4603         	mov	r3, r0
  354d50: 4618         	mov	r0, r3
  354d52: b003         	add	sp, #0xc
  354d54: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::getWeaponRect
//      file offset 0x354d58 (= ELF address; Ghidra 0x364d58), 38 bytes, Thumb-2
  354d58: b500         	push	{lr}
  354d5a: b083         	sub	sp, #0xc
  354d5c: 9001         	str	r0, [sp, #0x4]
  354d5e: 9100         	str	r1, [sp]
  354d60: 9b00         	ldr	r3, [sp]
  354d62: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354d66: 4618         	mov	r0, r3
  354d68: f787 ffb8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x78090
  354d6c: 4603         	mov	r3, r0
  354d6e: 9801         	ldr	r0, [sp, #0x4]
  354d70: 4619         	mov	r1, r3
  354d72: f23e fad1    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x23e5a2
  354d76: 9801         	ldr	r0, [sp, #0x4]
  354d78: b003         	add	sp, #0xc
  354d7a: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::isRight
//      file offset 0x354d80 (= ELF address; Ghidra 0x364d80), 60 bytes, Thumb-2
  354d80: b500         	push	{lr}
  354d82: b083         	sub	sp, #0xc
  354d84: 9001         	str	r0, [sp, #0x4]
  354d86: 9b01         	ldr	r3, [sp, #0x4]
  354d88: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354d8c: 681b         	ldr	r3, [r3]
  354d8e: 3334         	adds	r3, #0x34
  354d90: 681b         	ldr	r3, [r3]
  354d92: 9a01         	ldr	r2, [sp, #0x4]
  354d94: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  354d98: 4610         	mov	r0, r2
  354d9a: 4798         	blx	r3
  354d9c: ee07 0a10    	vmov	s14, r0
  354da0: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  354da4: eeb4 7ae7    	vcmpe.f32	s14, s15
  354da8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  354dac: bfd4         	ite	le
  354dae: 2300         	movle	r3, #0x0
  354db0: 2301         	movgt	r3, #0x1
  354db2: b2db         	uxtb	r3, r3
  354db4: 4618         	mov	r0, r3
  354db6: b003         	add	sp, #0xc
  354db8: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::setRight
//      file offset 0x354dbc (= ELF address; Ghidra 0x364dbc), 64 bytes, Thumb-2
  354dbc: b500         	push	{lr}
  354dbe: b083         	sub	sp, #0xc
  354dc0: 9001         	str	r0, [sp, #0x4]
  354dc2: 460b         	mov	r3, r1
  354dc4: f88d 3003    	strb.w	r3, [sp, #0x3]
  354dc8: 9b01         	ldr	r3, [sp, #0x4]
  354dca: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  354dce: 681b         	ldr	r3, [r3]
  354dd0: 3330         	adds	r3, #0x30
  354dd2: 681a         	ldr	r2, [r3]
  354dd4: 9b01         	ldr	r3, [sp, #0x4]
  354dd6: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  354dda: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  354dde: 2b00         	cmp	r3, #0x0
  354de0: d002         	beq	0x354de8 <M14::setRight(bool)+0x2c> @ imm = #0x4
  354de2: f04f 537e    	mov.w	r3, #0x3f800000
  354de6: e003         	b	0x354df0 <M14::setRight(bool)+0x34> @ imm = #0x6
  354de8: f04f 0300    	mov.w	r3, #0x0
  354dec: f6cb 7380    	movt	r3, #0xbf80
  354df0: 4608         	mov	r0, r1
  354df2: 4619         	mov	r1, r3
  354df4: 4790         	blx	r2
  354df6: b003         	add	sp, #0xc
  354df8: f85d fb04    	ldr	pc, [sp], #4

// ==== M14::getRANGE
//      file offset 0x354dfc (= ELF address; Ghidra 0x364dfc), 16 bytes, Thumb-2
  354dfc: 4b02         	ldr	r3, [pc, #0x8]          @ 0x354e08 <M14::getRANGE()+0xc>
  354dfe: 447b         	add	r3, pc
  354e00: 681b         	ldr	r3, [r3]
  354e02: 4618         	mov	r0, r3
  354e04: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x354e05); words below are literal-pool data ---
  354e06: bf00         	nop
  354e08: e5b6         	b	0x354978 <M14::playSound()+0x14> @ imm = #-0x494
  354e0a: 005d         	lsls	r5, r3, #0x1

// ==== M14::getDAMAGE
//      file offset 0x354e0c (= ELF address; Ghidra 0x364e0c), 16 bytes, Thumb-2
  354e0c: 4b02         	ldr	r3, [pc, #0x8]          @ 0x354e18 <M14::getDAMAGE()+0xc>
  354e0e: 447b         	add	r3, pc
  354e10: 681b         	ldr	r3, [r3]
  354e12: 4618         	mov	r0, r3
  354e14: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x354e15); words below are literal-pool data ---
  354e16: bf00         	nop
  354e18: e5a2         	b	0x354960 <M14::getShellPoint()+0xc8> @ imm = #-0x4bc
  354e1a: 005d         	lsls	r5, r3, #0x1

// ==== M14::create
//      file offset 0x41739c (= ELF address; Ghidra 0x42739c), 112 bytes, Thumb-2
  41739c: b510         	push	{r4, lr}
  41739e: b082         	sub	sp, #0x8
  4173a0: f44f 70fc    	mov.w	r0, #0x1f8
  4173a4: f370 fade    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3705bc
  4173a8: 4603         	mov	r3, r0
  4173aa: 461c         	mov	r4, r3
  4173ac: 4620         	mov	r0, r4
  4173ae: f73c feb1    	bl	0x354114 <M14::M14()>   @ imm = #-0xc329e
  4173b2: 9401         	str	r4, [sp, #0x4]
  4173b4: 9b01         	ldr	r3, [sp, #0x4]
  4173b6: 2b00         	cmp	r3, #0x0
  4173b8: d00a         	beq	0x4173d0 <M14::create()+0x34> @ imm = #0x14
  4173ba: 9b01         	ldr	r3, [sp, #0x4]
  4173bc: 681b         	ldr	r3, [r3]
  4173be: 3318         	adds	r3, #0x18
  4173c0: 681b         	ldr	r3, [r3]
  4173c2: 9801         	ldr	r0, [sp, #0x4]
  4173c4: 4798         	blx	r3
  4173c6: 4603         	mov	r3, r0
  4173c8: 2b00         	cmp	r3, #0x0
  4173ca: d001         	beq	0x4173d0 <M14::create()+0x34> @ imm = #0x2
  4173cc: 2301         	movs	r3, #0x1
  4173ce: e000         	b	0x4173d2 <M14::create()+0x36> @ imm = #0x0
  4173d0: 2300         	movs	r3, #0x0
  4173d2: 2b00         	cmp	r3, #0x0
  4173d4: d005         	beq	0x4173e2 <M14::create()+0x46> @ imm = #0xa
  4173d6: 9b01         	ldr	r3, [sp, #0x4]
  4173d8: 4618         	mov	r0, r3
  4173da: f180 fd8f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180b1e
  4173de: 9b01         	ldr	r3, [sp, #0x4]
  4173e0: e011         	b	0x417406 <M14::create()+0x6a> @ imm = #0x22
  4173e2: 9b01         	ldr	r3, [sp, #0x4]
  4173e4: 2b00         	cmp	r3, #0x0
  4173e6: d005         	beq	0x4173f4 <M14::create()+0x58> @ imm = #0xa
  4173e8: 9b01         	ldr	r3, [sp, #0x4]
  4173ea: 681b         	ldr	r3, [r3]
  4173ec: 3308         	adds	r3, #0x8
  4173ee: 681b         	ldr	r3, [r3]
  4173f0: 9801         	ldr	r0, [sp, #0x4]
  4173f2: 4798         	blx	r3
  4173f4: 2300         	movs	r3, #0x0
  4173f6: 9301         	str	r3, [sp, #0x4]
  4173f8: 2300         	movs	r3, #0x0
  4173fa: e004         	b	0x417406 <M14::create()+0x6a> @ imm = #0x8
  4173fc: 4620         	mov	r0, r4
  4173fe: f370 fe51    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370ca2
  417402: f370 fe53    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370ca6
  417406: 4618         	mov	r0, r3
  417408: b002         	add	sp, #0x8
  41740a: bd10         	pop	{r4, pc}
