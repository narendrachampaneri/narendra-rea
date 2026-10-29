// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2WorldQueryWrapper::QueryCallback  @ 0x6dddc0
/* b2WorldQueryWrapper::QueryCallback(int) */

undefined4 __thiscall b2WorldQueryWrapper::QueryCallback(b2WorldQueryWrapper *this,int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = b2BroadPhase::GetUserData(*(b2BroadPhase **)this,param_1);
  uVar2 = (**(code **)(**(int **)(this + 4) + 8))
                    (*(undefined4 *)(this + 4),*(undefined4 *)(iVar1 + 0x10));
  return uVar2;
}
