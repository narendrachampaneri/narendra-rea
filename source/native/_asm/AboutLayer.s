// AboutLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AboutLayer.cpp

// ==== AboutLayer::create
//      file offset 0x2e10ac (= ELF address; Ghidra 0x2f10ac), 112 bytes, Thumb-2
  2e10ac: b510         	push	{r4, lr}
  2e10ae: b082         	sub	sp, #0x8
  2e10b0: f44f 708c    	mov.w	r0, #0x118
  2e10b4: f0a6 f456    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4a68ac
  2e10b8: 4603         	mov	r3, r0
  2e10ba: 461c         	mov	r4, r3
  2e10bc: 4620         	mov	r0, r4
  2e10be: f000 f82d    	bl	0x2e111c <AboutLayer::AboutLayer()> @ imm = #0x5a
  2e10c2: 9401         	str	r4, [sp, #0x4]
  2e10c4: 9b01         	ldr	r3, [sp, #0x4]
  2e10c6: 2b00         	cmp	r3, #0x0
  2e10c8: d00a         	beq	0x2e10e0 <AboutLayer::create()+0x34> @ imm = #0x14
  2e10ca: 9b01         	ldr	r3, [sp, #0x4]
  2e10cc: 681b         	ldr	r3, [r3]
  2e10ce: 3318         	adds	r3, #0x18
  2e10d0: 681b         	ldr	r3, [r3]
  2e10d2: 9801         	ldr	r0, [sp, #0x4]
  2e10d4: 4798         	blx	r3
  2e10d6: 4603         	mov	r3, r0
  2e10d8: 2b00         	cmp	r3, #0x0
  2e10da: d001         	beq	0x2e10e0 <AboutLayer::create()+0x34> @ imm = #0x2
  2e10dc: 2301         	movs	r3, #0x1
  2e10de: e000         	b	0x2e10e2 <AboutLayer::create()+0x36> @ imm = #0x0
  2e10e0: 2300         	movs	r3, #0x0
  2e10e2: 2b00         	cmp	r3, #0x0
  2e10e4: d005         	beq	0x2e10f2 <AboutLayer::create()+0x46> @ imm = #0xa
  2e10e6: 9b01         	ldr	r3, [sp, #0x4]
  2e10e8: 4618         	mov	r0, r3
  2e10ea: f2b6 ff07    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2b6e0e
  2e10ee: 9b01         	ldr	r3, [sp, #0x4]
  2e10f0: e011         	b	0x2e1116 <AboutLayer::create()+0x6a> @ imm = #0x22
  2e10f2: 9b01         	ldr	r3, [sp, #0x4]
  2e10f4: 2b00         	cmp	r3, #0x0
  2e10f6: d005         	beq	0x2e1104 <AboutLayer::create()+0x58> @ imm = #0xa
  2e10f8: 9b01         	ldr	r3, [sp, #0x4]
  2e10fa: 681b         	ldr	r3, [r3]
  2e10fc: 3308         	adds	r3, #0x8
  2e10fe: 681b         	ldr	r3, [r3]
  2e1100: 9801         	ldr	r0, [sp, #0x4]
  2e1102: 4798         	blx	r3
  2e1104: 2300         	movs	r3, #0x0
  2e1106: 9301         	str	r3, [sp, #0x4]
  2e1108: 2300         	movs	r3, #0x0
  2e110a: e004         	b	0x2e1116 <AboutLayer::create()+0x6a> @ imm = #0x8
  2e110c: 4620         	mov	r0, r4
  2e110e: f0a6 f7c9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a6f92
  2e1112: f0a6 f7cb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a6f96
  2e1116: 4618         	mov	r0, r3
  2e1118: b002         	add	sp, #0x8
  2e111a: bd10         	pop	{r4, pc}

// ==== AboutLayer::AboutLayer
//      file offset 0x2e111c (= ELF address; Ghidra 0x2f111c), 88 bytes, Thumb-2
  2e111c: b510         	push	{r4, lr}
  2e111e: b082         	sub	sp, #0x8
  2e1120: 9001         	str	r0, [sp, #0x4]
  2e1122: 4c12         	ldr	r4, [pc, #0x48]         @ 0x2e116c <AboutLayer::AboutLayer()+0x50>
  2e1124: 447c         	add	r4, pc
  2e1126: 9b01         	ldr	r3, [sp, #0x4]
  2e1128: 4618         	mov	r0, r3
  2e112a: f2cb ff97    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2cbf2e
  2e112e: 9b01         	ldr	r3, [sp, #0x4]
  2e1130: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x2e1170 <AboutLayer::AboutLayer()+0x54>
  2e1132: 58a2         	ldr	r2, [r4, r2]
  2e1134: 3208         	adds	r2, #0x8
  2e1136: 601a         	str	r2, [r3]
  2e1138: 9b01         	ldr	r3, [sp, #0x4]
  2e113a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2e1170 <AboutLayer::AboutLayer()+0x54>
  2e113c: 58a2         	ldr	r2, [r4, r2]
  2e113e: f502 7204    	add.w	r2, r2, #0x210
  2e1142: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2e1146: 9b01         	ldr	r3, [sp, #0x4]
  2e1148: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2e1170 <AboutLayer::AboutLayer()+0x54>
  2e114a: 58a2         	ldr	r2, [r4, r2]
  2e114c: f502 7210    	add.w	r2, r2, #0x240
  2e1150: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2e1154: 9b01         	ldr	r3, [sp, #0x4]
  2e1156: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2e1170 <AboutLayer::AboutLayer()+0x54>
  2e1158: 58a2         	ldr	r2, [r4, r2]
  2e115a: f502 7213    	add.w	r2, r2, #0x24c
  2e115e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2e1162: 9b01         	ldr	r3, [sp, #0x4]
  2e1164: 4618         	mov	r0, r3
  2e1166: b002         	add	sp, #0x8
  2e1168: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e1169); words below are literal-pool data ---
  2e116a: bf00         	nop
  2e116c: 18e4         	adds	r4, r4, r3
  2e116e: 0065         	lsls	r5, r4, #0x1
  2e1170: d758         	bvc	0x2e1224 <AboutLayer::init()+0x7c> @ imm = #0xb0
  2e1172: ffff b500    	<unknown>

// ==== AboutLayer::scene
//      file offset 0x2e1174 (= ELF address; Ghidra 0x2f1174), 46 bytes, Thumb-2
  2e1174: b500         	push	{lr}
  2e1176: b083         	sub	sp, #0xc
  2e1178: f2ce fc72    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2ce8e4
  2e117c: 4603         	mov	r3, r0
  2e117e: 9300         	str	r3, [sp]
  2e1180: f7ff ff94    	bl	0x2e10ac <AboutLayer::create()> @ imm = #-0xd8
  2e1184: 4603         	mov	r3, r0
  2e1186: 9301         	str	r3, [sp, #0x4]
  2e1188: 9b00         	ldr	r3, [sp]
  2e118a: 681b         	ldr	r3, [r3]
  2e118c: 33c8         	adds	r3, #0xc8
  2e118e: 681b         	ldr	r3, [r3]
  2e1190: 9a00         	ldr	r2, [sp]
  2e1192: 4610         	mov	r0, r2
  2e1194: 9901         	ldr	r1, [sp, #0x4]
  2e1196: 4798         	blx	r3
  2e1198: 9b00         	ldr	r3, [sp]
  2e119a: 4618         	mov	r0, r3
  2e119c: b003         	add	sp, #0xc
  2e119e: f85d fb04    	ldr	pc, [sp], #4

// ==== AboutLayer::init
//      file offset 0x2e11a8 (= ELF address; Ghidra 0x2f11a8), 952 bytes, Thumb-2
  2e11a8: b570         	push	{r4, r5, r6, lr}
  2e11aa: ed2d 8b02    	vpush	{d8}
  2e11ae: b0a4         	sub	sp, #0x90
  2e11b0: 9003         	str	r0, [sp, #0xc]
  2e11b2: 4ce2         	ldr	r4, [pc, #0x388]        @ 0x2e153c <AboutLayer::init()+0x394>
  2e11b4: 447c         	add	r4, pc
  2e11b6: 9b03         	ldr	r3, [sp, #0xc]
  2e11b8: 4618         	mov	r0, r3
  2e11ba: f2cc f81d    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2cc03a
  2e11be: 4603         	mov	r3, r0
  2e11c0: f88d 3017    	strb.w	r3, [sp, #0x17]
  2e11c4: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  2e11c8: f083 0301    	eor	r3, r3, #0x1
  2e11cc: b2db         	uxtb	r3, r3
  2e11ce: 2b00         	cmp	r3, #0x0
  2e11d0: d001         	beq	0x2e11d6 <AboutLayer::init()+0x2e> @ imm = #0x2
  2e11d2: 2300         	movs	r3, #0x0
  2e11d4: e1a7         	b	0x2e1526 <AboutLayer::init()+0x37e> @ imm = #0x34e
  2e11d6: 9b03         	ldr	r3, [sp, #0xc]
  2e11d8: 2200         	movs	r2, #0x0
  2e11da: f883 2108    	strb.w	r2, [r3, #0x108]
  2e11de: ab0c         	add	r3, sp, #0x30
  2e11e0: 4618         	mov	r0, r3
  2e11e2: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x2e1540 <AboutLayer::init()+0x398>
  2e11e4: 58e3         	ldr	r3, [r4, r3]
  2e11e6: 4619         	mov	r1, r3
  2e11e8: f2b1 ff62    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2b1ec4
  2e11ec: ed9d 7a0c    	vldr	s14, [sp, #48]
  2e11f0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e11f4: eec7 6a27    	vdiv.f32	s13, s14, s15
  2e11f8: ed9d 7a0d    	vldr	s14, [sp, #52]
  2e11fc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e1200: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e1204: ab0e         	add	r3, sp, #0x38
  2e1206: 4618         	mov	r0, r3
  2e1208: ee16 1a90    	vmov	r1, s13
  2e120c: ee17 2a90    	vmov	r2, s15
  2e1210: f2b1 fd6e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b1adc
  2e1214: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x2e1544 <AboutLayer::init()+0x39c>
  2e1216: 447b         	add	r3, pc
  2e1218: 4618         	mov	r0, r3
  2e121a: f2f6 ffb3    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2f6f66
  2e121e: 4602         	mov	r2, r0
  2e1220: 9b03         	ldr	r3, [sp, #0xc]
  2e1222: f8c3 210c    	str.w	r2, [r3, #0x10c]
  2e1226: 9b03         	ldr	r3, [sp, #0xc]
  2e1228: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2e122c: 681b         	ldr	r3, [r3]
  2e122e: 334c         	adds	r3, #0x4c
  2e1230: 681b         	ldr	r3, [r3]
  2e1232: 9a03         	ldr	r2, [sp, #0xc]
  2e1234: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  2e1238: aa0e         	add	r2, sp, #0x38
  2e123a: 4608         	mov	r0, r1
  2e123c: 4611         	mov	r1, r2
  2e123e: 4798         	blx	r3
  2e1240: 9b03         	ldr	r3, [sp, #0xc]
  2e1242: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2e1246: 681b         	ldr	r3, [r3]
  2e1248: f503 73d2    	add.w	r3, r3, #0x1a4
  2e124c: 681b         	ldr	r3, [r3]
  2e124e: 9a03         	ldr	r2, [sp, #0xc]
  2e1250: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2e1254: 4610         	mov	r0, r2
  2e1256: 2123         	movs	r1, #0x23
  2e1258: 4798         	blx	r3
  2e125a: 9b03         	ldr	r3, [sp, #0xc]
  2e125c: 681b         	ldr	r3, [r3]
  2e125e: 33c8         	adds	r3, #0xc8
  2e1260: 681b         	ldr	r3, [r3]
  2e1262: 9903         	ldr	r1, [sp, #0xc]
  2e1264: 9a03         	ldr	r2, [sp, #0xc]
  2e1266: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2e126a: 4608         	mov	r0, r1
  2e126c: 4611         	mov	r1, r2
  2e126e: 4798         	blx	r3
  2e1270: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x2e1540 <AboutLayer::init()+0x398>
  2e1272: 58e3         	ldr	r3, [r4, r3]
  2e1274: 681b         	ldr	r3, [r3]
  2e1276: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x2e1540 <AboutLayer::init()+0x398>
  2e1278: 58a2         	ldr	r2, [r4, r2]
  2e127a: ed92 7a01    	vldr	s14, [r2, #4]
  2e127e: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x2e1538 <AboutLayer::init()+0x390>
  2e1282: ee77 7a67    	vsub.f32	s15, s14, s15
  2e1286: aa20         	add	r2, sp, #0x80
  2e1288: edcd 7a00    	vstr	s15, [sp]
  2e128c: 4610         	mov	r0, r2
  2e128e: f04f 0100    	mov.w	r1, #0x0
  2e1292: f04f 0200    	mov.w	r2, #0x0
  2e1296: f2b2 f823    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x2b2046
  2e129a: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x2e1548 <AboutLayer::init()+0x3a0>
  2e129c: 58e3         	ldr	r3, [r4, r3]
  2e129e: 6819         	ldr	r1, [r3]
  2e12a0: 9a20         	ldr	r2, [sp, #0x80]
  2e12a2: 9b21         	ldr	r3, [sp, #0x84]
  2e12a4: 9d22         	ldr	r5, [sp, #0x88]
  2e12a6: 9823         	ldr	r0, [sp, #0x8c]
  2e12a8: 9500         	str	r5, [sp]
  2e12aa: 9001         	str	r0, [sp, #0x4]
  2e12ac: 4608         	mov	r0, r1
  2e12ae: 49a7         	ldr	r1, [pc, #0x29c]        @ 0x2e154c <AboutLayer::init()+0x3a4>
  2e12b0: 4479         	add	r1, pc
  2e12b2: f147 fd0b    	bl	0x428ccc <ZYWebView::showWebView(char const*, float, float, float, float)> @ imm = #0x147a16
  2e12b6: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x2e1550 <AboutLayer::init()+0x3a8>
  2e12b8: 447b         	add	r3, pc
  2e12ba: 4618         	mov	r0, r3
  2e12bc: f2f7 f822    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f7044
  2e12c0: 4603         	mov	r3, r0
  2e12c2: 9307         	str	r3, [sp, #0x1c]
  2e12c4: 9a03         	ldr	r2, [sp, #0xc]
  2e12c6: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x2e1554 <AboutLayer::init()+0x3ac>
  2e12c8: 58e3         	ldr	r3, [r4, r3]
  2e12ca: 9316         	str	r3, [sp, #0x58]
  2e12cc: 2300         	movs	r3, #0x0
  2e12ce: 9317         	str	r3, [sp, #0x5c]
  2e12d0: 9b17         	ldr	r3, [sp, #0x5c]
  2e12d2: 9300         	str	r3, [sp]
  2e12d4: 9b16         	ldr	r3, [sp, #0x58]
  2e12d6: 9807         	ldr	r0, [sp, #0x1c]
  2e12d8: 9907         	ldr	r1, [sp, #0x1c]
  2e12da: f2d7 f827    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2d704e
  2e12de: 4603         	mov	r3, r0
  2e12e0: 9308         	str	r3, [sp, #0x20]
  2e12e2: 9808         	ldr	r0, [sp, #0x20]
  2e12e4: 2100         	movs	r1, #0x0
  2e12e6: f2d3 ff29    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2d3e52
  2e12ea: 4602         	mov	r2, r0
  2e12ec: 9b03         	ldr	r3, [sp, #0xc]
  2e12ee: f8c3 2114    	str.w	r2, [r3, #0x114]
  2e12f2: 9b03         	ldr	r3, [sp, #0xc]
  2e12f4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e12f8: 4618         	mov	r0, r3
  2e12fa: f2b6 fdf5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b6bea
  2e12fe: 9b03         	ldr	r3, [sp, #0xc]
  2e1300: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e1304: 681b         	ldr	r3, [r3]
  2e1306: 334c         	adds	r3, #0x4c
  2e1308: 681c         	ldr	r4, [r3]
  2e130a: 9b03         	ldr	r3, [sp, #0xc]
  2e130c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e1310: 461d         	mov	r5, r3
  2e1312: ab1c         	add	r3, sp, #0x70
  2e1314: 4618         	mov	r0, r3
  2e1316: f04f 0100    	mov.w	r1, #0x0
  2e131a: f2c4 2160    	movt	r1, #0x4260
  2e131e: f04f 4284    	mov.w	r2, #0x42000000
  2e1322: f2b1 fce5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b19ca
  2e1326: ab1c         	add	r3, sp, #0x70
  2e1328: 4628         	mov	r0, r5
  2e132a: 4619         	mov	r1, r3
  2e132c: 47a0         	blx	r4
  2e132e: 9b03         	ldr	r3, [sp, #0xc]
  2e1330: 681b         	ldr	r3, [r3]
  2e1332: 33c8         	adds	r3, #0xc8
  2e1334: 681b         	ldr	r3, [r3]
  2e1336: 9903         	ldr	r1, [sp, #0xc]
  2e1338: 9a03         	ldr	r2, [sp, #0xc]
  2e133a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2e133e: 4608         	mov	r0, r1
  2e1340: 4611         	mov	r1, r2
  2e1342: 4798         	blx	r3
  2e1344: f64c 43cd    	movw	r3, #0xcccd
  2e1348: f6c3 730c    	movt	r3, #0x3f0c
  2e134c: 9309         	str	r3, [sp, #0x24]
  2e134e: f04f 0300    	mov.w	r3, #0x0
  2e1352: f2c4 13c0    	movt	r3, #0x41c0
  2e1356: 930a         	str	r3, [sp, #0x28]
  2e1358: f04f 4341    	mov.w	r3, #0xc1000000
  2e135c: 930b         	str	r3, [sp, #0x2c]
  2e135e: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x2e1558 <AboutLayer::init()+0x3b0>
  2e1360: 447b         	add	r3, pc
  2e1362: 4618         	mov	r0, r3
  2e1364: f0d3 f7cc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4d3f98
  2e1368: 4603         	mov	r3, r0
  2e136a: 2220         	movs	r2, #0x20
  2e136c: 9200         	str	r2, [sp]
  2e136e: 4a7b         	ldr	r2, [pc, #0x1ec]        @ 0x2e155c <AboutLayer::init()+0x3b4>
  2e1370: 447a         	add	r2, pc
  2e1372: 4610         	mov	r0, r2
  2e1374: 4619         	mov	r1, r3
  2e1376: 2220         	movs	r2, #0x20
  2e1378: 2320         	movs	r3, #0x20
  2e137a: f2c3 fffd    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2c3ffa
  2e137e: 4602         	mov	r2, r0
  2e1380: 9b03         	ldr	r3, [sp, #0xc]
  2e1382: f8c3 2110    	str.w	r2, [r3, #0x110]
  2e1386: 9b03         	ldr	r3, [sp, #0xc]
  2e1388: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e138c: 4618         	mov	r0, r3
  2e138e: f2b6 fdab    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b6b56
  2e1392: 9b03         	ldr	r3, [sp, #0xc]
  2e1394: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e1398: 681b         	ldr	r3, [r3]
  2e139a: 334c         	adds	r3, #0x4c
  2e139c: 681c         	ldr	r4, [r3]
  2e139e: 9b03         	ldr	r3, [sp, #0xc]
  2e13a0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e13a4: 461d         	mov	r5, r3
  2e13a6: 9b03         	ldr	r3, [sp, #0xc]
  2e13a8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e13ac: 681b         	ldr	r3, [r3]
  2e13ae: 3350         	adds	r3, #0x50
  2e13b0: 681b         	ldr	r3, [r3]
  2e13b2: 9a03         	ldr	r2, [sp, #0xc]
  2e13b4: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2e13b8: 4610         	mov	r0, r2
  2e13ba: 4798         	blx	r3
  2e13bc: 4603         	mov	r3, r0
  2e13be: 681e         	ldr	r6, [r3]
  2e13c0: 9b03         	ldr	r3, [sp, #0xc]
  2e13c2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e13c6: 681b         	ldr	r3, [r3]
  2e13c8: 3350         	adds	r3, #0x50
  2e13ca: 681b         	ldr	r3, [r3]
  2e13cc: 9a03         	ldr	r2, [sp, #0xc]
  2e13ce: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2e13d2: 4610         	mov	r0, r2
  2e13d4: 4798         	blx	r3
  2e13d6: 4603         	mov	r3, r0
  2e13d8: 685b         	ldr	r3, [r3, #0x4]
  2e13da: aa10         	add	r2, sp, #0x40
  2e13dc: 4610         	mov	r0, r2
  2e13de: 4631         	mov	r1, r6
  2e13e0: 461a         	mov	r2, r3
  2e13e2: f2b1 fc85    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b190a
  2e13e6: eddd 7a0b    	vldr	s15, [sp, #44]
  2e13ea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e13ee: ab18         	add	r3, sp, #0x60
  2e13f0: 4618         	mov	r0, r3
  2e13f2: ed9f 0b4f    	vldr	d0, [pc, #316]          @ 0x2e1530 <AboutLayer::init()+0x388>
  2e13f6: eeb0 1b47    	vmov.f64	d1, d7
  2e13fa: f7fe ff99    	bl	0x2e0330 <AMessageBox::playSound()+0x1cc> @ imm = #-0x10ce
  2e13fe: ed9d 8b18    	vldr	d8, [sp, #96]
  2e1402: 9b03         	ldr	r3, [sp, #0xc]
  2e1404: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e1408: 681b         	ldr	r3, [r3]
  2e140a: f503 73fe    	add.w	r3, r3, #0x1fc
  2e140e: 681b         	ldr	r3, [r3]
  2e1410: 9a03         	ldr	r2, [sp, #0xc]
  2e1412: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2e1416: 4610         	mov	r0, r2
  2e1418: 4798         	blx	r3
  2e141a: 4606         	mov	r6, r0
  2e141c: ab05         	add	r3, sp, #0x14
  2e141e: 4618         	mov	r0, r3
  2e1420: f0a8 f7e8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a8fd0
  2e1424: aa06         	add	r2, sp, #0x18
  2e1426: ab05         	add	r3, sp, #0x14
  2e1428: 4610         	mov	r0, r2
  2e142a: 4631         	mov	r1, r6
  2e142c: 461a         	mov	r2, r3
  2e142e: f0d5 f317    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d562e
  2e1432: ab06         	add	r3, sp, #0x18
  2e1434: 4618         	mov	r0, r3
  2e1436: f0d3 f611    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4d3c22
  2e143a: 4603         	mov	r3, r0
  2e143c: ee07 3a90    	vmov	s15, r3
  2e1440: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2e1444: eddd 7a0a    	vldr	s15, [sp, #40]
  2e1448: ee27 7a27    	vmul.f32	s14, s14, s15
  2e144c: eddd 7a09    	vldr	s15, [sp, #36]
  2e1450: ee27 7a27    	vmul.f32	s14, s14, s15
  2e1454: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e1458: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e145c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e1460: ee38 7b47    	vsub.f64	d7, d8, d7
  2e1464: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2e1468: eddd 7a0b    	vldr	s15, [sp, #44]
  2e146c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e1470: ab1c         	add	r3, sp, #0x70
  2e1472: 4618         	mov	r0, r3
  2e1474: ed9f 0b2e    	vldr	d0, [pc, #184]          @ 0x2e1530 <AboutLayer::init()+0x388>
  2e1478: eeb0 1b47    	vmov.f64	d1, d7
  2e147c: f7fe ff58    	bl	0x2e0330 <AMessageBox::playSound()+0x1cc> @ imm = #-0x1150
  2e1480: ed9d 7b1e    	vldr	d7, [sp, #120]
  2e1484: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2e1488: ab12         	add	r3, sp, #0x48
  2e148a: 4618         	mov	r0, r3
  2e148c: ee18 1a10    	vmov	r1, s16
  2e1490: ee17 2a90    	vmov	r2, s15
  2e1494: f2b1 fc2c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b1858
  2e1498: a914         	add	r1, sp, #0x50
  2e149a: aa10         	add	r2, sp, #0x40
  2e149c: ab12         	add	r3, sp, #0x48
  2e149e: 4608         	mov	r0, r1
  2e14a0: 4611         	mov	r1, r2
  2e14a2: 461a         	mov	r2, r3
  2e14a4: f7fe ff34    	bl	0x2e0310 <AMessageBox::playSound()+0x1ac> @ imm = #-0x1198
  2e14a8: ab14         	add	r3, sp, #0x50
  2e14aa: 4628         	mov	r0, r5
  2e14ac: 4619         	mov	r1, r3
  2e14ae: 47a0         	blx	r4
  2e14b0: ab06         	add	r3, sp, #0x18
  2e14b2: 4618         	mov	r0, r3
  2e14b4: f0d4 f22e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d445c
  2e14b8: ab05         	add	r3, sp, #0x14
  2e14ba: 4618         	mov	r0, r3
  2e14bc: f0a8 f79e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a8f3c
  2e14c0: 9b03         	ldr	r3, [sp, #0xc]
  2e14c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e14c6: 681b         	ldr	r3, [r3]
  2e14c8: 3340         	adds	r3, #0x40
  2e14ca: 681b         	ldr	r3, [r3]
  2e14cc: 9a03         	ldr	r2, [sp, #0xc]
  2e14ce: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2e14d2: 4610         	mov	r0, r2
  2e14d4: 9909         	ldr	r1, [sp, #0x24]
  2e14d6: 4798         	blx	r3
  2e14d8: 9b03         	ldr	r3, [sp, #0xc]
  2e14da: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e14de: eddd 7a0a    	vldr	s15, [sp, #40]
  2e14e2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e14e6: ee17 2a90    	vmov	r2, s15
  2e14ea: 4618         	mov	r0, r3
  2e14ec: 4611         	mov	r1, r2
  2e14ee: f2c4 fc49    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2c4892
  2e14f2: 9b03         	ldr	r3, [sp, #0xc]
  2e14f4: 681b         	ldr	r3, [r3]
  2e14f6: 33c8         	adds	r3, #0xc8
  2e14f8: 681b         	ldr	r3, [r3]
  2e14fa: 9903         	ldr	r1, [sp, #0xc]
  2e14fc: 9a03         	ldr	r2, [sp, #0xc]
  2e14fe: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2e1502: 4608         	mov	r0, r1
  2e1504: 4611         	mov	r1, r2
  2e1506: 4798         	blx	r3
  2e1508: f14a fdce    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x14ab9c
  2e150c: 2301         	movs	r3, #0x1
  2e150e: e00a         	b	0x2e1526 <AboutLayer::init()+0x37e> @ imm = #0x14
  2e1510: ab06         	add	r3, sp, #0x18
  2e1512: 4618         	mov	r0, r3
  2e1514: f0d4 f1fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d43fc
  2e1518: e7ff         	b	0x2e151a <AboutLayer::init()+0x372> @ imm = #-0x2
  2e151a: ab05         	add	r3, sp, #0x14
  2e151c: 4618         	mov	r0, r3
  2e151e: f0a8 f76d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a8eda
  2e1522: f0a6 f5c3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a6b86
  2e1526: 4618         	mov	r0, r3
  2e1528: b024         	add	sp, #0x90
  2e152a: ecbd 8b02    	vpop	{d8}
  2e152e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2e152f); words below are literal-pool data ---
  2e1538: 0000         	movs	r0, r0
  2e153a: 4280         	cmp	r0, r0
  2e153c: 1854         	adds	r4, r2, r1
  2e153e: 0065         	lsls	r5, r4, #0x1
  2e1540: d724         	bvc	0x2e158c <AboutLayer::~AboutLayer()+0x2c> @ imm = #0x48
  2e1542: ffff 0a96    	<unknown>
  2e1546: 004e         	lsls	r6, r1, #0x1
  2e1548: d75c         	bvc	0x2e1604 <AboutLayer::~AboutLayer()+0x10> @ imm = #0xb8
  2e154a: ffff 0a10    	vshll.u32	q8, d0, #0x1f
  2e154e: 004e         	lsls	r6, r1, #0x1
  2e1550: 0a48         	lsrs	r0, r1, #0x9
  2e1552: 004e         	lsls	r6, r1, #0x1
  2e1554: d760         	bvc	0x2e1618 <AboutLayer::onBack(cocos2d::CCObject*)> @ imm = #0xc0
  2e1556: ffff e358    	vrsra.u32	q15, q4, #0x1
  2e155a: 0065         	lsls	r5, r4, #0x1
  2e155c: 099c         	lsrs	r4, r3, #0x6
  2e155e: 004e         	lsls	r6, r1, #0x1

// ==== AboutLayer::~AboutLayer
//      file offset 0x2e1560 (= ELF address; Ghidra 0x2f1560), 140 bytes, Thumb-2
  2e1560: b510         	push	{r4, lr}
  2e1562: b082         	sub	sp, #0x8
  2e1564: 9001         	str	r0, [sp, #0x4]
  2e1566: 4c1e         	ldr	r4, [pc, #0x78]         @ 0x2e15e0 <AboutLayer::~AboutLayer()+0x80>
  2e1568: 447c         	add	r4, pc
  2e156a: 9b01         	ldr	r3, [sp, #0x4]
  2e156c: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x2e15e4 <AboutLayer::~AboutLayer()+0x84>
  2e156e: 58a2         	ldr	r2, [r4, r2]
  2e1570: 3208         	adds	r2, #0x8
  2e1572: 601a         	str	r2, [r3]
  2e1574: 9b01         	ldr	r3, [sp, #0x4]
  2e1576: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x2e15e4 <AboutLayer::~AboutLayer()+0x84>
  2e1578: 58a2         	ldr	r2, [r4, r2]
  2e157a: f502 7204    	add.w	r2, r2, #0x210
  2e157e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2e1582: 9b01         	ldr	r3, [sp, #0x4]
  2e1584: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x2e15e4 <AboutLayer::~AboutLayer()+0x84>
  2e1586: 58a2         	ldr	r2, [r4, r2]
  2e1588: f502 7210    	add.w	r2, r2, #0x240
  2e158c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2e1590: 9b01         	ldr	r3, [sp, #0x4]
  2e1592: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2e15e4 <AboutLayer::~AboutLayer()+0x84>
  2e1594: 58a2         	ldr	r2, [r4, r2]
  2e1596: f502 7213    	add.w	r2, r2, #0x24c
  2e159a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2e159e: 9b01         	ldr	r3, [sp, #0x4]
  2e15a0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e15a4: 4618         	mov	r0, r3
  2e15a6: f2b6 fc87    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b690e
  2e15aa: 9b01         	ldr	r3, [sp, #0x4]
  2e15ac: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e15b0: 4618         	mov	r0, r3
  2e15b2: f2b6 fc81    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b6902
  2e15b6: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x2e15e8 <AboutLayer::~AboutLayer()+0x88>
  2e15b8: 58e3         	ldr	r3, [r4, r3]
  2e15ba: 681b         	ldr	r3, [r3]
  2e15bc: 4618         	mov	r0, r3
  2e15be: f152 fd7d    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0x152afa
  2e15c2: 9b01         	ldr	r3, [sp, #0x4]
  2e15c4: 4618         	mov	r0, r3
  2e15c6: f2cb fdc1    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2cbb82
  2e15ca: 2300         	movs	r3, #0x0
  2e15cc: 2b00         	cmp	r3, #0x0
  2e15ce: d002         	beq	0x2e15d6 <AboutLayer::~AboutLayer()+0x76> @ imm = #0x4
  2e15d0: 9801         	ldr	r0, [sp, #0x4]
  2e15d2: f0a6 f567    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a6ace
  2e15d6: 9b01         	ldr	r3, [sp, #0x4]
  2e15d8: 4618         	mov	r0, r3
  2e15da: b002         	add	sp, #0x8
  2e15dc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e15dd); words below are literal-pool data ---
  2e15de: bf00         	nop
  2e15e0: 14a0         	asrs	r0, r4, #0x12
  2e15e2: 0065         	lsls	r5, r4, #0x1
  2e15e4: d758         	bvc	0x2e1698 <AboutLayer::onBack(cocos2d::CCObject*)+0x80> @ imm = #0xb0
  2e15e6: ffff d75c    	<unknown>
  2e15ea: ffff f1a0    	<unknown>

// ==== AboutLayer::~AboutLayer
//      file offset 0x2e15ec (= ELF address; Ghidra 0x2f15ec), 8 bytes, Thumb-2
  2e15ec: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2e15f0: f7ff bfb6    	b.w	0x2e1560 <AboutLayer::~AboutLayer()> @ imm = #-0x94

// ==== AboutLayer::~AboutLayer
//      file offset 0x2e15f4 (= ELF address; Ghidra 0x2f15f4), 28 bytes, Thumb-2
  2e15f4: b500         	push	{lr}
  2e15f6: b083         	sub	sp, #0xc
  2e15f8: 9001         	str	r0, [sp, #0x4]
  2e15fa: 9801         	ldr	r0, [sp, #0x4]
  2e15fc: f7ff ffb0    	bl	0x2e1560 <AboutLayer::~AboutLayer()> @ imm = #-0xa0
  2e1600: 9801         	ldr	r0, [sp, #0x4]
  2e1602: f0a6 f54f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a6a9e
  2e1606: 9b01         	ldr	r3, [sp, #0x4]
  2e1608: 4618         	mov	r0, r3
  2e160a: b003         	add	sp, #0xc
  2e160c: f85d fb04    	ldr	pc, [sp], #4

// ==== AboutLayer::~AboutLayer
//      file offset 0x2e1610 (= ELF address; Ghidra 0x2f1610), 8 bytes, Thumb-2
  2e1610: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2e1614: f7ff bfee    	b.w	0x2e15f4 <AboutLayer::~AboutLayer()> @ imm = #-0x24

// ==== AboutLayer::onBack
//      file offset 0x2e1618 (= ELF address; Ghidra 0x2f1618), 100 bytes, Thumb-2
  2e1618: b530         	push	{r4, r5, lr}
  2e161a: b083         	sub	sp, #0xc
  2e161c: 9001         	str	r0, [sp, #0x4]
  2e161e: 9100         	str	r1, [sp]
  2e1620: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2e1670 <AboutLayer::onBack(cocos2d::CCObject*)+0x58>
  2e1622: 447a         	add	r2, pc
  2e1624: 9b01         	ldr	r3, [sp, #0x4]
  2e1626: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2e162a: 2b00         	cmp	r3, #0x0
  2e162c: d000         	beq	0x2e1630 <AboutLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2e162e: e01c         	b	0x2e166a <AboutLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  2e1630: 9b01         	ldr	r3, [sp, #0x4]
  2e1632: 2101         	movs	r1, #0x1
  2e1634: f883 1108    	strb.w	r1, [r3, #0x108]
  2e1638: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2e1674 <AboutLayer::onBack(cocos2d::CCObject*)+0x5c>
  2e163a: 58d3         	ldr	r3, [r2, r3]
  2e163c: 681b         	ldr	r3, [r3]
  2e163e: 4618         	mov	r0, r3
  2e1640: 210d         	movs	r1, #0xd
  2e1642: f116 fbbd    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x11677a
  2e1646: f2b9 ff95    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b9f2a
  2e164a: 4604         	mov	r4, r0
  2e164c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2e1678 <AboutLayer::onBack(cocos2d::CCObject*)+0x60>
  2e164e: 447b         	add	r3, pc
  2e1650: 681d         	ldr	r5, [r3]
  2e1652: f088 fa3f    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x8847e
  2e1656: 4603         	mov	r3, r0
  2e1658: 4628         	mov	r0, r5
  2e165a: 4619         	mov	r1, r3
  2e165c: f2cf fe54    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2cfca8
  2e1660: 4603         	mov	r3, r0
  2e1662: 4620         	mov	r0, r4
  2e1664: 4619         	mov	r1, r3
  2e1666: f2ba fe79    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2bacf2
  2e166a: b003         	add	sp, #0xc
  2e166c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2e166d); words below are literal-pool data ---
  2e166e: bf00         	nop
  2e1670: 13e6         	asrs	r6, r4, #0xf
  2e1672: 0065         	lsls	r5, r4, #0x1
  2e1674: d730         	bvc	0x2e16d8 <AboutLayer::onBack(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  2e1676: ffff 19da    	<unknown>
  2e167a: 0065         	lsls	r5, r4, #0x1
