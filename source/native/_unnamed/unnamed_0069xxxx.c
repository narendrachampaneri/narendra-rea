// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 51 functions

// ---- FUN_00690498  @ 0x690498
void FUN_00690498(undefined4 *param_1)

{
  if ((void *)*param_1 != (void *)0x0) {
    CRYPTO_free((void *)*param_1);
  }
  if ((_STACK *)param_1[2] != (_STACK *)0x0) {
    sk_pop_free((_STACK *)param_1[2],(func *)&LAB_0069017e_1);
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_006904c0  @ 0x6904c0
void FUN_006904c0(int param_1)

{
  undefined4 *ptr;
  
  ptr = *(undefined4 **)(param_1 + 0xc);
  if ((_STACK *)ptr[1] != (_STACK *)0x0) {
    sk_pop_free((_STACK *)ptr[1],(func *)0x690499);
  }
  if ((BUF_MEM *)*ptr != (BUF_MEM *)0x0) {
    BUF_MEM_free((BUF_MEM *)*ptr);
  }
  CRYPTO_free(ptr);
  return;
}

// ---- FUN_00690504  @ 0x690504
undefined4 FUN_00690504(int param_1,char *param_2,int param_3)

{
  char cVar1;
  char *pcVar2;
  undefined4 *puVar3;
  size_t sVar4;
  int iVar5;
  _STACK *p_Var6;
  int *data;
  char *pcVar7;
  int iVar8;
  undefined4 uVar9;
  char *pcVar10;
  char *pcVar11;
  size_t __n;
  
  if ((param_2 == (char *)0x0) || (pcVar11 = param_2, *param_2 == '\0')) {
    ERR_put_error(0xb,100,0x71,"jni/../../openssl-android/crypto/x509/by_dir.c",0xd7);
LAB_006905fa:
    uVar9 = 0;
  }
  else {
    do {
      pcVar10 = pcVar11 + 1;
      pcVar2 = param_2;
      if ((*pcVar11 == '\0' || *pcVar11 == ':') &&
         (__n = (int)pcVar11 - (int)param_2, pcVar2 = pcVar10, __n != 0)) {
        for (iVar8 = 0; iVar5 = sk_num(*(_STACK **)(param_1 + 4)), iVar8 < iVar5; iVar8 = iVar8 + 1)
        {
          puVar3 = sk_value(*(_STACK **)(param_1 + 4),iVar8);
          pcVar7 = (char *)*puVar3;
          sVar4 = strlen(pcVar7);
          if ((sVar4 == __n) && (iVar5 = strncmp(pcVar7,param_2,__n), iVar5 == 0)) break;
        }
        iVar5 = sk_num(*(_STACK **)(param_1 + 4));
        if (iVar5 <= iVar8) {
          if (*(int *)(param_1 + 4) == 0) {
            p_Var6 = sk_new_null();
            *(_STACK **)(param_1 + 4) = p_Var6;
            if (p_Var6 == (_STACK *)0x0) {
              ERR_put_error(0xb,100,0x41,"jni/../../openssl-android/crypto/x509/by_dir.c",0xf4);
              return 0;
            }
          }
          data = CRYPTO_malloc(0xc,"jni/../../openssl-android/crypto/x509/by_dir.c",0xf8);
          if (data == (int *)0x0) {
            return 0;
          }
          data[1] = param_3;
          p_Var6 = sk_new((cmp *)&LAB_006904e8_1);
          data[2] = (int)p_Var6;
          pcVar7 = CRYPTO_malloc(__n + 1,"jni/../../openssl-android/crypto/x509/by_dir.c",0xfd);
          *data = (int)pcVar7;
          if ((pcVar7 == (char *)0x0) || (data[2] == 0)) {
            FUN_00690498(data);
            goto LAB_006905fa;
          }
          strncpy(pcVar7,param_2,__n);
          *(undefined1 *)(*data + __n) = 0;
          iVar8 = sk_push(*(_STACK **)(param_1 + 4),data);
          if (iVar8 == 0) {
            FUN_00690498(data);
            return 0;
          }
        }
      }
      param_2 = pcVar2;
      cVar1 = *pcVar11;
      pcVar11 = pcVar10;
    } while (cVar1 != '\0');
    uVar9 = 1;
  }
  return uVar9;
}

// ---- FUN_00691410  @ 0x691410
void FUN_00691410(int *param_1)

{
  if (*param_1 == 1) {
    X509_free((X509 *)param_1[1]);
  }
  else if (*param_1 == 2) {
    X509_CRL_free((X509_CRL *)param_1[1]);
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_00691436  @ 0x691436
void FUN_00691436(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar3 = (int *)*param_1;
  piVar2 = (int *)*param_2;
  iVar1 = *piVar3;
  if (iVar1 == *piVar2) {
    if (iVar1 == 1) {
      X509_subject_name_cmp((X509 *)piVar3[1],(X509 *)piVar2[1]);
      return;
    }
    if (iVar1 == 2) {
      X509_CRL_cmp((X509_CRL *)piVar3[1],(X509_CRL *)piVar2[1]);
      return;
    }
  }
  return;
}

// ---- FUN_00691468  @ 0x691468
void FUN_00691468(_STACK *param_1,int param_2,undefined4 param_3,int *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  void *local_144;
  int *local_140;
  int local_13c;
  undefined1 **local_138;
  undefined1 auStack_134 [8];
  undefined4 local_12c;
  undefined1 auStack_10c [20];
  undefined4 local_f8;
  undefined1 *local_d8 [19];
  undefined1 *local_8c [26];
  int local_24;
  
  local_24 = __stack_chk_guard;
  local_13c = param_2;
  if (param_2 == 1) {
    local_138 = local_8c;
    local_8c[0] = auStack_10c;
    local_f8 = param_3;
  }
  else {
    if (param_2 != 2) {
      iVar2 = -1;
      goto LAB_006914fe;
    }
    local_138 = local_d8;
    local_d8[0] = auStack_134;
    local_12c = param_3;
  }
  iVar2 = sk_find(param_1,&local_13c);
  if (-1 < iVar2 && param_4 != (int *)0x0) {
    *param_4 = 1;
    iVar3 = iVar2;
    local_140 = &local_13c;
    while( true ) {
      iVar3 = iVar3 + 1;
      iVar1 = sk_num(param_1);
      if (iVar1 <= iVar3) break;
      local_144 = sk_value(param_1,iVar3);
      iVar1 = FUN_00691436(&local_144,&local_140);
      if (iVar1 != 0) break;
      *param_4 = *param_4 + 1;
    }
  }
LAB_006914fe:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}

// ---- FUN_006924fc  @ 0x6924fc
undefined4 FUN_006924fc(int param_1,int param_2)

{
  ASN1_OBJECT *pAVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  
  piVar3 = *(int **)(param_2 + 100);
  if (piVar3 != (int *)0x0) {
    if (piVar3[1] != 0) {
      for (iVar4 = 0; iVar2 = sk_num((_STACK *)piVar3[1]), iVar4 < iVar2; iVar4 = iVar4 + 1) {
        pAVar1 = sk_value((_STACK *)piVar3[1],iVar4);
        iVar2 = OBJ_obj2nid(pAVar1);
        if (iVar2 == param_1) {
          return 2;
        }
      }
    }
    if (*piVar3 != 0) {
      for (iVar4 = 0; iVar2 = sk_num((_STACK *)*piVar3), iVar4 < iVar2; iVar4 = iVar4 + 1) {
        pAVar1 = sk_value((_STACK *)*piVar3,iVar4);
        iVar2 = OBJ_obj2nid(pAVar1);
        if (iVar2 == param_1) {
          return 1;
        }
      }
    }
  }
  return 3;
}

// ---- FUN_0069255c  @ 0x69255c
undefined4 FUN_0069255c(undefined4 param_1,X509 *param_2)

{
  undefined4 uVar1;
  
  X509_check_purpose(param_2,-1,0);
  if ((param_2->ex_flags & 0x20) == 0) {
    uVar1 = 3;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_006925a8  @ 0x6925a8
void FUN_006925a8(void *param_1)

{
  if ((param_1 != (void *)0x0) && (*(int *)((int)param_1 + 4) << 0x1f < 0)) {
    if (*(int *)((int)param_1 + 4) << 0x1e < 0) {
      CRYPTO_free(*(void **)((int)param_1 + 0xc));
    }
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_00692d7c  @ 0x692d7c
undefined8 FUN_00692d7c(undefined4 *param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  _STACK *p_Var4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  
  p_Var4 = *(_STACK **)(param_2 + 0x18);
  puVar5 = param_1;
  iVar6 = param_2;
  uVar7 = param_3;
  for (iVar3 = 0; iVar1 = sk_num(p_Var4), iVar3 < iVar1; iVar3 = iVar3 + 1) {
    pvVar2 = sk_value(p_Var4,iVar3);
    iVar1 = (**(code **)(param_2 + 0x28))
                      (param_2,param_3,pvVar2,*(code **)(param_2 + 0x28),puVar5,iVar6,uVar7);
    if (iVar1 != 0) goto LAB_00692db0;
  }
  pvVar2 = (void *)0x0;
LAB_00692db0:
  *param_1 = pvVar2;
  if (pvVar2 != (void *)0x0) {
    puVar5 = (undefined4 *)0x1b5;
    CRYPTO_add_lock((int *)((int)pvVar2 + 0x10),1,3,
                    "jni/../../openssl-android/crypto/x509/x509_vfy.c",0x1b5);
  }
  return CONCAT44(puVar5,(uint)(pvVar2 != (void *)0x0));
}

// ---- FUN_00692e2a  @ 0x692e2a
int FUN_00692e2a(X509_CRL *param_1,X509_CRL *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  X509_EXTENSION *pXVar3;
  ASN1_OCTET_STRING *a;
  ASN1_OCTET_STRING *b;
  uint uVar4;
  uint uVar5;
  
  iVar1 = X509_CRL_get_ext_by_NID(param_1,param_3,-1);
  if (iVar1 < 0) {
    a = (ASN1_STRING *)0x0;
  }
  else {
    iVar2 = X509_CRL_get_ext_by_NID(param_1,param_3,iVar1);
    if (iVar2 != -1) {
      return 0;
    }
    pXVar3 = X509_CRL_get_ext(param_1,iVar1);
    a = X509_EXTENSION_get_data(pXVar3);
  }
  iVar1 = X509_CRL_get_ext_by_NID(param_2,param_3,-1);
  if (iVar1 < 0) {
    b = (ASN1_STRING *)0x0;
  }
  else {
    iVar2 = X509_CRL_get_ext_by_NID(param_2,param_3,iVar1);
    if (iVar2 != -1) {
      return 0;
    }
    pXVar3 = X509_CRL_get_ext(param_2,iVar1);
    b = X509_EXTENSION_get_data(pXVar3);
  }
  uVar5 = 1 - (int)a;
  if ((ASN1_STRING *)0x1 < a) {
    uVar5 = 0;
  }
  uVar4 = 1 - (int)b;
  if ((ASN1_STRING *)0x1 < b) {
    uVar4 = 0;
  }
  if ((uVar4 & uVar5) == 0) {
    iVar1 = 0;
    if (uVar4 == 0 && uVar5 == 0) {
      uVar5 = ASN1_OCTET_STRING_cmp(a,b);
      iVar1 = 1 - uVar5;
      if (1 < uVar5) {
        iVar1 = 0;
      }
      return iVar1;
    }
  }
  else {
    iVar1 = 1;
  }
  return iVar1;
}

// ---- FUN_00692ec6  @ 0x692ec6
undefined4 FUN_00692ec6(int param_1,X509 *param_2,X509 *param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = X509_check_issued(param_3,param_2);
  if (iVar1 == 0) {
    return 1;
  }
  if ((*(uint *)(*(int *)(param_1 + 0x14) + 0xc) & 1) != 0) {
    *(int *)(param_1 + 100) = iVar1;
    *(X509 **)(param_1 + 0x68) = param_2;
    *(X509 **)(param_1 + 0x6c) = param_3;
    uVar2 = (**(code **)(param_1 + 0x20))(0,param_1);
    return uVar2;
  }
  return 0;
}

// ---- FUN_00692ef8  @ 0x692ef8
undefined8 FUN_00692ef8(uint param_1)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  uint uVar4;
  uint flags;
  
  flags = param_1;
  if (*(int *)(param_1 + 0x7c) == 0) {
    flags = *(uint *)(*(int *)(param_1 + 0x14) + 0xc);
    iVar1 = X509_policy_check((X509_POLICY_TREE **)(param_1 + 0x58),(int *)(param_1 + 0x5c),
                              *(stack_st_X509 **)(param_1 + 0x54),
                              *(stack_st_ASN1_OBJECT **)(*(int *)(param_1 + 0x14) + 0x1c),flags);
    if (iVar1 == 0) {
      flags = 0x5da;
      ERR_put_error(0xb,0x91,0x41,"jni/../../openssl-android/crypto/x509/x509_vfy.c",0x5da);
      uVar4 = 0;
      goto LAB_00692f9c;
    }
    if (iVar1 == -1) {
      for (iVar1 = 1; iVar3 = sk_num(*(_STACK **)(param_1 + 0x54)), iVar1 < iVar3; iVar1 = iVar1 + 1
          ) {
        pvVar2 = sk_value(*(_STACK **)(param_1 + 0x54),iVar1);
        if (*(int *)((int)pvVar2 + 0x28) << 0x14 < 0) {
          *(void **)(param_1 + 0x68) = pvVar2;
          *(undefined4 *)(param_1 + 100) = 0x2a;
          iVar3 = (**(code **)(param_1 + 0x20))(0,param_1);
          uVar4 = 0;
          if (iVar3 == 0) goto LAB_00692f9c;
        }
      }
    }
    else {
      if (iVar1 == -2) {
        *(undefined4 *)(param_1 + 0x68) = 0;
        *(undefined4 *)(param_1 + 100) = 0x2b;
        uVar4 = (**(code **)(param_1 + 0x20))(0,param_1);
        goto LAB_00692f9c;
      }
      if (*(int *)(*(int *)(param_1 + 0x14) + 0xc) << 0x14 < 0) {
        *(undefined4 *)(param_1 + 0x68) = 0;
        *(undefined4 *)(param_1 + 100) = 0;
        iVar1 = (**(code **)(param_1 + 0x20))(2,param_1);
        uVar4 = (uint)(iVar1 != 0);
        goto LAB_00692f9c;
      }
    }
  }
  uVar4 = 1;
LAB_00692f9c:
  return CONCAT44(flags,uVar4);
}

// ---- FUN_00693178  @ 0x693178
undefined4 FUN_00693178(int param_1,int *param_2,int param_3)

{
  int iVar1;
  code *pcVar2;
  undefined4 uVar3;
  time_t *t;
  
  if (param_3 != 0) {
    *(int **)(param_1 + 0x70) = param_2;
  }
  t = (time_t *)0x0;
  if ((*(uint *)(*(int *)(param_1 + 0x14) + 0xc) & 2) != 0) {
    t = (time_t *)(*(int *)(param_1 + 0x14) + 4);
  }
  iVar1 = X509_cmp_time(*(ASN1_TIME **)(*param_2 + 0xc),t);
  if (iVar1 == 0) {
    if (param_3 == 0) {
      return 0;
    }
    *(undefined4 *)(param_1 + 100) = 0xf;
    pcVar2 = *(code **)(param_1 + 0x20);
LAB_006931b6:
    iVar1 = (*pcVar2)(0,param_1);
    if (iVar1 != 0) goto LAB_006931bc;
LAB_006931f4:
    uVar3 = 0;
  }
  else {
    if (0 < iVar1) {
      if (param_3 == 0) {
        return 0;
      }
      *(undefined4 *)(param_1 + 100) = 0xb;
      pcVar2 = *(code **)(param_1 + 0x20);
      goto LAB_006931b6;
    }
LAB_006931bc:
    if (*(ASN1_TIME **)(*param_2 + 0x10) == (ASN1_TIME *)0x0) {
LAB_006931ec:
      if (param_3 != 0) goto LAB_006931ee;
    }
    else {
      iVar1 = X509_cmp_time(*(ASN1_TIME **)(*param_2 + 0x10),t);
      if (iVar1 == 0) {
        uVar3 = 0x10;
        if (param_3 == 0) {
          return 0;
        }
      }
      else {
        if ((-1 < iVar1) || ((*(uint *)(param_1 + 0x74) & 2) != 0)) goto LAB_006931ec;
        if (param_3 == 0) {
          return 0;
        }
        uVar3 = 0xc;
      }
      *(undefined4 *)(param_1 + 100) = uVar3;
      iVar1 = (**(code **)(param_1 + 0x20))(0,param_1);
      if (iVar1 == 0) goto LAB_006931f4;
LAB_006931ee:
      *(undefined4 *)(param_1 + 0x70) = 0;
    }
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_00693200  @ 0x693200
void FUN_00693200(int param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
                 uint *param_5,uint *param_6,_STACK *param_7)

{
  X509_NAME *pXVar1;
  X509 *issuer;
  X509_NAME *pXVar2;
  undefined4 *puVar3;
  GENERAL_NAME *a;
  GENERAL_NAME *b;
  int iVar4;
  int iVar5;
  int *piVar6;
  int iVar7;
  X509 *a_00;
  uint uVar8;
  uint uVar9;
  int *piVar10;
  int *piVar11;
  _STACK *p_Var12;
  X509 *pXVar13;
  uint local_64;
  uint local_5c;
  int local_58;
  uint local_54;
  int local_4c;
  uint local_44;
  X509 *local_40;
  int *local_38;
  
  pXVar13 = (X509 *)0x0;
  a_00 = *(X509 **)(param_1 + 0x68);
  local_54 = *param_5;
  local_40 = (X509 *)0x0;
  local_44 = 0;
  local_58 = 0;
  local_38 = (int *)0x0;
  do {
    iVar5 = sk_num(param_7);
    if (iVar5 <= local_58) {
      if (local_38 != (int *)0x0) {
        if ((X509_CRL *)*param_2 != (X509_CRL *)0x0) {
          X509_CRL_free((X509_CRL *)*param_2);
        }
        *param_2 = local_38;
        *param_4 = local_40;
        *param_5 = local_54;
        *param_6 = local_44;
        CRYPTO_add_lock(local_38 + 3,1,6,"jni/../../openssl-android/crypto/x509/x509_vfy.c",0x35f);
        if ((X509_CRL *)*param_3 != (X509_CRL *)0x0) {
          X509_CRL_free((X509_CRL *)*param_3);
          *param_3 = 0;
        }
        if ((*(int *)(*(int *)(param_1 + 0x14) + 0xc) << 0x12 < 0) &&
           ((int)((*(uint *)(*(int *)(param_1 + 0x68) + 0x28) | local_38[4]) << 0x13) < 0)) {
          for (iVar5 = 0; iVar7 = sk_num(param_7), iVar5 < iVar7; iVar5 = iVar5 + 1) {
            piVar6 = sk_value(param_7,iVar5);
            if ((((piVar6[10] != 0) && (local_38[9] != 0)) &&
                ((iVar7 = X509_NAME_cmp(*(X509_NAME **)(*local_38 + 8),*(X509_NAME **)(*piVar6 + 8))
                 , iVar7 == 0 &&
                 (((iVar7 = FUN_00692e2a(piVar6,local_38,0x5a), iVar7 != 0 &&
                   (iVar7 = FUN_00692e2a(piVar6,local_38,0x302), iVar7 != 0)) &&
                  (iVar7 = ASN1_INTEGER_cmp((ASN1_INTEGER *)piVar6[10],(ASN1_INTEGER *)local_38[9]),
                  iVar7 < 1)))))) &&
               (iVar7 = ASN1_INTEGER_cmp((ASN1_INTEGER *)piVar6[9],(ASN1_INTEGER *)local_38[9]),
               0 < iVar7)) {
              iVar5 = FUN_00693178(param_1,piVar6,0);
              if (iVar5 != 0) {
                *param_5 = *param_5 | 2;
              }
              CRYPTO_add_lock(piVar6 + 3,1,6,"jni/../../openssl-android/crypto/x509/x509_vfy.c",
                              0x3ca);
              *param_3 = piVar6;
              return;
            }
          }
          *param_3 = 0;
        }
      }
      return;
    }
    uVar9 = 0;
    piVar6 = sk_value(param_7,local_58);
    local_64 = *param_6;
    uVar8 = piVar6[7];
    if (-1 < (int)(uVar8 << 0x1e)) {
      if ((*(uint *)(*(int *)(param_1 + 0x14) + 0xc) & 0x1000) == 0) {
        if ((uVar8 & 0x60) == 0) goto LAB_00693272;
        uVar9 = 0;
      }
      else if ((uVar8 & 0x40) == 0) {
        uVar9 = 0;
        if (piVar6[10] == 0) goto LAB_00693272;
      }
      else if ((piVar6[8] & ~local_64) == 0) {
        uVar9 = 0;
      }
      else {
LAB_00693272:
        uVar9 = 0x20;
        pXVar1 = X509_get_issuer_name(a_00);
        iVar5 = X509_NAME_cmp(pXVar1,*(X509_NAME **)(*piVar6 + 8));
        if (iVar5 != 0) {
          uVar9 = 0;
          if ((piVar6[7] & 0x20U) == 0) goto LAB_006934e0;
          uVar9 = 0;
        }
        if (-1 < piVar6[4] << 0x16) {
          uVar9 = uVar9 | 0x100;
        }
        iVar5 = FUN_00693178(param_1,piVar6,0);
        if (iVar5 != 0) {
          uVar9 = uVar9 | 0x40;
        }
        iVar7 = *(int *)(param_1 + 0x60);
        pXVar1 = *(X509_NAME **)(*piVar6 + 8);
        iVar5 = sk_num(*(_STACK **)(param_1 + 0x54));
        if (iVar7 != iVar5 + -1) {
          iVar7 = iVar7 + 1;
        }
        issuer = sk_value(*(_STACK **)(param_1 + 0x54),iVar7);
        iVar5 = X509_check_akid(issuer,(AUTHORITY_KEYID *)piVar6[5]);
        if ((iVar5 == 0) && ((int)(uVar9 << 0x1a) < 0)) {
          uVar9 = uVar9 | 0x1c;
        }
        else {
          do {
            iVar7 = iVar7 + 1;
            iVar5 = sk_num(*(_STACK **)(param_1 + 0x54));
            if (iVar5 <= iVar7) {
              issuer = pXVar13;
              if (-1 < *(int *)(*(int *)(param_1 + 0x14) + 0xc) << 0x13) goto LAB_00693350;
              iVar5 = 0;
              goto LAB_00693346;
            }
            issuer = sk_value(*(_STACK **)(param_1 + 0x54),iVar7);
            pXVar2 = X509_get_subject_name(issuer);
            iVar5 = X509_NAME_cmp(pXVar2,pXVar1);
          } while ((iVar5 != 0) ||
                  (iVar5 = X509_check_akid(issuer,(AUTHORITY_KEYID *)piVar6[5]), iVar5 != 0));
          uVar9 = uVar9 | 0xc;
        }
LAB_00693350:
        pXVar13 = issuer;
        if ((uVar9 & 4) == 0) {
LAB_006934de:
          uVar9 = 0;
        }
        else {
          uVar8 = piVar6[7];
          if (-1 < (int)(uVar8 << 0x1b)) {
            if ((int)(a_00->ex_flags << 0x1b) < 0) {
              uVar8 = uVar8 & 4;
            }
            else {
              uVar8 = uVar8 & 8;
            }
            if (uVar8 == 0) {
              local_5c = piVar6[8];
              for (local_4c = 0; iVar5 = sk_num(&a_00->crldp->stack), local_4c < iVar5;
                  local_4c = local_4c + 1) {
                iVar5 = 0;
                puVar3 = sk_value(&a_00->crldp->stack,local_4c);
                pXVar1 = *(X509_NAME **)(*piVar6 + 8);
                if (puVar3[2] == 0) {
                  if ((uVar9 & 0x20) != 0) {
LAB_006933ce:
                    if ((undefined4 *)piVar6[6] != (undefined4 *)0x0) {
                      piVar11 = (int *)*puVar3;
                      piVar10 = *(int **)piVar6[6];
                      uVar8 = 1 - (int)piVar11;
                      if ((int *)0x1 < piVar11) {
                        uVar8 = 0;
                      }
                      if (piVar10 == (int *)0x0) {
                        uVar8 = uVar8 | 1;
                      }
                      if (uVar8 == 0) {
                        if (*piVar11 == 1) {
                          pXVar1 = (X509_NAME *)piVar11[2];
                          if (pXVar1 != (X509_NAME *)0x0) {
                            if (*piVar10 == 1) {
                              if (((X509_NAME *)piVar10[2] != (X509_NAME *)0x0) &&
                                 (iVar5 = X509_NAME_cmp(pXVar1,(X509_NAME *)piVar10[2]), iVar5 == 0)
                                 ) goto LAB_0069349c;
                            }
                            else {
                              p_Var12 = (_STACK *)piVar10[1];
LAB_00693430:
                              for (iVar5 = 0; iVar7 = sk_num(p_Var12), iVar5 < iVar7;
                                  iVar5 = iVar5 + 1) {
                                piVar10 = sk_value(p_Var12,iVar5);
                                if ((*piVar10 == 4) &&
                                   (iVar7 = X509_NAME_cmp(pXVar1,(X509_NAME *)piVar10[1]),
                                   iVar7 == 0)) goto LAB_0069349c;
                              }
                            }
                          }
                        }
                        else {
                          iVar5 = 0;
                          if (*piVar10 == 1) {
                            pXVar1 = (X509_NAME *)piVar10[2];
                            if (pXVar1 != (X509_NAME *)0x0) {
                              p_Var12 = (_STACK *)piVar11[1];
                              goto LAB_00693430;
                            }
                          }
                          else {
                            for (; iVar7 = sk_num((_STACK *)piVar11[1]), iVar5 < iVar7;
                                iVar5 = iVar5 + 1) {
                              a = sk_value((_STACK *)piVar11[1],iVar5);
                              for (iVar7 = 0; iVar4 = sk_num((_STACK *)piVar10[1]), iVar7 < iVar4;
                                  iVar7 = iVar7 + 1) {
                                b = sk_value((_STACK *)piVar10[1],iVar7);
                                iVar4 = GENERAL_NAME_cmp(a,b);
                                if (iVar4 == 0) goto LAB_0069349c;
                              }
                            }
                          }
                        }
                        goto LAB_006934aa;
                      }
                    }
LAB_0069349c:
                    local_5c = local_5c & puVar3[3];
                    goto LAB_0069361c;
                  }
                }
                else {
                  for (; iVar7 = sk_num((_STACK *)puVar3[2]), iVar5 < iVar7; iVar5 = iVar5 + 1) {
                    piVar10 = sk_value((_STACK *)puVar3[2],iVar5);
                    if ((*piVar10 == 4) &&
                       (iVar7 = X509_NAME_cmp((X509_NAME *)piVar10[1],pXVar1), iVar7 == 0))
                    goto LAB_006933ce;
                  }
                }
LAB_006934aa:
              }
              if ((((int *)piVar6[6] == (int *)0x0) || (*(int *)piVar6[6] == 0)) &&
                 ((int)(uVar9 << 0x1a) < 0)) {
LAB_0069361c:
                if ((local_5c & ~local_64) == 0) goto LAB_006934de;
                uVar9 = uVar9 | 0x80;
                local_64 = local_64 | local_5c;
              }
            }
          }
        }
      }
    }
LAB_006934e0:
    if ((int)local_54 < (int)uVar9) {
      local_44 = local_64;
      local_54 = uVar9;
      local_40 = pXVar13;
      local_38 = piVar6;
    }
    local_58 = local_58 + 1;
  } while( true );
LAB_00693346:
  iVar7 = sk_num(*(_STACK **)(param_1 + 0xc));
  issuer = pXVar13;
  if (iVar7 <= iVar5) goto LAB_00693350;
  issuer = sk_value(*(_STACK **)(param_1 + 0xc),iVar5);
  pXVar2 = X509_get_subject_name(issuer);
  iVar7 = X509_NAME_cmp(pXVar2,pXVar1);
  if ((iVar7 == 0) && (iVar7 = X509_check_akid(issuer,(AUTHORITY_KEYID *)piVar6[5]), iVar7 == 0)) {
    uVar9 = uVar9 | 4;
    goto LAB_00693350;
  }
  iVar5 = iVar5 + 1;
  goto LAB_00693346;
}

// ---- FUN_006937bc  @ 0x6937bc
undefined8 FUN_006937bc(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  X509 *x;
  int iVar2;
  X509 *a;
  EVP_PKEY *r;
  X509 *pXVar3;
  code *pcVar4;
  code *pcVar5;
  int iVar6;
  time_t *t;
  bool bVar7;
  int iVar8;
  
  pcVar5 = *(code **)(param_1 + 0x20);
  iVar8 = param_1;
  iVar1 = sk_num(*(_STACK **)(param_1 + 0x54));
  iVar6 = iVar1 + -1;
  *(int *)(param_1 + 0x60) = iVar6;
  x = sk_value(*(_STACK **)(param_1 + 0x54),iVar6);
  iVar2 = (**(code **)(param_1 + 0x28))
                    (param_1,x,x,*(code **)(param_1 + 0x28),iVar8,param_2,param_3);
  a = x;
  if (iVar2 == 0) {
    if (iVar6 < 1) {
      *(X509 **)(param_1 + 0x68) = x;
      *(undefined4 *)(param_1 + 100) = 0x15;
      iVar1 = (*pcVar5)(0,param_1);
      goto LAB_00693912;
    }
    iVar6 = iVar1 + -2;
    *(int *)(param_1 + 0x60) = iVar6;
    a = sk_value(*(_STACK **)(param_1 + 0x54),iVar6);
  }
  while (-1 < iVar6) {
    *(int *)(param_1 + 0x60) = iVar6;
    if ((a->valid == 0) && ((a != x || (*(int *)(*(int *)(param_1 + 0x14) + 0xc) << 0x11 < 0)))) {
      r = X509_get_pubkey(x);
      if (r == (EVP_PKEY *)0x0) {
        *(undefined4 *)(param_1 + 100) = 6;
        *(X509 **)(param_1 + 0x68) = x;
        iVar1 = (*pcVar5)(0,param_1);
        if (iVar1 == 0) {
          iVar1 = 0;
          goto LAB_00693912;
        }
      }
      else {
        iVar1 = X509_verify(a,r);
        if (iVar1 < 1) {
          *(undefined4 *)(param_1 + 100) = 7;
          *(X509 **)(param_1 + 0x68) = a;
          iVar1 = (*pcVar5)(0,param_1);
          if (iVar1 == 0) {
            EVP_PKEY_free(r);
            goto LAB_00693912;
          }
        }
      }
      EVP_PKEY_free(r);
    }
    a->valid = 1;
    t = (time_t *)0x0;
    if ((*(uint *)(*(int *)(param_1 + 0x14) + 0xc) & 2) != 0) {
      t = (time_t *)(*(int *)(param_1 + 0x14) + 4);
    }
    iVar1 = X509_cmp_time(a->cert_info->validity->notBefore,t);
    if (iVar1 == 0) {
      *(X509 **)(param_1 + 0x68) = a;
      *(undefined4 *)(param_1 + 100) = 0xd;
      pcVar4 = *(code **)(param_1 + 0x20);
LAB_006938b0:
      iVar2 = (*pcVar4)(0,param_1);
      iVar1 = 0;
      if (iVar2 == 0) goto LAB_00693912;
    }
    else if (0 < iVar1) {
      *(undefined4 *)(param_1 + 100) = 9;
      pcVar4 = *(code **)(param_1 + 0x20);
      *(X509 **)(param_1 + 0x68) = a;
      goto LAB_006938b0;
    }
    iVar1 = X509_cmp_time(a->cert_info->validity->notAfter,t);
    if (iVar1 == 0) {
      *(X509 **)(param_1 + 0x68) = a;
      *(undefined4 *)(param_1 + 100) = 0xe;
      pcVar4 = *(code **)(param_1 + 0x20);
LAB_006938e4:
      iVar1 = (*pcVar4)(0,param_1);
      if (iVar1 == 0) {
        iVar1 = 0;
        goto LAB_00693912;
      }
    }
    else if (iVar1 < 0) {
      *(undefined4 *)(param_1 + 100) = 10;
      pcVar4 = *(code **)(param_1 + 0x20);
      *(X509 **)(param_1 + 0x68) = a;
      goto LAB_006938e4;
    }
    *(X509 **)(param_1 + 0x6c) = x;
    *(X509 **)(param_1 + 0x68) = a;
    iVar1 = (*pcVar5)(1,param_1);
    if (iVar1 == 0) {
      iVar1 = 0;
      goto LAB_00693912;
    }
    bVar7 = iVar6 != 0;
    iVar6 = iVar6 + -1;
    if (bVar7) {
      pXVar3 = sk_value(*(_STACK **)(param_1 + 0x54),iVar6);
      x = a;
      a = pXVar3;
    }
  }
  iVar1 = 1;
LAB_00693912:
  return CONCAT44(iVar8,iVar1);
}

// ---- FUN_0069437a  @ 0x69437a
EVP_PKEY * FUN_0069437a(X509_STORE_CTX *param_1,X509_CRL *param_2)

{
  int iVar1;
  X509 *a;
  X509 *b;
  uint uVar2;
  EVP_PKEY *r;
  _func_1998 *p_Var3;
  X509 *x;
  int iVar4;
  EVP_PKEY *pEVar5;
  _STACK *p_Var6;
  X509_STORE_CTX XStack_a0;
  
  iVar4 = param_1->error_depth;
  iVar1 = sk_num(&param_1->chain->stack);
  x = param_1->current_issuer;
  if (x == (X509 *)0x0) {
    if (iVar4 < iVar1 + -1) {
      x = sk_value(&param_1->chain->stack,iVar4 + 1);
LAB_006943c8:
      r = (EVP_PKEY *)0x0;
      if (x != (X509 *)0x0) goto LAB_006943ce;
LAB_006944f6:
      pEVar5 = (EVP_PKEY *)0x1;
      goto LAB_006944f8;
    }
    x = sk_value(&param_1->chain->stack,iVar1 + -1);
    iVar1 = (*param_1->check_issued)(param_1,x,x);
    if (iVar1 != 0) goto LAB_006943c8;
    param_1->error = 0x21;
    iVar1 = (*param_1->verify_cb)(0,param_1);
    if (iVar1 != 0) goto LAB_006943c8;
  }
  else {
LAB_006943ce:
    if (param_2->base_crl_number == (ASN1_INTEGER *)0x0) {
      if (((int)(x->ex_flags << 0x1e) < 0) && ((x->ex_kusage & 2) == 0)) {
        param_1->error = 0x23;
        iVar1 = (*param_1->verify_cb)(0,param_1);
        if (iVar1 == 0) goto LAB_006944f2;
      }
      if ((param_1->current_crl_score & 0x80U) == 0) {
        param_1->error = 0x2c;
        iVar1 = (*param_1->verify_cb)(0,param_1);
        if (iVar1 == 0) goto LAB_006944f2;
      }
      if (-1 < param_1->current_crl_score << 0x1c) {
        if ((param_1->parent == (X509_STORE_CTX *)0x0) &&
           (iVar1 = X509_STORE_CTX_init(&XStack_a0,param_1->ctx,param_1->current_issuer,
                                        param_1->untrusted), iVar1 != 0)) {
          XStack_a0.crls = param_1->crls;
          X509_STORE_CTX_set0_param(&XStack_a0,param_1->param);
          XStack_a0.verify_cb = param_1->verify_cb;
          XStack_a0.parent = param_1;
          iVar1 = X509_verify_cert(&XStack_a0);
          if (0 < iVar1) {
            p_Var6 = &param_1->chain->stack;
            iVar1 = sk_num(p_Var6);
            a = sk_value(p_Var6,iVar1 + -1);
            iVar1 = sk_num(&(XStack_a0.chain)->stack);
            b = sk_value(&(XStack_a0.chain)->stack,iVar1 + -1);
            uVar2 = X509_cmp(a,b);
            iVar1 = 1 - uVar2;
            if (1 < uVar2) {
              iVar1 = 0;
            }
          }
          X509_STORE_CTX_cleanup(&XStack_a0);
          if (iVar1 == 1) goto LAB_00694494;
        }
        param_1->error = 0x36;
        iVar1 = (*param_1->verify_cb)(0,param_1);
        if (iVar1 == 0) goto LAB_006944f2;
      }
LAB_00694494:
      if (param_2->idp_flags << 0x1e < 0) {
        param_1->error = 0x29;
        iVar1 = (*param_1->verify_cb)(0,param_1);
        if (iVar1 == 0) goto LAB_006944f2;
      }
    }
    if ((param_1->current_crl_score << 0x19 < 0) ||
       (iVar1 = FUN_00693178(param_1,param_2,1), iVar1 != 0)) {
      r = X509_get_pubkey(x);
      if (r == (EVP_PKEY *)0x0) {
        param_1->error = 6;
        p_Var3 = param_1->verify_cb;
      }
      else {
        iVar1 = X509_CRL_verify(param_2,r);
        if (0 < iVar1) goto LAB_006944f6;
        param_1->error = 8;
        p_Var3 = param_1->verify_cb;
      }
      iVar1 = (*p_Var3)(0,param_1);
      pEVar5 = (EVP_PKEY *)(uint)(iVar1 != 0);
      goto LAB_006944f8;
    }
  }
LAB_006944f2:
  r = (EVP_PKEY *)0x0;
  pEVar5 = r;
LAB_006944f8:
  EVP_PKEY_free(r);
  return pEVar5;
}

// ---- FUN_00695da6  @ 0x695da6
undefined4
FUN_00695da6(undefined4 param_1,int *param_2,uint param_3,undefined4 *param_4,undefined4 param_5)

{
  int iVar1;
  uint *puVar2;
  
  puVar2 = (uint *)*param_4;
  if (param_3 == 0) {
    param_3 = puVar2[1];
  }
  puVar2 = (uint *)policy_data_new(0,param_3,*puVar2 & 0x10,puVar2,param_4);
  if (puVar2 != (uint *)0x0) {
    puVar2[2] = *(uint *)(*param_2 + 8);
    *puVar2 = *puVar2 | 4;
    iVar1 = level_add_node(param_1,puVar2,param_4,param_5);
    if (iVar1 == 0) {
      policy_data_free(puVar2);
      return 0;
    }
    return 1;
  }
  return 0;
}

// ---- FUN_00696784  @ 0x696784
undefined4 FUN_00696784(int *param_1,_STACK *param_2,int param_3)

{
  X509_NAME_ENTRY *ne;
  int iVar1;
  GENERAL_NAME *a;
  ASN1_STRING *pAVar2;
  X509_NAME *name;
  int lastpos;
  
  if (param_1 == (int *)0x0) {
LAB_0069679e:
    a = (GENERAL_NAME *)0x0;
    ERR_put_error(0x22,0x7a,0x7d,"jni/../../openssl-android/crypto/x509v3/v3_alt.c",0x161);
    pAVar2 = (ASN1_STRING *)0x0;
  }
  else {
    if (*param_1 == 1) {
      return 1;
    }
    if ((X509 *)param_1[2] == (X509 *)0x0) {
      if ((int *)param_1[3] == (int *)0x0) goto LAB_0069679e;
      name = *(X509_NAME **)(*(int *)param_1[3] + 0x10);
    }
    else {
      name = X509_get_subject_name((X509 *)param_1[2]);
    }
    lastpos = -1;
    do {
      lastpos = X509_NAME_get_index_by_NID(name,0x30,lastpos);
      if (lastpos < 0) {
        return 1;
      }
      ne = X509_NAME_get_entry(name,lastpos);
      pAVar2 = X509_NAME_ENTRY_get_data(ne);
      pAVar2 = ASN1_STRING_dup(pAVar2);
      if (param_3 != 0) {
        X509_NAME_delete_entry(name,lastpos);
        X509_NAME_ENTRY_free(ne);
        lastpos = lastpos + -1;
      }
      if ((pAVar2 == (ASN1_STRING *)0x0) || (a = GENERAL_NAME_new(), a == (GENERAL_NAME *)0x0)) {
        a = (GENERAL_NAME *)0x0;
        ERR_put_error(0x22,0x7a,0x41,"jni/../../openssl-android/crypto/x509v3/v3_alt.c",0x175);
        goto LAB_00696858;
      }
      (a->d).otherName = (OTHERNAME *)pAVar2;
      a->type = 1;
      iVar1 = sk_push(param_2,a);
    } while (iVar1 != 0);
    ERR_put_error(0x22,0x7a,0x41,"jni/../../openssl-android/crypto/x509v3/v3_alt.c",0x17c);
    pAVar2 = (ASN1_STRING *)0x0;
  }
LAB_00696858:
  GENERAL_NAME_free(a);
  ASN1_STRING_free(pAVar2);
  return 0;
}

// ---- FUN_00696e78  @ 0x696e78
_STACK * FUN_00696e78(X509V3_EXT_METHOD *param_1,X509V3_CTX *param_2,_STACK *param_3)

{
  _STACK *st;
  CONF_VALUE *cnf;
  X509_EXTENSION *ext;
  _STACK *p_Var1;
  void *data;
  int iVar2;
  GENERAL_NAME *data_00;
  int iVar3;
  int iVar4;
  
  st = sk_new_null();
  if (st == (_STACK *)0x0) {
    ERR_put_error(0x22,0x99,0x41,"jni/../../openssl-android/crypto/x509v3/v3_alt.c",0xfa);
  }
  else {
    for (iVar4 = 0; iVar3 = sk_num(param_3), iVar4 < iVar3; iVar4 = iVar4 + 1) {
      cnf = sk_value(param_3,iVar4);
      iVar3 = name_cmp(cnf->name,"issuer");
      if (((iVar3 == 0) && (cnf->value != (char *)0x0)) &&
         (iVar3 = strcmp(cnf->value,"copy"), iVar3 == 0)) {
        if (param_2 == (X509V3_CTX *)0x0) {
LAB_00696ed8:
          iVar3 = 0x119;
          iVar4 = 0x7f;
LAB_00696f3c:
          ERR_put_error(0x22,0x7b,iVar4,"jni/../../openssl-android/crypto/x509v3/v3_alt.c",iVar3);
LAB_00696f8c:
          sk_pop_free(st,(func *)0x6990bd);
          return (_STACK *)0x0;
        }
        if (param_2->flags != 1) {
          if (param_2->issuer_cert == (X509 *)0x0) goto LAB_00696ed8;
          iVar3 = X509_get_ext_by_NID(param_2->issuer_cert,0x55,-1);
          if (-1 < iVar3) {
            ext = X509_get_ext(param_2->issuer_cert,iVar3);
            if ((ext == (X509_EXTENSION *)0x0) ||
               (p_Var1 = X509V3_EXT_d2i(ext), p_Var1 == (_STACK *)0x0)) {
              iVar3 = 0x120;
              iVar4 = 0x7e;
              goto LAB_00696f3c;
            }
            for (iVar3 = 0; iVar2 = sk_num(p_Var1), iVar3 < iVar2; iVar3 = iVar3 + 1) {
              data = sk_value(p_Var1,iVar3);
              iVar2 = sk_push(st,data);
              if (iVar2 == 0) {
                iVar3 = 0x127;
                iVar4 = 0x41;
                goto LAB_00696f3c;
              }
            }
            sk_free(p_Var1);
          }
        }
      }
      else {
        data_00 = v2i_GENERAL_NAME(param_1,param_2,cnf);
        if (data_00 == (GENERAL_NAME *)0x0) goto LAB_00696f8c;
        sk_push(st,data_00);
      }
    }
  }
  return st;
}

// ---- FUN_006973a0  @ 0x6973a0
X509_EXTENSION * FUN_006973a0(int param_1,int param_2,ASN1_VALUE *param_3,ASN1_VALUE *param_4)

{
  int num;
  ASN1_STRING *data;
  X509_EXTENSION *pXVar1;
  ASN1_VALUE *local_20;
  ASN1_VALUE *local_1c;
  
  local_1c = param_4;
  if (*(ASN1_ITEM **)(param_1 + 8) == (ASN1_ITEM *)0x0) {
    local_20 = param_3;
    num = (**(code **)(param_1 + 0x18))(param_4,0,0,*(code **)(param_1 + 0x18),param_1,param_2);
    local_20 = CRYPTO_malloc(num,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0xc1);
    if (local_20 == (ASN1_VALUE *)0x0) goto LAB_00697412;
    local_1c = local_20;
    (**(code **)(param_1 + 0x18))(param_4,&local_1c);
  }
  else {
    local_20 = (ASN1_VALUE *)0x0;
    num = ASN1_item_i2d(param_4,(uchar **)&local_20,*(ASN1_ITEM **)(param_1 + 8));
    if (num < 0) goto LAB_00697412;
  }
  data = ASN1_STRING_type_new(4);
  if (data != (ASN1_STRING *)0x0) {
    data->length = num;
    data->data = (uchar *)local_20;
    pXVar1 = X509_EXTENSION_create_by_NID((X509_EXTENSION **)0x0,param_2,(int)param_3,data);
    if (pXVar1 != (X509_EXTENSION *)0x0) {
      ASN1_STRING_free(data);
      return pXVar1;
    }
  }
LAB_00697412:
  ERR_put_error(0x22,0x87,0x41,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0xd0);
  return (X509_EXTENSION *)0x0;
}

// ---- FUN_00697438  @ 0x697438
undefined4 FUN_00697438(undefined4 *param_1)

{
  byte *pbVar1;
  size_t sVar2;
  int iVar3;
  char *__s;
  byte *pbVar4;
  
  __s = (char *)*param_1;
  sVar2 = strlen(__s);
  if (sVar2 < 9) {
    return 0;
  }
  iVar3 = strncmp(__s,"critical,",9);
  if (iVar3 == 0) {
    pbVar1 = (byte *)(__s + 9);
    do {
      pbVar4 = pbVar1;
      pbVar1 = pbVar4 + 1;
    } while ((int)((uint)*(byte *)(_ctype_ + (uint)*pbVar4 + 1) << 0x1c) < 0);
    *param_1 = pbVar4;
    return 1;
  }
  return 0;
}

// ---- FUN_00697484  @ 0x697484
undefined4 FUN_00697484(undefined4 *param_1)

{
  byte *pbVar1;
  size_t sVar2;
  int iVar3;
  undefined4 uVar4;
  char *__s;
  byte *pbVar5;
  
  __s = (char *)*param_1;
  sVar2 = strlen(__s);
  if (sVar2 < 4) {
    return 0;
  }
  iVar3 = strncmp(__s,"DER:",4);
  if (iVar3 == 0) {
    uVar4 = 1;
    pbVar1 = (byte *)(__s + 4);
  }
  else {
    if (sVar2 == 4) {
      return 0;
    }
    iVar3 = strncmp(__s,"ASN1:",5);
    if (iVar3 != 0) {
      return 0;
    }
    uVar4 = 2;
    pbVar1 = (byte *)(__s + 5);
  }
  do {
    pbVar5 = pbVar1;
    pbVar1 = pbVar5 + 1;
  } while ((int)((uint)*(byte *)(_ctype_ + (uint)*pbVar5 + 1) << 0x1c) < 0);
  *param_1 = pbVar5;
  return uVar4;
}

// ---- FUN_006974f0  @ 0x6974f0
X509_EXTENSION *
FUN_006974f0(char *param_1,char *param_2,int param_3,uchar *param_4,X509V3_CTX *param_5)

{
  ASN1_OBJECT *obj;
  uchar *ptr;
  ASN1_TYPE *a;
  ASN1_STRING *data;
  X509_EXTENSION *pXVar1;
  int local_20;
  uchar *local_1c;
  
  local_20 = param_3;
  local_1c = param_4;
  obj = OBJ_txt2obj(param_1,0);
  if (obj == (ASN1_OBJECT *)0x0) {
    ERR_put_error(0x22,0x74,0x73,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x10f);
    ERR_add_error_data(2,"name=",param_1);
    ptr = (uchar *)0x0;
    data = (ASN1_STRING *)0x0;
    pXVar1 = (X509_EXTENSION *)0x0;
    goto LAB_006975c8;
  }
  if (param_4 == (uchar *)0x1) {
    ptr = string_to_hex(param_2,&local_20);
LAB_00697566:
    if (ptr != (uchar *)0x0) {
      data = ASN1_STRING_type_new(4);
      if (data == (ASN1_STRING *)0x0) {
        ERR_put_error(0x22,0x74,0x41,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x122);
        pXVar1 = (X509_EXTENSION *)0x0;
      }
      else {
        data->data = ptr;
        ptr = (uchar *)0x0;
        data->length = local_20;
        pXVar1 = X509_EXTENSION_create_by_OBJ((X509_EXTENSION **)0x0,obj,param_3,data);
      }
      goto LAB_006975c8;
    }
  }
  else if (param_4 == (uchar *)0x2) {
    local_1c = (uchar *)0x0;
    a = ASN1_generate_v3(param_2,param_5);
    if (a != (ASN1_TYPE *)0x0) {
      local_20 = i2d_ASN1_TYPE(a,&local_1c);
      ASN1_TYPE_free(a);
      ptr = local_1c;
      goto LAB_00697566;
    }
  }
  pXVar1 = (X509_EXTENSION *)0x0;
  ERR_put_error(0x22,0x74,0x74,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x11b);
  data = (ASN1_STRING *)0x0;
  ERR_add_error_data(2,"value=",param_2);
  ptr = (uchar *)0x0;
LAB_006975c8:
  ASN1_OBJECT_free(obj);
  ASN1_STRING_free(data);
  if (ptr != (uchar *)0x0) {
    CRYPTO_free(ptr);
  }
  return pXVar1;
}

// ---- FUN_006975f8  @ 0x6975f8
undefined8
FUN_006975f8(CONF *param_1,v3_ext_ctx *param_2,int param_3,undefined4 param_4,CONF *param_5)

{
  X509V3_EXT_METHOD *method;
  _STACK *st;
  int iVar1;
  char *pcVar2;
  ASN1_VALUE *val;
  undefined4 uVar3;
  CONF *pCVar4;
  
  if (param_3 == 0) {
    pCVar4 = (CONF *)0x7c;
    ERR_put_error(0x22,0x97,0x82,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x7c);
    uVar3 = 0;
    goto LAB_00697738;
  }
  pCVar4 = param_1;
  method = X509V3_EXT_get_nid(param_3);
  if (method == (X509V3_EXT_METHOD *)0x0) {
    pCVar4 = (CONF *)&DAT_00000081;
    ERR_put_error(0x22,0x97,0x81,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x81);
    uVar3 = 0;
    goto LAB_00697738;
  }
  if (method->v2i == (X509V3_EXT_V2I)0x0) {
    if (method->s2i == (X509V3_EXT_S2I)0x0) {
      if (method->r2i == (X509V3_EXT_R2I)0x0) {
        pCVar4 = (CONF *)0xa3;
        ERR_put_error(0x22,0x97,0x67,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0xa3);
        pcVar2 = OBJ_nid2sn(param_3);
        ERR_add_error_data(2,"name=",pcVar2);
        uVar3 = 0;
        goto LAB_00697738;
      }
      if ((param_2->db == (void *)0x0) || (param_2->db_meth == (X509V3_CONF_METHOD *)0x0)) {
        param_5 = (CONF *)0x9c;
        ERR_put_error(0x22,0x97,0x88,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x9c);
        goto LAB_006976dc;
      }
      val = (*method->r2i)(method,param_2,(char *)param_5);
    }
    else {
      val = (*method->s2i)(method,param_2,(char *)param_5);
    }
  }
  else {
    if (*(char *)&param_5->meth == '@') {
      st = &NCONF_get_section(param_1,(char *)((int)&param_5->meth + 1))->stack;
    }
    else {
      st = &X509V3_parse_list((char *)param_5)->stack;
    }
    iVar1 = sk_num(st);
    if (iVar1 < 1) {
      ERR_put_error(0x22,0x97,0x69,"jni/../../openssl-android/crypto/x509v3/v3_conf.c",0x8b);
      pcVar2 = OBJ_nid2sn(param_3);
      ERR_add_error_data(4,"name=",pcVar2,",section=");
LAB_006976dc:
      uVar3 = 0;
      pCVar4 = param_5;
      goto LAB_00697738;
    }
    val = (*method->v2i)(method,param_2,(stack_st_CONF_VALUE *)st);
    if (*(char *)&param_5->meth != '@') {
      sk_pop_free(st,(func *)0x69bfdd);
    }
  }
  if (val == (ASN1_VALUE *)0x0) {
    uVar3 = 0;
  }
  else {
    uVar3 = FUN_006973a0(method,param_3,param_4,val);
    if (method->it == (ASN1_ITEM *)0x0) {
      (*method->ext_free)(val);
    }
    else {
      ASN1_item_free(val,method->it);
    }
  }
LAB_00697738:
  return CONCAT44(pCVar4,uVar3);
}

// ---- FUN_00697db8  @ 0x697db8
_STACK * FUN_00697db8(undefined4 param_1,X509V3_CTX *param_2,char *param_3)

{
  bool bVar1;
  bool bVar2;
  _STACK *st;
  _STACK *st_00;
  undefined4 *puVar3;
  _STACK *section;
  POLICYINFO *a;
  ASN1_OBJECT *pAVar4;
  _STACK *p_Var5;
  POLICYQUALINFO *pPVar6;
  ASN1_STRING *pAVar7;
  size_t sVar8;
  USERNOTICE *pUVar9;
  _STACK *st_01;
  void *pvVar10;
  ASN1_INTEGER *data;
  int iVar11;
  int iVar12;
  undefined4 uVar13;
  _STACK *st_02;
  NOTICEREF *pNVar14;
  POLICYINFO *a_00;
  char *pcVar15;
  POLICYQUALINFO *data_00;
  int iVar16;
  int local_50;
  int local_48;
  
  st = sk_new_null();
  if (st == (_STACK *)0x0) {
    ERR_put_error(0x22,0x82,0x41,"jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0x8f);
  }
  else {
    st_00 = &X509V3_parse_list(param_3)->stack;
    if (st_00 == (_STACK *)0x0) {
      iVar16 = 0x94;
      iVar12 = 0x22;
LAB_0069831e:
      ERR_put_error(0x22,0x82,iVar12,"jni/../../openssl-android/crypto/x509v3/v3_cpols.c",iVar16);
LAB_0069836a:
      sk_pop_free(st_00,(func *)0x69bfdd);
      sk_pop_free(st,(func *)(undefined *)0x697c89);
      st = (_STACK *)0x0;
    }
    else {
      bVar2 = false;
      for (local_50 = 0; iVar12 = sk_num(st_00), local_50 < iVar12; local_50 = local_50 + 1) {
        puVar3 = sk_value(st_00,local_50);
        if ((puVar3[2] != 0) || (pcVar15 = (char *)puVar3[1], pcVar15 == (char *)0x0)) {
          ERR_put_error(0x22,0x82,0x86,"jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0x9b);
          uVar13 = puVar3[1];
          goto LAB_006982e2;
        }
        iVar12 = strcmp(pcVar15,"ia5org");
        if (iVar12 == 0) {
          bVar2 = true;
        }
        else {
          if (*pcVar15 == '@') {
            section = &X509V3_get_section(param_2,pcVar15 + 1)->stack;
            if (section == (_STACK *)0x0) {
              ERR_put_error(0x22,0x82,0x87,"jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0xa7
                           );
              uVar13 = puVar3[1];
LAB_006982e2:
              ERR_add_error_data(6,"section:",*puVar3,",name:",uVar13,",value:",puVar3[2]);
              goto LAB_0069836a;
            }
            a = POLICYINFO_new();
            if (a == (POLICYINFO *)0x0) {
LAB_0069827a:
              iVar16 = 0x107;
              iVar12 = 0x41;
LAB_0069828a:
              ERR_put_error(0x22,0x83,iVar12,"jni/../../openssl-android/crypto/x509v3/v3_cpols.c",
                            iVar16);
LAB_00698294:
              a_00 = (POLICYINFO *)0x0;
              POLICYINFO_free(a);
            }
            else {
              for (local_48 = 0; iVar12 = sk_num(section), local_48 < iVar12;
                  local_48 = local_48 + 1) {
                puVar3 = sk_value(section,local_48);
                pcVar15 = (char *)puVar3[1];
                iVar12 = strcmp(pcVar15,"policyIdentifier");
                if (iVar12 == 0) {
                  pAVar4 = OBJ_txt2obj((char *)puVar3[2],0);
                  if (pAVar4 == (ASN1_OBJECT *)0x0) {
                    ERR_put_error(0x22,0x83,0x6e,
                                  "jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0xd3);
                    uVar13 = puVar3[1];
                    goto LAB_00697fb0;
                  }
                  a->policyid = pAVar4;
                }
                else {
                  iVar12 = name_cmp(pcVar15,"CPS");
                  if (iVar12 != 0) {
                    iVar12 = name_cmp((char *)puVar3[1],"userNotice");
                    if (iVar12 == 0) {
                      if (*(char *)puVar3[2] == '@') {
                        p_Var5 = &X509V3_get_section(param_2,(char *)puVar3[2] + 1)->stack;
                        if (p_Var5 != (_STACK *)0x0) {
                          pPVar6 = POLICYQUALINFO_new();
                          if (pPVar6 == (POLICYQUALINFO *)0x0) {
LAB_006981e2:
                            iVar16 = 0x14c;
                            iVar12 = 0x41;
LAB_006981f2:
                            ERR_put_error(0x22,0x84,iVar12,
                                          "jni/../../openssl-android/crypto/x509v3/v3_cpols.c",
                                          iVar16);
LAB_006981f6:
                            data_00 = (POLICYQUALINFO *)0x0;
                            POLICYQUALINFO_free(pPVar6);
                          }
                          else {
                            pAVar4 = OBJ_nid2obj(0xa5);
                            pPVar6->pqualid = pAVar4;
                            pUVar9 = USERNOTICE_new();
                            if (pUVar9 == (USERNOTICE *)0x0) goto LAB_006981e2;
                            (pPVar6->d).usernotice = pUVar9;
                            for (iVar12 = 0; iVar16 = sk_num(p_Var5), iVar12 < iVar16;
                                iVar12 = iVar12 + 1) {
                              puVar3 = sk_value(p_Var5,iVar12);
                              pcVar15 = (char *)puVar3[1];
                              iVar16 = strcmp(pcVar15,"explicitText");
                              if (iVar16 == 0) {
                                pAVar7 = ASN1_STRING_type_new(0x1a);
                                pUVar9->exptext = pAVar7;
                                pcVar15 = (char *)puVar3[2];
                                sVar8 = strlen(pcVar15);
LAB_00698098:
                                iVar16 = ASN1_STRING_set(pAVar7,pcVar15,sVar8);
                                if (iVar16 == 0) goto LAB_006981e2;
                              }
                              else {
                                iVar16 = strcmp(pcVar15,"organization");
                                if (iVar16 == 0) {
                                  pNVar14 = pUVar9->noticeref;
                                  if (pNVar14 == (NOTICEREF *)0x0) {
                                    pNVar14 = NOTICEREF_new();
                                    if (pNVar14 == (NOTICEREF *)0x0) goto LAB_006981e2;
                                    pUVar9->noticeref = pNVar14;
                                  }
                                  if (bVar2) {
                                    iVar16 = 0x16;
                                  }
                                  else {
                                    iVar16 = 0x1a;
                                  }
                                  pNVar14->organization->type = iVar16;
                                  pcVar15 = (char *)puVar3[2];
                                  sVar8 = strlen(pcVar15);
                                  pAVar7 = pNVar14->organization;
                                  goto LAB_00698098;
                                }
                                iVar16 = strcmp(pcVar15,"noticeNumbers");
                                if (iVar16 != 0) {
                                  ERR_put_error(0x22,0x84,0x8a,
                                                "jni/../../openssl-android/crypto/x509v3/v3_cpols.c"
                                                ,0x13d);
                                  uVar13 = puVar3[1];
LAB_006981a0:
                                  ERR_add_error_data(6,"section:",*puVar3,",name:",uVar13,",value:",
                                                     puVar3[2]);
                                  goto LAB_006981f6;
                                }
                                pNVar14 = pUVar9->noticeref;
                                if (pNVar14 == (NOTICEREF *)0x0) {
                                  pNVar14 = NOTICEREF_new();
                                  if (pNVar14 == (NOTICEREF *)0x0) goto LAB_006981e2;
                                  pUVar9->noticeref = pNVar14;
                                }
                                st_01 = &X509V3_parse_list((char *)puVar3[2])->stack;
                                if ((st_01 == (_STACK *)0x0) ||
                                   (iVar16 = sk_num(st_01), iVar16 == 0)) {
                                  ERR_put_error(0x22,0x84,0x8d,
                                                "jni/../../openssl-android/crypto/x509v3/v3_cpols.c"
                                                ,0x134);
                                  uVar13 = puVar3[1];
                                  goto LAB_006981a0;
                                }
                                st_02 = &pNVar14->noticenos->stack;
                                for (iVar16 = 0; iVar11 = sk_num(st_01), iVar16 < iVar11;
                                    iVar16 = iVar16 + 1) {
                                  pvVar10 = sk_value(st_01,iVar16);
                                  data = s2i_ASN1_INTEGER((X509V3_EXT_METHOD *)0x0,
                                                          *(char **)((int)pvVar10 + 4));
                                  if (data == (ASN1_INTEGER *)0x0) {
                                    iVar11 = 0x15d;
                                    iVar16 = 0x8c;
LAB_00698156:
                                    ERR_put_error(0x22,0x85,iVar16,
                                                  "jni/../../openssl-android/crypto/x509v3/v3_cpols.c"
                                                  ,iVar11);
                                    bVar1 = false;
                                    sk_pop_free(st_02,(func *)0x63b40f);
                                    goto LAB_00698168;
                                  }
                                  iVar11 = sk_push(st_02,data);
                                  if (iVar11 == 0) {
                                    iVar11 = 0x165;
                                    iVar16 = 0x41;
                                    goto LAB_00698156;
                                  }
                                }
                                bVar1 = true;
LAB_00698168:
                                sk_pop_free(st_01,(func *)0x69bfdd);
                                if (!bVar1) goto LAB_006981f6;
                              }
                            }
                            pNVar14 = pUVar9->noticeref;
                            data_00 = pPVar6;
                            if ((pNVar14 != (NOTICEREF *)0x0) &&
                               ((pNVar14->noticenos == (stack_st_ASN1_INTEGER *)0x0 ||
                                (pNVar14->organization == (ASN1_STRING *)0x0)))) {
                              iVar16 = 0x145;
                              iVar12 = 0x8e;
                              goto LAB_006981f2;
                            }
                          }
                          X509V3_section_free(param_2,(stack_st_CONF_VALUE *)p_Var5);
                          if (data_00 != (POLICYQUALINFO *)0x0) {
                            if (a->qualifiers == (stack_st_POLICYQUALINFO *)0x0) {
                              p_Var5 = sk_new_null();
                              a->qualifiers = (stack_st_POLICYQUALINFO *)p_Var5;
                            }
                            iVar12 = sk_push(&a->qualifiers->stack,data_00);
                            goto LAB_0069821c;
                          }
                          goto LAB_00698294;
                        }
                        ERR_put_error(0x22,0x83,0x87,
                                      "jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0xec);
                        uVar13 = puVar3[1];
                      }
                      else {
                        ERR_put_error(0x22,0x83,0x89,
                                      "jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0xe6);
                        uVar13 = puVar3[1];
                      }
                    }
                    else {
                      ERR_put_error(0x22,0x83,0x8a,
                                    "jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0xf9);
                      uVar13 = puVar3[1];
                    }
LAB_00697fb0:
                    ERR_add_error_data(6,"section:",*puVar3,",name:",uVar13,",value:",puVar3[2]);
                    goto LAB_00698294;
                  }
                  if (a->qualifiers == (stack_st_POLICYQUALINFO *)0x0) {
                    p_Var5 = sk_new_null();
                    a->qualifiers = (stack_st_POLICYQUALINFO *)p_Var5;
                  }
                  pPVar6 = POLICYQUALINFO_new();
                  if ((pPVar6 == (POLICYQUALINFO *)0x0) ||
                     (iVar12 = sk_push(&a->qualifiers->stack,pPVar6), iVar12 == 0))
                  goto LAB_0069827a;
                  pAVar4 = OBJ_nid2obj(0xa4);
                  pPVar6->pqualid = pAVar4;
                  pAVar7 = ASN1_STRING_type_new(0x16);
                  (pPVar6->d).cpsuri = pAVar7;
                  pcVar15 = (char *)puVar3[2];
                  sVar8 = strlen(pcVar15);
                  iVar12 = ASN1_STRING_set(pAVar7,pcVar15,sVar8);
LAB_0069821c:
                  if (iVar12 == 0) goto LAB_0069827a;
                }
              }
              a_00 = a;
              if (a->policyid == (ASN1_OBJECT *)0x0) {
                iVar16 = 0x100;
                iVar12 = 0x8b;
                goto LAB_0069828a;
              }
            }
            X509V3_section_free(param_2,(stack_st_CONF_VALUE *)section);
            if (a_00 == (POLICYINFO *)0x0) goto LAB_0069836a;
          }
          else {
            pAVar4 = OBJ_txt2obj(pcVar15,0);
            if (pAVar4 == (ASN1_OBJECT *)0x0) {
              ERR_put_error(0x22,0x82,0x6e,"jni/../../openssl-android/crypto/x509v3/v3_cpols.c",0xb1
                           );
              uVar13 = puVar3[1];
              goto LAB_006982e2;
            }
            a_00 = POLICYINFO_new();
            a_00->policyid = pAVar4;
          }
          iVar12 = sk_push(st,a_00);
          if (iVar12 == 0) {
            POLICYINFO_free(a_00);
            iVar16 = 0xba;
            iVar12 = 0x41;
            goto LAB_0069831e;
          }
        }
      }
      sk_pop_free(st_00,(func *)0x69bfdd);
    }
  }
  return st;
}

// ---- FUN_00698534  @ 0x698534
undefined4 FUN_00698534(BIO *param_1,_STACK *param_2,int param_3)

{
  GENERAL_NAME *gen;
  int iVar1;
  int iVar2;
  
  for (iVar2 = 0; iVar1 = sk_num(param_2), iVar2 < iVar1; iVar2 = iVar2 + 1) {
    BIO_printf(param_1,"%*s",param_3 + 2,&DAT_00801f93);
    gen = sk_value(param_2,iVar2);
    GENERAL_NAME_print(param_1,gen);
    BIO_puts(param_1,"\n");
  }
  return 1;
}

// ---- FUN_006986bc  @ 0x6986bc
undefined4 FUN_006986bc(BIO *param_1,int *param_2,int param_3)

{
  X509_NAME local_24;
  
  if (*param_2 == 0) {
    BIO_printf(param_1,"%*sFull Name:\n",param_3,&DAT_00801f93);
    FUN_00698534(param_1,param_2[1],param_3);
  }
  else {
    local_24.entries = (stack_st_X509_NAME_ENTRY *)param_2[1];
    BIO_printf(param_1,"%*sRelative Name:\n%*s",param_3,&DAT_00801f93,param_3 + 2,&DAT_00801f93);
    X509_NAME_print_ex(param_1,&local_24,0,0x82031f);
    BIO_puts(param_1,"\n");
  }
  return 1;
}

// ---- FUN_006988a0  @ 0x6988a0
undefined8 FUN_006988a0(X509V3_CTX *param_1,char *param_2)

{
  _STACK *st;
  GENERAL_NAMES *pGVar1;
  X509V3_CTX *pXVar2;
  
  pXVar2 = param_1;
  if (*param_2 == '@') {
    st = &X509V3_get_section(param_1,param_2 + 1)->stack;
  }
  else {
    st = &X509V3_parse_list(param_2)->stack;
  }
  if (st == (_STACK *)0x0) {
    pXVar2 = (X509V3_CTX *)0x68;
    ERR_put_error(0x22,0x9c,0x96,"jni/../../openssl-android/crypto/x509v3/v3_crld.c",0x68);
    pGVar1 = (GENERAL_NAMES *)0x0;
  }
  else {
    pGVar1 = v2i_GENERAL_NAMES((X509V3_EXT_METHOD *)0x0,param_1,(stack_st_CONF_VALUE *)st);
    if (*param_2 == '@') {
      X509V3_section_free(param_1,(stack_st_CONF_VALUE *)st);
    }
    else {
      sk_pop_free(st,(func *)0x69bfdd);
    }
  }
  return CONCAT44(pXVar2,pGVar1);
}

// ---- FUN_00698938  @ 0x698938
undefined8 FUN_00698938(int *param_1,X509V3_CTX *param_2,int param_3)

{
  int iVar1;
  _STACK *st;
  X509_NAME *nm;
  stack_st_CONF_VALUE *dn_sk;
  void *pvVar2;
  DIST_POINT_NAME *pDVar3;
  undefined4 uVar4;
  _STACK *st_00;
  char *__s1;
  int *piVar5;
  
  __s1 = *(char **)(param_3 + 4);
  piVar5 = param_1;
  iVar1 = strncmp(__s1,"fullname",9);
  if (iVar1 == 0) {
    st = (_STACK *)FUN_006988a0(param_2,*(undefined4 *)(param_3 + 8));
    st_00 = (_STACK *)0x0;
    if (st != (_STACK *)0x0) {
LAB_006989fe:
      if (*param_1 == 0) {
        pDVar3 = DIST_POINT_NAME_new();
        *param_1 = (int)pDVar3;
        if (pDVar3 != (DIST_POINT_NAME *)0x0) {
          uVar4 = 1;
          if (st == (_STACK *)0x0) {
            pDVar3->type = 1;
            *(_STACK **)(*param_1 + 4) = st_00;
          }
          else {
            pDVar3->type = 0;
            *(_STACK **)(*param_1 + 4) = st;
          }
          goto LAB_00698a54;
        }
      }
      else {
        piVar5 = (int *)0xa5;
        ERR_put_error(0x22,0x9e,0xa0,"jni/../../openssl-android/crypto/x509v3/v3_crld.c",0xa5);
      }
      if (st != (_STACK *)0x0) {
        sk_pop_free(st,(func *)0x6990bd);
      }
LAB_00698a42:
      if (st_00 != (_STACK *)0x0) {
        sk_pop_free(st_00,(func *)0x643b39);
      }
    }
  }
  else {
    iVar1 = strcmp(__s1,"relativename");
    uVar4 = 0;
    if (iVar1 != 0) goto LAB_00698a54;
    nm = X509_NAME_new();
    if (nm != (X509_NAME *)0x0) {
      dn_sk = X509V3_get_section(param_2,*(char **)(param_3 + 8));
      if (dn_sk != (stack_st_CONF_VALUE *)0x0) {
        iVar1 = X509V3_NAME_from_section(nm,dn_sk,0x1001);
        X509V3_section_free(param_2,dn_sk);
        st_00 = &nm->entries->stack;
        nm->entries = (stack_st_X509_NAME_ENTRY *)0x0;
        X509_NAME_free(nm);
        if ((iVar1 != 0) && (iVar1 = sk_num(st_00), 0 < iVar1)) {
          iVar1 = sk_num(st_00);
          pvVar2 = sk_value(st_00,iVar1 + -1);
          st = (_STACK *)0x0;
          if (*(int *)((int)pvVar2 + 8) == 0) goto LAB_006989fe;
          piVar5 = (int *)0x9b;
          ERR_put_error(0x22,0x9e,0xa1,"jni/../../openssl-android/crypto/x509v3/v3_crld.c",0x9b);
        }
        goto LAB_00698a42;
      }
      piVar5 = (int *)0x8a;
      ERR_put_error(0x22,0x9e,0x96,"jni/../../openssl-android/crypto/x509v3/v3_crld.c",0x8a);
    }
  }
  uVar4 = 0xffffffff;
LAB_00698a54:
  return CONCAT44(piVar5,uVar4);
}

// ---- FUN_00698ec0  @ 0x698ec0
_STACK * FUN_00698ec0(undefined4 param_1,undefined4 param_2,_STACK *param_3)

{
  _STACK *st;
  undefined4 *puVar1;
  char *s;
  ASN1_OBJECT *data;
  int iVar2;
  int iVar3;
  
  st = sk_new_null();
  if (st == (_STACK *)0x0) {
    ERR_put_error(0x22,0x67,0x41,"jni/../../openssl-android/crypto/x509v3/v3_extku.c",0x7f);
  }
  else {
    for (iVar3 = 0; iVar2 = sk_num(param_3), iVar3 < iVar2; iVar3 = iVar3 + 1) {
      puVar1 = sk_value(param_3,iVar3);
      s = (char *)puVar1[2];
      if (s == (char *)0x0) {
        s = (char *)puVar1[1];
      }
      data = OBJ_txt2obj(s,0);
      if (data == (ASN1_OBJECT *)0x0) {
        sk_pop_free(st,(func *)0x6383a9);
        ERR_put_error(0x22,0x67,0x6e,"jni/../../openssl-android/crypto/x509v3/v3_extku.c",0x89);
        ERR_add_error_data(6,"section:",*puVar1,",name:",puVar1[1],",value:",puVar1[2]);
        return (_STACK *)0x0;
      }
      sk_push(st,data);
    }
  }
  return st;
}

// ---- FUN_00698f78  @ 0x698f78
void FUN_00698f78(undefined4 param_1,_STACK *param_2,stack_st_CONF_VALUE *param_3)

{
  ASN1_OBJECT *a;
  int iVar1;
  int iVar2;
  stack_st_CONF_VALUE *local_6c [2];
  char acStack_64 [80];
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_6c[0] = param_3;
  for (iVar2 = 0; iVar1 = sk_num(param_2), iVar2 < iVar1; iVar2 = iVar2 + 1) {
    a = sk_value(param_2,iVar2);
    i2t_ASN1_OBJECT(acStack_64,0x50,a);
    X509V3_add_value((char *)0x0,acStack_64,local_6c);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_6c[0]);
  }
  return;
}

// ---- FUN_00699258  @ 0x699258
undefined8 FUN_00699258(undefined4 param_1,undefined4 param_2,char *param_3)

{
  ASN1_STRING *str;
  size_t len;
  int iVar1;
  
  if (param_3 == (char *)0x0) {
    param_1 = 99;
    ERR_put_error(0x22,100,0x6b,"jni/../../openssl-android/crypto/x509v3/v3_ia5.c",99);
    str = (ASN1_STRING *)0x0;
  }
  else {
    str = ASN1_STRING_type_new(0x16);
    if (str != (ASN1_STRING *)0x0) {
      len = strlen(param_3);
      iVar1 = ASN1_STRING_set(str,param_3,len);
      if (iVar1 != 0) goto LAB_006992aa;
      ASN1_STRING_free(str);
    }
    param_1 = 0x71;
    str = (ASN1_STRING *)0x0;
    ERR_put_error(0x22,100,0x41,"jni/../../openssl-android/crypto/x509v3/v3_ia5.c",0x71);
  }
LAB_006992aa:
  return CONCAT44(param_1,str);
}

// ---- FUN_00699944  @ 0x699944
undefined4 FUN_00699944(int param_1,undefined4 *param_2)

{
  char *pcVar1;
  char *pcVar2;
  char *pcVar3;
  size_t __n;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  size_t sVar7;
  X509_NAME *a;
  X509_NAME *a_00;
  char *pcVar8;
  size_t *psVar9;
  int *piVar10;
  int *piVar11;
  
  switch(*param_2) {
  case 1:
    piVar10 = (int *)param_2[1];
    piVar11 = *(int **)(param_1 + 4);
    pcVar2 = (char *)piVar10[2];
    pcVar8 = (char *)piVar11[2];
    pcVar3 = strchr(pcVar2,0x40);
    pcVar1 = strchr(pcVar8,0x40);
    if (pcVar1 == (char *)0x0) {
      return 0x35;
    }
    if (pcVar3 == (char *)0x0) {
      if (*pcVar2 == '.') {
        iVar4 = *piVar11;
        iVar6 = *piVar10;
        if (iVar4 <= iVar6) {
          return 0x2f;
        }
        pcVar8 = pcVar8 + (iVar4 - iVar6);
        break;
      }
    }
    else {
      if (pcVar3 != pcVar2) {
        if ((int)pcVar3 - (int)pcVar2 != (int)pcVar1 - (int)pcVar8) {
          return 0x2f;
        }
        iVar4 = strncmp(pcVar2,pcVar8,(int)pcVar3 - (int)pcVar2);
        if (iVar4 != 0) {
          return 0x2f;
        }
      }
      pcVar2 = pcVar3 + 1;
    }
    pcVar8 = pcVar1 + 1;
    break;
  case 2:
    pcVar2 = (char *)((int *)param_2[1])[2];
    pcVar8 = (char *)(*(int **)(param_1 + 4))[2];
    if (*pcVar2 == '\0') {
      return 0;
    }
    iVar4 = **(int **)(param_1 + 4);
    iVar6 = *(int *)param_2[1];
    if ((iVar6 < iVar4) && (pcVar8 = pcVar8 + (iVar4 - iVar6), pcVar8[-1] != '.')) {
      return 0x2f;
    }
    break;
  default:
    return 0x33;
  case 4:
    a = *(X509_NAME **)(param_1 + 4);
    a_00 = (X509_NAME *)param_2[1];
    if (((a->modified != 0) && (iVar4 = i2d_X509_NAME(a,(uchar **)0x0), iVar4 < 0)) ||
       ((a_00->modified != 0 && (iVar4 = i2d_X509_NAME(a_00,(uchar **)0x0), iVar4 < 0)))) {
      return 0x11;
    }
    if (a->canon_enclen < a_00->canon_enclen) {
      return 0x2f;
    }
    iVar4 = memcmp(a_00->canon_enc,a->canon_enc,a_00->canon_enclen);
    goto LAB_00699a8e;
  case 6:
    psVar9 = (size_t *)param_2[1];
    pcVar8 = (char *)psVar9[2];
    pcVar2 = strchr(*(char **)(*(int *)(param_1 + 4) + 8),0x3a);
    if (((pcVar2 != (char *)0x0) && (pcVar2[1] == '/')) && (pcVar2[2] == '/')) {
      pcVar2 = pcVar2 + 3;
      pcVar3 = strchr(pcVar2,0x3a);
      if ((pcVar3 == (char *)0x0) && (pcVar3 = strchr(pcVar2,0x2f), pcVar3 == (char *)0x0)) {
        __n = strlen(pcVar2);
      }
      else {
        __n = (int)pcVar3 - (int)pcVar2;
      }
      if (__n != 0) {
        sVar7 = *psVar9;
        if (*pcVar8 == '.') {
          if ((int)__n <= (int)sVar7) {
            return 0x2f;
          }
          pcVar2 = pcVar2 + (__n - sVar7);
          __n = sVar7;
        }
        else if (sVar7 != __n) {
          return 0x2f;
        }
        iVar4 = strncasecmp(pcVar2,pcVar8,__n);
        goto LAB_00699a8e;
      }
    }
    return 0x35;
  }
  iVar4 = strcasecmp(pcVar2,pcVar8);
LAB_00699a8e:
  if (iVar4 == 0) {
    uVar5 = 0;
  }
  else {
    uVar5 = 0x2f;
  }
  return uVar5;
}

// ---- FUN_00699ab8  @ 0x699ab8
int FUN_00699ab8(int *param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = 0;
  for (iVar4 = 0; iVar1 = sk_num((_STACK *)*param_2), iVar4 < iVar1; iVar4 = iVar4 + 1) {
    puVar2 = sk_value((_STACK *)*param_2,iVar4);
    if (*param_1 == *(int *)*puVar2) {
      if (puVar2[1] != 0) {
        return 0x31;
      }
      if (puVar2[2] != 0) {
        return 0x31;
      }
      if (iVar3 != 2) {
        if (iVar3 == 0) {
          iVar3 = 1;
        }
        iVar1 = FUN_00699944(param_1);
        if (iVar1 == 0) {
          iVar3 = 2;
        }
        else if (iVar1 != 0x2f) {
          return iVar1;
        }
      }
    }
  }
  if (iVar3 == 1) {
    return 0x2f;
  }
  iVar3 = 0;
  do {
    iVar4 = sk_num((_STACK *)param_2[1]);
    if (iVar4 <= iVar3) {
      return 0;
    }
    puVar2 = sk_value((_STACK *)param_2[1],iVar3);
    if (*param_1 == *(int *)*puVar2) {
      if ((puVar2[1] != 0) || (puVar2[2] != 0)) {
        return 0x31;
      }
      iVar4 = FUN_00699944(param_1);
      if (iVar4 == 0) {
        return 0x30;
      }
      if (iVar4 != 0x2f) {
        return iVar4;
      }
    }
    iVar3 = iVar3 + 1;
  } while( true );
}

// ---- FUN_00699b54  @ 0x699b54
undefined4 FUN_00699b54(_STACK *param_1,BIO *param_2,int param_3,undefined4 param_4)

{
  size_t *psVar1;
  size_t *psVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  GENERAL_NAME *gen;
  char *buf;
  BUF_MEM *pBVar6;
  stack_st_X509_NAME_ENTRY *psVar7;
  
  iVar3 = sk_num(param_1);
  if (0 < iVar3) {
    BIO_printf(param_2,"%*s%s:\n",param_3,&DAT_00801f93,param_4);
  }
  for (iVar3 = 0; iVar5 = sk_num(param_1), iVar3 < iVar5; iVar3 = iVar3 + 1) {
    puVar4 = sk_value(param_1,iVar3);
    BIO_printf(param_2,"%*s",param_3 + 2,&DAT_00801f93);
    gen = (GENERAL_NAME *)*puVar4;
    if (gen->type == 7) {
      psVar7 = ((gen->d).directoryName)->entries;
      pBVar6 = ((gen->d).directoryName)->bytes;
      BIO_puts(param_2,"IP:");
      if (psVar7 == (stack_st_X509_NAME_ENTRY *)0x8) {
        BIO_printf(param_2,"%d.%d.%d.%d/%d.%d.%d.%d",(uint)(byte)pBVar6->length,
                   (uint)*(byte *)((int)&pBVar6->length + 1),
                   (uint)*(byte *)((int)&pBVar6->length + 2),
                   (uint)*(byte *)((int)&pBVar6->length + 3),(uint)*(byte *)&pBVar6->data,
                   (uint)*(byte *)((int)&pBVar6->data + 1),(uint)*(byte *)((int)&pBVar6->data + 2),
                   (uint)*(byte *)((int)&pBVar6->data + 3));
      }
      else if (psVar7 == (stack_st_X509_NAME_ENTRY *)0x20) {
        iVar5 = 0;
        do {
          psVar1 = &pBVar6->length;
          psVar2 = &pBVar6->length;
          pBVar6 = (BUF_MEM *)((int)&pBVar6->length + 2);
          BIO_printf(param_2,"%X",(uint)CONCAT11((char)*psVar1,*(undefined1 *)((int)psVar2 + 1)));
          buf = "/";
          if ((iVar5 == 7) || (buf = ":", iVar5 != 0xf)) {
            BIO_puts(param_2,buf);
          }
          iVar5 = iVar5 + 1;
        } while (iVar5 != 0x10);
      }
      else {
        BIO_printf(param_2,"IP Address:<invalid>");
      }
    }
    else {
      GENERAL_NAME_print(param_2,gen);
    }
    BIO_puts(param_2,"\n");
  }
  return 1;
}

// ---- FUN_00699c94  @ 0x699c94
undefined4
FUN_00699c94(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  FUN_00699b54(*param_2,param_3,param_4,"Permitted");
  FUN_00699b54(param_2[1],param_3,param_4,"Excluded");
  return 1;
}

// ---- FUN_0069ab3c  @ 0x69ab3c
void FUN_0069ab3c(undefined4 param_1,_STACK *param_2,stack_st_CONF_VALUE *param_3)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  stack_st_CONF_VALUE *local_c4 [2];
  char acStack_bc [80];
  char acStack_6c [80];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_c4[0] = param_3;
  for (iVar3 = 0; iVar2 = sk_num(param_2), iVar3 < iVar2; iVar3 = iVar3 + 1) {
    puVar1 = sk_value(param_2,iVar3);
    i2t_ASN1_OBJECT(acStack_bc,0x50,(ASN1_OBJECT *)*puVar1);
    i2t_ASN1_OBJECT(acStack_6c,0x50,(ASN1_OBJECT *)puVar1[1]);
    X509V3_add_value(acStack_bc,acStack_6c,local_c4);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(local_c4[0]);
  }
  return;
}

// ---- FUN_0069ad04  @ 0x69ad04
int FUN_0069ad04(BIO *param_1,int param_2,uint param_3,int param_4,int param_5)

{
  int iVar1;
  char *format;
  
  param_3 = param_3 & 0xf0000;
  if (param_3 == 0x10000) {
    if (param_5 == 0) {
      format = "%*s<Not Supported>";
    }
    else {
      format = "%*s<Parse Error>";
    }
    BIO_printf(param_1,format,param_4,&DAT_00801f93);
    return 1;
  }
  if (param_3 < 0x10001) {
    if (param_3 == 0) {
      return 0;
    }
  }
  else {
    if (param_3 == 0x20000) {
      iVar1 = ASN1_parse_dump(param_1,(uchar *)(*(long **)(param_2 + 8))[2],**(long **)(param_2 + 8)
                              ,param_4,-1);
      return iVar1;
    }
    if (param_3 == 0x30000) {
      iVar1 = BIO_dump_indent(param_1,(char *)(*(int **)(param_2 + 8))[2],**(int **)(param_2 + 8),
                              param_4);
      return iVar1;
    }
  }
  return 1;
}

// ---- FUN_0069b0b8  @ 0x69b0b8
uint FUN_0069b0b8(int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 0x28);
  if (((uVar2 & 2) == 0) || (uVar1 = 0, (*(uint *)(param_1 + 0x2c) & 4) != 0)) {
    if ((int)(uVar2 << 0x1f) < 0) {
      return (uVar2 & 0x1f) >> 4;
    }
    if ((uVar2 & 0x60) == 0x60) {
      return 3;
    }
    uVar1 = 4;
    if ((uVar2 & 2) == 0) {
      if (-1 < (int)(uVar2 << 0x1c)) {
        return 0;
      }
      if ((*(uint *)(param_1 + 0x34) & 7) == 0) {
        uVar2 = 0;
      }
      else {
        uVar2 = 5;
      }
      return uVar2;
    }
  }
  return uVar1;
}

// ---- FUN_0069b108  @ 0x69b108
uint FUN_0069b108(undefined4 param_1,int param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_2 + 0x28);
  if ((-1 < iVar2 << 0x1d) || (uVar1 = 0, (*(uint *)(param_2 + 0x30) & 2) != 0)) {
    if (param_3 == 0) {
      if ((iVar2 << 0x1e < 0) && (-1 < *(int *)(param_2 + 0x2c) << 0x18)) {
        return 0;
      }
      if (iVar2 << 0x1c < 0) {
        return (*(uint *)(param_2 + 0x34) & 0xff) >> 7;
      }
      uVar1 = 1;
    }
    else {
      uVar1 = FUN_0069b0b8(param_2);
      if ((uVar1 != 0) && (uVar1 == 5)) {
        uVar1 = 0;
        if ((*(uint *)(param_2 + 0x34) & 4) != 0) {
          uVar1 = 5;
        }
        return uVar1;
      }
    }
  }
  return uVar1;
}

// ---- FUN_0069b152  @ 0x69b152
uint FUN_0069b152(undefined4 param_1,int param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = *(int *)(param_2 + 0x28);
  if ((-1 < iVar2 << 0x1d) || (uVar1 = 0, (*(uint *)(param_2 + 0x30) & 0x11) != 0)) {
    if (param_3 == 0) {
      if ((iVar2 << 0x1c < 0) && (-1 < *(int *)(param_2 + 0x34) << 0x19)) {
        return 0;
      }
      if (iVar2 << 0x1e < 0) {
        return (uint)((*(uint *)(param_2 + 0x2c) & 0xa0) != 0);
      }
      uVar1 = 1;
    }
    else {
      uVar1 = FUN_0069b0b8(param_2);
      if ((uVar1 != 0) && (uVar1 == 5)) {
        uVar1 = 0;
        if ((*(uint *)(param_2 + 0x34) & 4) != 0) {
          uVar1 = 5;
        }
        return uVar1;
      }
    }
  }
  return uVar1;
}

// ---- FUN_0069b2fa  @ 0x69b2fa
void FUN_0069b2fa(void *param_1)

{
  if ((param_1 != (void *)0x0) && (*(int *)((int)param_1 + 8) << 0x1f < 0)) {
    if (*(int *)((int)param_1 + 8) << 0x1e < 0) {
      CRYPTO_free(*(void **)((int)param_1 + 0x10));
      CRYPTO_free(*(void **)((int)param_1 + 0x14));
    }
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_0069b5a0  @ 0x69b5a0
void FUN_0069b5a0(X509 *param_1,int param_2)

{
  byte bVar1;
  EVP_MD *type;
  X509_NAME *pXVar2;
  X509_NAME *b;
  int iVar3;
  long lVar4;
  BASIC_CONSTRAINTS *a;
  ASN1_INTEGER *a_00;
  PROXY_CERT_INFO_EXTENSION *a_01;
  ASN1_BIT_STRING *pAVar5;
  _STACK *st;
  int iVar6;
  ASN1_OCTET_STRING *pAVar7;
  AUTHORITY_KEYID *pAVar8;
  stack_st_GENERAL_NAME *psVar9;
  NAME_CONSTRAINTS *pNVar10;
  stack_st_DIST_POINT *psVar11;
  int *piVar12;
  int iVar13;
  X509_EXTENSION *ex;
  ASN1_OBJECT *pAVar14;
  ulong uVar15;
  int *piVar16;
  int local_1c;
  
  local_1c = param_2;
  type = EVP_sha1();
  X509_digest(param_1,type,(uchar *)&param_1->rfc3779_addr,(uint *)0x0);
  pXVar2 = X509_get_subject_name(param_1);
  b = X509_get_issuer_name(param_1);
  iVar3 = X509_NAME_cmp(pXVar2,b);
  if (iVar3 == 0) {
    param_1->ex_flags = param_1->ex_flags | 0x20;
  }
  lVar4 = ASN1_INTEGER_get(param_1->cert_info->version);
  if (lVar4 == 0) {
    param_1->ex_flags = param_1->ex_flags | 0x40;
  }
  a = X509_get_ext_d2i(param_1,0x57,(int *)0x0,(int *)0x0);
  if (a != (BASIC_CONSTRAINTS *)0x0) {
    if (a->ca != 0) {
      param_1->ex_flags = param_1->ex_flags | 0x10;
    }
    a_00 = a->pathlen;
    if (a_00 == (ASN1_INTEGER *)0x0) {
      lVar4 = -1;
LAB_0069b62e:
      param_1->ex_pathlen = lVar4;
    }
    else {
      if ((a_00->type == 0x102) || (a->ca == 0)) {
        param_1->ex_flags = param_1->ex_flags | 0x80;
        lVar4 = 0;
        goto LAB_0069b62e;
      }
      lVar4 = ASN1_INTEGER_get(a_00);
      param_1->ex_pathlen = lVar4;
    }
    BASIC_CONSTRAINTS_free(a);
    param_1->ex_flags = param_1->ex_flags | 1;
  }
  a_01 = X509_get_ext_d2i(param_1,0x297,(int *)0x0,(int *)0x0);
  if (a_01 != (PROXY_CERT_INFO_EXTENSION *)0x0) {
    if ((((int)(param_1->ex_flags << 0x1b) < 0) ||
        (iVar3 = X509_get_ext_by_NID(param_1,0x55,-1), -1 < iVar3)) ||
       (iVar3 = X509_get_ext_by_NID(param_1,0x56,-1), -1 < iVar3)) {
      param_1->ex_flags = param_1->ex_flags | 0x80;
    }
    if (a_01->pcPathLengthConstraint == (ASN1_INTEGER *)0x0) {
      param_1->ex_pcpathlen = -1;
    }
    else {
      lVar4 = ASN1_INTEGER_get(a_01->pcPathLengthConstraint);
      param_1->ex_pcpathlen = lVar4;
    }
    PROXY_CERT_INFO_EXTENSION_free(a_01);
    param_1->ex_flags = param_1->ex_flags | 0x400;
  }
  pAVar5 = X509_get_ext_d2i(param_1,0x53,(int *)0x0,(int *)0x0);
  if (pAVar5 == (ASN1_BIT_STRING *)0x0) goto LAB_0069b6da;
  if (pAVar5->length < 1) {
    uVar15 = 0;
LAB_0069b6cc:
    param_1->ex_kusage = uVar15;
  }
  else {
    bVar1 = *pAVar5->data;
    param_1->ex_kusage = (uint)bVar1;
    if (1 < pAVar5->length) {
      uVar15 = (ulong)CONCAT11(pAVar5->data[1],bVar1);
      goto LAB_0069b6cc;
    }
  }
  param_1->ex_flags = param_1->ex_flags | 2;
  ASN1_BIT_STRING_free(pAVar5);
LAB_0069b6da:
  param_1->ex_xkusage = 0;
  st = X509_get_ext_d2i(param_1,0x7e,(int *)0x0,(int *)0x0);
  if (st != (_STACK *)0x0) {
    local_1c = 0;
    param_1->ex_flags = param_1->ex_flags | 4;
    for (; iVar3 = local_1c, iVar6 = sk_num(st), iVar3 < iVar6; local_1c = local_1c + 1) {
      pAVar14 = sk_value(st,local_1c);
      iVar3 = OBJ_obj2nid(pAVar14);
      if (iVar3 == 0x85) {
        uVar15 = param_1->ex_xkusage | 0x40;
LAB_0069b77c:
        param_1->ex_xkusage = uVar15;
      }
      else {
        if (0x85 < iVar3) {
          if (iVar3 != 0x8b) {
            if (0x8b < iVar3) {
              if (iVar3 == 0xb4) {
                uVar15 = param_1->ex_xkusage | 0x20;
              }
              else {
                if (iVar3 != 0x129) goto LAB_0069b77e;
                uVar15 = param_1->ex_xkusage | 0x80;
              }
              goto LAB_0069b77c;
            }
            if (iVar3 != 0x89) goto LAB_0069b77e;
          }
          uVar15 = param_1->ex_xkusage | 0x10;
          goto LAB_0069b77c;
        }
        if (iVar3 == 0x82) {
          uVar15 = param_1->ex_xkusage | 2;
          goto LAB_0069b77c;
        }
        if (0x82 < iVar3) {
          if (iVar3 == 0x83) {
            uVar15 = param_1->ex_xkusage | 8;
          }
          else {
            if (iVar3 != 0x84) goto LAB_0069b77e;
            uVar15 = param_1->ex_xkusage | 4;
          }
          goto LAB_0069b77c;
        }
        if (iVar3 == 0x81) {
          uVar15 = param_1->ex_xkusage | 1;
          goto LAB_0069b77c;
        }
      }
LAB_0069b77e:
    }
    sk_pop_free(st,(func *)0x6383a9);
  }
  pAVar5 = X509_get_ext_d2i(param_1,0x47,(int *)0x0,(int *)0x0);
  if (pAVar5 != (ASN1_BIT_STRING *)0x0) {
    if (pAVar5->length < 1) {
      uVar15 = 0;
    }
    else {
      uVar15 = (ulong)*pAVar5->data;
    }
    param_1->ex_nscert = uVar15;
    param_1->ex_flags = param_1->ex_flags | 8;
    ASN1_BIT_STRING_free(pAVar5);
  }
  pAVar7 = X509_get_ext_d2i(param_1,0x52,(int *)0x0,(int *)0x0);
  param_1->skid = pAVar7;
  pAVar8 = X509_get_ext_d2i(param_1,0x5a,(int *)0x0,(int *)0x0);
  param_1->akid = pAVar8;
  psVar9 = X509_get_ext_d2i(param_1,0x55,(int *)0x0,(int *)0x0);
  param_1->altname = psVar9;
  pNVar10 = X509_get_ext_d2i(param_1,0x29a,&local_1c,(int *)0x0);
  param_1->nc = pNVar10;
  if ((pNVar10 == (NAME_CONSTRAINTS *)0x0) && (local_1c != -1)) {
    param_1->ex_flags = param_1->ex_flags | 0x80;
  }
  psVar11 = X509_get_ext_d2i(param_1,0x67,(int *)0x0,(int *)0x0);
  param_1->crldp = psVar11;
  for (iVar3 = 0; iVar6 = sk_num(&param_1->crldp->stack), iVar3 < iVar6; iVar3 = iVar3 + 1) {
    piVar12 = sk_value(&param_1->crldp->stack,iVar3);
    piVar16 = (int *)piVar12[1];
    if (piVar16 == (int *)0x0) {
      piVar12[3] = 0x807f;
    }
    else {
      if (0 < *piVar16) {
        piVar12[3] = (uint)*(byte *)piVar16[2];
      }
      if (1 < *piVar16) {
        piVar12[3] = piVar12[3] | (uint)*(byte *)(piVar16[2] + 1) << 8;
      }
      piVar12[3] = piVar12[3] & 0x807f;
    }
    if (((int *)*piVar12 != (int *)0x0) && (*(int *)*piVar12 == 1)) {
      for (iVar6 = 0; iVar13 = sk_num((_STACK *)piVar12[2]), iVar6 < iVar13; iVar6 = iVar6 + 1) {
        piVar16 = sk_value((_STACK *)piVar12[2],iVar6);
        if (*piVar16 == 4) {
          pXVar2 = (X509_NAME *)piVar16[1];
          if (pXVar2 != (X509_NAME *)0x0) goto LAB_0069b898;
          break;
        }
      }
      pXVar2 = X509_get_issuer_name(param_1);
LAB_0069b898:
      DIST_POINT_set_dpname((DIST_POINT_NAME *)*piVar12,pXVar2);
    }
  }
  local_1c = 0;
  do {
    iVar3 = local_1c;
    iVar6 = X509_get_ext_count(param_1);
    if (iVar6 <= iVar3) {
LAB_0069b8fe:
      param_1->ex_flags = param_1->ex_flags | 0x100;
      return;
    }
    ex = X509_get_ext(param_1,local_1c);
    pAVar14 = X509_EXTENSION_get_object(ex);
    iVar3 = OBJ_obj2nid(pAVar14);
    if (iVar3 == 0x359) {
      param_1->ex_flags = param_1->ex_flags | 0x1000;
    }
    iVar3 = X509_EXTENSION_get_critical(ex);
    if ((iVar3 != 0) && (iVar3 = X509_supported_extension(ex), iVar3 == 0)) {
      param_1->ex_flags = param_1->ex_flags | 0x200;
      goto LAB_0069b8fe;
    }
    local_1c = local_1c + 1;
  } while( true );
}

// ---- FUN_0069bb00  @ 0x69bb00
void FUN_0069bb00(X509V3_EXT_METHOD *param_1,X509V3_CTX *param_2,char *param_3)

{
  int iVar1;
  ASN1_OCTET_STRING *str;
  EVP_MD *type;
  int reason;
  X509_PUBKEY *pXVar2;
  ASN1_BIT_STRING *pAVar3;
  size_t count;
  uchar *data;
  uint local_60;
  uchar auStack_5c [64];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  iVar1 = strcmp(param_3,"hash");
  if (iVar1 != 0) {
    str = s2i_ASN1_OCTET_STRING(param_1,param_2,param_3);
    goto LAB_0069bbc4;
  }
  str = ASN1_STRING_type_new(4);
  if (str == (ASN1_STRING *)0x0) {
    ERR_put_error(0x22,0x73,0x41,"jni/../../openssl-android/crypto/x509v3/v3_skey.c",0x70);
    goto LAB_0069bbc4;
  }
  if (param_2 == (X509V3_CTX *)0x0) {
LAB_0069bb5c:
    iVar1 = 0x77;
LAB_0069bb78:
    reason = 0x72;
LAB_0069bbb8:
    ERR_put_error(0x22,0x73,reason,"jni/../../openssl-android/crypto/x509v3/v3_skey.c",iVar1);
  }
  else {
    if (param_2->flags == 1) goto LAB_0069bbc4;
    if (param_2->subject_req == (X509_REQ *)0x0) {
      if (param_2->subject_cert == (X509 *)0x0) goto LAB_0069bb5c;
      pXVar2 = param_2->subject_cert->cert_info->key;
    }
    else {
      pXVar2 = param_2->subject_req->req_info->pubkey;
    }
    pAVar3 = pXVar2->public_key;
    if (pAVar3 == (ASN1_BIT_STRING *)0x0) {
      iVar1 = 0x80;
      goto LAB_0069bb78;
    }
    data = pAVar3->data;
    count = pAVar3->length;
    type = EVP_sha1();
    iVar1 = EVP_Digest(data,count,auStack_5c,&local_60,type,(ENGINE *)0x0);
    if (iVar1 != 0) {
      iVar1 = ASN1_STRING_set(str,auStack_5c,local_60);
      if (iVar1 != 0) goto LAB_0069bbc4;
      iVar1 = 0x88;
      reason = 0x41;
      goto LAB_0069bbb8;
    }
  }
  ASN1_STRING_free(str);
  str = (ASN1_OCTET_STRING *)0x0;
LAB_0069bbc4:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(str);
  }
  return;
}

// ---- FUN_0069bf7c  @ 0x69bf7c
undefined4 FUN_0069bf7c(undefined1 *param_1,char *param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint local_18;
  int local_14;
  int local_10;
  int local_c;
  
  iVar1 = sscanf(param_2,"%d.%d.%d.%d",&local_18,&local_14,&local_10,&local_c);
  if (((((iVar1 == 4) && (local_18 < 0x100)) && (-1 < local_14)) &&
      ((local_14 < 0x100 && (-1 < local_10)))) &&
     ((local_10 < 0x100 && ((-1 < local_c && (local_c < 0x100)))))) {
    *param_1 = (char)local_18;
    uVar2 = 1;
    param_1[1] = (char)local_14;
    param_1[2] = (char)local_10;
    param_1[3] = (char)local_c;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0069c010  @ 0x69c010
byte * FUN_0069c010(byte *param_1)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  byte *pbVar4;
  size_t sVar5;
  byte *__s;
  
  iVar2 = _ctype_;
  do {
    __s = param_1;
    if (*__s == 0) {
      return (byte *)0x0;
    }
    param_1 = __s + 1;
  } while ((int)((uint)*(byte *)(_ctype_ + (uint)*__s + 1) << 0x1c) < 0);
  sVar5 = strlen((char *)__s);
  pbVar3 = __s + (sVar5 - 1);
  do {
    pbVar4 = pbVar3;
    if (pbVar4 == __s) goto LAB_0069c046;
    bVar1 = *(byte *)(iVar2 + (uint)*pbVar4 + 1);
    pbVar3 = pbVar4 + -1;
  } while ((bVar1 & 8) != 0);
  if (__s != pbVar4) {
    pbVar4[1] = bVar1 & 8;
  }
LAB_0069c046:
  if (*__s == 0) {
    __s = (byte *)0x0;
  }
  return __s;
}

// ---- FUN_0069c7f0  @ 0x69c7f0
undefined4 FUN_0069c7f0(int *param_1,int *param_2)

{
  _STACK *p_Var1;
  int iVar2;
  char *data;
  undefined4 uVar3;
  
  if ((param_2[1] != 0x16) || (param_2[2] == 0)) {
    return 1;
  }
  if (*param_2 == 0) {
    uVar3 = 1;
  }
  else {
    if (*param_1 == 0) {
      p_Var1 = sk_new((cmp *)&DAT_0069c007);
      *param_1 = (int)p_Var1;
    }
    uVar3 = 0;
    if ((_STACK *)*param_1 != (_STACK *)0x0) {
      iVar2 = sk_find((_STACK *)*param_1,(void *)param_2[2]);
      if (iVar2 != -1) {
        return 1;
      }
      data = BUF_strdup((char *)param_2[2]);
      if ((data != (char *)0x0) && (iVar2 = sk_push((_STACK *)*param_1,data), iVar2 != 0)) {
        return 1;
      }
      X509_email_free((stack_st_OPENSSL_STRING *)*param_1);
      *param_1 = 0;
      return 0;
    }
  }
  return uVar3;
}

// ---- FUN_0069c84c  @ 0x69c84c
undefined8 FUN_0069c84c(X509_NAME *param_1,_STACK *param_2,undefined4 param_3)

{
  X509_NAME_ENTRY *ne;
  ASN1_STRING *pAVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  local_1c = 0;
  iVar5 = -1;
  uStack_18 = param_3;
  do {
    iVar5 = X509_NAME_get_index_by_NID(param_1,0x30,iVar5);
    if (iVar5 < 0) {
      iVar5 = 0;
      goto LAB_0069c8a6;
    }
    ne = X509_NAME_get_entry(param_1,iVar5);
    pAVar1 = X509_NAME_ENTRY_get_data(ne);
    iVar3 = FUN_0069c7f0(&local_1c,pAVar1);
    uVar4 = 0;
  } while (iVar3 != 0);
LAB_0069c8b2:
  return CONCAT44(param_1,uVar4);
LAB_0069c8a6:
  iVar3 = sk_num(param_2);
  uVar4 = local_1c;
  if (iVar3 <= iVar5) goto LAB_0069c8b2;
  piVar2 = sk_value(param_2,iVar5);
  if (*piVar2 == 1) {
    iVar3 = FUN_0069c7f0(&local_1c,piVar2[1]);
    uVar4 = 0;
    if (iVar3 == 0) goto LAB_0069c8b2;
  }
  iVar5 = iVar5 + 1;
  goto LAB_0069c8a6;
}

// ---- FUN_0069d1e0  @ 0x69d1e0
undefined8 FUN_0069d1e0(uint param_1,uint param_2,uint param_3,uint param_4)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  int unaff_r10;
  uint *unaff_r11;
  uint *puVar12;
  int iVar13;
  
  param_1 = param_1 ^ *unaff_r11;
  param_2 = param_2 ^ unaff_r11[1];
  param_3 = param_3 ^ unaff_r11[2];
  param_4 = param_4 ^ unaff_r11[3];
  iVar13 = unaff_r11[0x3c] - 1;
  uVar4 = param_1 & 0xff;
  uVar2 = param_1 >> 0x18;
  puVar1 = unaff_r11 + 4;
  do {
    puVar12 = puVar1;
    uVar3 = *(uint *)(unaff_r10 + uVar4 * 4);
    uVar4 = *(uint *)(unaff_r10 + (param_2 >> 0x10 & 0xff) * 4);
    uVar6 = *(uint *)(unaff_r10 + (param_2 & 0xff) * 4);
    uVar9 = *(uint *)(unaff_r10 + (param_2 >> 8 & 0xff) * 4);
    uVar6 = *(uint *)(unaff_r10 + (param_1 >> 8 & 0xff) * 4) ^ (uVar6 >> 8 | uVar6 << 0x18);
    uVar5 = *(uint *)(unaff_r10 + (param_3 >> 8 & 0xff) * 4);
    uVar7 = *(uint *)(unaff_r10 + (param_3 >> 0x10 & 0xff) * 4);
    uVar10 = *(uint *)(unaff_r10 + (param_3 & 0xff) * 4);
    uVar9 = *(uint *)(unaff_r10 + (param_1 >> 0x10 & 0xff) * 4) ^ (uVar9 >> 8 | uVar9 << 0x18) ^
            (uVar10 >> 0x10 | uVar10 << 0x10);
    uVar10 = *(uint *)(unaff_r10 + (param_4 & 0xff) * 4);
    uVar8 = *(uint *)(unaff_r10 + (param_4 >> 8 & 0xff) * 4);
    uVar11 = *(uint *)(unaff_r10 + (param_4 >> 0x10 & 0xff) * 4);
    param_1 = *(uint *)(unaff_r10 + uVar2 * 4) ^ (uVar4 >> 8 | uVar4 << 0x18) ^
              (uVar5 >> 0x10 | uVar5 << 0x10) ^ (uVar10 >> 0x18 | uVar10 << 8) ^ *puVar12;
    uVar4 = param_1 & 0xff;
    param_2 = *(uint *)(unaff_r10 + (param_2 >> 0x18) * 4) ^ (uVar3 >> 0x18 | uVar3 << 8) ^
              (uVar7 >> 8 | uVar7 << 0x18) ^ (uVar8 >> 0x10 | uVar8 << 0x10) ^ puVar12[1];
    param_3 = *(uint *)(unaff_r10 + (param_3 >> 0x18) * 4) ^ (uVar6 >> 0x10 | uVar6 << 0x10) ^
              (uVar11 >> 8 | uVar11 << 0x18) ^ puVar12[2];
    param_4 = *(uint *)(unaff_r10 + (param_4 >> 0x18) * 4) ^ (uVar9 >> 8 | uVar9 << 0x18) ^
              puVar12[3];
    uVar2 = param_1 >> 0x18;
    iVar13 = iVar13 + -1;
    puVar1 = puVar12 + 4;
  } while (iVar13 != 0);
  iVar13 = unaff_r10 + 2;
  return CONCAT44((uint)*(byte *)(iVar13 + uVar4 * 4) ^
                  (uint)*(byte *)(iVar13 + (param_2 >> 0x18) * 4) << 0x18 ^
                  (uint)*(byte *)(iVar13 + (param_3 >> 0x10 & 0xff) * 4) << 0x10 ^
                  (uint)*(byte *)(iVar13 + (param_4 >> 8 & 0xff) * 4) << 8 ^ puVar12[5],
                  CONCAT31(CONCAT21(CONCAT11(*(undefined1 *)(iVar13 + uVar2 * 4),
                                             *(undefined1 *)(iVar13 + (param_2 >> 0x10 & 0xff) * 4))
                                    ,*(undefined1 *)(iVar13 + (param_3 >> 8 & 0xff) * 4)),
                           *(undefined1 *)(iVar13 + (param_4 & 0xff) * 4)) ^ puVar12[4]);
}

// ---- FUN_0069dd00  @ 0x69dd00
undefined8 FUN_0069dd00(uint param_1,uint param_2,uint param_3,uint param_4)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  int unaff_r10;
  uint *unaff_r11;
  uint *puVar12;
  int iVar13;
  
  param_1 = param_1 ^ *unaff_r11;
  param_2 = param_2 ^ unaff_r11[1];
  param_3 = param_3 ^ unaff_r11[2];
  param_4 = param_4 ^ unaff_r11[3];
  iVar13 = unaff_r11[0x3c] - 1;
  uVar6 = param_1 >> 0x10 & 0xff;
  uVar2 = param_1 >> 0x18;
  puVar1 = unaff_r11 + 4;
  do {
    puVar12 = puVar1;
    uVar3 = *(uint *)(unaff_r10 + uVar6 * 4);
    uVar6 = *(uint *)(unaff_r10 + (param_1 >> 8 & 0xff) * 4);
    uVar5 = *(uint *)(unaff_r10 + (param_1 & 0xff) * 4);
    uVar7 = *(uint *)(unaff_r10 + (param_2 & 0xff) * 4);
    uVar4 = *(uint *)(unaff_r10 + (param_2 >> 0x10 & 0xff) * 4) ^ (uVar6 >> 8 | uVar6 << 0x18);
    uVar6 = *(uint *)(unaff_r10 + (param_2 >> 8 & 0xff) * 4) ^ (uVar5 >> 8 | uVar5 << 0x18);
    uVar8 = *(uint *)(unaff_r10 + (param_3 >> 8 & 0xff) * 4);
    uVar9 = *(uint *)(unaff_r10 + (param_3 & 0xff) * 4);
    uVar5 = *(uint *)(unaff_r10 + (param_3 >> 0x10 & 0xff) * 4) ^ (uVar6 >> 8 | uVar6 << 0x18);
    uVar6 = *(uint *)(unaff_r10 + (param_4 >> 0x10 & 0xff) * 4);
    uVar10 = *(uint *)(unaff_r10 + (param_4 >> 8 & 0xff) * 4);
    uVar11 = *(uint *)(unaff_r10 + (param_4 & 0xff) * 4);
    param_1 = *(uint *)(unaff_r10 + uVar2 * 4) ^ (uVar7 >> 0x18 | uVar7 << 8) ^
              (uVar8 >> 0x10 | uVar8 << 0x10) ^ (uVar6 >> 8 | uVar6 << 0x18) ^ *puVar12;
    uVar6 = param_1 >> 0x10 & 0xff;
    param_2 = *(uint *)(unaff_r10 + (param_2 >> 0x18) * 4) ^ (uVar3 >> 8 | uVar3 << 0x18) ^
              (uVar9 >> 0x18 | uVar9 << 8) ^ (uVar10 >> 0x10 | uVar10 << 0x10) ^ puVar12[1];
    param_3 = *(uint *)(unaff_r10 + (param_3 >> 0x18) * 4) ^ (uVar4 >> 8 | uVar4 << 0x18) ^
              (uVar11 >> 0x18 | uVar11 << 8) ^ puVar12[2];
    param_4 = *(uint *)(unaff_r10 + (param_4 >> 0x18) * 4) ^ (uVar5 >> 8 | uVar5 << 0x18) ^
              puVar12[3];
    uVar2 = param_1 >> 0x18;
    iVar13 = iVar13 + -1;
    puVar1 = puVar12 + 4;
  } while (iVar13 != 0);
  iVar13 = unaff_r10 + 0x400;
  return CONCAT44((uint)*(byte *)(iVar13 + (param_3 & 0xff)) ^
                  (uint)CONCAT11(*(undefined1 *)(iVar13 + (param_2 >> 0x18)),
                                 *(undefined1 *)(iVar13 + uVar6)) << 0x10 ^
                  (uint)*(byte *)(iVar13 + (param_4 >> 8 & 0xff)) << 8 ^ puVar12[5],
                  (uint)*(byte *)(iVar13 + (param_2 & 0xff)) ^
                  (uint)*(byte *)(iVar13 + uVar2) << 0x18 ^
                  (uint)*(byte *)(iVar13 + (param_3 >> 8 & 0xff)) << 8 ^
                  (uint)*(byte *)(iVar13 + (param_4 >> 0x10 & 0xff)) << 0x10 ^ puVar12[4]);
}
