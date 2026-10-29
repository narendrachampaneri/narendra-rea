// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 47 functions

// ---- FUN_006801c0  @ 0x6801c0
uint FUN_006801c0(undefined4 *param_1)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte *pbVar5;
  
  pbVar5 = (byte *)*param_1;
  bVar1 = pbVar5[2];
  bVar2 = pbVar5[1];
  bVar3 = *pbVar5;
  bVar4 = pbVar5[3];
  *param_1 = pbVar5 + 4;
  return (uint)bVar1 << 0x10 | (uint)bVar2 << 8 | (uint)bVar3 | (uint)bVar4 << 0x18;
}

// ---- FUN_006801e0  @ 0x6801e0
int FUN_006801e0(int param_1,int param_2,int param_3)

{
  uint uVar1;
  
  uVar1 = param_1 + 7U >> 3;
  if (param_2 == 0) {
    if (param_3 != 0) {
      return uVar1 + 4;
    }
    return (param_1 + 0xfU >> 4) * 5 + (uVar1 + 2) * 2;
  }
  if (param_3 != 0) {
    return uVar1 * 3 + 0x2c;
  }
  return (uVar1 + 0x20) * 2;
}

// ---- FUN_0068020e  @ 0x68020e
void FUN_0068020e(undefined4 *param_1,undefined4 param_2)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)*param_1;
  *puVar1 = (char)param_2;
  puVar1[1] = (char)((uint)param_2 >> 8);
  puVar1[2] = (char)((uint)param_2 >> 0x10);
  puVar1[3] = (char)((uint)param_2 >> 0x18);
  *param_1 = puVar1 + 4;
  return;
}

// ---- FUN_00680224  @ 0x680224
undefined4
FUN_00680224(undefined4 *param_1,uint param_2,uint *param_3,undefined4 *param_4,undefined4 *param_5,
            int *param_6)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  char *local_24 [2];
  
  local_24[0] = (char *)*param_1;
  if (param_2 < 0x10) {
    return 0;
  }
  if (*local_24[0] == '\x06') {
    if (*param_6 != 0) {
      *param_6 = 1;
      goto LAB_0068027c;
    }
    iVar3 = 0x98;
  }
  else {
    if (*local_24[0] != '\a') {
      return 0;
    }
    if (*param_6 == 1) {
      iVar3 = 0xa2;
      iVar4 = 0x78;
      goto LAB_00680276;
    }
    *param_6 = 0;
LAB_0068027c:
    if (local_24[0][1] != '\x02') {
      iVar3 = 0xad;
      iVar4 = 0x75;
      local_24[0] = local_24[0] + 2;
LAB_0068030e:
      ERR_put_error(9,0x86,iVar4,"jni/../../openssl-android/crypto/pem/pvkfmt.c",iVar3);
      return 0;
    }
    local_24[0] = local_24[0] + 8;
    uVar1 = FUN_006801c0(local_24);
    *param_3 = uVar1;
    uVar2 = FUN_006801c0(local_24);
    *param_4 = uVar2;
    *param_5 = 0;
    uVar1 = *param_3;
    if (uVar1 == 0x31535344) {
      *param_5 = 1;
    }
    else {
      if (0x31535344 < uVar1) {
        if (uVar1 != 0x32415352) {
          if (uVar1 != 0x32535344) goto LAB_00680314;
          *param_5 = 1;
        }
        if (*param_6 == 1) {
          iVar3 = 0xc9;
          iVar4 = 0x78;
          goto LAB_0068030e;
        }
        goto LAB_0068032c;
      }
      if (uVar1 != 0x31415352) {
LAB_00680314:
        ERR_put_error(9,0x86,0x74,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0xcf);
        return 0xffffffff;
      }
    }
    if (*param_6 != 0) {
LAB_0068032c:
      *param_1 = local_24[0];
      return 1;
    }
    iVar3 = 0xbe;
  }
  iVar4 = 0x77;
LAB_00680276:
  ERR_put_error(9,0x86,iVar4,"jni/../../openssl-android/crypto/pem/pvkfmt.c",iVar3);
  return 0;
}

// ---- FUN_00680368  @ 0x680368
void FUN_00680368(int *param_1,BIGNUM *param_2,int param_3)

{
  uchar uVar1;
  int iVar2;
  int iVar3;
  uchar *puVar4;
  int iVar5;
  size_t __n;
  uchar *to;
  
  to = (uchar *)*param_1;
  iVar2 = BN_num_bits(param_2);
  iVar3 = iVar2 + 0xe;
  if (-1 < iVar2 + 7) {
    iVar3 = iVar2 + 7;
  }
  BN_bn2bin(param_2,to);
  iVar5 = iVar3 >> 3;
  puVar4 = to + iVar5 + -1;
  for (iVar2 = 0; iVar2 < iVar5 - (iVar3 >> 0x1f) >> 1; iVar2 = iVar2 + 1) {
    uVar1 = to[iVar2];
    to[iVar2] = *puVar4;
    *puVar4 = uVar1;
    puVar4 = puVar4 + -1;
  }
  iVar3 = *param_1;
  *param_1 = iVar3 + iVar5;
  if ((0 < param_3) && (__n = param_3 - iVar5, 0 < (int)__n)) {
    memset((void *)(iVar3 + iVar5),0,__n);
    *param_1 = *param_1 + __n;
  }
  return;
}

// ---- FUN_006803d4  @ 0x6803d4
int FUN_006803d4(int *param_1,int *param_2,int param_3)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined1 uVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  undefined1 *local_2c [2];
  
  if (*param_2 == 0x74) {
    iVar7 = param_2[5];
    uVar2 = BN_num_bits(*(BIGNUM **)(iVar7 + 0xc));
    if ((((uVar2 & 7) == 0) && (iVar3 = BN_num_bits(*(BIGNUM **)(iVar7 + 0x10)), iVar3 == 0xa0)) &&
       (iVar3 = BN_num_bits(*(BIGNUM **)(iVar7 + 0x14)), iVar3 <= (int)uVar2)) {
      if (param_3 == 0) {
        iVar7 = BN_num_bits(*(BIGNUM **)(iVar7 + 0x1c));
        if (0xa0 < iVar7) goto LAB_0068042a;
        uVar8 = 0x32535344;
      }
      else {
        iVar7 = BN_num_bits(*(BIGNUM **)(iVar7 + 0x18));
        if ((int)uVar2 < iVar7) goto LAB_0068042a;
        uVar8 = 0x31535344;
      }
    }
    else {
LAB_0068042a:
      uVar8 = 0;
      ERR_put_error(9,0x82,0x7e,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x23c);
      uVar2 = 0;
    }
    iVar7 = 0x2200;
    goto LAB_0068053c;
  }
  if (*param_2 != 6) {
    return -1;
  }
  iVar3 = param_2[5];
  iVar7 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x14));
  if (iVar7 < 0x21) {
    uVar2 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x10));
    iVar7 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x10));
    iVar9 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x10));
    if (param_3 == 0) {
      iVar4 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x18));
      iVar5 = iVar4 + 7;
      if (iVar4 + 7 < 0) {
        iVar5 = iVar4 + 0xe;
      }
      iVar4 = iVar7 + 7;
      if (iVar7 + 7 < 0) {
        iVar4 = iVar7 + 0xe;
      }
      if (iVar5 >> 3 <= iVar4 >> 3) {
        iVar5 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x2c));
        iVar7 = iVar9 + 0xf >> 4;
        iVar9 = iVar5 + 7;
        if (iVar5 + 7 < 0) {
          iVar9 = iVar5 + 0xe;
        }
        if (iVar9 >> 3 <= iVar7) {
          iVar5 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x1c));
          iVar9 = iVar5 + 7;
          if (iVar5 + 7 < 0) {
            iVar9 = iVar5 + 0xe;
          }
          if (iVar9 >> 3 <= iVar7) {
            iVar5 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x20));
            iVar9 = iVar5 + 7;
            if (iVar5 + 7 < 0) {
              iVar9 = iVar5 + 0xe;
            }
            if (iVar9 >> 3 <= iVar7) {
              iVar5 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x24));
              iVar9 = iVar5 + 7;
              if (iVar5 + 7 < 0) {
                iVar9 = iVar5 + 0xe;
              }
              if (iVar9 >> 3 <= iVar7) {
                iVar9 = BN_num_bits(*(BIGNUM **)(iVar3 + 0x28));
                uVar8 = 0x32415352;
                iVar3 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar3 = iVar9 + 0xe;
                }
                if (iVar7 < iVar3 >> 3) goto LAB_0068051c;
                goto LAB_00680538;
              }
            }
          }
        }
      }
      uVar8 = 0x32415352;
      goto LAB_0068051c;
    }
    uVar8 = 0x31415352;
  }
  else {
    uVar8 = 0;
LAB_0068051c:
    uVar2 = 0;
    ERR_put_error(9,0x83,0x7e,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x25e);
  }
LAB_00680538:
  iVar7 = 0xa400;
LAB_0068053c:
  if (uVar2 == 0) {
    return -1;
  }
  iVar3 = FUN_006801e0(uVar2,iVar7 == 0x2200,param_3);
  iVar3 = iVar3 + 0x10;
  if (param_1 == (int *)0x0) {
    return iVar3;
  }
  local_2c[0] = (undefined1 *)*param_1;
  if (local_2c[0] == (undefined1 *)0x0) {
    local_2c[0] = CRYPTO_malloc(iVar3,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x1ff);
    if (local_2c[0] == (undefined1 *)0x0) {
      return -1;
    }
    bVar1 = true;
    *param_1 = (int)local_2c[0];
  }
  else {
    bVar1 = false;
  }
  uVar6 = 6;
  if (param_3 == 0) {
    uVar6 = 7;
  }
  *local_2c[0] = uVar6;
  local_2c[0][1] = 2;
  local_2c[0][2] = 0;
  local_2c[0][3] = 0;
  local_2c[0] = local_2c[0] + 4;
  FUN_0068020e(local_2c,iVar7);
  FUN_0068020e(local_2c,uVar8);
  FUN_0068020e(local_2c,uVar2);
  iVar9 = param_2[5];
  if (iVar7 == 0x2200) {
    iVar5 = BN_num_bits(*(BIGNUM **)(iVar9 + 0xc));
    iVar7 = iVar5 + 0xe;
    if (-1 < iVar5 + 7) {
      iVar7 = iVar5 + 7;
    }
    iVar7 = iVar7 >> 3;
    FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0xc),iVar7);
    FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x10),0x14);
    FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x14),iVar7);
    if (param_3 == 0) {
      uVar8 = *(undefined4 *)(iVar9 + 0x1c);
      iVar7 = 0x14;
    }
    else {
      uVar8 = *(undefined4 *)(iVar9 + 0x18);
    }
    FUN_00680368(local_2c,uVar8,iVar7);
    memset(local_2c[0],0xff,0x18);
  }
  else {
    iVar7 = BN_num_bits(*(BIGNUM **)(iVar9 + 0x10));
    iVar5 = BN_num_bits(*(BIGNUM **)(iVar9 + 0x10));
    FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x14),4);
    FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x10),0xffffffff);
    if (param_3 == 0) {
      iVar5 = iVar5 + 0xf >> 4;
      FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x1c),iVar5);
      FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x20),iVar5);
      FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x24),iVar5);
      FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x28),iVar5);
      FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x2c),iVar5);
      iVar5 = iVar7 + 0xe;
      if (-1 < iVar7 + 7) {
        iVar5 = iVar7 + 7;
      }
      FUN_00680368(local_2c,*(undefined4 *)(iVar9 + 0x18),iVar5 >> 3);
    }
  }
  if (!bVar1) {
    *param_1 = *param_1 + iVar3;
    return iVar3;
  }
  return iVar3;
}

// ---- FUN_006806fa  @ 0x6806fa
bool FUN_006806fa(uchar *param_1,void *param_2,size_t param_3,void *param_4,size_t param_5)

{
  EVP_MD *type;
  int iVar1;
  bool bVar2;
  EVP_MD_CTX EStack_30;
  
  EVP_MD_CTX_init(&EStack_30);
  type = EVP_sha1();
  iVar1 = EVP_DigestInit_ex(&EStack_30,type,(ENGINE *)0x0);
  if (((iVar1 == 0) || (iVar1 = EVP_DigestUpdate(&EStack_30,param_2,param_3), iVar1 == 0)) ||
     (iVar1 = EVP_DigestUpdate(&EStack_30,param_4,param_5), iVar1 == 0)) {
    bVar2 = false;
  }
  else {
    iVar1 = EVP_DigestFinal_ex(&EStack_30,param_1,(uint *)0x0);
    bVar2 = iVar1 != 0;
  }
  EVP_MD_CTX_cleanup(&EStack_30);
  return bVar2;
}

// ---- FUN_00680758  @ 0x680758
void FUN_00680758(undefined4 *param_1,int *param_2,int param_3,code *param_4,void *param_5)

{
  int iVar1;
  int iVar2;
  EVP_CIPHER *cipher;
  undefined4 uVar3;
  int iVar4;
  uchar *puVar5;
  uchar *local_4d4;
  int local_4d0;
  uchar auStack_4cc [5];
  undefined1 auStack_4c7 [15];
  EVP_CIPHER_CTX EStack_4b8;
  char acStack_42c [1024];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  EVP_CIPHER_CTX_init(&EStack_4b8);
  if (param_3 == 0) {
    iVar4 = 0x18;
  }
  else {
    iVar4 = 0x28;
  }
  iVar1 = FUN_006803d4(0,param_2,0);
  if (-1 < iVar1) {
    iVar4 = iVar4 + iVar1;
    if (param_1 == (undefined4 *)0x0) goto LAB_006808ee;
    local_4d4 = (uchar *)*param_1;
    if (local_4d4 == (uchar *)0x0) {
      local_4d4 = CRYPTO_malloc(iVar4,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x362);
      if (local_4d4 == (uchar *)0x0) {
        ERR_put_error(9,0x89,0x41,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x365);
        goto LAB_006808ea;
      }
      *param_1 = local_4d4;
    }
    FUN_0068020e(&local_4d4,0xb0b5f11e);
    FUN_0068020e(&local_4d4,0);
    uVar3 = 2;
    if (*param_2 != 0x74) {
      uVar3 = 1;
    }
    FUN_0068020e(&local_4d4,uVar3);
    FUN_0068020e(&local_4d4,param_3 != 0);
    if (param_3 == 0) {
      uVar3 = 0;
    }
    else {
      uVar3 = 0x10;
    }
    FUN_0068020e(&local_4d4,uVar3);
    FUN_0068020e(&local_4d4,iVar1);
    if (param_3 == 0) {
      puVar5 = (uchar *)0x0;
LAB_00680836:
      FUN_006803d4(&local_4d4,param_2,0);
      if (param_3 == 0) goto LAB_006808ee;
      if (param_4 == (code *)0x0) {
        iVar2 = PEM_def_callback(acStack_42c,0x400,1,param_5);
      }
      else {
        iVar2 = (*param_4)();
      }
      if (iVar2 < 1) {
        ERR_put_error(9,0x89,0x68,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x389);
      }
      else {
        iVar2 = FUN_006806fa(auStack_4cc,puVar5,0x10,acStack_42c,iVar2);
        if (iVar2 != 0) {
          if (param_3 == 1) {
            memset(auStack_4c7,0,0xb);
          }
          local_4d4 = puVar5 + 0x18;
          cipher = EVP_rc4();
          iVar2 = EVP_EncryptInit_ex(&EStack_4b8,cipher,(ENGINE *)0x0,auStack_4cc,(uchar *)0x0);
          if (iVar2 != 0) {
            OPENSSL_cleanse(auStack_4cc,0x14);
            iVar1 = EVP_DecryptUpdate(&EStack_4b8,local_4d4,&local_4d0,local_4d4,iVar1 + -8);
            if ((iVar1 != 0) &&
               (iVar1 = EVP_DecryptFinal_ex(&EStack_4b8,local_4d4 + local_4d0,&local_4d0),
               iVar1 != 0)) {
              EVP_CIPHER_CTX_cleanup(&EStack_4b8);
              goto LAB_006808ee;
            }
          }
        }
      }
    }
    else {
      iVar2 = RAND_bytes(local_4d4,0x10);
      if (0 < iVar2) {
        puVar5 = local_4d4;
        local_4d4 = local_4d4 + 0x10;
        goto LAB_00680836;
      }
    }
    EVP_CIPHER_CTX_cleanup(&EStack_4b8);
  }
LAB_006808ea:
  iVar4 = -1;
LAB_006808ee:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

// ---- FUN_0068091c  @ 0x68091c
undefined4 FUN_0068091c(int *param_1,int param_2,int *param_3)

{
  uchar *s;
  BIGNUM *pBVar1;
  uchar *puVar2;
  int iVar3;
  int len;
  
  iVar3 = *param_1;
  s = CRYPTO_malloc(param_2,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x60);
  if (s != (uchar *)0x0) {
    puVar2 = (uchar *)(iVar3 + param_2 + -1);
    for (len = 0; len != param_2; len = len + 1) {
      s[len] = *puVar2;
      puVar2 = puVar2 + -1;
    }
    pBVar1 = BN_bin2bn(s,len,(BIGNUM *)0x0);
    *param_3 = (int)pBVar1;
    CRYPTO_free(s);
    if (*param_3 != 0) {
      *param_1 = *param_1 + len;
      return 1;
    }
  }
  return 0;
}

// ---- FUN_0068097c  @ 0x68097c
EVP_PKEY * FUN_0068097c(undefined4 *param_1,int param_2,int param_3)

{
  DSA *r;
  EVP_PKEY *pkey;
  int iVar1;
  BIGNUM *pBVar2;
  BN_CTX *ctx;
  uint uVar3;
  undefined4 local_24 [2];
  
  local_24[0] = *param_1;
  r = DSA_new();
  pkey = EVP_PKEY_new();
  uVar3 = 1 - (int)r;
  if ((DSA *)0x1 < r) {
    uVar3 = 0;
  }
  if (pkey == (EVP_PKEY *)0x0) {
    uVar3 = uVar3 | 1;
  }
  if (uVar3 == 0) {
    uVar3 = param_2 + 7U >> 3;
    iVar1 = FUN_0068091c(local_24,uVar3,&r->p);
    if (((iVar1 != 0) && (iVar1 = FUN_0068091c(local_24,0x14,&r->q), iVar1 != 0)) &&
       (iVar1 = FUN_0068091c(local_24,uVar3,&r->g), iVar1 != 0)) {
      if (param_3 == 0) {
        iVar1 = FUN_0068091c(local_24,0x14,&r->priv_key);
        if (iVar1 != 0) {
          pBVar2 = BN_new();
          r->pub_key = pBVar2;
          if (pBVar2 != (BIGNUM *)0x0) {
            ctx = BN_CTX_new();
            if ((ctx == (BN_CTX *)0x0) ||
               (iVar1 = BN_mod_exp(r->pub_key,r->g,r->priv_key,r->p,ctx), iVar1 == 0))
            goto LAB_00680a48;
            BN_CTX_free(ctx);
            goto LAB_00680a2e;
          }
        }
      }
      else {
        iVar1 = FUN_0068091c(local_24,uVar3,&r->pub_key);
        if (iVar1 != 0) {
LAB_00680a2e:
          EVP_PKEY_set1_DSA(pkey,r);
          DSA_free(r);
          *param_1 = local_24[0];
          return pkey;
        }
      }
    }
    ctx = (BN_CTX *)0x0;
  }
  else {
    ctx = (BN_CTX *)0x0;
  }
LAB_00680a48:
  ERR_put_error(9,0x7f,0x41,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x167);
  if (r != (DSA *)0x0) {
    DSA_free(r);
  }
  if (pkey != (EVP_PKEY *)0x0) {
    EVP_PKEY_free(pkey);
  }
  if (ctx != (BN_CTX *)0x0) {
    BN_CTX_free(ctx);
  }
  return (EVP_PKEY *)0x0;
}

// ---- FUN_00680a84  @ 0x680a84
EVP_PKEY * FUN_00680a84(undefined4 *param_1,int param_2,int param_3)

{
  RSA *r;
  EVP_PKEY *pkey;
  BIGNUM *a;
  ulong w;
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_24 [2];
  
  local_24[0] = *param_1;
  r = RSA_new();
  pkey = EVP_PKEY_new();
  uVar2 = 1 - (int)r;
  if ((RSA *)0x1 < r) {
    uVar2 = 0;
  }
  if (pkey == (EVP_PKEY *)0x0) {
    uVar2 = uVar2 | 1;
  }
  if (uVar2 == 0) {
    a = BN_new();
    r->e = a;
    if (a != (BIGNUM *)0x0) {
      w = FUN_006801c0(local_24);
      iVar1 = BN_set_word(a,w);
      if (iVar1 != 0) {
        uVar2 = param_2 + 7U >> 3;
        iVar1 = FUN_0068091c(local_24,uVar2,&r->n);
        if (iVar1 != 0) {
          if (param_3 == 0) {
            uVar3 = param_2 + 0xfU >> 4;
            iVar1 = FUN_0068091c(local_24,uVar3,&r->p);
            if ((((iVar1 == 0) || (iVar1 = FUN_0068091c(local_24,uVar3,&r->q), iVar1 == 0)) ||
                (iVar1 = FUN_0068091c(local_24,uVar3,&r->dmp1), iVar1 == 0)) ||
               (((iVar1 = FUN_0068091c(local_24,uVar3,&r->dmq1), iVar1 == 0 ||
                 (iVar1 = FUN_0068091c(local_24,uVar3,&r->iqmp), iVar1 == 0)) ||
                (iVar1 = FUN_0068091c(local_24,uVar2,&r->d), iVar1 == 0)))) goto LAB_00680b5c;
          }
          EVP_PKEY_set1_RSA(pkey,r);
          RSA_free(r);
          *param_1 = local_24[0];
          return pkey;
        }
      }
    }
  }
LAB_00680b5c:
  ERR_put_error(9,0x81,0x41,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x19b);
  if (r != (RSA *)0x0) {
    RSA_free(r);
  }
  if (pkey != (EVP_PKEY *)0x0) {
    EVP_PKEY_free(pkey);
  }
  return (EVP_PKEY *)0x0;
}

// ---- FUN_00680d1c  @ 0x680d1c
void FUN_00680d1c(uchar *param_1,int param_2,int param_3,code *param_4,void *param_5)

{
  uchar *puVar1;
  int iVar2;
  uchar *__dest;
  EVP_CIPHER *pEVar3;
  EVP_PKEY *pEVar4;
  uchar *local_4d8;
  uchar *local_4d4;
  int local_4d0;
  uchar auStack_4cc [5];
  undefined1 auStack_4c7 [15];
  EVP_CIPHER_CTX EStack_4b8;
  char acStack_42c [1024];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  local_4d8 = param_1;
  EVP_CIPHER_CTX_init(&EStack_4b8);
  if (param_2 == 0) {
    __dest = (uchar *)0x0;
    puVar1 = local_4d8;
    goto LAB_00680ede;
  }
  if (param_4 == (code *)0x0) {
    iVar2 = PEM_def_callback(acStack_42c,0x400,0,param_5);
  }
  else {
    iVar2 = (*param_4)(acStack_42c,0x400,0,param_5);
  }
  if (iVar2 < 1) {
    pEVar4 = (EVP_PKEY *)0x0;
    ERR_put_error(9,0x87,0x68,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x2ea);
    goto LAB_00680f0a;
  }
  __dest = CRYPTO_malloc(param_3 + 8,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x2ed);
  if (__dest == (uchar *)0x0) {
    ERR_put_error(9,0x87,0x41,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x2f0);
    pEVar4 = (EVP_PKEY *)0x0;
    goto LAB_00680f0a;
  }
  iVar2 = FUN_006806fa(auStack_4cc,local_4d8,param_2,acStack_42c,iVar2);
  pEVar4 = (EVP_PKEY *)0x0;
  if (iVar2 == 0) goto LAB_00680f0a;
  local_4d8 = local_4d8 + param_2;
  memcpy(__dest,local_4d8,8);
  local_4d8 = local_4d8 + 8;
  local_4d4 = __dest + 8;
  pEVar3 = EVP_rc4();
  iVar2 = EVP_DecryptInit_ex(&EStack_4b8,pEVar3,(ENGINE *)0x0,auStack_4cc,(uchar *)0x0);
  pEVar4 = (EVP_PKEY *)0x0;
  if (iVar2 != 0) {
    iVar2 = EVP_DecryptUpdate(&EStack_4b8,local_4d4,&local_4d0,local_4d8,param_3 + -8);
    pEVar4 = (EVP_PKEY *)0x0;
    if (iVar2 != 0) {
      iVar2 = EVP_DecryptFinal_ex(&EStack_4b8,local_4d4 + local_4d0,&local_4d0);
      pEVar4 = (EVP_PKEY *)0x0;
      if (iVar2 != 0) {
        iVar2 = FUN_006801c0(&local_4d4);
        puVar1 = __dest;
        if (iVar2 == 0x32535344 || iVar2 == 0x32415352) {
          OPENSSL_cleanse(auStack_4cc,0x14);
LAB_00680ede:
          local_4d8 = puVar1;
          pEVar4 = b2i_PrivateKey(&local_4d8,param_3);
        }
        else {
          local_4d4 = __dest + 8;
          memset(auStack_4c7,0,0xb);
          pEVar3 = EVP_rc4();
          iVar2 = EVP_DecryptInit_ex(&EStack_4b8,pEVar3,(ENGINE *)0x0,auStack_4cc,(uchar *)0x0);
          pEVar4 = (EVP_PKEY *)0x0;
          if (iVar2 != 0) {
            OPENSSL_cleanse(auStack_4cc,0x14);
            iVar2 = EVP_DecryptUpdate(&EStack_4b8,local_4d4,&local_4d0,local_4d8,param_3 + -8);
            pEVar4 = (EVP_PKEY *)0x0;
            if (iVar2 != 0) {
              iVar2 = EVP_DecryptFinal_ex(&EStack_4b8,local_4d4 + local_4d0,&local_4d0);
              if (iVar2 == 0) {
                pEVar4 = (EVP_PKEY *)0x0;
              }
              else {
                iVar2 = FUN_006801c0(&local_4d4);
                if (iVar2 == 0x32535344 || iVar2 == 0x32415352) goto LAB_00680ede;
                ERR_put_error(9,0x87,0x65,"jni/../../openssl-android/crypto/pem/pvkfmt.c",0x313);
                pEVar4 = (EVP_PKEY *)0x0;
              }
            }
          }
        }
      }
    }
  }
  EVP_CIPHER_CTX_cleanup(&EStack_4b8);
  if (__dest != (uchar *)0x0 && param_2 != 0) {
    CRYPTO_free(__dest);
  }
LAB_00680f0a:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(pEVar4);
}

// ---- FUN_006817d4  @ 0x6817d4
undefined4 FUN_006817d4(int *param_1,void *param_2)

{
  _STACK *p_Var1;
  int iVar2;
  bool bVar3;
  
  if (param_1 != (int *)0x0) {
    if (*param_1 == 0) {
      p_Var1 = sk_new_null();
      *param_1 = (int)p_Var1;
      if (p_Var1 == (_STACK *)0x0) {
        return 0;
      }
      bVar3 = true;
    }
    else {
      bVar3 = false;
    }
    iVar2 = sk_push((_STACK *)*param_1,param_2);
    if (iVar2 == 0) {
      if (!bVar3) {
        return 0;
      }
      sk_free((_STACK *)*param_1);
      *param_1 = 0;
      return 0;
    }
  }
  return 1;
}

// ---- FUN_00682250  @ 0x682250
undefined8 FUN_00682250(PKCS12_SAFEBAG *param_1,uchar *param_2,int *param_3,_STACK *param_4)

{
  ASN1_TYPE *pAVar1;
  int iVar2;
  PKCS8_PRIV_KEY_INFO *p8;
  EVP_PKEY *pEVar3;
  X509 *x;
  void *pvVar4;
  int iVar5;
  uint uVar6;
  ASN1_STRING *in;
  _STACK *p_Var7;
  ASN1_STRING *pAVar8;
  uchar *local_24;
  int *piStack_20;
  
  local_24 = param_2;
  piStack_20 = param_3;
  pAVar1 = PKCS12_get_attr_gen(param_1->attrib,0x9c);
  in = (ASN1_STRING *)0x0;
  if (pAVar1 != (ASN1_TYPE *)0x0) {
    in = (pAVar1->value).asn1_string;
  }
  pAVar1 = PKCS12_get_attr_gen(param_1->attrib,0x9d);
  pAVar8 = (ASN1_STRING *)0x0;
  if (pAVar1 != (ASN1_TYPE *)0x0) {
    pAVar8 = (pAVar1->value).asn1_string;
  }
  iVar2 = OBJ_obj2nid(param_1->type);
  switch(iVar2) {
  case 0x96:
    if ((param_3 != (int *)0x0) && (*param_3 == 0)) {
      pEVar3 = EVP_PKCS82PKEY((PKCS8_PRIV_KEY_INFO *)(param_1->value).bag);
      *param_3 = (int)pEVar3;
LAB_006822d4:
      uVar6 = (uint)(pEVar3 != (EVP_PKEY *)0x0);
      goto LAB_00682374;
    }
    break;
  case 0x97:
    if ((param_3 != (int *)0x0) && (*param_3 == 0)) {
      p8 = PKCS12_decrypt_skey(param_1,(char *)param_2,-1);
      uVar6 = 0;
      if (p8 == (PKCS8_PRIV_KEY_INFO *)0x0) goto LAB_00682374;
      pEVar3 = EVP_PKCS82PKEY(p8);
      *param_3 = (int)pEVar3;
      PKCS8_PRIV_KEY_INFO_free(p8);
      pEVar3 = (EVP_PKEY *)*param_3;
      goto LAB_006822d4;
    }
    break;
  case 0x98:
    iVar2 = OBJ_obj2nid(((param_1->value).bag)->type);
    if (iVar2 == 0x9e) {
      x = PKCS12_certbag2x509(param_1);
      uVar6 = 0;
      if (x == (X509 *)0x0) goto LAB_00682374;
      if ((pAVar8 == (ASN1_STRING *)0x0) ||
         (iVar2 = X509_keyid_set1(x,pAVar8->data,pAVar8->length), iVar2 != 0)) {
        if ((in != (ASN1_STRING *)0x0) && (iVar2 = ASN1_STRING_to_UTF8(&local_24,in), -1 < iVar2)) {
          iVar2 = X509_alias_set1(x,local_24,iVar2);
          CRYPTO_free(local_24);
          if (iVar2 == 0) goto LAB_0068233c;
        }
        iVar2 = sk_push(param_4,x);
        if (iVar2 != 0) break;
      }
LAB_0068233c:
      uVar6 = 0;
      X509_free(x);
      goto LAB_00682374;
    }
    break;
  case 0x9b:
    p_Var7 = (_STACK *)(param_1->value).bag;
    for (iVar2 = 0; iVar5 = sk_num(p_Var7), iVar2 < iVar5; iVar2 = iVar2 + 1) {
      pvVar4 = sk_value(p_Var7,iVar2);
      iVar5 = FUN_00682250(pvVar4,param_2,param_3,param_4);
      if (iVar5 == 0) {
        uVar6 = 0;
        goto LAB_00682374;
      }
    }
  }
  uVar6 = 1;
LAB_00682374:
  return CONCAT44(param_1,uVar6);
}

// ---- FUN_0068298c  @ 0x68298c
bool FUN_0068298c(undefined4 *param_1,int *param_2,long *param_3,int *param_4)

{
  PBEPARAM *a;
  int iVar1;
  long lVar2;
  uchar *local_1c;
  
  local_1c = (uchar *)(*(long **)(param_1[1] + 4))[2];
  a = d2i_PBEPARAM((PBEPARAM **)0x0,&local_1c,**(long **)(param_1[1] + 4));
  if (a != (PBEPARAM *)0x0) {
    iVar1 = OBJ_obj2nid((ASN1_OBJECT *)*param_1);
    *param_2 = iVar1;
    lVar2 = ASN1_INTEGER_get(a->iter);
    *param_3 = lVar2;
    *param_4 = a->salt->length;
    PBEPARAM_free(a);
  }
  return a != (PBEPARAM *)0x0;
}

// ---- FUN_00683498  @ 0x683498
void * FUN_00683498(_STACK *param_1,int param_2)

{
  ASN1_OBJECT *b;
  undefined4 *puVar1;
  int iVar2;
  void *pvVar3;
  int iVar4;
  uint uVar5;
  
  b = OBJ_nid2obj(param_2);
  uVar5 = 1 - (int)param_1;
  if ((_STACK *)0x1 < param_1) {
    uVar5 = 0;
  }
  if (b == (ASN1_OBJECT *)0x0) {
    uVar5 = uVar5 | 1;
  }
  iVar2 = 0;
  if (uVar5 == 0) {
    while( true ) {
      iVar4 = sk_num(param_1);
      if (iVar4 <= iVar2) {
        return (void *)0x0;
      }
      puVar1 = sk_value(param_1,iVar2);
      iVar4 = OBJ_cmp((ASN1_OBJECT *)*puVar1,b);
      if (iVar4 == 0) break;
      iVar2 = iVar2 + 1;
    }
    if ((puVar1[1] == 0) && (iVar2 = sk_num((_STACK *)puVar1[2]), iVar2 != 0)) {
      pvVar3 = sk_value((_STACK *)puVar1[2],0);
      return pvVar3;
    }
  }
  return (void *)0x0;
}

// ---- FUN_006834f8  @ 0x6834f8
undefined8 FUN_006834f8(undefined4 *param_1,BIO *param_2,int param_3)

{
  BIO *bp;
  EVP_MD *md;
  int iVar1;
  undefined4 *puVar2;
  
  puVar2 = param_1;
  do {
    bp = BIO_find_type(param_2,0x208);
    if (bp == (BIO *)0x0) {
      puVar2 = (undefined4 *)0x2b4;
      ERR_put_error(0x21,0x7f,0x6c,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0x2b4);
LAB_0068355e:
      return CONCAT44(puVar2,bp);
    }
    BIO_ctrl(bp,0x78,0,param_1);
    if ((EVP_MD_CTX *)*param_1 == (EVP_MD_CTX *)0x0) {
      puVar2 = (undefined4 *)0x2ba;
      ERR_put_error(0x21,0x7f,0x44,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0x2ba);
      bp = (BIO *)0x0;
      goto LAB_0068355e;
    }
    md = EVP_MD_CTX_md((EVP_MD_CTX *)*param_1);
    iVar1 = EVP_MD_type(md);
    if (iVar1 == param_3) goto LAB_0068355e;
    param_2 = BIO_next(bp);
  } while( true );
}

// ---- FUN_0068356c  @ 0x68356c
uint FUN_0068356c(undefined4 *param_1,size_t *param_2,void *param_3,EVP_PKEY *param_4)

{
  EVP_PKEY_CTX *ctx;
  int iVar1;
  uint uVar2;
  uchar *out;
  uint uVar3;
  EVP_PKEY *local_24;
  
  local_24 = param_4;
  ctx = EVP_PKEY_CTX_new(param_4,(ENGINE *)0x0);
  if (ctx == (EVP_PKEY_CTX *)0x0) {
    return 0xffffffff;
  }
  iVar1 = EVP_PKEY_decrypt_init(ctx);
  if (0 < iVar1) {
    iVar1 = EVP_PKEY_CTX_ctrl(ctx,-1,0x200,4,0,param_3);
    if (iVar1 < 1) {
      ERR_put_error(0x21,0x85,0x98,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0xdb);
    }
    else {
      iVar1 = EVP_PKEY_decrypt(ctx,(uchar *)0x0,(size_t *)&local_24,
                               (uchar *)(*(size_t **)((int)param_3 + 0xc))[2],
                               **(size_t **)((int)param_3 + 0xc));
      if (0 < iVar1) {
        out = CRYPTO_malloc((int)local_24,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0xe3);
        if (out == (uchar *)0x0) {
          ERR_put_error(0x21,0x85,0x41,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0xe7);
          uVar3 = 0xffffffff;
        }
        else {
          iVar1 = EVP_PKEY_decrypt(ctx,out,(size_t *)&local_24,
                                   (uchar *)(*(size_t **)((int)param_3 + 0xc))[2],
                                   **(size_t **)((int)param_3 + 0xc));
          if (iVar1 < 1) {
            ERR_put_error(0x21,0x85,6,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0xef);
            uVar3 = 0;
          }
          else {
            if ((void *)*param_1 != (void *)0x0) {
              OPENSSL_cleanse((void *)*param_1,*param_2);
              CRYPTO_free((void *)*param_1);
            }
            uVar3 = 1;
            *param_1 = out;
            *param_2 = (size_t)local_24;
          }
        }
        goto LAB_00683656;
      }
    }
  }
  uVar3 = 0xffffffff;
  out = (uchar *)0x0;
LAB_00683656:
  EVP_PKEY_CTX_free(ctx);
  uVar2 = 1 - uVar3;
  if (1 < uVar3) {
    uVar2 = 0;
  }
  if (out == (uchar *)0x0) {
    uVar2 = 0;
  }
  else {
    uVar2 = uVar2 & 1;
  }
  if (uVar2 != 0) {
    uVar3 = 0;
    CRYPTO_free(out);
  }
  return uVar3;
}

// ---- FUN_00683688  @ 0x683688
undefined4 FUN_00683688(undefined4 *param_1,undefined4 *param_2)

{
  BIO_METHOD *type;
  BIO *bp;
  int iVar1;
  char *name;
  EVP_MD *parg;
  BIO *pBVar2;
  undefined4 uVar3;
  int line;
  
  type = BIO_f_md();
  bp = BIO_new(type);
  if (bp == (BIO *)0x0) {
    ERR_put_error(0x21,0x7d,0x20,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",0x6f);
    return 0;
  }
  iVar1 = OBJ_obj2nid((ASN1_OBJECT *)*param_2);
  name = OBJ_nid2sn(iVar1);
  parg = EVP_get_digestbyname(name);
  if (parg == (EVP_MD *)0x0) {
    line = 0x76;
    iVar1 = 0x6d;
LAB_006836fa:
    ERR_put_error(0x21,0x7d,iVar1,"jni/../../openssl-android/crypto/pkcs7/pk7_doit.c",line);
    BIO_free(bp);
    uVar3 = 0;
  }
  else {
    BIO_ctrl(bp,0x6f,0,parg);
    if ((BIO *)*param_1 == (BIO *)0x0) {
      *param_1 = bp;
    }
    else {
      pBVar2 = BIO_push((BIO *)*param_1,bp);
      if (pBVar2 == (BIO *)0x0) {
        line = 0x7f;
        iVar1 = 0x20;
        goto LAB_006836fa;
      }
    }
    uVar3 = 1;
  }
  return uVar3;
}

// ---- FUN_00683718  @ 0x683718
int FUN_00683718(int param_1)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = OBJ_obj2nid(*(ASN1_OBJECT **)(param_1 + 0x10));
  if (iVar1 == 0x15) {
    return *(int *)(param_1 + 0x14);
  }
  iVar1 = OBJ_obj2nid(*(ASN1_OBJECT **)(param_1 + 0x10));
  if ((5 < iVar1 - 0x15U) && (piVar2 = *(int **)(param_1 + 0x14), piVar2 != (int *)0x0)) {
    if (*piVar2 == 4) {
      iVar1 = piVar2[1];
    }
    else {
      iVar1 = 0;
    }
    return iVar1;
  }
  return 0;
}

// ---- FUN_00685068  @ 0x685068
int FUN_00685068(stack_st_X509_ALGOR *param_1,int param_2,int param_3)

{
  char *name;
  EVP_CIPHER *pEVar1;
  int iVar2;
  
  name = OBJ_nid2sn(param_2);
  pEVar1 = EVP_get_cipherbyname(name);
  if (pEVar1 != (EVP_CIPHER *)0x0) {
    iVar2 = PKCS7_simple_smimecap(param_1,param_2,param_3);
    return iVar2;
  }
  return 1;
}

// ---- FUN_00688e2c  @ 0x688e2c
undefined4
FUN_00688e2c(EVP_MD_CTX *param_1,undefined4 param_2,undefined4 param_3,X509_ALGOR *param_4,
            X509_ALGOR *param_5)

{
  int iVar1;
  EVP_PKEY *pkey;
  EVP_MD *md;
  int iVar2;
  RSA_PSS_PARAMS *a;
  ASN1_INTEGER *a_00;
  X509_ALGOR *pXVar3;
  ASN1_STRING *pAVar4;
  X509_ALGOR *alg;
  ASN1_OBJECT *pAVar5;
  undefined4 uVar6;
  EVP_PKEY_CTX *ctx;
  int local_34;
  EVP_MD *local_30;
  ASN1_OCTET_STRING *local_2c;
  int local_28;
  ASN1_OCTET_STRING *local_24;
  
  ctx = param_1->pctx;
  iVar1 = EVP_PKEY_CTX_ctrl(ctx,6,-1,0x1006,0,&local_34);
  if (iVar1 < 1) {
    return 0;
  }
  if ((local_34 == 1) || (local_34 != 6)) {
    return 2;
  }
  local_2c = (ASN1_STRING *)0x0;
  pkey = EVP_PKEY_CTX_get0_pkey(ctx);
  md = EVP_MD_CTX_md(param_1);
  iVar1 = EVP_PKEY_CTX_ctrl(ctx,6,0xf8,0x1008,0,&local_30);
  if ((0 < iVar1) && (iVar1 = EVP_PKEY_CTX_ctrl(ctx,6,0x18,0x1007,0,&local_28), iVar1 != 0)) {
    if (local_28 == -1) {
      local_28 = EVP_MD_size(md);
    }
    else if (local_28 == -2) {
      iVar1 = EVP_PKEY_size(pkey);
      iVar2 = EVP_MD_size(md);
      local_28 = (iVar1 - iVar2) + -2;
      iVar1 = EVP_PKEY_bits(pkey);
      if ((iVar1 - 1U & 7) == 0) {
        local_28 = local_28 + -1;
      }
    }
    a = RSA_PSS_PARAMS_new();
    if (a != (RSA_PSS_PARAMS *)0x0) {
      if (local_28 == 0x14) {
LAB_00688f0c:
        iVar1 = EVP_MD_type(md);
        if (iVar1 != 0x40) {
          pXVar3 = X509_ALGOR_new();
          a->hashAlgorithm = pXVar3;
          if (pXVar3 == (X509_ALGOR *)0x0) goto LAB_00688fec;
          X509_ALGOR_set_md(pXVar3,md);
        }
        pXVar3 = (X509_ALGOR *)0x0;
        iVar1 = EVP_MD_type(local_30);
        if (iVar1 == 0x40) {
LAB_00688f74:
          pAVar4 = ASN1_item_pack(a,(ASN1_ITEM *)RSA_PSS_PARAMS_it,&local_2c);
          if (pAVar4 == (ASN1_STRING *)0x0) {
LAB_00688fc4:
            uVar6 = 0;
          }
          else {
            if (param_5 != (X509_ALGOR *)0x0) {
              pAVar4 = ASN1_STRING_dup(local_2c);
              uVar6 = 0;
              if (pAVar4 == (ASN1_STRING *)0x0) goto LAB_00688fc6;
              pAVar5 = OBJ_nid2obj(0x390);
              X509_ALGOR_set0(param_5,pAVar5,0x10,pAVar4);
            }
            uVar6 = 3;
            pAVar5 = OBJ_nid2obj(0x390);
            X509_ALGOR_set0(param_4,pAVar5,0x10,local_2c);
            local_2c = (ASN1_STRING *)0x0;
          }
        }
        else {
          local_24 = (ASN1_OCTET_STRING *)0x0;
          pXVar3 = X509_ALGOR_new();
          X509_ALGOR_set_md(pXVar3,local_30);
          pAVar4 = ASN1_item_pack(pXVar3,(ASN1_ITEM *)X509_ALGOR_it,&local_24);
          if (pAVar4 == (ASN1_STRING *)0x0) goto LAB_00688fc4;
          alg = X509_ALGOR_new();
          a->maskGenAlgorithm = alg;
          uVar6 = 0;
          if (alg != (X509_ALGOR *)0x0) {
            pAVar5 = OBJ_nid2obj(0x38f);
            X509_ALGOR_set0(alg,pAVar5,0x10,local_24);
            goto LAB_00688f74;
          }
        }
LAB_00688fc6:
        if (pXVar3 != (X509_ALGOR *)0x0) {
          X509_ALGOR_free(pXVar3);
        }
      }
      else {
        a_00 = ASN1_INTEGER_new();
        a->saltLength = a_00;
        if ((a_00 != (ASN1_INTEGER *)0x0) && (iVar1 = ASN1_INTEGER_set(a_00,local_28), iVar1 != 0))
        goto LAB_00688f0c;
LAB_00688fec:
        if (a == (RSA_PSS_PARAMS *)0x0) goto LAB_00688ff0;
        uVar6 = 0;
      }
      RSA_PSS_PARAMS_free(a);
      goto LAB_00688fd8;
    }
  }
LAB_00688ff0:
  uVar6 = 0;
LAB_00688fd8:
  if (local_2c != (ASN1_STRING *)0x0) {
    ASN1_STRING_free(local_2c);
  }
  return uVar6;
}

// ---- FUN_0068980e  @ 0x68980e
int FUN_0068980e(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = BN_cmp(*(BIGNUM **)(*(int *)(param_2 + 0x14) + 0x10),
                 *(BIGNUM **)(*(int *)(param_1 + 0x14) + 0x10));
  if (iVar1 == 0) {
    uVar2 = BN_cmp(*(BIGNUM **)(*(int *)(param_2 + 0x14) + 0x14),
                   *(BIGNUM **)(*(int *)(param_1 + 0x14) + 0x14));
    iVar1 = 1 - uVar2;
    if (1 < uVar2) {
      iVar1 = 0;
    }
    return iVar1;
  }
  return 0;
}

// ---- FUN_0068983c  @ 0x68983c
undefined4 FUN_0068983c(EVP_PKEY *param_1,X509_PUBKEY *param_2)

{
  int iVar1;
  RSA *key;
  undefined4 uVar2;
  uchar *puStack_18;
  long local_14 [2];
  
  iVar1 = X509_PUBKEY_get0_param
                    ((ASN1_OBJECT **)0x0,&puStack_18,local_14,(X509_ALGOR **)0x0,param_2);
  uVar2 = 0;
  if (iVar1 != 0) {
    key = d2i_RSAPublicKey((RSA **)0x0,&puStack_18,local_14[0]);
    if (key == (RSA *)0x0) {
      ERR_put_error(4,0x8b,4,"jni/../../openssl-android/crypto/rsa/rsa_ameth.c",0x5e);
      uVar2 = 0;
    }
    else {
      EVP_PKEY_assign(param_1,6,key);
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- FUN_00689eb6  @ 0x689eb6
undefined4 FUN_00689eb6(int param_1)

{
  if (*(BN_MONT_CTX **)(param_1 + 0x40) != (BN_MONT_CTX *)0x0) {
    BN_MONT_CTX_free(*(BN_MONT_CTX **)(param_1 + 0x40));
  }
  if (*(BN_MONT_CTX **)(param_1 + 0x44) != (BN_MONT_CTX *)0x0) {
    BN_MONT_CTX_free(*(BN_MONT_CTX **)(param_1 + 0x44));
  }
  if (*(BN_MONT_CTX **)(param_1 + 0x48) != (BN_MONT_CTX *)0x0) {
    BN_MONT_CTX_free(*(BN_MONT_CTX **)(param_1 + 0x48));
  }
  return 1;
}

// ---- FUN_00689ed6  @ 0x689ed6
bool FUN_00689ed6(BIGNUM *param_1,BIGNUM *param_2,int param_3,BN_CTX *param_4)

{
  uint *puVar1;
  int *piVar2;
  BIGNUM *pBVar3;
  BIGNUM *b;
  BIGNUM *r;
  BN_MONT_CTX *pBVar4;
  int iVar5;
  BIGNUM *mod;
  undefined4 *puVar6;
  BIGNUM *pBVar7;
  bool bVar8;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  uint local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  uint local_7c;
  BIGNUM local_78;
  BIGNUM local_64;
  BIGNUM local_50;
  BIGNUM local_3c;
  
  BN_CTX_start(param_4);
  pBVar3 = BN_CTX_get(param_4);
  b = BN_CTX_get(param_4);
  r = BN_CTX_get(param_4);
  if (*(int *)(param_3 + 0x3c) << 0x17 < 0) {
    mod = *(BIGNUM **)(param_3 + 0x1c);
    pBVar7 = *(BIGNUM **)(param_3 + 0x20);
  }
  else {
    pBVar7 = &local_3c;
    BN_init(&local_50);
    puVar6 = *(undefined4 **)(param_3 + 0x1c);
    local_50.d = (ulong *)*puVar6;
    local_50.top = puVar6[1];
    local_50.dmax = puVar6[2];
    local_50.neg = puVar6[3];
    local_50.flags = puVar6[4] & 0xfffffffe | local_50.flags & 1U | 6;
    BN_init(&local_3c);
    puVar6 = *(undefined4 **)(param_3 + 0x20);
    local_3c.d = (ulong *)*puVar6;
    local_3c.top = puVar6[1];
    local_3c.dmax = puVar6[2];
    local_3c.neg = puVar6[3];
    mod = &local_50;
    local_3c.flags = puVar6[4] & 0xfffffffe | local_3c.flags & 1U | 6;
  }
  if (((-1 < *(int *)(param_3 + 0x3c) << 0x1d) ||
      ((pBVar4 = BN_MONT_CTX_set_locked((BN_MONT_CTX **)(param_3 + 0x44),9,mod,param_4),
       pBVar4 != (BN_MONT_CTX *)0x0 &&
       (pBVar4 = BN_MONT_CTX_set_locked((BN_MONT_CTX **)(param_3 + 0x48),9,pBVar7,param_4),
       pBVar4 != (BN_MONT_CTX *)0x0)))) &&
     ((-1 < *(int *)(param_3 + 0x3c) << 0x1e ||
      (pBVar4 = BN_MONT_CTX_set_locked
                          ((BN_MONT_CTX **)(param_3 + 0x40),9,*(BIGNUM **)(param_3 + 0x10),param_4),
      pBVar4 != (BN_MONT_CTX *)0x0)))) {
    pBVar7 = param_2;
    if ((*(uint *)(param_3 + 0x3c) & 0x100) == 0) {
      local_78.d = param_2->d;
      local_78.top = param_2->top;
      local_78.dmax = param_2->dmax;
      local_78.neg = param_2->neg;
      local_78.flags = param_2->flags & 0xfffffffeU | local_78.flags & 1U | 6;
      pBVar7 = &local_78;
    }
    iVar5 = BN_div((BIGNUM *)0x0,pBVar3,pBVar7,*(BIGNUM **)(param_3 + 0x20),param_4);
    if (iVar5 != 0) {
      puVar6 = *(undefined4 **)(param_3 + 0x28);
      if ((*(uint *)(param_3 + 0x3c) & 0x100) == 0) {
        local_8c = *puVar6;
        local_88 = puVar6[1];
        local_84 = puVar6[2];
        local_80 = puVar6[3];
        puVar1 = puVar6 + 4;
        puVar6 = &local_8c;
        local_7c = *puVar1 & 0xfffffffe | local_7c & 1 | 6;
      }
      iVar5 = (**(code **)(*(int *)(param_3 + 8) + 0x18))
                        (b,pBVar3,puVar6,*(undefined4 *)(param_3 + 0x20),param_4,
                         *(undefined4 *)(param_3 + 0x48));
      if (iVar5 != 0) {
        pBVar7 = param_2;
        if ((*(uint *)(param_3 + 0x3c) & 0x100) == 0) {
          local_78.d = param_2->d;
          local_78.top = param_2->top;
          local_78.dmax = param_2->dmax;
          local_78.neg = param_2->neg;
          local_78.flags = param_2->flags & 0xfffffffeU | local_78.flags & 1U | 6;
          pBVar7 = &local_78;
        }
        iVar5 = BN_div((BIGNUM *)0x0,pBVar3,pBVar7,*(BIGNUM **)(param_3 + 0x1c),param_4);
        if (iVar5 != 0) {
          puVar6 = *(undefined4 **)(param_3 + 0x24);
          if ((*(uint *)(param_3 + 0x3c) & 0x100) == 0) {
            local_a0 = *puVar6;
            local_9c = puVar6[1];
            local_98 = puVar6[2];
            local_94 = puVar6[3];
            puVar1 = puVar6 + 4;
            puVar6 = &local_a0;
            local_90 = *puVar1 & 0xfffffffe | local_90 & 1 | 6;
          }
          iVar5 = (**(code **)(*(int *)(param_3 + 8) + 0x18))
                            (param_1,pBVar3,puVar6,*(undefined4 *)(param_3 + 0x1c),param_4,
                             *(undefined4 *)(param_3 + 0x44));
          if ((((iVar5 != 0) && (iVar5 = BN_sub(param_1,param_1,b), iVar5 != 0)) &&
              ((param_1->neg == 0 ||
               (iVar5 = BN_add(param_1,param_1,*(BIGNUM **)(param_3 + 0x1c)), iVar5 != 0)))) &&
             (iVar5 = BN_mul(pBVar3,param_1,*(BIGNUM **)(param_3 + 0x2c),param_4), iVar5 != 0)) {
            pBVar7 = pBVar3;
            if (-1 < *(int *)(param_3 + 0x3c) << 0x17) {
              local_64.d = pBVar3->d;
              local_64.top = pBVar3->top;
              local_64.dmax = pBVar3->dmax;
              local_64.neg = pBVar3->neg;
              local_64.flags = pBVar3->flags & 0xfffffffeU | local_64.flags & 1U | 6;
              pBVar7 = &local_64;
            }
            iVar5 = BN_div((BIGNUM *)0x0,param_1,pBVar7,*(BIGNUM **)(param_3 + 0x1c),param_4);
            if ((iVar5 != 0) &&
               ((((param_1->neg == 0 ||
                  (iVar5 = BN_add(param_1,param_1,*(BIGNUM **)(param_3 + 0x1c)), iVar5 != 0)) &&
                 (iVar5 = BN_mul(pBVar3,param_1,*(BIGNUM **)(param_3 + 0x20),param_4), iVar5 != 0))
                && (iVar5 = BN_add(param_1,pBVar3,b), iVar5 != 0)))) {
              if ((*(int *)(param_3 + 0x14) != 0) && (*(int *)(param_3 + 0x10) != 0)) {
                iVar5 = (**(code **)(*(int *)(param_3 + 8) + 0x18))
                                  (r,param_1,*(int *)(param_3 + 0x14),*(int *)(param_3 + 0x10),
                                   param_4,*(undefined4 *)(param_3 + 0x40));
                if ((iVar5 == 0) ||
                   (((iVar5 = BN_sub(r,r,param_2), iVar5 == 0 ||
                     (iVar5 = BN_div((BIGNUM *)0x0,r,r,*(BIGNUM **)(param_3 + 0x10),param_4),
                     iVar5 == 0)) ||
                    ((r->neg != 0 && (iVar5 = BN_add(r,r,*(BIGNUM **)(param_3 + 0x10)), iVar5 == 0))
                    )))) goto LAB_0068a236;
                if (r->top != 0) {
                  pBVar3 = *(BIGNUM **)(param_3 + 0x18);
                  if ((*(uint *)(param_3 + 0x3c) & 0x100) == 0) {
                    local_3c.d = pBVar3->d;
                    local_3c.top = pBVar3->top;
                    local_3c.dmax = pBVar3->dmax;
                    local_3c.neg = pBVar3->neg;
                    piVar2 = &pBVar3->flags;
                    pBVar3 = &local_3c;
                    local_3c.flags = *piVar2 & 0xfffffffeU | local_3c.flags & 1U | 6;
                  }
                  iVar5 = (**(code **)(*(int *)(param_3 + 8) + 0x18))
                                    (param_1,param_2,pBVar3,*(undefined4 *)(param_3 + 0x10),param_4,
                                     *(undefined4 *)(param_3 + 0x40));
                  bVar8 = iVar5 != 0;
                  goto LAB_0068a23c;
                }
              }
              bVar8 = true;
              goto LAB_0068a23c;
            }
          }
        }
      }
    }
  }
LAB_0068a236:
  bVar8 = false;
LAB_0068a23c:
  BN_CTX_end(param_4);
  return bVar8;
}

// ---- FUN_0068a24c  @ 0x68a24c
BN_BLINDING * FUN_0068a24c(RSA *param_1,undefined4 *param_2,BN_CTX *param_3)

{
  bool bVar1;
  BN_BLINDING *pBVar2;
  CRYPTO_THREADID *b;
  int iVar3;
  int line;
  CRYPTO_THREADID CStack_20;
  
  bVar1 = false;
  CStack_20.ptr = param_1;
  CStack_20.val = (ulong)param_2;
  CRYPTO_lock(5,9,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x105);
  if (param_1->blinding == (BN_BLINDING *)0x0) {
    CRYPTO_lock(6,9,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x109);
    CRYPTO_lock(9,9,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x10a);
    if (param_1->blinding == (BN_BLINDING *)0x0) {
      pBVar2 = RSA_setup_blinding(param_1,param_3);
      param_1->blinding = pBVar2;
    }
    bVar1 = true;
  }
  pBVar2 = param_1->blinding;
  if (pBVar2 != (BN_BLINDING *)0x0) {
    CRYPTO_THREADID_current(&CStack_20);
    b = BN_BLINDING_thread_id(pBVar2);
    iVar3 = CRYPTO_THREADID_cmp(&CStack_20,b);
    if (iVar3 == 0) {
      *param_2 = 1;
    }
    else {
      *param_2 = 0;
      if (param_1->mt_blinding == (BN_BLINDING *)0x0) {
        if (!bVar1) {
          CRYPTO_lock(6,9,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x12a);
          CRYPTO_lock(9,9,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",299);
        }
        if (param_1->mt_blinding == (BN_BLINDING *)0x0) {
          pBVar2 = RSA_setup_blinding(param_1,param_3);
          param_1->mt_blinding = pBVar2;
        }
        bVar1 = true;
      }
      pBVar2 = param_1->mt_blinding;
    }
  }
  if (bVar1) {
    iVar3 = 10;
    line = 0x137;
  }
  else {
    iVar3 = 6;
    line = 0x139;
  }
  CRYPTO_lock(iVar3,9,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",line);
  return pBVar2;
}

// ---- FUN_0068a33c  @ 0x68a33c
int FUN_0068a33c(int param_1,uchar *param_2,uchar *param_3,int param_4,int param_5)

{
  int iVar1;
  BN_CTX *ctx;
  BIGNUM *ret;
  BIGNUM *r;
  uchar *to;
  BIGNUM *pBVar2;
  BN_MONT_CTX *pBVar3;
  int iVar4;
  uint uVar5;
  size_t len;
  
  iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
  if (0x4000 < iVar1) {
    iVar1 = 0x284;
    iVar4 = 0x69;
    goto LAB_0068a3a8;
  }
  iVar1 = BN_ucmp(*(BIGNUM **)(param_4 + 0x10),*(BIGNUM **)(param_4 + 0x14));
  if (iVar1 < 1) {
    iVar1 = 0x28a;
  }
  else {
    iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
    if ((iVar1 < 0xc01) || (iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x14)), iVar1 < 0x41)) {
      ctx = BN_CTX_new();
      if (ctx == (BN_CTX *)0x0) {
        return -1;
      }
      BN_CTX_start(ctx);
      ret = BN_CTX_get(ctx);
      r = BN_CTX_get(ctx);
      iVar4 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
      iVar1 = iVar4 + 0xe;
      if (-1 < iVar4 + 7) {
        iVar1 = iVar4 + 7;
      }
      len = iVar1 >> 3;
      to = CRYPTO_malloc(len,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x29d);
      uVar5 = 1 - (int)ret;
      if ((BIGNUM *)0x1 < ret) {
        uVar5 = 0;
      }
      if (r == (BIGNUM *)0x0) {
        uVar5 = uVar5 | 1;
      }
      if ((uVar5 == 0) && (to != (uchar *)0x0)) {
        if ((int)len < param_1) {
          iVar4 = 0x2a8;
          iVar1 = 0x6c;
          goto LAB_0068a508;
        }
        pBVar2 = BN_bin2bn(param_2,param_1,ret);
        if (pBVar2 != (BIGNUM *)0x0) {
          iVar1 = BN_ucmp(ret,*(BIGNUM **)(param_4 + 0x10));
          if (-1 < iVar1) {
            iVar1 = 0x84;
            iVar4 = 0x2b0;
            goto LAB_0068a508;
          }
          if ((((-1 < *(int *)(param_4 + 0x3c) << 0x1e) ||
               (pBVar3 = BN_MONT_CTX_set_locked
                                   ((BN_MONT_CTX **)(param_4 + 0x40),9,*(BIGNUM **)(param_4 + 0x10),
                                    ctx), pBVar3 != (BN_MONT_CTX *)0x0)) &&
              (iVar1 = (**(code **)(*(int *)(param_4 + 8) + 0x18))
                                 (r,ret,*(undefined4 *)(param_4 + 0x14),
                                  *(undefined4 *)(param_4 + 0x10),ctx,
                                  *(undefined4 *)(param_4 + 0x40)), iVar1 != 0)) &&
             (((param_5 != 5 || ((*r->d & 0xf) == 0xc)) ||
              (iVar1 = BN_sub(r,*(BIGNUM **)(param_4 + 0x10),r), iVar1 != 0)))) {
            iVar1 = BN_bn2bin(r,to);
            if (param_5 == 3) {
              iVar1 = RSA_padding_check_none(param_3,len,to,iVar1,len);
            }
            else if (param_5 == 5) {
              iVar1 = RSA_padding_check_X931(param_3,len,to,iVar1,len);
            }
            else {
              if (param_5 != 1) {
                iVar4 = 0x2cd;
                iVar1 = 0x76;
                goto LAB_0068a508;
              }
              iVar1 = RSA_padding_check_PKCS1_type_1(param_3,len,to,iVar1,len);
            }
            if (iVar1 < 0) {
              ERR_put_error(4,0x67,0x72,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x2d1);
            }
            goto LAB_0068a544;
          }
        }
      }
      else {
        iVar4 = 0x2a0;
        iVar1 = 0x41;
LAB_0068a508:
        ERR_put_error(4,0x67,iVar1,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",iVar4);
      }
      iVar1 = -1;
LAB_0068a544:
      BN_CTX_end(ctx);
      BN_CTX_free(ctx);
      if (to != (uchar *)0x0) {
        OPENSSL_cleanse(to,len);
        CRYPTO_free(to);
        return iVar1;
      }
      return iVar1;
    }
    iVar1 = 0x293;
  }
  iVar4 = 0x65;
LAB_0068a3a8:
  ERR_put_error(4,0x67,iVar4,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",iVar1);
  return -1;
}

// ---- FUN_0068a574  @ 0x68a574
size_t FUN_0068a574(int param_1,uchar *param_2,int param_3,int param_4,undefined4 param_5)

{
  int iVar1;
  BN_CTX *ctx;
  BIGNUM *ret;
  BIGNUM *a;
  uchar *to;
  BIGNUM *pBVar2;
  BN_MONT_CTX *pBVar3;
  int iVar4;
  uint uVar5;
  size_t sVar6;
  size_t len;
  
  iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
  if (0x4000 < iVar1) {
    iVar1 = 0xa3;
    iVar4 = 0x69;
    goto LAB_0068a5d6;
  }
  iVar1 = BN_ucmp(*(BIGNUM **)(param_4 + 0x10),*(BIGNUM **)(param_4 + 0x14));
  if (iVar1 < 1) {
    iVar1 = 0xa9;
  }
  else {
    iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
    if ((iVar1 < 0xc01) || (iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x14)), iVar1 < 0x41)) {
      ctx = BN_CTX_new();
      if (ctx == (BN_CTX *)0x0) {
        return 0xffffffff;
      }
      BN_CTX_start(ctx);
      ret = BN_CTX_get(ctx);
      a = BN_CTX_get(ctx);
      iVar4 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
      iVar1 = iVar4 + 0xe;
      if (-1 < iVar4 + 7) {
        iVar1 = iVar4 + 7;
      }
      len = iVar1 >> 3;
      to = CRYPTO_malloc(len,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0xbc);
      uVar5 = 1 - (int)ret;
      if ((BIGNUM *)0x1 < ret) {
        uVar5 = 0;
      }
      if (a == (BIGNUM *)0x0) {
        uVar5 = uVar5 | 1;
      }
      if ((uVar5 == 0) && (to != (uchar *)0x0)) {
        switch(param_5) {
        case 1:
          iVar1 = RSA_padding_add_PKCS1_type_2(to,len,param_2,param_1);
          break;
        case 2:
          iVar1 = RSA_padding_add_SSLv23(to,len,param_2,param_1);
          break;
        case 3:
          iVar1 = RSA_padding_add_none(to,len,param_2,param_1);
          break;
        case 4:
          iVar1 = RSA_padding_add_PKCS1_OAEP(to,len,param_2,param_1,(uchar *)0x0,0);
          break;
        default:
          iVar4 = 0xd4;
          iVar1 = 0x76;
          goto LAB_0068a6c4;
        }
        if ((0 < iVar1) && (pBVar2 = BN_bin2bn(to,len,ret), pBVar2 != (BIGNUM *)0x0)) {
          iVar1 = BN_ucmp(ret,*(BIGNUM **)(param_4 + 0x10));
          if (-1 < iVar1) {
            iVar4 = 0xde;
            iVar1 = 0x84;
            goto LAB_0068a6c4;
          }
          if (((-1 < *(int *)(param_4 + 0x3c) << 0x1e) ||
              (pBVar3 = BN_MONT_CTX_set_locked
                                  ((BN_MONT_CTX **)(param_4 + 0x40),9,*(BIGNUM **)(param_4 + 0x10),
                                   ctx), pBVar3 != (BN_MONT_CTX *)0x0)) &&
             (iVar1 = (**(code **)(*(int *)(param_4 + 8) + 0x18))
                                (a,ret,*(undefined4 *)(param_4 + 0x14),
                                 *(undefined4 *)(param_4 + 0x10),ctx,*(undefined4 *)(param_4 + 0x40)
                                ), iVar1 != 0)) {
            iVar4 = BN_num_bits(a);
            iVar1 = iVar4 + 0xe;
            if (-1 < iVar4 + 7) {
              iVar1 = iVar4 + 7;
            }
            iVar1 = BN_bn2bin(a,(uchar *)(param_3 + (len - (iVar1 >> 3))));
            for (iVar4 = 0; sVar6 = len, iVar4 < (int)(len - iVar1); iVar4 = iVar4 + 1) {
              *(undefined1 *)(param_3 + iVar4) = 0;
            }
            goto LAB_0068a750;
          }
        }
      }
      else {
        iVar4 = 0xbf;
        iVar1 = 0x41;
LAB_0068a6c4:
        ERR_put_error(4,0x68,iVar1,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",iVar4);
      }
      sVar6 = 0xffffffff;
LAB_0068a750:
      BN_CTX_end(ctx);
      BN_CTX_free(ctx);
      if (to != (uchar *)0x0) {
        OPENSSL_cleanse(to,len);
        CRYPTO_free(to);
        return sVar6;
      }
      return sVar6;
    }
    iVar1 = 0xb2;
  }
  iVar4 = 0x65;
LAB_0068a5d6:
  ERR_put_error(4,0x68,iVar4,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",iVar1);
  return 0xffffffff;
}

// ---- FUN_0068a780  @ 0x68a780
int FUN_0068a780(BN_BLINDING *param_1,BIGNUM *param_2,BIGNUM *param_3,BN_CTX *param_4)

{
  int iVar1;
  
  if (param_3 == (BIGNUM *)0x0) {
    iVar1 = BN_BLINDING_convert_ex(param_2,(BIGNUM *)0x0,param_1,param_4);
    return iVar1;
  }
  CRYPTO_lock(9,0x19,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x149);
  iVar1 = BN_BLINDING_convert_ex(param_2,param_3,param_1,param_4);
  CRYPTO_lock(10,0x19,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x14b);
  return iVar1;
}

// ---- FUN_0068a7d4  @ 0x68a7d4
int FUN_0068a7d4(int param_1,uchar *param_2,uchar *param_3,int param_4,undefined4 param_5)

{
  BN_CTX *ctx;
  BIGNUM *ret;
  BIGNUM *n;
  int iVar1;
  uchar *to;
  BIGNUM *pBVar2;
  BN_BLINDING *b;
  BN_MONT_CTX *pBVar3;
  int iVar4;
  undefined4 *puVar5;
  size_t len;
  uint uVar6;
  int local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  uint local_2c;
  
  local_40 = 0;
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    return -1;
  }
  BN_CTX_start(ctx);
  ret = BN_CTX_get(ctx);
  n = BN_CTX_get(ctx);
  iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
  iVar4 = iVar1 + 0xe;
  if (-1 < iVar1 + 7) {
    iVar4 = iVar1 + 7;
  }
  len = iVar4 >> 3;
  to = CRYPTO_malloc(len,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x200);
  uVar6 = 1 - (int)ret;
  if ((BIGNUM *)0x1 < ret) {
    uVar6 = 0;
  }
  if (n == (BIGNUM *)0x0) {
    uVar6 = uVar6 | 1;
  }
  if ((uVar6 == 0) && (to != (uchar *)0x0)) {
    if ((int)len < param_1) {
      iVar4 = 0x20b;
      iVar1 = 0x6c;
      goto LAB_0068aa04;
    }
    pBVar2 = BN_bin2bn(param_2,param_1,ret);
    if (pBVar2 != (BIGNUM *)0x0) {
      iVar4 = BN_ucmp(ret,*(BIGNUM **)(param_4 + 0x10));
      if (-1 < iVar4) {
        iVar1 = 0x84;
        iVar4 = 0x214;
        goto LAB_0068aa04;
      }
      if ((*(uint *)(param_4 + 0x3c) & 0x80) == 0) {
        b = (BN_BLINDING *)FUN_0068a24c(param_4,&local_40,ctx);
        if (b == (BN_BLINDING *)0x0) {
          iVar4 = 0x21d;
          iVar1 = 0x44;
          goto LAB_0068aa04;
        }
        if (local_40 == 0) {
          pBVar2 = BN_CTX_get(ctx);
          if (pBVar2 == (BIGNUM *)0x0) {
            iVar4 = 0x226;
            goto LAB_0068a8d0;
          }
        }
        else {
          pBVar2 = (BIGNUM *)0x0;
        }
        iVar4 = FUN_0068a780(b,ret,pBVar2,ctx);
        if (iVar4 == 0) goto LAB_0068aa46;
      }
      else {
        b = (BN_BLINDING *)0x0;
        pBVar2 = (BIGNUM *)0x0;
      }
      uVar6 = *(uint *)(param_4 + 0x3c);
      if (((int)(uVar6 << 0x1a) < 0) ||
         ((((*(int *)(param_4 + 0x1c) != 0 && (*(int *)(param_4 + 0x20) != 0)) &&
           (*(int *)(param_4 + 0x24) != 0)) &&
          ((*(int *)(param_4 + 0x28) != 0 && (*(int *)(param_4 + 0x2c) != 0)))))) {
        iVar4 = (**(code **)(*(int *)(param_4 + 8) + 0x14))(n,ret,param_4,ctx);
      }
      else {
        puVar5 = *(undefined4 **)(param_4 + 0x18);
        if ((uVar6 & 0x100) == 0) {
          local_3c = *puVar5;
          local_38 = puVar5[1];
          local_34 = puVar5[2];
          local_30 = puVar5[3];
          local_2c = puVar5[4] & 0xfffffffe | local_2c & 1 | 6;
          puVar5 = &local_3c;
        }
        if (((int)(uVar6 << 0x1e) < 0) &&
           (pBVar3 = BN_MONT_CTX_set_locked
                               ((BN_MONT_CTX **)(param_4 + 0x40),9,*(BIGNUM **)(param_4 + 0x10),ctx)
           , pBVar3 == (BN_MONT_CTX *)0x0)) goto LAB_0068aa46;
        iVar4 = (**(code **)(*(int *)(param_4 + 8) + 0x18))
                          (n,ret,puVar5,*(undefined4 *)(param_4 + 0x10),ctx,
                           *(undefined4 *)(param_4 + 0x40));
      }
      if ((iVar4 != 0) &&
         ((b == (BN_BLINDING *)0x0 || (iVar4 = BN_BLINDING_invert_ex(n,pBVar2,b,ctx), iVar4 != 0))))
      {
        iVar4 = BN_bn2bin(n,to);
        switch(param_5) {
        case 1:
          iVar4 = RSA_padding_check_PKCS1_type_2(param_3,len,to,iVar4,len);
          break;
        case 2:
          iVar4 = RSA_padding_check_SSLv23(param_3,len,to,iVar4,len);
          break;
        case 3:
          iVar4 = RSA_padding_check_none(param_3,len,to,iVar4,len);
          break;
        case 4:
          iVar4 = RSA_padding_check_PKCS1_OAEP(param_3,len,to,iVar4,len,(uchar *)0x0,0);
          break;
        default:
          iVar4 = 0x264;
          iVar1 = 0x76;
          goto LAB_0068aa04;
        }
        if (iVar4 < 0) {
          ERR_put_error(4,0x65,0x72,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x268);
        }
        goto LAB_0068aa4a;
      }
    }
  }
  else {
    iVar4 = 0x203;
LAB_0068a8d0:
    iVar1 = 0x41;
LAB_0068aa04:
    ERR_put_error(4,0x65,iVar1,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",iVar4);
  }
LAB_0068aa46:
  iVar4 = -1;
LAB_0068aa4a:
  BN_CTX_end(ctx);
  BN_CTX_free(ctx);
  if (to != (uchar *)0x0) {
    OPENSSL_cleanse(to,len);
    CRYPTO_free(to);
  }
  return iVar4;
}

// ---- FUN_0068aa74  @ 0x68aa74
size_t FUN_0068aa74(int param_1,uchar *param_2,int param_3,int param_4,int param_5)

{
  size_t len;
  BN_CTX *ctx;
  BIGNUM *ret;
  BIGNUM *n;
  int iVar1;
  uchar *to;
  BIGNUM *pBVar2;
  BN_MONT_CTX *pBVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  size_t sVar7;
  BN_BLINDING *b;
  BIGNUM *local_48;
  int local_40;
  BIGNUM local_3c;
  
  local_40 = 0;
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    return 0xffffffff;
  }
  BN_CTX_start(ctx);
  ret = BN_CTX_get(ctx);
  n = BN_CTX_get(ctx);
  iVar1 = BN_num_bits(*(BIGNUM **)(param_4 + 0x10));
  iVar4 = iVar1 + 0xe;
  if (-1 < iVar1 + 7) {
    iVar4 = iVar1 + 7;
  }
  len = iVar4 >> 3;
  to = CRYPTO_malloc(len,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",0x171);
  uVar5 = 1 - (int)ret;
  if ((BIGNUM *)0x1 < ret) {
    uVar5 = 0;
  }
  if (n == (BIGNUM *)0x0) {
    uVar5 = uVar5 | 1;
  }
  if ((uVar5 == 0) && (to != (uchar *)0x0)) {
    if (param_5 != 3) {
      if (param_5 == 5) {
        iVar4 = RSA_padding_add_X931(to,len,param_2,param_1);
        goto LAB_0068ab32;
      }
      if (param_5 == 1) {
        iVar4 = RSA_padding_add_PKCS1_type_1(to,len,param_2,param_1);
        goto LAB_0068ab32;
      }
      iVar4 = 0x185;
      iVar1 = 0x76;
      goto LAB_0068abb6;
    }
    iVar4 = RSA_padding_add_none(to,len,param_2,param_1);
LAB_0068ab32:
    if ((0 < iVar4) && (pBVar2 = BN_bin2bn(to,len,ret), pBVar2 != (BIGNUM *)0x0)) {
      iVar4 = BN_ucmp(ret,*(BIGNUM **)(param_4 + 0x10));
      if (-1 < iVar4) {
        iVar4 = 399;
        iVar1 = 0x84;
        goto LAB_0068abb6;
      }
      if ((*(uint *)(param_4 + 0x3c) & 0x80) == 0) {
        b = (BN_BLINDING *)FUN_0068a24c(param_4,&local_40,ctx);
        if (b == (BN_BLINDING *)0x0) {
          iVar4 = 0x198;
          iVar1 = 0x44;
          goto LAB_0068abb6;
        }
        if (local_40 == 0) {
          local_48 = BN_CTX_get(ctx);
          if (local_48 == (BIGNUM *)0x0) {
            iVar4 = 0x1a1;
            goto LAB_0068abae;
          }
        }
        else {
          local_48 = (BIGNUM *)0x0;
        }
        iVar4 = FUN_0068a780(b,ret,local_48,ctx);
        if (iVar4 == 0) goto LAB_0068acfc;
      }
      else {
        b = (BN_BLINDING *)0x0;
        local_48 = (BIGNUM *)0x0;
      }
      if ((*(int *)(param_4 + 0x3c) << 0x1a < 0) ||
         ((((*(int *)(param_4 + 0x1c) != 0 && (*(int *)(param_4 + 0x20) != 0)) &&
           (*(int *)(param_4 + 0x24) != 0)) &&
          ((*(int *)(param_4 + 0x28) != 0 && (*(int *)(param_4 + 0x2c) != 0)))))) {
        iVar4 = (**(code **)(*(int *)(param_4 + 8) + 0x14))(n,ret,param_4,ctx);
      }
      else {
        if (*(int *)(param_4 + 0x3c) << 0x17 < 0) {
          pBVar2 = *(BIGNUM **)(param_4 + 0x18);
        }
        else {
          BN_init(&local_3c);
          puVar6 = *(undefined4 **)(param_4 + 0x18);
          pBVar2 = &local_3c;
          local_3c.d = (ulong *)*puVar6;
          local_3c.top = puVar6[1];
          local_3c.dmax = puVar6[2];
          local_3c.neg = puVar6[3];
          local_3c.flags = puVar6[4] & 0xfffffffe | local_3c.flags & 1U | 6;
        }
        if ((*(int *)(param_4 + 0x3c) << 0x1e < 0) &&
           (pBVar3 = BN_MONT_CTX_set_locked
                               ((BN_MONT_CTX **)(param_4 + 0x40),9,*(BIGNUM **)(param_4 + 0x10),ctx)
           , pBVar3 == (BN_MONT_CTX *)0x0)) goto LAB_0068acfc;
        iVar4 = (**(code **)(*(int *)(param_4 + 8) + 0x18))
                          (n,ret,pBVar2,*(undefined4 *)(param_4 + 0x10),ctx,
                           *(undefined4 *)(param_4 + 0x40));
      }
      if ((iVar4 != 0) &&
         ((b == (BN_BLINDING *)0x0 || (iVar4 = BN_BLINDING_invert_ex(n,local_48,b,ctx), iVar4 != 0))
         )) {
        if (param_5 == 5) {
          BN_sub(ret,*(BIGNUM **)(param_4 + 0x10),n);
          iVar4 = BN_cmp(n,ret);
          if (iVar4 != 0) {
            n = ret;
          }
        }
        iVar1 = BN_num_bits(n);
        iVar4 = iVar1 + 0xe;
        if (-1 < iVar1 + 7) {
          iVar4 = iVar1 + 7;
        }
        iVar4 = BN_bn2bin(n,(uchar *)(param_3 + (len - (iVar4 >> 3))));
        for (iVar1 = 0; sVar7 = len, iVar1 < (int)(len - iVar4); iVar1 = iVar1 + 1) {
          *(undefined1 *)(param_3 + iVar1) = 0;
        }
        goto LAB_0068ad00;
      }
    }
  }
  else {
    iVar4 = 0x174;
LAB_0068abae:
    iVar1 = 0x41;
LAB_0068abb6:
    ERR_put_error(4,0x66,iVar1,"jni/../../openssl-android/crypto/rsa/rsa_eay.c",iVar4);
  }
LAB_0068acfc:
  sVar7 = 0xffffffff;
LAB_0068ad00:
  BN_CTX_end(ctx);
  BN_CTX_free(ctx);
  if (to != (uchar *)0x0) {
    OPENSSL_cleanse(to,len);
    CRYPTO_free(to);
  }
  return sVar7;
}

// ---- FUN_0068baa8  @ 0x68baa8
int FUN_0068baa8(EVP_PKEY_CTX *param_1,char *param_2,char *param_3)

{
  int iVar1;
  int iVar2;
  int cmd;
  BIGNUM *local_1c [2];
  
  if (param_3 == (char *)0x0) {
    ERR_put_error(4,0x90,0x93,"jni/../../openssl-android/crypto/rsa/rsa_pmeth.c",600);
    return 0;
  }
  iVar1 = strcmp(param_2,"rsa_padding_mode");
  if (iVar1 == 0) {
    iVar1 = strcmp(param_3,"pkcs1");
    if (iVar1 == 0) {
      iVar1 = 1;
    }
    else {
      iVar1 = strcmp(param_3,"sslv23");
      if (iVar1 == 0) {
        iVar1 = 2;
      }
      else {
        iVar1 = strcmp(param_3,"none");
        if (iVar1 == 0) {
          iVar1 = 3;
        }
        else {
          iVar1 = strcmp(param_3,"oeap");
          if ((iVar1 == 0) || (iVar1 = strcmp(param_3,"oaep"), iVar1 == 0)) {
            iVar1 = 4;
          }
          else {
            iVar1 = strcmp(param_3,"x931");
            if (iVar1 == 0) {
              iVar1 = 5;
            }
            else {
              iVar2 = strcmp(param_3,"pss");
              iVar1 = 6;
              if (iVar2 != 0) {
                ERR_put_error(4,0x90,0x76,"jni/../../openssl-android/crypto/rsa/rsa_pmeth.c",0x26f);
                return -2;
              }
            }
          }
        }
      }
    }
    iVar2 = -1;
    cmd = 0x1001;
  }
  else {
    iVar1 = strcmp(param_2,"rsa_pss_saltlen");
    if (iVar1 == 0) {
      iVar1 = atoi(param_3);
      iVar2 = 0x18;
      cmd = 0x1002;
    }
    else {
      iVar1 = strcmp(param_2,"rsa_keygen_bits");
      if (iVar1 != 0) {
        local_1c[0] = (BIGNUM *)strcmp(param_2,"rsa_keygen_pubexp");
        if (local_1c[0] != (BIGNUM *)0x0) {
          return -2;
        }
        iVar1 = BN_asc2bn(local_1c,param_3);
        if (iVar1 != 0) {
          iVar1 = EVP_PKEY_CTX_ctrl(param_1,6,4,0x1004,0,local_1c[0]);
          if (iVar1 < 1) {
            BN_free(local_1c[0]);
            return iVar1;
          }
          return iVar1;
        }
        return 0;
      }
      iVar1 = atoi(param_3);
      iVar2 = 4;
      cmd = 0x1003;
    }
  }
  iVar1 = EVP_PKEY_CTX_ctrl(param_1,6,iVar2,cmd,iVar1,(void *)0x0);
  return iVar1;
}

// ---- FUN_0068d82c  @ 0x68d82c
void FUN_0068d82c(BIGNUM *param_1,BIGNUM *param_2)

{
  int iVar1;
  uchar *to;
  EVP_MD *type;
  size_t cnt;
  int iVar2;
  size_t cnt_00;
  EVP_MD_CTX EStack_48;
  uchar auStack_30 [20];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  iVar1 = BN_num_bits(param_1);
  iVar2 = iVar1 + 0xe;
  if (-1 < iVar1 + 7) {
    iVar2 = iVar1 + 7;
  }
  cnt_00 = iVar2 >> 3;
  to = CRYPTO_malloc(cnt_00,"jni/../../openssl-android/crypto/srp/srp_lib.c",0x5c);
  if (to != (uchar *)0x0) {
    BN_bn2bin(param_1,to);
    EVP_MD_CTX_init(&EStack_48);
    type = EVP_sha1();
    EVP_DigestInit_ex(&EStack_48,type,(ENGINE *)0x0);
    EVP_DigestUpdate(&EStack_48,to,cnt_00);
    memset(to,0,cnt_00);
    cnt = BN_bn2bin(param_2,to);
    EVP_DigestUpdate(&EStack_48,to + cnt,cnt_00 - cnt);
    EVP_DigestUpdate(&EStack_48,to,cnt);
    CRYPTO_free(to);
    EVP_DigestFinal_ex(&EStack_48,auStack_30,(uint *)0x0);
    EVP_MD_CTX_cleanup(&EStack_48);
    BN_bin2bn(auStack_30,0x14,(BIGNUM *)0x0);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_0068def4  @ 0x68def4
undefined8 FUN_0068def4(char *param_1,byte *param_2,int param_3)

{
  int iVar1;
  int extraout_r1;
  byte *pbVar2;
  uint uVar3;
  char *pcVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  bool bVar8;
  
  __aeabi_idivmod(param_3,3);
  if (extraout_r1 == 1) {
    uVar3 = (uint)*param_2;
    uVar6 = 0;
  }
  else {
    uVar3 = 0;
    uVar6 = 0;
    if (extraout_r1 == 2) {
      uVar6 = (uint)*param_2;
      uVar3 = (uint)param_2[1];
    }
  }
  bVar8 = false;
  uVar7 = 0;
  iVar1 = extraout_r1;
  pbVar2 = param_2 + extraout_r1;
  pcVar5 = param_1;
  while( true ) {
    if (uVar7 >> 2 != 0) {
      bVar8 = true;
    }
    pcVar4 = pcVar5;
    if (bVar8) {
      pcVar4 = pcVar5 + 1;
      *pcVar5 = s_0123456789ABCDEFGHIJKLMNOPQRSTUV_0094b30c[uVar7 >> 2];
    }
    uVar7 = uVar6 >> 4 | (uVar7 & 3) << 4;
    if (uVar7 != 0) {
      bVar8 = true;
    }
    pcVar5 = pcVar4;
    if (bVar8) {
      pcVar5 = pcVar4 + 1;
      *pcVar4 = s_0123456789ABCDEFGHIJKLMNOPQRSTUV_0094b30c[uVar7];
    }
    uVar6 = uVar3 >> 6 | (uVar6 & 0xf) << 2;
    if (uVar6 != 0) {
      bVar8 = true;
    }
    pcVar4 = pcVar5;
    if (bVar8) {
      pcVar4 = pcVar5 + 1;
      *pcVar5 = s_0123456789ABCDEFGHIJKLMNOPQRSTUV_0094b30c[uVar6];
    }
    bVar8 = bVar8 || (uVar3 & 0x3f) != 0;
    pcVar5 = pcVar4;
    if (bVar8) {
      pcVar5 = pcVar4 + 1;
      *pcVar4 = s_0123456789ABCDEFGHIJKLMNOPQRSTUV_0094b30c[uVar3 & 0x3f];
    }
    if (param_3 <= iVar1) break;
    uVar7 = (uint)*pbVar2;
    iVar1 = iVar1 + 3;
    uVar6 = (uint)pbVar2[1];
    uVar3 = (uint)pbVar2[2];
    pbVar2 = pbVar2 + 3;
  }
  *pcVar5 = '\0';
  return CONCAT44(param_1,param_1);
}

// ---- FUN_0068dff4  @ 0x68dff4
void FUN_0068dff4(void)

{
  undefined4 *puVar1;
  
  puVar1 = CRYPTO_malloc(0x18,"jni/../../openssl-android/crypto/srp/srp_vfy.c",0xc6);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[4] = 0;
    puVar1[3] = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    *puVar1 = 0;
    puVar1[5] = 0;
  }
  return;
}

// ---- FUN_0068e018  @ 0x68e018
void FUN_0068e018(undefined4 *param_1)

{
  if (param_1 != (undefined4 *)0x0) {
    BN_free((BIGNUM *)param_1[1]);
    BN_clear_free((BIGNUM *)param_1[2]);
    CRYPTO_free((void *)*param_1);
    CRYPTO_free((void *)param_1[5]);
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_0068e042  @ 0x68e042
undefined4 * FUN_0068e042(char *param_1,_STACK *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  
  if (param_2 != (_STACK *)0x0) {
    for (iVar3 = 0; iVar1 = sk_num(param_2), iVar3 < iVar1; iVar3 = iVar3 + 1) {
      puVar2 = sk_value(param_2,iVar3);
      if ((puVar2 != (undefined4 *)0x0) &&
         ((param_1 == (char *)0x0 || (iVar1 = strcmp((char *)*puVar2,param_1), iVar1 == 0)))) {
        return puVar2;
      }
    }
  }
  puVar2 = (undefined4 *)SRP_get_default_gN(param_1);
  return puVar2;
}

// ---- FUN_0068e084  @ 0x68e084
int FUN_0068e084(int param_1,char *param_2)

{
  char cVar1;
  byte bVar2;
  size_t sVar3;
  int iVar4;
  int iVar5;
  char *pcVar6;
  char *pcVar7;
  int iVar8;
  int iVar9;
  
  do {
    pcVar7 = param_2;
    cVar1 = *pcVar7;
    if (cVar1 == '\0') break;
    param_2 = pcVar7 + 1;
  } while ((cVar1 == '\t' || cVar1 == ' ') || (cVar1 == '\n'));
  sVar3 = strlen(pcVar7);
  iVar9 = 0;
  while ((iVar9 < (int)sVar3 &&
         (pcVar6 = strchr(s_0123456789ABCDEFGHIJKLMNOPQRSTUV_0094b30c,(uint)(byte)pcVar7[iVar9]),
         pcVar6 != (char *)0x0))) {
    *(char *)(param_1 + iVar9) = (char)pcVar6 + -0xc;
    iVar9 = iVar9 + 1;
  }
  if (iVar9 == 0) {
    return 0;
  }
  pcVar6 = (char *)(param_1 + iVar9);
  iVar4 = iVar9 + -1;
  pcVar7 = pcVar6;
  iVar5 = iVar9;
  do {
    bVar2 = pcVar7[-1];
    *(byte *)(param_1 + iVar5) = bVar2;
    iVar8 = iVar5;
    if (iVar4 + -1 < 0) break;
    *(byte *)(param_1 + iVar5) = bVar2 | pcVar7[-2] << 6;
    iVar8 = iVar5 + -1;
    bVar2 = (byte)(((uint)(byte)pcVar7[-2] << 0x1a) >> 0x18);
    pcVar6[-1] = bVar2 >> 4;
    if (iVar4 == 1) break;
    iVar8 = iVar5 + -2;
    pcVar6[-1] = bVar2 >> 4 | pcVar7[-3] << 4;
    bVar2 = (byte)(((uint)(byte)pcVar7[-3] << 0x1a) >> 0x18);
    pcVar6[-2] = bVar2 >> 6;
    if (iVar4 == 2) break;
    pcVar7 = pcVar7 + -4;
    iVar4 = iVar4 + -4;
    iVar8 = iVar5 + -3;
    pcVar6[-2] = bVar2 >> 6 | *pcVar7 << 2;
    pcVar6 = pcVar6 + -3;
    *pcVar6 = '\0';
    iVar5 = iVar8;
  } while (iVar4 != -1);
  for (; *(char *)(param_1 + iVar8) == '\0' && iVar8 <= iVar9; iVar8 = iVar8 + 1) {
  }
  iVar5 = 0;
  for (; iVar8 <= iVar9; iVar8 = iVar8 + 1) {
    *(undefined1 *)(param_1 + iVar5) = *(undefined1 *)(param_1 + iVar8);
    iVar5 = iVar5 + 1;
  }
  return iVar5;
}

// ---- FUN_0068e178  @ 0x68e178
void FUN_0068e178(int param_1,char *param_2,char *param_3)

{
  size_t sVar1;
  int iVar2;
  BIGNUM *pBVar3;
  bool bVar4;
  uchar auStack_9e0 [2500];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  sVar1 = strlen(param_2);
  if ((sVar1 < 0x9c5) && (sVar1 = strlen(param_3), sVar1 < 0x9c5)) {
    iVar2 = FUN_0068e084(auStack_9e0,param_3);
    pBVar3 = BN_bin2bn(auStack_9e0,iVar2,(BIGNUM *)0x0);
    *(BIGNUM **)(param_1 + 8) = pBVar3;
    bVar4 = false;
    if (pBVar3 != (BIGNUM *)0x0) {
      iVar2 = FUN_0068e084(auStack_9e0,param_2);
      pBVar3 = BN_bin2bn(auStack_9e0,iVar2,(BIGNUM *)0x0);
      *(BIGNUM **)(param_1 + 4) = pBVar3;
      bVar4 = pBVar3 != (BIGNUM *)0x0;
    }
  }
  else {
    bVar4 = false;
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar4);
}

// ---- FUN_0068e1fc  @ 0x68e1fc
void FUN_0068e1fc(char *param_1)

{
  undefined4 *ptr;
  char *pcVar1;
  int len;
  BIGNUM *pBVar2;
  undefined4 *puVar3;
  uchar auStack_9d8 [2500];
  int local_14;
  
  local_14 = __stack_chk_guard;
  ptr = CRYPTO_malloc(8,"jni/../../openssl-android/crypto/srp/srp_vfy.c",0x121);
  puVar3 = ptr;
  if (ptr != (undefined4 *)0x0) {
    pcVar1 = BUF_strdup(param_1);
    *ptr = pcVar1;
    if (pcVar1 != (char *)0x0) {
      len = FUN_0068e084(auStack_9d8,param_1);
      pBVar2 = BN_bin2bn(auStack_9d8,len,(BIGNUM *)0x0);
      ptr[1] = pBVar2;
      if (pBVar2 != (BIGNUM *)0x0) goto LAB_0068e252;
      CRYPTO_free((void *)*ptr);
    }
    puVar3 = (undefined4 *)0x0;
    CRYPTO_free(ptr);
  }
LAB_0068e252:
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(puVar3);
  }
  return;
}

// ---- FUN_0068e274  @ 0x68e274
undefined4 FUN_0068e274(_STACK *param_1,char *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  
  if (param_1 == (_STACK *)0x0) {
    return 0;
  }
  for (iVar3 = 0; iVar1 = sk_num(param_1), iVar3 < iVar1; iVar3 = iVar3 + 1) {
    puVar2 = sk_value(param_1,iVar3);
    iVar1 = strcmp((char *)*puVar2,param_2);
    if (iVar1 == 0) {
      return puVar2[1];
    }
  }
  puVar2 = (undefined4 *)FUN_0068e1fc(param_2);
  if (puVar2 != (undefined4 *)0x0) {
    iVar3 = sk_insert(param_1,puVar2,0);
    if (0 < iVar3) {
      return puVar2[1];
    }
    CRYPTO_free((void *)*puVar2);
    BN_free((BIGNUM *)puVar2[1]);
    CRYPTO_free(puVar2);
    return 0;
  }
  return 0;
}

// ---- FUN_0068f1ac  @ 0x68f1ac
void FUN_0068f1ac(int *param_1)

{
  if ((param_1[7] << 0x1f < 0) && (CRYPTO_free((void *)param_1[1]), *param_1 == 3)) {
    CRYPTO_free((void *)param_1[4]);
    CRYPTO_free((void *)param_1[5]);
    CRYPTO_free((void *)param_1[6]);
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0068f1de  @ 0x68f1de
undefined4 FUN_0068f1de(undefined4 param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 local_30;
  undefined4 uStack_2c;
  
  memset(&local_30,0,0x20);
  local_30 = 5;
  uVar2 = 0;
  if (*(code **)(*param_3 + 8) != (code *)0x0) {
    uStack_2c = param_1;
    iVar1 = (**(code **)(*param_3 + 8))(param_3,&local_30);
    if (iVar1 == 0) {
      uVar2 = 0xffffffff;
    }
    else {
      uVar2 = 0;
    }
  }
  return uVar2;
}

// ---- FUN_0068f214  @ 0x68f214
int * FUN_0068f214(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int *piVar1;
  
  if (param_1 == 0) {
    ERR_put_error(0x28,0x6d,0x43,"jni/../../openssl-android/crypto/ui/ui_lib.c",0x93);
    piVar1 = (int *)0x0;
  }
  else if (param_5 == 0 && param_3 - 1U < 3) {
    ERR_put_error(0x28,0x6d,0x69,"jni/../../openssl-android/crypto/ui/ui_lib.c",0x98);
    piVar1 = (int *)0x0;
  }
  else {
    piVar1 = CRYPTO_malloc(0x20,"jni/../../openssl-android/crypto/ui/ui_lib.c",0x9a);
    if (piVar1 != (int *)0x0) {
      piVar1[1] = param_1;
      piVar1[2] = param_4;
      *piVar1 = param_3;
      piVar1[7] = (uint)(param_2 != 0);
      piVar1[3] = param_5;
    }
  }
  return piVar1;
}

// ---- FUN_0068f298  @ 0x68f298
undefined8
FUN_0068f298(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
            ,undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9)

{
  void *data;
  _STACK *p_Var1;
  int iVar2;
  
  data = (void *)FUN_0068f214(param_2,param_3,param_4,param_5,param_6,param_2,param_3);
  if (data == (void *)0x0) {
LAB_0068f2c8:
    iVar2 = -1;
  }
  else {
    if (*(int *)(param_1 + 4) == 0) {
      p_Var1 = sk_new_null();
      *(_STACK **)(param_1 + 4) = p_Var1;
      if (p_Var1 == (_STACK *)0x0) {
        FUN_0068f1ac(data);
        goto LAB_0068f2c8;
      }
    }
    *(undefined4 *)((int)data + 0x10) = param_7;
    *(undefined4 *)((int)data + 0x14) = param_8;
    *(undefined4 *)((int)data + 0x18) = param_9;
    iVar2 = sk_push(*(_STACK **)(param_1 + 4),data);
    if (iVar2 < 1) {
      iVar2 = iVar2 + -1;
    }
  }
  return CONCAT44(param_6,iVar2);
}

// ---- FUN_0068f2e8  @ 0x68f2e8
undefined8
FUN_0068f2e8(int param_1,undefined4 param_2,undefined4 param_3,byte *param_4,char *param_5,
            undefined4 param_6,undefined4 param_7,int param_8)

{
  char *pcVar1;
  void *data;
  _STACK *p_Var2;
  int iVar3;
  byte *pbVar4;
  undefined4 uVar6;
  undefined4 uVar7;
  byte *pbVar5;
  
  if (param_4 == (byte *)0x0) {
    param_8 = 0xca;
LAB_0068f31a:
    ERR_put_error(0x28,0x6c,0x43,"jni/../../openssl-android/crypto/ui/ui_lib.c",param_8);
  }
  else {
    pbVar5 = param_4;
    uVar6 = param_2;
    uVar7 = param_3;
    if (param_5 == (char *)0x0) {
      param_8 = 0xce;
      goto LAB_0068f31a;
    }
    while( true ) {
      pbVar4 = pbVar5 + 1;
      if (*pbVar5 == 0) break;
      pcVar1 = strchr(param_5,(uint)*pbVar5);
      pbVar5 = pbVar4;
      if (pcVar1 != (char *)0x0) {
        ERR_put_error(0x28,0x6c,0x68,"jni/../../openssl-android/crypto/ui/ui_lib.c",0xd7);
      }
    }
    data = (void *)FUN_0068f214(param_2,param_6,3,param_7,param_8,uVar6,uVar7);
    if (data != (void *)0x0) {
      if (*(int *)(param_1 + 4) == 0) {
        p_Var2 = sk_new_null();
        *(_STACK **)(param_1 + 4) = p_Var2;
        if (p_Var2 == (_STACK *)0x0) {
          FUN_0068f1ac(data);
          goto LAB_0068f382;
        }
      }
      *(undefined4 *)((int)data + 0x10) = param_3;
      *(byte **)((int)data + 0x14) = param_4;
      *(char **)((int)data + 0x18) = param_5;
      iVar3 = sk_push(*(_STACK **)(param_1 + 4),data);
      if (iVar3 < 1) {
        iVar3 = iVar3 + -1;
      }
      goto LAB_0068f386;
    }
  }
LAB_0068f382:
  iVar3 = -1;
LAB_0068f386:
  return CONCAT44(param_8,iVar3);
}
