// SAW::updateRemoteWeaponStep  ghidra=0x3daf08-0x3db147  elf=0x3caf08-0x3cb147  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3caf08:      	push	{r4, r5, lr}
  3caf0a:      	vpush	{d8}
  3caf0e:      	sub	sp, #0xa4
  3caf10:      	str	r0, [sp, #0x4]
  3caf12:      	str	r1, [sp]
  3caf14:      	ldr	r3, [sp, #0x4]
  3caf16:      	vldr	s14, [r3, #400]
  3caf1a:      	vldr	s15, [sp]
  3caf1e:      	vadd.f32	s15, s14, s15
  3caf22:      	ldr	r3, [sp, #0x4]
  3caf24:      	vstr	s15, [r3, #400]
  3caf28:      	ldr	r3, [sp, #0x4]
  3caf2a:      	vldr	s14, [r3, #276]
  3caf2e:      	vldr	s15, [sp]
  3caf32:      	vadd.f32	s15, s14, s15
  3caf36:      	ldr	r3, [sp, #0x4]
  3caf38:      	vstr	s15, [r3, #276]
  3caf3c:      	ldr	r3, [sp, #0x4]
  3caf3e:      	ldr	r3, [r3]
  3caf40:      	adds	r3, #0x50
  3caf42:      	ldr	r3, [r3]
  3caf44:      	ldr	r2, [sp, #0x4]
  3caf46:      	mov	r0, r2
  3caf48:      	blx	r3
  3caf4a:      	mov	r3, r0
  3caf4c:      	vldr	s15, [r3]
  3caf50:      	vcvt.f64.f32	d8, s15
  3caf54:      	ldr	r3, [sp, #0x4]
  3caf56:      	ldr	r3, [r3]
  3caf58:      	adds	r3, #0x50
  3caf5a:      	ldr	r3, [r3]
  3caf5c:      	ldr	r2, [sp, #0x4]
  3caf5e:      	mov	r0, r2
  3caf60:      	blx	r3
  3caf62:      	mov	r3, r0
  3caf64:      	vldr	s15, [r3, #4]
  3caf68:      	vcvt.f64.f32	d7, s15
  3caf6c:      	add	r3, sp, #0x10
  3caf6e:      	mov	r0, r3
  3caf70:      	vmov.f64	d0, d8
  3caf74:      	vmov.f64	d1, d7
  3caf78:      	bl	0x3c9934 <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x1ec> @ imm = #-0x1648
  3caf7c:      	ldr	r3, [sp, #0x4]
  3caf7e:      	ldr.w	r3, [r3, #0xe8]
  3caf82:      	add	r2, sp, #0x70
  3caf84:      	vldr	d4, [r3, #40]
  3caf88:      	vldr	d5, [r3, #48]
  3caf8c:      	vldr	d6, [sp, #16]
  3caf90:      	vldr	d7, [sp, #24]
  3caf94:      	mov	r0, r2
  3caf96:      	vmov.f64	d0, d4
  3caf9a:      	vmov.f64	d1, d5
  3caf9e:      	vmov.f64	d2, d6
  3cafa2:      	vmov.f64	d3, d7
  3cafa6:      	bl	0x3c99b4 <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x26c> @ imm = #-0x15f6
  3cafaa:      	add	r3, sp, #0x20
  3cafac:      	vldr	d6, [sp, #112]
  3cafb0:      	vldr	d7, [sp, #120]
  3cafb4:      	mov	r0, r3
  3cafb6:      	vmov.f64	d0, d6
  3cafba:      	vmov.f64	d1, d7
  3cafbe:      	vmov.f64	d2, #1.250000e-01
  3cafc2:      	bl	0x3c9a0c <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x2c4> @ imm = #-0x15ba
  3cafc6:      	add	r3, sp, #0x30
  3cafc8:      	vldr	d4, [sp, #16]
  3cafcc:      	vldr	d5, [sp, #24]
  3cafd0:      	vldr	d6, [sp, #32]
  3cafd4:      	vldr	d7, [sp, #40]
  3cafd8:      	mov	r0, r3
  3cafda:      	vmov.f64	d0, d4
  3cafde:      	vmov.f64	d1, d5
  3cafe2:      	vmov.f64	d2, d6
  3cafe6:      	vmov.f64	d3, d7
  3cafea:      	bl	0x3c995c <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x214> @ imm = #-0x1692
  3cafee:      	ldr	r3, [sp, #0x4]
  3caff0:      	ldr	r3, [r3]
  3caff2:      	adds	r3, #0x4c
  3caff4:      	ldr	r4, [r3]
  3caff6:      	ldr	r5, [sp, #0x4]
  3caff8:      	vldr	d7, [sp, #48]
  3caffc:      	vcvt.f32.f64	s13, d7
  3cb000:      	vldr	d7, [sp, #56]
  3cb004:      	vcvt.f32.f64	s15, d7
  3cb008:      	add	r3, sp, #0x90
  3cb00a:      	mov	r0, r3
  3cb00c:      	vmov	r1, s13
  3cb010:      	vmov	r2, s15
  3cb014:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1c7cd8
  3cb018:      	add	r3, sp, #0x90
  3cb01a:      	mov	r0, r5
  3cb01c:      	mov	r1, r3
  3cb01e:      	blx	r4
  3cb020:      	ldr	r3, [sp, #0x4]
  3cb022:      	ldr	r3, [r3]
  3cb024:      	adds	r3, #0x9c
  3cb026:      	ldr	r3, [r3]
  3cb028:      	ldr	r2, [sp, #0x4]
  3cb02a:      	mov	r0, r2
  3cb02c:      	blx	r3
  3cb02e:      	vmov	s14, r0
  3cb032:      	vldr	s15, [pc, #292]         @ 0x3cb158 <_ZN3SAW22updateRemoteWeaponStepEf+0x250>
  3cb036:      	vmul.f32	s15, s14, s15
  3cb03a:      	vneg.f32	s15, s15
  3cb03e:      	vstr	s15, [sp, #8]
  3cb042:      	vldr	s15, [sp, #8]
  3cb046:      	vcvt.f64.f32	d7, s15
  3cb04a:      	vmov	r0, r1, d7
  3cb04e:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xf5148
  3cb052:      	mov	r4, r0
  3cb054:      	mov	r5, r1
  3cb056:      	vldr	s15, [sp, #8]
  3cb05a:      	vcvt.f64.f32	d7, s15
  3cb05e:      	vmov	r0, r1, d7
  3cb062:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xf5150
  3cb066:      	mov	r2, r0
  3cb068:      	mov	r3, r1
  3cb06a:      	add	r1, sp, #0x40
  3cb06c:      	mov	r0, r1
  3cb06e:      	vmov	d0, r4, r5
  3cb072:      	vmov	d1, r2, r3
  3cb076:      	bl	0x3c9934 <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x1ec> @ imm = #-0x1746
  3cb07a:      	ldr	r3, [sp, #0x4]
  3cb07c:      	ldr.w	r3, [r3, #0xe8]
  3cb080:      	ldrd	r2, r3, [r3, #88]
  3cb084:      	mov	r0, r2
  3cb086:      	mov	r1, r3
  3cb088:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xf5184
  3cb08c:      	mov	r4, r0
  3cb08e:      	mov	r5, r1
  3cb090:      	ldr	r3, [sp, #0x4]
  3cb092:      	ldr.w	r3, [r3, #0xe8]
  3cb096:      	ldrd	r2, r3, [r3, #88]
  3cb09a:      	mov	r0, r2
  3cb09c:      	mov	r1, r3
  3cb09e:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xf518c
  3cb0a2:      	mov	r2, r0
  3cb0a4:      	mov	r3, r1
  3cb0a6:      	add	r1, sp, #0x50
  3cb0a8:      	mov	r0, r1
  3cb0aa:      	vmov	d0, r4, r5
  3cb0ae:      	vmov	d1, r2, r3
  3cb0b2:      	bl	0x3c9934 <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x1ec> @ imm = #-0x1782
  3cb0b6:      	add	r3, sp, #0x80
  3cb0b8:      	vldr	d6, [sp, #64]
  3cb0bc:      	vldr	d7, [sp, #72]
  3cb0c0:      	mov	r0, r3
  3cb0c2:      	vmov.f64	d0, d6
  3cb0c6:      	vmov.f64	d1, d7
  3cb0ca:      	vldr	d2, [pc, #124]          @ 0x3cb148 <_ZN3SAW22updateRemoteWeaponStepEf+0x240>
  3cb0ce:      	bl	0x3c9a0c <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x2c4> @ imm = #-0x16c6
  3cb0d2:      	add	r3, sp, #0x90
  3cb0d4:      	vldr	d6, [sp, #80]
  3cb0d8:      	vldr	d7, [sp, #88]
  3cb0dc:      	mov	r0, r3
  3cb0de:      	vmov.f64	d0, d6
  3cb0e2:      	vmov.f64	d1, d7
  3cb0e6:      	vldr	d2, [pc, #104]          @ 0x3cb150 <_ZN3SAW22updateRemoteWeaponStepEf+0x248>
  3cb0ea:      	bl	0x3c9a0c <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x2c4> @ imm = #-0x16e2
  3cb0ee:      	add	r3, sp, #0x60
  3cb0f0:      	vldr	d4, [sp, #128]
  3cb0f4:      	vldr	d5, [sp, #136]
  3cb0f8:      	vldr	d6, [sp, #144]
  3cb0fc:      	vldr	d7, [sp, #152]
  3cb100:      	mov	r0, r3
  3cb102:      	vmov.f64	d0, d4
  3cb106:      	vmov.f64	d1, d5
  3cb10a:      	vmov.f64	d2, d6
  3cb10e:      	vmov.f64	d3, d7
  3cb112:      	bl	0x3c995c <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x214> @ imm = #-0x17ba
  3cb116:      	add	r3, sp, #0x60
  3cb118:      	ldm	r3, {r0, r1, r2, r3}
  3cb11a:      	bl	0x3c9c50 <_ZN14DataStructures3MapIN6RakNet10RakNetGUIDEP12FClientEntryXadL_ZNS_23defaultMapKeyComparisonIS2_EEiRKT_S8_EEE7MapNodeC2Ev+0x508> @ imm = #-0x14ce
  3cb11e:      	str	r0, [sp, #0xc]
  3cb120:      	ldr	r3, [sp, #0x4]
  3cb122:      	ldr	r3, [r3]
  3cb124:      	adds	r3, #0x98
  3cb126:      	ldr	r3, [r3]
  3cb128:      	ldr	r2, [sp, #0x4]
  3cb12a:      	mov	r0, r2
  3cb12c:      	ldr	r1, [sp, #0xc]
  3cb12e:      	blx	r3
  3cb130:      	ldr	r3, [sp, #0x4]
  3cb132:      	ldr	r3, [r3]
  3cb134:      	add.w	r3, r3, #0x328
  3cb138:      	ldr	r3, [r3]
  3cb13a:      	ldr	r0, [sp, #0x4]
  3cb13c:      	ldr	r1, [sp]
  3cb13e:      	blx	r3
  3cb140:      	add	sp, #0xa4
  3cb142:      	vpop	{d8}
  3cb146:      	pop	{r4, r5, pc}
