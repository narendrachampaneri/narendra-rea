// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 74 functions

// ---- FUN_006403fc  @ 0x6403fc
undefined4 FUN_006403fc(undefined4 *param_1,int param_2)

{
  char *pcVar1;
  
  if (1 < param_2) {
    pcVar1 = (char *)*param_1;
    if (*pcVar1 == '\0') {
      if (pcVar1[1] == '\0') {
        *param_1 = pcVar1 + 2;
        return 1;
      }
      return 0;
    }
  }
  return 0;
}

// ---- FUN_0064041c  @ 0x64041c
undefined4
FUN_0064041c(int *param_1,int *param_2,undefined1 *param_3,byte *param_4,byte *param_5,int *param_6,
            int param_7,int param_8,int param_9,char param_10,char *param_11)

{
  uint uVar1;
  undefined4 uVar2;
  uchar *puVar3;
  int local_38;
  int local_34;
  uchar *local_30;
  uchar *local_2c [2];
  
  puVar3 = (uchar *)*param_6;
  if ((param_11 == (char *)0x0) || (*param_11 == '\0')) {
    local_2c[0] = puVar3;
    uVar1 = ASN1_get_object(local_2c,(long *)&local_30,&local_38,&local_34,param_7);
    if (param_11 != (char *)0x0) {
      *(uint *)(param_11 + 4) = uVar1;
      *(int *)(param_11 + 0x10) = local_34;
      *(uchar **)(param_11 + 8) = local_30;
      *param_11 = '\x01';
      *(int *)(param_11 + 0xc) = local_38;
      *(int *)(param_11 + 0x14) = (int)local_2c[0] - (int)puVar3;
      if (((uVar1 & 0x81) == 0) && (param_7 < (int)(local_30 + ((int)local_2c[0] - (int)puVar3)))) {
        ERR_put_error(0xd,0x68,0x9b,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",0x511);
        *param_11 = '\0';
        return 0;
      }
    }
  }
  else {
    local_30 = *(uchar **)(param_11 + 8);
    uVar1 = *(uint *)(param_11 + 4);
    local_34 = *(int *)(param_11 + 0x10);
    local_38 = *(int *)(param_11 + 0xc);
    local_2c[0] = puVar3 + *(int *)(param_11 + 0x14);
  }
  if ((uVar1 & 0x80) == 0) {
    if (-1 < param_8) {
      if ((param_8 != local_38) || (param_9 != local_34)) {
        if (param_10 != '\0') {
          return 0xffffffff;
        }
        if (param_11 != (char *)0x0) {
          *param_11 = '\0';
        }
        ERR_put_error(0xd,0x68,0xa8,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",0x527);
        return 0;
      }
      if (param_11 != (char *)0x0) {
        *param_11 = '\0';
      }
    }
    if ((int)(uVar1 << 0x1f) < 0) {
      local_30 = puVar3 + (param_7 - (int)local_2c[0]);
    }
    if (param_4 != (byte *)0x0) {
      *param_4 = (byte)uVar1 & 1;
    }
    if (param_5 != (byte *)0x0) {
      *param_5 = (byte)uVar1 & 0x20;
    }
    if (param_1 != (int *)0x0) {
      *param_1 = (int)local_30;
    }
    if (param_3 != (undefined1 *)0x0) {
      *param_3 = (char)local_34;
    }
    if (param_2 != (int *)0x0) {
      *param_2 = local_38;
    }
    uVar2 = 1;
    *param_6 = (int)local_2c[0];
  }
  else {
    ERR_put_error(0xd,0x68,0x66,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",0x51a);
    uVar2 = 0;
    if (param_11 != (char *)0x0) {
      uVar2 = 0;
      *param_11 = '\0';
    }
  }
  return uVar2;
}

// ---- FUN_00640578  @ 0x640578
undefined4 FUN_00640578(BUF_MEM *param_1,int *param_2,int param_3,uint param_4,int param_5)

{
  void *pvVar1;
  size_t __n;
  int iVar2;
  size_t sVar3;
  int line;
  int iVar4;
  char local_32;
  undefined1 local_31;
  void *local_30;
  size_t local_2c [2];
  
  param_4 = param_4 & 1;
  local_30 = (void *)*param_2;
  if (param_1 != (BUF_MEM *)0x0 || param_4 != 0) {
    for (; pvVar1 = local_30, 0 < param_3; param_3 = (int)pvVar1 + (param_3 - (int)local_30)) {
      iVar2 = FUN_006403fc(&local_30,param_3);
      if (iVar2 != 0) {
        if (param_4 != 0) goto LAB_006406bc;
        iVar4 = 0x49c;
        iVar2 = 0x9f;
        goto LAB_006406b4;
      }
      iVar2 = FUN_0064041c(local_2c,0,0,&local_31,&local_32,&local_30,param_3,0xffffffff,0,0,0);
      __n = local_2c[0];
      if (iVar2 == 0) {
        ERR_put_error(0xd,0x6a,0x3a,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",0x4a6);
        return 0;
      }
      if (local_32 == '\0') {
        if (local_2c[0] != 0) {
          if (param_1 != (BUF_MEM *)0x0) {
            sVar3 = param_1->length;
            iVar2 = BUF_MEM_grow_clean(param_1,sVar3 + local_2c[0]);
            if (iVar2 == 0) {
              line = 0x4cc;
              iVar2 = 0x8c;
              iVar4 = 0x41;
              goto LAB_00640678;
            }
            memcpy(param_1->data + sVar3,local_30,__n);
          }
          local_30 = (void *)((int)local_30 + __n);
        }
      }
      else {
        if (4 < param_5) {
          line = 0x4b0;
          iVar2 = 0x6a;
          iVar4 = 0xc5;
LAB_00640678:
          ERR_put_error(0xd,iVar2,iVar4,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",line);
          return 0;
        }
        iVar2 = FUN_00640578(param_1,&local_30,local_2c[0],local_31,param_5 + 1);
        if (iVar2 == 0) {
          return 0;
        }
      }
    }
    if (param_4 != 0) {
      iVar4 = 0x4bd;
      iVar2 = 0x89;
LAB_006406b4:
      ERR_put_error(0xd,0x6a,iVar2,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar4);
      return 0;
    }
LAB_006406bc:
    *param_2 = (int)local_30;
  }
  else {
    *param_2 = (int)local_30 + param_3;
  }
  return 1;
}

// ---- FUN_00640900  @ 0x640900
undefined4
FUN_00640900(ASN1_VALUE **param_1,int *param_2,undefined4 param_3,ASN1_ITEM *param_4,int param_5,
            undefined4 param_6,char param_7,undefined1 *param_8)

{
  uchar *puVar1;
  int iVar2;
  uchar *puVar3;
  undefined4 uVar4;
  uchar *puVar5;
  int iVar6;
  char local_4c;
  char local_4b;
  char local_4a;
  char local_49;
  int local_48;
  uchar *local_44;
  uchar *local_40;
  int local_3c;
  uchar *local_38;
  BUF_MEM local_34;
  
  local_4a = '\0';
  if (param_1 == (ASN1_VALUE **)0x0) {
    ERR_put_error(0xd,0x6c,0x7d,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",0x30c);
    return 0;
  }
  if (param_4->itype == '\x05') {
    local_48 = param_5;
    param_5 = -1;
  }
  else {
    local_48 = param_4->utype;
  }
  if (local_48 == -4) {
    if (-1 < param_5) {
      iVar6 = 799;
      iVar2 = 0x7f;
LAB_0064097a:
      ERR_put_error(0xd,0x6c,iVar2,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar6);
      return 0;
    }
    if (param_7 != '\0') {
      iVar6 = 0x325;
      iVar2 = 0x7e;
      goto LAB_0064097a;
    }
    local_40 = (uchar *)*param_2;
    iVar2 = FUN_0064041c(0,&local_48,&local_38,0,0,&local_40,param_3,0xffffffff,0,0,param_8);
    if (iVar2 != 0) {
      if ((char)local_38 != '\0') {
        local_48 = -3;
      }
      goto LAB_006409c2;
    }
    iVar2 = 0x32e;
  }
  else {
LAB_006409c2:
    if (param_5 == -1) {
      param_6 = 0;
      param_5 = local_48;
    }
    local_40 = (uchar *)*param_2;
    iVar2 = FUN_0064041c(&local_44,0,0,&local_4b,&local_4c,&local_40,param_3,param_5,param_6,param_7
                         ,param_8);
    if (iVar2 != 0) {
      if (iVar2 == -1) {
        return 0xffffffff;
      }
      puVar5 = (uchar *)(uint)(local_48 == -3);
      if (local_48 - 0x10U < 2) {
        puVar5 = (uchar *)0x1;
      }
      if (puVar5 == (uchar *)0x0) {
        if (local_4c == '\0') {
          puVar5 = local_40;
          local_40 = local_40 + (int)local_44;
          goto LAB_00640b60;
        }
        local_34.length = (size_t)puVar5;
        local_34.data = (char *)puVar5;
        local_34.max = (size_t)puVar5;
        iVar2 = FUN_00640578(&local_34,&local_40,local_44,local_4b,0);
        local_44 = (uchar *)local_34.length;
        if (iVar2 != 0) {
          iVar2 = BUF_MEM_grow_clean(&local_34,(size_t)(local_34.length + 1));
          if (iVar2 == 0) {
            iVar2 = 0x37c;
            iVar6 = 0x41;
            goto LAB_00640b44;
          }
          local_34.data[(int)local_44] = '\0';
          local_4a = '\x01';
          puVar5 = (uchar *)local_34.data;
          goto LAB_00640b60;
        }
        local_4a = '\x01';
      }
      else {
        if ((uchar *)(uint)(local_48 == -3) == (uchar *)0x0) {
          if (local_4c == '\0') {
            iVar2 = 0x354;
            iVar6 = 0x9c;
            goto LAB_00640b44;
          }
        }
        else if (param_8 != (undefined1 *)0x0) {
          *param_8 = 0;
        }
        puVar5 = (uchar *)*param_2;
        if (local_4b != '\0') {
          local_49 = local_4b;
          iVar2 = 1;
          local_38 = local_40;
          puVar3 = local_44;
          while (0 < (int)puVar3) {
            iVar6 = FUN_006403fc(&local_38,puVar3);
            puVar1 = local_38;
            if (iVar6 == 0) {
              iVar6 = FUN_0064041c(&local_3c,0,0,&local_49,0,&local_38,puVar3,0xffffffff,0,0,0);
              if (iVar6 == 0) {
                iVar6 = 0x461;
                iVar2 = 0x3a;
                goto LAB_00640ba6;
              }
              if (local_49 == '\0') {
                local_38 = local_38 + local_3c;
              }
              else {
                iVar2 = iVar2 + 1;
              }
              puVar3 = puVar3 + ((int)puVar1 - (int)local_38);
            }
            else {
              iVar2 = iVar2 + -1;
              if (iVar2 == 0) {
                local_40 = local_38;
                local_44 = local_38 + -(int)puVar5;
                goto LAB_00640b60;
              }
              puVar3 = puVar3 + -2;
            }
          }
          iVar6 = 0x46c;
          iVar2 = 0x89;
LAB_00640ba6:
          ERR_put_error(0xd,0xbe,iVar2,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar6);
          uVar4 = 0;
          goto LAB_00640b80;
        }
        puVar3 = local_40 + (int)local_44;
        local_34.data = (char *)0x0;
        local_44 = local_44 + ((int)local_40 - (int)puVar5);
        local_40 = puVar3;
LAB_00640b60:
        iVar2 = asn1_ex_c2i(param_1,puVar5,(int)local_44,local_48,&local_4a,param_4);
        if (iVar2 != 0) {
          uVar4 = 1;
          *param_2 = (int)local_40;
          goto LAB_00640b80;
        }
      }
      uVar4 = 0;
LAB_00640b80:
      if ((local_4a != '\0') && ((uchar *)local_34.data != (uchar *)0x0)) {
        CRYPTO_free(local_34.data);
      }
      return uVar4;
    }
    iVar2 = 0x33f;
  }
  iVar6 = 0x3a;
LAB_00640b44:
  ERR_put_error(0xd,0x6c,iVar6,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar2);
  return 0;
}

// ---- FUN_00641194  @ 0x641194
undefined4
FUN_00641194(ASN1_VALUE **param_1,int *param_2,uchar *param_3,ASN1_TEMPLATE *param_4,char param_5,
            ASN1_TLC *param_6)

{
  uchar *puVar1;
  uint aclass;
  int iVar2;
  ASN1_VALUE *pAVar3;
  uint uVar4;
  long lVar5;
  int reason;
  _STACK *p_Var6;
  uchar *local_34 [2];
  char local_29;
  uchar *local_28;
  ASN1_VALUE *local_24;
  
  if (param_1 == (ASN1_VALUE **)0x0) {
    return 0;
  }
  uVar4 = param_4->flags;
  local_28 = (uchar *)*param_2;
  aclass = uVar4 & 0xc0;
  local_34[0] = param_3;
  if ((uVar4 & 6) == 0) {
    if ((uVar4 & 8) == 0) {
      iVar2 = ASN1_item_ex_d2i(param_1,&local_28,(long)param_3,param_4->item,-1,0,param_5,param_6);
      if (iVar2 != 0) goto LAB_0064135c;
      iVar2 = 0x2ef;
    }
    else {
      iVar2 = ASN1_item_ex_d2i(param_1,&local_28,(long)param_3,param_4->item,param_4->tag,aclass,
                               param_5,param_6);
      if (iVar2 != 0) {
LAB_0064135c:
        if (iVar2 == -1) {
          return 0xffffffff;
        }
LAB_00641360:
        *param_2 = (int)local_28;
        return 1;
      }
      iVar2 = 0x2e1;
    }
LAB_00641344:
    reason = 0x3a;
  }
  else {
    if ((uVar4 & 8) == 0) {
      if ((uVar4 & 2) == 0) {
        lVar5 = 0x10;
        aclass = 0;
      }
      else {
        aclass = 0;
        lVar5 = 0x11;
      }
    }
    else {
      lVar5 = param_4->tag;
    }
    iVar2 = FUN_0064041c(local_34,0,0,&local_29,0,&local_28,param_3,lVar5,aclass,param_5,param_6);
    if (iVar2 == 0) {
      ERR_put_error(0xd,0x83,0x3a,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",0x293);
      return 0;
    }
    if (iVar2 == -1) {
      return 0xffffffff;
    }
    p_Var6 = (_STACK *)*param_1;
    if (p_Var6 == (_STACK *)0x0) {
      p_Var6 = sk_new_null();
      *param_1 = (ASN1_VALUE *)p_Var6;
    }
    else {
      while (iVar2 = sk_num(p_Var6), 0 < iVar2) {
        local_24 = sk_pop(p_Var6);
        ASN1_item_ex_free(&local_24,param_4->item);
      }
    }
    if (*param_1 == (ASN1_VALUE *)0x0) {
      iVar2 = 0x2ab;
    }
    else {
      do {
        puVar1 = local_28;
        if ((int)local_34[0] < 1) {
LAB_006412e0:
          if (local_29 == '\0') goto LAB_00641360;
          iVar2 = 0x2d5;
          reason = 0x89;
          goto LAB_0064134c;
        }
        pAVar3 = (ASN1_VALUE *)FUN_006403fc(&local_28);
        if (pAVar3 != (ASN1_VALUE *)0x0) {
          if (local_29 != '\0') {
            local_34[0] = puVar1 + ((int)local_34[0] - (int)local_28);
            local_29 = '\0';
            goto LAB_006412e0;
          }
          iVar2 = 0x2ba;
          reason = 0x9f;
          goto LAB_0064134c;
        }
        local_24 = pAVar3;
        iVar2 = ASN1_item_ex_d2i(&local_24,&local_28,(long)local_34[0],param_4->item,-1,0,'\0',
                                 param_6);
        if (iVar2 == 0) {
          iVar2 = 0x2c7;
          goto LAB_00641344;
        }
        local_34[0] = puVar1 + ((int)local_34[0] - (int)local_28);
        iVar2 = sk_push((_STACK *)*param_1,local_24);
      } while (iVar2 != 0);
      iVar2 = 0x2cf;
    }
    reason = 0x41;
  }
LAB_0064134c:
  ERR_put_error(0xd,0x83,reason,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar2);
  ASN1_template_free(param_1,param_4);
  return 0;
}

// ---- FUN_00641394  @ 0x641394
undefined4
FUN_00641394(ASN1_VALUE **param_1,int *param_2,undefined4 param_3,ASN1_TEMPLATE *param_4,
            undefined1 param_5,undefined4 param_6)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  char local_2a;
  char local_29;
  int local_28;
  int local_24;
  
  if (param_1 == (ASN1_VALUE **)0x0) {
    return 0;
  }
  local_24 = *param_2;
  if (-1 < (int)(param_4->flags << 0x1b)) {
    uVar2 = FUN_00641194(param_1,param_2,param_3,param_4,param_5,param_6);
    return uVar2;
  }
  iVar1 = FUN_0064041c(&local_28,0,0,&local_2a,&local_29,&local_24,param_3,param_4->tag,
                       param_4->flags & 0xc0,param_5,param_6);
  iVar3 = local_24;
  if (iVar1 == 0) {
    iVar3 = 0x233;
  }
  else {
    if (iVar1 == -1) {
      return 0xffffffff;
    }
    if (local_29 == '\0') {
      iVar3 = 0x23b;
      iVar1 = 0x78;
      goto LAB_00641412;
    }
    iVar1 = FUN_00641194(param_1,&local_24,local_28,param_4,0,param_6);
    if (iVar1 != 0) {
      local_28 = (iVar3 - local_24) + local_28;
      if (local_2a == '\0') {
        if (local_28 == 0) goto LAB_006414a2;
        iVar1 = 0x259;
        iVar3 = 0x77;
      }
      else {
        iVar3 = FUN_006403fc(&local_24);
        if (iVar3 != 0) {
LAB_006414a2:
          *param_2 = local_24;
          return 1;
        }
        iVar1 = 0x24e;
        iVar3 = 0x89;
      }
      ERR_put_error(0xd,0x84,iVar3,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar1);
      ASN1_template_free(param_1,param_4);
      return 0;
    }
    iVar3 = 0x243;
  }
  iVar1 = 0x3a;
LAB_00641412:
  ERR_put_error(0xd,0x84,iVar1,"jni/../../openssl-android/crypto/asn1/tasn_dec.c",iVar3);
  return 0;
}

// ---- FUN_0064150e  @ 0x64150e
int FUN_0064150e(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  size_t __n;
  size_t sVar2;
  size_t sVar3;
  
  sVar2 = param_2[1];
  sVar3 = param_1[1];
  __n = sVar3;
  if ((int)sVar2 <= (int)sVar3) {
    __n = sVar2;
  }
  iVar1 = memcmp((void *)*param_1,(void *)*param_2,__n);
  if (iVar1 == 0) {
    iVar1 = sVar3 - sVar2;
  }
  return iVar1;
}

// ---- FUN_00641630  @ 0x641630
int FUN_00641630(ASN1_VALUE **param_1,uchar **param_2,ASN1_ITEM *param_3,int param_4,int param_5)

{
  bool bVar1;
  int length;
  int constructed;
  int local_2c [2];
  
  local_2c[0] = param_3->utype;
  length = asn1_ex_i2c(param_1,(uchar *)0x0,local_2c,param_3);
  if (length == -1) {
    length = 0;
  }
  else {
    if (length == -2) {
      constructed = 2;
      length = 0;
    }
    else {
      constructed = 0;
    }
    if (param_4 == -1) {
      param_4 = local_2c[0];
    }
    bVar1 = 1 < local_2c[0] - 0x10U && local_2c[0] != -3;
    if (param_2 != (uchar **)0x0) {
      if (bVar1) {
        ASN1_put_object(param_2,constructed,length,param_4,param_5);
      }
      asn1_ex_i2c(param_1,*param_2,local_2c,param_3);
      if (constructed == 0) {
        *param_2 = *param_2 + length;
      }
      else {
        ASN1_put_eoc(param_2);
      }
    }
    if (bVar1) {
      length = ASN1_object_size(constructed,length,param_4);
    }
  }
  return length;
}

// ---- FUN_00641934  @ 0x641934
int FUN_00641934(ASN1_VALUE **param_1,uchar **param_2,uint *param_3,uint param_4,uint param_5)

{
  int iVar1;
  undefined4 *__base;
  uchar *ptr;
  size_t __nmemb;
  ASN1_ITEM *it;
  uint aclass;
  _STACK *p_Var2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  int local_50;
  uint local_48;
  int local_44;
  uint local_40;
  ASN1_VALUE *local_34;
  ASN1_VALUE *local_30;
  uchar *local_2c [2];
  
  uVar4 = *param_3;
  if ((uVar4 & 0x18) == 0) {
    uVar7 = 0;
    if (param_4 != 0xffffffff) {
      uVar7 = param_5 & 0xc0;
    }
  }
  else {
    if (param_4 != 0xffffffff) {
      return -1;
    }
    uVar7 = uVar4 & 0xc0;
    param_4 = param_3[1];
  }
  aclass = param_5 & 0xffffff3f;
  if ((int)(uVar4 << 0x14) < 0) {
    if ((param_5 & 0x800) == 0) {
      iVar6 = 1;
    }
    else {
      iVar6 = 2;
    }
  }
  else {
    iVar6 = 1;
  }
  if ((uVar4 & 6) == 0) {
    if (-1 < (int)(uVar4 << 0x1b)) {
      iVar6 = ASN1_item_ex_i2d(param_1,param_2,(ASN1_ITEM *)param_3[4],param_4,uVar7 | aclass);
      return iVar6;
    }
    iVar3 = ASN1_item_ex_i2d(param_1,(uchar **)0x0,(ASN1_ITEM *)param_3[4],-1,aclass);
    if (iVar3 == 0) {
      return 0;
    }
    local_50 = ASN1_object_size(iVar6,iVar3,param_4);
    if (param_2 == (uchar **)0x0) {
      return local_50;
    }
    ASN1_put_object(param_2,iVar6,iVar3,param_4,uVar7);
    ASN1_item_ex_i2d(param_1,param_2,(ASN1_ITEM *)param_3[4],-1,aclass);
    if (iVar6 != 2) {
      return local_50;
    }
  }
  else {
    p_Var2 = (_STACK *)*param_1;
    if (p_Var2 == (_STACK *)0x0) {
      return 0;
    }
    if ((uVar4 & 2) == 0) {
      local_44 = 0;
    }
    else if ((uVar4 & 4) == 0) {
      local_44 = 1;
    }
    else {
      local_44 = 2;
    }
    if ((param_4 == 0xffffffff) || (local_48 = param_4, local_40 = uVar7, (int)(uVar4 << 0x1b) < 0))
    {
      if (local_44 == 0) {
        local_48 = 0x10;
      }
      else {
        local_48 = 0x11;
      }
      local_40 = 0;
    }
    iVar8 = 0;
    for (iVar3 = 0; iVar1 = sk_num(p_Var2), iVar3 < iVar1; iVar3 = iVar3 + 1) {
      local_34 = sk_value(p_Var2,iVar3);
      iVar1 = ASN1_item_ex_i2d(&local_34,(uchar **)0x0,(ASN1_ITEM *)param_3[4],-1,aclass);
      iVar8 = iVar8 + iVar1;
    }
    iVar3 = ASN1_object_size(iVar6,iVar8,local_48);
    uVar4 = uVar4 & 0x10;
    local_50 = iVar3;
    if (uVar4 != 0) {
      local_50 = ASN1_object_size(iVar6,iVar3,param_4);
    }
    if (param_2 == (uchar **)0x0) {
      return local_50;
    }
    if (uVar4 != 0) {
      ASN1_put_object(param_2,iVar6,iVar3,param_4,uVar7);
    }
    ASN1_put_object(param_2,iVar6,iVar8,local_48,local_40);
    it = (ASN1_ITEM *)param_3[4];
    local_2c[0] = (uchar *)0x0;
    if ((local_44 == 0) || (iVar3 = sk_num(p_Var2), iVar3 < 2)) {
      for (iVar3 = 0; iVar8 = sk_num(p_Var2), iVar3 < iVar8; iVar3 = iVar3 + 1) {
        local_30 = sk_value(p_Var2,iVar3);
        ASN1_item_ex_i2d(&local_30,param_2,it,-1,aclass);
      }
    }
    else {
      iVar3 = sk_num(p_Var2);
      __base = CRYPTO_malloc(iVar3 * 0xc,"jni/../../openssl-android/crypto/asn1/tasn_enc.c",0x1c7);
      ptr = CRYPTO_malloc(iVar8,"jni/../../openssl-android/crypto/asn1/tasn_enc.c",0x1c8);
      uVar7 = 1 - (int)__base;
      if ((undefined4 *)0x1 < __base) {
        uVar7 = 0;
      }
      if (ptr == (uchar *)0x0) {
        uVar7 = uVar7 | 1;
      }
      if (uVar7 == 0) {
        puVar5 = __base;
        iVar3 = 0;
        local_2c[0] = ptr;
        while( true ) {
          iVar8 = sk_num(p_Var2);
          if (iVar8 <= iVar3) break;
          local_30 = sk_value(p_Var2,iVar3);
          *puVar5 = local_2c[0];
          iVar8 = ASN1_item_ex_i2d(&local_30,local_2c,it,-1,aclass);
          puVar5[1] = iVar8;
          puVar5[2] = local_30;
          puVar5 = puVar5 + 3;
          iVar3 = iVar3 + 1;
        }
        __nmemb = sk_num(p_Var2);
        iVar3 = 0;
        qsort(__base,__nmemb,0xc,(__compar_fn_t)0x64150f);
        local_2c[0] = *param_2;
        puVar5 = __base;
        while( true ) {
          iVar8 = sk_num(p_Var2);
          if (iVar8 <= iVar3) break;
          iVar3 = iVar3 + 1;
          memcpy(local_2c[0],(void *)*puVar5,puVar5[1]);
          local_2c[0] = local_2c[0] + puVar5[1];
          puVar5 = puVar5 + 3;
        }
        *param_2 = local_2c[0];
        if (local_44 == 2) {
          puVar5 = __base;
          for (iVar3 = 0; iVar8 = sk_num(p_Var2), iVar3 < iVar8; iVar3 = iVar3 + 1) {
            sk_set(p_Var2,iVar3,(void *)puVar5[2]);
            puVar5 = puVar5 + 3;
          }
        }
        CRYPTO_free(__base);
        CRYPTO_free(ptr);
      }
    }
    if (iVar6 != 2) {
      return local_50;
    }
    ASN1_put_eoc(param_2);
    if (uVar4 == 0) {
      return local_50;
    }
  }
  ASN1_put_eoc(param_2);
  return local_50;
}

// ---- FUN_00641d66  @ 0x641d66
void FUN_00641d66(ASN1_VALUE **param_1,ASN1_ITEM *param_2,int param_3)

{
  int iVar1;
  ASN1_TEMPLATE *tt;
  ASN1_VALUE **ppAVar2;
  void *pvVar3;
  ASN1_TEMPLATE *pAVar4;
  code *pcVar5;
  
  pvVar3 = param_2->funcs;
  if (param_1 == (ASN1_VALUE **)0x0) {
    return;
  }
  if ((param_2->itype != '\0') && (*param_1 == (ASN1_VALUE *)0x0)) {
    return;
  }
  pcVar5 = (code *)0x0;
  if (pvVar3 != (void *)0x0) {
    pcVar5 = *(code **)((int)pvVar3 + 0x10);
  }
  switch(param_2->itype) {
  case '\0':
    if (param_2->templates != (ASN1_TEMPLATE *)0x0) {
      ASN1_template_free(param_1,param_2->templates);
      return;
    }
    goto LAB_00641dac;
  case '\x01':
  case '\x06':
    iVar1 = asn1_do_lock(param_1,-1,param_2);
    if ((iVar1 < 1) &&
       ((pcVar5 == (code *)0x0 || (iVar1 = (*pcVar5)(2,param_1,param_2,0), iVar1 != 2)))) {
      asn1_enc_free(param_1,param_2);
      pAVar4 = param_2->templates + param_2->tcount + -1;
      for (iVar1 = 0; iVar1 < param_2->tcount; iVar1 = iVar1 + 1) {
        tt = asn1_do_adb(param_1,pAVar4,0);
        if (tt != (ASN1_TEMPLATE *)0x0) {
          ppAVar2 = asn1_get_field_ptr(param_1,tt);
          ASN1_template_free(ppAVar2,tt);
        }
        pAVar4 = pAVar4 + -1;
      }
      if (pcVar5 != (code *)0x0) {
        (*pcVar5)(3,param_1,param_2,0);
      }
      if (param_3 == 0) {
        CRYPTO_free(*param_1);
        *param_1 = (ASN1_VALUE *)0x0;
      }
    }
    break;
  case '\x02':
    if ((pcVar5 == (code *)0x0) || (iVar1 = (*pcVar5)(2,param_1,param_2,0), iVar1 != 2)) {
      iVar1 = asn1_get_choice_selector(param_1,param_2);
      if ((-1 < iVar1) && (iVar1 < param_2->tcount)) {
        pAVar4 = param_2->templates;
        ppAVar2 = asn1_get_field_ptr(param_1,pAVar4 + iVar1);
        ASN1_template_free(ppAVar2,pAVar4 + iVar1);
      }
      if (pcVar5 != (code *)0x0) {
        (*pcVar5)(3,param_1,param_2,0);
      }
      if (param_3 == 0) {
        CRYPTO_free(*param_1);
        *param_1 = (ASN1_VALUE *)0x0;
        return;
      }
    }
    break;
  case '\x03':
    if ((pvVar3 != (void *)0x0) && (*(code **)((int)pvVar3 + 4) != (code *)0x0)) {
      (**(code **)((int)pvVar3 + 4))(*param_1);
      return;
    }
    break;
  case '\x04':
    if ((pvVar3 != (void *)0x0) && (*(code **)((int)pvVar3 + 8) != (code *)0x0)) {
      (**(code **)((int)pvVar3 + 8))(param_1,param_2);
      return;
    }
    break;
  case '\x05':
LAB_00641dac:
    ASN1_primitive_free(param_1,param_2);
    return;
  }
  return;
}

// ---- FUN_00641f14  @ 0x641f14
void FUN_00641f14(undefined4 *param_1,undefined1 *param_2)

{
  uint *puVar1;
  undefined4 uVar2;
  int iVar3;
  code *pcVar4;
  
LAB_00641f16:
  switch(*param_2) {
  case 0:
    break;
  case 1:
  case 2:
  case 3:
  case 6:
    *param_1 = 0;
    return;
  case 4:
    if ((*(int *)(param_2 + 0x10) != 0) &&
       (pcVar4 = *(code **)(*(int *)(param_2 + 0x10) + 0xc), pcVar4 != (code *)0x0))
    goto LAB_00641f5e;
LAB_00641f40:
    uVar2 = 0;
    goto LAB_00641f62;
  case 5:
    iVar3 = *(int *)(param_2 + 0x10);
    uVar2 = 0;
    if (iVar3 == 0) goto LAB_00641f62;
LAB_00641f5a:
    pcVar4 = *(code **)(iVar3 + 0x10);
    uVar2 = 0;
    if (pcVar4 != (code *)0x0) {
LAB_00641f5e:
      (*pcVar4)();
      return;
    }
LAB_00641f62:
    *param_1 = uVar2;
    return;
  default:
    return;
  }
  puVar1 = *(uint **)(param_2 + 8);
  if (puVar1 == (uint *)0x0) {
    iVar3 = *(int *)(param_2 + 0x10);
    if (iVar3 == 0) {
      uVar2 = 0;
      if (*(int *)(param_2 + 4) == 1) {
        uVar2 = *(undefined4 *)(param_2 + 0x14);
      }
      goto LAB_00641f62;
    }
    goto LAB_00641f5a;
  }
  if ((*puVar1 & 0x306) != 0) goto LAB_00641f40;
  param_2 = (undefined1 *)puVar1[4];
  goto LAB_00641f16;
}

// ---- FUN_00642208  @ 0x642208
bool FUN_00642208(BIO *param_1,int param_2,char *param_3,char *param_4,uint *param_5)

{
  int iVar1;
  uint uVar2;
  
  for (; 0x14 < param_2; param_2 = param_2 + -0x14) {
    iVar1 = BIO_write(param_1,s__00947374,0x14);
    if (iVar1 != 0x14) {
      return false;
    }
  }
  iVar1 = BIO_write(param_1,s__00947374,param_2);
  if (iVar1 == param_2) {
    if ((*param_5 & 0x100) != 0) {
      param_4 = (char *)0x0;
    }
    if ((*param_5 & 0x40) != 0) {
      param_3 = (char *)0x0;
    }
    uVar2 = 1 - (int)param_4;
    if ((char *)0x1 < param_4) {
      uVar2 = 0;
    }
    if (param_3 == (char *)0x0) {
      uVar2 = uVar2 & 1;
    }
    else {
      uVar2 = 0;
    }
    if (uVar2 == 0) {
      if ((param_3 != (char *)0x0) && (iVar1 = BIO_puts(param_1,param_3), iVar1 < 1)) {
        return false;
      }
      if (param_4 != (char *)0x0) {
        if (param_3 == (char *)0x0) {
          iVar1 = BIO_puts(param_1,param_4);
          if (iVar1 < 1) {
            return false;
          }
        }
        else {
          iVar1 = BIO_printf(param_1," (%s)",param_4);
          if (iVar1 < 1) {
            return false;
          }
        }
      }
      iVar1 = BIO_write(param_1,&DAT_0080ab20,2);
      return iVar1 == 2;
    }
    return true;
  }
  return false;
}

// ---- FUN_0064249c  @ 0x64249c
void FUN_0064249c(BIO *param_1,int *param_2,int param_3,ASN1_ITEM *param_4,int param_5,int param_6,
                 uint param_7,uint *param_8)

{
  bool bVar1;
  int iVar2;
  ASN1_TEMPLATE *tt;
  ASN1_VALUE **ppAVar3;
  int iVar4;
  char *pcVar5;
  ASN1_VALUE *pAVar6;
  ASN1_OBJECT *o;
  ASN1_INTEGER *a;
  ASN1_TEMPLATE *pAVar7;
  code *pcVar8;
  void *pvVar9;
  uint uVar10;
  BIO *local_88;
  int local_84;
  uint *local_80;
  char acStack_7c [80];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  pcVar8 = (code *)0x0;
  if ((param_4->funcs != (void *)0x0) &&
     (pcVar8 = *(code **)((int)param_4->funcs + 0x10), pcVar8 != (code *)0x0)) {
    local_80 = param_8;
    local_88 = param_1;
    local_84 = param_3;
  }
  if ((ASN1_VALUE *)*param_2 == (ASN1_VALUE *)0x0) {
    if (-1 < (int)(*param_8 << 0x1f)) goto LAB_006428ba;
    if ((param_7 == 0) &&
       (iVar2 = FUN_00642208(param_1,param_3,param_5,param_6,param_8), iVar2 == 0))
    goto LAB_006428bc;
    pcVar5 = "<ABSENT>\n";
    goto LAB_00642722;
  }
  switch(param_4->itype) {
  case '\0':
    if ((param_4->templates == (ASN1_TEMPLATE *)0x0) ||
       (iVar2 = asn1_template_print_ctx(param_1,param_2,param_3,param_4->templates,param_8),
       iVar2 != 0)) goto switchD_0064250c_caseD_5;
LAB_006428b2:
    param_7 = 0;
    goto LAB_006428bc;
  case '\x01':
  case '\x06':
    if ((param_7 == 0) &&
       (iVar2 = FUN_00642208(param_1,param_3,param_5,param_6,param_8), iVar2 == 0))
    goto LAB_006428bc;
    if (param_6 != 0 || param_5 != 0) {
      if ((*param_8 & 2) == 0) {
        iVar2 = BIO_puts(param_1,"\n");
        if (iVar2 < 1) {
          param_7 = 0;
          goto LAB_006428bc;
        }
      }
      else {
        iVar2 = BIO_puts(param_1," {\n");
        if (iVar2 < 1) goto LAB_006428b6;
      }
    }
    if (pcVar8 != (code *)0x0) {
      iVar2 = (*pcVar8)(8,param_2,param_4,&local_88);
      if (iVar2 == 0) goto LAB_006428b2;
      if (iVar2 == 2) break;
    }
    pAVar7 = param_4->templates;
    for (iVar2 = 0; iVar2 < param_4->tcount; iVar2 = iVar2 + 1) {
      tt = asn1_do_adb((ASN1_VALUE **)param_2,pAVar7,1);
      ppAVar3 = asn1_get_field_ptr((ASN1_VALUE **)param_2,tt);
      iVar4 = asn1_template_print_ctx(param_1,ppAVar3,param_3 + 2,tt,param_8);
      if (iVar4 == 0) goto LAB_006428b2;
      pAVar7 = pAVar7 + 1;
    }
    if (((int)(*param_8 << 0x1e) < 0) &&
       (iVar2 = BIO_printf(param_1,"%*s}\n",param_3,&DAT_00801f93), iVar2 < 0)) goto LAB_006428b6;
    if (pcVar8 != (code *)0x0) {
      iVar2 = (*pcVar8)(9,param_2,param_4,&local_88);
      goto LAB_0064289a;
    }
    break;
  case '\x02':
    param_6 = asn1_get_choice_selector((ASN1_VALUE **)param_2,param_4);
    if ((-1 < param_6) && (param_6 < param_4->tcount)) {
      pAVar7 = param_4->templates;
      ppAVar3 = asn1_get_field_ptr((ASN1_VALUE **)param_2,pAVar7 + param_6);
      iVar2 = asn1_template_print_ctx(param_1,ppAVar3,param_3,pAVar7 + param_6,param_8);
LAB_0064289a:
      param_7 = (uint)(iVar2 != 0);
      goto LAB_006428bc;
    }
    pcVar5 = "ERROR: selector [%d] invalid\n";
LAB_0064279c:
    iVar2 = BIO_printf(param_1,pcVar5,param_6);
    goto LAB_00642728;
  default:
    BIO_printf(param_1,"Unprocessed type %d\n");
    goto LAB_006428b6;
  case '\x04':
    if ((param_7 == 0) &&
       (iVar2 = FUN_00642208(param_1,param_3,param_5,param_6,param_8), iVar2 == 0))
    goto LAB_006428bc;
    if ((param_4->funcs == (void *)0x0) ||
       (pcVar8 = *(code **)((int)param_4->funcs + 0x18), pcVar8 == (code *)0x0)) {
      if (param_6 != 0) {
        pcVar5 = ":EXTERNAL TYPE %s\n";
        goto LAB_0064279c;
      }
    }
    else {
      iVar2 = (*pcVar8)(param_1,param_2,param_3,&DAT_00801f93,param_8);
      if (iVar2 == 0) goto LAB_006428b2;
      if (iVar2 == 2) {
        pcVar5 = "\n";
        goto LAB_00642722;
      }
    }
    break;
  case '\x05':
switchD_0064250c_caseD_5:
    pvVar9 = param_4->funcs;
    iVar2 = FUN_00642208(param_1,param_3,param_5,param_6,param_8);
    if (iVar2 == 0) goto LAB_006428b2;
    if ((pvVar9 != (void *)0x0) && (pcVar8 = *(code **)((int)pvVar9 + 0x1c), pcVar8 != (code *)0x0))
    {
      iVar2 = (*pcVar8)(param_1,param_2,param_4,param_3,param_8);
      goto LAB_0064289a;
    }
    a = (ASN1_INTEGER *)*param_2;
    if (param_4->itype == '\x05') {
      uVar10 = a->type & 0xfffffeff;
    }
    else {
      uVar10 = param_4->utype;
    }
    if (uVar10 == 0xfffffffc) {
      param_2 = &a->type;
      uVar10 = a->length;
      a = (ASN1_INTEGER *)a->type;
      if ((int)(*param_8 << 0x1b) < 0) {
        pcVar5 = (char *)0x0;
      }
      else {
LAB_00642596:
        pcVar5 = ASN1_tag2str(uVar10);
      }
    }
    else {
      pcVar5 = (char *)0x0;
      if ((*param_8 & 8) != 0) goto LAB_00642596;
    }
    if (uVar10 == 5) {
      pcVar5 = "NULL\n";
      goto LAB_00642722;
    }
    if ((pcVar5 != (char *)0x0) &&
       ((iVar2 = BIO_puts(param_1,pcVar5), iVar2 < 1 || (iVar2 = BIO_puts(param_1,":"), iVar2 < 1)))
       ) goto LAB_006428b6;
    switch(uVar10) {
    case 1:
      pAVar6 = (ASN1_VALUE *)*param_2;
      if ((pAVar6 == (ASN1_VALUE *)0xffffffff) &&
         (pAVar6 = (ASN1_VALUE *)param_4->size, pAVar6 == (ASN1_VALUE *)0xffffffff)) {
        pcVar5 = "BOOL ABSENT";
      }
      else if (pAVar6 == (ASN1_VALUE *)0x0) {
        pcVar5 = "FALSE";
      }
      else {
        pcVar5 = "TRUE";
      }
      iVar2 = BIO_puts(param_1,pcVar5);
      goto LAB_00642688;
    case 2:
    case 10:
      pcVar5 = i2s_ASN1_INTEGER((X509V3_EXT_METHOD *)0x0,a);
      iVar2 = BIO_puts(param_1,pcVar5);
      uVar10 = (uint)(0 < iVar2);
      CRYPTO_free(pcVar5);
      break;
    case 3:
    case 4:
      if (a->type == 3) {
        iVar2 = BIO_printf(param_1," (%ld unused bits)\n",a->flags & 7);
      }
      else {
        iVar2 = BIO_puts(param_1,"\n");
      }
      if (iVar2 < 1) {
        uVar10 = 0;
      }
      else if (a->length < 1) {
        uVar10 = 1;
      }
      else {
        iVar2 = BIO_dump_indent(param_1,(char *)a->data,a->length,param_3 + 2);
        uVar10 = (uint)(0 < iVar2);
      }
      bVar1 = false;
      goto LAB_00642712;
    case 6:
      o = (ASN1_OBJECT *)*param_2;
      iVar2 = OBJ_obj2nid(o);
      pcVar5 = OBJ_nid2ln(iVar2);
      if (pcVar5 == (char *)0x0) {
        pcVar5 = "";
      }
      OBJ_obj2txt(acStack_7c,0x50,o,1);
      iVar2 = BIO_printf(param_1,"%s (%s)",pcVar5,acStack_7c);
LAB_00642688:
      if (iVar2 < 1) {
LAB_006428b6:
        param_7 = 0;
        goto LAB_006428bc;
      }
      goto LAB_0064271e;
    case 0x17:
      uVar10 = ASN1_UTCTIME_print(param_1,a);
      break;
    case 0x18:
      uVar10 = ASN1_GENERALIZEDTIME_print(param_1,a);
      break;
    case 0xfffffffd:
    case 0x10:
    case 0x11:
      param_7 = 0;
      iVar2 = BIO_puts(param_1,"\n");
      if ((iVar2 < 1) || (iVar2 = ASN1_parse_dump(param_1,a->data,a->length,param_3,0), iVar2 < 1))
      goto LAB_006428bc;
      goto LAB_006428ba;
    default:
      uVar10 = ASN1_STRING_print_ex(param_1,a,param_8[4]);
    }
    bVar1 = true;
LAB_00642712:
    param_7 = 0;
    if (uVar10 == 0) goto LAB_006428bc;
    if (bVar1) {
LAB_0064271e:
      pcVar5 = "\n";
LAB_00642722:
      iVar2 = BIO_puts(param_1,pcVar5);
LAB_00642728:
      param_7 = (uint)(0 < iVar2);
      goto LAB_006428bc;
    }
  }
LAB_006428ba:
  param_7 = 1;
LAB_006428bc:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_7);
}

// ---- FUN_00642e64  @ 0x642e64
int FUN_00642e64(int *param_1,int param_2)

{
  int iVar1;
  
  if (param_1 != (int *)0x0) {
    if (*param_1 == 0) {
      return 0;
    }
    iVar1 = *(int *)(param_2 + 0x10);
    if ((iVar1 != 0) && ((*(uint *)(iVar1 + 4) & 2) != 0)) {
      return *param_1 + *(int *)(iVar1 + 0x14);
    }
  }
  return 0;
}

// ---- FUN_006431da  @ 0x6431da
int FUN_006431da(undefined4 *param_1,uchar *param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  BIGNUM *a;
  uchar *to;
  
  a = (BIGNUM *)*param_1;
  if (a == (BIGNUM *)0x0) {
    return -1;
  }
  uVar1 = BN_num_bits(a);
  uVar1 = (uint)((uVar1 & 7) == 0);
  if (param_2 != (uchar *)0x0) {
    to = param_2;
    if (uVar1 != 0) {
      to = param_2 + 1;
      *param_2 = '\0';
    }
    BN_bn2bin(a,to);
  }
  iVar2 = BN_num_bits(a);
  iVar3 = iVar2 + 7;
  if (iVar2 + 7 < 0) {
    iVar3 = iVar2 + 0xe;
  }
  return uVar1 + (iVar3 >> 3);
}

// ---- FUN_00643220  @ 0x643220
void FUN_00643220(undefined4 *param_1,int param_2)

{
  BIGNUM *a;
  
  a = (BIGNUM *)*param_1;
  if (a != (BIGNUM *)0x0) {
    if (*(int *)(param_2 + 0x14) << 0x1f < 0) {
      BN_clear_free(a);
    }
    else {
      BN_free(a);
    }
    *param_1 = 0;
  }
  return;
}

// ---- FUN_00643284  @ 0x643284
void FUN_00643284(undefined4 *param_1,EVP_PKEY *param_2)

{
  ASN1_item_verify((ASN1_ITEM *)X509_CRL_INFO_it,(X509_ALGOR *)param_1[1],
                   (ASN1_BIT_STRING *)param_1[2],(void *)*param_1,param_2);
  return;
}

// ---- FUN_006432a0  @ 0x6432a0
undefined4 FUN_006432a0(int *param_1,undefined4 *param_2,ASN1_INTEGER *param_3,X509_NAME *param_4)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  X509_NAME *a;
  ASN1_INTEGER *local_40 [7];
  
  local_40[0] = param_3;
  iVar1 = sk_is_sorted(*(_STACK **)(*param_1 + 0x14));
  if (iVar1 == 0) {
    CRYPTO_lock(9,6,"jni/../../openssl-android/crypto/asn1/x_crl.c",0x1c7);
    sk_sort(*(_STACK **)(*param_1 + 0x14));
    CRYPTO_lock(10,6,"jni/../../openssl-android/crypto/asn1/x_crl.c",0x1c9);
  }
  iVar1 = sk_find(*(_STACK **)(*param_1 + 0x14),local_40);
  if (-1 < iVar1) {
    for (; iVar5 = sk_num(*(_STACK **)(*param_1 + 0x14)), iVar1 < iVar5; iVar1 = iVar1 + 1) {
      puVar2 = sk_value(*(_STACK **)(*param_1 + 0x14),iVar1);
      iVar5 = ASN1_INTEGER_cmp((ASN1_INTEGER *)*puVar2,param_3);
      if (iVar5 != 0) {
        return 0;
      }
      if (puVar2[3] == 0) {
        if ((param_4 == (X509_NAME *)0x0) ||
           (iVar5 = X509_NAME_cmp(param_4,*(X509_NAME **)(*param_1 + 8)), iVar5 == 0)) {
LAB_0064335a:
          if (param_2 != (undefined4 *)0x0) {
            *param_2 = puVar2;
          }
          if (puVar2[4] != 8) {
            return 1;
          }
          return 2;
        }
      }
      else {
        a = param_4;
        if (param_4 == (X509_NAME *)0x0) {
          a = *(X509_NAME **)(*param_1 + 8);
        }
        for (iVar5 = 0; iVar4 = sk_num((_STACK *)puVar2[3]), iVar5 < iVar4; iVar5 = iVar5 + 1) {
          piVar3 = sk_value((_STACK *)puVar2[3],iVar5);
          if ((*piVar3 == 4) && (iVar4 = X509_NAME_cmp(a,(X509_NAME *)piVar3[1]), iVar4 == 0))
          goto LAB_0064335a;
        }
      }
    }
  }
  return 0;
}

// ---- FUN_00643a3c  @ 0x643a3c
int FUN_00643a3c(_STACK *param_1,uchar **param_2,undefined4 param_3,ASN1_VALUE *param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  ASN1_VALUE *local_1c;
  
  iVar2 = 0;
  iVar3 = 0;
  local_1c = param_4;
  while( true ) {
    iVar1 = sk_num(param_1);
    if (iVar1 <= iVar3) {
      return iVar2;
    }
    local_1c = sk_value(param_1,iVar3);
    iVar1 = ASN1_item_ex_i2d(&local_1c,param_2,(ASN1_ITEM *)X509_NAME_ENTRIES_it,-1,-1);
    if (iVar1 < 0) break;
    iVar2 = iVar2 + iVar1;
    iVar3 = iVar3 + 1;
  }
  return iVar1;
}

// ---- FUN_00643aa0  @ 0x643aa0
void FUN_00643aa0(undefined4 *param_1)

{
  undefined4 *ptr;
  
  if ((param_1 != (undefined4 *)0x0) && (ptr = (undefined4 *)*param_1, ptr != (undefined4 *)0x0)) {
    BUF_MEM_free((BUF_MEM *)ptr[2]);
    sk_pop_free((_STACK *)*ptr,(func *)0x643b39);
    if ((void *)ptr[3] != (void *)0x0) {
      CRYPTO_free((void *)ptr[3]);
    }
    CRYPTO_free(ptr);
    *param_1 = 0;
  }
  return;
}

// ---- FUN_00643ad4  @ 0x643ad4
undefined8 FUN_00643ad4(undefined4 *param_1)

{
  undefined4 *ptr;
  _STACK *p_Var1;
  BUF_MEM *pBVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  
  puVar4 = param_1;
  ptr = CRYPTO_malloc(0x14,"jni/../../openssl-android/crypto/asn1/x_name.c",0x87);
  if (ptr != (undefined4 *)0x0) {
    p_Var1 = sk_new_null();
    *ptr = p_Var1;
    if (p_Var1 != (_STACK *)0x0) {
      pBVar2 = BUF_MEM_new();
      ptr[2] = pBVar2;
      if (pBVar2 != (BUF_MEM *)0x0) {
        uVar3 = 1;
        ptr[3] = 0;
        ptr[4] = 0;
        ptr[1] = 1;
        *param_1 = ptr;
        goto LAB_00643b2c;
      }
    }
  }
  puVar4 = (undefined4 *)0x93;
  ERR_put_error(0xd,0xab,0x41,"jni/../../openssl-android/crypto/asn1/x_name.c",0x93);
  uVar3 = 0;
  if (ptr != (undefined4 *)0x0) {
    if ((_STACK *)*ptr != (_STACK *)0x0) {
      sk_free((_STACK *)*ptr);
    }
    CRYPTO_free(ptr);
    uVar3 = 0;
  }
LAB_00643b2c:
  return CONCAT44(puVar4,uVar3);
}

// ---- FUN_00643b78  @ 0x643b78
undefined8 FUN_00643b78(undefined4 *param_1,void *param_2,undefined4 param_3)

{
  _STACK *st;
  undefined4 *puVar1;
  X509_NAME_ENTRY *a;
  ASN1_OBJECT *pAVar2;
  ulong uVar3;
  int iVar4;
  byte *pbVar5;
  byte *pbVar6;
  int iVar7;
  byte *pbVar8;
  ASN1_STRING *dst;
  _STACK *st_00;
  undefined4 uVar9;
  int iVar10;
  ASN1_STRING *in;
  int iVar11;
  byte bVar12;
  void *local_2c;
  undefined4 uStack_28;
  
  local_2c = param_2;
  uStack_28 = param_3;
  st = sk_new_null();
  uVar9 = 0;
  if (st != (_STACK *)0x0) {
    iVar11 = -1;
    st_00 = (_STACK *)0x0;
    for (iVar10 = 0; iVar4 = sk_num((_STACK *)*param_1), iVar10 < iVar4; iVar10 = iVar10 + 1) {
      puVar1 = sk_value((_STACK *)*param_1,iVar10);
      if (puVar1[2] != iVar11) {
        st_00 = sk_new_null();
        uVar9 = 0;
        if (st_00 == (_STACK *)0x0) goto LAB_00643d40;
        iVar11 = sk_push(st,st_00);
        if (iVar11 == 0) goto LAB_00643d3e;
        iVar11 = puVar1[2];
      }
      a = X509_NAME_ENTRY_new();
      pAVar2 = OBJ_dup((ASN1_OBJECT *)*puVar1);
      dst = a->value;
      a->object = pAVar2;
      in = (ASN1_STRING *)puVar1[1];
      uVar3 = ASN1_tag2bit(in->type);
      if ((uVar3 & 0x2956) != 0) {
        dst->type = 0xc;
        iVar4 = ASN1_STRING_to_UTF8(&dst->data,in);
        dst->length = iVar4;
        if (iVar4 != -1) {
          pbVar8 = dst->data;
          for (; 0 < iVar4; iVar4 = iVar4 + -1) {
            if (((*pbVar8 & 0x80) != 0) || ((*(byte *)((uint)*pbVar8 + _ctype_ + 1) & 8) == 0))
            break;
            pbVar8 = pbVar8 + 1;
          }
          pbVar6 = pbVar8 + iVar4 + -1;
          for (; 0 < iVar4; iVar4 = iVar4 + -1) {
            if (((*pbVar6 & 0x80) != 0) || ((*(byte *)((uint)*pbVar6 + _ctype_ + 1) & 8) == 0))
            break;
            pbVar6 = pbVar6 + -1;
          }
          iVar7 = 0;
          pbVar6 = dst->data;
LAB_00643cce:
          pbVar5 = pbVar6 + 1;
          if (iVar7 < iVar4) {
            bVar12 = *pbVar8;
            if ((bVar12 & 0x80) == 0) {
              if ((*(byte *)(_ctype_ + (uint)bVar12 + 1) & 8) != 0) {
                *pbVar6 = 0x20;
                do {
                  pbVar8 = pbVar8 + 1;
                  iVar7 = iVar7 + 1;
                  pbVar6 = pbVar5;
                  if ((*pbVar8 & 0x80) != 0) break;
                } while ((*(byte *)((uint)*pbVar8 + _ctype_ + 1) & 8) != 0);
                goto LAB_00643cce;
              }
              bVar12 = (byte)*(undefined2 *)(_tolower_tab_ + (bVar12 + 1) * 2);
            }
            pbVar8 = pbVar8 + 1;
            iVar7 = iVar7 + 1;
            *pbVar6 = bVar12;
            pbVar6 = pbVar5;
            goto LAB_00643cce;
          }
          dst->length = (int)pbVar6 - (int)dst->data;
          goto LAB_00643d30;
        }
LAB_00643d18:
        uVar9 = 0;
        X509_NAME_ENTRY_free(a);
        goto LAB_00643d20;
      }
      iVar4 = ASN1_STRING_copy(dst,in);
      if (iVar4 == 0) goto LAB_00643d18;
LAB_00643d30:
      iVar4 = sk_push(st_00,a);
      if (iVar4 == 0) goto LAB_00643d18;
    }
    iVar10 = FUN_00643a3c(st,0);
    param_1[4] = iVar10;
    local_2c = CRYPTO_malloc(iVar10,"jni/../../openssl-android/crypto/asn1/x_name.c",0x16d);
    if (local_2c == (void *)0x0) {
LAB_00643d3e:
      uVar9 = 0;
    }
    else {
      param_1[3] = local_2c;
      uVar9 = 1;
      FUN_00643a3c(st,&local_2c);
    }
LAB_00643d40:
    if (st != (_STACK *)0x0) {
LAB_00643d20:
      sk_pop_free(st,(func *)&LAB_00643a8c_1);
    }
  }
  return CONCAT44(param_1,uVar9);
}

// ---- FUN_00643d58  @ 0x643d58
size_t FUN_00643d58(undefined4 *param_1,int *param_2)

{
  void *data;
  int iVar1;
  size_t sVar2;
  int iVar3;
  _STACK *st;
  int iVar4;
  _STACK *local_28;
  uchar *local_24 [2];
  
  param_1 = (undefined4 *)*param_1;
  if (param_1[1] == 0) {
LAB_00643e58:
    sVar2 = *(size_t *)param_1[2];
    if (param_2 != (int *)0x0) {
      memcpy((void *)*param_2,(void *)((size_t *)param_1[2])[1],sVar2);
      *param_2 = *param_2 + sVar2;
    }
  }
  else {
    iVar3 = 0;
    local_28 = (_STACK *)0x0;
    local_28 = sk_new_null();
    if (local_28 != (_STACK *)0x0) {
      iVar4 = -1;
      st = (_STACK *)0x0;
      for (; iVar1 = sk_num((_STACK *)*param_1), iVar3 < iVar1; iVar3 = iVar3 + 1) {
        data = sk_value((_STACK *)*param_1,iVar3);
        if (*(int *)((int)data + 8) != iVar4) {
          st = sk_new_null();
          if ((st == (_STACK *)0x0) || (iVar4 = sk_push(local_28,st), iVar4 == 0))
          goto LAB_00643e12;
          iVar4 = *(int *)((int)data + 8);
        }
        iVar1 = sk_push(st,data);
        if (iVar1 == 0) goto LAB_00643e12;
      }
      sVar2 = ASN1_item_ex_i2d((ASN1_VALUE **)&local_28,(uchar **)0x0,
                               (ASN1_ITEM *)X509_NAME_INTERNAL_it,-1,-1);
      iVar3 = BUF_MEM_grow((BUF_MEM *)param_1[2],sVar2);
      if (iVar3 != 0) {
        local_24[0] = *(uchar **)(param_1[2] + 4);
        ASN1_item_ex_i2d((ASN1_VALUE **)&local_28,local_24,(ASN1_ITEM *)X509_NAME_INTERNAL_it,-1,-1)
        ;
        sk_pop_free(local_28,(func *)&LAB_00643a9c_1);
        param_1[1] = 0;
        if ((int)sVar2 < 0) {
          return sVar2;
        }
        if ((void *)param_1[3] != (void *)0x0) {
          CRYPTO_free((void *)param_1[3]);
          param_1[3] = 0;
        }
        iVar3 = sk_num((_STACK *)*param_1);
        if (iVar3 == 0) {
          param_1[4] = 0;
        }
        else {
          sVar2 = FUN_00643b78(param_1);
          if ((int)sVar2 < 0) {
            return sVar2;
          }
        }
        goto LAB_00643e58;
      }
    }
LAB_00643e12:
    sVar2 = 0xffffffff;
    sk_pop_free(local_28,(func *)&LAB_00643a9c_1);
    ERR_put_error(0xd,0xcb,0x41,"jni/../../openssl-android/crypto/asn1/x_name.c",0x122);
  }
  return sVar2;
}

// ---- FUN_00643ed8  @ 0x643ed8
int FUN_00643ed8(int *param_1,undefined4 *param_2,long param_3,undefined4 param_4,int param_5,
                int param_6,char param_7,ASN1_TLC *param_8)

{
  X509_NAME *pXVar1;
  int iVar2;
  _STACK *p_Var3;
  void *data;
  int iVar4;
  int iVar5;
  uchar *__src;
  uchar *local_24;
  _STACK *local_20;
  X509_NAME *local_1c;
  
  __src = (uchar *)*param_2;
  local_20 = (_STACK *)0x0;
  local_1c = (X509_NAME *)0x0;
  local_24 = __src;
  iVar2 = ASN1_item_ex_d2i((ASN1_VALUE **)&local_20,&local_24,param_3,
                           (ASN1_ITEM *)X509_NAME_INTERNAL_it,param_5,param_6,param_7,param_8);
  if (iVar2 < 1) {
    return iVar2;
  }
  if (*param_1 != 0) {
    FUN_00643aa0(param_1,0);
  }
  iVar2 = FUN_00643ad4(&local_1c,0);
  if ((iVar2 == 0) || (iVar2 = BUF_MEM_grow(local_1c->bytes,(int)local_24 - (int)__src), iVar2 == 0)
     ) {
LAB_00643fc2:
    if (local_1c != (X509_NAME *)0x0) {
      X509_NAME_free(local_1c);
    }
    ERR_put_error(0xd,0x9e,0x3a,"jni/../../openssl-android/crypto/asn1/x_name.c",0xdc);
    iVar2 = 0;
  }
  else {
    memcpy(local_1c->bytes->data,__src,(int)local_24 - (int)__src);
    for (iVar2 = 0; iVar5 = sk_num(local_20), iVar2 < iVar5; iVar2 = iVar2 + 1) {
      p_Var3 = sk_value(local_20,iVar2);
      for (iVar5 = 0; iVar4 = sk_num(p_Var3), iVar5 < iVar4; iVar5 = iVar5 + 1) {
        data = sk_value(p_Var3,iVar5);
        *(int *)((int)data + 8) = iVar2;
        iVar4 = sk_push(&local_1c->entries->stack,data);
        if (iVar4 == 0) goto LAB_00643fc2;
      }
      sk_free(p_Var3);
    }
    sk_free(local_20);
    pXVar1 = local_1c;
    if (local_1c->canon_enc != (uchar *)0x0) {
      CRYPTO_free(local_1c->canon_enc);
      pXVar1->canon_enc = (uchar *)0x0;
    }
    iVar2 = sk_num(&pXVar1->entries->stack);
    if (iVar2 == 0) {
      pXVar1->canon_enclen = 0;
      iVar2 = 1;
    }
    else {
      iVar2 = FUN_00643b78(pXVar1);
      if (iVar2 == 0) goto LAB_00643fc2;
    }
    local_1c->modified = 0;
    *param_1 = (int)local_1c;
    *param_2 = local_24;
  }
  return iVar2;
}

// ---- FUN_006449f4  @ 0x6449f4
undefined4 FUN_006449f4(int param_1)

{
  X509_CERT_AUX *pXVar1;
  
  if (param_1 == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 100) == 0) {
    pXVar1 = X509_CERT_AUX_new();
    *(X509_CERT_AUX **)(param_1 + 100) = pXVar1;
    if (pXVar1 == (X509_CERT_AUX *)0x0) {
      return 0;
    }
  }
  return *(undefined4 *)(param_1 + 100);
}

// ---- FUN_00645bec  @ 0x645bec
void FUN_00645bec(int *param_1,int *param_2,size_t *param_3,uint *param_4,undefined1 param_5)

{
  void *pvVar1;
  uint uVar2;
  
  if (param_2 != (int *)0x0) {
    while (uVar2 = *param_4, uVar2 <= *param_3) {
      if (*param_2 == 0) {
        if (uVar2 == 0) {
          *param_4 = 0x400;
        }
        pvVar1 = CRYPTO_malloc(*param_4,"jni/../../openssl-android/crypto/bio/b_print.c",0x2e5);
        *param_2 = (int)pvVar1;
        if (*param_3 != 0) {
          memcpy(pvVar1,(void *)*param_1,*param_3);
        }
        *param_1 = 0;
      }
      else {
        *param_4 = uVar2 + 0x400;
        pvVar1 = CRYPTO_realloc((void *)*param_2,uVar2 + 0x400,
                                "jni/../../openssl-android/crypto/bio/b_print.c",0x2ed);
        *param_2 = (int)pvVar1;
      }
    }
  }
  uVar2 = *param_3;
  if (uVar2 < *param_4) {
    if (*param_1 != 0) {
      *(undefined1 *)(*param_1 + uVar2) = param_5;
      *param_3 = uVar2 + 1;
      return;
    }
    *(undefined1 *)(*param_2 + uVar2) = param_5;
    *param_3 = uVar2 + 1;
  }
  return;
}

// ---- FUN_00645c80  @ 0x645c80
void FUN_00645c80(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 int param_5,int param_6,int param_7,int param_8,uint param_9,uint param_10)

{
  size_t sVar1;
  int extraout_r2;
  char *pcVar2;
  byte *pbVar3;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  uint unaff_r9;
  bool bVar10;
  longlong lVar11;
  int local_70;
  int local_6c;
  char *local_60;
  undefined4 local_4c;
  char local_48 [28];
  int local_2c;
  byte *pbVar4;
  
  local_2c = __stack_chk_guard;
  bVar10 = (param_10 & 0x40) != 0;
  if (bVar10) {
    unaff_r9 = 0;
  }
  param_9 = param_9 & ~((int)param_9 >> 0x1f);
  local_70 = param_5;
  local_6c = param_6;
  if (!bVar10) {
    if (param_6 < 0) {
      unaff_r9 = 0x2d;
      local_70 = -param_5;
      local_6c = -param_6 - (uint)(param_5 != 0);
    }
    else if ((param_10 & 2) == 0) {
      unaff_r9 = 0;
      if ((param_10 & 4) != 0) {
        unaff_r9 = 0x20;
      }
    }
    else {
      unaff_r9 = 0x2b;
    }
  }
  lVar11 = CONCAT44(local_6c,local_70);
  if ((param_10 & 8) == 0) {
    local_4c = &DAT_00801f93;
  }
  else if (param_7 == 8) {
    local_4c = &DAT_00800a95;
  }
  else if (param_7 == 0x10) {
    local_4c = &DAT_008173e2;
  }
  else {
    local_4c = &DAT_00801f93;
  }
  local_60 = "0123456789ABCDEF";
  uVar5 = 0;
  do {
    uVar9 = uVar5;
    local_6c = (int)((ulonglong)lVar11 >> 0x20);
    local_70 = (int)lVar11;
    pcVar2 = local_60;
    if ((param_10 & 0x20) == 0) {
      pcVar2 = "0123456789abcdef";
    }
    __aeabi_uldivmod(local_70,local_6c,param_7,0);
    uVar5 = uVar9 + 1;
    local_48[uVar9] = pcVar2[extraout_r2];
    lVar11 = __aeabi_uldivmod(local_70,local_6c,param_7,0);
    pbVar3 = local_4c;
  } while ((int)uVar5 < 0x1a && lVar11 != 0);
  if (uVar5 != 0x1a) {
    uVar9 = uVar5;
  }
  local_48[uVar9] = '\0';
  sVar1 = strlen((char *)local_4c);
  uVar5 = param_9 - uVar9 & ~((int)(param_9 - uVar9) >> 0x1f);
  if ((int)param_9 <= (int)uVar9) {
    param_9 = uVar9;
  }
  param_8 = param_8 - param_9;
  if (unaff_r9 != 0) {
    param_8 = param_8 + -1;
  }
  uVar6 = param_8 - sVar1 & ~((int)(param_8 - sVar1) >> 0x1f);
  if ((param_10 & 0x10) != 0) {
    if ((int)uVar5 < (int)uVar6) {
      uVar5 = uVar6;
    }
    uVar6 = 0;
  }
  uVar7 = uVar6;
  if ((param_10 & 1) != 0) {
    uVar6 = -uVar6;
    uVar7 = uVar6;
  }
  for (; 0 < (int)uVar6; uVar6 = uVar6 - 1) {
    FUN_00645bec(param_1,param_2,param_3,param_4,0x20);
  }
  iVar8 = uVar7 - (uVar7 & ~((int)uVar7 >> 0x1f));
  pbVar4 = pbVar3;
  if (unaff_r9 == 0) goto LAB_00645e18;
  do {
    FUN_00645bec(param_1,param_2,param_3,param_4,unaff_r9);
    pbVar4 = pbVar3;
LAB_00645e18:
    pbVar3 = pbVar4 + 1;
    unaff_r9 = (uint)*pbVar4;
  } while (unaff_r9 != 0);
  for (; uVar5 != 0; uVar5 = uVar5 - 1) {
    FUN_00645bec(param_1,param_2,param_3,param_4,0x30);
  }
  for (; uVar9 != 0; uVar9 = uVar9 - 1) {
    FUN_00645bec(param_1,param_2,param_3,param_4,local_48[uVar9 - 1]);
  }
  for (; iVar8 != 0; iVar8 = iVar8 + 1) {
    FUN_00645bec(param_1,param_2,param_3,param_4,0x20);
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00645e9c  @ 0x645e9c
void FUN_00645e9c(undefined4 param_1,int param_2,uint *param_3,int *param_4,uint *param_5,
                 byte *param_6,double *param_7)

{
  int extraout_r1;
  int extraout_r1_00;
  uint *puVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  byte *pbVar6;
  byte *pbVar7;
  uint uVar8;
  double *pdVar9;
  int iVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  int iVar16;
  char *pcVar17;
  uint in_fpscr;
  double dVar18;
  double dVar19;
  double dVar20;
  uint local_7c;
  int local_78;
  undefined4 local_58;
  char acStack_54 [19];
  char acStack_41 [21];
  int local_2c;
  
  uVar8 = 0;
  local_2c = __stack_chk_guard;
  uVar13 = 0xffffffff;
  uVar2 = (uint)*param_6;
  local_58 = 0;
  local_7c = 0;
  pbVar7 = param_6 + 1;
  uVar12 = 0;
  uVar15 = 0;
switchD_00645efe_default:
  if ((uVar2 == 0) || ((param_2 == 0 && (*param_3 <= local_58)))) {
    uVar13 = (uint)(*param_3 - 1 < local_58);
    *param_5 = uVar13;
    if (uVar13 != 0) {
      local_58 = *param_3 - 1;
    }
    FUN_00645bec(param_1,param_2,&local_58,param_3,0);
    *param_4 = local_58 - 1;
    if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return;
  }
  switch(uVar15) {
  case 0:
    if (uVar2 == 0x25) {
      uVar15 = 1;
    }
    else {
      FUN_00645bec(param_1,param_2,&local_58,param_3,uVar2);
    }
    break;
  case 1:
    if (uVar2 == 0x2b) {
      uVar12 = uVar12 | 2;
    }
    else if (uVar2 < 0x2c) {
      if (uVar2 == 0x20) {
        uVar12 = uVar12 | 4;
      }
      else {
        if (uVar2 != 0x23) {
LAB_00646580:
          uVar15 = 2;
          goto switchD_00645efe_default;
        }
        uVar12 = uVar12 | 8;
      }
    }
    else if (uVar2 == 0x2d) {
      uVar12 = uVar12 | 1;
    }
    else {
      if (uVar2 != 0x30) goto LAB_00646580;
      uVar12 = uVar12 | 0x10;
    }
    break;
  case 2:
    if (9 < uVar2 - 0x30) {
      pbVar6 = pbVar7;
      if (uVar2 == 0x2a) {
        local_7c = *(uint *)param_7;
        param_7 = (double *)((int)param_7 + 4);
        pbVar6 = pbVar7 + 1;
        uVar2 = (uint)*pbVar7;
      }
      uVar15 = 3;
      pbVar7 = pbVar6;
      goto switchD_00645efe_default;
    }
    local_7c = local_7c * 10 + (uVar2 - 0x30);
    break;
  case 3:
    if (uVar2 == 0x2e) {
      uVar2 = (uint)*pbVar7;
      uVar15 = 4;
      pbVar7 = pbVar7 + 1;
    }
    else {
LAB_006465bc:
      uVar15 = 5;
    }
    goto switchD_00645efe_default;
  case 4:
    if (9 < uVar2 - 0x30) {
      if (uVar2 == 0x2a) {
        uVar13 = *(uint *)param_7;
        param_7 = (double *)((int)param_7 + 4);
        uVar2 = (uint)*pbVar7;
        pbVar7 = pbVar7 + 1;
      }
      goto LAB_006465bc;
    }
    uVar13 = (uVar13 & ~((int)uVar13 >> 0x1f)) * 10 + (uVar2 - 0x30);
    break;
  case 5:
    if (uVar2 == 0x68) {
      pbVar6 = pbVar7 + 1;
      uVar2 = (uint)*pbVar7;
      uVar8 = 1;
    }
    else {
      pbVar6 = pbVar7;
      if (uVar2 < 0x69) {
        if (uVar2 == 0x4c) {
          uVar2 = (uint)*pbVar7;
          uVar8 = 3;
          pbVar6 = pbVar7 + 1;
        }
      }
      else if (uVar2 == 0x6c) {
        uVar8 = 2;
        if (*pbVar7 == 0x6c) {
          pbVar7 = pbVar7 + 1;
          uVar8 = 4;
        }
        pbVar6 = pbVar7 + 1;
        uVar2 = (uint)*pbVar7;
      }
      else if (uVar2 == 0x71) {
        pbVar6 = pbVar7 + 1;
        uVar2 = (uint)*pbVar7;
        uVar8 = 4;
      }
    }
    uVar15 = 6;
    pbVar7 = pbVar6;
    goto switchD_00645efe_default;
  case 6:
    if (uVar2 == 0x67) goto LAB_00646402;
    pdVar9 = param_7;
    if (uVar2 < 0x68) {
      if (uVar2 == 99) {
        FUN_00645bec(param_1,param_2,&local_58,param_3,*(uint *)param_7);
LAB_00646528:
        pdVar9 = (double *)((int)param_7 + 4);
      }
      else {
        if (uVar2 < 100) {
          if (uVar2 != 0x47) {
            if (uVar2 < 0x48) {
              if (uVar2 == 0x25) {
                FUN_00645bec(param_1,param_2,&local_58,param_3,0x25);
              }
              else if (uVar2 == 0x45) goto LAB_00646402;
            }
            else if (uVar2 == 0x58) {
              uVar12 = uVar12 | 0x20;
              goto LAB_006460cc;
            }
            goto LAB_0064656e;
          }
        }
        else if (uVar2 != 0x65) {
          if (0x65 < uVar2) {
            uVar15 = uVar13 & ~((int)uVar13 >> 0x20);
            if ((int)uVar13 < 0) {
              uVar15 = 6;
            }
            pdVar9 = (double *)((int)param_7 + 7U & 0xfffffff8);
            dVar18 = *pdVar9;
            uVar13 = in_fpscr & 0xfffffff;
            pdVar9 = pdVar9 + 1;
            if (dVar18 < 0.0) {
              dVar18 = -dVar18;
              iVar16 = 0x2d;
            }
            else if ((uVar12 & 2) == 0) {
              iVar16 = 0;
              if ((uVar12 & 4) != 0) {
                iVar16 = 0x20;
              }
            }
            else {
              iVar16 = 0x2b;
            }
            iVar10 = (int)(longlong)dVar18;
            if (8 < (int)uVar15) {
              uVar15 = 9;
            }
            dVar20 = 1.0;
            for (uVar2 = uVar15; uVar2 != 0; uVar2 = uVar2 - 1) {
              dVar20 = dVar20 * 10.0;
            }
            iVar4 = (int)(longlong)dVar20;
            dVar19 = (double)VectorSignedToFloat(iVar4,(byte)(uVar13 >> 0x16) & 3);
            uVar2 = uVar13 | (uint)(dVar20 - dVar19 < 0.5) << 0x1f;
            uVar8 = uVar2 | (uint)NAN(dVar20 - dVar19) << 0x1c;
            if ((byte)(uVar2 >> 0x1f) == ((byte)(uVar8 >> 0x1c) & 1)) {
              iVar4 = iVar4 + 1;
            }
            dVar20 = 1.0;
            for (uVar2 = uVar15; uVar2 != 0; uVar2 = uVar2 - 1) {
              dVar20 = dVar20 * 10.0;
            }
            dVar19 = (double)VectorSignedToFloat(iVar10,(byte)(uVar8 >> 0x16) & 3);
            dVar20 = dVar20 * (dVar18 - dVar19);
            iVar14 = (int)(longlong)dVar20;
            dVar18 = (double)VectorSignedToFloat(iVar14,(byte)(uVar8 >> 0x16) & 3);
            dVar20 = dVar20 - dVar18;
            uVar13 = uVar13 | (uint)(dVar20 < 0.5) << 0x1f;
            in_fpscr = uVar13 | (uint)NAN(dVar20) << 0x1c;
            if ((byte)(uVar13 >> 0x1f) == ((byte)(in_fpscr >> 0x1c) & 1)) {
              iVar14 = iVar14 + 1;
            }
            if (iVar4 <= iVar14) {
              iVar10 = iVar10 + 1;
              iVar14 = iVar14 - iVar4;
            }
            local_78 = 0;
            iVar4 = local_78;
            do {
              local_78 = iVar4;
              __aeabi_idivmod(iVar10,10);
              iVar4 = local_78 + 1;
              acStack_54[local_78] = "0123456789abcdef"[extraout_r1];
              iVar10 = __divsi3(iVar10,10);
            } while (iVar4 < 0x14 && iVar10 != 0);
            if (iVar4 != 0x14) {
              local_78 = iVar4;
            }
            acStack_54[local_78] = '\0';
            iVar10 = 0;
            do {
              __aeabi_idivmod(iVar14,10);
              iVar4 = iVar10 + 1;
              acStack_41[iVar10 + 1] = "0123456789abcdef"[extraout_r1_00];
              iVar14 = __divsi3(iVar14,10);
              iVar10 = iVar4;
            } while (iVar4 < (int)uVar15);
            uVar13 = uVar15;
            if ((int)uVar15 < 1) {
              uVar13 = 1;
            }
            acStack_41[uVar13 + 1] = '\0';
            iVar10 = (local_7c - local_78) - uVar15;
            uVar2 = iVar10 - 1;
            uVar8 = uVar15 - uVar13 & ~((int)(uVar15 - uVar13) >> 0x1f);
            if (iVar16 != 0) {
              uVar2 = iVar10 - 2;
            }
            uVar2 = uVar2 & ~((int)uVar2 >> 0x1f);
            if ((uVar12 & 1) != 0) {
              uVar2 = -uVar2;
            }
            uVar5 = uVar12 >> 4;
            if ((int)uVar2 < 1) {
              uVar5 = 0;
            }
            uVar11 = uVar2;
            if (uVar5 != 0) {
              if (iVar16 == 0) goto LAB_00646308;
              while( true ) {
                FUN_00645bec(param_1,param_2,&local_58,param_3,iVar16);
                uVar2 = uVar2 - 1;
LAB_00646308:
                if (uVar2 == 0) break;
                iVar16 = 0x30;
              }
              uVar2 = 0;
              iVar16 = 0;
              uVar11 = uVar2;
            }
            for (; 0 < (int)uVar2; uVar2 = uVar2 - 1) {
              FUN_00645bec(param_1,param_2,&local_58,param_3,0x20);
            }
            iVar10 = uVar11 - (uVar11 & ~((int)uVar11 >> 0x1f));
            if (iVar16 != 0) {
              FUN_00645bec(param_1,param_2,&local_58,param_3,iVar16);
            }
            for (; local_78 != 0; local_78 = local_78 + -1) {
              FUN_00645bec(param_1,param_2,&local_58,param_3,acStack_54[local_78 + -1]);
            }
            if ((uVar15 != 0) || ((uVar12 & 8) != 0)) {
              FUN_00645bec(param_1,param_2,&local_58,param_3,0x2e);
              do {
                uVar12 = uVar13 - 1;
                FUN_00645bec(param_1,param_2,&local_58,param_3,acStack_41[uVar13]);
                uVar13 = uVar12;
              } while (uVar12 != 0);
            }
            for (; uVar8 != 0; uVar8 = uVar8 - 1) {
              FUN_00645bec(param_1,param_2,&local_58,param_3,0x30);
            }
            for (; iVar10 != 0; iVar10 = iVar10 + 1) {
              FUN_00645bec(param_1,param_2,&local_58,param_3,0x20);
            }
            goto LAB_0064656e;
          }
LAB_0064607a:
          if (uVar8 == 2) {
            uVar15 = *(uint *)param_7;
            pdVar9 = (double *)((int)param_7 + 4);
            uVar8 = (int)uVar15 >> 0x1f;
          }
          else if (uVar8 == 4) {
            puVar1 = (uint *)((int)param_7 + 7U & 0xfffffff8);
            pdVar9 = (double *)(puVar1 + 2);
            uVar15 = *puVar1;
            uVar8 = puVar1[1];
          }
          else {
            uVar15 = *(uint *)param_7;
            pdVar9 = (double *)((int)param_7 + 4);
            if (uVar8 == 1) {
              uVar15 = (uint)(short)uVar15;
            }
            uVar8 = (int)uVar15 >> 0x1f;
          }
          uVar3 = 10;
LAB_00646124:
          FUN_00645c80(param_1,param_2,&local_58,param_3,uVar15,uVar8,uVar3,local_7c,uVar13,uVar12);
          goto LAB_0064656e;
        }
LAB_00646402:
        pdVar9 = (double *)(((int)param_7 + 7U & 0xfffffff8) + 8);
      }
    }
    else {
      if (uVar2 == 0x70) {
        FUN_00645c80(param_1,param_2,&local_58,param_3,*(uint *)param_7,
                     (int)*(uint *)param_7 >> 0x1f,0x10,local_7c,uVar13,uVar12 | 8);
        goto LAB_00646528;
      }
      if (uVar2 < 0x71) {
        if (uVar2 == 0x6e) {
          pdVar9 = (double *)((int)param_7 + 4);
          if (uVar8 == 1) {
            **(undefined2 **)param_7 = (short)local_58;
          }
          else if (uVar8 == 2) {
            **(uint **)param_7 = local_58;
          }
          else {
            puVar1 = *(uint **)param_7;
            *puVar1 = local_58;
            if (uVar8 == 4) {
              puVar1[1] = 0;
            }
          }
        }
        else {
          if (0x6e < uVar2) goto LAB_006460cc;
          if (uVar2 == 0x69) goto LAB_0064607a;
        }
      }
      else {
        if (uVar2 == 0x75) {
LAB_006460cc:
          uVar12 = uVar12 | 0x40;
          if (uVar8 == 2) {
            uVar15 = *(uint *)param_7;
            uVar8 = 0;
            pdVar9 = (double *)((int)param_7 + 4);
          }
          else if (uVar8 == 4) {
            puVar1 = (uint *)((int)param_7 + 7U & 0xfffffff8);
            pdVar9 = (double *)(puVar1 + 2);
            uVar15 = *puVar1;
            uVar8 = puVar1[1];
          }
          else {
            pdVar9 = (double *)((int)param_7 + 4);
            uVar15 = *(uint *)param_7;
            if (uVar8 == 1) {
              uVar15 = uVar15 & 0xffff;
            }
            uVar8 = 0;
          }
          if (uVar2 == 0x6f) {
            uVar3 = 8;
          }
          else if (uVar2 == 0x75) {
            uVar3 = 10;
          }
          else {
            uVar3 = 0x10;
          }
          goto LAB_00646124;
        }
        if (uVar2 < 0x76) {
          if (uVar2 == 0x73) {
            pdVar9 = (double *)((int)param_7 + 4);
            pcVar17 = *(char **)param_7;
            if (((int)uVar13 < 0) && (uVar13 = 0x7fffffff, param_2 == 0)) {
              uVar13 = *param_3;
            }
            if (pcVar17 == (char *)0x0) {
              pcVar17 = "<NULL>";
            }
            for (iVar16 = 0; pcVar17[iVar16] != '\0'; iVar16 = iVar16 + 1) {
            }
            uVar15 = local_7c - iVar16 & ~((int)(local_7c - iVar16) >> 0x1f);
            if ((uVar12 & 1) != 0) {
              uVar15 = -uVar15;
            }
            for (iVar16 = 0; iVar16 < (int)uVar13 && 0 < (int)uVar15; iVar16 = iVar16 + 1) {
              uVar15 = uVar15 - 1;
              FUN_00645bec(param_1,param_2,&local_58,param_3,0x20);
            }
            while( true ) {
              if (*pcVar17 == '\0' || (int)uVar13 <= iVar16) break;
              iVar16 = iVar16 + 1;
              FUN_00645bec(param_1,param_2,&local_58,param_3,*pcVar17);
              pcVar17 = pcVar17 + 1;
            }
            while( true ) {
              uVar12 = uVar15 >> 0x1f;
              if ((int)uVar13 <= iVar16) {
                uVar12 = 0;
              }
              if (uVar12 == 0) break;
              uVar15 = uVar15 + 1;
              FUN_00645bec(param_1,param_2,&local_58,param_3,0x20);
              iVar16 = iVar16 + 1;
            }
          }
        }
        else if (uVar2 == 0x77) {
          pbVar7 = pbVar7 + 1;
        }
        else if (uVar2 == 0x78) goto LAB_006460cc;
      }
    }
LAB_0064656e:
    uVar8 = 0;
    uVar2 = (uint)*pbVar7;
    uVar13 = 0xffffffff;
    local_7c = 0;
    param_7 = pdVar9;
    pbVar7 = pbVar7 + 1;
    uVar12 = uVar8;
    uVar15 = uVar8;
  default:
    goto switchD_00645efe_default;
  }
  uVar2 = (uint)*pbVar7;
  pbVar7 = pbVar7 + 1;
  goto switchD_00645efe_default;
}

// ---- FUN_00646f1c  @ 0x646f1c
undefined4 FUN_00646f1c(int param_1)

{
  void *pvVar1;
  int iVar2;
  
  if (param_1 != 0) {
    iVar2 = *(int *)(param_1 + 0x20);
    pvVar1 = *(void **)(iVar2 + 8);
    if (pvVar1 != (void *)0x0) {
      CRYPTO_free(pvVar1);
    }
    pvVar1 = *(void **)(iVar2 + 0x14);
    if (pvVar1 != (void *)0x0) {
      CRYPTO_free(pvVar1);
    }
    CRYPTO_free(*(void **)(param_1 + 0x20));
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_00646f48  @ 0x646f48
undefined4 FUN_00646f48(int param_1)

{
  undefined4 *ptr;
  void *pvVar1;
  
  ptr = CRYPTO_malloc(0x20,"jni/../../openssl-android/crypto/bio/bf_buff.c",0x61);
  if (ptr == (undefined4 *)0x0) {
    return 0;
  }
  pvVar1 = CRYPTO_malloc(0x1000,"jni/../../openssl-android/crypto/bio/bf_buff.c",99);
  ptr[2] = pvVar1;
  if (pvVar1 == (void *)0x0) {
    CRYPTO_free(ptr);
    return 0;
  }
  pvVar1 = CRYPTO_malloc(0x1000,"jni/../../openssl-android/crypto/bio/bf_buff.c",0x65);
  ptr[5] = pvVar1;
  if (pvVar1 == (void *)0x0) {
    CRYPTO_free((void *)ptr[2]);
    CRYPTO_free(ptr);
    return 0;
  }
  *ptr = 0x1000;
  ptr[1] = 0x1000;
  ptr[3] = 0;
  ptr[4] = 0;
  ptr[6] = 0;
  ptr[7] = 0;
  *(undefined4 *)(param_1 + 0xc) = 1;
  *(undefined4 **)(param_1 + 0x20) = ptr;
  *(undefined4 *)(param_1 + 0x14) = 0;
  return 1;
}

// ---- FUN_006472a4  @ 0x6472a4
size_t FUN_006472a4(BIO *param_1,void *param_2,size_t param_3)

{
  size_t sVar1;
  size_t sVar2;
  int *piVar3;
  size_t __n;
  
  sVar2 = 0;
  if (param_2 != (void *)0x0) {
    piVar3 = param_1->ptr;
    sVar2 = 0;
    if ((piVar3 != (int *)0x0) && (sVar2 = 0, param_1->next_bio != (bio_st *)0x0)) {
      sVar2 = 0;
      BIO_clear_flags(param_1,0xf);
      while( true ) {
        sVar1 = piVar3[3];
        if (sVar1 != 0) {
          __n = param_3;
          if ((int)sVar1 <= (int)param_3) {
            __n = sVar1;
          }
          sVar2 = sVar2 + __n;
          memcpy(param_2,(void *)(piVar3[2] + piVar3[4]),__n);
          piVar3[4] = piVar3[4] + __n;
          piVar3[3] = piVar3[3] - __n;
          if (param_3 == __n) {
            return sVar2;
          }
          param_3 = param_3 - __n;
          param_2 = (void *)((int)param_2 + __n);
        }
        if (*piVar3 < (int)param_3) {
          while (sVar1 = BIO_read(param_1->next_bio,param_2,param_3), 0 < (int)sVar1) {
            sVar2 = sVar2 + sVar1;
            if (param_3 == sVar1) {
              return sVar2;
            }
            param_2 = (void *)((int)param_2 + sVar1);
            param_3 = param_3 - sVar1;
          }
          BIO_copy_next_retry(param_1);
          if (sVar1 == 0) {
            return sVar2;
          }
          if (0 < (int)sVar2) {
            return sVar2;
          }
          return sVar1;
        }
        sVar1 = BIO_read(param_1->next_bio,(void *)piVar3[2],*piVar3);
        if ((int)sVar1 < 1) break;
        piVar3[4] = 0;
        piVar3[3] = sVar1;
      }
      BIO_copy_next_retry(param_1);
      if ((sVar1 != 0) && ((int)sVar2 < 1)) {
        sVar2 = sVar1;
      }
    }
  }
  return sVar2;
}

// ---- FUN_00647366  @ 0x647366
int FUN_00647366(BIO *param_1,void *param_2,size_t param_3)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  int iVar4;
  void *pvVar5;
  size_t __n;
  
  uVar3 = 1 - (int)param_2;
  if ((void *)0x1 < param_2) {
    uVar3 = 0;
  }
  if ((int)param_3 < 1) {
    uVar3 = uVar3 | 1;
  }
  if (uVar3 == 0) {
    pvVar2 = param_1->ptr;
    if (pvVar2 == (void *)0x0) {
      iVar4 = 0;
    }
    else if (param_1->next_bio == (bio_st *)0x0) {
      iVar4 = 0;
    }
    else {
      BIO_clear_flags(param_1,0xf);
      iVar4 = 0;
      while( true ) {
        iVar1 = *(int *)((int)pvVar2 + 0x18) + *(int *)((int)pvVar2 + 0x1c);
        __n = *(int *)((int)pvVar2 + 4) - iVar1;
        if ((int)param_3 <= (int)__n) break;
        if (*(int *)((int)pvVar2 + 0x18) != 0) {
          pvVar5 = param_2;
          if (0 < (int)__n) {
            pvVar5 = (void *)((int)param_2 + __n);
            param_3 = param_3 - __n;
            memcpy((void *)(*(int *)((int)pvVar2 + 0x14) + iVar1),param_2,__n);
            iVar4 = iVar4 + __n;
            *(size_t *)((int)pvVar2 + 0x18) = *(int *)((int)pvVar2 + 0x18) + __n;
          }
          do {
            iVar1 = BIO_write(param_1->next_bio,
                              (void *)(*(int *)((int)pvVar2 + 0x14) + *(int *)((int)pvVar2 + 0x1c)),
                              *(int *)((int)pvVar2 + 0x18));
            if (iVar1 < 1) goto LAB_0064741e;
            *(int *)((int)pvVar2 + 0x1c) = *(int *)((int)pvVar2 + 0x1c) + iVar1;
            iVar1 = *(int *)((int)pvVar2 + 0x18) - iVar1;
            *(int *)((int)pvVar2 + 0x18) = iVar1;
            param_2 = pvVar5;
          } while (iVar1 != 0);
        }
        *(undefined4 *)((int)pvVar2 + 0x1c) = 0;
        while (*(int *)((int)pvVar2 + 4) <= (int)param_3) {
          iVar1 = BIO_write(param_1->next_bio,param_2,param_3);
          if (iVar1 < 1) {
LAB_0064741e:
            BIO_copy_next_retry(param_1);
            if (iVar1 == 0) {
              return iVar4;
            }
            if (iVar4 != 0) {
              return iVar4;
            }
            return iVar1;
          }
          param_3 = param_3 - iVar1;
          iVar4 = iVar4 + iVar1;
          param_2 = (void *)((int)param_2 + iVar1);
          if (param_3 == 0) {
            return iVar4;
          }
        }
      }
      iVar4 = iVar4 + param_3;
      memcpy((void *)(*(int *)((int)pvVar2 + 0x14) + iVar1),param_2,param_3);
      *(size_t *)((int)pvVar2 + 0x18) = *(int *)((int)pvVar2 + 0x18) + param_3;
    }
  }
  else {
    iVar4 = 0;
  }
  return iVar4;
}

// ---- FUN_00647452  @ 0x647452
void FUN_00647452(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_00647366(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_00647482  @ 0x647482
undefined4 FUN_00647482(int param_1)

{
  if (param_1 != 0) {
    if (*(void **)(param_1 + 0x20) != (void *)0x0) {
      CRYPTO_free(*(void **)(param_1 + 0x20));
    }
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_006474cc  @ 0x6474cc
long FUN_006474cc(BIO *param_1,int param_2,long param_3,void *param_4)

{
  long lVar1;
  
  if (param_1->next_bio == (BIO *)0x0) {
    lVar1 = 0;
  }
  else if (param_2 == 0xc) {
    lVar1 = 0;
  }
  else {
    if (param_2 != 0x65) {
      lVar1 = BIO_ctrl(param_1->next_bio,param_2,param_3,param_4);
      return lVar1;
    }
    BIO_clear_flags(param_1,0xf);
    lVar1 = BIO_ctrl(param_1->next_bio,0x65,param_3,param_4);
    BIO_copy_next_retry(param_1);
  }
  return lVar1;
}

// ---- FUN_0064752a  @ 0x64752a
int FUN_0064752a(BIO *param_1,void *param_2,uint param_3)

{
  uint len;
  int iVar1;
  undefined4 uStack_14;
  
  iVar1 = 0;
  if (param_2 != (void *)0x0) {
    if (param_1->next_bio == (bio_st *)0x0) {
      iVar1 = 0;
    }
    else {
      uStack_14 = param_2;
      BIO_clear_flags(param_1,0xf);
      RAND_pseudo_bytes((uchar *)((int)&uStack_14 + 3),1);
      len = (uint)uStack_14 >> 0x18 & 7;
      if (((uint)uStack_14 & 0x7000000) == 0) {
        BIO_set_flags(param_1,9);
        iVar1 = -1;
      }
      else {
        if ((int)param_3 < (int)len) {
          len = param_3;
        }
        iVar1 = BIO_read(param_1->next_bio,param_2,len);
        if (iVar1 < 0) {
          BIO_copy_next_retry(param_1);
        }
      }
    }
  }
  return iVar1;
}

// ---- FUN_00647582  @ 0x647582
int FUN_00647582(BIO *param_1,void *param_2,uint param_3)

{
  void *pvVar1;
  int iVar2;
  uint uVar3;
  undefined4 uStack_1c;
  
  uVar3 = 1 - (int)param_2;
  if ((void *)0x1 < param_2) {
    uVar3 = 0;
  }
  if ((int)param_3 < 1) {
    uVar3 = uVar3 | 1;
  }
  if (uVar3 == 0) {
    if (param_1->next_bio == (bio_st *)0x0) {
      iVar2 = 0;
    }
    else {
      pvVar1 = param_1->ptr;
      uStack_1c = param_2;
      BIO_clear_flags(param_1,0xf);
      uVar3 = *(uint *)((int)pvVar1 + 4);
      if ((int)uVar3 < 1) {
        RAND_pseudo_bytes((uchar *)((int)&uStack_1c + 3),1);
        uVar3 = (uint)uStack_1c >> 0x18 & 7;
      }
      else {
        *(undefined4 *)((int)pvVar1 + 4) = 0;
      }
      if (((int)uVar3 < (int)param_3) && (param_3 = uVar3, uVar3 == 0)) {
        BIO_set_flags(param_1,10);
        iVar2 = -1;
      }
      else {
        iVar2 = BIO_write(param_1->next_bio,param_2,param_3);
        if (iVar2 < 0) {
          BIO_copy_next_retry(param_1);
          *(uint *)((int)pvVar1 + 4) = param_3;
        }
      }
    }
  }
  else {
    iVar2 = 0;
  }
  return iVar2;
}

// ---- FUN_00647638  @ 0x647638
long FUN_00647638(BIO *param_1,int param_2,long param_3,void *param_4)

{
  long lVar1;
  
  if (param_1->next_bio == (BIO *)0x0) {
    lVar1 = 0;
  }
  else if (param_2 == 0xc) {
    lVar1 = 0;
  }
  else {
    if (param_2 != 0x65) {
      lVar1 = BIO_ctrl(param_1->next_bio,param_2,param_3,param_4);
      return lVar1;
    }
    BIO_clear_flags(param_1,0xf);
    lVar1 = BIO_ctrl(param_1->next_bio,0x65,param_3,param_4);
    BIO_copy_next_retry(param_1);
  }
  return lVar1;
}

// ---- FUN_00647696  @ 0x647696
int FUN_00647696(BIO *param_1,void *param_2,int param_3)

{
  int iVar1;
  
  iVar1 = 0;
  if ((param_2 != (void *)0x0) && (iVar1 = 0, param_1->next_bio != (BIO *)0x0)) {
    iVar1 = BIO_read(param_1->next_bio,param_2,param_3);
    BIO_clear_flags(param_1,0xf);
    BIO_copy_next_retry(param_1);
  }
  return iVar1;
}

// ---- FUN_006476bc  @ 0x6476bc
int FUN_006476bc(BIO *param_1,void *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = 1 - (int)param_2;
  if ((void *)0x1 < param_2) {
    uVar1 = 0;
  }
  if (param_3 < 1) {
    uVar1 = uVar1 | 1;
  }
  iVar2 = 0;
  if ((uVar1 == 0) && (iVar2 = 0, param_1->next_bio != (BIO *)0x0)) {
    iVar2 = BIO_write(param_1->next_bio,param_2,param_3);
    BIO_clear_flags(param_1,0xf);
    BIO_copy_next_retry(param_1);
  }
  return iVar2;
}

// ---- FUN_00647f0c  @ 0x647f0c
void FUN_00647f0c(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x20);
  if (*(int *)(iVar1 + 8) != -1) {
    shutdown(*(int *)(iVar1 + 8),2);
    close(*(int *)(iVar1 + 8));
    *(undefined4 *)(iVar1 + 8) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
  }
  return;
}

// ---- FUN_00647f2e  @ 0x647f2e
undefined4 FUN_00647f2e(int param_1)

{
  void *ptr;
  
  if (param_1 == 0) {
    return 0;
  }
  ptr = *(void **)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) != 0) {
    FUN_00647f0c();
    if (ptr != (void *)0x0) {
      if (*(void **)((int)ptr + 4) != (void *)0x0) {
        CRYPTO_free(*(void **)((int)ptr + 4));
      }
      if (*(void **)((int)ptr + 0x10) != (void *)0x0) {
        CRYPTO_free(*(void **)((int)ptr + 0x10));
      }
      if (*(BIO **)((int)ptr + 0x1c) != (BIO *)0x0) {
        BIO_free(*(BIO **)((int)ptr + 0x1c));
      }
      CRYPTO_free(ptr);
    }
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    return 1;
  }
  return 1;
}

// ---- FUN_00647fac  @ 0x647fac
undefined8 FUN_00647fac(BIO *param_1,int *param_2)

{
  int iVar1;
  BIO *b;
  callback *callback;
  char *arg;
  BIO *b_00;
  BIO *pBVar2;
  int extraout_r1;
  char *extraout_r2;
  int extraout_r3;
  int iVar3;
  BIO *pBVar4;
  int *piVar5;
  
  while( true ) {
    while (iVar3 = *param_2, pBVar4 = param_1, iVar3 != 2) {
      if (iVar3 != 3) {
        if (iVar3 != 1) goto LAB_006480d0;
        if ((char *)param_2[1] == (char *)0x0) {
          pBVar4 = (BIO *)0xd4;
          iVar3 = 0x6f;
        }
        else {
          iVar3 = BIO_get_accept_socket((char *)param_2[1],param_2[6]);
          if (iVar3 == -1) goto LAB_006480da;
          if ((param_2[3] == 0) || (iVar1 = BIO_socket_nbio(iVar3,1), iVar1 != 0)) {
            param_2[2] = iVar3;
            iVar1 = 2;
            param_1->num = iVar3;
            goto LAB_006480bc;
          }
          close(iVar3);
          pBVar4 = (BIO *)0xe0;
          iVar3 = 0x6a;
        }
        ERR_put_error(0x20,100,iVar3,"jni/../../openssl-android/crypto/bio/bss_acpt.c",(int)pBVar4);
        goto LAB_0064800c;
      }
      if (param_1->next_bio != (bio_st *)0x0) goto LAB_006480d8;
      *param_2 = 2;
    }
    if (param_1->next_bio == (bio_st *)0x0) break;
    *param_2 = 3;
  }
  piVar5 = param_2;
  BIO_clear_flags(param_1,0xf);
  param_1->retry_reason = 0;
  iVar3 = BIO_accept(param_2[2],(char **)(param_2 + 4));
  if (iVar3 == -2) {
    BIO_set_flags(param_1,0xc);
    param_1->retry_reason = 3;
LAB_0064800c:
    iVar3 = -1;
    goto LAB_006480da;
  }
  if (iVar3 < 0) goto LAB_006480da;
  b = BIO_new_socket(iVar3,1);
  if (b == (BIO *)0x0) {
    iVar3 = 0;
    goto LAB_006480da;
  }
  callback = (callback *)
             BIO_get_callback(param_1,extraout_r1,extraout_r2,extraout_r3,(long)pBVar4,(long)piVar5)
  ;
  BIO_set_callback(b,callback);
  arg = BIO_get_callback_arg(param_1);
  BIO_set_callback_arg(b,arg);
  if ((param_2[5] == 0) || (iVar3 = BIO_socket_nbio(iVar3,1), iVar3 != 0)) {
    b_00 = b;
    if ((((BIO *)param_2[7] == (BIO *)0x0) ||
        ((b_00 = BIO_dup_chain((BIO *)param_2[7]), b_00 != (BIO *)0x0 &&
         (pBVar2 = BIO_push(b_00,b), pBVar2 != (BIO *)0x0)))) &&
       (pBVar2 = BIO_push(param_1,b_00), b = b_00, pBVar2 != (BIO *)0x0)) {
      iVar1 = 3;
LAB_006480bc:
      *param_2 = iVar1;
LAB_006480d8:
      iVar3 = 1;
LAB_006480da:
      return CONCAT44(pBVar4,iVar3);
    }
  }
  else {
    pBVar4 = (BIO *)0x107;
    ERR_put_error(0x20,100,0x69,"jni/../../openssl-android/crypto/bio/bss_acpt.c",0x107);
  }
  BIO_free(b);
LAB_006480d0:
  iVar3 = 0;
  goto LAB_006480da;
}

// ---- FUN_00648212  @ 0x648212
int FUN_00648212(BIO *param_1,void *param_2,int param_3)

{
  int iVar1;
  void *pvVar2;
  
  BIO_clear_flags(param_1,0xf);
  pvVar2 = param_1->ptr;
  do {
    if (param_1->next_bio != (BIO *)0x0) {
      iVar1 = BIO_write(param_1->next_bio,param_2,param_3);
      BIO_copy_next_retry(param_1);
      return iVar1;
    }
    iVar1 = FUN_00647fac(param_1,pvVar2);
  } while (0 < iVar1);
  return iVar1;
}

// ---- FUN_00648250  @ 0x648250
void FUN_00648250(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_00648212(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_006482a2  @ 0x6482a2
void FUN_006482a2(int param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  
  piVar2 = *(int **)(param_1 + 0x20);
  if ((piVar2 != (int *)0x0) && (iVar3 = *piVar2, iVar3 != 0)) {
    puVar1 = *(undefined4 **)(iVar3 + 0x20);
    *puVar1 = 0;
    *(undefined4 *)(iVar3 + 0xc) = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    *piVar2 = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    piVar2[2] = 0;
    piVar2[3] = 0;
  }
  return;
}

// ---- FUN_006482c2  @ 0x6482c2
undefined4 FUN_006482c2(int param_1)

{
  undefined4 uVar1;
  int *ptr;
  
  uVar1 = 0;
  if (param_1 != 0) {
    ptr = *(int **)(param_1 + 0x20);
    if (*ptr != 0) {
      FUN_006482a2();
    }
    if ((void *)ptr[5] != (void *)0x0) {
      CRYPTO_free((void *)ptr[5]);
    }
    CRYPTO_free(ptr);
    uVar1 = 1;
  }
  return uVar1;
}

// ---- FUN_006483b8  @ 0x6483b8
uint FUN_006483b8(BIO *param_1,void *param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  void *pvVar4;
  uint uVar5;
  size_t __n;
  
  BIO_clear_flags(param_1,0xf);
  uVar2 = 1 - param_1->init;
  if (1 < (uint)param_1->init) {
    uVar2 = 0;
  }
  if (param_2 == (void *)0x0) {
    uVar2 = uVar2 | 1;
  }
  uVar1 = 0;
  if ((uVar2 == 0) && (uVar1 = 0, param_3 != 0)) {
    pvVar4 = param_1->ptr;
    *(undefined4 *)((int)pvVar4 + 0x18) = 0;
    if (*(int *)((int)pvVar4 + 4) == 0) {
      if (*(int *)((int)pvVar4 + 8) != *(int *)((int)pvVar4 + 0x10)) {
        uVar2 = *(int *)((int)pvVar4 + 0x10) - *(int *)((int)pvVar4 + 8);
        uVar1 = uVar2;
        if (param_3 < uVar2) {
          uVar2 = param_3;
          uVar1 = param_3;
        }
        do {
          uVar5 = *(uint *)((int)pvVar4 + 0x10);
          uVar3 = *(int *)((int)pvVar4 + 8) + *(int *)((int)pvVar4 + 0xc);
          if (uVar5 <= uVar3) {
            uVar3 = uVar3 - uVar5;
          }
          __n = uVar2;
          if (uVar5 < uVar3 + uVar2) {
            __n = uVar5 - uVar3;
          }
          memcpy((void *)(*(int *)((int)pvVar4 + 0x14) + uVar3),param_2,__n);
          uVar2 = uVar2 - __n;
          *(size_t *)((int)pvVar4 + 8) = *(int *)((int)pvVar4 + 8) + __n;
          param_2 = (void *)((int)param_2 + __n);
        } while (uVar2 != 0);
        return uVar1;
      }
      BIO_set_flags(param_1,10);
    }
    else {
      ERR_put_error(0x20,0x71,0x7c,"jni/../../openssl-android/crypto/bio/bss_bio.c",0x174);
    }
    uVar1 = 0xffffffff;
  }
  return uVar1;
}

// ---- FUN_0064896c  @ 0x64896c
int FUN_0064896c(BIO *param_1,undefined4 *param_2,undefined4 param_3,uint param_4)

{
  byte *pbVar1;
  char *pcVar2;
  int iVar3;
  int *piVar4;
  byte *pbVar5;
  byte *pbVar6;
  byte *pbVar7;
  undefined4 uVar8;
  int iVar9;
  code *pcVar10;
  int line;
  uint local_24;
  
  pcVar10 = (code *)param_2[10];
  iVar9 = -1;
  local_24 = param_4;
  do {
    switch(*param_2) {
    case 1:
      pbVar6 = (byte *)param_2[1];
      if ((byte *)param_2[1] == (byte *)0x0) {
        line = 0x92;
        iVar3 = 0x70;
LAB_00648af6:
        ERR_put_error(0x20,0x73,iVar3,"jni/../../openssl-android/crypto/bio/bss_conn.c",line);
        goto switchD_0064898c_default;
      }
      do {
        pbVar5 = pbVar6;
        local_24 = (uint)*pbVar5;
        if (local_24 == 0) break;
        pbVar6 = pbVar5 + 1;
      } while (local_24 != 0x2f && local_24 != 0x3a);
      if ((local_24 == 0x2f || local_24 == 0x3a) && (*pbVar5 = 0, local_24 == 0x3a)) {
        pbVar6 = pbVar5;
        do {
          pbVar7 = pbVar6 + 1;
          pbVar1 = pbVar6 + 1;
          if (*pbVar1 == 0) goto LAB_00648a10;
          pbVar6 = pbVar7;
        } while (*pbVar1 != 0x2f);
        *pbVar7 = 0;
LAB_00648a10:
        if ((void *)param_2[2] != (void *)0x0) {
          CRYPTO_free((void *)param_2[2]);
        }
        pcVar2 = BUF_strdup((char *)(pbVar5 + 1));
        param_2[2] = pcVar2;
      }
      if (param_2[2] == 0) {
        ERR_put_error(0x20,0x73,0x72,"jni/../../openssl-android/crypto/bio/bss_conn.c",0xaf);
        ERR_add_error_data(2,"host=",param_2[1]);
        goto switchD_0064898c_default;
      }
      *param_2 = 2;
      goto LAB_00648c56;
    case 2:
      iVar3 = BIO_get_host_ip((char *)param_2[1],(uchar *)(param_2 + 4));
      if (iVar3 < 1) goto switchD_0064898c_default;
      uVar8 = 3;
      break;
    case 3:
      if (((char *)param_2[2] == (char *)0x0) ||
         (iVar3 = BIO_get_port((char *)param_2[2],(ushort *)(param_2 + 5)), iVar3 < 1))
      goto switchD_0064898c_default;
      uVar8 = 4;
      break;
    case 4:
      memset(param_2 + 6,0,0x10);
      *(undefined2 *)(param_2 + 6) = 2;
      *(ushort *)((int)param_2 + 0x1a) =
           *(ushort *)(param_2 + 5) << 8 | *(ushort *)(param_2 + 5) >> 8;
      param_2[7] = (uint)*(byte *)((int)param_2 + 0x13) << 0x18 |
                   (uint)*(byte *)((int)param_2 + 0x12) << 0x10 |
                   (uint)*(byte *)((int)param_2 + 0x11) << 8 | (uint)*(byte *)(param_2 + 4);
      *param_2 = 4;
      iVar9 = socket(2,1,6);
      if (iVar9 == -1) {
        piVar4 = (int *)__errno();
        ERR_put_error(2,4,*piVar4,"jni/../../openssl-android/crypto/bio/bss_conn.c",0xd7);
        ERR_add_error_data(4,"host=",param_2[1],&DAT_0080cdf3,param_2[2]);
        iVar3 = 0x76;
        line = 0xda;
        goto LAB_00648af6;
      }
      param_1->num = iVar9;
      uVar8 = 8;
      break;
    case 5:
      BIO_clear_flags(param_1,0xf);
      iVar9 = connect(param_1->num,(sockaddr *)(param_2 + 6),0x10);
      param_1->retry_reason = 0;
      if (iVar9 < 0) {
        iVar3 = BIO_sock_should_retry(iVar9);
        if (iVar3 != 0) {
          BIO_set_flags(param_1,0xc);
          *param_2 = 7;
          param_1->retry_reason = 2;
          goto switchD_0064898c_default;
        }
        piVar4 = (int *)__errno();
        ERR_put_error(2,2,*piVar4,"jni/../../openssl-android/crypto/bio/bss_conn.c",0x10d);
        ERR_add_error_data(4,"host=",param_2[1],&DAT_0080cdf3,param_2[2]);
        line = 0x111;
        iVar3 = 0x67;
        goto LAB_00648af6;
      }
      goto LAB_00648c52;
    case 6:
      iVar9 = 1;
    default:
switchD_0064898c_default:
      if (pcVar10 == (code *)0x0) {
        return iVar9;
      }
      iVar9 = (*pcVar10)(param_1,*param_2,iVar9);
      return iVar9;
    case 7:
      local_24 = BIO_sock_error(param_1->num);
      if (local_24 != 0) {
        BIO_clear_flags(param_1,0xf);
        ERR_put_error(2,2,local_24,"jni/../../openssl-android/crypto/bio/bss_conn.c",0x11e);
        ERR_add_error_data(4,"host=",param_2[1],&DAT_0080cdf3,param_2[2]);
        iVar9 = 0;
        ERR_put_error(0x20,0x73,0x6e,"jni/../../openssl-android/crypto/bio/bss_conn.c",0x122);
        goto switchD_0064898c_default;
      }
LAB_00648c52:
      uVar8 = 6;
      break;
    case 8:
      if ((param_2[3] != 0) && (iVar3 = BIO_socket_nbio(param_1->num,1), iVar3 == 0)) {
        ERR_put_error(0x20,0x73,0x68,"jni/../../openssl-android/crypto/bio/bss_conn.c",0xe6);
        ERR_add_error_data(4,"host=",param_2[1],&DAT_0080cdf3,param_2[2]);
        goto switchD_0064898c_default;
      }
      *param_2 = 5;
      local_24 = 1;
      local_24 = setsockopt(param_1->num,1,9,&local_24,4);
      if ((int)local_24 < 0) {
        piVar4 = (int *)__errno();
        ERR_put_error(2,4,*piVar4,"jni/../../openssl-android/crypto/bio/bss_conn.c",0xf4);
        ERR_add_error_data(4,"host=",param_2[1],&DAT_0080cdf3,param_2[2]);
        line = 0xf7;
        iVar3 = 0x6d;
        goto LAB_00648af6;
      }
      goto LAB_00648c56;
    }
    *param_2 = uVar8;
LAB_00648c56:
    if ((pcVar10 != (code *)0x0) && (iVar9 = (*pcVar10)(param_1,*param_2,iVar9), iVar9 == 0)) {
      return 0;
    }
  } while( true );
}

// ---- FUN_00648cd4  @ 0x648cd4
void FUN_00648cd4(int param_1,int param_2,int param_3,BIO *param_4)

{
  char *pcVar1;
  undefined4 uVar2;
  BIO_METHOD *pBVar3;
  int *piVar4;
  char acStack_2c [16];
  int local_1c;
  
  piVar4 = *(int **)(param_1 + 0x20);
  local_1c = __stack_chk_guard;
  if (param_2 == 0xf) {
    pcVar1 = (char *)piVar4[10];
LAB_00648e88:
    param_4->method = (BIO_METHOD *)pcVar1;
  }
  else if (param_2 < 0x10) {
    if (param_2 == 9) {
      *(int *)(param_1 + 0x10) = param_3;
    }
    else {
      if (param_2 < 10) {
        if (param_2 == 1) {
          *piVar4 = 1;
          if (*(int *)(param_1 + 0x1c) != -1) {
            if (**(int **)(param_1 + 0x20) == 6) {
              shutdown(*(int *)(param_1 + 0x1c),2);
            }
            close(*(int *)(param_1 + 0x1c));
            *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
          }
          uVar2 = 0;
          *(undefined4 *)(param_1 + 0x14) = 0;
          goto LAB_00648e90;
        }
        if (param_2 == 8) {
          uVar2 = *(undefined4 *)(param_1 + 0x10);
          goto LAB_00648e90;
        }
LAB_00648e8e:
        uVar2 = 0;
        goto LAB_00648e90;
      }
      if (param_2 != 0xb) {
        if (param_2 != 0xc) goto LAB_00648e8e;
        if ((void *)piVar4[2] != (void *)0x0) {
          BIO_ctrl(param_4,100,1,(void *)piVar4[2]);
        }
        if ((void *)piVar4[1] != (void *)0x0) {
          BIO_ctrl(param_4,100,0,(void *)piVar4[1]);
        }
        BIO_ctrl(param_4,0x66,piVar4[3],(void *)0x0);
        BIO_callback_ctrl(param_4,0xe,(fp *)piVar4[10]);
      }
    }
  }
  else if (param_2 == 0x66) {
    piVar4[3] = param_3;
  }
  else if (param_2 < 0x67) {
    if (param_2 == 100) {
      uVar2 = 1;
      if (param_4 == (BIO *)0x0) goto LAB_00648e90;
      *(undefined4 *)(param_1 + 0xc) = 1;
      if (param_3 == 0) {
        if ((void *)piVar4[1] != (void *)0x0) {
          CRYPTO_free((void *)piVar4[1]);
        }
        pcVar1 = BUF_strdup((char *)param_4);
        piVar4[1] = (int)pcVar1;
      }
      else if (param_3 == 1) {
        if ((void *)piVar4[2] != (void *)0x0) {
          CRYPTO_free((void *)piVar4[2]);
        }
        pcVar1 = BUF_strdup((char *)param_4);
        piVar4[2] = (int)pcVar1;
      }
      else if (param_3 == 2) {
        BIO_snprintf(acStack_2c,0x10,"%d.%d.%d.%d",(uint)*(byte *)&param_4->method,
                     (uint)*(byte *)((int)&param_4->method + 1),
                     (uint)*(byte *)((int)&param_4->method + 2),
                     (uint)*(byte *)((int)&param_4->method + 3));
        if ((void *)piVar4[1] != (void *)0x0) {
          CRYPTO_free((void *)piVar4[1]);
        }
        pcVar1 = BUF_strdup(acStack_2c);
        piVar4[1] = (int)pcVar1;
        memcpy(piVar4 + 4,param_4,4);
      }
      else if (param_3 == 3) {
        BIO_snprintf(acStack_2c,0xd,"%d",param_4->method);
        if ((void *)piVar4[2] != (void *)0x0) {
          CRYPTO_free((void *)piVar4[2]);
        }
        pcVar1 = BUF_strdup(acStack_2c);
        piVar4[2] = (int)pcVar1;
        *(undefined2 *)(piVar4 + 5) = *(undefined2 *)&param_4->method;
      }
    }
    else {
      if (param_2 != 0x65) goto LAB_00648e8e;
      if (*piVar4 != 6) {
        uVar2 = FUN_0064896c(param_1,piVar4);
        goto LAB_00648e90;
      }
    }
  }
  else {
    if (param_2 == 0x69) {
      uVar2 = 0xffffffff;
      if (*(int *)(param_1 + 0xc) != 0) {
        if (param_4 != (BIO *)0x0) {
          param_4->method = *(BIO_METHOD **)(param_1 + 0x1c);
        }
        uVar2 = *(undefined4 *)(param_1 + 0x1c);
      }
      goto LAB_00648e90;
    }
    if (param_2 != 0x7b) goto LAB_00648e8e;
    if (param_4 == (BIO *)0x0) goto LAB_00648e8a;
    if (param_3 == 0) {
      pBVar3 = (BIO_METHOD *)piVar4[1];
LAB_00648d90:
      param_4->method = pBVar3;
    }
    else {
      if (param_3 == 1) {
        pBVar3 = (BIO_METHOD *)piVar4[2];
        goto LAB_00648d90;
      }
      if (param_3 == 2) {
        param_4->method = (BIO_METHOD *)(piVar4 + 4);
      }
      else if (param_3 == 3) {
        pBVar3 = (BIO_METHOD *)(uint)*(ushort *)(piVar4 + 5);
        goto LAB_00648d90;
      }
    }
    if (*(int *)(param_1 + 0xc) == 0) {
      pcVar1 = "not initialized";
      goto LAB_00648e88;
    }
  }
LAB_00648e8a:
  uVar2 = 1;
LAB_00648e90:
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

// ---- FUN_00648fec  @ 0x648fec
undefined4 FUN_00648fec(int param_1)

{
  int *piVar1;
  
  if (param_1 == 0) {
    return 0;
  }
  piVar1 = *(int **)(param_1 + 0x20);
  if (*(int *)(param_1 + 0x10) != 0) {
    if (*(int *)(param_1 + 0x1c) != -1) {
      if (*piVar1 == 6) {
        shutdown(*(int *)(param_1 + 0x1c),2);
      }
      close(*(int *)(param_1 + 0x1c));
      *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    }
    BIO_CONNECT_free(piVar1);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    return 1;
  }
  return 1;
}

// ---- FUN_00649470  @ 0x649470
void FUN_00649470(BIO *param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  int iVar2;
  ssize_t sVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  void *pvVar7;
  void *pvVar8;
  socklen_t local_60;
  timeval local_5c;
  int local_54;
  char *local_50;
  socklen_t local_4c;
  sockaddr sStack_48;
  int local_2c;
  
  pvVar8 = param_1->ptr;
  local_2c = __stack_chk_guard;
  local_4c = 0x1c;
  sVar3 = 0;
  if (param_2 != (void *)0x0) {
    puVar1 = (undefined4 *)__errno();
    *puVar1 = 0;
    memset(&sStack_48,0,0x1c);
    pvVar7 = param_1->ptr;
    local_60 = 0;
    if ((0 < *(int *)((int)pvVar7 + 0x28)) || (0 < *(int *)((int)pvVar7 + 0x2c))) {
      local_60 = 8;
      iVar2 = getsockopt(param_1->num,1,0x14,(void *)((int)pvVar7 + 0x30),&local_60);
      if (iVar2 < 0) {
        perror("getsockopt");
      }
      gettimeofday(&local_5c,(__timezone_ptr_t)0x0);
      local_54 = *(int *)((int)pvVar7 + 0x28) - local_5c.tv_sec;
      local_50 = (char *)(*(int *)((int)pvVar7 + 0x2c) - local_5c.tv_usec);
      if ((int)local_50 < 0) {
        local_54 = local_54 + -1;
        local_50 = "_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE4PushINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES3_EESA_S4_E5LevelEEEPT_j"
                   + (int)(local_50 + 0x51);
      }
      if (local_54 < 0) {
        local_54 = 0;
        local_50 = (char *)0x1;
      }
      iVar2 = *(int *)((int)pvVar7 + 0x30);
      if (((((iVar2 == 0) && (*(int *)((int)pvVar7 + 0x34) == 0)) || (local_54 < iVar2)) ||
          ((iVar2 == local_54 && ((int)local_50 <= *(int *)((int)pvVar7 + 0x34))))) &&
         (iVar2 = setsockopt(param_1->num,1,0x14,&local_54,8), iVar2 < 0)) {
        perror("setsockopt");
      }
    }
    sVar3 = recvfrom(param_1->num,param_2,param_3,0,&sStack_48,&local_4c);
    uVar5 = *(uint *)((int)pvVar8 + 0x1c);
    uVar6 = 1 - uVar5;
    if (1 < uVar5) {
      uVar6 = 0;
    }
    if (sVar3 < 0) {
      uVar6 = 0;
    }
    else {
      uVar6 = uVar6 & 1;
    }
    if (uVar6 != 0) {
      BIO_ctrl(param_1,0x2c,0,&sStack_48);
    }
    BIO_clear_flags(param_1,0xf);
    if ((sVar3 < 0) && (sVar3 + 1U < 2)) {
      piVar4 = (int *)__errno();
      iVar2 = BIO_dgram_non_fatal_error(*piVar4);
      if (iVar2 != 0) {
        BIO_set_flags(param_1,9);
        puVar1 = (undefined4 *)__errno();
        *(undefined4 *)((int)pvVar8 + 0x20) = *puVar1;
      }
    }
    pvVar8 = param_1->ptr;
    if (((0 < *(int *)((int)pvVar8 + 0x28)) || (0 < *(int *)((int)pvVar8 + 0x2c))) &&
       (iVar2 = setsockopt(param_1->num,1,0x14,(void *)((int)pvVar8 + 0x30),8), iVar2 < 0)) {
      perror("setsockopt");
    }
  }
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(sVar3);
}

// ---- FUN_006496b2  @ 0x6496b2
undefined4 FUN_006496b2(int param_1)

{
  if (param_1 == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    if (*(int *)(param_1 + 0xc) != 0) {
      close(*(int *)(param_1 + 0x1c));
    }
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 1;
}

// ---- FUN_006497c6  @ 0x6497c6
ssize_t FUN_006497c6(BIO *param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  ssize_t i;
  int iVar2;
  
  i = 0;
  if (param_2 != (void *)0x0) {
    puVar1 = (undefined4 *)__errno();
    *puVar1 = 0;
    i = read(param_1->num,param_2,param_3);
    BIO_clear_flags(param_1,0xf);
    if ((i < 1) && (iVar2 = BIO_fd_should_retry(i), iVar2 != 0)) {
      BIO_set_flags(param_1,9);
    }
  }
  return i;
}

// ---- FUN_00649804  @ 0x649804
void FUN_00649804(undefined4 param_1,char *param_2,int param_3)

{
  char *pcVar1;
  int iVar2;
  char *pcVar3;
  
  pcVar1 = param_2;
  do {
    pcVar3 = pcVar1;
    if ((param_2 + param_3 + -1 <= pcVar3) || (iVar2 = FUN_006497c6(param_1,pcVar3,1), iVar2 < 1))
    break;
    pcVar1 = pcVar3 + 1;
  } while (*pcVar3 != '\n');
  *pcVar3 = '\0';
  if (*param_2 == '\0') {
    return;
  }
  strlen(param_2);
  return;
}

// ---- FUN_00649844  @ 0x649844
ssize_t FUN_00649844(BIO *param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  ssize_t i;
  int iVar2;
  
  puVar1 = (undefined4 *)__errno();
  *puVar1 = 0;
  i = write(param_1->num,param_2,param_3);
  BIO_clear_flags(param_1,0xf);
  if ((i < 1) && (iVar2 = BIO_fd_should_retry(i), iVar2 != 0)) {
    BIO_set_flags(param_1,10);
  }
  return i;
}

// ---- FUN_00649880  @ 0x649880
void FUN_00649880(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_00649844(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_006498a8  @ 0x6498a8
void FUN_006498a8(int param_1,char *param_2,int param_3)

{
  char *pcVar1;
  
  *param_2 = '\0';
  pcVar1 = fgets(param_2,param_3,*(FILE **)(param_1 + 0x20));
  if ((pcVar1 != (char *)0x0) && (*param_2 != '\0')) {
    strlen(param_2);
    return;
  }
  return;
}

// ---- FUN_006498ce  @ 0x6498ce
undefined4 FUN_006498ce(int param_1)

{
  if (param_1 == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    if ((*(int *)(param_1 + 0xc) != 0) && (*(FILE **)(param_1 + 0x20) != (FILE *)0x0)) {
      fclose(*(FILE **)(param_1 + 0x20));
      *(undefined4 *)(param_1 + 0x20) = 0;
      *(undefined4 *)(param_1 + 0x14) = 0;
    }
    *(undefined4 *)(param_1 + 0xc) = 0;
    return 1;
  }
  return 1;
}

// ---- FUN_00649ae8  @ 0x649ae8
size_t FUN_00649ae8(int param_1,void *param_2,size_t param_3)

{
  size_t sVar1;
  size_t sVar2;
  
  sVar2 = 0;
  if ((param_2 != (void *)0x0 && *(int *)(param_1 + 0xc) != 0) &&
     (sVar1 = fwrite(param_2,param_3,1,*(FILE **)(param_1 + 0x20)), sVar2 = param_3, sVar1 == 0)) {
    sVar2 = 0;
  }
  return sVar2;
}

// ---- FUN_00649cf8  @ 0x649cf8
bool FUN_00649cf8(int param_1)

{
  BUF_MEM *pBVar1;
  
  pBVar1 = BUF_MEM_new();
  if (pBVar1 != (BUF_MEM *)0x0) {
    *(BUF_MEM **)(param_1 + 0x20) = pBVar1;
    *(undefined4 *)(param_1 + 0x10) = 1;
    *(undefined4 *)(param_1 + 0xc) = 1;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
  }
  return pBVar1 != (BUF_MEM *)0x0;
}

// ---- FUN_00649d14  @ 0x649d14
size_t FUN_00649d14(BIO *param_1,void *param_2,uint param_3)

{
  void *__dest;
  size_t sVar1;
  size_t *psVar2;
  
  psVar2 = param_1->ptr;
  BIO_clear_flags(param_1,0xf);
  if ((-1 < (int)param_3) && (*psVar2 < param_3)) {
    param_3 = *psVar2;
  }
  if ((int)param_3 < 1 || param_2 == (void *)0x0) {
    if ((*psVar2 == 0) && (param_3 = param_1->num, param_3 != 0)) {
      BIO_set_flags(param_1,9);
    }
  }
  else {
    memcpy(param_2,(void *)psVar2[1],param_3);
    sVar1 = *psVar2;
    __dest = (void *)psVar2[1];
    *psVar2 = sVar1 - param_3;
    if ((param_1->flags & 0x200U) == 0) {
      memmove(__dest,(void *)((int)__dest + param_3),sVar1 - param_3);
    }
    else {
      psVar2[1] = (int)__dest + param_3;
    }
  }
  return param_3;
}

// ---- FUN_00649d7e  @ 0x649d7e
void FUN_00649d7e(BIO *param_1,undefined1 *param_2,int param_3,undefined4 param_4)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  
  piVar4 = param_1->ptr;
  BIO_clear_flags(param_1,0xf);
  iVar2 = 0;
  iVar3 = *piVar4;
  if (param_3 <= iVar3) {
    iVar3 = param_3 + -1;
  }
  if (iVar3 < 1) {
    *param_2 = 0;
    return;
  }
  do {
    pcVar1 = (char *)(piVar4[1] + iVar2);
    iVar2 = iVar2 + 1;
    if (*pcVar1 == '\n') break;
  } while (iVar2 != iVar3);
  iVar2 = FUN_00649d14(param_1,param_2,iVar2,iVar3,param_4);
  if (0 < iVar2) {
    param_2[iVar2] = 0;
  }
  return;
}

// ---- FUN_00649dc8  @ 0x649dc8
size_t FUN_00649dc8(BIO *param_1,void *param_2,size_t param_3)

{
  size_t sVar1;
  int reason;
  BUF_MEM *str;
  size_t sVar2;
  size_t len;
  int line;
  
  str = param_1->ptr;
  if (param_2 == (void *)0x0) {
    line = 0xb2;
    reason = 0x73;
  }
  else {
    if (-1 < param_1->flags << 0x16) {
      BIO_clear_flags(param_1,0xf);
      sVar2 = str->length;
      len = sVar2 + param_3;
      sVar1 = BUF_MEM_grow_clean(str,len);
      if (sVar1 != len) {
        return 0xffffffff;
      }
      memcpy(str->data + sVar2,param_2,param_3);
      return param_3;
    }
    line = 0xb7;
    reason = 0x7e;
  }
  ERR_put_error(0x20,0x75,reason,"jni/../../openssl-android/crypto/bio/bss_mem.c",line);
  return 0xffffffff;
}

// ---- FUN_00649e52  @ 0x649e52
undefined4 FUN_00649e52(int param_1)

{
  BUF_MEM *a;
  
  if (param_1 == 0) {
    return 0;
  }
  if ((*(int *)(param_1 + 0x10) != 0) && (*(int *)(param_1 + 0xc) != 0)) {
    a = *(BUF_MEM **)(param_1 + 0x20);
    if (a == (BUF_MEM *)0x0) {
      return 1;
    }
    if (*(int *)(param_1 + 0x14) << 0x16 < 0) {
      a->data = (char *)0x0;
    }
    BUF_MEM_free(a);
    *(undefined4 *)(param_1 + 0x20) = 0;
  }
  return 1;
}

// ---- FUN_00649e82  @ 0x649e82
size_t FUN_00649e82(int param_1,int param_2,undefined4 param_3,size_t *param_4)

{
  void *__s;
  size_t sVar1;
  size_t sVar2;
  size_t *psVar3;
  
  psVar3 = *(size_t **)(param_1 + 0x20);
  if (param_2 == 10) {
    return *psVar3;
  }
  if (param_2 < 0xb) {
    if (param_2 == 3) {
      sVar2 = *psVar3;
      if (param_4 == (size_t *)0x0) {
        return sVar2;
      }
      *param_4 = psVar3[1];
      return sVar2;
    }
    if (param_2 < 4) {
      if (param_2 == 1) {
        __s = (void *)psVar3[1];
        if (__s == (void *)0x0) {
          return 1;
        }
        sVar2 = psVar3[2];
        if ((*(uint *)(param_1 + 0x14) & 0x200) != 0) {
          sVar1 = *psVar3;
          *psVar3 = sVar2;
          psVar3[1] = (int)__s + (sVar1 - sVar2);
          return 1;
        }
        memset(__s,0,sVar2);
        *psVar3 = 0;
        return 1;
      }
      if (param_2 == 2) {
        if (*psVar3 < 2) {
          return 1 - *psVar3;
        }
        return 0;
      }
    }
    else {
      if (param_2 == 8) {
        return *(size_t *)(param_1 + 0x10);
      }
      if (param_2 == 9) {
        *(undefined4 *)(param_1 + 0x10) = param_3;
        goto LAB_00649f24;
      }
    }
LAB_00649ecc:
    sVar2 = 0;
  }
  else {
    if (param_2 == 0x72) {
      FUN_00649e52();
      *(undefined4 *)(param_1 + 0x10) = param_3;
      *(size_t **)(param_1 + 0x20) = param_4;
    }
    else if (param_2 < 0x73) {
      if (0xc < param_2) goto LAB_00649ecc;
    }
    else if (param_2 == 0x73) {
      if (param_4 != (size_t *)0x0) {
        *param_4 = (size_t)psVar3;
      }
    }
    else {
      if (param_2 != 0x82) goto LAB_00649ecc;
      *(undefined4 *)(param_1 + 0x1c) = param_3;
    }
LAB_00649f24:
    sVar2 = 1;
  }
  return sVar2;
}

// ---- FUN_00649fe6  @ 0x649fe6
undefined4 FUN_00649fe6(int param_1)

{
  if (param_1 == 0) {
    return 0;
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    if (*(int *)(param_1 + 0xc) != 0) {
      shutdown(*(int *)(param_1 + 0x1c),2);
      close(*(int *)(param_1 + 0x1c));
    }
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 1;
}

// ---- FUN_0064a0d6  @ 0x64a0d6
ssize_t FUN_0064a0d6(BIO *param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  ssize_t i;
  int iVar2;
  
  i = 0;
  if (param_2 != (void *)0x0) {
    puVar1 = (undefined4 *)__errno();
    *puVar1 = 0;
    i = read(param_1->num,param_2,param_3);
    BIO_clear_flags(param_1,0xf);
    if ((i < 1) && (iVar2 = BIO_sock_should_retry(i), iVar2 != 0)) {
      BIO_set_flags(param_1,9);
    }
  }
  return i;
}

// ---- FUN_0064a114  @ 0x64a114
ssize_t FUN_0064a114(BIO *param_1,void *param_2,size_t param_3)

{
  undefined4 *puVar1;
  ssize_t i;
  int iVar2;
  
  puVar1 = (undefined4 *)__errno();
  *puVar1 = 0;
  i = write(param_1->num,param_2,param_3);
  BIO_clear_flags(param_1,0xf);
  if ((i < 1) && (iVar2 = BIO_sock_should_retry(i), iVar2 != 0)) {
    BIO_set_flags(param_1,10);
  }
  return i;
}

// ---- FUN_0064a150  @ 0x64a150
void FUN_0064a150(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  size_t sVar1;
  
  sVar1 = strlen(param_2);
  FUN_0064a114(param_1,param_2,sVar1,param_4);
  return;
}

// ---- FUN_0064c064  @ 0x64c064
undefined4 FUN_0064c064(int *param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined1 *puVar1;
  int *piVar2;
  int iVar3;
  
  for (iVar3 = 0; iVar3 != param_2 * 4; iVar3 = iVar3 + 1) {
    puVar1 = (undefined1 *)(param_3 + param_4);
    param_4 = param_4 + param_5;
    *(undefined1 *)(*param_1 + iVar3) = *puVar1;
  }
  param_1[1] = param_2;
  if (0 < param_2) {
    piVar2 = (int *)(*param_1 + (param_2 + -1) * 4);
    do {
      if (*piVar2 != 0) break;
      param_2 = param_2 + -1;
      piVar2 = piVar2 + -1;
    } while (param_2 != 0);
    param_1[1] = param_2;
  }
  return 1;
}

// ---- FUN_0064da98  @ 0x64da98
void FUN_0064da98(uint *param_1,uint *param_2,uint param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  bool bVar3;
  uint local_48 [4];
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  
  local_48[1] = param_3 & 0x3fffffff;
  local_48[2] = local_48[1] << 1;
  local_38 = param_3 << 2;
  local_48[0] = 0;
  local_34 = local_48[1] ^ local_38;
  local_2c = local_38 ^ local_48[2] ^ local_48[1];
  local_48[3] = local_48[2] ^ local_48[1];
  local_30 = local_48[2] ^ local_38;
  bVar3 = (param_3 >> 0x1e & 1) != 0;
  uVar2 = local_48[param_4 & 7] ^ local_48[param_4 >> 0x1e] << 0x1e ^
          local_48[(param_4 & 0x3f) >> 3] << 3 ^ local_48[(param_4 & 0x1ff) >> 6] << 6 ^
          local_48[(param_4 & 0xfff) >> 9] << 9 ^ local_48[(param_4 & 0x7fff) >> 0xc] << 0xc ^
          local_48[(param_4 & 0x3ffff) >> 0xf] << 0xf ^
          local_48[(param_4 & 0x1fffff) >> 0x12] << 0x12 ^
          local_48[(param_4 & 0xffffff) >> 0x15] << 0x15 ^
          local_48[(param_4 & 0x7ffffff) >> 0x18] << 0x18 ^
          local_48[(param_4 & 0x3fffffff) >> 0x1b] << 0x1b;
  uVar1 = local_48[(param_4 & 0x1ff) >> 6] >> 0x1a ^ local_48[(param_4 & 0x3f) >> 3] >> 0x1d ^
          local_48[param_4 >> 0x1e] >> 2 ^ local_48[(param_4 & 0xfff) >> 9] >> 0x17 ^
          local_48[(param_4 & 0x7fff) >> 0xc] >> 0x14 ^ local_48[(param_4 & 0x3ffff) >> 0xf] >> 0x11
          ^ local_48[(param_4 & 0x1fffff) >> 0x12] >> 0xe ^
          local_48[(param_4 & 0xffffff) >> 0x15] >> 0xb ^
          local_48[(param_4 & 0x7ffffff) >> 0x18] >> 8 ^
          local_48[(param_4 & 0x3fffffff) >> 0x1b] >> 5;
  if (bVar3) {
    uVar2 = uVar2 ^ param_4 << 0x1e;
  }
  if (bVar3) {
    uVar1 = uVar1 ^ param_4 >> 2;
  }
  bVar3 = (param_3 >> 0x1e & 2) != 0;
  if (bVar3) {
    uVar2 = uVar2 ^ param_4 << 0x1f;
  }
  if (bVar3) {
    uVar1 = uVar1 ^ param_4 >> 1;
  }
  *param_1 = uVar1;
  *param_2 = uVar2;
  return;
}

// ---- FUN_0064ec44  @ 0x64ec44
undefined8 FUN_0064ec44(int *param_1,int param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  int *line;
  
  if (param_2 < 0x1000000) {
    if (-1 < param_1[4] << 0x1e) {
      line = param_1;
      puVar6 = CRYPTO_malloc(param_2 << 2,"jni/../../openssl-android/crypto/bn/bn_lib.c",0x13d);
      if (puVar6 == (undefined4 *)0x0) {
        line = (int *)0x140;
        ERR_put_error(3,0x78,0x41,"jni/../../openssl-android/crypto/bn/bn_lib.c",0x140);
        goto LAB_0064ed0e;
      }
      puVar1 = (undefined4 *)*param_1;
      if (puVar1 == (undefined4 *)0x0) goto LAB_0064ed0e;
      iVar2 = param_1[1];
      uVar7 = iVar2 >> 2;
      puVar3 = puVar1;
      puVar5 = puVar6;
      for (uVar4 = uVar7; 0 < (int)uVar4; uVar4 = uVar4 - 1) {
        uVar10 = *puVar3;
        uVar9 = puVar3[1];
        uVar11 = puVar3[2];
        uVar8 = puVar3[3];
        puVar3 = puVar3 + 4;
        *puVar5 = uVar10;
        puVar5[1] = uVar9;
        puVar5[2] = uVar11;
        puVar5[3] = uVar8;
        puVar5 = puVar5 + 4;
      }
      uVar7 = uVar7 & ~(iVar2 >> 0x1f);
      uVar4 = param_1[1] & 3;
      if (uVar4 == 2) {
LAB_0064ed06:
        puVar6[uVar7 * 4 + 1] = puVar1[uVar7 * 4 + 1];
      }
      else {
        if (uVar4 == 3) {
          puVar6[uVar7 * 4 + 2] = puVar1[uVar7 * 4 + 2];
          goto LAB_0064ed06;
        }
        if (uVar4 != 1) goto LAB_0064ed0e;
      }
      puVar6[uVar7 * 4] = puVar1[uVar7 * 4];
      goto LAB_0064ed0e;
    }
    line = (int *)0x13a;
    iVar2 = 0x69;
  }
  else {
    line = (int *)0x135;
    iVar2 = 0x72;
  }
  ERR_put_error(3,0x78,iVar2,"jni/../../openssl-android/crypto/bn/bn_lib.c",(int)line);
  puVar6 = (undefined4 *)0x0;
LAB_0064ed0e:
  return CONCAT44(line,puVar6);
}

// ---- FUN_0064f802  @ 0x64f802
undefined4 FUN_0064f802(BIGNUM *param_1,BIGNUM *param_2,int param_3)

{
  BIGNUM *pBVar1;
  uint uVar2;
  ulong uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  ulong uVar8;
  ulong uVar9;
  int iVar10;
  ulong *puVar11;
  ulong *rp;
  ulong *ap;
  int iVar12;
  ulong *puVar13;
  ulong *puVar14;
  ulong uVar15;
  ulong *puVar16;
  
  iVar10 = *(int *)(param_3 + 0x1c);
  if (iVar10 == 0) {
    param_1->top = 0;
  }
  else {
    iVar12 = iVar10 * 2;
    if ((param_2->dmax < iVar12) && (pBVar1 = bn_expand2(param_2,iVar12), pBVar1 == (BIGNUM *)0x0))
    {
      return 0;
    }
    puVar11 = param_2->d;
    param_2->neg = *(uint *)(param_3 + 0x24) ^ param_2->neg;
    iVar6 = param_2->top;
    iVar4 = 0;
    puVar14 = *(ulong **)(param_3 + 0x18);
    iVar5 = iVar6 * 4;
    for (; iVar6 < iVar12; iVar6 = iVar6 + 1) {
      *(undefined4 *)((int)puVar11 + iVar4 + iVar5) = 0;
      iVar4 = iVar4 + 4;
    }
    param_2->top = iVar12;
    iVar5 = *(int *)(param_3 + 0x40);
    iVar4 = 0;
    iVar12 = 0;
    while (iVar4 < iVar10) {
      uVar3 = bn_mul_add_words(puVar11,puVar14,iVar10,iVar5 * *puVar11);
      uVar7 = puVar11[iVar10];
      iVar4 = iVar4 + 1;
      uVar2 = uVar7 + iVar12 + uVar3;
      puVar11[iVar10] = uVar2;
      if (uVar2 != uVar7) {
        iVar12 = 1;
      }
      if (uVar7 < uVar2) {
        iVar12 = 0;
      }
      puVar11 = puVar11 + 1;
    }
    if ((param_1->dmax < iVar10) && (pBVar1 = bn_expand2(param_1,iVar10), pBVar1 == (BIGNUM *)0x0))
    {
      return 0;
    }
    param_1->top = iVar10;
    rp = param_1->d;
    param_1->neg = param_2->neg;
    ap = param_2->d + iVar10;
    uVar3 = bn_sub_words(rp,ap,puVar14,iVar10);
    puVar13 = (ulong *)((uint)rp & ~(iVar12 - uVar3) | iVar12 - uVar3 & (uint)ap);
    iVar12 = 0;
    puVar11 = ap;
    puVar14 = puVar13;
    puVar16 = rp;
    while( true ) {
      if (iVar10 + -4 <= iVar12) break;
      uVar3 = puVar14[1];
      iVar12 = iVar12 + 4;
      uVar15 = *puVar14;
      uVar8 = puVar14[2];
      *puVar11 = 0;
      uVar9 = puVar14[3];
      puVar11[1] = 0;
      *puVar16 = uVar15;
      puVar11[2] = 0;
      puVar16[1] = uVar3;
      puVar11[3] = 0;
      puVar16[2] = uVar8;
      puVar16[3] = uVar9;
      puVar11 = puVar11 + 4;
      puVar14 = puVar14 + 4;
      puVar16 = puVar16 + 4;
    }
    iVar4 = 0;
    iVar5 = iVar12 * 4;
    for (; iVar12 < iVar10; iVar12 = iVar12 + 1) {
      *(undefined4 *)((int)rp + iVar4 + iVar5) = *(undefined4 *)((int)puVar13 + iVar4 + iVar5);
      *(undefined4 *)((int)ap + iVar4 + iVar5) = 0;
      iVar4 = iVar4 + 4;
    }
    iVar10 = param_2->top;
    if (0 < iVar10) {
      puVar11 = param_2->d + iVar10 + -1;
      do {
        if (*puVar11 != 0) break;
        iVar10 = iVar10 + -1;
        puVar11 = puVar11 + -1;
      } while (iVar10 != 0);
      param_2->top = iVar10;
    }
    iVar10 = param_1->top;
    if (0 < iVar10) {
      puVar11 = param_1->d + iVar10 + -1;
      do {
        if (*puVar11 != 0) break;
        iVar10 = iVar10 + -1;
        puVar11 = puVar11 + -1;
      } while (iVar10 != 0);
      param_1->top = iVar10;
    }
  }
  return 1;
}
