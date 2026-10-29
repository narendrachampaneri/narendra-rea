// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- FUN_006c150c  @ 0x6c150c
b2Vec2 * FUN_006c150c(b2Vec2 *param_1,undefined4 *param_2,int param_3)

{
  undefined4 *puVar1;
  float fVar2;
  undefined8 uVar3;
  int local_68;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  b2Vec2 abStack_38 [8];
  b2Vec2 abStack_30 [8];
  b2Vec2 abStack_28 [8];
  b2Vec2 abStack_20 [8];
  b2Vec2 abStack_18 [12];
  
  uVar3 = b2Vec2::b2Vec2(param_1);
  uVar3 = b2Vec2::Set(param_1,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  fVar2 = (float)b2Vec2::b2Vec2((b2Vec2 *)&local_58,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  for (local_68 = 0; local_68 < param_3; local_68 = local_68 + 1) {
    local_50 = local_58;
    uStack_4c = uStack_54;
    local_48 = param_2[local_68 * 2];
    uStack_44 = (param_2 + local_68 * 2)[1];
    puVar1 = param_2;
    if (local_68 + 1 < param_3) {
      puVar1 = param_2 + (local_68 + 1) * 2;
    }
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    operator-(abStack_38,(b2Vec2 *)&local_48);
    operator-(abStack_30,(b2Vec2 *)&local_40);
    b2Cross(abStack_38,abStack_30);
    operator+(abStack_28,(b2Vec2 *)&local_50);
    fVar2 = (float)operator+(abStack_20,abStack_28);
    operator*(fVar2,abStack_18);
    fVar2 = (float)b2Vec2::operator+=(param_1,abStack_18);
  }
  b2Vec2::operator*=(param_1,fVar2);
  return param_1;
}

// ---- FUN_006c3fdc  @ 0x6c3fdc
undefined4
FUN_006c3fdc(undefined4 param_1,b2Vec2 *param_2,undefined4 param_3,int param_4,b2Vec2 *param_5)

{
  float fVar1;
  undefined4 uVar2;
  int iVar3;
  float local_50;
  int local_4c;
  b2Rot abStack_30 [8];
  b2Rot abStack_28 [8];
  b2Transform abStack_20 [8];
  b2Transform abStack_18 [8];
  b2Vec2 abStack_10 [12];
  
  iVar3 = *(int *)(param_4 + 0x94);
  b2Mul(abStack_30,param_2 + 8);
  b2MulT(abStack_28,param_5 + 8);
  local_50 = 3.4028235e+38;
  for (local_4c = 0; local_4c < iVar3; local_4c = local_4c + 1) {
    fVar1 = (float)b2Dot((b2Vec2 *)(param_4 + 0x14 + local_4c * 8),(b2Vec2 *)abStack_28);
    if ((int)((uint)(fVar1 < local_50) << 0x1f) < 0) {
      local_50 = fVar1;
    }
  }
  b2Mul(abStack_20,param_2);
  b2Mul(abStack_18,param_5);
  operator-(abStack_10,(b2Vec2 *)abStack_18);
  uVar2 = b2Dot(abStack_10,(b2Vec2 *)abStack_30);
  return uVar2;
}

// ---- FUN_006c40d4  @ 0x6c40d4
float FUN_006c40d4(int *param_1,int param_2,b2Vec2 *param_3,undefined4 param_4,b2Vec2 *param_5)

{
  float fVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  int local_58;
  float local_54;
  int local_50;
  int local_4c;
  float local_48;
  int local_44;
  b2Vec2 abStack_20 [8];
  b2Transform abStack_18 [8];
  b2Transform abStack_10 [12];
  
  iVar3 = *(int *)(param_2 + 0x94);
  b2Mul(abStack_18,param_5);
  b2Mul(abStack_10,param_3);
  operator-(abStack_20,(b2Vec2 *)abStack_18);
  b2MulT((b2Rot *)abStack_10,param_3 + 8);
  local_58 = 0;
  local_54 = -3.4028235e+38;
  for (local_50 = 0; local_50 < iVar3; local_50 = local_50 + 1) {
    fVar1 = (float)b2Dot((b2Vec2 *)(param_2 + 0x54 + local_50 * 8),(b2Vec2 *)abStack_10);
    if (local_54 < fVar1) {
      local_58 = local_50;
      local_54 = fVar1;
    }
  }
  fVar1 = (float)FUN_006c3fdc(param_2,param_3,local_58,param_4,param_5);
  iVar4 = iVar3;
  if (-1 < local_58 + -1) {
    iVar4 = local_58;
  }
  fVar2 = (float)FUN_006c3fdc(param_2,param_3,iVar4 + -1,param_4,param_5);
  if (local_58 + 1 < iVar3) {
    local_4c = local_58 + 1;
  }
  else {
    local_4c = 0;
  }
  local_48 = (float)FUN_006c3fdc(param_2,param_3,local_4c,param_4,param_5);
  if ((fVar2 <= fVar1) || (fVar2 <= local_48)) {
    if (local_48 <= fVar1) {
      *param_1 = local_58;
      return fVar1;
    }
    local_44 = 1;
  }
  else {
    local_44 = -1;
    local_4c = iVar4 + -1;
    local_48 = fVar2;
  }
  while( true ) {
    if (local_44 == -1) {
      local_58 = iVar3;
      if (-1 < local_4c + -1) {
        local_58 = local_4c;
      }
      local_58 = local_58 + -1;
    }
    else if (local_4c + 1 < iVar3) {
      local_58 = local_4c + 1;
    }
    else {
      local_58 = 0;
    }
    fVar1 = (float)FUN_006c3fdc(param_2,param_3,local_58,param_4,param_5);
    if (fVar1 <= local_48) break;
    local_4c = local_58;
    local_48 = fVar1;
  }
  *param_1 = local_4c;
  return local_48;
}

// ---- FUN_006c42b8  @ 0x6c42b8
void FUN_006c42b8(undefined4 *param_1,int param_2,int param_3,undefined4 param_4,int param_5,
                 b2Vec2 *param_6)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  int local_4c;
  int local_48;
  undefined4 *local_44;
  int local_40;
  float local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  float local_24;
  int local_20;
  int local_1c;
  b2Rot abStack_18 [8];
  b2Rot abStack_10 [8];
  
  local_34 = param_2 + 0x54;
  local_30 = *(int *)(param_5 + 0x94);
  local_2c = param_5 + 0x14;
  local_28 = param_5 + 0x54;
  local_50 = param_4;
  local_4c = param_3;
  local_48 = param_2;
  local_44 = param_1;
  b2Mul(abStack_10,(b2Vec2 *)(param_3 + 8));
  b2MulT(abStack_18,param_6 + 8);
  local_40 = 0;
  local_3c = 3.4028235e+38;
  for (local_38 = 0; puVar2 = local_44, local_38 < local_30; local_38 = local_38 + 1) {
    local_24 = (float)b2Dot((b2Vec2 *)abStack_18,(b2Vec2 *)(local_38 * 8 + local_28));
    if ((int)((uint)(local_24 < local_3c) << 0x1f) < 0) {
      local_40 = local_38;
      local_3c = local_24;
    }
  }
  local_20 = local_40;
  if (local_40 + 1 < local_30) {
    local_1c = local_40 + 1;
  }
  else {
    local_1c = 0;
  }
  b2Mul((b2Transform *)&local_58,param_6);
  puVar1 = local_44;
  *puVar2 = local_58;
  puVar2[1] = uStack_54;
  *(char *)(local_44 + 2) = (char)local_50;
  *(char *)((int)local_44 + 9) = (char)local_20;
  *(undefined1 *)((int)local_44 + 10) = 1;
  *(undefined1 *)((int)local_44 + 0xb) = 0;
  puVar2 = local_44 + 3;
  b2Mul((b2Transform *)&local_58,param_6);
  *puVar2 = local_58;
  puVar1[4] = uStack_54;
  *(char *)(local_44 + 5) = (char)local_50;
  *(char *)((int)local_44 + 0x15) = (char)local_1c;
  *(undefined1 *)((int)local_44 + 0x16) = 1;
  *(undefined1 *)((int)local_44 + 0x17) = 0;
  return;
}

// ---- FUN_006c9338  @ 0x6c9338
void FUN_006c9338(float param_1,float param_2,int param_3,int param_4)

{
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    b2Vec2::b2Vec2((b2Vec2 *)&b2Vec2_zero,param_1,param_2);
  }
  return;
}
