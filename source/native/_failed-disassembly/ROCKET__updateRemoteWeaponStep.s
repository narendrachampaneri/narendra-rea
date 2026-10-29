// ROCKET::updateRemoteWeaponStep  ghidra=0x3cbca8-0x3cbe7d  elf=0x3bbca8-0x3bbe7d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3bbca8:      	push	{r4, r5, lr}
  3bbcaa:      	sub	sp, #0x74
  3bbcac:      	str	r0, [sp, #0x4]
  3bbcae:      	str	r1, [sp]
  3bbcb0:      	ldr	r3, [sp, #0x4]
  3bbcb2:      	vldr	s14, [r3, #400]
  3bbcb6:      	vldr	s15, [sp]
  3bbcba:      	vadd.f32	s15, s14, s15
  3bbcbe:      	ldr	r3, [sp, #0x4]
  3bbcc0:      	vstr	s15, [r3, #400]
  3bbcc4:      	ldr	r3, [sp, #0x4]
  3bbcc6:      	vldr	s14, [r3, #276]
  3bbcca:      	vldr	s15, [sp]
  3bbcce:      	vadd.f32	s15, s14, s15
  3bbcd2:      	ldr	r3, [sp, #0x4]
  3bbcd4:      	vstr	s15, [r3, #276]
  3bbcd8:      	ldr	r3, [sp, #0x4]
  3bbcda:      	ldr.w	r3, [r3, #0xe8]
  3bbcde:      	vldr	d7, [r3, #40]
  3bbce2:      	vcvt.f32.f64	s13, d7
  3bbce6:      	ldr	r3, [sp, #0x4]
  3bbce8:      	ldr.w	r3, [r3, #0xe8]
  3bbcec:      	vldr	d7, [r3, #48]
  3bbcf0:      	vcvt.f32.f64	s15, d7
  3bbcf4:      	add	r3, sp, #0x50
  3bbcf6:      	mov	r0, r3
  3bbcf8:      	vmov	r1, s13
  3bbcfc:      	vmov	r2, s15
  3bbd00:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1d6fec
  3bbd04:      	ldr	r3, [sp, #0x4]
  3bbd06:      	ldr	r3, [r3]
  3bbd08:      	adds	r3, #0x50
  3bbd0a:      	ldr	r3, [r3]
  3bbd0c:      	ldr	r2, [sp, #0x4]
  3bbd0e:      	mov	r0, r2
  3bbd10:      	blx	r3
  3bbd12:      	mov	r3, r0
  3bbd14:      	add	r1, sp, #0x60
  3bbd16:      	add	r2, sp, #0x50
  3bbd18:      	mov	r0, r1
  3bbd1a:      	mov	r1, r2
  3bbd1c:      	mov	r2, r3
  3bbd1e:      	bl	0x3ba520 <_ZN10RIOTSHIELD8setRightEb+0x1c8> @ imm = #-0x1802
  3bbd22:      	add	r2, sp, #0x10
  3bbd24:      	add	r3, sp, #0x60
  3bbd26:      	mov	r0, r2
  3bbd28:      	mov	r1, r3
  3bbd2a:      	vmov.f32	s0, #1.250000e-01
  3bbd2e:      	bl	0x3ba540 <_ZN10RIOTSHIELD8setRightEb+0x1e8> @ imm = #-0x17f2
  3bbd32:      	ldr	r3, [sp, #0x4]
  3bbd34:      	ldr	r3, [r3]
  3bbd36:      	adds	r3, #0x50
  3bbd38:      	ldr	r3, [r3]
  3bbd3a:      	ldr	r2, [sp, #0x4]
  3bbd3c:      	mov	r0, r2
  3bbd3e:      	blx	r3
  3bbd40:      	mov	r2, r0
  3bbd42:      	add	r1, sp, #0x18
  3bbd44:      	add	r3, sp, #0x10
  3bbd46:      	mov	r0, r1
  3bbd48:      	mov	r1, r2
  3bbd4a:      	mov	r2, r3
  3bbd4c:      	bl	0x3ba500 <_ZN10RIOTSHIELD8setRightEb+0x1a8> @ imm = #-0x1850
  3bbd50:      	ldr	r3, [sp, #0x4]
  3bbd52:      	ldr	r3, [r3]
  3bbd54:      	adds	r3, #0x4c
  3bbd56:      	ldr	r3, [r3]
  3bbd58:      	ldr	r1, [sp, #0x4]
  3bbd5a:      	add	r2, sp, #0x18
  3bbd5c:      	mov	r0, r1
  3bbd5e:      	mov	r1, r2
  3bbd60:      	blx	r3
  3bbd62:      	ldr	r3, [sp, #0x4]
  3bbd64:      	ldr	r3, [r3]
  3bbd66:      	adds	r3, #0x9c
  3bbd68:      	ldr	r3, [r3]
  3bbd6a:      	ldr	r2, [sp, #0x4]
  3bbd6c:      	mov	r0, r2
  3bbd6e:      	blx	r3
  3bbd70:      	vmov	s14, r0
  3bbd74:      	vldr	s15, [pc, #280]         @ 0x3bbe90 <_ZN6ROCKET22updateRemoteWeaponStepEf+0x1e8>
  3bbd78:      	vmul.f32	s15, s14, s15
  3bbd7c:      	vneg.f32	s15, s15
  3bbd80:      	vstr	s15, [sp, #8]
  3bbd84:      	vldr	s15, [sp, #8]
  3bbd88:      	vcvt.f64.f32	d7, s15
  3bbd8c:      	vmov	r0, r1, d7
  3bbd90:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe5e8c
  3bbd94:      	mov	r4, r0
  3bbd96:      	mov	r5, r1
  3bbd98:      	vldr	s15, [sp, #8]
  3bbd9c:      	vcvt.f64.f32	d7, s15
  3bbda0:      	vmov	r0, r1, d7
  3bbda4:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe5e94
  3bbda8:      	mov	r2, r0
  3bbdaa:      	mov	r3, r1
  3bbdac:      	add	r1, sp, #0x20
  3bbdae:      	mov	r0, r1
  3bbdb0:      	vmov	d0, r4, r5
  3bbdb4:      	vmov	d1, r2, r3
  3bbdb8:      	bl	0x3ba604 <_ZN10RIOTSHIELD8setRightEb+0x2ac> @ imm = #-0x17b8
  3bbdbc:      	ldr	r3, [sp, #0x4]
  3bbdbe:      	ldr.w	r3, [r3, #0xe8]
  3bbdc2:      	ldrd	r2, r3, [r3, #88]
  3bbdc6:      	mov	r0, r2
  3bbdc8:      	mov	r1, r3
  3bbdca:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe5ec4
  3bbdce:      	mov	r4, r0
  3bbdd0:      	mov	r5, r1
  3bbdd2:      	ldr	r3, [sp, #0x4]
  3bbdd4:      	ldr.w	r3, [r3, #0xe8]
  3bbdd8:      	ldrd	r2, r3, [r3, #88]
  3bbddc:      	mov	r0, r2
  3bbdde:      	mov	r1, r3
  3bbde0:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe5ed0
  3bbde4:      	mov	r2, r0
  3bbde6:      	mov	r3, r1
  3bbde8:      	add	r1, sp, #0x30
  3bbdea:      	mov	r0, r1
  3bbdec:      	vmov	d0, r4, r5
  3bbdf0:      	vmov	d1, r2, r3
  3bbdf4:      	bl	0x3ba604 <_ZN10RIOTSHIELD8setRightEb+0x2ac> @ imm = #-0x17f4
  3bbdf8:      	add	r3, sp, #0x50
  3bbdfa:      	vldr	d6, [sp, #32]
  3bbdfe:      	vldr	d7, [sp, #40]
  3bbe02:      	mov	r0, r3
  3bbe04:      	vmov.f64	d0, d6
  3bbe08:      	vmov.f64	d1, d7
  3bbe0c:      	vldr	d2, [pc, #112]          @ 0x3bbe80 <_ZN6ROCKET22updateRemoteWeaponStepEf+0x1d8>
  3bbe10:      	bl	0x3ba684 <_ZN10RIOTSHIELD8setRightEb+0x32c> @ imm = #-0x1790
  3bbe14:      	add	r3, sp, #0x60
  3bbe16:      	vldr	d6, [sp, #48]
  3bbe1a:      	vldr	d7, [sp, #56]
  3bbe1e:      	mov	r0, r3
  3bbe20:      	vmov.f64	d0, d6
  3bbe24:      	vmov.f64	d1, d7
  3bbe28:      	vldr	d2, [pc, #92]           @ 0x3bbe88 <_ZN6ROCKET22updateRemoteWeaponStepEf+0x1e0>
  3bbe2c:      	bl	0x3ba684 <_ZN10RIOTSHIELD8setRightEb+0x32c> @ imm = #-0x17ac
  3bbe30:      	add	r3, sp, #0x40
  3bbe32:      	vldr	d4, [sp, #80]
  3bbe36:      	vldr	d5, [sp, #88]
  3bbe3a:      	vldr	d6, [sp, #96]
  3bbe3e:      	vldr	d7, [sp, #104]
  3bbe42:      	mov	r0, r3
  3bbe44:      	vmov.f64	d0, d4
  3bbe48:      	vmov.f64	d1, d5
  3bbe4c:      	vmov.f64	d2, d6
  3bbe50:      	vmov.f64	d3, d7
  3bbe54:      	bl	0x3ba62c <_ZN10RIOTSHIELD8setRightEb+0x2d4> @ imm = #-0x182c
  3bbe58:      	add	r3, sp, #0x40
  3bbe5a:      	ldm	r3, {r0, r1, r2, r3}
  3bbe5c:      	bl	0x3ba8f0 <_ZN10RIOTSHIELD8setRightEb+0x598> @ imm = #-0x1570
  3bbe60:      	str	r0, [sp, #0xc]
  3bbe62:      	ldr	r3, [sp, #0x4]
  3bbe64:      	ldr	r3, [r3]
  3bbe66:      	adds	r3, #0x98
  3bbe68:      	ldr	r3, [r3]
  3bbe6a:      	ldr	r2, [sp, #0x4]
  3bbe6c:      	mov	r0, r2
  3bbe6e:      	ldr	r1, [sp, #0xc]
  3bbe70:      	blx	r3
  3bbe72:      	ldr	r0, [sp, #0x4]
  3bbe74:      	ldr	r1, [sp]
  3bbe76:      	bl	0x3bbae8 <_ZN6ROCKET13updateEffectsEf> @ imm = #-0x392
  3bbe7a:      	add	sp, #0x74
  3bbe7c:      	pop	{r4, r5, pc}
