// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2WorldRayCastWrapper::RayCastCallback  @ 0x6dde4c
/* b2WorldRayCastWrapper::RayCastCallback(b2RayCastInput const&, int) */

undefined4 __thiscall
b2WorldRayCastWrapper::RayCastCallback
          (b2WorldRayCastWrapper *this,b2RayCastInput *param_1,int param_2)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  b2Fixture *this_00;
  float extraout_s0;
  float fVar4;
  b2Vec2 abStack_2c [8];
  b2Vec2 abStack_24 [8];
  b2Vec2 abStack_1c [8];
  b2RayCastOutput abStack_14 [8];
  undefined4 local_c;
  
  iVar2 = b2BroadPhase::GetUserData(*(b2BroadPhase **)this,param_2);
  this_00 = *(b2Fixture **)(iVar2 + 0x10);
  iVar2 = *(int *)(iVar2 + 0x14);
  b2RayCastOutput::b2RayCastOutput(abStack_14);
  cVar1 = b2Fixture::RayCast(this_00,abStack_14,param_1,iVar2);
  if (cVar1 == '\0') {
    uVar3 = *(undefined4 *)(param_1 + 0x10);
  }
  else {
    fVar4 = (float)::operator*(extraout_s0,abStack_24);
    ::operator*(fVar4,abStack_1c);
    ::operator+(abStack_2c,abStack_24);
    uVar3 = (**(code **)(**(int **)(this + 4) + 8))
                      (*(undefined4 *)(this + 4),this_00,abStack_2c,abStack_14,local_c);
  }
  return uVar3;
}
