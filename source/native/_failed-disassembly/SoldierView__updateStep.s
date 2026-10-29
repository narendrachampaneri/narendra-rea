// SoldierView::updateStep  ghidra=0x402b80-0x402e55  elf=0x3f2b80-0x3f2e55  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3f2b80:      	push	{r4, r5, r6, lr}
  3f2b82:      	vpush	{d8}
  3f2b86:      	sub	sp, #0xb8
  3f2b88:      	str	r0, [sp, #0x14]
  3f2b8a:      	str	r1, [sp, #0x10]
  3f2b8c:      	ldr	r3, [sp, #0x14]
  3f2b8e:      	vldr	s14, [r3, #476]
  3f2b92:      	vldr	s15, [sp, #16]
  3f2b96:      	vadd.f32	s15, s14, s15
  3f2b9a:      	ldr	r3, [sp, #0x14]
  3f2b9c:      	vstr	s15, [r3, #476]
  3f2ba0:      	ldr	r3, [sp, #0x14]
  3f2ba2:      	vldr	s16, [r3, #440]
  3f2ba6:      	ldr	r3, [sp, #0x14]
  3f2ba8:      	ldr.w	r3, [r3, #0x124]
  3f2bac:      	ldr	r3, [r3]
  3f2bae:      	adds	r3, #0x9c
  3f2bb0:      	ldr	r3, [r3]
  3f2bb2:      	ldr	r2, [sp, #0x14]
  3f2bb4:      	ldr.w	r2, [r2, #0x124]
  3f2bb8:      	mov	r0, r2
  3f2bba:      	blx	r3
  3f2bbc:      	vmov	s15, r0
  3f2bc0:      	vsub.f32	s15, s16, s15
  3f2bc4:      	vcvt.f64.f32	d7, s15
  3f2bc8:      	vstr	d7, [sp, #40]
  3f2bcc:      	ldr	r3, [sp, #0x14]
  3f2bce:      	ldr.w	r3, [r3, #0x124]
  3f2bd2:      	ldr	r3, [r3]
  3f2bd4:      	adds	r3, #0x9c
  3f2bd6:      	ldr	r3, [r3]
  3f2bd8:      	ldr	r2, [sp, #0x14]
  3f2bda:      	ldr.w	r2, [r2, #0x124]
  3f2bde:      	mov	r0, r2
  3f2be0:      	blx	r3
  3f2be2:      	vmov	s14, r0
  3f2be6:      	vldr	s15, [pc, #664]         @ 0x3f2e80 <_ZN11SoldierView10updateStepEf+0x300>
  3f2bea:      	vmul.f32	s15, s14, s15
  3f2bee:      	vcvt.f64.f32	d7, s15
  3f2bf2:      	vstr	d7, [sp, #48]
  3f2bf6:      	ldr	r3, [sp, #0x14]
  3f2bf8:      	vldr	s14, [r3, #440]
  3f2bfc:      	vldr	s15, [pc, #640]         @ 0x3f2e80 <_ZN11SoldierView10updateStepEf+0x300>
  3f2c00:      	vmul.f32	s15, s14, s15
  3f2c04:      	vcvt.f64.f32	d7, s15
  3f2c08:      	vstr	d7, [sp, #56]
  3f2c0c:      	ldrd	r0, r1, [sp, #48]
  3f2c10:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cd0c
  3f2c14:      	mov	r4, r0
  3f2c16:      	mov	r5, r1
  3f2c18:      	ldrd	r0, r1, [sp, #48]
  3f2c1c:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11cd0c
  3f2c20:      	mov	r2, r0
  3f2c22:      	mov	r3, r1
  3f2c24:      	add	r1, sp, #0x48
  3f2c26:      	mov	r0, r1
  3f2c28:      	vmov	d0, r4, r5
  3f2c2c:      	vmov	d1, r2, r3
  3f2c30:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x1f88
  3f2c34:      	ldrd	r0, r1, [sp, #56]
  3f2c38:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cd34
  3f2c3c:      	mov	r4, r0
  3f2c3e:      	mov	r5, r1
  3f2c40:      	ldrd	r0, r1, [sp, #56]
  3f2c44:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11cd34
  3f2c48:      	mov	r2, r0
  3f2c4a:      	mov	r3, r1
  3f2c4c:      	add	r1, sp, #0x58
  3f2c4e:      	mov	r0, r1
  3f2c50:      	vmov	d0, r4, r5
  3f2c54:      	vmov	d1, r2, r3
  3f2c58:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x1fb0
  3f2c5c:      	vldr	d4, [sp, #72]
  3f2c60:      	vldr	d5, [sp, #80]
  3f2c64:      	vldr	d6, [sp, #88]
  3f2c68:      	vldr	d7, [sp, #96]
  3f2c6c:      	vmov.f64	d0, d4
  3f2c70:      	vmov.f64	d1, d5
  3f2c74:      	vmov.f64	d2, d6
  3f2c78:      	vmov.f64	d3, d7
  3f2c7c:      	bl	0x3f0cd4 <_ZN23SoldierRemoteController9setTeamIdEi+0x2e0> @ imm = #-0x1fac
  3f2c80:      	vstr	d0, [sp, #64]
  3f2c84:      	ldrd	r0, r1, [sp, #56]
  3f2c88:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cd84
  3f2c8c:      	vmov	d6, r0, r1
  3f2c90:      	vldr	d7, [pc, #452]          @ 0x3f2e58 <_ZN11SoldierView10updateStepEf+0x2d8>
  3f2c94:      	vcmpe.f64	d6, d7
  3f2c98:      	vmrs	APSR_nzcv, fpscr
  3f2c9c:      	ite	le
  3f2c9e:      	movle	r3, #0x0
  3f2ca0:      	movgt	r3, #0x1
  3f2ca2:      	uxtb	r3, r3
  3f2ca4:      	eor	r3, r3, #0x1
  3f2ca8:      	uxtb	r3, r3
  3f2caa:      	cmp	r3, #0x0
  3f2cac:      	beq	0x3f2d0c <_ZN11SoldierView10updateStepEf+0x18c> @ imm = #0x5c
  3f2cae:      	ldrd	r0, r1, [sp, #56]
  3f2cb2:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cdac
  3f2cb6:      	vmov	d6, r0, r1
  3f2cba:      	vldr	d7, [pc, #420]          @ 0x3f2e60 <_ZN11SoldierView10updateStepEf+0x2e0>
  3f2cbe:      	vcmpe.f64	d6, d7
  3f2cc2:      	vmrs	APSR_nzcv, fpscr
  3f2cc6:      	ite	pl
  3f2cc8:      	movpl	r3, #0x0
  3f2cca:      	movmi	r3, #0x1
  3f2ccc:      	uxtb	r3, r3
  3f2cce:      	eor	r3, r3, #0x1
  3f2cd2:      	uxtb	r3, r3
  3f2cd4:      	cmp	r3, #0x0
  3f2cd6:      	beq	0x3f2d0c <_ZN11SoldierView10updateStepEf+0x18c> @ imm = #0x32
  3f2cd8:      	ldrd	r0, r1, [sp, #56]
  3f2cdc:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cdd8
  3f2ce0:      	vmov	d6, r0, r1
  3f2ce4:      	vldr	d7, [pc, #368]          @ 0x3f2e58 <_ZN11SoldierView10updateStepEf+0x2d8>
  3f2ce8:      	vcmpe.f64	d6, d7
  3f2cec:      	vmrs	APSR_nzcv, fpscr
  3f2cf0:      	ble	0x3f2cfa <_ZN11SoldierView10updateStepEf+0x17a> @ imm = #0x6
  3f2cf2:      	adr	r3, #356 <_ZN11SoldierView10updateStepEf+0x1cf>
  3f2cf4:      	ldrd	r2, r3, [r3]
  3f2cf8:      	b	0x3f2d06 <_ZN11SoldierView10updateStepEf+0x186> @ imm = #0xa
  3f2cfa:      	ldrd	r0, r1, [sp, #56]
  3f2cfe:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cdf8
  3f2d02:      	mov	r2, r0
  3f2d04:      	mov	r3, r1
  3f2d06:      	vmov	d8, r2, r3
  3f2d0a:      	b	0x3f2d10 <_ZN11SoldierView10updateStepEf+0x190> @ imm = #0x2
  3f2d0c:      	vldr	d8, [pc, #336]          @ 0x3f2e60 <_ZN11SoldierView10updateStepEf+0x2e0>
  3f2d10:      	ldrd	r0, r1, [sp, #56]
  3f2d14:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11ce04
  3f2d18:      	vmov	d6, r0, r1
  3f2d1c:      	vldr	d7, [pc, #328]          @ 0x3f2e68 <_ZN11SoldierView10updateStepEf+0x2e8>
  3f2d20:      	vmul.f64	d7, d6, d7
  3f2d24:      	add	r3, sp, #0x78
  3f2d26:      	mov	r0, r3
  3f2d28:      	vmov.f64	d0, d8
  3f2d2c:      	vmov.f64	d1, d7
  3f2d30:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x2088
  3f2d34:      	add	r3, sp, #0x78
  3f2d36:      	ldm	r3, {r0, r1, r2, r3}
  3f2d38:      	bl	0x3f0d80 <_ZN23SoldierRemoteController9setTeamIdEi+0x38c> @ imm = #-0x1fbc
  3f2d3c:      	str	r0, [sp, #0x20]
  3f2d3e:      	vldr	d7, [sp, #64]
  3f2d42:      	vcmpe.f64	d7, #0
  3f2d46:      	vmrs	APSR_nzcv, fpscr
  3f2d4a:      	bhi.w	0x3f2f22 <_ZN11SoldierView10updateStepEf+0x3a2> @ imm = #0x1d4
  3f2d4e:      	vldr	d7, [sp, #64]
  3f2d52:      	vabs.f64	d6, d7
  3f2d56:      	vldr	d7, [pc, #280]          @ 0x3f2e70 <_ZN11SoldierView10updateStepEf+0x2f0>
  3f2d5a:      	vcmpe.f64	d6, d7
  3f2d5e:      	vmrs	APSR_nzcv, fpscr
  3f2d62:      	ble.w	0x3f2f22 <_ZN11SoldierView10updateStepEf+0x3a2> @ imm = #0x1bc
  3f2d66:      	ldr	r3, [sp, #0x14]
  3f2d68:      	ldr.w	r3, [r3, #0x124]
  3f2d6c:      	ldr	r3, [r3]
  3f2d6e:      	adds	r3, #0x30
  3f2d70:      	ldr	r3, [r3]
  3f2d72:      	ldr	r2, [sp, #0x14]
  3f2d74:      	ldr.w	r2, [r2, #0x124]
  3f2d78:      	ldr	r1, [sp, #0x14]
  3f2d7a:      	vldr	s15, [r1, #464]
  3f2d7e:      	vneg.f32	s15, s15
  3f2d82:      	vmov	r1, s15
  3f2d86:      	mov	r0, r2
  3f2d88:      	blx	r3
  3f2d8a:      	ldr	r3, [sp, #0x14]
  3f2d8c:      	ldr.w	r3, [r3, #0x110]
  3f2d90:      	ldr	r3, [r3]
  3f2d92:      	adds	r3, #0x98
  3f2d94:      	ldr	r3, [r3]
  3f2d96:      	ldr	r2, [sp, #0x14]
  3f2d98:      	ldr.w	r2, [r2, #0x110]
  3f2d9c:      	vldr	d7, [sp, #40]
  3f2da0:      	vneg.f64	d6, d7
  3f2da4:      	vldr	d7, [pc, #208]          @ 0x3f2e78 <_ZN11SoldierView10updateStepEf+0x2f8>
  3f2da8:      	vsub.f64	d6, d6, d7
  3f2dac:      	ldr	r1, [sp, #0x14]
  3f2dae:      	vldr	s15, [r1, #424]
  3f2db2:      	vcvt.f64.f32	d7, s15
  3f2db6:      	vsub.f64	d6, d6, d7
  3f2dba:      	ldr	r1, [sp, #0x14]
  3f2dbc:      	vldr	s15, [r1, #432]
  3f2dc0:      	vcvt.f64.f32	d7, s15
  3f2dc4:      	vsub.f64	d6, d6, d7
  3f2dc8:      	ldr	r1, [sp, #0x14]
  3f2dca:      	vldr	s15, [r1, #444]
  3f2dce:      	vcvt.f64.f32	d7, s15
  3f2dd2:      	vsub.f64	d6, d6, d7
  3f2dd6:      	ldr	r1, [sp, #0x14]
  3f2dd8:      	vldr	s15, [r1, #448]
  3f2ddc:      	vcvt.f64.f32	d7, s15
  3f2de0:      	vsub.f64	d7, d6, d7
  3f2de4:      	vcvt.f32.f64	s15, d7
  3f2de8:      	mov	r0, r2
  3f2dea:      	vmov	r1, s15
  3f2dee:      	blx	r3
  3f2df0:      	ldr	r3, [sp, #0x14]
  3f2df2:      	ldrb.w	r3, [r3, #0x1d4]
  3f2df6:      	cmp	r3, #0x0
  3f2df8:      	bne	0x3f2e0a <_ZN11SoldierView10updateStepEf+0x28a> @ imm = #0xe
  3f2dfa:      	ldr	r3, [sp, #0x14]
  3f2dfc:      	vldr	s15, [r3, #448]
  3f2e00:      	vcmp.f32	s15, #0
  3f2e04:      	vmrs	APSR_nzcv, fpscr
  3f2e08:      	beq	0x3f2e84 <_ZN11SoldierView10updateStepEf+0x304> @ imm = #0x78
  3f2e0a:      	ldr	r3, [sp, #0x14]
  3f2e0c:      	ldr.w	r3, [r3, #0x114]
  3f2e10:      	ldr	r3, [r3]
  3f2e12:      	adds	r3, #0x98
  3f2e14:      	ldr	r3, [r3]
  3f2e16:      	ldr	r2, [sp, #0x14]
  3f2e18:      	ldr.w	r2, [r2, #0x114]
  3f2e1c:      	vldr	d7, [sp, #40]
  3f2e20:      	vneg.f64	d6, d7
  3f2e24:      	vldr	d7, [pc, #80]           @ 0x3f2e78 <_ZN11SoldierView10updateStepEf+0x2f8>
  3f2e28:      	vsub.f64	d6, d6, d7
  3f2e2c:      	ldr	r1, [sp, #0x14]
  3f2e2e:      	vldr	s15, [r1, #428]
  3f2e32:      	vcvt.f64.f32	d7, s15
  3f2e36:      	vsub.f64	d6, d6, d7
  3f2e3a:      	ldr	r1, [sp, #0x14]
  3f2e3c:      	vldr	s15, [r1, #436]
  3f2e40:      	vcvt.f64.f32	d7, s15
  3f2e44:      	vsub.f64	d7, d6, d7
  3f2e48:      	vcvt.f32.f64	s15, d7
  3f2e4c:      	mov	r0, r2
  3f2e4e:      	vmov	r1, s15
  3f2e52:      	blx	r3
  3f2e54:      	b	0x3f2ed8 <_ZN11SoldierView10updateStepEf+0x358> @ imm = #0x80
// SoldierView::updateStep  ghidra=0x402e84-0x4032ad  elf=0x3f2e84-0x3f32ad  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3f2e84:      	ldr	r3, [sp, #0x14]
  3f2e86:      	ldr.w	r3, [r3, #0x114]
  3f2e8a:      	ldr	r3, [r3]
  3f2e8c:      	adds	r3, #0x98
  3f2e8e:      	ldr	r3, [r3]
  3f2e90:      	ldr	r2, [sp, #0x14]
  3f2e92:      	ldr.w	r2, [r2, #0x114]
  3f2e96:      	vldr	s15, [sp, #32]
  3f2e9a:      	vneg.f32	s14, s15
  3f2e9e:      	ldr	r1, [sp, #0x14]
  3f2ea0:      	vldr	s15, [r1, #428]
  3f2ea4:      	vsub.f32	s14, s14, s15
  3f2ea8:      	ldr	r1, [sp, #0x14]
  3f2eaa:      	vldr	s15, [r1, #436]
  3f2eae:      	vsub.f32	s15, s14, s15
  3f2eb2:      	vcvt.f64.f32	d6, s15
  3f2eb6:      	ldr	r1, [sp, #0x14]
  3f2eb8:      	vldr	s15, [r1, #448]
  3f2ebc:      	vcvt.f64.f32	d5, s15
  3f2ec0:      	vmov.f64	d7, #5.000000e-01
  3f2ec4:      	vmul.f64	d7, d5, d7
  3f2ec8:      	vsub.f64	d7, d6, d7
  3f2ecc:      	vcvt.f32.f64	s15, d7
  3f2ed0:      	mov	r0, r2
  3f2ed2:      	vmov	r1, s15
  3f2ed6:      	blx	r3
  3f2ed8:      	ldr	r3, [sp, #0x14]
  3f2eda:      	ldr.w	r3, [r3, #0x120]
  3f2ede:      	ldr	r3, [r3]
  3f2ee0:      	adds	r3, #0x98
  3f2ee2:      	ldr	r3, [r3]
  3f2ee4:      	ldr	r2, [sp, #0x14]
  3f2ee6:      	ldr.w	r2, [r2, #0x120]
  3f2eea:      	vldr	s15, [sp, #32]
  3f2eee:      	vneg.f32	s15, s15
  3f2ef2:      	vmov	r1, s15
  3f2ef6:      	mov	r0, r2
  3f2ef8:      	blx	r3
  3f2efa:      	ldr	r3, [sp, #0x14]
  3f2efc:      	vldr	s14, [r3, #452]
  3f2f00:      	ldr	r3, [sp, #0x14]
  3f2f02:      	vldr	s13, [r3, #408]
  3f2f06:      	vmov.f32	s15, #4.000000e+00
  3f2f0a:      	vdiv.f32	s15, s13, s15
  3f2f0e:      	vadd.f32	s15, s14, s15
  3f2f12:      	ldr	r3, [sp, #0x14]
  3f2f14:      	vstr	s15, [r3, #452]
  3f2f18:      	ldr	r3, [sp, #0x14]
  3f2f1a:      	movs	r2, #0x0
  3f2f1c:      	strb.w	r2, [r3, #0x1cc]
  3f2f20:      	b	0x3f3090 <_ZN11SoldierView10updateStepEf+0x510> @ imm = #0x16c
  3f2f22:      	ldr	r3, [sp, #0x14]
  3f2f24:      	ldr.w	r3, [r3, #0x124]
  3f2f28:      	ldr	r3, [r3]
  3f2f2a:      	adds	r3, #0x30
  3f2f2c:      	ldr	r3, [r3]
  3f2f2e:      	ldr	r2, [sp, #0x14]
  3f2f30:      	ldr.w	r1, [r2, #0x124]
  3f2f34:      	ldr	r2, [sp, #0x14]
  3f2f36:      	ldr.w	r2, [r2, #0x1d0]
  3f2f3a:      	mov	r0, r1
  3f2f3c:      	mov	r1, r2
  3f2f3e:      	blx	r3
  3f2f40:      	ldr	r3, [sp, #0x14]
  3f2f42:      	ldr.w	r3, [r3, #0x110]
  3f2f46:      	ldr	r3, [r3]
  3f2f48:      	adds	r3, #0x98
  3f2f4a:      	ldr	r3, [r3]
  3f2f4c:      	ldr	r2, [sp, #0x14]
  3f2f4e:      	ldr.w	r2, [r2, #0x110]
  3f2f52:      	ldr	r1, [sp, #0x14]
  3f2f54:      	vldr	s15, [r1, #424]
  3f2f58:      	vcvt.f64.f32	d7, s15
  3f2f5c:      	vldr	d6, [sp, #40]
  3f2f60:      	vsub.f64	d6, d6, d7
  3f2f64:      	ldr	r1, [sp, #0x14]
  3f2f66:      	vldr	s15, [r1, #432]
  3f2f6a:      	vcvt.f64.f32	d7, s15
  3f2f6e:      	vsub.f64	d6, d6, d7
  3f2f72:      	ldr	r1, [sp, #0x14]
  3f2f74:      	vldr	s15, [r1, #444]
  3f2f78:      	vcvt.f64.f32	d7, s15
  3f2f7c:      	vsub.f64	d6, d6, d7
  3f2f80:      	ldr	r1, [sp, #0x14]
  3f2f82:      	vldr	s15, [r1, #448]
  3f2f86:      	vcvt.f64.f32	d7, s15
  3f2f8a:      	vsub.f64	d7, d6, d7
  3f2f8e:      	vcvt.f32.f64	s15, d7
  3f2f92:      	mov	r0, r2
  3f2f94:      	vmov	r1, s15
  3f2f98:      	blx	r3
  3f2f9a:      	ldr	r3, [sp, #0x14]
  3f2f9c:      	ldrb.w	r3, [r3, #0x1d4]
  3f2fa0:      	cmp	r3, #0x0
  3f2fa2:      	bne	0x3f2fb4 <_ZN11SoldierView10updateStepEf+0x434> @ imm = #0xe
  3f2fa4:      	ldr	r3, [sp, #0x14]
  3f2fa6:      	vldr	s15, [r3, #448]
  3f2faa:      	vcmp.f32	s15, #0
  3f2fae:      	vmrs	APSR_nzcv, fpscr
  3f2fb2:      	beq	0x3f2ff4 <_ZN11SoldierView10updateStepEf+0x474> @ imm = #0x3e
  3f2fb4:      	ldr	r3, [sp, #0x14]
  3f2fb6:      	ldr.w	r3, [r3, #0x114]
  3f2fba:      	ldr	r3, [r3]
  3f2fbc:      	adds	r3, #0x98
  3f2fbe:      	ldr	r3, [r3]
  3f2fc0:      	ldr	r2, [sp, #0x14]
  3f2fc2:      	ldr.w	r2, [r2, #0x114]
  3f2fc6:      	ldr	r1, [sp, #0x14]
  3f2fc8:      	vldr	s15, [r1, #428]
  3f2fcc:      	vcvt.f64.f32	d7, s15
  3f2fd0:      	vldr	d6, [sp, #40]
  3f2fd4:      	vsub.f64	d6, d6, d7
  3f2fd8:      	ldr	r1, [sp, #0x14]
  3f2fda:      	vldr	s15, [r1, #436]
  3f2fde:      	vcvt.f64.f32	d7, s15
  3f2fe2:      	vsub.f64	d7, d6, d7
  3f2fe6:      	vcvt.f32.f64	s15, d7
  3f2fea:      	mov	r0, r2
  3f2fec:      	vmov	r1, s15
  3f2ff0:      	blx	r3
  3f2ff2:      	b	0x3f3048 <_ZN11SoldierView10updateStepEf+0x4c8> @ imm = #0x52
  3f2ff4:      	ldr	r3, [sp, #0x14]
  3f2ff6:      	ldr.w	r3, [r3, #0x114]
  3f2ffa:      	ldr	r3, [r3]
  3f2ffc:      	adds	r3, #0x98
  3f2ffe:      	ldr	r3, [r3]
  3f3000:      	ldr	r2, [sp, #0x14]
  3f3002:      	ldr.w	r2, [r2, #0x114]
  3f3006:      	vldr	s15, [sp, #32]
  3f300a:      	vneg.f32	s14, s15
  3f300e:      	ldr	r1, [sp, #0x14]
  3f3010:      	vldr	s15, [r1, #428]
  3f3014:      	vsub.f32	s14, s14, s15
  3f3018:      	ldr	r1, [sp, #0x14]
  3f301a:      	vldr	s15, [r1, #436]
  3f301e:      	vsub.f32	s15, s14, s15
  3f3022:      	vcvt.f64.f32	d6, s15
  3f3026:      	ldr	r1, [sp, #0x14]
  3f3028:      	vldr	s15, [r1, #448]
  3f302c:      	vcvt.f64.f32	d5, s15
  3f3030:      	vmov.f64	d7, #5.000000e-01
  3f3034:      	vmul.f64	d7, d5, d7
  3f3038:      	vsub.f64	d7, d6, d7
  3f303c:      	vcvt.f32.f64	s15, d7
  3f3040:      	mov	r0, r2
  3f3042:      	vmov	r1, s15
  3f3046:      	blx	r3
  3f3048:      	ldr	r3, [sp, #0x14]
  3f304a:      	ldr.w	r3, [r3, #0x120]
  3f304e:      	ldr	r3, [r3]
  3f3050:      	adds	r3, #0x98
  3f3052:      	ldr	r3, [r3]
  3f3054:      	ldr	r2, [sp, #0x14]
  3f3056:      	ldr.w	r2, [r2, #0x120]
  3f305a:      	vldr	s15, [sp, #32]
  3f305e:      	vneg.f32	s15, s15
  3f3062:      	vmov	r1, s15
  3f3066:      	mov	r0, r2
  3f3068:      	blx	r3
  3f306a:      	ldr	r3, [sp, #0x14]
  3f306c:      	vldr	s14, [r3, #452]
  3f3070:      	ldr	r3, [sp, #0x14]
  3f3072:      	vldr	s13, [r3, #408]
  3f3076:      	vmov.f32	s15, #4.000000e+00
  3f307a:      	vdiv.f32	s15, s13, s15
  3f307e:      	vsub.f32	s15, s14, s15
  3f3082:      	ldr	r3, [sp, #0x14]
  3f3084:      	vstr	s15, [r3, #452]
  3f3088:      	ldr	r3, [sp, #0x14]
  3f308a:      	movs	r2, #0x1
  3f308c:      	strb.w	r2, [r3, #0x1cc]
  3f3090:      	ldr	r3, [sp, #0x14]
  3f3092:      	vldr	s15, [r3, #452]
  3f3096:      	vcvt.f64.f32	d6, s15
  3f309a:      	vldr	d7, [pc, #532]          @ 0x3f32b0 <_ZN11SoldierView10updateStepEf+0x730>
  3f309e:      	vcmpe.f64	d6, d7
  3f30a2:      	vmrs	APSR_nzcv, fpscr
  3f30a6:      	ble	0x3f30c4 <_ZN11SoldierView10updateStepEf+0x544> @ imm = #0x1a
  3f30a8:      	ldr	r3, [sp, #0x14]
  3f30aa:      	vldr	s15, [r3, #452]
  3f30ae:      	vcvt.f64.f32	d6, s15
  3f30b2:      	vldr	d7, [pc, #508]          @ 0x3f32b0 <_ZN11SoldierView10updateStepEf+0x730>
  3f30b6:      	vsub.f64	d7, d6, d7
  3f30ba:      	vcvt.f32.f64	s15, d7
  3f30be:      	ldr	r3, [sp, #0x14]
  3f30c0:      	vstr	s15, [r3, #452]
  3f30c4:      	ldr	r3, [sp, #0x14]
  3f30c6:      	vldr	s15, [r3, #452]
  3f30ca:      	vcvt.f64.f32	d6, s15
  3f30ce:      	vldr	d7, [pc, #488]          @ 0x3f32b8 <_ZN11SoldierView10updateStepEf+0x738>
  3f30d2:      	vcmpe.f64	d6, d7
  3f30d6:      	vmrs	APSR_nzcv, fpscr
  3f30da:      	bpl	0x3f30f8 <_ZN11SoldierView10updateStepEf+0x578> @ imm = #0x1a
  3f30dc:      	ldr	r3, [sp, #0x14]
  3f30de:      	vldr	s15, [r3, #452]
  3f30e2:      	vcvt.f64.f32	d6, s15
  3f30e6:      	vldr	d7, [pc, #456]          @ 0x3f32b0 <_ZN11SoldierView10updateStepEf+0x730>
  3f30ea:      	vadd.f64	d7, d6, d7
  3f30ee:      	vcvt.f32.f64	s15, d7
  3f30f2:      	ldr	r3, [sp, #0x14]
  3f30f4:      	vstr	s15, [r3, #452]
  3f30f8:      	ldr	r3, [sp, #0x14]
  3f30fa:      	ldrb.w	r3, [r3, #0x1cd]
  3f30fe:      	cmp	r3, #0x0
  3f3100:      	beq	0x3f3168 <_ZN11SoldierView10updateStepEf+0x5e8> @ imm = #0x64
  3f3102:      	ldr	r3, [sp, #0x14]
  3f3104:      	add.w	r2, r3, #0x178
  3f3108:      	ldr	r3, [sp, #0x14]
  3f310a:      	add.w	r3, r3, #0x138
  3f310e:      	mov	r0, r2
  3f3110:      	mov	r1, r3
  3f3112:      	bl	0x592d4c <_ZN7cocos2d7CCPointaSERKS0_> @ imm = #0x19fc36
  3f3116:      	ldr	r3, [sp, #0x14]
  3f3118:      	add.w	r2, r3, #0x180
  3f311c:      	ldr	r3, [sp, #0x14]
  3f311e:      	add.w	r3, r3, #0x140
  3f3122:      	mov	r0, r2
  3f3124:      	mov	r1, r3
  3f3126:      	bl	0x592d4c <_ZN7cocos2d7CCPointaSERKS0_> @ imm = #0x19fc22
  3f312a:      	ldr	r3, [sp, #0x14]
  3f312c:      	ldr.w	r3, [r3, #0x114]
  3f3130:      	ldr	r3, [r3]
  3f3132:      	adds	r3, #0x4c
  3f3134:      	ldr	r3, [r3]
  3f3136:      	ldr	r2, [sp, #0x14]
  3f3138:      	ldr.w	r1, [r2, #0x114]
  3f313c:      	ldr	r2, [sp, #0x14]
  3f313e:      	add.w	r2, r2, #0x150
  3f3142:      	mov	r0, r1
  3f3144:      	mov	r1, r2
  3f3146:      	blx	r3
  3f3148:      	ldr	r3, [sp, #0x14]
  3f314a:      	ldr.w	r3, [r3, #0x110]
  3f314e:      	ldr	r3, [r3]
  3f3150:      	adds	r3, #0x4c
  3f3152:      	ldr	r3, [r3]
  3f3154:      	ldr	r2, [sp, #0x14]
  3f3156:      	ldr.w	r1, [r2, #0x110]
  3f315a:      	ldr	r2, [sp, #0x14]
  3f315c:      	add.w	r2, r2, #0x148
  3f3160:      	mov	r0, r1
  3f3162:      	mov	r1, r2
  3f3164:      	blx	r3
  3f3166:      	b	0x3f31cc <_ZN11SoldierView10updateStepEf+0x64c> @ imm = #0x62
  3f3168:      	ldr	r3, [sp, #0x14]
  3f316a:      	add.w	r2, r3, #0x178
  3f316e:      	ldr	r3, [sp, #0x14]
  3f3170:      	add.w	r3, r3, #0x168
  3f3174:      	mov	r0, r2
  3f3176:      	mov	r1, r3
  3f3178:      	bl	0x592d4c <_ZN7cocos2d7CCPointaSERKS0_> @ imm = #0x19fbd0
  3f317c:      	ldr	r3, [sp, #0x14]
  3f317e:      	add.w	r2, r3, #0x180
  3f3182:      	ldr	r3, [sp, #0x14]
  3f3184:      	add.w	r3, r3, #0x170
  3f3188:      	mov	r0, r2
  3f318a:      	mov	r1, r3
  3f318c:      	bl	0x592d4c <_ZN7cocos2d7CCPointaSERKS0_> @ imm = #0x19fbbc
  3f3190:      	ldr	r3, [sp, #0x14]
  3f3192:      	ldr.w	r3, [r3, #0x114]
  3f3196:      	ldr	r3, [r3]
  3f3198:      	adds	r3, #0x4c
  3f319a:      	ldr	r3, [r3]
  3f319c:      	ldr	r2, [sp, #0x14]
  3f319e:      	ldr.w	r1, [r2, #0x114]
  3f31a2:      	ldr	r2, [sp, #0x14]
  3f31a4:      	add.w	r2, r2, #0x160
  3f31a8:      	mov	r0, r1
  3f31aa:      	mov	r1, r2
  3f31ac:      	blx	r3
  3f31ae:      	ldr	r3, [sp, #0x14]
  3f31b0:      	ldr.w	r3, [r3, #0x110]
  3f31b4:      	ldr	r3, [r3]
  3f31b6:      	adds	r3, #0x4c
  3f31b8:      	ldr	r3, [r3]
  3f31ba:      	ldr	r2, [sp, #0x14]
  3f31bc:      	ldr.w	r1, [r2, #0x110]
  3f31c0:      	ldr	r2, [sp, #0x14]
  3f31c2:      	add.w	r2, r2, #0x158
  3f31c6:      	mov	r0, r1
  3f31c8:      	mov	r1, r2
  3f31ca:      	blx	r3
  3f31cc:      	ldr	r3, [sp, #0x14]
  3f31ce:      	vldr	s15, [r3, #408]
  3f31d2:      	vabs.f32	s15, s15
  3f31d6:      	vcvt.f64.f32	d6, s15
  3f31da:      	vldr	d7, [pc, #228]          @ 0x3f32c0 <_ZN11SoldierView10updateStepEf+0x740>
  3f31de:      	vcmpe.f64	d6, d7
  3f31e2:      	vmrs	APSR_nzcv, fpscr
  3f31e6:      	bpl.w	0x3f34e0 <_ZN11SoldierView10updateStepEf+0x960> @ imm = #0x2f6
  3f31ea:      	ldr	r3, [sp, #0x14]
  3f31ec:      	ldrb.w	r3, [r3, #0x1cd]
  3f31f0:      	eor	r3, r3, #0x1
  3f31f4:      	uxtb	r3, r3
  3f31f6:      	cmp	r3, #0x0
  3f31f8:      	beq.w	0x3f34e0 <_ZN11SoldierView10updateStepEf+0x960> @ imm = #0x2e4
  3f31fc:      	ldr	r3, [sp, #0x14]
  3f31fe:      	vldr	s15, [r3, #404]
  3f3202:      	vabs.f32	s14, s15
  3f3206:      	vldr	s15, [pc, #200]         @ 0x3f32d0 <_ZN11SoldierView10updateStepEf+0x750>
  3f320a:      	vcmpe.f32	s14, s15
  3f320e:      	vmrs	APSR_nzcv, fpscr
  3f3212:      	ble	0x3f32d4 <_ZN11SoldierView10updateStepEf+0x754> @ imm = #0xbe
  3f3214:      	ldr	r3, [sp, #0x14]
  3f3216:      	ldr.w	r3, [r3, #0x10c]
  3f321a:      	ldr	r3, [r3]
  3f321c:      	adds	r3, #0x98
  3f321e:      	ldr	r4, [r3]
  3f3220:      	ldr	r3, [sp, #0x14]
  3f3222:      	ldr.w	r5, [r3, #0x10c]
  3f3226:      	ldr	r3, [sp, #0x14]
  3f3228:      	ldr.w	r3, [r3, #0x10c]
  3f322c:      	ldr	r3, [r3]
  3f322e:      	adds	r3, #0x9c
  3f3230:      	ldr	r3, [r3]
  3f3232:      	ldr	r2, [sp, #0x14]
  3f3234:      	ldr.w	r2, [r2, #0x10c]
  3f3238:      	mov	r0, r2
  3f323a:      	blx	r3
  3f323c:      	vmov	s15, r0
  3f3240:      	vcvt.f64.f32	d6, s15
  3f3244:      	vldr	d7, [pc, #128]          @ 0x3f32c8 <_ZN11SoldierView10updateStepEf+0x748>
  3f3248:      	vmul.f64	d6, d6, d7
  3f324c:      	vmov.f64	d7, #4.000000e+00
  3f3250:      	vsub.f64	d7, d6, d7
  3f3254:      	vcvt.f32.f64	s15, d7
  3f3258:      	mov	r0, r5
  3f325a:      	vmov	r1, s15
  3f325e:      	blx	r4
  3f3260:      	ldr	r3, [sp, #0x14]
  3f3262:      	ldr.w	r3, [r3, #0x108]
  3f3266:      	ldr	r3, [r3]
  3f3268:      	adds	r3, #0x98
  3f326a:      	ldr	r4, [r3]
  3f326c:      	ldr	r3, [sp, #0x14]
  3f326e:      	ldr.w	r5, [r3, #0x108]
  3f3272:      	ldr	r3, [sp, #0x14]
  3f3274:      	ldr.w	r3, [r3, #0x108]
  3f3278:      	ldr	r3, [r3]
  3f327a:      	adds	r3, #0x9c
  3f327c:      	ldr	r3, [r3]
  3f327e:      	ldr	r2, [sp, #0x14]
  3f3280:      	ldr.w	r2, [r2, #0x108]
  3f3284:      	mov	r0, r2
  3f3286:      	blx	r3
  3f3288:      	vmov	s15, r0
  3f328c:      	vcvt.f64.f32	d6, s15
  3f3290:      	vldr	d7, [pc, #52]           @ 0x3f32c8 <_ZN11SoldierView10updateStepEf+0x748>
  3f3294:      	vmul.f64	d6, d6, d7
  3f3298:      	vmov.f64	d7, #4.000000e+00
  3f329c:      	vadd.f64	d7, d6, d7
  3f32a0:      	vcvt.f32.f64	s15, d7
  3f32a4:      	mov	r0, r5
  3f32a6:      	vmov	r1, s15
  3f32aa:      	blx	r4
  3f32ac:      	b	0x3f336c <_ZN11SoldierView10updateStepEf+0x7ec> @ imm = #0xbc
// SoldierView::updateStep  ghidra=0x4032d4-0x4034b7  elf=0x3f32d4-0x3f34b7  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3f32d4:      	ldr	r3, [sp, #0x14]
  3f32d6:      	ldr.w	r3, [r3, #0x10c]
  3f32da:      	ldr	r3, [r3]
  3f32dc:      	adds	r3, #0x98
  3f32de:      	ldr	r4, [r3]
  3f32e0:      	ldr	r3, [sp, #0x14]
  3f32e2:      	ldr.w	r5, [r3, #0x10c]
  3f32e6:      	ldr	r3, [sp, #0x14]
  3f32e8:      	ldr.w	r3, [r3, #0x10c]
  3f32ec:      	ldr	r3, [r3]
  3f32ee:      	adds	r3, #0x9c
  3f32f0:      	ldr	r3, [r3]
  3f32f2:      	ldr	r2, [sp, #0x14]
  3f32f4:      	ldr.w	r2, [r2, #0x10c]
  3f32f8:      	mov	r0, r2
  3f32fa:      	blx	r3
  3f32fc:      	vmov	s15, r0
  3f3300:      	vcvt.f64.f32	d6, s15
  3f3304:      	vldr	d7, [pc, #432]          @ 0x3f34b8 <_ZN11SoldierView10updateStepEf+0x938>
  3f3308:      	vmul.f64	d6, d6, d7
  3f330c:      	vmov.f64	d7, #2.000000e+00
  3f3310:      	vsub.f64	d7, d6, d7
  3f3314:      	vcvt.f32.f64	s15, d7
  3f3318:      	mov	r0, r5
  3f331a:      	vmov	r1, s15
  3f331e:      	blx	r4
  3f3320:      	ldr	r3, [sp, #0x14]
  3f3322:      	ldr.w	r3, [r3, #0x108]
  3f3326:      	ldr	r3, [r3]
  3f3328:      	adds	r3, #0x98
  3f332a:      	ldr	r4, [r3]
  3f332c:      	ldr	r3, [sp, #0x14]
  3f332e:      	ldr.w	r5, [r3, #0x108]
  3f3332:      	ldr	r3, [sp, #0x14]
  3f3334:      	ldr.w	r3, [r3, #0x108]
  3f3338:      	ldr	r3, [r3]
  3f333a:      	adds	r3, #0x9c
  3f333c:      	ldr	r3, [r3]
  3f333e:      	ldr	r2, [sp, #0x14]
  3f3340:      	ldr.w	r2, [r2, #0x108]
  3f3344:      	mov	r0, r2
  3f3346:      	blx	r3
  3f3348:      	vmov	s15, r0
  3f334c:      	vcvt.f64.f32	d6, s15
  3f3350:      	vldr	d7, [pc, #356]          @ 0x3f34b8 <_ZN11SoldierView10updateStepEf+0x938>
  3f3354:      	vmul.f64	d6, d6, d7
  3f3358:      	vmov.f64	d7, #2.000000e+00
  3f335c:      	vadd.f64	d7, d6, d7
  3f3360:      	vcvt.f32.f64	s15, d7
  3f3364:      	mov	r0, r5
  3f3366:      	vmov	r1, s15
  3f336a:      	blx	r4
  3f336c:      	ldr	r3, [sp, #0x14]
  3f336e:      	ldr.w	r3, [r3, #0x10c]
  3f3372:      	ldr	r3, [r3]
  3f3374:      	adds	r3, #0x4c
  3f3376:      	ldr	r4, [r3]
  3f3378:      	ldr	r3, [sp, #0x14]
  3f337a:      	ldr.w	r5, [r3, #0x10c]
  3f337e:      	ldr	r3, [sp, #0x14]
  3f3380:      	ldr.w	r6, [r3, #0x130]
  3f3384:      	ldr	r3, [sp, #0x14]
  3f3386:      	vldr	s15, [r3, #308]
  3f338a:      	vcvt.f64.f32	d6, s15
  3f338e:      	vldr	d7, [pc, #304]          @ 0x3f34c0 <_ZN11SoldierView10updateStepEf+0x940>
  3f3392:      	vmul.f64	d8, d6, d7
  3f3396:      	ldr	r3, [sp, #0x14]
  3f3398:      	ldr.w	r3, [r3, #0x10c]
  3f339c:      	ldr	r3, [r3]
  3f339e:      	adds	r3, #0x50
  3f33a0:      	ldr	r3, [r3]
  3f33a2:      	ldr	r2, [sp, #0x14]
  3f33a4:      	ldr.w	r2, [r2, #0x10c]
  3f33a8:      	mov	r0, r2
  3f33aa:      	blx	r3
  3f33ac:      	mov	r3, r0
  3f33ae:      	vldr	s15, [r3, #4]
  3f33b2:      	vcvt.f64.f32	d6, s15
  3f33b6:      	vldr	d7, [pc, #256]          @ 0x3f34b8 <_ZN11SoldierView10updateStepEf+0x938>
  3f33ba:      	vmul.f64	d7, d6, d7
  3f33be:      	vadd.f64	d7, d8, d7
  3f33c2:      	vcvt.f32.f64	s15, d7
  3f33c6:      	add	r3, sp, #0xa8
  3f33c8:      	mov	r0, r3
  3f33ca:      	mov	r1, r6
  3f33cc:      	vmov	r2, s15
  3f33d0:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f91c
  3f33d4:      	add	r3, sp, #0xa8
  3f33d6:      	mov	r0, r5
  3f33d8:      	mov	r1, r3
  3f33da:      	blx	r4
  3f33dc:      	ldr	r3, [sp, #0x14]
  3f33de:      	ldr.w	r3, [r3, #0x108]
  3f33e2:      	ldr	r3, [r3]
  3f33e4:      	adds	r3, #0x4c
  3f33e6:      	ldr	r4, [r3]
  3f33e8:      	ldr	r3, [sp, #0x14]
  3f33ea:      	ldr.w	r5, [r3, #0x108]
  3f33ee:      	ldr	r3, [sp, #0x14]
  3f33f0:      	ldr.w	r6, [r3, #0x128]
  3f33f4:      	ldr	r3, [sp, #0x14]
  3f33f6:      	vldr	s15, [r3, #300]
  3f33fa:      	vcvt.f64.f32	d6, s15
  3f33fe:      	vldr	d7, [pc, #192]          @ 0x3f34c0 <_ZN11SoldierView10updateStepEf+0x940>
  3f3402:      	vmul.f64	d8, d6, d7
  3f3406:      	ldr	r3, [sp, #0x14]
  3f3408:      	ldr.w	r3, [r3, #0x108]
  3f340c:      	ldr	r3, [r3]
  3f340e:      	adds	r3, #0x50
  3f3410:      	ldr	r3, [r3]
  3f3412:      	ldr	r2, [sp, #0x14]
  3f3414:      	ldr.w	r2, [r2, #0x108]
  3f3418:      	mov	r0, r2
  3f341a:      	blx	r3
  3f341c:      	mov	r3, r0
  3f341e:      	vldr	s15, [r3, #4]
  3f3422:      	vcvt.f64.f32	d6, s15
  3f3426:      	vldr	d7, [pc, #144]          @ 0x3f34b8 <_ZN11SoldierView10updateStepEf+0x938>
  3f342a:      	vmul.f64	d7, d6, d7
  3f342e:      	vadd.f64	d7, d8, d7
  3f3432:      	vcvt.f32.f64	s15, d7
  3f3436:      	add	r3, sp, #0xa8
  3f3438:      	mov	r0, r3
  3f343a:      	mov	r1, r6
  3f343c:      	vmov	r2, s15
  3f3440:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f8ac
  3f3444:      	add	r3, sp, #0xa8
  3f3446:      	mov	r0, r5
  3f3448:      	mov	r1, r3
  3f344a:      	blx	r4
  3f344c:      	ldr	r3, [sp, #0x14]
  3f344e:      	ldr.w	r3, [r3, #0x120]
  3f3452:      	ldr	r3, [r3]
  3f3454:      	adds	r3, #0x4c
  3f3456:      	ldr	r3, [r3]
  3f3458:      	ldr	r2, [sp, #0x14]
  3f345a:      	ldr.w	r1, [r2, #0x120]
  3f345e:      	ldr	r2, [sp, #0x14]
  3f3460:      	add.w	r2, r2, #0x178
  3f3464:      	mov	r0, r1
  3f3466:      	mov	r1, r2
  3f3468:      	blx	r3
  3f346a:      	ldr	r3, [sp, #0x14]
  3f346c:      	ldrb.w	r3, [r3, #0x1e3]
  3f3470:      	eor	r3, r3, #0x1
  3f3474:      	uxtb	r3, r3
  3f3476:      	cmp	r3, #0x0
  3f3478:      	beq	0x3f34b6 <_ZN11SoldierView10updateStepEf+0x936> @ imm = #0x3a
  3f347a:      	ldr	r3, [sp, #0x14]
  3f347c:      	ldr.w	r3, [r3, #0x114]
  3f3480:      	ldr	r3, [r3]
  3f3482:      	adds	r3, #0x98
  3f3484:      	ldr	r3, [r3]
  3f3486:      	ldr	r2, [sp, #0x14]
  3f3488:      	ldr.w	r2, [r2, #0x114]
  3f348c:      	mov	r0, r2
  3f348e:      	mov.w	r1, #0x0
  3f3492:      	movt	r1, #0x42b4
  3f3496:      	blx	r3
  3f3498:      	ldr	r3, [sp, #0x14]
  3f349a:      	ldr.w	r3, [r3, #0x110]
  3f349e:      	ldr	r3, [r3]
  3f34a0:      	adds	r3, #0x98
  3f34a2:      	ldr	r3, [r3]
  3f34a4:      	ldr	r2, [sp, #0x14]
  3f34a6:      	ldr.w	r2, [r2, #0x110]
  3f34aa:      	mov	r0, r2
  3f34ac:      	mov.w	r1, #0x0
  3f34b0:      	movt	r1, #0x42b4
  3f34b4:      	blx	r3
  3f34b6:      	b	0x3f38d2 <_ZN11SoldierView10updateStepEf+0xd52> @ imm = #0x418
// SoldierView::updateStep  ghidra=0x4034e0-0x403b5b  elf=0x3f34e0-0x3f3b5b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3f34e0:      	ldr	r3, [sp, #0x14]
  3f34e2:      	ldr.w	r3, [r3, #0x10c]
  3f34e6:      	ldr	r3, [r3]
  3f34e8:      	adds	r3, #0x98
  3f34ea:      	ldr	r4, [r3]
  3f34ec:      	ldr	r3, [sp, #0x14]
  3f34ee:      	ldr.w	r5, [r3, #0x10c]
  3f34f2:      	ldr	r3, [sp, #0x14]
  3f34f4:      	vldr	s15, [r3, #452]
  3f34f8:      	vcvt.f64.f32	d7, s15
  3f34fc:      	vmov	r0, r1, d7
  3f3500:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d5f0
  3f3504:      	vmov	d6, r0, r1
  3f3508:      	vmov.f64	d7, #2.000000e+01
  3f350c:      	vmul.f64	d7, d6, d7
  3f3510:      	vcvt.f32.f64	s15, d7
  3f3514:      	mov	r0, r5
  3f3516:      	vmov	r1, s15
  3f351a:      	blx	r4
  3f351c:      	ldr	r3, [sp, #0x14]
  3f351e:      	ldr.w	r3, [r3, #0x108]
  3f3522:      	ldr	r3, [r3]
  3f3524:      	adds	r3, #0x98
  3f3526:      	ldr	r4, [r3]
  3f3528:      	ldr	r3, [sp, #0x14]
  3f352a:      	ldr.w	r5, [r3, #0x108]
  3f352e:      	ldr	r3, [sp, #0x14]
  3f3530:      	vldr	s15, [r3, #452]
  3f3534:      	vcvt.f64.f32	d6, s15
  3f3538:      	vldr	d7, [pc, #-116]         @ 0x3f34c8 <_ZN11SoldierView10updateStepEf+0x948>
  3f353c:      	vadd.f64	d7, d6, d7
  3f3540:      	vmov	r0, r1, d7
  3f3544:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d634
  3f3548:      	vmov	d6, r0, r1
  3f354c:      	vmov.f64	d7, #2.000000e+01
  3f3550:      	vmul.f64	d7, d6, d7
  3f3554:      	vcvt.f32.f64	s15, d7
  3f3558:      	mov	r0, r5
  3f355a:      	vmov	r1, s15
  3f355e:      	blx	r4
  3f3560:      	ldr	r3, [sp, #0x14]
  3f3562:      	ldrb.w	r3, [r3, #0x1cd]
  3f3566:      	cmp	r3, #0x0
  3f3568:      	beq.w	0x3f36ee <_ZN11SoldierView10updateStepEf+0xb6e> @ imm = #0x182
  3f356c:      	ldr	r3, [sp, #0x14]
  3f356e:      	ldr.w	r3, [r3, #0x10c]
  3f3572:      	ldr	r3, [r3]
  3f3574:      	adds	r3, #0x4c
  3f3576:      	ldr	r4, [r3]
  3f3578:      	ldr	r3, [sp, #0x14]
  3f357a:      	ldr.w	r5, [r3, #0x10c]
  3f357e:      	ldr	r3, [sp, #0x14]
  3f3580:      	vldr	s15, [r3, #304]
  3f3584:      	vcvt.f64.f32	d8, s15
  3f3588:      	ldr	r3, [sp, #0x14]
  3f358a:      	vldr	s15, [r3, #452]
  3f358e:      	vcvt.f64.f32	d6, s15
  3f3592:      	vldr	d7, [pc, #-188]         @ 0x3f34d8 <_ZN11SoldierView10updateStepEf+0x958>
  3f3596:      	vadd.f64	d7, d6, d7
  3f359a:      	vmov	r0, r1, d7
  3f359e:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d68c
  3f35a2:      	vmov	d6, r0, r1
  3f35a6:      	vmov.f64	d7, #7.000000e+00
  3f35aa:      	vmul.f64	d7, d6, d7
  3f35ae:      	vadd.f64	d6, d8, d7
  3f35b2:      	vmov.f64	d7, #4.000000e+00
  3f35b6:      	vadd.f64	d7, d6, d7
  3f35ba:      	vcvt.f32.f64	s13, d7
  3f35be:      	ldr	r3, [sp, #0x14]
  3f35c0:      	vldr	s14, [r3, #308]
  3f35c4:      	vmov.f32	s15, #2.000000e+01
  3f35c8:      	vsub.f32	s15, s14, s15
  3f35cc:      	add	r3, sp, #0xa8
  3f35ce:      	mov	r0, r3
  3f35d0:      	vmov	r1, s13
  3f35d4:      	vmov	r2, s15
  3f35d8:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f714
  3f35dc:      	add	r3, sp, #0xa8
  3f35de:      	mov	r0, r5
  3f35e0:      	mov	r1, r3
  3f35e2:      	blx	r4
  3f35e4:      	ldr	r3, [sp, #0x14]
  3f35e6:      	ldr.w	r3, [r3, #0x108]
  3f35ea:      	ldr	r3, [r3]
  3f35ec:      	adds	r3, #0x4c
  3f35ee:      	ldr	r4, [r3]
  3f35f0:      	ldr	r3, [sp, #0x14]
  3f35f2:      	ldr.w	r5, [r3, #0x108]
  3f35f6:      	ldr	r3, [sp, #0x14]
  3f35f8:      	vldr	s15, [r3, #296]
  3f35fc:      	vcvt.f64.f32	d8, s15
  3f3600:      	ldr	r3, [sp, #0x14]
  3f3602:      	vldr	s15, [r3, #452]
  3f3606:      	vcvt.f64.f32	d6, s15
  3f360a:      	vldr	d7, [pc, #-308]         @ 0x3f34d8 <_ZN11SoldierView10updateStepEf+0x958>
  3f360e:      	vsub.f64	d7, d6, d7
  3f3612:      	vmov	r0, r1, d7
  3f3616:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d704
  3f361a:      	vmov	d6, r0, r1
  3f361e:      	vmov.f64	d7, #7.000000e+00
  3f3622:      	vmul.f64	d7, d6, d7
  3f3626:      	vadd.f64	d6, d8, d7
  3f362a:      	vmov.f64	d7, #1.200000e+01
  3f362e:      	vadd.f64	d7, d6, d7
  3f3632:      	vcvt.f32.f64	s13, d7
  3f3636:      	ldr	r3, [sp, #0x14]
  3f3638:      	vldr	s14, [r3, #300]
  3f363c:      	vmov.f32	s15, #2.200000e+01
  3f3640:      	vsub.f32	s15, s14, s15
  3f3644:      	add	r3, sp, #0xa8
  3f3646:      	mov	r0, r3
  3f3648:      	vmov	r1, s13
  3f364c:      	vmov	r2, s15
  3f3650:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f69c
  3f3654:      	add	r3, sp, #0xa8
  3f3656:      	mov	r0, r5
  3f3658:      	mov	r1, r3
  3f365a:      	blx	r4
  3f365c:      	ldr	r3, [sp, #0x14]
  3f365e:      	ldr.w	r3, [r3, #0x108]
  3f3662:      	ldr	r3, [r3]
  3f3664:      	adds	r3, #0x98
  3f3666:      	ldr	r4, [r3]
  3f3668:      	ldr	r3, [sp, #0x14]
  3f366a:      	ldr.w	r5, [r3, #0x108]
  3f366e:      	ldr	r3, [sp, #0x14]
  3f3670:      	vldr	s15, [r3, #452]
  3f3674:      	vcvt.f64.f32	d6, s15
  3f3678:      	vldr	d7, [pc, #-436]         @ 0x3f34c8 <_ZN11SoldierView10updateStepEf+0x948>
  3f367c:      	vadd.f64	d7, d6, d7
  3f3680:      	vmov	r0, r1, d7
  3f3684:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d774
  3f3688:      	vmov	d6, r0, r1
  3f368c:      	vmov.f64	d7, #5.000000e+00
  3f3690:      	vmul.f64	d6, d6, d7
  3f3694:      	vldr	d7, [pc, #-456]         @ 0x3f34d0 <_ZN11SoldierView10updateStepEf+0x950>
  3f3698:      	vadd.f64	d7, d6, d7
  3f369c:      	vcvt.f32.f64	s15, d7
  3f36a0:      	mov	r0, r5
  3f36a2:      	vmov	r1, s15
  3f36a6:      	blx	r4
  3f36a8:      	ldr	r3, [sp, #0x14]
  3f36aa:      	ldr.w	r3, [r3, #0x10c]
  3f36ae:      	ldr	r3, [r3]
  3f36b0:      	adds	r3, #0x98
  3f36b2:      	ldr	r4, [r3]
  3f36b4:      	ldr	r3, [sp, #0x14]
  3f36b6:      	ldr.w	r5, [r3, #0x10c]
  3f36ba:      	ldr	r3, [sp, #0x14]
  3f36bc:      	vldr	s15, [r3, #452]
  3f36c0:      	vcvt.f64.f32	d7, s15
  3f36c4:      	vmov	r0, r1, d7
  3f36c8:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d7b8
  3f36cc:      	vmov	d6, r0, r1
  3f36d0:      	vmov.f64	d7, #5.000000e+00
  3f36d4:      	vmul.f64	d6, d6, d7
  3f36d8:      	vldr	d7, [pc, #-524]         @ 0x3f34d0 <_ZN11SoldierView10updateStepEf+0x950>
  3f36dc:      	vadd.f64	d7, d6, d7
  3f36e0:      	vcvt.f32.f64	s15, d7
  3f36e4:      	mov	r0, r5
  3f36e6:      	vmov	r1, s15
  3f36ea:      	blx	r4
  3f36ec:      	b	0x3f37ba <_ZN11SoldierView10updateStepEf+0xc3a> @ imm = #0xca
  3f36ee:      	ldr	r3, [sp, #0x14]
  3f36f0:      	ldr.w	r3, [r3, #0x10c]
  3f36f4:      	ldr	r3, [r3]
  3f36f6:      	adds	r3, #0x4c
  3f36f8:      	ldr	r4, [r3]
  3f36fa:      	ldr	r3, [sp, #0x14]
  3f36fc:      	ldr.w	r5, [r3, #0x10c]
  3f3700:      	ldr	r3, [sp, #0x14]
  3f3702:      	ldr.w	r6, [r3, #0x130]
  3f3706:      	ldr	r3, [sp, #0x14]
  3f3708:      	vldr	s15, [r3, #308]
  3f370c:      	vcvt.f64.f32	d8, s15
  3f3710:      	ldr	r3, [sp, #0x14]
  3f3712:      	vldr	s15, [r3, #452]
  3f3716:      	vcvt.f64.f32	d6, s15
  3f371a:      	vldr	d7, [pc, #-580]         @ 0x3f34d8 <_ZN11SoldierView10updateStepEf+0x958>
  3f371e:      	vadd.f64	d7, d6, d7
  3f3722:      	vmov	r0, r1, d7
  3f3726:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d814
  3f372a:      	vmov	d6, r0, r1
  3f372e:      	vmov.f64	d7, #4.000000e+00
  3f3732:      	vmul.f64	d7, d6, d7
  3f3736:      	vadd.f64	d7, d8, d7
  3f373a:      	vcvt.f32.f64	s15, d7
  3f373e:      	add	r3, sp, #0xa8
  3f3740:      	mov	r0, r3
  3f3742:      	mov	r1, r6
  3f3744:      	vmov	r2, s15
  3f3748:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f5a4
  3f374c:      	add	r3, sp, #0xa8
  3f374e:      	mov	r0, r5
  3f3750:      	mov	r1, r3
  3f3752:      	blx	r4
  3f3754:      	ldr	r3, [sp, #0x14]
  3f3756:      	ldr.w	r3, [r3, #0x108]
  3f375a:      	ldr	r3, [r3]
  3f375c:      	adds	r3, #0x4c
  3f375e:      	ldr	r4, [r3]
  3f3760:      	ldr	r3, [sp, #0x14]
  3f3762:      	ldr.w	r5, [r3, #0x108]
  3f3766:      	ldr	r3, [sp, #0x14]
  3f3768:      	ldr.w	r6, [r3, #0x128]
  3f376c:      	ldr	r3, [sp, #0x14]
  3f376e:      	vldr	s15, [r3, #300]
  3f3772:      	vcvt.f64.f32	d8, s15
  3f3776:      	ldr	r3, [sp, #0x14]
  3f3778:      	vldr	s15, [r3, #452]
  3f377c:      	vcvt.f64.f32	d6, s15
  3f3780:      	vldr	d7, [pc, #-684]         @ 0x3f34d8 <_ZN11SoldierView10updateStepEf+0x958>
  3f3784:      	vsub.f64	d7, d6, d7
  3f3788:      	vmov	r0, r1, d7
  3f378c:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d87c
  3f3790:      	vmov	d6, r0, r1
  3f3794:      	vmov.f64	d7, #4.000000e+00
  3f3798:      	vmul.f64	d7, d6, d7
  3f379c:      	vadd.f64	d7, d8, d7
  3f37a0:      	vcvt.f32.f64	s15, d7
  3f37a4:      	add	r3, sp, #0xa8
  3f37a6:      	mov	r0, r3
  3f37a8:      	mov	r1, r6
  3f37aa:      	vmov	r2, s15
  3f37ae:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f53e
  3f37b2:      	add	r3, sp, #0xa8
  3f37b4:      	mov	r0, r5
  3f37b6:      	mov	r1, r3
  3f37b8:      	blx	r4
  3f37ba:      	ldr	r3, [sp, #0x14]
  3f37bc:      	ldr.w	r3, [r3, #0x120]
  3f37c0:      	ldr	r3, [r3]
  3f37c2:      	adds	r3, #0x4c
  3f37c4:      	ldr	r4, [r3]
  3f37c6:      	ldr	r3, [sp, #0x14]
  3f37c8:      	ldr.w	r5, [r3, #0x120]
  3f37cc:      	ldr	r3, [sp, #0x14]
  3f37ce:      	vldr	s15, [r3, #420]
  3f37d2:      	vcmp.f32	s15, #0
  3f37d6:      	vmrs	APSR_nzcv, fpscr
  3f37da:      	beq	0x3f37ee <_ZN11SoldierView10updateStepEf+0xc6e> @ imm = #0x10
  3f37dc:      	ldr	r3, [sp, #0x14]
  3f37de:      	add.w	r3, r3, #0x178
  3f37e2:      	add	r2, sp, #0xa8
  3f37e4:      	mov	r0, r2
  3f37e6:      	mov	r1, r3
  3f37e8:      	bl	0x592d0c <_ZN7cocos2d7CCPointC2ERKS0_> @ imm = #0x19f520
  3f37ec:      	b	0x3f382a <_ZN11SoldierView10updateStepEf+0xcaa> @ imm = #0x3a
  3f37ee:      	ldr	r3, [sp, #0x14]
  3f37f0:      	ldr.w	r6, [r3, #0x178]
  3f37f4:      	ldr	r3, [sp, #0x14]
  3f37f6:      	vldr	s15, [r3, #380]
  3f37fa:      	vcvt.f64.f32	d8, s15
  3f37fe:      	ldr	r3, [sp, #0x14]
  3f3800:      	vldr	s15, [r3, #452]
  3f3804:      	vcvt.f64.f32	d7, s15
  3f3808:      	vmov	r0, r1, d7
  3f380c:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d8fc
  3f3810:      	vmov	d7, r0, r1
  3f3814:      	vadd.f64	d7, d8, d7
  3f3818:      	vcvt.f32.f64	s15, d7
  3f381c:      	add	r3, sp, #0xa8
  3f381e:      	mov	r0, r3
  3f3820:      	mov	r1, r6
  3f3822:      	vmov	r2, s15
  3f3826:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x19f4c6
  3f382a:      	add	r3, sp, #0xa8
  3f382c:      	mov	r0, r5
  3f382e:      	mov	r1, r3
  3f3830:      	blx	r4
  3f3832:      	ldr	r3, [sp, #0x14]
  3f3834:      	ldrb.w	r3, [r3, #0x1e3]
  3f3838:      	eor	r3, r3, #0x1
  3f383c:      	uxtb	r3, r3
  3f383e:      	cmp	r3, #0x0
  3f3840:      	beq	0x3f38d2 <_ZN11SoldierView10updateStepEf+0xd52> @ imm = #0x8e
  3f3842:      	ldr	r3, [sp, #0x14]
  3f3844:      	ldr.w	r3, [r3, #0x114]
  3f3848:      	ldr	r3, [r3]
  3f384a:      	adds	r3, #0x98
  3f384c:      	ldr	r4, [r3]
  3f384e:      	ldr	r3, [sp, #0x14]
  3f3850:      	ldr.w	r5, [r3, #0x114]
  3f3854:      	ldr	r3, [sp, #0x14]
  3f3856:      	vldr	s15, [r3, #452]
  3f385a:      	vcvt.f64.f32	d6, s15
  3f385e:      	vldr	d7, [pc, #768]          @ 0x3f3b60 <_ZN11SoldierView10updateStepEf+0xfe0>
  3f3862:      	vadd.f64	d7, d6, d7
  3f3866:      	vmov	r0, r1, d7
  3f386a:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d958
  3f386e:      	vmov	d6, r0, r1
  3f3872:      	vmov.f64	d7, #2.000000e+01
  3f3876:      	vmul.f64	d6, d6, d7
  3f387a:      	vldr	d7, [pc, #748]          @ 0x3f3b68 <_ZN11SoldierView10updateStepEf+0xfe8>
  3f387e:      	vadd.f64	d7, d6, d7
  3f3882:      	vcvt.f32.f64	s15, d7
  3f3886:      	mov	r0, r5
  3f3888:      	vmov	r1, s15
  3f388c:      	blx	r4
  3f388e:      	ldr	r3, [sp, #0x14]
  3f3890:      	ldr.w	r3, [r3, #0x110]
  3f3894:      	ldr	r3, [r3]
  3f3896:      	adds	r3, #0x98
  3f3898:      	ldr	r4, [r3]
  3f389a:      	ldr	r3, [sp, #0x14]
  3f389c:      	ldr.w	r5, [r3, #0x110]
  3f38a0:      	ldr	r3, [sp, #0x14]
  3f38a2:      	vldr	s15, [r3, #452]
  3f38a6:      	vcvt.f64.f32	d7, s15
  3f38aa:      	vmov	r0, r1, d7
  3f38ae:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d99c
  3f38b2:      	vmov	d6, r0, r1
  3f38b6:      	vmov.f64	d7, #2.000000e+01
  3f38ba:      	vmul.f64	d6, d6, d7
  3f38be:      	vldr	d7, [pc, #680]          @ 0x3f3b68 <_ZN11SoldierView10updateStepEf+0xfe8>
  3f38c2:      	vadd.f64	d7, d6, d7
  3f38c6:      	vcvt.f32.f64	s15, d7
  3f38ca:      	mov	r0, r5
  3f38cc:      	vmov	r1, s15
  3f38d0:      	blx	r4
  3f38d2:      	ldr	r3, [sp, #0x14]
  3f38d4:      	ldr.w	r3, [r3, #0x11c]
  3f38d8:      	ldr	r3, [r3]
  3f38da:      	adds	r3, #0x4c
  3f38dc:      	ldr	r3, [r3]
  3f38de:      	ldr	r2, [sp, #0x14]
  3f38e0:      	ldr.w	r1, [r2, #0x11c]
  3f38e4:      	ldr	r2, [sp, #0x14]
  3f38e6:      	add.w	r2, r2, #0x180
  3f38ea:      	mov	r0, r1
  3f38ec:      	mov	r1, r2
  3f38ee:      	blx	r3
  3f38f0:      	ldr	r3, [sp, #0x14]
  3f38f2:      	ldrb.w	r3, [r3, #0x1d5]
  3f38f6:      	eor	r3, r3, #0x1
  3f38fa:      	uxtb	r3, r3
  3f38fc:      	cmp	r3, #0x0
  3f38fe:      	beq	0x3f393e <_ZN11SoldierView10updateStepEf+0xdbe> @ imm = #0x3c
  3f3900:      	ldr	r3, [sp, #0x14]
  3f3902:      	vldr	s15, [r3, #444]
  3f3906:      	vabs.f32	s15, s15
  3f390a:      	vcvt.f64.f32	d6, s15
  3f390e:      	vldr	d7, [pc, #608]          @ 0x3f3b70 <_ZN11SoldierView10updateStepEf+0xff0>
  3f3912:      	vcmpe.f64	d6, d7
  3f3916:      	vmrs	APSR_nzcv, fpscr
  3f391a:      	ble	0x3f3934 <_ZN11SoldierView10updateStepEf+0xdb4> @ imm = #0x16
  3f391c:      	ldr	r3, [sp, #0x14]
  3f391e:      	vldr	s15, [r3, #444]
  3f3922:      	vcvt.f64.f32	d6, s15
  3f3926:      	vldr	d7, [pc, #592]          @ 0x3f3b78 <_ZN11SoldierView10updateStepEf+0xff8>
  3f392a:      	vmul.f64	d7, d6, d7
  3f392e:      	vcvt.f32.f64	s15, d7
  3f3932:      	b	0x3f3938 <_ZN11SoldierView10updateStepEf+0xdb8> @ imm = #0x2
  3f3934:      	vldr	s15, [pc, #592]         @ 0x3f3b88 <_ZN11SoldierView10updateStepEf+0x1008>
  3f3938:      	ldr	r3, [sp, #0x14]
  3f393a:      	vstr	s15, [r3, #444]
  3f393e:      	ldr	r3, [sp, #0x14]
  3f3940:      	vldr	s15, [r3, #424]
  3f3944:      	vcvt.f64.f32	d6, s15
  3f3948:      	vldr	d7, [pc, #548]          @ 0x3f3b70 <_ZN11SoldierView10updateStepEf+0xff0>
  3f394c:      	vcmpe.f64	d6, d7
  3f3950:      	vmrs	APSR_nzcv, fpscr
  3f3954:      	ble	0x3f396e <_ZN11SoldierView10updateStepEf+0xdee> @ imm = #0x16
  3f3956:      	ldr	r3, [sp, #0x14]
  3f3958:      	vldr	s15, [r3, #424]
  3f395c:      	vcvt.f64.f32	d6, s15
  3f3960:      	vmov.f64	d7, #5.000000e-01
  3f3964:      	vmul.f64	d7, d6, d7
  3f3968:      	vcvt.f32.f64	s15, d7
  3f396c:      	b	0x3f3972 <_ZN11SoldierView10updateStepEf+0xdf2> @ imm = #0x2
  3f396e:      	vldr	s15, [pc, #536]         @ 0x3f3b88 <_ZN11SoldierView10updateStepEf+0x1008>
  3f3972:      	ldr	r3, [sp, #0x14]
  3f3974:      	vstr	s15, [r3, #424]
  3f3978:      	ldr	r3, [sp, #0x14]
  3f397a:      	vldr	s15, [r3, #428]
  3f397e:      	vcvt.f64.f32	d6, s15
  3f3982:      	vldr	d7, [pc, #492]          @ 0x3f3b70 <_ZN11SoldierView10updateStepEf+0xff0>
  3f3986:      	vcmpe.f64	d6, d7
  3f398a:      	vmrs	APSR_nzcv, fpscr
  3f398e:      	ble	0x3f39a8 <_ZN11SoldierView10updateStepEf+0xe28> @ imm = #0x16
  3f3990:      	ldr	r3, [sp, #0x14]
  3f3992:      	vldr	s15, [r3, #428]
  3f3996:      	vcvt.f64.f32	d6, s15
  3f399a:      	vmov.f64	d7, #5.000000e-01
  3f399e:      	vmul.f64	d7, d6, d7
  3f39a2:      	vcvt.f32.f64	s15, d7
  3f39a6:      	b	0x3f39ac <_ZN11SoldierView10updateStepEf+0xe2c> @ imm = #0x2
  3f39a8:      	vldr	s15, [pc, #476]         @ 0x3f3b88 <_ZN11SoldierView10updateStepEf+0x1008>
  3f39ac:      	ldr	r3, [sp, #0x14]
  3f39ae:      	vstr	s15, [r3, #428]
  3f39b2:      	ldr	r3, [sp, #0x14]
  3f39b4:      	vldr	s15, [r3, #432]
  3f39b8:      	vcvt.f64.f32	d6, s15
  3f39bc:      	vldr	d7, [pc, #432]          @ 0x3f3b70 <_ZN11SoldierView10updateStepEf+0xff0>
  3f39c0:      	vcmpe.f64	d6, d7
  3f39c4:      	vmrs	APSR_nzcv, fpscr
  3f39c8:      	ble	0x3f39e2 <_ZN11SoldierView10updateStepEf+0xe62> @ imm = #0x16
  3f39ca:      	ldr	r3, [sp, #0x14]
  3f39cc:      	vldr	s15, [r3, #432]
  3f39d0:      	vcvt.f64.f32	d6, s15
  3f39d4:      	vldr	d7, [pc, #424]          @ 0x3f3b80 <_ZN11SoldierView10updateStepEf+0x1000>
  3f39d8:      	vmul.f64	d7, d6, d7
  3f39dc:      	vcvt.f32.f64	s15, d7
  3f39e0:      	b	0x3f39e6 <_ZN11SoldierView10updateStepEf+0xe66> @ imm = #0x2
  3f39e2:      	vldr	s15, [pc, #420]         @ 0x3f3b88 <_ZN11SoldierView10updateStepEf+0x1008>
  3f39e6:      	ldr	r3, [sp, #0x14]
  3f39e8:      	vstr	s15, [r3, #432]
  3f39ec:      	ldr	r3, [sp, #0x14]
  3f39ee:      	vldr	s15, [r3, #436]
  3f39f2:      	vcvt.f64.f32	d6, s15
  3f39f6:      	vldr	d7, [pc, #376]          @ 0x3f3b70 <_ZN11SoldierView10updateStepEf+0xff0>
  3f39fa:      	vcmpe.f64	d6, d7
  3f39fe:      	vmrs	APSR_nzcv, fpscr
  3f3a02:      	ble	0x3f3a1c <_ZN11SoldierView10updateStepEf+0xe9c> @ imm = #0x16
  3f3a04:      	ldr	r3, [sp, #0x14]
  3f3a06:      	vldr	s15, [r3, #436]
  3f3a0a:      	vcvt.f64.f32	d6, s15
  3f3a0e:      	vldr	d7, [pc, #368]          @ 0x3f3b80 <_ZN11SoldierView10updateStepEf+0x1000>
  3f3a12:      	vmul.f64	d7, d6, d7
  3f3a16:      	vcvt.f32.f64	s15, d7
  3f3a1a:      	b	0x3f3a20 <_ZN11SoldierView10updateStepEf+0xea0> @ imm = #0x2
  3f3a1c:      	vldr	s15, [pc, #360]         @ 0x3f3b88 <_ZN11SoldierView10updateStepEf+0x1008>
  3f3a20:      	ldr	r3, [sp, #0x14]
  3f3a22:      	vstr	s15, [r3, #436]
  3f3a26:      	ldr	r3, [sp, #0x14]
  3f3a28:      	ldr.w	r6, [r3, #0xe8]
  3f3a2c:      	ldr	r3, [sp, #0x14]
  3f3a2e:      	ldr.w	r5, [r3, #0x1a4]
  3f3a32:      	ldr	r3, [sp, #0x14]
  3f3a34:      	vldr	s15, [r3, #400]
  3f3a38:      	vcvt.f64.f32	d6, s15
  3f3a3c:      	ldr	r3, [sp, #0x14]
  3f3a3e:      	vldr	s15, [r3, #404]
  3f3a42:      	vcvt.f64.f32	d7, s15
  3f3a46:      	add	r3, sp, #0x88
  3f3a48:      	mov	r0, r3
  3f3a4a:      	vmov.f64	d0, d6
  3f3a4e:      	vmov.f64	d1, d7
  3f3a52:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x2daa
  3f3a56:      	mov	r4, sp
  3f3a58:      	add	r3, sp, #0x88
  3f3a5a:      	ldm	r3, {r0, r1, r2, r3}
  3f3a5c:      	stm.w	r4, {r0, r1, r2, r3}
  3f3a60:      	mov	r0, r6
  3f3a62:      	ldr	r1, [sp, #0x10]
  3f3a64:      	mov	r2, r5
  3f3a66:      	bl	0x2fe060 <_ZN7Boostie10updateStepEff6cpVect> @ imm = #-0xf5a0a
  3f3a6a:      	ldr	r3, [sp, #0x14]
  3f3a6c:      	ldr.w	r6, [r3, #0xec]
  3f3a70:      	ldr	r3, [sp, #0x14]
  3f3a72:      	ldr.w	r5, [r3, #0x1a4]
  3f3a76:      	ldr	r3, [sp, #0x14]
  3f3a78:      	vldr	s15, [r3, #400]
  3f3a7c:      	vcvt.f64.f32	d6, s15
  3f3a80:      	ldr	r3, [sp, #0x14]
  3f3a82:      	vldr	s15, [r3, #404]
  3f3a86:      	vcvt.f64.f32	d7, s15
  3f3a8a:      	add	r3, sp, #0x98
  3f3a8c:      	mov	r0, r3
  3f3a8e:      	vmov.f64	d0, d6
  3f3a92:      	vmov.f64	d1, d7
  3f3a96:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x2dee
  3f3a9a:      	mov	r4, sp
  3f3a9c:      	add	r3, sp, #0x98
  3f3a9e:      	ldm	r3, {r0, r1, r2, r3}
  3f3aa0:      	stm.w	r4, {r0, r1, r2, r3}
  3f3aa4:      	mov	r0, r6
  3f3aa6:      	ldr	r1, [sp, #0x10]
  3f3aa8:      	mov	r2, r5
  3f3aaa:      	bl	0x2fe060 <_ZN7Boostie10updateStepEff6cpVect> @ imm = #-0xf5a4e
  3f3aae:      	ldr	r3, [sp, #0x14]
  3f3ab0:      	vldr	s14, [r3, #476]
  3f3ab4:      	vmov.f32	s15, #5.000000e+00
  3f3ab8:      	vcmpe.f32	s14, s15
  3f3abc:      	vmrs	APSR_nzcv, fpscr
  3f3ac0:      	ble	0x3f3adc <_ZN11SoldierView10updateStepEf+0xf5c> @ imm = #0x18
  3f3ac2:      	ldr	r0, [sp, #0x14]
  3f3ac4:      	bl	0x3f3f3c <_ZN11SoldierView21getPlayerLabelOpacityEv> @ imm = #0x474
  3f3ac8:      	mov	r3, r0
  3f3aca:      	str	r3, [sp, #0x24]
  3f3acc:      	ldr	r3, [sp, #0x24]
  3f3ace:      	subs	r3, #0x2
  3f3ad0:      	bic.w	r3, r3, r3, asr #31
  3f3ad4:      	ldr	r0, [sp, #0x14]
  3f3ad6:      	mov	r1, r3
  3f3ad8:      	bl	0x3f3ee0 <_ZN11SoldierView21setPlayerLabelOpacityEi> @ imm = #0x404
  3f3adc:      	ldr	r3, [sp, #0x14]
  3f3ade:      	ldr.w	r3, [r3, #0x118]
  3f3ae2:      	ldr	r3, [r3]
  3f3ae4:      	adds	r3, #0x98
  3f3ae6:      	ldr	r4, [r3]
  3f3ae8:      	ldr	r3, [sp, #0x14]
  3f3aea:      	ldr.w	r5, [r3, #0x118]
  3f3aee:      	ldr	r3, [sp, #0x14]
  3f3af0:      	ldr.w	r3, [r3, #0x114]
  3f3af4:      	ldr	r3, [r3]
  3f3af6:      	adds	r3, #0x9c
  3f3af8:      	ldr	r3, [r3]
  3f3afa:      	ldr	r2, [sp, #0x14]
  3f3afc:      	ldr.w	r2, [r2, #0x114]
  3f3b00:      	mov	r0, r2
  3f3b02:      	blx	r3
  3f3b04:      	mov	r3, r0
  3f3b06:      	mov	r0, r5
  3f3b08:      	mov	r1, r3
  3f3b0a:      	blx	r4
  3f3b0c:      	ldr	r3, [sp, #0x14]
  3f3b0e:      	ldr.w	r3, [r3, #0x118]
  3f3b12:      	ldr	r3, [r3]
  3f3b14:      	adds	r3, #0x4c
  3f3b16:      	ldr	r4, [r3]
  3f3b18:      	ldr	r3, [sp, #0x14]
  3f3b1a:      	ldr.w	r5, [r3, #0x118]
  3f3b1e:      	ldr	r3, [sp, #0x14]
  3f3b20:      	ldr.w	r3, [r3, #0x114]
  3f3b24:      	ldr	r3, [r3]
  3f3b26:      	adds	r3, #0x50
  3f3b28:      	ldr	r3, [r3]
  3f3b2a:      	ldr	r2, [sp, #0x14]
  3f3b2c:      	ldr.w	r2, [r2, #0x114]
  3f3b30:      	mov	r0, r2
  3f3b32:      	blx	r3
  3f3b34:      	mov	r3, r0
  3f3b36:      	mov	r0, r5
  3f3b38:      	mov	r1, r3
  3f3b3a:      	blx	r4
  3f3b3c:      	ldr	r3, [sp, #0x14]
  3f3b3e:      	ldrb.w	r3, [r3, #0x1e0]
  3f3b42:      	cmp	r3, #0x0
  3f3b44:      	beq	0x3f3b8c <_ZN11SoldierView10updateStepEf+0x100c> @ imm = #0x44
  3f3b46:      	ldr	r3, [sp, #0x14]
  3f3b48:      	vldr	s14, [r3, #456]
  3f3b4c:      	vldr	s15, [sp, #16]
  3f3b50:      	vadd.f32	s15, s14, s15
  3f3b54:      	ldr	r3, [sp, #0x14]
  3f3b56:      	vstr	s15, [r3, #456]
  3f3b5a:      	b	0x3f3b96 <_ZN11SoldierView10updateStepEf+0x1016> @ imm = #0x38
// SoldierView::updateStep  ghidra=0x403b8c-0x403c43  elf=0x3f3b8c-0x3f3c43  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3f3b8c:      	ldr	r3, [sp, #0x14]
  3f3b8e:      	mov.w	r2, #0x0
  3f3b92:      	str.w	r2, [r3, #0x1c8]
  3f3b96:      	ldr	r3, [sp, #0x14]
  3f3b98:      	ldr	r3, [r3]
  3f3b9a:      	adds	r3, #0x50
  3f3b9c:      	ldr	r3, [r3]
  3f3b9e:      	ldr	r2, [sp, #0x14]
  3f3ba0:      	mov	r0, r2
  3f3ba2:      	blx	r3
  3f3ba4:      	mov	r3, r0
  3f3ba6:      	vldr	s15, [r3]
  3f3baa:      	vcvt.f64.f32	d8, s15
  3f3bae:      	ldr	r3, [sp, #0x14]
  3f3bb0:      	ldr	r3, [r3]
  3f3bb2:      	adds	r3, #0x50
  3f3bb4:      	ldr	r3, [r3]
  3f3bb6:      	ldr	r2, [sp, #0x14]
  3f3bb8:      	mov	r0, r2
  3f3bba:      	blx	r3
  3f3bbc:      	mov	r3, r0
  3f3bbe:      	vldr	s15, [r3, #4]
  3f3bc2:      	vcvt.f64.f32	d7, s15
  3f3bc6:      	add	r3, sp, #0x68
  3f3bc8:      	mov	r0, r3
  3f3bca:      	vmov.f64	d0, d8
  3f3bce:      	vmov.f64	d1, d7
  3f3bd2:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x2f2a
  3f3bd6:      	ldr	r3, [sp, #0x14]
  3f3bd8:      	ldrb.w	r3, [r3, #0x1e0]
  3f3bdc:      	cmp	r3, #0x0
  3f3bde:      	beq	0x3f3c2a <_ZN11SoldierView10updateStepEf+0x10aa> @ imm = #0x48
  3f3be0:      	ldr	r3, [sp, #0x14]
  3f3be2:      	ldrb.w	r3, [r3, #0x1e1]
  3f3be6:      	cmp	r3, #0x0
  3f3be8:      	bne	0x3f3c26 <_ZN11SoldierView10updateStepEf+0x10a6> @ imm = #0x3a
  3f3bea:      	add	r3, sp, #0xa8
  3f3bec:      	mov	r0, r3
  3f3bee:      	vldr	d0, [pc, #88]           @ 0x3f3c48 <_ZN11SoldierView10updateStepEf+0x10c8>
  3f3bf2:      	vldr	d1, [pc, #84]           @ 0x3f3c48 <_ZN11SoldierView10updateStepEf+0x10c8>
  3f3bf6:      	bl	0x3f0cac <_ZN23SoldierRemoteController9setTeamIdEi+0x2b8> @ imm = #-0x2f4e
  3f3bfa:      	mov	r4, sp
  3f3bfc:      	add	r3, sp, #0xa8
  3f3bfe:      	ldm	r3, {r0, r1, r2, r3}
  3f3c00:      	stm.w	r4, {r0, r1, r2, r3}
  3f3c04:      	add	r3, sp, #0x68
  3f3c06:      	ldm	r3, {r0, r1, r2, r3}
  3f3c08:      	bl	0x3f1010 <_ZN23SoldierRemoteController9setTeamIdEi+0x61c> @ imm = #-0x2bfc
  3f3c0c:      	mov	r3, r0
  3f3c0e:      	cmp	r3, #0x0
  3f3c10:      	beq	0x3f3c2a <_ZN11SoldierView10updateStepEf+0x10aa> @ imm = #0x16
  3f3c12:      	ldr	r3, [sp, #0x14]
  3f3c14:      	vldr	s14, [r3, #456]
  3f3c18:      	vmov.f32	s15, #1.000000e+00
  3f3c1c:      	vcmpe.f32	s14, s15
  3f3c20:      	vmrs	APSR_nzcv, fpscr
  3f3c24:      	ble	0x3f3c2a <_ZN11SoldierView10updateStepEf+0x10aa> @ imm = #0x2
  3f3c26:      	movs	r3, #0x1
  3f3c28:      	b	0x3f3c2c <_ZN11SoldierView10updateStepEf+0x10ac> @ imm = #0x0
  3f3c2a:      	movs	r3, #0x0
  3f3c2c:      	strb.w	r3, [sp, #0x1f]
  3f3c30:      	ldrb.w	r3, [sp, #0x1f]
  3f3c34:      	ldr	r0, [sp, #0x14]
  3f3c36:      	mov	r1, r3
  3f3c38:      	bl	0x3f27e4 <_ZN11SoldierView13updateVisibleEb> @ imm = #-0x1458
  3f3c3c:      	add	sp, #0xb8
  3f3c3e:      	vpop	{d8}
  3f3c42:      	pop	{r4, r5, r6, pc}
