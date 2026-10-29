// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- FUN_006b4e44  @ 0x6b4e44
void FUN_006b4e44(int *param_1,int param_2,int *param_3)

{
  if (param_2 != *param_3) {
    if (param_2 == *param_1) {
      *param_1 = *(int *)(param_2 + 0xc);
    }
    if (*(int *)(param_2 + 0x10) != 0) {
      *(undefined4 *)(*(int *)(param_2 + 0x10) + 0xc) = *(undefined4 *)(param_2 + 0xc);
    }
    if (*(int *)(param_2 + 0xc) != 0) {
      *(undefined4 *)(*(int *)(param_2 + 0xc) + 0x10) = *(undefined4 *)(param_2 + 0x10);
    }
    *(int *)(*param_3 + 0xc) = param_2;
    *(int *)(param_2 + 0x10) = *param_3;
    *(undefined4 *)(param_2 + 0xc) = 0;
    *param_3 = param_2;
  }
  return;
}

// ---- FUN_006b4e74  @ 0x6b4e74
void FUN_006b4e74(void)

{
  int mode;
  undefined4 *data;
  COMP_METHOD *pCVar1;
  int line;
  
  CRYPTO_lock(5,0x10,"jni/../../openssl-android/ssl/ssl_ciph.c",0x1bd);
  mode = 6;
  if (DAT_00968988 == (_STACK *)0x0) {
    CRYPTO_lock(6,0x10,"jni/../../openssl-android/ssl/ssl_ciph.c",0x1c0);
    CRYPTO_lock(9,0x10,"jni/../../openssl-android/ssl/ssl_ciph.c",0x1c1);
    if (DAT_00968988 == (_STACK *)0x0) {
      CRYPTO_mem_ctrl(3);
      DAT_00968988 = sk_new((cmp *)&LAB_006b4e38_1);
      if (DAT_00968988 != (_STACK *)0x0) {
        data = CRYPTO_malloc(0xc,"jni/../../openssl-android/ssl/ssl_ciph.c",0x1cc);
        if (data != (undefined4 *)0x0) {
          pCVar1 = COMP_zlib();
          data[2] = pCVar1;
          if ((pCVar1 == (COMP_METHOD *)0x0) || (pCVar1->type != 0)) {
            *data = 1;
            data[1] = pCVar1->name;
            sk_push(DAT_00968988,data);
          }
          else {
            CRYPTO_free(data);
          }
        }
        sk_sort(DAT_00968988);
      }
      CRYPTO_mem_ctrl(2);
    }
    mode = 10;
    line = 0x1e1;
  }
  else {
    line = 0x1e3;
  }
  CRYPTO_lock(mode,0x10,"jni/../../openssl-android/ssl/ssl_ciph.c",line);
  return;
}

// ---- FUN_006b4f44  @ 0x6b4f44
int FUN_006b4f44(char *param_1)

{
  EVP_PKEY_ASN1_METHOD *ameth;
  int local_c;
  
  local_c = 0;
  ameth = EVP_PKEY_asn1_find_str((ENGINE **)0x0,param_1,-1);
  if (ameth != (EVP_PKEY_ASN1_METHOD *)0x0) {
    EVP_PKEY_asn1_get0_info(&local_c,(int *)0x0,(int *)0x0,(char **)0x0,(char **)0x0,ameth);
  }
  return local_c;
}

// ---- FUN_006b4f6e  @ 0x6b4f6e
void FUN_006b4f6e(uint param_1,uint param_2,uint param_3,uint param_4,uint param_5,uint param_6,
                 int param_7,uint param_8,uint *param_9,uint *param_10)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  bool bVar8;
  bool bVar9;
  int *local_30;
  int *local_2c [2];
  
  bVar9 = param_7 != 3;
  local_30 = (int *)*param_9;
  local_2c[0] = (int *)*param_10;
  piVar2 = local_2c[0];
  piVar7 = local_2c[0];
  piVar6 = local_30;
  if (bVar9) {
    piVar2 = local_30;
    piVar7 = local_30;
    piVar6 = local_2c[0];
  }
LAB_006b4fb6:
  do {
    piVar5 = piVar7;
    uVar1 = 1 - (int)piVar2;
    if ((int *)0x1 < piVar2) {
      uVar1 = 0;
    }
    if (piVar2 == piVar6) {
      uVar1 = uVar1 | 1;
    }
    if (uVar1 != 0) {
      *param_9 = (uint)local_30;
      *param_10 = (uint)local_2c[0];
      return;
    }
    if (bVar9) {
      piVar7 = (int *)piVar5[3];
    }
    else {
      piVar7 = (int *)piVar5[4];
    }
    iVar3 = *piVar5;
    piVar2 = piVar5;
    if ((int)param_8 < 0) goto LAB_006b4fea;
    uVar1 = param_8;
  } while (param_8 != *(uint *)(iVar3 + 0x28));
  goto LAB_006b504a;
LAB_006b4fea:
  if ((((((param_1 == 0) || ((param_1 & *(uint *)(iVar3 + 0xc)) != 0)) &&
        ((param_2 == 0 || ((param_2 & *(uint *)(iVar3 + 0x10)) != 0)))) &&
       ((param_3 == 0 || ((param_3 & *(uint *)(iVar3 + 0x14)) != 0)))) &&
      ((param_4 == 0 || ((param_4 & *(uint *)(iVar3 + 0x18)) != 0)))) &&
     ((((uVar1 = 0, param_5 == 0 || (uVar1 = *(uint *)(iVar3 + 0x1c), (param_5 & uVar1) != 0)) &&
       (((param_6 & 3) == 0 || (uVar1 = *(uint *)(iVar3 + 0x20) & 3, (uVar1 & param_6) != 0)))) &&
      (((param_6 & 0x1fc) == 0 || ((*(uint *)(iVar3 + 0x20) & 0x1fc & param_6) != 0)))))) {
LAB_006b504a:
    if (param_7 == 1) {
      if (piVar5[1] == 0) {
        FUN_006b4e44(&local_30,piVar5,local_2c);
        piVar5[1] = 1;
      }
    }
    else if (param_7 == 4) {
      if (piVar5[1] != 0) {
        FUN_006b4e44(&local_30,piVar5,local_2c);
      }
    }
    else if (bVar9) {
      if (param_7 == 2) {
        bVar8 = local_30 == piVar5;
        if (bVar8) {
          piVar4 = (int *)piVar5[3];
          local_30 = piVar4;
        }
        else {
          piVar4 = (int *)piVar5[4];
          uVar1 = piVar5[3];
        }
        if (!bVar8) {
          piVar4[3] = uVar1;
        }
        piVar5[1] = 0;
        if (local_2c[0] == piVar5) {
          local_2c[0] = (int *)piVar5[4];
        }
        if (piVar5[3] != 0) {
          *(int *)(piVar5[3] + 0x10) = piVar5[4];
        }
        if (piVar5[4] != 0) {
          *(int *)(piVar5[4] + 0xc) = piVar5[3];
        }
        piVar5[3] = 0;
        piVar5[4] = 0;
      }
    }
    else if (piVar5[1] != 0) {
      if (piVar5 != local_30) {
        if (piVar5 == local_2c[0]) {
          local_2c[0] = (int *)piVar5[4];
        }
        if (piVar5[3] != 0) {
          *(int *)(piVar5[3] + 0x10) = piVar5[4];
        }
        if (piVar5[4] != 0) {
          *(int *)(piVar5[4] + 0xc) = piVar5[3];
        }
        local_30[4] = (int)piVar5;
        piVar5[3] = (int)local_30;
        piVar5[4] = 0;
        local_30 = piVar5;
      }
      piVar5[1] = 0;
    }
  }
  goto LAB_006b4fb6;
}

// ---- FUN_006b50f8  @ 0x6b50f8
undefined4 FUN_006b50f8(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  void *__s;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  size_t __n;
  
  iVar3 = 0;
  for (piVar4 = (int *)*param_1; piVar4 != (int *)0x0; piVar4 = (int *)piVar4[3]) {
    if ((piVar4[1] != 0) && (iVar3 < *(int *)(*piVar4 + 0x28))) {
      iVar3 = *(int *)(*piVar4 + 0x28);
    }
  }
  __n = (iVar3 + 1) * 4;
  __s = CRYPTO_malloc(__n,"jni/../../openssl-android/ssl/ssl_ciph.c",0x431);
  if (__s == (void *)0x0) {
    ERR_put_error(0x14,0xe7,0x41,"jni/../../openssl-android/ssl/ssl_ciph.c",0x434);
    uVar2 = 0;
  }
  else {
    memset(__s,0,__n);
    for (piVar4 = (int *)*param_1; piVar4 != (int *)0x0; piVar4 = (int *)piVar4[3]) {
      if (piVar4[1] != 0) {
        *(int *)((int)__s + *(int *)(*piVar4 + 0x28) * 4) =
             *(int *)((int)__s + *(int *)(*piVar4 + 0x28) * 4) + 1;
      }
    }
    iVar1 = iVar3 * 4;
    iVar5 = 0;
    for (; -1 < iVar3; iVar3 = iVar3 + -1) {
      if (0 < *(int *)((int)__s + iVar5 + iVar1)) {
        FUN_006b4f6e(0,0,0,0,0,0,4,iVar3,param_1,param_2);
      }
      iVar5 = iVar5 + -4;
    }
    CRYPTO_free(__s);
    uVar2 = 1;
  }
  return uVar2;
}

// ---- FUN_006b51c0  @ 0x6b51c0
undefined4 FUN_006b51c0(char *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  char cVar1;
  char *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int *piVar9;
  size_t __n;
  uint uVar10;
  char *pcVar11;
  char *__s2;
  int iVar12;
  uint uVar13;
  uint uVar14;
  uint local_54;
  uint local_50;
  undefined4 local_4c;
  undefined4 *local_3c;
  
  local_4c = 1;
  do {
    while( true ) {
      cVar1 = *param_1;
      if (cVar1 == '\0') {
        return local_4c;
      }
      if (cVar1 == '-') {
        param_1 = param_1 + 1;
        iVar12 = 3;
      }
      else if (cVar1 == '+') {
        param_1 = param_1 + 1;
        iVar12 = 4;
      }
      else if (cVar1 == '!') {
        param_1 = param_1 + 1;
        iVar12 = 2;
      }
      else if (cVar1 == '@') {
        param_1 = param_1 + 1;
        iVar12 = 5;
      }
      else {
        iVar12 = 1;
      }
      if ((cVar1 != ' ' && cVar1 != ':') && (cVar1 != ',' && cVar1 != ';')) break;
      param_1 = param_1 + 1;
    }
    uVar10 = 0;
    local_54 = 0;
    local_50 = 0;
    uVar6 = 0;
    pcVar11 = param_1;
    uVar7 = 0;
    uVar13 = 0;
    do {
      __n = 0;
      cVar1 = *pcVar11;
      param_1 = pcVar11;
      while ((((byte)(cVar1 - 0x30U) < 10 || (byte)(cVar1 + 0xbfU) < 0x1a ||
              ((byte)(cVar1 + 0x9fU) < 0x1a || cVar1 == '-')) || (cVar1 == '.'))) {
        param_1 = param_1 + 1;
        __n = __n + 1;
        cVar1 = *param_1;
      }
      if (__n == 0) {
        param_1 = param_1 + 1;
        ERR_put_error(0x14,0xe6,0x118,"jni/../../openssl-android/ssl/ssl_ciph.c",0x493);
        if (iVar12 != 5) {
          local_4c = 0;
          pcVar2 = param_1;
          goto LAB_006b5452;
        }
LAB_006b5410:
        ERR_put_error(0x14,0xe6,0x118,"jni/../../openssl-android/ssl/ssl_ciph.c",0x52c);
LAB_006b5424:
        local_4c = 0;
        pcVar11 = param_1;
        goto LAB_006b542a;
      }
      if (iVar12 == 5) {
        if ((__n != 8) || (iVar12 = strncmp(pcVar11,"STRENGTH",8), iVar12 != 0)) goto LAB_006b5410;
        iVar12 = FUN_006b50f8(param_2,param_3);
        pcVar11 = param_1;
        if (iVar12 == 0) goto LAB_006b5424;
        goto LAB_006b542a;
      }
      local_3c = param_4;
      if (cVar1 == '+') {
        param_1 = param_1 + 1;
      }
      do {
        puVar4 = local_3c + 1;
        piVar9 = (int *)*local_3c;
        pcVar2 = param_1;
        if (piVar9 == (int *)0x0) goto LAB_006b5452;
        __s2 = (char *)piVar9[1];
        iVar3 = strncmp(pcVar11,__s2,__n);
        local_3c = puVar4;
      } while ((iVar3 != 0) || (__s2[__n] != '\0'));
      uVar5 = piVar9[3];
      uVar8 = uVar6;
      if (((((uVar5 != 0) &&
            ((uVar8 = uVar5, uVar6 != 0 && (uVar8 = uVar6 & uVar5, (uVar6 & uVar5) == 0)))) ||
           ((uVar6 = piVar9[4], uVar5 = uVar7, uVar6 != 0 &&
            ((uVar5 = uVar6, uVar7 != 0 && (uVar5 = uVar7 & uVar6, (uVar7 & uVar6) == 0)))))) ||
          ((uVar7 = piVar9[5], uVar6 = local_54, uVar7 != 0 &&
           ((uVar6 = uVar7, local_54 != 0 && (uVar6 = local_54 & uVar7, (local_54 & uVar7) == 0)))))
          ) || ((local_54 = uVar6, uVar7 = piVar9[6], uVar6 = local_50, uVar7 != 0 &&
                ((uVar6 = uVar7, local_50 != 0 &&
                 (uVar6 = local_50 & uVar7, (local_50 & uVar7) == 0)))))) goto LAB_006b5452;
      local_50 = uVar6;
      uVar6 = piVar9[8];
      if ((uVar6 & 3) != 0) {
        if ((uVar10 & 3) == 0) {
          uVar10 = uVar10 | uVar6 & 3;
        }
        else {
          uVar10 = uVar10 & (uVar6 | 0xfffffffc);
          if ((uVar10 & 3) == 0) goto LAB_006b5452;
        }
      }
      if ((uVar6 & 0x1fc) != 0) {
        if ((uVar10 & 0x1fc) == 0) {
          uVar10 = uVar10 | uVar6 & 0x1fc;
        }
        else {
          uVar10 = uVar10 & (uVar6 | 0xfffffe03);
          if ((uVar10 & 0x1fc) == 0) goto LAB_006b5452;
        }
      }
      uVar14 = uVar13;
      if ((((*piVar9 == 0) && (uVar6 = piVar9[7], uVar6 != 0)) && (uVar14 = uVar6, uVar13 != 0)) &&
         (uVar14 = uVar13 & uVar6, (uVar13 & uVar6) == 0)) goto LAB_006b5452;
      uVar6 = uVar8;
      pcVar11 = param_1;
      uVar7 = uVar5;
      uVar13 = uVar14;
    } while (cVar1 == '+');
    FUN_006b4f6e(uVar8,uVar5,local_54,local_50,uVar14,uVar10,iVar12,0xffffffff,param_2,param_3);
LAB_006b5476:
    if (*param_1 == '\0') {
      return local_4c;
    }
  } while( true );
LAB_006b542a:
  param_1 = pcVar11;
  cVar1 = *param_1;
  if ((cVar1 == '\0') || (cVar1 == ' ' || cVar1 == ':')) goto LAB_006b5476;
  if ((cVar1 == ';') || (pcVar11 = param_1 + 1, cVar1 == ',')) goto LAB_006b5476;
  goto LAB_006b542a;
LAB_006b5452:
  param_1 = pcVar2;
  cVar1 = *param_1;
  if ((cVar1 == '\0') || (cVar1 == ' ' || cVar1 == ':')) goto LAB_006b5476;
  if ((cVar1 == ';') || (pcVar2 = param_1 + 1, cVar1 == ',')) goto LAB_006b5476;
  goto LAB_006b5452;
}

// ---- FUN_006b8d40  @ 0x6b8d40
undefined4 FUN_006b8d40(int *param_1,EVP_PKEY *param_2)

{
  int iVar1;
  undefined4 uVar2;
  EVP_PKEY *to;
  int iVar3;
  
  iVar1 = ssl_cert_type(0);
  if (iVar1 < 0) {
    ERR_put_error(0x14,0xc1,0xf7,"jni/../../openssl-android/ssl/ssl_rsa.c",0xbd);
    uVar2 = 0;
  }
  else {
    if ((X509 *)param_1[iVar1 * 3 + 0xc] != (X509 *)0x0) {
      to = X509_get_pubkey((X509 *)param_1[iVar1 * 3 + 0xc]);
      EVP_PKEY_copy_parameters(to,param_2);
      EVP_PKEY_free(to);
      ERR_clear_error();
      if ((param_2->type != 6) || (iVar3 = RSA_flags((param_2->pkey).rsa), -1 < iVar3 << 0x1f)) {
        iVar3 = X509_check_private_key((X509 *)param_1[iVar1 * 3 + 0xc],param_2);
        if (iVar3 == 0) {
          X509_free((X509 *)param_1[iVar1 * 3 + 0xc]);
          param_1[iVar1 * 3 + 0xc] = 0;
          return 0;
        }
      }
    }
    if ((EVP_PKEY *)param_1[iVar1 * 3 + 0xe] != (EVP_PKEY *)0x0) {
      EVP_PKEY_free((EVP_PKEY *)param_1[iVar1 * 3 + 0xe]);
    }
    CRYPTO_add_lock(&param_2->references,1,10,"jni/../../openssl-android/ssl/ssl_rsa.c",0xdb);
    uVar2 = 1;
    param_1[iVar1 * 3 + 0xe] = (int)param_2;
    *param_1 = (int)(param_1 + iVar1 * 3 + 0xc);
    param_1[1] = 0;
  }
  return uVar2;
}

// ---- FUN_006b9a08  @ 0x6b9a08
void FUN_006b9a08(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_2 + 0xcc);
  if (iVar1 == 0) {
    return;
  }
  iVar2 = *(int *)(param_2 + 200);
  if (iVar2 == 0) {
    return;
  }
  if (iVar1 == param_1 + 0x1c) {
    if (iVar2 == param_1 + 0x18) {
      *(undefined4 *)(param_1 + 0x18) = 0;
      *(undefined4 *)(param_1 + 0x1c) = 0;
      goto LAB_006b9a56;
    }
    *(int *)(param_1 + 0x1c) = iVar2;
    iVar2 = *(int *)(param_2 + 200);
  }
  else {
    if (iVar2 == param_1 + 0x18) {
      *(int *)(param_1 + 0x18) = iVar1;
      *(int *)(*(int *)(param_2 + 0xcc) + 200) = iVar2;
      goto LAB_006b9a56;
    }
    *(int *)(iVar1 + 200) = iVar2;
    iVar2 = *(int *)(param_2 + 200);
    iVar1 = *(int *)(param_2 + 0xcc);
  }
  *(int *)(iVar2 + 0xcc) = iVar1;
LAB_006b9a56:
  *(undefined4 *)(param_2 + 0xcc) = 0;
  *(undefined4 *)(param_2 + 200) = 0;
  return;
}

// ---- FUN_006b9a62  @ 0x6b9a62
undefined4 FUN_006b9a62(SSL *param_1,uchar *param_2,uint *param_3)

{
  int iVar1;
  int iVar2;
  
  iVar2 = 10;
  while( true ) {
    iVar1 = RAND_pseudo_bytes(param_2,*param_3);
    if (iVar1 < 1) {
      return 0;
    }
    iVar1 = SSL_has_matching_session_id(param_1,param_2,*param_3);
    if (iVar1 == 0) break;
    iVar2 = iVar2 + -1;
    if (iVar2 == 0) {
      return 0;
    }
  }
  return 1;
}

// ---- FUN_006b9cc8  @ 0x6b9cc8
bool FUN_006b9cc8(int param_1,SSL_SESSION *param_2,int param_3)

{
  SSL_SESSION *ses;
  bool bVar1;
  
  if (param_3 != 0) {
    CRYPTO_lock(9,0xc,"jni/../../openssl-android/ssl/ssl_sess.c",0x2d9);
  }
  ses = lh_retrieve(*(_LHASH **)(param_1 + 0x10),param_2);
  bVar1 = ses == param_2;
  if (bVar1) {
    ses = lh_delete(*(_LHASH **)(param_1 + 0x10),param_2);
    FUN_006b9a08(param_1,param_2);
  }
  if (param_3 != 0) {
    CRYPTO_lock(10,0xc,"jni/../../openssl-android/ssl/ssl_sess.c",0x2e1);
  }
  if (bVar1) {
    ses->krb5_client_princ[4] = '\x01';
    ses->krb5_client_princ[5] = '\0';
    ses->krb5_client_princ[6] = '\0';
    ses->krb5_client_princ[7] = '\0';
    if (*(code **)(param_1 + 0x2c) != (code *)0x0) {
      (**(code **)(param_1 + 0x2c))(param_1,ses);
    }
    SSL_SESSION_free(ses);
  }
  return bVar1;
}

// ---- FUN_006bc114  @ 0x6bc114
void FUN_006bc114(uint param_1,void *param_2,size_t param_3,void *param_4,size_t param_5,
                 void *param_6,size_t param_7,void *param_8,size_t param_9,uchar *param_10,
                 uint param_11,void *param_12,uchar *param_13,size_t param_14)

{
  bool bVar1;
  EVP_MD *type;
  int iVar2;
  EVP_PKEY *pkey;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uchar *sigret;
  size_t __n;
  int local_dc;
  uchar *local_d8;
  int local_ac;
  EVP_MD *local_a8;
  size_t local_a4;
  size_t local_a0;
  EVP_MD_CTX EStack_9c;
  EVP_MD_CTX EStack_84;
  uchar auStack_6c [64];
  int local_2c;
  
  iVar3 = 0;
  iVar5 = 0;
  local_2c = __stack_chk_guard;
  local_d8 = param_10;
  while (iVar2 = ssl_get_handshake_digest(iVar5,&local_ac,&local_a8), iVar2 != 0) {
    if ((param_1 & local_ac << 10) != 0) {
      iVar3 = iVar3 + 1;
    }
    iVar5 = iVar5 + 1;
  }
  iVar5 = __divsi3(param_11,iVar3);
  if (iVar3 == 1) {
    param_11 = 0;
  }
  memset(param_12,0,param_14);
  local_dc = 0;
  do {
    iVar3 = ssl_get_handshake_digest(local_dc,&local_ac,&local_a8);
    type = local_a8;
    if (iVar3 == 0) {
      uVar4 = 1;
LAB_006bc3c0:
      if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar4);
      }
      return;
    }
    if ((param_1 & local_ac << 10) != 0) {
      if (local_a8 == (EVP_MD *)0x0) {
        ERR_put_error(0x14,0x11c,0x146,"jni/../../openssl-android/ssl/t1_enc.c",0x114);
        uVar4 = 0;
        goto LAB_006bc3c0;
      }
      iVar3 = EVP_MD_size(local_a8);
      if (iVar3 < 0) {
        OpenSSLDie("jni/../../openssl-android/ssl/t1_enc.c",0xaa,"chunk >= 0");
      }
      EVP_MD_CTX_init(&EStack_9c);
      EVP_MD_CTX_init(&EStack_84);
      EVP_MD_CTX_set_flags(&EStack_9c,8);
      EVP_MD_CTX_set_flags(&EStack_84,8);
      pkey = EVP_PKEY_new_mac_key(0x357,(ENGINE *)0x0,local_d8,iVar5 + (param_11 & 1));
      if (pkey == (EVP_PKEY *)0x0) {
        bVar1 = false;
      }
      else {
        iVar2 = EVP_DigestSignInit(&EStack_9c,(EVP_PKEY_CTX **)0x0,type,(ENGINE *)0x0,pkey);
        if (((((iVar2 != 0) &&
              (iVar2 = EVP_DigestSignInit(&EStack_84,(EVP_PKEY_CTX **)0x0,type,(ENGINE *)0x0,pkey),
              iVar2 != 0)) &&
             ((param_2 == (void *)0x0 ||
              (iVar2 = EVP_DigestUpdate(&EStack_9c,param_2,param_3), iVar2 != 0)))) &&
            (((param_4 == (void *)0x0 ||
              (iVar2 = EVP_DigestUpdate(&EStack_9c,param_4,param_5), iVar2 != 0)) &&
             ((param_6 == (void *)0x0 ||
              (iVar2 = EVP_DigestUpdate(&EStack_9c,param_6,param_7), iVar2 != 0)))))) &&
           ((param_8 == (void *)0x0 ||
            (iVar2 = EVP_DigestUpdate(&EStack_9c,param_8,param_9), iVar2 != 0)))) {
          iVar2 = EVP_DigestSignFinal(&EStack_9c,auStack_6c,&local_a0);
          sigret = param_13;
          __n = param_14;
          while( true ) {
            if (((((((iVar2 == 0) ||
                    (iVar2 = EVP_DigestSignInit(&EStack_9c,(EVP_PKEY_CTX **)0x0,type,(ENGINE *)0x0,
                                                pkey), iVar2 == 0)) ||
                   (iVar2 = EVP_DigestSignInit(&EStack_84,(EVP_PKEY_CTX **)0x0,type,(ENGINE *)0x0,
                                               pkey), iVar2 == 0)) ||
                  ((iVar2 = EVP_DigestUpdate(&EStack_9c,auStack_6c,local_a0), iVar2 == 0 ||
                   (iVar2 = EVP_DigestUpdate(&EStack_84,auStack_6c,local_a0), iVar2 == 0)))) ||
                 ((param_2 != (void *)0x0 &&
                  (iVar2 = EVP_DigestUpdate(&EStack_9c,param_2,param_3), iVar2 == 0)))) ||
                ((param_4 != (void *)0x0 &&
                 (iVar2 = EVP_DigestUpdate(&EStack_9c,param_4,param_5), iVar2 == 0)))) ||
               (((param_6 != (void *)0x0 &&
                 (iVar2 = EVP_DigestUpdate(&EStack_9c,param_6,param_7), iVar2 == 0)) ||
                ((param_8 != (void *)0x0 &&
                 (iVar2 = EVP_DigestUpdate(&EStack_9c,param_8,param_9), iVar2 == 0))))))
            goto LAB_006bc36a;
            if ((int)__n <= iVar3) break;
            iVar2 = EVP_DigestSignFinal(&EStack_9c,sigret,&local_a4);
            if (iVar2 == 0) goto LAB_006bc36a;
            sigret = sigret + local_a4;
            __n = __n - local_a4;
            iVar2 = EVP_DigestSignFinal(&EStack_84,auStack_6c,&local_a0);
          }
          iVar3 = EVP_DigestSignFinal(&EStack_9c,auStack_6c,&local_a0);
          if (iVar3 != 0) {
            bVar1 = true;
            memcpy(sigret,auStack_6c,__n);
            goto LAB_006bc36c;
          }
        }
LAB_006bc36a:
        bVar1 = false;
      }
LAB_006bc36c:
      EVP_PKEY_free(pkey);
      EVP_MD_CTX_cleanup(&EStack_9c);
      EVP_MD_CTX_cleanup(&EStack_84);
      OPENSSL_cleanse(auStack_6c,0x40);
      uVar4 = 0;
      if (!bVar1) goto LAB_006bc3c0;
      local_d8 = local_d8 + iVar5;
      for (iVar3 = 0; iVar3 < (int)param_14; iVar3 = iVar3 + 1) {
        *(byte *)((int)param_12 + iVar3) = *(byte *)((int)param_12 + iVar3) ^ param_13[iVar3];
      }
    }
    local_dc = local_dc + 1;
  } while( true );
}

// ---- FUN_006bd360  @ 0x6bd360
void FUN_006bd360(int param_1,uchar *param_2,int param_3,void *param_4,size_t param_5,
                 undefined4 *param_6)

{
  int iVar1;
  EVP_MD *md;
  EVP_CIPHER *cipher;
  uchar *out;
  SSL_SESSION *pSVar2;
  int iVar3;
  size_t len;
  uchar *local_1d4;
  int local_1d0;
  size_t local_1cc;
  uchar auStack_1c8 [64];
  EVP_CIPHER_CTX EStack_188;
  HMAC_CTX local_fc;
  int local_2c;
  
  local_2c = __stack_chk_guard;
  iVar3 = *(int *)(param_1 + 0x178);
  if (param_3 < 0x30) goto LAB_006bd4f2;
  HMAC_CTX_init(&local_fc);
  EVP_CIPHER_CTX_init(&EStack_188);
  if (*(code **)(iVar3 + 0x138) == (code *)0x0) {
    iVar1 = memcmp(param_2,(void *)(iVar3 + 0x108),0x10);
    if (iVar1 != 0) goto LAB_006bd4f2;
    md = EVP_sha256();
    HMAC_Init_ex(&local_fc,(void *)(iVar3 + 0x118),0x10,md,(ENGINE *)0x0);
    cipher = EVP_aes_128_cbc();
    EVP_DecryptInit_ex(&EStack_188,cipher,(ENGINE *)0x0,(uchar *)(iVar3 + 0x128),param_2 + 0x10);
  }
  else {
    iVar3 = (**(code **)(iVar3 + 0x138))(param_1,param_2,param_2 + 0x10,&EStack_188,&local_fc,0);
    if ((iVar3 < 0) || (iVar3 == 0)) goto LAB_006bd4f2;
  }
  local_1cc = EVP_MD_size(local_fc.md);
  if (-1 < (int)local_1cc) {
    len = param_3 - local_1cc;
    HMAC_Update(&local_fc,param_2,len);
    HMAC_Final(&local_fc,auStack_1c8,(uint *)0x0);
    HMAC_CTX_cleanup(&local_fc);
    iVar3 = CRYPTO_memcmp(auStack_1c8,param_2 + len,local_1cc);
    if (iVar3 != 0) goto LAB_006bd4f2;
    iVar3 = EVP_CIPHER_CTX_iv_length(&EStack_188);
    local_1d4 = param_2 + iVar3 + 0x10;
    iVar3 = EVP_CIPHER_CTX_iv_length(&EStack_188);
    iVar3 = (-0x10 - iVar3) + len;
    out = CRYPTO_malloc(iVar3,"jni/../../openssl-android/ssl/t1_lib.c",0xa09);
    if (out != (uchar *)0x0) {
      EVP_DecryptUpdate(&EStack_188,out,&local_1d0,local_1d4,iVar3);
      iVar3 = EVP_DecryptFinal(&EStack_188,out + local_1d0,(int *)&local_1cc);
      if (0 < iVar3) {
        local_1d0 = local_1d0 + local_1cc;
        EVP_CIPHER_CTX_cleanup(&EStack_188);
        local_1d4 = out;
        pSVar2 = d2i_SSL_SESSION((SSL_SESSION **)0x0,&local_1d4,local_1d0);
        CRYPTO_free(out);
        if (pSVar2 == (SSL_SESSION *)0x0) {
          ERR_clear_error();
        }
        else {
          if (param_5 != 0) {
            memcpy(pSVar2->session_id,param_4,param_5);
          }
          pSVar2->session_id_length = param_5;
          *param_6 = pSVar2;
        }
      }
      goto LAB_006bd4f2;
    }
  }
  EVP_CIPHER_CTX_cleanup(&EStack_188);
LAB_006bd4f2:
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
