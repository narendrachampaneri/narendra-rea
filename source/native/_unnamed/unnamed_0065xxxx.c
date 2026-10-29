// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 38 functions

// ---- FUN_00650c0e  @ 0x650c0e
void FUN_00650c0e(int param_1,int param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  for (iVar2 = 0; iVar2 < (int)param_3; iVar2 = iVar2 + 1) {
    *(undefined4 *)(param_1 + iVar1) = *(undefined4 *)(param_2 + iVar1);
    iVar1 = iVar1 + 4;
  }
  param_3 = param_3 & ~((int)param_3 >> 0x1f);
  iVar2 = 0;
  iVar1 = param_3 * 4;
  for (; (int)param_3 < param_4; param_3 = param_3 + 1) {
    *(undefined4 *)(param_1 + iVar1 + iVar2) = 0;
    iVar2 = iVar2 + 4;
  }
  return;
}

// ---- FUN_00650c3c  @ 0x650c3c
void FUN_00650c3c(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = 0;
  for (iVar2 = 0; iVar2 < param_3; iVar2 = iVar2 + 1) {
    *(undefined4 *)(param_1 + iVar1) = *(undefined4 *)(param_2 + iVar1);
    iVar1 = iVar1 + 4;
  }
  return;
}

// ---- FUN_00651988  @ 0x651988
undefined4 FUN_00651988(BIGNUM *param_1,int param_2)

{
  int iVar1;
  ulong uVar2;
  uint extraout_r1;
  ushort *puVar3;
  ushort *puVar4;
  ushort uStack_1028;
  ushort local_1026 [2046];
  ushort auStack_2a [3];
  
  do {
    iVar1 = BN_rand(param_1,param_2,1,1);
    if (iVar1 == 0) {
      return 0;
    }
    puVar4 = &uStack_1028;
    puVar3 = (ushort *)&DAT_0083cb74;
    do {
      puVar3 = puVar3 + 1;
      uVar2 = BN_mod_word(param_1,(uint)*puVar3);
      puVar4 = puVar4 + 1;
      *puVar4 = (ushort)uVar2;
    } while (puVar3 != (ushort *)&UNK_0083db72);
    uVar2 = 0;
    do {
      puVar3 = &uStack_1028;
      puVar4 = (ushort *)&DAT_0083cb74;
      while( true ) {
        puVar3 = puVar3 + 1;
        puVar4 = puVar4 + 1;
        __aeabi_uidivmod(*puVar3 + uVar2,*puVar4);
        if (extraout_r1 < 2) break;
        if (puVar3 == auStack_2a) {
          iVar1 = BN_add_word(param_1,uVar2);
          if (iVar1 == 0) {
            return 0;
          }
          return 1;
        }
      }
      uVar2 = uVar2 + 2;
    } while (uVar2 != 0xffffba3a);
  } while( true );
}

// ---- FUN_006526cc  @ 0x6526cc
bool FUN_006526cc(int param_1,BIGNUM *param_2,int param_3,int param_4,int param_5)

{
  byte *buf;
  int iVar1;
  BIGNUM *pBVar2;
  byte bVar3;
  uint uVar4;
  size_t len;
  bool bVar5;
  double entropy;
  undefined4 uStack_28;
  int iStack_24;
  
  iVar1 = param_3 + 0xe;
  if (-1 < param_3 + 7) {
    iVar1 = param_3 + 7;
  }
  len = iVar1 >> 3;
  uStack_28 = param_3;
  iStack_24 = param_4;
  buf = CRYPTO_malloc(len,"jni/../../openssl-android/crypto/bn/bn_rand.c",0x87);
  if (buf == (byte *)0x0) {
    ERR_put_error(3,0x7f,0x41,"jni/../../openssl-android/crypto/bn/bn_rand.c",0x8a);
    return false;
  }
  time(&iStack_24);
  RAND_add(&iStack_24,4,entropy);
  if (param_1 == 0) {
    iVar1 = RAND_bytes(buf,len);
    if (iVar1 < 1) {
      bVar5 = false;
      goto LAB_006527fe;
    }
  }
  else {
    iVar1 = RAND_pseudo_bytes(buf,len);
    if (iVar1 == -1) {
      bVar5 = false;
      goto LAB_006527fe;
    }
    if (param_1 == 2) {
      for (iVar1 = 0; iVar1 < (int)len; iVar1 = iVar1 + 1) {
        RAND_pseudo_bytes((uchar *)((int)&uStack_28 + 3),1);
        bVar3 = uStack_28._3_1_ >> 7;
        if (iVar1 < 1) {
          bVar3 = 0;
        }
        if (bVar3 == 0) {
          if (uStack_28._3_1_ < 0x2a) {
            buf[iVar1] = 0;
          }
          else if (uStack_28._3_1_ < 0x54) {
            buf[iVar1] = 0xff;
          }
        }
        else {
          buf[iVar1] = buf[iVar1 + -1];
        }
      }
    }
  }
  uVar4 = param_3 - 1U & 0x80000007;
  if ((int)uVar4 < 0) {
    uVar4 = (uVar4 - 1 | 0xfffffff8) + 1;
  }
  if (param_4 != -1) {
    bVar3 = (byte)(1 << (uVar4 & 0xff));
    if ((param_4 == 0) || (bVar3 = (byte)(3 << (uVar4 - 1 & 0xff)), uVar4 != 0)) {
      *buf = bVar3 | *buf;
    }
    else {
      *buf = 1;
      buf[1] = buf[1] | 0x80;
    }
  }
  *buf = *buf & ~(byte)(0xff << (uVar4 + 1 & 0xff));
  if (param_5 != 0) {
    buf[len - 1] = buf[len - 1] | 1;
  }
  pBVar2 = BN_bin2bn(buf,len,param_2);
  bVar5 = pBVar2 != (BIGNUM *)0x0;
LAB_006527fe:
  OPENSSL_cleanse(buf,len);
  CRYPTO_free(buf);
  return bVar5;
}

// ---- FUN_00653c44  @ 0x653c44
undefined8 FUN_00653c44(ENGINE *param_1,int param_2,size_t param_3,EVP_CIPHER *param_4)

{
  undefined4 uVar1;
  int iVar2;
  EVP_CIPHER *key;
  EVP_CIPHER *cipher;
  uint uVar3;
  CMAC_CTX *out;
  
  out = *(CMAC_CTX **)(param_1 + 0x14);
  if (param_2 == 6) {
    uVar3 = param_3 >> 0x1f;
    uVar1 = 0;
    if (param_4 == (EVP_CIPHER *)0x0) {
      uVar3 = 1;
    }
    if (uVar3 != 0) goto LAB_00653ca4;
    cipher = (EVP_CIPHER *)0x0;
    param_1 = (ENGINE *)0x0;
    key = param_4;
  }
  else if (param_2 == 0xc) {
    param_1 = *(ENGINE **)(param_1 + 4);
    param_3 = 0;
    key = (EVP_CIPHER *)0x0;
    cipher = param_4;
  }
  else {
    if (param_2 != 1) {
      uVar1 = 0xfffffffe;
      goto LAB_00653ca4;
    }
    if ((*(int *)(param_1 + 8) != 0) &&
       (iVar2 = CMAC_CTX_copy(out,*(CMAC_CTX **)(*(int *)(param_1 + 8) + 0x14)), uVar1 = 0,
       iVar2 == 0)) goto LAB_00653ca4;
    param_1 = (ENGINE *)0x0;
    param_3 = 0;
    key = (EVP_CIPHER *)0x0;
    cipher = (EVP_CIPHER *)0x0;
  }
  iVar2 = CMAC_Init(out,key,param_3,cipher,param_1);
  uVar1 = 0;
  if (iVar2 != 0) {
    uVar1 = 1;
  }
LAB_00653ca4:
  return CONCAT44(param_1,uVar1);
}

// ---- FUN_00653ca8  @ 0x653ca8
undefined4 FUN_00653ca8(undefined4 param_1,char *param_2,EVP_CIPHER *param_3)

{
  int iVar1;
  size_t sVar2;
  undefined4 uVar3;
  uchar *ptr;
  undefined4 uVar4;
  char *local_14;
  
  if (param_3 == (EVP_CIPHER *)0x0) {
LAB_00653d2e:
    uVar3 = 0;
  }
  else {
    uVar3 = param_1;
    local_14 = param_2;
    iVar1 = strcmp(param_2,"key");
    if (iVar1 == 0) {
      sVar2 = strlen((char *)param_3);
      uVar4 = 6;
    }
    else {
      iVar1 = strcmp(param_2,"cipher");
      if (iVar1 != 0) {
        iVar1 = strcmp(param_2,"hexkey");
        if (iVar1 != 0) {
          return 0xfffffffe;
        }
        ptr = string_to_hex((char *)param_3,(long *)&local_14);
        if (ptr != (uchar *)0x0) {
          uVar3 = FUN_00653c44(param_1,6,local_14,ptr,uVar3);
          CRYPTO_free(ptr);
          return uVar3;
        }
        goto LAB_00653d2e;
      }
      param_3 = EVP_get_cipherbyname((char *)param_3);
      if (param_3 == (EVP_CIPHER *)0x0) {
        return 0;
      }
      uVar4 = 0xc;
      sVar2 = 0xffffffff;
    }
    uVar3 = FUN_00653c44(param_1,uVar4,sVar2,param_3,uVar3);
  }
  return uVar3;
}

// ---- FUN_00653de0  @ 0x653de0
void FUN_00653de0(int param_1,char *param_2,int param_3)

{
  int iVar1;
  char *pcVar2;
  byte bVar3;
  bool bVar4;
  
  pcVar2 = param_2;
  for (iVar1 = 0; iVar1 < param_3; iVar1 = iVar1 + 1) {
    bVar3 = *pcVar2 << 1;
    *(byte *)(param_1 + iVar1) = bVar3;
    if (iVar1 < param_3 + -1) {
      bVar4 = pcVar2[1] < '\0';
      if (bVar4) {
        bVar3 = bVar3 | 1;
      }
      if (bVar4) {
        *(byte *)(param_1 + iVar1) = bVar3;
      }
    }
    pcVar2 = pcVar2 + 1;
  }
  if (*param_2 < '\0') {
    if (param_3 == 0x10) {
      bVar3 = 0x87;
    }
    else {
      bVar3 = 0x1b;
    }
    *(byte *)(param_1 + param_3 + -1) = bVar3 ^ *(byte *)(param_1 + param_3 + -1);
  }
  return;
}

// ---- FUN_00654170  @ 0x654170
uint FUN_00654170(undefined4 param_1,void *param_2,uint param_3,char *param_4,int param_5)

{
  uint __n;
  
  __n = param_5 - 1;
  if (__n <= param_3) {
    if (*param_4 == '\0') {
      memcpy(param_2,param_4 + 1,__n);
    }
    return __n;
  }
  return 0xffffffff;
}

// ---- FUN_00654192  @ 0x654192
int FUN_00654192(undefined4 param_1,undefined1 *param_2,uint param_3,void *param_4,size_t param_5)

{
  if (param_5 == 0) {
    return -1;
  }
  if (param_5 - 1 <= param_3) {
    *param_2 = 0;
    memcpy(param_2 + 1,param_4,param_5);
    return param_5 + 1;
  }
  return -1;
}

// ---- FUN_0065421c  @ 0x65421c
int FUN_0065421c(BIO *param_1,int param_2,long param_3,int *param_4)

{
  BIO *pBVar1;
  undefined4 uVar2;
  long lVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  
  pBVar1 = param_1->next_bio;
  if (pBVar1 == (bio_st *)0x0) {
    return 0;
  }
  puVar6 = param_1->ptr;
  if (param_2 == 0xb) {
    if ((puVar6[0x10] != 0) && ((puVar6[0x14] == 0 || (puVar6[0x13] != 0)))) {
      pBVar1 = param_1;
      BIO_clear_flags(param_1,0xf);
      puVar6[0x16] = 0;
      puVar6[0x17] = 0;
      while( true ) {
        while (puVar6[0x13] != 0) {
          lVar3 = BIO_write(param_1->next_bio,(void *)puVar6[0x12],puVar6[0x13]);
          if (lVar3 < 1) goto LAB_0065433a;
          puVar6[0x12] = puVar6[0x12] + lVar3;
          puVar6[0x13] = puVar6[0x13] - lVar3;
        }
        if (puVar6[0x14] != 0) break;
        puVar6[0x12] = puVar6[0x10];
        puVar6[0x19] = puVar6[0x10];
        puVar6[0x1a] = puVar6[0x11];
        iVar4 = deflate(puVar6 + 0x16,4,0,puVar6[0x11],pBVar1,param_2);
        if (iVar4 == 1) {
          puVar6[0x14] = 1;
        }
        else if (iVar4 != 0) {
          ERR_put_error(0x29,99,99,"jni/../../openssl-android/crypto/comp/c_zlib.c",0x2c2);
          uVar2 = zError(iVar4);
          ERR_add_error_data(2,"zlib error:",uVar2);
          return 0;
        }
        puVar6[0x13] = puVar6[0x11] - puVar6[0x1a];
      }
    }
    param_3 = 0;
    pBVar1 = param_1->next_bio;
    param_2 = 0xb;
    param_4 = (int *)0x0;
  }
  else if (param_2 < 0xc) {
    if (param_2 == 1) {
      puVar6[0x13] = 0;
      puVar6[0x14] = 0;
      return 1;
    }
  }
  else {
    if (param_2 == 0x65) {
      BIO_clear_flags(param_1,0xf);
      lVar3 = BIO_ctrl(param_1->next_bio,0x65,param_3,param_4);
LAB_0065433a:
      BIO_copy_next_retry(param_1);
      return lVar3;
    }
    if (param_2 == 0x75) {
      iVar4 = param_3;
      if (((param_4 == (int *)0x0) || (iVar5 = param_3, iVar4 = -1, *param_4 == 0)) &&
         (iVar5 = iVar4, param_3 != -1)) {
        if ((void *)*puVar6 != (void *)0x0) {
          CRYPTO_free((void *)*puVar6);
          *puVar6 = 0;
        }
        puVar6[1] = param_3;
      }
      if (iVar5 != -1) {
        if ((void *)puVar6[0x10] != (void *)0x0) {
          CRYPTO_free((void *)puVar6[0x10]);
          puVar6[0x10] = 0;
        }
        puVar6[0x11] = iVar5;
      }
      return 1;
    }
  }
  iVar4 = BIO_ctrl(pBVar1,param_2,param_3,param_4);
  return iVar4;
}

// ---- FUN_006543bc  @ 0x6543bc
int FUN_006543bc(int param_1,undefined4 param_2,int param_3,undefined4 param_4,int param_5)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = CRYPTO_get_ex_data((CRYPTO_EX_DATA *)(param_1 + 0x14),DAT_00947a50);
  if (pvVar1 == (void *)0x0) {
    return -1;
  }
  *(undefined4 *)((int)pvVar1 + 0x38) = param_4;
  *(int *)((int)pvVar1 + 0x3c) = param_5;
  *(undefined4 *)((int)pvVar1 + 0x44) = param_2;
  *(int *)((int)pvVar1 + 0x48) = param_3;
  if ((param_5 != 0) && (iVar2 = deflate((int)pvVar1 + 0x38,2), iVar2 != 0)) {
    return -1;
  }
  return param_3 - *(int *)((int)pvVar1 + 0x48);
}

// ---- FUN_00654922  @ 0x654922
void FUN_00654922(undefined4 *param_1)

{
  int iVar1;
  void *ptr;
  _STACK *p_Var2;
  
  if (param_1[1] == 0) {
    p_Var2 = (_STACK *)param_1[2];
    iVar1 = sk_num(p_Var2);
    while (iVar1 = iVar1 + -1, -1 < iVar1) {
      ptr = sk_value(p_Var2,iVar1);
      CRYPTO_free(*(void **)((int)ptr + 8));
      CRYPTO_free(*(void **)((int)ptr + 4));
      CRYPTO_free(ptr);
    }
    if (p_Var2 != (_STACK *)0x0) {
      sk_free(p_Var2);
    }
    CRYPTO_free((void *)*param_1);
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_00654984  @ 0x654984
int FUN_00654984(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  char *__s1;
  char *__s2;
  
  if (((char *)*param_1 == (char *)*param_2) ||
     (iVar1 = strcmp((char *)*param_1,(char *)*param_2), iVar1 == 0)) {
    __s1 = (char *)param_1[1];
    __s2 = (char *)param_2[1];
    if ((__s1 != (char *)0x0) && (__s2 != (char *)0x0)) {
      iVar1 = strcmp(__s1,__s2);
      return iVar1;
    }
    if (__s1 != __s2) {
      if (__s1 == (char *)0x0) {
        iVar1 = -1;
      }
      else {
        iVar1 = 1;
      }
      return iVar1;
    }
    iVar1 = 0;
  }
  return iVar1;
}

// ---- FUN_006549bc  @ 0x6549bc
uint FUN_006549bc(undefined4 *param_1)

{
  ulong uVar1;
  ulong uVar2;
  
  uVar1 = lh_strhash((char *)*param_1);
  uVar2 = lh_strhash((char *)param_1[1]);
  return uVar2 ^ uVar1 << 2;
}

// ---- FUN_00654be4  @ 0x654be4
void FUN_00654be4(int param_1,byte *param_2)

{
  byte bVar1;
  
  do {
    bVar1 = *param_2;
    param_2 = param_2 + 1;
  } while ((*(ushort *)(*(int *)(param_1 + 4) + (uint)bVar1 * 2) & 0x18) == 0x10);
  return;
}

// ---- FUN_00654bfa  @ 0x654bfa
byte * FUN_00654bfa(int param_1,byte *param_2)

{
  ushort uVar1;
  
LAB_00654bfc:
  do {
    uVar1 = *(ushort *)(*(int *)(param_1 + 4) + (uint)*param_2 * 2);
    if ((int)((uint)uVar1 << 0x1a) < 0) {
      if (-1 < (int)((uint)*(ushort *)(*(int *)(param_1 + 4) + (uint)param_2[1] * 2) << 0x1c)) {
        param_2 = param_2 + 2;
        goto LAB_00654bfc;
      }
    }
    else if ((uVar1 & 0x307) == 0) {
      return param_2;
    }
    param_2 = param_2 + 1;
  } while( true );
}

// ---- FUN_00654c7c  @ 0x654c7c
undefined4 FUN_00654c7c(CONF *param_1,byte *param_2,undefined4 *param_3,byte *param_4)

{
  ushort uVar1;
  byte bVar2;
  BUF_MEM *str;
  size_t sVar3;
  int iVar4;
  char *__s;
  undefined4 uVar5;
  void *pvVar6;
  byte *pbVar7;
  uint uVar8;
  byte *pbVar9;
  byte bVar10;
  uint uVar11;
  byte *pbVar12;
  byte *pbVar13;
  byte *pbVar14;
  int line;
  byte *local_38;
  
  str = BUF_MEM_new();
  uVar5 = 0;
  if (str != (BUF_MEM *)0x0) {
    sVar3 = strlen((char *)param_4);
    iVar4 = BUF_MEM_grow(str,sVar3 + 1);
    if (iVar4 == 0) {
LAB_00654e96:
      BUF_MEM_free(str);
      uVar5 = 0;
    }
    else {
      iVar4 = 0;
      bVar2 = 0;
LAB_00654cae:
      while( true ) {
        pvVar6 = param_1->meth_data;
        uVar8 = (uint)*param_4;
        uVar1 = *(ushort *)((int)pvVar6 + uVar8 * 2);
        uVar11 = (uint)uVar1;
        pbVar9 = param_4;
        if (-1 < (int)(uVar11 << 0x19)) break;
        while( true ) {
          param_4 = pbVar9 + 1;
          uVar1 = *(ushort *)((int)param_1->meth_data + (uint)*param_4 * 2);
          if ((((uVar1 & 8) != 0) || (*param_4 == uVar8)) ||
             (((int)((uint)uVar1 << 0x1a) < 0 &&
              (param_4 = pbVar9 + 2,
              (int)((uint)*(ushort *)((int)param_1->meth_data + (uint)pbVar9[2] * 2) << 0x1c) < 0)))
             ) break;
          str->data[iVar4] = *param_4;
          iVar4 = iVar4 + 1;
          pbVar9 = param_4;
        }
        uVar11 = (uint)*param_4;
LAB_00654d1a:
        if (uVar11 == uVar8) {
LAB_00654e72:
          param_4 = param_4 + 1;
        }
      }
      if ((int)(uVar11 << 0x15) < 0) {
        while( true ) {
          param_4 = pbVar9 + 1;
          uVar11 = (uint)*param_4;
          if ((int)((uint)*(ushort *)((int)param_1->meth_data + uVar11 * 2) << 0x1c) < 0) break;
          if (uVar11 == uVar8) {
            if (pbVar9[2] != uVar8) break;
            param_4 = pbVar9 + 2;
          }
          str->data[iVar4] = *param_4;
          iVar4 = iVar4 + 1;
          pbVar9 = param_4;
        }
        goto LAB_00654d1a;
      }
      if ((int)(uVar11 << 0x1a) < 0) {
        bVar10 = param_4[1];
        uVar8 = (uint)bVar10;
        if ((int)((uint)*(ushort *)((int)pvVar6 + uVar8 * 2) << 0x1c) < 0) goto LAB_00654e76;
        if (uVar8 == 0x72) {
          bVar10 = 0xd;
        }
        else if (uVar8 == 0x6e) {
          bVar10 = 10;
        }
        else if (uVar8 == 0x62) {
          bVar10 = 8;
        }
        else if (uVar8 == 0x74) {
          bVar10 = 9;
        }
        param_4 = param_4 + 2;
        str->data[iVar4] = bVar10;
        iVar4 = iVar4 + 1;
        goto LAB_00654cae;
      }
      uVar11 = uVar11 & 8;
      if ((uVar1 & 8) == 0) {
        if (uVar8 != 0x24) {
          str->data[iVar4] = *param_4;
          iVar4 = iVar4 + 1;
          goto LAB_00654e72;
        }
        if (param_4[1] == 0x7b) {
          uVar11 = 0x7d;
LAB_00654d7a:
          pbVar9 = param_4 + 2;
          pbVar7 = pbVar9;
        }
        else {
          if (param_4[1] == 0x28) {
            uVar11 = 0x29;
            goto LAB_00654d7a;
          }
          pbVar9 = param_4 + 1;
          pbVar7 = pbVar9;
        }
        do {
          pbVar14 = pbVar7;
          uVar1 = *(ushort *)((int)pvVar6 + (uint)*pbVar14 * 2);
          pbVar13 = (byte *)(uVar1 & 0x107);
          pbVar7 = pbVar14 + 1;
        } while ((uVar1 & 0x107) != 0);
        pbVar7 = param_2;
        pbVar12 = pbVar14;
        if ((*pbVar14 == 0x3a) && (pbVar14[1] == 0x3a)) {
          *pbVar14 = (byte)pbVar13;
          pbVar7 = pbVar14 + 2;
          do {
            pbVar12 = pbVar7;
            pbVar7 = pbVar12 + 1;
          } while ((*(ushort *)((int)param_1->meth_data + (uint)*pbVar12 * 2) & 0x107) != 0);
          bVar2 = 0x3a;
          pbVar7 = pbVar9;
          pbVar9 = pbVar14 + 2;
          pbVar13 = pbVar14;
        }
        bVar10 = *pbVar12;
        *pbVar12 = 0;
        local_38 = pbVar12;
        if (uVar11 == 0) {
LAB_00654e0a:
          __s = _CONF_get_string(param_1,(char *)pbVar7,(char *)pbVar9);
          if (pbVar13 != (byte *)0x0) {
            *pbVar13 = bVar2;
          }
          *pbVar12 = bVar10;
          if (__s != (char *)0x0) {
            sVar3 = strlen(__s);
            BUF_MEM_grow_clean(str,(size_t)(param_4 + sVar3 + (str->length - (int)local_38)));
            while( true ) {
              if (*__s == '\0') break;
              str->data[iVar4] = *__s;
              iVar4 = iVar4 + 1;
              __s = __s + 1;
            }
            *pbVar12 = bVar10;
            param_4 = local_38;
            goto LAB_00654cae;
          }
          line = 0x26a;
          iVar4 = 0x68;
        }
        else {
          if (bVar10 == uVar11) {
            local_38 = pbVar12 + 1;
            goto LAB_00654e0a;
          }
          line = 599;
          iVar4 = 0x66;
        }
        ERR_put_error(0xe,0x65,iVar4,"jni/../../openssl-android/crypto/conf/conf_def.c",line);
        goto LAB_00654e96;
      }
LAB_00654e76:
      str->data[iVar4] = '\0';
      if ((void *)*param_3 != (void *)0x0) {
        CRYPTO_free((void *)*param_3);
      }
      *param_3 = str->data;
      CRYPTO_free(str);
      uVar5 = 1;
    }
  }
  return uVar5;
}

// ---- FUN_00654eac  @ 0x654eac
void FUN_00654eac(CONF *param_1,BIO *param_2,undefined4 *param_3)

{
  byte *pbVar1;
  ushort uVar2;
  byte *pbVar3;
  BUF_MEM *str;
  CONF_VALUE *pCVar4;
  int iVar5;
  size_t sVar6;
  byte *pbVar7;
  char *pcVar8;
  undefined1 *puVar9;
  byte *pbVar10;
  size_t sVar11;
  CONF_VALUE *section;
  lhash_st_CONF_VALUE *conf;
  undefined4 uVar12;
  lhash_st_CONF_VALUE *plVar13;
  void *pvVar14;
  int iVar15;
  char *pcVar16;
  uint uVar17;
  uint uVar18;
  CONF_VALUE *value;
  byte *pbVar19;
  byte *pbVar20;
  bool bVar21;
  CONF_VALUE *local_64;
  byte *local_40;
  char acStack_3c [16];
  int local_2c;
  
  plVar13 = param_1->data;
  local_2c = __stack_chk_guard;
  local_40 = (byte *)0x0;
  str = BUF_MEM_new();
  if (str == (BUF_MEM *)0x0) {
    ERR_put_error(0xe,0x79,7,"jni/../../openssl-android/crypto/conf/conf_def.c",0xe3);
    value = (CONF_VALUE *)0x0;
    local_64 = (CONF_VALUE *)0x0;
    goto LAB_00655304;
  }
  local_40 = CRYPTO_malloc(10,"jni/../../openssl-android/crypto/conf/conf_def.c",0xe7);
  iVar15 = 0xea;
  if (local_40 == (byte *)0x0) {
LAB_00654f24:
    ERR_put_error(0xe,0x79,0x41,"jni/../../openssl-android/crypto/conf/conf_def.c",iVar15);
LAB_00654f52:
    value = (CONF_VALUE *)0x0;
    local_64 = value;
  }
  else {
    BUF_strlcpy((char *)local_40,"default",10);
    iVar15 = _CONF_new_data(param_1);
    if (iVar15 == 0) {
      iVar15 = 0xf1;
      goto LAB_00654f24;
    }
    pCVar4 = _CONF_new_section(param_1,(char *)local_40);
    if (pCVar4 == (CONF_VALUE *)0x0) {
      ERR_put_error(0xe,0x79,0x67,"jni/../../openssl-android/crypto/conf/conf_def.c",0xf9);
      goto LAB_00654f52;
    }
    bVar21 = false;
    local_64 = (CONF_VALUE *)0x0;
    iVar15 = 0;
LAB_00654f70:
    while( true ) {
      iVar5 = BUF_MEM_grow(str,iVar15 + 0x200);
      if (iVar5 == 0) {
        iVar5 = 0x103;
        iVar15 = 7;
        value = (CONF_VALUE *)0x0;
        goto LAB_00655130;
      }
      pcVar16 = str->data + iVar15;
      str->data[iVar15] = '\0';
      BIO_gets(param_2,pcVar16,0x1ff);
      pcVar16[0x1ff] = '\0';
      sVar6 = strlen(pcVar16);
      sVar11 = sVar6;
      if (sVar6 == 0 && !bVar21) {
        BUF_MEM_free(str);
        if (local_40 != (byte *)0x0) {
          CRYPTO_free(local_40);
        }
        uVar12 = 1;
        goto LAB_0065535e;
      }
      while ((0 < (int)sVar11 && (pcVar16[sVar11 - 1] == '\n' || pcVar16[sVar11 - 1] == '\r'))) {
        sVar11 = sVar11 - 1;
      }
      if (sVar11 != sVar6 || sVar6 == 0) {
        pcVar16[sVar11] = '\0';
        local_64 = (CONF_VALUE *)((int)&local_64->section + 1);
      }
      iVar15 = iVar15 + sVar11;
      if (iVar15 < 1) break;
      if ((-1 < (int)((uint)*(ushort *)
                             ((int)param_1->meth_data + (uint)(byte)str->data[iVar15 + -1] * 2) <<
                     0x1a)) ||
         ((iVar15 != 1 &&
          ((int)((uint)*(ushort *)((int)param_1->meth_data + (uint)(byte)str->data[iVar15 + -2] * 2)
                << 0x1a) < 0)))) break;
      iVar15 = iVar15 + -1;
LAB_00655036:
      bVar21 = true;
    }
    if (sVar11 == sVar6 && sVar6 != 0) goto LAB_00655036;
    pvVar14 = param_1->meth_data;
    pbVar19 = (byte *)str->data;
    do {
      pbVar7 = pbVar19;
      uVar17 = (uint)*(ushort *)((int)pvVar14 + (uint)*pbVar7 * 2);
      if ((int)(uVar17 << 0x14) < 0) goto LAB_00655064;
      pbVar19 = pbVar7 + 1;
    } while ((int)(uVar17 << 0x1b) < 0);
    while( true ) {
      uVar17 = (uint)*pbVar7;
      uVar18 = (uint)*(ushort *)((int)pvVar14 + uVar17 * 2);
      if ((int)(uVar18 << 0x18) < 0) break;
      if ((int)(uVar18 << 0x15) < 0) {
        while( true ) {
          pbVar19 = pbVar7;
          pbVar7 = pbVar19 + 1;
          uVar18 = (uint)*pbVar7;
          if ((int)((uint)*(ushort *)((int)pvVar14 + uVar18 * 2) << 0x1c) < 0) break;
          if (uVar18 == uVar17) {
            if (pbVar19[2] != uVar17) break;
            pbVar7 = pbVar19 + 2;
          }
        }
LAB_006550b6:
        if (uVar18 == uVar17) {
LAB_006550d2:
          pbVar7 = pbVar7 + 1;
        }
      }
      else if ((int)(uVar18 << 0x19) < 0) {
        do {
          pbVar19 = pbVar7;
          pbVar7 = pbVar19 + 1;
          uVar18 = (uint)*pbVar7;
          uVar2 = *(ushort *)((int)pvVar14 + uVar18 * 2);
          if (((uVar2 & 8) != 0) || (uVar18 == uVar17)) goto LAB_006550b6;
        } while ((-1 < (int)((uint)uVar2 << 0x1a)) ||
                (pbVar7 = pbVar19 + 2, (*(ushort *)((int)pvVar14 + (uint)pbVar19[2] * 2) & 8) == 0))
        ;
      }
      else {
        if (-1 < (int)(uVar18 << 0x1a)) {
          if (-1 < (int)(uVar18 << 0x1c)) goto LAB_006550d2;
          goto LAB_006550d6;
        }
        if ((int)((uint)*(ushort *)((int)pvVar14 + (uint)pbVar7[1] * 2) << 0x1c) < 0)
        goto LAB_006550d2;
        pbVar7 = pbVar7 + 2;
      }
    }
LAB_00655064:
    *pbVar7 = 0;
LAB_006550d6:
    pbVar7 = (byte *)FUN_00654be4(param_1);
    uVar2 = *(ushort *)((int)param_1->meth_data + (uint)*pbVar7 * 2);
    pbVar19 = (byte *)(uVar2 & 8);
    bVar21 = false;
    if ((uVar2 & 8) != 0) {
LAB_00654f56:
      iVar15 = 0;
      goto LAB_00654f70;
    }
    if (*pbVar7 != 0x5b) {
      pcVar16 = (char *)FUN_00654bfa(param_1,pbVar7);
      if ((*pcVar16 == ':') && (pcVar16[1] == ':')) {
        pbVar20 = (byte *)(pcVar16 + 2);
        *pcVar16 = (char)pbVar19;
        pcVar16 = (char *)FUN_00654bfa(param_1,pbVar20);
        pbVar19 = pbVar7;
        pbVar7 = pbVar20;
      }
      pbVar20 = (byte *)FUN_00654be4(param_1,pcVar16);
      if (*pbVar20 == 0x3d) {
        *pcVar16 = '\0';
        pbVar10 = (byte *)FUN_00654be4(param_1,pbVar20 + 1);
        do {
          pbVar1 = pbVar20 + 1;
          pbVar3 = pbVar20;
          pbVar20 = pbVar20 + 1;
        } while (-1 < (int)((uint)*(ushort *)((int)param_1->meth_data + (uint)*pbVar1 * 2) << 0x1c))
        ;
        do {
          pbVar20 = pbVar3;
          if (pbVar20 == pbVar10) break;
          pbVar3 = pbVar20 + -1;
        } while ((int)((uint)*(ushort *)((int)param_1->meth_data + (uint)*pbVar20 * 2) << 0x1b) < 0)
        ;
        pbVar20[1] = 0;
        value = CRYPTO_malloc(0xc,"jni/../../openssl-android/crypto/conf/conf_def.c",0x178);
        if (value == (CONF_VALUE *)0x0) {
          iVar5 = 0x17b;
          iVar15 = 0x41;
        }
        else {
          if (pbVar19 == (byte *)0x0) {
            pbVar19 = local_40;
          }
          sVar11 = strlen((char *)pbVar7);
          pcVar16 = CRYPTO_malloc(sVar11 + 1,"jni/../../openssl-android/crypto/conf/conf_def.c",
                                  0x17f);
          value->value = (char *)0x0;
          value->name = pcVar16;
          if (pcVar16 == (char *)0x0) {
            iVar5 = 0x184;
            iVar15 = 0x41;
          }
          else {
            sVar11 = strlen((char *)pbVar7);
            BUF_strlcpy(pcVar16,(char *)pbVar7,sVar11 + 1);
            iVar15 = FUN_00654c7c(param_1,pbVar19,&value->value,pbVar10);
            if (iVar15 == 0) goto LAB_00655372;
            iVar15 = strcmp((char *)pbVar19,(char *)local_40);
            section = pCVar4;
            if (((iVar15 == 0) ||
                (section = _CONF_get_section(param_1,(char *)pbVar19), section != (CONF_VALUE *)0x0)
                ) || (section = _CONF_new_section(param_1,(char *)pbVar19),
                     section != (CONF_VALUE *)0x0)) {
              iVar15 = _CONF_add_string(param_1,section,value);
              if (iVar15 != 0) goto LAB_00654f56;
              iVar5 = 0x19c;
              iVar15 = 0x41;
            }
            else {
              iVar15 = 0x67;
              iVar5 = 0x192;
            }
          }
        }
LAB_00655130:
        ERR_put_error(0xe,0x79,iVar15,"jni/../../openssl-android/crypto/conf/conf_def.c",iVar5);
      }
      else {
        value = (CONF_VALUE *)0x0;
        ERR_put_error(0xe,0x79,0x65,"jni/../../openssl-android/crypto/conf/conf_def.c",0x16a);
      }
      goto LAB_00655372;
    }
    pcVar8 = (char *)FUN_00654be4(param_1,pbVar7 + 1);
    pcVar16 = pcVar8;
    while( true ) {
      puVar9 = (undefined1 *)FUN_00654bfa(param_1,pcVar16);
      pcVar16 = (char *)FUN_00654be4(param_1,puVar9);
      if (*pcVar16 == ']') break;
      if (*pcVar16 == '\0') {
        iVar5 = 0x14a;
        iVar15 = 100;
        value = (CONF_VALUE *)0x0;
        goto LAB_00655130;
      }
    }
    *puVar9 = 0;
    iVar15 = FUN_00654c7c(param_1,0,&local_40,pcVar8);
    if (iVar15 == 0) {
      value = (CONF_VALUE *)0x0;
      goto LAB_00655372;
    }
    pCVar4 = _CONF_get_section(param_1,(char *)local_40);
    iVar15 = 0;
    if ((pCVar4 != (CONF_VALUE *)0x0) ||
       (pCVar4 = _CONF_new_section(param_1,(char *)local_40), iVar15 = 0,
       pCVar4 != (CONF_VALUE *)0x0)) goto LAB_00654f70;
    ERR_put_error(0xe,0x79,0x67,"jni/../../openssl-android/crypto/conf/conf_def.c",0x154);
    value = (CONF_VALUE *)0x0;
  }
LAB_00655372:
  BUF_MEM_free(str);
LAB_00655304:
  if (local_40 != (byte *)0x0) {
    CRYPTO_free(local_40);
  }
  if (param_3 != (undefined4 *)0x0) {
    *param_3 = local_64;
  }
  BIO_snprintf(acStack_3c,0xd,"%ld",local_64);
  ERR_add_error_data(2,"line ",acStack_3c);
  conf = param_1->data;
  if ((plVar13 != conf) && (conf != (lhash_st_CONF_VALUE *)0x0)) {
    CONF_free(conf);
    param_1->data = (lhash_st_CONF_VALUE *)0x0;
  }
  uVar12 = 0;
  if (value != (CONF_VALUE *)0x0) {
    if (value->name != (char *)0x0) {
      CRYPTO_free(value->name);
    }
    if (value->value != (char *)0x0) {
      CRYPTO_free(value->value);
    }
    CRYPTO_free(value);
    uVar12 = 0;
  }
LAB_0065535e:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar12);
}

// ---- FUN_006553b8  @ 0x6553b8
bool FUN_006553b8(CONF *param_1)

{
  if (param_1 != (CONF *)0x0) {
    _CONF_free_data(param_1);
  }
  return param_1 != (CONF *)0x0;
}

// ---- FUN_006553c4  @ 0x6553c4
bool FUN_006553c4(void *param_1)

{
  int iVar1;
  
  iVar1 = FUN_006553b8();
  if (iVar1 != 0) {
    CRYPTO_free(param_1);
  }
  return iVar1 != 0;
}

// ---- FUN_006553d8  @ 0x6553d8
void FUN_006553d8(undefined4 *param_1,BIO *param_2)

{
  if (param_1[1] != 0) {
    BIO_printf(param_2,"[%s] %s=%s\n",*param_1,param_1[1],param_1[2],param_2);
    return;
  }
  BIO_printf(param_2,"[[%s]]\n",*param_1);
  return;
}

// ---- FUN_00655908  @ 0x655908
undefined4 * FUN_00655908(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *data;
  char *pcVar1;
  int iVar2;
  
  if (DAT_00966918 == (_STACK *)0x0) {
    DAT_00966918 = sk_new_null();
  }
  data = (undefined4 *)0x0;
  if ((DAT_00966918 != (_STACK *)0x0) &&
     (data = CRYPTO_malloc(0x18,"jni/../../openssl-android/crypto/conf/conf_mod.c",299),
     data != (undefined4 *)0x0)) {
    *data = param_1;
    pcVar1 = BUF_strdup(param_2);
    data[2] = param_3;
    data[3] = param_4;
    data[4] = 0;
    data[1] = pcVar1;
    iVar2 = sk_push(DAT_00966918,data);
    if (iVar2 == 0) {
      CRYPTO_free(data);
      data = (undefined4 *)0x0;
    }
  }
  return data;
}

// ---- FUN_0065bfba  @ 0x65bfba
void FUN_0065bfba(BIGNUM *param_1,uint *param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  if (param_1 != (BIGNUM *)0x0) {
    uVar3 = *param_2;
    iVar1 = BN_num_bits(param_1);
    iVar2 = iVar1 + 7;
    if (iVar1 + 7 < 0) {
      iVar2 = iVar1 + 0xe;
    }
    if (uVar3 < (uint)(iVar2 >> 3)) {
      *param_2 = iVar2 >> 3;
    }
  }
  return;
}

// ---- FUN_0065c56c  @ 0x65c56c
undefined4 FUN_0065c56c(int param_1,undefined4 *param_2)

{
  DH *pDVar1;
  undefined4 uVar2;
  
  if (param_1 == 0) {
    pDVar1 = DH_new();
    *param_2 = pDVar1;
    if (pDVar1 == (DH *)0x0) {
      uVar2 = 0;
    }
    else {
      uVar2 = 2;
    }
    return uVar2;
  }
  if (param_1 != 2) {
    return 1;
  }
  DH_free((DH *)*param_2);
  *param_2 = 0;
  return 2;
}

// ---- FUN_0065c894  @ 0x65c894
int FUN_0065c894(uchar *param_1,BIGNUM *param_2,DH *param_3)

{
  int iVar1;
  BN_CTX *ctx;
  BIGNUM *r;
  BN_MONT_CTX *m_ctx;
  uint extraout_r2;
  uint uVar2;
  BIGNUM *pBVar3;
  bool bVar4;
  int line;
  int local_24 [2];
  
  iVar1 = BN_num_bits(param_3->p);
  if (10000 < iVar1) {
    ERR_put_error(5,0x66,0x67,"jni/../../openssl-android/crypto/dh/dh_key.c",0xd5);
    return -1;
  }
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    return -1;
  }
  BN_CTX_start(ctx);
  r = BN_CTX_get(ctx);
  if (param_3->priv_key == (BIGNUM *)0x0) {
    line = 0xe0;
    iVar1 = 100;
LAB_0065c95e:
    ERR_put_error(5,0x66,iVar1,"jni/../../openssl-android/crypto/dh/dh_key.c",line);
  }
  else {
    m_ctx = (BN_MONT_CTX *)0x0;
    if ((param_3->flags & 1U) == 0) {
LAB_0065c91a:
      iVar1 = DH_check_pub_key(param_3,param_2,local_24);
      if ((iVar1 == 0) || (local_24[0] != 0)) {
        line = 0xf3;
        iVar1 = 0x66;
      }
      else {
        iVar1 = (*param_3->meth->bn_mod_exp)
                          (param_3,r,param_2,param_3->priv_key,param_3->p,ctx,m_ctx);
        if (iVar1 != 0) {
          iVar1 = BN_bn2bin(r,param_1);
          goto LAB_0065c980;
        }
        line = 0xf9;
        iVar1 = 3;
      }
      goto LAB_0065c95e;
    }
    m_ctx = BN_MONT_CTX_set_locked(&param_3->method_mont_p,0x1a,param_3->p,ctx);
    pBVar3 = (BIGNUM *)(param_3->flags << 0x1e);
    bVar4 = -1 < (int)pBVar3;
    uVar2 = extraout_r2;
    if (bVar4) {
      pBVar3 = param_3->priv_key;
      uVar2 = pBVar3->flags | 4;
    }
    if (bVar4) {
      pBVar3->flags = uVar2;
    }
    if (m_ctx != (BN_MONT_CTX *)0x0) goto LAB_0065c91a;
  }
  iVar1 = -1;
LAB_0065c980:
  BN_CTX_end(ctx);
  BN_CTX_free(ctx);
  return iVar1;
}

// ---- FUN_0065c9a0  @ 0x65c9a0
undefined4 FUN_0065c9a0(int param_1)

{
  bool bVar1;
  BN_CTX *ctx;
  BN_MONT_CTX *pBVar2;
  int iVar3;
  BIGNUM *pBVar4;
  BIGNUM *rnd;
  BIGNUM *a;
  undefined4 uVar5;
  BIGNUM local_34;
  
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    rnd = (BIGNUM *)0x0;
    a = (BIGNUM *)0x0;
  }
  else {
    rnd = *(BIGNUM **)(param_1 + 0x18);
    if (rnd == (BIGNUM *)0x0) {
      rnd = BN_new();
      if (rnd == (BIGNUM *)0x0) {
        a = (BIGNUM *)0x0;
        goto LAB_0065ca9a;
      }
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    a = *(BIGNUM **)(param_1 + 0x14);
    if (((a != (BIGNUM *)0x0) || (a = BN_new(), a != (BIGNUM *)0x0)) &&
       ((pBVar2 = (BN_MONT_CTX *)0x0, (*(uint *)(param_1 + 0x1c) & 1) == 0 ||
        (pBVar2 = BN_MONT_CTX_set_locked
                            ((BN_MONT_CTX **)(param_1 + 0x20),0x1a,*(BIGNUM **)(param_1 + 8),ctx),
        pBVar2 != (BN_MONT_CTX *)0x0)))) {
      if (bVar1) {
        if (*(int *)(param_1 + 0x24) == 0) {
          iVar3 = *(int *)(param_1 + 0x10);
          if (iVar3 == 0) {
            iVar3 = BN_num_bits(*(BIGNUM **)(param_1 + 8));
            iVar3 = iVar3 + -1;
          }
          iVar3 = BN_rand(rnd,iVar3,0,0);
          if (iVar3 == 0) goto LAB_0065ca9a;
        }
        else {
          do {
            iVar3 = BN_rand_range(rnd,*(BIGNUM **)(param_1 + 0x24));
            if (iVar3 == 0) goto LAB_0065ca9a;
          } while ((rnd->top == 0) || (((rnd->top == 1 && (*rnd->d == 1)) && (rnd->neg == 0))));
        }
      }
      pBVar4 = rnd;
      if (-1 < *(int *)(param_1 + 0x1c) << 0x1e) {
        BN_init(&local_34);
        local_34.d = rnd->d;
        local_34.top = rnd->top;
        local_34.dmax = rnd->dmax;
        local_34.neg = rnd->neg;
        local_34.flags = rnd->flags & 0xfffffffeU | local_34.flags & 1U | 6;
        pBVar4 = &local_34;
      }
      iVar3 = (**(code **)(*(int *)(param_1 + 0x44) + 0xc))
                        (param_1,a,*(undefined4 *)(param_1 + 0xc),pBVar4,
                         *(undefined4 *)(param_1 + 8),ctx,pBVar2);
      if (iVar3 != 0) {
        *(BIGNUM **)(param_1 + 0x14) = a;
        uVar5 = 1;
        *(BIGNUM **)(param_1 + 0x18) = rnd;
        goto LAB_0065caae;
      }
    }
  }
LAB_0065ca9a:
  uVar5 = 0;
  ERR_put_error(5,0x67,3,"jni/../../openssl-android/crypto/dh/dh_key.c",0xc3);
LAB_0065caae:
  if ((a != (BIGNUM *)0x0) && (*(int *)(param_1 + 0x14) == 0)) {
    BN_free(a);
  }
  if ((rnd != (BIGNUM *)0x0) && (*(int *)(param_1 + 0x18) == 0)) {
    BN_free(rnd);
  }
  BN_CTX_free(ctx);
  return uVar5;
}

// ---- FUN_0065cad8  @ 0x65cad8
void FUN_0065cad8(int param_1,BIGNUM *param_2,BIGNUM *param_3,BIGNUM *param_4,BIGNUM *param_5,
                 BN_CTX *param_6,BN_MONT_CTX *param_7)

{
  if ((param_3->top == 1) && ((*(uint *)(param_1 + 0x1c) & 2) != 0)) {
    BN_mod_exp_mont_word(param_2,*param_3->d,param_4,param_5,param_6,param_7);
    return;
  }
  BN_mod_exp_mont(param_2,param_3,param_4,param_5,param_6,param_7);
  return;
}

// ---- FUN_0065cd30  @ 0x65cd30
int FUN_0065cd30(int param_1,EVP_PKEY *param_2)

{
  DH *dh;
  int iVar1;
  BN_GENCB *cb;
  int *piVar2;
  BN_GENCB BStack_24;
  
  piVar2 = *(int **)(param_1 + 0x14);
  cb = (BN_GENCB *)0x0;
  if (*(int *)(param_1 + 0x1c) != 0) {
    evp_pkey_set_cb_translate(&BStack_24,param_1);
    cb = &BStack_24;
  }
  dh = DH_new();
  if (dh == (DH *)0x0) {
    iVar1 = 0;
  }
  else {
    iVar1 = DH_generate_parameters_ex(dh,*piVar2,piVar2[1],cb);
    if (iVar1 == 0) {
      DH_free(dh);
    }
    else {
      EVP_PKEY_assign(param_2,0x1c,dh);
    }
  }
  return iVar1;
}

// ---- FUN_0065ceea  @ 0x65ceea
void FUN_0065ceea(BIGNUM *param_1,uint *param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  if (param_1 != (BIGNUM *)0x0) {
    uVar3 = *param_2;
    iVar1 = BN_num_bits(param_1);
    iVar2 = iVar1 + 7;
    if (iVar1 + 7 < 0) {
      iVar2 = iVar1 + 0xe;
    }
    if (uVar3 < (uint)(iVar2 >> 3)) {
      *param_2 = iVar2 >> 3;
    }
  }
  return;
}

// ---- FUN_0065cf0c  @ 0x65cf0c
uint FUN_0065cf0c(BIO *param_1,undefined4 param_2,ASN1_STRING *param_3,int param_4)

{
  int iVar1;
  DSA_SIG *a;
  uchar *buf;
  uint uVar2;
  uchar *local_28;
  int local_24 [2];
  
  if (param_3 == (ASN1_STRING *)0x0) {
    iVar1 = BIO_puts(param_1,"\n");
    uVar2 = (uint)(0 < iVar1);
  }
  else {
    local_28 = param_3->data;
    a = d2i_DSA_SIG((DSA_SIG **)0x0,&local_28,param_3->length);
    if (a == (DSA_SIG *)0x0) {
      uVar2 = X509_signature_dump(param_1,param_3,param_4);
    }
    else {
      uVar2 = 0;
      local_24[0] = 0;
      FUN_0065ceea(a->r,local_24);
      FUN_0065ceea(a->s,local_24);
      buf = CRYPTO_malloc(local_24[0] + 10,"jni/../../openssl-android/crypto/dsa/dsa_ameth.c",0x237)
      ;
      if (buf == (uchar *)0x0) {
        ERR_put_error(10,0x7d,0x41,"jni/../../openssl-android/crypto/dsa/dsa_ameth.c",0x23a);
        uVar2 = 0;
      }
      else {
        iVar1 = BIO_write(param_1,&DAT_0080c516,1);
        if (iVar1 == 1) {
          iVar1 = ASN1_bn_print(param_1,"r:   ",a->r,buf,param_4);
          uVar2 = 0;
          if (iVar1 != 0) {
            iVar1 = ASN1_bn_print(param_1,"s:   ",a->s,buf,param_4);
            uVar2 = (uint)(iVar1 != 0);
          }
        }
        CRYPTO_free(buf);
      }
      DSA_SIG_free(a);
    }
  }
  return uVar2;
}

// ---- FUN_0065d73e  @ 0x65d73e
int FUN_0065d73e(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = BN_cmp(*(BIGNUM **)(*(int *)(param_1 + 0x14) + 0xc),
                 *(BIGNUM **)(*(int *)(param_2 + 0x14) + 0xc));
  if (iVar1 != 0) {
    return 0;
  }
  iVar1 = BN_cmp(*(BIGNUM **)(*(int *)(param_1 + 0x14) + 0x10),
                 *(BIGNUM **)(*(int *)(param_2 + 0x14) + 0x10));
  if (iVar1 == 0) {
    uVar2 = BN_cmp(*(BIGNUM **)(*(int *)(param_1 + 0x14) + 0x14),
                   *(BIGNUM **)(*(int *)(param_2 + 0x14) + 0x14));
    iVar1 = 1 - uVar2;
    if (1 < uVar2) {
      iVar1 = 0;
    }
    return iVar1;
  }
  return 0;
}

// ---- FUN_0065d780  @ 0x65d780
undefined8 FUN_0065d780(EVP_PKEY *param_1,uchar **param_2,long param_3)

{
  DSA *key;
  EVP_PKEY *pEVar1;
  
  pEVar1 = param_1;
  key = d2i_DSAparams((DSA **)0x0,param_2,param_3);
  if (key != (DSA *)0x0) {
    EVP_PKEY_assign(param_1,0x74,key);
  }
  else {
    pEVar1 = (EVP_PKEY *)0x1f0;
    ERR_put_error(10,0x77,10,"jni/../../openssl-android/crypto/dsa/dsa_ameth.c",0x1f0);
  }
  return CONCAT44(pEVar1,(uint)(key != (DSA *)0x0));
}

// ---- FUN_0065d7e8  @ 0x65d7e8
undefined8 FUN_0065d7e8(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
  uVar1 = 1;
  if (param_1 == 0) {
    puVar2 = CRYPTO_malloc(8,"jni/../../openssl-android/crypto/dsa/dsa_asn1.c",0x48);
    if (puVar2 == (undefined4 *)0x0) {
      param_1 = 0x4b;
      ERR_put_error(10,0x72,0x41,"jni/../../openssl-android/crypto/dsa/dsa_asn1.c",0x4b);
      uVar1 = 0;
    }
    else {
      *puVar2 = 0;
      puVar2[1] = 0;
      *param_2 = puVar2;
      uVar1 = 2;
    }
  }
  return CONCAT44(param_1,uVar1);
}

// ---- FUN_0065e234  @ 0x65e234
undefined4 FUN_0065e234(uchar *param_1,int param_2,undefined4 *param_3,int param_4)

{
  BN_CTX *ctx;
  BIGNUM *pBVar1;
  BN_MONT_CTX *m_ctx;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  int iVar5;
  BIGNUM BStack_64;
  BIGNUM BStack_50;
  BIGNUM BStack_3c;
  
  if (((*(int *)(param_4 + 0xc) == 0) || (*(BIGNUM **)(param_4 + 0x10) == (BIGNUM *)0x0)) ||
     (*(int *)(param_4 + 0x14) == 0)) {
    iVar5 = 0x14e;
    iVar2 = 0x65;
LAB_0065e290:
    ERR_put_error(10,0x71,iVar2,"jni/../../openssl-android/crypto/dsa/dsa_ossl.c",iVar5);
    return 0xffffffff;
  }
  iVar2 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
  if ((iVar2 != 0xe0 && iVar2 != 0xa0) && (iVar2 != 0x100)) {
    iVar5 = 0x156;
    iVar2 = 0x66;
    goto LAB_0065e290;
  }
  iVar5 = BN_num_bits(*(BIGNUM **)(param_4 + 0xc));
  if (10000 < iVar5) {
    iVar5 = 0x15c;
    iVar2 = 0x67;
    goto LAB_0065e290;
  }
  BN_init(&BStack_64);
  BN_init(&BStack_50);
  BN_init(&BStack_3c);
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) goto LAB_0065e41e;
  pBVar1 = (BIGNUM *)*param_3;
  if (pBVar1->top == 0) {
LAB_0065e41a:
    uVar3 = 0;
LAB_0065e3e4:
    ERR_put_error(10,0x71,3,"jni/../../openssl-android/crypto/dsa/dsa_ossl.c",0x19a);
    if (ctx == (BN_CTX *)0x0) goto LAB_0065e400;
  }
  else {
    if (pBVar1->neg != 0) {
LAB_0065e3e0:
      uVar3 = 0;
      goto LAB_0065e3e4;
    }
    iVar5 = BN_ucmp(pBVar1,*(BIGNUM **)(param_4 + 0x10));
    uVar3 = 0;
    if (-1 < iVar5) goto LAB_0065e3e4;
    pBVar1 = (BIGNUM *)param_3[1];
    if (pBVar1->top == 0) goto LAB_0065e41a;
    if (pBVar1->neg != 0) goto LAB_0065e3e4;
    iVar5 = BN_ucmp(pBVar1,*(BIGNUM **)(param_4 + 0x10));
    if (-1 < iVar5) {
      uVar3 = 0;
      goto LAB_0065e3e4;
    }
    pBVar1 = BN_mod_inverse(&BStack_50,(BIGNUM *)param_3[1],*(BIGNUM **)(param_4 + 0x10),ctx);
    if (pBVar1 == (BIGNUM *)0x0) {
LAB_0065e41e:
      uVar3 = 0xffffffff;
      goto LAB_0065e3e4;
    }
    iVar2 = iVar2 >> 3;
    if (param_2 <= iVar2) {
      iVar2 = param_2;
    }
    pBVar1 = BN_bin2bn(param_1,iVar2,&BStack_64);
    if (((pBVar1 == (BIGNUM *)0x0) ||
        (iVar2 = BN_mod_mul(&BStack_64,&BStack_64,&BStack_50,*(BIGNUM **)(param_4 + 0x10),ctx),
        iVar2 == 0)) ||
       ((iVar2 = BN_mod_mul(&BStack_50,(BIGNUM *)*param_3,&BStack_50,*(BIGNUM **)(param_4 + 0x10),
                            ctx), iVar2 == 0 ||
        ((m_ctx = (BN_MONT_CTX *)0x0, (*(uint *)(param_4 + 0x28) & 1) != 0 &&
         (m_ctx = BN_MONT_CTX_set_locked
                            ((BN_MONT_CTX **)(param_4 + 0x2c),8,*(BIGNUM **)(param_4 + 0xc),ctx),
         m_ctx == (BN_MONT_CTX *)0x0)))))) goto LAB_0065e41e;
    pcVar4 = *(code **)(*(int *)(param_4 + 0x3c) + 0x10);
    if (pcVar4 == (code *)0x0) {
      iVar2 = BN_mod_exp2_mont(&BStack_3c,*(BIGNUM **)(param_4 + 0x14),&BStack_64,
                               *(BIGNUM **)(param_4 + 0x18),&BStack_50,*(BIGNUM **)(param_4 + 0xc),
                               ctx,m_ctx);
    }
    else {
      iVar2 = (*pcVar4)(param_4,&BStack_3c,*(undefined4 *)(param_4 + 0x14),&BStack_64,
                        *(undefined4 *)(param_4 + 0x18),&BStack_50,*(undefined4 *)(param_4 + 0xc),
                        ctx,m_ctx);
    }
    if ((iVar2 == 0) ||
       (iVar2 = BN_div((BIGNUM *)0x0,&BStack_64,&BStack_3c,*(BIGNUM **)(param_4 + 0x10),ctx),
       iVar2 == 0)) goto LAB_0065e41e;
    iVar2 = BN_ucmp(&BStack_64,(BIGNUM *)*param_3);
    uVar3 = 1;
    if (iVar2 != 0) goto LAB_0065e3e0;
  }
  BN_CTX_free(ctx);
LAB_0065e400:
  BN_free(&BStack_64);
  BN_free(&BStack_50);
  BN_free(&BStack_3c);
  return uVar3;
}

// ---- FUN_0065e434  @ 0x65e434
DSA_SIG * FUN_0065e434(uchar *param_1,int param_2,int param_3)

{
  bool bVar1;
  BIGNUM *r;
  BIGNUM *ctx;
  int iVar2;
  int iVar3;
  BIGNUM *pBVar4;
  BIGNUM *pBVar5;
  DSA_SIG *pDVar6;
  BIGNUM *local_58;
  BIGNUM *local_54;
  BIGNUM BStack_50;
  BIGNUM BStack_3c;
  
  local_58 = (BIGNUM *)0x0;
  local_54 = (BIGNUM *)0x0;
  BN_init(&BStack_50);
  BN_init(&BStack_3c);
  if (((*(int *)(param_3 + 0xc) == 0) || (*(int *)(param_3 + 0x10) == 0)) ||
     (*(int *)(param_3 + 0x14) == 0)) {
    r = (BIGNUM *)0x0;
    iVar2 = 0x65;
    ctx = r;
LAB_0065e55a:
    ERR_put_error(10,0x70,iVar2,"jni/../../openssl-android/crypto/dsa/dsa_ossl.c",0xcf);
    BN_free(local_54);
    BN_free(r);
    pDVar6 = (DSA_SIG *)0x0;
    if (ctx == (BIGNUM *)0x0) goto LAB_0065e584;
    pDVar6 = (DSA_SIG *)0x0;
  }
  else {
    r = BN_new();
    if (r == (BIGNUM *)0x0) {
      iVar2 = 3;
      ctx = (BIGNUM *)0x0;
      goto LAB_0065e55a;
    }
    ctx = (BIGNUM *)BN_CTX_new();
    if (ctx == (BIGNUM *)0x0) {
LAB_0065e558:
      iVar2 = 3;
      goto LAB_0065e55a;
    }
    pDVar6 = (DSA_SIG *)0x0;
    do {
      pBVar4 = *(BIGNUM **)(param_3 + 0x20);
      if ((pBVar4 == (BIGNUM *)0x0) ||
         (pBVar5 = *(BIGNUM **)(param_3 + 0x24), pBVar5 == (BIGNUM *)0x0)) {
        iVar2 = (**(code **)(*(int *)(param_3 + 0x3c) + 8))
                          (param_3,ctx,&local_58,&local_54,param_1,param_2);
        if (iVar2 != 0) {
          bVar1 = false;
          goto LAB_0065e4b8;
        }
LAB_0065e552:
        if (pDVar6 == (DSA_SIG *)0x0) goto LAB_0065e558;
        break;
      }
      bVar1 = true;
      *(undefined4 *)(param_3 + 0x20) = 0;
      *(undefined4 *)(param_3 + 0x24) = 0;
      local_58 = pBVar4;
      local_54 = pBVar5;
LAB_0065e4b8:
      iVar3 = BN_num_bits(*(BIGNUM **)(param_3 + 0x10));
      iVar2 = iVar3 + 7;
      if (iVar3 + 7 < 0) {
        iVar2 = iVar3 + 0xe;
      }
      if (iVar2 >> 3 < param_2) {
        iVar2 = BN_num_bits(*(BIGNUM **)(param_3 + 0x10));
        param_2 = iVar2 + 0xe;
        if (-1 < iVar2 + 7) {
          param_2 = iVar2 + 7;
        }
        param_2 = param_2 >> 3;
      }
      pBVar4 = BN_bin2bn(param_1,param_2,&BStack_50);
      if (((pBVar4 == (BIGNUM *)0x0) ||
          (iVar2 = BN_mod_mul(&BStack_3c,*(BIGNUM **)(param_3 + 0x1c),local_54,
                              *(BIGNUM **)(param_3 + 0x10),(BN_CTX *)ctx), iVar2 == 0)) ||
         ((iVar2 = BN_add(r,&BStack_3c,&BStack_50), iVar2 == 0 ||
          (((iVar2 = BN_cmp(r,*(BIGNUM **)(param_3 + 0x10)), 0 < iVar2 &&
            (iVar2 = BN_sub(r,r,*(BIGNUM **)(param_3 + 0x10)), iVar2 == 0)) ||
           (iVar2 = BN_mod_mul(r,r,local_58,*(BIGNUM **)(param_3 + 0x10),(BN_CTX *)ctx), iVar2 == 0)
           ))))) goto LAB_0065e552;
      pDVar6 = DSA_SIG_new();
      if (pDVar6 == (DSA_SIG *)0x0) goto LAB_0065e558;
      if ((local_54->top != 0) && (r->top != 0)) {
        pDVar6->r = local_54;
        pDVar6->s = r;
        break;
      }
    } while (!bVar1);
  }
  BN_CTX_free((BN_CTX *)ctx);
LAB_0065e584:
  BN_clear_free(&BStack_50);
  BN_clear_free(&BStack_3c);
  if (local_58 != (BIGNUM *)0x0) {
    BN_clear_free(local_58);
  }
  return pDVar6;
}

// ---- FUN_0065e5b0  @ 0x65e5b0
undefined4
FUN_0065e5b0(int param_1,BN_CTX *param_2,undefined4 *param_3,undefined4 *param_4,undefined4 param_5,
            undefined4 param_6)

{
  undefined1 *puVar1;
  undefined4 uVar2;
  BN_CTX *ctx;
  BIGNUM *r;
  int iVar3;
  BN_MONT_CTX *pBVar4;
  BIGNUM *pBVar5;
  int iVar6;
  undefined4 uVar7;
  code *pcVar8;
  BIGNUM BStack_50;
  BIGNUM BStack_3c;
  
  uVar2 = param_6;
  uVar7 = param_5;
  if (((*(int *)(param_1 + 0xc) == 0) || (*(int *)(param_1 + 0x10) == 0)) ||
     (*(int *)(param_1 + 0x14) == 0)) {
    ERR_put_error(10,0x6b,0x65,"jni/../../openssl-android/crypto/dsa/dsa_ossl.c",0xe5);
    return 0;
  }
  BN_init(&BStack_50);
  BN_init(&BStack_3c);
  ctx = param_2;
  if ((param_2 == (BN_CTX *)0x0) && (ctx = BN_CTX_new(), ctx == (BN_CTX *)0x0)) {
    r = (BIGNUM *)0x0;
  }
  else {
    r = BN_new();
    if (r != (BIGNUM *)0x0) {
      do {
        if (*(int *)(param_1 + 0x28) << 0x1d < 0) {
          iVar3 = BN_generate_dsa_nonce
                            (&BStack_50,*(undefined4 *)(param_1 + 0x10),
                             *(undefined4 *)(param_1 + 0x1c),uVar7,uVar2,ctx);
        }
        else {
          iVar3 = BN_rand_range(&BStack_50,*(BIGNUM **)(param_1 + 0x10));
        }
        if (iVar3 == 0) goto LAB_0065e716;
      } while (BStack_50.top == 0);
      if (-1 < *(int *)(param_1 + 0x28) << 0x1e) {
        BStack_50.flags = BStack_50.flags | 4;
      }
      if ((-1 < *(int *)(param_1 + 0x28) << 0x1f) ||
         (pBVar4 = BN_MONT_CTX_set_locked
                             ((BN_MONT_CTX **)(param_1 + 0x2c),8,*(BIGNUM **)(param_1 + 0xc),ctx),
         pBVar4 != (BN_MONT_CTX *)0x0)) {
        if (*(int *)(param_1 + 0x28) << 0x1e < 0) {
          puVar1 = &stack0xffffffec;
LAB_0065e6a8:
          pcVar8 = *(code **)(*(int *)(param_1 + 0x3c) + 0x14);
          if (pcVar8 == (code *)0x0) {
            iVar3 = BN_mod_exp_mont(r,*(BIGNUM **)(param_1 + 0x14),(BIGNUM *)(puVar1 + -0x3c),
                                    *(BIGNUM **)(param_1 + 0xc),ctx,
                                    *(BN_MONT_CTX **)(param_1 + 0x2c));
          }
          else {
            iVar3 = (*pcVar8)(param_1,r,*(undefined4 *)(param_1 + 0x14),(BIGNUM *)(puVar1 + -0x3c),
                              *(undefined4 *)(param_1 + 0xc),ctx,*(BN_MONT_CTX **)(param_1 + 0x2c));
          }
          if (((iVar3 != 0) &&
              (iVar3 = BN_div((BIGNUM *)0x0,r,r,*(BIGNUM **)(param_1 + 0x10),ctx), iVar3 != 0)) &&
             (pBVar5 = BN_mod_inverse((BIGNUM *)0x0,&BStack_50,*(BIGNUM **)(param_1 + 0x10),ctx),
             pBVar5 != (BIGNUM *)0x0)) {
            if ((BIGNUM *)*param_3 != (BIGNUM *)0x0) {
              BN_clear_free((BIGNUM *)*param_3);
            }
            *param_3 = pBVar5;
            if ((BIGNUM *)*param_4 != (BIGNUM *)0x0) {
              BN_clear_free((BIGNUM *)*param_4);
            }
            *param_4 = r;
            uVar7 = 1;
            goto LAB_0065e734;
          }
        }
        else {
          pBVar5 = BN_copy(&BStack_3c,&BStack_50);
          if ((pBVar5 != (BIGNUM *)0x0) &&
             (iVar3 = BN_add(&BStack_3c,&BStack_3c,*(BIGNUM **)(param_1 + 0x10)), iVar3 != 0)) {
            iVar3 = BN_num_bits(&BStack_3c);
            iVar6 = BN_num_bits(*(BIGNUM **)(param_1 + 0x10));
            puVar1 = (undefined1 *)register0x00000054;
            if ((iVar6 < iVar3) ||
               (iVar3 = BN_add(&BStack_3c,&BStack_3c,*(BIGNUM **)(param_1 + 0x10)), iVar3 != 0))
            goto LAB_0065e6a8;
          }
        }
      }
    }
  }
LAB_0065e716:
  ERR_put_error(10,0x6b,3,"jni/../../openssl-android/crypto/dsa/dsa_ossl.c",0x13b);
  uVar7 = 0;
  if (r != (BIGNUM *)0x0) {
    uVar7 = 0;
    BN_clear_free(r);
  }
LAB_0065e734:
  if (param_2 == (BN_CTX *)0x0) {
    BN_CTX_free(ctx);
  }
  BN_clear_free(&BStack_50);
  BN_clear_free(&BStack_3c);
  return uVar7;
}

// ---- FUN_0065e98c  @ 0x65e98c
int FUN_0065e98c(int param_1,EVP_PKEY *param_2)

{
  DSA *r;
  int iVar1;
  undefined4 *puVar2;
  undefined1 *puVar3;
  undefined1 auStack_24 [16];
  
  puVar2 = *(undefined4 **)(param_1 + 0x14);
  puVar3 = (undefined1 *)0x0;
  if (*(int *)(param_1 + 0x1c) != 0) {
    evp_pkey_set_cb_translate(auStack_24,param_1);
    puVar3 = auStack_24;
  }
  r = DSA_new();
  if (r == (DSA *)0x0) {
    iVar1 = 0;
  }
  else {
    iVar1 = dsa_builtin_paramgen(r,*puVar2,puVar2[1],puVar2[2],0,0,0,0,0,puVar3);
    if (iVar1 == 0) {
      DSA_free(r);
    }
    else {
      EVP_PKEY_assign(param_2,0x74,r);
    }
  }
  return iVar1;
}

// ---- FUN_0065f758  @ 0x65f758
int FUN_0065f758(EC_GROUP *param_1,EC_POINT *param_2,int *param_3,EC_POINT *param_4,BN_CTX *param_5)

{
  int iVar1;
  BIGNUM *pBVar2;
  BIGNUM *a;
  BIGNUM *pBVar3;
  BIGNUM *pBVar4;
  BIGNUM *pBVar5;
  uint uVar6;
  uint uVar7;
  BIGNUM *b;
  BIGNUM *a_00;
  int iVar8;
  BIGNUM *a_01;
  bool bVar9;
  uint local_54;
  int local_50;
  int local_38;
  
  if (param_2 == param_4) {
    ERR_put_error(0x10,0xd0,0x70,"jni/../../openssl-android/crypto/ec/ec2_mult.c",0xe6);
    return 0;
  }
  if (param_3 == (int *)0x0) {
LAB_0065f7a8:
    iVar1 = EC_POINT_set_to_infinity(param_1,param_2);
    return iVar1;
  }
  uVar7 = 1 - param_3[1];
  if (1 < (uint)param_3[1]) {
    uVar7 = 0;
  }
  if (param_4 == (EC_POINT *)0x0) {
    uVar7 = uVar7 | 1;
  }
  if ((uVar7 != 0) || (iVar1 = EC_POINT_is_at_infinity(param_1,param_4), iVar1 != 0))
  goto LAB_0065f7a8;
  if (*(int *)(param_4 + 0x40) == 0) {
    return 0;
  }
  BN_CTX_start(param_5);
  pBVar2 = BN_CTX_get(param_5);
  a = BN_CTX_get(param_5);
  iVar1 = 0;
  if (a == (BIGNUM *)0x0) goto LAB_0065fcd2;
  a_01 = (BIGNUM *)(param_2 + 4);
  a_00 = (BIGNUM *)(param_2 + 0x18);
  if (pBVar2->dmax < *(int *)(param_1 + 0x4c)) {
    bn_expand2(pBVar2,*(int *)(param_1 + 0x4c));
  }
  if (a->dmax < *(int *)(param_1 + 0x4c)) {
    bn_expand2(a,*(int *)(param_1 + 0x4c));
  }
  if (*(int *)(param_2 + 0xc) < *(int *)(param_1 + 0x4c)) {
    bn_expand2(a_01,*(int *)(param_1 + 0x4c));
  }
  if (*(int *)(param_2 + 0x20) < *(int *)(param_1 + 0x4c)) {
    bn_expand2(a_00,*(int *)(param_1 + 0x4c));
  }
  b = (BIGNUM *)(param_4 + 4);
  iVar1 = BN_GF2m_mod_arr(pBVar2,b,param_1 + 0x5c);
  if ((((iVar1 != 0) && (iVar1 = BN_set_word(a,1), iVar1 != 0)) &&
      (iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,a_00,pBVar2,param_5), iVar1 != 0)) &&
     (iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,a_01,a_00,param_5), iVar1 != 0)) {
    iVar1 = BN_GF2m_add(a_01,a_01,param_1 + 0x88);
    if (iVar1 != 0) {
      local_50 = param_3[1] + -1;
      local_54 = 0x80000000;
      do {
        uVar7 = local_54 & *(uint *)(*param_3 + local_50 * 4);
        local_54 = local_54 >> 1;
      } while (uVar7 == 0);
      if (local_54 == 0) {
        local_50 = param_3[1] + -2;
        local_54 = 0x80000000;
      }
      local_38 = local_50 << 2;
      for (; -1 < local_50; local_50 = local_50 + -1) {
        uVar7 = *(uint *)(*param_3 + local_38);
        do {
          uVar6 = local_54 & uVar7;
          BN_consttime_swap(uVar6,pBVar2,a_01,*(undefined4 *)(param_1 + 0x4c));
          BN_consttime_swap(uVar6,a,a_00,*(undefined4 *)(param_1 + 0x4c));
          BN_CTX_start(param_5);
          pBVar3 = BN_CTX_get(param_5);
          pBVar4 = BN_CTX_get(param_5);
          bVar9 = false;
          if (pBVar4 != (BIGNUM *)0x0) {
            pBVar5 = BN_copy(pBVar3,b);
            if ((((pBVar5 == (BIGNUM *)0x0) ||
                 (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_01,a_01,a,param_5),
                 iVar1 == 0)) ||
                ((iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_00,a_00,pBVar2,param_5),
                 iVar1 == 0 ||
                 ((iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,pBVar4,a_01,a_00,param_5),
                  iVar1 == 0 || (iVar1 = BN_GF2m_add(a_00,a_00,a_01), iVar1 == 0)))))) ||
               ((iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,a_00,a_00,param_5),
                iVar1 == 0 ||
                (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_01,a_00,pBVar3,param_5),
                iVar1 == 0)))) {
              bVar9 = false;
            }
            else {
              iVar1 = BN_GF2m_add(a_01,a_01,pBVar4);
              bVar9 = iVar1 != 0;
            }
          }
          BN_CTX_end(param_5);
          iVar1 = 0;
          if (!bVar9) goto LAB_0065fcd2;
          BN_CTX_start(param_5);
          pBVar3 = BN_CTX_get(param_5);
          bVar9 = false;
          if (pBVar3 != (BIGNUM *)0x0) {
            iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,pBVar2,pBVar2,param_5);
            if (((((iVar1 == 0) ||
                  (iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,pBVar3,a,param_5),
                  iVar1 == 0)) ||
                 (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a,pBVar2,pBVar3,param_5),
                 iVar1 == 0)) ||
                ((iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,pBVar2,pBVar2,param_5),
                 iVar1 == 0 ||
                 (iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,pBVar3,pBVar3,param_5),
                 iVar1 == 0)))) ||
               (iVar1 = (**(code **)(*(int *)param_1 + 0x84))
                                  (param_1,pBVar3,param_1 + 0x88,pBVar3,param_5), iVar1 == 0)) {
              bVar9 = false;
            }
            else {
              iVar1 = BN_GF2m_add(pBVar2,pBVar2,pBVar3);
              bVar9 = iVar1 != 0;
            }
          }
          BN_CTX_end(param_5);
          iVar1 = 0;
          if (!bVar9) goto LAB_0065fcd2;
          BN_consttime_swap(uVar6,pBVar2,a_01,*(undefined4 *)(param_1 + 0x4c));
          BN_consttime_swap(uVar6,a,a_00,*(undefined4 *)(param_1 + 0x4c));
          local_54 = local_54 >> 1;
        } while (local_54 != 0);
        local_54 = 0x80000000;
        local_38 = local_38 + -4;
      }
      if (a->top == 0) {
        BN_set_word(a_01,0);
        BN_set_word(a_00,0);
LAB_0065fc9a:
        iVar1 = EC_POINT_set_to_infinity(param_1,param_2);
        if (iVar1 != 0) {
LAB_0065fcba:
          BN_set_negative(a_01,0);
          iVar1 = 1;
          BN_set_negative(a_00,0);
          goto LAB_0065fcd2;
        }
      }
      else {
        param_4 = param_4 + 0x18;
        if (*(int *)(param_2 + 0x1c) == 0) {
          pBVar2 = BN_copy(a_01,b);
          if ((pBVar2 == (BIGNUM *)0x0) || (iVar1 = BN_GF2m_add(a_00,b,param_4), iVar1 == 0)) {
            iVar1 = 0;
            goto LAB_0065fcd2;
          }
        }
        else {
          BN_CTX_start(param_5);
          pBVar3 = BN_CTX_get(param_5);
          pBVar4 = BN_CTX_get(param_5);
          pBVar5 = BN_CTX_get(param_5);
          if (pBVar5 == (BIGNUM *)0x0) {
            iVar8 = 0;
          }
          else {
            iVar1 = BN_set_word(pBVar5,1);
            if (((iVar1 != 0) &&
                (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,pBVar3,a,a_00,param_5),
                iVar1 != 0)) &&
               ((iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a,a,b,param_5), iVar1 != 0 &&
                ((iVar1 = BN_GF2m_add(a,a,pBVar2), iVar1 != 0 &&
                 (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_00,a_00,b,param_5),
                 iVar1 != 0)))))) {
              iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,pBVar2,a_00,pBVar2,param_5);
              if (iVar1 == 0) {
LAB_0065fc80:
                iVar8 = 0;
                goto LAB_0065fc88;
              }
              iVar1 = BN_GF2m_add(a_00,a_00,a_01);
              if ((((iVar1 != 0) &&
                   (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_00,a_00,a,param_5),
                   iVar1 != 0)) &&
                  (iVar1 = (**(code **)(*(int *)param_1 + 0x88))(param_1,pBVar4,b,param_5),
                  iVar1 != 0)) &&
                 (((iVar1 = BN_GF2m_add(pBVar4,pBVar4,param_4), iVar1 != 0 &&
                   (iVar1 = (**(code **)(*(int *)param_1 + 0x84))
                                      (param_1,pBVar4,pBVar4,pBVar3,param_5), iVar1 != 0)) &&
                  (((iVar1 = BN_GF2m_add(pBVar4,pBVar4,a_00), iVar1 != 0 &&
                    ((iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,pBVar3,pBVar3,b,param_5)
                     , iVar1 != 0 &&
                     (iVar1 = (**(code **)(*(int *)param_1 + 0x8c))
                                        (param_1,pBVar3,pBVar5,pBVar3,param_5), iVar1 != 0)))) &&
                   (iVar1 = (**(code **)(*(int *)param_1 + 0x84))
                                      (param_1,pBVar4,pBVar3,pBVar4,param_5), iVar1 != 0)))))) {
                iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_01,pBVar2,pBVar3,param_5);
                if (iVar1 == 0) goto LAB_0065fc80;
                iVar1 = BN_GF2m_add(a_00,a_01,b);
                if ((iVar1 != 0) &&
                   (iVar1 = (**(code **)(*(int *)param_1 + 0x84))(param_1,a_00,a_00,pBVar4,param_5),
                   iVar1 != 0)) {
                  iVar1 = BN_GF2m_add(a_00,a_00,param_4);
                  if (iVar1 == 0) {
                    iVar8 = 0;
                  }
                  else {
                    iVar8 = 2;
                  }
                  goto LAB_0065fc88;
                }
              }
            }
            iVar8 = 0;
          }
LAB_0065fc88:
          BN_CTX_end(param_5);
          iVar1 = 0;
          if (iVar8 == 0) goto LAB_0065fcd2;
          if (iVar8 == 1) goto LAB_0065fc9a;
        }
        iVar1 = BN_set_word((BIGNUM *)(param_2 + 0x2c),1);
        if (iVar1 != 0) {
          *(undefined4 *)(param_2 + 0x40) = 1;
          goto LAB_0065fcba;
        }
      }
    }
  }
  iVar1 = 0;
LAB_0065fcd2:
  BN_CTX_end(param_5);
  return iVar1;
}
