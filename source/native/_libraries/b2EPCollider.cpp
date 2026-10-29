// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- b2EPCollider::Collide  @ 0x6c2b7c
/* b2EPCollider::Collide(b2Manifold*, b2EdgeShape const*, b2Transform const&, b2PolygonShape const*,
   b2Transform const&) */

void b2EPCollider::Collide
               (b2Manifold *param_1,b2EdgeShape *param_2,b2Transform *param_3,
               b2PolygonShape *param_4,b2Transform *param_5)

{
  b2Manifold *pbVar1;
  b2Manifold *pbVar2;
  float fVar3;
  undefined4 uVar4;
  b2Manifold bVar5;
  b2EdgeShape *pbVar6;
  b2Vec2 *pbVar7;
  int iVar8;
  b2ClipVertex *pbVar9;
  undefined4 extraout_s0;
  undefined4 extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  undefined8 uVar10;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  undefined4 uVar11;
  undefined4 local_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  b2PolygonShape *local_120;
  b2Transform *local_11c;
  b2EdgeShape *local_118;
  b2Manifold *local_114;
  char local_10c;
  char local_10b;
  b2Transform local_10a;
  b2Transform local_109;
  float local_108;
  float local_104;
  int local_100;
  int local_fc;
  float local_f8;
  int local_f4;
  int local_f0;
  int local_ec;
  float local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  float local_dc;
  int local_d8;
  int local_d4;
  int local_d0;
  float local_cc;
  b2EdgeShape *local_c8;
  b2Vec2 local_c4 [8];
  b2Vec2 abStack_bc [8];
  int local_b4;
  int iStack_b0;
  float local_ac;
  int local_a8;
  int iStack_a4;
  float local_a0;
  int local_9c;
  int local_98;
  float fStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined1 local_88;
  undefined1 local_87;
  undefined1 local_86;
  undefined1 local_85;
  undefined4 local_84;
  undefined4 uStack_80;
  undefined1 local_7c;
  undefined1 local_7b;
  undefined1 local_7a;
  undefined1 local_79;
  b2ClipVertex abStack_78 [24];
  b2Vec2 local_60 [4];
  undefined4 local_5c;
  b2EdgeShape abStack_58 [16];
  int local_48;
  int local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  b2Vec2 abStack_28 [8];
  int local_20;
  undefined4 local_1c;
  undefined4 uStack_18;
  int local_14;
  
  local_120 = param_4;
  local_11c = param_3;
  local_118 = param_2;
  local_114 = param_1;
  b2MulT((b2Transform *)&local_130,(b2Transform *)param_4);
  pbVar1 = local_114;
  *(undefined4 *)(param_1 + 0x84) = local_130;
  *(undefined4 *)(param_1 + 0x88) = uStack_12c;
  *(undefined4 *)(param_1 + 0x8c) = uStack_128;
  *(undefined4 *)(param_1 + 0x90) = uStack_124;
  b2Mul((b2Transform *)&local_130,(b2Vec2 *)(local_114 + 0x84));
  *(undefined4 *)(pbVar1 + 0x94) = local_130;
  *(undefined4 *)(pbVar1 + 0x98) = uStack_12c;
  uVar4 = *(undefined4 *)(local_11c + 0x20);
  *(undefined4 *)(local_114 + 0x9c) = *(undefined4 *)(local_11c + 0x1c);
  *(undefined4 *)(local_114 + 0xa0) = uVar4;
  uVar4 = *(undefined4 *)(local_11c + 0x10);
  *(undefined4 *)(local_114 + 0xa4) = *(undefined4 *)(local_11c + 0xc);
  *(undefined4 *)(local_114 + 0xa8) = uVar4;
  uVar4 = *(undefined4 *)(local_11c + 0x18);
  *(undefined4 *)(local_114 + 0xac) = *(undefined4 *)(local_11c + 0x14);
  *(undefined4 *)(local_114 + 0xb0) = uVar4;
  uVar4 = *(undefined4 *)(local_11c + 0x28);
  *(undefined4 *)(local_114 + 0xb4) = *(undefined4 *)(local_11c + 0x24);
  *(undefined4 *)(local_114 + 0xb8) = uVar4;
  local_10a = local_11c[0x2c];
  local_109 = local_11c[0x2d];
  ::operator-(local_c4,(b2Vec2 *)(local_114 + 0xac));
  uVar10 = b2Vec2::Normalize(local_c4);
  b2Vec2::Set((b2Vec2 *)(local_114 + 0xc4),(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
  pbVar7 = (b2Vec2 *)(local_114 + 0xc4);
  ::operator-((b2Vec2 *)&local_48,(b2Vec2 *)(local_114 + 0x94));
  local_e8 = (float)b2Dot(pbVar7,(b2Vec2 *)&local_48);
  local_108 = 0.0;
  local_104 = 0.0;
  local_10c = '\0';
  local_10b = '\0';
  if (local_10a != (b2Transform)0x0) {
    ::operator-(local_60,(b2Vec2 *)(local_114 + 0xa4));
    uVar10 = b2Vec2::Normalize(local_60);
    b2Vec2::Set((b2Vec2 *)(local_114 + 0xbc),(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    fVar3 = (float)b2Cross(local_60,local_c4);
    local_10c = 0.0 <= fVar3;
    pbVar7 = (b2Vec2 *)(local_114 + 0xbc);
    ::operator-((b2Vec2 *)&local_48,(b2Vec2 *)(local_114 + 0x94));
    local_108 = (float)b2Dot(pbVar7,(b2Vec2 *)&local_48);
  }
  if (local_109 != (b2Transform)0x0) {
    ::operator-(local_60,(b2Vec2 *)(local_114 + 0xb4));
    uVar10 = b2Vec2::Normalize(local_60);
    b2Vec2::Set((b2Vec2 *)(local_114 + 0xcc),(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    fVar3 = (float)b2Cross(local_c4,local_60);
    local_10b = 0.0 < fVar3;
    pbVar7 = (b2Vec2 *)(local_114 + 0xcc);
    ::operator-((b2Vec2 *)&local_48,(b2Vec2 *)(local_114 + 0x94));
    local_104 = (float)b2Dot(pbVar7,(b2Vec2 *)&local_48);
  }
  pbVar1 = local_114;
  if ((local_10a == (b2Transform)0x0) || (local_109 == (b2Transform)0x0)) {
    if (local_10a == (b2Transform)0x0) {
      if (local_109 == (b2Transform)0x0) {
        local_114[0xf8] = (b2Manifold)(0.0 <= local_e8);
        if (local_114[0xf8] == (b2Manifold)0x0) {
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar1 + 0xd4) = local_130;
          *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
          *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 200);
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 200);
        }
        else {
          *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar2 = local_114;
          *(undefined4 *)(pbVar1 + 0xe4) = local_130;
          *(undefined4 *)(pbVar1 + 0xe8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar2 + 0xec) = local_130;
          *(undefined4 *)(pbVar2 + 0xf0) = uStack_12c;
        }
      }
      else if (local_10b == '\0') {
        if ((local_e8 < 0.0) || (local_104 < 0.0)) {
          bVar5 = (b2Manifold)0x0;
        }
        else {
          bVar5 = (b2Manifold)0x1;
        }
        local_114[0xf8] = bVar5;
        if (local_114[0xf8] == (b2Manifold)0x0) {
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar2 = local_114;
          *(undefined4 *)(pbVar1 + 0xd4) = local_130;
          *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar2 + 0xe4) = local_130;
          *(undefined4 *)(pbVar2 + 0xe8) = uStack_12c;
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 200);
        }
        else {
          *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar1 + 0xe4) = local_130;
          *(undefined4 *)(pbVar1 + 0xe8) = uStack_12c;
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 200);
        }
      }
      else {
        if ((0.0 <= local_e8) || (0.0 <= local_104)) {
          bVar5 = (b2Manifold)0x1;
        }
        else {
          bVar5 = (b2Manifold)0x0;
        }
        local_114[0xf8] = bVar5;
        if (local_114[0xf8] == (b2Manifold)0x0) {
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar2 = local_114;
          *(undefined4 *)(pbVar1 + 0xd4) = local_130;
          *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar2 + 0xe4) = local_130;
          *(undefined4 *)(pbVar2 + 0xe8) = uStack_12c;
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 200);
        }
        else {
          *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar1 + 0xe4) = local_130;
          *(undefined4 *)(pbVar1 + 0xe8) = uStack_12c;
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xcc);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 0xd0);
        }
      }
    }
    else if (local_10c == '\0') {
      if ((local_108 < 0.0) || (local_e8 < 0.0)) {
        bVar5 = (b2Manifold)0x0;
      }
      else {
        bVar5 = (b2Manifold)0x1;
      }
      local_114[0xf8] = bVar5;
      if (local_114[0xf8] == (b2Manifold)0x0) {
        b2Vec2::operator-((b2Vec2 *)&local_130);
        pbVar2 = local_114;
        *(undefined4 *)(pbVar1 + 0xd4) = local_130;
        *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
        *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 200);
        b2Vec2::operator-((b2Vec2 *)&local_130);
        *(undefined4 *)(pbVar2 + 0xec) = local_130;
        *(undefined4 *)(pbVar2 + 0xf0) = uStack_12c;
      }
      else {
        *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
        *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 200);
        b2Vec2::operator-((b2Vec2 *)&local_130);
        *(undefined4 *)(pbVar1 + 0xec) = local_130;
        *(undefined4 *)(pbVar1 + 0xf0) = uStack_12c;
      }
    }
    else {
      if ((0.0 <= local_108) || (0.0 <= local_e8)) {
        bVar5 = (b2Manifold)0x1;
      }
      else {
        bVar5 = (b2Manifold)0x0;
      }
      local_114[0xf8] = bVar5;
      if (local_114[0xf8] == (b2Manifold)0x0) {
        b2Vec2::operator-((b2Vec2 *)&local_130);
        pbVar2 = local_114;
        *(undefined4 *)(pbVar1 + 0xd4) = local_130;
        *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
        *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 200);
        b2Vec2::operator-((b2Vec2 *)&local_130);
        *(undefined4 *)(pbVar2 + 0xec) = local_130;
        *(undefined4 *)(pbVar2 + 0xf0) = uStack_12c;
      }
      else {
        *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
        *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xbc);
        *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 0xc0);
        b2Vec2::operator-((b2Vec2 *)&local_130);
        *(undefined4 *)(pbVar1 + 0xec) = local_130;
        *(undefined4 *)(pbVar1 + 0xf0) = uStack_12c;
      }
    }
  }
  else if ((local_10c == '\0') || (local_10b == '\0')) {
    if (local_10c == '\0') {
      if (local_10b == '\0') {
        if (((local_108 < 0.0) || (local_e8 < 0.0)) || (local_104 < 0.0)) {
          bVar5 = (b2Manifold)0x0;
        }
        else {
          bVar5 = (b2Manifold)0x1;
        }
        local_114[0xf8] = bVar5;
        if (local_114[0xf8] == (b2Manifold)0x0) {
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar2 = local_114;
          *(undefined4 *)(pbVar1 + 0xd4) = local_130;
          *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar1 = local_114;
          *(undefined4 *)(pbVar2 + 0xe4) = local_130;
          *(undefined4 *)(pbVar2 + 0xe8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar1 + 0xec) = local_130;
          *(undefined4 *)(pbVar1 + 0xf0) = uStack_12c;
        }
        else {
          *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
          *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 200);
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 200);
        }
      }
      else {
        if ((0.0 <= local_104) || ((0.0 <= local_108 && (0.0 <= local_e8)))) {
          bVar5 = (b2Manifold)0x1;
        }
        else {
          bVar5 = (b2Manifold)0x0;
        }
        local_114[0xf8] = bVar5;
        if (local_114[0xf8] == (b2Manifold)0x0) {
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar2 = local_114;
          *(undefined4 *)(pbVar1 + 0xd4) = local_130;
          *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          pbVar1 = local_114;
          *(undefined4 *)(pbVar2 + 0xe4) = local_130;
          *(undefined4 *)(pbVar2 + 0xe8) = uStack_12c;
          b2Vec2::operator-((b2Vec2 *)&local_130);
          *(undefined4 *)(pbVar1 + 0xec) = local_130;
          *(undefined4 *)(pbVar1 + 0xf0) = uStack_12c;
        }
        else {
          *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
          *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xc4);
          *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 200);
          *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xcc);
          *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 0xd0);
        }
      }
    }
    else {
      if ((0.0 <= local_108) || ((0.0 <= local_e8 && (0.0 <= local_104)))) {
        bVar5 = (b2Manifold)0x1;
      }
      else {
        bVar5 = (b2Manifold)0x0;
      }
      local_114[0xf8] = bVar5;
      if (local_114[0xf8] == (b2Manifold)0x0) {
        b2Vec2::operator-((b2Vec2 *)&local_130);
        pbVar2 = local_114;
        *(undefined4 *)(pbVar1 + 0xd4) = local_130;
        *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
        b2Vec2::operator-((b2Vec2 *)&local_130);
        pbVar1 = local_114;
        *(undefined4 *)(pbVar2 + 0xe4) = local_130;
        *(undefined4 *)(pbVar2 + 0xe8) = uStack_12c;
        b2Vec2::operator-((b2Vec2 *)&local_130);
        *(undefined4 *)(pbVar1 + 0xec) = local_130;
        *(undefined4 *)(pbVar1 + 0xf0) = uStack_12c;
      }
      else {
        *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
        *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xbc);
        *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 0xc0);
        *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xc4);
        *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 200);
      }
    }
  }
  else {
    if (((0.0 <= local_108) || (0.0 <= local_e8)) || (0.0 <= local_104)) {
      bVar5 = (b2Manifold)0x1;
    }
    else {
      bVar5 = (b2Manifold)0x0;
    }
    local_114[0xf8] = bVar5;
    if (local_114[0xf8] == (b2Manifold)0x0) {
      b2Vec2::operator-((b2Vec2 *)&local_130);
      pbVar2 = local_114;
      *(undefined4 *)(pbVar1 + 0xd4) = local_130;
      *(undefined4 *)(pbVar1 + 0xd8) = uStack_12c;
      b2Vec2::operator-((b2Vec2 *)&local_130);
      pbVar1 = local_114;
      *(undefined4 *)(pbVar2 + 0xe4) = local_130;
      *(undefined4 *)(pbVar2 + 0xe8) = uStack_12c;
      b2Vec2::operator-((b2Vec2 *)&local_130);
      *(undefined4 *)(pbVar1 + 0xec) = local_130;
      *(undefined4 *)(pbVar1 + 0xf0) = uStack_12c;
    }
    else {
      *(undefined4 *)(local_114 + 0xd4) = *(undefined4 *)(local_114 + 0xc4);
      *(undefined4 *)(local_114 + 0xd8) = *(undefined4 *)(local_114 + 200);
      *(undefined4 *)(local_114 + 0xe4) = *(undefined4 *)(local_114 + 0xbc);
      *(undefined4 *)(local_114 + 0xe8) = *(undefined4 *)(local_114 + 0xc0);
      *(undefined4 *)(local_114 + 0xec) = *(undefined4 *)(local_114 + 0xcc);
      *(undefined4 *)(local_114 + 0xf0) = *(undefined4 *)(local_114 + 0xd0);
    }
  }
  *(undefined4 *)(local_114 + 0x80) = *(undefined4 *)(param_5 + 0x94);
  for (local_100 = 0; iVar8 = local_100, pbVar1 = local_114, local_100 < *(int *)(param_5 + 0x94);
      local_100 = local_100 + 1) {
    b2Mul((b2Transform *)&local_130,(b2Vec2 *)(local_114 + 0x84));
    pbVar2 = local_114;
    *(undefined4 *)(pbVar1 + iVar8 * 8) = local_130;
    *(undefined4 *)(pbVar1 + iVar8 * 8 + 4) = uStack_12c;
    iVar8 = local_100 + 8;
    b2Mul((b2Rot *)&local_130,(b2Vec2 *)(local_114 + 0x8c));
    *(undefined4 *)(pbVar2 + iVar8 * 8) = local_130;
    *(undefined4 *)(pbVar2 + iVar8 * 8 + 4) = uStack_12c;
  }
  *(undefined4 *)(local_114 + 0xf4) = 0x3ca3d70a;
  *(undefined4 *)(local_118 + 0x3c) = 0;
  ComputeEdgeSeparation();
  if (((local_b4 != 0) && (local_ac <= *(float *)(local_114 + 0xf4))) &&
     ((ComputePolygonSeparation(), local_a8 == 0 || (local_a0 <= *(float *)(local_114 + 0xf4))))) {
    local_e4 = 0x3f7ae148;
    local_e0 = 0x3a83126f;
    if (local_a8 == 0) {
      local_9c = local_b4;
      local_98 = iStack_b0;
      fStack_94 = local_ac;
    }
    else if (local_a0 <= local_ac * 0.98 + 0.001) {
      local_9c = local_b4;
      local_98 = iStack_b0;
      fStack_94 = local_ac;
    }
    else {
      local_9c = local_a8;
      local_98 = iStack_a4;
      fStack_94 = local_a0;
    }
    pbVar9 = (b2ClipVertex *)&local_90;
    for (iVar8 = 1; iVar8 != -1; iVar8 = iVar8 + -1) {
      b2ClipVertex::b2ClipVertex(pbVar9);
      pbVar9 = pbVar9 + 0xc;
    }
    uVar10 = b2ReferenceFace::b2ReferenceFace((b2ReferenceFace *)&local_48);
    if (local_9c == 1) {
      *(undefined4 *)(local_118 + 0x38) = 1;
      local_fc = 0;
      local_f8 = (float)b2Dot((b2Vec2 *)(local_114 + 0xd4),(b2Vec2 *)(local_114 + 0x40));
      uVar4 = extraout_s0;
      uVar11 = extraout_s1;
      for (local_f4 = 1; uVar10 = CONCAT44(uVar11,uVar4), local_f4 < *(int *)(local_114 + 0x80);
          local_f4 = local_f4 + 1) {
        local_dc = (float)b2Dot((b2Vec2 *)(local_114 + 0xd4),
                                (b2Vec2 *)(local_114 + (local_f4 + 8) * 8));
        if ((int)((uint)(local_dc < local_f8) << 0x1f) < 0) {
          local_fc = local_f4;
          local_f8 = local_dc;
        }
        uVar4 = extraout_s0_00;
        uVar11 = extraout_s1_00;
      }
      local_d8 = local_fc;
      if (local_fc + 1 < *(int *)(local_114 + 0x80)) {
        local_d4 = local_fc + 1;
      }
      else {
        local_d4 = 0;
      }
      local_90 = *(undefined4 *)(local_114 + local_fc * 8);
      uStack_8c = *(undefined4 *)(local_114 + local_fc * 8 + 4);
      local_88 = 0;
      local_87 = (undefined1)local_fc;
      local_86 = 1;
      local_85 = 0;
      local_84 = *(undefined4 *)(local_114 + local_d4 * 8);
      uStack_80 = *(undefined4 *)(local_114 + local_d4 * 8 + 4);
      local_7c = 0;
      local_7b = (undefined1)local_d4;
      local_7a = 1;
      local_79 = 0;
      if (local_114[0xf8] == (b2Manifold)0x0) {
        local_48 = 1;
        local_44 = 0;
        local_40 = *(undefined4 *)(local_114 + 0xac);
        uStack_3c = *(undefined4 *)(local_114 + 0xb0);
        local_38 = *(undefined4 *)(local_114 + 0xa4);
        uStack_34 = *(undefined4 *)(local_114 + 0xa8);
        uVar10 = b2Vec2::operator-((b2Vec2 *)&local_130);
        local_30 = local_130;
        local_2c = uStack_12c;
      }
      else {
        local_48 = 0;
        local_44 = 1;
        local_40 = *(undefined4 *)(local_114 + 0xa4);
        uStack_3c = *(undefined4 *)(local_114 + 0xa8);
        local_38 = *(undefined4 *)(local_114 + 0xac);
        uStack_34 = *(undefined4 *)(local_114 + 0xb0);
        local_30 = *(undefined4 *)(local_114 + 0xc4);
        local_2c = *(undefined4 *)(local_114 + 200);
      }
    }
    else {
      *(undefined4 *)(local_118 + 0x38) = 2;
      local_90 = *(undefined4 *)(local_114 + 0xa4);
      uStack_8c = *(undefined4 *)(local_114 + 0xa8);
      local_88 = 0;
      local_87 = (undefined1)local_98;
      local_86 = 0;
      local_85 = 1;
      local_84 = *(undefined4 *)(local_114 + 0xac);
      uStack_80 = *(undefined4 *)(local_114 + 0xb0);
      local_7c = 0;
      local_7a = 0;
      local_79 = 1;
      local_48 = local_98;
      if (local_98 + 1 < *(int *)(local_114 + 0x80)) {
        local_44 = local_98 + 1;
      }
      else {
        local_44 = 0;
      }
      local_40 = *(undefined4 *)(local_114 + local_98 * 8);
      uStack_3c = *(undefined4 *)(local_114 + local_98 * 8 + 4);
      local_38 = *(undefined4 *)(local_114 + local_44 * 8);
      uStack_34 = *(undefined4 *)(local_114 + local_44 * 8 + 4);
      local_30 = *(undefined4 *)(local_114 + (local_98 + 8) * 8);
      local_2c = *(undefined4 *)(local_114 + (local_98 + 8) * 8 + 4);
      local_7b = local_87;
    }
    b2Vec2::Set(abStack_28,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    b2Vec2::operator-((b2Vec2 *)&local_130);
    local_1c = local_130;
    uStack_18 = uStack_12c;
    local_20 = b2Dot(abStack_28,(b2Vec2 *)&local_40);
    local_14 = b2Dot((b2Vec2 *)&local_1c,(b2Vec2 *)&local_38);
    pbVar9 = abStack_78;
    fVar3 = extraout_s0_01;
    for (iVar8 = 1; iVar8 != -1; iVar8 = iVar8 + -1) {
      fVar3 = (float)b2ClipVertex::b2ClipVertex(pbVar9);
      pbVar9 = pbVar9 + 0xc;
    }
    pbVar9 = (b2ClipVertex *)local_60;
    for (iVar8 = 1; iVar8 != -1; iVar8 = iVar8 + -1) {
      fVar3 = (float)b2ClipVertex::b2ClipVertex(pbVar9);
      pbVar9 = pbVar9 + 0xc;
    }
    local_d0 = b2ClipSegmentToLine(abStack_78,(b2ClipVertex *)&local_90,abStack_28,fVar3,local_20);
    if ((1 < local_d0) &&
       (local_d0 = b2ClipSegmentToLine((b2ClipVertex *)local_60,abStack_78,(b2Vec2 *)&local_1c,
                                       extraout_s0_02,local_14), 1 < local_d0)) {
      if (local_9c == 1) {
        *(undefined4 *)(local_118 + 0x28) = local_30;
        *(undefined4 *)(local_118 + 0x2c) = local_2c;
        *(undefined4 *)(local_118 + 0x30) = local_40;
        *(undefined4 *)(local_118 + 0x34) = uStack_3c;
      }
      else {
        uVar4 = *(undefined4 *)(param_5 + (local_48 + 10) * 8 + 8);
        *(undefined4 *)(local_118 + 0x28) = *(undefined4 *)(param_5 + (local_48 + 10) * 8 + 4);
        *(undefined4 *)(local_118 + 0x2c) = uVar4;
        uVar4 = *(undefined4 *)(param_5 + (local_48 + 2) * 8 + 8);
        *(undefined4 *)(local_118 + 0x30) = *(undefined4 *)(param_5 + (local_48 + 2) * 8 + 4);
        *(undefined4 *)(local_118 + 0x34) = uVar4;
      }
      local_f0 = 0;
      for (local_ec = 0; local_ec < 2; local_ec = local_ec + 1) {
        ::operator-(abStack_bc,local_60 + local_ec * 0xc);
        local_cc = (float)b2Dot((b2Vec2 *)&local_30,abStack_bc);
        if (local_cc <= *(float *)(local_114 + 0xf4)) {
          pbVar6 = local_118 + local_f0 * 0x14;
          local_c8 = pbVar6;
          if (local_9c == 1) {
            b2MulT((b2Transform *)&local_130,(b2Vec2 *)(local_114 + 0x84));
            *(undefined4 *)pbVar6 = local_130;
            *(undefined4 *)(pbVar6 + 4) = uStack_12c;
            *(undefined4 *)(local_c8 + 0x10) = *(undefined4 *)(abStack_58 + local_ec * 0xc);
          }
          else {
            uVar4 = (&local_5c)[local_ec * 3];
            *(undefined4 *)pbVar6 = *(undefined4 *)(local_60 + local_ec * 0xc);
            *(undefined4 *)(pbVar6 + 4) = uVar4;
            pbVar6[0x12] = abStack_58[local_ec * 0xc + 3];
            pbVar6[0x13] = abStack_58[local_ec * 0xc + 2];
            pbVar6[0x10] = abStack_58[local_ec * 0xc + 1];
            pbVar6[0x11] = abStack_58[local_ec * 0xc];
          }
          local_f0 = local_f0 + 1;
        }
      }
      *(int *)(local_118 + 0x3c) = local_f0;
    }
  }
  return;
}

// ---- b2EPCollider::ComputeEdgeSeparation  @ 0x6c3c78
/* b2EPCollider::ComputeEdgeSeparation() */

undefined4 * b2EPCollider::ComputeEdgeSeparation(void)

{
  undefined4 *in_r0;
  float fVar1;
  int in_r1;
  int local_18;
  b2Vec2 abStack_10 [8];
  
  *in_r0 = 1;
  in_r0[1] = (uint)(*(char *)(in_r1 + 0xf8) == '\0');
  in_r0[2] = 0x7f7fffff;
  for (local_18 = 0; local_18 < *(int *)(in_r1 + 0x80); local_18 = local_18 + 1) {
    ::operator-(abStack_10,(b2Vec2 *)(in_r1 + local_18 * 8));
    fVar1 = (float)b2Dot((b2Vec2 *)(in_r1 + 0xd4),abStack_10);
    if (fVar1 < (float)in_r0[2]) {
      in_r0[2] = fVar1;
    }
  }
  return in_r0;
}

// ---- b2EPCollider::ComputePolygonSeparation  @ 0x6c3d0c
/* b2EPCollider::ComputePolygonSeparation() */

undefined4 * b2EPCollider::ComputePolygonSeparation(void)

{
  int iVar1;
  undefined4 *in_r0;
  float extraout_r0;
  float fVar2;
  int in_r1;
  char extraout_r3;
  char cVar3;
  char extraout_r3_00;
  float in_s0;
  float in_s1;
  undefined8 uVar4;
  int local_30;
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  *in_r0 = 0;
  in_r0[1] = 0xffffffff;
  in_r0[2] = 0xff7fffff;
  b2Vec2::b2Vec2(abStack_20,in_s0,in_s1);
  local_30 = 0;
  while( true ) {
    if (*(int *)(in_r1 + 0x80) <= local_30) {
      return in_r0;
    }
    b2Vec2::operator-(abStack_18);
    ::operator-(abStack_10,(b2Vec2 *)(in_r1 + local_30 * 8));
    b2Dot(abStack_18,abStack_10);
    ::operator-(abStack_10,(b2Vec2 *)(in_r1 + local_30 * 8));
    uVar4 = b2Dot(abStack_18,abStack_10);
    b2Min<float>((float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    if ((int)((uint)(*(float *)(in_r1 + 0xf4) < extraout_r0) << 0x1f) < 0) break;
    fVar2 = (float)b2Dot(abStack_18,abStack_20);
    if (fVar2 < 0.0) {
      ::operator-(abStack_10,abStack_18);
      fVar2 = (float)b2Dot(abStack_10,(b2Vec2 *)(in_r1 + 0xd4));
      iVar1 = (uint)(fVar2 < -0.03490659) << 0x1f;
      cVar3 = extraout_r3_00;
      if (-1 < iVar1) {
        cVar3 = '\0';
      }
      if (iVar1 < 0) {
        cVar3 = '\x01';
      }
    }
    else {
      ::operator-(abStack_10,abStack_18);
      fVar2 = (float)b2Dot(abStack_10,(b2Vec2 *)(in_r1 + 0xd4));
      iVar1 = (uint)(fVar2 < -0.03490659) << 0x1f;
      cVar3 = extraout_r3;
      if (-1 < iVar1) {
        cVar3 = '\0';
      }
      if (iVar1 < 0) {
        cVar3 = '\x01';
      }
    }
    if ((cVar3 == '\0') && ((int)((uint)((float)in_r0[2] < extraout_r0) << 0x1f) < 0)) {
      *in_r0 = 2;
      in_r0[1] = local_30;
      in_r0[2] = extraout_r0;
    }
    local_30 = local_30 + 1;
  }
  *in_r0 = 2;
  in_r0[1] = local_30;
  in_r0[2] = extraout_r0;
  return in_r0;
}

// ---- b2EPCollider::b2EPCollider  @ 0x6c3f10
/* b2EPCollider::b2EPCollider() */

b2EPCollider * __thiscall b2EPCollider::b2EPCollider(b2EPCollider *this)

{
  b2TempPolygon::b2TempPolygon((b2TempPolygon *)this);
  b2Transform::b2Transform((b2Transform *)(this + 0x84));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x94));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x9c));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xa4));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xac));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xb4));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xbc));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xc4));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xcc));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xd4));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xe4));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0xec));
  return this;
}
