// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 36 functions

// ---- FUN_0067006c  @ 0x67006c
undefined4 FUN_0067006c(int param_1,uchar *param_2,uchar *param_3,size_t param_4)

{
  RC4(*(RC4_KEY **)(param_1 + 0x60),param_4,param_3,param_2);
  return 1;
}

// ---- FUN_006700b0  @ 0x6700b0
void FUN_006700b0(int param_1,int param_2,size_t param_3,void *param_4)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  MD5_CTX *c;
  byte local_64 [64];
  int local_24;
  
  iVar4 = *(int *)(param_1 + 0x60);
  local_24 = __stack_chk_guard;
  if (param_2 == 0x16) {
    uVar2 = (uint)CONCAT11(*(undefined1 *)((int)param_4 + (param_3 - 2)),
                           *(undefined1 *)((int)param_4 + (param_3 - 1)));
    if (*(int *)(param_1 + 8) == 0) {
      uVar2 = uVar2 - 0x10;
      *(char *)((int)param_4 + (param_3 - 2)) = (char)(uVar2 >> 8);
      *(char *)((int)param_4 + (param_3 - 1)) = (char)uVar2;
    }
    *(uint *)(iVar4 + 0x218) = uVar2;
    memcpy((MD5_CTX *)(iVar4 + 0x1bc),(void *)(iVar4 + 0x104),0x5c);
    MD5_Update((MD5_CTX *)(iVar4 + 0x1bc),param_4,param_3);
    uVar1 = 0x10;
  }
  else if (param_2 == 0x17) {
    memset(local_64,0,0x40);
    if ((int)param_3 < 0x41) {
      memcpy(local_64,param_4,param_3);
    }
    else {
      c = (MD5_CTX *)(iVar4 + 0x104);
      MD5_Init(c);
      MD5_Update(c,param_4,param_3);
      MD5_Final(local_64,c);
    }
    iVar3 = 0;
    do {
      local_64[iVar3] = local_64[iVar3] ^ 0x36;
      iVar3 = iVar3 + 1;
    } while (iVar3 != 0x40);
    MD5_Init((MD5_CTX *)(iVar4 + 0x104));
    MD5_Update((MD5_CTX *)(iVar4 + 0x104),local_64,0x40);
    iVar3 = 0;
    do {
      local_64[iVar3] = local_64[iVar3] ^ 0x6a;
      iVar3 = iVar3 + 1;
    } while (iVar3 != 0x40);
    MD5_Init((MD5_CTX *)(iVar4 + 0x160));
    MD5_Update((MD5_CTX *)(iVar4 + 0x160),local_64,0x40);
    uVar1 = 1;
  }
  else {
    uVar1 = 0xffffffff;
  }
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar1);
}

// ---- FUN_006703aa  @ 0x6703aa
undefined4 FUN_006703aa(int param_1,const_DES_cblock *param_2)

{
  DES_set_key_unchecked(param_2,*(DES_key_schedule **)(param_1 + 0x60));
  memcpy((void *)(*(int *)(param_1 + 0x60) + 0x80),param_2 + 1,8);
  memcpy((void *)(*(int *)(param_1 + 0x60) + 0x88),param_2 + 2,8);
  return 1;
}

// ---- FUN_00671cf4  @ 0x671cf4
bool FUN_00671cf4(EVP_MD_CTX *param_1,undefined4 *param_2,EVP_MD *param_3,ENGINE *param_4,
                 EVP_PKEY *param_5,int param_6)

{
  EVP_PKEY_CTX *pEVar1;
  int iVar2;
  char *name;
  undefined4 uVar3;
  code *pcVar4;
  bool bVar5;
  int local_24 [2];
  
  if (param_1->pctx == (EVP_PKEY_CTX *)0x0) {
    pEVar1 = EVP_PKEY_CTX_new(param_5,param_4);
    param_1->pctx = pEVar1;
  }
  if (param_1->pctx == (EVP_PKEY_CTX *)0x0) {
    return false;
  }
  if (param_3 == (EVP_MD *)0x0) {
    iVar2 = EVP_PKEY_get_default_digest_nid(param_5,local_24);
    if (0 < iVar2) {
      name = OBJ_nid2sn(local_24[0]);
      param_3 = EVP_get_digestbyname(name);
      if (param_3 != (EVP_MD *)0x0) goto LAB_00671d4e;
    }
    ERR_put_error(6,0xa1,0x9e,"jni/../../openssl-android/crypto/evp/m_sigver.c",0x54);
LAB_00671dce:
    bVar5 = false;
  }
  else {
LAB_00671d4e:
    pEVar1 = param_1->pctx;
    if (param_6 == 0) {
      pcVar4 = *(code **)(*(int *)pEVar1 + 0x3c);
      if (pcVar4 == (code *)0x0) {
        iVar2 = EVP_PKEY_sign_init(pEVar1);
        goto LAB_00671d8e;
      }
      iVar2 = (*pcVar4)(pEVar1,param_1);
      if (iVar2 < 1) {
        return false;
      }
      pEVar1 = param_1->pctx;
      uVar3 = 0x40;
LAB_00671d86:
      *(undefined4 *)(pEVar1 + 0x10) = uVar3;
    }
    else {
      pcVar4 = *(code **)(*(int *)pEVar1 + 0x44);
      if (pcVar4 != (code *)0x0) {
        iVar2 = (*pcVar4)(pEVar1,param_1);
        if (0 < iVar2) {
          pEVar1 = param_1->pctx;
          uVar3 = 0x80;
          goto LAB_00671d86;
        }
        goto LAB_00671dce;
      }
      iVar2 = EVP_PKEY_verify_init(pEVar1);
LAB_00671d8e:
      if (iVar2 < 1) {
        return false;
      }
    }
    bVar5 = false;
    iVar2 = EVP_PKEY_CTX_ctrl(param_1->pctx,-1,0xf8,1,0,param_3);
    if (0 < iVar2) {
      if (param_2 != (undefined4 *)0x0) {
        *param_2 = param_1->pctx;
      }
      iVar2 = EVP_DigestInit_ex(param_1,param_3,param_4);
      bVar5 = iVar2 != 0;
    }
  }
  return bVar5;
}

// ---- FUN_00673d68  @ 0x673d68
void FUN_00673d68(void)

{
  CRYPTO_lock(9,2,"jni/../../openssl-android/crypto/ex_data.c",0xcb);
  if (DAT_009680c8 == (undefined **)0x0) {
    DAT_009680c8 = &PTR_LAB_00673da8_1_00949770;
  }
  CRYPTO_lock(10,2,"jni/../../openssl-android/crypto/ex_data.c",0xce);
  return;
}

// ---- FUN_00673de4  @ 0x673de4
bool FUN_00673de4(void)

{
  bool bVar1;
  
  bVar1 = true;
  CRYPTO_lock(9,2,"jni/../../openssl-android/crypto/ex_data.c",0x10e);
  if (DAT_009680cc == (_LHASH *)0x0) {
    DAT_009680cc = lh_new((LHASH_HASH_FN_TYPE)&LAB_00673d5c_1,(LHASH_COMP_FN_TYPE)&LAB_00673d60_1);
    bVar1 = DAT_009680cc != (_LHASH *)0x0;
  }
  CRYPTO_lock(10,2,"jni/../../openssl-android/crypto/ex_data.c",0x112);
  return bVar1;
}

// ---- FUN_00673e40  @ 0x673e40
undefined4 * FUN_00673e40(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *data;
  _STACK *p_Var3;
  undefined4 local_24 [4];
  
  if ((DAT_009680cc != (_LHASH *)0x0) ||
     (iVar1 = FUN_00673de4(), puVar2 = (undefined4 *)0x0, iVar1 != 0)) {
    local_24[0] = param_1;
    CRYPTO_lock(9,2,"jni/../../openssl-android/crypto/ex_data.c",0x130);
    puVar2 = lh_retrieve(DAT_009680cc,local_24);
    if ((puVar2 == (undefined4 *)0x0) &&
       (data = CRYPTO_malloc(0xc,"jni/../../openssl-android/crypto/ex_data.c",0x134),
       data != (undefined4 *)0x0)) {
      *data = param_1;
      data[2] = 0;
      p_Var3 = sk_new_null();
      data[1] = p_Var3;
      if (p_Var3 == (_STACK *)0x0) {
        CRYPTO_free(data);
      }
      else {
        lh_insert(DAT_009680cc,data);
        puVar2 = data;
      }
    }
    CRYPTO_lock(10,2,"jni/../../openssl-android/crypto/ex_data.c",0x145);
    if (puVar2 == (undefined4 *)0x0) {
      ERR_put_error(0xf,0x69,0x41,"jni/../../openssl-android/crypto/ex_data.c",0x147);
    }
  }
  return puVar2;
}

// ---- FUN_00673eec  @ 0x673eec
undefined8
FUN_00673eec(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  undefined4 *ptr;
  int iVar2;
  int iVar3;
  
  iVar1 = FUN_00673e40();
  if (iVar1 != 0) {
    ptr = CRYPTO_malloc(0x14,"jni/../../openssl-android/crypto/ex_data.c",0x153);
    if (ptr != (undefined4 *)0x0) {
      *ptr = param_2;
      ptr[1] = param_3;
      ptr[4] = param_5;
      ptr[2] = param_4;
      ptr[3] = param_6;
      CRYPTO_lock(9,2,"jni/../../openssl-android/crypto/ex_data.c",0x15e);
      do {
        iVar2 = sk_num(*(_STACK **)(iVar1 + 4));
        iVar3 = *(int *)(iVar1 + 8);
        if (iVar3 < iVar2) {
          *(int *)(iVar1 + 8) = iVar3 + 1;
          sk_set(*(_STACK **)(iVar1 + 4),iVar3,ptr);
          goto LAB_00673f8e;
        }
        iVar2 = sk_push(*(_STACK **)(iVar1 + 4),(void *)0x0);
      } while (iVar2 != 0);
      param_1 = 0x163;
      iVar3 = -1;
      ERR_put_error(0xf,0x68,0x41,"jni/../../openssl-android/crypto/ex_data.c",0x163);
      CRYPTO_free(ptr);
LAB_00673f8e:
      CRYPTO_lock(10,2,"jni/../../openssl-android/crypto/ex_data.c",0x16b);
      goto LAB_00673fa4;
    }
    param_1 = 0x156;
    ERR_put_error(0xf,0x68,0x41,"jni/../../openssl-android/crypto/ex_data.c",0x156);
  }
  iVar3 = -1;
LAB_00673fa4:
  return CONCAT44(param_1,iVar3);
}

// ---- FUN_00673ff0  @ 0x673ff0
void FUN_00673ff0(void *param_1)

{
  sk_pop_free(*(_STACK **)((int)param_1 + 4),(func *)0x673de1);
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_00674214  @ 0x674214
void FUN_00674214(undefined4 param_1,undefined4 param_2,CRYPTO_EX_DATA *param_3)

{
  int iVar1;
  int iVar2;
  int *ptr;
  void *pvVar3;
  undefined4 *puVar4;
  int iVar5;
  int *piVar6;
  
  iVar1 = FUN_00673e40();
  if (iVar1 != 0) {
    CRYPTO_lock(5,2,"jni/../../openssl-android/crypto/ex_data.c",500);
    iVar2 = sk_num(*(_STACK **)(iVar1 + 4));
    if (iVar2 < 1) {
      ptr = (int *)0x0;
    }
    else {
      ptr = CRYPTO_malloc(iVar2 << 2,"jni/../../openssl-android/crypto/ex_data.c",0x1f8);
      if (ptr != (int *)0x0) {
        iVar5 = 0;
        piVar6 = ptr;
        do {
          pvVar3 = sk_value(*(_STACK **)(iVar1 + 4),iVar5);
          iVar5 = iVar5 + 1;
          *piVar6 = (int)pvVar3;
          piVar6 = piVar6 + 1;
        } while (iVar5 != iVar2);
      }
    }
    CRYPTO_lock(6,2,"jni/../../openssl-android/crypto/ex_data.c",0x1ff);
    if (ptr == (int *)0x0 && 0 < iVar2) {
      ERR_put_error(0xf,0x6b,0x41,"jni/../../openssl-android/crypto/ex_data.c",0x202);
    }
    else {
      piVar6 = ptr;
      for (iVar1 = 0; iVar1 < iVar2; iVar1 = iVar1 + 1) {
        if ((*piVar6 != 0) && (*(int *)(*piVar6 + 0xc) != 0)) {
          pvVar3 = CRYPTO_get_ex_data(param_3,iVar1);
          puVar4 = (undefined4 *)*piVar6;
          (*(code *)puVar4[3])(param_2,pvVar3,param_3,iVar1,*puVar4,puVar4[1]);
        }
        piVar6 = piVar6 + 1;
      }
      if (ptr != (int *)0x0) {
        CRYPTO_free(ptr);
      }
      if (&param_3->sk->stack != (_STACK *)0x0) {
        sk_free(&param_3->sk->stack);
        param_3->sk = (stack_st_void *)0x0;
      }
    }
  }
  return;
}

// ---- FUN_00674300  @ 0x674300
undefined4
FUN_00674300(undefined4 param_1,CRYPTO_EX_DATA *param_2,CRYPTO_EX_DATA *param_3,void *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 *ptr;
  void *pvVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  void *local_24;
  
  if (param_3->sk != (stack_st_void *)0x0) {
    local_24 = param_4;
    iVar1 = FUN_00673e40();
    if (iVar1 == 0) {
      return 0;
    }
    CRYPTO_lock(5,2,"jni/../../openssl-android/crypto/ex_data.c",0x1c9);
    iVar2 = sk_num(*(_STACK **)(iVar1 + 4));
    iVar3 = sk_num(&param_3->sk->stack);
    if (iVar3 < iVar2) {
      iVar2 = iVar3;
    }
    if (iVar2 < 1) {
      ptr = (undefined4 *)0x0;
    }
    else {
      ptr = CRYPTO_malloc(iVar2 << 2,"jni/../../openssl-android/crypto/ex_data.c",0x1d0);
      if (ptr != (undefined4 *)0x0) {
        iVar3 = 0;
        puVar6 = ptr;
        do {
          pvVar4 = sk_value(*(_STACK **)(iVar1 + 4),iVar3);
          iVar3 = iVar3 + 1;
          *puVar6 = pvVar4;
          puVar6 = puVar6 + 1;
        } while (iVar3 != iVar2);
      }
    }
    CRYPTO_lock(6,2,"jni/../../openssl-android/crypto/ex_data.c",0x1d7);
    if (ptr == (undefined4 *)0x0 && 0 < iVar2) {
      ERR_put_error(0xf,0x6a,0x41,"jni/../../openssl-android/crypto/ex_data.c",0x1da);
      return 0;
    }
    puVar6 = ptr;
    for (iVar1 = 0; iVar1 < iVar2; iVar1 = iVar1 + 1) {
      local_24 = CRYPTO_get_ex_data(param_3,iVar1);
      puVar5 = (undefined4 *)*puVar6;
      if ((puVar5 != (undefined4 *)0x0) && ((code *)puVar5[4] != (code *)0x0)) {
        (*(code *)puVar5[4])(param_2,param_3,&local_24,iVar1,*puVar5,puVar5[1]);
      }
      CRYPTO_set_ex_data(param_2,iVar1,local_24);
      puVar6 = puVar6 + 1;
    }
    if (ptr != (undefined4 *)0x0) {
      CRYPTO_free(ptr);
    }
  }
  return 1;
}

// ---- FUN_00674408  @ 0x674408
undefined4 FUN_00674408(undefined4 param_1,undefined4 param_2,CRYPTO_EX_DATA *param_3)

{
  int iVar1;
  int iVar2;
  void *pvVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int *ptr;
  int iVar6;
  int *piVar7;
  
  iVar1 = FUN_00673e40();
  uVar4 = 0;
  if (iVar1 != 0) {
    iVar6 = 0;
    param_3->sk = (stack_st_void *)0x0;
    CRYPTO_lock(5,2,"jni/../../openssl-android/crypto/ex_data.c",0x19d);
    iVar2 = sk_num(*(_STACK **)(iVar1 + 4));
    if (iVar2 < 1) {
      ptr = (int *)0x0;
    }
    else {
      ptr = CRYPTO_malloc(iVar2 << 2,"jni/../../openssl-android/crypto/ex_data.c",0x1a1);
      piVar7 = ptr;
      if (ptr != (int *)0x0) {
        do {
          pvVar3 = sk_value(*(_STACK **)(iVar1 + 4),iVar6);
          iVar6 = iVar6 + 1;
          *piVar7 = (int)pvVar3;
          piVar7 = piVar7 + 1;
        } while (iVar6 != iVar2);
      }
    }
    CRYPTO_lock(6,2,"jni/../../openssl-android/crypto/ex_data.c",0x1a8);
    if (ptr == (int *)0x0 && 0 < iVar2) {
      ERR_put_error(0xf,0x6c,0x41,"jni/../../openssl-android/crypto/ex_data.c",0x1ab);
      uVar4 = 0;
    }
    else {
      piVar7 = ptr;
      for (iVar1 = 0; iVar1 < iVar2; iVar1 = iVar1 + 1) {
        if ((*piVar7 != 0) && (*(int *)(*piVar7 + 8) != 0)) {
          pvVar3 = CRYPTO_get_ex_data(param_3,iVar1);
          puVar5 = (undefined4 *)*piVar7;
          (*(code *)puVar5[2])(param_2,pvVar3,param_3,iVar1,*puVar5,puVar5[1]);
        }
        piVar7 = piVar7 + 1;
      }
      if (ptr != (int *)0x0) {
        CRYPTO_free(ptr);
      }
      uVar4 = 1;
    }
  }
  return uVar4;
}

// ---- FUN_00674504  @ 0x674504
size_t FUN_00674504(int param_1,int *param_2)

{
  void *pvVar1;
  size_t *psVar2;
  int iVar3;
  
  psVar2 = *(size_t **)(param_1 + 0x14);
  if (param_2 != (int *)0x0) {
    iVar3 = *param_2;
    if (iVar3 == 0) {
      pvVar1 = CRYPTO_malloc(*psVar2,"jni/../../openssl-android/crypto/hmac/hm_ameth.c",0x7d);
      *param_2 = (int)pvVar1;
    }
    memcpy((void *)*param_2,(void *)psVar2[2],*psVar2);
    if (iVar3 != 0) {
      *param_2 = *param_2 + *psVar2;
    }
  }
  return *psVar2;
}

// ---- FUN_00674624  @ 0x674624
undefined4 FUN_00674624(int param_1,EVP_MD_CTX *param_2)

{
  HMAC_CTX_set_flags((HMAC_CTX *)(*(int *)(param_1 + 0x14) + 0x14),param_2->flags & 0xfffffeff);
  EVP_MD_CTX_set_flags(param_2,0x100);
  param_2->update = (_func_1230 *)&LAB_00674650_1;
  return 1;
}

// ---- FUN_00674664  @ 0x674664
undefined4 FUN_00674664(int param_1,EVP_PKEY *param_2)

{
  ASN1_STRING *key;
  
  if ((*(int *)(*(int *)(param_1 + 0x14) + 0xc) != 0) &&
     (key = ASN1_OCTET_STRING_dup((ASN1_STRING *)(*(int *)(param_1 + 0x14) + 4)),
     key != (ASN1_STRING *)0x0)) {
    EVP_PKEY_assign(param_2,0x357,key);
    return 1;
  }
  return 0;
}

// ---- FUN_00675010  @ 0x675010
void FUN_00675010(int *param_1,int param_2,code *param_3,code *param_4,undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  
  if (param_1 != (int *)0x0) {
    iVar3 = param_1[3];
    iVar4 = (iVar3 + 0x3fffffff) * 4;
    while (iVar3 = iVar3 + -1, -1 < iVar3) {
      puVar2 = *(undefined4 **)(*param_1 + iVar4);
      while (puVar2 != (undefined4 *)0x0) {
        uVar1 = *puVar2;
        puVar2 = (undefined4 *)puVar2[1];
        if (param_2 == 0) {
          (*param_3)(uVar1);
        }
        else {
          (*param_4)(uVar1,param_5);
        }
      }
      iVar4 = iVar4 + -4;
    }
  }
  return;
}

// ---- FUN_0067505c  @ 0x67505c
undefined4 * FUN_0067505c(int *param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  int iVar2;
  uint extraout_r1;
  uint extraout_r1_00;
  uint uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  code *pcVar6;
  
  iVar1 = (*(code *)param_1[2])(param_2);
  param_1[0xe] = param_1[0xe] + 1;
  *param_3 = iVar1;
  __aeabi_uidivmod(iVar1,param_1[6]);
  uVar3 = extraout_r1;
  if (extraout_r1 < (uint)param_1[5]) {
    __aeabi_uidivmod(iVar1,param_1[4]);
    uVar3 = extraout_r1_00;
  }
  pcVar6 = (code *)param_1[1];
  puVar5 = (undefined4 *)(*param_1 + uVar3 * 4);
  puVar4 = *(undefined4 **)(*param_1 + uVar3 * 4);
  do {
    if (puVar4 == (undefined4 *)0x0) {
      return puVar5;
    }
    param_1[0x16] = param_1[0x16] + 1;
    if (puVar4[2] == iVar1) {
      param_1[0xf] = param_1[0xf] + 1;
      iVar2 = (*pcVar6)(*puVar4,param_2);
      if (iVar2 == 0) {
        return puVar5;
      }
    }
    puVar5 = puVar4 + 1;
    puVar4 = (undefined4 *)puVar4[1];
  } while( true );
}

// ---- FUN_006767e4  @ 0x6767e4
void FUN_006767e4(void)

{
  (*DAT_0094979c)();
  return;
}

// ---- FUN_006767f4  @ 0x6767f4
void FUN_006767f4(void)

{
  (*DAT_009497a0)();
  return;
}

// ---- FUN_00676804  @ 0x676804
void FUN_00676804(void)

{
  (*DAT_009497a4)();
  return;
}

// ---- FUN_00676e66  @ 0x676e66
void FUN_00676e66(undefined4 *param_1,undefined4 *param_2)

{
  (*(code *)*param_2)(param_1[6],param_1[2],param_1[3],param_1[1],*param_1,param_2);
  return;
}

// ---- FUN_00676e7c  @ 0x676e7c
int FUN_00676e7c(CRYPTO_THREADID *param_1)

{
  ulong uVar1;
  
  uVar1 = CRYPTO_THREADID_hash(param_1);
  return uVar1 * 0x45bb + (uVar1 >> 0xe) * 7 + (uVar1 >> 4) * 0xfb;
}

// ---- FUN_00676e9c  @ 0x676e9c
void FUN_00676e9c(int *param_1,int *param_2)

{
  tm *ptVar1;
  size_t sVar2;
  ulong uVar3;
  size_t sVar4;
  size_t sVar5;
  int iVar6;
  int iVar7;
  CRYPTO_THREADID *src;
  char *pcVar8;
  char *__s;
  CRYPTO_THREADID CStack_434;
  char acStack_42c [1024];
  int local_2c [2];
  
  local_2c[0] = __stack_chk_guard;
  if (*param_1 != *param_2) {
    pcVar8 = acStack_42c;
    if ((DAT_00968148 & 1) != 0) {
      ptVar1 = localtime(param_1 + 7);
      BIO_snprintf(acStack_42c,0x400,"[%02d:%02d:%02d] ",ptVar1->tm_hour,ptVar1->tm_min,
                   ptVar1->tm_sec);
      sVar2 = strlen(acStack_42c);
      pcVar8 = acStack_42c + sVar2;
    }
    iVar6 = param_1[2];
    iVar7 = param_1[3];
    BIO_snprintf(pcVar8,(int)local_2c - (int)pcVar8,"%5lu file=%s, line=%d, ",param_1[6],iVar6,iVar7
                );
    sVar2 = strlen(pcVar8);
    pcVar8 = pcVar8 + sVar2;
    if ((int)(DAT_00968148 << 0x1e) < 0) {
      uVar3 = CRYPTO_THREADID_hash((CRYPTO_THREADID *)(param_1 + 4));
      BIO_snprintf(pcVar8,(int)local_2c - (int)pcVar8,"thread=%lu, ",uVar3,iVar6,iVar7);
      sVar2 = strlen(pcVar8);
      pcVar8 = pcVar8 + sVar2;
    }
    BIO_snprintf(pcVar8,(int)local_2c - (int)pcVar8,"number=%d, address=%08lX\n",param_1[1],*param_1
                 ,iVar7);
    BIO_puts((BIO *)*param_2,acStack_42c);
    param_2[1] = param_2[1] + 1;
    param_2[2] = param_2[2] + param_1[1];
    src = (CRYPTO_THREADID *)param_1[8];
    if (src != (CRYPTO_THREADID *)0x0) {
      CRYPTO_THREADID_cpy(&CStack_434,src);
      sVar2 = 0;
      do {
        sVar2 = sVar2 + 1;
        memset(acStack_42c,0x3e,sVar2);
        uVar3 = CRYPTO_THREADID_hash(src);
        BIO_snprintf(acStack_42c + sVar2,0x400 - sVar2," thread=%lu, file=%s, line=%d, info=\"",
                     uVar3,src[1].ptr,src[1].val);
        sVar4 = strlen(acStack_42c);
        __s = src[2].ptr;
        sVar5 = strlen(__s);
        pcVar8 = acStack_42c + sVar4;
        if ((int)(0x7d - sVar4) < (int)sVar5) {
          memcpy(pcVar8,__s,0x7d - sVar4);
          sVar4 = 0x7d;
        }
        else {
          BUF_strlcpy(pcVar8,__s,0x400 - sVar4);
          sVar4 = strlen(acStack_42c);
        }
        BIO_snprintf(acStack_42c + sVar4,0x400 - sVar4,"\"\n");
        BIO_puts((BIO *)*param_2,acStack_42c);
        src = (CRYPTO_THREADID *)src[2].val;
      } while ((src != (CRYPTO_THREADID *)0x0) &&
              (iVar6 = CRYPTO_THREADID_cmp(src,&CStack_434), iVar6 == 0));
    }
  }
  if (local_2c[0] != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00677068  @ 0x677068
void FUN_00677068(void *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)((int)param_1 + 0x18) + -1;
  *(int *)((int)param_1 + 0x18) = iVar1;
  if (iVar1 < 1) {
    if (*(int *)((int)param_1 + 0x14) != 0) {
      FUN_00677068();
    }
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_0067708c  @ 0x67708c
void * FUN_0067708c(void)

{
  _LHASH *lh;
  void *ptr;
  int iVar1;
  void *data;
  CRYPTO_THREADID aCStack_2c [3];
  
  ptr = (void *)0x0;
  if (DAT_0096814c != (_LHASH *)0x0) {
    CRYPTO_THREADID_current(aCStack_2c);
    ptr = lh_delete(DAT_0096814c,aCStack_2c);
    lh = DAT_0096814c;
    if (ptr != (void *)0x0) {
      data = *(void **)((int)ptr + 0x14);
      if (data != (void *)0x0) {
        *(int *)((int)data + 0x18) = *(int *)((int)data + 0x18) + 1;
        lh_insert(lh,data);
      }
      iVar1 = *(int *)((int)ptr + 0x18) + -1;
      *(int *)((int)ptr + 0x18) = iVar1;
      if (iVar1 < 1) {
        *(undefined4 *)((int)ptr + 0x14) = 0;
        if (data != (void *)0x0) {
          *(int *)((int)data + 0x18) = *(int *)((int)data + 0x18) + -1;
        }
        CRYPTO_free(ptr);
      }
    }
  }
  return ptr;
}

// ---- FUN_006778ec  @ 0x6778ec
void FUN_006778ec(int param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  uVar1 = 0;
  iVar3 = 8;
  do {
    iVar3 = iVar3 + -1;
    uVar2 = uVar1 + (param_2 & 0xff) + (uint)*(byte *)(param_1 + 0xf);
    *(char *)(param_1 + 0xf) = (char)uVar2;
    if (iVar3 == 0) {
      return;
    }
    uVar1 = uVar2 >> 8;
    param_1 = param_1 + -1;
    uVar2 = uVar2 | param_2;
    param_2 = param_2 >> 8;
  } while (uVar2 >> 8 != 0);
  return;
}

// ---- FUN_00678098  @ 0x678098
void FUN_00678098(int param_1,int param_2,uint param_3,undefined4 param_4,void *param_5,int param_6,
                 code *param_7)

{
  byte bVar1;
  byte bVar2;
  int iVar3;
  byte *pbVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  char acStack_50 [15];
  byte bStack_41;
  byte local_40 [20];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  memcpy(acStack_50,param_5,0x10);
  (*param_7)(param_5,param_5,param_4);
  pbVar4 = &bStack_41;
  iVar3 = param_3 + 0xe;
  if (-1 < (int)(param_3 + 7)) {
    iVar3 = param_3 + 7;
  }
  iVar5 = 0;
  if (param_6 == 0) {
    for (iVar5 = 0; iVar5 < iVar3 >> 3; iVar5 = iVar5 + 1) {
      bVar2 = *(byte *)(param_1 + iVar5);
      bVar1 = *(byte *)((int)param_5 + iVar5);
      pbVar4 = pbVar4 + 1;
      *pbVar4 = bVar2;
      *(byte *)(param_2 + iVar5) = bVar2 ^ bVar1;
    }
  }
  else {
    for (; iVar5 < iVar3 >> 3; iVar5 = iVar5 + 1) {
      bVar2 = *(byte *)((int)param_5 + iVar5) ^ *(byte *)(param_1 + iVar5);
      *(byte *)(param_2 + iVar5) = bVar2;
      pbVar4 = pbVar4 + 1;
      *pbVar4 = bVar2;
    }
  }
  uVar6 = param_3 & 0x80000007;
  if ((int)uVar6 < 0) {
    uVar6 = (uVar6 - 1 | 0xfffffff8) + 1;
  }
  uVar7 = param_3 & ~((int)param_3 >> 0x20);
  if ((int)param_3 < 0) {
    uVar7 = param_3 + 7;
  }
  if (uVar6 == 0) {
    memcpy(param_5,acStack_50 + ((int)uVar7 >> 3),0x10);
  }
  else {
    iVar5 = 0;
    iVar3 = ((int)uVar7 >> 3) + -0x50;
    do {
      *(byte *)((int)param_5 + iVar5) =
           acStack_50[iVar5 + iVar3 + 0x50] << (uVar6 & 0xff) |
           (byte)((int)(uint)(byte)acStack_50[iVar5 + iVar3 + 0x51] >> (8 - uVar6 & 0xff));
      iVar5 = iVar5 + 1;
    } while (iVar5 != 0x10);
  }
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- FUN_00678400  @ 0x678400
void FUN_00678400(int param_1)

{
  char cVar1;
  int iVar2;
  
  iVar2 = 0x10;
  do {
    iVar2 = iVar2 + -1;
    cVar1 = *(char *)(param_1 + iVar2) + '\x01';
    *(char *)(param_1 + iVar2) = cVar1;
    if (cVar1 != '\0') {
      return;
    }
  } while (iVar2 != 0);
  return;
}

// ---- FUN_00678658  @ 0x678658
void FUN_00678658(undefined1 *param_1,int param_2)

{
  byte bVar1;
  uint uVar2;
  uint *puVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  bool bVar8;
  uint local_70;
  uint local_6c;
  
  bVar1 = param_1[0xf];
  iVar4 = 0xf;
  puVar3 = (uint *)(param_2 + (bVar1 & 0xf) * 0x10);
  local_70 = *puVar3;
  local_6c = puVar3[1];
  uVar5 = puVar3[2];
  uVar6 = puVar3[3];
  while( true ) {
    puVar3 = (uint *)(param_2 + (uint)(bVar1 >> 4) * 0x10);
    uVar2 = *puVar3 ^ (local_70 >> 4 | local_6c << 0x1c);
    uVar7 = puVar3[1] ^ local_6c >> 4 ^ *(uint *)(&DAT_00842088 + (uVar5 & 0xf) * 4);
    bVar8 = iVar4 == 0;
    iVar4 = iVar4 + -1;
    uVar5 = (uVar5 >> 4 | uVar6 << 0x1c) ^ puVar3[2];
    uVar6 = (uVar6 >> 4 | local_70 << 0x1c) ^ puVar3[3];
    if (bVar8) break;
    bVar1 = param_1[iVar4];
    puVar3 = (uint *)(param_2 + (bVar1 & 0xf) * 0x10);
    local_70 = *puVar3 ^ (uVar2 >> 4 | uVar7 << 0x1c);
    local_6c = puVar3[1] ^ uVar7 >> 4 ^ *(uint *)(&DAT_00842088 + (uVar5 & 0xf) * 4);
    uVar5 = (uVar5 >> 4 | uVar6 << 0x1c) ^ puVar3[2];
    uVar6 = (uVar2 << 0x1c | uVar6 >> 4) ^ puVar3[3];
  }
  param_1[3] = (char)uVar7;
  *param_1 = (char)(uVar7 >> 0x18);
  param_1[1] = (char)(uVar7 >> 0x10);
  param_1[4] = (char)(uVar2 >> 0x18);
  param_1[5] = (char)(uVar2 >> 0x10);
  param_1[6] = (char)(uVar2 >> 8);
  param_1[2] = (char)(uVar7 >> 8);
  param_1[7] = (char)uVar2;
  param_1[8] = (char)(uVar6 >> 0x18);
  param_1[0xb] = (char)uVar6;
  param_1[9] = (char)(uVar6 >> 0x10);
  param_1[0xf] = (char)uVar5;
  param_1[10] = (char)(uVar6 >> 8);
  param_1[0xc] = (char)(uVar5 >> 0x18);
  param_1[0xd] = (char)(uVar5 >> 0x10);
  param_1[0xe] = (char)(uVar5 >> 8);
  return;
}

// ---- FUN_006787dc  @ 0x6787dc
void FUN_006787dc(undefined1 *param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  uint uVar2;
  uint *puVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  bool bVar8;
  uint local_70;
  uint local_6c;
  
  do {
    iVar5 = 0xf;
    bVar1 = *(byte *)(param_3 + 0xf) ^ param_1[0xf];
    puVar3 = (uint *)(param_2 + (bVar1 & 0xf) * 0x10);
    local_70 = *puVar3;
    local_6c = puVar3[1];
    uVar6 = puVar3[2];
    uVar7 = puVar3[3];
    while( true ) {
      puVar3 = (uint *)(param_2 + (uint)(bVar1 >> 4) * 0x10);
      uVar2 = *puVar3 ^ (local_70 >> 4 | local_6c << 0x1c);
      uVar4 = puVar3[1] ^ local_6c >> 4 ^ *(uint *)(&DAT_00842088 + (uVar6 & 0xf) * 4);
      bVar8 = iVar5 == 0;
      iVar5 = iVar5 + -1;
      uVar6 = (uVar6 >> 4 | uVar7 << 0x1c) ^ puVar3[2];
      uVar7 = (uVar7 >> 4 | local_70 << 0x1c) ^ puVar3[3];
      if (bVar8) break;
      bVar1 = *(byte *)(param_3 + iVar5) ^ param_1[iVar5];
      puVar3 = (uint *)(param_2 + (bVar1 & 0xf) * 0x10);
      local_70 = *puVar3 ^ (uVar2 >> 4 | uVar4 << 0x1c);
      local_6c = puVar3[1] ^ uVar4 >> 4 ^ *(uint *)(&DAT_00842088 + (uVar6 & 0xf) * 4);
      uVar6 = (uVar6 >> 4 | uVar7 << 0x1c) ^ puVar3[2];
      uVar7 = (uVar2 << 0x1c | uVar7 >> 4) ^ puVar3[3];
    }
    param_3 = param_3 + 0x10;
    param_1[0xb] = (char)uVar7;
    param_1[3] = (char)uVar4;
    *param_1 = (char)(uVar4 >> 0x18);
    param_1[1] = (char)(uVar4 >> 0x10);
    param_1[2] = (char)(uVar4 >> 8);
    param_1[4] = (char)(uVar2 >> 0x18);
    param_1[5] = (char)(uVar2 >> 0x10);
    param_1[6] = (char)(uVar2 >> 8);
    param_1[8] = (char)(uVar7 >> 0x18);
    param_1[9] = (char)(uVar7 >> 0x10);
    param_1[10] = (char)(uVar7 >> 8);
    param_1[0xc] = (char)(uVar6 >> 0x18);
    param_1[0xd] = (char)(uVar6 >> 0x10);
    param_4 = param_4 + -0x10;
    param_1[7] = (char)uVar2;
    param_1[0xe] = (char)(uVar6 >> 8);
    param_1[0xf] = (char)uVar6;
  } while (param_4 != 0);
  return;
}

// ---- FUN_0067a354  @ 0x67a354
void FUN_0067a354(void *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(*(int *)((int)param_1 + 4) + 8) + -1;
  *(int *)(*(int *)((int)param_1 + 4) + 8) = iVar1;
  if (iVar1 == 0) {
    ASN1_OBJECT_free(*(ASN1_OBJECT **)((int)param_1 + 4));
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0067c49c  @ 0x67c49c
undefined4 FUN_0067c49c(BIO *param_1,undefined4 *param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = param_3 + 2;
  BIO_printf(param_1,"%*sCertificate ID:\n",param_3,&DAT_00801f93,param_4);
  BIO_printf(param_1,"%*sHash Algorithm: ",iVar1,&DAT_00801f93);
  i2a_ASN1_OBJECT(param_1,*(ASN1_OBJECT **)*param_2);
  BIO_printf(param_1,"\n%*sIssuer Name Hash: ",iVar1,&DAT_00801f93);
  i2a_ASN1_STRING(param_1,(ASN1_STRING *)param_2[1],4);
  BIO_printf(param_1,"\n%*sIssuer Key Hash: ",iVar1,&DAT_00801f93);
  i2a_ASN1_STRING(param_1,(ASN1_STRING *)param_2[2],4);
  BIO_printf(param_1,"\n%*sSerial Number: ",iVar1,&DAT_00801f93);
  i2a_ASN1_INTEGER(param_1,(ASN1_INTEGER *)param_2[3]);
  BIO_printf(param_1,"\n");
  return 1;
}

// ---- FUN_0067cc88  @ 0x67cc88
void FUN_0067cc88(_STACK *param_1,int param_2)

{
  EVP_MD *type;
  int iVar1;
  int iVar2;
  X509 *data;
  void *__s1;
  uchar auStack_30 [20];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  __s1 = *(void **)(*(int *)(param_2 + 4) + 8);
  for (iVar2 = 0; iVar1 = sk_num(param_1), iVar2 < iVar1; iVar2 = iVar2 + 1) {
    data = sk_value(param_1,iVar2);
    type = EVP_sha1();
    X509_pubkey_digest(data,type,auStack_30,(uint *)0x0);
    iVar1 = memcmp(__s1,auStack_30,0x14);
    if (iVar1 == 0) goto LAB_0067ccdc;
  }
  data = (X509 *)0x0;
LAB_0067ccdc:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(data);
  }
  return;
}

// ---- FUN_0067ccf8  @ 0x67ccf8
void FUN_0067ccf8(X509 *param_1,undefined4 *param_2,_STACK *param_3)

{
  int iVar1;
  char *name;
  EVP_MD *md;
  size_t sVar2;
  X509_NAME *data;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  uchar auStack_5c [64];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  iVar1 = 0;
  if (param_2 == (undefined4 *)0x0) {
    for (; iVar4 = sk_num(param_3), iVar1 < iVar4; iVar1 = iVar1 + 1) {
      puVar5 = sk_value(param_3,iVar1);
      iVar4 = FUN_0067ccf8(param_1,*puVar5,0);
      if (iVar4 < 1) goto LAB_0067cdcc;
    }
    iVar4 = 1;
    goto LAB_0067cdcc;
  }
  iVar1 = OBJ_obj2nid(*(ASN1_OBJECT **)*param_2);
  name = OBJ_nid2sn(iVar1);
  md = EVP_get_digestbyname(name);
  if (md == (EVP_MD *)0x0) {
    ERR_put_error(0x27,0x6d,0x77,"jni/../../openssl-android/crypto/ocsp/ocsp_vfy.c",0x136);
  }
  else {
    sVar2 = EVP_MD_size(md);
    if (-1 < (int)sVar2) {
      if ((*(size_t *)param_2[1] == sVar2) &&
         (sVar2 = *(size_t *)param_2[2], sVar2 == *(size_t *)param_2[1])) {
        data = X509_get_subject_name(param_1);
        iVar1 = X509_NAME_digest(data,md,auStack_5c,(uint *)0x0);
        if (iVar1 == 0) goto LAB_0067cd9c;
        iVar1 = memcmp(auStack_5c,*(void **)(param_2[1] + 8),sVar2);
        if (iVar1 == 0) {
          X509_pubkey_digest(param_1,md,auStack_5c,(uint *)0x0);
          uVar3 = memcmp(auStack_5c,*(void **)(param_2[2] + 8),sVar2);
          iVar4 = 1 - uVar3;
          if (1 < uVar3) {
            iVar4 = 0;
          }
          goto LAB_0067cdcc;
        }
      }
      iVar4 = 0;
      goto LAB_0067cdcc;
    }
  }
LAB_0067cd9c:
  iVar4 = -1;
LAB_0067cdcc:
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

// ---- FUN_0067f5e8  @ 0x67f5e8
void FUN_0067f5e8(BIO *param_1,EVP_PKEY *param_2,int param_3,int param_4,EVP_CIPHER *param_5,
                 char *param_6,size_t param_7,code *param_8,void *param_9)

{
  PKCS8_PRIV_KEY_INFO *x;
  X509_SIG *x_00;
  int iVar1;
  char acStack_42c [1024];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  x = EVP_PKEY2PKCS8(param_2);
  if (x == (PKCS8_PRIV_KEY_INFO *)0x0) {
    ERR_put_error(9,0x7e,0x73,"jni/../../openssl-android/crypto/pem/pem_pk8.c",0x7a);
    iVar1 = 0;
  }
  else if (param_5 == (EVP_CIPHER *)0x0 && param_4 == -1) {
    if (param_3 == 0) {
      iVar1 = PEM_write_bio_PKCS8_PRIV_KEY_INFO(param_1,x);
    }
    else {
      iVar1 = i2d_PKCS8_PRIV_KEY_INFO_bio(param_1,x);
    }
    PKCS8_PRIV_KEY_INFO_free(x);
  }
  else {
    if (param_6 == (char *)0x0) {
      if (param_8 == (code *)0x0) {
        param_7 = PEM_def_callback(acStack_42c,0x400,1,param_9);
      }
      else {
        param_7 = (*param_8)();
      }
      param_6 = acStack_42c;
      if ((int)param_7 < 1) {
        iVar1 = 0;
        ERR_put_error(9,0x7e,0x6f,"jni/../../openssl-android/crypto/pem/pem_pk8.c",0x82);
        PKCS8_PRIV_KEY_INFO_free(x);
        goto LAB_0067f6f4;
      }
    }
    x_00 = PKCS8_encrypt(param_4,param_5,param_6,param_7,(uchar *)0x0,0,0,x);
    if (param_6 == acStack_42c) {
      OPENSSL_cleanse(param_6,param_7);
    }
    PKCS8_PRIV_KEY_INFO_free(x);
    if (param_3 == 0) {
      iVar1 = PEM_write_bio_PKCS8(param_1,x_00);
    }
    else {
      iVar1 = i2d_PKCS8_bio(param_1,x_00);
    }
    X509_SIG_free(x_00);
  }
LAB_0067f6f4:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}

// ---- FUN_0067f71c  @ 0x67f71c
undefined4
FUN_0067f71c(FILE *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  BIO *a;
  undefined4 uVar1;
  
  a = BIO_new_fp(param_1,0);
  if (a == (BIO *)0x0) {
    ERR_put_error(9,0x7d,7,"jni/../../openssl-android/crypto/pem/pem_pk8.c",0xd9);
    uVar1 = 0;
  }
  else {
    uVar1 = FUN_0067f5e8(a,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9);
    BIO_free(a);
  }
  return uVar1;
}
