// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 86 functions

// ---- FUN_00660f44  @ 0x660f44
undefined4 FUN_00660f44(BIO *param_1,EC_KEY *param_2,int param_3,int param_4)

{
  EC_GROUP *group;
  BIGNUM *c;
  EC_POINT *pEVar1;
  point_conversion_form_t form;
  BIGNUM *a;
  int iVar2;
  BIGNUM *buf;
  int iVar3;
  BIGNUM *order;
  BIGNUM *a_00;
  undefined4 uVar4;
  uint uVar5;
  char *pcVar6;
  
  if ((param_2 == (EC_KEY *)0x0) || (group = EC_KEY_get0_group(param_2), group == (EC_GROUP *)0x0))
  {
    c = (BIGNUM *)0x0;
    iVar3 = 0x43;
    a = c;
    buf = c;
    order = c;
  }
  else {
    c = (BIGNUM *)BN_CTX_new();
    if (c == (BIGNUM *)0x0) {
      iVar3 = 0x41;
      a = (BIGNUM *)0x0;
      buf = (BIGNUM *)0x0;
      order = (BIGNUM *)0x0;
    }
    else if (param_4 < 1) {
      a_00 = (BIGNUM *)0x0;
      a = (BIGNUM *)0x0;
      buf = (BIGNUM *)0x0;
      pcVar6 = "ECDSA-Parameters";
LAB_0066101a:
      iVar3 = BIO_indent(param_1,param_3,0x80);
      order = (BIGNUM *)0x0;
      if (((iVar3 != 0) && (order = BN_new(), order != (BIGNUM *)0x0)) &&
         (iVar3 = EC_GROUP_get_order(group,order,(BN_CTX *)0x0), iVar3 != 0)) {
        iVar3 = BN_num_bits(order);
        iVar3 = BIO_printf(param_1,"%s: (%d bit)\n",pcVar6,iVar3);
        if (((0 < iVar3) &&
            ((a_00 == (BIGNUM *)0x0 ||
             (iVar3 = ASN1_bn_print(param_1,"priv:",a_00,(uchar *)buf,param_3), iVar3 != 0)))) &&
           ((a == (BIGNUM *)0x0 ||
            (iVar3 = ASN1_bn_print(param_1,"pub: ",a,(uchar *)buf,param_3), iVar3 != 0)))) {
          uVar4 = 1;
          iVar3 = ECPKParameters_print(param_1,group,param_3);
          if (iVar3 != 0) goto LAB_006610da;
        }
      }
      iVar3 = 0x20;
    }
    else {
      pEVar1 = EC_KEY_get0_public_key(param_2);
      form = EC_KEY_get_conv_form(param_2);
      a = EC_POINT_point2bn(group,pEVar1,form,(BIGNUM *)0x0,(BN_CTX *)c);
      if (a == (BIGNUM *)0x0) {
        iVar3 = 0x10;
        buf = (BIGNUM *)0x0;
        order = (BIGNUM *)0x0;
      }
      else {
        iVar2 = BN_num_bits(a);
        iVar3 = iVar2 + 0xe;
        if (-1 < iVar2 + 7) {
          iVar3 = iVar2 + 7;
        }
        uVar5 = iVar3 >> 3;
        if (param_4 == 2) {
          a_00 = EC_KEY_get0_private_key(param_2);
          if (a_00 != (BIGNUM *)0x0) {
            iVar2 = BN_num_bits(a_00);
            iVar3 = iVar2 + 7;
            if (iVar2 + 7 < 0) {
              iVar3 = iVar2 + 0xe;
            }
            if (uVar5 < (uint)(iVar3 >> 3)) {
              uVar5 = iVar3 >> 3;
            }
          }
        }
        else {
          a_00 = (BIGNUM *)0x0;
        }
        buf = CRYPTO_malloc(uVar5 + 10,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x1de);
        if (buf != (BIGNUM *)0x0) {
          if (param_4 == 2) {
            pcVar6 = "Private-Key";
          }
          else if (param_4 == 1) {
            pcVar6 = "Public-Key";
          }
          else {
            pcVar6 = "ECDSA-Parameters";
          }
          goto LAB_0066101a;
        }
        iVar3 = 0x41;
        order = (BIGNUM *)0x0;
      }
    }
  }
  ERR_put_error(0x10,0xdd,iVar3,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x1ff);
  uVar4 = 0;
LAB_006610da:
  if (a != (BIGNUM *)0x0) {
    BN_free(a);
  }
  if (order != (BIGNUM *)0x0) {
    BN_free(order);
  }
  if (c != (BIGNUM *)0x0) {
    BN_CTX_free((BN_CTX *)c);
  }
  if (buf != (BIGNUM *)0x0) {
    CRYPTO_free(buf);
  }
  return uVar4;
}

// ---- FUN_006611d8  @ 0x6611d8
undefined8 FUN_006611d8(undefined4 *param_1,undefined4 *param_2,EC_KEY *param_3)

{
  EC_GROUP *group;
  ASN1_OBJECT *pAVar1;
  ASN1_STRING *a;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *line;
  
  if ((param_3 == (EC_KEY *)0x0) ||
     (line = param_1, group = EC_KEY_get0_group(param_3), group == (EC_GROUP *)0x0)) {
    line = (undefined4 *)0x4a;
    iVar3 = 0x7c;
LAB_00661240:
    ERR_put_error(0x10,0xdf,iVar3,"jni/../../openssl-android/crypto/ec/ec_ameth.c",(int)line);
    uVar2 = 0;
  }
  else {
    iVar3 = EC_GROUP_get_asn1_flag(group);
    if ((iVar3 == 0) || (iVar3 = EC_GROUP_get_curve_name(group), iVar3 == 0)) {
      a = ASN1_STRING_new();
      uVar2 = 0;
      if (a == (ASN1_STRING *)0x0) goto LAB_00661250;
      iVar3 = i2d_ECParameters(param_3,&a->data);
      a->length = iVar3;
      if (iVar3 < 1) {
        ASN1_STRING_free(a);
        line = (undefined4 *)0x5e;
        iVar3 = 0x10;
        goto LAB_00661240;
      }
      uVar4 = 0x10;
      *param_2 = a;
    }
    else {
      pAVar1 = OBJ_nid2obj(iVar3);
      uVar4 = 6;
      *param_2 = pAVar1;
    }
    uVar2 = 1;
    *param_1 = uVar4;
  }
LAB_00661250:
  return CONCAT44(line,uVar2);
}

// ---- FUN_0066125c  @ 0x66125c
undefined4 FUN_0066125c(PKCS8_PRIV_KEY_INFO *param_1,int param_2)

{
  int iVar1;
  uint flags;
  uchar *penc;
  ASN1_OBJECT *aobj;
  EC_KEY *key;
  int iVar2;
  uchar *local_2c;
  int local_28;
  void *local_24;
  
  key = *(EC_KEY **)(param_2 + 0x14);
  iVar1 = FUN_006611d8(&local_28,&local_24,key);
  if (iVar1 == 0) {
    iVar2 = 0x144;
    iVar1 = 0x8e;
  }
  else {
    flags = EC_KEY_get_enc_flags(key);
    EC_KEY_set_enc_flags(key,flags | 1);
    iVar1 = i2d_ECPrivateKey(key,(uchar **)0x0);
    if (iVar1 == 0) {
      EC_KEY_set_enc_flags(key,flags);
      ERR_put_error(0x10,0xd6,0x10,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x153);
      return 0;
    }
    penc = CRYPTO_malloc(iVar1,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x156);
    if (penc != (uchar *)0x0) {
      local_2c = penc;
      iVar2 = i2d_ECPrivateKey(key,&local_2c);
      if (iVar2 == 0) {
        EC_KEY_set_enc_flags(key,flags);
        CRYPTO_free(penc);
        ERR_put_error(0x10,0xd6,0x10,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x162);
        return 0;
      }
      EC_KEY_set_enc_flags(key,flags);
      aobj = OBJ_nid2obj(0x198);
      iVar1 = PKCS8_pkey_set0(param_1,aobj,0,local_28,local_24,penc,iVar1);
      if (iVar1 == 0) {
        return 0;
      }
      return 1;
    }
    EC_KEY_set_enc_flags(key,flags);
    iVar1 = 0x41;
    iVar2 = 0x15a;
  }
  ERR_put_error(0x10,0xd6,iVar1,"jni/../../openssl-android/crypto/ec/ec_ameth.c",iVar2);
  return 0;
}

// ---- FUN_0066157c  @ 0x66157c
undefined4 FUN_0066157c(X509_PUBKEY *param_1,int param_2)

{
  int iVar1;
  ASN1_OBJECT *aobj;
  uchar *penc;
  EC_KEY *key;
  ASN1_OBJECT *local_24;
  int local_20;
  uchar *local_1c [2];
  
  key = *(EC_KEY **)(param_2 + 0x14);
  penc = (uchar *)0x0;
  local_24 = (ASN1_OBJECT *)0x0;
  iVar1 = FUN_006611d8(&local_20,&local_24,key);
  if (iVar1 == 0) {
    ERR_put_error(0x10,0xd8,0x10,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x71);
  }
  else {
    iVar1 = i2o_ECPublicKey(key,(uchar **)0x0);
    if (((0 < iVar1) &&
        (penc = CRYPTO_malloc(iVar1,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x77),
        penc != (uchar *)0x0)) &&
       (local_1c[0] = penc, iVar1 = i2o_ECPublicKey(key,local_1c), 0 < iVar1)) {
      aobj = OBJ_nid2obj(0x198);
      iVar1 = X509_PUBKEY_set0_param(param_1,aobj,local_20,local_24,penc,iVar1);
      if (iVar1 != 0) {
        return 1;
      }
    }
    if (local_20 == 6) {
      ASN1_OBJECT_free(local_24);
    }
    else {
      ASN1_STRING_free((ASN1_STRING *)local_24);
    }
    if (penc != (uchar *)0x0) {
      CRYPTO_free(penc);
    }
  }
  return 0;
}

// ---- FUN_0066176c  @ 0x66176c
undefined8 FUN_0066176c(EVP_PKEY *param_1,uchar **param_2,long param_3)

{
  EC_KEY *key;
  EVP_PKEY *pEVar1;
  
  pEVar1 = param_1;
  key = d2i_ECParameters((EC_KEY **)0x0,param_2,param_3);
  if (key != (EC_KEY *)0x0) {
    EVP_PKEY_assign(param_1,0x198,key);
  }
  else {
    pEVar1 = (EVP_PKEY *)0x211;
    ERR_put_error(0x10,0xd4,0x10,"jni/../../openssl-android/crypto/ec/ec_ameth.c",0x211);
  }
  return CONCAT44(pEVar1,(uint)(key != (EC_KEY *)0x0));
}

// ---- FUN_006617a8  @ 0x6617a8
undefined8 FUN_006617a8(int *param_1)

{
  EC_GROUP *group;
  BIGNUM *b;
  int iVar1;
  int iVar2;
  long n;
  void *__dest;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  size_t *psVar6;
  ASN1_INTEGER *ai;
  int *piVar7;
  BIGNUM *a;
  BIGNUM *pBVar8;
  BIGNUM *a_00;
  EC_POINT *p;
  
  if (param_1 == (int *)0x0) {
    param_1 = (int *)0x403;
    iVar3 = 0x7c;
    group = (EC_GROUP *)0x0;
LAB_006617ee:
    ERR_put_error(0x10,0x9e,iVar3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",(int)param_1);
  }
  else {
    iVar3 = *param_1;
    if (iVar3 == 0) {
      iVar3 = OBJ_obj2nid((ASN1_OBJECT *)param_1[1]);
      group = EC_GROUP_new_by_curve_name(iVar3);
      iVar3 = 1;
      if (group == (EC_GROUP *)0x0) {
        param_1 = (int *)0x40d;
        iVar3 = 0x77;
        goto LAB_006617ee;
      }
    }
    else {
      if (iVar3 != 1) {
        if (iVar3 != 2) {
          param_1 = (int *)0x423;
          ERR_put_error(0x10,0x9e,0x73,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x423);
        }
        group = (EC_GROUP *)0x0;
        goto LAB_00661c6a;
      }
      iVar3 = param_1[1];
      piVar5 = *(int **)(iVar3 + 4);
      if (((piVar5 == (int *)0x0) || (*piVar5 == 0)) || (piVar5[1] == 0)) {
        param_1 = (int *)0x2f8;
LAB_00661832:
        ERR_put_error(0x10,0x9d,0x73,"jni/../../openssl-android/crypto/ec/ec_asn1.c",(int)param_1);
        a = (BIGNUM *)0x0;
        a_00 = (BIGNUM *)0x0;
        pBVar8 = a;
LAB_00661c04:
        p = (EC_POINT *)0x0;
        group = (EC_GROUP *)0x0;
      }
      else {
        puVar4 = *(undefined4 **)(iVar3 + 8);
        if (((puVar4 == (undefined4 *)0x0) || (piVar5 = (int *)*puVar4, piVar5 == (int *)0x0)) ||
           (((uchar *)piVar5[2] == (uchar *)0x0 ||
            ((puVar4[1] == 0 || (*(int *)(puVar4[1] + 8) == 0)))))) {
          param_1 = (int *)0x301;
          goto LAB_00661832;
        }
        a_00 = BN_bin2bn((uchar *)piVar5[2],*piVar5,(BIGNUM *)0x0);
        if (a_00 == (BIGNUM *)0x0) {
          param_1 = (int *)0x307;
          ERR_put_error(0x10,0x9d,3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x307);
          a = (BIGNUM *)0x0;
          pBVar8 = (BIGNUM *)0x0;
          goto LAB_00661c04;
        }
        piVar5 = *(int **)(*(int *)(iVar3 + 8) + 4);
        b = BN_bin2bn((uchar *)piVar5[2],*piVar5,(BIGNUM *)0x0);
        pBVar8 = b;
        if (b == (BIGNUM *)0x0) {
          param_1 = (int *)0x30d;
          ERR_put_error(0x10,0x9d,3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x30d);
          a = (BIGNUM *)0x0;
          goto LAB_00661c04;
        }
        iVar1 = OBJ_obj2nid((ASN1_OBJECT *)**(undefined4 **)(iVar3 + 4));
        if (iVar1 == 0x197) {
          piVar5 = *(int **)(*(int *)(iVar3 + 4) + 4);
          iVar1 = *piVar5;
          if (iVar1 < 0x296) {
            a = BN_new();
            if (a == (BIGNUM *)0x0) {
              param_1 = (int *)0x328;
              iVar3 = 0x41;
            }
            else {
              iVar2 = OBJ_obj2nid((ASN1_OBJECT *)piVar5[1]);
              if (iVar2 == 0x2aa) {
                if ((ASN1_INTEGER *)piVar5[2] == (ASN1_INTEGER *)0x0) {
                  param_1 = (int *)0x335;
                  goto LAB_00661906;
                }
                n = ASN1_INTEGER_get((ASN1_INTEGER *)piVar5[2]);
                if (0 < n && n < *piVar5) {
                  iVar2 = BN_set_bit(a,*piVar5);
                  if (iVar2 != 0) {
LAB_006619c4:
                    iVar2 = BN_set_bit(a,n);
                    if ((iVar2 != 0) && (iVar2 = BN_set_bit(a,0), iVar2 != 0)) {
                      group = (EC_GROUP *)EC_GROUP_new_curve_GF2m(a,a_00,b,0);
                      goto LAB_00661a8a;
                    }
                  }
                  goto LAB_00661c04;
                }
                param_1 = (int *)0x33d;
                iVar3 = 0x89;
              }
              else if (iVar2 == 0x2ab) {
                piVar7 = (int *)piVar5[2];
                if (piVar7 == (int *)0x0) {
                  param_1 = (int *)0x350;
LAB_00661906:
                  iVar3 = 0x73;
                }
                else {
                  if ((((piVar7[2] < *piVar5) && (piVar7[1] < piVar7[2])) && (*piVar7 < piVar7[1]))
                     && (0 < *piVar7)) {
                    iVar2 = BN_set_bit(a,*piVar5);
                    if (((iVar2 != 0) && (iVar2 = BN_set_bit(a,*piVar7), iVar2 != 0)) &&
                       (iVar2 = BN_set_bit(a,piVar7[1]), iVar2 != 0)) {
                      n = piVar7[2];
                      goto LAB_006619c4;
                    }
                    goto LAB_00661c04;
                  }
                  param_1 = (int *)0x356;
                  iVar3 = 0x84;
                }
              }
              else {
                if (iVar2 != 0x2a9) {
                  param_1 = (int *)0x368;
                  goto LAB_00661906;
                }
                param_1 = (int *)0x363;
                iVar3 = 0x7e;
              }
            }
            goto LAB_0066190e;
          }
          param_1 = (int *)0x322;
          iVar3 = 0x8f;
LAB_00661aa0:
          ERR_put_error(0x10,0x9d,iVar3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",(int)param_1
                       );
          a = (BIGNUM *)0x0;
          goto LAB_00661c04;
        }
        if (iVar1 != 0x196) {
          param_1 = (int *)0x392;
          iVar3 = 0x67;
          goto LAB_00661aa0;
        }
        ai = *(ASN1_INTEGER **)(*(int *)(iVar3 + 4) + 4);
        if (ai == (ASN1_INTEGER *)0x0) {
          param_1 = (int *)0x376;
          a = (BIGNUM *)0x0;
          goto LAB_00661906;
        }
        a = ASN1_INTEGER_to_BN(ai,(BIGNUM *)0x0);
        if (a == (BIGNUM *)0x0) {
          param_1 = (int *)0x37c;
          iVar3 = 0xd;
LAB_0066190e:
          ERR_put_error(0x10,0x9d,iVar3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",(int)param_1
                       );
          goto LAB_00661c04;
        }
        if ((a->neg != 0) || (a->top == 0)) {
          param_1 = (int *)0x382;
          iVar3 = 0x67;
          goto LAB_0066190e;
        }
        iVar1 = BN_num_bits(a);
        if (0x295 < iVar1) {
          param_1 = (int *)0x389;
          iVar3 = 0x8f;
          goto LAB_0066190e;
        }
        group = EC_GROUP_new_curve_GFp(a,a_00,b,(BN_CTX *)0x0);
LAB_00661a8a:
        if (group == (EC_GROUP *)0x0) {
          iVar3 = 0x10;
          param_1 = (int *)0x398;
          goto LAB_0066190e;
        }
        if (*(int *)(*(int *)(iVar3 + 8) + 8) == 0) {
LAB_00661b0e:
          if (((*(int *)(iVar3 + 0x10) == 0) || (*(int *)(iVar3 + 0xc) == 0)) ||
             (*(int *)(*(int *)(iVar3 + 0xc) + 8) == 0)) {
            param_1 = (int *)0x3ae;
            p = (EC_POINT *)0x0;
            ERR_put_error(0x10,0x9d,0x73,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x3ae);
            goto LAB_00661c70;
          }
          p = EC_POINT_new(group);
          if (p == (EC_POINT *)0x0) goto LAB_00661c70;
          EC_GROUP_set_point_conversion_form
                    (group,**(byte **)(*(int *)(iVar3 + 0xc) + 8) & 0xfffffffe);
          param_1 = (int *)0x0;
          iVar2 = EC_POINT_oct2point(group,p,(uchar *)(*(size_t **)(iVar3 + 0xc))[2],
                                     **(size_t **)(iVar3 + 0xc),(BN_CTX *)0x0);
          if (iVar2 == 0) {
            param_1 = (int *)0x3bc;
LAB_00661bf6:
            iVar3 = 0x10;
            b = pBVar8;
LAB_00661bfe:
            ERR_put_error(0x10,0x9d,iVar3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",
                          (int)param_1);
            pBVar8 = b;
            goto LAB_00661c70;
          }
          a_00 = ASN1_INTEGER_to_BN(*(ASN1_INTEGER **)(iVar3 + 0x10),a_00);
          if (a_00 == (BIGNUM *)0x0) {
            param_1 = (int *)0x3c3;
LAB_00661bd6:
            iVar3 = 0xd;
            b = pBVar8;
            goto LAB_00661bfe;
          }
          if ((a_00->neg != 0) || (a_00->top == 0)) {
            param_1 = (int *)0x3c8;
LAB_00661bac:
            iVar3 = 0x7a;
            goto LAB_00661bfe;
          }
          iVar2 = BN_num_bits(a_00);
          if (iVar1 + 1 < iVar2) {
            param_1 = (int *)0x3cd;
            goto LAB_00661bac;
          }
          if (*(ASN1_INTEGER **)(iVar3 + 0x14) == (ASN1_INTEGER *)0x0) {
            pBVar8 = (BIGNUM *)0x0;
            BN_free(b);
          }
          else {
            pBVar8 = ASN1_INTEGER_to_BN(*(ASN1_INTEGER **)(iVar3 + 0x14),b);
            if (pBVar8 == (BIGNUM *)0x0) {
              param_1 = (int *)0x3dd;
              goto LAB_00661bd6;
            }
          }
          iVar3 = EC_GROUP_set_generator(group,p,a_00,pBVar8);
          if (iVar3 == 0) {
            param_1 = (int *)0x3e3;
            goto LAB_00661bf6;
          }
        }
        else {
          if (*(void **)(group + 0x3c) != (void *)0x0) {
            CRYPTO_free(*(void **)(group + 0x3c));
          }
          __dest = CRYPTO_malloc(**(int **)(*(int *)(iVar3 + 8) + 8),
                                 "jni/../../openssl-android/crypto/ec/ec_asn1.c",0x3a1);
          *(void **)(group + 0x3c) = __dest;
          if (__dest != (void *)0x0) {
            psVar6 = *(size_t **)(*(int *)(iVar3 + 8) + 8);
            memcpy(__dest,(void *)psVar6[2],*psVar6);
            *(undefined4 *)(group + 0x40) = **(undefined4 **)(*(int *)(iVar3 + 8) + 8);
            goto LAB_00661b0e;
          }
          param_1 = (int *)0x3a4;
          ERR_put_error(0x10,0x9d,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x3a4);
          p = (EC_POINT *)0x0;
LAB_00661c70:
          EC_GROUP_clear_free(group);
          group = (EC_GROUP *)0x0;
        }
      }
      if (a != (BIGNUM *)0x0) {
        BN_free(a);
      }
      if (a_00 != (BIGNUM *)0x0) {
        BN_free(a_00);
      }
      if (pBVar8 != (BIGNUM *)0x0) {
        BN_free(pBVar8);
      }
      if (p != (EC_POINT *)0x0) {
        EC_POINT_free(p);
      }
      iVar3 = 0;
      if (group == (EC_GROUP *)0x0) {
        iVar3 = 0x10;
        param_1 = (int *)0x418;
        goto LAB_006617ee;
      }
    }
    EC_GROUP_set_asn1_flag(group,iVar3);
  }
LAB_00661c6a:
  return CONCAT44(param_1,group);
}

// ---- FUN_00661e78  @ 0x661e78
int * FUN_00661e78(EC_GROUP *param_1,int *param_2)

{
  bool bVar1;
  int iVar2;
  ASN1_OBJECT *pAVar3;
  BIGNUM *order;
  EC_METHOD *pEVar4;
  ASN1_OBJECT *pAVar5;
  BIGNUM *pBVar6;
  undefined4 *puVar7;
  ASN1_NULL *pAVar8;
  BIGNUM *b;
  uint *to;
  ASN1_BIT_STRING *pAVar9;
  EC_POINT *p;
  point_conversion_form_t form;
  size_t len;
  size_t sVar10;
  ASN1_OCTET_STRING *pAVar11;
  ASN1_INTEGER *pAVar12;
  int iVar13;
  uint uVar14;
  int *piVar15;
  uchar *buf;
  char **ppcVar16;
  uint *puVar17;
  uint *local_4c;
  int local_44;
  uint *local_40;
  undefined4 local_34;
  undefined4 local_30;
  uint local_2c [2];
  
  if (param_2 == (int *)0x0) {
    param_2 = (int *)ECPKPARAMETERS_new();
    if (param_2 == (int *)0x0) {
      ERR_put_error(0x10,0x9c,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x2c0);
      return (int *)0x0;
    }
  }
  else if (*param_2 == 0) {
    if ((ASN1_OBJECT *)param_2[1] != (ASN1_OBJECT *)0x0) {
      ASN1_OBJECT_free((ASN1_OBJECT *)param_2[1]);
    }
  }
  else if ((*param_2 == 1) && (param_2[1] != 0)) {
    ECPARAMETERS_free();
  }
  iVar2 = EC_GROUP_get_asn1_flag(param_1);
  if (iVar2 == 0) {
    *param_2 = 1;
    order = BN_new();
    if (order == (BIGNUM *)0x0) {
      ERR_put_error(0x10,0x9b,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x249);
      pAVar3 = (ASN1_OBJECT *)0x0;
    }
    else {
      pAVar3 = (ASN1_OBJECT *)ECPARAMETERS_new();
      if (pAVar3 == (ASN1_OBJECT *)0x0) {
        ERR_put_error(0x10,0x9b,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x252);
        buf = (uchar *)0x0;
        goto LAB_006624a0;
      }
      ppcVar16 = pAVar3->ln;
      pAVar3->sn = (char *)0x1;
      uVar14 = 1 - (int)ppcVar16;
      if ((char **)0x1 < ppcVar16) {
        uVar14 = 0;
      }
      if (param_1 == (EC_GROUP *)0x0) {
        uVar14 = uVar14 | 1;
      }
      if (uVar14 == 0) {
        if ((ASN1_OBJECT *)*ppcVar16 != (ASN1_OBJECT *)0x0) {
          ASN1_OBJECT_free((ASN1_OBJECT *)*ppcVar16);
        }
        if ((ASN1_TYPE *)ppcVar16[1] != (ASN1_TYPE *)0x0) {
          ASN1_TYPE_free((ASN1_TYPE *)ppcVar16[1]);
        }
        pEVar4 = EC_GROUP_method_of(param_1);
        iVar2 = EC_METHOD_get_field_type(pEVar4);
        pAVar5 = OBJ_nid2obj(iVar2);
        *ppcVar16 = (char *)pAVar5;
        if (pAVar5 == (ASN1_OBJECT *)0x0) {
          iVar2 = 0x13e;
LAB_00662042:
          iVar13 = 8;
LAB_006620e8:
          ERR_put_error(0x10,0x9a,iVar13,"jni/../../openssl-android/crypto/ec/ec_asn1.c",iVar2);
          goto LAB_006620ec;
        }
        if (iVar2 == 0x196) {
          pBVar6 = BN_new();
          if (pBVar6 != (BIGNUM *)0x0) {
            iVar2 = EC_GROUP_get_curve_GFp(param_1,pBVar6,(BIGNUM *)0x0,(BIGNUM *)0x0,(BN_CTX *)0x0)
            ;
            if (iVar2 == 0) {
              ERR_put_error(0x10,0x9a,0x10,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x14c);
              bVar1 = false;
            }
            else {
              pAVar12 = BN_to_ASN1_INTEGER(pBVar6,(ASN1_INTEGER *)0x0);
              ppcVar16[1] = (char *)pAVar12;
              if (pAVar12 == (ASN1_INTEGER *)0x0) {
                ERR_put_error(0x10,0x9a,0xd,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x153);
                bVar1 = false;
              }
              else {
                bVar1 = true;
              }
            }
            BN_free(pBVar6);
            if (bVar1) goto LAB_006620f8;
            goto LAB_006620ec;
          }
          iVar2 = 0x146;
LAB_006620e0:
          iVar13 = 0x41;
          goto LAB_006620e8;
        }
        piVar15 = (int *)X9_62_CHARACTERISTIC_TWO_new();
        ppcVar16[1] = (char *)piVar15;
        if (piVar15 == (int *)0x0) {
          iVar2 = 0x167;
          goto LAB_006620e0;
        }
        iVar2 = EC_GROUP_get_degree(param_1);
        *piVar15 = iVar2;
        iVar2 = EC_GROUP_get_basis_type(param_1);
        if (iVar2 == 0) {
          iVar2 = 0x171;
          iVar13 = 0x10;
          goto LAB_006620e8;
        }
        pAVar5 = OBJ_nid2obj(iVar2);
        piVar15[1] = (int)pAVar5;
        if (pAVar5 == (ASN1_OBJECT *)0x0) {
          iVar2 = 0x177;
          goto LAB_00662042;
        }
        if (iVar2 == 0x2aa) {
          iVar2 = EC_GROUP_get_trinomial_basis(param_1,local_2c);
          if (iVar2 == 0) goto LAB_006620ec;
          pAVar12 = ASN1_INTEGER_new();
          piVar15[2] = (int)pAVar12;
          if (pAVar12 == (ASN1_INTEGER *)0x0) {
            iVar2 = 0x185;
            goto LAB_006620e0;
          }
          iVar2 = ASN1_INTEGER_set(pAVar12,local_2c[0]);
          if (iVar2 == 0) {
            iVar2 = 0x18b;
            iVar13 = 0xd;
            goto LAB_006620e8;
          }
        }
        else if (iVar2 == 0x2ab) {
          iVar2 = EC_GROUP_get_pentanomial_basis(param_1,&local_34,&local_30,local_2c);
          if (iVar2 == 0) goto LAB_006620ec;
          puVar7 = (undefined4 *)X9_62_PENTANOMIAL_new();
          piVar15[2] = (int)puVar7;
          if (puVar7 == (undefined4 *)0x0) {
            iVar2 = 0x199;
            goto LAB_006620e0;
          }
          *puVar7 = local_34;
          *(undefined4 *)(piVar15[2] + 4) = local_30;
          *(uint *)(piVar15[2] + 8) = local_2c[0];
        }
        else {
          pAVar8 = ASN1_NULL_new();
          piVar15[2] = (int)pAVar8;
          if (pAVar8 == (ASN1_NULL *)0x0) {
            iVar2 = 0x1a8;
            goto LAB_006620e0;
          }
        }
LAB_006620f8:
        piVar15 = (int *)pAVar3->nid;
        local_2c[0] = local_2c[0] & 0xffffff00;
        if (((piVar15 == (int *)0x0) || (*piVar15 == 0)) || (piVar15[1] == 0)) {
LAB_0066235e:
          iVar2 = 0x266;
          goto LAB_00662366;
        }
        pBVar6 = BN_new();
        if ((pBVar6 == (BIGNUM *)0x0) || (b = BN_new(), b == (BIGNUM *)0x0)) {
          b = (BIGNUM *)0x0;
          ERR_put_error(0x10,0x99,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x1c4);
LAB_006624d2:
          bVar1 = false;
        }
        else {
          pEVar4 = EC_GROUP_method_of(param_1);
          iVar2 = EC_METHOD_get_field_type(pEVar4);
          if (iVar2 != 0x196) {
            iVar2 = EC_GROUP_get_curve_GF2m();
            if (iVar2 != 0) goto LAB_00662186;
            iVar2 = 0x1d8;
LAB_0066217c:
            iVar13 = 0x10;
LAB_006621cc:
            ERR_put_error(0x10,0x99,iVar13,"jni/../../openssl-android/crypto/ec/ec_asn1.c",iVar2);
            goto LAB_006624d2;
          }
          iVar2 = EC_GROUP_get_curve_GFp(param_1,(BIGNUM *)0x0,pBVar6,b,(BN_CTX *)0x0);
          if (iVar2 == 0) {
            iVar2 = 0x1cf;
            goto LAB_0066217c;
          }
LAB_00662186:
          iVar13 = BN_num_bits(pBVar6);
          iVar2 = iVar13 + 0xe;
          if (-1 < iVar13 + 7) {
            iVar2 = iVar13 + 7;
          }
          iVar13 = BN_num_bits(b);
          if (iVar2 >> 3 == 0) {
            local_4c = local_2c;
            local_44 = 1;
            local_40 = (uint *)0x0;
LAB_0066220c:
            iVar2 = iVar13 + 0xe;
            if (-1 < iVar13 + 7) {
              iVar2 = iVar13 + 7;
            }
            if (iVar2 >> 3 == 0) {
              to = local_2c;
              iVar2 = 1;
              puVar17 = (uint *)0x0;
LAB_00662282:
              iVar13 = ASN1_STRING_set((ASN1_STRING *)*piVar15,local_4c,local_44);
              if ((iVar13 == 0) ||
                 (iVar2 = ASN1_STRING_set((ASN1_STRING *)piVar15[1],to,iVar2), iVar2 == 0)) {
                bVar1 = false;
                ERR_put_error(0x10,0x99,0xd,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x210);
              }
              else {
                pAVar9 = (ASN1_BIT_STRING *)piVar15[2];
                if (*(int *)(param_1 + 0x3c) == 0) {
                  if (pAVar9 != (ASN1_BIT_STRING *)0x0) {
                    ASN1_BIT_STRING_free(pAVar9);
                    piVar15[2] = 0;
                  }
                }
                else {
                  if (pAVar9 == (ASN1_BIT_STRING *)0x0) {
                    pAVar9 = ASN1_BIT_STRING_new();
                    piVar15[2] = (int)pAVar9;
                    if (pAVar9 == (ASN1_BIT_STRING *)0x0) {
                      ERR_put_error(0x10,0x99,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",
                                    0x21a);
                      bVar1 = false;
                      goto LAB_0066232e;
                    }
                  }
                  *(uint *)(piVar15[2] + 0xc) = *(uint *)(piVar15[2] + 0xc) & 0xfffffff0;
                  *(uint *)(piVar15[2] + 0xc) = *(uint *)(piVar15[2] + 0xc) | 8;
                  iVar2 = ASN1_BIT_STRING_set((ASN1_STRING *)piVar15[2],*(void **)(param_1 + 0x3c),
                                              *(int *)(param_1 + 0x40));
                  if (iVar2 == 0) {
                    ERR_put_error(0x10,0x99,0xd,"jni/../../openssl-android/crypto/ec/ec_asn1.c",
                                  0x222);
                    bVar1 = false;
                    goto LAB_0066232e;
                  }
                }
                bVar1 = true;
              }
            }
            else {
              to = CRYPTO_malloc(iVar2 >> 3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x1fe);
              puVar17 = to;
              if (to == (uint *)0x0) {
                ERR_put_error(0x10,0x99,0x41,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x201);
                bVar1 = false;
              }
              else {
                iVar2 = BN_bn2bin(b,(uchar *)to);
                if (iVar2 != 0) goto LAB_00662282;
                ERR_put_error(0x10,0x99,3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x206);
                bVar1 = false;
              }
            }
LAB_0066232e:
            if (local_40 != (uint *)0x0) goto LAB_00662332;
          }
          else {
            local_4c = CRYPTO_malloc(iVar2 >> 3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",
                                     0x1e8);
            if (local_4c == (uint *)0x0) {
              iVar13 = 0x41;
              iVar2 = 0x1eb;
              goto LAB_006621cc;
            }
            local_44 = BN_bn2bin(pBVar6,(uchar *)local_4c);
            local_40 = local_4c;
            if (local_44 != 0) goto LAB_0066220c;
            ERR_put_error(0x10,0x99,3,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x1f0);
            bVar1 = false;
            puVar17 = (uint *)0x0;
LAB_00662332:
            CRYPTO_free(local_40);
          }
          if (puVar17 != (uint *)0x0) {
            CRYPTO_free(puVar17);
          }
        }
        if (pBVar6 != (BIGNUM *)0x0) {
          BN_free(pBVar6);
        }
        if (b != (BIGNUM *)0x0) {
          BN_free(b);
        }
        if (!bVar1) goto LAB_0066235e;
        p = EC_GROUP_get0_generator(param_1);
        if (p == (EC_POINT *)0x0) {
          ERR_put_error(0x10,0x9b,0x71,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x26d);
          buf = (uchar *)0x0;
          goto LAB_006624d6;
        }
        form = EC_GROUP_get_point_conversion_form(param_1);
        len = EC_POINT_point2oct(param_1,p,form,(uchar *)0x0,0,(BN_CTX *)0x0);
        if (len == 0) {
          ERR_put_error(0x10,0x9b,0x10,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x276);
          buf = (uchar *)0x0;
          goto LAB_006624d6;
        }
        buf = CRYPTO_malloc(len,"jni/../../openssl-android/crypto/ec/ec_asn1.c",0x279);
        iVar2 = 0x27b;
        if (buf == (uchar *)0x0) {
LAB_0066241c:
          iVar13 = 0x41;
LAB_0066249a:
          ERR_put_error(0x10,0x9b,iVar13,"jni/../../openssl-android/crypto/ec/ec_asn1.c",iVar2);
          goto LAB_006624d6;
        }
        sVar10 = EC_POINT_point2oct(param_1,p,form,buf,len,(BN_CTX *)0x0);
        if (sVar10 == 0) {
          iVar2 = 0x280;
          iVar13 = 0x10;
          goto LAB_0066249a;
        }
        if (pAVar3->length == 0) {
          pAVar11 = ASN1_OCTET_STRING_new();
          pAVar3->length = (int)pAVar11;
          if (pAVar11 == (ASN1_OCTET_STRING *)0x0) {
            iVar2 = 0x285;
            goto LAB_0066241c;
          }
        }
        iVar2 = ASN1_OCTET_STRING_set((ASN1_STRING *)pAVar3->length,buf,len);
        if (iVar2 == 0) {
          iVar2 = 0x28a;
LAB_00662492:
          iVar13 = 0xd;
          goto LAB_0066249a;
        }
        iVar2 = EC_GROUP_get_order(param_1,order,(BN_CTX *)0x0);
        if (iVar2 == 0) {
          iVar2 = 0x291;
          iVar13 = 0x10;
          goto LAB_0066249a;
        }
        pAVar12 = BN_to_ASN1_INTEGER(order,(ASN1_INTEGER *)pAVar3->data);
        pAVar3->data = (uchar *)pAVar12;
        if (pAVar12 == (ASN1_INTEGER *)0x0) {
          iVar2 = 0x297;
          goto LAB_00662492;
        }
        iVar2 = EC_GROUP_get_cofactor(param_1,order,(BN_CTX *)0x0);
        if (iVar2 != 0) {
          pAVar12 = BN_to_ASN1_INTEGER(order,(ASN1_INTEGER *)pAVar3->flags);
          pAVar3->flags = (int)pAVar12;
          if (pAVar12 == (ASN1_INTEGER *)0x0) {
            iVar2 = 0x2a1;
            goto LAB_00662492;
          }
        }
      }
      else {
LAB_006620ec:
        iVar2 = 0x25f;
LAB_00662366:
        buf = (uchar *)0x0;
        ERR_put_error(0x10,0x9b,0x10,"jni/../../openssl-android/crypto/ec/ec_asn1.c",iVar2);
LAB_006624d6:
        ECPARAMETERS_free(pAVar3);
        pAVar3 = (ASN1_OBJECT *)0x0;
      }
LAB_006624a0:
      BN_free(order);
      if (buf != (uchar *)0x0) {
        CRYPTO_free(buf);
      }
    }
    param_2[1] = (int)pAVar3;
  }
  else {
    iVar2 = EC_GROUP_get_curve_name(param_1);
    if (iVar2 == 0) goto LAB_006624b2;
    *param_2 = 0;
    pAVar3 = OBJ_nid2obj(iVar2);
    param_2[1] = (int)pAVar3;
  }
  if (pAVar3 != (ASN1_OBJECT *)0x0) {
    return param_2;
  }
LAB_006624b2:
  ECPKPARAMETERS_free(param_2);
  return (int *)0x0;
}

// ---- FUN_00664658  @ 0x664658
undefined1 * FUN_00664658(BIGNUM *param_1,uint param_2,uint *param_3)

{
  undefined1 *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int reason;
  char cVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  if (param_1->top == 0) {
    puVar1 = CRYPTO_malloc(1,"jni/../../openssl-android/crypto/ec/ec_mult.c",0xcc);
    if (puVar1 != (undefined1 *)0x0) {
      *puVar1 = 0;
      *param_3 = 1;
      return puVar1;
    }
    iVar9 = 0xcf;
    reason = 0x41;
    puVar1 = (undefined1 *)0x0;
  }
  else {
    if (6 < param_2 - 1) {
      puVar1 = (undefined1 *)0x0;
      ERR_put_error(0x10,0x8f,0x44,"jni/../../openssl-android/crypto/ec/ec_mult.c",0xd9);
      goto LAB_006647e4;
    }
    if (param_1->neg == 0) {
      cVar5 = '\x01';
    }
    else {
      cVar5 = -1;
    }
    if (param_1->d == (ulong *)0x0) {
      iVar9 = 0xe7;
      puVar1 = (undefined1 *)0x0;
    }
    else {
      uVar2 = BN_num_bits(param_1);
      puVar1 = CRYPTO_malloc(uVar2 + 1,"jni/../../openssl-android/crypto/ec/ec_mult.c",0xec);
      if (puVar1 == (undefined1 *)0x0) {
        iVar9 = 0xf1;
        reason = 0x41;
        goto LAB_006647e0;
      }
      uVar7 = 1 << (param_2 & 0xff);
      uVar6 = 0;
      uVar8 = uVar7 * 2;
      uVar3 = *param_1->d & uVar8 - 1;
      do {
        param_2 = param_2 + 1;
        if ((uVar3 == 0) && (uVar2 <= param_2)) {
          if (uVar6 <= uVar2 + 1) {
            *param_3 = uVar6;
            return puVar1;
          }
          iVar9 = 0x135;
          goto LAB_006647d8;
        }
        uVar4 = 0;
        if ((uVar3 & 1) != 0) {
          uVar4 = uVar3;
          if ((uVar3 & uVar7) != 0) {
            if (param_2 < uVar2) {
              uVar4 = uVar3 + uVar7 * -2;
            }
            else {
              uVar4 = uVar3 & (int)(uVar8 - 1) >> 1;
            }
          }
          if (((int)uVar7 <= (int)uVar4 || (int)uVar4 <= (int)-uVar7) || ((uVar4 & 1) == 0)) {
            iVar9 = 0x117;
            goto LAB_006647d8;
          }
          uVar3 = uVar3 - uVar4;
          if ((uVar3 != uVar8 && uVar3 != 0) && (uVar3 != uVar7)) {
            iVar9 = 0x122;
            goto LAB_006647d8;
          }
        }
        puVar1[uVar6] = cVar5 * (char)uVar4;
        uVar6 = uVar6 + 1;
        iVar9 = BN_is_bit_set(param_1,param_2);
        uVar3 = iVar9 * uVar7 + ((int)uVar3 >> 1);
      } while ((int)uVar3 <= (int)uVar8);
      iVar9 = 0x12e;
    }
LAB_006647d8:
    reason = 0x44;
  }
LAB_006647e0:
  ERR_put_error(0x10,0x8f,reason,"jni/../../openssl-android/crypto/ec/ec_mult.c",iVar9);
LAB_006647e4:
  CRYPTO_free(puVar1);
  return (undefined1 *)0x0;
}

// ---- FUN_00664874  @ 0x664874
void FUN_00664874(void *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
  if ((param_1 != (void *)0x0) &&
     (iVar1 = CRYPTO_add_lock((int *)((int)param_1 + 0x18),-1,0x24,
                              "jni/../../openssl-android/crypto/ec/ec_mult.c",0x8c), iVar1 < 1)) {
    puVar2 = *(undefined4 **)((int)param_1 + 0x10);
    if (*(undefined4 **)((int)param_1 + 0x10) != (undefined4 *)0x0) {
      while( true ) {
        if ((EC_POINT *)*puVar2 == (EC_POINT *)0x0) break;
        EC_POINT_free((EC_POINT *)*puVar2);
        puVar2 = puVar2 + 1;
      }
      CRYPTO_free(*(void **)((int)param_1 + 0x10));
    }
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_0066571c  @ 0x66571c
int FUN_0066571c(int param_1,uchar *param_2,uint *param_3,uchar *param_4,int param_5)

{
  uint uVar1;
  EVP_MD *md;
  EC_KEY *eckey;
  int iVar2;
  uint uVar3;
  uint local_24 [2];
  
  iVar2 = *(int *)(param_1 + 0x14);
  eckey = *(EC_KEY **)(*(int *)(param_1 + 8) + 0x14);
  if (param_2 == (uchar *)0x0) {
    uVar1 = ECDSA_size(eckey);
    *param_3 = uVar1;
  }
  else {
    uVar3 = *param_3;
    uVar1 = ECDSA_size(eckey);
    if (uVar3 < uVar1) {
      ERR_put_error(0x10,0xda,100,"jni/../../openssl-android/crypto/ec/ec_pmeth.c",0x86);
      return 0;
    }
    md = *(EVP_MD **)(iVar2 + 4);
    if (md == (EVP_MD *)0x0) {
      iVar2 = 0x40;
    }
    else {
      iVar2 = EVP_MD_type(md);
    }
    iVar2 = ECDSA_sign(iVar2,param_4,param_5,param_2,local_24,eckey);
    if (iVar2 < 1) {
      return iVar2;
    }
    *param_3 = local_24[0];
  }
  return 1;
}

// ---- FUN_00665794  @ 0x665794
void FUN_00665794(int param_1)

{
  undefined4 *ptr;
  
  ptr = *(undefined4 **)(param_1 + 0x14);
  if (ptr != (undefined4 *)0x0) {
    if ((EC_GROUP *)*ptr != (EC_GROUP *)0x0) {
      EC_GROUP_free((EC_GROUP *)*ptr);
    }
    CRYPTO_free(ptr);
    return;
  }
  return;
}

// ---- FUN_006683fe  @ 0x6683fe
void FUN_006683fe(void *param_1)

{
  CRYPTO_free_ex_data(0xd,param_1,(CRYPTO_EX_DATA *)((int)param_1 + 0x10));
  OPENSSL_cleanse(param_1,0x18);
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0066844c  @ 0x66844c
undefined8 FUN_0066844c(undefined4 param_1)

{
  undefined4 *obj;
  ECDH_METHOD *pEVar1;
  
  obj = CRYPTO_malloc(0x18,"jni/../../openssl-android/crypto/ecdh/ech_lib.c",0x8e);
  if (obj == (undefined4 *)0x0) {
    param_1 = 0x91;
    ERR_put_error(0x2b,0x65,0x41,"jni/../../openssl-android/crypto/ecdh/ech_lib.c",0x91);
  }
  else {
    *obj = 0;
    pEVar1 = ECDH_get_default_method();
    obj[1] = 0;
    obj[3] = pEVar1;
    obj[2] = *(undefined4 *)(pEVar1 + 8);
    CRYPTO_new_ex_data(0xd,obj,(CRYPTO_EX_DATA *)(obj + 4));
  }
  return CONCAT44(param_1,obj);
}

// ---- FUN_00668548  @ 0x668548
uint FUN_00668548(void *param_1,uint param_2,EC_POINT *param_3,EC_KEY *param_4,code *param_5)

{
  uint uVar1;
  BN_CTX *ctx;
  BIGNUM *x;
  BIGNUM *y;
  BIGNUM *m;
  EC_GROUP *group;
  EC_POINT *r;
  EC_METHOD *meth;
  uint uVar2;
  int iVar3;
  void *__s;
  uint uVar4;
  int iVar5;
  uint local_2c [2];
  
  local_2c[0] = param_2;
  if ((int)param_2 < 0) {
    ERR_put_error(0x2b,100,0x41,"jni/../../openssl-android/crypto/ecdh/ech_ossl.c",0x7b);
    return 0xffffffff;
  }
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    return 0xffffffff;
  }
  BN_CTX_start(ctx);
  x = BN_CTX_get(ctx);
  y = BN_CTX_get(ctx);
  m = EC_KEY_get0_private_key(param_4);
  if (m == (BIGNUM *)0x0) {
    iVar5 = 0x87;
    iVar3 = 100;
  }
  else {
    group = EC_KEY_get0_group(param_4);
    r = EC_POINT_new(group);
    if (r != (EC_POINT *)0x0) {
      iVar3 = EC_POINT_mul(group,r,(BIGNUM *)0x0,param_3,m,ctx);
      if (iVar3 == 0) {
        iVar3 = 0x94;
LAB_00668618:
        __s = (void *)0x0;
        iVar5 = 0x65;
LAB_006686d8:
        ERR_put_error(0x2b,100,iVar5,"jni/../../openssl-android/crypto/ecdh/ech_ossl.c",iVar3);
LAB_006686dc:
        uVar4 = 0xffffffff;
      }
      else {
        meth = EC_GROUP_method_of(group);
        iVar3 = EC_METHOD_get_field_type(meth);
        if (iVar3 != 0x196) {
          iVar3 = EC_POINT_get_affine_coordinates_GF2m();
          if (iVar3 != 0) goto LAB_00668632;
          iVar3 = 0xa5;
          goto LAB_00668618;
        }
        iVar3 = EC_POINT_get_affine_coordinates_GFp(group,r,x,y,ctx);
        if (iVar3 == 0) {
          iVar3 = 0x9c;
          goto LAB_00668618;
        }
LAB_00668632:
        iVar5 = EC_GROUP_get_degree(group);
        iVar3 = iVar5 + 0xe;
        if (-1 < iVar5 + 7) {
          iVar3 = iVar5 + 7;
        }
        iVar5 = BN_num_bits(x);
        uVar4 = iVar3 >> 3;
        iVar3 = iVar5 + 0xe;
        if (-1 < iVar5 + 7) {
          iVar3 = iVar5 + 7;
        }
        uVar1 = iVar3 >> 3;
        if (uVar4 < uVar1) {
          __s = (void *)0x0;
          ERR_put_error(0x2b,100,0x44,"jni/../../openssl-android/crypto/ecdh/ech_ossl.c",0xaf);
          goto LAB_006686dc;
        }
        __s = CRYPTO_malloc(uVar4,"jni/../../openssl-android/crypto/ecdh/ech_ossl.c",0xb2);
        if (__s == (void *)0x0) {
          iVar3 = 0xb4;
          iVar5 = 0x41;
          goto LAB_006686d8;
        }
        memset(__s,0,uVar4 - uVar1);
        uVar2 = BN_bn2bin(x,(uchar *)((int)__s + (uVar4 - uVar1)));
        if (uVar1 != uVar2) {
          iVar3 = 0xbb;
          iVar5 = 3;
          goto LAB_006686d8;
        }
        if (param_5 == (code *)0x0) {
          if (uVar4 < local_2c[0]) {
            local_2c[0] = uVar4;
          }
          uVar4 = local_2c[0];
          memcpy(param_1,__s,local_2c[0]);
        }
        else {
          iVar3 = (*param_5)(__s,uVar4,param_1,local_2c);
          uVar4 = local_2c[0];
          if (iVar3 == 0) {
            iVar5 = 0x66;
            iVar3 = 0xc3;
            goto LAB_006686d8;
          }
        }
      }
      EC_POINT_free(r);
      goto LAB_00668704;
    }
    iVar5 = 0x8e;
    iVar3 = 0x41;
  }
  ERR_put_error(0x2b,100,iVar3,"jni/../../openssl-android/crypto/ecdh/ech_ossl.c",iVar5);
  if (ctx == (BN_CTX *)0x0) {
    return 0xffffffff;
  }
  __s = (void *)0x0;
  uVar4 = 0xffffffff;
LAB_00668704:
  BN_CTX_end(ctx);
  BN_CTX_free(ctx);
  if (__s != (void *)0x0) {
    CRYPTO_free(__s);
    return uVar4;
  }
  return uVar4;
}

// ---- FUN_006687c8  @ 0x6687c8
void FUN_006687c8(void *param_1)

{
  CRYPTO_free_ex_data(0xc,param_1,(CRYPTO_EX_DATA *)((int)param_1 + 0x10));
  OPENSSL_cleanse(param_1,0x18);
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_00668818  @ 0x668818
undefined8 FUN_00668818(undefined4 param_1)

{
  undefined4 *obj;
  ECDSA_METHOD *pEVar1;
  
  obj = CRYPTO_malloc(0x18,"jni/../../openssl-android/crypto/ecdsa/ecs_lib.c",0x79);
  if (obj == (undefined4 *)0x0) {
    param_1 = 0x7c;
    ERR_put_error(0x2a,100,0x41,"jni/../../openssl-android/crypto/ecdsa/ecs_lib.c",0x7c);
  }
  else {
    *obj = 0;
    pEVar1 = ECDSA_get_default_method();
    obj[1] = 0;
    obj[3] = pEVar1;
    obj[2] = *(undefined4 *)(pEVar1 + 0x10);
    CRYPTO_new_ex_data(0xc,obj,(CRYPTO_EX_DATA *)(obj + 4));
  }
  return CONCAT44(param_1,obj);
}

// ---- FUN_00668980  @ 0x668980
int FUN_00668980(uchar *param_1,int param_2,undefined4 *param_3,EC_KEY *param_4)

{
  EC_GROUP *group;
  EC_POINT *q;
  BN_CTX *ctx;
  BIGNUM *order;
  BIGNUM *r;
  BIGNUM *ret;
  BIGNUM *ret_00;
  BIGNUM *x;
  BIGNUM *pBVar1;
  uint uVar2;
  EC_METHOD *meth;
  int iVar3;
  EC_POINT *r_00;
  int iVar4;
  
  if ((((param_4 == (EC_KEY *)0x0) || (group = EC_KEY_get0_group(param_4), group == (EC_GROUP *)0x0)
       ) || (q = EC_KEY_get0_public_key(param_4), q == (EC_POINT *)0x0)) ||
     (param_3 == (undefined4 *)0x0)) {
    iVar4 = 0x183;
    iVar3 = 0x67;
LAB_006689d4:
    ERR_put_error(0x2a,0x66,iVar3,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",iVar4);
    return -1;
  }
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    iVar4 = 0x18a;
    iVar3 = 0x41;
    goto LAB_006689d4;
  }
  BN_CTX_start(ctx);
  order = BN_CTX_get(ctx);
  r = BN_CTX_get(ctx);
  ret = BN_CTX_get(ctx);
  ret_00 = BN_CTX_get(ctx);
  x = BN_CTX_get(ctx);
  if (x == (BIGNUM *)0x0) {
    ERR_put_error(0x2a,0x66,3,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x195);
    r_00 = (EC_POINT *)0x0;
  }
  else {
    iVar3 = EC_GROUP_get_order(group,order,ctx);
    if (iVar3 == 0) {
      iVar3 = 0x19b;
      r_00 = (EC_POINT *)0x0;
      goto LAB_00668a3a;
    }
    pBVar1 = (BIGNUM *)*param_3;
    if ((((pBVar1->top == 0) || (pBVar1->neg != 0)) ||
        ((iVar3 = BN_ucmp(pBVar1,order), -1 < iVar3 ||
         ((pBVar1 = (BIGNUM *)param_3[1], pBVar1->top == 0 || (pBVar1->neg != 0)))))) ||
       (iVar3 = BN_ucmp(pBVar1,order), -1 < iVar3)) {
      r_00 = (EC_POINT *)0x0;
      ERR_put_error(0x2a,0x66,100,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x1a3);
      iVar3 = 0;
      goto LAB_00668bfe;
    }
    pBVar1 = BN_mod_inverse(ret,(BIGNUM *)param_3[1],order,ctx);
    if (pBVar1 == (BIGNUM *)0x0) {
      iVar3 = 0x1aa;
      r_00 = (EC_POINT *)0x0;
      goto LAB_00668be2;
    }
    uVar2 = BN_num_bits(order);
    if ((int)uVar2 < param_2 * 8) {
      param_2 = uVar2 + 0xe;
      if (-1 < (int)(uVar2 + 7)) {
        param_2 = uVar2 + 7;
      }
      param_2 = param_2 >> 3;
    }
    pBVar1 = BN_bin2bn(param_1,param_2,ret_00);
    if (pBVar1 == (BIGNUM *)0x0) {
      ERR_put_error(0x2a,0x66,3,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x1b6);
      r_00 = (EC_POINT *)0x0;
      goto LAB_00668a46;
    }
    if (((int)uVar2 < param_2 * 8) && (iVar3 = BN_rshift(ret_00,ret_00,8 - (uVar2 & 7)), iVar3 == 0)
       ) {
      iVar3 = 0x1bc;
      r_00 = (EC_POINT *)0x0;
LAB_00668be2:
      iVar4 = 3;
    }
    else {
      iVar3 = BN_mod_mul(r,ret_00,ret,order,ctx);
      if (iVar3 == 0) {
        iVar3 = 0x1c2;
        r_00 = (EC_POINT *)0x0;
        goto LAB_00668be2;
      }
      iVar3 = BN_mod_mul(ret,(BIGNUM *)*param_3,ret,order,ctx);
      if (iVar3 == 0) {
        iVar3 = 0x1c8;
        r_00 = (EC_POINT *)0x0;
        goto LAB_00668be2;
      }
      r_00 = EC_POINT_new(group);
      if (r_00 == (EC_POINT *)0x0) {
        iVar3 = 0x1ce;
        iVar4 = 0x41;
      }
      else {
        iVar3 = EC_POINT_mul(group,r_00,r,q,ret,ctx);
        if (iVar3 == 0) {
          iVar3 = 0x1d3;
        }
        else {
          meth = EC_GROUP_method_of(group);
          iVar3 = EC_METHOD_get_field_type(meth);
          if (iVar3 == 0x196) {
            iVar3 = EC_POINT_get_affine_coordinates_GFp(group,r_00,x,(BIGNUM *)0x0,ctx);
            if (iVar3 != 0) {
LAB_00668bcc:
              iVar3 = BN_nnmod(r,x,order,ctx);
              if (iVar3 != 0) {
                uVar2 = BN_ucmp(r,(BIGNUM *)*param_3);
                iVar3 = 1 - uVar2;
                if (1 < uVar2) {
                  iVar3 = 0;
                }
                goto LAB_00668bfe;
              }
              iVar3 = 0x1ec;
              goto LAB_00668be2;
            }
            iVar3 = 0x1db;
          }
          else {
            iVar3 = EC_POINT_get_affine_coordinates_GF2m();
            if (iVar3 != 0) goto LAB_00668bcc;
            iVar3 = 0x1e5;
          }
        }
LAB_00668a3a:
        iVar4 = 0x10;
      }
    }
    ERR_put_error(0x2a,0x66,iVar4,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",iVar3);
  }
LAB_00668a46:
  iVar3 = -1;
LAB_00668bfe:
  BN_CTX_end(ctx);
  BN_CTX_free(ctx);
  if (r_00 == (EC_POINT *)0x0) {
    return iVar3;
  }
  EC_POINT_free(r_00);
  return iVar3;
}

// ---- FUN_00668c58  @ 0x668c58
undefined4
FUN_00668c58(EC_KEY *param_1,BN_CTX *param_2,undefined4 *param_3,undefined4 *param_4,
            undefined4 param_5,undefined4 param_6)

{
  EC_GROUP *group;
  BN_CTX *ctx;
  BIGNUM *rnd;
  BIGNUM *r;
  BIGNUM *order;
  BIGNUM *x;
  BIGNUM *pBVar1;
  EC_METHOD *meth;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  EC_POINT *r_00;
  
  if ((param_1 == (EC_KEY *)0x0) || (group = EC_KEY_get0_group(param_1), group == (EC_GROUP *)0x0))
  {
    ERR_put_error(0x2a,0x67,0x43,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x67);
    return 0;
  }
  ctx = param_2;
  if ((param_2 == (BN_CTX *)0x0) && (ctx = BN_CTX_new(), ctx == (BN_CTX *)0x0)) {
    ERR_put_error(0x2a,0x67,0x41,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x6f);
    return 0;
  }
  rnd = BN_new();
  r = BN_new();
  order = BN_new();
  x = BN_new();
  uVar4 = 1 - (int)rnd;
  if ((BIGNUM *)0x1 < rnd) {
    uVar4 = 0;
  }
  if (r == (BIGNUM *)0x0) {
    uVar4 = uVar4 | 1;
  }
  if (uVar4 == 0) {
    uVar4 = 1 - (int)order;
    if ((BIGNUM *)0x1 < order) {
      uVar4 = 0;
    }
    if (x == (BIGNUM *)0x0) {
      uVar4 = uVar4 | 1;
    }
    if (uVar4 != 0) goto LAB_00668cea;
    r_00 = EC_POINT_new(group);
    if (r_00 == (EC_POINT *)0x0) {
      iVar2 = 0x81;
LAB_00668d26:
      iVar3 = 0x10;
    }
    else {
      iVar2 = EC_GROUP_get_order(group,order,ctx);
      if (iVar2 == 0) {
        iVar2 = 0x86;
        goto LAB_00668d26;
      }
      do {
        do {
          iVar2 = EC_KEY_get_nonce_from_hash(param_1);
          if (iVar2 == 0) {
            iVar2 = BN_rand_range(rnd,order);
            if (iVar2 == 0) {
              iVar2 = 0xa1;
              goto LAB_00668d72;
            }
          }
          else {
            pBVar1 = EC_KEY_get0_private_key(param_1);
            iVar2 = BN_generate_dsa_nonce(rnd,order,pBVar1,param_5,param_6,ctx);
            if (iVar2 == 0) {
              iVar2 = 0x97;
LAB_00668d72:
              iVar3 = 0x68;
              goto LAB_00668d2e;
            }
          }
        } while (rnd->top == 0);
        iVar2 = BN_add(rnd,rnd,order);
        if (iVar2 == 0) goto LAB_00668e60;
        iVar2 = BN_num_bits(rnd);
        iVar3 = BN_num_bits(order);
        if ((iVar2 <= iVar3) && (iVar2 = BN_add(rnd,rnd,order), iVar2 == 0)) goto LAB_00668e60;
        iVar2 = EC_POINT_mul(group,r_00,rnd,(EC_POINT *)0x0,(BIGNUM *)0x0,ctx);
        if (iVar2 == 0) {
          iVar2 = 0xb2;
          goto LAB_00668d26;
        }
        meth = EC_GROUP_method_of(group);
        iVar2 = EC_METHOD_get_field_type(meth);
        if (iVar2 == 0x196) {
          iVar2 = EC_POINT_get_affine_coordinates_GFp(group,r_00,x,(BIGNUM *)0x0,ctx);
          if (iVar2 == 0) {
            iVar2 = 0xba;
            goto LAB_00668d26;
          }
        }
        else {
          iVar2 = EC_POINT_get_affine_coordinates_GF2m();
          if (iVar2 == 0) {
            iVar2 = 0xc4;
            goto LAB_00668d26;
          }
        }
        iVar2 = BN_nnmod(r,x,order,ctx);
        if (iVar2 == 0) {
          iVar2 = 0xcb;
          goto LAB_00668e36;
        }
      } while (r->top == 0);
      pBVar1 = BN_mod_inverse(rnd,rnd,order,ctx);
      if (pBVar1 != (BIGNUM *)0x0) {
        if ((BIGNUM *)*param_4 != (BIGNUM *)0x0) {
          BN_clear_free((BIGNUM *)*param_4);
        }
        if ((BIGNUM *)*param_3 != (BIGNUM *)0x0) {
          BN_clear_free((BIGNUM *)*param_3);
        }
        *param_4 = r;
        uVar5 = 1;
        *param_3 = rnd;
        goto LAB_00668e72;
      }
      iVar2 = 0xd4;
LAB_00668e36:
      iVar3 = 3;
    }
LAB_00668d2e:
    ERR_put_error(0x2a,0x67,iVar3,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",iVar2);
  }
  else {
LAB_00668cea:
    r_00 = (EC_POINT *)0x0;
    ERR_put_error(0x2a,0x67,0x41,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x7c);
  }
LAB_00668e60:
  if (rnd != (BIGNUM *)0x0) {
    BN_clear_free(rnd);
  }
  uVar5 = 0;
  if (r != (BIGNUM *)0x0) {
    uVar5 = 0;
    BN_clear_free(r);
  }
LAB_00668e72:
  if (param_2 == (BN_CTX *)0x0) {
    BN_CTX_free(ctx);
  }
  if (order != (BIGNUM *)0x0) {
    BN_free(order);
  }
  if (r_00 != (EC_POINT *)0x0) {
    EC_POINT_free(r_00);
  }
  if (x != (BIGNUM *)0x0) {
    BN_clear_free(x);
  }
  return uVar5;
}

// ---- FUN_00668ed4  @ 0x668ed4
ECDSA_SIG * FUN_00668ed4(uchar *param_1,int param_2,BIGNUM *param_3,BIGNUM *param_4,EC_KEY *param_5)

{
  int iVar1;
  EC_GROUP *group;
  BIGNUM *a;
  ECDSA_SIG *sig;
  BN_CTX *ctx;
  BIGNUM *order;
  BIGNUM *r;
  BIGNUM *ret;
  int iVar2;
  BIGNUM *pBVar3;
  BIGNUM *pBVar4;
  uint uVar5;
  BIGNUM *r_00;
  BIGNUM *local_2c [2];
  
  local_2c[0] = (BIGNUM *)0x0;
  iVar1 = ecdsa_check(param_5);
  group = EC_KEY_get0_group(param_5);
  a = EC_KEY_get0_private_key(param_5);
  uVar5 = 1 - (int)group;
  if ((EC_GROUP *)0x1 < group) {
    uVar5 = 0;
  }
  if (a == (BIGNUM *)0x0) {
    uVar5 = uVar5 | 1;
  }
  if ((uVar5 != 0) || (iVar1 == 0)) {
    ERR_put_error(0x2a,0x65,0x43,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x104);
    return (ECDSA_SIG *)0x0;
  }
  sig = ECDSA_SIG_new();
  if (sig == (ECDSA_SIG *)0x0) {
    ERR_put_error(0x2a,0x65,0x41,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x10b);
    return (ECDSA_SIG *)0x0;
  }
  r_00 = sig->s;
  ctx = BN_CTX_new();
  if (ctx == (BN_CTX *)0x0) {
    order = (BIGNUM *)0x0;
    r = (BIGNUM *)0x0;
  }
  else {
    order = BN_new();
    if (order == (BIGNUM *)0x0) {
      r = (BIGNUM *)0x0;
    }
    else {
      r = BN_new();
      if ((r != (BIGNUM *)0x0) && (ret = BN_new(), ret != (BIGNUM *)0x0)) {
        iVar2 = EC_GROUP_get_order(group,order,ctx);
        if (iVar2 == 0) {
          iVar1 = 0x119;
          iVar2 = 0x10;
        }
        else {
          uVar5 = BN_num_bits(order);
          if ((int)uVar5 < param_2 * 8) {
            param_2 = uVar5 + 0xe;
            if (-1 < (int)(uVar5 + 7)) {
              param_2 = uVar5 + 7;
            }
            param_2 = param_2 >> 3;
          }
          pBVar3 = BN_bin2bn(param_1,param_2,ret);
          if (pBVar3 == (BIGNUM *)0x0) {
            iVar1 = 0x124;
          }
          else {
            if ((param_2 * 8 <= (int)uVar5) ||
               (iVar2 = BN_rshift(ret,ret,8 - (uVar5 & 7)), iVar2 != 0)) {
              do {
                uVar5 = 1 - (int)param_3;
                if ((BIGNUM *)0x1 < param_3) {
                  uVar5 = 0;
                }
                if (param_4 == (BIGNUM *)0x0) {
                  uVar5 = uVar5 | 1;
                }
                if (uVar5 == 0) {
                  pBVar4 = BN_copy(sig->r,param_4);
                  pBVar3 = param_3;
                  if (pBVar4 == (BIGNUM *)0x0) {
                    iVar1 = 0x13d;
                    iVar2 = 0x41;
                    goto LAB_006690f6;
                  }
                }
                else {
                  iVar2 = (**(code **)(*(int *)(iVar1 + 0xc) + 8))
                                    (param_5,ctx,local_2c,sig,param_1,param_2);
                  pBVar3 = local_2c[0];
                  if (iVar2 == 0) {
                    iVar1 = 0x133;
                    iVar2 = 0x2a;
                    goto LAB_006690f6;
                  }
                }
                iVar2 = BN_mod_mul(r,a,sig->r,order,ctx);
                if (iVar2 == 0) {
                  iVar1 = 0x144;
                  goto LAB_006690bc;
                }
                iVar2 = BN_mod_add_quick(r_00,r,ret,order);
                if (iVar2 == 0) {
                  iVar1 = 0x149;
                  goto LAB_006690bc;
                }
                iVar2 = BN_mod_mul(r_00,r_00,pBVar3,order,ctx);
                if (iVar2 == 0) {
                  iVar1 = 0x14e;
                  goto LAB_006690bc;
                }
                if (r_00->top != 0) goto LAB_00669108;
              } while (param_4 == (BIGNUM *)0x0 || param_3 == (BIGNUM *)0x0);
              iVar1 = 0x157;
              iVar2 = 0x6a;
              goto LAB_006690f6;
            }
            iVar1 = 0x12a;
          }
LAB_006690bc:
          iVar2 = 3;
        }
LAB_006690f6:
        ERR_put_error(0x2a,0x65,iVar2,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",iVar1);
        goto LAB_006690fa;
      }
    }
  }
  ret = (BIGNUM *)0x0;
  ERR_put_error(0x2a,0x65,0x41,"jni/../../openssl-android/crypto/ecdsa/ecs_ossl.c",0x113);
LAB_006690fa:
  ECDSA_SIG_free(sig);
  sig = (ECDSA_SIG *)0x0;
  if (ctx == (BN_CTX *)0x0) {
    sig = (ECDSA_SIG *)0x0;
  }
  else {
LAB_00669108:
    BN_CTX_free(ctx);
  }
  if (ret != (BIGNUM *)0x0) {
    BN_clear_free(ret);
  }
  if (r != (BIGNUM *)0x0) {
    BN_clear_free(r);
  }
  if (order != (BIGNUM *)0x0) {
    BN_free(order);
  }
  if (local_2c[0] != (BIGNUM *)0x0) {
    BN_clear_free(local_2c[0]);
  }
  return sig;
}

// ---- FUN_006692d8  @ 0x6692d8
void FUN_006692d8(void)

{
  ENGINE *e;
  
  while (e = sk_pop(DAT_009669ac), e != (ENGINE *)0x0) {
    ENGINE_finish(e);
  }
  sk_free(DAT_009669ac);
  DAT_009669ac = (_STACK *)e;
  return;
}

// ---- FUN_00669300  @ 0x669300
undefined4 FUN_00669300(ENGINE *param_1)

{
  int iVar1;
  
  if (DAT_009669ac == (_STACK *)0x0) {
    DAT_009669ac = sk_new_null();
  }
  if ((DAT_009669ac != (_STACK *)0x0) && (iVar1 = sk_push(DAT_009669ac,param_1), iVar1 != 0)) {
    return 1;
  }
  ENGINE_finish(param_1);
  return 0;
}

// ---- FUN_00669338  @ 0x669338
undefined4 FUN_00669338(CONF_IMODULE *param_1,CONF *param_2)

{
  bool bVar1;
  char *pcVar2;
  _STACK *p_Var3;
  void *pvVar4;
  char *section;
  char *pcVar5;
  _STACK *p_Var6;
  undefined4 *puVar7;
  ENGINE *e;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  uint uVar11;
  ENGINE *pEVar12;
  uint uVar13;
  char *__s;
  int local_54;
  long local_2c [2];
  
  pcVar2 = CONF_imodule_get_value(param_1);
  p_Var3 = &NCONF_get_section(param_2,pcVar2)->stack;
  if (p_Var3 == (_STACK *)0x0) {
    ERR_put_error(0x26,0xbb,0x94,"jni/../../openssl-android/crypto/engine/eng_cnf.c",0xe6);
    uVar10 = 0;
  }
  else {
    for (local_54 = 0; iVar9 = sk_num(p_Var3), local_54 < iVar9; local_54 = local_54 + 1) {
      pvVar4 = sk_value(p_Var3,local_54);
      local_2c[0] = -1;
      pcVar2 = *(char **)((int)pvVar4 + 4);
      section = *(char **)((int)pvVar4 + 8);
      pcVar5 = strchr(pcVar2,0x2e);
      if (pcVar5 != (char *)0x0) {
        pcVar2 = pcVar5 + 1;
      }
      p_Var6 = &NCONF_get_section(param_2,section)->stack;
      if (p_Var6 == (_STACK *)0x0) {
        ERR_put_error(0x26,0xbc,0x95,"jni/../../openssl-android/crypto/engine/eng_cnf.c",0x70);
        return 0;
      }
      uVar13 = 0;
      pEVar12 = (ENGINE *)0x0;
      for (iVar9 = 0; iVar8 = sk_num(p_Var6), iVar9 < iVar8; iVar9 = iVar9 + 1) {
        puVar7 = sk_value(p_Var6,iVar9);
        __s = (char *)puVar7[1];
        pcVar5 = strchr(__s,0x2e);
        if (pcVar5 != (char *)0x0) {
          __s = pcVar5 + 1;
        }
        pcVar5 = (char *)puVar7[2];
        iVar8 = strcmp(__s,"engine_id");
        if (iVar8 != 0) {
          iVar8 = strcmp(__s,"soft_load");
          if (iVar8 == 0) {
            uVar13 = 1;
            pcVar5 = pcVar2;
          }
          else {
            iVar8 = strcmp(__s,"dynamic_path");
            if (iVar8 == 0) {
              e = ENGINE_by_id("dynamic");
              pEVar12 = e;
              if (((e == (ENGINE *)0x0) ||
                  (iVar8 = ENGINE_ctrl_cmd_string(e,"SO_PATH",pcVar5,0), iVar8 == 0)) ||
                 (iVar8 = ENGINE_ctrl_cmd_string(e,"LIST_ADD","2",0), iVar8 == 0))
              goto LAB_00669528;
              __s = "LOAD";
              pcVar5 = (char *)0x0;
LAB_006694d8:
              iVar8 = ENGINE_ctrl_cmd_string(e,__s,pcVar5,0);
              pEVar12 = e;
            }
            else {
              e = pEVar12;
              if (pEVar12 == (ENGINE *)0x0) {
                e = ENGINE_by_id(pcVar2);
                uVar11 = 1 - (int)e;
                if ((ENGINE *)0x1 < e) {
                  uVar11 = 0;
                }
                if ((uVar11 & uVar13) != 0) {
                  ERR_clear_error();
                  goto LAB_00669566;
                }
                if (uVar11 != 0) goto LAB_00669528;
              }
              iVar8 = strcmp(pcVar5,"EMPTY");
              if (iVar8 == 0) {
                pcVar5 = (char *)0x0;
              }
              iVar8 = strcmp(__s,"init");
              pEVar12 = e;
              if (iVar8 == 0) {
                iVar8 = NCONF_get_number_e(param_2,section,"init",local_2c);
                if (iVar8 == 0) goto LAB_00669528;
                if (local_2c[0] != 1) {
                  pcVar5 = pcVar2;
                  if (local_2c[0] == 0) goto LAB_006694e8;
                  ERR_put_error(0x26,0xbc,0x97,"jni/../../openssl-android/crypto/engine/eng_cnf.c",
                                0xb2);
                  goto LAB_00669528;
                }
                iVar8 = ENGINE_init(e);
                if (iVar8 == 0) goto LAB_00669528;
                iVar8 = FUN_00669300(e);
              }
              else {
                iVar8 = strcmp(__s,"default_algorithms");
                if (iVar8 != 0) goto LAB_006694d8;
                iVar8 = ENGINE_set_default_string(e,pcVar5);
              }
            }
            pcVar5 = pcVar2;
            if (iVar8 == 0) goto LAB_00669528;
          }
        }
LAB_006694e8:
        pcVar2 = pcVar5;
      }
      if (((pEVar12 == (ENGINE *)0x0) || (local_2c[0] != -1)) ||
         ((iVar9 = ENGINE_init(pEVar12), iVar9 != 0 && (iVar9 = FUN_00669300(pEVar12), iVar9 != 0)))
         ) {
        bVar1 = true;
      }
      else {
        puVar7 = (undefined4 *)0x0;
LAB_00669528:
        ERR_put_error(0x26,0xbc,0x66,"jni/../../openssl-android/crypto/engine/eng_cnf.c",0xcc);
        bVar1 = false;
        if (puVar7 != (undefined4 *)0x0) {
          bVar1 = false;
          ERR_add_error_data(6,"section=",*puVar7,", name=",puVar7[1],", value=",puVar7[2]);
        }
      }
      if (pEVar12 != (ENGINE *)0x0) {
        ENGINE_free(pEVar12);
      }
      if (!bVar1) {
        return 0;
      }
LAB_00669566:
    }
    uVar10 = 1;
  }
  return uVar10;
}

// ---- FUN_00669ad8  @ 0x669ad8
void FUN_00669ad8(undefined4 param_1,undefined4 *param_2)

{
  if (param_2 != (undefined4 *)0x0) {
    if ((DSO *)*param_2 != (DSO *)0x0) {
      DSO_free((DSO *)*param_2);
    }
    if ((void *)param_2[3] != (void *)0x0) {
      CRYPTO_free((void *)param_2[3]);
    }
    if ((void *)param_2[5] != (void *)0x0) {
      CRYPTO_free((void *)param_2[5]);
    }
    if ((_STACK *)param_2[10] != (_STACK *)0x0) {
      sk_pop_free((_STACK *)param_2[10],(func *)&LAB_00669ad4_1);
    }
    CRYPTO_free(param_2);
    return;
  }
  return;
}

// ---- FUN_00669b14  @ 0x669b14
bool FUN_00669b14(ENGINE *param_1,undefined4 param_2,uint param_3,char *param_4)

{
  int iVar1;
  int *piVar2;
  int *__s;
  _STACK *p_Var3;
  DSO *pDVar4;
  char *pcVar5;
  DSO_FUNC_TYPE pDVar6;
  uint uVar7;
  int mode;
  int *num;
  CRYPTO_dynlock_value *l;
  int type;
  int mount;
  int line;
  CRYPTO_dynlock_value *l_00;
  char *file;
  int iVar8;
  char *file_00;
  int type_00;
  char *file_01;
  int line_00;
  int line_01;
  char *file_02;
  int line_02;
  int *ptr;
  int in_stack_ffffff28;
  int iVar9;
  void *local_c4;
  ERR_FNS *local_c0;
  CRYPTO_EX_DATA_IMPL *local_bc;
  m *pmStack_b8;
  r *prStack_b4;
  f *apfStack_b0 [2];
  char *local_a8;
  CRYPTO_dynlock_value *local_a4;
  undefined1 auStack_98 [116];
  
  if (DAT_00948cd4 < 0) {
    in_stack_ffffff28 = 0x669ad9;
    iVar1 = ENGINE_get_ex_new_index
                      (0,(void *)0x0,(undefined1 *)0x0,(undefined1 *)0x0,(undefined1 *)0x669ad9);
    if (iVar1 != -1) {
      CRYPTO_lock(9,0x1e,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0xf7);
      if (DAT_00948cd4 < 0) {
        DAT_00948cd4 = iVar1;
      }
      CRYPTO_lock(10,0x1e,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0xff);
      goto LAB_00669b7c;
    }
    iVar9 = 0xf4;
    iVar1 = 0xb5;
    iVar8 = 0x90;
LAB_00669bb2:
    ERR_put_error(0x26,iVar1,iVar8,"jni/../../openssl-android/crypto/engine/eng_dyn.c",iVar9);
LAB_00669f28:
    iVar1 = 0x142;
    iVar8 = 0x70;
    goto LAB_00669efa;
  }
LAB_00669b7c:
  piVar2 = ENGINE_get_ex_data(param_1,DAT_00948cd4);
  if (piVar2 == (int *)0x0) {
    __s = CRYPTO_malloc(0x2c,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0xbd);
    if (__s == (int *)0x0) {
      iVar1 = 0xb7;
      iVar8 = 0x41;
      iVar9 = 0xc0;
      goto LAB_00669bb2;
    }
    memset(__s,0,0x2c);
    *__s = 0;
    __s[7] = (int)"v_check";
    __s[1] = 0;
    __s[2] = 0;
    __s[8] = (int)"bind_engine";
    __s[3] = 0;
    __s[4] = 0;
    __s[5] = 0;
    __s[6] = 0;
    __s[9] = 1;
    p_Var3 = sk_new_null();
    __s[10] = (int)p_Var3;
    if (p_Var3 != (_STACK *)0x0) {
      CRYPTO_lock(9,0x1e,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0xd5);
      piVar2 = ENGINE_get_ex_data(param_1,DAT_00948cd4);
      ptr = __s;
      if (piVar2 == (int *)0x0) {
        ENGINE_set_ex_data(param_1,DAT_00948cd4,__s);
        ptr = (int *)0x0;
        piVar2 = __s;
      }
      CRYPTO_lock(10,0x1e,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0xde);
      if (ptr != (int *)0x0) {
        CRYPTO_free(ptr);
      }
      goto LAB_00669c40;
    }
    ERR_put_error(0x26,0xb7,0x41,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0xd1);
    CRYPTO_free(__s);
    goto LAB_00669f28;
  }
LAB_00669c40:
  if (*piVar2 != 0) {
    iVar1 = 0x14a;
    iVar8 = 100;
    goto LAB_00669efa;
  }
  switch(param_2) {
  case 200:
    if ((param_4 != (char *)0x0) && (*param_4 == '\0')) {
      param_4 = (char *)0x0;
    }
    if ((void *)piVar2[3] != (void *)0x0) {
      CRYPTO_free((void *)piVar2[3]);
    }
    if (param_4 == (char *)0x0) {
      piVar2[3] = 0;
    }
    else {
      pcVar5 = BUF_strdup(param_4);
      piVar2[3] = (int)pcVar5;
    }
    iVar1 = piVar2[3];
    goto LAB_00669cc6;
  case 0xc9:
    piVar2[4] = (uint)(param_3 != 0);
    return true;
  case 0xca:
    if ((param_4 != (char *)0x0) && (*param_4 == '\0')) {
      param_4 = (char *)0x0;
    }
    if ((void *)piVar2[5] != (void *)0x0) {
      CRYPTO_free((void *)piVar2[5]);
    }
    if (param_4 == (char *)0x0) {
      piVar2[5] = 0;
    }
    else {
      pcVar5 = BUF_strdup(param_4);
      piVar2[5] = (int)pcVar5;
    }
    iVar1 = piVar2[5];
LAB_00669cc6:
    return iVar1 != 0;
  case 0xcb:
    if (param_3 < 3) {
      piVar2[6] = param_3;
      return true;
    }
    iVar1 = 0x16c;
    break;
  case 0xcc:
    if (param_3 < 3) {
      piVar2[9] = param_3;
      return true;
    }
    iVar1 = 0x177;
    break;
  case 0xcd:
    if ((param_4 != (char *)0x0) && (*param_4 != '\0')) {
      pcVar5 = BUF_strdup(param_4);
      if (pcVar5 != (char *)0x0) {
        sk_insert((_STACK *)piVar2[10],pcVar5,-1);
        return true;
      }
      iVar9 = 0x189;
      iVar1 = 0xb4;
      iVar8 = 0x41;
      goto LAB_00669ed4;
    }
    iVar1 = 0x181;
    break;
  case 0xce:
    pDVar4 = DSO_new();
    *piVar2 = (int)pDVar4;
    if (piVar2[3] == 0) {
      if ((char *)piVar2[5] == (char *)0x0) {
        return false;
      }
      pcVar5 = DSO_convert_filename(pDVar4,(char *)piVar2[5]);
      piVar2[3] = (int)pcVar5;
    }
    if ((piVar2[9] == 2) ||
       (pDVar4 = DSO_load((DSO *)*piVar2,(char *)piVar2[3],(DSO_METHOD *)0x0,0),
       pDVar4 == (DSO *)0x0)) {
      if ((piVar2[9] != 0) && (iVar1 = sk_num((_STACK *)piVar2[10]), 0 < iVar1)) {
        iVar8 = 0;
        do {
          pcVar5 = sk_value((_STACK *)piVar2[10],iVar8);
          pcVar5 = DSO_merge((DSO *)*piVar2,(char *)piVar2[3],pcVar5);
          if (pcVar5 == (char *)0x0) break;
          pDVar4 = DSO_load((DSO *)*piVar2,pcVar5,(DSO_METHOD *)0x0,0);
          if (pDVar4 != (DSO *)0x0) {
            CRYPTO_free(pcVar5);
            ERR_clear_error();
            goto LAB_00669d70;
          }
          iVar8 = iVar8 + 1;
          CRYPTO_free(pcVar5);
        } while (iVar8 != iVar1);
      }
      ERR_put_error(0x26,0xb6,0x84,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0x1c5);
      DSO_free((DSO *)*piVar2);
      *piVar2 = 0;
      return false;
    }
LAB_00669d70:
    pDVar6 = DSO_bind_func((DSO *)*piVar2,(char *)piVar2[8]);
    piVar2[2] = (int)pDVar6;
    if (pDVar6 != (DSO_FUNC_TYPE)0x0) {
      if (piVar2[4] == 0) {
        pDVar6 = DSO_bind_func((DSO *)*piVar2,(char *)piVar2[7]);
        piVar2[1] = (int)pDVar6;
        if ((pDVar6 == (DSO_FUNC_TYPE)0x0) || (uVar7 = (*pDVar6)(0x20000), uVar7 < 0x20000)) {
          piVar2[2] = 0;
          piVar2[1] = 0;
          DSO_free((DSO *)*piVar2);
          *piVar2 = 0;
          iVar9 = 0x1ea;
          iVar1 = 0xb6;
          iVar8 = 0x91;
          goto LAB_00669ed4;
        }
      }
      memcpy(auStack_98,param_1,0x70);
      local_c4 = ENGINE_get_static_state();
      local_c0 = ERR_get_implementation();
      local_bc = CRYPTO_get_ex_data_implementation();
      CRYPTO_get_mem_functions(&pmStack_b8,&prStack_b4,apfStack_b0);
      CRYPTO_get_locking_callback(mode,type,file_00,line_01);
      local_a8 = (char *)CRYPTO_get_add_lock_callback(num,mount,type_00,file_02,in_stack_ffffff28);
      local_a4 = CRYPTO_get_dynlock_create_callback(local_a8,line);
      CRYPTO_get_dynlock_lock_callback((int)local_a4,l_00,file_01,line_02);
      CRYPTO_get_dynlock_destroy_callback(l,file,line_00);
      engine_set_all_null(param_1);
      iVar1 = (*(code *)piVar2[2])(param_1,piVar2[5],&local_c4);
      if (iVar1 == 0) {
        piVar2[2] = 0;
        piVar2[1] = 0;
        DSO_free((DSO *)*piVar2);
        *piVar2 = 0;
        ERR_put_error(0x26,0xb6,0x6d,"jni/../../openssl-android/crypto/engine/eng_dyn.c",0x20c);
        memcpy(param_1,auStack_98,0x70);
        return false;
      }
      if ((0 < piVar2[6]) && (iVar1 = ENGINE_add(param_1), iVar1 == 0)) {
        if (1 < piVar2[6]) {
          iVar9 = 0x21f;
          iVar1 = 0xb6;
          iVar8 = 0x67;
          goto LAB_00669ed4;
        }
        ERR_clear_error();
      }
      return true;
    }
    DSO_free((DSO *)*piVar2);
    *piVar2 = 0;
    iVar9 = 0x1d2;
    iVar1 = 0xb6;
    iVar8 = 0x68;
LAB_00669ed4:
    ERR_put_error(0x26,iVar1,iVar8,"jni/../../openssl-android/crypto/engine/eng_dyn.c",iVar9);
    return false;
  default:
    iVar1 = 0x192;
    iVar8 = 0x77;
    goto LAB_00669efa;
  }
  iVar8 = 0x8f;
LAB_00669efa:
  ERR_put_error(0x26,0xb4,iVar8,"jni/../../openssl-android/crypto/engine/eng_dyn.c",iVar1);
  return false;
}

// ---- FUN_0066a054  @ 0x66a054
undefined4 FUN_0066a054(char *param_1,size_t param_2,uint *param_3)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = strncmp(param_1,"ALL",param_2);
  if (iVar1 == 0) {
    uVar2 = ~(~(*param_3 >> 0x10) << 0x10);
  }
  else {
    iVar1 = strncmp(param_1,"RSA",param_2);
    if (iVar1 == 0) {
      uVar2 = *param_3 | 1;
    }
    else {
      iVar1 = strncmp(param_1,"DSA",param_2);
      if (iVar1 == 0) {
        uVar2 = *param_3 | 2;
      }
      else {
        iVar1 = strncmp(param_1,"ECDH",param_2);
        if (iVar1 == 0) {
          uVar2 = *param_3 | 0x10;
        }
        else {
          iVar1 = strncmp(param_1,"ECDSA",param_2);
          if (iVar1 == 0) {
            uVar2 = *param_3 | 0x20;
          }
          else {
            iVar1 = strncmp(param_1,"DH",param_2);
            if (iVar1 == 0) {
              uVar2 = *param_3 | 4;
            }
            else {
              iVar1 = strncmp(param_1,"RAND",param_2);
              if (iVar1 == 0) {
                uVar2 = *param_3 | 8;
              }
              else {
                iVar1 = strncmp(param_1,"CIPHERS",param_2);
                if (iVar1 == 0) {
                  uVar2 = *param_3 | 0x40;
                }
                else {
                  iVar1 = strncmp(param_1,"DIGESTS",param_2);
                  if (iVar1 == 0) {
                    uVar2 = *param_3 | 0x80;
                  }
                  else {
                    iVar1 = strncmp(param_1,"PKEY",param_2);
                    if (iVar1 == 0) {
                      uVar2 = *param_3 | 0x600;
                    }
                    else {
                      iVar1 = strncmp(param_1,"PKEY_CRYPTO",param_2);
                      if (iVar1 == 0) {
                        uVar2 = *param_3 | 0x200;
                      }
                      else {
                        iVar1 = strncmp(param_1,"PKEY_ASN1",param_2);
                        if (iVar1 != 0) {
                          return 0;
                        }
                        uVar2 = *param_3 | 0x400;
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
  }
  *param_3 = uVar2;
  return 1;
}

// ---- FUN_0066a428  @ 0x66a428
void FUN_0066a428(undefined4 *param_1)

{
  (*(code *)*param_1)();
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0066a9e8  @ 0x66a9e8
void FUN_0066a9e8(void)

{
  while (DAT_009669b8 != (ENGINE *)0x0) {
    ENGINE_remove(DAT_009669b8);
  }
  return;
}

// ---- FUN_0066adfe  @ 0x66adfe
void FUN_0066adfe(void *param_1)

{
  sk_free(*(_STACK **)((int)param_1 + 4));
  if (*(int *)((int)param_1 + 8) != 0) {
    engine_unlocked_finish(*(int *)((int)param_1 + 8),0);
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0066ae1c  @ 0x66ae1c
void FUN_0066ae1c(int param_1,void *param_2)

{
  int loc;
  
  while (loc = sk_find(*(_STACK **)(param_1 + 4),param_2), -1 < loc) {
    sk_delete(*(_STACK **)(param_1 + 4),loc);
    *(undefined4 *)(param_1 + 0xc) = 0;
  }
  if (*(void **)(param_1 + 8) == param_2) {
    engine_unlocked_finish(param_2,0);
    *(undefined4 *)(param_1 + 8) = 0;
  }
  return;
}

// ---- FUN_0066bb6a  @ 0x66bb6a
uint FUN_0066bb6a(uint *param_1)

{
  int extraout_r1;
  uint uVar1;
  
  uVar1 = *param_1;
  uVar1 = uVar1 ^ uVar1 >> 0x18 ^ (uVar1 & 0xffffff) >> 0xc;
  __aeabi_uidivmod(uVar1,0x13);
  return extraout_r1 * 0xd ^ uVar1;
}

// ---- FUN_0066bb88  @ 0x66bb88
int FUN_0066bb88(int *param_1,int *param_2)

{
  return *param_1 - *param_2;
}

// ---- FUN_0066bb90  @ 0x66bb90
void FUN_0066bb90(int param_1,uint *param_2)

{
  for (; *param_2 != 0; param_2 = param_2 + 2) {
    if (param_1 != 0) {
      *param_2 = *param_2 | param_1 << 0x18;
    }
    (**(code **)(DAT_009669f0 + 0xc))(param_2);
  }
  return;
}

// ---- FUN_0066bbbc  @ 0x66bbbc
void FUN_0066bbbc(void *param_1)

{
  void *pvVar1;
  int iVar2;
  
  if (param_1 != (void *)0x0) {
    iVar2 = 0;
    pvVar1 = param_1;
    do {
      if ((*(void **)((int)pvVar1 + 0x88) != (void *)0x0) &&
         (*(int *)((int)pvVar1 + 200) << 0x1f < 0)) {
        CRYPTO_free(*(void **)((int)pvVar1 + 0x88));
        *(undefined4 *)((int)pvVar1 + 0x88) = 0;
      }
      iVar2 = iVar2 + 1;
      *(undefined4 *)((int)pvVar1 + 200) = 0;
      pvVar1 = (void *)((int)pvVar1 + 4);
    } while (iVar2 != 0x10);
    CRYPTO_free(param_1);
    return;
  }
  return;
}

// ---- FUN_0066bdc8  @ 0x66bdc8
int FUN_0066bdc8(CRYPTO_THREADID *param_1)

{
  ulong uVar1;
  
  uVar1 = CRYPTO_THREADID_hash(param_1);
  return uVar1 * 0xd;
}

// ---- FUN_0066bdd4  @ 0x66bdd4
void FUN_0066bdd4(void)

{
  if (DAT_009669f0 == (undefined **)0x0) {
    CRYPTO_lock(9,1,"jni/../../openssl-android/crypto/err/err.c",0x127);
    if (DAT_009669f0 == (undefined **)0x0) {
      DAT_009669f0 = &PTR_LAB_0066bd3c_1_009003ec;
    }
    CRYPTO_lock(10,1,"jni/../../openssl-android/crypto/err/err.c",0x12a);
    return;
  }
  return;
}

// ---- FUN_0066be20  @ 0x66be20
void * FUN_0066be20(void *param_1)

{
  _LHASH *lh;
  void *pvVar1;
  
  FUN_0066bdd4();
  lh = (_LHASH *)(*(code *)*DAT_009669f0)(0);
  pvVar1 = (void *)0x0;
  if (lh != (_LHASH *)0x0) {
    CRYPTO_lock(9,1,"jni/../../openssl-android/crypto/err/err.c",0x1a7);
    pvVar1 = lh_delete(lh,param_1);
    CRYPTO_lock(10,1,"jni/../../openssl-android/crypto/err/err.c",0x1a9);
  }
  return pvVar1;
}

// ---- FUN_0066bef4  @ 0x66bef4
void * FUN_0066bef4(void *param_1,_LHASH *param_2)

{
  void *pvVar1;
  _LHASH *local_1c;
  
  local_1c = param_2;
  FUN_0066bdd4();
  local_1c = (_LHASH *)(**(code **)(DAT_009669f0 + 0x14))(1);
  pvVar1 = (void *)0x0;
  if (local_1c != (_LHASH *)0x0) {
    CRYPTO_lock(9,1,"jni/../../openssl-android/crypto/err/err.c",0x201);
    pvVar1 = lh_insert(local_1c,param_1);
    CRYPTO_lock(10,1,"jni/../../openssl-android/crypto/err/err.c",0x203);
    (**(code **)(DAT_009669f0 + 0x18))(&local_1c);
  }
  return pvVar1;
}

// ---- FUN_0066bf54  @ 0x66bf54
void * FUN_0066bf54(void *param_1)

{
  _LHASH *lh;
  void *pvVar1;
  
  FUN_0066bdd4();
  lh = (_LHASH *)(*(code *)*DAT_009669f0)(1);
  pvVar1 = (void *)0x0;
  if (lh != (_LHASH *)0x0) {
    CRYPTO_lock(9,1,"jni/../../openssl-android/crypto/err/err.c",0x196);
    pvVar1 = lh_insert(lh,param_1);
    CRYPTO_lock(10,1,"jni/../../openssl-android/crypto/err/err.c",0x198);
  }
  return pvVar1;
}

// ---- FUN_0066bfa4  @ 0x66bfa4
void * FUN_0066bfa4(void *param_1,_LHASH *param_2)

{
  void *pvVar1;
  _LHASH *local_1c;
  
  local_1c = param_2;
  FUN_0066bdd4();
  local_1c = (_LHASH *)(**(code **)(DAT_009669f0 + 0x14))(0);
  pvVar1 = (void *)0x0;
  if (local_1c != (_LHASH *)0x0) {
    CRYPTO_lock(5,1,"jni/../../openssl-android/crypto/err/err.c",0x1ef);
    pvVar1 = lh_retrieve(local_1c,param_1);
    CRYPTO_lock(6,1,"jni/../../openssl-android/crypto/err/err.c",0x1f1);
    (**(code **)(DAT_009669f0 + 0x18))(&local_1c);
  }
  return pvVar1;
}

// ---- FUN_0066c004  @ 0x66c004
void * FUN_0066c004(void *param_1)

{
  _LHASH *lh;
  void *pvVar1;
  
  FUN_0066bdd4();
  lh = (_LHASH *)(*(code *)*DAT_009669f0)(0);
  pvVar1 = (void *)0x0;
  if (lh != (_LHASH *)0x0) {
    CRYPTO_lock(5,1,"jni/../../openssl-android/crypto/err/err.c",0x185);
    pvVar1 = lh_retrieve(lh,param_1);
    CRYPTO_lock(6,1,"jni/../../openssl-android/crypto/err/err.c",0x187);
  }
  return pvVar1;
}

// ---- FUN_0066c4e0  @ 0x66c4e0
ulong FUN_0066c4e0(int param_1,int param_2,undefined4 *param_3,int *param_4,undefined4 *param_5,
                  int *param_6)

{
  ERR_STATE *pEVar1;
  int iVar2;
  uint uVar3;
  ulong uVar4;
  bool bVar5;
  
  pEVar1 = ERR_get_state();
  bVar5 = param_1 != 0;
  if (param_2 == 0 || !bVar5) {
    uVar3 = pEVar1->top;
    uVar4 = 0;
    if (pEVar1->bottom != uVar3) {
      if ((param_2 == 0) && (uVar3 = pEVar1->bottom + 1U & 0x8000000f, (int)uVar3 < 0)) {
        uVar3 = (uVar3 - 1 | 0xfffffff0) + 1;
      }
      uVar4 = pEVar1->err_buffer[uVar3];
      if (bVar5) {
        pEVar1->bottom = uVar3;
        pEVar1->err_buffer[uVar3] = 0;
      }
      if (param_4 != (int *)0x0 && param_3 != (undefined4 *)0x0) {
        if (pEVar1->err_file[uVar3] == (char *)0x0) {
          *param_3 = &DAT_0081c407;
          iVar2 = 0;
        }
        else {
          *param_3 = pEVar1->err_file[uVar3];
          iVar2 = pEVar1->err_line[uVar3];
        }
        *param_4 = iVar2;
      }
      if (param_5 == (undefined4 *)0x0) {
        if (bVar5) {
          if ((pEVar1->err_data[uVar3] != (char *)0x0) &&
             (pEVar1->err_data_flags[uVar3] << 0x1f < 0)) {
            CRYPTO_free(pEVar1->err_data[uVar3]);
            pEVar1->err_data[uVar3] = (char *)0x0;
          }
          pEVar1->err_data_flags[uVar3] = 0;
        }
      }
      else {
        if (pEVar1->err_data[uVar3] == (char *)0x0) {
          *param_5 = &DAT_00801f93;
          iVar2 = 0;
          if (param_6 == (int *)0x0) {
            return uVar4;
          }
        }
        else {
          *param_5 = pEVar1->err_data[uVar3];
          if (param_6 == (int *)0x0) {
            return uVar4;
          }
          iVar2 = pEVar1->err_data_flags[uVar3];
        }
        *param_6 = iVar2;
      }
    }
  }
  else {
    if (param_3 != (undefined4 *)0x0) {
      *param_3 = &DAT_00801f93;
    }
    if (param_4 != (int *)0x0) {
      *param_4 = 0;
    }
    if (param_5 != (undefined4 *)0x0) {
      *param_5 = &DAT_00801f93;
    }
    if (param_6 != (int *)0x0) {
      *param_6 = 0;
    }
    uVar4 = 0x44;
  }
  return uVar4;
}

// ---- FUN_0066ca20  @ 0x66ca20
void FUN_0066ca20(undefined4 param_1,undefined4 param_2,void *param_3)

{
  BIO_METHOD *type;
  BIO BStack_50;
  
  type = BIO_s_file();
  BIO_set(&BStack_50,type);
  BIO_ctrl(&BStack_50,0x6a,0,param_3);
  BIO_printf(&BStack_50,"%s",param_1);
  return;
}

// ---- FUN_0066cb42  @ 0x66cb42
undefined4 FUN_0066cb42(int param_1)

{
  if (param_1 != 0) {
    CRYPTO_free(*(void **)(param_1 + 0x20));
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_0066ce94  @ 0x66ce94
int FUN_0066ce94(BIO *param_1,uchar *param_2,size_t param_3)

{
  int iVar1;
  int iVar2;
  int extraout_r1;
  int iVar3;
  int *outl;
  int iVar4;
  size_t __n;
  
  outl = param_1->ptr;
  BIO_clear_flags(param_1,0xf);
  if (outl[4] != 1) {
    outl[4] = 1;
    *outl = 0;
    outl[1] = 0;
    outl[2] = 0;
    EVP_EncodeInit((EVP_ENCODE_CTX *)(outl + 7));
  }
  if (0x5dd < outl[1]) {
    OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x189,
               "ctx->buf_off < (int)sizeof(ctx->buf)");
  }
  if (0x5de < *outl) {
    OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x18a,
               "ctx->buf_len <= (int)sizeof(ctx->buf)");
  }
  if (*outl < outl[1]) {
    OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x18b,"ctx->buf_len >= ctx->buf_off"
              );
  }
  for (iVar4 = *outl - outl[1]; 0 < iVar4; iVar4 = iVar4 - iVar1) {
    iVar1 = BIO_write(param_1->next_bio,(void *)((int)outl + outl[1] + 0x7c),iVar4);
    if (iVar1 < 1) {
      BIO_copy_next_retry(param_1);
      return iVar1;
    }
    if (iVar4 < iVar1) {
      OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x195,"i <= n");
    }
    iVar2 = outl[1];
    outl[1] = iVar2 + iVar1;
    if (0x5de < iVar2 + iVar1) {
      OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x197,
                 "ctx->buf_off <= (int)sizeof(ctx->buf)");
    }
    if (*outl < outl[1]) {
      OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x198,
                 "ctx->buf_len >= ctx->buf_off");
    }
  }
  outl[1] = 0;
  *outl = 0;
  if ((int)param_3 < 1 || param_2 == (uchar *)0x0) {
    return 0;
  }
  iVar4 = 0;
  do {
    iVar1 = BIO_test_flags(param_1,-1);
    __n = param_3;
    if (0x3ff < (int)param_3) {
      __n = 0x400;
    }
    if (iVar1 << 0x17 < 0) {
      if (outl[2] < 1) {
        if ((int)__n < 3) {
          memcpy((void *)((int)outl + 0x65a),param_2,__n);
          outl[2] = __n;
          return iVar4 + __n;
        }
        __aeabi_idivmod(__n,3);
        __n = __n - extraout_r1;
        iVar1 = EVP_EncodeBlock((uchar *)(outl + 0x1f),param_2,__n);
        *outl = iVar1;
        if (0x5de < iVar1) {
          OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1c5,
                     "ctx->buf_len <= (int)sizeof(ctx->buf)");
        }
        if (*outl < outl[1]) {
          iVar1 = 0x1c6;
          goto LAB_0066d104;
        }
        goto LAB_0066d108;
      }
      if (3 < outl[2]) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1a9,"ctx->tmp_len <= 3");
      }
      __n = 3 - outl[2];
      if ((int)param_3 < (int)__n) {
        __n = param_3;
      }
      iVar4 = iVar4 + __n;
      memcpy((void *)((int)outl + outl[2] + 0x65a),param_2,__n);
      iVar1 = __n + outl[2];
      outl[2] = iVar1;
      if (iVar1 < 3) {
        return iVar4;
      }
      iVar1 = EVP_EncodeBlock((uchar *)(outl + 0x1f),(uchar *)((int)outl + 0x65a),iVar1);
      *outl = iVar1;
      if (0x5de < iVar1) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1b4,
                   "ctx->buf_len <= (int)sizeof(ctx->buf)");
      }
      if (*outl < outl[1]) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1b5,
                   "ctx->buf_len >= ctx->buf_off");
      }
      outl[2] = 0;
    }
    else {
      EVP_EncodeUpdate((EVP_ENCODE_CTX *)(outl + 7),(uchar *)(outl + 0x1f),outl,param_2,__n);
      if (0x5de < *outl) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1cf,
                   "ctx->buf_len <= (int)sizeof(ctx->buf)");
      }
      if (*outl < outl[1]) {
        iVar1 = 0x1d0;
LAB_0066d104:
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",iVar1,
                   "ctx->buf_len >= ctx->buf_off");
      }
LAB_0066d108:
      iVar4 = iVar4 + __n;
    }
    outl[1] = 0;
    param_2 = param_2 + __n;
    iVar1 = *outl;
    while (0 < iVar1) {
      iVar2 = BIO_write(param_1->next_bio,(void *)((int)outl + outl[1] + 0x7c),iVar1);
      if (iVar2 < 1) {
        BIO_copy_next_retry(param_1);
        if (iVar4 == 0) {
          return iVar2;
        }
        return iVar4;
      }
      if (iVar1 < iVar2) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1e0,"i <= n");
      }
      iVar3 = outl[1];
      iVar1 = iVar1 - iVar2;
      outl[1] = iVar3 + iVar2;
      if (0x5de < iVar3 + iVar2) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1e3,
                   "ctx->buf_off <= (int)sizeof(ctx->buf)");
      }
      if (*outl < outl[1]) {
        OpenSSLDie("jni/../../openssl-android/crypto/evp/bio_b64.c",0x1e4,
                   "ctx->buf_len >= ctx->buf_off");
      }
    }
    param_3 = param_3 - __n;
    *outl = 0;
    outl[1] = 0;
    if ((int)param_3 < 1) {
      return iVar4;
    }
  } while( true );
}

// ---- FUN_0066d3ba  @ 0x66d3ba
undefined4 FUN_0066d3ba(int param_1)

{
  if (param_1 != 0) {
    EVP_CIPHER_CTX_cleanup((EVP_CIPHER_CTX *)(*(int *)(param_1 + 0x20) + 0x14));
    OPENSSL_cleanse(*(void **)(param_1 + 0x20),0x10e4);
    CRYPTO_free(*(void **)(param_1 + 0x20));
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_0066d530  @ 0x66d530
int FUN_0066d530(BIO *param_1,uchar *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int *outl;
  int iVar4;
  
  outl = param_1->ptr;
  BIO_clear_flags(param_1,0xf);
  iVar4 = *outl;
  iVar2 = outl[1];
  while( true ) {
    iVar4 = iVar4 - iVar2;
    if (iVar4 < 1) {
      uVar3 = 1 - (int)param_2;
      if ((uchar *)0x1 < param_2) {
        uVar3 = 0;
      }
      if (param_3 < 1) {
        uVar3 = uVar3 | 1;
      }
      if (uVar3 == 0) {
        outl[1] = 0;
        iVar2 = param_3;
        do {
          iVar4 = iVar2;
          if (0xfff < iVar2) {
            iVar4 = 0x1000;
          }
          iVar2 = iVar2 - iVar4;
          EVP_CipherUpdate((EVP_CIPHER_CTX *)(outl + 5),(uchar *)(outl + 0x28),outl,param_2,iVar4);
          param_2 = param_2 + iVar4;
          outl[1] = 0;
          for (iVar4 = *outl; 0 < iVar4; iVar4 = iVar4 - iVar1) {
            iVar1 = BIO_write(param_1->next_bio,(void *)((int)outl + outl[1] + 0xa0),iVar4);
            if (iVar1 < 1) {
              BIO_copy_next_retry(param_1);
              if (param_3 == iVar2) {
                return iVar1;
              }
              return param_3 - iVar2;
            }
            outl[1] = outl[1] + iVar1;
          }
          *outl = 0;
          outl[1] = 0;
        } while (0 < iVar2);
        BIO_copy_next_retry(param_1);
      }
      else {
        param_3 = 0;
      }
      return param_3;
    }
    iVar2 = BIO_write(param_1->next_bio,(void *)((int)outl + outl[1] + 0xa0),iVar4);
    if (iVar2 < 1) break;
    outl[1] = outl[1] + iVar2;
  }
  BIO_copy_next_retry(param_1);
  return iVar2;
}

// ---- FUN_0066d7ae  @ 0x66d7ae
undefined4 FUN_0066d7ae(int param_1)

{
  if (param_1 != 0) {
    EVP_MD_CTX_destroy(*(EVP_MD_CTX **)(param_1 + 0x20));
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_0066d7c8  @ 0x66d7c8
bool FUN_0066d7c8(int param_1)

{
  EVP_MD_CTX *pEVar1;
  
  pEVar1 = EVP_MD_CTX_create();
  if (pEVar1 != (EVP_MD_CTX *)0x0) {
    *(EVP_MD_CTX **)(param_1 + 0x20) = pEVar1;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  return pEVar1 != (EVP_MD_CTX *)0x0;
}

// ---- FUN_0066d7de  @ 0x66d7de
long FUN_0066d7de(BIO *param_1,int param_2,long param_3,EVP_MD *param_4)

{
  int iVar1;
  long lVar2;
  EVP_MD_CTX *ctx;
  
  ctx = param_1->ptr;
  if (param_2 == 0x6f) {
    iVar1 = EVP_DigestInit_ex(ctx,param_4,(ENGINE *)0x0);
    if (iVar1 < 1) {
      return iVar1;
    }
    param_1->init = 1;
    return iVar1;
  }
  if (param_2 < 0x70) {
    if (param_2 != 0xc) {
      if (param_2 == 0x65) {
        BIO_clear_flags(param_1,0xf);
        lVar2 = BIO_ctrl(param_1->next_bio,0x65,param_3,param_4);
        BIO_copy_next_retry(param_1);
        return lVar2;
      }
      if (param_2 == 1) {
        if (param_1->init == 0) {
          return 0;
        }
        iVar1 = EVP_DigestInit_ex(ctx,ctx->digest,(ENGINE *)0x0);
        if (iVar1 < 1) {
          return iVar1;
        }
      }
LAB_0066d886:
      lVar2 = BIO_ctrl(param_1->next_bio,param_2,param_3,param_4);
      return lVar2;
    }
    iVar1 = EVP_MD_CTX_copy_ex((EVP_MD_CTX *)param_4->cleanup,ctx);
    if (iVar1 == 0) {
      return 0;
    }
  }
  else {
    if (param_2 != 0x78) {
      if (param_2 == 0x94) {
        if (param_1->init == 0) {
          return 0;
        }
        param_1->ptr = param_4;
      }
      else {
        if (param_2 != 0x70) goto LAB_0066d886;
        if (param_1->init == 0) {
          return 0;
        }
        param_4->type = (int)ctx->digest;
      }
      return 1;
    }
    param_4->type = (int)ctx;
  }
  param_1->init = 1;
  return 1;
}

// ---- FUN_0066d986  @ 0x66d986
undefined4 FUN_0066d986(int param_1)

{
  if (param_1 != 0) {
    EVP_MD_CTX_cleanup((EVP_MD_CTX *)(*(int *)(param_1 + 0x20) + 0x18));
    OPENSSL_cleanse(*(void **)(param_1 + 0x20),0x10fc);
    CRYPTO_free(*(void **)(param_1 + 0x20));
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_0066d9f8  @ 0x66d9f8
undefined4 FUN_0066d9f8(BIO *param_1)

{
  int iVar1;
  size_t cnt;
  int *piVar2;
  
  piVar2 = param_1->ptr;
  cnt = *piVar2 - 4;
  *(char *)((int)piVar2 + 0x3b) = (char)cnt;
  *(char *)(piVar2 + 0xe) = (char)(cnt >> 0x18);
  *(char *)((int)piVar2 + 0x39) = (char)(cnt >> 0x10);
  *(char *)((int)piVar2 + 0x3a) = (char)(cnt >> 8);
  iVar1 = EVP_DigestUpdate((EVP_MD_CTX *)(piVar2 + 6),piVar2 + 0xf,cnt);
  if ((iVar1 != 0) &&
     (iVar1 = EVP_DigestFinal_ex((EVP_MD_CTX *)(piVar2 + 6),(uchar *)((int)piVar2 + *piVar2 + 0x38),
                                 (uint *)0x0), iVar1 != 0)) {
    iVar1 = *(int *)(piVar2[6] + 8);
    piVar2[0xc] = 1;
    *piVar2 = *piVar2 + iVar1;
    return 1;
  }
  BIO_clear_flags(param_1,0xf);
  return 0;
}

// ---- FUN_0066dcc8  @ 0x66dcc8
size_t FUN_0066dcc8(BIO *param_1,void *param_2,size_t param_3)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  size_t sVar4;
  uint uVar5;
  uint uVar6;
  uint *puVar7;
  EVP_MD_CTX *ctx;
  size_t sVar8;
  uint uVar9;
  
  if ((int)param_3 < 1) {
    return param_3;
  }
  puVar7 = param_1->ptr;
  if (puVar7 == (uint *)0x0) {
    return 0;
  }
  if ((param_1->next_bio == (bio_st *)0x0) || (param_1->init == 0)) {
    return 0;
  }
  sVar8 = param_3;
  if ((puVar7[0xd] == 0) || (0x1000 < *puVar7 + ((EVP_MD *)puVar7[6])->md_size * 2)) {
LAB_0066ddac:
    do {
      BIO_clear_flags(param_1,0xf);
      for (iVar2 = *puVar7 - puVar7[1]; 0 < iVar2 && puVar7[0xc] != 0; iVar2 = iVar2 - sVar4) {
        sVar4 = BIO_write(param_1->next_bio,(void *)((int)puVar7 + puVar7[1] + 0x38),iVar2);
        if ((int)sVar4 < 1) {
          BIO_copy_next_retry(param_1);
          iVar2 = BIO_test_flags(param_1,8);
          if (iVar2 != 0) {
            return sVar4;
          }
          puVar7[4] = 0;
          return sVar4;
        }
        puVar7[1] = puVar7[1] + sVar4;
      }
      puVar7[0xc] = 0;
      if (*puVar7 == puVar7[1]) {
        *puVar7 = 4;
        puVar7[1] = 0;
      }
      uVar3 = 1 - (int)param_2;
      if ((void *)0x1 < param_2) {
        uVar3 = 0;
      }
      if ((int)sVar8 < 1) {
        uVar3 = uVar3 | 1;
      }
      if (uVar3 != 0) goto LAB_0066de96;
      uVar3 = *puVar7;
      sVar4 = sVar8;
      if (0x1004 < sVar8 + uVar3) {
        sVar4 = 0x1004 - uVar3;
      }
      memcpy((void *)((int)puVar7 + uVar3 + 0x38),param_2,sVar4);
      uVar3 = *puVar7;
      *puVar7 = uVar3 + sVar4;
      if ((0x1003 < uVar3 + sVar4) && (iVar2 = FUN_0066d9f8(param_1), iVar2 == 0)) {
        BIO_clear_flags(param_1,0xf);
        return 0;
      }
      sVar8 = sVar8 - sVar4;
      param_2 = (void *)((int)param_2 + sVar4);
    } while (0 < (int)sVar8);
    BIO_clear_flags(param_1,0xf);
    BIO_copy_next_retry(param_1);
  }
  else {
    ctx = (EVP_MD_CTX *)(puVar7 + 6);
    iVar2 = EVP_DigestInit_ex(ctx,(EVP_MD *)puVar7[6],(ENGINE *)0x0);
    if (iVar2 != 0) {
      RAND_pseudo_bytes((uchar *)puVar7[9],*(int *)(puVar7[6] + 8));
      memcpy((void *)((int)puVar7 + *puVar7 + 0x38),(void *)puVar7[9],*(size_t *)(puVar7[6] + 8));
      uVar3 = puVar7[6];
      uVar5 = *puVar7;
      uVar9 = *(uint *)(uVar3 + 8);
      for (uVar6 = 0; uVar6 < uVar9; uVar6 = uVar6 + 4) {
        uVar1 = *(undefined1 *)((int)puVar7 + uVar5 + 0x3b);
        *(undefined1 *)((int)puVar7 + uVar5 + 0x3b) = *(undefined1 *)((int)puVar7 + uVar5 + 0x38);
        *(undefined1 *)((int)puVar7 + uVar5 + 0x38) = uVar1;
        uVar1 = *(undefined1 *)((int)puVar7 + uVar5 + 0x3a);
        *(undefined1 *)((int)puVar7 + uVar5 + 0x3a) = *(undefined1 *)((int)puVar7 + uVar5 + 0x39);
        *(undefined1 *)((int)puVar7 + uVar5 + 0x39) = uVar1;
      }
      *puVar7 = *(int *)(uVar3 + 8) + uVar5;
      iVar2 = EVP_DigestUpdate(ctx,"The quick brown fox jumped over the lazy dog\'s back.",0x34);
      if ((iVar2 != 0) &&
         (iVar2 = EVP_DigestFinal_ex(ctx,(uchar *)((int)puVar7 + *puVar7 + 0x38),(uint *)0x0),
         iVar2 != 0)) {
        *puVar7 = *puVar7 + *(int *)(puVar7[6] + 8);
        puVar7[0xc] = 1;
        puVar7[0xd] = 0;
        goto LAB_0066ddac;
      }
    }
    BIO_clear_flags(param_1,0xf);
LAB_0066de96:
    param_3 = 0;
  }
  return param_3;
}

// ---- FUN_0066e6ea  @ 0x66e6ea
undefined4 FUN_0066e6ea(int *param_1,int param_2,int param_3,uint param_4)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  
  iVar5 = param_1[0x18];
  uVar4 = *(uint *)(*param_1 + 4);
  if (uVar4 <= param_4) {
    uVar6 = param_4 - uVar4;
    iVar2 = param_3;
    do {
      pcVar1 = *(code **)(iVar5 + 0xf4);
      iVar3 = iVar2 + uVar4;
      (*pcVar1)(iVar2,param_2,iVar5,pcVar1,param_4);
      param_2 = param_2 + uVar4;
      iVar2 = iVar3;
    } while ((uint)(iVar3 - param_3) <= uVar6);
  }
  return 1;
}

// ---- FUN_0066e736  @ 0x66e736
undefined4 FUN_0066e736(int param_1,int param_2,uint param_3,void *param_4)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  iVar3 = *(int *)(param_1 + 0x60);
  if (param_2 == 0x10) {
    if (((*(int *)(param_1 + 8) == 0) || (*(int *)(iVar3 + 0xfc) == 0)) ||
       (iVar1 = CRYPTO_ccm128_tag(iVar3 + 0x110), iVar1 == 0)) {
      return 0;
    }
    *(undefined4 *)(iVar3 + 0xfc) = 0;
    *(undefined4 *)(iVar3 + 0xf8) = 0;
    *(undefined4 *)(iVar3 + 0x100) = 0;
  }
  else {
    if (param_2 < 0x11) {
      if (param_2 == 0) {
        *(undefined4 *)(iVar3 + 0xf4) = 0;
        *(undefined4 *)(iVar3 + 0x104) = 8;
        *(undefined4 *)(iVar3 + 0xf8) = 0;
        *(undefined4 *)(iVar3 + 0x108) = 0xc;
        *(undefined4 *)(iVar3 + 0xfc) = 0;
        *(undefined4 *)(iVar3 + 0x100) = 0;
        return 1;
      }
      if (param_2 != 9) {
        return 0xffffffff;
      }
      param_3 = 0xf - param_3;
    }
    else {
      if (param_2 == 0x11) {
        uVar2 = param_3 & 1;
        if ((int)param_3 < 4) {
          uVar2 = 1;
        }
        if (uVar2 != 0) {
          return 0;
        }
        if ((int)param_3 < 0x11) {
          uVar2 = *(uint *)(param_1 + 8);
          if (uVar2 == 0 || param_4 == (void *)0x0) {
            uVar4 = 1 - uVar2;
            if (1 < uVar2) {
              uVar4 = 0;
            }
            if (param_4 == (void *)0x0) {
              uVar4 = uVar4 & 1;
            }
            else {
              uVar4 = 0;
            }
            if (uVar4 == 0) {
              if (param_4 != (void *)0x0) {
                *(undefined4 *)(iVar3 + 0xfc) = 1;
                memcpy((void *)(param_1 + 0x30),param_4,param_3);
              }
              *(uint *)(iVar3 + 0x108) = param_3;
              return 1;
            }
            return 0;
          }
        }
        return 0;
      }
      if (param_2 != 0x14) {
        return 0xffffffff;
      }
    }
    if (6 < param_3 - 2) {
      return 0;
    }
    *(uint *)(iVar3 + 0x104) = param_3;
  }
  return 1;
}

// ---- FUN_0066e814  @ 0x66e814
void FUN_0066e814(int param_1,void *param_2,int param_3,size_t param_4)

{
  int iVar1;
  size_t sVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined1 auStack_34 [16];
  int local_24;
  
  iVar4 = *(int *)(param_1 + 0x60);
  local_24 = __stack_chk_guard;
  if (((*(int *)(iVar4 + 0xf8) != 0) || (*(int *)(iVar4 + 0xf4) != 0)) &&
     ((*(int *)(param_1 + 8) != 0 || (*(int *)(iVar4 + 0xfc) != 0)))) {
    iVar5 = iVar4 + 0x110;
    sVar2 = param_4;
    if (param_2 == (void *)0x0) {
      if (param_3 == 0) {
        iVar5 = CRYPTO_ccm128_setiv(iVar5,param_1 + 0x20,0xf - *(int *)(iVar4 + 0x104),param_4);
        if (iVar5 == 0) {
          *(undefined4 *)(iVar4 + 0x100) = 1;
          goto LAB_0066e97a;
        }
      }
      else {
        uVar3 = 1 - *(uint *)(iVar4 + 0x100);
        if (1 < *(uint *)(iVar4 + 0x100)) {
          uVar3 = 0;
        }
        if (param_4 == 0) {
          uVar3 = 0;
        }
        else {
          uVar3 = uVar3 & 1;
        }
        if (uVar3 == 0) {
          CRYPTO_ccm128_aad(iVar5,param_3,param_4);
          goto LAB_0066e97a;
        }
      }
    }
    else {
      sVar2 = 0;
      if (param_3 == 0) goto LAB_0066e97a;
      if (*(int *)(iVar4 + 0x100) == 0) {
        iVar1 = CRYPTO_ccm128_setiv(iVar5,param_1 + 0x20,0xf - *(int *)(iVar4 + 0x104),param_4);
        if (iVar1 != 0) goto LAB_0066e976;
        *(undefined4 *)(iVar4 + 0x100) = 1;
      }
      iVar1 = *(int *)(iVar4 + 0x140);
      if (*(int *)(param_1 + 8) == 0) {
        if (iVar1 == 0) {
          uVar3 = CRYPTO_ccm128_decrypt(iVar5,param_3,param_2,param_4);
        }
        else {
          uVar3 = CRYPTO_ccm128_decrypt_ccm64(iVar5,param_3,param_2,param_4,iVar1);
        }
        iVar1 = 1 - uVar3;
        if (1 < uVar3) {
          iVar1 = 0;
        }
        if ((((iVar1 == 0) ||
             (iVar5 = CRYPTO_ccm128_tag(iVar5,auStack_34,*(undefined4 *)(iVar4 + 0x108)), iVar5 == 0
             )) || (iVar5 = memcmp(auStack_34,(void *)(param_1 + 0x30),*(size_t *)(iVar4 + 0x108)),
                   iVar5 != 0)) || (param_4 == 0xffffffff)) {
          OPENSSL_cleanse(param_2,param_4);
          param_4 = 0xffffffff;
        }
        *(undefined4 *)(iVar4 + 0xf8) = 0;
        *(undefined4 *)(iVar4 + 0xfc) = 0;
        *(undefined4 *)(iVar4 + 0x100) = 0;
        sVar2 = param_4;
        goto LAB_0066e97a;
      }
      if (iVar1 == 0) {
        iVar5 = CRYPTO_ccm128_encrypt(iVar5,param_3,param_2,param_4);
      }
      else {
        iVar5 = CRYPTO_ccm128_encrypt_ccm64(iVar5,param_3,param_2,param_4,iVar1);
      }
      if (iVar5 == 0) {
        *(undefined4 *)(iVar4 + 0xfc) = 1;
        sVar2 = param_4;
        goto LAB_0066e97a;
      }
    }
  }
LAB_0066e976:
  sVar2 = 0xffffffff;
LAB_0066e97a:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(sVar2);
}

// ---- FUN_0066ef04  @ 0x66ef04
undefined4 FUN_0066ef04(int param_1,uchar *param_2,void *param_3)

{
  AES_KEY *key;
  uint uVar1;
  uint uVar2;
  
  uVar1 = 1 - (int)param_3;
  if ((void *)0x1 < param_3) {
    uVar1 = 0;
  }
  if (param_2 == (uchar *)0x0) {
    uVar2 = uVar1 & 1;
  }
  else {
    uVar2 = 0;
  }
  key = *(AES_KEY **)(param_1 + 0x60);
  if (uVar2 != 0) {
    return 1;
  }
  if (param_2 == (uchar *)0x0) {
    if (key[1].rd_key[0] == 0) {
      memcpy((void *)key[2].rd_key[0x24],param_3,key[2].rd_key[0x25]);
    }
    else {
      CRYPTO_gcm128_setiv(key[1].rd_key + 3,param_3,key[2].rd_key[0x25]);
    }
    key[1].rd_key[1] = 1;
    key[2].rd_key[0x27] = 0;
    return 1;
  }
  AES_set_encrypt_key(param_2,*(int *)(param_1 + 0x58) << 3,key);
  CRYPTO_gcm128_init(key[1].rd_key + 3,key,AES_encrypt);
  key[2].rd_key[0x29] = 0;
  if (uVar1 != 0) {
    if (key[1].rd_key[1] == 0) goto LAB_0066ef6c;
    param_3 = (void *)key[2].rd_key[0x24];
  }
  if (param_3 != (void *)0x0) {
    CRYPTO_gcm128_setiv(key[1].rd_key + 3,param_3,key[2].rd_key[0x25]);
    key[1].rd_key[1] = 1;
  }
LAB_0066ef6c:
  key[1].rd_key[0] = 1;
  return 1;
}

// ---- FUN_0066efb0  @ 0x66efb0
undefined4 FUN_0066efb0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 local_1c [2];
  
  local_1c[0] = *(undefined4 *)(param_1 + 0x50);
  iVar1 = *(int *)(param_1 + 0x60);
  if (*(int *)(iVar1 + 0xf8) == 0) {
    CRYPTO_ctr128_encrypt
              (param_3,param_2,param_4,iVar1,param_1 + 0x20,param_1 + 0x30,local_1c,
               *(undefined4 *)(iVar1 + 0xf4));
  }
  else {
    CRYPTO_ctr128_encrypt_ctr32();
  }
  *(undefined4 *)(param_1 + 0x50) = local_1c[0];
  return 1;
}

// ---- FUN_0066effc  @ 0x66effc
undefined8 FUN_0066effc(int *param_1,uchar *param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  code *pcVar2;
  AES_KEY *key;
  uint uVar3;
  
  key = (AES_KEY *)param_1[0x18];
  uVar3 = *(uint *)(*param_1 + 0x10) & 0xf0007;
  if (param_4 == 0 && uVar3 - 1 < 2) {
    iVar1 = AES_set_decrypt_key(param_2,param_1[0x16] << 3,key);
    key[1].rd_key[0] = (uint)AES_decrypt;
    pcVar2 = (code *)0x0;
    if (uVar3 == 2) {
      pcVar2 = (code *)0x6362fd;
    }
    key[1].rd_key[1] = (uint)pcVar2;
  }
  else {
    iVar1 = AES_set_encrypt_key(param_2,param_1[0x16] << 3,key);
    key[1].rd_key[0] = (uint)AES_encrypt;
    pcVar2 = (code *)0x0;
    if (uVar3 == 2) {
      pcVar2 = (code *)0x6362fd;
    }
    key[1].rd_key[1] = (uint)pcVar2;
  }
  if (-1 >= iVar1) {
    param_1 = (int *)0x23f;
    ERR_put_error(6,0x85,0x8f,"jni/../../openssl-android/crypto/evp/e_aes.c",0x23f);
  }
  return CONCAT44(param_1,(uint)(-1 < iVar1));
}

// ---- FUN_0066f098  @ 0x66f098
undefined4 FUN_0066f098(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  CRYPTO_cfb128_8_encrypt
            (param_3,param_2,param_4,*(int *)(param_1 + 0x60),param_1 + 0x20,param_1 + 0x50,
             *(undefined4 *)(param_1 + 8),*(undefined4 *)(*(int *)(param_1 + 0x60) + 0xf4));
  return 1;
}

// ---- FUN_0066f0c4  @ 0x66f0c4
undefined4 FUN_0066f0c4(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  
  iVar3 = *(int *)(param_1 + 0x60);
  if (*(int *)(param_1 + 0x5c) << 0x12 < 0) {
    uVar1 = *(undefined4 *)(param_1 + 8);
    uVar2 = *(undefined4 *)(iVar3 + 0xf4);
  }
  else {
    for (uVar4 = param_4; 0xfffffff < uVar4; uVar4 = uVar4 + 0xf0000000) {
      CRYPTO_cfb128_1_encrypt
                (param_3,param_2,0x80000000,iVar3,param_1 + 0x20,param_1 + 0x50,
                 *(undefined4 *)(param_1 + 8),*(undefined4 *)(iVar3 + 0xf4));
    }
    if ((param_4 & 0xfffffff) == 0) {
      return 1;
    }
    uVar1 = *(undefined4 *)(param_1 + 8);
    param_4 = (param_4 & 0xfffffff) << 3;
    uVar2 = *(undefined4 *)(iVar3 + 0xf4);
  }
  CRYPTO_cfb128_1_encrypt(param_3,param_2,param_4,iVar3,param_1 + 0x20,param_1 + 0x50,uVar1,uVar2);
  return 1;
}

// ---- FUN_0066f162  @ 0x66f162
undefined4 FUN_0066f162(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  CRYPTO_cfb128_encrypt
            (param_3,param_2,param_4,*(int *)(param_1 + 0x60),param_1 + 0x20,param_1 + 0x50,
             *(undefined4 *)(param_1 + 8),*(undefined4 *)(*(int *)(param_1 + 0x60) + 0xf4));
  return 1;
}

// ---- FUN_0066f18e  @ 0x66f18e
undefined4 FUN_0066f18e(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  CRYPTO_ofb128_encrypt
            (param_3,param_2,param_4,*(int *)(param_1 + 0x60),param_1 + 0x20,param_1 + 0x50,
             *(undefined4 *)(*(int *)(param_1 + 0x60) + 0xf4));
  return 1;
}

// ---- FUN_0066f1b4  @ 0x66f1b4
undefined4 FUN_0066f1b4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x60);
  if (*(code **)(iVar1 + 0xf8) == (code *)0x0) {
    CRYPTO_cbc128_encrypt
              (param_3,param_2,param_4,iVar1,param_1 + 0x20,*(undefined4 *)(iVar1 + 0xf4));
  }
  else {
    (**(code **)(iVar1 + 0xf8))();
  }
  return 1;
}

// ---- FUN_0066f3a4  @ 0x66f3a4
undefined4 FUN_0066f3a4(int *param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *in;
  uchar *puVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(*param_1 + 4);
  if (uVar2 <= param_4) {
    in = param_3;
    do {
      puVar1 = in + uVar2;
      BF_ecb_encrypt(in,param_2,(BF_KEY *)param_1[0x18],param_1[2]);
      in = puVar1;
      param_2 = param_2 + uVar2;
    } while ((uint)((int)puVar1 - (int)param_3) <= param_4 - uVar2);
  }
  return 1;
}

// ---- FUN_0066f3da  @ 0x66f3da
undefined4 FUN_0066f3da(EVP_CIPHER_CTX *param_1,uchar *param_2)

{
  int len;
  BF_KEY *key;
  
  key = param_1->cipher_data;
  len = EVP_CIPHER_CTX_key_length(param_1);
  BF_set_key(key,len,param_2);
  return 1;
}

// ---- FUN_0066f3f2  @ 0x66f3f2
undefined4 FUN_0066f3f2(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *out;
  uchar *in;
  uint uVar1;
  
  out = param_2;
  in = param_3;
  for (uVar1 = param_4; 0x3fffffff < uVar1; uVar1 = uVar1 + 0xc0000000) {
    BF_ofb64_encrypt(in,out,0x40000000,*(BF_KEY **)(param_1 + 0x60),(uchar *)(param_1 + 0x20),
                     (int *)(param_1 + 0x50));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    BF_ofb64_encrypt(param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
                     param_4 & 0x3fffffff,*(BF_KEY **)(param_1 + 0x60),(uchar *)(param_1 + 0x20),
                     (int *)(param_1 + 0x50));
  }
  return 1;
}

// ---- FUN_0066f468  @ 0x66f468
undefined4 FUN_0066f468(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  uchar *puVar3;
  uchar *puVar4;
  
  uVar2 = param_4;
  if (0x3fffffff < param_4) {
    uVar2 = 0x40000000;
  }
  while (uVar2 <= param_4 && param_4 != 0) {
    uVar1 = param_4 - uVar2;
    puVar4 = param_3 + uVar2;
    puVar3 = param_2 + uVar2;
    BF_cfb64_encrypt(param_3,param_2,param_4,*(BF_KEY **)(param_1 + 0x60),(uchar *)(param_1 + 0x20),
                     (int *)(param_1 + 0x50),*(int *)(param_1 + 8));
    param_4 = uVar1;
    param_2 = puVar3;
    param_3 = puVar4;
    if (uVar1 <= uVar2) {
      uVar2 = uVar1;
    }
  }
  return 1;
}

// ---- FUN_0066f4c6  @ 0x66f4c6
undefined4 FUN_0066f4c6(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *out;
  uchar *in;
  uint uVar1;
  
  out = param_2;
  in = param_3;
  for (uVar1 = param_4; 0x3fffffff < uVar1; uVar1 = uVar1 + 0xc0000000) {
    BF_cbc_encrypt(in,out,0x40000000,*(BF_KEY **)(param_1 + 0x60),(uchar *)(param_1 + 0x20),
                   *(int *)(param_1 + 8));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    BF_cbc_encrypt(param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
                   param_4 & 0x3fffffff,*(BF_KEY **)(param_1 + 0x60),(uchar *)(param_1 + 0x20),
                   *(int *)(param_1 + 8));
  }
  return 1;
}

// ---- FUN_0066f602  @ 0x66f602
undefined4 FUN_0066f602(int param_1,int param_2,int param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uchar local_30 [4];
  byte local_2c [8];
  
  uVar2 = param_4;
  if (0x7ffffff < param_4) {
    uVar2 = 0x8000000;
  }
  while (uVar2 <= param_4 && param_4 != 0) {
    for (uVar3 = 0; uVar3 != uVar2 << 3; uVar3 = uVar3 + 1) {
      uVar4 = uVar3 >> 3;
      uVar1 = (int)(uint)*(byte *)(param_3 + uVar4) >> (~uVar3 & 7) & 1;
      local_30[0] = (uchar)uVar1;
      if (uVar1 != 0) {
        local_30[0] = 0x80;
      }
      DES_cfb_encrypt(local_30,local_2c,1,1,*(DES_key_schedule **)(param_1 + 0x60),
                      (DES_cblock *)(param_1 + 0x20),*(int *)(param_1 + 8));
      *(byte *)(param_2 + uVar4) =
           (byte)((int)(local_2c[0] & 0x80) >> (uVar3 & 7)) |
           *(byte *)(param_2 + uVar4) & ~(byte)(0x80 >> (uVar3 & 7));
    }
    param_4 = param_4 - uVar2;
    param_3 = param_3 + uVar2;
    param_2 = param_2 + uVar2;
    if (param_4 <= uVar2) {
      uVar2 = param_4;
    }
  }
  return 1;
}

// ---- FUN_0066f6b0  @ 0x66f6b0
undefined4 FUN_0066f6b0(int param_1,const_DES_cblock *param_2)

{
  DES_set_key_unchecked(param_2,*(DES_key_schedule **)(param_1 + 0x60));
  return 1;
}

// ---- FUN_0066f6c0  @ 0x66f6c0
/* WARNING: Type propagation algorithm not settling */

undefined4 FUN_0066f6c0(int *param_1,DES_cblock *param_2,const_DES_cblock *param_3,uint param_4)

{
  const_DES_cblock *input;
  const_DES_cblock *pauVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(*param_1 + 4);
  if (uVar2 <= param_4) {
    input = param_3;
    do {
      pauVar1 = (const_DES_cblock *)((int)*input + uVar2);
      DES_ecb_encrypt(input,param_2,(DES_key_schedule *)param_1[0x18],param_1[2]);
      input = pauVar1;
      param_2 = (DES_cblock *)((int)*param_2 + uVar2);
    } while ((uint)((int)pauVar1 - (int)param_3) <= param_4 - uVar2);
  }
  return 1;
}

// ---- FUN_0066f6f6  @ 0x66f6f6
undefined4 FUN_0066f6f6(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *out;
  uchar *in;
  uint uVar1;
  
  out = param_2;
  in = param_3;
  for (uVar1 = param_4; 0x3fffffff < uVar1; uVar1 = uVar1 + 0xc0000000) {
    DES_ofb64_encrypt(in,out,0x40000000,*(DES_key_schedule **)(param_1 + 0x60),
                      (DES_cblock *)(param_1 + 0x20),(int *)(param_1 + 0x50));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    DES_ofb64_encrypt(param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
                      param_4 & 0x3fffffff,*(DES_key_schedule **)(param_1 + 0x60),
                      (DES_cblock *)(param_1 + 0x20),(int *)(param_1 + 0x50));
  }
  return 1;
}

// ---- FUN_0066f76c  @ 0x66f76c
undefined4 FUN_0066f76c(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *out;
  uchar *in;
  uint uVar1;
  
  out = param_2;
  in = param_3;
  for (uVar1 = param_4; 0x3fffffff < uVar1; uVar1 = uVar1 + 0xc0000000) {
    DES_cfb64_encrypt(in,out,0x40000000,*(DES_key_schedule **)(param_1 + 0x60),
                      (DES_cblock *)(param_1 + 0x20),(int *)(param_1 + 0x50),*(int *)(param_1 + 8));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    DES_cfb64_encrypt(param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
                      param_4 & 0x3fffffff,*(DES_key_schedule **)(param_1 + 0x60),
                      (DES_cblock *)(param_1 + 0x20),(int *)(param_1 + 0x50),*(int *)(param_1 + 8));
  }
  return 1;
}

// ---- FUN_0066f7ea  @ 0x66f7ea
undefined4 FUN_0066f7ea(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *output;
  uchar *input;
  uint uVar1;
  
  output = param_2;
  input = param_3;
  for (uVar1 = param_4; 0x3fffffff < uVar1; uVar1 = uVar1 + 0xc0000000) {
    DES_ncbc_encrypt(input,output,0x40000000,*(DES_key_schedule **)(param_1 + 0x60),
                     (DES_cblock *)(param_1 + 0x20),*(int *)(param_1 + 8));
    output = output + 0x40000000;
    input = input + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    DES_ncbc_encrypt(param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
                     param_4 & 0x3fffffff,*(DES_key_schedule **)(param_1 + 0x60),
                     (DES_cblock *)(param_1 + 0x20),*(int *)(param_1 + 8));
  }
  return 1;
}

// ---- FUN_0066f8a4  @ 0x66f8a4
/* WARNING: Type propagation algorithm not settling */

undefined8
FUN_0066f8a4(DES_key_schedule *param_1,DES_cblock *param_2,const_DES_cblock *param_3,uint param_4)

{
  DES_key_schedule *ks1;
  const_DES_cblock *input;
  const_DES_cblock *pauVar1;
  uint uVar2;
  DES_key_schedule *ks3;
  
  uVar2 = *(uint *)(param_1->ks[0].deslong[0] + 4);
  ks3 = param_1;
  if (uVar2 <= param_4) {
    input = param_3;
    do {
      ks1 = (DES_key_schedule *)param_1->ks[0xc].deslong[0];
      pauVar1 = (const_DES_cblock *)((int)*input + uVar2);
      ks3 = ks1 + 2;
      DES_ecb3_encrypt(input,param_2,ks1,ks1 + 1,ks3,param_1->ks[1].deslong[0]);
      param_2 = (DES_cblock *)((int)*param_2 + uVar2);
      input = pauVar1;
    } while ((uint)((int)pauVar1 - (int)param_3) <= param_4 - uVar2);
  }
  return CONCAT44(ks3,1);
}

// ---- FUN_0066f8e6  @ 0x66f8e6
undefined4 FUN_0066f8e6(int param_1,const_DES_cblock *param_2)

{
  DES_set_key_unchecked(param_2,*(DES_key_schedule **)(param_1 + 0x60));
  DES_set_key_unchecked(param_2 + 1,(DES_key_schedule *)(*(int *)(param_1 + 0x60) + 0x80));
  DES_set_key_unchecked(param_2 + 2,(DES_key_schedule *)(*(int *)(param_1 + 0x60) + 0x100));
  return 1;
}

// ---- FUN_0066f912  @ 0x66f912
undefined4 FUN_0066f912(int param_1,const_DES_cblock *param_2)

{
  DES_set_key_unchecked(param_2,*(DES_key_schedule **)(param_1 + 0x60));
  DES_set_key_unchecked(param_2 + 1,(DES_key_schedule *)(*(int *)(param_1 + 0x60) + 0x80));
  memcpy((void *)((int)*(void **)(param_1 + 0x60) + 0x100),*(void **)(param_1 + 0x60),0x80);
  return 1;
}

// ---- FUN_0066f9ca  @ 0x66f9ca
undefined4 FUN_0066f9ca(int param_1,int param_2,int param_3,uint param_4)

{
  uint uVar1;
  DES_key_schedule *ks1;
  uint uVar2;
  uint uVar3;
  uchar local_28 [4];
  byte local_24 [4];
  
  for (uVar2 = 0; uVar2 != param_4; uVar2 = uVar2 + 1) {
    uVar3 = uVar2 >> 3;
    uVar1 = (int)(uint)*(byte *)(param_3 + uVar3) >> (~uVar2 & 7) & 1;
    local_28[0] = (uchar)uVar1;
    if (uVar1 != 0) {
      local_28[0] = 0x80;
    }
    ks1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_cfb_encrypt
              (local_28,local_24,1,1,ks1,ks1 + 1,ks1 + 2,(DES_cblock *)(param_1 + 0x20),
               *(int *)(param_1 + 8));
    *(byte *)(param_2 + uVar3) =
         (byte)((int)(local_24[0] & 0x80) >> (uVar2 & 7)) |
         *(byte *)(param_2 + uVar3) & ~(byte)(0x80 >> (uVar2 & 7));
  }
  return 1;
}

// ---- FUN_0066fa4c  @ 0x66fa4c
undefined4 FUN_0066fa4c(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  DES_key_schedule *pDVar1;
  uchar *out;
  uchar *in;
  uint uVar2;
  
  out = param_2;
  in = param_3;
  for (uVar2 = param_4; 0x3fffffff < uVar2; uVar2 = uVar2 + 0xc0000000) {
    pDVar1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_ofb64_encrypt
              (in,out,0x40000000,pDVar1,pDVar1 + 1,pDVar1 + 2,(DES_cblock *)(param_1 + 0x20),
               (int *)(param_1 + 0x50));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    pDVar1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_ofb64_encrypt
              (param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
               param_4 & 0x3fffffff,pDVar1,pDVar1 + 1,pDVar1 + 2,(DES_cblock *)(param_1 + 0x20),
               (int *)(param_1 + 0x50));
  }
  return 1;
}

// ---- FUN_0066fad8  @ 0x66fad8
undefined4 FUN_0066fad8(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  DES_key_schedule *pDVar1;
  uchar *out;
  uchar *in;
  uint uVar2;
  
  out = param_2;
  in = param_3;
  for (uVar2 = param_4; 0x3fffffff < uVar2; uVar2 = uVar2 + 0xc0000000) {
    pDVar1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_cfb64_encrypt
              (in,out,0x40000000,pDVar1,pDVar1 + 1,pDVar1 + 2,(DES_cblock *)(param_1 + 0x20),
               (int *)(param_1 + 0x50),*(int *)(param_1 + 8));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    pDVar1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_cfb64_encrypt
              (param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
               param_4 & 0x3fffffff,pDVar1,pDVar1 + 1,pDVar1 + 2,(DES_cblock *)(param_1 + 0x20),
               (int *)(param_1 + 0x50),*(int *)(param_1 + 8));
  }
  return 1;
}

// ---- FUN_0066fb6e  @ 0x66fb6e
undefined4 FUN_0066fb6e(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  DES_key_schedule *pDVar1;
  uchar *output;
  uchar *input;
  uint uVar2;
  
  output = param_2;
  input = param_3;
  for (uVar2 = param_4; 0x3fffffff < uVar2; uVar2 = uVar2 + 0xc0000000) {
    pDVar1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_cbc_encrypt
              (input,output,0x40000000,pDVar1,pDVar1 + 1,pDVar1 + 2,(DES_cblock *)(param_1 + 0x20),
               *(int *)(param_1 + 8));
    output = output + 0x40000000;
    input = input + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    pDVar1 = *(DES_key_schedule **)(param_1 + 0x60);
    DES_ede3_cbc_encrypt
              (param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
               param_4 & 0x3fffffff,pDVar1,pDVar1 + 1,pDVar1 + 2,(DES_cblock *)(param_1 + 0x20),
               *(int *)(param_1 + 8));
  }
  return 1;
}

// ---- FUN_0066fd2c  @ 0x66fd2c
void FUN_0066fd2c(EVP_CIPHER_CTX *param_1,ASN1_TYPE *param_2)

{
  uint max_len;
  uint uVar1;
  int iVar2;
  int arg;
  long local_30;
  uchar auStack_2c [16];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_30 = 0;
  uVar1 = 0;
  if (param_2 == (ASN1_TYPE *)0x0) goto LAB_0066fdde;
  max_len = EVP_CIPHER_CTX_iv_length(param_1);
  if (0x10 < max_len) {
    OpenSSLDie("jni/../../openssl-android/crypto/evp/e_rc2.c",0xb3,"l <= sizeof(iv)");
  }
  uVar1 = ASN1_TYPE_get_int_octetstring(param_2,&local_30,auStack_2c,max_len);
  if (uVar1 == max_len) {
    if (local_30 == 0x3a) {
      arg = 0x80;
    }
    else if (local_30 == 0x78) {
      arg = 0x40;
    }
    else {
      if (local_30 != 0xa0) {
        ERR_put_error(6,0x6d,0x6c,"jni/../../openssl-android/crypto/evp/e_rc2.c",0xa3);
        goto LAB_0066fdd6;
      }
      arg = 0x28;
    }
    if (0 < (int)uVar1) {
      iVar2 = EVP_CipherInit_ex(param_1,(EVP_CIPHER *)0x0,(ENGINE *)0x0,(uchar *)0x0,auStack_2c,-1);
      if (iVar2 == 0) {
        uVar1 = 0xffffffff;
        goto LAB_0066fdde;
      }
    }
    EVP_CIPHER_CTX_ctrl(param_1,3,arg,(void *)0x0);
    EVP_CIPHER_CTX_set_key_length(param_1,arg >> 3);
  }
  else {
LAB_0066fdd6:
    uVar1 = 0xffffffff;
  }
LAB_0066fdde:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

// ---- FUN_0066febc  @ 0x66febc
undefined4 FUN_0066febc(EVP_CIPHER_CTX *param_1,uchar *param_2)

{
  int len;
  void *pvVar1;
  
  pvVar1 = param_1->cipher_data;
  len = EVP_CIPHER_CTX_key_length(param_1);
  RC2_set_key((RC2_KEY *)((int)pvVar1 + 4),len,param_2,*(int *)param_1->cipher_data);
  return 1;
}

// ---- FUN_0066fedc  @ 0x66fedc
undefined4 FUN_0066fedc(int *param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *in;
  uchar *puVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(*param_1 + 4);
  if (uVar2 <= param_4) {
    in = param_3;
    do {
      puVar1 = in + uVar2;
      RC2_ecb_encrypt(in,param_2,(RC2_KEY *)(param_1[0x18] + 4),param_1[2]);
      param_2 = param_2 + uVar2;
      in = puVar1;
    } while ((uint)((int)puVar1 - (int)param_3) <= param_4 - uVar2);
  }
  return 1;
}

// ---- FUN_0066ff14  @ 0x66ff14
undefined4 FUN_0066ff14(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uchar *out;
  uchar *in;
  uint uVar1;
  
  out = param_2;
  in = param_3;
  for (uVar1 = param_4; 0x3fffffff < uVar1; uVar1 = uVar1 + 0xc0000000) {
    RC2_ofb64_encrypt(in,out,0x40000000,(RC2_KEY *)(*(int *)(param_1 + 0x60) + 4),
                      (uchar *)(param_1 + 0x20),(int *)(param_1 + 0x50));
    out = out + 0x40000000;
    in = in + 0x40000000;
  }
  if ((param_4 & 0x3fffffff) != 0) {
    RC2_ofb64_encrypt(param_3 + (param_4 & 0xc0000000),param_2 + (param_4 & 0xc0000000),
                      param_4 & 0x3fffffff,(RC2_KEY *)(*(int *)(param_1 + 0x60) + 4),
                      (uchar *)(param_1 + 0x20),(int *)(param_1 + 0x50));
  }
  return 1;
}

// ---- FUN_0066ff8c  @ 0x66ff8c
undefined4 FUN_0066ff8c(int param_1,uchar *param_2,uchar *param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  uchar *puVar3;
  
  uVar2 = param_4;
  if (0x3fffffff < param_4) {
    uVar2 = 0x40000000;
  }
  while (uVar2 <= param_4 && param_4 != 0) {
    puVar3 = param_3 + uVar2;
    uVar1 = param_4 - uVar2;
    RC2_cfb64_encrypt(param_3,param_2,param_4,(RC2_KEY *)(*(int *)(param_1 + 0x60) + 4),
                      (uchar *)(param_1 + 0x20),(int *)(param_1 + 0x50),*(int *)(param_1 + 8));
    param_2 = param_2 + uVar2;
    param_4 = uVar1;
    param_3 = puVar3;
    if (uVar1 <= uVar2) {
      uVar2 = uVar1;
    }
  }
  return 1;
}
