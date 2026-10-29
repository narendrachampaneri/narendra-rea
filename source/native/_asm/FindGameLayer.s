// FindGameLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 17 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FindGameLayer.cpp

// ==== FindGameLayer::create
//      file offset 0x323ee4 (= ELF address; Ghidra 0x333ee4), 112 bytes, Thumb-2
  323ee4: b510         	push	{r4, lr}
  323ee6: b082         	sub	sp, #0x8
  323ee8: f44f 70a2    	mov.w	r0, #0x144
  323eec: f063 f53a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x463a74
  323ef0: 4603         	mov	r3, r0
  323ef2: 461c         	mov	r4, r3
  323ef4: 4620         	mov	r0, r4
  323ef6: f000 f82d    	bl	0x323f54 <FindGameLayer::FindGameLayer()> @ imm = #0x5a
  323efa: 9401         	str	r4, [sp, #0x4]
  323efc: 9b01         	ldr	r3, [sp, #0x4]
  323efe: 2b00         	cmp	r3, #0x0
  323f00: d00a         	beq	0x323f18 <FindGameLayer::create()+0x34> @ imm = #0x14
  323f02: 9b01         	ldr	r3, [sp, #0x4]
  323f04: 681b         	ldr	r3, [r3]
  323f06: 3318         	adds	r3, #0x18
  323f08: 681b         	ldr	r3, [r3]
  323f0a: 9801         	ldr	r0, [sp, #0x4]
  323f0c: 4798         	blx	r3
  323f0e: 4603         	mov	r3, r0
  323f10: 2b00         	cmp	r3, #0x0
  323f12: d001         	beq	0x323f18 <FindGameLayer::create()+0x34> @ imm = #0x2
  323f14: 2301         	movs	r3, #0x1
  323f16: e000         	b	0x323f1a <FindGameLayer::create()+0x36> @ imm = #0x0
  323f18: 2300         	movs	r3, #0x0
  323f1a: 2b00         	cmp	r3, #0x0
  323f1c: d005         	beq	0x323f2a <FindGameLayer::create()+0x46> @ imm = #0xa
  323f1e: 9b01         	ldr	r3, [sp, #0x4]
  323f20: 4618         	mov	r0, r3
  323f22: f273 ffeb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x273fd6
  323f26: 9b01         	ldr	r3, [sp, #0x4]
  323f28: e011         	b	0x323f4e <FindGameLayer::create()+0x6a> @ imm = #0x22
  323f2a: 9b01         	ldr	r3, [sp, #0x4]
  323f2c: 2b00         	cmp	r3, #0x0
  323f2e: d005         	beq	0x323f3c <FindGameLayer::create()+0x58> @ imm = #0xa
  323f30: 9b01         	ldr	r3, [sp, #0x4]
  323f32: 681b         	ldr	r3, [r3]
  323f34: 3308         	adds	r3, #0x8
  323f36: 681b         	ldr	r3, [r3]
  323f38: 9801         	ldr	r0, [sp, #0x4]
  323f3a: 4798         	blx	r3
  323f3c: 2300         	movs	r3, #0x0
  323f3e: 9301         	str	r3, [sp, #0x4]
  323f40: 2300         	movs	r3, #0x0
  323f42: e004         	b	0x323f4e <FindGameLayer::create()+0x6a> @ imm = #0x8
  323f44: 4620         	mov	r0, r4
  323f46: f064 f0ad    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46415a
  323f4a: f064 f0af    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46415e
  323f4e: 4618         	mov	r0, r3
  323f50: b002         	add	sp, #0x8
  323f52: bd10         	pop	{r4, pc}

// ==== FindGameLayer::FindGameLayer
//      file offset 0x323f54 (= ELF address; Ghidra 0x333f54), 88 bytes, Thumb-2
  323f54: b510         	push	{r4, lr}
  323f56: b082         	sub	sp, #0x8
  323f58: 9001         	str	r0, [sp, #0x4]
  323f5a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x323fa4 <FindGameLayer::FindGameLayer()+0x50>
  323f5c: 447c         	add	r4, pc
  323f5e: 9b01         	ldr	r3, [sp, #0x4]
  323f60: 4618         	mov	r0, r3
  323f62: f289 f87b    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2890f6
  323f66: 9b01         	ldr	r3, [sp, #0x4]
  323f68: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x323fa8 <FindGameLayer::FindGameLayer()+0x54>
  323f6a: 58a2         	ldr	r2, [r4, r2]
  323f6c: 3208         	adds	r2, #0x8
  323f6e: 601a         	str	r2, [r3]
  323f70: 9b01         	ldr	r3, [sp, #0x4]
  323f72: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x323fa8 <FindGameLayer::FindGameLayer()+0x54>
  323f74: 58a2         	ldr	r2, [r4, r2]
  323f76: f502 7204    	add.w	r2, r2, #0x210
  323f7a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  323f7e: 9b01         	ldr	r3, [sp, #0x4]
  323f80: 4a09         	ldr	r2, [pc, #0x24]         @ 0x323fa8 <FindGameLayer::FindGameLayer()+0x54>
  323f82: 58a2         	ldr	r2, [r4, r2]
  323f84: f502 7210    	add.w	r2, r2, #0x240
  323f88: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  323f8c: 9b01         	ldr	r3, [sp, #0x4]
  323f8e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x323fa8 <FindGameLayer::FindGameLayer()+0x54>
  323f90: 58a2         	ldr	r2, [r4, r2]
  323f92: f502 7213    	add.w	r2, r2, #0x24c
  323f96: f8c3 20ec    	str.w	r2, [r3, #0xec]
  323f9a: 9b01         	ldr	r3, [sp, #0x4]
  323f9c: 4618         	mov	r0, r3
  323f9e: b002         	add	sp, #0x8
  323fa0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x323fa1); words below are literal-pool data ---
  323fa2: bf00         	nop
  323fa4: eaac 0060    	<unknown>
  323fa8: da38         	bge	0x32401c <FindGameLayer::init()+0x3c> @ imm = #0x70
  323faa: ffff b500    	<unknown>

// ==== FindGameLayer::scene
//      file offset 0x323fac (= ELF address; Ghidra 0x333fac), 46 bytes, Thumb-2
  323fac: b500         	push	{lr}
  323fae: b083         	sub	sp, #0xc
  323fb0: f28b fd56    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x28baac
  323fb4: 4603         	mov	r3, r0
  323fb6: 9300         	str	r3, [sp]
  323fb8: f7ff ff94    	bl	0x323ee4 <FindGameLayer::create()> @ imm = #-0xd8
  323fbc: 4603         	mov	r3, r0
  323fbe: 9301         	str	r3, [sp, #0x4]
  323fc0: 9b00         	ldr	r3, [sp]
  323fc2: 681b         	ldr	r3, [r3]
  323fc4: 33c8         	adds	r3, #0xc8
  323fc6: 681b         	ldr	r3, [r3]
  323fc8: 9a00         	ldr	r2, [sp]
  323fca: 4610         	mov	r0, r2
  323fcc: 9901         	ldr	r1, [sp, #0x4]
  323fce: 4798         	blx	r3
  323fd0: 9b00         	ldr	r3, [sp]
  323fd2: 4618         	mov	r0, r3
  323fd4: b003         	add	sp, #0xc
  323fd6: f85d fb04    	ldr	pc, [sp], #4

// ==== FindGameLayer::init
//      file offset 0x323fe0 (= ELF address; Ghidra 0x333fe0), 3260 bytes, Thumb-2
  323fe0: b5f0         	push	{r4, r5, r6, r7, lr}
  323fe2: ed2d 8b02    	vpush	{d8}
  323fe6: b0b9         	sub	sp, #0xe4
  323fe8: 9003         	str	r0, [sp, #0xc]
  323fea: 4cf8         	ldr	r4, [pc, #0x3e0]        @ 0x3243cc <FindGameLayer::init()+0x3ec>
  323fec: 447c         	add	r4, pc
  323fee: 9b03         	ldr	r3, [sp, #0xc]
  323ff0: 4618         	mov	r0, r3
  323ff2: f289 f901    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x289202
  323ff6: 4603         	mov	r3, r0
  323ff8: f88d 3013    	strb.w	r3, [sp, #0x13]
  323ffc: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  324000: f083 0301    	eor	r3, r3, #0x1
  324004: b2db         	uxtb	r3, r3
  324006: 2b00         	cmp	r3, #0x0
  324008: d002         	beq	0x324010 <FindGameLayer::init()+0x30> @ imm = #0x4
  32400a: 2400         	movs	r4, #0x0
  32400c: f000 be00    	b.w	0x324c10 <FindGameLayer::init()+0xc30> @ imm = #0xc00
  324010: 9b03         	ldr	r3, [sp, #0xc]
  324012: 2200         	movs	r2, #0x0
  324014: f883 2108    	strb.w	r2, [r3, #0x108]
  324018: f053 fd92    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x53b24
  32401c: 4603         	mov	r3, r0
  32401e: 4618         	mov	r0, r3
  324020: f055 ff92    	bl	0x379f48 <NetworkManager::findSessions()> @ imm = #0x55f24
  324024: 9b03         	ldr	r3, [sp, #0xc]
  324026: 2200         	movs	r2, #0x0
  324028: f8c3 2134    	str.w	r2, [r3, #0x134]
  32402c: f275 fe82    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x275d04
  324030: 4602         	mov	r2, r0
  324032: 9b03         	ldr	r3, [sp, #0xc]
  324034: f8c3 2130    	str.w	r2, [r3, #0x130]
  324038: 9b03         	ldr	r3, [sp, #0xc]
  32403a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  32403e: 4618         	mov	r0, r3
  324040: f273 ff52    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273ea4
  324044: ab1c         	add	r3, sp, #0x70
  324046: 4618         	mov	r0, r3
  324048: 4be1         	ldr	r3, [pc, #0x384]        @ 0x3243d0 <FindGameLayer::init()+0x3f0>
  32404a: 58e3         	ldr	r3, [r4, r3]
  32404c: 4619         	mov	r1, r3
  32404e: f26f f82f    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x26f05e
  324052: ed9d 7a1c    	vldr	s14, [sp, #112]
  324056: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  32405a: eec7 6a27    	vdiv.f32	s13, s14, s15
  32405e: ed9d 7a1d    	vldr	s14, [sp, #116]
  324062: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  324066: eec7 7a27    	vdiv.f32	s15, s14, s15
  32406a: ab1e         	add	r3, sp, #0x78
  32406c: 4618         	mov	r0, r3
  32406e: ee16 1a90    	vmov	r1, s13
  324072: ee17 2a90    	vmov	r2, s15
  324076: f26e fe3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26ec76
  32407a: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x3243d4 <FindGameLayer::init()+0x3f4>
  32407c: 447b         	add	r3, pc
  32407e: 4618         	mov	r0, r3
  324080: f2b4 f940    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4280
  324084: 4603         	mov	r3, r0
  324086: 9309         	str	r3, [sp, #0x24]
  324088: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x3243d8 <FindGameLayer::init()+0x3f8>
  32408a: 447b         	add	r3, pc
  32408c: 4618         	mov	r0, r3
  32408e: f2b4 f939    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4272
  324092: 4603         	mov	r3, r0
  324094: 930a         	str	r3, [sp, #0x28]
  324096: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x3243dc <FindGameLayer::init()+0x3fc>
  324098: 447b         	add	r3, pc
  32409a: 4618         	mov	r0, r3
  32409c: f2b4 f932    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4264
  3240a0: 4603         	mov	r3, r0
  3240a2: 930b         	str	r3, [sp, #0x2c]
  3240a4: 4bce         	ldr	r3, [pc, #0x338]        @ 0x3243e0 <FindGameLayer::init()+0x400>
  3240a6: 447b         	add	r3, pc
  3240a8: 4618         	mov	r0, r3
  3240aa: f2b4 f92b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4256
  3240ae: 4603         	mov	r3, r0
  3240b0: 930c         	str	r3, [sp, #0x30]
  3240b2: 4bcc         	ldr	r3, [pc, #0x330]        @ 0x3243e4 <FindGameLayer::init()+0x404>
  3240b4: 447b         	add	r3, pc
  3240b6: 4618         	mov	r0, r3
  3240b8: f2b4 f924    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4248
  3240bc: 4603         	mov	r3, r0
  3240be: 930d         	str	r3, [sp, #0x34]
  3240c0: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3243e8 <FindGameLayer::init()+0x408>
  3240c2: 447b         	add	r3, pc
  3240c4: 4618         	mov	r0, r3
  3240c6: f2b4 f91d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b423a
  3240ca: 4603         	mov	r3, r0
  3240cc: 930e         	str	r3, [sp, #0x38]
  3240ce: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x3243ec <FindGameLayer::init()+0x40c>
  3240d0: 447b         	add	r3, pc
  3240d2: 4618         	mov	r0, r3
  3240d4: f2b4 f916    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b422c
  3240d8: 4603         	mov	r3, r0
  3240da: 930f         	str	r3, [sp, #0x3c]
  3240dc: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x3243f0 <FindGameLayer::init()+0x410>
  3240de: 447b         	add	r3, pc
  3240e0: 4618         	mov	r0, r3
  3240e2: f2b4 f90f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b421e
  3240e6: 4603         	mov	r3, r0
  3240e8: 9310         	str	r3, [sp, #0x40]
  3240ea: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x3243f4 <FindGameLayer::init()+0x414>
  3240ec: 447b         	add	r3, pc
  3240ee: 4618         	mov	r0, r3
  3240f0: f2b4 f908    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4210
  3240f4: 4603         	mov	r3, r0
  3240f6: 9311         	str	r3, [sp, #0x44]
  3240f8: 4bbf         	ldr	r3, [pc, #0x2fc]        @ 0x3243f8 <FindGameLayer::init()+0x418>
  3240fa: 447b         	add	r3, pc
  3240fc: 4618         	mov	r0, r3
  3240fe: f2b4 f901    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b4202
  324102: 4603         	mov	r3, r0
  324104: 9312         	str	r3, [sp, #0x48]
  324106: 9a03         	ldr	r2, [sp, #0xc]
  324108: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x3243fc <FindGameLayer::init()+0x41c>
  32410a: 58e3         	ldr	r3, [r4, r3]
  32410c: 9326         	str	r3, [sp, #0x98]
  32410e: 2300         	movs	r3, #0x0
  324110: 9327         	str	r3, [sp, #0x9c]
  324112: 9b27         	ldr	r3, [sp, #0x9c]
  324114: 9300         	str	r3, [sp]
  324116: 9b26         	ldr	r3, [sp, #0x98]
  324118: 9809         	ldr	r0, [sp, #0x24]
  32411a: 990a         	ldr	r1, [sp, #0x28]
  32411c: f294 f906    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x29420c
  324120: 4603         	mov	r3, r0
  324122: 9313         	str	r3, [sp, #0x4c]
  324124: 9813         	ldr	r0, [sp, #0x4c]
  324126: 2100         	movs	r1, #0x0
  324128: f291 f808    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x291010
  32412c: 4602         	mov	r2, r0
  32412e: 9b03         	ldr	r3, [sp, #0xc]
  324130: f8c3 2114    	str.w	r2, [r3, #0x114]
  324134: 9b03         	ldr	r3, [sp, #0xc]
  324136: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  32413a: 4618         	mov	r0, r3
  32413c: f273 fed4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273da8
  324140: 9b03         	ldr	r3, [sp, #0xc]
  324142: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  324146: 681b         	ldr	r3, [r3]
  324148: 334c         	adds	r3, #0x4c
  32414a: 681d         	ldr	r5, [r3]
  32414c: 9b03         	ldr	r3, [sp, #0xc]
  32414e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  324152: 461e         	mov	r6, r3
  324154: 9b1e         	ldr	r3, [sp, #0x78]
  324156: ed9d 7a1f    	vldr	s14, [sp, #124]
  32415a: eddf 7a9a    	vldr	s15, [pc, #616]         @ 0x3243c4 <FindGameLayer::init()+0x3e4>
  32415e: ee77 7a67    	vsub.f32	s15, s14, s15
  324162: aa34         	add	r2, sp, #0xd0
  324164: 4610         	mov	r0, r2
  324166: 4619         	mov	r1, r3
  324168: ee17 2a90    	vmov	r2, s15
  32416c: f26e fdc0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26eb80
  324170: ab34         	add	r3, sp, #0xd0
  324172: 4630         	mov	r0, r6
  324174: 4619         	mov	r1, r3
  324176: 47a8         	blx	r5
  324178: 9b03         	ldr	r3, [sp, #0xc]
  32417a: 681b         	ldr	r3, [r3]
  32417c: 33c8         	adds	r3, #0xc8
  32417e: 681b         	ldr	r3, [r3]
  324180: 9903         	ldr	r1, [sp, #0xc]
  324182: 9a03         	ldr	r2, [sp, #0xc]
  324184: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  324188: 4608         	mov	r0, r1
  32418a: 4611         	mov	r1, r2
  32418c: 4798         	blx	r3
  32418e: 9a03         	ldr	r2, [sp, #0xc]
  324190: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x324400 <FindGameLayer::init()+0x420>
  324192: 58e3         	ldr	r3, [r4, r3]
  324194: 9328         	str	r3, [sp, #0xa0]
  324196: 2300         	movs	r3, #0x0
  324198: 9329         	str	r3, [sp, #0xa4]
  32419a: 9b29         	ldr	r3, [sp, #0xa4]
  32419c: 9300         	str	r3, [sp]
  32419e: 9b28         	ldr	r3, [sp, #0xa0]
  3241a0: 980b         	ldr	r0, [sp, #0x2c]
  3241a2: 990c         	ldr	r1, [sp, #0x30]
  3241a4: f294 f8c2    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x294184
  3241a8: 4603         	mov	r3, r0
  3241aa: 9314         	str	r3, [sp, #0x50]
  3241ac: 9814         	ldr	r0, [sp, #0x50]
  3241ae: 2100         	movs	r1, #0x0
  3241b0: f290 ffc4    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x290f88
  3241b4: 4602         	mov	r2, r0
  3241b6: 9b03         	ldr	r3, [sp, #0xc]
  3241b8: f8c3 2120    	str.w	r2, [r3, #0x120]
  3241bc: 9b03         	ldr	r3, [sp, #0xc]
  3241be: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3241c2: 4618         	mov	r0, r3
  3241c4: f273 fe90    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273d20
  3241c8: 9b03         	ldr	r3, [sp, #0xc]
  3241ca: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3241ce: 681b         	ldr	r3, [r3]
  3241d0: 334c         	adds	r3, #0x4c
  3241d2: 681d         	ldr	r5, [r3]
  3241d4: 9b03         	ldr	r3, [sp, #0xc]
  3241d6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3241da: 461e         	mov	r6, r3
  3241dc: ed9d 7a1c    	vldr	s14, [sp, #112]
  3241e0: eddf 7a79    	vldr	s15, [pc, #484]         @ 0x3243c8 <FindGameLayer::init()+0x3e8>
  3241e4: ee77 7a67    	vsub.f32	s15, s14, s15
  3241e8: ab34         	add	r3, sp, #0xd0
  3241ea: 4618         	mov	r0, r3
  3241ec: ee17 1a90    	vmov	r1, s15
  3241f0: f04f 4284    	mov.w	r2, #0x42000000
  3241f4: f26e fd7c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26eaf8
  3241f8: ab34         	add	r3, sp, #0xd0
  3241fa: 4630         	mov	r0, r6
  3241fc: 4619         	mov	r1, r3
  3241fe: 47a8         	blx	r5
  324200: 9b03         	ldr	r3, [sp, #0xc]
  324202: 681b         	ldr	r3, [r3]
  324204: 33c8         	adds	r3, #0xc8
  324206: 681b         	ldr	r3, [r3]
  324208: 9903         	ldr	r1, [sp, #0xc]
  32420a: 9a03         	ldr	r2, [sp, #0xc]
  32420c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  324210: 4608         	mov	r0, r1
  324212: 4611         	mov	r1, r2
  324214: 4798         	blx	r3
  324216: 9a03         	ldr	r2, [sp, #0xc]
  324218: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x324404 <FindGameLayer::init()+0x424>
  32421a: 58e3         	ldr	r3, [r4, r3]
  32421c: 932a         	str	r3, [sp, #0xa8]
  32421e: 2300         	movs	r3, #0x0
  324220: 932b         	str	r3, [sp, #0xac]
  324222: 9b2b         	ldr	r3, [sp, #0xac]
  324224: 9300         	str	r3, [sp]
  324226: 9b2a         	ldr	r3, [sp, #0xa8]
  324228: 980d         	ldr	r0, [sp, #0x34]
  32422a: 990e         	ldr	r1, [sp, #0x38]
  32422c: f294 f87e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2940fc
  324230: 4603         	mov	r3, r0
  324232: 9315         	str	r3, [sp, #0x54]
  324234: 9815         	ldr	r0, [sp, #0x54]
  324236: 2100         	movs	r1, #0x0
  324238: f290 ff80    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x290f00
  32423c: 4602         	mov	r2, r0
  32423e: 9b03         	ldr	r3, [sp, #0xc]
  324240: f8c3 213c    	str.w	r2, [r3, #0x13c]
  324244: 9b03         	ldr	r3, [sp, #0xc]
  324246: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  32424a: 4618         	mov	r0, r3
  32424c: f273 fe4c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273c98
  324250: 9b03         	ldr	r3, [sp, #0xc]
  324252: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  324256: 681b         	ldr	r3, [r3]
  324258: 334c         	adds	r3, #0x4c
  32425a: 681d         	ldr	r5, [r3]
  32425c: 9b03         	ldr	r3, [sp, #0xc]
  32425e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  324262: 461e         	mov	r6, r3
  324264: ab34         	add	r3, sp, #0xd0
  324266: 4618         	mov	r0, r3
  324268: f04f 0100    	mov.w	r1, #0x0
  32426c: f2c4 2160    	movt	r1, #0x4260
  324270: f04f 4284    	mov.w	r2, #0x42000000
  324274: f26e fd3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26ea78
  324278: ab34         	add	r3, sp, #0xd0
  32427a: 4630         	mov	r0, r6
  32427c: 4619         	mov	r1, r3
  32427e: 47a8         	blx	r5
  324280: 9b03         	ldr	r3, [sp, #0xc]
  324282: 681b         	ldr	r3, [r3]
  324284: 33c8         	adds	r3, #0xc8
  324286: 681b         	ldr	r3, [r3]
  324288: 9903         	ldr	r1, [sp, #0xc]
  32428a: 9a03         	ldr	r2, [sp, #0xc]
  32428c: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  324290: 4608         	mov	r0, r1
  324292: 4611         	mov	r1, r2
  324294: 4798         	blx	r3
  324296: f04f 0300    	mov.w	r3, #0x0
  32429a: f2c4 3302    	movt	r3, #0x4302
  32429e: 9316         	str	r3, [sp, #0x58]
  3242a0: 9a03         	ldr	r2, [sp, #0xc]
  3242a2: 4b59         	ldr	r3, [pc, #0x164]        @ 0x324408 <FindGameLayer::init()+0x428>
  3242a4: 58e3         	ldr	r3, [r4, r3]
  3242a6: 932c         	str	r3, [sp, #0xb0]
  3242a8: 2300         	movs	r3, #0x0
  3242aa: 932d         	str	r3, [sp, #0xb4]
  3242ac: 9b2d         	ldr	r3, [sp, #0xb4]
  3242ae: 9300         	str	r3, [sp]
  3242b0: 9b2c         	ldr	r3, [sp, #0xb0]
  3242b2: 980f         	ldr	r0, [sp, #0x3c]
  3242b4: 9910         	ldr	r1, [sp, #0x40]
  3242b6: f294 f839    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x294072
  3242ba: 4603         	mov	r3, r0
  3242bc: 9317         	str	r3, [sp, #0x5c]
  3242be: 9817         	ldr	r0, [sp, #0x5c]
  3242c0: 2100         	movs	r1, #0x0
  3242c2: f290 ff3b    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x290e76
  3242c6: 4602         	mov	r2, r0
  3242c8: 9b03         	ldr	r3, [sp, #0xc]
  3242ca: f8c3 2128    	str.w	r2, [r3, #0x128]
  3242ce: 9b03         	ldr	r3, [sp, #0xc]
  3242d0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3242d4: 4618         	mov	r0, r3
  3242d6: f273 fe07    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273c0e
  3242da: 9b03         	ldr	r3, [sp, #0xc]
  3242dc: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3242e0: 681b         	ldr	r3, [r3]
  3242e2: 334c         	adds	r3, #0x4c
  3242e4: 681d         	ldr	r5, [r3]
  3242e6: 9b03         	ldr	r3, [sp, #0xc]
  3242e8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3242ec: 461e         	mov	r6, r3
  3242ee: ed9d 7a1e    	vldr	s14, [sp, #120]
  3242f2: eddd 7a16    	vldr	s15, [sp, #88]
  3242f6: ee77 7a27    	vadd.f32	s15, s14, s15
  3242fa: 9b1f         	ldr	r3, [sp, #0x7c]
  3242fc: aa34         	add	r2, sp, #0xd0
  3242fe: 4610         	mov	r0, r2
  324300: ee17 1a90    	vmov	r1, s15
  324304: 461a         	mov	r2, r3
  324306: f26e fcf3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e9e6
  32430a: ab34         	add	r3, sp, #0xd0
  32430c: 4630         	mov	r0, r6
  32430e: 4619         	mov	r1, r3
  324310: 47a8         	blx	r5
  324312: 9b03         	ldr	r3, [sp, #0xc]
  324314: 681b         	ldr	r3, [r3]
  324316: 33c8         	adds	r3, #0xc8
  324318: 681b         	ldr	r3, [r3]
  32431a: 9903         	ldr	r1, [sp, #0xc]
  32431c: 9a03         	ldr	r2, [sp, #0xc]
  32431e: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  324322: 4608         	mov	r0, r1
  324324: 4611         	mov	r1, r2
  324326: 4798         	blx	r3
  324328: 9a03         	ldr	r2, [sp, #0xc]
  32432a: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x32440c <FindGameLayer::init()+0x42c>
  32432c: 58e3         	ldr	r3, [r4, r3]
  32432e: 932e         	str	r3, [sp, #0xb8]
  324330: 2300         	movs	r3, #0x0
  324332: 932f         	str	r3, [sp, #0xbc]
  324334: 9b2f         	ldr	r3, [sp, #0xbc]
  324336: 9300         	str	r3, [sp]
  324338: 9b2e         	ldr	r3, [sp, #0xb8]
  32433a: 9811         	ldr	r0, [sp, #0x44]
  32433c: 9912         	ldr	r1, [sp, #0x48]
  32433e: f293 fff5    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x293fea
  324342: 4603         	mov	r3, r0
  324344: 9318         	str	r3, [sp, #0x60]
  324346: 9818         	ldr	r0, [sp, #0x60]
  324348: 2100         	movs	r1, #0x0
  32434a: f290 fef7    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x290dee
  32434e: 4602         	mov	r2, r0
  324350: 9b03         	ldr	r3, [sp, #0xc]
  324352: f8c3 212c    	str.w	r2, [r3, #0x12c]
  324356: 9b03         	ldr	r3, [sp, #0xc]
  324358: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  32435c: 4618         	mov	r0, r3
  32435e: f273 fdc3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273b86
  324362: 9b03         	ldr	r3, [sp, #0xc]
  324364: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  324368: 681b         	ldr	r3, [r3]
  32436a: 334c         	adds	r3, #0x4c
  32436c: 681d         	ldr	r5, [r3]
  32436e: 9b03         	ldr	r3, [sp, #0xc]
  324370: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  324374: 461e         	mov	r6, r3
  324376: ed9d 7a1e    	vldr	s14, [sp, #120]
  32437a: eddd 7a16    	vldr	s15, [sp, #88]
  32437e: ee77 7a67    	vsub.f32	s15, s14, s15
  324382: 9b1f         	ldr	r3, [sp, #0x7c]
  324384: aa34         	add	r2, sp, #0xd0
  324386: 4610         	mov	r0, r2
  324388: ee17 1a90    	vmov	r1, s15
  32438c: 461a         	mov	r2, r3
  32438e: f26e fcaf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e95e
  324392: ab34         	add	r3, sp, #0xd0
  324394: 4630         	mov	r0, r6
  324396: 4619         	mov	r1, r3
  324398: 47a8         	blx	r5
  32439a: 9b03         	ldr	r3, [sp, #0xc]
  32439c: 681b         	ldr	r3, [r3]
  32439e: 33c8         	adds	r3, #0xc8
  3243a0: 681b         	ldr	r3, [r3]
  3243a2: 9903         	ldr	r1, [sp, #0xc]
  3243a4: 9a03         	ldr	r2, [sp, #0xc]
  3243a6: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3243aa: 4608         	mov	r0, r1
  3243ac: 4611         	mov	r1, r2
  3243ae: 4798         	blx	r3
  3243b0: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x324410 <FindGameLayer::init()+0x430>
  3243b2: 58e3         	ldr	r3, [r4, r3]
  3243b4: 681b         	ldr	r3, [r3]
  3243b6: 2b05         	cmp	r3, #0x5
  3243b8: d12e         	bne	0x324418 <FindGameLayer::init()+0x438> @ imm = #0x5c
  3243ba: 4b16         	ldr	r3, [pc, #0x58]         @ 0x324414 <FindGameLayer::init()+0x434>
  3243bc: 447b         	add	r3, pc
  3243be: 461d         	mov	r5, r3
  3243c0: e02d         	b	0x32441e <FindGameLayer::init()+0x43e> @ imm = #0x5a
  3243c2: bf00         	nop
  3243c4: 0000         	movs	r0, r0
  3243c6: 4240         	rsbs	r0, r0, #0
  3243c8: 0000         	movs	r0, r0
  3243ca: 4260         	rsbs	r0, r4, #0
  3243cc: ea1c 0060    	ands.w	r0, r12, r0, asr #1
  3243d0: d724         	bvc	0x32441c <FindGameLayer::init()+0x43c> @ imm = #0x48
  3243d2: ffff 3bd0    	<unknown>
  3243d6: 004a         	lsls	r2, r1, #0x1
  3243d8: 3bc2         	subs	r3, #0xc2
  3243da: 004a         	lsls	r2, r1, #0x1
  3243dc: 3bb4         	subs	r3, #0xb4
  3243de: 004a         	lsls	r2, r1, #0x1
  3243e0: 3ba6         	subs	r3, #0xa6
  3243e2: 004a         	lsls	r2, r1, #0x1
  3243e4: 3b98         	subs	r3, #0x98
  3243e6: 004a         	lsls	r2, r1, #0x1
  3243e8: 3b8a         	subs	r3, #0x8a
  3243ea: 004a         	lsls	r2, r1, #0x1
  3243ec: 3b88         	subs	r3, #0x88
  3243ee: 004a         	lsls	r2, r1, #0x1
  3243f0: 3b7a         	subs	r3, #0x7a
  3243f2: 004a         	lsls	r2, r1, #0x1
  3243f4: 3b7c         	subs	r3, #0x7c
  3243f6: 004a         	lsls	r2, r1, #0x1
  3243f8: 3b6e         	subs	r3, #0x6e
  3243fa: 004a         	lsls	r2, r1, #0x1
  3243fc: da3c         	bge	0x324478 <FindGameLayer::init()+0x498> @ imm = #0x78
  3243fe: ffff da40    	vtbx.8	d29, {d15, d16, d17}, d0
  324402: ffff da44    	vtbx.8	d29, {d15, d16, d17}, d4
  324406: ffff da48    	vtbx.8	d29, {d15, d16, d17}, d8
  32440a: ffff da4c    	vtbx.8	d29, {d15, d16, d17}, d12
  32440e: ffff d838    	vqshrun.s64	d29, q12, #0x1
  324412: ffff 38bc    	<unknown>
  324416: 004a         	lsls	r2, r1, #0x1
  324418: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x32477c <FindGameLayer::init()+0x79c>
  32441a: 447b         	add	r3, pc
  32441c: 461d         	mov	r5, r3
  32441e: ab34         	add	r3, sp, #0xd0
  324420: 4618         	mov	r0, r3
  324422: f065 f7e7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465fce
  324426: aa05         	add	r2, sp, #0x14
  324428: ab34         	add	r3, sp, #0xd0
  32442a: 4610         	mov	r0, r2
  32442c: 4629         	mov	r1, r5
  32442e: 461a         	mov	r2, r3
  324430: f092 f316    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49262c
  324434: ab34         	add	r3, sp, #0xd0
  324436: 4618         	mov	r0, r3
  324438: f065 f7e0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465fc0
  32443c: ab05         	add	r3, sp, #0x14
  32443e: 4618         	mov	r0, r3
  324440: f090 f75e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x490ebc
  324444: 4605         	mov	r5, r0
  324446: 4bce         	ldr	r3, [pc, #0x338]        @ 0x324780 <FindGameLayer::init()+0x7a0>
  324448: 447b         	add	r3, pc
  32444a: 4618         	mov	r0, r3
  32444c: f090 f758    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x490eb0
  324450: 4603         	mov	r3, r0
  324452: 2220         	movs	r2, #0x20
  324454: 9200         	str	r2, [sp]
  324456: 4628         	mov	r0, r5
  324458: 4619         	mov	r1, r3
  32445a: 2220         	movs	r2, #0x20
  32445c: 2320         	movs	r3, #0x20
  32445e: f280 ff8b    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x280f16
  324462: 4602         	mov	r2, r0
  324464: 9b03         	ldr	r3, [sp, #0xc]
  324466: f8c3 210c    	str.w	r2, [r3, #0x10c]
  32446a: 9b03         	ldr	r3, [sp, #0xc]
  32446c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  324470: 4618         	mov	r0, r3
  324472: f273 fd39    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273a72
  324476: 9b03         	ldr	r3, [sp, #0xc]
  324478: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  32447c: 681b         	ldr	r3, [r3]
  32447e: 334c         	adds	r3, #0x4c
  324480: 681d         	ldr	r5, [r3]
  324482: 9b03         	ldr	r3, [sp, #0xc]
  324484: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  324488: 461e         	mov	r6, r3
  32448a: eddd 7a1e    	vldr	s15, [sp, #120]
  32448e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  324492: ed9d 7a1d    	vldr	s14, [sp, #116]
  324496: eddf 7ab8    	vldr	s15, [pc, #736]         @ 0x324778 <FindGameLayer::init()+0x798>
  32449a: ee77 7a67    	vsub.f32	s15, s14, s15
  32449e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3244a2: ab30         	add	r3, sp, #0xc0
  3244a4: 4618         	mov	r0, r3
  3244a6: eeb0 0b46    	vmov.f64	d0, d6
  3244aa: eeb0 1b47    	vmov.f64	d1, d7
  3244ae: f7fe fe2f    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x13a2
  3244b2: ed9d 8b30    	vldr	d8, [sp, #192]
  3244b6: 9b03         	ldr	r3, [sp, #0xc]
  3244b8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3244bc: 681b         	ldr	r3, [r3]
  3244be: f503 73fe    	add.w	r3, r3, #0x1fc
  3244c2: 681b         	ldr	r3, [r3]
  3244c4: 9a03         	ldr	r2, [sp, #0xc]
  3244c6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3244ca: 4610         	mov	r0, r2
  3244cc: 4798         	blx	r3
  3244ce: 4607         	mov	r7, r0
  3244d0: ab20         	add	r3, sp, #0x80
  3244d2: 4618         	mov	r0, r3
  3244d4: f065 f78e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465f1c
  3244d8: aa22         	add	r2, sp, #0x88
  3244da: ab20         	add	r3, sp, #0x80
  3244dc: 4610         	mov	r0, r2
  3244de: 4639         	mov	r1, r7
  3244e0: 461a         	mov	r2, r3
  3244e2: f092 f2bd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49257a
  3244e6: ab22         	add	r3, sp, #0x88
  3244e8: 4618         	mov	r0, r3
  3244ea: f090 f5b7    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x490b6e
  3244ee: 4603         	mov	r3, r0
  3244f0: ee07 3a90    	vmov	s15, r3
  3244f4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3244f8: eef3 7a08    	vmov.f32	s15, #2.400000e+01
  3244fc: ee27 7a27    	vmul.f32	s14, s14, s15
  324500: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  324504: eec7 7a27    	vdiv.f32	s15, s14, s15
  324508: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  32450c: ee38 7b47    	vsub.f64	d7, d8, d7
  324510: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  324514: eddd 7a1e    	vldr	s15, [sp, #120]
  324518: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  32451c: ed9d 7a1d    	vldr	s14, [sp, #116]
  324520: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x324778 <FindGameLayer::init()+0x798>
  324524: ee77 7a67    	vsub.f32	s15, s14, s15
  324528: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  32452c: ab34         	add	r3, sp, #0xd0
  32452e: 4618         	mov	r0, r3
  324530: eeb0 0b46    	vmov.f64	d0, d6
  324534: eeb0 1b47    	vmov.f64	d1, d7
  324538: f7fe fdea    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x142c
  32453c: ed9d 7b36    	vldr	d7, [sp, #216]
  324540: eef7 7bc7    	vcvt.f32.f64	s15, d7
  324544: ab24         	add	r3, sp, #0x90
  324546: 4618         	mov	r0, r3
  324548: ee18 1a10    	vmov	r1, s16
  32454c: ee17 2a90    	vmov	r2, s15
  324550: f26e fbce    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e79c
  324554: ab24         	add	r3, sp, #0x90
  324556: 4630         	mov	r0, r6
  324558: 4619         	mov	r1, r3
  32455a: 47a8         	blx	r5
  32455c: ab22         	add	r3, sp, #0x88
  32455e: 4618         	mov	r0, r3
  324560: f091 f1d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4913b0
  324564: ab20         	add	r3, sp, #0x80
  324566: 4618         	mov	r0, r3
  324568: f065 f748    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465e90
  32456c: 9b03         	ldr	r3, [sp, #0xc]
  32456e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  324572: 4618         	mov	r0, r3
  324574: 2118         	movs	r1, #0x18
  324576: f281 fc05    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x28180a
  32457a: 9b03         	ldr	r3, [sp, #0xc]
  32457c: 681b         	ldr	r3, [r3]
  32457e: 33c8         	adds	r3, #0xc8
  324580: 681b         	ldr	r3, [r3]
  324582: 9903         	ldr	r1, [sp, #0xc]
  324584: 9a03         	ldr	r2, [sp, #0xc]
  324586: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  32458a: 4608         	mov	r0, r1
  32458c: 4611         	mov	r1, r2
  32458e: 4798         	blx	r3
  324590: f04f 0300    	mov.w	r3, #0x0
  324594: f2c4 13c0    	movt	r3, #0x41c0
  324598: 9319         	str	r3, [sp, #0x64]
  32459a: f04f 4341    	mov.w	r3, #0xc1000000
  32459e: 931a         	str	r3, [sp, #0x68]
  3245a0: f64c 43cd    	movw	r3, #0xcccd
  3245a4: f6c3 730c    	movt	r3, #0x3f0c
  3245a8: 931b         	str	r3, [sp, #0x6c]
  3245aa: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x324784 <FindGameLayer::init()+0x7a4>
  3245ac: 447b         	add	r3, pc
  3245ae: 4618         	mov	r0, r3
  3245b0: f090 f6a6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x490d4c
  3245b4: 4603         	mov	r3, r0
  3245b6: 2220         	movs	r2, #0x20
  3245b8: 9200         	str	r2, [sp]
  3245ba: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x324788 <FindGameLayer::init()+0x7a8>
  3245bc: 447a         	add	r2, pc
  3245be: 4610         	mov	r0, r2
  3245c0: 4619         	mov	r1, r3
  3245c2: 2220         	movs	r2, #0x20
  3245c4: 2320         	movs	r3, #0x20
  3245c6: f280 fed7    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x280dae
  3245ca: 4602         	mov	r2, r0
  3245cc: 9b03         	ldr	r3, [sp, #0xc]
  3245ce: f8c3 2110    	str.w	r2, [r3, #0x110]
  3245d2: 9b03         	ldr	r3, [sp, #0xc]
  3245d4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3245d8: 4618         	mov	r0, r3
  3245da: f273 fc85    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27390a
  3245de: 9b03         	ldr	r3, [sp, #0xc]
  3245e0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3245e4: 681b         	ldr	r3, [r3]
  3245e6: 334c         	adds	r3, #0x4c
  3245e8: 681d         	ldr	r5, [r3]
  3245ea: 9b03         	ldr	r3, [sp, #0xc]
  3245ec: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3245f0: 461e         	mov	r6, r3
  3245f2: 9b03         	ldr	r3, [sp, #0xc]
  3245f4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3245f8: 681b         	ldr	r3, [r3]
  3245fa: 3350         	adds	r3, #0x50
  3245fc: 681b         	ldr	r3, [r3]
  3245fe: 9a03         	ldr	r2, [sp, #0xc]
  324600: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  324604: 4610         	mov	r0, r2
  324606: 4798         	blx	r3
  324608: 4603         	mov	r3, r0
  32460a: 681f         	ldr	r7, [r3]
  32460c: 9b03         	ldr	r3, [sp, #0xc]
  32460e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  324612: 681b         	ldr	r3, [r3]
  324614: 3350         	adds	r3, #0x50
  324616: 681b         	ldr	r3, [r3]
  324618: 9a03         	ldr	r2, [sp, #0xc]
  32461a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  32461e: 4610         	mov	r0, r2
  324620: 4798         	blx	r3
  324622: 4603         	mov	r3, r0
  324624: 685b         	ldr	r3, [r3, #0x4]
  324626: aa20         	add	r2, sp, #0x80
  324628: 4610         	mov	r0, r2
  32462a: 4639         	mov	r1, r7
  32462c: 461a         	mov	r2, r3
  32462e: f26e fb5f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e6be
  324632: eddd 7a1a    	vldr	s15, [sp, #104]
  324636: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  32463a: ab30         	add	r3, sp, #0xc0
  32463c: 4618         	mov	r0, r3
  32463e: ed9f 0b4c    	vldr	d0, [pc, #304]          @ 0x324770 <FindGameLayer::init()+0x790>
  324642: eeb0 1b47    	vmov.f64	d1, d7
  324646: f7fe fd63    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x153a
  32464a: ed9d 8b30    	vldr	d8, [sp, #192]
  32464e: 9b03         	ldr	r3, [sp, #0xc]
  324650: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  324654: 681b         	ldr	r3, [r3]
  324656: f503 73fe    	add.w	r3, r3, #0x1fc
  32465a: 681b         	ldr	r3, [r3]
  32465c: 9a03         	ldr	r2, [sp, #0xc]
  32465e: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  324662: 4610         	mov	r0, r2
  324664: 4798         	blx	r3
  324666: 4607         	mov	r7, r0
  324668: ab08         	add	r3, sp, #0x20
  32466a: 4618         	mov	r0, r3
  32466c: f065 f6c2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465d84
  324670: aa06         	add	r2, sp, #0x18
  324672: ab08         	add	r3, sp, #0x20
  324674: 4610         	mov	r0, r2
  324676: 4639         	mov	r1, r7
  324678: 461a         	mov	r2, r3
  32467a: f092 f1f1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4923e2
  32467e: ab06         	add	r3, sp, #0x18
  324680: 4618         	mov	r0, r3
  324682: f090 f4eb    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4909d6
  324686: 4603         	mov	r3, r0
  324688: ee07 3a90    	vmov	s15, r3
  32468c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  324690: eddd 7a19    	vldr	s15, [sp, #100]
  324694: ee27 7a27    	vmul.f32	s14, s14, s15
  324698: eddd 7a1b    	vldr	s15, [sp, #108]
  32469c: ee27 7a27    	vmul.f32	s14, s14, s15
  3246a0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3246a4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3246a8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3246ac: ee38 7b47    	vsub.f64	d7, d8, d7
  3246b0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3246b4: eddd 7a1a    	vldr	s15, [sp, #104]
  3246b8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3246bc: ab34         	add	r3, sp, #0xd0
  3246be: 4618         	mov	r0, r3
  3246c0: ed9f 0b2b    	vldr	d0, [pc, #172]          @ 0x324770 <FindGameLayer::init()+0x790>
  3246c4: eeb0 1b47    	vmov.f64	d1, d7
  3246c8: f7fe fd22    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x15bc
  3246cc: ed9d 7b36    	vldr	d7, [sp, #216]
  3246d0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3246d4: ab22         	add	r3, sp, #0x88
  3246d6: 4618         	mov	r0, r3
  3246d8: ee18 1a10    	vmov	r1, s16
  3246dc: ee17 2a90    	vmov	r2, s15
  3246e0: f26e fb06    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e60c
  3246e4: a924         	add	r1, sp, #0x90
  3246e6: aa20         	add	r2, sp, #0x80
  3246e8: ab22         	add	r3, sp, #0x88
  3246ea: 4608         	mov	r0, r1
  3246ec: 4611         	mov	r1, r2
  3246ee: 461a         	mov	r2, r3
  3246f0: f7fe fcfe    	bl	0x3230f0 <FRAGNADE::getWeaponRect()+0x190> @ imm = #-0x1604
  3246f4: ab24         	add	r3, sp, #0x90
  3246f6: 4630         	mov	r0, r6
  3246f8: 4619         	mov	r1, r3
  3246fa: 47a8         	blx	r5
  3246fc: ab06         	add	r3, sp, #0x18
  3246fe: 4618         	mov	r0, r3
  324700: f091 f108    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x491210
  324704: ab08         	add	r3, sp, #0x20
  324706: 4618         	mov	r0, r3
  324708: f065 f678    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465cf0
  32470c: 9b03         	ldr	r3, [sp, #0xc]
  32470e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  324712: eddd 7a19    	vldr	s15, [sp, #100]
  324716: eefd 7ae7    	vcvt.s32.f32	s15, s15
  32471a: ee17 2a90    	vmov	r2, s15
  32471e: 4618         	mov	r0, r3
  324720: 4611         	mov	r1, r2
  324722: f281 fb2f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x28165e
  324726: 9b03         	ldr	r3, [sp, #0xc]
  324728: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  32472c: 681b         	ldr	r3, [r3]
  32472e: 3340         	adds	r3, #0x40
  324730: 681b         	ldr	r3, [r3]
  324732: 9a03         	ldr	r2, [sp, #0xc]
  324734: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  324738: 4610         	mov	r0, r2
  32473a: 991b         	ldr	r1, [sp, #0x6c]
  32473c: 4798         	blx	r3
  32473e: 9b03         	ldr	r3, [sp, #0xc]
  324740: 681b         	ldr	r3, [r3]
  324742: 33c8         	adds	r3, #0xc8
  324744: 681b         	ldr	r3, [r3]
  324746: 9903         	ldr	r1, [sp, #0xc]
  324748: 9a03         	ldr	r2, [sp, #0xc]
  32474a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  32474e: 4608         	mov	r0, r1
  324750: 4611         	mov	r1, r2
  324752: 4798         	blx	r3
  324754: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x32478c <FindGameLayer::init()+0x7ac>
  324756: 447b         	add	r3, pc
  324758: 4618         	mov	r0, r3
  32475a: f090 f5d1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x490ba2
  32475e: 4603         	mov	r3, r0
  324760: 2220         	movs	r2, #0x20
  324762: 9200         	str	r2, [sp]
  324764: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x324790 <FindGameLayer::init()+0x7b0>
  324766: 447a         	add	r2, pc
  324768: e014         	b	0x324794 <FindGameLayer::init()+0x7b4> @ imm = #0x28
  32476a: bf00         	nop
  32476c: f3af 8000    	nop.w
  324778: 0000         	movs	r0, r0
  32477a: 42a0         	cmp	r0, r4
  32477c: 386a         	subs	r0, #0x6a
  32477e: 004a         	lsls	r2, r1, #0x1
  324780: be80         	bkpt	#0x80
  324782: 0061         	lsls	r1, r4, #0x1
  324784: bd1c         	pop	{r2, r3, r4, pc}
  324786: 0061         	lsls	r1, r4, #0x1
  324788: 36d4         	adds	r6, #0xd4
  32478a: 004a         	lsls	r2, r1, #0x1
  32478c: bb72         	cbnz	r2, 0x3247ec <FindGameLayer::init()+0x80c> @ imm = #0x5c
  32478e: 0061         	lsls	r1, r4, #0x1
  324790: 3532         	adds	r5, #0x32
  324792: 004a         	lsls	r2, r1, #0x1
  324794: 4610         	mov	r0, r2
  324796: 4619         	mov	r1, r3
  324798: 2220         	movs	r2, #0x20
  32479a: 2320         	movs	r3, #0x20
  32479c: f280 fdec    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x280bd8
  3247a0: 4602         	mov	r2, r0
  3247a2: 9b03         	ldr	r3, [sp, #0xc]
  3247a4: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3247a8: 9b03         	ldr	r3, [sp, #0xc]
  3247aa: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3247ae: 4618         	mov	r0, r3
  3247b0: f273 fb9a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x273734
  3247b4: 9b03         	ldr	r3, [sp, #0xc]
  3247b6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3247ba: 681b         	ldr	r3, [r3]
  3247bc: 334c         	adds	r3, #0x4c
  3247be: 681d         	ldr	r5, [r3]
  3247c0: 9b03         	ldr	r3, [sp, #0xc]
  3247c2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3247c6: 461e         	mov	r6, r3
  3247c8: 9b03         	ldr	r3, [sp, #0xc]
  3247ca: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3247ce: 681b         	ldr	r3, [r3]
  3247d0: 3350         	adds	r3, #0x50
  3247d2: 681b         	ldr	r3, [r3]
  3247d4: 9a03         	ldr	r2, [sp, #0xc]
  3247d6: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3247da: 4610         	mov	r0, r2
  3247dc: 4798         	blx	r3
  3247de: 4603         	mov	r3, r0
  3247e0: 681f         	ldr	r7, [r3]
  3247e2: 9b03         	ldr	r3, [sp, #0xc]
  3247e4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3247e8: 681b         	ldr	r3, [r3]
  3247ea: 3350         	adds	r3, #0x50
  3247ec: 681b         	ldr	r3, [r3]
  3247ee: 9a03         	ldr	r2, [sp, #0xc]
  3247f0: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3247f4: 4610         	mov	r0, r2
  3247f6: 4798         	blx	r3
  3247f8: 4603         	mov	r3, r0
  3247fa: 685b         	ldr	r3, [r3, #0x4]
  3247fc: aa20         	add	r2, sp, #0x80
  3247fe: 4610         	mov	r0, r2
  324800: 4639         	mov	r1, r7
  324802: 461a         	mov	r2, r3
  324804: f26e fa74    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e4e8
  324808: eddd 7a1a    	vldr	s15, [sp, #104]
  32480c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  324810: ab30         	add	r3, sp, #0xc0
  324812: 4618         	mov	r0, r3
  324814: ed9f 0bb4    	vldr	d0, [pc, #720]          @ 0x324ae8 <FindGameLayer::init()+0xb08>
  324818: eeb0 1b47    	vmov.f64	d1, d7
  32481c: f7fe fc78    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x1710
  324820: ed9d 8b30    	vldr	d8, [sp, #192]
  324824: 9b03         	ldr	r3, [sp, #0xc]
  324826: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  32482a: 681b         	ldr	r3, [r3]
  32482c: f503 73fe    	add.w	r3, r3, #0x1fc
  324830: 681b         	ldr	r3, [r3]
  324832: 9a03         	ldr	r2, [sp, #0xc]
  324834: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  324838: 4610         	mov	r0, r2
  32483a: 4798         	blx	r3
  32483c: 4607         	mov	r7, r0
  32483e: ab08         	add	r3, sp, #0x20
  324840: 4618         	mov	r0, r3
  324842: f065 f5d7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465bae
  324846: aa07         	add	r2, sp, #0x1c
  324848: ab08         	add	r3, sp, #0x20
  32484a: 4610         	mov	r0, r2
  32484c: 4639         	mov	r1, r7
  32484e: 461a         	mov	r2, r3
  324850: f092 f106    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49220c
  324854: ab07         	add	r3, sp, #0x1c
  324856: 4618         	mov	r0, r3
  324858: f090 f400    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x490800
  32485c: 4603         	mov	r3, r0
  32485e: ee07 3a90    	vmov	s15, r3
  324862: eeb8 7a67    	vcvt.f32.u32	s14, s15
  324866: eddd 7a19    	vldr	s15, [sp, #100]
  32486a: ee27 7a27    	vmul.f32	s14, s14, s15
  32486e: eddd 7a1b    	vldr	s15, [sp, #108]
  324872: ee27 7a27    	vmul.f32	s14, s14, s15
  324876: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  32487a: eec7 7a27    	vdiv.f32	s15, s14, s15
  32487e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  324882: ee38 7b47    	vsub.f64	d7, d8, d7
  324886: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  32488a: eddd 7a1a    	vldr	s15, [sp, #104]
  32488e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  324892: ab34         	add	r3, sp, #0xd0
  324894: 4618         	mov	r0, r3
  324896: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x324ae8 <FindGameLayer::init()+0xb08>
  32489a: eeb0 1b47    	vmov.f64	d1, d7
  32489e: f7fe fc37    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x1792
  3248a2: ed9d 7b36    	vldr	d7, [sp, #216]
  3248a6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3248aa: ab22         	add	r3, sp, #0x88
  3248ac: 4618         	mov	r0, r3
  3248ae: ee18 1a10    	vmov	r1, s16
  3248b2: ee17 2a90    	vmov	r2, s15
  3248b6: f26e fa1b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e436
  3248ba: a924         	add	r1, sp, #0x90
  3248bc: aa20         	add	r2, sp, #0x80
  3248be: ab22         	add	r3, sp, #0x88
  3248c0: 4608         	mov	r0, r1
  3248c2: 4611         	mov	r1, r2
  3248c4: 461a         	mov	r2, r3
  3248c6: f7fe fc13    	bl	0x3230f0 <FRAGNADE::getWeaponRect()+0x190> @ imm = #-0x17da
  3248ca: ab24         	add	r3, sp, #0x90
  3248cc: 4630         	mov	r0, r6
  3248ce: 4619         	mov	r1, r3
  3248d0: 47a8         	blx	r5
  3248d2: ab07         	add	r3, sp, #0x1c
  3248d4: 4618         	mov	r0, r3
  3248d6: f091 f01d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49103a
  3248da: ab08         	add	r3, sp, #0x20
  3248dc: 4618         	mov	r0, r3
  3248de: f065 f58d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465b1a
  3248e2: 9b03         	ldr	r3, [sp, #0xc]
  3248e4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3248e8: eddd 7a19    	vldr	s15, [sp, #100]
  3248ec: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3248f0: ee17 2a90    	vmov	r2, s15
  3248f4: 4618         	mov	r0, r3
  3248f6: 4611         	mov	r1, r2
  3248f8: f281 fa44    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x281488
  3248fc: 9b03         	ldr	r3, [sp, #0xc]
  3248fe: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  324902: 681b         	ldr	r3, [r3]
  324904: 3340         	adds	r3, #0x40
  324906: 681b         	ldr	r3, [r3]
  324908: 9a03         	ldr	r2, [sp, #0xc]
  32490a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  32490e: 4610         	mov	r0, r2
  324910: 991b         	ldr	r1, [sp, #0x6c]
  324912: 4798         	blx	r3
  324914: 9b03         	ldr	r3, [sp, #0xc]
  324916: 681b         	ldr	r3, [r3]
  324918: 33c8         	adds	r3, #0xc8
  32491a: 681b         	ldr	r3, [r3]
  32491c: 9903         	ldr	r1, [sp, #0xc]
  32491e: 9a03         	ldr	r2, [sp, #0xc]
  324920: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  324924: 4608         	mov	r0, r1
  324926: 4611         	mov	r1, r2
  324928: 4798         	blx	r3
  32492a: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x324af0 <FindGameLayer::init()+0xb10>
  32492c: 447b         	add	r3, pc
  32492e: 4618         	mov	r0, r3
  324930: f090 f4e6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4909cc
  324934: 4603         	mov	r3, r0
  324936: 2220         	movs	r2, #0x20
  324938: 9200         	str	r2, [sp]
  32493a: 4a6e         	ldr	r2, [pc, #0x1b8]        @ 0x324af4 <FindGameLayer::init()+0xb14>
  32493c: 447a         	add	r2, pc
  32493e: 4610         	mov	r0, r2
  324940: 4619         	mov	r1, r3
  324942: 2220         	movs	r2, #0x20
  324944: 2320         	movs	r3, #0x20
  324946: f280 fd17    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x280a2e
  32494a: 4602         	mov	r2, r0
  32494c: 9b03         	ldr	r3, [sp, #0xc]
  32494e: f8c3 2138    	str.w	r2, [r3, #0x138]
  324952: 9b03         	ldr	r3, [sp, #0xc]
  324954: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  324958: 4618         	mov	r0, r3
  32495a: f273 fac5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27358a
  32495e: 9b03         	ldr	r3, [sp, #0xc]
  324960: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  324964: 681b         	ldr	r3, [r3]
  324966: 334c         	adds	r3, #0x4c
  324968: 681d         	ldr	r5, [r3]
  32496a: 9b03         	ldr	r3, [sp, #0xc]
  32496c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  324970: 461e         	mov	r6, r3
  324972: 9b03         	ldr	r3, [sp, #0xc]
  324974: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  324978: 681b         	ldr	r3, [r3]
  32497a: 3350         	adds	r3, #0x50
  32497c: 681b         	ldr	r3, [r3]
  32497e: 9a03         	ldr	r2, [sp, #0xc]
  324980: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  324984: 4610         	mov	r0, r2
  324986: 4798         	blx	r3
  324988: 4603         	mov	r3, r0
  32498a: 681f         	ldr	r7, [r3]
  32498c: 9b03         	ldr	r3, [sp, #0xc]
  32498e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  324992: 681b         	ldr	r3, [r3]
  324994: 3350         	adds	r3, #0x50
  324996: 681b         	ldr	r3, [r3]
  324998: 9a03         	ldr	r2, [sp, #0xc]
  32499a: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  32499e: 4610         	mov	r0, r2
  3249a0: 4798         	blx	r3
  3249a2: 4603         	mov	r3, r0
  3249a4: 685b         	ldr	r3, [r3, #0x4]
  3249a6: aa20         	add	r2, sp, #0x80
  3249a8: 4610         	mov	r0, r2
  3249aa: 4639         	mov	r1, r7
  3249ac: 461a         	mov	r2, r3
  3249ae: f26e f99f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e33e
  3249b2: eddd 7a1a    	vldr	s15, [sp, #104]
  3249b6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3249ba: ab30         	add	r3, sp, #0xc0
  3249bc: 4618         	mov	r0, r3
  3249be: ed9f 0b4a    	vldr	d0, [pc, #296]          @ 0x324ae8 <FindGameLayer::init()+0xb08>
  3249c2: eeb0 1b47    	vmov.f64	d1, d7
  3249c6: f7fe fba3    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x18ba
  3249ca: ed9d 8b30    	vldr	d8, [sp, #192]
  3249ce: 9b03         	ldr	r3, [sp, #0xc]
  3249d0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3249d4: 681b         	ldr	r3, [r3]
  3249d6: f503 73fe    	add.w	r3, r3, #0x1fc
  3249da: 681b         	ldr	r3, [r3]
  3249dc: 9a03         	ldr	r2, [sp, #0xc]
  3249de: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3249e2: 4610         	mov	r0, r2
  3249e4: 4798         	blx	r3
  3249e6: 4607         	mov	r7, r0
  3249e8: ab07         	add	r3, sp, #0x1c
  3249ea: 4618         	mov	r0, r3
  3249ec: f065 f502    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465a04
  3249f0: aa08         	add	r2, sp, #0x20
  3249f2: ab07         	add	r3, sp, #0x1c
  3249f4: 4610         	mov	r0, r2
  3249f6: 4639         	mov	r1, r7
  3249f8: 461a         	mov	r2, r3
  3249fa: f092 f031    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x492062
  3249fe: ab08         	add	r3, sp, #0x20
  324a00: 4618         	mov	r0, r3
  324a02: f090 f32b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x490656
  324a06: 4603         	mov	r3, r0
  324a08: ee07 3a90    	vmov	s15, r3
  324a0c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  324a10: eddd 7a19    	vldr	s15, [sp, #100]
  324a14: ee27 7a27    	vmul.f32	s14, s14, s15
  324a18: eddd 7a1b    	vldr	s15, [sp, #108]
  324a1c: ee27 7a27    	vmul.f32	s14, s14, s15
  324a20: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  324a24: eec7 7a27    	vdiv.f32	s15, s14, s15
  324a28: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  324a2c: ee38 7b47    	vsub.f64	d7, d8, d7
  324a30: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  324a34: eddd 7a1a    	vldr	s15, [sp, #104]
  324a38: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  324a3c: ab34         	add	r3, sp, #0xd0
  324a3e: 4618         	mov	r0, r3
  324a40: ed9f 0b29    	vldr	d0, [pc, #164]          @ 0x324ae8 <FindGameLayer::init()+0xb08>
  324a44: eeb0 1b47    	vmov.f64	d1, d7
  324a48: f7fe fb62    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x193c
  324a4c: ed9d 7b36    	vldr	d7, [sp, #216]
  324a50: eef7 7bc7    	vcvt.f32.f64	s15, d7
  324a54: ab22         	add	r3, sp, #0x88
  324a56: 4618         	mov	r0, r3
  324a58: ee18 1a10    	vmov	r1, s16
  324a5c: ee17 2a90    	vmov	r2, s15
  324a60: f26e f946    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26e28c
  324a64: a924         	add	r1, sp, #0x90
  324a66: aa20         	add	r2, sp, #0x80
  324a68: ab22         	add	r3, sp, #0x88
  324a6a: 4608         	mov	r0, r1
  324a6c: 4611         	mov	r1, r2
  324a6e: 461a         	mov	r2, r3
  324a70: f7fe fb3e    	bl	0x3230f0 <FRAGNADE::getWeaponRect()+0x190> @ imm = #-0x1984
  324a74: ab24         	add	r3, sp, #0x90
  324a76: 4630         	mov	r0, r6
  324a78: 4619         	mov	r1, r3
  324a7a: 47a8         	blx	r5
  324a7c: ab08         	add	r3, sp, #0x20
  324a7e: 4618         	mov	r0, r3
  324a80: f090 f748    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490e90
  324a84: ab07         	add	r3, sp, #0x1c
  324a86: 4618         	mov	r0, r3
  324a88: f065 f4b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465970
  324a8c: 9b03         	ldr	r3, [sp, #0xc]
  324a8e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  324a92: eddd 7a19    	vldr	s15, [sp, #100]
  324a96: eefd 7ae7    	vcvt.s32.f32	s15, s15
  324a9a: ee17 2a90    	vmov	r2, s15
  324a9e: 4618         	mov	r0, r3
  324aa0: 4611         	mov	r1, r2
  324aa2: f281 f96f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2812de
  324aa6: 9b03         	ldr	r3, [sp, #0xc]
  324aa8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  324aac: 681b         	ldr	r3, [r3]
  324aae: 3340         	adds	r3, #0x40
  324ab0: 681b         	ldr	r3, [r3]
  324ab2: 9a03         	ldr	r2, [sp, #0xc]
  324ab4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  324ab8: 4610         	mov	r0, r2
  324aba: 991b         	ldr	r1, [sp, #0x6c]
  324abc: 4798         	blx	r3
  324abe: 9b03         	ldr	r3, [sp, #0xc]
  324ac0: 681b         	ldr	r3, [r3]
  324ac2: 33c8         	adds	r3, #0xc8
  324ac4: 681b         	ldr	r3, [r3]
  324ac6: 9903         	ldr	r1, [sp, #0xc]
  324ac8: 9a03         	ldr	r2, [sp, #0xc]
  324aca: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  324ace: 4608         	mov	r0, r1
  324ad0: 4611         	mov	r1, r2
  324ad2: 4798         	blx	r3
  324ad4: 4b08         	ldr	r3, [pc, #0x20]         @ 0x324af8 <FindGameLayer::init()+0xb18>
  324ad6: 447b         	add	r3, pc
  324ad8: 4618         	mov	r0, r3
  324ada: f090 f411    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x490822
  324ade: 4603         	mov	r3, r0
  324ae0: 2220         	movs	r2, #0x20
  324ae2: e00b         	b	0x324afc <FindGameLayer::init()+0xb1c> @ imm = #0x16
  324ae4: f3af 8000    	nop.w
  324af0: b99c         	cbnz	r4, 0x324b1a <FindGameLayer::init()+0xb3a> @ imm = #0x26
  324af2: 0061         	lsls	r1, r4, #0x1
  324af4: 3364         	adds	r3, #0x64
  324af6: 004a         	lsls	r2, r1, #0x1
  324af8: b7f2         	<unknown>
  324afa: 0061         	lsls	r1, r4, #0x1
  324afc: 9200         	str	r2, [sp]
  324afe: 4a62         	ldr	r2, [pc, #0x188]        @ 0x324c88 <FindGameLayer::init()+0xca8>
  324b00: 447a         	add	r2, pc
  324b02: 4610         	mov	r0, r2
  324b04: 4619         	mov	r1, r3
  324b06: 2220         	movs	r2, #0x20
  324b08: 2320         	movs	r3, #0x20
  324b0a: f280 fc35    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x28086a
  324b0e: 4602         	mov	r2, r0
  324b10: 9b03         	ldr	r3, [sp, #0xc]
  324b12: f8c3 2124    	str.w	r2, [r3, #0x124]
  324b16: 9b03         	ldr	r3, [sp, #0xc]
  324b18: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  324b1c: 4618         	mov	r0, r3
  324b1e: f273 f9e3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2733c6
  324b22: 9b03         	ldr	r3, [sp, #0xc]
  324b24: 681b         	ldr	r3, [r3]
  324b26: 33c8         	adds	r3, #0xc8
  324b28: 681b         	ldr	r3, [r3]
  324b2a: 9903         	ldr	r1, [sp, #0xc]
  324b2c: 9a03         	ldr	r2, [sp, #0xc]
  324b2e: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  324b32: 4608         	mov	r0, r1
  324b34: 4611         	mov	r1, r2
  324b36: 4798         	blx	r3
  324b38: 4b54         	ldr	r3, [pc, #0x150]        @ 0x324c8c <FindGameLayer::init()+0xcac>
  324b3a: 447b         	add	r3, pc
  324b3c: 4618         	mov	r0, r3
  324b3e: f090 f3df    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4907be
  324b42: 4603         	mov	r3, r0
  324b44: 2220         	movs	r2, #0x20
  324b46: 9200         	str	r2, [sp]
  324b48: 4a51         	ldr	r2, [pc, #0x144]        @ 0x324c90 <FindGameLayer::init()+0xcb0>
  324b4a: 447a         	add	r2, pc
  324b4c: 4610         	mov	r0, r2
  324b4e: 4619         	mov	r1, r3
  324b50: 2220         	movs	r2, #0x20
  324b52: 2320         	movs	r3, #0x20
  324b54: f280 fc10    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x280820
  324b58: 4602         	mov	r2, r0
  324b5a: 9b03         	ldr	r3, [sp, #0xc]
  324b5c: f8c3 2118    	str.w	r2, [r3, #0x118]
  324b60: 9b03         	ldr	r3, [sp, #0xc]
  324b62: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  324b66: 4618         	mov	r0, r3
  324b68: f273 f9be    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27337c
  324b6c: 9b03         	ldr	r3, [sp, #0xc]
  324b6e: 681b         	ldr	r3, [r3]
  324b70: 33c8         	adds	r3, #0xc8
  324b72: 681b         	ldr	r3, [r3]
  324b74: 9903         	ldr	r1, [sp, #0xc]
  324b76: 9a03         	ldr	r2, [sp, #0xc]
  324b78: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  324b7c: 4608         	mov	r0, r1
  324b7e: 4611         	mov	r1, r2
  324b80: 4798         	blx	r3
  324b82: 9803         	ldr	r0, [sp, #0xc]
  324b84: f000 fc50    	bl	0x325428 <FindGameLayer::UpdateCurrentSessionLabel()> @ imm = #0x8a0
  324b88: 9803         	ldr	r0, [sp, #0xc]
  324b8a: f000 fd9d    	bl	0x3256c8 <FindGameLayer::UpdateStatusLabel()> @ imm = #0xb3a
  324b8e: 4b41         	ldr	r3, [pc, #0x104]        @ 0x324c94 <FindGameLayer::init()+0xcb4>
  324b90: 447b         	add	r3, pc
  324b92: 4618         	mov	r0, r3
  324b94: f2b3 faf6    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2b35ec
  324b98: 4602         	mov	r2, r0
  324b9a: 9b03         	ldr	r3, [sp, #0xc]
  324b9c: f8c3 2140    	str.w	r2, [r3, #0x140]
  324ba0: 9b03         	ldr	r3, [sp, #0xc]
  324ba2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  324ba6: 681b         	ldr	r3, [r3]
  324ba8: 334c         	adds	r3, #0x4c
  324baa: 681b         	ldr	r3, [r3]
  324bac: 9a03         	ldr	r2, [sp, #0xc]
  324bae: f8d2 1140    	ldr.w	r1, [r2, #0x140]
  324bb2: aa1e         	add	r2, sp, #0x78
  324bb4: 4608         	mov	r0, r1
  324bb6: 4611         	mov	r1, r2
  324bb8: 4798         	blx	r3
  324bba: 9b03         	ldr	r3, [sp, #0xc]
  324bbc: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  324bc0: 681b         	ldr	r3, [r3]
  324bc2: f503 73d2    	add.w	r3, r3, #0x1a4
  324bc6: 681b         	ldr	r3, [r3]
  324bc8: 9a03         	ldr	r2, [sp, #0xc]
  324bca: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  324bce: 4610         	mov	r0, r2
  324bd0: 2123         	movs	r1, #0x23
  324bd2: 4798         	blx	r3
  324bd4: 9b03         	ldr	r3, [sp, #0xc]
  324bd6: 681b         	ldr	r3, [r3]
  324bd8: 33c8         	adds	r3, #0xc8
  324bda: 681b         	ldr	r3, [r3]
  324bdc: 9903         	ldr	r1, [sp, #0xc]
  324bde: 9a03         	ldr	r2, [sp, #0xc]
  324be0: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  324be4: 4608         	mov	r0, r1
  324be6: 4611         	mov	r1, r2
  324be8: 4798         	blx	r3
  324bea: 9b03         	ldr	r3, [sp, #0xc]
  324bec: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x324c98 <FindGameLayer::init()+0xcb8>
  324bee: 58a2         	ldr	r2, [r4, r2]
  324bf0: 9234         	str	r2, [sp, #0xd0]
  324bf2: 2200         	movs	r2, #0x0
  324bf4: 9235         	str	r2, [sp, #0xd4]
  324bf6: 4618         	mov	r0, r3
  324bf8: ab34         	add	r3, sp, #0xd0
  324bfa: e893 0006    	ldm.w	r3, {r1, r2}
  324bfe: f04f 537e    	mov.w	r3, #0x3f800000
  324c02: f26c fb0f    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x26c61e
  324c06: 2401         	movs	r4, #0x1
  324c08: ab05         	add	r3, sp, #0x14
  324c0a: 4618         	mov	r0, r3
  324c0c: f090 f682    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490d04
  324c10: 4623         	mov	r3, r4
  324c12: e033         	b	0x324c7c <FindGameLayer::init()+0xc9c> @ imm = #0x66
  324c14: ab34         	add	r3, sp, #0xd0
  324c16: 4618         	mov	r0, r3
  324c18: f065 f3f0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4657e0
  324c1c: f063 f246    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46348c
  324c20: ab22         	add	r3, sp, #0x88
  324c22: 4618         	mov	r0, r3
  324c24: f090 f676    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490cec
  324c28: e7ff         	b	0x324c2a <FindGameLayer::init()+0xc4a> @ imm = #-0x2
  324c2a: ab20         	add	r3, sp, #0x80
  324c2c: 4618         	mov	r0, r3
  324c2e: f065 f3e5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4657ca
  324c32: e01d         	b	0x324c70 <FindGameLayer::init()+0xc90> @ imm = #0x3a
  324c34: ab06         	add	r3, sp, #0x18
  324c36: 4618         	mov	r0, r3
  324c38: f090 f66c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490cd8
  324c3c: e7ff         	b	0x324c3e <FindGameLayer::init()+0xc5e> @ imm = #-0x2
  324c3e: ab08         	add	r3, sp, #0x20
  324c40: 4618         	mov	r0, r3
  324c42: f065 f3db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4657b6
  324c46: e013         	b	0x324c70 <FindGameLayer::init()+0xc90> @ imm = #0x26
  324c48: ab07         	add	r3, sp, #0x1c
  324c4a: 4618         	mov	r0, r3
  324c4c: f090 f662    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490cc4
  324c50: e7ff         	b	0x324c52 <FindGameLayer::init()+0xc72> @ imm = #-0x2
  324c52: ab08         	add	r3, sp, #0x20
  324c54: 4618         	mov	r0, r3
  324c56: f065 f3d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4657a2
  324c5a: e009         	b	0x324c70 <FindGameLayer::init()+0xc90> @ imm = #0x12
  324c5c: ab08         	add	r3, sp, #0x20
  324c5e: 4618         	mov	r0, r3
  324c60: f090 f658    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490cb0
  324c64: e7ff         	b	0x324c66 <FindGameLayer::init()+0xc86> @ imm = #-0x2
  324c66: ab07         	add	r3, sp, #0x1c
  324c68: 4618         	mov	r0, r3
  324c6a: f065 f3c7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46578e
  324c6e: e7ff         	b	0x324c70 <FindGameLayer::init()+0xc90> @ imm = #-0x2
  324c70: ab05         	add	r3, sp, #0x14
  324c72: 4618         	mov	r0, r3
  324c74: f090 f64e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490c9c
  324c78: f063 f218    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x463430
  324c7c: 4618         	mov	r0, r3
  324c7e: b039         	add	sp, #0xe4
  324c80: ecbd 8b02    	vpop	{d8}
  324c84: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x324c85); words below are literal-pool data ---
  324c86: bf00         	nop
  324c88: 31a8         	adds	r1, #0xa8
  324c8a: 004a         	lsls	r2, r1, #0x1
  324c8c: b78e         	<unknown>
  324c8e: 0061         	lsls	r1, r4, #0x1
  324c90: 315e         	adds	r1, #0x5e
  324c92: 004a         	lsls	r2, r1, #0x1
  324c94: 311c         	adds	r1, #0x1c
  324c96: 004a         	lsls	r2, r1, #0x1
  324c98: da50         	bge	0x324d3c <FindGameLayer::~FindGameLayer()+0x9c> @ imm = #0xa0
  324c9a: ffff f3af    	<unknown>

// ==== FindGameLayer::~FindGameLayer
//      file offset 0x324ca0 (= ELF address; Ghidra 0x334ca0), 244 bytes, Thumb-2
  324ca0: b500         	push	{lr}
  324ca2: b083         	sub	sp, #0xc
  324ca4: 9001         	str	r0, [sp, #0x4]
  324ca6: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x324d8c <FindGameLayer::~FindGameLayer()+0xec>
  324ca8: 447b         	add	r3, pc
  324caa: 9a01         	ldr	r2, [sp, #0x4]
  324cac: 4938         	ldr	r1, [pc, #0xe0]         @ 0x324d90 <FindGameLayer::~FindGameLayer()+0xf0>
  324cae: 5859         	ldr	r1, [r3, r1]
  324cb0: 3108         	adds	r1, #0x8
  324cb2: 6011         	str	r1, [r2]
  324cb4: 9a01         	ldr	r2, [sp, #0x4]
  324cb6: 4936         	ldr	r1, [pc, #0xd8]         @ 0x324d90 <FindGameLayer::~FindGameLayer()+0xf0>
  324cb8: 5859         	ldr	r1, [r3, r1]
  324cba: f501 7104    	add.w	r1, r1, #0x210
  324cbe: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  324cc2: 9a01         	ldr	r2, [sp, #0x4]
  324cc4: 4932         	ldr	r1, [pc, #0xc8]         @ 0x324d90 <FindGameLayer::~FindGameLayer()+0xf0>
  324cc6: 5859         	ldr	r1, [r3, r1]
  324cc8: f501 7110    	add.w	r1, r1, #0x240
  324ccc: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  324cd0: 9a01         	ldr	r2, [sp, #0x4]
  324cd2: 492f         	ldr	r1, [pc, #0xbc]         @ 0x324d90 <FindGameLayer::~FindGameLayer()+0xf0>
  324cd4: 585b         	ldr	r3, [r3, r1]
  324cd6: f503 7313    	add.w	r3, r3, #0x24c
  324cda: f8c2 30ec    	str.w	r3, [r2, #0xec]
  324cde: 9b01         	ldr	r3, [sp, #0x4]
  324ce0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  324ce4: 4618         	mov	r0, r3
  324ce6: f273 f8e7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2731ce
  324cea: 9b01         	ldr	r3, [sp, #0x4]
  324cec: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  324cf0: 4618         	mov	r0, r3
  324cf2: f273 f8e1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2731c2
  324cf6: 9b01         	ldr	r3, [sp, #0x4]
  324cf8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  324cfc: 4618         	mov	r0, r3
  324cfe: f273 f8db    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2731b6
  324d02: 9b01         	ldr	r3, [sp, #0x4]
  324d04: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  324d08: 4618         	mov	r0, r3
  324d0a: f273 f8d5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2731aa
  324d0e: 9b01         	ldr	r3, [sp, #0x4]
  324d10: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  324d14: 4618         	mov	r0, r3
  324d16: f273 f8cf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27319e
  324d1a: 9b01         	ldr	r3, [sp, #0x4]
  324d1c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  324d20: 4618         	mov	r0, r3
  324d22: f273 f8c9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x273192
  324d26: 9b01         	ldr	r3, [sp, #0x4]
  324d28: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  324d2c: 4618         	mov	r0, r3
  324d2e: f273 f8c3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x273186
  324d32: 9b01         	ldr	r3, [sp, #0x4]
  324d34: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  324d38: 4618         	mov	r0, r3
  324d3a: f273 f8bd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27317a
  324d3e: 9b01         	ldr	r3, [sp, #0x4]
  324d40: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  324d44: 4618         	mov	r0, r3
  324d46: f273 f8b7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27316e
  324d4a: 9b01         	ldr	r3, [sp, #0x4]
  324d4c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  324d50: 4618         	mov	r0, r3
  324d52: f273 f8b1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x273162
  324d56: 9b01         	ldr	r3, [sp, #0x4]
  324d58: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  324d5c: 4618         	mov	r0, r3
  324d5e: f273 f8ab    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x273156
  324d62: 9b01         	ldr	r3, [sp, #0x4]
  324d64: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  324d68: 4618         	mov	r0, r3
  324d6a: f273 f8a5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27314a
  324d6e: 9b01         	ldr	r3, [sp, #0x4]
  324d70: 4618         	mov	r0, r3
  324d72: f288 f9eb    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2883d6
  324d76: 2300         	movs	r3, #0x0
  324d78: 2b00         	cmp	r3, #0x0
  324d7a: d002         	beq	0x324d82 <FindGameLayer::~FindGameLayer()+0xe2> @ imm = #0x4
  324d7c: 9801         	ldr	r0, [sp, #0x4]
  324d7e: f063 f191    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x463322
  324d82: 9b01         	ldr	r3, [sp, #0x4]
  324d84: 4618         	mov	r0, r3
  324d86: b003         	add	sp, #0xc
  324d88: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x324d8b); words below are literal-pool data ---
  324d8c: dd60         	ble	0x324e50 <FindGameLayer::sessionStep(float)+0x74> @ imm = #0xc0
  324d8e: 0060         	lsls	r0, r4, #0x1
  324d90: da38         	bge	0x324e04 <FindGameLayer::sessionStep(float)+0x28> @ imm = #0x70
  324d92: ffff f1a0    	<unknown>

// ==== FindGameLayer::~FindGameLayer
//      file offset 0x324d94 (= ELF address; Ghidra 0x334d94), 8 bytes, Thumb-2
  324d94: f1a0 00e4    	sub.w	r0, r0, #0xe4
  324d98: f7ff bf82    	b.w	0x324ca0 <FindGameLayer::~FindGameLayer()> @ imm = #-0xfc

// ==== FindGameLayer::~FindGameLayer
//      file offset 0x324d9c (= ELF address; Ghidra 0x334d9c), 28 bytes, Thumb-2
  324d9c: b500         	push	{lr}
  324d9e: b083         	sub	sp, #0xc
  324da0: 9001         	str	r0, [sp, #0x4]
  324da2: 9801         	ldr	r0, [sp, #0x4]
  324da4: f7ff ff7c    	bl	0x324ca0 <FindGameLayer::~FindGameLayer()> @ imm = #-0x108
  324da8: 9801         	ldr	r0, [sp, #0x4]
  324daa: f063 f17b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4632f6
  324dae: 9b01         	ldr	r3, [sp, #0x4]
  324db0: 4618         	mov	r0, r3
  324db2: b003         	add	sp, #0xc
  324db4: f85d fb04    	ldr	pc, [sp], #4

// ==== FindGameLayer::~FindGameLayer
//      file offset 0x324db8 (= ELF address; Ghidra 0x334db8), 8 bytes, Thumb-2
  324db8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  324dbc: f7ff bfee    	b.w	0x324d9c <FindGameLayer::~FindGameLayer()> @ imm = #-0x24

// ==== FindGameLayer::onExit
//      file offset 0x324dc0 (= ELF address; Ghidra 0x334dc0), 28 bytes, Thumb-2
  324dc0: b500         	push	{lr}
  324dc2: b083         	sub	sp, #0xc
  324dc4: 9001         	str	r0, [sp, #0x4]
  324dc6: 9b01         	ldr	r3, [sp, #0x4]
  324dc8: 4618         	mov	r0, r3
  324dca: f26c fa95    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x26c52a
  324dce: 9b01         	ldr	r3, [sp, #0x4]
  324dd0: 4618         	mov	r0, r3
  324dd2: f288 fd81    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x288b02
  324dd6: b003         	add	sp, #0xc
  324dd8: f85d fb04    	ldr	pc, [sp], #4

// ==== FindGameLayer::sessionStep
//      file offset 0x324ddc (= ELF address; Ghidra 0x334ddc), 222 bytes, Thumb-2
  324ddc: b510         	push	{r4, lr}
  324dde: b086         	sub	sp, #0x18
  324de0: 9001         	str	r0, [sp, #0x4]
  324de2: 9100         	str	r1, [sp]
  324de4: 9b01         	ldr	r3, [sp, #0x4]
  324de6: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  324dea: 4618         	mov	r0, r3
  324dec: f275 faba    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x275574
  324df0: f052 fea6    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52d4c
  324df4: 4603         	mov	r3, r0
  324df6: 4618         	mov	r0, r3
  324df8: f055 fa8e    	bl	0x37a318 <NetworkManager::getAvailableSessions()> @ imm = #0x5551c
  324dfc: 4603         	mov	r3, r0
  324dfe: 9304         	str	r3, [sp, #0x10]
  324e00: 2300         	movs	r3, #0x0
  324e02: 9302         	str	r3, [sp, #0x8]
  324e04: 2300         	movs	r3, #0x0
  324e06: 9303         	str	r3, [sp, #0xc]
  324e08: 9b04         	ldr	r3, [sp, #0x10]
  324e0a: 2b00         	cmp	r3, #0x0
  324e0c: d007         	beq	0x324e1e <FindGameLayer::sessionStep(float)+0x42> @ imm = #0xe
  324e0e: 9804         	ldr	r0, [sp, #0x10]
  324e10: f26e ff2c    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x26ee58
  324e14: 4603         	mov	r3, r0
  324e16: 2b00         	cmp	r3, #0x0
  324e18: d001         	beq	0x324e1e <FindGameLayer::sessionStep(float)+0x42> @ imm = #0x2
  324e1a: 2301         	movs	r3, #0x1
  324e1c: e000         	b	0x324e20 <FindGameLayer::sessionStep(float)+0x44> @ imm = #0x0
  324e1e: 2300         	movs	r3, #0x0
  324e20: 2b00         	cmp	r3, #0x0
  324e22: d028         	beq	0x324e76 <FindGameLayer::sessionStep(float)+0x9a> @ imm = #0x50
  324e24: 9b04         	ldr	r3, [sp, #0x10]
  324e26: 695b         	ldr	r3, [r3, #0x14]
  324e28: 9302         	str	r3, [sp, #0x8]
  324e2a: 9b04         	ldr	r3, [sp, #0x10]
  324e2c: 695b         	ldr	r3, [r3, #0x14]
  324e2e: 2b00         	cmp	r3, #0x0
  324e30: d004         	beq	0x324e3c <FindGameLayer::sessionStep(float)+0x60> @ imm = #0x8
  324e32: 9b04         	ldr	r3, [sp, #0x10]
  324e34: 695b         	ldr	r3, [r3, #0x14]
  324e36: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  324e3a: e000         	b	0x324e3e <FindGameLayer::sessionStep(float)+0x62> @ imm = #0x0
  324e3c: 2300         	movs	r3, #0x0
  324e3e: 9303         	str	r3, [sp, #0xc]
  324e40: e016         	b	0x324e70 <FindGameLayer::sessionStep(float)+0x94> @ imm = #0x2c
  324e42: 9802         	ldr	r0, [sp, #0x8]
  324e44: f7d9 fbf6    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x26814
  324e48: 4603         	mov	r3, r0
  324e4a: 9305         	str	r3, [sp, #0x14]
  324e4c: 9b01         	ldr	r3, [sp, #0x4]
  324e4e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  324e52: 4618         	mov	r0, r3
  324e54: 9905         	ldr	r1, [sp, #0x14]
  324e56: f275 fa09    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x275412
  324e5a: 9b03         	ldr	r3, [sp, #0xc]
  324e5c: 9302         	str	r3, [sp, #0x8]
  324e5e: 9b03         	ldr	r3, [sp, #0xc]
  324e60: 2b00         	cmp	r3, #0x0
  324e62: d003         	beq	0x324e6c <FindGameLayer::sessionStep(float)+0x90> @ imm = #0x6
  324e64: 9b03         	ldr	r3, [sp, #0xc]
  324e66: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  324e6a: e000         	b	0x324e6e <FindGameLayer::sessionStep(float)+0x92> @ imm = #0x0
  324e6c: 2300         	movs	r3, #0x0
  324e6e: 9303         	str	r3, [sp, #0xc]
  324e70: 9b02         	ldr	r3, [sp, #0x8]
  324e72: 2b00         	cmp	r3, #0x0
  324e74: d1e5         	bne	0x324e42 <FindGameLayer::sessionStep(float)+0x66> @ imm = #-0x36
  324e76: 9b01         	ldr	r3, [sp, #0x4]
  324e78: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  324e7c: 461c         	mov	r4, r3
  324e7e: f052 fe5f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52cbe
  324e82: 4603         	mov	r3, r0
  324e84: 4618         	mov	r0, r3
  324e86: f055 fa47    	bl	0x37a318 <NetworkManager::getAvailableSessions()> @ imm = #0x5548e
  324e8a: 4603         	mov	r3, r0
  324e8c: 4618         	mov	r0, r3
  324e8e: f26e feed    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x26edda
  324e92: 4603         	mov	r3, r0
  324e94: 429c         	cmp	r4, r3
  324e96: bf34         	ite	lo
  324e98: 2300         	movlo	r3, #0x0
  324e9a: 2301         	movhs	r3, #0x1
  324e9c: b2db         	uxtb	r3, r3
  324e9e: 2b00         	cmp	r3, #0x0
  324ea0: d003         	beq	0x324eaa <FindGameLayer::sessionStep(float)+0xce> @ imm = #0x6
  324ea2: 9b01         	ldr	r3, [sp, #0x4]
  324ea4: 2200         	movs	r2, #0x0
  324ea6: f8c3 2134    	str.w	r2, [r3, #0x134]
  324eaa: 9801         	ldr	r0, [sp, #0x4]
  324eac: f000 fabc    	bl	0x325428 <FindGameLayer::UpdateCurrentSessionLabel()> @ imm = #0x578
  324eb0: 9801         	ldr	r0, [sp, #0x4]
  324eb2: f000 fc09    	bl	0x3256c8 <FindGameLayer::UpdateStatusLabel()> @ imm = #0x812
  324eb6: b006         	add	sp, #0x18
  324eb8: bd10         	pop	{r4, pc}

// ==== FindGameLayer::onJoin
//      file offset 0x324ebc (= ELF address; Ghidra 0x334ebc), 564 bytes, Thumb-2
  324ebc: b570         	push	{r4, r5, r6, lr}
  324ebe: b08c         	sub	sp, #0x30
  324ec0: 9003         	str	r0, [sp, #0xc]
  324ec2: 9102         	str	r1, [sp, #0x8]
  324ec4: 4c82         	ldr	r4, [pc, #0x208]        @ 0x3250d0 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x214>
  324ec6: 447c         	add	r4, pc
  324ec8: 9b03         	ldr	r3, [sp, #0xc]
  324eca: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  324ece: 2b00         	cmp	r3, #0x0
  324ed0: db12         	blt	0x324ef8 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x3c> @ imm = #0x24
  324ed2: 9b03         	ldr	r3, [sp, #0xc]
  324ed4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  324ed8: 461d         	mov	r5, r3
  324eda: f052 fe31    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52c62
  324ede: 4603         	mov	r3, r0
  324ee0: 4618         	mov	r0, r3
  324ee2: f055 fa19    	bl	0x37a318 <NetworkManager::getAvailableSessions()> @ imm = #0x55432
  324ee6: 4603         	mov	r3, r0
  324ee8: 4618         	mov	r0, r3
  324eea: f26e febf    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x26ed7e
  324eee: 4603         	mov	r3, r0
  324ef0: 429d         	cmp	r5, r3
  324ef2: d201         	bhs	0x324ef8 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x3c> @ imm = #0x2
  324ef4: 2301         	movs	r3, #0x1
  324ef6: e000         	b	0x324efa <FindGameLayer::onJoin(cocos2d::CCObject*)+0x3e> @ imm = #0x0
  324ef8: 2300         	movs	r3, #0x0
  324efa: 2b00         	cmp	r3, #0x0
  324efc: f000 80e5    	beq.w	0x3250ca <FindGameLayer::onJoin(cocos2d::CCObject*)+0x20e> @ imm = #0x1ca
  324f00: 9b03         	ldr	r3, [sp, #0xc]
  324f02: f893 3108    	ldrb.w	r3, [r3, #0x108]
  324f06: 2b00         	cmp	r3, #0x0
  324f08: d000         	beq	0x324f0c <FindGameLayer::onJoin(cocos2d::CCObject*)+0x50> @ imm = #0x0
  324f0a: e0de         	b	0x3250ca <FindGameLayer::onJoin(cocos2d::CCObject*)+0x20e> @ imm = #0x1bc
  324f0c: 9b03         	ldr	r3, [sp, #0xc]
  324f0e: 2201         	movs	r2, #0x1
  324f10: f883 2108    	strb.w	r2, [r3, #0x108]
  324f14: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x3250d4 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x218>
  324f16: 58e3         	ldr	r3, [r4, r3]
  324f18: 2200         	movs	r2, #0x0
  324f1a: 701a         	strb	r2, [r3]
  324f1c: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x3250d8 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x21c>
  324f1e: 58e3         	ldr	r3, [r4, r3]
  324f20: 681b         	ldr	r3, [r3]
  324f22: 4618         	mov	r0, r3
  324f24: 210d         	movs	r1, #0xd
  324f26: f0d2 ff4b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xd2e96
  324f2a: f052 fe09    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52c12
  324f2e: 4603         	mov	r3, r0
  324f30: 4618         	mov	r0, r3
  324f32: f055 f9f1    	bl	0x37a318 <NetworkManager::getAvailableSessions()> @ imm = #0x553e2
  324f36: 4603         	mov	r3, r0
  324f38: 930a         	str	r3, [sp, #0x28]
  324f3a: 9b0a         	ldr	r3, [sp, #0x28]
  324f3c: 2b00         	cmp	r3, #0x0
  324f3e: d007         	beq	0x324f50 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x94> @ imm = #0xe
  324f40: 980a         	ldr	r0, [sp, #0x28]
  324f42: f26e fe93    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x26ed26
  324f46: 4603         	mov	r3, r0
  324f48: 2b00         	cmp	r3, #0x0
  324f4a: d001         	beq	0x324f50 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x94> @ imm = #0x2
  324f4c: 2301         	movs	r3, #0x1
  324f4e: e000         	b	0x324f52 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x96> @ imm = #0x0
  324f50: 2300         	movs	r3, #0x0
  324f52: 2b00         	cmp	r3, #0x0
  324f54: d03e         	beq	0x324fd4 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x118> @ imm = #0x7c
  324f56: 980a         	ldr	r0, [sp, #0x28]
  324f58: f26e fe98    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x26ed30
  324f5c: 4602         	mov	r2, r0
  324f5e: 9b03         	ldr	r3, [sp, #0xc]
  324f60: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  324f64: 4610         	mov	r0, r2
  324f66: 4619         	mov	r1, r3
  324f68: f275 f8da    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2751b4
  324f6c: 4603         	mov	r3, r0
  324f6e: 930b         	str	r3, [sp, #0x2c]
  324f70: f052 fde6    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52bcc
  324f74: 4605         	mov	r5, r0
  324f76: 980b         	ldr	r0, [sp, #0x2c]
  324f78: f274 fcd6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2749ac
  324f7c: 4606         	mov	r6, r0
  324f7e: ab08         	add	r3, sp, #0x20
  324f80: 4618         	mov	r0, r3
  324f82: f065 f237    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46546e
  324f86: aa09         	add	r2, sp, #0x24
  324f88: ab08         	add	r3, sp, #0x20
  324f8a: 4610         	mov	r0, r2
  324f8c: 4631         	mov	r1, r6
  324f8e: 461a         	mov	r2, r3
  324f90: f091 f566    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491acc
  324f94: ab09         	add	r3, sp, #0x24
  324f96: 4628         	mov	r0, r5
  324f98: 4619         	mov	r1, r3
  324f9a: f054 fe75    	bl	0x379c88 <NetworkManager::setSessionToJoin(std::string)> @ imm = #0x54cea
  324f9e: ab09         	add	r3, sp, #0x24
  324fa0: 4618         	mov	r0, r3
  324fa2: f090 f4b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49096e
  324fa6: ab08         	add	r3, sp, #0x20
  324fa8: 4618         	mov	r0, r3
  324faa: f065 f227    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46544e
  324fae: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x3250dc <FindGameLayer::onJoin(cocos2d::CCObject*)+0x220>
  324fb0: 58e3         	ldr	r3, [r4, r3]
  324fb2: 4618         	mov	r0, r3
  324fb4: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x3250e0 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x224>
  324fb6: 447b         	add	r3, pc
  324fb8: 4619         	mov	r1, r3
  324fba: f090 f759    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x490eb2
  324fbe: f276 fad9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2765b2
  324fc2: 4604         	mov	r4, r0
  324fc4: f02c fb02    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #0x2c604
  324fc8: 4603         	mov	r3, r0
  324fca: 4620         	mov	r0, r4
  324fcc: 4619         	mov	r1, r3
  324fce: f277 f9c5    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x27738a
  324fd2: e07b         	b	0x3250cc <FindGameLayer::onJoin(cocos2d::CCObject*)+0x210> @ imm = #0xf6
  324fd4: ab05         	add	r3, sp, #0x14
  324fd6: 4618         	mov	r0, r3
  324fd8: f065 f20c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465418
  324fdc: aa08         	add	r2, sp, #0x20
  324fde: ab05         	add	r3, sp, #0x14
  324fe0: 4610         	mov	r0, r2
  324fe2: 4a40         	ldr	r2, [pc, #0x100]        @ 0x3250e4 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x228>
  324fe4: 447a         	add	r2, pc
  324fe6: 4611         	mov	r1, r2
  324fe8: 461a         	mov	r2, r3
  324fea: f091 f539    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491a72
  324fee: ab06         	add	r3, sp, #0x18
  324ff0: 4618         	mov	r0, r3
  324ff2: f065 f1ff    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4653fe
  324ff6: aa09         	add	r2, sp, #0x24
  324ff8: ab06         	add	r3, sp, #0x18
  324ffa: 4610         	mov	r0, r2
  324ffc: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x3250e8 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x22c>
  324ffe: 447a         	add	r2, pc
  325000: 4611         	mov	r1, r2
  325002: 461a         	mov	r2, r3
  325004: f091 f52c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491a58
  325008: ab04         	add	r3, sp, #0x10
  32500a: 4618         	mov	r0, r3
  32500c: f065 f1f2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4653e4
  325010: aa07         	add	r2, sp, #0x1c
  325012: ab04         	add	r3, sp, #0x10
  325014: 4610         	mov	r0, r2
  325016: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x3250ec <FindGameLayer::onJoin(cocos2d::CCObject*)+0x230>
  325018: 447a         	add	r2, pc
  32501a: 4611         	mov	r1, r2
  32501c: 461a         	mov	r2, r3
  32501e: f091 f51f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491a3e
  325022: ab07         	add	r3, sp, #0x1c
  325024: 4618         	mov	r0, r3
  325026: f274 fd09    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x274a12
  32502a: 4603         	mov	r3, r0
  32502c: 4618         	mov	r0, r3
  32502e: 2100         	movs	r1, #0x0
  325030: f274 feee    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x274ddc
  325034: 4603         	mov	r3, r0
  325036: a908         	add	r1, sp, #0x20
  325038: aa09         	add	r2, sp, #0x24
  32503a: 2000         	movs	r0, #0x0
  32503c: 9000         	str	r0, [sp]
  32503e: 2000         	movs	r0, #0x0
  325040: 9001         	str	r0, [sp, #0x4]
  325042: 2000         	movs	r0, #0x0
  325044: f7ba fbd6    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x45854
  325048: ab07         	add	r3, sp, #0x1c
  32504a: 4618         	mov	r0, r3
  32504c: f090 f462    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4908c4
  325050: ab04         	add	r3, sp, #0x10
  325052: 4618         	mov	r0, r3
  325054: f065 f1d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4653a4
  325058: ab09         	add	r3, sp, #0x24
  32505a: 4618         	mov	r0, r3
  32505c: f090 f45a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4908b4
  325060: ab06         	add	r3, sp, #0x18
  325062: 4618         	mov	r0, r3
  325064: f065 f1ca    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465394
  325068: ab08         	add	r3, sp, #0x20
  32506a: 4618         	mov	r0, r3
  32506c: f090 f452    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4908a4
  325070: ab05         	add	r3, sp, #0x14
  325072: 4618         	mov	r0, r3
  325074: f065 f1c2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465384
  325078: e028         	b	0x3250cc <FindGameLayer::onJoin(cocos2d::CCObject*)+0x210> @ imm = #0x50
  32507a: ab09         	add	r3, sp, #0x24
  32507c: 4618         	mov	r0, r3
  32507e: f090 f449    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490892
  325082: e7ff         	b	0x325084 <FindGameLayer::onJoin(cocos2d::CCObject*)+0x1c8> @ imm = #-0x2
  325084: ab08         	add	r3, sp, #0x20
  325086: 4618         	mov	r0, r3
  325088: f065 f1b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465370
  32508c: f063 f00e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46301c
  325090: ab07         	add	r3, sp, #0x1c
  325092: 4618         	mov	r0, r3
  325094: f090 f43e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49087c
  325098: e7ff         	b	0x32509a <FindGameLayer::onJoin(cocos2d::CCObject*)+0x1de> @ imm = #-0x2
  32509a: ab04         	add	r3, sp, #0x10
  32509c: 4618         	mov	r0, r3
  32509e: f065 f1ad    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46535a
  3250a2: ab09         	add	r3, sp, #0x24
  3250a4: 4618         	mov	r0, r3
  3250a6: f090 f435    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49086a
  3250aa: e7ff         	b	0x3250ac <FindGameLayer::onJoin(cocos2d::CCObject*)+0x1f0> @ imm = #-0x2
  3250ac: ab06         	add	r3, sp, #0x18
  3250ae: 4618         	mov	r0, r3
  3250b0: f065 f1a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465348
  3250b4: ab08         	add	r3, sp, #0x20
  3250b6: 4618         	mov	r0, r3
  3250b8: f090 f42c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490858
  3250bc: e7ff         	b	0x3250be <FindGameLayer::onJoin(cocos2d::CCObject*)+0x202> @ imm = #-0x2
  3250be: ab05         	add	r3, sp, #0x14
  3250c0: 4618         	mov	r0, r3
  3250c2: f065 f19b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465336
  3250c6: f062 f7f1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x462fe2
  3250ca: bf00         	nop
  3250cc: b00c         	add	sp, #0x30
  3250ce: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3250cf); words below are literal-pool data ---
  3250d0: db42         	blt	0x325158 <FindGameLayer::onHost(cocos2d::CCObject*)+0x68> @ imm = #0x84
  3250d2: 0060         	lsls	r0, r4, #0x1
  3250d4: da54         	bge	0x325180 <FindGameLayer::onHost(cocos2d::CCObject*)+0x90> @ imm = #0xa8
  3250d6: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3250da: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  3250de: ffff 2cf2    	<unknown>
  3250e2: 004a         	lsls	r2, r1, #0x1
  3250e4: 2cdc         	cmp	r4, #0xdc
  3250e6: 004a         	lsls	r2, r1, #0x1
  3250e8: 2cd6         	cmp	r4, #0xd6
  3250ea: 004a         	lsls	r2, r1, #0x1
  3250ec: 2cd8         	cmp	r4, #0xd8
  3250ee: 004a         	lsls	r2, r1, #0x1

// ==== FindGameLayer::onHost
//      file offset 0x3250f0 (= ELF address; Ghidra 0x3350f0), 428 bytes, Thumb-2
  3250f0: b570         	push	{r4, r5, r6, lr}
  3250f2: b086         	sub	sp, #0x18
  3250f4: 9001         	str	r0, [sp, #0x4]
  3250f6: 9100         	str	r1, [sp]
  3250f8: 4c5e         	ldr	r4, [pc, #0x178]        @ 0x325274 <FindGameLayer::onHost(cocos2d::CCObject*)+0x184>
  3250fa: 447c         	add	r4, pc
  3250fc: 9b01         	ldr	r3, [sp, #0x4]
  3250fe: f893 3108    	ldrb.w	r3, [r3, #0x108]
  325102: 2b00         	cmp	r3, #0x0
  325104: d000         	beq	0x325108 <FindGameLayer::onHost(cocos2d::CCObject*)+0x18> @ imm = #0x0
  325106: e0b2         	b	0x32526e <FindGameLayer::onHost(cocos2d::CCObject*)+0x17e> @ imm = #0x164
  325108: 9b01         	ldr	r3, [sp, #0x4]
  32510a: 2201         	movs	r2, #0x1
  32510c: f883 2108    	strb.w	r2, [r3, #0x108]
  325110: 4b59         	ldr	r3, [pc, #0x164]        @ 0x325278 <FindGameLayer::onHost(cocos2d::CCObject*)+0x188>
  325112: 58e3         	ldr	r3, [r4, r3]
  325114: 681b         	ldr	r3, [r3]
  325116: 4618         	mov	r0, r3
  325118: 210d         	movs	r1, #0xd
  32511a: f0d2 fe51    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xd2ca2
  32511e: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x32527c <FindGameLayer::onHost(cocos2d::CCObject*)+0x18c>
  325120: 58e3         	ldr	r3, [r4, r3]
  325122: 681b         	ldr	r3, [r3]
  325124: 2b05         	cmp	r3, #0x5
  325126: d174         	bne	0x325212 <FindGameLayer::onHost(cocos2d::CCObject*)+0x122> @ imm = #0xe8
  325128: 4b55         	ldr	r3, [pc, #0x154]        @ 0x325280 <FindGameLayer::onHost(cocos2d::CCObject*)+0x190>
  32512a: 58e3         	ldr	r3, [r4, r3]
  32512c: 781b         	ldrb	r3, [r3]
  32512e: f083 0301    	eor	r3, r3, #0x1
  325132: b2db         	uxtb	r3, r3
  325134: 2b00         	cmp	r3, #0x0
  325136: d059         	beq	0x3251ec <FindGameLayer::onHost(cocos2d::CCObject*)+0xfc> @ imm = #0xb2
  325138: f052 fd02    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52a04
  32513c: 4603         	mov	r3, r0
  32513e: 4618         	mov	r0, r3
  325140: 2102         	movs	r1, #0x2
  325142: f054 fdd7    	bl	0x379cf4 <NetworkManager::setMaxPlayers(int)> @ imm = #0x54bae
  325146: f2bd fa71    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2bd4e2
  32514a: 4605         	mov	r5, r0
  32514c: ab03         	add	r3, sp, #0xc
  32514e: 4618         	mov	r0, r3
  325150: f065 f150    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4652a0
  325154: aa05         	add	r2, sp, #0x14
  325156: ab03         	add	r3, sp, #0xc
  325158: 4610         	mov	r0, r2
  32515a: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x325284 <FindGameLayer::onHost(cocos2d::CCObject*)+0x194>
  32515c: 447a         	add	r2, pc
  32515e: 4611         	mov	r1, r2
  325160: 461a         	mov	r2, r3
  325162: f091 f47d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4918fa
  325166: aa04         	add	r2, sp, #0x10
  325168: ab05         	add	r3, sp, #0x14
  32516a: 4610         	mov	r0, r2
  32516c: 4629         	mov	r1, r5
  32516e: 4a46         	ldr	r2, [pc, #0x118]        @ 0x325288 <FindGameLayer::onHost(cocos2d::CCObject*)+0x198>
  325170: 447a         	add	r2, pc
  325172: f2bd f993    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x2bd326
  325176: ab05         	add	r3, sp, #0x14
  325178: 4618         	mov	r0, r3
  32517a: f090 f3cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490796
  32517e: ab03         	add	r3, sp, #0xc
  325180: 4618         	mov	r0, r3
  325182: f065 f13b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465276
  325186: f052 fcdb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x529b6
  32518a: 4605         	mov	r5, r0
  32518c: ab04         	add	r3, sp, #0x10
  32518e: 4618         	mov	r0, r3
  325190: f090 f0b6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x49016c
  325194: 4603         	mov	r3, r0
  325196: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x32528c <FindGameLayer::onHost(cocos2d::CCObject*)+0x19c>
  325198: 447a         	add	r2, pc
  32519a: 4610         	mov	r0, r2
  32519c: 4619         	mov	r1, r3
  32519e: f274 fcb7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x27496e
  3251a2: 4603         	mov	r3, r0
  3251a4: 4618         	mov	r0, r3
  3251a6: f274 fbbf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x27477e
  3251aa: 4606         	mov	r6, r0
  3251ac: ab03         	add	r3, sp, #0xc
  3251ae: 4618         	mov	r0, r3
  3251b0: f065 f120    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x465240
  3251b4: aa05         	add	r2, sp, #0x14
  3251b6: ab03         	add	r3, sp, #0xc
  3251b8: 4610         	mov	r0, r2
  3251ba: 4631         	mov	r1, r6
  3251bc: 461a         	mov	r2, r3
  3251be: f091 f44f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x49189e
  3251c2: ab05         	add	r3, sp, #0x14
  3251c4: 4628         	mov	r0, r5
  3251c6: 4619         	mov	r1, r3
  3251c8: f054 fedc    	bl	0x379f84 <NetworkManager::hostSession(std::string)> @ imm = #0x54db8
  3251cc: ab05         	add	r3, sp, #0x14
  3251ce: 4618         	mov	r0, r3
  3251d0: f090 f3a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490740
  3251d4: ab03         	add	r3, sp, #0xc
  3251d6: 4618         	mov	r0, r3
  3251d8: f065 f110    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x465220
  3251dc: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x325290 <FindGameLayer::onHost(cocos2d::CCObject*)+0x1a0>
  3251de: 58e3         	ldr	r3, [r4, r3]
  3251e0: 2201         	movs	r2, #0x1
  3251e2: 701a         	strb	r2, [r3]
  3251e4: ab04         	add	r3, sp, #0x10
  3251e6: 4618         	mov	r0, r3
  3251e8: f090 f394    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490728
  3251ec: f276 f9c2    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x276384
  3251f0: 4604         	mov	r4, r0
  3251f2: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x325294 <FindGameLayer::onHost(cocos2d::CCObject*)+0x1a4>
  3251f4: 447b         	add	r3, pc
  3251f6: 681d         	ldr	r5, [r3]
  3251f8: f02c f9e8    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #0x2c3d0
  3251fc: 4603         	mov	r3, r0
  3251fe: 4628         	mov	r0, r5
  325200: 4619         	mov	r1, r3
  325202: f28c f911    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x28c222
  325206: 4603         	mov	r3, r0
  325208: 4620         	mov	r0, r4
  32520a: 4619         	mov	r1, r3
  32520c: f277 f8a6    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x27714c
  325210: e02d         	b	0x32526e <FindGameLayer::onHost(cocos2d::CCObject*)+0x17e> @ imm = #0x5a
  325212: f276 f9af    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x27635e
  325216: 4604         	mov	r4, r0
  325218: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x325298 <FindGameLayer::onHost(cocos2d::CCObject*)+0x1a8>
  32521a: 447b         	add	r3, pc
  32521c: 681d         	ldr	r5, [r3]
  32521e: f041 fa9d    	bl	0x36675c <MapSelectLayer::scene()> @ imm = #0x4153a
  325222: 4603         	mov	r3, r0
  325224: 4628         	mov	r0, r5
  325226: 4619         	mov	r1, r3
  325228: f28c f8fe    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x28c1fc
  32522c: 4603         	mov	r3, r0
  32522e: 4620         	mov	r0, r4
  325230: 4619         	mov	r1, r3
  325232: f277 f893    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x277126
  325236: e01a         	b	0x32526e <FindGameLayer::onHost(cocos2d::CCObject*)+0x17e> @ imm = #0x34
  325238: ab05         	add	r3, sp, #0x14
  32523a: 4618         	mov	r0, r3
  32523c: f090 f36a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4906d4
  325240: e7ff         	b	0x325242 <FindGameLayer::onHost(cocos2d::CCObject*)+0x152> @ imm = #-0x2
  325242: ab03         	add	r3, sp, #0xc
  325244: 4618         	mov	r0, r3
  325246: f065 f0d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4651b2
  32524a: f062 f72f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x462e5e
  32524e: ab05         	add	r3, sp, #0x14
  325250: 4618         	mov	r0, r3
  325252: f090 f35f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4906be
  325256: e7ff         	b	0x325258 <FindGameLayer::onHost(cocos2d::CCObject*)+0x168> @ imm = #-0x2
  325258: ab03         	add	r3, sp, #0xc
  32525a: 4618         	mov	r0, r3
  32525c: f065 f0ce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x46519c
  325260: e7ff         	b	0x325262 <FindGameLayer::onHost(cocos2d::CCObject*)+0x172> @ imm = #-0x2
  325262: ab04         	add	r3, sp, #0x10
  325264: 4618         	mov	r0, r3
  325266: f090 f355    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4906aa
  32526a: f062 f71f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x462e3e
  32526e: b006         	add	sp, #0x18
  325270: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x325271); words below are literal-pool data ---
  325272: bf00         	nop
  325274: d90e         	bls	0x325294 <FindGameLayer::onHost(cocos2d::CCObject*)+0x1a4> @ imm = #0x1c
  325276: 0060         	lsls	r0, r4, #0x1
  325278: d730         	bvc	0x3252dc <FindGameLayer::onBack(cocos2d::CCObject*)+0x40> @ imm = #0x60
  32527a: ffff d838    	vqshrun.s64	d29, q12, #0x1
  32527e: ffff da58    	<unknown>
  325282: ffff 2b98    	<unknown>
  325286: 004a         	lsls	r2, r1, #0x1
  325288: 2b8c         	cmp	r3, #0x8c
  32528a: 004a         	lsls	r2, r1, #0x1
  32528c: 2b70         	cmp	r3, #0x70
  32528e: 004a         	lsls	r2, r1, #0x1
  325290: da54         	bge	0x32533c <FindGameLayer::onBack(cocos2d::CCObject*)+0xa0> @ imm = #0xa8
  325292: ffff e120    	<unknown>
  325296: 0060         	lsls	r0, r4, #0x1
  325298: e0fa         	b	0x325490 <FindGameLayer::UpdateCurrentSessionLabel()+0x68> @ imm = #0x1f4
  32529a: 0060         	lsls	r0, r4, #0x1

// ==== FindGameLayer::onBack
//      file offset 0x32529c (= ELF address; Ghidra 0x33529c), 196 bytes, Thumb-2
  32529c: b530         	push	{r4, r5, lr}
  32529e: b085         	sub	sp, #0x14
  3252a0: 9001         	str	r0, [sp, #0x4]
  3252a2: 9100         	str	r1, [sp]
  3252a4: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x325350 <FindGameLayer::onBack(cocos2d::CCObject*)+0xb4>
  3252a6: 447a         	add	r2, pc
  3252a8: 9b01         	ldr	r3, [sp, #0x4]
  3252aa: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3252ae: 2b00         	cmp	r3, #0x0
  3252b0: d000         	beq	0x3252b4 <FindGameLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3252b2: e04b         	b	0x32534c <FindGameLayer::onBack(cocos2d::CCObject*)+0xb0> @ imm = #0x96
  3252b4: 9b01         	ldr	r3, [sp, #0x4]
  3252b6: 2101         	movs	r1, #0x1
  3252b8: f883 1108    	strb.w	r1, [r3, #0x108]
  3252bc: 4b25         	ldr	r3, [pc, #0x94]         @ 0x325354 <FindGameLayer::onBack(cocos2d::CCObject*)+0xb8>
  3252be: 58d3         	ldr	r3, [r2, r3]
  3252c0: 681b         	ldr	r3, [r3]
  3252c2: 4618         	mov	r0, r3
  3252c4: 210d         	movs	r1, #0xd
  3252c6: f0d2 fd7b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xd2af6
  3252ca: f052 fc39    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52872
  3252ce: 4604         	mov	r4, r0
  3252d0: ab02         	add	r3, sp, #0x8
  3252d2: 4618         	mov	r0, r3
  3252d4: f065 f08e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x46511c
  3252d8: aa03         	add	r2, sp, #0xc
  3252da: ab02         	add	r3, sp, #0x8
  3252dc: 4610         	mov	r0, r2
  3252de: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x325358 <FindGameLayer::onBack(cocos2d::CCObject*)+0xbc>
  3252e0: 447a         	add	r2, pc
  3252e2: 4611         	mov	r1, r2
  3252e4: 461a         	mov	r2, r3
  3252e6: f091 f3bb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491776
  3252ea: ab03         	add	r3, sp, #0xc
  3252ec: 4620         	mov	r0, r4
  3252ee: 4619         	mov	r1, r3
  3252f0: f054 fcca    	bl	0x379c88 <NetworkManager::setSessionToJoin(std::string)> @ imm = #0x54994
  3252f4: ab03         	add	r3, sp, #0xc
  3252f6: 4618         	mov	r0, r3
  3252f8: f090 f30c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490618
  3252fc: ab02         	add	r3, sp, #0x8
  3252fe: 4618         	mov	r0, r3
  325300: f065 f07c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4650f8
  325304: f052 fc1c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x52838
  325308: 4603         	mov	r3, r0
  32530a: 4618         	mov	r0, r3
  32530c: f054 fcca    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #0x54994
  325310: f276 f930    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x276260
  325314: 4604         	mov	r4, r0
  325316: 4b11         	ldr	r3, [pc, #0x44]         @ 0x32535c <FindGameLayer::onBack(cocos2d::CCObject*)+0xc0>
  325318: 447b         	add	r3, pc
  32531a: 681d         	ldr	r5, [r3]
  32531c: f044 fbda    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x447b4
  325320: 4603         	mov	r3, r0
  325322: 4628         	mov	r0, r5
  325324: 4619         	mov	r1, r3
  325326: f28b ffef    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x28bfde
  32532a: 4603         	mov	r3, r0
  32532c: 4620         	mov	r0, r4
  32532e: 4619         	mov	r1, r3
  325330: f277 f814    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x277028
  325334: e00a         	b	0x32534c <FindGameLayer::onBack(cocos2d::CCObject*)+0xb0> @ imm = #0x14
  325336: ab03         	add	r3, sp, #0xc
  325338: 4618         	mov	r0, r3
  32533a: f090 f2eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4905d6
  32533e: e7ff         	b	0x325340 <FindGameLayer::onBack(cocos2d::CCObject*)+0xa4> @ imm = #-0x2
  325340: ab02         	add	r3, sp, #0x8
  325342: 4618         	mov	r0, r3
  325344: f065 f05a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4650b4
  325348: f062 f6b0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x462d60
  32534c: b005         	add	sp, #0x14
  32534e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32534f); words below are literal-pool data ---
  325350: d762         	bvc	0x325418 <FindGameLayer::onPrevSession(cocos2d::CCObject*)+0x50> @ imm = #0xc4
  325352: 0060         	lsls	r0, r4, #0x1
  325354: d730         	bvc	0x3253b8 <FindGameLayer::onNextSession(cocos2d::CCObject*)+0x58> @ imm = #0x60
  325356: ffff 29c8    	<unknown>
  32535a: 004a         	lsls	r2, r1, #0x1
  32535c: dffc         	svc	#0xfc
  32535e: 0060         	lsls	r0, r4, #0x1

// ==== FindGameLayer::onNextSession
//      file offset 0x325360 (= ELF address; Ghidra 0x335360), 104 bytes, Thumb-2
  325360: b530         	push	{r4, r5, lr}
  325362: b083         	sub	sp, #0xc
  325364: 9001         	str	r0, [sp, #0x4]
  325366: 9100         	str	r1, [sp]
  325368: 4c15         	ldr	r4, [pc, #0x54]         @ 0x3253c0 <FindGameLayer::onNextSession(cocos2d::CCObject*)+0x60>
  32536a: 447c         	add	r4, pc
  32536c: 9b01         	ldr	r3, [sp, #0x4]
  32536e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  325372: 1c5a         	adds	r2, r3, #0x1
  325374: 9b01         	ldr	r3, [sp, #0x4]
  325376: f8c3 2134    	str.w	r2, [r3, #0x134]
  32537a: 9b01         	ldr	r3, [sp, #0x4]
  32537c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  325380: 461d         	mov	r5, r3
  325382: 9b01         	ldr	r3, [sp, #0x4]
  325384: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  325388: 4618         	mov	r0, r3
  32538a: f274 fea9    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x274d52
  32538e: 4603         	mov	r3, r0
  325390: 429d         	cmp	r5, r3
  325392: bf34         	ite	lo
  325394: 2300         	movlo	r3, #0x0
  325396: 2301         	movhs	r3, #0x1
  325398: b2db         	uxtb	r3, r3
  32539a: 2b00         	cmp	r3, #0x0
  32539c: d003         	beq	0x3253a6 <FindGameLayer::onNextSession(cocos2d::CCObject*)+0x46> @ imm = #0x6
  32539e: 9b01         	ldr	r3, [sp, #0x4]
  3253a0: 2200         	movs	r2, #0x0
  3253a2: f8c3 2134    	str.w	r2, [r3, #0x134]
  3253a6: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3253c4 <FindGameLayer::onNextSession(cocos2d::CCObject*)+0x64>
  3253a8: 58e3         	ldr	r3, [r4, r3]
  3253aa: 681b         	ldr	r3, [r3]
  3253ac: 4618         	mov	r0, r3
  3253ae: 210e         	movs	r1, #0xe
  3253b0: f0d2 fd06    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xd2a0c
  3253b4: 9801         	ldr	r0, [sp, #0x4]
  3253b6: f000 f837    	bl	0x325428 <FindGameLayer::UpdateCurrentSessionLabel()> @ imm = #0x6e
  3253ba: b003         	add	sp, #0xc
  3253bc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3253bd); words below are literal-pool data ---
  3253be: bf00         	nop
  3253c0: d69e         	bvs	0x325300 <FindGameLayer::onBack(cocos2d::CCObject*)+0x64> @ imm = #-0xc4
  3253c2: 0060         	lsls	r0, r4, #0x1
  3253c4: d730         	bvc	0x325428 <FindGameLayer::UpdateCurrentSessionLabel()> @ imm = #0x60
  3253c6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== FindGameLayer::onPrevSession
//      file offset 0x3253c8 (= ELF address; Ghidra 0x3353c8), 92 bytes, Thumb-2
  3253c8: b510         	push	{r4, lr}
  3253ca: b082         	sub	sp, #0x8
  3253cc: 9001         	str	r0, [sp, #0x4]
  3253ce: 9100         	str	r1, [sp]
  3253d0: 4c12         	ldr	r4, [pc, #0x48]         @ 0x32541c <FindGameLayer::onPrevSession(cocos2d::CCObject*)+0x54>
  3253d2: 447c         	add	r4, pc
  3253d4: 9b01         	ldr	r3, [sp, #0x4]
  3253d6: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3253da: 1e5a         	subs	r2, r3, #0x1
  3253dc: 9b01         	ldr	r3, [sp, #0x4]
  3253de: f8c3 2134    	str.w	r2, [r3, #0x134]
  3253e2: 9b01         	ldr	r3, [sp, #0x4]
  3253e4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3253e8: 2b00         	cmp	r3, #0x0
  3253ea: da0b         	bge	0x325404 <FindGameLayer::onPrevSession(cocos2d::CCObject*)+0x3c> @ imm = #0x16
  3253ec: 9b01         	ldr	r3, [sp, #0x4]
  3253ee: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3253f2: 4618         	mov	r0, r3
  3253f4: f274 fe74    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x274ce8
  3253f8: 4603         	mov	r3, r0
  3253fa: 3b01         	subs	r3, #0x1
  3253fc: 461a         	mov	r2, r3
  3253fe: 9b01         	ldr	r3, [sp, #0x4]
  325400: f8c3 2134    	str.w	r2, [r3, #0x134]
  325404: 4b06         	ldr	r3, [pc, #0x18]         @ 0x325420 <FindGameLayer::onPrevSession(cocos2d::CCObject*)+0x58>
  325406: 58e3         	ldr	r3, [r4, r3]
  325408: 681b         	ldr	r3, [r3]
  32540a: 4618         	mov	r0, r3
  32540c: 210d         	movs	r1, #0xd
  32540e: f0d2 fcd7    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xd29ae
  325412: 9801         	ldr	r0, [sp, #0x4]
  325414: f000 f808    	bl	0x325428 <FindGameLayer::UpdateCurrentSessionLabel()> @ imm = #0x10
  325418: b002         	add	sp, #0x8
  32541a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x32541b); words below are literal-pool data ---
  32541c: d636         	bvs	0x32548c <FindGameLayer::UpdateCurrentSessionLabel()+0x64> @ imm = #0x6c
  32541e: 0060         	lsls	r0, r4, #0x1
  325420: d730         	bvc	0x325484 <FindGameLayer::UpdateCurrentSessionLabel()+0x5c> @ imm = #0x60
  325422: ffff 0000    	<unknown>

// ==== FindGameLayer::UpdateCurrentSessionLabel
//      file offset 0x325428 (= ELF address; Ghidra 0x335428), 672 bytes, Thumb-2
  325428: b530         	push	{r4, r5, lr}
  32542a: ed2d 8b02    	vpush	{d8}
  32542e: b0a1         	sub	sp, #0x84
  325430: 9001         	str	r0, [sp, #0x4]
  325432: 4ca2         	ldr	r4, [pc, #0x288]        @ 0x3256bc <FindGameLayer::UpdateCurrentSessionLabel()+0x294>
  325434: 447c         	add	r4, pc
  325436: ab1c         	add	r3, sp, #0x70
  325438: 4618         	mov	r0, r3
  32543a: f064 f7db    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x464fb6
  32543e: aa03         	add	r2, sp, #0xc
  325440: ab1c         	add	r3, sp, #0x70
  325442: 4610         	mov	r0, r2
  325444: 4a9e         	ldr	r2, [pc, #0x278]        @ 0x3256c0 <FindGameLayer::UpdateCurrentSessionLabel()+0x298>
  325446: 447a         	add	r2, pc
  325448: 4611         	mov	r1, r2
  32544a: 461a         	mov	r2, r3
  32544c: f091 f308    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491610
  325450: ab1c         	add	r3, sp, #0x70
  325452: 4618         	mov	r0, r3
  325454: f064 f7d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x464fa4
  325458: 9b01         	ldr	r3, [sp, #0x4]
  32545a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  32545e: 4618         	mov	r0, r3
  325460: f274 fe3e    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x274c7c
  325464: 4603         	mov	r3, r0
  325466: 2b00         	cmp	r3, #0x0
  325468: bf0c         	ite	eq
  32546a: 2300         	moveq	r3, #0x0
  32546c: 2301         	movne	r3, #0x1
  32546e: b2db         	uxtb	r3, r3
  325470: 2b00         	cmp	r3, #0x0
  325472: d02d         	beq	0x3254d0 <FindGameLayer::UpdateCurrentSessionLabel()+0xa8> @ imm = #0x5a
  325474: 9b01         	ldr	r3, [sp, #0x4]
  325476: f8d3 2130    	ldr.w	r2, [r3, #0x130]
  32547a: 9b01         	ldr	r3, [sp, #0x4]
  32547c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  325480: 4610         	mov	r0, r2
  325482: 4619         	mov	r1, r3
  325484: f274 fe4c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x274c98
  325488: 4603         	mov	r3, r0
  32548a: 4618         	mov	r0, r3
  32548c: f274 fa4c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x274498
  325490: 4603         	mov	r3, r0
  325492: aa03         	add	r2, sp, #0xc
  325494: 4610         	mov	r0, r2
  325496: 4619         	mov	r1, r3
  325498: f090 f4ea    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4909d4
  32549c: aa08         	add	r2, sp, #0x20
  32549e: ab03         	add	r3, sp, #0xc
  3254a0: 4610         	mov	r0, r2
  3254a2: 4619         	mov	r1, r3
  3254a4: f091 f020    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x491040
  3254a8: aa0c         	add	r2, sp, #0x30
  3254aa: ab08         	add	r3, sp, #0x20
  3254ac: 4610         	mov	r0, r2
  3254ae: 4619         	mov	r1, r3
  3254b0: f7fe fce0    	bl	0x323e74 <FRAGNADE::getWeaponRect()+0xf14> @ imm = #-0x1640
  3254b4: aa03         	add	r2, sp, #0xc
  3254b6: ab0c         	add	r3, sp, #0x30
  3254b8: 4610         	mov	r0, r2
  3254ba: 4619         	mov	r1, r3
  3254bc: f08f f714    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x48fe28
  3254c0: ab0c         	add	r3, sp, #0x30
  3254c2: 4618         	mov	r0, r3
  3254c4: f090 f226    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49044c
  3254c8: ab08         	add	r3, sp, #0x20
  3254ca: 4618         	mov	r0, r3
  3254cc: f090 f222    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490444
  3254d0: ab04         	add	r3, sp, #0x10
  3254d2: 4618         	mov	r0, r3
  3254d4: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3256c4 <FindGameLayer::UpdateCurrentSessionLabel()+0x29c>
  3254d6: 58e3         	ldr	r3, [r4, r3]
  3254d8: 4619         	mov	r1, r3
  3254da: f26d fde9    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x26dbd2
  3254de: 9b01         	ldr	r3, [sp, #0x4]
  3254e0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3254e4: 681b         	ldr	r3, [r3]
  3254e6: f503 73fc    	add.w	r3, r3, #0x1f8
  3254ea: 681c         	ldr	r4, [r3]
  3254ec: 9b01         	ldr	r3, [sp, #0x4]
  3254ee: f8d3 5124    	ldr.w	r5, [r3, #0x124]
  3254f2: ab03         	add	r3, sp, #0xc
  3254f4: 4618         	mov	r0, r3
  3254f6: f08f f703    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x48fe06
  3254fa: 4603         	mov	r3, r0
  3254fc: 4628         	mov	r0, r5
  3254fe: 4619         	mov	r1, r3
  325500: 47a0         	blx	r4
  325502: 9b01         	ldr	r3, [sp, #0x4]
  325504: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  325508: 681b         	ldr	r3, [r3]
  32550a: 334c         	adds	r3, #0x4c
  32550c: 681c         	ldr	r4, [r3]
  32550e: 9b01         	ldr	r3, [sp, #0x4]
  325510: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  325514: 461d         	mov	r5, r3
  325516: ed9d 7a04    	vldr	s14, [sp, #16]
  32551a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  32551e: eec7 7a27    	vdiv.f32	s15, s14, s15
  325522: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  325526: ed9d 7a05    	vldr	s14, [sp, #20]
  32552a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  32552e: eec7 7a27    	vdiv.f32	s15, s14, s15
  325532: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  325536: ab10         	add	r3, sp, #0x40
  325538: 4618         	mov	r0, r3
  32553a: eeb0 0b46    	vmov.f64	d0, d6
  32553e: eeb0 1b47    	vmov.f64	d1, d7
  325542: f7fd fde5    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x2436
  325546: ab14         	add	r3, sp, #0x50
  325548: 4618         	mov	r0, r3
  32554a: ed9f 0b59    	vldr	d0, [pc, #356]          @ 0x3256b0 <FindGameLayer::UpdateCurrentSessionLabel()+0x288>
  32554e: eeba 1b00    	vmov.f64	d1, #-8.000000e+00
  325552: f7fd fddd    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x2446
  325556: ab08         	add	r3, sp, #0x20
  325558: ed9d 4b10    	vldr	d4, [sp, #64]
  32555c: ed9d 5b12    	vldr	d5, [sp, #72]
  325560: ed9d 6b14    	vldr	d6, [sp, #80]
  325564: ed9d 7b16    	vldr	d7, [sp, #88]
  325568: 4618         	mov	r0, r3
  32556a: eeb0 0b44    	vmov.f64	d0, d4
  32556e: eeb0 1b45    	vmov.f64	d1, d5
  325572: eeb0 2b46    	vmov.f64	d2, d6
  325576: eeb0 3b47    	vmov.f64	d3, d7
  32557a: f7fd fddd    	bl	0x323138 <FRAGNADE::getWeaponRect()+0x1d8> @ imm = #-0x2446
  32557e: ed9d 8b08    	vldr	d8, [sp, #32]
  325582: ab03         	add	r3, sp, #0xc
  325584: 4618         	mov	r0, r3
  325586: f08f f569    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x48fad2
  32558a: 4603         	mov	r3, r0
  32558c: ee07 3a90    	vmov	s15, r3
  325590: eeb8 7a67    	vcvt.f32.u32	s14, s15
  325594: eef3 7a08    	vmov.f32	s15, #2.400000e+01
  325598: ee27 7a27    	vmul.f32	s14, s14, s15
  32559c: eddf 7a46    	vldr	s15, [pc, #280]         @ 0x3256b8 <FindGameLayer::UpdateCurrentSessionLabel()+0x290>
  3255a0: ee27 7a27    	vmul.f32	s14, s14, s15
  3255a4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3255a8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3255ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3255b0: ee38 7b47    	vsub.f64	d7, d8, d7
  3255b4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3255b8: ed9d 7a04    	vldr	s14, [sp, #16]
  3255bc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3255c0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3255c4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3255c8: ed9d 7a05    	vldr	s14, [sp, #20]
  3255cc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3255d0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3255d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3255d8: ab18         	add	r3, sp, #0x60
  3255da: 4618         	mov	r0, r3
  3255dc: eeb0 0b46    	vmov.f64	d0, d6
  3255e0: eeb0 1b47    	vmov.f64	d1, d7
  3255e4: f7fd fd94    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x24d8
  3255e8: ab1c         	add	r3, sp, #0x70
  3255ea: 4618         	mov	r0, r3
  3255ec: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x3256b0 <FindGameLayer::UpdateCurrentSessionLabel()+0x288>
  3255f0: eeba 1b00    	vmov.f64	d1, #-8.000000e+00
  3255f4: f7fd fd8c    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x24e8
  3255f8: ab0c         	add	r3, sp, #0x30
  3255fa: ed9d 4b18    	vldr	d4, [sp, #96]
  3255fe: ed9d 5b1a    	vldr	d5, [sp, #104]
  325602: ed9d 6b1c    	vldr	d6, [sp, #112]
  325606: ed9d 7b1e    	vldr	d7, [sp, #120]
  32560a: 4618         	mov	r0, r3
  32560c: eeb0 0b44    	vmov.f64	d0, d4
  325610: eeb0 1b45    	vmov.f64	d1, d5
  325614: eeb0 2b46    	vmov.f64	d2, d6
  325618: eeb0 3b47    	vmov.f64	d3, d7
  32561c: f7fd fd8c    	bl	0x323138 <FRAGNADE::getWeaponRect()+0x1d8> @ imm = #-0x24e8
  325620: ed9d 7b0e    	vldr	d7, [sp, #56]
  325624: eef7 7bc7    	vcvt.f32.f64	s15, d7
  325628: ab06         	add	r3, sp, #0x18
  32562a: 4618         	mov	r0, r3
  32562c: ee18 1a10    	vmov	r1, s16
  325630: ee17 2a90    	vmov	r2, s15
  325634: f26d fb5c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26d6b8
  325638: ab06         	add	r3, sp, #0x18
  32563a: 4628         	mov	r0, r5
  32563c: 4619         	mov	r1, r3
  32563e: 47a0         	blx	r4
  325640: 9b01         	ldr	r3, [sp, #0x4]
  325642: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  325646: 4618         	mov	r0, r3
  325648: 2118         	movs	r1, #0x18
  32564a: f280 fb9b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x280736
  32564e: 9b01         	ldr	r3, [sp, #0x4]
  325650: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  325654: 681b         	ldr	r3, [r3]
  325656: 3340         	adds	r3, #0x40
  325658: 681b         	ldr	r3, [r3]
  32565a: 9a01         	ldr	r2, [sp, #0x4]
  32565c: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  325660: 4610         	mov	r0, r2
  325662: f246 6166    	movw	r1, #0x6666
  325666: f6c3 61e6    	movt	r1, #0x3ee6
  32566a: 4798         	blx	r3
  32566c: ab03         	add	r3, sp, #0xc
  32566e: 4618         	mov	r0, r3
  325670: f090 f150    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4902a0
  325674: e015         	b	0x3256a2 <FindGameLayer::UpdateCurrentSessionLabel()+0x27a> @ imm = #0x2a
  325676: ab1c         	add	r3, sp, #0x70
  325678: 4618         	mov	r0, r3
  32567a: f064 f6bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x464d7e
  32567e: f062 f515    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x462a2a
  325682: ab0c         	add	r3, sp, #0x30
  325684: 4618         	mov	r0, r3
  325686: f090 f145    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49028a
  32568a: e7ff         	b	0x32568c <FindGameLayer::UpdateCurrentSessionLabel()+0x264> @ imm = #-0x2
  32568c: ab08         	add	r3, sp, #0x20
  32568e: 4618         	mov	r0, r3
  325690: f090 f140    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490280
  325694: e7ff         	b	0x325696 <FindGameLayer::UpdateCurrentSessionLabel()+0x26e> @ imm = #-0x2
  325696: ab03         	add	r3, sp, #0xc
  325698: 4618         	mov	r0, r3
  32569a: f090 f13b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490276
  32569e: f062 f505    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x462a0a
  3256a2: b021         	add	sp, #0x84
  3256a4: ecbd 8b02    	vpop	{d8}
  3256a8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3256a9); words below are literal-pool data ---
  3256aa: bf00         	nop
  3256ac: f3af 8000    	nop.w
  3256b8: 6666         	str	r6, [r4, #0x64]
  3256ba: 3ee6         	subs	r6, #0xe6
  3256bc: d5d4         	bpl	0x325668 <FindGameLayer::UpdateCurrentSessionLabel()+0x240> @ imm = #-0x58
  3256be: 0060         	lsls	r0, r4, #0x1
  3256c0: 28ce         	cmp	r0, #0xce
  3256c2: 004a         	lsls	r2, r1, #0x1
  3256c4: d724         	bvc	0x325710 <FindGameLayer::UpdateStatusLabel()+0x48> @ imm = #0x48
  3256c6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== FindGameLayer::UpdateStatusLabel
//      file offset 0x3256c8 (= ELF address; Ghidra 0x3356c8), 576 bytes, Thumb-2
  3256c8: b530         	push	{r4, r5, lr}
  3256ca: ed2d 8b02    	vpush	{d8}
  3256ce: b093         	sub	sp, #0x4c
  3256d0: 9001         	str	r0, [sp, #0x4]
  3256d2: 4c89         	ldr	r4, [pc, #0x224]        @ 0x3258f8 <FindGameLayer::UpdateStatusLabel()+0x230>
  3256d4: 447c         	add	r4, pc
  3256d6: ab0e         	add	r3, sp, #0x38
  3256d8: 4618         	mov	r0, r3
  3256da: f064 f68b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x464d16
  3256de: aa02         	add	r2, sp, #0x8
  3256e0: ab0e         	add	r3, sp, #0x38
  3256e2: 4610         	mov	r0, r2
  3256e4: 4a85         	ldr	r2, [pc, #0x214]        @ 0x3258fc <FindGameLayer::UpdateStatusLabel()+0x234>
  3256e6: 447a         	add	r2, pc
  3256e8: 4611         	mov	r1, r2
  3256ea: 461a         	mov	r2, r3
  3256ec: f091 f1b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x491370
  3256f0: ab0e         	add	r3, sp, #0x38
  3256f2: 4618         	mov	r0, r3
  3256f4: f064 f682    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x464d04
  3256f8: 9b01         	ldr	r3, [sp, #0x4]
  3256fa: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3256fe: 4618         	mov	r0, r3
  325700: f274 fcee    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2749dc
  325704: 4603         	mov	r3, r0
  325706: 2b01         	cmp	r3, #0x1
  325708: bf14         	ite	ne
  32570a: 2300         	movne	r3, #0x0
  32570c: 2301         	moveq	r3, #0x1
  32570e: b2db         	uxtb	r3, r3
  325710: 2b00         	cmp	r3, #0x0
  325712: d006         	beq	0x325722 <FindGameLayer::UpdateStatusLabel()+0x5a> @ imm = #0xc
  325714: ab02         	add	r3, sp, #0x8
  325716: 4618         	mov	r0, r3
  325718: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x325900 <FindGameLayer::UpdateStatusLabel()+0x238>
  32571a: 447b         	add	r3, pc
  32571c: 4619         	mov	r1, r3
  32571e: f090 f3a7    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x49074e
  325722: ab02         	add	r3, sp, #0x8
  325724: 4618         	mov	r0, r3
  325726: f08f f5eb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x48fbd6
  32572a: 4605         	mov	r5, r0
  32572c: 9b01         	ldr	r3, [sp, #0x4]
  32572e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  325732: 4618         	mov	r0, r3
  325734: f274 fcd4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2749a8
  325738: 4603         	mov	r3, r0
  32573a: 4628         	mov	r0, r5
  32573c: 4619         	mov	r1, r3
  32573e: f274 f9e7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2743ce
  325742: 4603         	mov	r3, r0
  325744: 4618         	mov	r0, r3
  325746: f274 f8ef    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2741de
  32574a: 4605         	mov	r5, r0
  32574c: ab0e         	add	r3, sp, #0x38
  32574e: 4618         	mov	r0, r3
  325750: f064 f650    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x464ca0
  325754: aa03         	add	r2, sp, #0xc
  325756: ab0e         	add	r3, sp, #0x38
  325758: 4610         	mov	r0, r2
  32575a: 4629         	mov	r1, r5
  32575c: 461a         	mov	r2, r3
  32575e: f091 f17f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4912fe
  325762: ab0e         	add	r3, sp, #0x38
  325764: 4618         	mov	r0, r3
  325766: f064 f649    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x464c92
  32576a: ab04         	add	r3, sp, #0x10
  32576c: 4618         	mov	r0, r3
  32576e: 4b65         	ldr	r3, [pc, #0x194]        @ 0x325904 <FindGameLayer::UpdateStatusLabel()+0x23c>
  325770: 58e3         	ldr	r3, [r4, r3]
  325772: 4619         	mov	r1, r3
  325774: f26d fc9c    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x26d938
  325778: ed9d 7a04    	vldr	s14, [sp, #16]
  32577c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  325780: eec7 6a27    	vdiv.f32	s13, s14, s15
  325784: ed9d 7a05    	vldr	s14, [sp, #20]
  325788: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  32578c: eec7 7a27    	vdiv.f32	s15, s14, s15
  325790: ab06         	add	r3, sp, #0x18
  325792: 4618         	mov	r0, r3
  325794: ee16 1a90    	vmov	r1, s13
  325798: ee17 2a90    	vmov	r2, s15
  32579c: f26d faa8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26d550
  3257a0: 9b01         	ldr	r3, [sp, #0x4]
  3257a2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3257a6: 681b         	ldr	r3, [r3]
  3257a8: f503 73fc    	add.w	r3, r3, #0x1f8
  3257ac: 681c         	ldr	r4, [r3]
  3257ae: 9b01         	ldr	r3, [sp, #0x4]
  3257b0: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3257b4: ab03         	add	r3, sp, #0xc
  3257b6: 4618         	mov	r0, r3
  3257b8: f08f f5a2    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x48fb44
  3257bc: 4603         	mov	r3, r0
  3257be: 4628         	mov	r0, r5
  3257c0: 4619         	mov	r1, r3
  3257c2: 47a0         	blx	r4
  3257c4: 9b01         	ldr	r3, [sp, #0x4]
  3257c6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3257ca: 681b         	ldr	r3, [r3]
  3257cc: 334c         	adds	r3, #0x4c
  3257ce: 681c         	ldr	r4, [r3]
  3257d0: 9b01         	ldr	r3, [sp, #0x4]
  3257d2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3257d6: 461d         	mov	r5, r3
  3257d8: eddd 7a06    	vldr	s15, [sp, #24]
  3257dc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3257e0: ed9d 7a07    	vldr	s14, [sp, #28]
  3257e4: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3257e8: ee77 7a27    	vadd.f32	s15, s14, s15
  3257ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3257f0: ab0a         	add	r3, sp, #0x28
  3257f2: 4618         	mov	r0, r3
  3257f4: eeb0 0b46    	vmov.f64	d0, d6
  3257f8: eeb0 1b47    	vmov.f64	d1, d7
  3257fc: f7fd fc88    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x26f0
  325800: ed9d 8b0a    	vldr	d8, [sp, #40]
  325804: ab03         	add	r3, sp, #0xc
  325806: 4618         	mov	r0, r3
  325808: f08f f428    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x48f850
  32580c: 4603         	mov	r3, r0
  32580e: ee07 3a90    	vmov	s15, r3
  325812: eeb8 7a67    	vcvt.f32.u32	s14, s15
  325816: eef3 7a08    	vmov.f32	s15, #2.400000e+01
  32581a: ee27 7a27    	vmul.f32	s14, s14, s15
  32581e: eddf 7a35    	vldr	s15, [pc, #212]         @ 0x3258f4 <FindGameLayer::UpdateStatusLabel()+0x22c>
  325822: ee27 7a27    	vmul.f32	s14, s14, s15
  325826: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  32582a: eec7 7a27    	vdiv.f32	s15, s14, s15
  32582e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  325832: ee38 7b47    	vsub.f64	d7, d8, d7
  325836: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  32583a: eddd 7a06    	vldr	s15, [sp, #24]
  32583e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  325842: ed9d 7a07    	vldr	s14, [sp, #28]
  325846: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  32584a: ee77 7a27    	vadd.f32	s15, s14, s15
  32584e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  325852: ab0e         	add	r3, sp, #0x38
  325854: 4618         	mov	r0, r3
  325856: eeb0 0b46    	vmov.f64	d0, d6
  32585a: eeb0 1b47    	vmov.f64	d1, d7
  32585e: f7fd fc57    	bl	0x323110 <FRAGNADE::getWeaponRect()+0x1b0> @ imm = #-0x2752
  325862: ed9d 7b10    	vldr	d7, [sp, #64]
  325866: eef7 7bc7    	vcvt.f32.f64	s15, d7
  32586a: ab08         	add	r3, sp, #0x20
  32586c: 4618         	mov	r0, r3
  32586e: ee18 1a10    	vmov	r1, s16
  325872: ee17 2a90    	vmov	r2, s15
  325876: f26d fa3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26d476
  32587a: ab08         	add	r3, sp, #0x20
  32587c: 4628         	mov	r0, r5
  32587e: 4619         	mov	r1, r3
  325880: 47a0         	blx	r4
  325882: 9b01         	ldr	r3, [sp, #0x4]
  325884: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  325888: 4618         	mov	r0, r3
  32588a: 2118         	movs	r1, #0x18
  32588c: f280 fa7a    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2804f4
  325890: 9b01         	ldr	r3, [sp, #0x4]
  325892: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  325896: 681b         	ldr	r3, [r3]
  325898: 3340         	adds	r3, #0x40
  32589a: 681b         	ldr	r3, [r3]
  32589c: 9a01         	ldr	r2, [sp, #0x4]
  32589e: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3258a2: 4610         	mov	r0, r2
  3258a4: f64c 41cd    	movw	r1, #0xcccd
  3258a8: f6c3 710c    	movt	r1, #0x3f0c
  3258ac: 4798         	blx	r3
  3258ae: ab03         	add	r3, sp, #0xc
  3258b0: 4618         	mov	r0, r3
  3258b2: f090 f02f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49005e
  3258b6: ab02         	add	r3, sp, #0x8
  3258b8: 4618         	mov	r0, r3
  3258ba: f090 f02b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490056
  3258be: e015         	b	0x3258ec <FindGameLayer::UpdateStatusLabel()+0x224> @ imm = #0x2a
  3258c0: ab0e         	add	r3, sp, #0x38
  3258c2: 4618         	mov	r0, r3
  3258c4: f064 f59a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x464b34
  3258c8: f062 f3f0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4627e0
  3258cc: ab0e         	add	r3, sp, #0x38
  3258ce: 4618         	mov	r0, r3
  3258d0: f064 f594    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x464b28
  3258d4: e004         	b	0x3258e0 <FindGameLayer::UpdateStatusLabel()+0x218> @ imm = #0x8
  3258d6: ab03         	add	r3, sp, #0xc
  3258d8: 4618         	mov	r0, r3
  3258da: f090 f01b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x490036
  3258de: e7ff         	b	0x3258e0 <FindGameLayer::UpdateStatusLabel()+0x218> @ imm = #-0x2
  3258e0: ab02         	add	r3, sp, #0x8
  3258e2: 4618         	mov	r0, r3
  3258e4: f090 f016    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49002c
  3258e8: f062 f3e0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4627c0
  3258ec: b013         	add	sp, #0x4c
  3258ee: ecbd 8b02    	vpop	{d8}
  3258f2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3258f3); words below are literal-pool data ---
  3258f4: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  3258f6: 3f0c         	subs	r7, #0xc
  3258f8: d334         	blo	0x325964 <FindGameLayer::UpdateStatusLabel()+0x29c> @ imm = #0x68
  3258fa: 0060         	lsls	r0, r4, #0x1
  3258fc: 263e         	movs	r6, #0x3e
  3258fe: 004a         	lsls	r2, r1, #0x1
  325900: 261a         	movs	r6, #0x1a
  325902: 004a         	lsls	r2, r1, #0x1
  325904: d724         	bvc	0x325950 <FindGameLayer::UpdateStatusLabel()+0x288> @ imm = #0x48
  325906: ffff b510    	vsli.32	d27, d0, #0x1f
