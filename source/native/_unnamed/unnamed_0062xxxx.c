// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 59 functions

// ---- FUN_00622598  @ 0x622598
undefined4 FUN_00622598(int *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  byte *pbVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined1 *puVar7;
  
  pbVar2 = (byte *)param_1[2];
  if (*param_1 < 10) {
    uVar1 = 1;
  }
  else {
    iVar5 = 0;
    do {
      if (9 < (byte)(pbVar2[iVar5] - 0x30)) {
        return 2;
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 != 10);
    iVar5 = (uint)*pbVar2 * 10 + (uint)pbVar2[1];
    iVar4 = iVar5 + -0x210;
    if (iVar4 < 0x32) {
      iVar4 = iVar5 + -0x1ac;
    }
    iVar5 = (uint)pbVar2[2] * 10 + (uint)pbVar2[3];
    if (iVar5 - 0x211U < 0xc) {
      if ((((pbVar2[10] - 0x30 & 0xff) < 10) && (uVar3 = (uint)pbVar2[0xb], 0x2f < uVar3)) &&
         (uVar3 < 0x3a)) {
        iVar6 = (uint)pbVar2[10] * 10 + uVar3 + -0x210;
      }
      else {
        iVar6 = 0;
      }
      if (pbVar2[*param_1 + -1] == 0x5a) {
        puVar7 = &DAT_0081014c;
      }
      else {
        puVar7 = &DAT_00801f93;
      }
      curl_msnprintf(param_2,param_3,"%04d-%02d-%02d %02d:%02d:%02d %s",iVar4 + 0x76c,iVar5 + -0x210
                     ,(uint)pbVar2[4] * 10 + (uint)pbVar2[5] + -0x210,
                     (uint)pbVar2[6] * 10 + (uint)pbVar2[7] + -0x210,
                     (uint)pbVar2[8] * 10 + (uint)pbVar2[9] + -0x210,iVar6,puVar7);
      uVar1 = 0;
    }
    else {
      uVar1 = 3;
    }
  }
  return uVar1;
}

// ---- FUN_00622684  @ 0x622684
int FUN_00622684(X509_NAME *param_1,uint *param_2,uint param_3)

{
  BIO_METHOD *type;
  BIO *out;
  int iVar1;
  uint uVar2;
  size_t __n;
  uint *local_1c;
  
  local_1c = param_2;
  type = BIO_s_mem();
  out = BIO_new(type);
  iVar1 = 1;
  if (out != (BIO *)0x0) {
    uVar2 = X509_NAME_print_ex(out,param_1,0,0x30000);
    BIO_ctrl(out,0x73,0,&local_1c);
    __n = *local_1c;
    if (param_3 <= __n) {
      __n = param_3 - 1;
    }
    memcpy(param_2,(void *)local_1c[1],__n);
    *(undefined1 *)((int)param_2 + __n) = 0;
    BIO_free(out);
    iVar1 = 1 - uVar2;
    if (1 < uVar2) {
      iVar1 = 0;
    }
  }
  return iVar1;
}

// ---- FUN_006226e8  @ 0x6226e8
void FUN_006226e8(undefined4 param_1,X509_STORE_CTX *param_2)

{
  X509 *a;
  X509_NAME *pXVar1;
  undefined1 auStack_114 [256];
  int local_14;
  
  local_14 = __stack_chk_guard;
  a = X509_STORE_CTX_get_current_cert(param_2);
  pXVar1 = X509_get_subject_name(a);
  FUN_00622684(pXVar1,auStack_114,0x100);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(param_1);
  }
  return;
}

// ---- FUN_00622724  @ 0x622724
undefined8 FUN_00622724(int param_1,int param_2,char *param_3,void *param_4,size_t param_5)

{
  size_t sVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  char *pcVar6;
  
  iVar5 = param_1;
  pcVar6 = param_3;
  sVar1 = strlen(param_3);
  iVar4 = sVar1 + param_5 + 2;
  iVar2 = (*Curl_cmalloc)(iVar4);
  if (iVar2 != 0) {
    curl_msnprintf(iVar2,iVar4,&DAT_00810171,param_3,iVar5,iVar4,pcVar6);
    memcpy((void *)(iVar2 + sVar1 + 1),param_4,param_5);
    *(undefined1 *)(sVar1 + param_5 + iVar2 + 1) = 0;
    iVar4 = curl_slist_append(*(undefined4 *)(*(int *)(param_1 + 0x86e0) + param_2 * 4),iVar2);
    (*Curl_cfree)(iVar2);
    if (iVar4 != 0) {
      *(int *)(*(int *)(param_1 + 0x86e0) + param_2 * 4) = iVar4;
      uVar3 = 0;
      goto LAB_006227bc;
    }
    curl_slist_free_all(*(undefined4 *)(*(int *)(param_1 + 0x86e0) + param_2 * 4));
    *(undefined4 *)(*(int *)(param_1 + 0x86e0) + param_2 * 4) = 0;
  }
  uVar3 = 0x1b;
LAB_006227bc:
  return CONCAT44(iVar5,uVar3);
}

// ---- FUN_006227cc  @ 0x6227cc
void FUN_006227cc(undefined4 param_1,undefined4 param_2,undefined4 param_3,char *param_4)

{
  size_t sVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar2 = param_2;
  uVar3 = param_3;
  sVar1 = strlen(param_4);
  FUN_00622724(param_1,param_2,param_3,param_4,sVar1,uVar2,uVar3);
  return;
}

// ---- FUN_006227ec  @ 0x6227ec
void FUN_006227ec(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 int param_5,int param_6)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 auStack_4c [32];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  iVar3 = param_6 * 3 + 1;
  iVar1 = (*Curl_cmalloc)(iVar3);
  if (iVar1 != 0) {
    curl_msnprintf(auStack_4c,0x20,"%s(%s)",param_3,param_4);
    iVar4 = iVar1;
    for (iVar2 = 0; iVar2 < param_6; iVar2 = iVar2 + 1) {
      curl_msnprintf(iVar4,iVar3,"%02x:",*(undefined1 *)(param_5 + iVar2),param_4);
      iVar4 = iVar4 + 3;
      iVar3 = iVar3 + -3;
    }
    Curl_infof(param_1,"   %s: %s\n",auStack_4c,iVar1);
    FUN_006227cc(param_1,param_2,auStack_4c,iVar1);
    (*Curl_cfree)(iVar1);
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_006228b0  @ 0x6228b0
void FUN_006228b0(undefined4 param_1,undefined4 param_2,int *param_3)

{
  int iVar1;
  undefined1 *puVar2;
  int iVar3;
  undefined1 auStack_42c [1024];
  int local_2c [2];
  
  local_2c[0] = __stack_chk_guard;
  puVar2 = auStack_42c;
  for (iVar3 = 0; iVar3 < *param_3; iVar3 = iVar3 + 1) {
    iVar1 = curl_msnprintf(puVar2,(int)local_2c - (int)puVar2,"%02x:",
                           *(undefined1 *)(param_3[2] + iVar3));
    puVar2 = puVar2 + iVar1;
  }
  Curl_infof(param_1," Signature: %s\n",auStack_42c);
  FUN_006227cc(param_1,param_2,"Signature",auStack_42c);
  if (local_2c[0] != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00622940  @ 0x622940
void FUN_00622940(undefined4 param_1,undefined4 param_2,_STACK *param_3)

{
  char cVar1;
  int iVar2;
  X509_EXTENSION *ex;
  BIO_METHOD *type;
  BIO *out;
  ASN1_OBJECT *a;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  char *pcVar6;
  undefined *puVar7;
  uint uVar8;
  undefined1 *puVar9;
  uint *local_2b0;
  char acStack_2ac [128];
  undefined1 auStack_22c [512];
  int local_2c [2];
  
  local_2c[0] = __stack_chk_guard;
  iVar2 = sk_num(param_3);
  if (iVar2 < 1) {
LAB_00622a72:
    uVar4 = 1;
  }
  else {
    for (iVar2 = 0; iVar3 = sk_num(param_3), iVar2 < iVar3; iVar2 = iVar2 + 1) {
      ex = sk_value(param_3,iVar2);
      type = BIO_s_mem();
      out = BIO_new(type);
      if (out == (BIO *)0x0) goto LAB_00622a72;
      a = X509_EXTENSION_get_object(ex);
      i2t_ASN1_OBJECT(acStack_2ac,0x80,a);
      iVar3 = X509_EXTENSION_get_critical(ex);
      if (iVar3 == 0) {
        pcVar6 = "";
      }
      else {
        pcVar6 = "(critical)";
      }
      Curl_infof(param_1,"%s: %s\n",acStack_2ac,pcVar6);
      iVar3 = X509V3_EXT_print(out,ex,0,0);
      if (iVar3 == 0) {
        ASN1_STRING_print(out,ex->value);
      }
      puVar9 = auStack_22c;
      BIO_ctrl(out,0x73,0,&local_2b0);
      for (uVar8 = 0; uVar5 = *local_2b0, uVar8 < uVar5; uVar8 = uVar8 + 1) {
        puVar7 = &DAT_00801f93;
        if (*(char *)(local_2b0[1] + uVar8) == '\n') {
          uVar8 = uVar8 + 1;
          puVar7 = &DAT_00800fa8;
        }
        for (; cVar1 = *(char *)(local_2b0[1] + uVar8), cVar1 == ' '; uVar8 = uVar8 + 1) {
          if (uVar5 <= uVar8) goto LAB_00622a34;
        }
        if (uVar8 < uVar5) {
          iVar3 = curl_msnprintf(puVar9,(int)local_2c - (int)puVar9,&DAT_008101ba,puVar7,cVar1);
          puVar9 = puVar9 + iVar3;
        }
LAB_00622a34:
      }
      Curl_infof(param_1,"  %s\n",auStack_22c);
      FUN_006227cc(param_1,param_2,acStack_2ac,auStack_22c);
      BIO_free(out);
    }
    uVar4 = 0;
  }
  if (local_2c[0] != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

// ---- FUN_00622aac  @ 0x622aac
void FUN_00622aac(undefined4 *param_1,int param_2,void *param_3,int param_4,undefined4 *param_5)

{
  int ret_code;
  char *pcVar1;
  int *piVar2;
  ulong e;
  undefined4 uVar3;
  char *pcVar4;
  char acStack_9c [120];
  int local_24;
  
  local_24 = __stack_chk_guard;
  ERR_clear_error();
  if (param_4 < 0) {
    param_4 = 0x7fffffff;
  }
  ret_code = SSL_write((SSL *)param_1[param_2 * 6 + 0x56],param_3,param_4);
  if (-1 < ret_code) goto LAB_00622b42;
  pcVar1 = (char *)SSL_get_error((SSL *)param_1[param_2 * 6 + 0x56],ret_code);
  switch(pcVar1) {
  case (char *)0x1:
    e = ERR_get_error();
    uVar3 = *param_1;
    pcVar1 = ERR_error_string(e,acStack_9c);
    pcVar4 = "SSL_write() error: %s";
    break;
  case (char *)0x2:
  case (char *)0x3:
    uVar3 = 0x51;
    goto LAB_00622b3c;
  default:
    uVar3 = *param_1;
    pcVar4 = "SSL_write() return error %d";
    break;
  case (char *)0x5:
    uVar3 = *param_1;
    piVar2 = (int *)__errno();
    pcVar4 = "SSL_write() returned SYSCALL, errno = %d";
    pcVar1 = (char *)*piVar2;
  }
  Curl_failf(uVar3,pcVar4,pcVar1);
  uVar3 = 0x37;
LAB_00622b3c:
  ret_code = -1;
  *param_5 = uVar3;
LAB_00622b42:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(ret_code);
}

// ---- FUN_00622b68  @ 0x622b68
undefined4 FUN_00622b68(char *param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  if (((param_1 == (char *)0x0) || (*param_1 == '\0')) ||
     (iVar1 = Curl_raw_equal(param_1,&DAT_00810220), iVar1 != 0)) {
    return 1;
  }
  iVar1 = Curl_raw_equal(param_1,&DAT_00810224);
  if (iVar1 != 0) {
    return 2;
  }
  iVar1 = Curl_raw_equal(param_1,&DAT_00810228);
  if (iVar1 != 0) {
    return 0x2a;
  }
  iVar1 = Curl_raw_equal(param_1,&DAT_0081022c);
  if (iVar1 == 0) {
    uVar2 = 0xffffffff;
  }
  else {
    uVar2 = 0x2b;
  }
  return uVar2;
}

// ---- FUN_00622bc8  @ 0x622bc8
int FUN_00622bc8(void *param_1,int param_2,int param_3,char *param_4)

{
  int iVar1;
  
  iVar1 = 0;
  if (param_3 == 0) {
    strlen(param_4);
    iVar1 = curlx_uztosi();
    if (iVar1 < param_2) {
      memcpy(param_1,param_4,iVar1 + 1);
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}

// ---- FUN_00622bfc  @ 0x622bfc
void FUN_00622bfc(int param_1,int param_2,int param_3,undefined1 *param_4,undefined4 param_5,
                 undefined4 *param_6)

{
  undefined1 uVar1;
  char *pcVar2;
  char *pcVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 auStack_41c [1024];
  int local_1c;
  
  param_2 = param_2 >> 8;
  local_1c = __stack_chk_guard;
  uVar5 = *param_6;
  if (param_2 == 0) {
    uVar4 = 0x32;
  }
  else if (param_2 == 3) {
    uVar4 = 0x33;
  }
  else {
    uVar4 = 0x3f;
  }
  if (param_3 == 0 || param_2 != 3) {
    pcVar2 = "";
  }
  else if (param_3 == 0x14) {
    pcVar2 = "TLS change cipher, ";
  }
  else if (param_3 == 0x15) {
    pcVar2 = "TLS alert, ";
  }
  else if (param_3 == 0x16) {
    pcVar2 = "TLS handshake, ";
  }
  else if (param_3 == 0x17) {
    pcVar2 = "TLS app data, ";
  }
  else {
    pcVar2 = "TLS Unknown, ";
  }
  uVar1 = *param_4;
  if (param_2 == 0) {
    switch(uVar1) {
    case 0:
      pcVar3 = "Error";
      break;
    case 1:
      pcVar3 = "Client hello";
      break;
    case 2:
      pcVar3 = "Client key";
      break;
    case 3:
      pcVar3 = "Client finished";
      break;
    case 4:
      pcVar3 = "Server hello";
      break;
    case 5:
      pcVar3 = "Server verify";
      break;
    case 6:
      pcVar3 = "Server finished";
      break;
    case 7:
      pcVar3 = "Request CERT";
      break;
    case 8:
      pcVar3 = "Client CERT";
      break;
    default:
      pcVar3 = "Unknown";
    }
  }
  else if (param_2 != 3) {
    pcVar3 = "Unknown";
  }
  else {
    switch(uVar1) {
    case 0:
      pcVar3 = "Hello request";
      break;
    case 1:
      pcVar3 = "Client hello";
      break;
    case 2:
      pcVar3 = "Server hello";
      break;
    default:
      pcVar3 = "Unknown";
      break;
    case 0xb:
      pcVar3 = "CERT";
      break;
    case 0xc:
      pcVar3 = "Server key exchange";
      break;
    case 0xd:
      pcVar3 = "Request CERT";
      break;
    case 0xe:
      pcVar3 = "Server finished";
      break;
    case 0xf:
      pcVar3 = "CERT verify";
      break;
    case 0x10:
      pcVar3 = "Client key exchange";
      break;
    case 0x14:
      pcVar3 = "Finished";
    }
  }
  uVar4 = curl_msnprintf(auStack_41c,0x400,"SSLv%c, %s%s (%d):\n",uVar4,pcVar2,pcVar3,uVar1);
  Curl_debug(uVar5,0,auStack_41c,uVar4,0);
  if (param_1 == 1) {
    uVar4 = 6;
  }
  else {
    uVar4 = 5;
  }
  Curl_debug(uVar5,uVar4,param_4,param_5,0);
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- FUN_00622e30  @ 0x622e30
bool FUN_00622e30(byte *param_1,char *param_2)

{
  bool bVar1;
  int iVar2;
  char *pcVar3;
  char *pcVar4;
  char *pcVar5;
  uint uVar6;
  
  if (param_1 == (byte *)0x0) {
    return false;
  }
  uVar6 = 1 - *param_1;
  if (1 < *param_1) {
    uVar6 = 0;
  }
  if (param_2 == (char *)0x0) {
    uVar6 = uVar6 | 1;
  }
  if (uVar6 != 0) {
    return false;
  }
  bVar1 = false;
  if (*param_2 != '\0') {
    iVar2 = Curl_raw_equal(param_2,param_1);
    if (iVar2 == 0) {
      pcVar3 = strchr((char *)param_1,0x2a);
      if ((((pcVar3 == (char *)0x0) ||
           (pcVar4 = strchr((char *)param_1,0x2e), pcVar4 == (char *)0x0)) ||
          (pcVar5 = strchr(pcVar4 + 1,0x2e), pcVar5 == (char *)0x0 || pcVar4 < pcVar3)) ||
         (iVar2 = Curl_raw_nequal(param_1,&DAT_0081035b,4), iVar2 != 0)) {
        iVar2 = Curl_raw_equal(param_1,param_2);
      }
      else {
        pcVar5 = strchr(param_2,0x2e);
        if (pcVar5 == (char *)0x0) {
          return false;
        }
        iVar2 = Curl_raw_equal(pcVar4,pcVar5);
        if (iVar2 == 0) {
          return false;
        }
        if ((int)pcVar5 - (int)param_2 < (int)pcVar4 - (int)param_1) {
          return false;
        }
        iVar2 = Curl_raw_nequal(param_1,param_2,(int)pcVar3 - (int)param_1);
        if (iVar2 == 0) {
          return false;
        }
        iVar2 = Curl_raw_nequal(pcVar3 + 1,(int)pcVar5 - ((int)pcVar4 - (int)(pcVar3 + 1)));
      }
      return iVar2 != 0;
    }
    bVar1 = true;
  }
  return bVar1;
}

// ---- FUN_00622f18  @ 0x622f18
void FUN_00622f18(int *param_1,int param_2,int param_3)

{
  uchar *puVar1;
  uchar *puVar2;
  _STACK *p_Var3;
  int iVar4;
  int iVar5;
  ASN1_INTEGER *a;
  EVP_PKEY *pkey;
  BIGNUM *pBVar6;
  BIO_METHOD *type;
  BIO *bp;
  X509 *pXVar7;
  X509_NAME *pXVar8;
  int iVar9;
  int *piVar10;
  size_t sVar11;
  int iVar12;
  uint uVar13;
  X509_NAME_ENTRY *ne;
  ASN1_STRING *x;
  uchar *puVar14;
  size_t sVar15;
  int iVar16;
  FILE *fp;
  long lVar17;
  char *pcVar18;
  undefined4 uVar19;
  undefined *puVar20;
  int iVar21;
  size_t sVar22;
  X509_CINF *pXVar23;
  uint uVar24;
  undefined1 auStack_134 [4];
  uchar *local_130;
  undefined1 auStack_12c [256];
  int local_2c;
  
  iVar21 = *param_1;
  local_2c = __stack_chk_guard;
  if ((*(char *)(iVar21 + 0x26d) != '\0') &&
     (puVar2 = (uchar *)(*Curl_cmalloc)(0x2000), puVar2 != (uchar *)0x0)) {
    p_Var3 = &SSL_get_peer_cert_chain(*(SSL **)(param_2 + 0xc))->stack;
    if (p_Var3 != (_STACK *)0x0) {
      iVar4 = sk_num(p_Var3);
      Curl_ssl_free_certinfo(iVar21);
      *(int *)(iVar21 + 0x86dc) = iVar4;
      iVar5 = (*Curl_ccalloc)(iVar4,4);
      if (iVar5 != 0) {
        *(int *)(iVar21 + 0x86e0) = iVar5;
        Curl_infof(iVar21,"--- Certificate chain\n");
        for (iVar5 = 0; iVar5 < iVar4; iVar5 = iVar5 + 1) {
          pXVar7 = sk_value(p_Var3,iVar5);
          pXVar8 = X509_get_subject_name(pXVar7);
          FUN_00622684(pXVar8,puVar2,0x2000);
          Curl_infof(iVar21,"%2d Subject: %s\n",iVar5,puVar2);
          FUN_006227cc(iVar21,iVar5,"Subject",puVar2);
          pXVar8 = X509_get_issuer_name(pXVar7);
          FUN_00622684(pXVar8,puVar2,0x2000);
          Curl_infof(iVar21,"   Issuer: %s\n",puVar2);
          FUN_006227cc(iVar21,iVar5,"Issuer",puVar2);
          lVar17 = ASN1_INTEGER_get(pXVar7->cert_info->version);
          Curl_infof(iVar21,"   Version: %lu (0x%lx)\n",lVar17 + 1,lVar17);
          curl_msnprintf(puVar2,0x2000,&DAT_008103bf,lVar17);
          FUN_006227cc(iVar21,iVar5,"Version",puVar2);
          a = X509_get_serialNumber(pXVar7);
          if (a->length < 5) {
            lVar17 = ASN1_INTEGER_get(a);
            Curl_infof(iVar21,"   Serial Number: %ld (0x%lx)\n",lVar17,lVar17);
            curl_msnprintf(puVar2,0x2000,&DAT_008103bf,lVar17);
          }
          else {
            *puVar2 = '\0';
            if (a->type == 0x102) {
              puVar14 = puVar2 + 2;
              puVar2[1] = '-';
            }
            else {
              puVar14 = puVar2 + 1;
            }
            iVar9 = 0x2000;
            iVar16 = 0;
            while (iVar12 = a->length, 3 < iVar9 && iVar16 < iVar12) {
              iVar9 = iVar9 + -4;
              puVar1 = a->data + iVar16;
              iVar16 = iVar16 + 1;
              if (iVar16 == iVar12) {
                uVar19 = 10;
              }
              else {
                uVar19 = 0x3a;
              }
              curl_msnprintf(puVar14,3,"%02x%c",*puVar1,uVar19);
              puVar14 = puVar14 + 3;
            }
            if (iVar12 == 0) {
              *puVar2 = '\0';
            }
            else {
              Curl_infof(iVar21,"   Serial Number: %s\n",puVar2);
            }
          }
          if (*puVar2 != '\0') {
            FUN_006227cc(iVar21,iVar5,"Serial Number",puVar2);
          }
          pXVar23 = pXVar7->cert_info;
          iVar16 = i2t_ASN1_OBJECT((char *)puVar2,0x2000,pXVar23->signature->algorithm);
          if (iVar16 < 0x2000) {
            Curl_infof(iVar21,"   Signature Algorithm: %s\n",puVar2);
            FUN_006227cc(iVar21,iVar5,"Signature Algorithm",puVar2);
          }
          FUN_00622598(pXVar7->cert_info->validity->notBefore,puVar2,0x2000);
          Curl_infof(iVar21,"   Start date: %s\n",puVar2);
          FUN_006227cc(iVar21,iVar5,"Start date",puVar2);
          FUN_00622598(pXVar7->cert_info->validity->notAfter,puVar2,0x2000);
          Curl_infof(iVar21,"   Expire date: %s\n",puVar2);
          FUN_006227cc(iVar21,iVar5,"Expire date",puVar2);
          iVar16 = i2t_ASN1_OBJECT((char *)puVar2,0x2000,pXVar23->key->algor->algorithm);
          if (iVar16 < 0x2000) {
            Curl_infof(iVar21,"   Public Key Algorithm: %s\n",puVar2);
            FUN_006227cc(iVar21,iVar5,"Public Key Algorithm",puVar2);
          }
          pkey = X509_get_pubkey(pXVar7);
          if (pkey == (EVP_PKEY *)0x0) {
            Curl_infof(iVar21,"   Unable to load public key\n");
          }
          else {
            iVar16 = pkey->type;
            if (iVar16 == 0x1c) {
              pBVar6 = ((pkey->pkey).dh)->p;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).dh)->p,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104d1,&DAT_008104a7,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).dsa)->p;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).dsa)->p,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104d1,&DAT_008104be,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->d;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->d,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104d1,"priv_key",puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->e;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->e,puVar2);
                  puVar2[iVar16] = '\0';
                  puVar20 = &DAT_008104d1;
                  pcVar18 = "pub_key";
LAB_006236a2:
                  FUN_006227ec(iVar21,iVar5,puVar20,pcVar18,puVar2,iVar16);
                }
              }
            }
            else if (iVar16 == 0x74) {
              pBVar6 = ((pkey->pkey).dsa)->p;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).dsa)->p,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104ba,&DAT_008104a7,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->n;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->n,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104ba,&DAT_008104a9,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->e;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->e,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104ba,&DAT_008104be,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->p;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->p,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_008104ba,"priv_key",puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->d;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->d,puVar2);
                  puVar2[iVar16] = '\0';
                  puVar20 = &DAT_008104ba;
                  pcVar18 = "pub_key";
                  goto LAB_006236a2;
                }
              }
            }
            else if (iVar16 == 6) {
              iVar16 = BN_num_bits(((pkey->pkey).rsa)->n);
              Curl_infof(iVar21,"   RSA Public Key (%d bits)\n",iVar16);
              iVar16 = BN_num_bits(((pkey->pkey).rsa)->n);
              curl_msnprintf(puVar2,0x2000,&DAT_0080095d,iVar16);
              FUN_006227cc(iVar21,iVar5,"RSA Public Key",puVar2);
              pBVar6 = ((pkey->pkey).rsa)->n;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->n,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104a1,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->e;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->e,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104a3,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->d;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->d,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104a5,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->p;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->p,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104a7,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->q;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->q,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104a9,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->dmp1;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->dmp1,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104ab,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->dmq1;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->dmq1,puVar2);
                  puVar2[iVar16] = '\0';
                  FUN_006227ec(iVar21,iVar5,&DAT_0081049d,&DAT_008104b0,puVar2,iVar16);
                }
              }
              pBVar6 = ((pkey->pkey).rsa)->iqmp;
              if (pBVar6 != (BIGNUM *)0x0) {
                iVar9 = BN_num_bits(pBVar6);
                iVar16 = iVar9 + 7;
                if (iVar9 + 7 < 0) {
                  iVar16 = iVar9 + 0xe;
                }
                iVar16 = iVar16 >> 3;
                if (iVar16 < 0x2000) {
                  BN_bn2bin(((pkey->pkey).rsa)->iqmp,puVar2);
                  puVar2[iVar16] = '\0';
                  puVar20 = &DAT_0081049d;
                  pcVar18 = "iqmp";
                  goto LAB_006236a2;
                }
              }
            }
            EVP_PKEY_free(pkey);
          }
          FUN_00622940(iVar21,iVar5,pXVar23->extensions);
          FUN_006228b0(iVar21,iVar5,pXVar7->signature);
          type = BIO_s_mem();
          bp = BIO_new(type);
          PEM_write_bio_X509(bp,pXVar7);
          BIO_ctrl(bp,0x73,0,&local_130);
          Curl_infof(iVar21,&DAT_0080e5d2,*(undefined4 *)(local_130 + 4));
          FUN_00622724(iVar21,iVar5,&DAT_008104d4,*(undefined4 *)(local_130 + 4),
                       *(undefined4 *)local_130);
          BIO_free(bp);
        }
      }
    }
    (*Curl_cfree)(puVar2);
  }
  *(undefined4 *)(iVar21 + 0x238) = 1;
  pXVar7 = SSL_get_peer_certificate(*(SSL **)(param_2 + 0xc));
  *(X509 **)(param_2 + 0x10) = pXVar7;
  if (pXVar7 == (X509 *)0x0) {
    if (param_3 != 0) {
      Curl_failf(iVar21,"SSL: couldn\'t get peer certificate!");
    }
    iVar4 = 0x33;
    goto LAB_00623cbe;
  }
  Curl_infof(iVar21,"Server certificate:\n");
  pXVar8 = X509_get_subject_name(*(X509 **)(param_2 + 0x10));
  iVar4 = FUN_00622684(pXVar8,auStack_12c,0x100);
  if (iVar4 != 0) {
    if (param_3 != 0) {
      Curl_failf(iVar21,"SSL: couldn\'t get X509-subject!");
    }
    iVar4 = 0x23;
    X509_free(*(X509 **)(param_2 + 0x10));
    *(undefined4 *)(param_2 + 0x10) = 0;
    goto LAB_00623cbe;
  }
  Curl_infof(iVar21,"\t subject: %s\n",auStack_12c);
  FUN_00622598(**(undefined4 **)(**(int **)(param_2 + 0x10) + 0x10),auStack_12c,0x100);
  Curl_infof(iVar21,"\t start date: %s\n",auStack_12c);
  FUN_00622598(*(undefined4 *)(*(int *)(**(int **)(param_2 + 0x10) + 0x10) + 4),auStack_12c,0x100);
  Curl_infof(iVar21,"\t expire date: %s\n",auStack_12c);
  if (*(int *)(iVar21 + 0x240) != 0) {
    pXVar7 = *(X509 **)(param_2 + 0x10);
    iVar5 = *param_1;
    iVar4 = inet_pton(2,(char *)param_1[0x20],auStack_134);
    if (iVar4 == 0) {
      iVar4 = 2;
      sVar22 = 0;
    }
    else {
      sVar22 = 4;
      iVar4 = 7;
    }
    p_Var3 = X509_get_ext_d2i(pXVar7,0x55,(int *)0x0,(int *)0x0);
    if (p_Var3 == (_STACK *)0x0) {
LAB_00623900:
      local_130 = "";
      pXVar8 = X509_get_subject_name(pXVar7);
      iVar4 = 0;
      if (pXVar8 != (X509_NAME *)0x0) {
        iVar4 = -1;
        do {
          iVar16 = iVar4;
          iVar4 = X509_NAME_get_index_by_NID(pXVar8,0xd,iVar16);
        } while (-1 < iVar4);
        if (iVar16 < 0) {
LAB_006239a8:
          iVar4 = 0;
        }
        else {
          ne = X509_NAME_get_entry(pXVar8,iVar16);
          x = X509_NAME_ENTRY_get_data(ne);
          iVar4 = 0;
          if (x != (ASN1_STRING *)0x0) {
            iVar4 = ASN1_STRING_type(x);
            if (iVar4 == 0xc) {
              sVar22 = ASN1_STRING_length(x);
              if ((-1 < (int)sVar22) &&
                 (puVar2 = CRYPTO_malloc(sVar22 + 1,"jni/../lib/ssluse.c",0x4eb), local_130 = puVar2
                 , puVar2 != (uchar *)0x0)) {
                puVar14 = ASN1_STRING_data(x);
                memcpy(puVar2,puVar14,sVar22);
                local_130[sVar22] = '\0';
              }
            }
            else {
              sVar22 = ASN1_STRING_to_UTF8(&local_130,x);
            }
            iVar4 = 0;
            if (local_130 != (uchar *)0x0) {
              strlen((char *)local_130);
              sVar15 = curlx_uztosi();
              if (sVar15 == sVar22) goto LAB_006239a8;
              iVar4 = 0x33;
              Curl_failf(iVar5,"SSL: illegal cert name field");
            }
          }
        }
      }
      if (local_130 == "") {
        local_130 = (uchar *)0x0;
      }
      if (iVar4 == 0) {
        if (local_130 == (uchar *)0x0) {
          Curl_failf(iVar5,"SSL: unable to obtain common name from peer certificate");
LAB_006239f2:
          iVar4 = 0x33;
        }
        else {
          iVar16 = FUN_00622e30(local_130,param_1[0x20]);
          if (iVar16 == 0) {
            if (1 < *(int *)(iVar5 + 0x240)) {
              Curl_failf(iVar5,
                         "SSL: certificate subject name \'%s\' does not match target host name \'%s\'"
                         ,local_130,param_1[0x21]);
              goto LAB_006239f2;
            }
            Curl_infof(iVar5,"\t common name: %s (does not match \'%s\')\n",local_130,param_1[0x21])
            ;
          }
          else {
            Curl_infof(iVar5,"\t common name: %s (matched)\n",local_130);
          }
        }
      }
      if (local_130 != (uchar *)0x0) {
        CRYPTO_free(local_130);
      }
      if (iVar4 != 0) {
LAB_00623a24:
        X509_free(*(X509 **)(param_2 + 0x10));
        *(undefined4 *)(param_2 + 0x10) = 0;
        goto LAB_00623cbe;
      }
    }
    else {
      iVar9 = sk_num(p_Var3);
      uVar24 = 0xffffffff;
      for (iVar16 = 0; uVar24 != 1 && iVar16 < iVar9; iVar16 = iVar16 + 1) {
        piVar10 = sk_value(p_Var3,iVar16);
        if (*piVar10 == iVar4) {
          puVar2 = ASN1_STRING_data((ASN1_STRING *)piVar10[1]);
          sVar15 = ASN1_STRING_length((ASN1_STRING *)piVar10[1]);
          if (iVar4 == 2) {
            sVar11 = strlen((char *)puVar2);
            if (sVar15 == sVar11) {
              iVar12 = FUN_00622e30(puVar2,param_1[0x20]);
              uVar24 = (uint)(iVar12 != 0);
            }
            else {
LAB_006238a8:
              uVar24 = 0;
            }
          }
          else if (iVar4 == 7) {
            if (sVar15 != sVar22) goto LAB_006238a8;
            uVar13 = memcmp(puVar2,auStack_134,sVar22);
            uVar24 = 1 - uVar13;
            if (1 < uVar13) {
              uVar24 = 0;
            }
          }
        }
      }
      GENERAL_NAMES_free((GENERAL_NAMES *)p_Var3);
      if (uVar24 != 1) {
        if (uVar24 != 0) goto LAB_00623900;
        iVar4 = 0x33;
        Curl_infof(iVar5,"\t subjectAltName does not match %s\n",param_1[0x21]);
        goto LAB_00623a24;
      }
      Curl_infof(iVar5,"\t subjectAltName: %s matched\n",param_1[0x21]);
    }
  }
  pXVar8 = X509_get_issuer_name(*(X509 **)(param_2 + 0x10));
  iVar4 = FUN_00622684(pXVar8,auStack_12c,0x100);
  if (iVar4 == 0) {
    Curl_infof(iVar21,"\t issuer: %s\n",auStack_12c);
    if (*(char **)(iVar21 + 0x35c) != (char *)0x0) {
      fp = fopen(*(char **)(iVar21 + 0x35c),"r");
      if (fp == (FILE *)0x0) {
        if (param_3 != 0) {
          Curl_failf(iVar21,"SSL: Unable to open issuer cert (%s)\n",*(undefined4 *)(iVar21 + 0x35c)
                    );
        }
        pXVar7 = *(X509 **)(param_2 + 0x10);
LAB_00623c2e:
        X509_free(pXVar7);
        *(undefined4 *)(param_2 + 0x10) = 0;
      }
      else {
        pXVar7 = PEM_read_X509(fp,(X509 **)0x0,(undefined1 *)0x0,(void *)0x0);
        if (pXVar7 != (X509 *)0x0) {
          fclose(fp);
          iVar4 = X509_check_issued(pXVar7,*(X509 **)(param_2 + 0x10));
          if (iVar4 == 0) {
            Curl_infof(iVar21,"\t SSL certificate issuer check ok (%s)\n",
                       *(undefined4 *)(iVar21 + 0x35c));
            X509_free(pXVar7);
            goto LAB_00623c50;
          }
          if (param_3 != 0) {
            Curl_failf(iVar21,"SSL: Certificate issuer check failed (%s)\n",
                       *(undefined4 *)(iVar21 + 0x35c));
          }
          X509_free(*(X509 **)(param_2 + 0x10));
          goto LAB_00623c2e;
        }
        if (param_3 != 0) {
          Curl_failf(iVar21,"SSL: Unable to read issuer cert (%s)\n",*(undefined4 *)(iVar21 + 0x35c)
                    );
        }
        X509_free(*(X509 **)(param_2 + 0x10));
        X509_free((X509 *)0x0);
        fclose(fp);
      }
      iVar4 = 0x53;
      goto LAB_00623cbe;
    }
LAB_00623c50:
    lVar17 = SSL_get_verify_result(*(SSL **)(param_2 + 0xc));
    *(long *)(iVar21 + 0x238) = lVar17;
    if (lVar17 == 0) {
      Curl_infof(iVar21,"\t SSL certificate verify ok.\n");
      iVar4 = 0;
    }
    else if (*(int *)(iVar21 + 0x23c) == 0) {
      pcVar18 = X509_verify_cert_error_string(lVar17);
      Curl_infof(iVar21,"\t SSL certificate verify result: %s (%ld), continuing anyway.\n",pcVar18,
                 lVar17);
      iVar4 = 0;
    }
    else {
      if (param_3 != 0) {
        pcVar18 = X509_verify_cert_error_string(lVar17);
        Curl_failf(iVar21,"SSL certificate verify result: %s (%ld)",pcVar18,lVar17);
      }
      iVar4 = 0x33;
    }
  }
  else {
    if (param_3 != 0) {
      Curl_failf(iVar21,"SSL: couldn\'t get X509-issuer name!");
    }
    iVar4 = 0x23;
  }
  X509_free(*(X509 **)(param_2 + 0x10));
  *(undefined4 *)(param_2 + 0x10) = 0;
  *(undefined4 *)(param_2 + 0x14) = 5;
LAB_00623cbe:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

// ---- FUN_00623d4c  @ 0x623d4c
undefined8 FUN_00623d4c(int *param_1,int param_2,undefined4 param_3)

{
  SSL_SESSION *pSVar1;
  int iVar2;
  int iVar3;
  SSL_SESSION *local_24;
  undefined4 uStack_20;
  
  iVar3 = *param_1;
  local_24 = (SSL_SESSION *)0x0;
  uStack_20 = param_3;
  pSVar1 = SSL_get1_session((SSL *)param_1[param_2 * 6 + 0x56]);
  iVar2 = Curl_ssl_getsessionid(param_1,&local_24,0);
  if (iVar2 == 0) {
    if (local_24 != pSVar1) {
      Curl_infof(iVar3,"old SSL session ID is stale, removing\n");
      Curl_ssl_delsessionid(param_1,local_24);
      goto LAB_00623d96;
    }
    SSL_SESSION_free(local_24);
  }
  else {
LAB_00623d96:
    iVar2 = Curl_ssl_addsessionid(param_1,pSVar1,0);
    if (iVar2 != 0) {
      Curl_failf(iVar3,"failed to store ssl session");
      goto LAB_00623dd0;
    }
  }
  if (*(int *)(iVar3 + 0x23c) == 0) {
    FUN_00622f18(param_1,param_1 + param_2 * 6 + 0x53);
  }
  else {
    iVar2 = FUN_00622f18(param_1,param_1 + param_2 * 6 + 0x53,1);
    if (iVar2 != 0) goto LAB_00623dd0;
  }
  iVar2 = 0;
  param_1[param_2 * 6 + 0x58] = 5;
LAB_00623dd0:
  return CONCAT44(param_1,iVar2);
}

// ---- FUN_00623de4  @ 0x623de4
void FUN_00623de4(undefined4 *param_1,int param_2,void *param_3,int param_4,undefined4 *param_5)

{
  int ret_code;
  int iVar1;
  ulong e;
  char *pcVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  char acStack_9c [120];
  int local_24;
  
  local_24 = __stack_chk_guard;
  ERR_clear_error();
  if (param_4 < 0) {
    param_4 = 0x7fffffff;
  }
  ret_code = SSL_read((SSL *)param_1[param_2 * 6 + 0x56],param_3,param_4);
  if (ret_code < 0) {
    iVar1 = SSL_get_error((SSL *)param_1[param_2 * 6 + 0x56],ret_code);
    switch(iVar1) {
    case 0:
    case 6:
      goto switchD_00623e34_caseD_0;
    default:
      e = ERR_get_error();
      uVar4 = *param_1;
      pcVar2 = ERR_error_string(e,acStack_9c);
      puVar3 = (undefined4 *)__errno();
      Curl_failf(uVar4,"SSL read: %s, errno %d",pcVar2,*puVar3);
      uVar4 = 0x38;
      break;
    case 2:
    case 3:
      uVar4 = 0x51;
    }
    ret_code = -1;
    *param_5 = uVar4;
  }
switchD_00623e34_caseD_0:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(ret_code);
}

// ---- FUN_00623f68  @ 0x623f68
int FUN_00623f68(int *param_1,int param_2)

{
  bool bVar1;
  bool bVar2;
  SSL_METHOD *meth;
  SSL_CTX *pSVar3;
  ulong uVar4;
  char *pcVar5;
  long lVar6;
  FILE *fp;
  PKCS12 *p12;
  void *parg;
  X509 *x;
  int iVar7;
  SSL *pSVar8;
  EVP_PKEY *to;
  evp_pkey_st *from;
  X509_STORE *pXVar9;
  X509_LOOKUP_METHOD *m;
  X509_LOOKUP *ctx;
  char *pcVar10;
  uint larg;
  undefined *puVar11;
  int iVar12;
  char *pcVar13;
  undefined *puVar14;
  int iVar15;
  int iVar16;
  int iVar17;
  undefined *local_54;
  char *local_50;
  SSL_SESSION *local_3c;
  undefined1 auStack_38 [4];
  X509 *local_34;
  EVP_PKEY *local_30;
  _STACK *local_2c [2];
  
  iVar15 = *param_1;
  iVar12 = param_1[param_2 + 0x4c];
  local_3c = (SSL_SESSION *)0x0;
  Curl_ossl_seed(iVar15);
  iVar17 = *(int *)(iVar15 + 0x234);
  if (iVar17 == 2) {
    meth = SSLv2_client_method();
LAB_00623fca:
    bVar2 = false;
  }
  else {
    if (iVar17 == 3) {
      meth = SSLv3_client_method();
      goto LAB_00623fca;
    }
    if (iVar17 == 1) {
      meth = TLSv1_client_method();
      bVar2 = true;
    }
    else {
      meth = SSLv23_client_method();
      bVar2 = true;
    }
  }
  if ((SSL_CTX *)param_1[param_2 * 6 + 0x55] != (SSL_CTX *)0x0) {
    SSL_CTX_free((SSL_CTX *)param_1[param_2 * 6 + 0x55]);
  }
  pSVar3 = SSL_CTX_new(meth);
  param_1[param_2 * 6 + 0x55] = (int)pSVar3;
  if (pSVar3 == (SSL_CTX *)0x0) {
    uVar4 = ERR_peek_error();
    pcVar5 = ERR_error_string(uVar4,(char *)0x0);
    Curl_failf(iVar15,"SSL: couldn\'t create a context: %s",pcVar5);
    return 0x1b;
  }
  SSL_CTX_ctrl(pSVar3,0x21,0x10,(void *)0x0);
  if ((*(int *)(iVar15 + 0x184) != 0) && (*(char *)(iVar15 + 0x2c0) != '\0')) {
    lVar6 = SSL_CTX_callback_ctrl
                      ((SSL_CTX *)param_1[param_2 * 6 + 0x55],0xf,(_func_3520 *)&LAB_00622e00_1);
    if (lVar6 == 0) {
      pcVar5 = "SSL: couldn\'t set callback!\n";
    }
    else {
      lVar6 = SSL_CTX_ctrl((SSL_CTX *)param_1[param_2 * 6 + 0x55],0x10,0,param_1);
      if (lVar6 != 0) goto LAB_0062403e;
      pcVar5 = "SSL: couldn\'t set callback argument!\n";
    }
    Curl_infof(iVar15,pcVar5);
  }
LAB_0062403e:
  larg = 0x800043f7;
  if (*(char *)(*param_1 + 0x2da) != '\0') {
    larg = 0x80004bf7;
  }
  if (*(int *)(iVar15 + 0x234) == 0) {
    larg = larg | 0x1000000;
  }
  SSL_CTX_ctrl((SSL_CTX *)param_1[param_2 * 6 + 0x55],0x20,larg,(void *)0x0);
  pcVar5 = *(char **)(iVar15 + 0x2f0);
  if ((pcVar5 != (char *)0x0) || (*(int *)(iVar15 + 0x2f4) != 0)) {
    pcVar13 = *(char **)(iVar15 + 0x2f4);
    local_50 = *(char **)(iVar15 + 0x318);
    pSVar3 = (SSL_CTX *)param_1[param_2 * 6 + 0x55];
    local_54 = *(undefined **)(iVar15 + 800);
    iVar16 = *param_1;
    iVar17 = FUN_00622b68(pcVar13);
    if (iVar17 == 0x2a || pcVar5 != (char *)0x0) {
      if (*(void **)(iVar16 + 0x31c) != (void *)0x0) {
        SSL_CTX_set_default_passwd_cb_userdata(pSVar3,*(void **)(iVar16 + 0x31c));
        SSL_CTX_set_default_passwd_cb(pSVar3,(undefined1 *)0x622bc9);
      }
      if (iVar17 == 2) {
        iVar17 = SSL_CTX_use_certificate_file(pSVar3,pcVar5,2);
        if (iVar17 == 1) {
LAB_0062426c:
          bVar1 = false;
LAB_00624270:
          iVar17 = FUN_00622b68(local_54);
          if (iVar17 == 2) {
LAB_0062429e:
            iVar17 = SSL_CTX_use_PrivateKey_file(pSVar3,local_50,iVar17);
            if (iVar17 != 1) {
              if (local_54 == (undefined *)0x0) {
                local_54 = &DAT_00810220;
              }
              Curl_failf(iVar16,"unable to set private key file: \'%s\' type %s",local_50,local_54);
              return 0x3a;
            }
LAB_0062434a:
            pSVar8 = SSL_new(pSVar3);
            if (pSVar8 == (SSL *)0x0) {
              pcVar5 = "unable to create an SSL structure";
            }
            else {
              local_34 = SSL_get_certificate(pSVar8);
              if (local_34 != (X509 *)0x0) {
                to = X509_get_pubkey(local_34);
                from = SSL_get_privatekey(pSVar8);
                EVP_PKEY_copy_parameters(to,from);
                EVP_PKEY_free(to);
              }
              SSL_free(pSVar8);
              iVar17 = SSL_CTX_check_private_key(pSVar3);
              if (iVar17 != 0) goto LAB_00624390;
              pcVar5 = "Private key does not match the certificate public key";
            }
          }
          else if (iVar17 < 3) {
            if (iVar17 == 1) {
              if (!bVar1) {
                if (local_50 == (char *)0x0) {
                  local_50 = pcVar5;
                }
                goto LAB_0062429e;
              }
              goto LAB_0062434a;
            }
LAB_0062433c:
            pcVar5 = "not supported file type for private key";
          }
          else if (iVar17 == 0x2a) {
            pcVar5 = "file type ENG for private key not supported";
          }
          else {
            if (iVar17 != 0x2b) goto LAB_0062433c;
            if (bVar1) goto LAB_0062434a;
            pcVar5 = "file type P12 for private key not supported";
          }
        }
        else {
          pcVar5 = "unable to use client certificate (no key found or wrong pass phrase?)";
        }
LAB_00624340:
        Curl_failf(iVar16,pcVar5);
      }
      else {
        if (iVar17 < 3) {
          if (iVar17 == 1) {
            iVar17 = SSL_CTX_use_certificate_chain_file(pSVar3,pcVar5);
            if (iVar17 == 1) goto LAB_0062426c;
            pcVar5 = "unable to use client certificate (no key found or wrong pass phrase?)";
            goto LAB_00624340;
          }
LAB_0062425e:
          pcVar10 = "not supported file type \'%s\' for certificate";
          pcVar5 = pcVar13;
        }
        else {
          if (iVar17 == 0x2a) {
            pcVar5 = "file type ENG for certificate not implemented";
            goto LAB_00624340;
          }
          if (iVar17 != 0x2b) goto LAB_0062425e;
          local_2c[0] = (_STACK *)0x0;
          fp = fopen(pcVar5,"rb");
          if (fp == (FILE *)0x0) {
            pcVar10 = "could not open PKCS12 file \'%s\'";
          }
          else {
            p12 = d2i_PKCS12_fp(fp,(PKCS12 **)0x0);
            fclose(fp);
            if (p12 != (PKCS12 *)0x0) {
              PKCS12_PBE_add();
              iVar17 = PKCS12_parse(p12,*(char **)(iVar16 + 0x31c),&local_30,&local_34,
                                    (stack_st_X509 **)local_2c);
              if (iVar17 == 0) {
                uVar4 = ERR_get_error();
                pcVar5 = ERR_error_string(uVar4,(char *)0x0);
                Curl_failf(iVar16,"could not parse PKCS12 file, check password, OpenSSL error %s",
                           pcVar5);
                PKCS12_free(p12);
                return 0x3a;
              }
              PKCS12_free(p12);
              iVar17 = SSL_CTX_use_certificate(pSVar3,local_34);
              if (iVar17 != 1) {
                pcVar5 = "unable to use client certificate (no key found or wrong pass phrase?)";
LAB_0062420c:
                Curl_failf(iVar16,pcVar5);
                goto LAB_00624212;
              }
              iVar17 = SSL_CTX_use_PrivateKey(pSVar3,local_30);
              if (iVar17 == 1) {
                iVar17 = SSL_CTX_check_private_key(pSVar3);
                if (iVar17 != 0) {
                  if ((local_2c[0] != (_STACK *)0x0) && (iVar17 = sk_num(local_2c[0]), iVar17 != 0))
                  {
                    for (iVar17 = 0; iVar7 = sk_num(local_2c[0]), iVar17 < iVar7;
                        iVar17 = iVar17 + 1) {
                      parg = sk_value(local_2c[0],iVar17);
                      lVar6 = SSL_CTX_ctrl(pSVar3,0xe,0,parg);
                      if (lVar6 == 0) {
                        pcVar5 = "cannot add certificate to certificate chain";
                        goto LAB_0062420c;
                      }
                      x = sk_value(local_2c[0],iVar17);
                      iVar7 = SSL_CTX_add_client_CA(pSVar3,x);
                      if (iVar7 == 0) {
                        pcVar5 = "cannot add certificate to client CA list";
                        goto LAB_0062420c;
                      }
                    }
                  }
                  EVP_PKEY_free(local_30);
                  X509_free(local_34);
                  bVar1 = true;
                  sk_pop_free(local_2c[0],(func *)(undefined *)0x64492d);
                  goto LAB_00624270;
                }
                pcVar13 = 
                "private key from PKCS12 file \'%s\' does not match certificate in same file";
              }
              else {
                pcVar13 = "unable to use private key from PKCS12 file \'%s\'";
              }
              Curl_failf(iVar16,pcVar13,pcVar5);
LAB_00624212:
              EVP_PKEY_free(local_30);
              X509_free(local_34);
              sk_pop_free(local_2c[0],(func *)(undefined *)0x64492d);
              return 0x3a;
            }
            pcVar10 = "error reading PKCS12 file \'%s\'";
          }
        }
        Curl_failf(iVar16,pcVar10,pcVar5);
      }
      return 0x3a;
    }
  }
LAB_00624390:
  if ((*(char **)(iVar15 + 0x348) != (char *)0x0) &&
     (iVar17 = SSL_CTX_set_cipher_list
                         ((SSL_CTX *)param_1[param_2 * 6 + 0x55],*(char **)(iVar15 + 0x348)),
     iVar17 == 0)) {
    Curl_failf(iVar15,"failed setting cipher list");
    return 0x3b;
  }
  if ((*(char **)(iVar15 + 0x344) != (char *)0x0) || (*(int *)(iVar15 + 0x340) != 0)) {
    iVar17 = SSL_CTX_load_verify_locations
                       ((SSL_CTX *)param_1[param_2 * 6 + 0x55],*(char **)(iVar15 + 0x344),
                        *(char **)(iVar15 + 0x340));
    if (iVar17 == 0) {
      if (*(int *)(iVar15 + 0x23c) != 0) {
        puVar11 = *(undefined **)(iVar15 + 0x344);
        if (puVar11 == (undefined *)0x0) {
          puVar11 = &DAT_0080e51e;
        }
        puVar14 = *(undefined **)(iVar15 + 0x340);
        if (puVar14 == (undefined *)0x0) {
          puVar14 = &DAT_0080e51e;
        }
        Curl_failf(iVar15,
                   "error setting certificate verify locations:\n  CAfile: %s\n  CApath: %s\n",
                   puVar11,puVar14);
        return 0x4d;
      }
      pcVar5 = "error setting certificate verify locations, continuing anyway:\n";
    }
    else {
      pcVar5 = "successfully set certificate verify locations:\n";
    }
    Curl_infof(iVar15,pcVar5);
    puVar11 = *(undefined **)(iVar15 + 0x344);
    if (puVar11 == (undefined *)0x0) {
      puVar11 = &DAT_0080e51e;
    }
    puVar14 = *(undefined **)(iVar15 + 0x340);
    if (puVar14 == (undefined *)0x0) {
      puVar14 = &DAT_0080e51e;
    }
    Curl_infof(iVar15,"  CAfile: %s\n  CApath: %s\n",puVar11,puVar14);
  }
  if (*(int *)(iVar15 + 0x358) != 0) {
    pXVar9 = SSL_CTX_get_cert_store((SSL_CTX *)param_1[param_2 * 6 + 0x55]);
    m = X509_LOOKUP_file();
    ctx = X509_STORE_add_lookup(pXVar9,m);
    if ((ctx == (X509_LOOKUP *)0x0) ||
       (iVar17 = X509_load_crl_file(ctx,*(char **)(iVar15 + 0x358),1), iVar17 == 0)) {
      Curl_failf(iVar15,"error loading CRL file: %s\n",*(undefined4 *)(iVar15 + 0x358));
      return 0x52;
    }
    Curl_infof(iVar15,"successfully load CRL file:\n");
    pXVar9 = SSL_CTX_get_cert_store((SSL_CTX *)param_1[param_2 * 6 + 0x55]);
    X509_STORE_set_flags(pXVar9,0xc);
    puVar11 = *(undefined **)(iVar15 + 0x358);
    if (puVar11 == (undefined *)0x0) {
      puVar11 = &DAT_0080e51e;
    }
    Curl_infof(iVar15,"  CRLfile: %s\n",puVar11);
  }
  SSL_CTX_set_verify((SSL_CTX *)param_1[param_2 * 6 + 0x55],(uint)(*(int *)(iVar15 + 0x23c) != 0),
                     (callback *)0x6226e9);
  if ((*(code **)(iVar15 + 0x264) != (code *)0x0) &&
     (iVar17 = (**(code **)(iVar15 + 0x264))
                         (iVar15,param_1[param_2 * 6 + 0x55],*(undefined4 *)(iVar15 + 0x268)),
     iVar17 != 0)) {
    Curl_failf(iVar15,"error signaled by ssl ctx callback");
    return iVar17;
  }
  if ((SSL *)param_1[param_2 * 6 + 0x56] != (SSL *)0x0) {
    SSL_free((SSL *)param_1[param_2 * 6 + 0x56]);
  }
  pSVar8 = SSL_new((SSL_CTX *)param_1[param_2 * 6 + 0x55]);
  param_1[param_2 * 6 + 0x56] = (int)pSVar8;
  if (pSVar8 == (SSL *)0x0) {
    Curl_failf(iVar15,"SSL: couldn\'t create a context (handle)!");
    return 0x1b;
  }
  SSL_set_connect_state(pSVar8);
  param_1[param_2 * 6 + 0x57] = 0;
  iVar17 = inet_pton(2,(char *)param_1[0x20],auStack_38);
  if (((iVar17 == 0) && (bVar2)) &&
     (lVar6 = SSL_ctrl((SSL *)param_1[param_2 * 6 + 0x56],0x37,0,(void *)param_1[0x20]), lVar6 == 0)
     ) {
    Curl_infof(iVar15,"WARNING: failed to configure server name indication (SNI) TLS extension\n");
  }
  iVar17 = Curl_ssl_getsessionid(param_1,&local_3c,0);
  if (iVar17 == 0) {
    iVar17 = SSL_set_session((SSL *)param_1[param_2 * 6 + 0x56],local_3c);
    if (iVar17 == 0) {
      uVar4 = ERR_get_error();
      pcVar5 = ERR_error_string(uVar4,(char *)0x0);
      pcVar13 = "SSL: SSL_set_session failed: %s";
      goto LAB_00624556;
    }
    Curl_infof(iVar15,"SSL re-using session ID\n");
  }
  iVar12 = SSL_set_fd((SSL *)param_1[param_2 * 6 + 0x56],iVar12);
  if (iVar12 != 0) {
    param_1[param_2 * 6 + 0x58] = 1;
    return 0;
  }
  uVar4 = ERR_get_error();
  pcVar5 = ERR_error_string(uVar4,(char *)0x0);
  pcVar13 = "SSL: SSL_set_fd failed: %s";
LAB_00624556:
  Curl_failf(iVar15,pcVar13,pcVar5);
  return 0x23;
}

// ---- FUN_006245d0  @ 0x6245d0
void FUN_006245d0(undefined4 *param_1,int param_2,int param_3,undefined1 *param_4)

{
  undefined4 *puVar1;
  ulong e;
  long n;
  char *pcVar2;
  SSL_CIPHER *c;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  char acStack_12c [256];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  uVar7 = *param_1;
  uVar4 = param_1[param_2 + 0x4c];
  if (param_1[param_2 * 6 + 0x54] == 2) {
    *param_4 = 1;
  }
  else {
    if (param_1[param_2 * 6 + 0x58] == 0) {
      iVar6 = Curl_timeleft(uVar7,0,1);
      if (iVar6 < 0) {
LAB_0062464e:
        iVar6 = 0x1c;
        Curl_failf(uVar7,"SSL connection timeout");
        goto LAB_006247d6;
      }
      iVar6 = FUN_00623f68(param_1,param_2);
      if (iVar6 != 0) goto LAB_006247d6;
    }
    do {
      if (2 < param_1[param_2 * 6 + 0x58] - 1) {
        if ((param_1[param_2 * 6 + 0x58] != 4) ||
           (iVar6 = FUN_00623d4c(param_1,param_2), iVar6 == 0)) {
          iVar6 = param_1[param_2 * 6 + 0x58];
          if (iVar6 == 5) {
            param_1[param_2 * 6 + 0x54] = 2;
            param_1[param_2 + 0x4f] = 0x623de5;
            param_1[param_2 + 0x51] = 0x622aad;
          }
          *param_4 = iVar6 == 5;
          iVar6 = 0;
          param_1[param_2 * 6 + 0x58] = 0;
        }
        goto LAB_006247d6;
      }
      iVar6 = Curl_timeleft(uVar7,0,1);
      if (iVar6 < 0) goto LAB_0062464e;
      if (param_1[param_2 * 6 + 0x58] - 2 < 2) {
        if (param_1[param_2 * 6 + 0x58] == 3) {
          uVar5 = uVar4;
          uVar3 = 0xffffffff;
        }
        else {
          uVar5 = 0xffffffff;
          uVar3 = uVar4;
        }
        if (param_3 != 0) {
          iVar6 = 0;
        }
        iVar6 = Curl_socket_check(uVar3,0xffffffff,uVar5,iVar6);
        if (iVar6 < 0) {
          puVar1 = (undefined4 *)__errno();
          Curl_failf(uVar7,"select/poll on SSL socket, errno: %d",*puVar1);
LAB_00624748:
          iVar6 = 0x23;
        }
        else {
          if (iVar6 != 0) goto LAB_006246ae;
          if (param_3 == 0) goto LAB_0062464e;
          *param_4 = 0;
          iVar6 = 0;
        }
        goto LAB_006247d6;
      }
LAB_006246ae:
      uVar3 = *param_1;
      ERR_clear_error();
      iVar6 = SSL_connect((SSL *)param_1[param_2 * 6 + 0x56]);
      if (iVar6 == 1) {
        param_1[param_2 * 6 + 0x58] = 4;
        c = SSL_get_current_cipher((SSL *)param_1[param_2 * 6 + 0x56]);
        pcVar2 = SSL_CIPHER_get_name(c);
        Curl_infof(uVar3,"SSL connection using %s\n",pcVar2);
      }
      else {
        iVar6 = SSL_get_error((SSL *)param_1[param_2 * 6 + 0x56],iVar6);
        if ((iVar6 != 2) && (iVar6 != 3)) {
          param_1[param_2 * 6 + 0x58] = 1;
          e = ERR_get_error();
          if ((e == 0x1407e086) || (e == 0x14090086)) {
            n = SSL_get_verify_result((SSL *)param_1[param_2 * 6 + 0x56]);
            if (n == 0) {
              pcVar2 = "SSL certificate problem, verify that the CA cert is OK.";
            }
            else {
              pcVar2 = X509_verify_cert_error_string(n);
              curl_msnprintf(acStack_12c,0x100,"SSL certificate problem: %s",pcVar2);
              pcVar2 = (char *)0x0;
            }
            iVar6 = 0x3c;
          }
          else {
            ERR_error_string_n(e,acStack_12c,0x100);
            iVar6 = 0x23;
            pcVar2 = (char *)0x0;
          }
          uVar8 = 1 - e;
          if (1 < e) {
            uVar8 = 0;
          }
          if (iVar6 == 0x23) {
            uVar8 = uVar8 & 1;
          }
          else {
            uVar8 = 0;
          }
          if (uVar8 != 0) {
            Curl_failf(uVar3,"Unknown SSL protocol error in connection to %s:%ld ",param_1[0x20],
                       param_1[0x26]);
            goto LAB_00624748;
          }
          if (pcVar2 == (char *)0x0) {
            pcVar2 = "";
          }
          Curl_failf(uVar3,&DAT_0080eb5c,pcVar2,acStack_12c);
          goto LAB_006247d6;
        }
        param_1[param_2 * 6 + 0x58] = iVar6;
      }
    } while ((param_3 == 0) || (2 < param_1[param_2 * 6 + 0x58] - 1));
  }
  iVar6 = 0;
LAB_006247d6:
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar6);
  }
  return;
}

// ---- FUN_00624d74  @ 0x624d74
int FUN_00624d74(byte *param_1,undefined4 *param_2)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = 0;
  while( true ) {
    uVar2 = *param_1 - 0x30;
    if (9 < uVar2) break;
    iVar1 = iVar1 * 10 + uVar2;
    param_1 = param_1 + 1;
  }
  if ((iVar1 != 0) && (*param_1 == 0x24)) {
    *param_2 = param_1 + 1;
    return iVar1;
  }
  return 0;
}

// ---- FUN_00624dc4  @ 0x624dc4
uint FUN_00624dc4(byte param_1,int *param_2)

{
  int iVar1;
  
  if (*param_2 == 0) {
    iVar1 = (*Curl_cmalloc)(0x20);
    *param_2 = iVar1;
    if (iVar1 == 0) {
LAB_00624e00:
      param_2[3] = 1;
      return 0xffffffff;
    }
    param_2[1] = 0;
    param_2[2] = 0x20;
  }
  else if ((uint)param_2[2] <= param_2[1] + 1U) {
    iVar1 = (*Curl_crealloc)(*param_2,param_2[2] << 1);
    if (iVar1 == 0) goto LAB_00624e00;
    *param_2 = iVar1;
    param_2[2] = param_2[2] << 1;
  }
  *(byte *)(*param_2 + param_2[1]) = param_1;
  param_2[1] = param_2[1] + 1;
  return (uint)param_1;
}

// ---- FUN_00624e54  @ 0x624e54
void FUN_00624e54(undefined4 param_1,code *param_2,byte *param_3,uint *param_4)

{
  byte bVar1;
  byte *pbVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  size_t sVar7;
  int iVar8;
  uint uVar9;
  uint *puVar10;
  byte *pbVar11;
  int extraout_r2;
  char cVar12;
  char *pcVar13;
  int *piVar14;
  uint uVar15;
  int iVar16;
  uint uVar17;
  char *pcVar18;
  char *pcVar19;
  char *pcVar20;
  uint uVar21;
  uint uVar22;
  char *pcVar23;
  uint uVar24;
  bool bVar25;
  bool bVar26;
  longlong lVar27;
  undefined4 *local_f88;
  uint local_f84;
  char *local_f7c;
  int local_f6c;
  undefined4 *local_f68;
  uint local_f64;
  byte *local_f58;
  byte *local_f54;
  undefined4 auStack_f50 [128];
  uint local_d50 [769];
  char local_14c [32];
  char acStack_12c [255];
  char local_2d;
  int local_2c;
  
  uVar24 = 0;
  uVar21 = 0;
  local_2c = __stack_chk_guard;
  local_f88 = auStack_f50;
  pbVar2 = param_3;
LAB_00625138:
  while (local_f54 = pbVar2, *local_f54 != 0) {
    pbVar2 = local_f54 + 1;
    if (*local_f54 == 0x25) {
      if (local_f54[1] != 0x25) {
        uVar15 = 0;
        local_f54 = pbVar2;
        uVar3 = FUN_00624d74(pbVar2,&local_f54);
        uVar21 = uVar21 + 1;
        uVar22 = 0;
        uVar17 = 0;
        if (uVar3 == 0) {
          uVar3 = uVar21;
        }
        if ((int)uVar24 < (int)uVar3) {
          uVar24 = uVar3;
        }
LAB_00624fc2:
        while( true ) {
          pbVar2 = local_f54;
          bVar1 = *local_f54;
          if ((0x5a < (byte)(bVar1 - 0x20)) || ((&DAT_00839ea2)[(byte)(bVar1 - 0x20)] == '\0'))
          goto LAB_00624fe0;
          pbVar11 = local_f54 + 1;
          if (0x39 < bVar1) break;
          if (bVar1 < 0x31) {
            if (bVar1 == 0x2b) {
              uVar15 = uVar15 | 2;
              local_f54 = pbVar11;
            }
            else if (bVar1 < 0x2c) {
              if (bVar1 == 0x23) {
                uVar15 = uVar15 | 8;
                local_f54 = pbVar11;
              }
              else if (bVar1 == 0x2a) {
                uVar21 = uVar21 + 1;
                local_f54 = pbVar11;
                uVar17 = FUN_00624d74(pbVar11,&local_f54);
                uVar15 = uVar15 | 0x4000;
                if (uVar17 == 0) {
                  uVar17 = uVar21;
                }
                if ((int)uVar24 < (int)uVar17) {
                  uVar24 = uVar17;
                }
              }
              else {
                local_f54 = pbVar11;
                if (bVar1 == 0x20) {
                  uVar15 = uVar15 | 1;
                }
              }
            }
            else if (bVar1 == 0x2e) {
              if (local_f54[1] == 0x2a) {
                local_f54 = local_f54 + 2;
                uVar22 = FUN_00624d74(local_f54,&local_f54);
                uVar21 = uVar21 + 1;
                uVar15 = uVar15 | 0x18000;
                if (uVar22 == 0) {
                  uVar22 = uVar21;
                }
                if ((int)uVar24 < (int)uVar22) {
                  uVar24 = uVar22;
                }
              }
              else {
                local_f54 = pbVar11;
                uVar22 = strtol((char *)pbVar11,(char **)&local_f54,10);
                uVar15 = uVar15 | 0x8000;
              }
            }
            else {
              if (bVar1 == 0x30) {
                if (-1 < (int)(uVar15 << 0x1d)) {
                  uVar15 = uVar15 | 0x100;
                }
                goto LAB_00624f94;
              }
              local_f54 = pbVar11;
              if (bVar1 == 0x2d) {
                uVar15 = uVar15 & 0xfffffeff | 4;
              }
            }
          }
          else {
LAB_00624f94:
            uVar15 = uVar15 | 0x2000;
            local_f54 = pbVar11;
            uVar17 = strtol((char *)pbVar2,(char **)&local_f54,10);
          }
        }
        if (bVar1 == 0x68) {
          uVar15 = uVar15 | 0x10;
          local_f54 = pbVar11;
          goto LAB_00624fc2;
        }
        if (bVar1 < 0x69) {
          if (bVar1 == 0x4c) {
            uVar15 = uVar15 | 0x80;
            local_f54 = pbVar11;
            goto LAB_00624fc2;
          }
          local_f54 = pbVar11;
          if (bVar1 != 0x4f) goto LAB_00624fc2;
        }
        else if (bVar1 != 0x71) {
          if (bVar1 != 0x7a) {
            local_f54 = pbVar11;
            if (bVar1 != 0x6c) goto LAB_00624fc2;
            if ((int)(uVar15 << 0x1a) < 0) goto LAB_00624f86;
          }
          uVar15 = uVar15 | 0x20;
          local_f54 = pbVar11;
          goto LAB_00624fc2;
        }
LAB_00624f86:
        uVar15 = uVar15 | 0x40;
        local_f54 = pbVar11;
        goto LAB_00624fc2;
      }
      pbVar2 = local_f54 + 2;
    }
  }
  iVar16 = 0;
  while (iVar4 = iVar16, iVar4 < (int)uVar24) {
    iVar16 = iVar4 + 1;
    puVar10 = param_4;
    if ((iVar16 < (int)uVar24) && (local_d50[iVar16 * 6] == 9)) {
      uVar21 = *param_4;
      puVar10 = param_4 + 1;
      local_d50[iVar16 * 6 + 4] = uVar21;
      local_d50[iVar16 * 6 + 5] = (int)uVar21 >> 0x1f;
    }
    param_4 = puVar10;
    switch(local_d50[iVar4 * 6]) {
    case 0:
    case 1:
    case 2:
    case 4:
      param_4 = puVar10 + 1;
      local_d50[iVar4 * 6 + 4] = *puVar10;
      break;
    case 3:
      uVar21 = local_d50[iVar4 * 6 + 1];
      if (((uVar21 & 0x240) == 0x240) || ((uVar21 & 0x40) != 0)) {
        puVar10 = (uint *)((int)puVar10 + 7U & 0xfffffff8);
        param_4 = puVar10 + 2;
        uVar21 = puVar10[1];
        local_d50[iVar4 * 6 + 4] = *puVar10;
        local_d50[iVar4 * 6 + 5] = uVar21;
      }
      else {
        param_4 = puVar10 + 1;
        if (((uVar21 & 0x220) == 0x220) || (((uVar21 & 0x20) == 0 && ((int)(uVar21 << 0x16) < 0))))
        {
          uVar21 = *puVar10;
          local_d50[iVar4 * 6 + 5] = 0;
          local_d50[iVar4 * 6 + 4] = uVar21;
        }
        else {
          uVar21 = *puVar10;
          local_d50[iVar4 * 6 + 4] = uVar21;
          local_d50[iVar4 * 6 + 5] = (int)uVar21 >> 0x1f;
        }
      }
      break;
    case 7:
      puVar10 = (uint *)((int)puVar10 + 7U & 0xfffffff8);
      param_4 = puVar10 + 2;
      uVar21 = puVar10[1];
      local_d50[iVar4 * 6 + 4] = *puVar10;
      local_d50[iVar4 * 6 + 5] = uVar21;
      break;
    case 9:
      local_d50[iVar4 * 6] = 3;
    }
  }
  local_f6c = 0;
  local_f7c = "0123456789abcdefghijklmnopqrstuvwxyz";
  iVar16 = 0;
  local_f68 = auStack_f50;
  local_f58 = param_3;
  do {
    while( true ) {
      while( true ) {
        if (*local_f58 == 0) goto LAB_006258ca;
        if (*local_f58 == 0x25) break;
        do {
          iVar4 = (*param_2)(*local_f58,param_1);
          if (iVar4 == -1) goto LAB_006258ca;
          iVar16 = iVar16 + 1;
          pbVar11 = local_f58 + 1;
          pbVar2 = local_f58 + 1;
          local_f58 = pbVar11;
        } while ((*pbVar2 != 0) && (*pbVar2 != 0x25));
      }
      if (local_f58[1] != 0x25) break;
      iVar4 = (*param_2)(0x25,param_1);
      if (iVar4 == -1) goto LAB_006258ca;
      iVar16 = iVar16 + 1;
      local_f58 = local_f58 + 2;
    }
    iVar5 = FUN_00624d74(local_f58 + 1);
    iVar4 = local_f6c;
    if (iVar5 != 0) {
      iVar4 = iVar5 + -1;
    }
    uVar21 = local_d50[iVar4 * 6 + 1];
    uVar24 = local_d50[iVar4 * 6 + 2];
    if ((uVar21 & 0x4000) != 0) {
      uVar24 = local_d50[uVar24 * 6 + 4];
    }
    if ((uVar21 & 0x10000) == 0) {
      if ((int)(uVar21 << 0x10) < 0) {
        uVar22 = local_d50[iVar4 * 6 + 3];
        local_f6c = local_f6c + 1;
      }
      else {
        uVar22 = 0xffffffff;
        local_f6c = local_f6c + 1;
      }
    }
    else {
      uVar22 = local_d50[local_d50[iVar4 * 6 + 3] * 6 + 4];
      local_f6c = local_f6c + 2;
    }
    local_f64 = (uVar21 & 0xf) >> 3;
    switch(local_d50[iVar4 * 6]) {
    case 1:
      pcVar19 = (char *)local_d50[iVar4 * 6 + 4];
      if (pcVar19 == (char *)0x0) {
        if ((int)uVar22 < 5 && uVar22 != 0xffffffff) {
          pcVar19 = "";
          uVar21 = 0;
        }
        else {
          local_d50[iVar4 * 6 + 1] = uVar21 & 0xfffffff7;
          uVar21 = 5;
          pcVar19 = "(nil)";
        }
      }
      else {
        uVar21 = strlen(pcVar19);
      }
      if (uVar22 < uVar21 && uVar22 != 0xffffffff) {
        uVar21 = uVar22;
      }
      if ((int)(local_d50[iVar4 * 6 + 1] << 0x1c) < 0) {
        iVar5 = (*param_2)(0x22,param_1);
        if (iVar5 == -1) goto LAB_006258ca;
        iVar16 = iVar16 + 1;
      }
      iVar5 = uVar24 - uVar21;
      iVar8 = iVar5;
      if (-1 < (int)(local_d50[iVar4 * 6 + 1] << 0x1d)) {
        while (iVar8 = iVar5 + -1, 0 < iVar5) {
          iVar5 = (*param_2)(0x20,param_1);
          if (iVar5 == -1) goto LAB_006258ca;
          iVar16 = iVar16 + 1;
          iVar5 = iVar8;
        }
      }
      while (uVar21 != 0) {
        iVar5 = (*param_2)(*pcVar19,param_1);
        uVar21 = uVar21 - 1;
        if (iVar5 == -1) goto LAB_006258ca;
        iVar16 = iVar16 + 1;
        pcVar19 = pcVar19 + 1;
      }
      if ((int)(local_d50[iVar4 * 6 + 1] << 0x1d) < 0) {
        while (0 < iVar8) {
          iVar5 = (*param_2)(0x20,param_1);
          iVar8 = iVar8 + -1;
          if (iVar5 == -1) goto LAB_006258ca;
          iVar16 = iVar16 + 1;
        }
      }
      if ((int)(local_d50[iVar4 * 6 + 1] << 0x1c) < 0) {
        iVar4 = (*param_2)(0x22,param_1);
        if (iVar4 == -1) goto LAB_006258ca;
        iVar16 = iVar16 + 1;
      }
      break;
    case 2:
      local_f88 = (undefined4 *)local_d50[iVar4 * 6 + 4];
      if (local_f88 != (undefined4 *)0x0) {
        if ((int)(uVar21 << 0x13) < 0) {
          local_f7c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        }
        else {
          local_f7c = "0123456789abcdefghijklmnopqrstuvwxyz";
        }
        bVar25 = false;
        iVar5 = 0x10;
        local_f84 = 0;
        local_f64 = 1;
        goto LAB_006253ea;
      }
      iVar8 = uVar24 - 5;
      iVar5 = iVar8;
      if ((int)(uVar21 << 0x1d) < 0) {
        while (iVar8 = iVar5 + -1, 0 < iVar5) {
          iVar5 = (*param_2)(0x20,param_1);
          if (iVar5 == -1) goto LAB_006258ca;
          iVar16 = iVar16 + 1;
          iVar5 = iVar8;
        }
      }
      pcVar19 = "(nil)";
      while( true ) {
        if (*pcVar19 == '\0') break;
        iVar5 = (*param_2)(*pcVar19,param_1);
        if (iVar5 == -1) goto LAB_006258ca;
        iVar16 = iVar16 + 1;
        pcVar19 = pcVar19 + 1;
      }
      if (-1 < (int)(local_d50[iVar4 * 6 + 1] << 0x1d)) {
        while (0 < iVar8) {
          iVar4 = (*param_2)(0x20,param_1);
          iVar8 = iVar8 + -1;
          if (iVar4 == -1) goto LAB_006258ca;
          iVar16 = iVar16 + 1;
        }
      }
      break;
    case 3:
      local_f88 = (undefined4 *)local_d50[iVar4 * 6 + 4];
      local_f84 = local_d50[iVar4 * 6 + 5];
      if ((uVar21 & 0x20000) == 0) {
        if ((uVar21 & 0x200) == 0) {
          if ((uVar21 & 0x400) == 0) {
            if ((uVar21 & 0x800) == 0) {
              if (-1 < (int)local_f84) goto LAB_006253e6;
              iVar5 = 10;
              bVar25 = true;
              bVar26 = local_f88 != (undefined4 *)0x0;
              local_f88 = (undefined4 *)-(int)local_f88;
              local_f84 = -local_f84 - (uint)bVar26;
            }
            else {
              iVar5 = 0x10;
              if ((uVar21 & 0x1000) == 0) {
                local_f7c = "0123456789abcdefghijklmnopqrstuvwxyz";
                bVar25 = false;
              }
              else {
                local_f7c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                bVar25 = false;
              }
            }
          }
          else {
            iVar5 = 8;
            bVar25 = false;
          }
        }
        else {
LAB_006253e6:
          bVar25 = false;
          iVar5 = 10;
        }
LAB_006253ea:
        lVar27 = CONCAT44(local_f84,local_f88);
        if (uVar22 == 0xffffffff) {
          uVar22 = 1;
        }
        pcVar19 = &local_2d;
        while( true ) {
          local_f84 = (uint)((ulonglong)lVar27 >> 0x20);
          local_f88 = (undefined4 *)lVar27;
          if (lVar27 == 0) break;
          __aeabi_uldivmod(local_f88,local_f84,iVar5,0);
          *pcVar19 = local_f7c[extraout_r2];
          lVar27 = __aeabi_uldivmod(local_f88,local_f84,iVar5,0);
          pcVar19 = pcVar19 + -1;
        }
        pcVar20 = pcVar19 + (uVar24 - (int)&local_2d);
        pcVar23 = pcVar19 + (uVar22 - (int)&local_2d);
        uVar24 = local_f64;
        if (iVar5 != 8) {
          uVar24 = 0;
        }
        if (uVar24 == 0) {
          if (0 < (int)pcVar23) goto LAB_00625472;
        }
        else if ((int)pcVar23 < 1) {
          pcVar20 = pcVar20 + -1;
          *pcVar19 = '0';
          pcVar19 = pcVar19 + -1;
        }
        else {
LAB_00625472:
          pcVar20 = pcVar20 + -(int)pcVar23;
          pcVar18 = pcVar19;
          for (pcVar13 = pcVar23; 0 < (int)pcVar13; pcVar13 = pcVar13 + -1) {
            *pcVar18 = '0';
            pcVar18 = pcVar18 + -1;
          }
          pcVar19 = pcVar19 + -((uint)pcVar23 & ~((int)pcVar23 >> 0x1f));
        }
        if (iVar5 != 0x10) {
          local_f64 = 0;
        }
        if (local_f64 != 0) {
          pcVar20 = pcVar20 + -2;
        }
        if ((bVar25) || ((local_d50[iVar4 * 6 + 1] & 3) != 0)) {
          pcVar20 = pcVar20 + -1;
        }
        if ((local_d50[iVar4 * 6 + 1] & 0x104) == 0) {
          while (pcVar23 = pcVar20 + -1, bVar26 = 0 < (int)pcVar20, pcVar20 = pcVar23, bVar26) {
            iVar5 = (*param_2)(0x20,param_1);
            if (iVar5 == -1) goto LAB_006258ca;
            iVar16 = iVar16 + 1;
          }
        }
        uVar6 = 0x2d;
        if (bVar25) {
LAB_006254f8:
          iVar5 = (*param_2)(uVar6,param_1);
          if (iVar5 == -1) goto LAB_006258ca;
          iVar5 = iVar16 + 1;
        }
        else {
          if ((int)(local_d50[iVar4 * 6 + 1] << 0x1e) < 0) {
            uVar6 = 0x2b;
            goto LAB_006254f8;
          }
          iVar5 = iVar16;
          if ((int)(local_d50[iVar4 * 6 + 1] << 0x1f) < 0) {
            uVar6 = 0x20;
            goto LAB_006254f8;
          }
        }
        if (local_f64 != 0) {
          iVar8 = (*param_2)(0x30,param_1);
          iVar16 = iVar5;
          if (iVar8 == -1) {
LAB_006258ca:
            if (local_2c == __stack_chk_guard) {
              return;
            }
                    /* WARNING: Subroutine does not return */
            __stack_chk_fail(iVar16);
          }
          uVar6 = 0x58;
          if (-1 < (int)(local_d50[iVar4 * 6 + 1] << 0x13)) {
            uVar6 = 0x78;
          }
          iVar8 = (*param_2)(uVar6,param_1);
          iVar16 = iVar5 + 1;
          if (iVar8 == -1) goto LAB_006258ca;
          iVar5 = iVar5 + 2;
        }
        pcVar23 = pcVar20;
        if ((local_d50[iVar4 * 6 + 1] & 0x104) == 0x100) {
          while (pcVar23 = pcVar20 + -1, 0 < (int)pcVar20) {
            iVar8 = (*param_2)(0x30,param_1);
            iVar16 = iVar5;
            if (iVar8 == -1) goto LAB_006258ca;
            iVar5 = iVar5 + 1;
            pcVar20 = pcVar23;
          }
        }
        iVar16 = iVar5;
        pcVar20 = pcVar19;
        while (pcVar20 = pcVar20 + 1, pcVar20 <= &local_2d) {
          iVar8 = (*param_2)(pcVar19[(iVar16 - iVar5) + 1],param_1);
          if (iVar8 == -1) goto LAB_006258ca;
          iVar16 = iVar16 + 1;
        }
        if ((int)(local_d50[iVar4 * 6 + 1] << 0x1d) < 0) {
          while (0 < (int)pcVar23) {
            iVar4 = (*param_2)(0x20,param_1);
            pcVar23 = pcVar23 + -1;
            if (iVar4 == -1) goto LAB_006258ca;
            iVar16 = iVar16 + 1;
          }
        }
      }
      else {
        if (-1 < (int)(uVar21 << 0x1d)) {
          while (uVar24 = uVar24 - 1, 0 < (int)uVar24) {
            iVar5 = (*param_2)(0x20,param_1);
            if (iVar5 == -1) goto LAB_006258ca;
            iVar16 = iVar16 + 1;
          }
        }
        iVar5 = (*param_2)((uint)local_f88 & 0xff,param_1);
        if (iVar5 == -1) goto LAB_006258ca;
        iVar16 = iVar16 + 1;
        if ((int)(local_d50[iVar4 * 6 + 1] << 0x1d) < 0) {
          while (uVar24 = uVar24 - 1, 0 < (int)uVar24) {
            iVar4 = (*param_2)(0x20,param_1);
            if (iVar4 == -1) goto LAB_006258ca;
            iVar16 = iVar16 + 1;
          }
        }
      }
      break;
    case 4:
      piVar14 = (int *)local_d50[iVar4 * 6 + 4];
      if ((uVar21 & 0x40) == 0) {
        if (((int)(uVar21 << 0x1a) < 0) || (-1 < (int)(uVar21 << 0x1b))) {
          *piVar14 = iVar16;
        }
        else {
          *(short *)piVar14 = (short)iVar16;
        }
      }
      else {
        *piVar14 = iVar16;
        piVar14[1] = iVar16 >> 0x1f;
      }
      break;
    case 7:
      local_14c[0] = '%';
      local_14c[1] = '\0';
      local_14c[2] = '\0';
      local_14c[3] = '\0';
      memset(local_14c + 4,0,0x1c);
      sVar7 = strlen(local_14c);
      bVar25 = (uVar21 & 0x2000) != 0;
      if (bVar25) {
        uVar22 = local_d50[iVar4 * 6 + 2];
      }
      iVar5 = 0x20 - sVar7;
      if ((!bVar25) && (uVar22 = 0xffffffff, (uVar21 & 0x4000) != 0)) {
        uVar22 = local_d50[local_d50[iVar4 * 6 + 2] * 6 + 4];
      }
      if ((int)(uVar21 << 0x10) < 0) {
        uVar24 = local_d50[iVar4 * 6 + 3];
      }
      else {
        uVar24 = 0xffffffff;
        if ((uVar21 & 0x10000) != 0) {
          uVar24 = local_d50[local_d50[iVar4 * 6 + 3] * 6 + 4];
        }
      }
      if ((int)(uVar21 << 0x1d) < 0) {
        strcat(local_14c,"-");
      }
      if ((int)(uVar21 << 0x1e) < 0) {
        strcat(local_14c,"+");
      }
      if ((int)(uVar21 << 0x1f) < 0) {
        strcat(local_14c," ");
      }
      if ((uVar21 & 8) != 0) {
        strcat(local_14c,"#");
      }
      sVar7 = strlen(local_14c);
      pcVar19 = local_14c + sVar7;
      if (-1 < (int)uVar22) {
        iVar8 = curl_msnprintf(pcVar19,iVar5,&DAT_008048c9,uVar22);
        pcVar19 = pcVar19 + iVar8;
        iVar5 = iVar5 - iVar8;
      }
      if (-1 < (int)uVar24) {
        iVar5 = curl_msnprintf(pcVar19,iVar5,&DAT_008110ce,uVar24);
        pcVar19 = pcVar19 + iVar5;
      }
      pcVar20 = pcVar19;
      if ((int)(local_d50[iVar4 * 6 + 1] << 0x1a) < 0) {
        pcVar20 = pcVar19 + 1;
        *pcVar19 = 'l';
      }
      uVar24 = local_d50[iVar4 * 6 + 1];
      if ((int)(uVar24 << 0xd) < 0) {
        if ((uVar24 & 0x1000) == 0) {
          cVar12 = 'e';
        }
        else {
          cVar12 = 'E';
        }
      }
      else if ((int)(uVar24 << 0xc) < 0) {
        if ((uVar24 & 0x1000) == 0) {
          cVar12 = 'g';
        }
        else {
          cVar12 = 'G';
        }
      }
      else {
        cVar12 = 'f';
      }
      *pcVar20 = cVar12;
      pcVar20[1] = '\0';
      sprintf(acStack_12c,local_14c,local_d50[iVar4 * 6 + 4],local_d50[iVar4 * 6 + 5]);
      pcVar19 = acStack_12c;
      while( true ) {
        if (*pcVar19 == '\0') break;
        iVar4 = (*param_2)(*pcVar19,param_1);
        if (iVar4 == -1) goto LAB_006258ca;
        iVar16 = iVar16 + 1;
        pcVar19 = pcVar19 + 1;
      }
    }
    local_f58 = (byte *)*local_f68;
    local_f68 = local_f68 + 1;
  } while( true );
LAB_00624fe0:
  uVar3 = uVar3 - 1;
  if (bVar1 == 0x66) {
    uVar9 = 7;
    goto LAB_006250e4;
  }
  if (bVar1 < 0x67) {
    if (bVar1 == 0x58) {
      uVar15 = uVar15 | 0x1800;
      local_d50[uVar3 * 6] = 3;
      goto LAB_006250e6;
    }
    if (bVar1 < 0x59) {
      if (bVar1 == 0x47) {
        uVar15 = uVar15 | 0x81000;
        local_d50[uVar3 * 6] = 7;
        goto LAB_006250e6;
      }
      if (bVar1 == 0x53) {
        uVar15 = uVar15 | 8;
        goto LAB_00625038;
      }
      if (bVar1 == 0x45) {
        uVar15 = uVar15 | 0x41000;
        local_d50[uVar3 * 6] = 7;
        goto LAB_006250e6;
      }
    }
    else {
      if (bVar1 == 100) goto LAB_00625050;
      if (100 < bVar1) {
        uVar15 = uVar15 | 0x40000;
        local_d50[uVar3 * 6] = 7;
        goto LAB_006250e6;
      }
      if (bVar1 == 99) {
        uVar15 = uVar15 | 0x20000;
        local_d50[uVar3 * 6] = 3;
        goto LAB_006250e6;
      }
    }
    goto LAB_006250de;
  }
  if (bVar1 == 0x6f) {
    uVar15 = uVar15 | 0x400;
    local_d50[uVar3 * 6] = 3;
    goto LAB_006250e6;
  }
  if (bVar1 < 0x70) {
    if (bVar1 == 0x69) {
LAB_00625050:
      uVar9 = 3;
    }
    else {
      if (bVar1 != 0x6e) {
        if (bVar1 == 0x67) {
          uVar15 = uVar15 | 0x80000;
          local_d50[uVar3 * 6] = 7;
          goto LAB_006250e6;
        }
        goto LAB_006250de;
      }
      uVar9 = 4;
    }
  }
  else if (bVar1 == 0x73) {
LAB_00625038:
    uVar9 = 1;
  }
  else {
    if (bVar1 < 0x74) {
      if (bVar1 == 0x70) {
        uVar9 = 2;
        goto LAB_006250e4;
      }
    }
    else {
      if (bVar1 == 0x75) {
        uVar15 = uVar15 | 0x200;
        local_d50[uVar3 * 6] = 3;
        goto LAB_006250e6;
      }
      if (bVar1 == 0x78) {
        uVar15 = uVar15 | 0x800;
        local_d50[uVar3 * 6] = 3;
        goto LAB_006250e6;
      }
    }
LAB_006250de:
    uVar9 = 0;
  }
LAB_006250e4:
  local_d50[uVar3 * 6] = uVar9;
LAB_006250e6:
  local_d50[uVar3 * 6 + 1] = uVar15;
  local_d50[uVar3 * 6 + 2] = uVar17;
  local_d50[uVar3 * 6 + 3] = uVar22;
  uVar9 = uVar3;
  if ((int)(uVar15 << 0x11) < 0) {
    uVar9 = uVar17 - 1;
    local_d50[uVar3 * 6 + 2] = uVar9;
    local_d50[uVar9 * 6] = 9;
    local_d50[uVar9 * 6 + 1] = 0;
    local_d50[uVar9 * 6 + 2] = 0;
    local_d50[uVar9 * 6 + 3] = 0;
  }
  if ((int)(uVar15 << 0xf) < 0) {
    uVar22 = uVar22 - 1;
    local_d50[uVar9 * 6 + 3] = uVar22;
    local_d50[uVar22 * 6] = 9;
    local_d50[uVar22 * 6 + 1] = 0;
    local_d50[uVar22 * 6 + 2] = 0;
    local_d50[uVar22 * 6 + 3] = 0;
  }
  *local_f88 = local_f54 + 1;
  local_f88 = local_f88 + 1;
  goto LAB_00625138;
}

// ---- FUN_00627308  @ 0x627308
int FUN_00627308(char *param_1)

{
  char cVar1;
  bool bVar2;
  int iVar3;
  
  bVar2 = true;
  iVar3 = 0;
  do {
    while( true ) {
      cVar1 = *param_1;
      if (cVar1 == '\0') {
        return iVar3;
      }
      if (cVar1 == ' ') break;
      if (cVar1 == '?') {
        bVar2 = false;
      }
LAB_00627320:
      iVar3 = iVar3 + 1;
      param_1 = param_1 + 1;
    }
    if (!bVar2) goto LAB_00627320;
    iVar3 = iVar3 + 3;
    param_1 = param_1 + 1;
  } while( true );
}

// ---- FUN_0062732e  @ 0x62732e
void FUN_0062732e(char *param_1,char *param_2)

{
  char cVar1;
  bool bVar2;
  char *pcVar3;
  
  bVar2 = true;
  while( true ) {
    pcVar3 = param_2 + 1;
    cVar1 = *param_2;
    if (cVar1 == '\0') break;
    param_2 = pcVar3;
    if (cVar1 == ' ') {
      if (bVar2) {
        *param_1 = '%';
        param_1[1] = '2';
        param_1[2] = '0';
        param_1 = param_1 + 3;
      }
      else {
        *param_1 = '+';
        param_1 = param_1 + 1;
      }
    }
    else {
      if (cVar1 == '?') {
        bVar2 = false;
      }
      *param_1 = cVar1;
      param_1 = param_1 + 1;
    }
  }
  *param_1 = '\0';
  return;
}

// ---- FUN_0062873c  @ 0x62873c
uint FUN_0062873c(int param_1)

{
  bool bVar1;
  int *piVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  char *pcVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  bool bVar15;
  char local_32;
  char local_31;
  int *local_30;
  int local_2c [2];
  
  local_30 = (int *)0x0;
  local_2c[0] = 0;
  *(undefined4 *)(param_1 + 0x4f0) = 1;
  uVar3 = Curl_pretransfer();
  if (uVar3 == 0) {
    while( true ) {
      local_31 = '\x01';
      Curl_pgrsTime(param_1,7);
      uVar3 = Curl_connect(param_1,&local_30,&local_32,&local_31);
      if (uVar3 != 0) break;
      if (local_32 != '\0') {
        Curl_disconnect(local_30,0);
        uVar3 = 6;
        local_30 = (int *)0x0;
        break;
      }
      if (*(char *)(param_1 + 0x2d9) != '\0') {
        *(undefined1 *)(local_30 + 0x6e) = 0;
LAB_006287e4:
        uVar3 = Curl_done(&local_30,0,0);
        break;
      }
      uVar3 = Curl_do(&local_30,&local_32);
      piVar2 = local_30;
      if (uVar3 == 0) {
        iVar11 = *local_30;
        if ((*(char *)(iVar11 + 0x3a0) != '\0') &&
           (*(int *)(iVar11 + 0x8628) == 4 || *(int *)(iVar11 + 0x8628) == 6)) {
          *(undefined1 *)(local_30 + 0x6e) = 0;
          goto LAB_006287e4;
        }
        uVar5 = 0;
        local_31 = '\0';
        if ((local_30[0x7c] != -1) || (local_30[0x7d] != -1)) {
          if (*(char *)(iVar11 + 0x10e) == '\0') {
            uVar5 = 0;
            if (*(char *)(iVar11 + 0x2b7) != '\0') goto LAB_00628a00;
            bVar1 = true;
          }
          else {
            bVar1 = true;
          }
LAB_006289f0:
          do {
            if (local_31 != '\0') {
              uVar5 = 0;
              goto LAB_00628a00;
            }
            iVar13 = piVar2[0x7c];
            iVar14 = piVar2[0x7d];
            uVar3 = piVar2[0x107] & 3;
            if (piVar2[0x107] == 0) {
              uVar3 = *(uint *)(iVar11 + 0xf4);
            }
            if ((uVar3 & 2) == 0) {
LAB_0062887e:
              if (*(char *)(iVar11 + 0x2b9) == '\0') {
LAB_006288ca:
                iVar7 = 1000;
              }
              else {
                uVar5 = *(uint *)(iVar11 + 0x1e0);
                iVar14 = *(int *)(iVar11 + 0x1e4);
                if (iVar14 == 0 && uVar5 == 0) goto LAB_006288ca;
                uVar10 = *(uint *)(iVar11 + 0x438);
                iVar7 = *(int *)(iVar11 + 0x43c);
                if ((int)((iVar14 - iVar7) - (uint)(uVar5 < uVar10)) < 0 ==
                    (SBORROW4(iVar14,iVar7) != SBORROW4(iVar14 - iVar7,(uint)(uVar5 < uVar10))))
                goto LAB_006288ca;
                iVar8 = *(int *)(iVar11 + 0x278);
                if (iVar8 == 0) {
                  iVar8 = 0x4000;
                }
                iVar7 = Curl_sleep_time(uVar5,iVar14,uVar10,iVar7,iVar8);
                if (999 < iVar7) {
                  iVar7 = 1000;
                }
              }
              if ((uVar3 & 2) != 0) {
                *(uint *)(iVar11 + 0xf4) = *(uint *)(iVar11 + 0xf4) | 8;
              }
              iVar14 = -1;
            }
            else {
              uVar5 = *(uint *)(iVar11 + 0x1e0);
              iVar7 = *(int *)(iVar11 + 0x1e4);
              if ((iVar7 != 0 || uVar5 != 0) &&
                 (iVar8 = *(int *)(iVar11 + 0x43c), bVar15 = *(uint *)(iVar11 + 0x438) < uVar5,
                 (int)((iVar8 - iVar7) - (uint)bVar15) < 0 ==
                 (SBORROW4(iVar8,iVar7) != SBORROW4(iVar8 - iVar7,(uint)bVar15))))
              goto LAB_0062887e;
              iVar7 = 1000;
              *(uint *)(iVar11 + 0xf4) = *(uint *)(iVar11 + 0xf4) & 0xfffffff7;
            }
            if ((uVar3 & 1) == 0) {
LAB_00628914:
              if (*(char *)(iVar11 + 0x2b9) == '\0') {
                uVar5 = *(uint *)(iVar11 + 0x1e8);
                iVar13 = *(int *)(iVar11 + 0x1ec);
                if (iVar13 != 0 || uVar5 != 0) {
                  uVar10 = *(uint *)(iVar11 + 0x430);
                  iVar8 = *(int *)(iVar11 + 0x434);
                  if ((int)((iVar13 - iVar8) - (uint)(uVar5 < uVar10)) < 0 !=
                      (SBORROW4(iVar13,iVar8) != SBORROW4(iVar13 - iVar8,(uint)(uVar5 < uVar10)))) {
                    iVar9 = *(int *)(iVar11 + 0x278);
                    if (iVar9 == 0) {
                      iVar9 = 0x4000;
                    }
                    iVar13 = Curl_sleep_time(uVar5,iVar13,uVar10,iVar8,iVar9);
                    if (iVar13 <= iVar7) {
                      iVar7 = iVar13;
                    }
                  }
                }
              }
              if ((uVar3 & 1) != 0) {
                *(uint *)(iVar11 + 0xf4) = *(uint *)(iVar11 + 0xf4) | 4;
              }
              iVar13 = -1;
            }
            else {
              uVar5 = *(uint *)(iVar11 + 0x1e8);
              iVar8 = *(int *)(iVar11 + 0x1ec);
              if ((uVar5 != 0 || iVar8 != 0) &&
                 (iVar9 = *(int *)(iVar11 + 0x434), bVar15 = *(uint *)(iVar11 + 0x430) < uVar5,
                 (int)((iVar9 - iVar8) - (uint)bVar15) < 0 ==
                 (SBORROW4(iVar9,iVar8) != SBORROW4(iVar9 - iVar8,(uint)bVar15))))
              goto LAB_00628914;
              *(uint *)(iVar11 + 0xf4) = *(uint *)(iVar11 + 0xf4) & 0xfffffffb;
            }
            if ((*(uint *)(iVar11 + 0xf4) & 0x10) != 0) {
              iVar13 = -1;
            }
            if ((*(uint *)(iVar11 + 0xf4) & 0x20) != 0) {
              iVar14 = -1;
            }
            if ((bVar1) && (iVar14 != -1 || iVar13 != -1)) {
              iVar7 = 0;
            }
            else {
              iVar8 = Curl_timeleft(iVar11,iVar11 + 0x58,0);
              if (iVar8 < 0) {
                uVar5 = 0x1c;
                goto LAB_00628a00;
              }
              if ((iVar8 != 0) && (iVar8 <= iVar7)) {
                iVar7 = iVar8;
              }
            }
            iVar13 = Curl_socket_check(iVar13,0xffffffff,iVar14,iVar7);
            if (iVar13 != -1) {
              uVar5 = Curl_readwrite(piVar2,&local_31);
              if (uVar5 != 0) goto LAB_00628a00;
              bVar1 = false;
              goto LAB_006289f0;
            }
            piVar4 = (int *)__errno();
          } while (*piVar4 == 4);
          uVar5 = 0x38;
        }
LAB_00628a00:
        uVar10 = 1 - uVar5;
        if (1 < uVar5) {
          uVar10 = 0;
        }
        uVar12 = uVar10;
        if (uVar5 == 0x38) {
          uVar12 = uVar10 | 1;
        }
        iVar11 = 0;
        uVar3 = uVar5;
        if (uVar12 == 0) {
LAB_00628a68:
          *(undefined1 *)(local_30 + 0x6e) = 1;
          if (local_30[0x4d] != -1) {
            Curl_closesocket();
            local_30[0x4d] = -1;
          }
        }
        else {
          uVar3 = Curl_retry_request(local_30,local_2c);
          if (uVar3 != 0) {
            iVar11 = 0;
            goto LAB_00628a68;
          }
          iVar11 = 2;
          if (local_2c[0] == 0) {
            if (uVar10 == 0) {
              iVar11 = 0;
              uVar3 = uVar5;
            }
            else {
              if (*(int *)(param_1 + 0x100) == 0) {
                if (*(int *)(param_1 + 0xfc) == 0) {
                  iVar11 = 0;
                  goto LAB_00628b3c;
                }
                iVar11 = 1;
                local_2c[0] = (*Curl_cstrdup)();
              }
              else {
                iVar11 = 3;
                local_2c[0] = (*Curl_cstrdup)();
              }
              if (local_2c[0] != 0) goto LAB_00628b3c;
              uVar3 = 0x1b;
            }
            goto LAB_00628a68;
          }
LAB_00628b3c:
          uVar3 = 0;
        }
        uVar5 = Curl_done(&local_30,uVar3,0);
        if (uVar3 == 0) {
          uVar3 = uVar5;
        }
      }
      else {
        iVar11 = 0;
        if (local_30 != (int *)0x0) {
          Curl_done(&local_30,uVar3,0);
          iVar11 = 0;
        }
      }
      uVar5 = 1 - uVar3;
      if (1 < uVar3) {
        uVar5 = 0;
      }
      if (iVar11 == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = uVar5 & 1;
      }
      if (((uVar5 == 0) || (uVar3 = Curl_follow(param_1,local_2c[0],iVar11), uVar3 != 0)) ||
         (local_2c[0] = 0, iVar11 == 1)) break;
    }
    if (local_2c[0] != 0) {
      (*Curl_cfree)();
    }
    if ((uVar3 != 0) && (*(char *)(param_1 + 0x8538) == '\0')) {
      uVar5 = curl_easy_strerror(uVar3);
      if (uVar5 == 0) {
        pcVar6 = "unspecified error %d";
        uVar5 = uVar3;
      }
      else {
        pcVar6 = "%s";
      }
      Curl_failf(param_1,pcVar6,uVar5);
    }
    uVar5 = Curl_posttransfer(param_1);
    uVar10 = 1 - uVar3;
    if (1 < uVar3) {
      uVar10 = 0;
    }
    if (uVar5 == 0) {
      uVar10 = 0;
    }
    else {
      uVar10 = uVar10 & 1;
    }
    if (uVar10 != 0) {
      uVar3 = uVar5;
    }
  }
  return uVar3;
}

// ---- FUN_006292d0  @ 0x6292d0
void FUN_006292d0(byte *param_1,byte *param_2)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  byte *pbVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  undefined1 uVar10;
  bool bVar11;
  int local_154;
  byte abStack_148 [11];
  char acStack_13d [46];
  undefined1 local_10f;
  undefined1 local_e1;
  undefined1 local_df;
  char local_3c;
  char local_3b;
  char local_3a;
  char local_39;
  char local_38;
  char local_37;
  char local_36;
  char local_35;
  char local_34;
  char local_33;
  char local_32;
  int local_2c;
  
  local_2c = __stack_chk_guard;
  memset(acStack_13d + 1,0,0x10f);
LAB_00629310:
  do {
    while (bVar1 = *param_1, bVar1 == 0x2a) {
      for (; param_1[1] == 0x2a; param_1 = param_1 + 1) {
      }
      if ((*param_2 == 0) && (uVar10 = 0, param_1[1] == 0)) goto LAB_00629806;
      iVar2 = FUN_006292d0(param_1 + 1,param_2);
      uVar10 = 0;
      if (iVar2 == 0) goto LAB_00629806;
      if (*param_2 == 0) goto LAB_00629804;
LAB_00629340:
      param_2 = param_2 + 1;
    }
    if (bVar1 == 0x3f) {
      if ((*(byte *)(_ctype_ + (uint)*param_2 + 1) & 0x97) == 0) {
        if (*param_2 == 0) {
          uVar10 = 1;
        }
        else {
          uVar10 = 2;
        }
        goto LAB_00629806;
      }
      param_2 = param_2 + 1;
      param_1 = param_1 + 1;
      goto LAB_00629310;
    }
    if (bVar1 == 0) {
      uVar10 = *param_2 != 0;
      goto LAB_00629806;
    }
    if (bVar1 != 0x5c) {
      if (bVar1 == 0x5b) {
        iVar4 = 0;
        param_1 = param_1 + 1;
        local_154 = 0;
        uVar7 = 0;
        iVar2 = 0;
LAB_006293ae:
        uVar5 = (uint)*param_1;
switchD_006293b6_switchD:
        switch(iVar2) {
        case 0:
          bVar1 = *(byte *)(_ctype_ + uVar5 + 1);
          uVar8 = bVar1 & 7;
          if ((bVar1 & 7) == 0) {
            if (uVar5 == 0x5d) {
              if (iVar4 != 0) goto LAB_006296de;
              local_df = 1;
              param_1 = param_1 + 1;
              iVar4 = 1;
              iVar2 = 3;
            }
            else {
              if (uVar5 == 0x5b) {
                if (param_1[1] != 0x3a) {
                  local_e1 = 1;
                  goto LAB_00629540;
                }
                memset(abStack_148,uVar8,10);
                iVar4 = _ctype_;
                pbVar6 = param_1 + 2;
                uVar5 = uVar8;
                do {
                  param_1 = pbVar6 + 1;
                  uVar3 = (uint)*pbVar6;
                  if (uVar8 == 10) goto LAB_00629800;
                  if (uVar5 == 1) {
                    uVar9 = 1;
                    if (uVar3 != 0x5d) goto LAB_00629800;
                  }
                  else {
                    bVar1 = *(byte *)(iVar4 + uVar3 + 1);
                    if (((bVar1 & 3) == 0) || (-1 < (int)((uint)bVar1 << 0x1e))) {
                      if (uVar3 != 0x3a) goto LAB_00629800;
                      uVar9 = 0;
                      uVar5 = 1;
                    }
                    else {
                      abStack_148[uVar8] = *pbVar6;
                      uVar9 = 0;
                      uVar5 = uVar9;
                    }
                  }
                  uVar8 = uVar8 + 1;
                  pbVar6 = param_1;
                } while (uVar9 == 0);
                iVar4 = strcmp((char *)abStack_148,"digit");
                if (iVar4 == 0) {
                  local_3a = '\x01';
                }
                else {
                  iVar4 = strcmp((char *)abStack_148,"alnum");
                  if (iVar4 == 0) {
                    local_3b = '\x01';
                  }
                  else {
                    iVar4 = strcmp((char *)abStack_148,"alpha");
                    if (iVar4 == 0) {
                      local_38 = '\x01';
                    }
                    else {
                      iVar4 = strcmp((char *)abStack_148,"xdigit");
                      if (iVar4 == 0) {
                        local_39 = '\x01';
                      }
                      else {
                        iVar4 = strcmp((char *)abStack_148,"print");
                        if (iVar4 == 0) {
                          local_37 = '\x01';
                        }
                        else {
                          iVar4 = strcmp((char *)abStack_148,"graph");
                          if (iVar4 == 0) {
                            local_34 = '\x01';
                          }
                          else {
                            iVar4 = strcmp((char *)abStack_148,"space");
                            if (iVar4 == 0) {
                              local_33 = '\x01';
                            }
                            else {
                              iVar4 = strcmp((char *)abStack_148,"blank");
                              if (iVar4 == 0) {
                                local_36 = '\x01';
                              }
                              else {
                                iVar4 = strcmp((char *)abStack_148,"upper");
                                if (iVar4 == 0) {
                                  local_32 = '\x01';
                                }
                                else {
                                  iVar4 = strcmp((char *)abStack_148,"lower");
                                  if (iVar4 != 0) goto LAB_00629800;
                                  local_35 = '\x01';
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              else {
                if (uVar5 != 0x2a && uVar5 != 0x3f) {
                  if (uVar5 == 0x21 || uVar5 == 0x5e) {
                    if (iVar4 != 0) goto LAB_006295c2;
                    if (local_3c == '\0') {
                      local_3c = '\x01';
                    }
                    else {
                      acStack_13d[uVar5 + 1] = '\x01';
                      iVar4 = 1;
                    }
                    goto LAB_006295c4;
                  }
                  if (uVar5 == 0x5c) {
                    uVar5 = (uint)param_1[1];
                    if ((*(byte *)(_ctype_ + uVar5 + 1) & 0x97) != 0) {
                      param_1 = param_1 + 2;
                      acStack_13d[uVar5 + 1] = '\x01';
                      goto LAB_0062958e;
                    }
                    goto LAB_00629800;
                  }
                  if (uVar5 == 0) goto LAB_00629800;
                }
                acStack_13d[uVar5 + 1] = '\x01';
LAB_00629540:
                param_1 = param_1 + 1;
              }
              iVar4 = 1;
            }
          }
          else {
            param_1 = param_1 + 1;
            acStack_13d[uVar5 + 1] = '\x01';
LAB_0062958e:
            iVar4 = 1;
            uVar7 = uVar5;
            iVar2 = iVar4;
          }
          goto LAB_006293ae;
        case 1:
          if (uVar5 == 0x2d) {
            local_10f = 1;
            param_1 = param_1 + 1;
            iVar2 = 2;
            local_154 = 0x2d;
            goto LAB_006293ae;
          }
          if (uVar5 == 0x5b) break;
          if ((*(byte *)(_ctype_ + uVar5 + 1) & 7) != 0) {
LAB_006295c2:
            acStack_13d[uVar5 + 1] = '\x01';
LAB_006295c4:
            param_1 = param_1 + 1;
            goto LAB_006293ae;
          }
          if (uVar5 == 0x5c) {
            pbVar6 = param_1 + 1;
            if ((*(byte *)(_ctype_ + (uint)*pbVar6 + 1) & 0x97) == 0) goto LAB_00629800;
            param_1 = param_1 + 2;
            acStack_13d[*pbVar6 + 1] = '\x01';
            goto LAB_006293ae;
          }
          if (uVar5 != 0x5d) goto LAB_00629800;
LAB_006296de:
          uVar7 = (uint)*param_2;
          if (acStack_13d[uVar7 + 1] == '\0') {
            if (local_3b == '\0') {
              if (local_38 == '\0') {
                if (local_3a == '\0') {
                  if (local_39 == '\0') {
                    if (local_37 == '\0') {
                      if (local_33 == '\0') {
                        if (local_32 == '\0') {
                          if (local_35 == '\0') {
                            if (local_36 == '\0') {
                              uVar5 = 0;
                              if (local_34 != '\0') {
                                uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 0x17;
                              }
                            }
                            else {
                              uVar5 = (uint)(uVar7 == 0x20);
                              if (uVar7 == 9) {
                                uVar5 = 1;
                              }
                            }
                          }
                          else {
                            uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 2;
                          }
                        }
                        else {
                          uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 1;
                        }
                      }
                      else {
                        uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 8;
                      }
                    }
                    else {
                      uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 0x97;
                    }
                  }
                  else {
                    uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 0x44;
                  }
                }
                else {
                  uVar5 = (uint)(uVar7 - 0x30 < 10);
                }
              }
              else {
                uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 3;
              }
            }
            else {
              uVar5 = *(byte *)(_ctype_ + uVar7 + 1) & 7;
            }
          }
          else {
            uVar5 = 1;
          }
          if ((local_3c != '\0') && (bVar11 = 1 < uVar5, uVar5 = 1 - uVar5, bVar11)) {
            uVar5 = 0;
          }
          if (uVar5 != 0) goto code_r0x006297d8;
          goto LAB_00629804;
        case 2:
          if (uVar5 == 0x5c) {
            uVar5 = (uint)param_1[1];
            if ((*(byte *)(_ctype_ + uVar5 + 1) & 0x97) == 0) goto LAB_00629800;
            param_1 = param_1 + 1;
          }
          if (uVar5 == 0x5d) goto LAB_006296de;
          if (uVar5 == 0x5c) {
            uVar5 = (uint)param_1[1];
            if ((*(byte *)(_ctype_ + uVar5 + 1) & 0x97) == 0) goto LAB_00629800;
            param_1 = param_1 + 2;
            iVar2 = 0;
            acStack_13d[uVar5 + 1] = '\x01';
          }
          if (uVar5 < uVar7) goto LAB_006293ae;
          bVar1 = *(byte *)(_ctype_ + uVar5 + 1);
          if (((((bVar1 & 2) == 0) || ((*(byte *)(_ctype_ + uVar7 + 1) & 2) == 0)) &&
              ((9 < uVar5 - 0x30 || (9 < uVar7 - 0x30)))) &&
             ((-1 < (int)((uint)bVar1 << 0x1f) ||
              (-1 < (int)((uint)*(byte *)(_ctype_ + uVar7 + 1) << 0x1f))))) goto LAB_00629800;
          acStack_13d[local_154 + 1] = '\0';
          uVar8 = uVar7;
          while( true ) {
            uVar7 = uVar8 + 2;
            uVar8 = uVar8 + 1 & 0xff;
            uVar7 = uVar7 & 0xff;
            if (uVar5 < uVar8) break;
            acStack_13d[uVar7] = '\x01';
          }
          param_1 = param_1 + 1;
          break;
        case 3:
          if (uVar5 == 0x5b) goto code_r0x006296aa;
          if (uVar5 != 0x5d) {
            if ((uVar5 != 0) && ((*(byte *)(_ctype_ + uVar5 + 1) & 0x97) != 0)) goto LAB_006296d6;
            goto LAB_00629800;
          }
          goto LAB_006296de;
        case 4:
          if (uVar5 == 0x5d) goto LAB_006296de;
LAB_006296d6:
          param_1 = param_1 + 1;
          acStack_13d[uVar5 + 1] = '\x01';
          break;
        default:
          goto switchD_006293b6_switchD;
        }
        iVar2 = 0;
        goto LAB_006293ae;
      }
      if (*param_2 == bVar1) {
        param_1 = param_1 + 1;
        goto LAB_00629340;
      }
LAB_00629804:
      uVar10 = 1;
LAB_00629806:
      if (local_2c == __stack_chk_guard) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar10);
    }
    if ((*(byte *)(_ctype_ + (uint)param_1[1] + 1) & 0x97) == 0) {
LAB_00629800:
      uVar10 = 2;
      goto LAB_00629806;
    }
    if ((uint)*param_2 != (uint)param_1[1]) goto LAB_00629804;
    param_1 = param_1 + 2;
    param_2 = param_2 + 1;
  } while( true );
code_r0x006296aa:
  local_e1 = 1;
  param_1 = param_1 + 1;
  iVar2 = 4;
  goto LAB_006293ae;
code_r0x006297d8:
  param_1 = param_1 + 1;
  param_2 = param_2 + 1;
  memset(acStack_13d + 1,0,0x10f);
  goto LAB_00629310;
}

// ---- FUN_006298bc  @ 0x6298bc
void FUN_006298bc(int *param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = **(int **)(*param_1 + 0x8638);
  if (*(int *)(iVar1 + 0x10) != 0) {
    Curl_fileinfo_dtor(0);
  }
  *(undefined4 *)(iVar1 + 0xc) = param_2;
  *(undefined4 *)(iVar1 + 0x10) = 0;
  return;
}

// ---- FUN_006298dc  @ 0x6298dc
undefined4 FUN_006298dc(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  int *piVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  
  iVar2 = *param_1;
  iVar4 = param_2[0xf];
  piVar6 = *(int **)(iVar2 + 0x8638);
  iVar7 = *(int *)(iVar2 + 0x8634);
  iVar8 = *piVar6;
  iVar3 = iVar4 + *(int *)(iVar8 + 0x1c);
  *param_2 = iVar3;
  iVar9 = *(int *)(iVar8 + 0x24);
  if (iVar9 != 0) {
    iVar9 = iVar9 + iVar4;
  }
  param_2[0xc] = iVar9;
  iVar9 = *(int *)(iVar8 + 0x2c);
  if (iVar9 != 0) {
    iVar9 = iVar9 + iVar4;
  }
  param_2[10] = iVar9;
  iVar9 = *(int *)(iVar8 + 0x30);
  if (iVar9 != 0) {
    iVar9 = iVar9 + iVar4;
  }
  param_2[0xd] = iVar9;
  param_2[9] = *(int *)(iVar8 + 0x28) + iVar4;
  iVar8 = *(int *)(iVar8 + 0x20);
  if (iVar8 != 0) {
    iVar8 = iVar4 + iVar8;
  }
  param_2[0xb] = iVar8;
  pcVar5 = *(code **)(*param_1 + 0x3ac);
  if (pcVar5 == (code *)0x0) {
    pcVar5 = (code *)0x629855;
  }
  iVar2 = (*pcVar5)(*(undefined4 *)(*param_1 + 0x3b0),*(undefined4 *)(iVar2 + 0x8630),iVar3,pcVar5,
                    param_4);
  if ((iVar2 == 0) &&
     (((param_2[1] != 2 || ((char *)param_2[0xd] == (char *)0x0)) ||
      (pcVar1 = strstr((char *)param_2[0xd]," -> "), pcVar1 == (char *)0x0)))) {
    iVar2 = Curl_llist_insert_next(iVar7,*(undefined4 *)(iVar7 + 4),param_2);
    if (iVar2 == 0) {
      Curl_fileinfo_dtor(0,param_2);
      *(undefined4 *)(*piVar6 + 0x10) = 0;
      return 0x1b;
    }
  }
  else {
    Curl_fileinfo_dtor(0,param_2);
  }
  *(undefined4 *)(*piVar6 + 0x10) = 0;
  return 0;
}

// ---- FUN_0062a6a8  @ 0x62a6a8
undefined4 FUN_0062a6a8(short *param_1,char *param_2,uint *param_3,undefined4 param_4)

{
  char *pcVar1;
  
  if (*param_1 == 1) {
    curl_msnprintf(param_2,0x2e,&DAT_0080c64d,param_1 + 1,param_4);
    *param_3 = 0;
    return 1;
  }
  if ((*param_1 == 2) && (pcVar1 = inet_ntop(2,param_1 + 2,param_2,0x2e), pcVar1 != (char *)0x0)) {
    *param_3 = ((ushort)param_1[1] & 0xff) << 8 | (uint)((ushort)param_1[1] >> 8);
    return 1;
  }
  *param_2 = '\0';
  *param_3 = 0;
  return 0;
}

// ---- FUN_0062a6f8  @ 0x62a6f8
undefined4 FUN_0062a6f8(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  
  while( true ) {
    iVar2 = param_3;
    if (999 < param_3) {
      iVar2 = 1000;
    }
    uVar1 = Curl_socket_check(0xffffffff,0xffffffff,param_2,iVar2,param_4);
    iVar2 = Curl_pgrsUpdate(param_1);
    if (iVar2 != 0) {
      return 3;
    }
    if (uVar1 == 0xffffffff) {
      return 0xffffffff;
    }
    if (uVar1 != 0) break;
    param_3 = param_3 + -1000;
    if (param_3 < 1) {
      return 1;
    }
  }
  if ((uVar1 & 4) == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = 2;
  }
  return uVar3;
}

// ---- FUN_0062a74a  @ 0x62a74a
uint FUN_0062a74a(int param_1,uint *param_2)

{
  int iVar1;
  uint *puVar2;
  uint uVar3;
  uint local_10;
  socklen_t local_c;
  
  local_10 = 0;
  local_c = 4;
  iVar1 = getsockopt(param_1,1,4,&local_10,&local_c);
  if (iVar1 != 0) {
    puVar2 = (uint *)__errno();
    local_10 = *puVar2;
  }
  uVar3 = 1 - local_10;
  if (1 < local_10) {
    uVar3 = 0;
  }
  if (local_10 == 0x6a) {
    uVar3 = uVar3 | 1;
  }
  if (param_2 != (uint *)0x0) {
    *param_2 = local_10;
  }
  return uVar3;
}

// ---- FUN_0062aa30  @ 0x62aa30
void FUN_0062aa30(int *param_1,undefined4 param_2,undefined4 param_3,int *param_4,
                 undefined1 *param_5)

{
  ushort uVar1;
  bool bVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  size_t sVar7;
  int iVar8;
  int *piVar9;
  char *pcVar10;
  uint uVar11;
  undefined4 uVar12;
  int iVar13;
  int iVar14;
  socklen_t __len;
  uint uVar15;
  undefined4 uVar16;
  int local_2f0;
  int local_2d8;
  int iStack_2d4;
  int local_2cc;
  int local_2c8;
  int *local_2c4;
  socklen_t local_2c0;
  sockaddr local_2bc [8];
  sockaddr asStack_23c [8];
  int local_1bc [3];
  socklen_t local_1b0;
  sockaddr asStack_1ac [8];
  char acStack_12c [256];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  iVar13 = *param_1;
  *param_4 = -1;
  local_2cc = 0;
  *param_5 = 0;
  iVar3 = Curl_socket(param_1,param_2,local_1bc,&local_2c8);
  if (iVar3 != 0) {
    uVar16 = 0;
    goto LAB_0062aef4;
  }
  iVar3 = FUN_0062a6a8(asStack_1ac,(void *)((int)param_1 + 0x9e),param_1 + 0x33);
  uVar16 = 0;
  if (iVar3 == 0) {
    piVar4 = (int *)__errno();
    iVar3 = *piVar4;
    local_2cc = iVar3;
    uVar5 = Curl_strerror(param_1,iVar3);
    Curl_failf(iVar13,"sa_addr inet_ntop() failed with errno %d: %s",iVar3,uVar5);
LAB_0062aee8:
    Curl_closesocket(param_1,local_2c8);
  }
  else {
    piVar4 = param_1 + 0x10;
    memcpy(piVar4,(void *)((int)param_1 + 0x9e),0x2e);
    Curl_infof(iVar13,"  Trying %s...\n",piVar4);
    Curl_persistconninfo(param_1);
    if (*(char *)(iVar13 + 0x2d6) != '\0') {
      iVar14 = *param_1;
      local_2c0 = (socklen_t)*(byte *)(iVar14 + 0x2d6);
      iVar3 = setsockopt(local_2c8,6,1,&local_2c0,4);
      if (iVar3 < 0) {
        puVar6 = (undefined4 *)__errno();
        uVar5 = Curl_strerror(param_1,*puVar6);
        Curl_infof(iVar14,"Could not set TCP_NODELAY: %s\n",uVar5);
      }
      else {
        Curl_infof(iVar14,"TCP_NODELAY set\n");
      }
    }
    iVar3 = local_2c8;
    if (*(char *)(iVar13 + 0x3b8) != '\0') {
      local_2c0 = 1;
      iVar14 = setsockopt(local_2c8,1,9,&local_2c0,4);
      if (iVar14 < 0) {
        pcVar10 = "Failed to set SO_KEEPALIVE on fd %d\n";
      }
      else {
        local_2c0 = curlx_sltosi(*(undefined4 *)(iVar13 + 0x3bc));
        iVar14 = setsockopt(iVar3,6,4,&local_2c0,4);
        if (iVar14 < 0) {
          Curl_infof(iVar13,"Failed to set TCP_KEEPIDLE on fd %d\n",iVar3);
        }
        local_2c0 = curlx_sltosi(*(undefined4 *)(iVar13 + 0x3c0));
        iVar14 = setsockopt(iVar3,6,5,&local_2c0,4);
        if (-1 < iVar14) goto LAB_0062ab8e;
        pcVar10 = "Failed to set TCP_KEEPINTVL on fd %d\n";
      }
      Curl_infof(iVar13,pcVar10,iVar3);
    }
LAB_0062ab8e:
    if (*(code **)(iVar13 + 0x18c) != (code *)0x0) {
      local_2cc = (**(code **)(iVar13 + 0x18c))(*(undefined4 *)(iVar13 + 400),local_2c8,0);
      if (local_2cc == 2) {
        bVar2 = true;
        goto LAB_0062abb4;
      }
      if (local_2cc == 0) {
        bVar2 = false;
        goto LAB_0062abb4;
      }
LAB_0062ae58:
      Curl_closesocket(param_1,local_2c8);
      uVar16 = 0x2a;
      goto LAB_0062aef4;
    }
    bVar2 = false;
LAB_0062abb4:
    iVar3 = local_2c8;
    iVar14 = *param_1;
    acStack_12c[0] = '\0';
    acStack_12c[1] = '\0';
    acStack_12c[2] = '\0';
    acStack_12c[3] = '\0';
    local_2f0 = *(int *)(iVar14 + 0x164);
    pcVar10 = *(char **)(iVar14 + 0x304);
    local_2c4 = (int *)0x0;
    uVar1 = *(ushort *)(iVar14 + 0x160);
    uVar15 = (uint)uVar1;
    memset(acStack_12c + 4,0,0xfc);
    uVar11 = 1 - (int)pcVar10;
    if ((char *)0x1 < pcVar10) {
      uVar11 = 0;
    }
    if (uVar15 == 0) {
      uVar11 = uVar11 & 1;
    }
    else {
      uVar11 = 0;
    }
    if (uVar11 == 0) {
      memset(local_2bc,0,0x80);
      if ((pcVar10 == (char *)0x0) || (sVar7 = strlen(pcVar10), 0xfe < sVar7)) {
        if (local_1bc[0] == 2) {
LAB_0062ad1e:
          local_2bc[0].sa_family = (sa_family_t)local_1bc[0];
          local_2bc[0].sa_data._0_2_ = (ushort)((uVar15 & 0xff) << 8) | uVar1 >> 8;
          __len = 0x10;
        }
        else {
LAB_0062ad2e:
          __len = 0;
        }
        while (iVar8 = bind(iVar3,local_2bc,__len), iVar8 < 0) {
          local_2f0 = local_2f0 + -1;
          if (local_2f0 < 1) {
            puVar6 = (undefined4 *)__errno();
            uVar5 = *puVar6;
            *(undefined4 *)(iVar14 + 0x853c) = uVar5;
            uVar16 = Curl_strerror(param_1,uVar5);
            pcVar10 = "bind failed with errno %d: %s";
            goto LAB_0062adda;
          }
          uVar11 = uVar15 + 1;
          Curl_infof(iVar14,"Bind to local port %hu failed, trying next\n",uVar15);
          uVar15 = uVar11 & 0xffff;
          if (local_2bc[0].sa_family == 2) {
            local_2bc[0].sa_data._0_2_ = (ushort)((uVar11 & 0xff) << 8) | (ushort)(uVar15 >> 8);
          }
        }
        local_2c0 = 0x80;
        memset(asStack_23c,0,0x80);
        iVar3 = getsockname(iVar3,asStack_23c,&local_2c0);
        if (-1 < iVar3) {
          Curl_infof(iVar14,"Local port: %hu\n",uVar15);
          *(undefined1 *)((int)param_1 + 0x1cf) = 1;
          goto LAB_0062ade4;
        }
        puVar6 = (undefined4 *)__errno();
        uVar5 = *puVar6;
        *(undefined4 *)(iVar14 + 0x853c) = uVar5;
        uVar16 = Curl_strerror(param_1,uVar5);
        pcVar10 = "getsockname() failed with errno %d: %s";
LAB_0062adda:
        Curl_failf(iVar14,pcVar10,uVar5,uVar16);
      }
      else {
        iVar8 = strncmp("if!",pcVar10,3);
        if (iVar8 == 0) {
          pcVar10 = pcVar10 + 3;
LAB_0062ac38:
          iVar8 = Curl_if2ip(local_1bc[0],pcVar10,acStack_12c,0x100);
          if (iVar8 != 0) {
            Curl_infof(iVar14,"Local Interface %s is ip %s using address family %i\n",pcVar10,
                       acStack_12c,local_1bc[0]);
            sVar7 = strlen(pcVar10);
            iVar8 = setsockopt(iVar3,1,0x19,pcVar10,sVar7 + 1);
            if (iVar8 != 0) {
              puVar6 = (undefined4 *)__errno();
              uVar12 = *puVar6;
              uVar5 = Curl_strerror(param_1,uVar12);
              Curl_infof(iVar14,
                         "SO_BINDTODEVICE %s failed with errno %d: %s; will do regular bind\n",
                         pcVar10,uVar12,uVar5);
            }
LAB_0062acf4:
            if ((local_1bc[0] == 2) &&
               (iVar8 = inet_pton(2,acStack_12c,local_2bc[0].sa_data + 2), 0 < iVar8))
            goto LAB_0062ad1e;
            goto LAB_0062ad2e;
          }
        }
        else {
          iVar8 = strncmp("host!",pcVar10,5);
          if (iVar8 == 0) {
            pcVar10 = pcVar10 + 5;
          }
          else {
            iVar8 = Curl_if_is_interface_name(pcVar10);
            if (iVar8 != 0) goto LAB_0062ac38;
          }
          iVar8 = param_1[0x7b];
          if (local_1bc[0] == 2) {
            param_1[0x7b] = 1;
          }
          Curl_resolv(param_1,pcVar10,0,&local_2c4);
          param_1[0x7b] = iVar8;
          if (local_2c4 != (int *)0x0) {
            Curl_printable_address(*local_2c4,acStack_12c,0x100);
            Curl_infof(iVar14,"Name \'%s\' family %i resolved to \'%s\' family %i\n",pcVar10,
                       local_1bc[0],acStack_12c,*(undefined4 *)(*local_2c4 + 4));
            Curl_resolv_unlock(iVar14,local_2c4);
            goto LAB_0062acf4;
          }
          Curl_failf(iVar14,"Couldn\'t bind to \'%s\'",pcVar10);
        }
      }
      Curl_closesocket(param_1,local_2c8);
      uVar16 = 0x2d;
      goto LAB_0062aef4;
    }
LAB_0062ade4:
    curlx_nonblock(local_2c8,1);
    if (bVar2) {
LAB_0062ae9c:
      *param_5 = 1;
      Curl_infof(iVar13,"connected\n");
      Curl_updateconninfo(param_1,local_2c8);
    }
    else {
      if (param_1[0x1d] != 1) {
        iVar3 = 0;
LAB_0062ae90:
        iVar14 = FUN_0062a74a(local_2c8,&local_2cc);
        if (iVar3 == 0) {
          if (iVar14 != 0) goto LAB_0062ae9c;
        }
        else if (iVar3 == 1) {
          Curl_infof(iVar13,"Timeout\n");
          goto LAB_0062aee8;
        }
        *(int *)(iVar13 + 0x853c) = local_2cc;
        uVar5 = Curl_strerror(param_1);
        Curl_infof(iVar13,&DAT_0080e5d2,uVar5);
        goto LAB_0062aee8;
      }
      iVar3 = connect(local_2c8,asStack_1ac,local_1b0);
      if (iVar3 == -1) {
        piVar9 = (int *)__errno();
        local_2cc = *piVar9;
      }
      curlx_tvnow(&local_2d8);
      param_1[0x75] = local_2d8;
      param_1[0x76] = iStack_2d4;
      if (1 < param_1[0x77]) {
        Curl_expire(iVar13,param_1[0x78]);
      }
      if (iVar3 == -1) {
        if ((local_2cc != 0xb) && (local_2cc != 0x73)) {
          uVar5 = Curl_strerror(param_1);
          Curl_failf(iVar13,"Failed to connect to %s: %s",piVar4,uVar5);
          *(int *)(iVar13 + 0x853c) = local_2cc;
          goto LAB_0062ae90;
        }
        iVar3 = FUN_0062a6f8(param_1,local_2c8,param_3);
        if (iVar3 == 3) goto LAB_0062ae58;
      }
      if ((iVar3 != 1) || (*(int *)(iVar13 + 0x4f0) != 2)) goto LAB_0062ae90;
    }
    *param_4 = local_2c8;
  }
LAB_0062aef4:
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar16);
  }
  return;
}

// ---- FUN_0062b3bc  @ 0x62b3bc
void FUN_0062b3bc(int param_1,int *param_2)

{
  if (param_2[1] != 0) {
    (*Curl_cfree)();
    param_2[1] = 0;
  }
  if (*param_2 != 0) {
    (**(code **)(param_1 + 0xc))();
    *param_2 = 0;
  }
  param_2[2] = 0;
  (*Curl_cfree)(param_2);
  return;
}

// ---- FUN_0062b7aa  @ 0x62b7aa
undefined4
FUN_0062b7aa(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 extraout_r1;
  
  __aeabi_idivmod(*param_1,param_3,param_3,param_4,param_4);
  return extraout_r1;
}

// ---- FUN_0062b7bc  @ 0x62b7bc
void FUN_0062b7bc(undefined4 param_1,undefined4 param_2)

{
  (*Curl_cfree)(param_2);
  return;
}

// ---- FUN_0062b7d0  @ 0x62b7d0
longlong FUN_0062b7d0(uint param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  
  puVar3 = *(undefined4 **)(param_4 + 0x85d4);
  puVar4 = (undefined4 *)*puVar3;
  iVar6 = param_3;
  while (puVar4 != (undefined4 *)0x0) {
    puVar5 = (undefined4 *)puVar4[2];
    iVar1 = curlx_tvdiff(*(undefined4 *)*puVar4,((undefined4 *)*puVar4)[1],param_1,param_2,param_1,
                         param_2,iVar6);
    if (0 < iVar1) break;
    Curl_llist_remove(puVar3,puVar4,0);
    puVar4 = puVar5;
  }
  if (puVar3[3] == 0) {
    *(undefined4 *)(param_4 + 0x85b4) = 0;
    *(undefined4 *)(param_4 + 0x85b8) = 0;
  }
  else {
    puVar4 = (undefined4 *)*puVar3;
    memcpy((undefined4 *)(param_4 + 0x85b4),(void *)*puVar4,8);
    Curl_llist_remove(puVar3,puVar4,0);
    uVar2 = Curl_splayinsert(*(undefined4 *)(param_4 + 0x85b4),*(undefined4 *)(param_4 + 0x85b8),
                             *(undefined4 *)(param_3 + 0x58),param_4 + 0x85bc);
    *(undefined4 *)(param_3 + 0x58) = uVar2;
  }
  return (ulonglong)param_1 << 0x20;
}

// ---- FUN_0062b858  @ 0x62b858
undefined4 FUN_0062b858(undefined4 *param_1,void *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 *__dest;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  
  __dest = (undefined4 *)(*Curl_cmalloc)(8);
  if (__dest != (undefined4 *)0x0) {
    memcpy(__dest,param_2,8);
    iVar2 = Curl_llist_count(param_1);
    puVar4 = (undefined4 *)0x0;
    if (iVar2 != 0) {
      puVar1 = (undefined4 *)*param_1;
      puVar4 = (undefined4 *)0x0;
      while ((puVar3 = puVar1, puVar3 != (undefined4 *)0x0 &&
             (iVar2 = curlx_tvdiff(*(undefined4 *)*puVar3,((undefined4 *)*puVar3)[1],*__dest,
                                   __dest[1],param_4), iVar2 < 1))) {
        puVar1 = (undefined4 *)puVar3[2];
        puVar4 = puVar3;
      }
    }
    iVar2 = Curl_llist_insert_next(param_1,puVar4,__dest);
    if (iVar2 != 0) {
      return 0;
    }
    (*Curl_cfree)(__dest);
  }
  return 3;
}

// ---- FUN_0062b8c8  @ 0x62b8c8
void FUN_0062b8c8(int param_1,int param_2)

{
  int iVar1;
  
  if ((*(int *)(param_1 + 0x10) != param_2) && (*(int *)(param_1 + 0x10) = param_2, param_2 == 0xf))
  {
    iVar1 = *(int *)(*(int *)(param_1 + 8) + 8);
    *(int *)(iVar1 + 0x44) = *(int *)(iVar1 + 0x44) + -1;
  }
  return;
}

// ---- FUN_0062b8e0  @ 0x62b8e0
void FUN_0062b8e0(int param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int local_20;
  int *local_1c;
  
  local_20 = param_1;
  local_1c = param_2;
  curlx_tvnow(&local_20);
  piVar1 = local_1c;
  iVar3 = local_20;
  iVar2 = Curl_splay(0,0,*(undefined4 *)(param_1 + 0x58));
  *(int *)(param_1 + 0x58) = iVar2;
  if ((*(int *)(iVar2 + 0xc) < iVar3) ||
     ((*(int *)(iVar2 + 0xc) <= iVar3 && (*(int *)(iVar2 + 0x10) <= (int)piVar1)))) {
    iVar3 = 0;
  }
  else {
    iVar2 = curlx_tvdiff(*(undefined4 *)(iVar2 + 0xc),*(undefined4 *)(iVar2 + 0x10),local_20,
                         local_1c);
    iVar3 = 1;
    *param_2 = iVar2;
    if (iVar2 != 0) {
      return;
    }
  }
  *param_2 = iVar3;
  return;
}

// ---- FUN_0062b934  @ 0x62b934
undefined4 FUN_0062b934(int param_1,int param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  code *pcVar3;
  int local_c;
  
  uVar1 = 0;
  if (*(int *)(param_1 + 0x70) != 0) {
    if (*(int *)(param_1 + 0x58) == 0) {
      local_c = -1;
    }
    else {
      local_c = param_2;
      FUN_0062b8e0(param_1,&local_c,param_3,*(int *)(param_1 + 0x58),param_1);
    }
    if (local_c < 0) {
      if ((*(int *)(param_1 + 0x78) == 0) && (*(int *)(param_1 + 0x7c) == 0)) {
        return 0;
      }
      *(undefined4 *)(param_1 + 0x78) = 0;
      *(undefined4 *)(param_1 + 0x7c) = 0;
      pcVar3 = *(code **)(param_1 + 0x70);
      iVar2 = -1;
    }
    else {
      iVar2 = *(int *)(param_1 + 0x58);
      if ((*(int *)(iVar2 + 0xc) == *(int *)(param_1 + 0x78)) &&
         (*(int *)(iVar2 + 0x10) == *(int *)(param_1 + 0x7c))) {
        return 0;
      }
      uVar1 = *(undefined4 *)(iVar2 + 0x10);
      *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(iVar2 + 0xc);
      *(undefined4 *)(param_1 + 0x7c) = uVar1;
      pcVar3 = *(code **)(param_1 + 0x70);
      iVar2 = local_c;
    }
    uVar1 = (*pcVar3)(param_1,iVar2,*(undefined4 *)(param_1 + 0x74));
  }
  return uVar1;
}

// ---- FUN_0062b99c  @ 0x62b99c
undefined4 FUN_0062b99c(int param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  
  if (*(int *)(param_1 + 0x10) - 2U < 0xd) {
    **(undefined4 **)(param_1 + 0xc) = *(undefined4 *)(param_1 + 8);
  }
  switch(*(undefined4 *)(param_1 + 0x10)) {
  case 3:
  case 4:
    iVar1 = *(int *)(param_1 + 0xc);
    *param_2 = *(undefined4 *)(iVar1 + 0x130);
    if (*(int *)(iVar1 + 0x434) == 1) {
      uVar2 = 1;
    }
    else {
      uVar2 = 0x10000;
    }
    return uVar2;
  case 5:
    uVar2 = Curl_protocol_getsock(*(undefined4 *)(param_1 + 0xc),param_2,5);
    return uVar2;
  default:
    return 0;
  case 7:
  case 8:
    uVar2 = Curl_doing_getsock(*(undefined4 *)(param_1 + 0xc),param_2,5);
    return uVar2;
  case 9:
    break;
  case 10:
  case 0xb:
  case 0xc:
    uVar2 = Curl_single_getsock(*(undefined4 *)(param_1 + 0xc),param_2,5);
    return uVar2;
  }
  iVar1 = *(int *)(param_1 + 0xc);
  if ((iVar1 != 0) && (pcVar3 = *(code **)(*(int *)(iVar1 + 0x1e4) + 0x28), pcVar3 != (code *)0x0))
  {
    uVar2 = (*pcVar3)(iVar1,param_2,5);
    return uVar2;
  }
  return 0;
}

// ---- FUN_0062ba18  @ 0x62ba18
/* WARNING: Type propagation algorithm not settling */

void FUN_0062ba18(int param_1,int param_2)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  uint uVar11;
  uint uVar12;
  undefined4 uVar13;
  uint uVar14;
  int local_44;
  int local_40 [7];
  
  local_40[1] = 0xffffffff;
  local_40[2] = 0xffffffff;
  local_40[3] = 0xffffffff;
  uVar14 = 0;
  local_40[4] = 0xffffffff;
  local_40[5] = 0xffffffff;
  if ((*(char *)(*(int *)(param_2 + 8) + 0x85e5) == '\0') &&
     (uVar14 = 0, *(int *)(param_2 + 0xc) != 0)) {
    uVar14 = FUN_0062b99c(param_2,local_40 + 1);
  }
  piVar2 = local_40;
  uVar12 = 0;
  do {
    uVar5 = 1 << (uVar12 + 0x10 & 0xff);
    uVar11 = 1 << (uVar12 & 0xff);
    if (((uVar5 | uVar11) & uVar14) == 0) break;
    piVar2 = piVar2 + 1;
    local_44 = *piVar2;
    puVar4 = (undefined4 *)Curl_hash_pick(*(undefined4 *)(param_1 + 0x5c),&local_44,4);
    uVar11 = (uint)((uVar11 & uVar14) != 0);
    if ((uVar5 & uVar14) != 0) {
      uVar11 = uVar11 | 2;
    }
    if (puVar4 == (undefined4 *)0x0) {
      uVar13 = *(undefined4 *)(param_2 + 8);
      uVar9 = *(undefined4 *)(param_1 + 0x5c);
      local_40[0] = local_44;
      puVar4 = (undefined4 *)Curl_hash_pick(uVar9,local_40,4);
      if (puVar4 == (undefined4 *)0x0) {
        puVar4 = (undefined4 *)(*Curl_ccalloc)(1,0x14);
        if (puVar4 == (undefined4 *)0x0) {
          return;
        }
        *puVar4 = uVar13;
        puVar4[3] = local_40[0];
        iVar8 = Curl_hash_add(uVar9,local_40,4,puVar4);
        if (iVar8 == 0) {
          (*Curl_cfree)(puVar4);
          return;
        }
      }
LAB_0062bae2:
      if (*(code **)(param_1 + 0x4c) != (code *)0x0) {
        (**(code **)(param_1 + 0x4c))
                  (*(undefined4 *)(param_2 + 8),local_44,uVar11,*(undefined4 *)(param_1 + 0x50),
                   puVar4[4]);
      }
      puVar4[2] = uVar11;
    }
    else if (puVar4[2] != uVar11) goto LAB_0062bae2;
    uVar12 = uVar12 + 1;
  } while (uVar12 != 5);
  iVar10 = 0;
  iVar8 = param_2;
  do {
    if (*(int *)(param_2 + 0x38) <= iVar10) {
      memcpy((void *)(param_2 + 0x24),local_40 + 1,uVar12 << 2);
      *(uint *)(param_2 + 0x38) = uVar12;
      return;
    }
    local_44 = *(int *)(iVar8 + 0x24);
    piVar2 = local_40;
    for (iVar6 = 0; iVar6 < (int)uVar12; iVar6 = iVar6 + 1) {
      piVar2 = piVar2 + 1;
      if (local_44 == *piVar2) {
        local_44 = -1;
        break;
      }
    }
    if ((local_44 != -1) &&
       (piVar2 = (int *)Curl_hash_pick(*(undefined4 *)(param_1 + 0x5c),&local_44,4),
       piVar2 != (int *)0x0)) {
      iVar6 = *piVar2;
      iVar3 = *(int *)(*(int *)(iVar6 + 0xc) + 0xc);
      if (iVar3 == 0) {
LAB_0062bbc6:
        if (*(code **)(param_1 + 0x4c) != (code *)0x0) {
          (**(code **)(param_1 + 0x4c))
                    (*(undefined4 *)(param_2 + 8),local_44,4,*(undefined4 *)(param_1 + 0x50),
                     piVar2[4]);
        }
        uVar13 = *(undefined4 *)(param_1 + 0x5c);
        local_40[0] = local_44;
        iVar6 = Curl_hash_pick(uVar13,local_40,4);
        if (iVar6 != 0) {
          Curl_hash_delete(uVar13,local_40,4);
        }
      }
      else {
        piVar7 = *(int **)(iVar3 + 0x22c);
        if ((piVar7 == (int *)0x0) || ((uint)piVar7[3] < 2)) {
          bVar1 = true;
        }
        else {
          if (iVar6 == *(int *)(param_2 + 8)) {
            piVar7 = (int *)*piVar7;
            if ((piVar7 == (int *)0x0) || (*piVar7 != iVar6)) {
              *piVar2 = *piVar7;
            }
            else {
              *piVar2 = *(int *)piVar7[2];
            }
          }
          bVar1 = false;
        }
        puVar4 = *(undefined4 **)(iVar3 + 0x228);
        if ((puVar4 == (undefined4 *)0x0) || ((uint)puVar4[3] < 2)) {
          if (bVar1) goto LAB_0062bbc6;
        }
        else if (*piVar2 == *(int *)(param_2 + 8)) {
          piVar7 = (int *)*puVar4;
          if ((piVar7 == (int *)0x0) || (*piVar7 != *piVar2)) {
            *piVar2 = *piVar7;
          }
          else {
            *piVar2 = *(int *)piVar7[2];
          }
        }
      }
    }
    iVar10 = iVar10 + 1;
    iVar8 = iVar8 + 4;
  } while( true );
}

// ---- FUN_0062c0fc  @ 0x62c0fc
int FUN_0062c0fc(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int local_28;
  undefined4 uStack_24;
  
  iVar5 = **(int **)(param_1 + 0x228);
  iVar3 = *(int *)(*(int *)(param_1 + 0x22c) + 0xc) + (*(int **)(param_1 + 0x228))[3];
  if ((*(char *)(param_1 + 0x226) != '\0') || (iVar1 = 0, iVar3 == 0)) {
    if (*(char *)(param_1 + 0x226) == '\0') {
      uVar4 = 1;
    }
    else {
      uVar4 = 5;
    }
    puVar2 = (undefined4 *)**(undefined4 **)(param_1 + 0x230);
    local_28 = param_1;
    uStack_24 = param_2;
    for (iVar1 = 0; (uint)(iVar1 + iVar3) < uVar4 && puVar2 != (undefined4 *)0x0; iVar1 = iVar1 + 1)
    {
      Curl_llist_move(*(undefined4 *)(param_1 + 0x230),puVar2,*(int *)(param_1 + 0x228),
                      *(undefined4 *)(*(int *)(param_1 + 0x228) + 4));
      Curl_pgrsTime(*puVar2,4);
      puVar2 = (undefined4 *)**(undefined4 **)(param_1 + 0x230);
    }
    if (iVar1 != 0) {
      curlx_tvnow(&local_28);
      *(int *)(param_1 + 0x120) = local_28;
      *(undefined4 *)(param_1 + 0x124) = uStack_24;
      if (iVar5 != **(int **)(param_1 + 0x228)) {
        *(undefined1 *)(param_1 + 0x225) = 0;
        Curl_expire(*(undefined4 *)**(int **)(param_1 + 0x228),1);
      }
    }
  }
  return iVar1;
}

// ---- FUN_0062c1a4  @ 0x62c1a4
int FUN_0062c1a4(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  byte bVar1;
  char cVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  char *pcVar6;
  undefined4 *puVar7;
  uint uVar8;
  undefined4 uVar9;
  undefined4 *puVar10;
  uint *puVar11;
  int iVar12;
  uint uVar13;
  uint *puVar14;
  int iVar15;
  int *piVar16;
  int iVar17;
  int iVar18;
  undefined4 local_40;
  undefined4 uStack_3c;
  char local_31;
  char local_30;
  char local_2f;
  char local_2e;
  char local_2d;
  uint local_2c [2];
  
  puVar10 = *(undefined4 **)(param_4 + 8);
  iVar12 = 0;
  local_2f = '\0';
  local_2d = '\0';
  if ((puVar10 == (undefined4 *)0x0) || (puVar10[0x21b9] != -0x3f212453)) {
    return 2;
  }
  local_40 = param_2;
  uStack_3c = param_3;
  if (*(char *)((int)puVar10 + 0x85e5) != '\0') {
    Curl_infof(puVar10,"Pipe broke: handle 0x%p, url = %s\n",param_4,puVar10[0x217f]);
    if (*(uint *)(param_4 + 0x10) < 0xf) {
      FUN_0062b8c8(param_4,1);
      *(undefined4 *)(param_4 + 0x14) = 0;
      iVar12 = -1;
    }
    *(undefined1 *)((int)puVar10 + 0x85e5) = 0;
    *(undefined4 *)(param_4 + 0xc) = 0;
    goto LAB_0062ca02;
  }
  if (((*(undefined4 **)(param_4 + 0xc) != (undefined4 *)0x0) && (1 < *(uint *)(param_4 + 0x10))) &&
     (*(uint *)(param_4 + 0x10) < 0xf)) {
    **(undefined4 **)(param_4 + 0xc) = puVar10;
  }
  if (((*(int *)(param_4 + 0xc) != 0) && (uVar8 = *(uint *)(param_4 + 0x10), uVar8 != 0)) &&
     ((uVar8 < 0xf && (iVar12 = Curl_timeleft(puVar10,&local_40,uVar8 < 7), iVar12 < 0)))) {
    if (*(int *)(param_4 + 0x10) == 2) {
      uVar4 = curlx_tvdiff(local_40,uStack_3c,puVar10[0x11e],puVar10[0x11f]);
      pcVar6 = "Resolving timed out after %ld milliseconds";
LAB_0062c278:
      Curl_failf(puVar10,pcVar6,uVar4);
    }
    else {
      uVar4 = puVar10[0x11e];
      if (*(int *)(param_4 + 0x10) == 3) {
        uVar4 = curlx_tvdiff(local_40,uStack_3c,uVar4,puVar10[0x11f]);
        pcVar6 = "Connection timed out after %ld milliseconds";
        goto LAB_0062c278;
      }
      uVar4 = curlx_tvdiff(local_40,uStack_3c,uVar4,puVar10[0x11f]);
      Curl_failf(puVar10,
                 "Operation timed out after %ld milliseconds with %lld out of %lld bytes received",
                 uVar4);
    }
    iVar12 = 0;
    *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x1b8) = 1;
    *(undefined4 *)(param_4 + 0x14) = 0x1c;
    FUN_0062b8c8(param_4,0xf);
    goto LAB_0062ca02;
  }
  switch(*(undefined4 *)(param_4 + 0x10)) {
  case 0:
    iVar12 = Curl_pretransfer(puVar10);
    *(int *)(param_4 + 0x14) = iVar12;
    if (iVar12 != 0) break;
    FUN_0062b8c8(param_4,1);
    puVar10[0x13c] = 2;
    iVar5 = 0;
    goto LAB_0062c47e;
  case 1:
    Curl_pgrsTime(puVar10,7);
    iVar12 = Curl_connect(puVar10,param_4 + 0xc,&local_30,&local_2f);
    *(int *)(param_4 + 0x14) = iVar12;
    if (iVar12 == 0) {
      iVar18 = *(int *)(param_4 + 0xc);
      iVar5 = (*(int **)(iVar18 + 0x228))[3];
      iVar15 = *(int *)(*(int *)(iVar18 + 0x22c) + 0xc);
      iVar17 = **(int **)(iVar18 + 0x228);
      iVar12 = Curl_isPipeliningEnabled(puVar10);
      if (((iVar12 == 0) || (uVar8 = iVar15 + iVar5, uVar8 == 0)) ||
         ((*(char *)(iVar18 + 0x226) != '\0' && (uVar8 < 5)))) {
        piVar16 = *(int **)(iVar18 + 0x228);
      }
      else {
        piVar16 = *(int **)(iVar18 + 0x230);
      }
      iVar12 = Curl_addHandleToPipeline(puVar10,piVar16);
      if ((piVar16 == *(int **)(iVar18 + 0x228)) && (iVar17 != *piVar16)) {
        *(undefined1 *)(iVar18 + 0x225) = 0;
        Curl_expire(*(undefined4 *)*piVar16,1);
      }
      *(int *)(param_4 + 0x14) = iVar12;
      if (iVar12 != 0) goto LAB_0062c958;
      uVar4 = 2;
      if (local_30 != '\0') goto LAB_0062c412;
      if (local_2f == '\0') {
        uVar4 = 3;
        iVar12 = *(int *)(*(int *)(param_4 + 0xc) + 0x434);
        goto joined_r0x0062c476;
      }
LAB_0062c4b4:
      if (*(char *)(param_1 + 0x60) == '\0') {
        uVar4 = 7;
      }
      else {
        uVar4 = 6;
      }
LAB_0062c642:
      iVar5 = 0;
      goto LAB_0062c47a;
    }
    break;
  case 2:
    *(undefined4 *)(param_4 + 0x14) = 6;
    FUN_0062ba18(param_1,param_4);
    if (*(int *)(param_4 + 0x14) == 0) break;
LAB_0062c958:
    iVar5 = 1;
LAB_0062c95a:
    iVar12 = 0;
    goto LAB_0062c96a;
  case 3:
    iVar12 = Curl_is_connected(*(undefined4 *)(param_4 + 0xc),0,&local_31);
    *(int *)(param_4 + 0x14) = iVar12;
    if ((local_31 != '\0') && (iVar12 == 0)) {
      uVar4 = Curl_protocol_connect(*(undefined4 *)(param_4 + 0xc),&local_2f);
      *(undefined4 *)(param_4 + 0x14) = uVar4;
    }
    if (*(int *)(param_4 + 0x14) != 0) goto LAB_0062c958;
    if (local_31 != '\0') {
      if (local_2f == '\0') {
        uVar4 = 5;
        iVar12 = *(int *)(*(int *)(param_4 + 0xc) + 0x434);
joined_r0x0062c476:
        iVar5 = 0;
        if (iVar12 == 1) {
          iVar5 = 0;
          uVar4 = 4;
        }
        goto LAB_0062c47a;
      }
      if (*(char *)(param_1 + 0x60) == '\0') {
        uVar4 = 7;
      }
      else {
        uVar4 = 6;
      }
      FUN_0062b8c8(param_4,uVar4);
      iVar5 = 0;
      goto LAB_0062c47e;
    }
    break;
  case 4:
    iVar12 = Curl_http_connect(*(undefined4 *)(param_4 + 0xc),&local_2f);
    *(int *)(param_4 + 0x14) = iVar12;
    if (*(char *)(*(int *)(param_4 + 0xc) + 0x1ce) != '\0') {
      if ((undefined1 *)puVar10[0x46] != (undefined1 *)0x0) {
        *(undefined1 *)puVar10[0x46] = 0;
      }
      *(undefined1 *)(puVar10 + 0x214e) = 0;
      *(undefined4 *)(param_4 + 0x14) = 0;
LAB_0062c898:
      iVar5 = 0;
      uVar4 = 1;
      goto LAB_0062c47a;
    }
    if ((iVar12 == 0) && (*(int *)(*(int *)(param_4 + 0xc) + 0x434) == 2)) {
      uVar4 = 3;
LAB_0062c412:
      FUN_0062b8c8(param_4,uVar4);
    }
    break;
  case 5:
    iVar12 = Curl_protocol_connecting(*(undefined4 *)(param_4 + 0xc),&local_2f);
    *(int *)(param_4 + 0x14) = iVar12;
    if (iVar12 != 0) {
      Curl_posttransfer(puVar10);
      uVar4 = *(undefined4 *)(param_4 + 0x14);
      uVar9 = 1;
LAB_0062c654:
      Curl_done(param_4 + 0xc,uVar4,uVar9);
      goto LAB_0062c958;
    }
    if (local_2f != '\0') goto LAB_0062c4b4;
    break;
  case 6:
    iVar12 = *(int *)(param_4 + 0xc);
    if (((*(char *)(iVar12 + 0x225) == '\0') &&
        ((undefined4 *)**(undefined4 **)(iVar12 + 0x228) != (undefined4 *)0x0)) &&
       (*(undefined4 **)**(undefined4 **)(iVar12 + 0x228) == puVar10)) {
      *(undefined1 *)(iVar12 + 0x225) = 1;
      uVar4 = 7;
      iVar5 = 0;
      goto LAB_0062c47a;
    }
    break;
  case 7:
    bVar1 = *(byte *)((int)puVar10 + 0x2d9);
    if (bVar1 != 0) {
      iVar5 = 0;
      *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x1b8) = 0;
      FUN_0062b8c8(param_4,0xe);
      *(undefined4 *)(param_4 + 0x14) = 0;
      goto LAB_0062c47e;
    }
    iVar18 = param_4 + 0xc;
    iVar12 = Curl_do(iVar18,&local_2e);
    *(int *)(param_4 + 0x14) = iVar12;
    if (iVar12 != 0) {
      if ((iVar12 != 0x37) || (*(char *)(*(int *)(param_4 + 0xc) + 0x1b9) == '\0')) {
        Curl_posttransfer(puVar10);
        goto LAB_0062c650;
      }
      local_2c[0] = (uint)bVar1;
      iVar12 = Curl_retry_request(*(int *)(param_4 + 0xc),local_2c);
      if (iVar12 == 0) {
        iVar5 = 0;
        bVar3 = false;
        if (local_2c[0] != 0) {
          bVar3 = true;
        }
      }
      else {
        *(int *)(param_4 + 0x14) = iVar12;
        iVar5 = 1;
        bVar3 = false;
      }
      Curl_posttransfer(puVar10);
      uVar8 = Curl_done(iVar18,*(undefined4 *)(param_4 + 0x14),0);
      if (bVar3) {
        uVar13 = 1 - uVar8;
        if (1 < uVar8) {
          uVar13 = 0;
        }
        if (uVar8 == 0x37) {
          uVar13 = uVar13 | 1;
        }
        if (uVar13 != 0) {
          iVar12 = Curl_follow(puVar10,local_2c[0],2);
          if (iVar12 == 0) {
            FUN_0062b8c8(param_4,1);
            *(undefined4 *)(param_4 + 0x14) = 0;
            goto LAB_0062c47e;
          }
          *(int *)(param_4 + 0x14) = iVar12;
          (*Curl_cfree)(local_2c[0]);
          goto LAB_0062c95a;
        }
        *(uint *)(param_4 + 0x14) = uVar8;
        (*Curl_cfree)(local_2c[0]);
        iVar12 = 0;
      }
      else {
        iVar5 = 1;
        iVar12 = 0;
      }
      goto LAB_0062c96a;
    }
    if (local_2e != '\0') {
      if (*(char *)(*(int *)(param_4 + 0xc) + 0x1c0) == '\0') goto LAB_0062c678;
      FUN_0062b8c8(param_4,9);
      break;
    }
    if ((*(char *)(puVar10 + 0xe8) == '\0') || (puVar10[0x218a] != 4 && puVar10[0x218a] != 6)) {
      uVar4 = 8;
      goto LAB_0062c738;
    }
    Curl_done(iVar18,0,0);
    iVar5 = 0;
LAB_0062c8d8:
    uVar4 = 0xe;
LAB_0062c47a:
    FUN_0062b8c8(param_4,uVar4);
    goto LAB_0062c47e;
  case 8:
    iVar12 = Curl_protocol_doing(*(undefined4 *)(param_4 + 0xc),&local_2e);
    *(int *)(param_4 + 0x14) = iVar12;
    if (iVar12 != 0) {
LAB_0062c646:
      Curl_posttransfer(puVar10);
LAB_0062c650:
      uVar4 = *(undefined4 *)(param_4 + 0x14);
      uVar9 = 0;
      goto LAB_0062c654;
    }
    if (local_2e != '\0') {
      if (*(char *)(*(int *)(param_4 + 0xc) + 0x1c0) == '\0') {
        uVar4 = 10;
      }
      else {
        uVar4 = 9;
      }
      goto LAB_0062c642;
    }
    break;
  case 9:
    iVar12 = Curl_do_more(*(undefined4 *)(param_4 + 0xc),&local_2e);
    *(int *)(param_4 + 0x14) = iVar12;
    if (iVar12 != 0) goto LAB_0062c646;
    if (local_2e != '\0') {
LAB_0062c678:
      iVar5 = 0;
      uVar4 = 10;
      goto LAB_0062c47a;
    }
    break;
  case 10:
    iVar12 = *(int *)(param_4 + 0xc);
    for (puVar7 = (undefined4 *)**(undefined4 **)(iVar12 + 0x228); puVar7 != (undefined4 *)0x0;
        puVar7 = (undefined4 *)puVar7[2]) {
      if ((undefined4 *)*puVar7 == puVar10) {
        Curl_llist_move();
        if (**(int **)(iVar12 + 0x228) != 0) {
          *(undefined1 *)(iVar12 + 0x225) = 0;
          Curl_expire(*(undefined4 *)**(int **)(iVar12 + 0x228),1);
        }
        break;
      }
    }
    FUN_0062c0fc(*(undefined4 *)(param_4 + 0xc));
    uVar4 = 0xb;
    goto LAB_0062c938;
  case 0xb:
    iVar12 = *(int *)(param_4 + 0xc);
    if (((*(char *)(iVar12 + 0x224) == '\0') &&
        ((undefined4 *)**(undefined4 **)(iVar12 + 0x22c) != (undefined4 *)0x0)) &&
       (*(undefined4 **)**(undefined4 **)(iVar12 + 0x22c) == puVar10)) {
      *(undefined1 *)(iVar12 + 0x224) = 1;
      uVar4 = 0xc;
      iVar5 = 0;
      goto LAB_0062c47a;
    }
    break;
  case 0xc:
    puVar11 = puVar10 + 0x78;
    uVar8 = *puVar11;
    iVar12 = puVar10[0x79];
    if (iVar12 < (int)(uint)(uVar8 == 0)) {
LAB_0062c75c:
      puVar11 = puVar10 + 0x7a;
      uVar8 = *puVar11;
      iVar12 = puVar10[0x7b];
      if ((int)(uint)(uVar8 == 0) <= iVar12) {
        puVar14 = puVar10 + 0x10c;
        iVar5 = puVar10[0x10d];
        if ((int)((iVar12 - iVar5) - (uint)(uVar8 < *puVar14)) < 0 !=
            (SBORROW4(iVar12,iVar5) != SBORROW4(iVar12 - iVar5,(uint)(uVar8 < *puVar14))))
        goto LAB_0062c77a;
      }
      uVar4 = Curl_readwrite(*(undefined4 *)(param_4 + 0xc),&local_2d);
      *(undefined4 *)(param_4 + 0x14) = uVar4;
      if ((puVar10[0x3d] & 1) == 0) {
        *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x224) = 0;
      }
      if ((puVar10[0x3d] & 2) == 0) {
        *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x225) = 0;
      }
      if (*(uint *)(param_4 + 0x14) == 0) {
        if (local_2d != '\0') {
          local_2c[0] = *(uint *)(param_4 + 0x14);
          iVar12 = Curl_retry_request(*(undefined4 *)(param_4 + 0xc),local_2c);
          *(int *)(param_4 + 0x14) = iVar12;
          bVar3 = false;
          if ((iVar12 == 0) && (bVar3 = false, local_2c[0] != 0)) {
            bVar3 = true;
          }
          Curl_posttransfer(puVar10);
          for (puVar7 = (undefined4 *)**(undefined4 **)(*(int *)(param_4 + 0xc) + 0x22c);
              puVar7 != (undefined4 *)0x0; puVar7 = (undefined4 *)puVar7[2]) {
            if ((undefined4 *)*puVar7 == puVar10) {
              Curl_llist_move();
              break;
            }
          }
          puVar7 = (undefined4 *)**(undefined4 **)(*(int *)(param_4 + 0xc) + 0x22c);
          if (puVar7 != (undefined4 *)0x0) {
            Curl_expire(*puVar7,1);
          }
          FUN_0062c0fc(*(undefined4 *)(param_4 + 0xc));
          uVar8 = puVar10[0x40];
          if (uVar8 == 0) {
            if (!bVar3) {
              uVar8 = puVar10[0x3f];
              iVar5 = 0;
              if (uVar8 != 0) {
                puVar10[0x3f] = 0;
                local_2c[0] = uVar8;
                iVar12 = Curl_follow(puVar10,uVar8,1);
                *(int *)(param_4 + 0x14) = iVar12;
                if (iVar12 != 0) {
                  iVar5 = 1;
                  (*Curl_cfree)(local_2c[0]);
                }
              }
              goto LAB_0062c8d8;
            }
LAB_0062c876:
            uVar4 = 2;
          }
          else {
            if (bVar3) goto LAB_0062c876;
            puVar10[0x40] = 0;
            uVar4 = 3;
            local_2c[0] = uVar8;
          }
          iVar12 = Curl_done(param_4 + 0xc,0,0);
          *(int *)(param_4 + 0x14) = iVar12;
          if (iVar12 == 0) {
            uVar4 = Curl_follow(puVar10,local_2c[0],uVar4);
            *(undefined4 *)(param_4 + 0x14) = uVar4;
          }
          if (*(int *)(param_4 + 0x14) == 0) goto LAB_0062c898;
          if (local_2c[0] != 0) {
            (*Curl_cfree)();
          }
        }
      }
      else {
        if (-1 < *(int *)(*(int *)(*(int *)(param_4 + 0xc) + 0x1e4) + 0x40) << 0x1e) {
          *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x1b8) = 1;
        }
        Curl_posttransfer(puVar10);
        Curl_done(param_4 + 0xc,*(undefined4 *)(param_4 + 0x14),0);
      }
    }
    else {
      puVar14 = puVar10 + 0x10e;
      iVar5 = puVar10[0x10f];
      if ((int)((iVar12 - iVar5) - (uint)(uVar8 < *puVar14)) < 0 ==
          (SBORROW4(iVar12,iVar5) != SBORROW4(iVar12 - iVar5,(uint)(uVar8 < *puVar14))))
      goto LAB_0062c75c;
LAB_0062c77a:
      FUN_0062b8c8(param_4,0xd);
      iVar12 = puVar10[0x9e];
      if (iVar12 == 0) {
        iVar12 = 0x4000;
      }
      uVar4 = Curl_sleep_time(*puVar11,puVar11[1],*puVar14,puVar14[1],iVar12);
      Curl_expire(puVar10,uVar4);
    }
    break;
  case 0xd:
    Curl_pgrsUpdate(*(undefined4 *)(param_4 + 0xc));
    uVar8 = puVar10[0x78];
    iVar12 = puVar10[0x79];
    if ((uVar8 == 0 && iVar12 == 0) ||
       (iVar5 = puVar10[0x10f],
       (int)((iVar5 - iVar12) - (uint)((uint)puVar10[0x10e] < uVar8)) < 0 !=
       (SBORROW4(iVar5,iVar12) != SBORROW4(iVar5 - iVar12,(uint)((uint)puVar10[0x10e] < uVar8))))) {
      uVar8 = puVar10[0x7a];
      iVar12 = puVar10[0x7b];
      if ((uVar8 == 0 && iVar12 == 0) ||
         (iVar5 = puVar10[0x10d],
         (int)((iVar5 - iVar12) - (uint)((uint)puVar10[0x10c] < uVar8)) < 0 !=
         (SBORROW4(iVar5,iVar12) != SBORROW4(iVar5 - iVar12,(uint)((uint)puVar10[0x10c] < uVar8)))))
      {
        uVar4 = 0xc;
LAB_0062c738:
        FUN_0062b8c8(param_4,uVar4);
      }
    }
    break;
  case 0xe:
    iVar12 = 0;
    if (*(int *)(param_4 + 0xc) != 0) {
      Curl_removeHandleFromPipeline(puVar10,*(undefined4 *)(*(int *)(param_4 + 0xc) + 0x22c));
      Curl_removeHandleFromPipeline(puVar10,*(undefined4 *)(*(int *)(param_4 + 0xc) + 0x234));
      FUN_0062c0fc(*(undefined4 *)(param_4 + 0xc));
      cVar2 = *(char *)(*(int *)(param_4 + 0xc) + 0x1cd);
      uVar4 = Curl_done((int *)(param_4 + 0xc),0,0);
      if (cVar2 == '\0') {
        iVar12 = 0;
      }
      else {
        iVar12 = -1;
      }
      *(undefined4 *)(param_4 + 0x14) = uVar4;
      if (*(int *)(param_4 + 0xc) != 0) {
        *(undefined4 *)(param_4 + 0xc) = 0;
      }
    }
    if ((*(char *)(puVar10 + 0xe8) == '\0') || (puVar10[0x218a] == 6)) {
      iVar5 = 0;
      FUN_0062b8c8(param_4,0xf);
      goto LAB_0062c96a;
    }
    uVar4 = 0;
LAB_0062c938:
    FUN_0062b8c8(param_4,uVar4);
    iVar5 = 0;
LAB_0062c47e:
    iVar12 = -1;
    goto LAB_0062c96a;
  case 0xf:
    *(undefined4 *)(param_4 + 0xc) = 0;
    Curl_expire(puVar10,0);
    break;
  case 0x10:
    return 0;
  default:
    return 4;
  }
  iVar5 = 0;
  iVar12 = iVar5;
LAB_0062c96a:
  if (*(uint *)(param_4 + 0x10) < 0xf) {
    if (*(int *)(param_4 + 0x14) == 0) {
      if ((*(int *)(param_4 + 0xc) != 0) && (iVar5 = Curl_pgrsUpdate(), iVar5 != 0)) {
        iVar12 = -1;
        *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x1b8) = 1;
        if (*(uint *)(param_4 + 0x10) < 0xe) {
          uVar4 = 0xe;
        }
        else {
          uVar4 = 0xf;
        }
        FUN_0062b8c8(param_4,uVar4);
      }
    }
    else {
      *(undefined1 *)((int)puVar10 + 0x85e5) = 0;
      if (*(int *)(param_4 + 0xc) == 0) {
        if (*(int *)(param_4 + 0x10) == 1) {
          Curl_posttransfer(puVar10);
        }
      }
      else {
        *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x225) = 0;
        *(undefined1 *)(*(int *)(param_4 + 0xc) + 0x224) = 0;
        Curl_removeHandleFromPipeline(puVar10,*(undefined4 *)(*(int *)(param_4 + 0xc) + 0x228));
        Curl_removeHandleFromPipeline(puVar10,*(undefined4 *)(*(int *)(param_4 + 0xc) + 0x22c));
        Curl_removeHandleFromPipeline(puVar10,*(undefined4 *)(*(int *)(param_4 + 0xc) + 0x234));
        FUN_0062c0fc(*(undefined4 *)(param_4 + 0xc));
        if (iVar5 != 0) {
          Curl_disconnect(*(undefined4 *)(param_4 + 0xc),0);
          *(undefined4 *)(param_4 + 0xc) = 0;
        }
      }
      FUN_0062b8c8(param_4,0xf);
    }
  }
LAB_0062ca02:
  if (*(int *)(param_4 + 0x10) == 0xf) {
    if (puVar10[1] == 3) {
      *puVar10 = 0;
      puVar10[1] = 0;
    }
    *(undefined4 *)(param_4 + 0x18) = 1;
    *(undefined4 **)(param_4 + 0x1c) = puVar10;
    *(undefined4 *)(param_4 + 0x20) = *(undefined4 *)(param_4 + 0x14);
    iVar12 = Curl_llist_insert_next
                       (*(int *)(param_1 + 0x48),*(undefined4 *)(*(int *)(param_1 + 0x48) + 4),
                        param_4 + 0x18);
    if (iVar12 == 0) {
      iVar12 = 3;
    }
    else {
      iVar12 = 0;
    }
    FUN_0062b8c8(param_4,0x10);
  }
  return iVar12;
}

// ---- FUN_0062cb2c  @ 0x62cb2c
int FUN_0062cb2c(int param_1,int param_2,int param_3,uint param_4,undefined4 *param_5)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  int iVar7;
  int local_3c [2];
  int local_34;
  int local_30;
  int local_2c;
  
  local_3c[0] = param_3;
  curlx_tvnow(&local_30);
  if (param_2 == 0) {
    iVar1 = 0;
    if (local_3c[0] != -1) {
      piVar2 = (int *)Curl_hash_pick(*(undefined4 *)(param_1 + 0x5c),local_3c,4);
      if (piVar2 == (int *)0x0) {
        iVar1 = 0;
      }
      else {
        iVar6 = *piVar2;
        if (*(int *)(iVar6 + 0x86e4) != -0x3f212453) {
          return 4;
        }
        iVar1 = *(int *)(*(int *)(iVar6 + 0x280) + 0xc);
        if (iVar1 != 0) {
          if ((((param_4 & 2) == 0) || (*(int **)(iVar1 + 0x228) == (int *)0x0)) ||
             (piVar2 = (int *)**(int **)(iVar1 + 0x228), piVar2 == (int *)0x0)) {
            if ((((param_4 & 1) != 0) && (*(int **)(iVar1 + 0x22c) != (int *)0x0)) &&
               (piVar2 = (int *)**(int **)(iVar1 + 0x22c), piVar2 != (int *)0x0)) {
              iVar6 = *piVar2;
            }
          }
          else {
            iVar6 = *piVar2;
          }
        }
        iVar1 = *(int *)(*(int *)(iVar6 + 0x280) + 0xc);
        if ((iVar1 != 0) && (-1 < *(int *)(*(int *)(iVar1 + 0x1e4) + 0x40) << 0x1c)) {
          *(uint *)(iVar1 + 0x418) = param_4;
        }
        do {
          iVar1 = FUN_0062c1a4(param_1,local_30,local_2c,*(undefined4 *)(iVar6 + 0x280));
        } while (iVar1 == -1);
        iVar4 = *(int *)(*(int *)(iVar6 + 0x280) + 0xc);
        if ((iVar4 != 0) && ((*(uint *)(*(int *)(iVar4 + 0x1e4) + 0x40) & 8) == 0)) {
          *(undefined4 *)(iVar4 + 0x418) = 0;
        }
        if (iVar1 < 1) {
          FUN_0062ba18(param_1,*(undefined4 *)(iVar6 + 0x280));
        }
      }
    }
    iVar4 = local_2c + 40000;
    iVar6 = local_30;
    if (999999 < iVar4) {
      iVar6 = local_30 + 1;
      iVar4 = local_2c + -960000;
    }
    iVar7 = 0;
    while( true ) {
      local_30 = iVar6;
      local_2c = iVar4;
      uVar3 = Curl_splaygetbest(iVar6,iVar4,*(undefined4 *)(param_1 + 0x58),&local_34);
      *(undefined4 *)(param_1 + 0x58) = uVar3;
      if (local_34 != 0) {
        iVar7 = *(int *)(local_34 + 0x14);
        FUN_0062b7d0(local_30,local_2c,param_1,iVar7);
      }
      if (local_34 == 0) break;
      if (iVar7 != 0) {
        do {
          local_30 = iVar6;
          local_2c = iVar4;
          iVar1 = FUN_0062c1a4(param_1,iVar6,iVar4,*(undefined4 *)(iVar7 + 0x280));
        } while (iVar1 == -1);
        if (iVar1 < 1) {
          FUN_0062ba18(param_1,*(undefined4 *)(iVar7 + 0x280));
        }
      }
    }
    *param_5 = *(undefined4 *)(param_1 + 0x44);
  }
  else {
    iVar1 = curl_multi_perform(param_1,param_5);
    for (puVar5 = *(undefined4 **)(param_1 + 4); puVar5 != (undefined4 *)(param_1 + 4);
        puVar5 = (undefined4 *)*puVar5) {
      FUN_0062ba18(param_1,puVar5);
    }
  }
  return iVar1;
}

// ---- FUN_0062d1b0  @ 0x62d1b0
void FUN_0062d1b0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  (*Curl_ccalloc)(param_2,param_3,param_3,Curl_ccalloc,param_4);
  return;
}

// ---- FUN_0062d1dc  @ 0x62d1dc
undefined4 FUN_0062d1dc(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  if (*(int *)(param_2 + 0x18) == 0) {
    Curl_failf(*param_1,
               "Error while processing content unencoding: Unknown failure within decompression software."
               ,0,param_4,param_4);
  }
  else {
    Curl_failf(*param_1,"Error while processing content unencoding: %s",*(int *)(param_2 + 0x18),
               param_4,param_4);
  }
  return 0x3d;
}

// ---- FUN_0062d204  @ 0x62d204
int FUN_0062d204(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  byte bVar7;
  int local_34;
  
  uVar4 = *(undefined4 *)(param_2 + 0x94);
  iVar6 = param_2 + 0x90;
  uVar5 = *(undefined4 *)(param_2 + 0x90);
  iVar1 = (*Curl_cmalloc)(0x4000);
  if (iVar1 == 0) {
    inflateEnd(iVar6);
    *(undefined4 *)(param_2 + 0x8c) = 0;
    return 0x1b;
  }
  bVar7 = 1;
  do {
    *(int *)(param_2 + 0x9c) = iVar1;
    *(undefined4 *)(param_2 + 0xa0) = 0x4000;
    uVar2 = inflate(iVar6,2);
    if (uVar2 < 2) {
      if (((*(int *)(param_2 + 0xa0) != 0x4000) && (*(char *)(param_2 + 0xe1) == '\0')) &&
         (local_34 = Curl_client_write(param_1,1,iVar1,0x4000 - *(int *)(param_2 + 0xa0)),
         local_34 != 0)) {
        (*Curl_cfree)(iVar1);
        goto LAB_0062d362;
      }
      if (uVar2 == 1) {
        (*Curl_cfree)(iVar1);
        iVar1 = inflateEnd(iVar6);
        if (iVar1 == 0) {
          inflateEnd(iVar6);
          *(undefined4 *)(param_2 + 0x8c) = 0;
          return 0;
        }
        goto LAB_0062d31e;
      }
      if (*(int *)(param_2 + 0x94) == 0) {
        (*Curl_cfree)(iVar1);
        return 0;
      }
    }
    else {
      if (!(bool)(uVar2 == 0xfffffffd & bVar7)) {
        (*Curl_cfree)(iVar1);
        local_34 = FUN_0062d1dc(param_1,iVar6);
LAB_0062d362:
        inflateEnd(iVar6);
        *(undefined4 *)(param_2 + 0x8c) = 0;
        return local_34;
      }
      inflateEnd(iVar6);
      iVar3 = inflateInit2_(iVar6,0xfffffff1,"1.2.3",0x38);
      if (iVar3 != 0) {
        (*Curl_cfree)(iVar1);
LAB_0062d31e:
        iVar1 = FUN_0062d1dc(param_1,iVar6);
        inflateEnd(iVar6);
        *(undefined4 *)(param_2 + 0x8c) = 0;
        return iVar1;
      }
      *(undefined4 *)(param_2 + 0x90) = uVar5;
      *(undefined4 *)(param_2 + 0x94) = uVar4;
    }
    bVar7 = 0;
  } while( true );
}

// ---- FUN_0062d384  @ 0x62d384
undefined4 FUN_0062d384(int param_1,int param_2,int *param_3)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  char *pcVar7;
  
  bVar1 = *(byte *)(param_1 + 3);
  uVar5 = (uint)bVar1;
  if ((*(char *)(param_1 + 2) != '\b') || ((bVar1 & 0xe0) != 0)) {
    return 1;
  }
  iVar4 = param_2 + -10;
  pcVar6 = (char *)(param_1 + 10);
  if ((bVar1 & 4) != 0) {
    if ((iVar4 < 2) || (uVar3 = (uint)*(ushort *)(param_1 + 10), iVar4 <= (int)(uVar3 + 1))) {
      return 2;
    }
    iVar4 = iVar4 + (-2 - uVar3);
    pcVar6 = pcVar6 + uVar3 + 2;
  }
  if ((int)(uVar5 << 0x1c) < 0) {
    do {
      pcVar7 = pcVar6;
      if (iVar4 == 0) {
        return 2;
      }
      iVar4 = iVar4 + -1;
      pcVar6 = pcVar7 + 1;
    } while (*pcVar7 != '\0');
    pcVar6 = pcVar7 + 1;
  }
  if ((int)(uVar5 << 0x1b) < 0) {
    do {
      if (iVar4 == 0) {
        return 2;
      }
      cVar2 = *pcVar6;
      iVar4 = iVar4 + -1;
      pcVar6 = pcVar6 + 1;
    } while (cVar2 != '\0');
  }
  if ((int)(uVar5 << 0x1e) < 0) {
    if (iVar4 < 2) {
      return 2;
    }
    iVar4 = iVar4 + -2;
  }
  *param_3 = param_2 - iVar4;
  return 0;
}

// ---- FUN_0062d8b8  @ 0x62d8b8
void FUN_0062d8b8(int *param_1)

{
  if (*param_1 != 0) {
    (*Curl_cfree)();
  }
  *param_1 = 0;
  if (param_1[1] != 0) {
    (*Curl_cfree)();
  }
  param_1[1] = 0;
  if (param_1[2] != 0) {
    (*Curl_cfree)();
  }
  param_1[2] = 0;
  if (param_1[5] != 0) {
    (*Curl_cfree)();
  }
  param_1[5] = 0;
  if (param_1[6] != 0) {
    (*Curl_cfree)();
  }
  param_1[6] = 0;
  if (param_1[7] != 0) {
    (*Curl_cfree)();
  }
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[3] = 0;
  *(undefined1 *)(param_1 + 4) = 0;
  return;
}

// ---- FUN_0062d930  @ 0x62d930
void FUN_0062d930(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  int iVar2;
  
  iVar2 = 0;
  do {
    puVar1 = (undefined1 *)(param_1 + iVar2);
    iVar2 = iVar2 + 1;
    curl_msnprintf(param_2,3,&DAT_00812094,*puVar1,param_4);
    param_2 = param_2 + 2;
  } while (iVar2 != 0x10);
  return;
}

// ---- FUN_0062edca  @ 0x62edca
uint FUN_0062edca(uint param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  
  if (param_2 == 0 || param_1 == 0) {
    uVar2 = 1 - param_1;
    if (1 < param_1) {
      uVar2 = 0;
    }
    if (param_2 == 0) {
      uVar2 = uVar2 & 1;
    }
    else {
      uVar2 = 0;
    }
    return uVar2;
  }
  iVar1 = Curl_raw_equal();
  return (uint)(iVar1 != 0);
}

// ---- FUN_0062f434  @ 0x62f434
undefined8 FUN_0062f434(int param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *local_14;
  undefined4 uStack_10;
  
  puVar2 = *(undefined4 **)(param_1 + 0x390);
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = 0xffffffff;
  }
  local_14 = param_2;
  uStack_10 = param_3;
  time((time_t *)&local_14);
  if ((int)puVar2[10] < (int)local_14) {
    iVar1 = 0;
    puVar2[2] = 0xffffff9d;
    *puVar2 = 3;
  }
  else {
    if ((int)(puVar2[0xb] + puVar2[7]) < (int)local_14) {
      if (param_2 != (undefined4 *)0x0) {
        *param_2 = 7;
      }
      time(puVar2 + 0xb);
    }
    iVar1 = puVar2[10] - (int)local_14;
  }
  return CONCAT44(param_1,iVar1);
}

// ---- FUN_0062f480  @ 0x62f480
undefined4 FUN_0062f480(undefined4 *param_1,undefined4 param_2)

{
  undefined2 uVar1;
  short sVar2;
  ssize_t sVar3;
  undefined4 *puVar4;
  short sVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  
  uVar8 = *(undefined4 *)param_1[4];
  switch(param_2) {
  case 3:
    sVar2 = CONCAT11(*(undefined1 *)(param_1[0x52] + 2),*(undefined1 *)(param_1[0x52] + 3));
    sVar5 = *(short *)(param_1 + 0xc) + 1;
    if (sVar5 == sVar2) {
      *(short *)(param_1 + 0xc) = sVar5;
      param_1[6] = 0;
      *(undefined1 *)param_1[0x53] = 0;
      *(undefined1 *)(param_1[0x53] + 1) = 4;
      uVar1 = *(undefined2 *)(param_1 + 0xc);
      *(char *)(param_1[0x53] + 2) = (char)((ushort)uVar1 >> 8);
      *(char *)(param_1[0x53] + 3) = (char)uVar1;
      sVar3 = sendto(param_1[5],(void *)param_1[0x53],4,0x4000,(sockaddr *)(param_1 + 0x2d),
                     param_1[0x4d]);
      if (-1 < sVar3) {
        if (param_1[0x50] + 3 < (int)param_1[0x4e]) {
          uVar8 = 1;
        }
        else {
          uVar8 = 3;
        }
        goto LAB_0062f58a;
      }
      uVar7 = param_1[4];
      puVar4 = (undefined4 *)__errno();
      uVar7 = Curl_strerror(uVar7,*puVar4);
      goto LAB_0062f5f2;
    }
    Curl_infof(uVar8,"Received unexpected DATA packet block %d, expecting block %d\n",sVar2,sVar5,
               param_1,param_2);
    goto LAB_0062f650;
  default:
    uVar9 = 0x47;
    Curl_failf(uVar8,&DAT_0080c64d,"tftp_rx: internal error");
    break;
  case 5:
    uVar9 = 0;
    *(undefined1 *)param_1[0x53] = 0;
    *(undefined1 *)(param_1[0x53] + 1) = 5;
    uVar1 = *(undefined2 *)(param_1 + 0xc);
    *(char *)(param_1[0x53] + 2) = (char)((ushort)uVar1 >> 8);
    *(char *)(param_1[0x53] + 3) = (char)uVar1;
    sendto(param_1[5],(void *)param_1[0x53],4,0x4000,(sockaddr *)(param_1 + 0x2d),param_1[0x4d]);
    *param_1 = 3;
    break;
  case 6:
    *(undefined2 *)(param_1 + 0xc) = 0;
    param_1[6] = 0;
    *(undefined1 *)param_1[0x53] = 0;
    *(undefined1 *)(param_1[0x53] + 1) = 4;
    uVar1 = *(undefined2 *)(param_1 + 0xc);
    *(char *)(param_1[0x53] + 2) = (char)((ushort)uVar1 >> 8);
    *(char *)(param_1[0x53] + 3) = (char)uVar1;
    sVar3 = sendto(param_1[5],(void *)param_1[0x53],4,0x4000,(sockaddr *)(param_1 + 0x2d),
                   param_1[0x4d]);
    if (-1 < sVar3) {
      uVar8 = 1;
LAB_0062f58a:
      *param_1 = uVar8;
      time(param_1 + 0xb);
      return 0;
    }
    uVar7 = param_1[4];
    puVar4 = (undefined4 *)__errno();
    uVar7 = Curl_strerror(uVar7,*puVar4);
LAB_0062f5f2:
    uVar9 = 0x37;
    Curl_failf(uVar8,&DAT_0080c64d,uVar7);
    break;
  case 7:
    iVar6 = param_1[6];
    param_1[6] = iVar6 + 1;
    Curl_infof(uVar8,"Timeout waiting for block %d ACK.  Retries = %d\n",
               *(short *)(param_1 + 0xc) + 1,iVar6 + 1,param_1,param_2);
    if ((int)param_1[8] < (int)param_1[6]) {
      param_1[2] = 0xffffff9d;
      *param_1 = 3;
    }
    else {
      sVar3 = sendto(param_1[5],(void *)param_1[0x53],4,0x4000,(sockaddr *)(param_1 + 0x2d),
                     param_1[0x4d]);
      if (sVar3 < 0) {
        uVar7 = param_1[4];
        puVar4 = (undefined4 *)__errno();
        uVar7 = Curl_strerror(uVar7,*puVar4);
        goto LAB_0062f5f2;
      }
    }
LAB_0062f650:
    uVar9 = 0;
  }
  return uVar9;
}

// ---- FUN_0062f674  @ 0x62f674
undefined4 FUN_0062f674(uint *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint *puVar6;
  
  iVar4 = 1 - *param_1;
  if (1 < *param_1) {
    iVar4 = 0;
  }
  puVar6 = param_1;
  time((time_t *)(param_1 + 9));
  iVar1 = Curl_timeleft(*(undefined4 *)param_1[4],0,iVar4,(undefined4 *)param_1[4],puVar6,param_2);
  if (iVar1 < 0) {
    Curl_failf(*(undefined4 *)param_1[4],"Connection time-out");
    uVar2 = 0x1c;
  }
  else {
    if (iVar4 == 0) {
      iVar4 = 0xe10;
      if (iVar1 != 0) {
        iVar4 = __divsi3(iVar1 + 500,1000);
      }
      param_1[10] = param_1[9] + iVar4;
      uVar3 = __divsi3(iVar4,5);
      param_1[8] = uVar3;
    }
    else {
      iVar4 = __divsi3(iVar1 + 500,1000);
      param_1[10] = param_1[9] + iVar4;
      uVar3 = __divsi3(iVar4,5);
      param_1[8] = uVar3;
      if ((int)uVar3 < 1) {
        param_1[8] = 1;
      }
      uVar3 = __divsi3(iVar4,param_1[8]);
      param_1[7] = uVar3;
      if ((int)uVar3 < 1) {
        param_1[7] = 1;
      }
    }
    if ((int)param_1[8] < 3) {
      param_1[8] = 3;
    }
    if (0x32 < (int)param_1[8]) {
      param_1[8] = 0x32;
    }
    uVar5 = param_1[8];
    uVar3 = __divsi3(iVar4,uVar5);
    param_1[7] = uVar3;
    if ((int)uVar3 < 1) {
      param_1[7] = 1;
    }
    Curl_infof(*(undefined4 *)param_1[4],
               "set timeouts for state %d; Total %ld, retry %d maxtry %d\n",*param_1,
               param_1[10] - param_1[9],param_1[7],uVar5);
    time((time_t *)(param_1 + 0xb));
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0062f75c  @ 0x62f75c
int FUN_0062f75c(undefined4 *param_1,int param_2)

{
  undefined2 uVar1;
  ssize_t sVar2;
  undefined4 *puVar3;
  uint uVar4;
  char *pcVar5;
  uint uVar6;
  short sVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  
  iVar10 = *(int *)param_1[4];
  switch(param_2 + -4) {
  case 0:
  case 2:
    sVar7 = 1;
    if (param_2 == 4) {
      sVar7 = CONCAT11(*(undefined1 *)(param_1[0x52] + 2),*(undefined1 *)(param_1[0x52] + 3));
      if ((sVar7 != *(short *)(param_1 + 0xc)) && (sVar7 != -1 || *(short *)(param_1 + 0xc) != 0)) {
        Curl_infof(iVar10,"Received ACK for block %d, expecting %d\n");
        iVar8 = param_1[6];
        param_1[6] = iVar8 + 1;
        if ((int)param_1[8] < iVar8 + 1) {
          uVar4 = (uint)*(ushort *)(param_1 + 0xc);
          pcVar5 = "tftp_tx: giving up waiting for block %d ack";
        }
        else {
          sVar2 = sendto(param_1[5],(void *)param_1[0x53],param_1[0x4f] + 4,0x4000,
                         (sockaddr *)(param_1 + 0x2d),param_1[0x4d]);
          if (-1 < sVar2) {
            return 0;
          }
          uVar9 = param_1[4];
          puVar3 = (undefined4 *)__errno();
          uVar4 = Curl_strerror(uVar9,*puVar3);
          pcVar5 = "%s";
        }
        goto LAB_0062f916;
      }
      time(param_1 + 0xb);
      sVar7 = *(short *)(param_1 + 0xc) + 1;
    }
    *(short *)(param_1 + 0xc) = sVar7;
    param_1[6] = 0;
    *(undefined1 *)param_1[0x53] = 0;
    *(undefined1 *)(param_1[0x53] + 1) = 3;
    uVar1 = *(undefined2 *)(param_1 + 0xc);
    *(char *)(param_1[0x53] + 2) = (char)((ushort)uVar1 >> 8);
    *(char *)(param_1[0x53] + 3) = (char)uVar1;
    if ((1 < *(ushort *)(param_1 + 0xc)) && ((int)param_1[0x4f] < (int)param_1[0x50])) {
      *param_1 = 3;
      return 0;
    }
    iVar8 = Curl_fillreadbuffer(param_1[4],param_1[0x50],param_1 + 0x4f);
    if (iVar8 != 0) {
      return iVar8;
    }
    sVar2 = sendto(param_1[5],(void *)param_1[0x53],param_1[0x4f] + 4,0x4000,
                   (sockaddr *)(param_1 + 0x2d),param_1[0x4d]);
    if (-1 < sVar2) {
      uVar4 = param_1[0x4f];
      uVar6 = *(uint *)(iVar10 + 0x40);
      *(uint *)(iVar10 + 0x40) = uVar6 + uVar4;
      *(uint *)(iVar10 + 0x44) =
           *(int *)(iVar10 + 0x44) + ((int)uVar4 >> 0x1f) + (uint)CARRY4(uVar6,uVar4);
      Curl_pgrsSetUploadCounter(iVar10);
      return 0;
    }
    uVar9 = param_1[4];
    puVar3 = (undefined4 *)__errno();
    uVar4 = Curl_strerror(uVar9,*puVar3);
    pcVar5 = "%s";
LAB_0062f916:
    Curl_failf(iVar10,pcVar5,uVar4);
    return 0x37;
  case 1:
    *param_1 = 3;
    *(undefined1 *)param_1[0x53] = 0;
    *(undefined1 *)(param_1[0x53] + 1) = 5;
    uVar1 = *(undefined2 *)(param_1 + 0xc);
    *(char *)(param_1[0x53] + 2) = (char)((ushort)uVar1 >> 8);
    *(char *)(param_1[0x53] + 3) = (char)uVar1;
    sendto(param_1[5],(void *)param_1[0x53],4,0x4000,(sockaddr *)(param_1 + 0x2d),param_1[0x4d]);
    *param_1 = 3;
    return 0;
  case 3:
    param_1[6] = param_1[6] + 1;
    Curl_infof(iVar10,"Timeout waiting for block %d ACK.  Retries = %d\n",
               *(short *)(param_1 + 0xc) + 1);
    if ((int)param_1[8] < (int)param_1[6]) {
      param_1[2] = 0xffffff9d;
      *param_1 = 3;
    }
    else {
      sVar2 = sendto(param_1[5],(void *)param_1[0x53],param_1[0x4f] + 4,0x4000,
                     (sockaddr *)(param_1 + 0x2d),param_1[0x4d]);
      if (sVar2 < 0) {
        uVar9 = param_1[4];
        puVar3 = (undefined4 *)__errno();
        uVar4 = Curl_strerror(uVar9,*puVar3);
        pcVar5 = "%s";
        goto LAB_0062f916;
      }
      Curl_pgrsSetUploadCounter(iVar10);
    }
    break;
  default:
    Curl_failf(iVar10,"tftp_tx: internal error, event: %i",param_2,param_2 + -4,param_1,param_2);
  }
  return 0;
}

// ---- FUN_0062f99c  @ 0x62f99c
undefined4 FUN_0062f99c(int *param_1,undefined1 *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  Curl_reset_reqproto();
  puVar1 = (undefined4 *)(*Curl_ccalloc)(1,0x150);
  param_1[0xe4] = (int)puVar1;
  if (puVar1 == (undefined4 *)0x0) {
    return 0x1b;
  }
  iVar4 = *(int *)(*param_1 + 0x1cc);
  if (iVar4 == 0) {
    iVar4 = 0x200;
  }
  else if (0xffb0 < iVar4 - 8U) {
    return 0x47;
  }
  if (puVar1[0x52] == 0) {
    iVar2 = (*Curl_ccalloc)(1,iVar4 + 4);
    puVar1[0x52] = iVar2;
    if (iVar2 == 0) {
      return 0x1b;
    }
  }
  if (puVar1[0x53] == 0) {
    iVar2 = (*Curl_ccalloc)(1,iVar4 + 4);
    puVar1[0x53] = iVar2;
    if (iVar2 == 0) {
      return 0x1b;
    }
  }
  *(undefined1 *)(param_1 + 0x6e) = 1;
  puVar1[4] = param_1;
  iVar2 = param_1[0x4c];
  puVar1[0x51] = iVar4;
  puVar1[5] = iVar2;
  *puVar1 = 0;
  puVar1[2] = 0xffffff9c;
  puVar1[0x50] = 0x200;
  *(undefined2 *)(puVar1 + 0xd) = *(undefined2 *)(param_1[0xf] + 4);
  FUN_0062f674(puVar1);
  if (*(char *)((int)param_1 + 0x1cf) == '\0') {
    iVar4 = bind(puVar1[5],(sockaddr *)(puVar1 + 0xd),*(socklen_t *)(param_1[0xf] + 0x10));
    if (iVar4 != 0) {
      iVar4 = *param_1;
      puVar1 = (undefined4 *)__errno();
      uVar3 = Curl_strerror(param_1,*puVar1);
      Curl_failf(iVar4,"bind() failed; %s",uVar3);
      return 7;
    }
    *(undefined1 *)((int)param_1 + 0x1cf) = 1;
  }
  Curl_pgrsStartNow(*param_1);
  *param_2 = 1;
  return 0;
}

// ---- FUN_0062fb08  @ 0x62fb08
int FUN_0062fb08(int param_1,int param_2,char *param_3,char *param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_4);
  if (param_2 + 1 + sVar1 <= *(uint *)(param_1 + 0x140)) {
    strcpy(param_3,param_4);
    sVar1 = strlen(param_4);
    return sVar1 + 1;
  }
  return 0;
}

// ---- FUN_0062fb3c  @ 0x62fb3c
void FUN_0062fb3c(undefined4 *param_1,undefined4 param_2)

{
  char *__s;
  size_t sVar1;
  size_t sVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  char *pcVar7;
  int iVar8;
  char *pcVar9;
  undefined4 uVar10;
  char acStack_64 [64];
  int local_24;
  
  local_24 = __stack_chk_guard;
  iVar6 = *(int *)param_1[4];
  switch(*param_1) {
  case 0:
    if (*(char *)(iVar6 + 0x2ab) == '\0') {
      iVar5 = 0x62fb78;
    }
    else {
      iVar5 = 0x62fb7e;
    }
    break;
  case 1:
    goto LAB_0062fdf0;
  case 2:
LAB_0062fdf8:
    iVar5 = FUN_0062f75c(param_1,param_2);
    goto LAB_0062fe20;
  case 3:
    Curl_infof(iVar6,&DAT_0080e5d2,"TFTP finished");
    goto LAB_0062fe0c;
  default:
    Curl_failf(iVar6,&DAT_0080c64d,"Internal state machine error");
    iVar5 = 0x47;
    goto LAB_0062fe20;
  }
  pcVar7 = "_ZN8tinyxml28MemPoolTILi36EE4FreeEPv" + iVar5 + 0xc;
  switch(param_2) {
  case 0:
  case 7:
    iVar5 = param_1[6];
    param_1[6] = iVar5 + 1;
    if ((int)param_1[8] < iVar5 + 1) {
      param_1[2] = 0xffffff9e;
      goto switchD_0062fb82_caseD_5;
    }
    if (*(char *)(iVar6 + 0x2b9) == '\0') {
      *(undefined1 *)param_1[0x53] = 0;
      *(undefined1 *)(param_1[0x53] + 1) = 1;
    }
    else {
      *(undefined1 *)param_1[0x53] = 0;
      *(undefined1 *)(param_1[0x53] + 1) = 2;
      *(int *)(*(int *)param_1[4] + 0x108) = param_1[0x53] + 4;
      if (*(int *)(iVar6 + 0x1d0) != -1 || *(int *)(iVar6 + 0x1d4) != -1) {
        Curl_pgrsSetUploadSize(iVar6);
      }
    }
    __s = (char *)curl_easy_unescape(iVar6,*(int *)(*(int *)param_1[4] + 0x85fc) + 1,0,0);
    iVar5 = 0x1b;
    if (__s == (char *)0x0) goto LAB_0062fe20;
    iVar5 = 0;
    uVar10 = 0;
    pcVar9 = pcVar7;
    curl_msnprintf(param_1[0x53] + 2,param_1[0x50],"%s%c%s%c",__s,0,pcVar7,0);
    sVar1 = strlen(__s);
    sVar2 = strlen(pcVar7);
    iVar8 = sVar1 + sVar2 + 4;
    if (*(char *)(iVar6 + 0x2b9) == '\0') {
LAB_0062fc70:
      strcpy(acStack_64,"0");
    }
    else {
      iVar3 = *(int *)(iVar6 + 0x1d0);
      pcVar7 = *(char **)(iVar6 + 0x1d4);
      if (iVar3 == -1 && ~(uint)pcVar7 == 0) goto LAB_0062fc70;
      curl_msnprintf(acStack_64,0x40,&DAT_00813008,~(uint)pcVar7,iVar3,pcVar7,uVar10);
      iVar5 = iVar3;
      pcVar9 = pcVar7;
    }
    iVar3 = FUN_0062fb08(param_1,iVar8,param_1[0x53] + iVar8,"tsize");
    iVar3 = iVar3 + iVar8;
    iVar8 = FUN_0062fb08(param_1,iVar3,param_1[0x53] + iVar3,acStack_64);
    iVar3 = iVar3 + iVar8;
    curl_msnprintf(acStack_64,0x40,&DAT_0080095d,param_1[0x51],iVar5,pcVar9);
    iVar5 = FUN_0062fb08(param_1,iVar3,param_1[0x53] + iVar3,"blksize");
    iVar3 = iVar3 + iVar5;
    iVar5 = FUN_0062fb08(param_1,iVar3,param_1[0x53] + iVar3,acStack_64);
    iVar3 = iVar3 + iVar5;
    curl_msnprintf(acStack_64,0x40,&DAT_0080095d,param_1[7]);
    iVar5 = FUN_0062fb08(param_1,iVar3,param_1[0x53] + iVar3,"timeout");
    iVar3 = iVar3 + iVar5;
    iVar5 = FUN_0062fb08(param_1,iVar3,param_1[0x53] + iVar3,acStack_64);
    sVar1 = sendto(param_1[5],(void *)param_1[0x53],iVar3 + iVar5,0,
                   *(sockaddr **)(*(int *)(param_1[4] + 0x3c) + 0x18),
                   *(socklen_t *)(*(int *)(param_1[4] + 0x3c) + 0x10));
    if (sVar1 != iVar3 + iVar5) {
      uVar10 = param_1[4];
      puVar4 = (undefined4 *)__errno();
      uVar10 = Curl_strerror(uVar10,*puVar4);
      Curl_failf(iVar6,&DAT_0080c64d,uVar10);
    }
    (*Curl_cfree)(__s);
    break;
  default:
    Curl_failf(iVar6,"tftp_send_first: internal error");
    break;
  case 3:
    Curl_infof(iVar6,&DAT_0080e5d2,"Connected for receive");
    *param_1 = 1;
    iVar5 = FUN_0062f674(param_1);
    if (iVar5 != 0) goto LAB_0062fe20;
    param_2 = 3;
    goto LAB_0062fdf0;
  case 4:
    Curl_infof(iVar6,&DAT_0080e5d2,"Connected for transmit");
    *param_1 = 2;
    iVar5 = FUN_0062f674(param_1);
    if (iVar5 != 0) goto LAB_0062fe20;
    param_2 = 4;
    goto LAB_0062fdf8;
  case 5:
switchD_0062fb82_caseD_5:
    *param_1 = 3;
    break;
  case 6:
    if (*(char *)(iVar6 + 0x2b9) != '\0') {
      Curl_infof(iVar6,&DAT_0080e5d2,"Connected for transmit");
      *param_1 = 2;
      iVar5 = FUN_0062f674(param_1);
      if (iVar5 != 0) goto LAB_0062fe20;
      param_2 = 6;
      goto LAB_0062fdf8;
    }
    Curl_infof(iVar6,&DAT_0080e5d2,"Connected for receive");
    *param_1 = 1;
    iVar5 = FUN_0062f674(param_1);
    if (iVar5 != 0) goto LAB_0062fe20;
    param_2 = 6;
LAB_0062fdf0:
    iVar5 = FUN_0062f480(param_1,param_2);
    goto LAB_0062fe20;
  }
LAB_0062fe0c:
  iVar5 = 0;
LAB_0062fe20:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar5);
}

// ---- FUN_0062fe98  @ 0x62fe98
void FUN_0062fe98(int *param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  ssize_t sVar3;
  void *pvVar4;
  int iVar5;
  long lVar6;
  char *pcVar7;
  undefined4 extraout_r1;
  undefined1 *puVar8;
  char *pcVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  uint uVar13;
  char *__nptr;
  uint uVar14;
  size_t sVar15;
  uint uVar16;
  char *pcVar17;
  socklen_t local_b0;
  sockaddr asStack_ac [8];
  int local_2c;
  
  iVar11 = param_1[0xe4];
  iVar12 = *param_1;
  local_2c = __stack_chk_guard;
  local_b0 = 0x80;
  sVar3 = recvfrom(*(int *)(iVar11 + 0x14),*(void **)(iVar11 + 0x148),*(int *)(iVar11 + 0x140) + 4,0
                   ,asStack_ac,&local_b0);
  *(ssize_t *)(iVar11 + 0x138) = sVar3;
  if (*(int *)(iVar11 + 0x134) == 0) {
    memcpy((void *)(iVar11 + 0xb4),asStack_ac,local_b0);
    *(socklen_t *)(iVar11 + 0x134) = local_b0;
  }
  iVar10 = *(int *)(iVar11 + 0x138);
  if (iVar10 < 4) {
    iVar10 = 0;
    Curl_failf(iVar12,"Received too short packet");
    *(undefined4 *)(iVar11 + 0xc) = 7;
  }
  else {
    puVar8 = *(undefined1 **)(iVar11 + 0x148);
    uVar1 = *puVar8;
    uVar2 = puVar8[1];
    *(uint *)(iVar11 + 0xc) = (uint)CONCAT11(uVar1,uVar2);
    switch((uint)CONCAT11(uVar1,uVar2)) {
    case 3:
      if ((iVar10 != 4) && ((short)(*(short *)(iVar11 + 0x30) + 1) == CONCAT11(puVar8[2],puVar8[3]))
         ) {
        iVar10 = Curl_client_write(param_1,1,puVar8 + 4,iVar10 + -4);
        if (iVar10 != 0) {
          FUN_0062fb3c(iVar11,5);
          goto LAB_00630130;
        }
        uVar13 = *(uint *)(iVar12 + 0x38);
        uVar16 = *(int *)(iVar11 + 0x138) - 4;
        *(uint *)(iVar12 + 0x38) = uVar13 + uVar16;
        *(uint *)(iVar12 + 0x3c) =
             *(int *)(iVar12 + 0x3c) + ((int)uVar16 >> 0x1f) + (uint)CARRY4(uVar13,uVar16);
        Curl_pgrsSetDownloadCounter(iVar12);
      }
      break;
    case 4:
      break;
    case 5:
      *(uint *)(iVar11 + 8) = (uint)CONCAT11(puVar8[2],puVar8[3]);
      Curl_infof(iVar12,&DAT_0080e5d2,puVar8 + 4);
      break;
    case 6:
      pcVar9 = puVar8 + 2;
      iVar12 = **(int **)(iVar11 + 0x10);
      *(undefined4 *)(iVar11 + 0x140) = 0x200;
      pcVar7 = pcVar9;
      while (pcVar7 < pcVar9 + iVar10 + -2) {
        uVar13 = (int)(pcVar9 + iVar10 + -2) - (int)pcVar7;
        pvVar4 = memchr(pcVar7,0,uVar13);
        uVar16 = (int)pvVar4 - (int)pcVar7;
        if (pvVar4 == (void *)0x0) {
          uVar16 = uVar13;
        }
        uVar14 = uVar16 + 1;
        if (uVar13 <= uVar14) {
LAB_0063000a:
          iVar11 = 0x630010;
LAB_0063004a:
          Curl_failf(iVar12,"_ZN8tinyxml28DynArrayIPNS_8MemPoolTILi36EE5BlockELi10EE14EnsureCapacityEi"
                            + iVar11 + 0x17);
LAB_00630050:
          iVar10 = 0x47;
          goto LAB_00630130;
        }
        sVar15 = uVar13 - uVar14;
        pvVar4 = memchr(pcVar7 + uVar14,0,sVar15);
        if (pvVar4 != (void *)0x0) {
          sVar15 = (int)pvVar4 - (int)(pcVar7 + uVar14);
        }
        uVar16 = uVar16 + 2 + sVar15;
        if (uVar13 < uVar16) goto LAB_0063000a;
        sVar15 = strlen(pcVar7);
        pcVar17 = pcVar7 + uVar16;
        if (pcVar17 == (char *)0x0) goto LAB_0063000a;
        __nptr = pcVar7 + sVar15 + 1;
        Curl_infof(iVar12,"got option=(%s) value=(%s)\n",pcVar7,__nptr);
        sVar15 = strlen(pcVar7);
        iVar5 = Curl_raw_nequal(pcVar7,"blksize",sVar15);
        if (iVar5 == 0) {
          sVar15 = strlen(pcVar7);
          iVar5 = Curl_raw_nequal(pcVar7,"tsize",sVar15);
          pcVar7 = pcVar17;
          if (iVar5 != 0) {
            lVar6 = strtol(__nptr,(char **)0x0,10);
            Curl_infof(iVar12,"%s (%ld)\n","tsize parsed from OACK",lVar6);
            if (*(char *)(iVar12 + 0x2b9) == '\0') {
              if (lVar6 == 0) {
                Curl_failf(iVar12,"invalid tsize -:%s:- value in OACK packet",__nptr);
                goto LAB_00630050;
              }
              Curl_pgrsSetDownloadSize(iVar12,extraout_r1,lVar6,lVar6 >> 0x1f);
            }
          }
        }
        else {
          lVar6 = strtol(__nptr,(char **)0x0,10);
          if (lVar6 == 0) {
            iVar11 = 0x63004c;
            goto LAB_0063004a;
          }
          if (0xffb8 < lVar6) {
            lVar6 = 0xffb8;
            pcVar7 = "%s (%d)";
            pcVar9 = "blksize is larger than max supported";
LAB_0063007a:
            Curl_failf(iVar12,pcVar7,pcVar9,lVar6);
            goto LAB_00630050;
          }
          if (lVar6 < 8) {
            lVar6 = 8;
            pcVar7 = "%s (%d)";
            pcVar9 = "blksize is smaller than min supported";
            goto LAB_0063007a;
          }
          if (*(int *)(iVar11 + 0x144) < lVar6) {
            pcVar7 = "%s (%ld)";
            pcVar9 = "server requested blksize larger than allocated";
            goto LAB_0063007a;
          }
          *(long *)(iVar11 + 0x140) = lVar6;
          Curl_infof(iVar12,"%s (%d) %s (%d)\n","blksize parsed from OACK",lVar6,"requested",
                     *(int *)(iVar11 + 0x144));
          pcVar7 = pcVar17;
        }
      }
      break;
    default:
      Curl_failf(iVar12,&DAT_0080c64d,"Internal error: Unexpected packet");
    }
    iVar12 = Curl_pgrsUpdate(param_1);
    iVar10 = 0;
    if (iVar12 != 0) {
      FUN_0062fb3c(iVar11,5);
      iVar10 = 0x2a;
    }
  }
LAB_00630130:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar10);
}
