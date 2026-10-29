// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 26 functions

// ---- FUN_006a11de  @ 0x6a11de
undefined4 FUN_006a11de(int param_1)

{
  SSL *pSVar1;
  undefined4 *puVar2;
  
  if (param_1 == 0) {
    return 0;
  }
  puVar2 = *(undefined4 **)(param_1 + 0x20);
  pSVar1 = (SSL *)*puVar2;
  if (pSVar1 != (SSL *)0x0) {
    SSL_shutdown(pSVar1);
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    if ((*(int *)(param_1 + 0xc) != 0) && (pSVar1 = (SSL *)*puVar2, pSVar1 != (SSL *)0x0)) {
      SSL_free(pSVar1);
    }
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  if (*(void **)(param_1 + 0x20) != (void *)0x0) {
    CRYPTO_free(*(void **)(param_1 + 0x20));
    return 1;
  }
  return 1;
}

// ---- FUN_006a1230  @ 0x6a1230
int FUN_006a1230(BIO *param_1,void *param_2,int param_3)

{
  bool bVar1;
  int ret_code;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  SSL *ssl;
  
  if (param_2 == (void *)0x0) {
    return 0;
  }
  puVar4 = param_1->ptr;
  ssl = (SSL *)*puVar4;
  BIO_clear_flags(param_1,0xf);
  ret_code = SSL_read(ssl,param_2,param_3);
  iVar2 = SSL_get_error(ssl,ret_code);
  switch(iVar2) {
  case 0:
    if (0 < ret_code) {
      bVar1 = false;
      if (puVar4[2] != 0) {
        iVar2 = puVar4[3];
        puVar4[3] = ret_code + iVar2;
        bVar1 = false;
        if ((uint)puVar4[2] < (uint)(ret_code + iVar2)) {
          puVar4[3] = 0;
          puVar4[1] = puVar4[1] + 1;
          SSL_renegotiate(ssl);
          bVar1 = true;
        }
      }
      iVar2 = 0;
      if (bVar1 || puVar4[4] == 0) break;
      uVar3 = time((time_t *)0x0);
      if ((uint)(puVar4[4] + puVar4[5]) < uVar3) {
        puVar4[5] = uVar3;
        puVar4[1] = puVar4[1] + 1;
        SSL_renegotiate(ssl);
      }
    }
  default:
switchD_006a1260_caseD_1:
    iVar2 = 0;
    break;
  case 2:
    iVar2 = 9;
    goto LAB_006a12d4;
  case 3:
    iVar2 = 10;
LAB_006a12d4:
    BIO_set_flags(param_1,iVar2);
    goto switchD_006a1260_caseD_1;
  case 4:
    BIO_set_flags(param_1,0xc);
    iVar2 = 1;
    break;
  case 7:
    BIO_set_flags(param_1,0xc);
    iVar2 = 2;
    break;
  case 8:
    BIO_set_flags(param_1,0xc);
    iVar2 = 3;
    break;
  case 9:
    BIO_set_flags(param_1,0xc);
    iVar2 = 4;
  }
  param_1->retry_reason = iVar2;
  return ret_code;
}

// ---- FUN_006a1314  @ 0x6a1314
int FUN_006a1314(BIO *param_1,void *param_2,int param_3)

{
  bool bVar1;
  int ret_code;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  SSL *ssl;
  
  if (param_2 == (void *)0x0) {
    return 0;
  }
  puVar4 = param_1->ptr;
  ssl = (SSL *)*puVar4;
  BIO_clear_flags(param_1,0xf);
  ret_code = SSL_write(ssl,param_2,param_3);
  iVar2 = SSL_get_error(ssl,ret_code);
  switch(iVar2) {
  case 0:
    if (0 < ret_code) {
      bVar1 = false;
      if (puVar4[2] != 0) {
        iVar2 = puVar4[3];
        puVar4[3] = ret_code + iVar2;
        bVar1 = false;
        if ((uint)puVar4[2] < (uint)(ret_code + iVar2)) {
          puVar4[3] = 0;
          puVar4[1] = puVar4[1] + 1;
          SSL_renegotiate(ssl);
          bVar1 = true;
        }
      }
      iVar2 = 0;
      if (bVar1 || puVar4[4] == 0) goto LAB_006a13e2;
      uVar3 = time((time_t *)0x0);
      if ((uint)(puVar4[4] + puVar4[5]) < uVar3) {
        puVar4[5] = uVar3;
        puVar4[1] = puVar4[1] + 1;
        SSL_renegotiate(ssl);
      }
    }
    break;
  case 2:
    iVar2 = 9;
    goto LAB_006a13b6;
  case 3:
    iVar2 = 10;
LAB_006a13b6:
    BIO_set_flags(param_1,iVar2);
    break;
  case 4:
    BIO_set_flags(param_1,0xc);
    iVar2 = 1;
    goto LAB_006a13e2;
  case 7:
    BIO_set_flags(param_1,0xc);
    iVar2 = 2;
    goto LAB_006a13e2;
  case 9:
    BIO_set_flags(param_1,0xc);
    iVar2 = 4;
    goto LAB_006a13e2;
  }
  iVar2 = 0;
LAB_006a13e2:
  param_1->retry_reason = iVar2;
  return ret_code;
}

// ---- FUN_006a13ec  @ 0x6a13ec
bool FUN_006a13ec(int param_1)

{
  void *__s;
  
  __s = CRYPTO_malloc(0x18,"jni/../../openssl-android/ssl/bio_ssl.c",0x6c);
  if (__s != (void *)0x0) {
    memset(__s,0,0x18);
    *(void **)(param_1 + 0x20) = __s;
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  else {
    ERR_put_error(0x20,0x76,0x41,"jni/../../openssl-android/ssl/bio_ssl.c",0x6f);
  }
  return __s != (void *)0x0;
}

// ---- FUN_006a1430  @ 0x6a1430
BIO * FUN_006a1430(SSL *param_1,int param_2,BIO *param_3,SSL *param_4)

{
  BIO *pBVar1;
  time_t tVar2;
  int iVar3;
  int extraout_r0;
  SSL *pSVar4;
  uint uVar5;
  _func_3291 *p_Var6;
  
  p_Var6 = param_1->handshake_func;
  pSVar4 = *(SSL **)p_Var6;
  uVar5 = 1 - (int)pSVar4;
  if ((SSL *)0x1 < pSVar4) {
    uVar5 = 0;
  }
  if (param_2 == 0x6d) {
    uVar5 = 0;
  }
  else {
    uVar5 = uVar5 & 1;
  }
  if (uVar5 != 0) {
    return (BIO *)0x0;
  }
  if (param_2 == 0xd) {
    pBVar1 = pSVar4->wbio;
  }
  else {
    if (param_2 < 0xe) {
      if (param_2 == 8) {
        return param_1->wbio;
      }
      if (param_2 < 9) {
        if (param_2 == 3) {
          return (BIO *)0x0;
        }
        if (param_2 < 4) {
          if (param_2 == 1) {
            SSL_shutdown(pSVar4);
            if (pSVar4->handshake_func == (_func_3291 *)pSVar4->method->ssl_connect) {
              SSL_set_connect_state(pSVar4);
            }
            else if (pSVar4->handshake_func == (_func_3291 *)pSVar4->method->ssl_accept) {
              SSL_set_accept_state(pSVar4);
            }
            SSL_clear(pSVar4);
            pBVar1 = (BIO *)param_1->server;
            if ((pBVar1 == (bio_st *)0x0) && (pBVar1 = pSVar4->rbio, pBVar1 == (bio_st *)0x0)) {
              return (BIO *)0x1;
            }
            param_2 = 1;
            goto LAB_006a16e8;
          }
        }
        else {
          if (param_2 == 6) {
            pBVar1 = (BIO *)param_1->server;
            if (pBVar1 == (BIO *)0x0) {
              return (BIO *)0x1;
            }
            if (pBVar1 == pSVar4->rbio) {
              return (BIO *)0x1;
            }
            SSL_set_bio(pSVar4,pBVar1,pBVar1);
            CRYPTO_add_lock(&((bio_st *)param_1->server)->references,1,0x15,
                            "jni/../../openssl-android/ssl/bio_ssl.c",0x199);
            return (BIO *)0x1;
          }
          if (param_2 == 7) {
            if (param_1 != param_4) {
              return (BIO *)0x1;
            }
            if (pSVar4->rbio != pSVar4->wbio) {
              BIO_free_all(pSVar4->wbio);
            }
            if ((bio_st *)param_1->server != (bio_st *)0x0) {
              CRYPTO_add_lock(&((bio_st *)param_1->server)->references,-1,0x15,
                              "jni/../../openssl-android/ssl/bio_ssl.c",0x1a6);
            }
            pSVar4->wbio = (BIO *)0x0;
            pSVar4->rbio = (BIO *)0x0;
            return (BIO *)0x1;
          }
        }
      }
      else {
        if (param_2 == 10) {
          pBVar1 = (BIO *)SSL_pending(pSVar4);
          if (pBVar1 != (BIO *)0x0) {
            return pBVar1;
          }
          pBVar1 = pSVar4->rbio;
          param_3 = (BIO *)0x0;
          param_4 = (SSL *)0x0;
          goto LAB_006a16e8;
        }
        if (param_2 < 10) {
          param_1->wbio = param_3;
          return (BIO *)0x1;
        }
        if (param_2 == 0xb) {
          BIO_clear_flags((BIO *)param_1,0xf);
          pBVar1 = (BIO *)BIO_ctrl(pSVar4->wbio,0xb,(long)param_3,param_4);
          BIO_copy_next_retry((BIO *)param_1);
          return pBVar1;
        }
        if (param_2 == 0xc) {
          if (*(SSL **)param_4->handshake_func != (SSL *)0x0) {
            SSL_free(*(SSL **)param_4->handshake_func);
          }
          p_Var6 = param_4->handshake_func;
          pSVar4 = SSL_dup(pSVar4);
          *(SSL **)p_Var6 = pSVar4;
          *(undefined4 *)(param_4->handshake_func + 8) =
               *(undefined4 *)(param_1->handshake_func + 8);
          *(undefined4 *)(param_4->handshake_func + 0xc) =
               *(undefined4 *)(param_1->handshake_func + 0xc);
          *(undefined4 *)(param_4->handshake_func + 0x10) =
               *(undefined4 *)(param_1->handshake_func + 0x10);
          *(undefined4 *)(param_4->handshake_func + 0x14) =
               *(undefined4 *)(param_1->handshake_func + 0x14);
          return (BIO *)(uint)(*(int *)param_4->handshake_func != 0);
        }
      }
    }
    else {
      if (param_2 == 0x6d) {
        if (pSVar4 != (SSL *)0x0) {
          FUN_006a11de();
          iVar3 = FUN_006a13ec(param_1);
          if (iVar3 == 0) {
            return (BIO *)0x0;
          }
        }
        param_1->wbio = param_3;
        *(SSL **)param_1->handshake_func = param_4;
        pBVar1 = SSL_get_rbio(param_4);
        if (pBVar1 != (BIO *)0x0) {
          if ((BIO *)param_1->server != (BIO *)0x0) {
            BIO_push(pBVar1,(BIO *)param_1->server);
          }
          param_1->server = (int)pBVar1;
          CRYPTO_add_lock(&pBVar1->references,1,0x15,"jni/../../openssl-android/ssl/bio_ssl.c",0x175
                         );
        }
        param_1->rbio = (BIO *)0x1;
        return (BIO *)0x1;
      }
      if (param_2 < 0x6e) {
        if (param_2 == 0xf) {
          SSL_get_info_callback(pSVar4,0xf,(int)param_3);
          param_4->version = extraout_r0;
          return (BIO *)0x1;
        }
        if (param_2 < 0xf) {
          return (BIO *)0x0;
        }
        if (param_2 == 0x65) {
          BIO_clear_flags((BIO *)param_1,0xf);
          param_1->rwstate = 0;
          pBVar1 = (BIO *)SSL_do_handshake(pSVar4);
          iVar3 = SSL_get_error(pSVar4,(int)pBVar1);
          if (iVar3 == 3) {
            iVar3 = 10;
          }
          else {
            if (iVar3 == 7) {
              BIO_set_flags((BIO *)param_1,0xc);
              param_1->rwstate = ((bio_st *)param_1->server)->retry_reason;
              return pBVar1;
            }
            if (iVar3 != 2) {
              return pBVar1;
            }
            iVar3 = 9;
          }
          BIO_set_flags((BIO *)param_1,iVar3);
          return pBVar1;
        }
      }
      else {
        if (param_2 == 0x7d) {
          pBVar1 = *(BIO **)(p_Var6 + 8);
          if (0x1ff < (int)param_3) {
            *(BIO **)(p_Var6 + 8) = param_3;
            return pBVar1;
          }
          return pBVar1;
        }
        if (param_2 < 0x7e) {
          if (param_2 == 0x6e) {
            if (param_4 != (SSL *)0x0) {
              param_4->version = (int)pSVar4;
              return (BIO *)0x1;
            }
            return (BIO *)0x0;
          }
          if (param_2 == 0x77) {
            if (param_3 != (BIO *)0x0) {
              SSL_set_connect_state(pSVar4);
              return (BIO *)0x1;
            }
            SSL_set_accept_state(pSVar4);
            return (BIO *)0x1;
          }
        }
        else {
          if (param_2 == 0x7e) {
            return *(BIO **)(p_Var6 + 4);
          }
          if (param_2 == 0x7f) {
            pBVar1 = *(BIO **)(p_Var6 + 0x10);
            if ((int)param_3 < 0x3c) {
              param_3 = (BIO *)&DAT_00000005;
            }
            *(BIO **)(p_Var6 + 0x10) = param_3;
            tVar2 = time((time_t *)0x0);
            *(time_t *)(p_Var6 + 0x14) = tVar2;
            return pBVar1;
          }
        }
      }
    }
    pBVar1 = pSVar4->rbio;
  }
LAB_006a16e8:
  pBVar1 = (BIO *)BIO_ctrl(pBVar1,param_2,(long)param_3,param_4);
  return pBVar1;
}

// ---- FUN_006a182c  @ 0x6a182c
void FUN_006a182c(void *param_1)

{
  if (*(int *)((int)param_1 + 0x14) != 0) {
    EVP_CIPHER_CTX_free(*(EVP_CIPHER_CTX **)((int)param_1 + 0x18));
    EVP_MD_CTX_destroy(*(EVP_MD_CTX **)((int)param_1 + 0x1c));
  }
  if (*(void **)((int)param_1 + 0x2c) != (void *)0x0) {
    CRYPTO_free(*(void **)((int)param_1 + 0x2c));
  }
  if (*(void **)((int)param_1 + 0x30) != (void *)0x0) {
    CRYPTO_free(*(void **)((int)param_1 + 0x30));
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_006a185c  @ 0x6a185c
void * FUN_006a185c(int param_1,int param_2)

{
  void *ptr;
  void *ptr_00;
  void *__s;
  uint __n;
  
  ptr = CRYPTO_malloc(0x34,"jni/../../openssl-android/ssl/d1_both.c",0xb3);
  if (ptr != (void *)0x0) {
    if (param_1 == 0) {
      ptr_00 = (void *)0x0;
    }
    else {
      ptr_00 = CRYPTO_malloc(param_1,"jni/../../openssl-android/ssl/d1_both.c",0xb9);
      if (ptr_00 == (void *)0x0) {
        CRYPTO_free(ptr);
        return (void *)0x0;
      }
    }
    *(void **)((int)ptr + 0x2c) = ptr_00;
    __s = (void *)0x0;
    if (param_2 != 0) {
      __n = param_1 + 7U >> 3;
      __s = CRYPTO_malloc(__n,"jni/../../openssl-android/ssl/d1_both.c",199);
      if (__s == (void *)0x0) {
        if (ptr_00 != (void *)0x0) {
          CRYPTO_free(ptr_00);
        }
        CRYPTO_free(ptr);
        return (void *)0x0;
      }
      memset(__s,0,__n);
    }
    *(void **)((int)ptr + 0x30) = __s;
  }
  return ptr;
}

// ---- FUN_006a18d0  @ 0x6a18d0
void FUN_006a18d0(int param_1,void *param_2,undefined4 *param_3)

{
  pitem *ptr;
  void *__dest;
  void *ptr_00;
  pitem *item;
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  bool bVar7;
  pitem *local_134;
  int local_130;
  undefined1 auStack_12c [256];
  int local_2c;
  
  uVar6 = *(uint *)((int)param_2 + 0x10);
  local_2c = __stack_chk_guard;
  uVar4 = *(int *)((int)param_2 + 0xc) + uVar6;
  if (*(uint *)((int)param_2 + 4) < uVar4) {
LAB_006a1ae6:
    uVar4 = 0xffffffff;
  }
  else {
    uVar2 = 0x454c;
    if (0x454b < (int)*(uint *)(param_1 + 0x110)) {
      uVar2 = *(uint *)(param_1 + 0x110);
    }
    if (uVar2 < uVar4) goto LAB_006a1ae6;
    local_134 = (pitem *)0x0;
    local_130 = (uint)CONCAT11((char)*(undefined2 *)((int)param_2 + 8),
                               (char)((ushort)*(undefined2 *)((int)param_2 + 8) >> 8)) << 0x10;
    ptr = pqueue_find(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x244),(uchar *)&local_134);
    if (ptr == (pitem *)0x0) {
      __dest = (void *)FUN_006a185c(*(undefined4 *)((int)param_2 + 4),1);
      if (__dest == (void *)0x0) goto LAB_006a1ae6;
      memcpy(__dest,param_2,0x2c);
      *(undefined4 *)((int)__dest + 0xc) = 0;
      *(undefined4 *)((int)__dest + 0x10) = *(undefined4 *)((int)__dest + 4);
    }
    else {
      __dest = ptr->data;
      if (*(int *)((int)__dest + 4) != *(int *)((int)param_2 + 4)) goto LAB_006a1ae6;
    }
    if (*(int *)((int)__dest + 0x30) == 0) {
      for (; uVar6 != 0; uVar6 = uVar6 - uVar4) {
        uVar4 = uVar6;
        if (0xff < uVar6) {
          uVar4 = 0x100;
        }
        uVar4 = (**(code **)(*(int *)(param_1 + 8) + 0x34))(param_1,0x16,auStack_12c,uVar4,0);
        if ((int)uVar4 < 1) goto LAB_006a1aaa;
      }
LAB_006a1aca:
      uVar4 = 0xfffffffd;
      goto LAB_006a1ace;
    }
    uVar4 = (**(code **)(*(int *)(param_1 + 8) + 0x34))
                      (param_1,0x16,*(int *)((int)__dest + 0x2c) + *(int *)((int)param_2 + 0xc),
                       uVar6,0);
    if (uVar4 == uVar6 && 0 < (int)uVar4) {
      uVar4 = *(uint *)((int)param_2 + 0xc);
      if ((int)uVar6 < 9) {
        for (; (int)uVar4 < (int)(*(int *)((int)param_2 + 0xc) + uVar6); uVar4 = uVar4 + 1) {
          *(byte *)(*(int *)((int)__dest + 0x30) + ((int)uVar4 >> 3)) =
               *(byte *)(*(int *)((int)__dest + 0x30) + ((int)uVar4 >> 3)) |
               (byte)(1 << (uVar4 & 7));
        }
      }
      else {
        *(byte *)(*(int *)((int)__dest + 0x30) + ((int)uVar4 >> 3)) =
             (&DAT_00846714)[uVar4 & 7] |
             *(byte *)(*(int *)((int)__dest + 0x30) + ((int)uVar4 >> 3));
        iVar5 = *(int *)((int)param_2 + 0xc) >> 3;
        while( true ) {
          iVar5 = iVar5 + 1;
          iVar1 = *(int *)((int)__dest + 0x30);
          uVar4 = *(int *)((int)param_2 + 0xc) + uVar6;
          iVar3 = (int)(uVar4 - 1) >> 3;
          if (iVar3 <= iVar5) break;
          *(undefined1 *)(iVar1 + iVar5) = 0xff;
        }
        *(byte *)(iVar1 + iVar3) = (&DAT_0084671c)[uVar4 & 7] | *(byte *)(iVar1 + iVar3);
      }
      if (*(int *)((int)param_2 + 4) < 1) {
        OpenSSLDie("jni/../../openssl-android/ssl/d1_both.c",0x29d,"((long)msg_hdr->msg_len) > 0");
      }
      ptr_00 = *(void **)((int)__dest + 0x30);
      iVar5 = (int)(*(uint *)((int)param_2 + 4) - 1) >> 3;
      bVar7 = *(char *)((int)ptr_00 + iVar5) == (&DAT_0084671c)[*(uint *)((int)param_2 + 4) & 7];
      while (bVar7) {
        iVar5 = iVar5 + -1;
        if (iVar5 < 0) {
          CRYPTO_free(ptr_00);
          *(undefined4 *)((int)__dest + 0x30) = 0;
          break;
        }
        bVar7 = *(char *)((int)ptr_00 + iVar5) == -1;
      }
      if (ptr == (pitem *)0x0) {
        local_130 = (uint)CONCAT11((char)*(undefined2 *)((int)param_2 + 8),
                                   (char)((ushort)*(undefined2 *)((int)param_2 + 8) >> 8)) << 0x10;
        local_134 = ptr;
        item = pitem_new((uchar *)&local_134,__dest);
        uVar4 = 0xffffffff;
        ptr = (pitem *)0x0;
        if (item == (pitem *)0x0) goto LAB_006a1aaa;
        pqueue_insert(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x244),item);
      }
      goto LAB_006a1aca;
    }
LAB_006a1aaa:
    FUN_006a182c(__dest);
    if (ptr != (pitem *)0x0) {
      CRYPTO_free(ptr);
    }
  }
  *param_3 = 0;
LAB_006a1ace:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

// ---- FUN_006a1b10  @ 0x6a1b10
undefined8 FUN_006a1b10(int param_1,byte *param_2,uint param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  uVar3 = *(uint *)(param_2 + 4);
  if (uVar3 < (uint)(*(int *)(param_2 + 0x10) + *(int *)(param_2 + 0xc))) {
    param_1 = 0x1f1;
  }
  else if (param_3 < (uint)(*(int *)(param_2 + 0x10) + *(int *)(param_2 + 0xc))) {
    param_1 = 0x1f7;
  }
  else {
    if (*(int *)(*(int *)(param_1 + 0x5c) + 0x294) == 0) {
      iVar4 = param_1;
      iVar2 = BUF_MEM_grow_clean(*(BUF_MEM **)(param_1 + 0x3c),uVar3 + 0xc);
      if (iVar2 == 0) {
        param_1 = 0x201;
        ERR_put_error(0x14,0x120,7,"jni/../../openssl-android/ssl/d1_both.c",0x201);
        uVar1 = 0x50;
      }
      else {
        *(uint *)(*(int *)(param_1 + 0x58) + 0x33c) = uVar3;
        *(uint *)(*(int *)(param_1 + 0x5c) + 0x28c) = uVar3;
        *(uint *)(*(int *)(param_1 + 0x58) + 0x340) = (uint)*param_2;
        *(byte *)(*(int *)(param_1 + 0x5c) + 0x288) = *param_2;
        *(undefined2 *)(*(int *)(param_1 + 0x5c) + 0x290) = *(undefined2 *)(param_2 + 8);
        uVar1 = 0;
        param_1 = iVar4;
      }
      goto LAB_006a1bb4;
    }
    uVar1 = 0;
    if (uVar3 == *(uint *)(*(int *)(param_1 + 0x5c) + 0x28c)) goto LAB_006a1bb4;
    param_1 = 0x20f;
  }
  ERR_put_error(0x14,0x120,0x98,"jni/../../openssl-android/ssl/d1_both.c",param_1);
  uVar1 = 0x2f;
LAB_006a1bb4:
  return CONCAT44(param_1,uVar1);
}

// ---- FUN_006a1bc8  @ 0x6a1bc8
bool FUN_006a1bc8(BUF_MEM *param_1,int *param_2,X509 *param_3,uchar *param_4)

{
  int iVar1;
  int iVar2;
  char *pcVar3;
  int iVar4;
  uchar *local_1c;
  
  local_1c = param_4;
  iVar1 = i2d_X509(param_3,(uchar **)0x0);
  iVar2 = BUF_MEM_grow_clean(param_1,*param_2 + 3 + iVar1);
  if (iVar2 != 0) {
    pcVar3 = param_1->data;
    iVar4 = *param_2;
    pcVar3[iVar4] = (char)((uint)iVar1 >> 0x10);
    pcVar3[iVar4 + 1] = (char)((uint)iVar1 >> 8);
    pcVar3[iVar4 + 2] = (char)iVar1;
    local_1c = (uchar *)(pcVar3 + iVar4 + 3);
    i2d_X509(param_3,&local_1c);
    *param_2 = *param_2 + 3 + iVar1;
  }
  else {
    ERR_put_error(0x14,0x127,7,"jni/../../openssl-android/ssl/d1_both.c",0x3fb);
  }
  return iVar2 != 0;
}

// ---- FUN_006a2684  @ 0x6a2684
void FUN_006a2684(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int *param_4)

{
  pitem *ppVar1;
  int iVar2;
  void *pvVar3;
  uint uVar4;
  uint uVar5;
  char local_16c [4];
  uint local_168;
  ushort local_164;
  int local_160;
  uint local_15c;
  uchar local_140 [4];
  int local_13c;
  char local_138;
  char local_137;
  char local_136;
  char local_135;
  undefined1 auStack_12c [256];
  int local_2c;
  
  local_2c = __stack_chk_guard;
  do {
    *param_4 = 0;
    ppVar1 = pqueue_peek(*(pqueue *)(param_1[0x17] + 0x244));
    if (((ppVar1 != (pitem *)0x0) && (pvVar3 = ppVar1->data, *(int *)((int)pvVar3 + 0x30) == 0)) &&
       (*(short *)(param_1[0x17] + 0x228) == *(short *)((int)pvVar3 + 8))) {
      uVar5 = *(uint *)((int)pvVar3 + 0x10);
      pqueue_pop(*(pqueue *)(param_1[0x17] + 0x244));
      iVar2 = FUN_006a1b10(param_1,pvVar3,param_3);
      if (iVar2 == 0) {
        memcpy((void *)(*(int *)(param_1[0xf] + 4) + 0xc + *(int *)((int)pvVar3 + 0xc)),
               *(void **)((int)pvVar3 + 0x2c),*(size_t *)((int)pvVar3 + 0x10));
      }
      FUN_006a182c(pvVar3);
      pitem_free(ppVar1);
      if (iVar2 == 0) {
        *param_4 = 1;
        if (uVar5 == 0) goto LAB_006a272c;
      }
      else {
        ssl3_send_alert(param_1,2,iVar2);
        uVar5 = 0xffffffff;
        param_1[0x11] = 0;
        *param_4 = 0;
      }
LAB_006a273c:
      if (*param_4 != 0) {
LAB_006a29bc:
        param_1[0x11] = uVar5;
      }
      goto LAB_006a29d4;
    }
LAB_006a272c:
    if (*param_4 != 0) {
      uVar5 = 0;
      goto LAB_006a273c;
    }
    uVar5 = (**(code **)(param_1[2] + 0x34))(param_1,0x16,&local_138,0xc,0);
    if ((int)uVar5 < 1) {
LAB_006a2992:
      param_1[6] = 3;
      *param_4 = 0;
      goto LAB_006a29d4;
    }
    if (uVar5 != 0xc) {
      iVar2 = 0x331;
      goto LAB_006a294a;
    }
    dtls1_get_message_header(&local_138,local_16c);
    iVar2 = param_1[0x17];
    if ((*(ushort *)(iVar2 + 0x228) != local_164) &&
       ((*(int *)(iVar2 + 0x254) == 0 || (local_164 != 1)))) {
      if (local_15c + local_160 <= local_168) {
        local_140[0] = '\0';
        local_140[1] = '\0';
        local_140[2] = '\0';
        local_140[3] = '\0';
        local_13c = (uint)CONCAT11((char)local_164,(char)(local_164 >> 8)) << 0x10;
        ppVar1 = pqueue_find(*(pqueue *)(iVar2 + 0x244),local_140);
        if ((ppVar1 != (pitem *)0x0) && (local_15c < local_168)) {
          ppVar1 = (pitem *)0x0;
        }
        uVar5 = (uint)*(ushort *)(param_1[0x17] + 0x228);
        uVar4 = local_15c;
        if (((local_164 <= uVar5) || (ppVar1 != (pitem *)0x0 || uVar5 + 10 < (uint)local_164)) ||
           ((uVar5 == 0 && (local_16c[0] == '\x14')))) break;
        if ((local_15c != 0) && (local_15c < local_168)) goto LAB_006a28f4;
        pvVar3 = (void *)FUN_006a185c(local_15c,0);
        if (pvVar3 != (void *)0x0) {
          memcpy(pvVar3,local_16c,0x2c);
          uVar5 = 0xffffffff;
          if ((local_15c == 0) ||
             (uVar5 = (**(code **)(param_1[2] + 0x34))
                                (param_1,0x16,*(undefined4 *)((int)pvVar3 + 0x2c),local_15c,0),
             uVar5 == local_15c && 0 < (int)uVar5)) {
            local_140[0] = '\0';
            local_140[1] = '\0';
            local_140[2] = '\0';
            local_140[3] = '\0';
            local_13c = (uint)CONCAT11((char)local_164,(char)(local_164 >> 8)) << 0x10;
            ppVar1 = pitem_new(local_140,pvVar3);
            if (ppVar1 != (pitem *)0x0) {
              pqueue_insert(*(pqueue *)(param_1[0x17] + 0x244),ppVar1);
              goto LAB_006a28b2;
            }
          }
          FUN_006a182c(pvVar3);
          goto LAB_006a28d0;
        }
      }
      uVar5 = 0xffffffff;
      goto LAB_006a28d0;
    }
    if (local_15c < local_168 && local_15c != 0) {
LAB_006a28f4:
      uVar5 = FUN_006a18d0(param_1,local_16c,param_4);
      goto LAB_006a29d4;
    }
    if (((param_1[9] != 0) || (*(int *)(iVar2 + 0x294) != 0)) || (local_138 != '\0')) {
      iVar2 = FUN_006a1b10(param_1,local_16c,param_3);
      if (iVar2 == 0) {
        param_1[0xd] = param_2;
        if (local_15c == 0) {
          uVar5 = 0;
        }
        else {
          uVar5 = (**(code **)(param_1[2] + 0x34))
                            (param_1,0x16,*(int *)(param_1[0xf] + 4) + 0xc + local_160,local_15c,0);
          if ((int)uVar5 < 1) goto LAB_006a2992;
        }
        if (uVar5 == local_15c) {
          *param_4 = 1;
          goto LAB_006a29bc;
        }
        iVar2 = 0x2f;
        ERR_put_error(0x14,0xfd,0x2f,"jni/../../openssl-android/ssl/d1_both.c",0x37d);
      }
      goto LAB_006a29c0;
    }
    if (((local_137 != '\0') || (local_136 != '\0')) || (local_135 != '\0')) goto LAB_006a2940;
    if ((code *)param_1[0x19] != (code *)0x0) {
      (*(code *)param_1[0x19])(0,*param_1,0x16,&local_138,0xc,param_1,param_1[0x1a]);
    }
    param_1[0x11] = 0;
  } while( true );
LAB_006a282c:
  if (uVar4 == 0) goto LAB_006a28b2;
  uVar5 = uVar4;
  if (0xff < uVar4) {
    uVar5 = 0x100;
  }
  uVar5 = (**(code **)(param_1[2] + 0x34))(param_1,0x16,auStack_12c,uVar5,0);
  if ((int)uVar5 < 1) {
    if (ppVar1 != (pitem *)0x0) {
      CRYPTO_free(ppVar1);
    }
LAB_006a28d0:
    *param_4 = 0;
    goto LAB_006a29d4;
  }
  uVar4 = uVar4 - uVar5;
  goto LAB_006a282c;
LAB_006a28b2:
  uVar5 = 0xfffffffd;
  goto LAB_006a29d4;
LAB_006a2940:
  iVar2 = 0x35c;
LAB_006a294a:
  ERR_put_error(0x14,0xfd,0xf4,"jni/../../openssl-android/ssl/d1_both.c",iVar2);
  iVar2 = 10;
LAB_006a29c0:
  uVar5 = 0xffffffff;
  ssl3_send_alert(param_1,2,iVar2);
  param_1[0x11] = 0;
  *param_4 = 0;
LAB_006a29d4:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

// ---- FUN_006a2d14  @ 0x6a2d14
void FUN_006a2d14(int param_1)

{
  pitem *ppVar1;
  void *pvVar2;
  
  while (ppVar1 = pqueue_pop(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x238)), ppVar1 != (pitem *)0x0)
  {
    pvVar2 = *(void **)((int)ppVar1->data + 8);
    if (pvVar2 != (void *)0x0) {
      CRYPTO_free(pvVar2);
    }
    CRYPTO_free(ppVar1->data);
    pitem_free(ppVar1);
  }
  while (ppVar1 = pqueue_pop(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x240)), ppVar1 != (pitem *)0x0)
  {
    pvVar2 = *(void **)((int)ppVar1->data + 8);
    if (pvVar2 != (void *)0x0) {
      CRYPTO_free(pvVar2);
    }
    CRYPTO_free(ppVar1->data);
    pitem_free(ppVar1);
  }
  while (ppVar1 = pqueue_pop(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x244)), ppVar1 != (pitem *)0x0)
  {
    pvVar2 = ppVar1->data;
    CRYPTO_free(*(void **)((int)pvVar2 + 0x2c));
    CRYPTO_free(pvVar2);
    pitem_free(ppVar1);
  }
  while (ppVar1 = pqueue_pop(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x248)), ppVar1 != (pitem *)0x0)
  {
    pvVar2 = ppVar1->data;
    CRYPTO_free(*(void **)((int)pvVar2 + 0x2c));
    CRYPTO_free(pvVar2);
    pitem_free(ppVar1);
  }
  while (ppVar1 = pqueue_pop(*(pqueue *)(*(int *)(param_1 + 0x5c) + 0x250)), ppVar1 != (pitem *)0x0)
  {
    pvVar2 = *(void **)((int)ppVar1->data + 8);
    if (pvVar2 != (void *)0x0) {
      CRYPTO_free(pvVar2);
    }
    CRYPTO_free(ppVar1->data);
    pitem_free(ppVar1);
  }
  return;
}

// ---- FUN_006a3202  @ 0x6a3202
uint FUN_006a3202(int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  bool bVar6;
  
  iVar4 = 6;
  uVar5 = (uint)*(byte *)(param_1 + 7) - (uint)*(byte *)(param_2 + 7);
  iVar1 = (int)uVar5 >> 8;
  uVar3 = 0;
  if ((uVar5 & 0x80) == 0) {
    do {
      uVar2 = iVar1 + ((uint)*(byte *)(param_1 + iVar4) - (uint)*(byte *)(param_2 + iVar4));
      uVar3 = uVar3 | uVar2;
      iVar1 = (int)uVar2 >> 8;
      bVar6 = iVar4 != 0;
      iVar4 = iVar4 + -1;
    } while (bVar6);
  }
  else {
    uVar3 = 0;
    do {
      uVar2 = iVar1 + ((uint)*(byte *)(param_1 + iVar4) - (uint)*(byte *)(param_2 + iVar4));
      uVar3 = uVar3 | ~uVar2;
      iVar1 = (int)uVar2 >> 8;
      bVar6 = iVar4 != 0;
      iVar4 = iVar4 + -1;
    } while (bVar6);
  }
  if ((uVar3 & 0xff) == 0) {
    uVar3 = iVar1 * 0x100 + (uVar5 & 0xff);
  }
  else {
    uVar3 = iVar1 * 0x100 | 0x80;
  }
  return uVar3;
}

// ---- FUN_006a3250  @ 0x6a3250
int FUN_006a3250(undefined4 *param_1,undefined4 param_2,void *param_3,size_t param_4)

{
  EVP_MD *pEVar1;
  ulong uVar2;
  int num;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  uchar *buf;
  int local_2c;
  
  if (*(int *)(param_1[0x16] + 0x108) == 0) {
    if ((*(int *)(param_1[0x16] + 0x18c) != 0) &&
       (iVar4 = (**(code **)(param_1[2] + 0x3c))(), iVar4 < 1)) {
      return iVar4;
    }
    if (param_4 == 0) {
      return 0;
    }
    iVar4 = param_1[0x16];
    if (((param_1[0x30] == 0) || (param_1[0x23] == 0)) ||
       (pEVar1 = EVP_MD_CTX_md((EVP_MD_CTX *)param_1[0x24]), pEVar1 == (EVP_MD *)0x0)) {
      local_2c = 0;
    }
    else {
      pEVar1 = EVP_MD_CTX_md((EVP_MD_CTX *)param_1[0x24]);
      local_2c = EVP_MD_size(pEVar1);
      if (local_2c < 0) {
        return -1;
      }
    }
    puVar5 = *(undefined1 **)(iVar4 + 0xfc);
    buf = puVar5 + 0xd;
    *puVar5 = (char)param_2;
    *(undefined4 *)(iVar4 + 0x130) = param_2;
    puVar5[1] = (char)((uint)*param_1 >> 8);
    puVar5[2] = (char)*param_1;
    num = 0;
    if ((undefined4 *)param_1[0x23] != (undefined4 *)0x0) {
      uVar2 = EVP_CIPHER_flags(*(EVP_CIPHER **)param_1[0x23]);
      num = 0;
      if ((uVar2 & 2) != 0) {
        num = EVP_CIPHER_block_size(*(EVP_CIPHER **)param_1[0x23]);
      }
    }
    *(size_t *)(iVar4 + 0x134) = param_4;
    *(uchar **)(iVar4 + 0x13c) = buf + num;
    *(void **)(iVar4 + 0x140) = param_3;
    if (param_1[0x25] == 0) {
      memcpy(buf + num,param_3,param_4);
      *(undefined4 *)(iVar4 + 0x140) = *(undefined4 *)(iVar4 + 0x13c);
    }
    else {
      iVar3 = ssl3_do_compress(param_1);
      if (iVar3 == 0) {
        ERR_put_error(0x14,0xf5,0x8d,"jni/../../openssl-android/ssl/d1_pkt.c",0x617);
        return -1;
      }
    }
    if (local_2c != 0) {
      iVar3 = (**(code **)(*(int *)(param_1[2] + 100) + 4))
                        (param_1,buf + *(int *)(iVar4 + 0x134) + num,1);
      if (iVar3 < 0) {
        return -1;
      }
      *(int *)(iVar4 + 0x134) = *(int *)(iVar4 + 0x134) + local_2c;
    }
    *(uchar **)(iVar4 + 0x140) = buf;
    *(uchar **)(iVar4 + 0x13c) = buf;
    if (num != 0) {
      RAND_pseudo_bytes(buf,num);
      *(int *)(iVar4 + 0x134) = *(int *)(iVar4 + 0x134) + num;
    }
    (*(code *)**(undefined4 **)(param_1[2] + 100))(param_1,1);
    puVar5[3] = (char)((ushort)*(undefined2 *)(param_1[0x17] + 0x20a) >> 8);
    puVar5[4] = (char)*(undefined2 *)(param_1[0x17] + 0x20a);
    memcpy(puVar5 + 5,(void *)(param_1[0x16] + 0x56),6);
    puVar5[0xb] = (char)((uint)*(undefined4 *)(iVar4 + 0x134) >> 8);
    puVar5[0xc] = (char)*(undefined4 *)(iVar4 + 0x134);
    *(undefined4 *)(iVar4 + 0x130) = param_2;
    *(int *)(iVar4 + 0x134) = *(int *)(iVar4 + 0x134) + 0xd;
    ssl3_record_sequence_update(param_1[0x16] + 0x54);
    *(undefined4 *)(iVar4 + 0x108) = *(undefined4 *)(iVar4 + 0x134);
    *(undefined4 *)(iVar4 + 0x104) = 0;
    *(size_t *)(param_1[0x16] + 0x168) = param_4;
    *(void **)(param_1[0x16] + 0x174) = param_3;
    *(undefined4 *)(param_1[0x16] + 0x16c) = param_2;
    *(size_t *)(param_1[0x16] + 0x170) = param_4;
  }
  else {
    OpenSSLDie("jni/../../openssl-android/ssl/d1_pkt.c",0x5d0,"0");
  }
  iVar4 = ssl3_write_pending(param_1,param_2,param_3,param_4);
  return iVar4;
}

// ---- FUN_006a3434  @ 0x6a3434
undefined4 FUN_006a3434(int param_1,int param_2)

{
  void *ptr;
  int *piVar1;
  
  piVar1 = *(int **)(param_2 + 8);
  ptr = *(void **)(*(int *)(param_1 + 0x58) + 0xec);
  if (ptr != (void *)0x0) {
    CRYPTO_free(ptr);
  }
  *(int *)(param_1 + 0x4c) = *piVar1;
  *(int *)(param_1 + 0x50) = piVar1[1];
  memcpy((void *)(*(int *)(param_1 + 0x58) + 0xec),piVar1 + 2,0x10);
  memcpy((void *)(*(int *)(param_1 + 0x58) + 0x10c),piVar1 + 6,0x24);
  memcpy((void *)(*(int *)(param_1 + 0x58) + 10),(void *)(*piVar1 + 5),6);
  return 1;
}

// ---- FUN_006a3480  @ 0x6a3480
void FUN_006a3480(int param_1)

{
  EVP_MD *pEVar1;
  uint uVar2;
  ulong uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  void *__src;
  int iVar7;
  int iVar8;
  uint uVar9;
  undefined1 *b;
  undefined1 auStack_a4 [64];
  undefined1 auStack_64 [64];
  int local_24;
  
  iVar7 = *(int *)(param_1 + 0x58);
  iVar8 = *(int *)(param_1 + 0xc0);
  local_24 = __stack_chk_guard;
  iVar5 = *(int *)(param_1 + 0x4c) + 0xd;
  *(int *)(iVar7 + 0x11c) = iVar5;
  if (*(uint *)(iVar7 + 0x110) < 0x4541) {
    *(int *)(iVar7 + 0x118) = iVar5;
    iVar5 = (*(code *)**(undefined4 **)(*(int *)(param_1 + 8) + 100))(param_1,0);
    if (iVar5 == 0) {
      *(undefined4 *)(iVar7 + 0x110) = 0;
      *(undefined4 *)(param_1 + 0x50) = 0;
      uVar4 = 0;
      goto LAB_006a36be;
    }
    if (((iVar8 == 0) || (*(int *)(param_1 + 0x80) == 0)) ||
       (pEVar1 = EVP_MD_CTX_md(*(EVP_MD_CTX **)(param_1 + 0x84)), pEVar1 == (EVP_MD *)0x0)) {
LAB_006a35da:
      if (-1 < iVar5) {
        if (*(int *)(param_1 + 0x88) != 0) {
          if (0x4400 < *(uint *)(iVar7 + 0x110)) {
            iVar7 = 0x1fa;
            iVar5 = 0x8c;
            goto LAB_006a360a;
          }
          iVar5 = ssl3_do_uncompress(param_1);
          if (iVar5 == 0) {
            ERR_put_error(0x14,0x101,0x6b,"jni/../../openssl-android/ssl/d1_pkt.c",0x200);
            uVar4 = 0x1e;
            goto LAB_006a36b0;
          }
        }
        if (*(uint *)(iVar7 + 0x110) < 0x4001) {
          *(undefined4 *)(iVar7 + 0x114) = 0;
          *(undefined4 *)(param_1 + 0x50) = 0;
          uVar4 = 1;
          iVar5 = *(int *)(param_1 + 0x5c);
          __src = (void *)(*(int *)(param_1 + 0x58) + 8);
          uVar2 = FUN_006a3202(__src,(void *)(iVar5 + 0x210));
          if ((int)uVar2 < 1) {
            if (-uVar2 < 0x1f || uVar2 == 0xffffffe1) {
              *(uint *)(iVar5 + 0x20c) = 1 << (-uVar2 & 0xff) | *(uint *)(iVar5 + 0x20c);
            }
          }
          else {
            if (uVar2 < 0x20) {
              *(uint *)(iVar5 + 0x20c) = *(int *)(iVar5 + 0x20c) << (uVar2 & 0xff) | 1;
            }
            else {
              *(undefined4 *)(iVar5 + 0x20c) = 1;
            }
            memcpy((void *)(iVar5 + 0x210),__src,8);
            uVar4 = 1;
          }
          goto LAB_006a36be;
        }
        iVar7 = 0x208;
        iVar5 = 0x92;
        goto LAB_006a360a;
      }
    }
    else {
      pEVar1 = EVP_MD_CTX_md(*(EVP_MD_CTX **)(param_1 + 0x84));
      uVar2 = EVP_MD_size(pEVar1);
      if (0x40 < uVar2) {
        OpenSSLDie("jni/../../openssl-android/ssl/d1_pkt.c",0x1bd,"mac_size <= EVP_MAX_MD_SIZE");
      }
      uVar9 = *(int *)(iVar7 + 0x110) + (*(uint *)(iVar7 + 0x10c) >> 8);
      if ((uVar9 < uVar2) ||
         ((uVar3 = EVP_CIPHER_CTX_flags(*(EVP_CIPHER_CTX **)(param_1 + 0x80)),
          (uVar3 & 0xf0007) == 2 && (uVar9 < uVar2 + 1)))) {
        ERR_put_error(0x14,0x101,0xa0,"jni/../../openssl-android/ssl/d1_pkt.c",0x1cd);
        uVar4 = 0x32;
        goto LAB_006a36b0;
      }
      uVar3 = EVP_CIPHER_CTX_flags(*(EVP_CIPHER_CTX **)(param_1 + 0x80));
      if ((uVar3 & 0xf0007) == 2) {
        ssl3_cbc_copy_mac(auStack_64,iVar7 + 0x10c,uVar2,uVar9);
        b = auStack_64;
        *(uint *)(iVar7 + 0x110) = *(int *)(iVar7 + 0x110) - uVar2;
      }
      else {
        iVar8 = *(int *)(iVar7 + 0x110) - uVar2;
        *(int *)(iVar7 + 0x110) = iVar8;
        b = (undefined1 *)(*(int *)(iVar7 + 0x118) + iVar8);
      }
      iVar8 = (**(code **)(*(int *)(*(int *)(param_1 + 8) + 100) + 4))(param_1,auStack_a4,0);
      iVar6 = 1 - (int)b;
      if ((undefined1 *)0x1 < b) {
        iVar6 = 0;
      }
      if (iVar6 == 0 && -1 < iVar8) {
        iVar8 = CRYPTO_memcmp(auStack_a4,b,uVar2);
        if (iVar8 != 0) {
          iVar5 = -1;
        }
      }
      else {
        iVar5 = -1;
      }
      if (*(uint *)(iVar7 + 0x110) <= uVar2 + 0x4400) goto LAB_006a35da;
    }
    uVar4 = 0;
    *(undefined4 *)(iVar7 + 0x110) = 0;
    *(undefined4 *)(param_1 + 0x50) = 0;
  }
  else {
    iVar7 = 0x19a;
    iVar5 = 0x96;
LAB_006a360a:
    ERR_put_error(0x14,0x101,iVar5,"jni/../../openssl-android/ssl/d1_pkt.c",iVar7);
    uVar4 = 0x16;
LAB_006a36b0:
    ssl3_send_alert(param_1,2,uVar4);
    uVar4 = 0;
  }
LAB_006a36be:
  if (local_24 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

// ---- FUN_006a36f8  @ 0x6a36f8
undefined8 FUN_006a36f8(int param_1,int param_2,uchar *param_3)

{
  undefined4 *data;
  pitem *item;
  int iVar1;
  pitem *ppVar2;
  int line;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  
  iVar5 = param_1;
  data = CRYPTO_malloc(0x3c,"jni/../../openssl-android/ssl/d1_pkt.c",0xda);
  item = pitem_new(param_3,data);
  uVar4 = 1 - (int)data;
  if ((undefined4 *)0x1 < data) {
    uVar4 = 0;
  }
  if (item == (pitem *)0x0) {
    uVar4 = uVar4 | 1;
  }
  if (uVar4 == 0) {
    *data = *(undefined4 *)(param_1 + 0x4c);
    data[1] = *(undefined4 *)(param_1 + 0x50);
    memcpy(data + 2,(void *)(*(int *)(param_1 + 0x58) + 0xec),0x10);
    memcpy(data + 6,(void *)(*(int *)(param_1 + 0x58) + 0x10c),0x24);
    item->data = data;
    *(undefined4 *)(param_1 + 0x4c) = 0;
    *(undefined4 *)(param_1 + 0x50) = 0;
    memset((void *)(*(int *)(param_1 + 0x58) + 0xec),0,0x10);
    memset((void *)(*(int *)(param_1 + 0x58) + 0x10c),0,0x24);
    iVar1 = ssl3_setup_buffers(param_1);
    line = 0xfb;
    if (iVar1 != 0) {
      ppVar2 = pqueue_insert(*(pqueue *)(param_2 + 4),item);
      if (ppVar2 != (pitem *)0x0) {
        uVar3 = 1;
        goto LAB_006a37e0;
      }
      line = 0x104;
    }
    uVar3 = 0;
    ERR_put_error(0x14,0xf7,0x44,"jni/../../openssl-android/ssl/d1_pkt.c",line);
    CRYPTO_free(data);
    pitem_free(item);
    iVar5 = line;
  }
  else {
    if (data != (undefined4 *)0x0) {
      CRYPTO_free(data);
    }
    if (item != (pitem *)0x0) {
      pitem_free(item);
    }
    iVar5 = 0xe1;
    uVar3 = 0;
    ERR_put_error(0x14,0xf7,0x44,"jni/../../openssl-android/ssl/d1_pkt.c",0xe1);
  }
LAB_006a37e0:
  return CONCAT44(iVar5,uVar3);
}

// ---- FUN_006a6e28  @ 0x6a6e28
int FUN_006a6e28(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  
  if ((param_3 < *(int *)(*(int *)(param_1 + 0x54) + 0x14)) ||
     ((*(int *)(*(int *)(param_1 + 0x54) + 0x18) != param_2 &&
      (-1 < *(int *)(param_1 + 0x10c) << 0x1e)))) {
    ERR_put_error(0x14,0xd4,0x7f,"jni/../../openssl-android/ssl/s2_pkt.c",0x1e0);
    iVar1 = -1;
  }
  else {
    while( true ) {
      puVar2 = (undefined4 *)__errno();
      *puVar2 = 0;
      if (*(BIO **)(param_1 + 0x10) == (BIO *)0x0) {
        ERR_put_error(0x14,0xd4,0x104,"jni/../../openssl-android/ssl/s2_pkt.c",0x1f0);
        iVar1 = -1;
      }
      else {
        *(undefined4 *)(param_1 + 0x18) = 2;
        iVar1 = *(int *)(param_1 + 0x54);
        iVar1 = BIO_write(*(BIO **)(param_1 + 0x10),
                          (void *)(*(int *)(iVar1 + 0x38) + *(int *)(iVar1 + 0x1c)),
                          *(int *)(iVar1 + 0x20));
      }
      iVar3 = *(int *)(param_1 + 0x54);
      if (iVar1 == *(int *)(iVar3 + 0x20)) break;
      if (iVar1 < 1) {
        return iVar1;
      }
      *(int *)(iVar3 + 0x1c) = *(int *)(iVar3 + 0x1c) + iVar1;
      *(int *)(*(int *)(param_1 + 0x54) + 0x20) = *(int *)(*(int *)(param_1 + 0x54) + 0x20) - iVar1;
    }
    *(undefined4 *)(iVar3 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x18) = 1;
    iVar1 = *(int *)(*(int *)(param_1 + 0x54) + 0x24);
  }
  return iVar1;
}

// ---- FUN_006a6ecc  @ 0x6a6ecc
undefined8 FUN_006a6ecc(int param_1,uint param_2,uint param_3,int param_4)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  size_t __n;
  uint uVar6;
  int iVar7;
  
  iVar4 = *(int *)(param_1 + 0x54);
  __n = *(size_t *)(iVar4 + 0x28);
  iVar7 = param_1;
  if ((int)param_2 <= (int)__n) {
    if (param_4 == 0) {
      iVar2 = *(int *)(iVar4 + 0x30);
      iVar3 = *(int *)(iVar4 + 0x2c);
      *(uint *)(param_1 + 0x50) = param_2;
      *(int *)(param_1 + 0x4c) = iVar2 + iVar3;
    }
    else {
      *(uint *)(param_1 + 0x50) = *(int *)(param_1 + 0x50) + param_2;
    }
    *(uint *)(iVar4 + 0x28) = *(int *)(iVar4 + 0x28) - param_2;
    *(uint *)(*(int *)(param_1 + 0x54) + 0x2c) = *(int *)(*(int *)(param_1 + 0x54) + 0x2c) + param_2
    ;
    uVar5 = param_2;
    goto LAB_006a6fe6;
  }
  if (*(int *)(param_1 + 0x60) == 0) {
    param_3 = param_2;
  }
  uVar6 = 0x8001;
  if (param_3 < 0x8001) {
    uVar6 = param_3;
  }
  if (__n == 0) {
    iVar2 = 0;
    if (param_4 != 0 && *(int *)(param_1 + 0x50) != 0) {
LAB_006a6f32:
      iVar2 = *(int *)(param_1 + 0x50);
      if (*(void **)(param_1 + 0x4c) != *(void **)(iVar4 + 0x30)) {
        memcpy(*(void **)(iVar4 + 0x30),*(void **)(param_1 + 0x4c),__n + iVar2);
      }
      goto LAB_006a6f5c;
    }
  }
  else {
    if (param_4 != 0) goto LAB_006a6f32;
    if (*(int *)(iVar4 + 0x2c) != 0) {
      memcpy(*(void **)(iVar4 + 0x30),
             (void *)((int)*(void **)(iVar4 + 0x30) + *(int *)(iVar4 + 0x2c)),__n);
      *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x2c) = 0;
    }
    iVar2 = 0;
LAB_006a6f5c:
    *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x28) = 0;
  }
  *(undefined4 *)(param_1 + 0x4c) = *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x30);
  for (; (int)__n < (int)param_2; __n = __n + uVar5) {
    puVar1 = (undefined4 *)__errno();
    *puVar1 = 0;
    if (*(BIO **)(param_1 + 0xc) == (BIO *)0x0) {
      iVar7 = 0x180;
      ERR_put_error(0x14,0x70,0xd3,"jni/../../openssl-android/ssl/s2_pkt.c",0x180);
      uVar5 = 0xffffffff;
LAB_006a6fae:
      *(size_t *)(*(int *)(param_1 + 0x54) + 0x28) = *(int *)(*(int *)(param_1 + 0x54) + 0x28) + __n
      ;
      goto LAB_006a6fe6;
    }
    *(undefined4 *)(param_1 + 0x18) = 3;
    uVar5 = BIO_read(*(BIO **)(param_1 + 0xc),
                     (void *)(*(int *)(*(int *)(param_1 + 0x54) + 0x30) + iVar2 + __n),uVar6 - __n);
    if ((int)uVar5 < 1) goto LAB_006a6fae;
  }
  if ((int)param_2 < (int)__n) {
    *(uint *)(*(int *)(param_1 + 0x54) + 0x2c) = iVar2 + param_2;
    *(size_t *)(*(int *)(param_1 + 0x54) + 0x28) = __n - param_2;
  }
  else {
    *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x2c) = 0;
    *(undefined4 *)(*(int *)(param_1 + 0x54) + 0x28) = 0;
  }
  uVar5 = param_2;
  if (param_4 != 0) {
    uVar5 = *(int *)(param_1 + 0x50) + param_2;
  }
  *(uint *)(param_1 + 0x50) = uVar5;
  *(undefined4 *)(param_1 + 0x18) = 1;
  uVar5 = param_2;
LAB_006a6fe6:
  return CONCAT44(iVar7,uVar5);
}

// ---- FUN_006a8614  @ 0x6a8614
void FUN_006a8614(int param_1,int param_2,uint param_3,uint *param_4)

{
  uint *puVar1;
  
  CRYPTO_lock(9,0xc,"jni/../../openssl-android/ssl/s3_both.c",0x2d6);
  if (param_2 == 0) {
    puVar1 = *(uint **)(param_1 + 0x15c);
  }
  else {
    puVar1 = *(uint **)(param_1 + 0x160);
  }
  if ((puVar1 != (uint *)0x0) &&
     (((param_3 == *puVar1 || (*puVar1 == 0)) &&
      (3 < param_3 && puVar1[1] < *(uint *)(param_1 + 0x158))))) {
    *puVar1 = param_3;
    *param_4 = puVar1[2];
    puVar1[2] = (uint)param_4;
    param_4 = (uint *)0x0;
    puVar1[1] = puVar1[1] + 1;
  }
  CRYPTO_lock(10,0xc,"jni/../../openssl-android/ssl/s3_both.c",0x2e5);
  if (param_4 == (uint *)0x0) {
    return;
  }
  CRYPTO_free(param_4);
  return;
}

// ---- FUN_006a8694  @ 0x6a8694
int * FUN_006a8694(int param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  CRYPTO_lock(9,0xc,"jni/../../openssl-android/ssl/s3_both.c",0x2bf);
  if (param_2 == 0) {
    piVar2 = *(int **)(param_1 + 0x15c);
  }
  else {
    piVar2 = *(int **)(param_1 + 0x160);
  }
  piVar3 = (int *)0x0;
  if (((piVar2 != (int *)0x0) && (piVar3 = (int *)0x0, param_3 == *piVar2)) &&
     (piVar3 = (int *)piVar2[2], piVar3 != (int *)0x0)) {
    piVar2[2] = *piVar3;
    iVar1 = piVar2[1];
    piVar2[1] = iVar1 + -1;
    if (iVar1 + -1 == 0) {
      *piVar2 = 0;
    }
  }
  CRYPTO_lock(10,0xc,"jni/../../openssl-android/ssl/s3_both.c",0x2ca);
  if (piVar3 == (int *)0x0) {
    piVar2 = CRYPTO_malloc(param_3,"jni/../../openssl-android/ssl/s3_both.c",0x2cc);
    return piVar2;
  }
  return piVar3;
}

// ---- FUN_006a8708  @ 0x6a8708
undefined4 FUN_006a8708(BUF_MEM *param_1,int *param_2,X509 *param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  char *pcVar4;
  uchar *local_1c [2];
  
  iVar1 = i2d_X509(param_3,(uchar **)0x0);
  iVar2 = BUF_MEM_grow_clean(param_1,*param_2 + 3 + iVar1);
  if (iVar2 == 0) {
    ERR_put_error(0x14,0x128,7,"jni/../../openssl-android/ssl/s3_both.c",0x152);
    uVar3 = 0xffffffff;
  }
  else {
    pcVar4 = param_1->data;
    iVar2 = *param_2;
    pcVar4[iVar2] = (char)((uint)iVar1 >> 0x10);
    pcVar4[iVar2 + 1] = (char)((uint)iVar1 >> 8);
    pcVar4[iVar2 + 2] = (char)iVar1;
    local_1c[0] = (uchar *)(pcVar4 + iVar2 + 3);
    i2d_X509(param_3,local_1c);
    uVar3 = 0;
    *param_2 = *param_2 + 3 + iVar1;
  }
  return uVar3;
}

// ---- FUN_006a9012  @ 0x6a9012
void FUN_006a9012(undefined4 *param_1,undefined1 *param_2)

{
  *param_2 = *(undefined1 *)((int)param_1 + 3);
  param_2[1] = (char)*(undefined2 *)((int)param_1 + 2);
  param_2[2] = (char)((uint)*param_1 >> 8);
  param_2[3] = (char)*param_1;
  param_2[4] = *(undefined1 *)((int)param_1 + 7);
  param_2[5] = (char)*(undefined2 *)((int)param_1 + 6);
  param_2[6] = (char)((uint)param_1[1] >> 8);
  param_2[7] = (char)param_1[1];
  param_2[8] = *(undefined1 *)((int)param_1 + 0xb);
  param_2[9] = (char)*(undefined2 *)((int)param_1 + 10);
  param_2[10] = (char)((uint)param_1[2] >> 8);
  param_2[0xb] = (char)param_1[2];
  param_2[0xc] = *(undefined1 *)((int)param_1 + 0xf);
  param_2[0xd] = (char)*(undefined2 *)((int)param_1 + 0xe);
  param_2[0xe] = (char)((uint)param_1[3] >> 8);
  param_2[0xf] = (char)param_1[3];
  param_2[0x10] = *(undefined1 *)((int)param_1 + 0x13);
  param_2[0x11] = (char)*(undefined2 *)((int)param_1 + 0x12);
  param_2[0x12] = (char)((uint)param_1[4] >> 8);
  param_2[0x13] = (char)param_1[4];
  return;
}

// ---- FUN_006ad790  @ 0x6ad790
void FUN_006ad790(int param_1,int param_2,void *param_3,size_t param_4,uchar *param_5)

{
  int iVar1;
  EVP_MD_CTX *pEVar2;
  EVP_MD *pEVar3;
  int iVar4;
  uint uVar5;
  uint local_84;
  uint local_80;
  EVP_MD_CTX EStack_7c;
  uchar auStack_64 [64];
  int local_24;
  
  local_24 = __stack_chk_guard;
  if (*(int *)(*(int *)(param_1 + 0x58) + 0x178) != 0) {
    iVar1 = ssl3_digest_cached_records();
    uVar5 = 0;
    if (iVar1 == 0) goto LAB_006ad8c0;
  }
  for (local_80 = 0; local_80 < 6; local_80 = local_80 + 1) {
    pEVar2 = *(EVP_MD_CTX **)(*(int *)(*(int *)(param_1 + 0x58) + 0x17c) + local_80 * 4);
    if (pEVar2 != (EVP_MD_CTX *)0x0) {
      pEVar3 = EVP_MD_CTX_md(pEVar2);
      iVar1 = EVP_MD_type(pEVar3);
      if (iVar1 == param_2) {
        pEVar2 = *(EVP_MD_CTX **)(*(int *)(*(int *)(param_1 + 0x58) + 0x17c) + local_80 * 4);
        if (pEVar2 != (EVP_MD_CTX *)0x0) {
          EVP_MD_CTX_init(&EStack_7c);
          EVP_MD_CTX_set_flags(&EStack_7c,8);
          EVP_MD_CTX_copy_ex(&EStack_7c,pEVar2);
          pEVar3 = EVP_MD_CTX_md(&EStack_7c);
          iVar1 = EVP_MD_size(pEVar3);
          if (iVar1 < 0) goto LAB_006ad8be;
          iVar4 = __divsi3(0x30,iVar1);
          if (param_3 != (void *)0x0) {
            EVP_DigestUpdate(&EStack_7c,param_3,param_4);
          }
          EVP_DigestUpdate(&EStack_7c,(void *)(*(int *)(param_1 + 0xc0) + 0x14),
                           *(size_t *)(*(int *)(param_1 + 0xc0) + 0x10));
          EVP_DigestUpdate(&EStack_7c,&DAT_0094c214,iVar4 * iVar1);
          EVP_DigestFinal_ex(&EStack_7c,auStack_64,&local_80);
          pEVar3 = EVP_MD_CTX_md(&EStack_7c);
          EVP_DigestInit_ex(&EStack_7c,pEVar3,(ENGINE *)0x0);
          EVP_DigestUpdate(&EStack_7c,(void *)(*(int *)(param_1 + 0xc0) + 0x14),
                           *(size_t *)(*(int *)(param_1 + 0xc0) + 0x10));
          EVP_DigestUpdate(&EStack_7c,&DAT_0094c244,iVar4 * iVar1);
          EVP_DigestUpdate(&EStack_7c,auStack_64,local_80);
          EVP_DigestFinal_ex(&EStack_7c,param_5,&local_84);
          EVP_MD_CTX_cleanup(&EStack_7c);
          uVar5 = local_84;
          goto LAB_006ad8c0;
        }
        break;
      }
    }
  }
  ERR_put_error(0x14,0x11d,0x144,"jni/../../openssl-android/ssl/s3_enc.c",0x2a2);
LAB_006ad8be:
  uVar5 = 0;
LAB_006ad8c0:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

// ---- FUN_006af13c  @ 0x6af13c
int FUN_006af13c(int *param_1,undefined4 param_2,int param_3,int param_4,char param_5,char param_6)

{
  int iVar1;
  EVP_MD *pEVar2;
  int iVar3;
  int iVar4;
  ulong uVar5;
  int iVar6;
  void *__src;
  undefined1 uVar7;
  int iVar8;
  uint uVar9;
  size_t __n;
  undefined1 *puVar10;
  undefined1 *puVar11;
  int iVar12;
  
  iVar12 = param_1[0x16];
  if (*(int *)(iVar12 + 0x108) != 0) goto LAB_006af394;
  if ((*(int *)(iVar12 + 0x18c) != 0) &&
     (iVar1 = (**(code **)(param_1[2] + 0x3c))(param_1,param_2,param_3), iVar1 < 1)) {
    return iVar1;
  }
  if ((*(int *)(iVar12 + 0xfc) == 0) && (iVar1 = ssl3_setup_write_buffer(param_1), iVar1 == 0)) {
    return -1;
  }
  if (param_4 == 0) {
    return 0;
  }
  iVar1 = param_1[0x16];
  if ((param_1[0x30] == 0) || (param_1[0x23] == 0)) {
    iVar3 = 0;
  }
  else {
    pEVar2 = EVP_MD_CTX_md((EVP_MD_CTX *)param_1[0x24]);
    if (pEVar2 == (EVP_MD *)0x0) {
      iVar3 = 0;
    }
    else {
      pEVar2 = EVP_MD_CTX_md((EVP_MD_CTX *)param_1[0x24]);
      iVar3 = EVP_MD_size(pEVar2);
      if (iVar3 < 0) {
        return -1;
      }
    }
  }
  iVar4 = 0;
  if (param_5 != '\0') {
    iVar4 = FUN_006af13c(param_1,param_2,param_3,1,0,1);
    if (iVar4 < 1) {
      return -1;
    }
    if (0x55 < iVar4) {
      iVar1 = 0x2e5;
      iVar12 = 0x44;
      goto LAB_006af2ec;
    }
  }
  if (param_6 == '\0') {
    iVar8 = -5;
    if (iVar4 == 0) goto LAB_006af21e;
    uVar9 = *(int *)(iVar12 + 0x104) + iVar4;
  }
  else {
    iVar8 = -0xb;
LAB_006af21e:
    uVar9 = iVar8 - *(int *)(iVar12 + 0xfc) & 7;
    *(uint *)(iVar12 + 0x104) = uVar9;
  }
  puVar10 = (undefined1 *)(*(int *)(iVar12 + 0xfc) + uVar9);
  *puVar10 = (char)param_2;
  *(undefined4 *)(iVar1 + 0x130) = param_2;
  puVar10[1] = (char)((uint)*param_1 >> 8);
  if ((((param_1[0xd] == 0x1111) && (param_1[0x6a] == 0)) && (*param_1 >> 8 == 3)) &&
     (0x301 < *param_1)) {
    uVar7 = 1;
  }
  else {
    uVar7 = (undefined1)*param_1;
  }
  puVar10[2] = uVar7;
  puVar11 = puVar10 + 5;
  iVar8 = 0;
  if ((EVP_CIPHER_CTX *)param_1[0x23] != (EVP_CIPHER_CTX *)0x0) {
    if (*param_1 < 0x302) {
      iVar8 = 0;
    }
    else {
      uVar5 = EVP_CIPHER_CTX_flags((EVP_CIPHER_CTX *)param_1[0x23]);
      if ((uVar5 & 0xf0007) == 2) {
        iVar8 = EVP_CIPHER_CTX_iv_length((EVP_CIPHER_CTX *)param_1[0x23]);
        if (iVar8 < 2) {
          iVar8 = 0;
        }
      }
      else if ((uVar5 & 0xf0007) == 6) {
        iVar8 = 8;
      }
      else {
        iVar8 = 0;
      }
    }
  }
  *(undefined1 **)(iVar1 + 0x13c) = puVar11 + iVar8;
  __n = param_4 - (uint)(param_5 != '\0');
  __src = (void *)(param_3 + (uint)(param_5 != '\0'));
  *(size_t *)(iVar1 + 0x134) = __n;
  *(void **)(iVar1 + 0x140) = __src;
  if (param_1[0x25] == 0) {
    memcpy(puVar11 + iVar8,__src,__n);
    *(undefined4 *)(iVar1 + 0x140) = *(undefined4 *)(iVar1 + 0x13c);
  }
  else {
    iVar6 = ssl3_do_compress(param_1);
    if (iVar6 == 0) {
      iVar1 = 0x338;
      iVar12 = 0x8d;
LAB_006af2ec:
      ERR_put_error(0x14,0x68,iVar12,"jni/../../openssl-android/ssl/s3_pkt.c",iVar1);
      return -1;
    }
  }
  if (iVar3 != 0) {
    iVar6 = (**(code **)(*(int *)(param_1[2] + 100) + 4))
                      (param_1,puVar11 + *(int *)(iVar1 + 0x134) + iVar8,1);
    if (iVar6 < 0) {
      return -1;
    }
    *(int *)(iVar1 + 0x134) = *(int *)(iVar1 + 0x134) + iVar3;
  }
  *(undefined1 **)(iVar1 + 0x140) = puVar11;
  *(undefined1 **)(iVar1 + 0x13c) = puVar11;
  if (iVar8 != 0) {
    *(int *)(iVar1 + 0x134) = *(int *)(iVar1 + 0x134) + iVar8;
  }
  (*(code *)**(undefined4 **)(param_1[2] + 100))(param_1,1);
  puVar10[3] = (char)((uint)*(undefined4 *)(iVar1 + 0x134) >> 8);
  puVar10[4] = (char)*(undefined4 *)(iVar1 + 0x134);
  *(undefined4 *)(iVar1 + 0x130) = param_2;
  iVar3 = *(int *)(iVar1 + 0x134) + 5;
  *(int *)(iVar1 + 0x134) = iVar3;
  if (param_6 != '\0') {
    return iVar3;
  }
  *(int *)(iVar12 + 0x108) = iVar3 + iVar4;
  *(int *)(param_1[0x16] + 0x168) = param_4;
  *(int *)(param_1[0x16] + 0x174) = param_3;
  *(undefined4 *)(param_1[0x16] + 0x16c) = param_2;
  *(int *)(param_1[0x16] + 0x170) = param_4;
LAB_006af394:
  iVar12 = ssl3_write_pending(param_1,param_2,param_3,param_4);
  return iVar12;
}

// ---- FUN_006af4d0  @ 0x6af4d0
undefined4 FUN_006af4d0(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  if ((*(uint *)(param_1 + 0x34) & 0x2000) == 0) {
    uVar4 = 0x11;
  }
  else {
    uVar4 = 0x21;
  }
  iVar1 = param_1;
  if (*(int *)(*(int *)(param_1 + 0x58) + 0x378) == 0) {
    iVar3 = *(int *)(param_1 + 0xc0);
    if ((iVar3 == 0) || (*(int *)(iVar3 + 0x10) == 0)) {
      ERR_put_error(0x14,0x124,0x85,"jni/../../openssl-android/ssl/s3_pkt.c",0x5c5);
      return 0;
    }
    *(undefined4 *)(iVar3 + 0xb4) = *(undefined4 *)(*(int *)(param_1 + 0x58) + 0x344);
    iVar3 = (**(code **)(*(int *)(*(int *)(param_1 + 8) + 100) + 8))();
    if (iVar3 == 0) {
      return 0;
    }
  }
  iVar3 = (**(code **)(*(int *)(*(int *)(param_1 + 8) + 100) + 0x10))(param_1,uVar4);
  uVar4 = 0;
  if (iVar3 != 0) {
    iVar3 = *(int *)(*(int *)(param_1 + 8) + 100);
    if ((*(uint *)(param_1 + 0x34) & 0x1000) == 0) {
      uVar4 = *(undefined4 *)(iVar3 + 0x20);
      uVar2 = *(undefined4 *)(iVar3 + 0x24);
    }
    else {
      uVar4 = *(undefined4 *)(iVar3 + 0x28);
      uVar2 = *(undefined4 *)(iVar3 + 0x2c);
    }
    iVar1 = (**(code **)(*(int *)(*(int *)(param_1 + 8) + 100) + 0x14))
                      (param_1,uVar4,uVar2,*(int *)(param_1 + 0x58) + 0x2b8,iVar1,param_2);
    if (iVar1 == 0) {
      ERR_put_error(0x14,0x124,0x44,"jni/../../openssl-android/ssl/s3_pkt.c",0x5e2);
      uVar4 = 0;
    }
    else {
      *(int *)(*(int *)(param_1 + 0x58) + 0x338) = iVar1;
      uVar4 = 1;
    }
  }
  return uVar4;
}
