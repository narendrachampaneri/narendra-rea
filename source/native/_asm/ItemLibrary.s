// ItemLibrary: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 8 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ItemLibrary.cpp

// ==== ItemLibrary::sharedItemLibrary
//      file offset 0x349288 (= ELF address; Ghidra 0x359288), 68 bytes, Thumb-2
  349288: b538         	push	{r3, r4, r5, lr}
  34928a: 4d0e         	ldr	r5, [pc, #0x38]         @ 0x3492c4 <ItemLibrary::sharedItemLibrary()+0x3c>
  34928c: 447d         	add	r5, pc
  34928e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3492c8 <ItemLibrary::sharedItemLibrary()+0x40>
  349290: 58eb         	ldr	r3, [r5, r3]
  349292: 681b         	ldr	r3, [r3]
  349294: 2b00         	cmp	r3, #0x0
  349296: d10a         	bne	0x3492ae <ItemLibrary::sharedItemLibrary()+0x26> @ imm = #0x14
  349298: 20f0         	movs	r0, #0xf0
  34929a: f03e f363    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x43e6c6
  34929e: 4603         	mov	r3, r0
  3492a0: 461c         	mov	r4, r3
  3492a2: 4620         	mov	r0, r4
  3492a4: f000 f82e    	bl	0x349304 <ItemLibrary::ItemLibrary()> @ imm = #0x5c
  3492a8: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3492c8 <ItemLibrary::sharedItemLibrary()+0x40>
  3492aa: 58eb         	ldr	r3, [r5, r3]
  3492ac: 601c         	str	r4, [r3]
  3492ae: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3492c8 <ItemLibrary::sharedItemLibrary()+0x40>
  3492b0: 58eb         	ldr	r3, [r5, r3]
  3492b2: 681b         	ldr	r3, [r3]
  3492b4: e004         	b	0x3492c0 <ItemLibrary::sharedItemLibrary()+0x38> @ imm = #0x8
  3492b6: 4620         	mov	r0, r4
  3492b8: f03e f6f4    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43ede8
  3492bc: f03e f6f6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43edec
  3492c0: 4618         	mov	r0, r3
  3492c2: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3492c3); words below are literal-pool data ---
  3492c4: 977c         	str	r7, [sp, #0x1f0]
  3492c6: 005e         	lsls	r6, r3, #0x1
  3492c8: db40         	blt	0x34934c <ItemLibrary::ItemLibrary()+0x48> @ imm = #0x80
  3492ca: ffff b500    	<unknown>

// ==== ItemLibrary::ItemLibrary
//      file offset 0x349304 (= ELF address; Ghidra 0x359304), 2644 bytes, Thumb-2
  349304: b530         	push	{r4, r5, lr}
  349306: b08f         	sub	sp, #0x3c
  349308: 9001         	str	r0, [sp, #0x4]
  34930a: f8df 192c    	ldr.w	r1, [pc, #0x92c]        @ 0x349c38 <ItemLibrary::ItemLibrary()+0x934>
  34930e: 4479         	add	r1, pc
  349310: 9b01         	ldr	r3, [sp, #0x4]
  349312: f8df 2928    	ldr.w	r2, [pc, #0x928]        @ 0x349c3c <ItemLibrary::ItemLibrary()+0x938>
  349316: 588a         	ldr	r2, [r1, r2]
  349318: 3208         	adds	r2, #0x8
  34931a: 601a         	str	r2, [r3]
  34931c: 9b01         	ldr	r3, [sp, #0x4]
  34931e: 3304         	adds	r3, #0x4
  349320: 240d         	movs	r4, #0xd
  349322: 461d         	mov	r5, r3
  349324: e004         	b	0x349330 <ItemLibrary::ItemLibrary()+0x2c> @ imm = #0x8
  349326: 4628         	mov	r0, r5
  349328: f249 ffbc    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x249f78
  34932c: 3510         	adds	r5, #0x10
  34932e: 3c01         	subs	r4, #0x1
  349330: f1b4 3fff    	cmp.w	r4, #0xffffffff
  349334: d1f7         	bne	0x349326 <ItemLibrary::ItemLibrary()+0x22> @ imm = #-0x12
  349336: 9b01         	ldr	r3, [sp, #0x4]
  349338: 33e4         	adds	r3, #0xe4
  34933a: 4618         	mov	r0, r3
  34933c: f001 f99a    	bl	0x34a674 <std::vector<ItemInfo, std::allocator<ItemInfo>>::vector()> @ imm = #0x1334
  349340: 9b01         	ldr	r3, [sp, #0x4]
  349342: 1d1c         	adds	r4, r3, #0x4
  349344: f8df 38f8    	ldr.w	r3, [pc, #0x8f8]        @ 0x349c40 <ItemLibrary::ItemLibrary()+0x93c>
  349348: 447b         	add	r3, pc
  34934a: 4618         	mov	r0, r3
  34934c: f28e ffda    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28efb4
  349350: 4603         	mov	r3, r0
  349352: 4618         	mov	r0, r3
  349354: f793 fcc2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c67c
  349358: 4603         	mov	r3, r0
  34935a: 4620         	mov	r0, r4
  34935c: 4619         	mov	r1, r3
  34935e: f249 fff9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249ff2
  349362: 9b01         	ldr	r3, [sp, #0x4]
  349364: f103 0414    	add.w	r4, r3, #0x14
  349368: f8df 38d8    	ldr.w	r3, [pc, #0x8d8]        @ 0x349c44 <ItemLibrary::ItemLibrary()+0x940>
  34936c: 447b         	add	r3, pc
  34936e: 4618         	mov	r0, r3
  349370: f28e ffc8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ef90
  349374: 4603         	mov	r3, r0
  349376: 4618         	mov	r0, r3
  349378: f793 fcb0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c6a0
  34937c: 4603         	mov	r3, r0
  34937e: 4620         	mov	r0, r4
  349380: 4619         	mov	r1, r3
  349382: f249 ffe7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249fce
  349386: 9b01         	ldr	r3, [sp, #0x4]
  349388: f103 0424    	add.w	r4, r3, #0x24
  34938c: f8df 38b8    	ldr.w	r3, [pc, #0x8b8]        @ 0x349c48 <ItemLibrary::ItemLibrary()+0x944>
  349390: 447b         	add	r3, pc
  349392: 4618         	mov	r0, r3
  349394: f28e ffb6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ef6c
  349398: 4603         	mov	r3, r0
  34939a: 4618         	mov	r0, r3
  34939c: f793 fc9e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c6c4
  3493a0: 4603         	mov	r3, r0
  3493a2: 4620         	mov	r0, r4
  3493a4: 4619         	mov	r1, r3
  3493a6: f249 ffd5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249faa
  3493aa: 9b01         	ldr	r3, [sp, #0x4]
  3493ac: f103 0434    	add.w	r4, r3, #0x34
  3493b0: f8df 3898    	ldr.w	r3, [pc, #0x898]        @ 0x349c4c <ItemLibrary::ItemLibrary()+0x948>
  3493b4: 447b         	add	r3, pc
  3493b6: 4618         	mov	r0, r3
  3493b8: f28e ffa4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ef48
  3493bc: 4603         	mov	r3, r0
  3493be: 4618         	mov	r0, r3
  3493c0: f793 fc8c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c6e8
  3493c4: 4603         	mov	r3, r0
  3493c6: 4620         	mov	r0, r4
  3493c8: 4619         	mov	r1, r3
  3493ca: f249 ffc3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249f86
  3493ce: 9b01         	ldr	r3, [sp, #0x4]
  3493d0: f103 0444    	add.w	r4, r3, #0x44
  3493d4: f8df 3878    	ldr.w	r3, [pc, #0x878]        @ 0x349c50 <ItemLibrary::ItemLibrary()+0x94c>
  3493d8: 447b         	add	r3, pc
  3493da: 4618         	mov	r0, r3
  3493dc: f28e ff92    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ef24
  3493e0: 4603         	mov	r3, r0
  3493e2: 4618         	mov	r0, r3
  3493e4: f793 fc7a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c70c
  3493e8: 4603         	mov	r3, r0
  3493ea: 4620         	mov	r0, r4
  3493ec: 4619         	mov	r1, r3
  3493ee: f249 ffb1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249f62
  3493f2: 9b01         	ldr	r3, [sp, #0x4]
  3493f4: f103 0454    	add.w	r4, r3, #0x54
  3493f8: f8df 3858    	ldr.w	r3, [pc, #0x858]        @ 0x349c54 <ItemLibrary::ItemLibrary()+0x950>
  3493fc: 447b         	add	r3, pc
  3493fe: 4618         	mov	r0, r3
  349400: f28e ff80    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ef00
  349404: 4603         	mov	r3, r0
  349406: 4618         	mov	r0, r3
  349408: f793 fc68    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c730
  34940c: 4603         	mov	r3, r0
  34940e: 4620         	mov	r0, r4
  349410: 4619         	mov	r1, r3
  349412: f249 ff9f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249f3e
  349416: 9b01         	ldr	r3, [sp, #0x4]
  349418: f103 0464    	add.w	r4, r3, #0x64
  34941c: f8df 3838    	ldr.w	r3, [pc, #0x838]        @ 0x349c58 <ItemLibrary::ItemLibrary()+0x954>
  349420: 447b         	add	r3, pc
  349422: 4618         	mov	r0, r3
  349424: f28e ff6e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28eedc
  349428: 4603         	mov	r3, r0
  34942a: 4618         	mov	r0, r3
  34942c: f793 fc56    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c754
  349430: 4603         	mov	r3, r0
  349432: 4620         	mov	r0, r4
  349434: 4619         	mov	r1, r3
  349436: f249 ff8d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249f1a
  34943a: 9b01         	ldr	r3, [sp, #0x4]
  34943c: f103 0474    	add.w	r4, r3, #0x74
  349440: f8df 3818    	ldr.w	r3, [pc, #0x818]        @ 0x349c5c <ItemLibrary::ItemLibrary()+0x958>
  349444: 447b         	add	r3, pc
  349446: 4618         	mov	r0, r3
  349448: f28e ff5c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28eeb8
  34944c: 4603         	mov	r3, r0
  34944e: 4618         	mov	r0, r3
  349450: f793 fc44    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c778
  349454: 4603         	mov	r3, r0
  349456: 4620         	mov	r0, r4
  349458: 4619         	mov	r1, r3
  34945a: f249 ff7b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249ef6
  34945e: 9b01         	ldr	r3, [sp, #0x4]
  349460: f103 0484    	add.w	r4, r3, #0x84
  349464: f8df 37f8    	ldr.w	r3, [pc, #0x7f8]        @ 0x349c60 <ItemLibrary::ItemLibrary()+0x95c>
  349468: 447b         	add	r3, pc
  34946a: 4618         	mov	r0, r3
  34946c: f28e ff4a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ee94
  349470: 4603         	mov	r3, r0
  349472: 4618         	mov	r0, r3
  349474: f793 fc32    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c79c
  349478: 4603         	mov	r3, r0
  34947a: 4620         	mov	r0, r4
  34947c: 4619         	mov	r1, r3
  34947e: f249 ff69    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249ed2
  349482: 9b01         	ldr	r3, [sp, #0x4]
  349484: f103 0494    	add.w	r4, r3, #0x94
  349488: f8df 37d8    	ldr.w	r3, [pc, #0x7d8]        @ 0x349c64 <ItemLibrary::ItemLibrary()+0x960>
  34948c: 447b         	add	r3, pc
  34948e: 4618         	mov	r0, r3
  349490: f28e ff38    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ee70
  349494: 4603         	mov	r3, r0
  349496: 4618         	mov	r0, r3
  349498: f793 fc20    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c7c0
  34949c: 4603         	mov	r3, r0
  34949e: 4620         	mov	r0, r4
  3494a0: 4619         	mov	r1, r3
  3494a2: f249 ff57    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249eae
  3494a6: 9b01         	ldr	r3, [sp, #0x4]
  3494a8: f103 04a4    	add.w	r4, r3, #0xa4
  3494ac: f8df 37b8    	ldr.w	r3, [pc, #0x7b8]        @ 0x349c68 <ItemLibrary::ItemLibrary()+0x964>
  3494b0: 447b         	add	r3, pc
  3494b2: 4618         	mov	r0, r3
  3494b4: f28e ff26    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ee4c
  3494b8: 4603         	mov	r3, r0
  3494ba: 4618         	mov	r0, r3
  3494bc: f793 fc0e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c7e4
  3494c0: 4603         	mov	r3, r0
  3494c2: 4620         	mov	r0, r4
  3494c4: 4619         	mov	r1, r3
  3494c6: f249 ff45    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249e8a
  3494ca: 9b01         	ldr	r3, [sp, #0x4]
  3494cc: f103 04b4    	add.w	r4, r3, #0xb4
  3494d0: f8df 3798    	ldr.w	r3, [pc, #0x798]        @ 0x349c6c <ItemLibrary::ItemLibrary()+0x968>
  3494d4: 447b         	add	r3, pc
  3494d6: 4618         	mov	r0, r3
  3494d8: f28e ff14    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ee28
  3494dc: 4603         	mov	r3, r0
  3494de: 4618         	mov	r0, r3
  3494e0: f793 fbfc    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c808
  3494e4: 4603         	mov	r3, r0
  3494e6: 4620         	mov	r0, r4
  3494e8: 4619         	mov	r1, r3
  3494ea: f249 ff33    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249e66
  3494ee: 9b01         	ldr	r3, [sp, #0x4]
  3494f0: f103 04c4    	add.w	r4, r3, #0xc4
  3494f4: f8df 3778    	ldr.w	r3, [pc, #0x778]        @ 0x349c70 <ItemLibrary::ItemLibrary()+0x96c>
  3494f8: 447b         	add	r3, pc
  3494fa: 4618         	mov	r0, r3
  3494fc: f28e ff02    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ee04
  349500: 4603         	mov	r3, r0
  349502: 4618         	mov	r0, r3
  349504: f793 fbea    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c82c
  349508: 4603         	mov	r3, r0
  34950a: 4620         	mov	r0, r4
  34950c: 4619         	mov	r1, r3
  34950e: f249 ff21    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249e42
  349512: 9b01         	ldr	r3, [sp, #0x4]
  349514: f103 04d4    	add.w	r4, r3, #0xd4
  349518: f8df 3758    	ldr.w	r3, [pc, #0x758]        @ 0x349c74 <ItemLibrary::ItemLibrary()+0x970>
  34951c: 447b         	add	r3, pc
  34951e: 4618         	mov	r0, r3
  349520: f28e fef0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ede0
  349524: 4603         	mov	r3, r0
  349526: 4618         	mov	r0, r3
  349528: f793 fbd8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x6c850
  34952c: 4603         	mov	r3, r0
  34952e: 4620         	mov	r0, r4
  349530: 4619         	mov	r1, r3
  349532: f249 ff0f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249e1e
  349536: ab02         	add	r3, sp, #0x8
  349538: 4618         	mov	r0, r3
  34953a: f7ff fe23    	bl	0x349184 <ItemInfo::ItemInfo()> @ imm = #-0x3ba
  34953e: ab02         	add	r3, sp, #0x8
  349540: 4618         	mov	r0, r3
  349542: f8df 3734    	ldr.w	r3, [pc, #0x734]        @ 0x349c78 <ItemLibrary::ItemLibrary()+0x974>
  349546: 447b         	add	r3, pc
  349548: 4619         	mov	r1, r3
  34954a: f06c f491    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c922
  34954e: ab02         	add	r3, sp, #0x8
  349550: 3308         	adds	r3, #0x8
  349552: 4618         	mov	r0, r3
  349554: f8df 3724    	ldr.w	r3, [pc, #0x724]        @ 0x349c7c <ItemLibrary::ItemLibrary()+0x978>
  349558: 447b         	add	r3, pc
  34955a: 4619         	mov	r1, r3
  34955c: f06c f488    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c910
  349560: f240 43e2    	movw	r3, #0x4e2
  349564: 9305         	str	r3, [sp, #0x14]
  349566: f04f 0300    	mov.w	r3, #0x0
  34956a: f2c4 2320    	movt	r3, #0x4220
  34956e: 9306         	str	r3, [sp, #0x18]
  349570: ab02         	add	r3, sp, #0x8
  349572: 331c         	adds	r3, #0x1c
  349574: 4618         	mov	r0, r3
  349576: f8df 3708    	ldr.w	r3, [pc, #0x708]        @ 0x349c80 <ItemLibrary::ItemLibrary()+0x97c>
  34957a: 447b         	add	r3, pc
  34957c: 4619         	mov	r1, r3
  34957e: f06c f477    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c8ee
  349582: 9b01         	ldr	r3, [sp, #0x4]
  349584: 3304         	adds	r3, #0x4
  349586: aa02         	add	r2, sp, #0x8
  349588: 3220         	adds	r2, #0x20
  34958a: 4610         	mov	r0, r2
  34958c: 4619         	mov	r1, r3
  34958e: f249 fee1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249dc2
  349592: ab02         	add	r3, sp, #0x8
  349594: 3304         	adds	r3, #0x4
  349596: 4618         	mov	r0, r3
  349598: f8df 36e8    	ldr.w	r3, [pc, #0x6e8]        @ 0x349c84 <ItemLibrary::ItemLibrary()+0x980>
  34959c: 447b         	add	r3, pc
  34959e: 4619         	mov	r1, r3
  3495a0: f06c f466    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c8cc
  3495a4: 2300         	movs	r3, #0x0
  3495a6: f88d 3020    	strb.w	r3, [sp, #0x20]
  3495aa: 9b01         	ldr	r3, [sp, #0x4]
  3495ac: f103 02e4    	add.w	r2, r3, #0xe4
  3495b0: ab02         	add	r3, sp, #0x8
  3495b2: 4610         	mov	r0, r2
  3495b4: 4619         	mov	r1, r3
  3495b6: f001 f889    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0x1112
  3495ba: ab02         	add	r3, sp, #0x8
  3495bc: 4618         	mov	r0, r3
  3495be: f8df 36c8    	ldr.w	r3, [pc, #0x6c8]        @ 0x349c88 <ItemLibrary::ItemLibrary()+0x984>
  3495c2: 447b         	add	r3, pc
  3495c4: 4619         	mov	r1, r3
  3495c6: f06c f453    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c8a6
  3495ca: ab02         	add	r3, sp, #0x8
  3495cc: 3308         	adds	r3, #0x8
  3495ce: 4618         	mov	r0, r3
  3495d0: f8df 36b8    	ldr.w	r3, [pc, #0x6b8]        @ 0x349c8c <ItemLibrary::ItemLibrary()+0x988>
  3495d4: 447b         	add	r3, pc
  3495d6: 4619         	mov	r1, r3
  3495d8: f06c f44a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c894
  3495dc: f44f 737a    	mov.w	r3, #0x3e8
  3495e0: 9305         	str	r3, [sp, #0x14]
  3495e2: f04f 0300    	mov.w	r3, #0x0
  3495e6: 9306         	str	r3, [sp, #0x18]
  3495e8: ab02         	add	r3, sp, #0x8
  3495ea: 331c         	adds	r3, #0x1c
  3495ec: 4618         	mov	r0, r3
  3495ee: f8df 36a0    	ldr.w	r3, [pc, #0x6a0]        @ 0x349c90 <ItemLibrary::ItemLibrary()+0x98c>
  3495f2: 447b         	add	r3, pc
  3495f4: 4619         	mov	r1, r3
  3495f6: f06c f43b    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c876
  3495fa: 9b01         	ldr	r3, [sp, #0x4]
  3495fc: 3314         	adds	r3, #0x14
  3495fe: aa02         	add	r2, sp, #0x8
  349600: 3220         	adds	r2, #0x20
  349602: 4610         	mov	r0, r2
  349604: 4619         	mov	r1, r3
  349606: f249 fea5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249d4a
  34960a: ab02         	add	r3, sp, #0x8
  34960c: 3304         	adds	r3, #0x4
  34960e: 4618         	mov	r0, r3
  349610: f8df 3680    	ldr.w	r3, [pc, #0x680]        @ 0x349c94 <ItemLibrary::ItemLibrary()+0x990>
  349614: 447b         	add	r3, pc
  349616: 4619         	mov	r1, r3
  349618: f06c f42a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c854
  34961c: 2300         	movs	r3, #0x0
  34961e: f88d 3020    	strb.w	r3, [sp, #0x20]
  349622: 9b01         	ldr	r3, [sp, #0x4]
  349624: f103 02e4    	add.w	r2, r3, #0xe4
  349628: ab02         	add	r3, sp, #0x8
  34962a: 4610         	mov	r0, r2
  34962c: 4619         	mov	r1, r3
  34962e: f001 f84d    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0x109a
  349632: ab02         	add	r3, sp, #0x8
  349634: 4618         	mov	r0, r3
  349636: f8df 3660    	ldr.w	r3, [pc, #0x660]        @ 0x349c98 <ItemLibrary::ItemLibrary()+0x994>
  34963a: 447b         	add	r3, pc
  34963c: 4619         	mov	r1, r3
  34963e: f06c f417    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c82e
  349642: ab02         	add	r3, sp, #0x8
  349644: 3308         	adds	r3, #0x8
  349646: 4618         	mov	r0, r3
  349648: f8df 3650    	ldr.w	r3, [pc, #0x650]        @ 0x349c9c <ItemLibrary::ItemLibrary()+0x998>
  34964c: 447b         	add	r3, pc
  34964e: 4619         	mov	r1, r3
  349650: f06c f40e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c81c
  349654: f44f 63fa    	mov.w	r3, #0x7d0
  349658: 9305         	str	r3, [sp, #0x14]
  34965a: f04f 0300    	mov.w	r3, #0x0
  34965e: f2c4 13f0    	movt	r3, #0x41f0
  349662: 9306         	str	r3, [sp, #0x18]
  349664: ab02         	add	r3, sp, #0x8
  349666: 331c         	adds	r3, #0x1c
  349668: 4618         	mov	r0, r3
  34966a: f8df 3634    	ldr.w	r3, [pc, #0x634]        @ 0x349ca0 <ItemLibrary::ItemLibrary()+0x99c>
  34966e: 447b         	add	r3, pc
  349670: 4619         	mov	r1, r3
  349672: f06c f3fd    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c7fa
  349676: 9b01         	ldr	r3, [sp, #0x4]
  349678: 3324         	adds	r3, #0x24
  34967a: aa02         	add	r2, sp, #0x8
  34967c: 3220         	adds	r2, #0x20
  34967e: 4610         	mov	r0, r2
  349680: 4619         	mov	r1, r3
  349682: f249 fe67    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249cce
  349686: ab02         	add	r3, sp, #0x8
  349688: 3304         	adds	r3, #0x4
  34968a: 4618         	mov	r0, r3
  34968c: f8df 3614    	ldr.w	r3, [pc, #0x614]        @ 0x349ca4 <ItemLibrary::ItemLibrary()+0x9a0>
  349690: 447b         	add	r3, pc
  349692: 4619         	mov	r1, r3
  349694: f06c f3ec    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c7d8
  349698: 2300         	movs	r3, #0x0
  34969a: f88d 3020    	strb.w	r3, [sp, #0x20]
  34969e: 9b01         	ldr	r3, [sp, #0x4]
  3496a0: f103 02e4    	add.w	r2, r3, #0xe4
  3496a4: ab02         	add	r3, sp, #0x8
  3496a6: 4610         	mov	r0, r2
  3496a8: 4619         	mov	r1, r3
  3496aa: f001 f80f    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0x101e
  3496ae: ab02         	add	r3, sp, #0x8
  3496b0: 4618         	mov	r0, r3
  3496b2: f8df 35f4    	ldr.w	r3, [pc, #0x5f4]        @ 0x349ca8 <ItemLibrary::ItemLibrary()+0x9a4>
  3496b6: 447b         	add	r3, pc
  3496b8: 4619         	mov	r1, r3
  3496ba: f06c f3d9    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c7b2
  3496be: ab02         	add	r3, sp, #0x8
  3496c0: 3308         	adds	r3, #0x8
  3496c2: 4618         	mov	r0, r3
  3496c4: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x349cac <ItemLibrary::ItemLibrary()+0x9a8>
  3496c8: 447b         	add	r3, pc
  3496ca: 4619         	mov	r1, r3
  3496cc: f06c f3d0    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c7a0
  3496d0: 23fa         	movs	r3, #0xfa
  3496d2: 9305         	str	r3, [sp, #0x14]
  3496d4: f04f 0300    	mov.w	r3, #0x0
  3496d8: f2c4 13f0    	movt	r3, #0x41f0
  3496dc: 9306         	str	r3, [sp, #0x18]
  3496de: f04f 537e    	mov.w	r3, #0x3f800000
  3496e2: 9307         	str	r3, [sp, #0x1c]
  3496e4: ab02         	add	r3, sp, #0x8
  3496e6: 331c         	adds	r3, #0x1c
  3496e8: 4618         	mov	r0, r3
  3496ea: f8df 35c4    	ldr.w	r3, [pc, #0x5c4]        @ 0x349cb0 <ItemLibrary::ItemLibrary()+0x9ac>
  3496ee: 447b         	add	r3, pc
  3496f0: 4619         	mov	r1, r3
  3496f2: f06c f3bd    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c77a
  3496f6: 9b01         	ldr	r3, [sp, #0x4]
  3496f8: 3334         	adds	r3, #0x34
  3496fa: aa02         	add	r2, sp, #0x8
  3496fc: 3220         	adds	r2, #0x20
  3496fe: 4610         	mov	r0, r2
  349700: 4619         	mov	r1, r3
  349702: f249 fe27    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249c4e
  349706: ab02         	add	r3, sp, #0x8
  349708: 3304         	adds	r3, #0x4
  34970a: 4618         	mov	r0, r3
  34970c: f8df 35a4    	ldr.w	r3, [pc, #0x5a4]        @ 0x349cb4 <ItemLibrary::ItemLibrary()+0x9b0>
  349710: 447b         	add	r3, pc
  349712: 4619         	mov	r1, r3
  349714: f06c f3ac    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c758
  349718: 2300         	movs	r3, #0x0
  34971a: f88d 3020    	strb.w	r3, [sp, #0x20]
  34971e: 9b01         	ldr	r3, [sp, #0x4]
  349720: f103 02e4    	add.w	r2, r3, #0xe4
  349724: ab02         	add	r3, sp, #0x8
  349726: 4610         	mov	r0, r2
  349728: 4619         	mov	r1, r3
  34972a: f000 ffcf    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xf9e
  34972e: ab02         	add	r3, sp, #0x8
  349730: 4618         	mov	r0, r3
  349732: f8df 3584    	ldr.w	r3, [pc, #0x584]        @ 0x349cb8 <ItemLibrary::ItemLibrary()+0x9b4>
  349736: 447b         	add	r3, pc
  349738: 4619         	mov	r1, r3
  34973a: f06c f399    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c732
  34973e: ab02         	add	r3, sp, #0x8
  349740: 3308         	adds	r3, #0x8
  349742: 4618         	mov	r0, r3
  349744: f8df 3574    	ldr.w	r3, [pc, #0x574]        @ 0x349cbc <ItemLibrary::ItemLibrary()+0x9b8>
  349748: 447b         	add	r3, pc
  34974a: 4619         	mov	r1, r3
  34974c: f06c f390    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c720
  349750: f44f 63fa    	mov.w	r3, #0x7d0
  349754: 9305         	str	r3, [sp, #0x14]
  349756: f04f 0300    	mov.w	r3, #0x0
  34975a: f2c4 13f0    	movt	r3, #0x41f0
  34975e: 9306         	str	r3, [sp, #0x18]
  349760: f04f 537f    	mov.w	r3, #0x3fc00000
  349764: 9307         	str	r3, [sp, #0x1c]
  349766: ab02         	add	r3, sp, #0x8
  349768: 331c         	adds	r3, #0x1c
  34976a: 4618         	mov	r0, r3
  34976c: f8df 3550    	ldr.w	r3, [pc, #0x550]        @ 0x349cc0 <ItemLibrary::ItemLibrary()+0x9bc>
  349770: 447b         	add	r3, pc
  349772: 4619         	mov	r1, r3
  349774: f06c f37c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c6f8
  349778: 9b01         	ldr	r3, [sp, #0x4]
  34977a: 3344         	adds	r3, #0x44
  34977c: aa02         	add	r2, sp, #0x8
  34977e: 3220         	adds	r2, #0x20
  349780: 4610         	mov	r0, r2
  349782: 4619         	mov	r1, r3
  349784: f249 fde6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249bcc
  349788: ab02         	add	r3, sp, #0x8
  34978a: 3304         	adds	r3, #0x4
  34978c: 4618         	mov	r0, r3
  34978e: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x349cc4 <ItemLibrary::ItemLibrary()+0x9c0>
  349792: 447b         	add	r3, pc
  349794: 4619         	mov	r1, r3
  349796: f06c f36b    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c6d6
  34979a: 2300         	movs	r3, #0x0
  34979c: f88d 3020    	strb.w	r3, [sp, #0x20]
  3497a0: 9b01         	ldr	r3, [sp, #0x4]
  3497a2: f103 02e4    	add.w	r2, r3, #0xe4
  3497a6: ab02         	add	r3, sp, #0x8
  3497a8: 4610         	mov	r0, r2
  3497aa: 4619         	mov	r1, r3
  3497ac: f000 ff8e    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xf1c
  3497b0: ab02         	add	r3, sp, #0x8
  3497b2: 4618         	mov	r0, r3
  3497b4: f8df 3510    	ldr.w	r3, [pc, #0x510]        @ 0x349cc8 <ItemLibrary::ItemLibrary()+0x9c4>
  3497b8: 447b         	add	r3, pc
  3497ba: 4619         	mov	r1, r3
  3497bc: f06c f358    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c6b0
  3497c0: ab02         	add	r3, sp, #0x8
  3497c2: 3308         	adds	r3, #0x8
  3497c4: 4618         	mov	r0, r3
  3497c6: f8df 3504    	ldr.w	r3, [pc, #0x504]        @ 0x349ccc <ItemLibrary::ItemLibrary()+0x9c8>
  3497ca: 447b         	add	r3, pc
  3497cc: 4619         	mov	r1, r3
  3497ce: f06c f34f    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c69e
  3497d2: f44f 737a    	mov.w	r3, #0x3e8
  3497d6: 9305         	str	r3, [sp, #0x14]
  3497d8: f04f 0300    	mov.w	r3, #0x0
  3497dc: f2c4 13f0    	movt	r3, #0x41f0
  3497e0: 9306         	str	r3, [sp, #0x18]
  3497e2: f04f 4380    	mov.w	r3, #0x40000000
  3497e6: 9307         	str	r3, [sp, #0x1c]
  3497e8: ab02         	add	r3, sp, #0x8
  3497ea: 331c         	adds	r3, #0x1c
  3497ec: 4618         	mov	r0, r3
  3497ee: f8df 34e0    	ldr.w	r3, [pc, #0x4e0]        @ 0x349cd0 <ItemLibrary::ItemLibrary()+0x9cc>
  3497f2: 447b         	add	r3, pc
  3497f4: 4619         	mov	r1, r3
  3497f6: f06c f33b    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c676
  3497fa: 9b01         	ldr	r3, [sp, #0x4]
  3497fc: 3354         	adds	r3, #0x54
  3497fe: aa02         	add	r2, sp, #0x8
  349800: 3220         	adds	r2, #0x20
  349802: 4610         	mov	r0, r2
  349804: 4619         	mov	r1, r3
  349806: f249 fda5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249b4a
  34980a: ab02         	add	r3, sp, #0x8
  34980c: 3304         	adds	r3, #0x4
  34980e: 4618         	mov	r0, r3
  349810: f8df 34c0    	ldr.w	r3, [pc, #0x4c0]        @ 0x349cd4 <ItemLibrary::ItemLibrary()+0x9d0>
  349814: 447b         	add	r3, pc
  349816: 4619         	mov	r1, r3
  349818: f06c f32a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c654
  34981c: 2300         	movs	r3, #0x0
  34981e: f88d 3020    	strb.w	r3, [sp, #0x20]
  349822: 9b01         	ldr	r3, [sp, #0x4]
  349824: f103 02e4    	add.w	r2, r3, #0xe4
  349828: ab02         	add	r3, sp, #0x8
  34982a: 4610         	mov	r0, r2
  34982c: 4619         	mov	r1, r3
  34982e: f000 ff4d    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xe9a
  349832: ab02         	add	r3, sp, #0x8
  349834: 4618         	mov	r0, r3
  349836: f8df 34a0    	ldr.w	r3, [pc, #0x4a0]        @ 0x349cd8 <ItemLibrary::ItemLibrary()+0x9d4>
  34983a: 447b         	add	r3, pc
  34983c: 4619         	mov	r1, r3
  34983e: f06c f317    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c62e
  349842: ab02         	add	r3, sp, #0x8
  349844: 3308         	adds	r3, #0x8
  349846: 4618         	mov	r0, r3
  349848: f8df 3490    	ldr.w	r3, [pc, #0x490]        @ 0x349cdc <ItemLibrary::ItemLibrary()+0x9d8>
  34984c: 447b         	add	r3, pc
  34984e: 4619         	mov	r1, r3
  349850: f06c f30e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c61c
  349854: f44f 7348    	mov.w	r3, #0x320
  349858: 9305         	str	r3, [sp, #0x14]
  34985a: f04f 0300    	mov.w	r3, #0x0
  34985e: f2c4 13f0    	movt	r3, #0x41f0
  349862: 9306         	str	r3, [sp, #0x18]
  349864: f04f 4380    	mov.w	r3, #0x40000000
  349868: 9307         	str	r3, [sp, #0x1c]
  34986a: ab02         	add	r3, sp, #0x8
  34986c: 331c         	adds	r3, #0x1c
  34986e: 4618         	mov	r0, r3
  349870: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x349ce0 <ItemLibrary::ItemLibrary()+0x9dc>
  349874: 447b         	add	r3, pc
  349876: 4619         	mov	r1, r3
  349878: f06c f2fa    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c5f4
  34987c: 9b01         	ldr	r3, [sp, #0x4]
  34987e: 3364         	adds	r3, #0x64
  349880: aa02         	add	r2, sp, #0x8
  349882: 3220         	adds	r2, #0x20
  349884: 4610         	mov	r0, r2
  349886: 4619         	mov	r1, r3
  349888: f249 fd64    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249ac8
  34988c: ab02         	add	r3, sp, #0x8
  34988e: 3304         	adds	r3, #0x4
  349890: 4618         	mov	r0, r3
  349892: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x349ce4 <ItemLibrary::ItemLibrary()+0x9e0>
  349896: 447b         	add	r3, pc
  349898: 4619         	mov	r1, r3
  34989a: f06c f2e9    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c5d2
  34989e: 2300         	movs	r3, #0x0
  3498a0: f88d 3020    	strb.w	r3, [sp, #0x20]
  3498a4: 9b01         	ldr	r3, [sp, #0x4]
  3498a6: f103 02e4    	add.w	r2, r3, #0xe4
  3498aa: ab02         	add	r3, sp, #0x8
  3498ac: 4610         	mov	r0, r2
  3498ae: 4619         	mov	r1, r3
  3498b0: f000 ff0c    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xe18
  3498b4: ab02         	add	r3, sp, #0x8
  3498b6: 4618         	mov	r0, r3
  3498b8: f8df 342c    	ldr.w	r3, [pc, #0x42c]        @ 0x349ce8 <ItemLibrary::ItemLibrary()+0x9e4>
  3498bc: 447b         	add	r3, pc
  3498be: 4619         	mov	r1, r3
  3498c0: f06c f2d6    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c5ac
  3498c4: ab02         	add	r3, sp, #0x8
  3498c6: 3308         	adds	r3, #0x8
  3498c8: 4618         	mov	r0, r3
  3498ca: f8df 3420    	ldr.w	r3, [pc, #0x420]        @ 0x349cec <ItemLibrary::ItemLibrary()+0x9e8>
  3498ce: 447b         	add	r3, pc
  3498d0: 4619         	mov	r1, r3
  3498d2: f06c f2cd    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c59a
  3498d6: f240 43e2    	movw	r3, #0x4e2
  3498da: 9305         	str	r3, [sp, #0x14]
  3498dc: f04f 0300    	mov.w	r3, #0x0
  3498e0: f2c4 13f0    	movt	r3, #0x41f0
  3498e4: 9306         	str	r3, [sp, #0x18]
  3498e6: f04f 4380    	mov.w	r3, #0x40000000
  3498ea: 9307         	str	r3, [sp, #0x1c]
  3498ec: ab02         	add	r3, sp, #0x8
  3498ee: 331c         	adds	r3, #0x1c
  3498f0: 4618         	mov	r0, r3
  3498f2: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x349cf0 <ItemLibrary::ItemLibrary()+0x9ec>
  3498f4: 447b         	add	r3, pc
  3498f6: 4619         	mov	r1, r3
  3498f8: f06c f2ba    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c574
  3498fc: 9b01         	ldr	r3, [sp, #0x4]
  3498fe: 3374         	adds	r3, #0x74
  349900: aa02         	add	r2, sp, #0x8
  349902: 3220         	adds	r2, #0x20
  349904: 4610         	mov	r0, r2
  349906: 4619         	mov	r1, r3
  349908: f249 fd24    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249a48
  34990c: ab02         	add	r3, sp, #0x8
  34990e: 3304         	adds	r3, #0x4
  349910: 4618         	mov	r0, r3
  349912: 4bf8         	ldr	r3, [pc, #0x3e0]        @ 0x349cf4 <ItemLibrary::ItemLibrary()+0x9f0>
  349914: 447b         	add	r3, pc
  349916: 4619         	mov	r1, r3
  349918: f06c f2aa    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c554
  34991c: 2300         	movs	r3, #0x0
  34991e: f88d 3020    	strb.w	r3, [sp, #0x20]
  349922: 9b01         	ldr	r3, [sp, #0x4]
  349924: f103 02e4    	add.w	r2, r3, #0xe4
  349928: ab02         	add	r3, sp, #0x8
  34992a: 4610         	mov	r0, r2
  34992c: 4619         	mov	r1, r3
  34992e: f000 fecd    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xd9a
  349932: ab02         	add	r3, sp, #0x8
  349934: 4618         	mov	r0, r3
  349936: 4bf0         	ldr	r3, [pc, #0x3c0]        @ 0x349cf8 <ItemLibrary::ItemLibrary()+0x9f4>
  349938: 447b         	add	r3, pc
  34993a: 4619         	mov	r1, r3
  34993c: f06c f298    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c530
  349940: ab02         	add	r3, sp, #0x8
  349942: 3308         	adds	r3, #0x8
  349944: 4618         	mov	r0, r3
  349946: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x349cfc <ItemLibrary::ItemLibrary()+0x9f8>
  349948: 447b         	add	r3, pc
  34994a: 4619         	mov	r1, r3
  34994c: f06c f290    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c520
  349950: f240 53dc    	movw	r3, #0x5dc
  349954: 9305         	str	r3, [sp, #0x14]
  349956: f04f 0300    	mov.w	r3, #0x0
  34995a: f2c4 13f0    	movt	r3, #0x41f0
  34995e: 9306         	str	r3, [sp, #0x18]
  349960: f04f 4381    	mov.w	r3, #0x40800000
  349964: 9307         	str	r3, [sp, #0x1c]
  349966: ab02         	add	r3, sp, #0x8
  349968: 331c         	adds	r3, #0x1c
  34996a: 4618         	mov	r0, r3
  34996c: 4be4         	ldr	r3, [pc, #0x390]        @ 0x349d00 <ItemLibrary::ItemLibrary()+0x9fc>
  34996e: 447b         	add	r3, pc
  349970: 4619         	mov	r1, r3
  349972: f06c f27d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c4fa
  349976: 9b01         	ldr	r3, [sp, #0x4]
  349978: 3384         	adds	r3, #0x84
  34997a: aa02         	add	r2, sp, #0x8
  34997c: 3220         	adds	r2, #0x20
  34997e: 4610         	mov	r0, r2
  349980: 4619         	mov	r1, r3
  349982: f249 fce7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2499ce
  349986: ab02         	add	r3, sp, #0x8
  349988: 3304         	adds	r3, #0x4
  34998a: 4618         	mov	r0, r3
  34998c: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x349d04 <ItemLibrary::ItemLibrary()+0xa00>
  34998e: 447b         	add	r3, pc
  349990: 4619         	mov	r1, r3
  349992: f06c f26d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c4da
  349996: 2300         	movs	r3, #0x0
  349998: f88d 3020    	strb.w	r3, [sp, #0x20]
  34999c: 9b01         	ldr	r3, [sp, #0x4]
  34999e: f103 02e4    	add.w	r2, r3, #0xe4
  3499a2: ab02         	add	r3, sp, #0x8
  3499a4: 4610         	mov	r0, r2
  3499a6: 4619         	mov	r1, r3
  3499a8: f000 fe90    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xd20
  3499ac: ab02         	add	r3, sp, #0x8
  3499ae: 4618         	mov	r0, r3
  3499b0: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x349d08 <ItemLibrary::ItemLibrary()+0xa04>
  3499b2: 447b         	add	r3, pc
  3499b4: 4619         	mov	r1, r3
  3499b6: f06c f25b    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c4b6
  3499ba: ab02         	add	r3, sp, #0x8
  3499bc: 3308         	adds	r3, #0x8
  3499be: 4618         	mov	r0, r3
  3499c0: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x349d0c <ItemLibrary::ItemLibrary()+0xa08>
  3499c2: 447b         	add	r3, pc
  3499c4: 4619         	mov	r1, r3
  3499c6: f06c f253    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c4a6
  3499ca: f44f 737a    	mov.w	r3, #0x3e8
  3499ce: 9305         	str	r3, [sp, #0x14]
  3499d0: f04f 0300    	mov.w	r3, #0x0
  3499d4: f2c4 13f0    	movt	r3, #0x41f0
  3499d8: 9306         	str	r3, [sp, #0x18]
  3499da: f04f 537e    	mov.w	r3, #0x3f800000
  3499de: 9307         	str	r3, [sp, #0x1c]
  3499e0: ab02         	add	r3, sp, #0x8
  3499e2: 331c         	adds	r3, #0x1c
  3499e4: 4618         	mov	r0, r3
  3499e6: 4bca         	ldr	r3, [pc, #0x328]        @ 0x349d10 <ItemLibrary::ItemLibrary()+0xa0c>
  3499e8: 447b         	add	r3, pc
  3499ea: 4619         	mov	r1, r3
  3499ec: f06c f240    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c480
  3499f0: 9b01         	ldr	r3, [sp, #0x4]
  3499f2: 3394         	adds	r3, #0x94
  3499f4: aa02         	add	r2, sp, #0x8
  3499f6: 3220         	adds	r2, #0x20
  3499f8: 4610         	mov	r0, r2
  3499fa: 4619         	mov	r1, r3
  3499fc: f249 fcaa    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249954
  349a00: ab02         	add	r3, sp, #0x8
  349a02: 3304         	adds	r3, #0x4
  349a04: 4618         	mov	r0, r3
  349a06: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x349d14 <ItemLibrary::ItemLibrary()+0xa10>
  349a08: 447b         	add	r3, pc
  349a0a: 4619         	mov	r1, r3
  349a0c: f06c f230    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c460
  349a10: 2300         	movs	r3, #0x0
  349a12: f88d 3020    	strb.w	r3, [sp, #0x20]
  349a16: 9b01         	ldr	r3, [sp, #0x4]
  349a18: f103 02e4    	add.w	r2, r3, #0xe4
  349a1c: ab02         	add	r3, sp, #0x8
  349a1e: 4610         	mov	r0, r2
  349a20: 4619         	mov	r1, r3
  349a22: f000 fe53    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xca6
  349a26: ab02         	add	r3, sp, #0x8
  349a28: 4618         	mov	r0, r3
  349a2a: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x349d18 <ItemLibrary::ItemLibrary()+0xa14>
  349a2c: 447b         	add	r3, pc
  349a2e: 4619         	mov	r1, r3
  349a30: f06c f21e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c43c
  349a34: ab02         	add	r3, sp, #0x8
  349a36: 3308         	adds	r3, #0x8
  349a38: 4618         	mov	r0, r3
  349a3a: 4bb8         	ldr	r3, [pc, #0x2e0]        @ 0x349d1c <ItemLibrary::ItemLibrary()+0xa18>
  349a3c: 447b         	add	r3, pc
  349a3e: 4619         	mov	r1, r3
  349a40: f06c f216    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c42c
  349a44: f44f 73fa    	mov.w	r3, #0x1f4
  349a48: 9305         	str	r3, [sp, #0x14]
  349a4a: f04f 0300    	mov.w	r3, #0x0
  349a4e: f2c4 13f0    	movt	r3, #0x41f0
  349a52: 9306         	str	r3, [sp, #0x18]
  349a54: f04f 537e    	mov.w	r3, #0x3f800000
  349a58: 9307         	str	r3, [sp, #0x1c]
  349a5a: ab02         	add	r3, sp, #0x8
  349a5c: 331c         	adds	r3, #0x1c
  349a5e: 4618         	mov	r0, r3
  349a60: 4baf         	ldr	r3, [pc, #0x2bc]        @ 0x349d20 <ItemLibrary::ItemLibrary()+0xa1c>
  349a62: 447b         	add	r3, pc
  349a64: 4619         	mov	r1, r3
  349a66: f06c f203    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c406
  349a6a: 9b01         	ldr	r3, [sp, #0x4]
  349a6c: 33a4         	adds	r3, #0xa4
  349a6e: aa02         	add	r2, sp, #0x8
  349a70: 3220         	adds	r2, #0x20
  349a72: 4610         	mov	r0, r2
  349a74: 4619         	mov	r1, r3
  349a76: f249 fc6d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2498da
  349a7a: ab02         	add	r3, sp, #0x8
  349a7c: 3304         	adds	r3, #0x4
  349a7e: 4618         	mov	r0, r3
  349a80: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x349d24 <ItemLibrary::ItemLibrary()+0xa20>
  349a82: 447b         	add	r3, pc
  349a84: 4619         	mov	r1, r3
  349a86: f06c f1f3    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c3e6
  349a8a: 2300         	movs	r3, #0x0
  349a8c: f88d 3020    	strb.w	r3, [sp, #0x20]
  349a90: 9b01         	ldr	r3, [sp, #0x4]
  349a92: f103 02e4    	add.w	r2, r3, #0xe4
  349a96: ab02         	add	r3, sp, #0x8
  349a98: 4610         	mov	r0, r2
  349a9a: 4619         	mov	r1, r3
  349a9c: f000 fe16    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xc2c
  349aa0: ab02         	add	r3, sp, #0x8
  349aa2: 4618         	mov	r0, r3
  349aa4: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x349d28 <ItemLibrary::ItemLibrary()+0xa24>
  349aa6: 447b         	add	r3, pc
  349aa8: 4619         	mov	r1, r3
  349aaa: f06c f1e1    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c3c2
  349aae: ab02         	add	r3, sp, #0x8
  349ab0: 3308         	adds	r3, #0x8
  349ab2: 4618         	mov	r0, r3
  349ab4: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x349d2c <ItemLibrary::ItemLibrary()+0xa28>
  349ab6: 447b         	add	r3, pc
  349ab8: 4619         	mov	r1, r3
  349aba: f06c f1d9    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c3b2
  349abe: f44f 737a    	mov.w	r3, #0x3e8
  349ac2: 9305         	str	r3, [sp, #0x14]
  349ac4: f04f 0300    	mov.w	r3, #0x0
  349ac8: f2c4 13f0    	movt	r3, #0x41f0
  349acc: 9306         	str	r3, [sp, #0x18]
  349ace: f04f 537e    	mov.w	r3, #0x3f800000
  349ad2: 9307         	str	r3, [sp, #0x1c]
  349ad4: ab02         	add	r3, sp, #0x8
  349ad6: 331c         	adds	r3, #0x1c
  349ad8: 4618         	mov	r0, r3
  349ada: 4b95         	ldr	r3, [pc, #0x254]        @ 0x349d30 <ItemLibrary::ItemLibrary()+0xa2c>
  349adc: 447b         	add	r3, pc
  349ade: 4619         	mov	r1, r3
  349ae0: f06c f1c6    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c38c
  349ae4: 9b01         	ldr	r3, [sp, #0x4]
  349ae6: 33b4         	adds	r3, #0xb4
  349ae8: aa02         	add	r2, sp, #0x8
  349aea: 3220         	adds	r2, #0x20
  349aec: 4610         	mov	r0, r2
  349aee: 4619         	mov	r1, r3
  349af0: f249 fc30    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x249860
  349af4: ab02         	add	r3, sp, #0x8
  349af6: 3304         	adds	r3, #0x4
  349af8: 4618         	mov	r0, r3
  349afa: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x349d34 <ItemLibrary::ItemLibrary()+0xa30>
  349afc: 447b         	add	r3, pc
  349afe: 4619         	mov	r1, r3
  349b00: f06c f1b6    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c36c
  349b04: 2300         	movs	r3, #0x0
  349b06: f88d 3020    	strb.w	r3, [sp, #0x20]
  349b0a: 9b01         	ldr	r3, [sp, #0x4]
  349b0c: f103 02e4    	add.w	r2, r3, #0xe4
  349b10: ab02         	add	r3, sp, #0x8
  349b12: 4610         	mov	r0, r2
  349b14: 4619         	mov	r1, r3
  349b16: f000 fdd9    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xbb2
  349b1a: ab02         	add	r3, sp, #0x8
  349b1c: 4618         	mov	r0, r3
  349b1e: 4b86         	ldr	r3, [pc, #0x218]        @ 0x349d38 <ItemLibrary::ItemLibrary()+0xa34>
  349b20: 447b         	add	r3, pc
  349b22: 4619         	mov	r1, r3
  349b24: f06c f1a4    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c348
  349b28: ab02         	add	r3, sp, #0x8
  349b2a: 3308         	adds	r3, #0x8
  349b2c: 4618         	mov	r0, r3
  349b2e: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x349d3c <ItemLibrary::ItemLibrary()+0xa38>
  349b30: 447b         	add	r3, pc
  349b32: 4619         	mov	r1, r3
  349b34: f06c f19c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c338
  349b38: f240 53dc    	movw	r3, #0x5dc
  349b3c: 9305         	str	r3, [sp, #0x14]
  349b3e: f04f 0300    	mov.w	r3, #0x0
  349b42: f2c4 13f0    	movt	r3, #0x41f0
  349b46: 9306         	str	r3, [sp, #0x18]
  349b48: f04f 537e    	mov.w	r3, #0x3f800000
  349b4c: 9307         	str	r3, [sp, #0x1c]
  349b4e: ab02         	add	r3, sp, #0x8
  349b50: 331c         	adds	r3, #0x1c
  349b52: 4618         	mov	r0, r3
  349b54: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x349d40 <ItemLibrary::ItemLibrary()+0xa3c>
  349b56: 447b         	add	r3, pc
  349b58: 4619         	mov	r1, r3
  349b5a: f06c f189    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c312
  349b5e: 9b01         	ldr	r3, [sp, #0x4]
  349b60: 33c4         	adds	r3, #0xc4
  349b62: aa02         	add	r2, sp, #0x8
  349b64: 3220         	adds	r2, #0x20
  349b66: 4610         	mov	r0, r2
  349b68: 4619         	mov	r1, r3
  349b6a: f249 fbf3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2497e6
  349b6e: ab02         	add	r3, sp, #0x8
  349b70: 3304         	adds	r3, #0x4
  349b72: 4618         	mov	r0, r3
  349b74: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x349d44 <ItemLibrary::ItemLibrary()+0xa40>
  349b76: 447b         	add	r3, pc
  349b78: 4619         	mov	r1, r3
  349b7a: f06c f179    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c2f2
  349b7e: 2300         	movs	r3, #0x0
  349b80: f88d 3020    	strb.w	r3, [sp, #0x20]
  349b84: 9b01         	ldr	r3, [sp, #0x4]
  349b86: f103 02e4    	add.w	r2, r3, #0xe4
  349b8a: ab02         	add	r3, sp, #0x8
  349b8c: 4610         	mov	r0, r2
  349b8e: 4619         	mov	r1, r3
  349b90: f000 fd9c    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xb38
  349b94: ab02         	add	r3, sp, #0x8
  349b96: 4618         	mov	r0, r3
  349b98: 4b6b         	ldr	r3, [pc, #0x1ac]        @ 0x349d48 <ItemLibrary::ItemLibrary()+0xa44>
  349b9a: 447b         	add	r3, pc
  349b9c: 4619         	mov	r1, r3
  349b9e: f06c f167    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c2ce
  349ba2: ab02         	add	r3, sp, #0x8
  349ba4: 3308         	adds	r3, #0x8
  349ba6: 4618         	mov	r0, r3
  349ba8: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x349d4c <ItemLibrary::ItemLibrary()+0xa48>
  349baa: 447b         	add	r3, pc
  349bac: 4619         	mov	r1, r3
  349bae: f06c f15f    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c2be
  349bb2: f44f 73fa    	mov.w	r3, #0x1f4
  349bb6: 9305         	str	r3, [sp, #0x14]
  349bb8: f04f 0300    	mov.w	r3, #0x0
  349bbc: f2c4 13f0    	movt	r3, #0x41f0
  349bc0: 9306         	str	r3, [sp, #0x18]
  349bc2: f04f 537e    	mov.w	r3, #0x3f800000
  349bc6: 9307         	str	r3, [sp, #0x1c]
  349bc8: ab02         	add	r3, sp, #0x8
  349bca: 331c         	adds	r3, #0x1c
  349bcc: 4618         	mov	r0, r3
  349bce: 4b60         	ldr	r3, [pc, #0x180]        @ 0x349d50 <ItemLibrary::ItemLibrary()+0xa4c>
  349bd0: 447b         	add	r3, pc
  349bd2: 4619         	mov	r1, r3
  349bd4: f06c f14c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c298
  349bd8: 9b01         	ldr	r3, [sp, #0x4]
  349bda: 33d4         	adds	r3, #0xd4
  349bdc: aa02         	add	r2, sp, #0x8
  349bde: 3220         	adds	r2, #0x20
  349be0: 4610         	mov	r0, r2
  349be2: 4619         	mov	r1, r3
  349be4: f249 fbb6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x24976c
  349be8: ab02         	add	r3, sp, #0x8
  349bea: 3304         	adds	r3, #0x4
  349bec: 4618         	mov	r0, r3
  349bee: 4b59         	ldr	r3, [pc, #0x164]        @ 0x349d54 <ItemLibrary::ItemLibrary()+0xa50>
  349bf0: 447b         	add	r3, pc
  349bf2: 4619         	mov	r1, r3
  349bf4: f06c f13c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x46c278
  349bf8: 2301         	movs	r3, #0x1
  349bfa: f88d 3020    	strb.w	r3, [sp, #0x20]
  349bfe: 9b01         	ldr	r3, [sp, #0x4]
  349c00: f103 02e4    	add.w	r2, r3, #0xe4
  349c04: ab02         	add	r3, sp, #0x8
  349c06: 4610         	mov	r0, r2
  349c08: 4619         	mov	r1, r3
  349c0a: f000 fd5f    	bl	0x34a6cc <std::vector<ItemInfo, std::allocator<ItemInfo>>::push_back(ItemInfo const&)> @ imm = #0xabe
  349c0e: ab02         	add	r3, sp, #0x8
  349c10: 4618         	mov	r0, r3
  349c12: f7ff fb5b    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x94a
  349c16: 9b01         	ldr	r3, [sp, #0x4]
  349c18: e00b         	b	0x349c32 <ItemLibrary::ItemLibrary()+0x92e> @ imm = #0x16
  349c1a: ab02         	add	r3, sp, #0x8
  349c1c: 4618         	mov	r0, r3
  349c1e: f7ff fb55    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x956
  349c22: e7ff         	b	0x349c24 <ItemLibrary::ItemLibrary()+0x920> @ imm = #-0x2
  349c24: 9b01         	ldr	r3, [sp, #0x4]
  349c26: 33e4         	adds	r3, #0xe4
  349c28: 4618         	mov	r0, r3
  349c2a: f000 fd2f    	bl	0x34a68c <std::vector<ItemInfo, std::allocator<ItemInfo>>::~vector()> @ imm = #0xa5e
  349c2e: f03e f23d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43e47a
  349c32: 4618         	mov	r0, r3
  349c34: b00f         	add	sp, #0x3c
  349c36: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x349c37); words below are literal-pool data ---
  349c38: 96fa         	str	r6, [sp, #0x3e8]
  349c3a: 005e         	lsls	r6, r3, #0x1
  349c3c: db44         	blt	0x349cc8 <ItemLibrary::ItemLibrary()+0x9c4> @ imm = #0x88
  349c3e: ffff 1728    	<unknown>
  349c42: 0048         	lsls	r0, r1, #0x1
  349c44: 1710         	asrs	r0, r2, #0x1c
  349c46: 0048         	lsls	r0, r1, #0x1
  349c48: 16f8         	asrs	r0, r7, #0x1b
  349c4a: 0048         	lsls	r0, r1, #0x1
  349c4c: 16e0         	asrs	r0, r4, #0x1b
  349c4e: 0048         	lsls	r0, r1, #0x1
  349c50: 16c8         	asrs	r0, r1, #0x1b
  349c52: 0048         	lsls	r0, r1, #0x1
  349c54: 16b0         	asrs	r0, r6, #0x1a
  349c56: 0048         	lsls	r0, r1, #0x1
  349c58: 1698         	asrs	r0, r3, #0x1a
  349c5a: 0048         	lsls	r0, r1, #0x1
  349c5c: 1680         	asrs	r0, r0, #0x1a
  349c5e: 0048         	lsls	r0, r1, #0x1
  349c60: 1668         	asrs	r0, r5, #0x19
  349c62: 0048         	lsls	r0, r1, #0x1
  349c64: 1650         	asrs	r0, r2, #0x19
  349c66: 0048         	lsls	r0, r1, #0x1
  349c68: 1638         	asrs	r0, r7, #0x18
  349c6a: 0048         	lsls	r0, r1, #0x1
  349c6c: 1620         	asrs	r0, r4, #0x18
  349c6e: 0048         	lsls	r0, r1, #0x1
  349c70: 1608         	asrs	r0, r1, #0x18
  349c72: 0048         	lsls	r0, r1, #0x1
  349c74: 15f0         	asrs	r0, r6, #0x17
  349c76: 0048         	lsls	r0, r1, #0x1
  349c78: 15d2         	asrs	r2, r2, #0x17
  349c7a: 0048         	lsls	r0, r1, #0x1
  349c7c: 15d0         	asrs	r0, r2, #0x17
  349c7e: 0048         	lsls	r0, r1, #0x1
  349c80: 15ba         	asrs	r2, r7, #0x16
  349c82: 0048         	lsls	r0, r1, #0x1
  349c84: 15a8         	asrs	r0, r5, #0x16
  349c86: 0048         	lsls	r0, r1, #0x1
  349c88: 159e         	asrs	r6, r3, #0x16
  349c8a: 0048         	lsls	r0, r1, #0x1
  349c8c: 159c         	asrs	r4, r3, #0x16
  349c8e: 0048         	lsls	r0, r1, #0x1
  349c90: 1542         	asrs	r2, r0, #0x15
  349c92: 0048         	lsls	r0, r1, #0x1
  349c94: 156c         	asrs	r4, r5, #0x15
  349c96: 0048         	lsls	r0, r1, #0x1
  349c98: 1562         	asrs	r2, r4, #0x15
  349c9a: 0048         	lsls	r0, r1, #0x1
  349c9c: 1560         	asrs	r0, r4, #0x15
  349c9e: 0048         	lsls	r0, r1, #0x1
  349ca0: 14c6         	asrs	r6, r0, #0x13
  349ca2: 0048         	lsls	r0, r1, #0x1
  349ca4: 152c         	asrs	r4, r5, #0x14
  349ca6: 0048         	lsls	r0, r1, #0x1
  349ca8: 1526         	asrs	r6, r4, #0x14
  349caa: 0048         	lsls	r0, r1, #0x1
  349cac: 151c         	asrs	r4, r3, #0x14
  349cae: 0048         	lsls	r0, r1, #0x1
  349cb0: 1446         	asrs	r6, r0, #0x11
  349cb2: 0048         	lsls	r0, r1, #0x1
  349cb4: 14e4         	asrs	r4, r4, #0x13
  349cb6: 0048         	lsls	r0, r1, #0x1
  349cb8: 14ea         	asrs	r2, r5, #0x13
  349cba: 0048         	lsls	r0, r1, #0x1
  349cbc: 14e4         	asrs	r4, r4, #0x13
  349cbe: 0048         	lsls	r0, r1, #0x1
  349cc0: 13c4         	asrs	r4, r0, #0xf
  349cc2: 0048         	lsls	r0, r1, #0x1
  349cc4: 14ae         	asrs	r6, r5, #0x12
  349cc6: 0048         	lsls	r0, r1, #0x1
  349cc8: 14c0         	asrs	r0, r0, #0x13
  349cca: 0048         	lsls	r0, r1, #0x1
  349ccc: 14ba         	asrs	r2, r7, #0x12
  349cce: 0048         	lsls	r0, r1, #0x1
  349cd0: 1342         	asrs	r2, r0, #0xd
  349cd2: 0048         	lsls	r0, r1, #0x1
  349cd4: 147c         	asrs	r4, r7, #0x11
  349cd6: 0048         	lsls	r0, r1, #0x1
  349cd8: 146e         	asrs	r6, r5, #0x11
  349cda: 0048         	lsls	r0, r1, #0x1
  349cdc: 1468         	asrs	r0, r5, #0x11
  349cde: 0048         	lsls	r0, r1, #0x1
  349ce0: 12c0         	asrs	r0, r0, #0xb
  349ce2: 0048         	lsls	r0, r1, #0x1
  349ce4: 142a         	asrs	r2, r5, #0x10
  349ce6: 0048         	lsls	r0, r1, #0x1
  349ce8: 1438         	asrs	r0, r7, #0x10
  349cea: 0048         	lsls	r0, r1, #0x1
  349cec: 1432         	asrs	r2, r6, #0x10
  349cee: 0048         	lsls	r0, r1, #0x1
  349cf0: 1240         	asrs	r0, r0, #0x9
  349cf2: 0048         	lsls	r0, r1, #0x1
  349cf4: 1404         	asrs	r4, r0, #0x10
  349cf6: 0048         	lsls	r0, r1, #0x1
  349cf8: 1418         	asrs	r0, r3, #0x10
  349cfa: 0048         	lsls	r0, r1, #0x1
  349cfc: 1414         	asrs	r4, r2, #0x10
  349cfe: 0048         	lsls	r0, r1, #0x1
  349d00: 11c6         	asrs	r6, r0, #0x7
  349d02: 0048         	lsls	r0, r1, #0x1
  349d04: 13e2         	asrs	r2, r4, #0xf
  349d06: 0048         	lsls	r0, r1, #0x1
  349d08: 13f2         	asrs	r2, r6, #0xf
  349d0a: 0048         	lsls	r0, r1, #0x1
  349d0c: 13ee         	asrs	r6, r5, #0xf
  349d0e: 0048         	lsls	r0, r1, #0x1
  349d10: 114c         	asrs	r4, r1, #0x5
  349d12: 0048         	lsls	r0, r1, #0x1
  349d14: 13b4         	asrs	r4, r6, #0xe
  349d16: 0048         	lsls	r0, r1, #0x1
  349d18: 13b8         	asrs	r0, r7, #0xe
  349d1a: 0048         	lsls	r0, r1, #0x1
  349d1c: 13b0         	asrs	r0, r6, #0xe
  349d1e: 0048         	lsls	r0, r1, #0x1
  349d20: 10d2         	asrs	r2, r2, #0x3
  349d22: 0048         	lsls	r0, r1, #0x1
  349d24: 1376         	asrs	r6, r6, #0xd
  349d26: 0048         	lsls	r0, r1, #0x1
  349d28: 137e         	asrs	r6, r7, #0xd
  349d2a: 0048         	lsls	r0, r1, #0x1
  349d2c: 137e         	asrs	r6, r7, #0xd
  349d2e: 0048         	lsls	r0, r1, #0x1
  349d30: 1058         	asrs	r0, r3, #0x1
  349d32: 0048         	lsls	r0, r1, #0x1
  349d34: 1348         	asrs	r0, r1, #0xd
  349d36: 0048         	lsls	r0, r1, #0x1
  349d38: 1364         	asrs	r4, r4, #0xd
  349d3a: 0048         	lsls	r0, r1, #0x1
  349d3c: 1304         	asrs	r4, r0, #0xc
  349d3e: 0048         	lsls	r0, r1, #0x1
  349d40: 0fde         	lsrs	r6, r3, #0x1f
  349d42: 0048         	lsls	r0, r1, #0x1
  349d44: 131a         	asrs	r2, r3, #0xc
  349d46: 0048         	lsls	r0, r1, #0x1
  349d48: 132a         	asrs	r2, r5, #0xc
  349d4a: 0048         	lsls	r0, r1, #0x1
  349d4c: 1326         	asrs	r6, r4, #0xc
  349d4e: 0048         	lsls	r0, r1, #0x1
  349d50: 0f64         	lsrs	r4, r4, #0x1d
  349d52: 0048         	lsls	r0, r1, #0x1
  349d54: 12ec         	asrs	r4, r5, #0xb
  349d56: 0048         	lsls	r0, r1, #0x1

// ==== ItemLibrary::~ItemLibrary
//      file offset 0x349d58 (= ELF address; Ghidra 0x359d58), 72 bytes, Thumb-2
  349d58: b500         	push	{lr}
  349d5a: b083         	sub	sp, #0xc
  349d5c: 9001         	str	r0, [sp, #0x4]
  349d5e: 490e         	ldr	r1, [pc, #0x38]         @ 0x349d98 <ItemLibrary::~ItemLibrary()+0x40>
  349d60: 4479         	add	r1, pc
  349d62: 9b01         	ldr	r3, [sp, #0x4]
  349d64: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x349d9c <ItemLibrary::~ItemLibrary()+0x44>
  349d66: 588a         	ldr	r2, [r1, r2]
  349d68: 3208         	adds	r2, #0x8
  349d6a: 601a         	str	r2, [r3]
  349d6c: 9b01         	ldr	r3, [sp, #0x4]
  349d6e: 33e4         	adds	r3, #0xe4
  349d70: 4618         	mov	r0, r3
  349d72: f000 fccb    	bl	0x34a70c <std::vector<ItemInfo, std::allocator<ItemInfo>>::clear()> @ imm = #0x996
  349d76: 9b01         	ldr	r3, [sp, #0x4]
  349d78: 33e4         	adds	r3, #0xe4
  349d7a: 4618         	mov	r0, r3
  349d7c: f000 fc86    	bl	0x34a68c <std::vector<ItemInfo, std::allocator<ItemInfo>>::~vector()> @ imm = #0x90c
  349d80: 2300         	movs	r3, #0x0
  349d82: 2b00         	cmp	r3, #0x0
  349d84: d002         	beq	0x349d8c <ItemLibrary::~ItemLibrary()+0x34> @ imm = #0x4
  349d86: 9801         	ldr	r0, [sp, #0x4]
  349d88: f03e f18c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43e318
  349d8c: 9b01         	ldr	r3, [sp, #0x4]
  349d8e: 4618         	mov	r0, r3
  349d90: b003         	add	sp, #0xc
  349d92: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x349d95); words below are literal-pool data ---
  349d96: bf00         	nop
  349d98: 8ca8         	ldrh	r0, [r5, #0x24]
  349d9a: 005e         	lsls	r6, r3, #0x1
  349d9c: db44         	blt	0x349e28 <ItemInfo::operator=(ItemInfo&&)+0x6c> @ imm = #0x88
  349d9e: ffff b500    	<unknown>

// ==== ItemLibrary::~ItemLibrary
//      file offset 0x349da0 (= ELF address; Ghidra 0x359da0), 28 bytes, Thumb-2
  349da0: b500         	push	{lr}
  349da2: b083         	sub	sp, #0xc
  349da4: 9001         	str	r0, [sp, #0x4]
  349da6: 9801         	ldr	r0, [sp, #0x4]
  349da8: f7ff ffd6    	bl	0x349d58 <ItemLibrary::~ItemLibrary()> @ imm = #-0x54
  349dac: 9801         	ldr	r0, [sp, #0x4]
  349dae: f03e f179    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43e2f2
  349db2: 9b01         	ldr	r3, [sp, #0x4]
  349db4: 4618         	mov	r0, r3
  349db6: b003         	add	sp, #0xc
  349db8: f85d fb04    	ldr	pc, [sp], #4

// ==== ItemLibrary::applyItems
//      file offset 0x349e40 (= ELF address; Ghidra 0x359e40), 1236 bytes, Thumb-2
  349e40: b510         	push	{r4, lr}
  349e42: f5ad 7d2a    	sub.w	sp, sp, #0x2a8
  349e46: ab01         	add	r3, sp, #0x4
  349e48: 6018         	str	r0, [r3]
  349e4a: ab0e         	add	r3, sp, #0x38
  349e4c: 4618         	mov	r0, r3
  349e4e: f7ff f999    	bl	0x349184 <ItemInfo::ItemInfo()> @ imm = #-0xcce
  349e52: ab1a         	add	r3, sp, #0x68
  349e54: 4618         	mov	r0, r3
  349e56: 2100         	movs	r1, #0x0
  349e58: f000 fbf4    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x7e8
  349e5c: aa0e         	add	r2, sp, #0x38
  349e5e: ab1a         	add	r3, sp, #0x68
  349e60: 4610         	mov	r0, r2
  349e62: 4619         	mov	r1, r3
  349e64: f7ff ffaa    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0xac
  349e68: ab1a         	add	r3, sp, #0x68
  349e6a: 4618         	mov	r0, r3
  349e6c: f7ff fa2e    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xba4
  349e70: aa02         	add	r2, sp, #0x8
  349e72: ab0e         	add	r3, sp, #0x38
  349e74: 4610         	mov	r0, r2
  349e76: 4619         	mov	r1, r3
  349e78: f06c f336    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c66c
  349e7c: ab02         	add	r3, sp, #0x8
  349e7e: 4618         	mov	r0, r3
  349e80: f002 fa08    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x2410
  349e84: 4603         	mov	r3, r0
  349e86: 461c         	mov	r4, r3
  349e88: ab02         	add	r3, sp, #0x8
  349e8a: 4618         	mov	r0, r3
  349e8c: f06b f542    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46ba84
  349e90: 2c00         	cmp	r4, #0x0
  349e92: d005         	beq	0x349ea0 <ItemLibrary::applyItems(SoldierHostController*)+0x60> @ imm = #0xa
  349e94: ab01         	add	r3, sp, #0x4
  349e96: 681b         	ldr	r3, [r3]
  349e98: f04f 527f    	mov.w	r2, #0x3fc00000
  349e9c: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  349ea0: ab26         	add	r3, sp, #0x98
  349ea2: 4618         	mov	r0, r3
  349ea4: 2101         	movs	r1, #0x1
  349ea6: f000 fbcd    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x79a
  349eaa: aa0e         	add	r2, sp, #0x38
  349eac: ab26         	add	r3, sp, #0x98
  349eae: 4610         	mov	r0, r2
  349eb0: 4619         	mov	r1, r3
  349eb2: f7ff ff83    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0xfa
  349eb6: ab26         	add	r3, sp, #0x98
  349eb8: 4618         	mov	r0, r3
  349eba: f7ff fa07    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xbf2
  349ebe: aa03         	add	r2, sp, #0xc
  349ec0: ab0e         	add	r3, sp, #0x38
  349ec2: 4610         	mov	r0, r2
  349ec4: 4619         	mov	r1, r3
  349ec6: f06c f30f    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c61e
  349eca: ab03         	add	r3, sp, #0xc
  349ecc: 4618         	mov	r0, r3
  349ece: f002 f9e1    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x23c2
  349ed2: 4603         	mov	r3, r0
  349ed4: 461c         	mov	r4, r3
  349ed6: ab03         	add	r3, sp, #0xc
  349ed8: 4618         	mov	r0, r3
  349eda: f06b f51b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46ba36
  349ede: 2c00         	cmp	r4, #0x0
  349ee0: d005         	beq	0x349eee <ItemLibrary::applyItems(SoldierHostController*)+0xae> @ imm = #0xa
  349ee2: ab01         	add	r3, sp, #0x4
  349ee4: 681b         	ldr	r3, [r3]
  349ee6: f04f 4280    	mov.w	r2, #0x40000000
  349eea: f8c3 21c4    	str.w	r2, [r3, #0x1c4]
  349eee: ab32         	add	r3, sp, #0xc8
  349ef0: 4618         	mov	r0, r3
  349ef2: 2102         	movs	r1, #0x2
  349ef4: f000 fba6    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x74c
  349ef8: aa0e         	add	r2, sp, #0x38
  349efa: ab32         	add	r3, sp, #0xc8
  349efc: 4610         	mov	r0, r2
  349efe: 4619         	mov	r1, r3
  349f00: f7ff ff5c    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x148
  349f04: ab32         	add	r3, sp, #0xc8
  349f06: 4618         	mov	r0, r3
  349f08: f7ff f9e0    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xc40
  349f0c: aa04         	add	r2, sp, #0x10
  349f0e: ab0e         	add	r3, sp, #0x38
  349f10: 4610         	mov	r0, r2
  349f12: 4619         	mov	r1, r3
  349f14: f06c f2e8    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c5d0
  349f18: ab04         	add	r3, sp, #0x10
  349f1a: 4618         	mov	r0, r3
  349f1c: f002 f9ba    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x2374
  349f20: 4603         	mov	r3, r0
  349f22: 461c         	mov	r4, r3
  349f24: ab04         	add	r3, sp, #0x10
  349f26: 4618         	mov	r0, r3
  349f28: f06b f4f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b9e8
  349f2c: 2c00         	cmp	r4, #0x0
  349f2e: d007         	beq	0x349f40 <ItemLibrary::applyItems(SoldierHostController*)+0x100> @ imm = #0xe
  349f30: ab01         	add	r3, sp, #0x4
  349f32: 681b         	ldr	r3, [r3]
  349f34: f64c 42cd    	movw	r2, #0xcccd
  349f38: f6c3 724c    	movt	r2, #0x3f4c
  349f3c: f8c3 21d0    	str.w	r2, [r3, #0x1d0]
  349f40: ab3e         	add	r3, sp, #0xf8
  349f42: 4618         	mov	r0, r3
  349f44: 2103         	movs	r1, #0x3
  349f46: f000 fb7d    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x6fa
  349f4a: aa0e         	add	r2, sp, #0x38
  349f4c: ab3e         	add	r3, sp, #0xf8
  349f4e: 4610         	mov	r0, r2
  349f50: 4619         	mov	r1, r3
  349f52: f7ff ff33    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x19a
  349f56: ab3e         	add	r3, sp, #0xf8
  349f58: 4618         	mov	r0, r3
  349f5a: f7ff f9b7    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xc92
  349f5e: aa05         	add	r2, sp, #0x14
  349f60: ab0e         	add	r3, sp, #0x38
  349f62: 4610         	mov	r0, r2
  349f64: 4619         	mov	r1, r3
  349f66: f06c f2bf    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c57e
  349f6a: ab05         	add	r3, sp, #0x14
  349f6c: 4618         	mov	r0, r3
  349f6e: f002 f991    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x2322
  349f72: 4603         	mov	r3, r0
  349f74: 461c         	mov	r4, r3
  349f76: ab05         	add	r3, sp, #0x14
  349f78: 4618         	mov	r0, r3
  349f7a: f06b f4cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b996
  349f7e: 2c00         	cmp	r4, #0x0
  349f80: d004         	beq	0x349f8c <ItemLibrary::applyItems(SoldierHostController*)+0x14c> @ imm = #0x8
  349f82: ab01         	add	r3, sp, #0x4
  349f84: 681b         	ldr	r3, [r3]
  349f86: 2212         	movs	r2, #0x12
  349f88: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  349f8c: ab4a         	add	r3, sp, #0x128
  349f8e: 4618         	mov	r0, r3
  349f90: 2104         	movs	r1, #0x4
  349f92: f000 fb57    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x6ae
  349f96: aa0e         	add	r2, sp, #0x38
  349f98: ab4a         	add	r3, sp, #0x128
  349f9a: 4610         	mov	r0, r2
  349f9c: 4619         	mov	r1, r3
  349f9e: f7ff ff0d    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x1e6
  349fa2: ab4a         	add	r3, sp, #0x128
  349fa4: 4618         	mov	r0, r3
  349fa6: f7ff f991    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xcde
  349faa: aa06         	add	r2, sp, #0x18
  349fac: ab0e         	add	r3, sp, #0x38
  349fae: 4610         	mov	r0, r2
  349fb0: 4619         	mov	r1, r3
  349fb2: f06c f299    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c532
  349fb6: ab06         	add	r3, sp, #0x18
  349fb8: 4618         	mov	r0, r3
  349fba: f002 f96b    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x22d6
  349fbe: 4603         	mov	r3, r0
  349fc0: 461c         	mov	r4, r3
  349fc2: ab06         	add	r3, sp, #0x18
  349fc4: 4618         	mov	r0, r3
  349fc6: f06b f4a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b94a
  349fca: 2c00         	cmp	r4, #0x0
  349fcc: d007         	beq	0x349fde <ItemLibrary::applyItems(SoldierHostController*)+0x19e> @ imm = #0xe
  349fce: ab01         	add	r3, sp, #0x4
  349fd0: 681b         	ldr	r3, [r3]
  349fd2: f64c 42cd    	movw	r2, #0xcccd
  349fd6: f6c3 724c    	movt	r2, #0x3f4c
  349fda: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  349fde: ab56         	add	r3, sp, #0x158
  349fe0: 4618         	mov	r0, r3
  349fe2: 2105         	movs	r1, #0x5
  349fe4: f000 fb2e    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x65c
  349fe8: aa0e         	add	r2, sp, #0x38
  349fea: ab56         	add	r3, sp, #0x158
  349fec: 4610         	mov	r0, r2
  349fee: 4619         	mov	r1, r3
  349ff0: f7ff fee4    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x238
  349ff4: ab56         	add	r3, sp, #0x158
  349ff6: 4618         	mov	r0, r3
  349ff8: f7ff f968    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xd30
  349ffc: aa07         	add	r2, sp, #0x1c
  349ffe: ab0e         	add	r3, sp, #0x38
  34a000: 4610         	mov	r0, r2
  34a002: 4619         	mov	r1, r3
  34a004: f06c f270    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c4e0
  34a008: ab07         	add	r3, sp, #0x1c
  34a00a: 4618         	mov	r0, r3
  34a00c: f002 f942    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x2284
  34a010: 4603         	mov	r3, r0
  34a012: 461c         	mov	r4, r3
  34a014: ab07         	add	r3, sp, #0x1c
  34a016: 4618         	mov	r0, r3
  34a018: f06b f47c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b8f8
  34a01c: 2c00         	cmp	r4, #0x0
  34a01e: d004         	beq	0x34a02a <ItemLibrary::applyItems(SoldierHostController*)+0x1ea> @ imm = #0x8
  34a020: ab01         	add	r3, sp, #0x4
  34a022: 681b         	ldr	r3, [r3]
  34a024: 2205         	movs	r2, #0x5
  34a026: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  34a02a: ab62         	add	r3, sp, #0x188
  34a02c: 4618         	mov	r0, r3
  34a02e: 2106         	movs	r1, #0x6
  34a030: f000 fb08    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x610
  34a034: aa0e         	add	r2, sp, #0x38
  34a036: ab62         	add	r3, sp, #0x188
  34a038: 4610         	mov	r0, r2
  34a03a: 4619         	mov	r1, r3
  34a03c: f7ff febe    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x284
  34a040: ab62         	add	r3, sp, #0x188
  34a042: 4618         	mov	r0, r3
  34a044: f7ff f942    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xd7c
  34a048: aa08         	add	r2, sp, #0x20
  34a04a: ab0e         	add	r3, sp, #0x38
  34a04c: 4610         	mov	r0, r2
  34a04e: 4619         	mov	r1, r3
  34a050: f06c f24a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c494
  34a054: ab08         	add	r3, sp, #0x20
  34a056: 4618         	mov	r0, r3
  34a058: f002 f91c    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x2238
  34a05c: 4603         	mov	r3, r0
  34a05e: 461c         	mov	r4, r3
  34a060: ab08         	add	r3, sp, #0x20
  34a062: 4618         	mov	r0, r3
  34a064: f06b f456    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b8ac
  34a068: 2c00         	cmp	r4, #0x0
  34a06a: d007         	beq	0x34a07c <ItemLibrary::applyItems(SoldierHostController*)+0x23c> @ imm = #0xe
  34a06c: ab01         	add	r3, sp, #0x4
  34a06e: 681b         	ldr	r3, [r3]
  34a070: f64c 42cd    	movw	r2, #0xcccd
  34a074: f6c3 728c    	movt	r2, #0x3f8c
  34a078: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  34a07c: ab6e         	add	r3, sp, #0x1b8
  34a07e: 4618         	mov	r0, r3
  34a080: 2107         	movs	r1, #0x7
  34a082: f000 fadf    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x5be
  34a086: aa0e         	add	r2, sp, #0x38
  34a088: ab6e         	add	r3, sp, #0x1b8
  34a08a: 4610         	mov	r0, r2
  34a08c: 4619         	mov	r1, r3
  34a08e: f7ff fe95    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x2d6
  34a092: ab6e         	add	r3, sp, #0x1b8
  34a094: 4618         	mov	r0, r3
  34a096: f7ff f919    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xdce
  34a09a: aa09         	add	r2, sp, #0x24
  34a09c: ab0e         	add	r3, sp, #0x38
  34a09e: 4610         	mov	r0, r2
  34a0a0: 4619         	mov	r1, r3
  34a0a2: f06c f221    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c442
  34a0a6: ab09         	add	r3, sp, #0x24
  34a0a8: 4618         	mov	r0, r3
  34a0aa: f002 f8f3    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x21e6
  34a0ae: 4603         	mov	r3, r0
  34a0b0: 461c         	mov	r4, r3
  34a0b2: ab09         	add	r3, sp, #0x24
  34a0b4: 4618         	mov	r0, r3
  34a0b6: f06b f42d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b85a
  34a0ba: 2c00         	cmp	r4, #0x0
  34a0bc: d005         	beq	0x34a0ca <ItemLibrary::applyItems(SoldierHostController*)+0x28a> @ imm = #0xa
  34a0be: ab01         	add	r3, sp, #0x4
  34a0c0: 681b         	ldr	r3, [r3]
  34a0c2: f04f 527a    	mov.w	r2, #0x3e800000
  34a0c6: f8c3 21d4    	str.w	r2, [r3, #0x1d4]
  34a0ca: ab7a         	add	r3, sp, #0x1e8
  34a0cc: 4618         	mov	r0, r3
  34a0ce: 2108         	movs	r1, #0x8
  34a0d0: f000 fab8    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x570
  34a0d4: aa0e         	add	r2, sp, #0x38
  34a0d6: ab7a         	add	r3, sp, #0x1e8
  34a0d8: 4610         	mov	r0, r2
  34a0da: 4619         	mov	r1, r3
  34a0dc: f7ff fe6e    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x324
  34a0e0: ab7a         	add	r3, sp, #0x1e8
  34a0e2: 4618         	mov	r0, r3
  34a0e4: f7ff f8f2    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xe1c
  34a0e8: aa0a         	add	r2, sp, #0x28
  34a0ea: ab0e         	add	r3, sp, #0x38
  34a0ec: 4610         	mov	r0, r2
  34a0ee: 4619         	mov	r1, r3
  34a0f0: f06c f1fa    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c3f4
  34a0f4: ab0a         	add	r3, sp, #0x28
  34a0f6: 4618         	mov	r0, r3
  34a0f8: f002 f8cc    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x2198
  34a0fc: 4603         	mov	r3, r0
  34a0fe: 461c         	mov	r4, r3
  34a100: ab0a         	add	r3, sp, #0x28
  34a102: 4618         	mov	r0, r3
  34a104: f06b f406    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b80c
  34a108: 2c00         	cmp	r4, #0x0
  34a10a: d005         	beq	0x34a118 <ItemLibrary::applyItems(SoldierHostController*)+0x2d8> @ imm = #0xa
  34a10c: ab01         	add	r3, sp, #0x4
  34a10e: 681b         	ldr	r3, [r3]
  34a110: f04f 527a    	mov.w	r2, #0x3e800000
  34a114: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  34a118: ab86         	add	r3, sp, #0x218
  34a11a: 4618         	mov	r0, r3
  34a11c: 210a         	movs	r1, #0xa
  34a11e: f000 fa91    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x522
  34a122: aa0e         	add	r2, sp, #0x38
  34a124: ab86         	add	r3, sp, #0x218
  34a126: 4610         	mov	r0, r2
  34a128: 4619         	mov	r1, r3
  34a12a: f7ff fe47    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x372
  34a12e: ab86         	add	r3, sp, #0x218
  34a130: 4618         	mov	r0, r3
  34a132: f7ff f8cb    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xe6a
  34a136: aa0b         	add	r2, sp, #0x2c
  34a138: ab0e         	add	r3, sp, #0x38
  34a13a: 4610         	mov	r0, r2
  34a13c: 4619         	mov	r1, r3
  34a13e: f06c f1d3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c3a6
  34a142: ab0b         	add	r3, sp, #0x2c
  34a144: 4618         	mov	r0, r3
  34a146: f002 f8a5    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x214a
  34a14a: 4603         	mov	r3, r0
  34a14c: 461c         	mov	r4, r3
  34a14e: ab0b         	add	r3, sp, #0x2c
  34a150: 4618         	mov	r0, r3
  34a152: f06b f3df    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b7be
  34a156: 2c00         	cmp	r4, #0x0
  34a158: d004         	beq	0x34a164 <ItemLibrary::applyItems(SoldierHostController*)+0x324> @ imm = #0x8
  34a15a: ab01         	add	r3, sp, #0x4
  34a15c: 681b         	ldr	r3, [r3]
  34a15e: 2214         	movs	r2, #0x14
  34a160: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  34a164: ab92         	add	r3, sp, #0x248
  34a166: 4618         	mov	r0, r3
  34a168: 210b         	movs	r1, #0xb
  34a16a: f000 fa6b    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x4d6
  34a16e: aa0e         	add	r2, sp, #0x38
  34a170: ab92         	add	r3, sp, #0x248
  34a172: 4610         	mov	r0, r2
  34a174: 4619         	mov	r1, r3
  34a176: f7ff fe21    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x3be
  34a17a: ab92         	add	r3, sp, #0x248
  34a17c: 4618         	mov	r0, r3
  34a17e: f7ff f8a5    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xeb6
  34a182: aa0c         	add	r2, sp, #0x30
  34a184: ab0e         	add	r3, sp, #0x38
  34a186: 4610         	mov	r0, r2
  34a188: 4619         	mov	r1, r3
  34a18a: f06c f1ad    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c35a
  34a18e: ab0c         	add	r3, sp, #0x30
  34a190: 4618         	mov	r0, r3
  34a192: f002 f87f    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x20fe
  34a196: 4603         	mov	r3, r0
  34a198: 461c         	mov	r4, r3
  34a19a: ab0c         	add	r3, sp, #0x30
  34a19c: 4618         	mov	r0, r3
  34a19e: f06b f3b9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b772
  34a1a2: 2c00         	cmp	r4, #0x0
  34a1a4: d007         	beq	0x34a1b6 <ItemLibrary::applyItems(SoldierHostController*)+0x376> @ imm = #0xe
  34a1a6: ab01         	add	r3, sp, #0x4
  34a1a8: 681b         	ldr	r3, [r3]
  34a1aa: f649 129a    	movw	r2, #0x999a
  34a1ae: f6c3 6299    	movt	r2, #0x3e99
  34a1b2: f8c3 21dc    	str.w	r2, [r3, #0x1dc]
  34a1b6: ab9e         	add	r3, sp, #0x278
  34a1b8: 4618         	mov	r0, r3
  34a1ba: 210c         	movs	r1, #0xc
  34a1bc: f000 fa42    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #0x484
  34a1c0: aa0e         	add	r2, sp, #0x38
  34a1c2: ab9e         	add	r3, sp, #0x278
  34a1c4: 4610         	mov	r0, r2
  34a1c6: 4619         	mov	r1, r3
  34a1c8: f7ff fdf8    	bl	0x349dbc <ItemInfo::operator=(ItemInfo&&)> @ imm = #-0x410
  34a1cc: ab9e         	add	r3, sp, #0x278
  34a1ce: 4618         	mov	r0, r3
  34a1d0: f7ff f87c    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf08
  34a1d4: aa0d         	add	r2, sp, #0x34
  34a1d6: ab0e         	add	r3, sp, #0x38
  34a1d8: 4610         	mov	r0, r2
  34a1da: 4619         	mov	r1, r3
  34a1dc: f06c f184    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46c308
  34a1e0: ab0d         	add	r3, sp, #0x34
  34a1e2: 4618         	mov	r0, r3
  34a1e4: f002 f856    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x20ac
  34a1e8: 4603         	mov	r3, r0
  34a1ea: 461c         	mov	r4, r3
  34a1ec: ab0d         	add	r3, sp, #0x34
  34a1ee: 4618         	mov	r0, r3
  34a1f0: f06b f390    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b720
  34a1f4: 2c00         	cmp	r4, #0x0
  34a1f6: d007         	beq	0x34a208 <ItemLibrary::applyItems(SoldierHostController*)+0x3c8> @ imm = #0xe
  34a1f8: ab01         	add	r3, sp, #0x4
  34a1fa: 681b         	ldr	r3, [r3]
  34a1fc: f649 129a    	movw	r2, #0x999a
  34a200: f6c3 6299    	movt	r2, #0x3e99
  34a204: f8c3 21e0    	str.w	r2, [r3, #0x1e0]
  34a208: ab0e         	add	r3, sp, #0x38
  34a20a: 4618         	mov	r0, r3
  34a20c: f7ff f85e    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf44
  34a210: e07d         	b	0x34a30e <ItemLibrary::applyItems(SoldierHostController*)+0x4ce> @ imm = #0xfa
  34a212: ab1a         	add	r3, sp, #0x68
  34a214: 4618         	mov	r0, r3
  34a216: f7ff f859    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf4e
  34a21a: e072         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xe4
  34a21c: ab02         	add	r3, sp, #0x8
  34a21e: 4618         	mov	r0, r3
  34a220: f06b f378    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b6f0
  34a224: e06d         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xda
  34a226: ab26         	add	r3, sp, #0x98
  34a228: 4618         	mov	r0, r3
  34a22a: f7ff f84f    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf62
  34a22e: e068         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xd0
  34a230: ab03         	add	r3, sp, #0xc
  34a232: 4618         	mov	r0, r3
  34a234: f06b f36e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b6dc
  34a238: e063         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xc6
  34a23a: ab32         	add	r3, sp, #0xc8
  34a23c: 4618         	mov	r0, r3
  34a23e: f7ff f845    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf76
  34a242: e05e         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xbc
  34a244: ab04         	add	r3, sp, #0x10
  34a246: 4618         	mov	r0, r3
  34a248: f06b f364    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b6c8
  34a24c: e059         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xb2
  34a24e: ab3e         	add	r3, sp, #0xf8
  34a250: 4618         	mov	r0, r3
  34a252: f7ff f83b    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf8a
  34a256: e054         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0xa8
  34a258: ab05         	add	r3, sp, #0x14
  34a25a: 4618         	mov	r0, r3
  34a25c: f06b f35a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b6b4
  34a260: e04f         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x9e
  34a262: ab4a         	add	r3, sp, #0x128
  34a264: 4618         	mov	r0, r3
  34a266: f7ff f831    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xf9e
  34a26a: e04a         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x94
  34a26c: ab06         	add	r3, sp, #0x18
  34a26e: 4618         	mov	r0, r3
  34a270: f06b f350    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b6a0
  34a274: e045         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x8a
  34a276: ab56         	add	r3, sp, #0x158
  34a278: 4618         	mov	r0, r3
  34a27a: f7ff f827    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xfb2
  34a27e: e040         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x80
  34a280: ab07         	add	r3, sp, #0x1c
  34a282: 4618         	mov	r0, r3
  34a284: f06b f346    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b68c
  34a288: e03b         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x76
  34a28a: ab62         	add	r3, sp, #0x188
  34a28c: 4618         	mov	r0, r3
  34a28e: f7ff f81d    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xfc6
  34a292: e036         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x6c
  34a294: ab08         	add	r3, sp, #0x20
  34a296: 4618         	mov	r0, r3
  34a298: f06b f33c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b678
  34a29c: e031         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x62
  34a29e: ab6e         	add	r3, sp, #0x1b8
  34a2a0: 4618         	mov	r0, r3
  34a2a2: f7ff f813    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xfda
  34a2a6: e02c         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x58
  34a2a8: ab09         	add	r3, sp, #0x24
  34a2aa: 4618         	mov	r0, r3
  34a2ac: f06b f332    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b664
  34a2b0: e027         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x4e
  34a2b2: ab7a         	add	r3, sp, #0x1e8
  34a2b4: 4618         	mov	r0, r3
  34a2b6: f7ff f809    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xfee
  34a2ba: e022         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x44
  34a2bc: ab0a         	add	r3, sp, #0x28
  34a2be: 4618         	mov	r0, r3
  34a2c0: f06b f328    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b650
  34a2c4: e01d         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x3a
  34a2c6: ab86         	add	r3, sp, #0x218
  34a2c8: 4618         	mov	r0, r3
  34a2ca: f7fe ffff    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x1002
  34a2ce: e018         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x30
  34a2d0: ab0b         	add	r3, sp, #0x2c
  34a2d2: 4618         	mov	r0, r3
  34a2d4: f06b f31e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b63c
  34a2d8: e013         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x26
  34a2da: ab92         	add	r3, sp, #0x248
  34a2dc: 4618         	mov	r0, r3
  34a2de: f7fe fff5    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x1016
  34a2e2: e00e         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x1c
  34a2e4: ab0c         	add	r3, sp, #0x30
  34a2e6: 4618         	mov	r0, r3
  34a2e8: f06b f314    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b628
  34a2ec: e009         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x12
  34a2ee: ab9e         	add	r3, sp, #0x278
  34a2f0: 4618         	mov	r0, r3
  34a2f2: f7fe ffeb    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x102a
  34a2f6: e004         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #0x8
  34a2f8: ab0d         	add	r3, sp, #0x34
  34a2fa: 4618         	mov	r0, r3
  34a2fc: f06b f30a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46b614
  34a300: e7ff         	b	0x34a302 <ItemLibrary::applyItems(SoldierHostController*)+0x4c2> @ imm = #-0x2
  34a302: ab0e         	add	r3, sp, #0x38
  34a304: 4618         	mov	r0, r3
  34a306: f7fe ffe1    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x103e
  34a30a: f03d f6cf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43dd9e
  34a30e: f50d 7d2a    	add.w	sp, sp, #0x2a8
  34a312: bd10         	pop	{r4, pc}

// ==== ItemLibrary::getTotalPurchaseAmount
//      file offset 0x34a3cc (= ELF address; Ghidra 0x35a3cc), 236 bytes, Thumb-2
  34a3cc: b510         	push	{r4, lr}
  34a3ce: b096         	sub	sp, #0x58
  34a3d0: 9001         	str	r0, [sp, #0x4]
  34a3d2: 9100         	str	r1, [sp]
  34a3d4: 2300         	movs	r3, #0x0
  34a3d6: 9303         	str	r3, [sp, #0xc]
  34a3d8: f7fe ff56    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x1154
  34a3dc: 4603         	mov	r3, r0
  34a3de: 33e4         	adds	r3, #0xe4
  34a3e0: aa07         	add	r2, sp, #0x1c
  34a3e2: 4610         	mov	r0, r2
  34a3e4: 4619         	mov	r1, r3
  34a3e6: f000 f99d    	bl	0x34a724 <std::vector<ItemInfo, std::allocator<ItemInfo>>::vector(std::vector<ItemInfo, std::allocator<ItemInfo>> const&)> @ imm = #0x33a
  34a3ea: 2300         	movs	r3, #0x0
  34a3ec: 9304         	str	r3, [sp, #0x10]
  34a3ee: e041         	b	0x34a474 <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0xa8> @ imm = #0x82
  34a3f0: 9b04         	ldr	r3, [sp, #0x10]
  34a3f2: aa07         	add	r2, sp, #0x1c
  34a3f4: 4610         	mov	r0, r2
  34a3f6: 4619         	mov	r1, r3
  34a3f8: f000 f9ec    	bl	0x34a7d4 <std::vector<ItemInfo, std::allocator<ItemInfo>>::operator[](unsigned int)> @ imm = #0x3d8
  34a3fc: 4603         	mov	r3, r0
  34a3fe: aa0a         	add	r2, sp, #0x28
  34a400: 4610         	mov	r0, r2
  34a402: 4619         	mov	r1, r3
  34a404: f7ff ff86    	bl	0x34a314 <ItemInfo::ItemInfo(ItemInfo const&)> @ imm = #-0xf4
  34a408: 2300         	movs	r3, #0x0
  34a40a: 9305         	str	r3, [sp, #0x14]
  34a40c: e01f         	b	0x34a44e <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0x82> @ imm = #0x3e
  34a40e: 9b05         	ldr	r3, [sp, #0x14]
  34a410: 9800         	ldr	r0, [sp]
  34a412: 4619         	mov	r1, r3
  34a414: f24f fe84    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x24fd08
  34a418: 4603         	mov	r3, r0
  34a41a: 9306         	str	r3, [sp, #0x18]
  34a41c: 9806         	ldr	r0, [sp, #0x18]
  34a41e: f24f fa83    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x24f506
  34a422: 4603         	mov	r3, r0
  34a424: aa0a         	add	r2, sp, #0x28
  34a426: 4610         	mov	r0, r2
  34a428: 4619         	mov	r1, r3
  34a42a: f06b f17b    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x46b2f6
  34a42e: 4603         	mov	r3, r0
  34a430: 2b00         	cmp	r3, #0x0
  34a432: bf14         	ite	ne
  34a434: 2300         	movne	r3, #0x0
  34a436: 2301         	moveq	r3, #0x1
  34a438: b2db         	uxtb	r3, r3
  34a43a: 2b00         	cmp	r3, #0x0
  34a43c: d004         	beq	0x34a448 <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0x7c> @ imm = #0x8
  34a43e: 9b0d         	ldr	r3, [sp, #0x34]
  34a440: 9a03         	ldr	r2, [sp, #0xc]
  34a442: 4413         	add	r3, r2
  34a444: 9303         	str	r3, [sp, #0xc]
  34a446: e00e         	b	0x34a466 <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0x9a> @ imm = #0x1c
  34a448: 9b05         	ldr	r3, [sp, #0x14]
  34a44a: 3301         	adds	r3, #0x1
  34a44c: 9305         	str	r3, [sp, #0x14]
  34a44e: 9c05         	ldr	r4, [sp, #0x14]
  34a450: 9800         	ldr	r0, [sp]
  34a452: f24f fe45    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x24fc8a
  34a456: 4603         	mov	r3, r0
  34a458: 429c         	cmp	r4, r3
  34a45a: bf2c         	ite	hs
  34a45c: 2300         	movhs	r3, #0x0
  34a45e: 2301         	movlo	r3, #0x1
  34a460: b2db         	uxtb	r3, r3
  34a462: 2b00         	cmp	r3, #0x0
  34a464: d1d3         	bne	0x34a40e <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0x42> @ imm = #-0x5a
  34a466: ab0a         	add	r3, sp, #0x28
  34a468: 4618         	mov	r0, r3
  34a46a: f7fe ff2f    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x11a2
  34a46e: 9b04         	ldr	r3, [sp, #0x10]
  34a470: 3301         	adds	r3, #0x1
  34a472: 9304         	str	r3, [sp, #0x10]
  34a474: 9c04         	ldr	r4, [sp, #0x10]
  34a476: ab07         	add	r3, sp, #0x1c
  34a478: 4618         	mov	r0, r3
  34a47a: f000 f999    	bl	0x34a7b0 <std::vector<ItemInfo, std::allocator<ItemInfo>>::size() const> @ imm = #0x332
  34a47e: 4603         	mov	r3, r0
  34a480: 429c         	cmp	r4, r3
  34a482: bf2c         	ite	hs
  34a484: 2300         	movhs	r3, #0x0
  34a486: 2301         	movlo	r3, #0x1
  34a488: b2db         	uxtb	r3, r3
  34a48a: 2b00         	cmp	r3, #0x0
  34a48c: d1b0         	bne	0x34a3f0 <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0x24> @ imm = #-0xa0
  34a48e: 9c03         	ldr	r4, [sp, #0xc]
  34a490: ab07         	add	r3, sp, #0x1c
  34a492: 4618         	mov	r0, r3
  34a494: f000 f8fa    	bl	0x34a68c <std::vector<ItemInfo, std::allocator<ItemInfo>>::~vector()> @ imm = #0x1f4
  34a498: 4623         	mov	r3, r4
  34a49a: e00a         	b	0x34a4b2 <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0xe6> @ imm = #0x14
  34a49c: ab0a         	add	r3, sp, #0x28
  34a49e: 4618         	mov	r0, r3
  34a4a0: f7fe ff14    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x11d8
  34a4a4: e7ff         	b	0x34a4a6 <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)+0xda> @ imm = #-0x2
  34a4a6: ab07         	add	r3, sp, #0x1c
  34a4a8: 4618         	mov	r0, r3
  34a4aa: f000 f8ef    	bl	0x34a68c <std::vector<ItemInfo, std::allocator<ItemInfo>>::~vector()> @ imm = #0x1de
  34a4ae: f03d f5fd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43dbfa
  34a4b2: 4618         	mov	r0, r3
  34a4b4: b016         	add	sp, #0x58
  34a4b6: bd10         	pop	{r4, pc}

// ==== ItemLibrary::getItemInfoByName
//      file offset 0x34a568 (= ELF address; Ghidra 0x35a568), 220 bytes, Thumb-2
  34a568: b510         	push	{r4, lr}
  34a56a: b092         	sub	sp, #0x48
  34a56c: 9001         	str	r0, [sp, #0x4]
  34a56e: 9100         	str	r1, [sp]
  34a570: f7fe fe8a    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x12ec
  34a574: 4603         	mov	r3, r0
  34a576: 33e4         	adds	r3, #0xe4
  34a578: aa03         	add	r2, sp, #0xc
  34a57a: 4610         	mov	r0, r2
  34a57c: 4619         	mov	r1, r3
  34a57e: f000 f8d1    	bl	0x34a724 <std::vector<ItemInfo, std::allocator<ItemInfo>>::vector(std::vector<ItemInfo, std::allocator<ItemInfo>> const&)> @ imm = #0x1a2
  34a582: 2300         	movs	r3, #0x0
  34a584: 9302         	str	r3, [sp, #0x8]
  34a586: e02a         	b	0x34a5de <ItemLibrary::getItemInfoByName(std::string)+0x76> @ imm = #0x54
  34a588: 9b02         	ldr	r3, [sp, #0x8]
  34a58a: aa03         	add	r2, sp, #0xc
  34a58c: 4610         	mov	r0, r2
  34a58e: 4619         	mov	r1, r3
  34a590: f000 f920    	bl	0x34a7d4 <std::vector<ItemInfo, std::allocator<ItemInfo>>::operator[](unsigned int)> @ imm = #0x240
  34a594: 4603         	mov	r3, r0
  34a596: aa06         	add	r2, sp, #0x18
  34a598: 4610         	mov	r0, r2
  34a59a: 4619         	mov	r1, r3
  34a59c: f7ff feba    	bl	0x34a314 <ItemInfo::ItemInfo(ItemInfo const&)> @ imm = #-0x28c
  34a5a0: ab06         	add	r3, sp, #0x18
  34a5a2: 4618         	mov	r0, r3
  34a5a4: 9900         	ldr	r1, [sp]
  34a5a6: f06b f069    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x46b0d2
  34a5aa: 4603         	mov	r3, r0
  34a5ac: 2b00         	cmp	r3, #0x0
  34a5ae: bf14         	ite	ne
  34a5b0: 2300         	movne	r3, #0x0
  34a5b2: 2301         	moveq	r3, #0x1
  34a5b4: b2db         	uxtb	r3, r3
  34a5b6: 2b00         	cmp	r3, #0x0
  34a5b8: d006         	beq	0x34a5c8 <ItemLibrary::getItemInfoByName(std::string)+0x60> @ imm = #0xc
  34a5ba: ab06         	add	r3, sp, #0x18
  34a5bc: 9801         	ldr	r0, [sp, #0x4]
  34a5be: 4619         	mov	r1, r3
  34a5c0: f7ff ff7a    	bl	0x34a4b8 <ItemInfo::ItemInfo(ItemInfo&&)> @ imm = #-0x10c
  34a5c4: 2400         	movs	r4, #0x0
  34a5c6: e000         	b	0x34a5ca <ItemLibrary::getItemInfoByName(std::string)+0x62> @ imm = #0x0
  34a5c8: 2401         	movs	r4, #0x1
  34a5ca: ab06         	add	r3, sp, #0x18
  34a5cc: 4618         	mov	r0, r3
  34a5ce: f7fe fe7d    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x1306
  34a5d2: 2c01         	cmp	r4, #0x1
  34a5d4: d11e         	bne	0x34a614 <ItemLibrary::getItemInfoByName(std::string)+0xac> @ imm = #0x3c
  34a5d6: bf00         	nop
  34a5d8: 9b02         	ldr	r3, [sp, #0x8]
  34a5da: 3301         	adds	r3, #0x1
  34a5dc: 9302         	str	r3, [sp, #0x8]
  34a5de: 9c02         	ldr	r4, [sp, #0x8]
  34a5e0: ab03         	add	r3, sp, #0xc
  34a5e2: 4618         	mov	r0, r3
  34a5e4: f000 f8e4    	bl	0x34a7b0 <std::vector<ItemInfo, std::allocator<ItemInfo>>::size() const> @ imm = #0x1c8
  34a5e8: 4603         	mov	r3, r0
  34a5ea: 429c         	cmp	r4, r3
  34a5ec: bf2c         	ite	hs
  34a5ee: 2300         	movhs	r3, #0x0
  34a5f0: 2301         	movlo	r3, #0x1
  34a5f2: b2db         	uxtb	r3, r3
  34a5f4: 2b00         	cmp	r3, #0x0
  34a5f6: d1c7         	bne	0x34a588 <ItemLibrary::getItemInfoByName(std::string)+0x20> @ imm = #-0x72
  34a5f8: ab06         	add	r3, sp, #0x18
  34a5fa: 4618         	mov	r0, r3
  34a5fc: f7fe fdc2    	bl	0x349184 <ItemInfo::ItemInfo()> @ imm = #-0x147c
  34a600: ab06         	add	r3, sp, #0x18
  34a602: 9801         	ldr	r0, [sp, #0x4]
  34a604: 4619         	mov	r1, r3
  34a606: f7ff ff57    	bl	0x34a4b8 <ItemInfo::ItemInfo(ItemInfo&&)> @ imm = #-0x152
  34a60a: bf00         	nop
  34a60c: ab06         	add	r3, sp, #0x18
  34a60e: 4618         	mov	r0, r3
  34a610: f7fe fe5c    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x1348
  34a614: ab03         	add	r3, sp, #0xc
  34a616: 4618         	mov	r0, r3
  34a618: f000 f838    	bl	0x34a68c <std::vector<ItemInfo, std::allocator<ItemInfo>>::~vector()> @ imm = #0x70
  34a61c: e00f         	b	0x34a63e <ItemLibrary::getItemInfoByName(std::string)+0xd6> @ imm = #0x1e
  34a61e: ab06         	add	r3, sp, #0x18
  34a620: 4618         	mov	r0, r3
  34a622: f7fe fe53    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x135a
  34a626: e004         	b	0x34a632 <ItemLibrary::getItemInfoByName(std::string)+0xca> @ imm = #0x8
  34a628: ab06         	add	r3, sp, #0x18
  34a62a: 4618         	mov	r0, r3
  34a62c: f7fe fe4e    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0x1364
  34a630: e7ff         	b	0x34a632 <ItemLibrary::getItemInfoByName(std::string)+0xca> @ imm = #-0x2
  34a632: ab03         	add	r3, sp, #0xc
  34a634: 4618         	mov	r0, r3
  34a636: f000 f829    	bl	0x34a68c <std::vector<ItemInfo, std::allocator<ItemInfo>>::~vector()> @ imm = #0x52
  34a63a: f03d f537    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43da6e
  34a63e: 9801         	ldr	r0, [sp, #0x4]
  34a640: b012         	add	sp, #0x48
  34a642: bd10         	pop	{r4, pc}

// ==== ItemLibrary::getItemInfoById
//      file offset 0x34a644 (= ELF address; Ghidra 0x35a644), 46 bytes, Thumb-2
  34a644: b500         	push	{lr}
  34a646: b083         	sub	sp, #0xc
  34a648: 9001         	str	r0, [sp, #0x4]
  34a64a: 9100         	str	r1, [sp]
  34a64c: f7fe fe1c    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x13c8
  34a650: 4603         	mov	r3, r0
  34a652: f103 02e4    	add.w	r2, r3, #0xe4
  34a656: 9b00         	ldr	r3, [sp]
  34a658: 4610         	mov	r0, r2
  34a65a: 4619         	mov	r1, r3
  34a65c: f000 f8ba    	bl	0x34a7d4 <std::vector<ItemInfo, std::allocator<ItemInfo>>::operator[](unsigned int)> @ imm = #0x174
  34a660: 4603         	mov	r3, r0
  34a662: 9801         	ldr	r0, [sp, #0x4]
  34a664: 4619         	mov	r1, r3
  34a666: f7ff fe55    	bl	0x34a314 <ItemInfo::ItemInfo(ItemInfo const&)> @ imm = #-0x356
  34a66a: 9801         	ldr	r0, [sp, #0x4]
  34a66c: b003         	add	sp, #0xc
  34a66e: f85d fb04    	ldr	pc, [sp], #4
