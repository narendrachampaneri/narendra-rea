// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 23 functions

// ---- __cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info  @ 0x796cdc
/* __cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info() */

__vmi_class_type_info * __thiscall
__cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info(__vmi_class_type_info *this)

{
  *(undefined ***)this = &PTR____vmi_class_type_info_1_0093d758;
  __class_type_info::~__class_type_info((__class_type_info *)this);
  return this;
}

// ---- __cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info  @ 0x796cf8
/* __cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info() */

__vmi_class_type_info * __thiscall
__cxxabiv1::__vmi_class_type_info::~__vmi_class_type_info(__vmi_class_type_info *this)

{
  ~__vmi_class_type_info(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__vmi_class_type_info::__do_find_public_src  @ 0x796d0c
/* __cxxabiv1::__vmi_class_type_info::__do_find_public_src(int, void const*,
   __cxxabiv1::__class_type_info const*, void const*) const */

uint __thiscall
__cxxabiv1::__vmi_class_type_info::__do_find_public_src
          (__vmi_class_type_info *this,int param_1,void *param_2,__class_type_info *param_3,
          void *param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  __vmi_class_type_info *p_Var5;
  
  if ((param_2 == param_4) && (iVar4 = FUN_007c6dbc(this,param_3), iVar4 != 0)) {
    uVar2 = 6;
  }
  else {
    iVar4 = *(int *)(this + 0xc);
    p_Var5 = this + iVar4 * 8 + 4;
    while (iVar4 = iVar4 + -1, iVar4 != -1) {
      uVar2 = *(uint *)(p_Var5 + 8);
      iVar3 = (int)uVar2 >> 8;
      if ((uVar2 & 2) != 0) {
        if ((uVar2 & 1) != 0) {
          if (param_1 == -3) goto LAB_00796d5c;
          iVar3 = *(int *)(*(int *)param_2 + iVar3);
        }
        uVar1 = (**(code **)(**(int **)(p_Var5 + 4) + 0x20))
                          (*(int **)(p_Var5 + 4),param_1,iVar3 + (int)param_2,param_3,param_4);
        if (3 < (int)uVar1) {
          if ((uVar2 & 1) == 0) {
            return uVar1;
          }
          return uVar1 | 1;
        }
      }
LAB_00796d5c:
      p_Var5 = p_Var5 + -8;
    }
    uVar2 = 1;
  }
  return uVar2;
}

// ---- __cxxabiv1::__vmi_class_type_info::__do_dyncast  @ 0x796d8c
/* __cxxabiv1::__vmi_class_type_info::__do_dyncast(int, __cxxabiv1::__class_type_info::__sub_kind,
   __cxxabiv1::__class_type_info const*, void const*, __cxxabiv1::__class_type_info const*, void
   const*, __cxxabiv1::__class_type_info::__dyncast_result&) const */

int __thiscall
__cxxabiv1::__vmi_class_type_info::__do_dyncast
          (__vmi_class_type_info *this,int param_1,int param_3,int *param_4,int *param_5,
          undefined4 param_6,int *param_7,int *param_8)

{
  bool bVar1;
  byte bVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  __vmi_class_type_info *p_Var8;
  int iVar9;
  uint uVar10;
  bool bVar11;
  undefined4 uVar12;
  int *piVar13;
  int *piVar14;
  int local_70;
  int local_64;
  int local_3c;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  
  if (param_8[4] << 0x1b < 0) {
    param_8[4] = *(int *)(this + 8);
  }
  if ((param_5 == param_7) && (iVar3 = FUN_007c6dbc(this,param_6), iVar3 != 0)) {
    param_8[2] = param_3;
  }
  else {
    iVar3 = FUN_007c6dbc(this,param_4);
    if (iVar3 == 0) {
      if (param_1 < 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = (int)param_7 - param_1;
      }
      local_64 = 0;
      bVar1 = true;
      bVar2 = 0;
      do {
        local_70 = *(int *)(this + 0xc);
        p_Var8 = this + local_70 * 8 + 4;
        while (local_70 = local_70 + -1, local_70 != -1) {
          iVar6 = *(int *)(p_Var8 + 8);
          local_2c = param_8[4];
          iVar9 = iVar6 << 0x1f;
          bVar11 = iVar9 < 0;
          local_3c = 0;
          iVar3 = iVar6 >> 8;
          local_38 = 0;
          if (bVar11) {
            iVar9 = *param_5;
          }
          local_34 = 0;
          if (bVar11) {
            iVar3 = *(int *)(iVar9 + iVar3);
          }
          local_30 = 0;
          if ((uVar5 == 0) || (uVar5 < (uint)((int)param_5 + iVar3) != bVar1)) {
            if ((iVar6 << 0x1e < 0) || ((param_1 != -2 || ((local_2c & 3) != 0)))) {
              piVar14 = &local_3c;
              uVar12 = param_6;
              piVar13 = param_7;
              iVar3 = (**(code **)(**(int **)(p_Var8 + 4) + 0x1c))(*(int **)(p_Var8 + 4),param_1);
              uVar4 = local_30;
              uVar7 = local_34 | param_8[2];
              param_8[2] = uVar7;
              if ((local_30 & 0xfffffffb) == 2) {
                param_8[3] = local_30;
                *param_8 = local_3c;
                param_8[1] = local_38;
                return iVar3;
              }
              iVar6 = *param_8;
              if (local_64 == 0) {
                if (iVar6 == 0) {
                  *param_8 = local_3c;
                  param_8[1] = local_38;
                  local_64 = iVar3;
                  if (local_3c != 0) {
                    if (uVar7 == 0) goto LAB_00796f0c;
                    if (-1 < *(int *)(this + 8) << 0x1f) {
                      return iVar3;
                    }
                  }
                }
                else {
LAB_00796eac:
                  if (iVar6 == local_3c) {
                    param_8[1] = local_38 | param_8[1];
                  }
                  else if ((local_3c != 0) || (iVar3 != 0)) goto LAB_00796eb6;
                }
              }
              else {
                if (iVar6 != 0) goto LAB_00796eac;
                if (local_3c == 0) goto LAB_00796f06;
LAB_00796eb6:
                uVar10 = param_8[3];
                if (((int)uVar7 < 4) || (((int)(uVar7 << 0x1f) < 0 && (param_8[4] << 0x1e < 0)))) {
                  if (0 < (int)uVar10) goto LAB_00796ed2;
                  if (((int)local_30 < 4) ||
                     (((local_30 & 1) != 0 && (*(int *)(this + 8) << 0x1e < 0)))) {
                    if (param_1 < 0) {
                      if (param_1 == -2) goto LAB_00797040;
                      uVar10 = (**(code **)(*param_4 + 0x20))
                                         (param_4,param_1,iVar6,param_6,param_7,uVar12,piVar13,
                                          piVar14);
                    }
                    else if (param_7 == (int *)(iVar6 + param_1)) {
                      uVar10 = 6;
                    }
                    else {
LAB_00797040:
                      uVar10 = 1;
                    }
LAB_00796ed2:
                    if (0 < (int)uVar4) goto LAB_00796ed8;
                    if ((3 < (int)uVar10) &&
                       (((uVar10 & 1) == 0 || (-1 < *(int *)(this + 8) << 0x1e))))
                    goto LAB_00796f5c;
                    if (param_1 < 0) {
                      if (param_1 == -2) goto LAB_00796ff8;
                      uVar4 = (**(code **)(*param_4 + 0x20))
                                        (param_4,param_1,local_3c,param_6,param_7);
                    }
                    else if (param_7 == (int *)(local_3c + param_1)) {
                      uVar4 = 6;
                    }
                    else {
LAB_00796ff8:
                      uVar4 = 1;
                    }
LAB_00796ed8:
                    local_30 = uVar4;
                    if ((int)(uVar10 ^ local_30) < 4) goto LAB_00796f66;
                    if ((int)local_30 < 4) goto LAB_00796ef4;
                  }
                  else if ((int)(local_30 ^ 1) < 4) {
                    uVar10 = 1;
                    goto LAB_00796f66;
                  }
                  *param_8 = local_3c;
                  local_64 = 0;
                  param_8[1] = local_38;
                  uVar10 = local_30;
LAB_00796ef4:
                  param_8[3] = uVar10;
                  if ((uVar10 & 2) != 0) {
                    return 0;
                  }
                  if ((uVar10 & 1) == 0) {
                    return 0;
                  }
                }
                else {
                  if (uVar10 == 0) {
                    uVar10 = 1;
                  }
                  if (local_30 != 0) goto LAB_00796ed8;
LAB_00796f5c:
                  if (3 < (int)(uVar10 ^ 1)) goto LAB_00796ef4;
                  local_30 = 1;
LAB_00796f66:
                  if (3 < (int)(uVar10 & local_30)) {
                    *param_8 = 0;
                    param_8[3] = 2;
                    return 1;
                  }
                  *param_8 = 0;
                  local_64 = 1;
                  param_8[3] = 1;
                }
                uVar7 = param_8[2];
              }
LAB_00796f06:
              if (uVar7 == 4) {
                return local_64;
              }
            }
          }
          else {
            bVar2 = 1;
          }
LAB_00796f0c:
          p_Var8 = p_Var8 + -8;
        }
        if ((bVar2 & bVar1) == 0) {
          return local_64;
        }
        bVar1 = false;
        bVar2 = 1;
      } while( true );
    }
    *param_8 = (int)param_5;
    param_8[1] = param_3;
    if (-1 < param_1) {
      if (param_7 == (int *)((int)param_5 + param_1)) {
        iVar3 = 6;
      }
      else {
        iVar3 = 1;
      }
      param_8[3] = iVar3;
      return 0;
    }
    if (param_1 == -2) {
      param_8[3] = 1;
      return 0;
    }
  }
  return 0;
}

// ---- __cxxabiv1::__vmi_class_type_info::__do_upcast  @ 0x797110
/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* __cxxabiv1::__vmi_class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void const*,
   __cxxabiv1::__class_type_info::__upcast_result&) const */

int __thiscall
__cxxabiv1::__vmi_class_type_info::__do_upcast
          (__vmi_class_type_info *this,__class_type_info *param_1,void *param_2,
          __upcast_result *param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  __vmi_class_type_info *p_Var5;
  uint local_4c;
  int local_38;
  uint local_34;
  uint local_30;
  int local_2c;
  
  iVar1 = __class_type_info::__do_upcast((__class_type_info *)this,param_1,param_2,param_3);
  if (iVar1 == 0) {
    local_4c = *(uint *)(param_3 + 8);
    if ((int)(local_4c << 0x1b) < 0) {
      local_4c = *(uint *)(this + 8);
    }
    iVar1 = *(int *)(this + 0xc);
    p_Var5 = this + (iVar1 + 2) * 8;
    while (iVar1 = iVar1 + -1, iVar1 != -1) {
      uVar3 = *(uint *)(p_Var5 + -4);
      local_38 = 0;
      local_34 = 0;
      local_30 = local_4c;
      local_2c = 0;
      if (((int)(uVar3 << 0x1e) < 0) || ((local_4c & 1) != 0)) {
        if (param_2 == (void *)0x0) {
          iVar4 = 0;
        }
        else {
          iVar4 = (int)uVar3 >> 8;
          if ((uVar3 & 1) != 0) {
            iVar4 = *(int *)(*(int *)param_2 + iVar4);
          }
          iVar4 = iVar4 + (int)param_2;
        }
        iVar4 = (**(code **)(**(int **)(p_Var5 + -8) + 0x18))
                          (*(int **)(p_Var5 + -8),param_1,iVar4,&local_38);
        if (iVar4 != 0) {
          if ((local_2c == 8) && ((uVar3 & 1) != 0)) {
            local_2c = *(int *)(p_Var5 + -8);
          }
          if ((3 < (int)local_34) && (-1 < (int)(uVar3 << 0x1e))) {
            local_34 = local_34 & 0xfffffffd;
          }
          if (*(int *)(param_3 + 0xc) == 0) {
            *(int *)param_3 = local_38;
            *(uint *)(param_3 + 4) = local_34;
            *(uint *)(param_3 + 8) = local_30;
            *(int *)(param_3 + 0xc) = local_2c;
            if ((int)local_34 < 4) {
              return iVar4;
            }
            if ((int)(local_34 << 0x1e) < 0) {
              iVar2 = *(int *)(this + 8) << 0x1f;
            }
            else {
              if (-1 < (int)(local_34 << 0x1f)) {
                return iVar4;
              }
              iVar2 = *(int *)(this + 8) << 0x1e;
            }
            if (-1 < iVar2) {
              return iVar4;
            }
          }
          else {
            if (*(int *)param_3 != local_38) {
              *(undefined4 *)param_3 = 0;
              *(undefined4 *)(param_3 + 4) = 2;
              return iVar4;
            }
            if ((*(int *)param_3 == 0) &&
               (((local_2c == 8 || (*(int *)(param_3 + 0xc) == 8)) ||
                (iVar2 = FUN_007c6dbc(), iVar2 == 0)))) {
              *(undefined4 *)(param_3 + 4) = 2;
              return iVar4;
            }
            *(uint *)(param_3 + 4) = local_34 | *(uint *)(param_3 + 4);
          }
        }
      }
      p_Var5 = p_Var5 + -8;
    }
    iVar1 = 0;
    if (*(int *)(param_3 + 4) != 0) {
      iVar1 = 1;
    }
  }
  return iVar1;
}

// ---- __cxxabiv1::__si_class_type_info::~__si_class_type_info  @ 0x797c00
/* __cxxabiv1::__si_class_type_info::~__si_class_type_info() */

__si_class_type_info * __thiscall
__cxxabiv1::__si_class_type_info::~__si_class_type_info(__si_class_type_info *this)

{
  *(undefined ***)this = &PTR____si_class_type_info_1_0093d798;
  __class_type_info::~__class_type_info((__class_type_info *)this);
  return this;
}

// ---- __cxxabiv1::__si_class_type_info::~__si_class_type_info  @ 0x797c1c
/* __cxxabiv1::__si_class_type_info::~__si_class_type_info() */

__si_class_type_info * __thiscall
__cxxabiv1::__si_class_type_info::~__si_class_type_info(__si_class_type_info *this)

{
  ~__si_class_type_info(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__si_class_type_info::__do_find_public_src  @ 0x797c30
/* __cxxabiv1::__si_class_type_info::__do_find_public_src(int, void const*,
   __cxxabiv1::__class_type_info const*, void const*) const */

undefined4 __thiscall
__cxxabiv1::__si_class_type_info::__do_find_public_src
          (__si_class_type_info *this,int param_1,void *param_2,__class_type_info *param_3,
          void *param_4)

{
  undefined4 uVar1;
  int iVar2;
  
  if ((param_4 == param_2) && (iVar2 = FUN_007c6dbc(this,param_3), iVar2 != 0)) {
    return 6;
  }
  uVar1 = (**(code **)(**(int **)(this + 8) + 0x20))
                    (*(int **)(this + 8),param_1,param_2,param_3,param_4);
  return uVar1;
}

// ---- __cxxabiv1::__si_class_type_info::__do_dyncast  @ 0x797c64
/* __cxxabiv1::__si_class_type_info::__do_dyncast(int, __cxxabiv1::__class_type_info::__sub_kind,
   __cxxabiv1::__class_type_info const*, void const*, __cxxabiv1::__class_type_info const*, void
   const*, __cxxabiv1::__class_type_info::__dyncast_result&) const */

undefined4 __thiscall
__cxxabiv1::__si_class_type_info::__do_dyncast
          (__si_class_type_info *this,int param_1,int param_3,undefined4 param_4,int param_5,
          undefined4 param_6,int param_7,int *param_8)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_007c6dbc(this,param_4);
  if (iVar1 == 0) {
    if ((param_5 == param_7) && (iVar1 = FUN_007c6dbc(this,param_6), iVar1 != 0)) {
      param_8[2] = param_3;
      uVar2 = 0;
    }
    else {
      uVar2 = (**(code **)(**(int **)(this + 8) + 0x1c))
                        (*(int **)(this + 8),param_1,param_3,param_4,param_5,param_6,param_7,param_8
                        );
    }
  }
  else {
    *param_8 = param_5;
    param_8[1] = param_3;
    if (-1 < param_1) {
      if (param_7 == param_5 + param_1) {
        iVar1 = 6;
      }
      else {
        iVar1 = 1;
      }
      param_8[3] = iVar1;
      return 0;
    }
    if (param_1 == -2) {
      uVar2 = 0;
      param_8[3] = 1;
    }
    else {
      uVar2 = 0;
    }
  }
  return uVar2;
}

// ---- __cxxabiv1::__si_class_type_info::__do_upcast  @ 0x797cf4
/* __cxxabiv1::__si_class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void const*,
   __cxxabiv1::__class_type_info::__upcast_result&) const */

void __thiscall
__cxxabiv1::__si_class_type_info::__do_upcast
          (__si_class_type_info *this,__class_type_info *param_1,void *param_2,
          __upcast_result *param_3)

{
  int iVar1;
  __upcast_result *p_Var2;
  
  p_Var2 = param_3;
  iVar1 = __class_type_info::__do_upcast((__class_type_info *)this,param_1,param_2,param_3);
  if (iVar1 == 0) {
    (**(code **)(**(int **)(this + 8) + 0x18))(*(int **)(this + 8),param_1,param_2,param_3,p_Var2);
  }
  return;
}

// ---- __cxxabiv1::__class_type_info::__do_upcast  @ 0x797d18
/* __cxxabiv1::__class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void**) const */

bool __thiscall
__cxxabiv1::__class_type_info::__do_upcast
          (__class_type_info *this,__class_type_info *param_1,void **param_2)

{
  bool bVar1;
  void *local_28;
  uint local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  local_28 = (void *)0x0;
  local_24 = 0;
  local_1c = 0;
  local_20 = 0x10;
  (**(code **)(*(int *)this + 0x18))(this,param_1,*param_2,&local_28);
  bVar1 = (local_24 & 6) == 6;
  if (bVar1) {
    *param_2 = local_28;
  }
  return bVar1;
}

// ---- __cxxabiv1::__class_type_info::__do_find_public_src  @ 0x797d4c
/* __cxxabiv1::__class_type_info::__do_find_public_src(int, void const*,
   __cxxabiv1::__class_type_info const*, void const*) const */

undefined4 __thiscall
__cxxabiv1::__class_type_info::__do_find_public_src
          (__class_type_info *this,int param_1,void *param_2,__class_type_info *param_3,
          void *param_4)

{
  undefined4 uVar1;
  
  if (param_4 == param_2) {
    uVar1 = 6;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- __cxxabiv1::__class_type_info::~__class_type_info  @ 0x797d58
/* __cxxabiv1::__class_type_info::~__class_type_info() */

__class_type_info * __thiscall
__cxxabiv1::__class_type_info::~__class_type_info(__class_type_info *this)

{
  *(undefined ***)this = &PTR____class_type_info_1_0093d7d8;
  FUN_007c6d88();
  return this;
}

// ---- __cxxabiv1::__class_type_info::~__class_type_info  @ 0x797d74
/* __cxxabiv1::__class_type_info::~__class_type_info() */

__class_type_info * __thiscall
__cxxabiv1::__class_type_info::~__class_type_info(__class_type_info *this)

{
  ~__class_type_info(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__class_type_info::__do_upcast  @ 0x797d88
/* __cxxabiv1::__class_type_info::__do_upcast(__cxxabiv1::__class_type_info const*, void const*,
   __cxxabiv1::__class_type_info::__upcast_result&) const */

void __thiscall
__cxxabiv1::__class_type_info::__do_upcast
          (__class_type_info *this,__class_type_info *param_1,void *param_2,__upcast_result *param_3
          )

{
  int iVar1;
  
  iVar1 = FUN_007c6dbc(this);
  if (iVar1 != 0) {
    *(void **)param_3 = param_2;
    *(undefined4 *)(param_3 + 0xc) = 8;
    *(undefined4 *)(param_3 + 4) = 6;
  }
  return;
}

// ---- __cxxabiv1::__class_type_info::__do_catch  @ 0x797da0
/* __cxxabiv1::__class_type_info::__do_catch(std::type_info const*, void**, unsigned int) const */

void __thiscall
__cxxabiv1::__class_type_info::__do_catch
          (__class_type_info *this,type_info *param_1,void **param_2,uint param_3)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = param_3;
  iVar1 = FUN_007c6dbc();
  if ((iVar1 == 0) && (param_3 < 4)) {
    (**(code **)(*(int *)param_1 + 0x14))
              (param_1,this,param_2,*(code **)(*(int *)param_1 + 0x14),uVar2);
    return;
  }
  return;
}

// ---- __cxxabiv1::__class_type_info::__do_dyncast  @ 0x797dc4
/* __cxxabiv1::__class_type_info::__do_dyncast(int, __cxxabiv1::__class_type_info::__sub_kind,
   __cxxabiv1::__class_type_info const*, void const*, __cxxabiv1::__class_type_info const*, void
   const*, __cxxabiv1::__class_type_info::__dyncast_result&) const */

undefined4 __thiscall
__cxxabiv1::__class_type_info::__do_dyncast
          (__class_type_info *this,undefined4 param_2,int param_3,undefined4 param_4,int param_5,
          undefined4 param_6,int param_7,int *param_8)

{
  int iVar1;
  
  if ((param_5 == param_7) && (iVar1 = FUN_007c6dbc(this,param_6), iVar1 != 0)) {
    param_8[2] = param_3;
    return 0;
  }
  iVar1 = FUN_007c6dbc(this,param_4);
  if (iVar1 != 0) {
    *param_8 = param_5;
    param_8[1] = param_3;
    param_8[3] = 1;
  }
  return 0;
}

// ---- __cxxabiv1::__forced_unwind::~__forced_unwind  @ 0x797f78
/* __cxxabiv1::__forced_unwind::~__forced_unwind() */

void __thiscall __cxxabiv1::__forced_unwind::~__forced_unwind(__forced_unwind *this)

{
  *(undefined ***)this = &PTR____forced_unwind_1_0093d858;
  return;
}

// ---- __cxxabiv1::__foreign_exception::~__foreign_exception  @ 0x797f88
/* __cxxabiv1::__foreign_exception::~__foreign_exception() */

void __thiscall __cxxabiv1::__foreign_exception::~__foreign_exception(__foreign_exception *this)

{
  *(undefined ***)this = &PTR____foreign_exception_1_0093d870;
  return;
}

// ---- __cxxabiv1::__forced_unwind::~__forced_unwind  @ 0x797fd8
/* __cxxabiv1::__forced_unwind::~__forced_unwind() */

__forced_unwind * __thiscall __cxxabiv1::__forced_unwind::~__forced_unwind(__forced_unwind *this)

{
  ~__forced_unwind(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__foreign_exception::~__foreign_exception  @ 0x797fec
/* __cxxabiv1::__foreign_exception::~__foreign_exception() */

__foreign_exception * __thiscall
__cxxabiv1::__foreign_exception::~__foreign_exception(__foreign_exception *this)

{
  ~__foreign_exception(this);
  operator_delete(this);
  return this;
}

// ---- __cxxabiv1::__terminate  @ 0x798244
/* __cxxabiv1::__terminate(void (*)()) */

void __cxxabiv1::__terminate(_func_void *param_1)

{
  (*param_1)();
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- __cxxabiv1::__unexpected  @ 0x798280
/* __cxxabiv1::__unexpected(void (*)()) */

void __cxxabiv1::__unexpected(_func_void *param_1)

{
  (*param_1)();
                    /* WARNING: Subroutine does not return */
  std::terminate();
}
