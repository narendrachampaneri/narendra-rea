// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 70 functions

// ---- FUN_00631544  @ 0x631544
void FUN_00631544(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_4;
  
  *(undefined4 *)(param_1 + 0x3d4) = param_2;
  uStack_4 = param_4;
  Curl_pp_vsendf(param_1 + 0x390,param_3,&uStack_4,param_3,param_1,&uStack_4,param_3);
  return;
}

// ---- FUN_00631568  @ 0x631568
void FUN_00631568(int *param_1)

{
  undefined1 *puVar1;
  uint uVar2;
  int iVar3;
  undefined1 *puVar4;
  
  iVar3 = *(int *)(*param_1 + 0x861c);
  uVar2 = param_1[0xf4] + 1U & 3;
  param_1[0xf4] = uVar2;
  puVar1 = *(undefined1 **)(iVar3 + 4);
  if (puVar1 == (undefined1 *)0x0) {
    puVar1 = &DAT_00801f93;
  }
  puVar4 = *(undefined1 **)(iVar3 + 8);
  if (puVar4 == (undefined1 *)0x0) {
    puVar4 = &DAT_00801f93;
  }
  iVar3 = FUN_00631544(param_1,(&PTR_DAT_008fe9a4)[uVar2],"%s LOGIN %s %s",
                       (&PTR_DAT_008fe9a4)[uVar2],puVar1,puVar4);
  if (iVar3 == 0) {
    param_1[0xf3] = 2;
  }
  return;
}

// ---- FUN_006317dc  @ 0x6317dc
/* WARNING: Type propagation algorithm not settling */

int FUN_006317dc(int *param_1)

{
  char cVar1;
  longlong lVar2;
  int iVar3;
  undefined4 uVar4;
  char *__nptr;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  undefined8 uVar11;
  longlong lVar12;
  undefined4 uVar13;
  int local_30 [3];
  char *pcVar5;
  
  local_30[1] = 0;
  if (param_1[0xf3] == 4) {
    iVar3 = Curl_ssl_connect_nonblocking(param_1,0,param_1 + 0xf6);
    if ((char)param_1[0xf6] == '\0') {
      return iVar3;
    }
    param_1[0x79] = (int)Curl_handler_imaps;
    iVar3 = FUN_00631568(param_1);
    param_1[0xf3] = 0;
    return iVar3;
  }
  if (param_1[0xea] != 0) {
    iVar3 = Curl_pp_flushsend(param_1 + 0xe4);
    return iVar3;
  }
  uVar11 = Curl_pp_readresp(param_1[0x4c],param_1 + 0xe4,local_30,local_30 + 1);
  if ((int)uVar11 != 0) {
    return (int)uVar11;
  }
  if (local_30[0] == 0) {
    return 0;
  }
  iVar3 = 0;
  switch(param_1[0xf3]) {
  case 1:
    if (local_30[0] != 0x4f) {
      Curl_failf(*param_1,"Got unexpected imap-server response");
      return 8;
    }
    if ((*(int *)(*param_1 + 0x2c8) == 0) || ((char)param_1[0x53] != '\0')) {
      iVar3 = FUN_00631568(param_1);
      return iVar3;
    }
    uVar6 = param_1[0xf4] + 1U & 3;
    param_1[0xf4] = uVar6;
    iVar3 = FUN_00631544(param_1,(&PTR_DAT_008fe9a4)[uVar6],"%s STARTTLS",(&PTR_DAT_008fe9a4)[uVar6]
                        );
    iVar8 = 3;
    goto LAB_00631aa4;
  case 2:
    if (local_30[0] != 0x4f) {
      iVar3 = 0x43;
      Curl_failf(*param_1,"Access denied. %c");
    }
    break;
  case 3:
    iVar10 = *param_1;
    if (local_30[0] == 0x4f) {
      if (*(int *)(iVar10 + 0x4f0) == 2) {
        param_1[0xf3] = 4;
        iVar3 = Curl_ssl_connect_nonblocking(param_1,0,param_1 + 0xf6);
        if ((char)param_1[0xf6] == '\0') {
          return iVar3;
        }
      }
      else {
        iVar3 = Curl_ssl_connect(param_1,0);
        if (iVar3 != 0) break;
      }
      param_1[0x79] = (int)Curl_handler_imaps;
    }
    else if (*(int *)(iVar10 + 0x2c8) != 1) {
      iVar3 = 0x40;
      Curl_failf(iVar10,"STARTTLS denied. %c");
      break;
    }
    iVar3 = FUN_00631568(param_1);
    break;
  case 5:
    if (local_30[0] != 0x4f) {
      Curl_failf(*param_1,"Select failed");
      return 0x43;
    }
    uVar6 = param_1[0xf4] + 1U & 3;
    param_1[0xf4] = uVar6;
    iVar10 = FUN_00631544(param_1,(&PTR_DAT_008fe9a4)[uVar6],"%s FETCH 1 BODY[TEXT]",
                          (&PTR_DAT_008fe9a4)[uVar6]);
    iVar8 = 6;
    iVar3 = 0;
    if (iVar10 != 0) {
      return iVar10;
    }
    goto LAB_00631aa4;
  case 6:
    iVar3 = *param_1;
    puVar7 = *(undefined4 **)(iVar3 + 0x861c);
    if (local_30[0] != 0x2a) {
      Curl_pgrsSetDownloadSize(iVar3,(int)((ulonglong)uVar11 >> 0x20),0,0);
      param_1[0xf3] = 0;
      return 0;
    }
    pcVar5 = (char *)(iVar3 + 0x50c);
    do {
      __nptr = pcVar5 + 1;
      cVar1 = *pcVar5;
      pcVar5 = __nptr;
    } while (cVar1 != '{' && cVar1 != '\0');
    if (cVar1 == '{') {
      lVar12 = strtoll(__nptr,(char **)0x0,10);
      iVar10 = (int)((ulonglong)lVar12 >> 0x20);
      uVar6 = (uint)lVar12;
      if (lVar12 != 0) {
        Curl_pgrsSetDownloadSize(iVar3,iVar10,uVar6,iVar10);
      }
      Curl_infof(iVar3,"Found %llu bytes to download\n",uVar6,iVar10);
      if (param_1[0xe4] != 0) {
        uVar9 = param_1[0xe5];
        if (uVar6 <= (uint)param_1[0xe5]) {
          uVar9 = uVar6;
        }
        iVar8 = Curl_client_write(param_1,1,param_1[0xe4],uVar9);
        if (iVar8 != 0) {
          return iVar8;
        }
        iVar10 = iVar10 - (uint)(uVar6 < uVar9);
        lVar12 = CONCAT44(iVar10,uVar6 - uVar9);
        if (uVar9 < (uint)param_1[0xe5]) {
          memmove((void *)param_1[0xe4],(void *)(param_1[0xe4] + uVar9),param_1[0xe5] - uVar9);
          param_1[0xe5] = param_1[0xe5] - uVar9;
          lVar12 = CONCAT44(iVar10,uVar6 - uVar9);
        }
        else {
          (*Curl_cfree)(param_1[0xe4]);
          param_1[0xe4] = 0;
          param_1[0xe5] = 0;
        }
      }
      Curl_infof(iVar3,"Filesize left: %lld\n",(int)lVar12,(int)((ulonglong)lVar12 >> 0x20));
      if (lVar12 == 0) {
        uVar13 = 0;
        uVar4 = 0xffffffff;
        lVar2 = -1;
      }
      else {
        uVar13 = *puVar7;
        uVar4 = 0;
        lVar2 = lVar12;
      }
      Curl_setup_transfer(param_1,uVar4,(int)lVar2,(int)((ulonglong)lVar2 >> 0x20),0,uVar13,
                          0xffffffff,0);
      *(longlong *)(iVar3 + 0x28) = lVar12;
      iVar3 = 0;
    }
    else {
      iVar3 = 8;
    }
    param_1[0xf3] = 0;
    return iVar3;
  }
  iVar8 = 0;
LAB_00631aa4:
  param_1[0xf3] = iVar8;
  return iVar3;
}

// ---- FUN_00631c24  @ 0x631c24
undefined4 FUN_00631c24(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  iVar2 = *param_1;
  piVar1 = *(int **)(iVar2 + 0x861c);
  if (piVar1 == (int *)0x0) {
    piVar1 = (int *)(*Curl_ccalloc)(0x18,1);
    *(int **)(iVar2 + 0x861c) = piVar1;
    if (piVar1 == (int *)0x0) {
      return 0x1b;
    }
  }
  *piVar1 = iVar2 + 0x38;
  piVar1[1] = param_1[0x41];
  piVar1[2] = param_1[0x42];
  return 0;
}

// ---- FUN_00631c60  @ 0x631c60
int FUN_00631c60(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *(int *)(*param_1 + 0x861c);
  iVar1 = 0;
  if (iVar2 != 0) {
    if (param_2 != 0) {
      *(undefined1 *)(param_1 + 0x6e) = 1;
    }
    if (param_1[0xf2] != 0) {
      (*Curl_cfree)();
      param_1[0xf2] = 0;
    }
    if (param_1[0xf3] != 0) {
      (*Curl_cfree)();
      param_1[0xf3] = 0;
    }
    *(undefined4 *)(iVar2 + 0xc) = 0;
    iVar1 = param_2;
  }
  return iVar1;
}

// ---- FUN_00631d08  @ 0x631d08
void FUN_00631d08(int *param_1)

{
  int iVar1;
  undefined1 *puVar2;
  
  puVar2 = *(undefined1 **)(*(int *)(*param_1 + 0x861c) + 4);
  if (puVar2 == (undefined1 *)0x0) {
    puVar2 = &DAT_00801f93;
  }
  iVar1 = Curl_pp_sendf(param_1 + 0xe4,"USER %s",puVar2);
  if (iVar1 == 0) {
    param_1[0xf6] = 2;
  }
  return;
}

// ---- FUN_00631dac  @ 0x631dac
int FUN_00631dac(int *param_1,char *param_2)

{
  int iVar1;
  char cVar2;
  int iVar3;
  
  iVar3 = *param_1;
  *param_2 = '\0';
  Curl_reset_reqproto();
  iVar1 = FUN_00631c24(param_1);
  if (iVar1 == 0) {
    *(undefined1 *)(param_1 + 0x6e) = 0;
    param_1[0xef] = (int)param_1;
    param_1[0xee] = (int)"18_Rb_tree_node_base";
    param_1[0xf0] = 0x632181;
    param_1[0xf1] = 0x631e4d;
    if ((-1 < *(int *)(param_1[0x79] + 0x40) << 0x1f) ||
       (iVar1 = Curl_ssl_connect(param_1,0), iVar1 == 0)) {
      Curl_pp_init(param_1 + 0xe4);
      param_1[0xf6] = 1;
      if (*(int *)(iVar3 + 0x4f0) == 2) {
        iVar1 = Curl_pp_multi_statemach(param_1 + 0xe4);
        cVar2 = '\x01' - (char)param_1[0xf6];
        if (1 < (uint)param_1[0xf6]) {
          cVar2 = '\0';
        }
        *param_2 = cVar2;
        return iVar1;
      }
      do {
        if (param_1[0xf6] == 0) {
          *param_2 = '\x01';
          return 0;
        }
        iVar1 = Curl_pp_easy_statemach(param_1 + 0xe4);
      } while (iVar1 == 0);
    }
  }
  return iVar1;
}

// ---- FUN_00631e4c  @ 0x631e4c
undefined4 FUN_00631e4c(int param_1,uint *param_2)

{
  int iVar1;
  void *__s2;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 8);
  __s2 = *(void **)(param_1 + 0xc);
  if (uVar2 < 3) {
    return 0;
  }
  iVar1 = memcmp(&DAT_00813a1e,__s2,3);
  if (iVar1 != 0) {
    if (uVar2 == 3) {
      return 0;
    }
    iVar1 = memcmp(&DAT_00813a22,__s2,4);
    if (iVar1 != 0) {
      return 0;
    }
  }
  *param_2 = (uint)*(byte *)((int)__s2 + 1);
  return 1;
}

// ---- FUN_00632180  @ 0x632180
/* WARNING: Type propagation algorithm not settling */

int FUN_00632180(int *param_1)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined4 *puVar4;
  int iVar5;
  int *piVar6;
  int local_18 [2];
  
  local_18[1] = 0;
  piVar6 = param_1 + 0xe4;
  if (param_1[0xea] != 0) {
    iVar1 = Curl_pp_flushsend(piVar6);
    return iVar1;
  }
  iVar1 = Curl_pp_readresp(param_1[0x4c],piVar6,local_18,local_18 + 1);
  if (iVar1 != 0) {
    return iVar1;
  }
  if (local_18[0] == 0) {
    return 0;
  }
  iVar1 = 0;
  switch(param_1[0xf6]) {
  case 1:
    if (local_18[0] != 0x4f) {
      Curl_failf(*param_1,"Got unexpected pop3-server response");
      return 8;
    }
    if ((*(int *)(*param_1 + 0x2c8) == 0) || ((char)param_1[0x53] != '\0')) goto LAB_0063227c;
    iVar1 = Curl_pp_sendf(piVar6,&DAT_00813a56);
    iVar5 = 4;
    goto LAB_00632300;
  case 2:
    if (local_18[0] != 0x4f) {
      Curl_failf(*param_1,"Access denied. %c");
      return 0x43;
    }
    puVar3 = *(undefined1 **)(*(int *)(*param_1 + 0x861c) + 8);
    if (puVar3 == (undefined1 *)0x0) {
      puVar3 = &DAT_00801f93;
    }
    iVar2 = Curl_pp_sendf(param_1 + 0xe4,"PASS %s",puVar3);
    iVar5 = 3;
    iVar1 = 0;
    if (iVar2 != 0) {
      return iVar2;
    }
    goto LAB_00632300;
  case 3:
    if (local_18[0] != 0x4f) {
      Curl_failf(*param_1,"Access denied. %c");
      iVar1 = 0x43;
    }
    break;
  case 4:
    if (local_18[0] != 0x4f) {
      if (*(int *)(*param_1 + 0x2c8) != 1) {
        Curl_failf(*param_1,"STARTTLS denied. %c");
        param_1[0xf6] = 0;
        return 0x40;
      }
LAB_0063227c:
      iVar1 = FUN_00631d08(param_1);
      return iVar1;
    }
    iVar1 = Curl_ssl_connect(param_1,0);
    if (iVar1 == 0) {
      param_1[0x79] = (int)Curl_handler_pop3s;
      goto LAB_0063227c;
    }
    break;
  case 5:
    iVar1 = *param_1;
    puVar4 = *(undefined4 **)(iVar1 + 0x861c);
    if (local_18[0] != 0x4f) {
      param_1[0xf6] = 0;
      return 0x38;
    }
    param_1[0xf4] = 2;
    param_1[0xf5] = 2;
    Curl_setup_transfer(param_1,0,0xffffffff,0xffffffff,0,*puVar4,0xffffffff,0);
    if (param_1[0xe4] != 0) {
      if ((*(char *)(iVar1 + 0x2b7) == '\0') &&
         (iVar1 = Curl_pop3_write(param_1,param_1[0xe4],param_1[0xe5]), iVar1 != 0)) {
        return iVar1;
      }
      if (param_1[0xe4] != 0) {
        (*Curl_cfree)();
        param_1[0xe4] = 0;
      }
      param_1[0xe5] = 0;
    }
    param_1[0xf6] = 0;
    return 0;
  }
  iVar5 = 0;
LAB_00632300:
  param_1[0xf6] = iVar5;
  return iVar1;
}

// ---- FUN_0063232c  @ 0x63232c
undefined4 FUN_0063232c(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  iVar2 = *param_1;
  piVar1 = *(int **)(iVar2 + 0x861c);
  if (piVar1 == (int *)0x0) {
    piVar1 = (int *)(*Curl_ccalloc)(0x18,1);
    *(int **)(iVar2 + 0x861c) = piVar1;
    if (piVar1 == (int *)0x0) {
      return 0x1b;
    }
  }
  *piVar1 = iVar2 + 0x38;
  piVar1[1] = param_1[0x41];
  piVar1[2] = param_1[0x42];
  return 0;
}

// ---- FUN_006323b8  @ 0x6323b8
void FUN_006323b8(int param_1)

{
  int iVar1;
  char *pcVar2;
  
  if (*(undefined4 **)(param_1 + 0x3dc) != (undefined4 *)0x0) {
    if (*(char *)**(undefined4 **)(param_1 + 0x3dc) == '<') {
      pcVar2 = "RCPT TO:%s";
    }
    else {
      pcVar2 = "RCPT TO:<%s>";
    }
    iVar1 = Curl_pp_sendf(param_1 + 0x390,pcVar2);
    if (iVar1 == 0) {
      *(undefined4 *)(param_1 + 0x3d8) = 0x10;
    }
  }
  return;
}

// ---- FUN_006323f0  @ 0x6323f0
void FUN_006323f0(int param_1)

{
  int iVar1;
  
  do {
    if (*(int *)(param_1 + 0x3d8) == 0) {
      return;
    }
    iVar1 = Curl_pp_easy_statemach(param_1 + 0x390);
  } while (iVar1 == 0);
  return;
}

// ---- FUN_0063240c  @ 0x63240c
undefined4 FUN_0063240c(int param_1,int param_2)

{
  int iVar1;
  
  if (((param_2 == 0) && (*(int *)(param_1 + 0x3bc) != 0)) &&
     (iVar1 = Curl_pp_sendf(param_1 + 0x390,&DAT_0080ef7a), iVar1 == 0)) {
    *(undefined4 *)(param_1 + 0x3d8) = 0x13;
    FUN_006323f0(param_1);
  }
  Curl_pp_disconnect(param_1 + 0x390);
  if (*(int *)(param_1 + 0x3c8) != 0) {
    (*Curl_cfree)();
    *(undefined4 *)(param_1 + 0x3c8) = 0;
  }
  return 0;
}

// ---- FUN_00632464  @ 0x632464
void FUN_00632464(int param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  
  iVar2 = *(int *)(*(int *)(param_1 + 0x1e4) + 0x40) << 0x1f;
  if ((iVar2 < 0) && (*(char *)(param_1 + 0x3e0) == '\0')) {
    Curl_ssl_connect_nonblocking(param_1,0,param_1 + 0x3e0,iVar2,param_4);
  }
  else {
    Curl_pp_multi_statemach(param_1 + 0x390);
  }
  cVar1 = '\x01' - (char)*(uint *)(param_1 + 0x3d8);
  if (1 < *(uint *)(param_1 + 0x3d8)) {
    cVar1 = '\0';
  }
  *param_2 = cVar1;
  return;
}

// ---- FUN_0063249c  @ 0x63249c
void FUN_0063249c(int *param_1,undefined1 *param_2)

{
  int iVar1;
  int iVar2;
  char *pcVar3;
  char acStack_428 [1028];
  int local_24;
  
  iVar2 = *param_1;
  local_24 = __stack_chk_guard;
  pcVar3 = *(char **)(iVar2 + 0x85fc);
  *param_2 = 0;
  Curl_reset_reqproto();
  iVar1 = FUN_0063232c(param_1);
  if (iVar1 == 0) {
    param_1[0xf0] = 0x633441;
    *(undefined1 *)(param_1 + 0x6e) = 0;
    param_1[0xf1] = 0x6325c5;
    param_1[0xee] = (int)"18_Rb_tree_node_base";
    param_1[0xef] = (int)param_1;
    if (((-1 < *(int *)(param_1[0x79] + 0x3c) << 0xe) || (*(int *)(iVar2 + 0x4f0) == 2)) ||
       (iVar1 = Curl_ssl_connect(param_1), iVar1 == 0)) {
      Curl_pp_init(param_1 + 0xe4);
      param_1[0xee] = (int)"18_Rb_tree_node_base";
      param_1[0xf0] = 0x633441;
      param_1[0xef] = (int)param_1;
      param_1[0xf1] = 0x6325c5;
      if (*pcVar3 == '\0') {
        iVar1 = Curl_gethostname(acStack_428,0x401);
        pcVar3 = acStack_428;
        if (iVar1 != 0) {
          pcVar3 = "localhost";
        }
      }
      iVar1 = Curl_urldecode(*param_1,pcVar3,0,param_1 + 0xf2,0,1);
      if (iVar1 == 0) {
        param_1[0xf6] = 1;
        if (*(int *)(iVar2 + 0x4f0) == 2) {
          iVar1 = FUN_00632464(param_1,param_2);
        }
        else {
          iVar1 = FUN_006323f0(param_1);
          if (iVar1 == 0) {
            *param_2 = 1;
          }
        }
      }
    }
  }
  if (local_24 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar1);
  }
  return;
}

// ---- FUN_006325c4  @ 0x6325c4
undefined8 FUN_006325c4(char *param_1,undefined4 *param_2)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  byte *pbVar8;
  uint uVar9;
  char *local_30;
  
  uVar5 = *(uint *)(param_1 + 8);
  pbVar8 = *(byte **)(param_1 + 0xc);
  iVar7 = *(int *)(param_1 + 0x2c);
  local_30 = param_1;
  if ((((uVar5 < 4) || (9 < *pbVar8 - 0x30)) || (9 < pbVar8[1] - 0x30)) || (9 < pbVar8[2] - 0x30)) {
    uVar9 = 0;
  }
  else {
    uVar9 = (uint)(pbVar8[3] == 0x20);
    if (uVar9 != 0) {
      strtol((char *)pbVar8,(char **)0x0,10);
      uVar2 = curlx_sltosi();
      *param_2 = uVar2;
    }
    if ((4 < uVar5 - 4 && *(int *)(iVar7 + 0x3d8) == 2) &&
       (iVar3 = memcmp(pbVar8 + 4,"AUTH ",5), iVar3 == 0)) {
      pbVar8 = pbVar8 + 9;
      iVar3 = uVar5 - 9;
      local_30 = "CRAM-MD5";
      while (iVar3 != 0) {
        bVar1 = *pbVar8;
        if (((bVar1 == 9 || bVar1 == 0x20) || (bVar1 == 0xd)) || (iVar6 = 0, bVar1 == 10)) {
          pbVar8 = pbVar8 + 1;
          iVar3 = iVar3 + -1;
        }
        else {
          while (((bVar1 = pbVar8[iVar6], bVar1 != 0x20 && (bVar1 != 9)) && (bVar1 != 0xd))) {
            if ((bVar1 == 10) || (iVar6 = iVar6 + 1, iVar6 == iVar3)) break;
          }
          if (iVar6 == 5) {
            iVar4 = memcmp(pbVar8,"LOGIN",5);
            if (iVar4 == 0) {
              uVar5 = *(uint *)(iVar7 + 0x3d0) | 1;
            }
            else {
              iVar4 = memcmp(pbVar8,"PLAIN",5);
              if (iVar4 != 0) goto LAB_0063276a;
              uVar5 = *(uint *)(iVar7 + 0x3d0) | 2;
            }
LAB_00632766:
            *(uint *)(iVar7 + 0x3d0) = uVar5;
          }
          else {
            if (iVar6 == 8) {
              iVar4 = memcmp(pbVar8,"CRAM-MD5",8);
              if (iVar4 == 0) {
                uVar5 = *(uint *)(iVar7 + 0x3d0) | 4;
              }
              else {
                iVar4 = memcmp(pbVar8,"EXTERNAL",8);
                if (iVar4 != 0) goto LAB_0063276a;
                uVar5 = *(uint *)(iVar7 + 0x3d0) | 0x20;
              }
              goto LAB_00632766;
            }
            if (iVar6 == 10) {
              iVar4 = memcmp(pbVar8,"DIGEST-MD5",10);
              if (iVar4 != 0) goto LAB_0063276a;
              uVar5 = *(uint *)(iVar7 + 0x3d0) | 8;
              goto LAB_00632766;
            }
            if (iVar6 == 6) {
              iVar4 = memcmp(pbVar8,"GSSAPI",6);
              if (iVar4 == 0) {
                uVar5 = *(uint *)(iVar7 + 0x3d0) | 0x10;
                goto LAB_00632766;
              }
            }
            else if ((iVar6 == 4) && (iVar4 = memcmp(pbVar8,&DAT_0080e6e3,4), iVar4 == 0)) {
              uVar5 = *(uint *)(iVar7 + 0x3d0) | 0x40;
              goto LAB_00632766;
            }
          }
LAB_0063276a:
          pbVar8 = pbVar8 + iVar6;
          iVar3 = iVar3 - iVar6;
        }
      }
    }
  }
  return CONCAT44(local_30,uVar9);
}

// ---- FUN_0063279c  @ 0x63279c
void FUN_0063279c(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  size_t __n;
  size_t __n_00;
  undefined4 uVar1;
  char *__s;
  char *__s_00;
  uint uVar2;
  undefined1 auStack_32c [768];
  int local_2c;
  
  __s = (char *)param_1[0x41];
  local_2c = __stack_chk_guard;
  __n = strlen(__s);
  __s_00 = (char *)param_1[0x42];
  __n_00 = strlen(__s_00);
  uVar2 = __n_00 + 2 + __n * 2;
  if (uVar2 < 0x301) {
    memcpy(auStack_32c,__s,__n);
    auStack_32c[__n] = 0;
    memcpy(auStack_32c + __n + 1,__s,__n);
    auStack_32c[__n * 2 + 1] = 0;
    memcpy(auStack_32c + (__n + 1) * 2,__s_00,__n_00);
    uVar1 = Curl_base64_encode(*param_1,auStack_32c,uVar2,param_2,param_3);
  }
  else {
    uVar1 = 0x1b;
    *param_3 = 0;
    *param_2 = 0;
  }
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

// ---- FUN_00632858  @ 0x632858
int FUN_00632858(undefined4 *param_1,undefined4 param_2)

{
  size_t sVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  char *pcVar6;
  int local_20;
  int local_1c;
  
  local_20 = 0;
  local_1c = 0;
  if (*(char *)(param_1 + 0x6f) == '\0') {
    param_1[0xf6] = 0;
    return 0;
  }
  uVar3 = param_1[0xf4];
  if ((uVar3 & 8) == 0) {
    if ((int)(uVar3 << 0x1d) < 0) {
      uVar5 = 9;
      param_1[0xf5] = 4;
      pcVar6 = "CRAM-MD5";
      uVar4 = 0;
    }
    else {
      if ((int)(uVar3 << 0x19) < 0) {
        param_1[0xf5] = 0x40;
        uVar4 = 0xd;
        uVar5 = 0xc;
        iVar2 = Curl_ntlm_create_type1_message
                          (param_1[0x41],param_1[0x42],param_1 + 0x95,&local_20,&local_1c);
        pcVar6 = "NTLM";
      }
      else if ((int)(uVar3 << 0x1f) < 0) {
        pcVar6 = (char *)param_1[0x41];
        param_1[0xf5] = 1;
        sVar1 = strlen(pcVar6);
        if (sVar1 == 0) {
          local_20 = (*Curl_cstrdup)(&DAT_00813abe);
          if (local_20 == 0) {
            return 0x1b;
          }
          uVar4 = 8;
          local_1c = 1;
          uVar5 = 7;
          pcVar6 = "LOGIN";
          goto LAB_00632958;
        }
        uVar4 = 8;
        iVar2 = Curl_base64_encode(*param_1,pcVar6,sVar1,&local_20,&local_1c);
        uVar5 = 7;
        pcVar6 = "LOGIN";
      }
      else {
        if (-1 < (int)(uVar3 << 0x1e)) {
          Curl_infof(*param_1,"No known auth mechanisms supported!\n",uVar3,uVar3 << 0x1e,param_1,
                     param_2);
          return 0x43;
        }
        param_1[0xf5] = 2;
        iVar2 = FUN_0063279c(param_1,&local_20,&local_1c);
        uVar4 = 0xe;
        uVar5 = 6;
        pcVar6 = "PLAIN";
      }
      if (iVar2 != 0) {
        return iVar2;
      }
    }
  }
  else {
    uVar4 = 0;
    param_1[0xf5] = 8;
    uVar5 = 10;
    pcVar6 = "DIGEST-MD5";
  }
LAB_00632958:
  iVar2 = local_20;
  if ((local_20 == 0) || (sVar1 = strlen(pcVar6), 0x1f8 < sVar1 + local_1c)) {
    iVar2 = Curl_pp_sendf(param_1 + 0xe4,"AUTH %s",pcVar6);
    if (iVar2 == 0) {
      param_1[0xf6] = uVar5;
    }
  }
  else {
    iVar2 = Curl_pp_sendf(param_1 + 0xe4,"AUTH %s %s",pcVar6,iVar2);
    if (iVar2 == 0) {
      param_1[0xf6] = uVar4;
    }
  }
  if (local_20 != 0) {
    (*Curl_cfree)();
  }
  return iVar2;
}

// ---- FUN_006329e4  @ 0x6329e4
undefined4 FUN_006329e4(char *param_1,char *param_2,int param_3,int param_4,char param_5)

{
  char cVar1;
  char *pcVar2;
  size_t sVar3;
  uint uVar4;
  
  pcVar2 = strstr(param_1,param_2);
  if (pcVar2 != (char *)0x0) {
    sVar3 = strlen(param_2);
    uVar4 = 0;
    while( true ) {
      cVar1 = pcVar2[uVar4 + sVar3];
      if (((cVar1 == '\0') || (cVar1 == param_5)) || (param_4 - 1U <= uVar4)) break;
      *(char *)(param_3 + uVar4) = cVar1;
      uVar4 = uVar4 + 1;
    }
    *(undefined1 *)(param_3 + uVar4) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_00632a28  @ 0x632a28
int FUN_00632a28(int *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int local_20;
  int iStack_1c;
  int local_14;
  
  iVar2 = *(int *)(*param_1 + 0x861c);
  iVar1 = 0;
  if (iVar2 != 0) {
    if (param_2 == 0) {
      if (*(char *)(*param_1 + 0x2d9) == '\0') {
        iVar1 = Curl_write(param_1,param_1[0x7d],"\r\n.\r\n",5,&local_14);
        if (iVar1 != 0) {
          return iVar1;
        }
        if (local_14 == 5) {
          curlx_tvnow(&local_20);
          param_1[0xec] = local_20;
          param_1[0xed] = iStack_1c;
        }
        else {
          iVar1 = (*Curl_cstrdup)("\r\n.\r\n");
          param_1[0xeb] = 5;
          param_1[0xea] = 5 - local_14;
          param_1[0xe9] = iVar1;
        }
        param_1[0xf6] = 0x12;
        param_2 = FUN_006323f0(param_1);
      }
    }
    else {
      *(undefined1 *)(param_1 + 0x6e) = 1;
    }
    *(undefined4 *)(iVar2 + 0xc) = 0;
    iVar1 = param_2;
  }
  return iVar1;
}

// ---- FUN_00632ac4  @ 0x632ac4
undefined4 FUN_00632ac4(int *param_1)

{
  if (*(int *)(*(int *)(*param_1 + 0x861c) + 0xc) != 0) {
    Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff,0,0,0xffffffff,0);
  }
  if (param_1[0xf2] != 0) {
    (*Curl_cfree)();
    param_1[0xf2] = 0;
  }
  return 0;
}

// ---- FUN_00632b10  @ 0x632b10
undefined4 FUN_00632b10(undefined4 param_1,char *param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00632464();
  if (*param_2 != '\0') {
    FUN_00632ac4(param_1);
  }
  return uVar1;
}

// ---- FUN_00632b2c  @ 0x632b2c
int FUN_00632b2c(int *param_1,char *param_2)

{
  uint uVar1;
  undefined *puVar2;
  uint uVar3;
  uint uVar4;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  char *pcVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  bool bVar10;
  undefined8 uVar11;
  int *piVar12;
  
  *param_2 = '\0';
  piVar12 = param_1;
  pcVar5 = param_2;
  Curl_reset_reqproto();
  uVar11 = FUN_0063232c(param_1);
  if ((int)uVar11 != 0) {
    return (int)uVar11;
  }
  iVar9 = *param_1;
  *(undefined4 *)(iVar9 + 0x18) = 0xffffffff;
  *(undefined4 *)(iVar9 + 0x1c) = 0xffffffff;
  Curl_pgrsSetUploadCounter(iVar9,(int)((ulonglong)uVar11 >> 0x20),0,0,piVar12,pcVar5);
  Curl_pgrsSetDownloadCounter(iVar9,extraout_r1,0,0);
  Curl_pgrsSetUploadSize(iVar9,extraout_r1_00,0,0);
  Curl_pgrsSetDownloadSize(iVar9,extraout_r1_01,0,0);
  if (*(char *)(*param_1 + 0x2b7) != '\0') {
    *(undefined4 *)(*(int *)(*param_1 + 0x861c) + 0xc) = 1;
  }
  *param_2 = '\0';
  iVar9 = *param_1;
  if (*(char **)(iVar9 + 0x380) == (char *)0x0) {
    uVar1 = (*Curl_cstrdup)(&DAT_00813af0);
  }
  else {
    if (**(char **)(iVar9 + 0x380) == '<') {
      puVar2 = &DAT_0080c64d;
    }
    else {
      puVar2 = &DAT_00813af3;
    }
    uVar1 = curl_maprintf(puVar2);
  }
  if (uVar1 == 0) {
    return 0x1b;
  }
  if (*(char **)(iVar9 + 900) == (char *)0x0) {
    uVar3 = 0;
  }
  else {
    uVar3 = 0;
    if (param_1[0xf5] != 0) {
      if (**(char **)(iVar9 + 900) == '\0') {
        uVar3 = (*Curl_cstrdup)(&DAT_00813af0);
      }
      else {
        uVar3 = curl_maprintf(&DAT_0080c64d);
      }
      if (uVar3 == 0) goto LAB_00632c3e;
    }
  }
  iVar7 = *(int *)(*param_1 + 0x1d4);
  bVar10 = *(int *)(*param_1 + 0x1d0) == 0;
  if (iVar7 < (int)(uint)bVar10) {
    uVar4 = 0;
  }
  else {
    uVar4 = curl_maprintf(&DAT_00813008,iVar7 - (uint)bVar10,*(undefined4 *)(iVar9 + 0x1d0),
                          *(undefined4 *)(iVar9 + 0x1d4));
    if (uVar4 == 0) {
      (*Curl_cfree)(uVar1);
      uVar1 = uVar3;
      if (uVar3 == 0) {
        return 0x1b;
      }
LAB_00632c3e:
      (*Curl_cfree)(uVar1);
      return 0x1b;
    }
  }
  uVar6 = 1 - uVar4;
  if (1 < uVar4) {
    uVar6 = 0;
  }
  if (uVar3 == 0) {
    uVar8 = uVar6 & 1;
  }
  else {
    uVar8 = 0;
  }
  if (uVar8 == 0) {
    uVar8 = (uint)(uVar3 != 0);
    if ((uVar6 & uVar8) == 0) {
      if (uVar4 == 0) {
        uVar8 = 0;
      }
      if (uVar8 != 0) {
        iVar9 = Curl_pp_sendf(param_1 + 0xe4,"MAIL FROM:%s AUTH=%s SIZE=%s",uVar1,uVar3,uVar4);
        goto LAB_00632cb0;
      }
      pcVar5 = "MAIL FROM:%s SIZE=%s";
      uVar6 = uVar4;
    }
    else {
      pcVar5 = "MAIL FROM:%s AUTH=%s";
      uVar6 = uVar3;
    }
    iVar9 = Curl_pp_sendf(param_1 + 0xe4,pcVar5,uVar1,uVar6);
  }
  else {
    iVar9 = Curl_pp_sendf(param_1 + 0xe4,"MAIL FROM:%s",uVar1);
  }
LAB_00632cb0:
  (*Curl_cfree)(uVar1);
  if (uVar3 != 0) {
    (*Curl_cfree)(uVar3);
  }
  if (uVar4 != 0) {
    (*Curl_cfree)(uVar4);
  }
  if (iVar9 == 0) {
    param_1[0xf6] = 0xf;
    if (*(int *)(*param_1 + 0x4f0) == 2) {
      iVar9 = FUN_00632464(param_1,param_2);
    }
    else {
      iVar9 = FUN_006323f0(param_1);
      *param_2 = '\x01';
    }
    if (iVar9 == 0) {
      if (*param_2 != '\0') {
        iVar9 = FUN_00632ac4(param_1);
        return iVar9;
      }
      return 0;
    }
    return iVar9;
  }
  return iVar9;
}

// ---- FUN_00632d50  @ 0x632d50
void FUN_00632d50(int *param_1,int param_2)

{
  char cVar1;
  uint uVar2;
  size_t sVar3;
  undefined4 uVar4;
  char *__s;
  int iVar5;
  int iVar6;
  char *pcVar7;
  uint local_168;
  uint local_164;
  size_t local_160;
  int local_15c;
  undefined1 local_158;
  undefined1 local_157;
  undefined1 local_156;
  undefined1 local_155;
  undefined1 local_154;
  undefined1 local_153;
  undefined1 local_152;
  undefined1 local_151;
  undefined1 local_150;
  undefined1 local_14f;
  undefined1 local_14e;
  undefined1 local_14d;
  undefined1 local_14c;
  undefined1 local_14b;
  undefined1 local_14a;
  undefined1 local_149;
  undefined1 auStack_148 [292];
  int local_24;
  
  iVar5 = *param_1;
  local_24 = __stack_chk_guard;
  local_160 = 0;
  local_15c = 0;
  if (param_2 == 0x14e) {
    pcVar7 = (char *)(iVar5 + 0x510);
    do {
      __s = pcVar7;
      local_168 = (uint)(*__s == ' ');
      if (*__s == '\t') {
        local_168 = 1;
      }
      pcVar7 = __s + 1;
    } while (local_168 != 0);
    local_164 = local_168;
    if (*__s != '=') {
      sVar3 = strlen(__s);
      do {
        local_160 = sVar3;
        sVar3 = local_160 - 1;
        if (local_160 == 0) break;
        cVar1 = __s[sVar3];
      } while (((cVar1 == '\n' || cVar1 == '\r') || (cVar1 == ' ')) || (cVar1 == '\t'));
      if (local_160 != 0) {
        __s[local_160] = '\0';
        iVar6 = Curl_base64_decode(__s,&local_168,&local_164);
        if (iVar6 != 0) goto LAB_00632f16;
      }
    }
    pcVar7 = (char *)param_1[0x42];
    strlen(pcVar7);
    uVar4 = curlx_uztoui();
    iVar6 = Curl_HMAC_init(Curl_HMAC_MD5,pcVar7,uVar4);
    uVar2 = local_168;
    if (iVar6 == 0) {
      if (local_168 != 0) {
        (*Curl_cfree)();
      }
      iVar6 = 0x1b;
    }
    else {
      if (local_164 != 0) {
        uVar4 = curlx_uztoui();
        Curl_HMAC_update(iVar6,uVar2,uVar4);
      }
      if (local_168 != 0) {
        (*Curl_cfree)();
        local_168 = 0;
      }
      Curl_HMAC_final(iVar6,&local_158);
      curl_msnprintf(auStack_148,0x121,
                     "%s %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                     param_1[0x41],local_158,local_157,local_156,local_155,local_154,local_153,
                     local_152,local_151,local_150,local_14f,local_14e,local_14d,local_14c,local_14b
                     ,local_14a,local_149);
      iVar6 = Curl_base64_encode(iVar5,auStack_148,0,&local_15c,&local_160);
      if (iVar6 == 0) {
        if ((local_15c != 0) && (iVar6 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d), iVar6 == 0)) {
          param_1[0xf6] = 0xe;
        }
        if (local_15c != 0) {
          (*Curl_cfree)();
        }
      }
    }
  }
  else {
    iVar6 = 0x43;
    Curl_failf(iVar5,"Access denied: %d",param_2);
  }
LAB_00632f16:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar6);
}

// ---- FUN_00632f48  @ 0x632f48
/* WARNING: Type propagation algorithm not settling */

void FUN_00632f48(int *param_1,int param_2)

{
  undefined1 *puVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  char *pcVar5;
  int iVar6;
  undefined1 *puVar7;
  char *pcVar8;
  int iVar9;
  uint local_468;
  uint local_464 [3];
  char acStack_458 [8];
  char acStack_450 [12];
  char acStack_444 [12];
  char acStack_438 [16];
  undefined1 local_428 [16];
  undefined1 auStack_418 [36];
  undefined1 auStack_3f4 [36];
  char acStack_3d0 [36];
  char acStack_3ac [64];
  char acStack_36c [64];
  char acStack_32c [128];
  char acStack_2ac [6];
  undefined1 auStack_2a6 [122];
  char acStack_22c [512];
  int local_2c;
  
  iVar4 = *param_1;
  local_2c = __stack_chk_guard;
  local_464[1] = 0;
  local_464[2] = 0;
  memcpy(acStack_450,"00000001",9);
  memcpy(acStack_444,"12345678",9);
  memcpy(acStack_438,"AUTHENTICATE",0xd);
  memcpy(acStack_458,&DAT_008120bd,5);
  memcpy(acStack_2ac,"smtp/",6);
  memset(auStack_2a6,0,0x7a);
  if (param_2 == 0x14e) {
    pcVar8 = (char *)(iVar4 + 0x510);
    do {
      pcVar5 = pcVar8;
      local_468 = (uint)(*pcVar5 == ' ');
      if (*pcVar5 == '\t') {
        local_468 = 1;
      }
      pcVar8 = pcVar5 + 1;
    } while (local_468 != 0);
    local_464[0] = local_468;
    iVar6 = Curl_base64_decode(pcVar5,&local_468,local_464);
    if (iVar6 != 0) goto LAB_006333ac;
    iVar6 = FUN_006329e4(local_468,"nonce=\"",acStack_3ac,0x40,0x22);
    if (iVar6 != 0) {
      iVar6 = FUN_006329e4(local_468,"realm=\"",acStack_32c,0x80,0x22);
      if (iVar6 == 0) {
        strcpy(acStack_32c,"");
      }
      iVar6 = FUN_006329e4(local_468,"algorithm=",acStack_36c,0x40,0x2c);
      if (iVar6 != 0) {
        if (local_468 != 0) {
          (*Curl_cfree)();
          local_468 = 0;
        }
        iVar6 = strcmp(acStack_36c,"md5-sess");
        if (iVar6 == 0) {
          iVar6 = 0;
          do {
            uVar2 = Curl_rand();
            acStack_444[iVar6] = "0123456789abcdef"[uVar2 & 0xf];
            iVar6 = iVar6 + 1;
          } while (iVar6 != 8);
          iVar6 = Curl_MD5_init(Curl_DIGEST_MD5);
          if (iVar6 != 0) {
            pcVar8 = (char *)param_1[0x41];
            strlen(pcVar8);
            uVar3 = curlx_uztoui();
            Curl_MD5_update(iVar6,pcVar8,uVar3);
            Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
            strlen(acStack_32c);
            uVar3 = curlx_uztoui();
            Curl_MD5_update(iVar6,acStack_32c,uVar3);
            Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
            pcVar8 = (char *)param_1[0x42];
            strlen(pcVar8);
            uVar3 = curlx_uztoui();
            Curl_MD5_update(iVar6,pcVar8,uVar3);
            Curl_MD5_final(iVar6,local_428);
            iVar6 = Curl_MD5_init(Curl_DIGEST_MD5);
            if (iVar6 != 0) {
              Curl_MD5_update(iVar6,local_428,0x10);
              Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
              strlen(acStack_3ac);
              uVar3 = curlx_uztoui();
              Curl_MD5_update(iVar6,acStack_3ac,uVar3);
              Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
              strlen(acStack_444);
              iVar9 = 0;
              uVar3 = curlx_uztoui();
              Curl_MD5_update(iVar6,acStack_444,uVar3);
              puVar7 = auStack_418;
              Curl_MD5_final(iVar6,local_428);
              do {
                puVar1 = local_428 + iVar9;
                iVar9 = iVar9 + 1;
                curl_msnprintf(puVar7,3,&DAT_00812094,*puVar1);
                puVar7 = puVar7 + 2;
              } while (iVar9 != 0x10);
              strcat(acStack_2ac,acStack_32c);
              iVar6 = Curl_MD5_init(Curl_DIGEST_MD5);
              if (iVar6 != 0) {
                iVar9 = 0;
                strlen(acStack_438);
                uVar3 = curlx_uztoui();
                Curl_MD5_update(iVar6,acStack_438,uVar3);
                Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
                strlen(acStack_2ac);
                uVar3 = curlx_uztoui();
                Curl_MD5_update(iVar6,acStack_2ac,uVar3);
                Curl_MD5_final(iVar6,local_428);
                puVar7 = auStack_3f4;
                do {
                  puVar1 = local_428 + iVar9;
                  iVar9 = iVar9 + 1;
                  curl_msnprintf(puVar7,3,&DAT_00812094,*puVar1);
                  puVar7 = puVar7 + 2;
                } while (iVar9 != 0x10);
                iVar6 = Curl_MD5_init(Curl_DIGEST_MD5);
                if (iVar6 != 0) {
                  iVar9 = 0;
                  Curl_MD5_update(iVar6,auStack_418,0x20);
                  Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
                  strlen(acStack_3ac);
                  uVar3 = curlx_uztoui();
                  Curl_MD5_update(iVar6,acStack_3ac,uVar3);
                  Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
                  strlen(acStack_450);
                  uVar3 = curlx_uztoui();
                  Curl_MD5_update(iVar6,acStack_450,uVar3);
                  Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
                  strlen(acStack_444);
                  uVar3 = curlx_uztoui();
                  Curl_MD5_update(iVar6,acStack_444,uVar3);
                  Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
                  strlen(acStack_458);
                  uVar3 = curlx_uztoui();
                  Curl_MD5_update(iVar6,acStack_458,uVar3);
                  Curl_MD5_update(iVar6,&DAT_0080cdf3,1);
                  Curl_MD5_update(iVar6,auStack_3f4,0x20);
                  Curl_MD5_final(iVar6,local_428);
                  pcVar8 = acStack_3d0;
                  do {
                    puVar7 = local_428 + iVar9;
                    iVar9 = iVar9 + 1;
                    curl_msnprintf(pcVar8,3,&DAT_00812094,*puVar7);
                    pcVar8 = pcVar8 + 2;
                  } while (iVar9 != 0x10);
                  strcpy(acStack_22c,"username=\"");
                  strcat(acStack_22c,(char *)param_1[0x41]);
                  strcat(acStack_22c,"\",realm=\"");
                  strcat(acStack_22c,acStack_32c);
                  strcat(acStack_22c,"\",nonce=\"");
                  strcat(acStack_22c,acStack_3ac);
                  strcat(acStack_22c,"\",cnonce=\"");
                  strcat(acStack_22c,acStack_444);
                  strcat(acStack_22c,"\",nc=");
                  strcat(acStack_22c,acStack_450);
                  strcat(acStack_22c,",digest-uri=\"");
                  strcat(acStack_22c,acStack_2ac);
                  strcat(acStack_22c,"\",response=");
                  strcat(acStack_22c,acStack_3d0);
                  iVar6 = Curl_base64_encode(iVar4,acStack_22c,0,local_464 + 2,local_464 + 1);
                  if (iVar6 == 0) {
                    if ((local_464[2] != 0) &&
                       (iVar6 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d), iVar6 == 0)) {
                      param_1[0xf6] = 0xb;
                    }
                    if (local_464[2] != 0) {
                      (*Curl_cfree)();
                    }
                  }
                  goto LAB_006333ac;
                }
              }
            }
          }
          iVar6 = 0x1b;
          goto LAB_006333ac;
        }
        goto LAB_0063303e;
      }
    }
    if (local_468 != 0) {
      (*Curl_cfree)();
    }
  }
  else {
    Curl_failf(iVar4,"Access denied: %d",param_2);
  }
LAB_0063303e:
  iVar6 = 0x43;
LAB_006333ac:
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar6);
  }
  return;
}

// ---- FUN_00633440  @ 0x633440
/* WARNING: Type propagation algorithm not settling */

int FUN_00633440(int *param_1)

{
  int iVar1;
  size_t sVar2;
  char *pcVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int local_30;
  undefined4 local_2c;
  int local_28;
  int local_24 [2];
  
  iVar6 = *param_1;
  piVar5 = param_1 + 0xe4;
  local_2c = 0;
  if (param_1[0xf6] == 5) {
    iVar6 = Curl_ssl_connect_nonblocking(param_1,0,param_1 + 0xf8);
    if ((char)param_1[0xf8] == '\0') {
      return iVar6;
    }
    param_1[0xf4] = 0;
    param_1[0xf5] = 0;
    param_1[0x79] = (int)Curl_handler_smtps;
    goto LAB_00633642;
  }
  if (param_1[0xea] != 0) {
    iVar6 = Curl_pp_flushsend(piVar5);
    return iVar6;
  }
  iVar4 = Curl_pp_readresp(param_1[0x4c],piVar5,&local_30,&local_2c);
  if (iVar4 != 0) {
    return iVar4;
  }
  if (param_1[0xf6] != 0x13) {
    *(int *)(iVar6 + 0x8644) = local_30;
  }
  if (local_30 == 0) {
    return 0;
  }
  iVar6 = 0;
  switch(param_1[0xf6]) {
  case 1:
    if (99 < local_30 - 200U) {
      Curl_failf(*param_1,"Got unexpected smtp-server response: %d");
      return 8;
    }
    param_1[0xf4] = 0;
    param_1[0xf5] = 0;
    goto LAB_00633642;
  case 2:
    iVar4 = *param_1;
    if (local_30 - 200U < 100) {
      if ((*(uint *)(iVar4 + 0x2c8) == 0) || ((char)param_1[0x53] != '\0')) goto LAB_006335c0;
      iVar6 = Curl_pp_sendf(param_1 + 0xe4,"STARTTLS");
      iVar4 = 4;
      goto LAB_00633924;
    }
    if (((1 < *(uint *)(iVar4 + 0x2c8)) && ((char)param_1[0x53] == '\0')) ||
       ((char)param_1[0x6f] != '\0')) goto LAB_0063359e;
    param_1[0xf5] = 0;
    iVar1 = Curl_pp_sendf(piVar5,"HELO %s",param_1[0xf2]);
    iVar4 = 3;
    break;
  case 3:
    iVar4 = *param_1;
    if (99 < local_30 - 200U) {
LAB_0063359e:
      Curl_failf(iVar4,"Remote access denied: %d");
      return 9;
    }
    goto switchD_006334e0_caseD_5;
  case 4:
    iVar6 = *param_1;
    if (local_30 != 0xdc) {
      if (*(int *)(iVar6 + 0x2c8) != 1) {
        Curl_failf(iVar6,"STARTTLS denied. %c");
        return 0x40;
      }
LAB_006335c0:
      iVar6 = FUN_00632858(param_1);
      return iVar6;
    }
    if (*(int *)(iVar6 + 0x4f0) == 2) {
      param_1[0xf6] = 5;
      iVar6 = Curl_ssl_connect_nonblocking(param_1,0,param_1 + 0xf8);
      if ((char)param_1[0xf8] == '\0') {
        return iVar6;
      }
      param_1[0x79] = (int)Curl_handler_smtps;
      param_1[0xf4] = 0;
      param_1[0xf5] = 0;
      iVar6 = Curl_pp_sendf(piVar5,"EHLO %s",param_1[0xf2]);
      if (iVar6 == 0) {
        param_1[0xf6] = 2;
        return 0;
      }
      return iVar6;
    }
    iVar6 = Curl_ssl_connect(param_1,0);
    if (iVar6 != 0) {
      return iVar6;
    }
    param_1[0xf4] = 0;
    param_1[0xf5] = 0;
    param_1[0x79] = (int)Curl_handler_smtps;
LAB_00633642:
    iVar1 = Curl_pp_sendf(piVar5,"EHLO %s",param_1[0xf2]);
    iVar4 = 2;
    break;
  default:
    goto switchD_006334e0_caseD_5;
  case 6:
    iVar4 = *param_1;
    local_28 = 0;
    local_24[0] = 0;
    if (local_30 != 0x14e) {
      pcVar3 = "Access denied: %d";
LAB_00633868:
      Curl_failf(iVar4,pcVar3);
      return 0x43;
    }
    iVar4 = FUN_0063279c(param_1,local_24,&local_28);
    iVar6 = local_24[0];
    goto joined_r0x00633742;
  case 7:
    iVar4 = *param_1;
    local_28 = 0;
    local_24[0] = 0;
    if (local_30 != 0x14e) {
      pcVar3 = "Access denied: %d";
      goto LAB_00633868;
    }
    pcVar3 = (char *)param_1[0x41];
    sVar2 = strlen(pcVar3);
    if (sVar2 == 0) {
      local_24[0] = (*Curl_cstrdup)(&DAT_00813abe);
      if (local_24[0] == 0) {
        return 0x1b;
      }
      local_28 = 1;
    }
    else {
      iVar6 = Curl_base64_encode(iVar4,pcVar3,sVar2,local_24,&local_28);
      if (iVar6 != 0) {
        return iVar6;
      }
    }
    iVar4 = 0;
    iVar6 = local_24[0];
    if (local_24[0] == 0) goto LAB_00633850;
    iVar4 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d);
    iVar1 = 8;
    iVar6 = local_24[0];
    if (iVar4 != 0) goto LAB_00633850;
    goto LAB_0063375c;
  case 8:
    iVar4 = *param_1;
    local_28 = 0;
    local_24[0] = 0;
    if (local_30 != 0x14e) {
      pcVar3 = "Access denied: %d";
      goto LAB_00633868;
    }
    pcVar3 = (char *)param_1[0x42];
    sVar2 = strlen(pcVar3);
    if (sVar2 == 0) {
      iVar6 = Curl_pp_sendf(param_1 + 0xe4,&DAT_00813abe);
      return iVar6;
    }
    iVar4 = Curl_base64_encode(iVar4,pcVar3,sVar2,local_24,&local_28);
    iVar6 = local_24[0];
joined_r0x00633742:
    if (iVar4 != 0) {
      return iVar4;
    }
    iVar4 = 0;
    local_24[0] = iVar6;
    if ((iVar6 != 0) &&
       (iVar4 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d), iVar6 = local_24[0], iVar4 == 0)) {
      iVar1 = 0xe;
LAB_0063375c:
      param_1[0xf6] = iVar1;
      iVar6 = local_24[0];
    }
LAB_00633850:
    if (iVar6 != 0) {
      (*Curl_cfree)();
      return iVar4;
    }
    return iVar4;
  case 9:
    iVar6 = FUN_00632d50(param_1,local_30);
    return iVar6;
  case 10:
    iVar6 = FUN_00632f48(param_1,local_30);
    return iVar6;
  case 0xb:
    iVar4 = *param_1;
    if (local_30 != 0x14e) {
      pcVar3 = "Authentication failed: %d";
      goto LAB_00633868;
    }
    iVar1 = Curl_pp_sendf(param_1 + 0xe4,&DAT_00801f93);
    iVar4 = 0xe;
    break;
  case 0xc:
    iVar4 = *param_1;
    local_28 = 0;
    local_24[0] = 0;
    if (local_30 != 0x14e) {
      pcVar3 = "Access denied: %d";
      goto LAB_00633868;
    }
    iVar6 = Curl_ntlm_create_type1_message
                      (param_1[0x41],param_1[0x42],param_1 + 0x95,&local_28,local_24);
    if (iVar6 != 0) {
      return iVar6;
    }
    iVar4 = 0;
    iVar6 = local_28;
    if (local_28 == 0) goto LAB_00633850;
    iVar4 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d);
    iVar1 = 0xd;
    iVar6 = local_28;
    if (iVar4 != 0) goto LAB_00633850;
    goto LAB_0063384a;
  case 0xd:
    iVar4 = *param_1;
    local_28 = 0;
    local_24[0] = 0;
    if (local_30 != 0x14e) {
      pcVar3 = "Access denied: %d";
      goto LAB_00633868;
    }
    iVar6 = Curl_ntlm_decode_type2_message(iVar4,iVar4 + 0x510,param_1 + 0x95);
    if (iVar6 != 0) {
      return iVar6;
    }
    iVar6 = Curl_ntlm_create_type3_message
                      (*param_1,param_1[0x41],param_1[0x42],param_1 + 0x95,&local_28,local_24);
    if (iVar6 != 0) {
      return iVar6;
    }
    iVar4 = 0;
    iVar6 = local_28;
    if ((local_28 == 0) ||
       (iVar4 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d), iVar6 = local_28, iVar4 != 0))
    goto LAB_00633850;
    iVar1 = 0xe;
LAB_0063384a:
    param_1[0xf6] = iVar1;
    iVar6 = local_28;
    goto LAB_00633850;
  case 0xe:
    iVar4 = *param_1;
    if (local_30 != 0xeb) {
      pcVar3 = "Authentication failed: %d";
      goto LAB_00633868;
    }
    goto switchD_006334e0_caseD_5;
  case 0xf:
    iVar6 = *param_1;
    if (local_30 - 200U < 100) {
      param_1[0xf7] = *(int *)(iVar6 + 0x394);
      iVar6 = FUN_006323b8(param_1);
      return iVar6;
    }
LAB_0063389e:
    Curl_failf(iVar6,"Access denied: %d");
    param_1[0xf6] = 0;
    return 0x43;
  case 0x10:
    iVar6 = *param_1;
    if (99 < local_30 - 200U) goto LAB_0063389e;
    if (param_1[0xf7] != 0) {
      param_1[0xf7] = *(int *)(param_1[0xf7] + 4);
      iVar6 = FUN_006323b8(param_1);
      if (iVar6 != 0) {
        return iVar6;
      }
      if (param_1[0xf7] != 0) {
        return 0;
      }
    }
    iVar1 = Curl_pp_sendf(param_1 + 0xe4,&DAT_00813cb4);
    iVar4 = 0x11;
    break;
  case 0x11:
    if (local_30 == 0x162) {
      Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff,0,0,0,
                          **(undefined4 **)(*param_1 + 0x861c));
      param_1[0xf6] = 0;
      return 0;
    }
    param_1[0xf6] = 0;
    return 0x38;
  case 0x12:
    if (local_30 == 0xfa) {
      iVar6 = 0;
    }
    else {
      iVar6 = 0x38;
    }
switchD_006334e0_caseD_5:
    iVar4 = 0;
    goto LAB_00633924;
  }
  iVar6 = 0;
  if (iVar1 != 0) {
    return iVar1;
  }
LAB_00633924:
  param_1[0xf6] = iVar4;
  return iVar6;
}

// ---- FUN_00633fa8  @ 0x633fa8
undefined4 FUN_00633fa8(int param_1)

{
  if (*(int *)(param_1 + 0x390) != 0) {
    (*Curl_cfree)();
    *(undefined4 *)(param_1 + 0x390) = 0;
  }
  return 0;
}

// ---- FUN_00633fcc  @ 0x633fcc
undefined4 FUN_00633fcc(int param_1,int *param_2,size_t *param_3,undefined1 *param_4)

{
  int iVar1;
  int iVar2;
  void *__dest;
  undefined4 uVar3;
  code *pcVar4;
  size_t __n;
  char *pcVar5;
  uint uVar6;
  int iVar7;
  
  __n = *param_3;
  if (param_2[0xe4] == 0) {
    pcVar5 = *(char **)(param_1 + 0x74);
LAB_006340f6:
    while (0 < (int)__n) {
      if (*pcVar5 != '$') goto LAB_00634116;
      if ((int)__n < 5) {
LAB_006340de:
        *param_4 = 1;
        goto LAB_00634116;
      }
      param_2[0xe6] = (uint)(byte)pcVar5[1];
      uVar6 = (uint)CONCAT11(pcVar5[2],pcVar5[3]);
      iVar1 = uVar6 + 4;
      if ((int)__n < iVar1) goto LAB_006340de;
      iVar7 = *param_2;
      if (iVar1 == 0) {
        pcVar5 = "Cannot write a 0 size RTP packet.";
LAB_0063409c:
        Curl_failf(iVar7,pcVar5);
        Curl_failf(param_1,"Got an error writing an RTP packet");
        *param_4 = 0;
        if (param_2[0xe4] != 0) {
          (*Curl_cfree)();
        }
        param_2[0xe4] = 0;
        param_2[0xe5] = 0;
        return 0x17;
      }
      pcVar4 = *(code **)(iVar7 + 0x170);
      if (pcVar4 == (code *)0x0) {
        pcVar4 = *(code **)(iVar7 + 0x168);
      }
      iVar2 = (*pcVar4)(pcVar5,1,iVar1,*(undefined4 *)(iVar7 + 300));
      if (iVar2 == 0x10000001) {
        pcVar5 = "Cannot pause RTP";
        goto LAB_0063409c;
      }
      if (iVar2 != iVar1) {
        pcVar5 = "Failed writing RTP data";
        goto LAB_0063409c;
      }
      __n = __n + (-4 - uVar6);
      pcVar5 = pcVar5 + uVar6 + 4;
      if (*(int *)(param_1 + 0x398) == 0xb) {
        *(uint *)(param_1 + 0xf4) = *(uint *)(param_1 + 0xf4) & 0xfffffffe;
      }
    }
    if (__n != 0) {
LAB_00634116:
      if (*pcVar5 == '$') {
        __dest = (void *)(*Curl_cmalloc)(__n);
        if (__dest != (void *)0x0) {
          memcpy(__dest,pcVar5,__n);
          if (param_2[0xe4] != 0) {
            (*Curl_cfree)();
          }
          param_2[0xe4] = (int)__dest;
          param_2[0xe5] = __n;
          *param_3 = 0;
          return 0;
        }
        goto LAB_0063412e;
      }
    }
    *(size_t *)(param_1 + 0x74) = *(int *)(param_1 + 0x74) + (*param_3 - __n);
    *param_3 = __n;
    if (param_2[0xe4] != 0) {
      (*Curl_cfree)();
    }
    uVar3 = 0;
    param_2[0xe4] = 0;
    param_2[0xe5] = 0;
  }
  else {
    iVar1 = (*Curl_crealloc)(param_2[0xe4],param_2[0xe5] + __n);
    if (iVar1 != 0) {
      param_2[0xe4] = iVar1;
      memcpy((void *)(iVar1 + param_2[0xe5]),*(void **)(param_1 + 0x74),*param_3);
      pcVar5 = (char *)param_2[0xe4];
      __n = param_2[0xe5] + *param_3;
      param_2[0xe5] = __n;
      goto LAB_006340f6;
    }
LAB_0063412e:
    if (param_2[0xe4] != 0) {
      (*Curl_cfree)();
    }
    uVar3 = 0x1b;
    param_2[0xe4] = 0;
    param_2[0xe5] = 0;
  }
  return uVar3;
}

// ---- FUN_006341e4  @ 0x6341e4
void FUN_006341e4(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  Curl_http_connect();
  if (*(int *)(iVar1 + 0x8610) == 0) {
    *(undefined4 *)(iVar1 + 0x8610) = 1;
  }
  if (*(int *)(iVar1 + 0x8614) == 0) {
    *(undefined4 *)(iVar1 + 0x8614) = 1;
  }
  param_1[0xe6] = -1;
  return;
}

// ---- FUN_0063420c  @ 0x63420c
undefined4 FUN_0063420c(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = *param_1;
  iVar3 = *(int *)(iVar2 + 0x861c);
  if (*(int *)(iVar2 + 0x398) == 0xb) {
    param_3 = 1;
  }
  uVar1 = Curl_http_done(param_1,param_2,param_3,*(int *)(iVar2 + 0x398),param_4);
  if (iVar3 != 0) {
    if (*(int *)(iVar3 + 0x60) == *(int *)(iVar3 + 100) || *(int *)(iVar2 + 0x398) == 0xb) {
      if ((*(int *)(iVar2 + 0x398) == 0xb) && (param_1[0xe6] == -1)) {
        Curl_infof(iVar2,"Got an RTP Receive with a CSeq of %ld\n",*(int *)(iVar3 + 100));
      }
    }
    else {
      uVar1 = 0x55;
      Curl_failf(iVar2,"The CSeq of this request %ld did not match the response %ld");
    }
  }
  return uVar1;
}

// ---- FUN_00634c44  @ 0x634c44
int FUN_00634c44(int *param_1,undefined1 *param_2)

{
  size_t sVar1;
  int iVar2;
  int iVar3;
  size_t sVar4;
  char *pcVar5;
  char *pcVar6;
  int iVar7;
  int iVar8;
  int local_30;
  undefined1 auStack_2c [8];
  
  iVar7 = *param_1;
  iVar8 = param_1[0x4c];
  pcVar5 = *(char **)(iVar7 + 0x85fc);
  *param_2 = 1;
  sVar1 = strlen(pcVar5);
  if (sVar1 < 3) {
    pcVar6 = "";
    pcVar5 = (char *)0x0;
  }
  else {
    pcVar6 = pcVar5 + 2;
    sVar1 = strlen(pcVar6);
    for (sVar4 = 0; sVar4 != sVar1; sVar4 = sVar4 + 1) {
      if (pcVar5[2] == '?') {
        pcVar5[2] = '\t';
      }
      pcVar5 = pcVar5 + 1;
    }
    pcVar6 = (char *)curl_easy_unescape(iVar7,pcVar6,0,auStack_2c);
    pcVar5 = pcVar6;
    if (pcVar6 == (char *)0x0) {
      return 0x1b;
    }
  }
  strlen(pcVar6);
  iVar2 = curlx_uztosz();
  while (iVar3 = Curl_write(param_1,iVar8,pcVar6,iVar2,&local_30), iVar3 == 0) {
    iVar3 = Curl_client_write(param_1,2,pcVar6,local_30);
    if (iVar3 != 0) goto LAB_00634cf2;
    iVar2 = iVar2 - local_30;
    if (iVar2 < 1) {
      if (pcVar5 != (char *)0x0) {
        free(pcVar5);
      }
      iVar8 = Curl_sendf(iVar8,param_1,&DAT_0080e2c3);
      if (iVar8 != 0) {
        Curl_failf(iVar7,"Failed sending Gopher request");
        return iVar8;
      }
      iVar8 = Curl_client_write(param_1,2,&DAT_0080e2c3,2);
      if (iVar8 != 0) {
        return iVar8;
      }
      Curl_setup_transfer(param_1,0,0xffffffff,0xffffffff,0,iVar7 + 0x38,0xffffffff,0);
      return 0;
    }
    pcVar6 = pcVar6 + local_30;
    Curl_socket_check(0xffffffff,0xffffffff,iVar8,100);
  }
  Curl_failf(iVar7,"Failed sending Gopher request");
LAB_00634cf2:
  if (pcVar5 != (char *)0x0) {
    free(pcVar5);
  }
  return iVar3;
}

// ---- FUN_00635738  @ 0x635738
void FUN_00635738(int param_1,char *param_2,int param_3)

{
  size_t sVar1;
  ssize_t sVar2;
  int *piVar3;
  undefined4 uVar4;
  char *__buf;
  bool bVar5;
  char local_ec;
  char local_eb;
  char local_ea;
  undefined1 auStack_e9 [197];
  int local_24;
  
  local_24 = __stack_chk_guard;
  sVar1 = strlen(param_2);
  do {
    while( true ) {
      if (sVar1 == 0) {
        __buf = &local_ec;
        sVar1 = 200;
        goto LAB_0063578e;
      }
      sVar2 = send(*(int *)(param_1 + 0x274),param_2,sVar1,0x4000);
      if (sVar2 == -1) break;
      param_2 = param_2 + sVar2;
      sVar1 = sVar1 - sVar2;
    }
    piVar3 = (int *)__errno();
  } while (*piVar3 == 4);
LAB_00635838:
  uVar4 = 9;
LAB_0063583a:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
LAB_0063578e:
  sVar2 = recv(*(int *)(param_1 + 0x274),__buf,sVar1,0);
  if (sVar2 == -1) {
    piVar3 = (int *)__errno();
    if (*piVar3 != 4) goto LAB_00635838;
LAB_006357de:
    if (sVar1 == 0) goto LAB_00635838;
    goto LAB_0063578e;
  }
  if (sVar2 == 0) goto LAB_00635838;
  if (__buf[sVar2 + -1] != '\n') {
    __buf = __buf + sVar2;
    sVar1 = sVar1 - sVar2;
    goto LAB_006357de;
  }
  __buf[sVar2 + -1] = '\0';
  if ((sVar2 == 3 && param_3 == 1) || (sVar2 < 4)) goto LAB_00635838;
  if (param_3 == 1) {
    if (local_ec != 'Y') goto LAB_00635838;
    bVar5 = local_eb == 'R';
  }
  else {
    if (param_3 != 2) goto LAB_00635822;
    if (local_ec != 'K') {
      if (local_ec == 'A') {
        bVar5 = local_eb == 'F';
        goto LAB_00635818;
      }
      goto LAB_00635838;
    }
    bVar5 = local_eb == 'K';
  }
LAB_00635818:
  if ((!bVar5) || (local_ea != ' ')) goto LAB_00635838;
LAB_00635822:
  uVar4 = curl_maprintf("NTLM %.*s",sVar2 + -4,auStack_e9);
  *(undefined4 *)(param_1 + 0x280) = uVar4;
  uVar4 = 0;
  goto LAB_0063583a;
}

// ---- FUN_00635c8c  @ 0x635c8c
void FUN_00635c8c(uchar *param_1,DES_key_schedule *param_2)

{
  uchar local_1c;
  byte local_1b;
  byte local_1a;
  byte local_19;
  byte local_18;
  byte local_17;
  byte local_16;
  uchar local_15;
  int local_14;
  
  local_14 = __stack_chk_guard;
  local_1c = *param_1;
  local_1b = param_1[1] >> 1 | local_1c << 7;
  local_1a = param_1[2] >> 2 | param_1[1] << 6;
  local_19 = param_1[3] >> 3 | param_1[2] << 5;
  local_18 = param_1[4] >> 4 | param_1[3] << 4;
  local_17 = param_1[5] >> 5 | param_1[4] << 3;
  local_15 = param_1[6] << 1;
  local_16 = param_1[6] >> 6 | param_1[5] << 2;
  DES_set_odd_parity((DES_cblock *)&local_1c);
  DES_set_key((const_DES_cblock *)&local_1c,param_2);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_00635e78  @ 0x635e78
void FUN_00635e78(undefined1 *param_1,int param_2,int param_3)

{
  undefined1 uVar1;
  int iVar2;
  
  for (iVar2 = 0; iVar2 != param_3; iVar2 = iVar2 + 1) {
    uVar1 = *(undefined1 *)(param_2 + iVar2);
    param_1[1] = 0;
    *param_1 = uVar1;
    param_1 = param_1 + 2;
  }
  return;
}

// ---- FUN_00636c5c  @ 0x636c5c
char * FUN_00636c5c(BIO *param_1,undefined4 *param_2)

{
  BUF_MEM *str;
  int iVar1;
  uint uVar2;
  ulong uVar3;
  int iVar4;
  char *pcVar5;
  uchar *puVar6;
  uchar *puVar7;
  int iVar8;
  uchar *puVar9;
  bool bVar10;
  uchar *local_54 [3];
  int local_48;
  int local_44;
  int iStack_40;
  uint local_3c [6];
  
  str = BUF_MEM_new();
  if (str == (BUF_MEM *)0x0) {
    ERR_put_error(0xd,0x6b,0x41,"jni/../../openssl-android/crypto/asn1/a_d2i_fp.c",0x9c);
  }
  else {
    ERR_clear_error();
    puVar6 = (uchar *)0x0;
    puVar7 = (uchar *)0x0;
    iVar8 = 0;
LAB_00636c94:
    do {
      if ((uint)((int)puVar6 - (int)puVar7) < 9) {
        puVar9 = puVar7 + 8;
        if ((puVar9 < puVar6) || (iVar1 = BUF_MEM_grow_clean(str,(size_t)puVar9), iVar1 == 0)) {
          iVar8 = 0xa9;
LAB_00636d62:
          iVar1 = 0x41;
        }
        else {
          uVar2 = BIO_read(param_1,str->data + (int)puVar6,(int)puVar9 - (int)puVar6);
          if (((uint)(puVar6 == puVar7) & uVar2 >> 0x1f) == 0) {
            if (((int)uVar2 < 1) ||
               (bVar10 = CARRY4(uVar2,(uint)puVar6), puVar6 = puVar6 + uVar2, !bVar10))
            goto LAB_00636ce8;
            iVar8 = 0xb6;
            goto LAB_00636da6;
          }
          iVar8 = 0xaf;
LAB_00636d82:
          iVar1 = 0x8e;
        }
        goto LAB_00636dae;
      }
LAB_00636ce8:
      pcVar5 = str->data;
      local_54[0] = (uchar *)(pcVar5 + (int)puVar7);
      local_48 = ASN1_get_object(local_54,(long *)local_3c,&local_44,&iStack_40,
                                 (int)puVar6 - (int)puVar7);
      if (local_48 << 0x18 < 0) {
        uVar3 = ERR_peek_error();
        if ((uVar3 & 0xfff) != 0x9b) goto LAB_00636dd0;
        ERR_clear_error();
      }
      puVar7 = local_54[0] + ((int)puVar7 - (int)(pcVar5 + (int)puVar7));
      if (local_48 << 0x1f < 0) {
        iVar8 = iVar8 + 1;
        goto LAB_00636c94;
      }
      if (((iVar8 == 0) || (local_3c[0] != 0)) || (local_44 != 0)) {
        if ((uint)((int)puVar6 - (int)puVar7) < local_3c[0]) {
          puVar9 = puVar7 + local_3c[0];
          iVar1 = (int)puVar9 - (int)puVar6;
          if ((iVar1 < 0) || (puVar9 < puVar6)) {
            iVar8 = 0xed;
            goto LAB_00636da6;
          }
          iVar4 = BUF_MEM_grow_clean(str,(size_t)puVar9);
          if (iVar4 == 0) {
            iVar8 = 0xf2;
            goto LAB_00636d62;
          }
          for (; iVar1 != 0; iVar1 = iVar1 - iVar4) {
            iVar4 = BIO_read(param_1,str->data + (int)puVar6,iVar1);
            if (iVar4 < 1) {
              iVar8 = 0xfb;
              goto LAB_00636d82;
            }
            puVar6 = puVar6 + iVar4;
          }
        }
        bVar10 = CARRY4((uint)puVar7,local_3c[0]);
        puVar7 = puVar7 + local_3c[0];
        if (bVar10) {
          iVar8 = 0x106;
          goto LAB_00636da6;
        }
        if (iVar8 == 0) break;
        goto LAB_00636c94;
      }
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    if (-1 < (int)puVar7) {
      *param_2 = str;
      return (char *)puVar7;
    }
    iVar8 = 0x115;
LAB_00636da6:
    iVar1 = 0x9b;
LAB_00636dae:
    ERR_put_error(0xd,0x6b,iVar1,"jni/../../openssl-android/crypto/asn1/a_d2i_fp.c",iVar8);
LAB_00636dd0:
    BUF_MEM_free(str);
  }
  return (char *)0xffffffff;
}

// ---- FUN_00637b14  @ 0x637b14
undefined8 FUN_00637b14(byte *param_1,uint param_2,int param_3,code *param_4,undefined4 param_5)

{
  int iVar1;
  byte *pbVar2;
  byte *str;
  uint local_2c;
  int iStack_28;
  
  str = param_1;
  local_2c = param_2;
  iStack_28 = param_3;
  do {
    if (param_2 == 0) {
      iVar1 = 1;
      break;
    }
    if (param_3 == 0x1001) {
      pbVar2 = str + 1;
      local_2c = (uint)*str;
      param_2 = param_2 - 1;
    }
    else if (param_3 == 0x1002) {
      param_2 = param_2 - 2;
      pbVar2 = str + 2;
      local_2c = (uint)CONCAT11(*str,str[1]);
    }
    else if (param_3 == 0x1004) {
      param_2 = param_2 - 4;
      pbVar2 = str + 4;
      local_2c = (uint)str[1] << 0x10 | (uint)*str << 0x18 | (uint)str[3] | (uint)str[2] << 8;
    }
    else {
      iVar1 = UTF8_getc(str,param_2,&local_2c);
      if (iVar1 < 0) {
        iVar1 = -1;
        break;
      }
      param_2 = param_2 - iVar1;
      pbVar2 = str + iVar1;
    }
    str = pbVar2;
  } while ((param_4 == (code *)0x0) || (iVar1 = (*param_4)(local_2c,param_5), 0 < iVar1));
  return CONCAT44(param_1,iVar1);
}

// ---- FUN_00637ba2  @ 0x637ba2
undefined4 FUN_00637ba2(ulong param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = UTF8_putc((uchar *)*param_2,0xff,param_1);
  *param_2 = *param_2 + iVar1;
  return 1;
}

// ---- FUN_00637bba  @ 0x637bba
undefined4 FUN_00637bba(ulong param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_2;
  iVar1 = UTF8_putc((uchar *)0x0,-1,param_1);
  *param_2 = iVar2 + iVar1;
  return 1;
}

// ---- FUN_00637bd4  @ 0x637bd4
undefined4 FUN_00637bd4(uint param_1,uint *param_2)

{
  char *pcVar1;
  uint uVar2;
  
  uVar2 = *param_2;
  if (((int)(uVar2 << 0x1e) < 0) &&
     ((0x7f < param_1 ||
      ((((0x19 < param_1 - 0x61 && (0x19 < param_1 - 0x41)) && (9 < param_1 - 0x30)) &&
       ((param_1 != 0x20 && (pcVar1 = strchr("\'()+,-./:=?",param_1), pcVar1 == (char *)0x0))))))))
  {
    uVar2 = uVar2 & 0xfffffffd;
  }
  if (((uint)(0x7f < param_1) & uVar2 >> 4) != 0) {
    uVar2 = uVar2 & 0xffffffef;
  }
  if (((uint)(0xff < param_1) & uVar2 >> 2) != 0) {
    uVar2 = uVar2 & 0xfffffffb;
  }
  if (((uint)(0xffff < param_1) & uVar2 >> 0xb) != 0) {
    uVar2 = uVar2 & 0xfffff7ff;
  }
  if (uVar2 == 0) {
    return 0xffffffff;
  }
  *param_2 = uVar2;
  return 1;
}

// ---- FUN_00638696  @ 0x638696
int FUN_00638696(undefined4 *param_1,undefined4 *param_2)

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

// ---- FUN_00638dbc  @ 0x638dbc
undefined8 FUN_00638dbc(code *param_1,int param_2,byte *param_3,int param_4)

{
  int iVar1;
  byte *pbVar2;
  undefined4 local_24;
  byte *pbStack_20;
  
  if (param_2 == 0) {
LAB_00638df8:
    param_4 = param_4 << 1;
  }
  else {
    pbVar2 = param_3;
    local_24 = param_2;
    pbStack_20 = param_3;
    do {
      if (pbVar2 == param_3 + param_4) goto LAB_00638df8;
      local_24._0_2_ = CONCAT11("0123456789ABCDEF"[*pbVar2 & 0xf],"0123456789ABCDEF"[*pbVar2 >> 4]);
      iVar1 = (*param_1)(param_2,&local_24,2);
      pbVar2 = pbVar2 + 1;
    } while (iVar1 != 0);
    param_4 = -1;
  }
  return CONCAT44(param_1,param_4);
}

// ---- FUN_00638e0c  @ 0x638e0c
void FUN_00638e0c(uint param_1,uint param_2,undefined1 *param_3,code *param_4,undefined4 param_5)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined *puVar4;
  undefined1 local_29;
  char acStack_28 [12];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if (0xffff < param_1) {
    BIO_snprintf(acStack_28,0xb,"\\W%08lX",param_1);
    iVar1 = (*param_4)(param_5,acStack_28,10);
    if (iVar1 == 0) {
      uVar2 = 0xffffffff;
    }
    else {
      uVar2 = 10;
    }
    goto LAB_00638f14;
  }
  if (0xff < param_1) {
    BIO_snprintf(acStack_28,0xb,"\\U%04lX",param_1);
    iVar1 = (*param_4)(param_5,acStack_28,6);
    if (iVar1 == 0) {
      uVar2 = 0xffffffff;
    }
    else {
      uVar2 = 6;
    }
    goto LAB_00638f14;
  }
  local_29 = (undefined1)param_1;
  if ((int)(param_1 << 0x18) < 0) {
    uVar3 = param_2 & 4;
  }
  else {
    uVar3 = (byte)(&DAT_0083a389)[param_1 & 0xff] & param_2;
  }
  if ((uVar3 & 0x61) == 0) {
    if ((uVar3 & 6) != 0) {
      BIO_snprintf(acStack_28,0xb,"\\%02X");
      iVar1 = (*param_4)(param_5,acStack_28,3);
      if (iVar1 == 0) {
        uVar2 = 0xffffffff;
      }
      else {
        uVar2 = 3;
      }
      goto LAB_00638f14;
    }
    if (((param_1 & 0xff) == 0x5c) && ((param_2 & 0xf) != 0)) {
      uVar2 = 2;
      puVar4 = &DAT_00814977;
      goto LAB_00638eec;
    }
  }
  else {
    if (-1 < (int)(uVar3 << 0x1c)) {
      iVar1 = (*param_4)(param_5,&DAT_0081496f,1);
      if (iVar1 == 0) {
        uVar2 = 0xffffffff;
        goto LAB_00638f14;
      }
      puVar4 = &local_29;
      uVar2 = 1;
LAB_00638eec:
      iVar1 = (*param_4)(param_5,puVar4,uVar2);
      if (iVar1 == 0) {
        uVar2 = 0xffffffff;
      }
      else {
        uVar2 = 2;
      }
      goto LAB_00638f14;
    }
    if (param_3 != (undefined1 *)0x0) {
      *param_3 = 1;
    }
  }
  iVar1 = (*param_4)(param_5,&local_29,1);
  if (iVar1 == 0) {
    uVar2 = 0xffffffff;
  }
  else {
    uVar2 = 1;
  }
LAB_00638f14:
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- FUN_00638f40  @ 0x638f40
int FUN_00638f40(byte *param_1,int param_2,uint param_3,byte param_4,undefined4 param_5,
                undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  int iVar2;
  byte *str;
  int iVar3;
  byte bVar4;
  int iVar5;
  ulong local_34;
  uchar local_30 [12];
  
  iVar3 = 0;
  str = param_1;
  while( true ) {
    while( true ) {
      if (str == param_1 + param_2) {
        return iVar3;
      }
      bVar4 = 0;
      if ((str == param_1) && (bVar4 = 0, (param_4 & 1) != 0)) {
        bVar4 = 0x20;
      }
      switch(param_3 & 7) {
      case 0:
        iVar1 = UTF8_getc(str,param_2,&local_34);
        if (iVar1 < 0) {
          return -1;
        }
        str = str + iVar1;
        break;
      case 1:
        local_34 = (ulong)*str;
        str = str + 1;
        break;
      case 2:
        local_34 = (ulong)CONCAT11(*str,str[1]);
        str = str + 2;
        break;
      default:
        goto LAB_00639032;
      case 4:
        local_34 = (uint)str[1] << 0x10 | (uint)*str << 0x18 | (uint)str[3] | (uint)str[2] << 8;
        str = str + 4;
      }
      if ((str == param_1 + param_2) && ((param_4 & 1) != 0)) {
        bVar4 = 0x40;
      }
      if ((param_3 & 8) == 0) break;
      iVar1 = UTF8_putc(local_30,6,local_34);
      for (iVar5 = 0; iVar5 < iVar1; iVar5 = iVar5 + 1) {
        iVar2 = FUN_00638e0c(local_30[iVar5],bVar4 | param_4,param_5,param_6,param_7);
        if (iVar2 < 0) {
          return -1;
        }
        iVar3 = iVar3 + iVar2;
      }
    }
    iVar1 = FUN_00638e0c(local_34,bVar4 | param_4,param_5,param_6,param_7);
    if (iVar1 < 0) break;
    iVar3 = iVar3 + iVar1;
  }
LAB_00639032:
  return -1;
}

// ---- FUN_0063903c  @ 0x63903c
int FUN_0063903c(code *param_1,int param_2,uint param_3,_union_263 param_4)

{
  char *__s;
  size_t sVar1;
  int iVar2;
  uchar *ptr;
  int iVar3;
  uint uVar4;
  char local_2d;
  uchar *local_2c;
  ASN1_TYPE local_28;
  
  local_2d = '\0';
  iVar3 = (param_4.asn1_string)->type;
  iVar2 = 0;
  if ((param_3 & 0x40) != 0) {
    __s = ASN1_tag2str(iVar3);
    sVar1 = strlen(__s);
    iVar2 = (*param_1)(param_2,__s,sVar1);
    if (iVar2 == 0) {
      return -1;
    }
    iVar2 = (*param_1)(param_2,&DAT_0080cdf3,1);
    if (iVar2 == 0) {
      return -1;
    }
    iVar2 = sVar1 + 1;
  }
  if ((param_3 & 0x80) != 0) {
LAB_006390ac:
    iVar3 = (*param_1)(param_2,&DAT_008110cc,1);
    if (iVar3 == 0) {
      return -1;
    }
    if ((param_3 & 0x200) == 0) {
      iVar3 = FUN_00638dbc(param_1,param_2,(param_4.asn1_string)->data,(param_4.asn1_string)->length
                          );
    }
    else {
      local_28.type = (param_4.asn1_string)->type;
      local_28.value = param_4;
      iVar3 = i2d_ASN1_TYPE(&local_28,(uchar **)0x0);
      ptr = CRYPTO_malloc(iVar3,"jni/../../openssl-android/crypto/asn1/a_strex.c",0x119);
      if (ptr == (uchar *)0x0) {
        return -1;
      }
      local_2c = ptr;
      i2d_ASN1_TYPE(&local_28,&local_2c);
      iVar3 = FUN_00638dbc(param_1,param_2,ptr,iVar3);
      CRYPTO_free(ptr);
    }
    if (iVar3 < 0) {
      return -1;
    }
    return iVar2 + iVar3 + 1;
  }
  if ((param_3 & 0x20) == 0) {
    if ((iVar3 - 1U < 0x1e) && (uVar4 = (uint)(char)(&DAT_0083a409)[iVar3], uVar4 != 0xffffffff))
    goto LAB_00639122;
    if ((param_3 & 0x100) != 0) goto LAB_006390ac;
  }
  uVar4 = 1;
LAB_00639122:
  if ((param_3 & 0x10) != 0) {
    if (uVar4 == 0) {
      uVar4 = 1;
    }
    else {
      uVar4 = uVar4 | 8;
    }
  }
  iVar3 = FUN_00638f40((param_4.asn1_string)->data,(param_4.asn1_string)->length,uVar4,param_3 & 0xf
                       ,&local_2d,param_1,0);
  if (-1 < iVar3) {
    iVar2 = iVar2 + iVar3;
    if (local_2d != '\0') {
      iVar2 = iVar2 + 2;
    }
    if (param_2 == 0) {
      return iVar2;
    }
    if (((local_2d == '\0') || (iVar3 = (*param_1)(param_2,&DAT_0080e2f4,1), iVar3 != 0)) &&
       (iVar3 = FUN_00638f40((param_4.asn1_string)->data,(param_4.asn1_string)->length,uVar4,
                             param_3 & 0xf,0,param_1,param_2), -1 < iVar3)) {
      if (local_2d == '\0') {
        return iVar2;
      }
      iVar3 = (*param_1)(param_2,&DAT_0080e2f4,1);
      if (iVar3 == 0) {
        return -1;
      }
      return iVar2;
    }
  }
  return -1;
}

// ---- FUN_006391c4  @ 0x6391c4
bool FUN_006391c4(FILE *param_1,void *param_2,size_t param_3)

{
  size_t sVar1;
  
  if (param_1 != (FILE *)0x0) {
    sVar1 = fwrite(param_2,1,param_3,param_1);
    return sVar1 == param_3;
  }
  return true;
}

// ---- FUN_006391e2  @ 0x6391e2
bool FUN_006391e2(BIO *param_1,void *param_2,int param_3)

{
  int iVar1;
  
  if (param_1 != (BIO *)0x0) {
    iVar1 = BIO_write(param_1,param_2,param_3);
    return iVar1 == param_3;
  }
  return true;
}

// ---- FUN_006391fc  @ 0x6391fc
void FUN_006391fc(code *param_1,undefined4 param_2,X509_NAME *param_3,uint param_4,uint param_5)

{
  X509_NAME_ENTRY *ne;
  int iVar1;
  ASN1_OBJECT *o;
  ASN1_STRING *pAVar2;
  char *__s;
  size_t sVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  undefined *puVar8;
  int iVar9;
  undefined *puVar10;
  int iVar11;
  undefined *puVar12;
  uint local_c0;
  uint local_bc;
  int local_b8;
  int local_b4;
  int local_ac;
  int local_a8;
  char acStack_7c [80];
  int local_2c;
  
  param_4 = param_4 & ~((int)param_4 >> 0x1f);
  local_2c = __stack_chk_guard;
  for (iVar9 = 0; iVar9 < (int)param_4; iVar9 = iVar9 + 1) {
    iVar1 = (*param_1)(param_2,&DAT_0080c518,1);
    if (iVar1 == 0) goto LAB_00639426;
  }
  uVar7 = param_5 & 0xf0000;
  if (uVar7 == 0x20000) {
    puVar8 = &DAT_00800fa8;
LAB_0063925c:
    local_b4 = 2;
    local_c0 = 3;
    puVar10 = &UNK_008149aa;
    local_bc = 0;
LAB_00639274:
    if ((param_5 & 0x800000) == 0) {
      local_a8 = 1;
      puVar12 = &DAT_00813abe;
    }
    else {
      local_a8 = 3;
      puVar12 = &DAT_008111fe;
    }
    uVar7 = param_5 & 0x600000;
    iVar9 = X509_NAME_entry_count(param_3);
    local_ac = -1;
    for (local_b8 = 0; local_b8 < iVar9; local_b8 = local_b8 + 1) {
      iVar1 = local_b8;
      if ((param_5 & 0x100000) != 0) {
        iVar1 = (iVar9 + -1) - local_b8;
      }
      ne = X509_NAME_get_entry(param_3,iVar1);
      if (local_ac != -1) {
        if (local_ac == ne->set) {
          iVar1 = (*param_1)(param_2,puVar10,local_c0);
          uVar6 = local_c0;
          if (iVar1 == 0) goto LAB_00639426;
        }
        else {
          iVar1 = (*param_1)(param_2,puVar8,local_b4);
          if (iVar1 == 0) goto LAB_00639426;
          for (iVar1 = 0; iVar1 < (int)local_bc; iVar1 = iVar1 + 1) {
            iVar11 = (*param_1)(param_2,&DAT_0080c518,1);
            if (iVar11 == 0) goto LAB_00639426;
          }
          param_4 = param_4 + local_b4;
          uVar6 = local_bc;
        }
        param_4 = param_4 + uVar6;
      }
      local_ac = ne->set;
      o = X509_NAME_ENTRY_get_object(ne);
      pAVar2 = X509_NAME_ENTRY_get_data(ne);
      iVar1 = OBJ_obj2nid(o);
      if (uVar7 != 0x600000) {
        if (iVar1 == 0 || uVar7 == 0x400000) {
          OBJ_obj2txt(acStack_7c,0x50,o,1);
          iVar11 = 0;
          __s = acStack_7c;
        }
        else if (uVar7 == 0) {
          iVar11 = 10;
          __s = OBJ_nid2sn(iVar1);
        }
        else if (uVar7 == 0x200000) {
          iVar11 = 0x19;
          __s = OBJ_nid2ln(iVar1);
        }
        else {
          __s = "";
          iVar11 = 0;
        }
        sVar3 = strlen(__s);
        iVar4 = (*param_1)(param_2,__s,sVar3);
        if (iVar4 == 0) goto LAB_00639426;
        if (((int)sVar3 < iVar11) && ((param_5 & 0x2000000) != 0)) {
          for (iVar4 = 0; iVar4 < (int)(iVar11 - sVar3); iVar4 = iVar4 + 1) {
            iVar5 = (*param_1)(param_2,&DAT_0080c518,1);
            if (iVar5 == 0) goto LAB_00639426;
          }
          param_4 = param_4 + (iVar11 - sVar3);
        }
        iVar11 = (*param_1)(param_2,puVar12,local_a8);
        if (iVar11 == 0) goto LAB_00639426;
        param_4 = param_4 + sVar3 + local_a8;
      }
      uVar6 = 0;
      if ((iVar1 == 0) && (uVar6 = 0, (param_5 & 0x1000000) != 0)) {
        uVar6 = 0x80;
      }
      iVar1 = FUN_0063903c(param_1,param_2,uVar6 | param_5,pAVar2);
      if (iVar1 < 0) goto LAB_00639426;
      param_4 = param_4 + iVar1;
    }
  }
  else {
    if (uVar7 < 0x20001) {
      if (uVar7 == 0x10000) {
        puVar10 = &DAT_008110ca;
        local_c0 = 1;
        puVar8 = &DAT_008120bb;
        local_b4 = 1;
        local_bc = 0;
        goto LAB_00639274;
      }
    }
    else {
      if (uVar7 == 0x30000) {
        puVar8 = &DAT_0080e903;
        goto LAB_0063925c;
      }
      if (uVar7 == 0x40000) {
        puVar10 = &UNK_008149aa;
        local_c0 = 3;
        puVar8 = &DAT_0080c516;
        local_b4 = 1;
        local_bc = param_4;
        goto LAB_00639274;
      }
    }
LAB_00639426:
    param_4 = 0xffffffff;
  }
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(param_4);
}

// ---- FUN_0063a69c  @ 0x63a69c
undefined8 FUN_0063a69c(int *param_1,int param_2,int param_3,int param_4,int param_5,int param_6)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *param_1;
  if (param_6 != 0 || iVar3 == -1) {
    iVar2 = param_1[0x69];
    if (iVar2 == 0x14) {
      param_1 = (int *)0x20c;
      ERR_put_error(0xd,0xb0,0xae,"jni/../../openssl-android/crypto/asn1/asn1_gen.c",0x20c);
      uVar1 = 0;
    }
    else {
      param_1[0x69] = iVar2 + 1;
      if (iVar3 == -1) {
        param_1[iVar2 * 5 + 5] = param_2;
        param_1[iVar2 * 5 + 6] = param_3;
      }
      else {
        param_1[iVar2 * 5 + 5] = iVar3;
        param_1[iVar2 * 5 + 6] = param_1[1];
        *param_1 = -1;
        param_1[1] = -1;
      }
      param_1[iVar2 * 5 + 7] = param_4;
      uVar1 = 1;
      param_1[iVar2 * 5 + 8] = param_5;
    }
  }
  else {
    param_1 = (int *)0x206;
    ERR_put_error(0xd,0xb0,0xb3,"jni/../../openssl-android/crypto/asn1/asn1_gen.c",0x206);
    uVar1 = 0;
  }
  return CONCAT44(param_1,uVar1);
}

// ---- FUN_0063a72c  @ 0x63a72c
undefined4 FUN_0063a72c(char *param_1,int param_2,ulong *param_3,undefined4 *param_4)

{
  ulong uVar1;
  undefined4 uVar2;
  byte local_20 [4];
  byte *local_1c [2];
  
  if (param_1 == (char *)0x0) {
    return 0;
  }
  uVar1 = strtoul(param_1,(char **)local_1c,10);
  if (((local_1c[0] == (byte *)0x0) || (*local_1c[0] == 0)) || (local_1c[0] <= param_1 + param_2)) {
    if (-1 < (int)uVar1) {
      *param_3 = uVar1;
      if (((local_1c[0] == (byte *)0x0) || ((int)local_1c[0] - (int)param_1 == param_2)) ||
         (local_20[0] = *local_1c[0], local_20[0] == 0x43)) {
        uVar2 = 0x80;
      }
      else if (local_20[0] < 0x44) {
        if (local_20[0] != 0x41) {
LAB_0063a798:
          local_20[1] = 0;
          ERR_put_error(0xd,0xb6,0xba,"jni/../../openssl-android/crypto/asn1/asn1_gen.c",0x1b0);
          ERR_add_error_data(2,"Char=",local_20);
          return 0;
        }
        uVar2 = 0x40;
      }
      else if (local_20[0] == 0x50) {
        uVar2 = 0xc0;
      }
      else {
        if (local_20[0] != 0x55) goto LAB_0063a798;
        uVar2 = 0;
      }
      *param_4 = uVar2;
      return 1;
    }
    ERR_put_error(0xd,0xb6,0xbb,"jni/../../openssl-android/crypto/asn1/asn1_gen.c",399);
  }
  return 0;
}

// ---- FUN_0063b086  @ 0x63b086
undefined4 FUN_0063b086(uchar **param_1)

{
  int iVar1;
  
  if (((param_1[3] == &DAT_00000021) && (param_1[1] == (uchar *)0x0)) &&
     (iVar1 = ASN1_const_check_infinite_end(param_1,(long)param_1[6]), iVar1 == 0)) {
    param_1[2] = (uchar *)0x3f;
    return 0;
  }
  if (param_1[6] == (uchar *)0x0) {
    return 1;
  }
  if (((int)param_1[3] << 0x1f < 0) && (-1 < (int)param_1[6])) {
    return 1;
  }
  param_1[2] = (uchar *)0x3e;
  return 0;
}

// ---- FUN_0063b520  @ 0x63b520
void FUN_0063b520(BIO *param_1,int *param_2,int param_3,int param_4,int param_5,int param_6,
                 int param_7)

{
  byte bVar1;
  bool bVar2;
  uchar *puVar3;
  int tag;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  ASN1_OBJECT *pAVar9;
  ASN1_INTEGER *a;
  uchar *puVar10;
  char *pcVar11;
  ASN1_STRING *a_00;
  ASN1_INTEGER *pAVar12;
  uchar *puVar13;
  uchar *local_c4;
  uchar *local_c0;
  int local_bc;
  int local_b8;
  uint local_b4;
  ASN1_OBJECT *local_b0;
  char acStack_ac [128];
  int local_2c;
  
  local_c4 = (uchar *)*param_2;
  puVar10 = local_c4 + param_3;
  local_2c = __stack_chk_guard;
  local_b0 = (ASN1_OBJECT *)0x0;
  puVar13 = local_c4 + -1;
LAB_0063ba9c:
  puVar3 = local_c4;
  if (local_c4 <= puVar13 || puVar10 <= local_c4) {
    a_00 = (ASN1_STRING *)0x0;
    pAVar12 = (ASN1_INTEGER *)0x1;
LAB_0063bad2:
    if (local_b0 != (ASN1_OBJECT *)0x0) {
      ASN1_OBJECT_free(local_b0);
    }
    if (a_00 != (ASN1_STRING *)0x0) {
      ASN1_STRING_free(a_00);
    }
    *param_2 = (int)local_c4;
    if (local_2c == __stack_chk_guard) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(pAVar12);
  }
  uVar5 = ASN1_get_object(&local_c4,&local_bc,&local_b8,(int *)&local_b4,param_3);
  puVar13 = local_c4;
  if ((uVar5 & 0x80) != 0) {
    BIO_write(param_1,"Error in encoding\n",0x12);
    goto LAB_0063baf6;
  }
  iVar6 = BIO_printf(param_1,"%5ld:",puVar3 + (param_4 - *param_2));
  if (iVar6 < 1) {
LAB_0063babc:
    a_00 = (ASN1_INTEGER *)0x0;
    pAVar12 = a_00;
    goto LAB_0063bad2;
  }
  iVar6 = (int)puVar13 - (int)puVar3;
  if (uVar5 == 0x21) {
    iVar7 = BIO_printf(param_1,"d=%-2d hl=%ld l=inf  ",param_5,iVar6);
  }
  else {
    iVar7 = BIO_printf(param_1,"d=%-2d hl=%ld l=%4ld ",param_5,iVar6,local_bc);
  }
  uVar4 = local_b4;
  tag = local_b8;
  if (iVar7 < 1) goto LAB_0063babc;
  iVar7 = param_5;
  if (param_6 == 0) {
    iVar7 = 0;
  }
  if ((uVar5 & 0x20) == 0) {
    pcVar11 = "prim: ";
  }
  else {
    pcVar11 = "cons: ";
  }
  iVar8 = BIO_write(param_1,pcVar11,6);
  if (iVar8 < 6) goto LAB_0063baf6;
  BIO_indent(param_1,iVar7,0x80);
  if ((uVar4 & 0xc0) == 0xc0) {
    pcVar11 = "priv [ %d ] ";
LAB_0063b644:
    BIO_snprintf(acStack_ac,0x80,pcVar11,tag);
    pcVar11 = acStack_ac;
  }
  else {
    if ((int)(uVar4 << 0x18) < 0) {
      pcVar11 = "cont [ %d ]";
      goto LAB_0063b644;
    }
    if ((int)(uVar4 << 0x19) < 0) {
      pcVar11 = "appl [ %d ]";
      goto LAB_0063b644;
    }
    if (0x1e < tag) {
      pcVar11 = "<ASN1 %d>";
      goto LAB_0063b644;
    }
    pcVar11 = ASN1_tag2str(tag);
  }
  iVar7 = BIO_printf(param_1,"%-18s",pcVar11);
  if (iVar7 < 1) {
LAB_0063baf6:
    a_00 = (ASN1_INTEGER *)0x0;
    pAVar12 = a_00;
    goto LAB_0063bad2;
  }
  param_3 = param_3 - iVar6;
  if ((uVar5 & 0x20) != 0) {
    puVar13 = local_c4 + local_bc;
    iVar6 = BIO_write(param_1,&DAT_0080c516,1);
    if (0 < iVar6) {
      if (local_bc <= param_3) {
        if ((uVar5 == 0x21) && (local_bc == 0)) {
          do {
            iVar6 = FUN_0063b520(param_1,&local_c4,(int)puVar10 - (int)local_c4,
                                 local_c4 + (param_4 - *param_2),param_5 + 1,param_6,param_7);
            if (iVar6 == 0) goto LAB_0063bac0;
          } while ((iVar6 != 2) && (local_c4 < puVar10));
        }
        else {
          while (local_c4 < puVar13) {
            iVar6 = FUN_0063b520(param_1,&local_c4,local_bc,local_c4 + (param_4 - *param_2),
                                 param_5 + 1,param_6,param_7);
            if (iVar6 == 0) goto LAB_0063bac0;
          }
        }
        goto LAB_0063ba94;
      }
      BIO_printf(param_1,"length is greater than %ld\n",param_3);
    }
    goto LAB_0063baf6;
  }
  if (local_b4 != 0) {
    local_c4 = local_c4 + local_bc;
    iVar6 = BIO_write(param_1,&DAT_0080c516,1);
    if (iVar6 < 1) {
      a_00 = (ASN1_INTEGER *)0x0;
      pAVar12 = a_00;
      goto LAB_0063bad2;
    }
    goto LAB_0063ba94;
  }
  if (((((local_b8 - 0x13U < 2 || local_b8 == 0x16) || (local_b8 == 0x1a)) || (local_b8 == 0x12)) ||
      ((local_b8 == 0xc || (local_b8 == 0x17)))) || (local_b8 == 0x18)) {
    iVar6 = BIO_write(param_1,&DAT_0080cdf3,1);
    if ((iVar6 < 1) ||
       ((0 < local_bc && (iVar6 = BIO_write(param_1,local_c4,local_bc), iVar6 != local_bc))))
    goto LAB_0063baf6;
LAB_0063ba74:
    iVar6 = BIO_write(param_1,&DAT_0080c516,1);
LAB_0063ba80:
    if (iVar6 < 1) goto LAB_0063baf6;
  }
  else {
    if (local_b8 == 6) {
      local_c0 = puVar3;
      pAVar9 = d2i_ASN1_OBJECT(&local_b0,&local_c0,iVar6 + local_bc);
      if (pAVar9 == (ASN1_OBJECT *)0x0) {
        iVar6 = BIO_write(param_1,":BAD OBJECT",0xb);
        if (0 < iVar6) goto LAB_0063ba74;
        a_00 = (ASN1_INTEGER *)0x0;
        pAVar12 = a_00;
        goto LAB_0063bad2;
      }
      iVar6 = BIO_write(param_1,&DAT_0080cdf3,1);
      if (iVar6 < 1) goto LAB_0063baf6;
      i2a_ASN1_OBJECT(param_1,local_b0);
      goto LAB_0063ba74;
    }
    if (local_b8 == 1) {
      local_c0 = puVar3;
      iVar6 = d2i_ASN1_BOOLEAN((int *)0x0,&local_c0,iVar6 + local_bc);
      if ((iVar6 < 0) && (iVar7 = BIO_write(param_1,"Bad boolean\n",0xc), iVar7 < 1))
      goto LAB_0063baf6;
      BIO_printf(param_1,":%d",iVar6);
      goto LAB_0063ba74;
    }
    if (local_b8 == 0x1e) goto LAB_0063ba74;
    if (local_b8 != 4) {
      if (local_b8 != 2) {
        if (local_b8 == 10) {
          local_c0 = puVar3;
          a = d2i_ASN1_ENUMERATED((ASN1_ENUMERATED **)0x0,&local_c0,iVar6 + local_bc);
          if (a != (ASN1_ENUMERATED *)0x0) {
            iVar6 = BIO_write(param_1,&DAT_0080cdf3,1);
            if ((0 < iVar6) &&
               ((a->type != 0x10a || (iVar6 = BIO_write(param_1,&DAT_0080e257,1), 0 < iVar6)))) {
              for (iVar6 = 0; iVar7 = a->length, iVar6 < iVar7; iVar6 = iVar6 + 1) {
                iVar7 = BIO_printf(param_1,"%02X",(uint)a->data[iVar6]);
                if (iVar7 < 1) goto LAB_0063baf6;
              }
              goto joined_r0x0063ba0c;
            }
            goto LAB_0063baf6;
          }
          pcVar11 = "BAD ENUMERATED";
          goto LAB_0063ba24;
        }
        if (param_7 == 0 || local_bc < 1) goto LAB_0063ba74;
        iVar6 = BIO_write(param_1,&DAT_0080c516,1);
        if (iVar6 < 1) goto LAB_0063baf6;
        iVar6 = local_bc;
        if ((param_7 != -1) && (param_7 <= local_bc)) {
          iVar6 = param_7;
        }
        iVar6 = BIO_dump_indent(param_1,(char *)local_c4,iVar6,6);
        goto LAB_0063ba80;
      }
      local_c0 = puVar3;
      a = d2i_ASN1_INTEGER((ASN1_INTEGER **)0x0,&local_c0,iVar6 + local_bc);
      if (a == (ASN1_INTEGER *)0x0) {
        pcVar11 = "BAD INTEGER";
LAB_0063ba24:
        iVar6 = BIO_write(param_1,pcVar11,0xb);
        a_00 = a;
joined_r0x0063ba2e:
        pAVar12 = a_00;
        if (iVar6 < 1) goto LAB_0063bad2;
      }
      else {
        iVar6 = BIO_write(param_1,&DAT_0080cdf3,1);
        if ((iVar6 < 1) ||
           ((a->type == 0x102 && (iVar6 = BIO_write(param_1,&DAT_0080e257,1), iVar6 < 1))))
        goto LAB_0063baf6;
        for (iVar6 = 0; iVar7 = a->length, iVar6 < iVar7; iVar6 = iVar6 + 1) {
          iVar7 = BIO_printf(param_1,"%02X",(uint)a->data[iVar6]);
          if (iVar7 < 1) goto LAB_0063baf6;
        }
joined_r0x0063ba0c:
        if (iVar7 == 0) {
          a_00 = (ASN1_INTEGER *)0x0;
          iVar6 = BIO_write(param_1,&DAT_00815ede,2);
          goto joined_r0x0063ba2e;
        }
      }
      ASN1_STRING_free(a);
      goto LAB_0063ba74;
    }
    local_c0 = puVar3;
    a_00 = d2i_ASN1_OCTET_STRING((ASN1_OCTET_STRING **)0x0,&local_c0,iVar6 + local_bc);
    if (a_00 == (ASN1_OCTET_STRING *)0x0) goto LAB_0063ba74;
    if (0 < a_00->length) {
      local_c0 = a_00->data;
      for (iVar6 = 0; iVar6 < a_00->length; iVar6 = iVar6 + 1) {
        bVar1 = local_c0[iVar6];
        if (bVar1 == 10 || 0x1f < bVar1) {
          if (0x7e < bVar1) goto LAB_0063b89a;
        }
        else if ((bVar1 != 0xd) && (bVar1 != 9)) {
LAB_0063b89a:
          if (param_7 == 0) {
            iVar6 = BIO_write(param_1,"[HEX DUMP]:",0xb);
            pAVar12 = (ASN1_INTEGER *)0x0;
            if (iVar6 < 1) goto LAB_0063bad2;
            iVar6 = 0;
            goto LAB_0063b8e4;
          }
          iVar6 = BIO_write(param_1,&DAT_0080c516,1);
          if (iVar6 < 1) goto LAB_0063bad0;
          iVar6 = a_00->length;
          if ((param_7 != -1) && (param_7 <= iVar6)) {
            iVar6 = param_7;
          }
          iVar6 = BIO_dump_indent(param_1,(char *)local_c0,iVar6,6);
          if (iVar6 < 1) goto LAB_0063bad0;
          bVar2 = true;
          goto LAB_0063bb14;
        }
      }
      iVar6 = BIO_write(param_1,&DAT_0080cdf3,1);
      if ((iVar6 < 1) || (iVar6 = BIO_write(param_1,local_c0,a_00->length), iVar6 < 1)) {
LAB_0063bad0:
        pAVar12 = (ASN1_INTEGER *)0x0;
        goto LAB_0063bad2;
      }
    }
LAB_0063bb10:
    bVar2 = false;
LAB_0063bb14:
    ASN1_STRING_free(a_00);
    if (!bVar2) goto LAB_0063ba74;
  }
  local_c4 = local_c4 + local_bc;
  if ((local_b8 == 0) && (local_b4 == 0)) {
    a_00 = (ASN1_STRING *)0x0;
    pAVar12 = (ASN1_INTEGER *)0x2;
    goto LAB_0063bad2;
  }
LAB_0063ba94:
  param_3 = param_3 - local_bc;
  puVar13 = puVar3;
  goto LAB_0063ba9c;
LAB_0063bac0:
  a_00 = (ASN1_INTEGER *)0x0;
  pAVar12 = a_00;
  goto LAB_0063bad2;
LAB_0063b8e4:
  if (a_00->length <= iVar6) goto LAB_0063bb10;
  iVar7 = BIO_printf(param_1,"%02X",(uint)local_c0[iVar6]);
  if (iVar7 < 1) goto LAB_0063bad0;
  iVar6 = iVar6 + 1;
  goto LAB_0063b8e4;
}

// ---- FUN_0063bbfc  @ 0x63bbfc
undefined4 * FUN_0063bbfc(char *param_1,char *param_2)

{
  byte *pbVar1;
  byte *pbVar2;
  undefined4 *puVar3;
  _STACK *p_Var4;
  byte *pbVar5;
  byte *pbVar6;
  uint uVar7;
  
  if (param_1 == (char *)0x0) {
    pbVar1 = (byte *)0x0;
  }
  else {
    pbVar1 = (byte *)BUF_strdup(param_1);
    pbVar2 = pbVar1;
    if (pbVar1 == (byte *)0x0) {
      return (undefined4 *)0x0;
    }
    while( true ) {
      pbVar5 = pbVar2;
      uVar7 = (uint)*pbVar5;
      if (uVar7 == 0) break;
      pbVar2 = pbVar5 + 1;
      if ((int)((uint)*(byte *)(_ctype_ + uVar7 + 1) << 0x1f) < 0) {
        *pbVar5 = (byte)*(undefined2 *)(_tolower_tab_ + (uVar7 + 1) * 2);
      }
    }
  }
  pbVar2 = (byte *)0x0;
  if (param_2 != (char *)0x0) {
    pbVar2 = (byte *)BUF_strdup(param_2);
    pbVar5 = pbVar2;
    if (pbVar2 == (byte *)0x0) {
      return (undefined4 *)0x0;
    }
    while( true ) {
      pbVar6 = pbVar5;
      uVar7 = (uint)*pbVar6;
      if (uVar7 == 0) break;
      pbVar5 = pbVar6 + 1;
      if ((int)((uint)*(byte *)(_ctype_ + uVar7 + 1) << 0x1f) < 0) {
        *pbVar6 = (byte)*(undefined2 *)(_tolower_tab_ + (uVar7 + 1) * 2);
      }
    }
  }
  puVar3 = CRYPTO_malloc(0xc,"jni/../../openssl-android/crypto/asn1/asn_mime.c",0x339);
  if (puVar3 != (undefined4 *)0x0) {
    *puVar3 = pbVar1;
    puVar3[1] = pbVar2;
    p_Var4 = sk_new((cmp *)&DAT_0063c169);
    puVar3[2] = p_Var4;
    if (p_Var4 == (_STACK *)0x0) {
      puVar3 = (undefined4 *)0x0;
    }
  }
  return puVar3;
}

// ---- FUN_0063bcb8  @ 0x63bcb8
undefined4 FUN_0063bcb8(int param_1,char *param_2,char *param_3)

{
  byte *pbVar1;
  byte *pbVar2;
  char *pcVar3;
  undefined4 *data;
  byte *pbVar4;
  uint uVar5;
  
  if (param_2 == (char *)0x0) {
    pbVar2 = (byte *)0x0;
  }
  else {
    pbVar2 = (byte *)BUF_strdup(param_2);
    pbVar1 = pbVar2;
    if (pbVar2 == (byte *)0x0) {
      return 0;
    }
    while( true ) {
      pbVar4 = pbVar1;
      uVar5 = (uint)*pbVar4;
      if (uVar5 == 0) break;
      pbVar1 = pbVar4 + 1;
      if ((int)((uint)*(byte *)(_ctype_ + uVar5 + 1) << 0x1f) < 0) {
        *pbVar4 = (byte)*(undefined2 *)(_tolower_tab_ + (uVar5 + 1) * 2);
      }
    }
  }
  pcVar3 = (char *)0x0;
  if ((param_3 != (char *)0x0) && (pcVar3 = BUF_strdup(param_3), pcVar3 == (char *)0x0)) {
    return 0;
  }
  data = CRYPTO_malloc(8,"jni/../../openssl-android/crypto/asn1/asn_mime.c",0x356);
  if (data == (undefined4 *)0x0) {
    return 0;
  }
  *data = pbVar2;
  data[1] = pcVar3;
  sk_push(*(_STACK **)(param_1 + 8),data);
  return 1;
}

// ---- FUN_0063bd3c  @ 0x63bd3c
byte * FUN_0063bd3c(byte *param_1)

{
  byte *__s;
  size_t sVar1;
  byte *pbVar2;
  uint uVar3;
  
  while( true ) {
    pbVar2 = param_1;
    uVar3 = (uint)*pbVar2;
    __s = pbVar2 + 1;
    if (uVar3 == 0) {
      return (byte *)0x0;
    }
    if (uVar3 == 0x22) break;
    param_1 = __s;
    __s = pbVar2;
    if (-1 < (int)((uint)*(byte *)(_ctype_ + uVar3 + 1) << 0x1c)) {
LAB_0063bd6a:
      if (__s != (byte *)0x0) {
        sVar1 = strlen((char *)__s);
        pbVar2 = __s + (sVar1 - 1);
        while (__s <= pbVar2) {
          if (*pbVar2 == 0x22) {
            if (__s == pbVar2 + -1) {
              return (byte *)0x0;
            }
            *pbVar2 = 0;
            return __s;
          }
          if (-1 < (int)((uint)*(byte *)(_ctype_ + (uint)*pbVar2 + 1) << 0x1c)) {
            return __s;
          }
          *pbVar2 = 0;
          pbVar2 = pbVar2 + -1;
        }
      }
      return (byte *)0x0;
    }
  }
  if (pbVar2[1] == 0) {
    return (byte *)0x0;
  }
  goto LAB_0063bd6a;
}

// ---- FUN_0063bdb4  @ 0x63bdb4
void FUN_0063bdb4(BIO *param_1)

{
  byte bVar1;
  _STACK *st;
  byte *pbVar2;
  undefined4 uVar3;
  int iVar4;
  byte *pbVar5;
  byte *pbVar6;
  void *data;
  undefined4 uVar7;
  byte local_42c [1024];
  int local_2c;
  
  data = (void *)0x0;
  local_2c = __stack_chk_guard;
  st = sk_new((cmp *)&DAT_0063c191);
  do {
    iVar4 = BIO_gets(param_1,(char *)local_42c,0x400);
    if (iVar4 < 1) break;
    iVar4 = 1;
    if (data != (void *)0x0) {
      if ((*(byte *)(_ctype_ + (uint)local_42c[0] + 1) & 8) == 0) {
        iVar4 = 1;
      }
      else {
        iVar4 = 3;
      }
    }
    uVar7 = 0;
    pbVar2 = local_42c;
    pbVar6 = local_42c;
    while( true ) {
      pbVar5 = pbVar6;
      pbVar6 = pbVar5 + 1;
      bVar1 = *pbVar5;
      if ((bVar1 == 0) || (bVar1 == 10 || bVar1 == 0xd)) break;
                    /* WARNING: Could not find normalized switch variable to match jumptable */
      switch(iVar4) {
      case 1:
        if (bVar1 == 0x3a) {
          *pbVar5 = 0;
          uVar7 = FUN_0063bd3c(pbVar2);
          iVar4 = 2;
          pbVar2 = pbVar6;
        }
        break;
      case 2:
        if (bVar1 == 0x3b) {
          *pbVar5 = 0;
          uVar3 = FUN_0063bd3c(pbVar2);
          data = (void *)FUN_0063bbfc(uVar7,uVar3);
          sk_push(st,data);
          iVar4 = 3;
          uVar7 = 0;
          pbVar2 = pbVar6;
        }
        else if (bVar1 == 0x28) {
          iVar4 = 6;
        }
        break;
      case 3:
        if (bVar1 == 0x3d) {
          *pbVar5 = 0;
          uVar7 = FUN_0063bd3c(pbVar2);
          iVar4 = 4;
          pbVar2 = pbVar6;
        }
      }
    }
    if (iVar4 == 2) {
      uVar3 = FUN_0063bd3c(pbVar2);
      data = (void *)FUN_0063bbfc(uVar7,uVar3);
      sk_push(st,data);
    }
    else if (iVar4 == 4) {
      uVar3 = FUN_0063bd3c(pbVar2);
      FUN_0063bcb8(data,uVar7,uVar3);
    }
  } while (pbVar5 != local_42c);
  if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(st);
  }
  return;
}

// ---- FUN_0063bf38  @ 0x63bf38
void FUN_0063bf38(undefined4 *param_1)

{
  if ((void *)*param_1 != (void *)0x0) {
    CRYPTO_free((void *)*param_1);
  }
  if ((void *)param_1[1] != (void *)0x0) {
    CRYPTO_free((void *)param_1[1]);
  }
  if ((_STACK *)param_1[2] != (_STACK *)0x0) {
    sk_pop_free((_STACK *)param_1[2],(func *)0x63bf69);
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0063bf68  @ 0x63bf68
void FUN_0063bf68(undefined4 *param_1)

{
  if ((void *)*param_1 != (void *)0x0) {
    CRYPTO_free((void *)*param_1);
  }
  if ((void *)param_1[1] != (void *)0x0) {
    CRYPTO_free((void *)param_1[1]);
  }
  CRYPTO_free(param_1);
  return;
}

// ---- FUN_0063bf88  @ 0x63bf88
void FUN_0063bf88(BIO *param_1,char *param_2,undefined4 *param_3)

{
  bool bVar1;
  bool bVar2;
  size_t sVar3;
  _STACK *st;
  size_t __n;
  int iVar4;
  BIO_METHOD *type;
  int len;
  undefined4 uVar5;
  char *pcVar6;
  BIO *b;
  char cVar7;
  int iVar8;
  char cVar9;
  char acStack_42d [1025];
  int local_2c;
  
  cVar7 = '\0';
  local_2c = __stack_chk_guard;
  sVar3 = strlen(param_2);
  st = sk_new_null();
  *param_3 = st;
  b = (BIO *)0x0;
  iVar8 = 1;
  bVar1 = false;
LAB_0063c0ba:
  do {
    len = BIO_gets(param_1,acStack_42d + 1,0x400);
    if (len < 1) {
      uVar5 = 0;
LAB_0063c0ce:
      if (local_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar5);
      }
      return;
    }
    __n = sVar3;
    if (sVar3 == 0xffffffff) {
      __n = strlen(param_2);
    }
    if (((int)(__n + 1) < len) && (iVar4 = strncmp(acStack_42d + 1,"--",2), iVar4 == 0)) {
      iVar4 = strncmp(acStack_42d + 3,param_2,__n);
      cVar9 = '\0';
      if (iVar4 == 0) {
        iVar4 = strncmp(acStack_42d + __n + 3,"--",2);
        if (iVar4 == 0) {
          cVar9 = '\x02';
        }
        else {
          cVar9 = '\x01';
        }
      }
    }
    else {
      cVar9 = '\0';
    }
    if (cVar9 == '\x01') {
      cVar7 = cVar7 + '\x01';
      iVar8 = 1;
      goto LAB_0063c0ba;
    }
    if (cVar9 == '\x02') {
      sk_push(st,b);
      uVar5 = 1;
      goto LAB_0063c0ce;
    }
    if (cVar7 != '\0') {
      bVar2 = false;
      pcVar6 = acStack_42d + len;
      do {
        if (*pcVar6 == '\n') {
          bVar2 = true;
        }
        else if (*pcVar6 != '\r') break;
        len = len + -1;
        pcVar6 = pcVar6 + -1;
      } while (len != 0);
      if (iVar8 == 0) {
        if (bVar1) {
          BIO_write(b,&DAT_0080e2c3,2);
        }
      }
      else {
        if (b != (BIO *)0x0) {
          sk_push(st,b);
        }
        type = BIO_s_mem();
        b = BIO_new(type);
        BIO_ctrl(b,0x82,0,(void *)0x0);
      }
      iVar8 = len;
      bVar1 = bVar2;
      if (len != 0) {
        iVar8 = 0;
        BIO_write(b,acStack_42d + 1,len);
      }
    }
  } while( true );
}

// ---- FUN_0063c0f4  @ 0x63c0f4
void * FUN_0063c0f4(BIO *param_1,ASN1_ITEM *param_2)

{
  BIO_METHOD *type;
  BIO *b;
  BIO *in;
  void *pvVar1;
  
  type = BIO_f_base64();
  b = BIO_new(type);
  if (b == (BIO *)0x0) {
    ERR_put_error(0xd,0xd1,0x41,"jni/../../openssl-android/crypto/asn1/asn_mime.c",0xbb);
    pvVar1 = (void *)0x0;
  }
  else {
    in = BIO_push(b,param_1);
    pvVar1 = ASN1_item_d2i_bio(param_2,in,(void *)0x0);
    if (pvVar1 == (void *)0x0) {
      ERR_put_error(0xd,0xd1,0x6e,"jni/../../openssl-android/crypto/asn1/asn_mime.c",0xc1);
    }
    BIO_ctrl(in,0xb,0,(void *)0x0);
    BIO_pop(in);
    BIO_free(b);
  }
  return pvVar1;
}

// ---- FUN_0063c1b8  @ 0x63c1b8
void * FUN_0063c1b8(_STACK *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  void *pvVar2;
  char *local_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  local_14 = "content-type";
  uStack_10 = param_3;
  uStack_c = param_4;
  iVar1 = sk_find(param_1,&local_14);
  pvVar2 = (void *)0x0;
  if (-1 < iVar1) {
    pvVar2 = sk_value(param_1,iVar1);
  }
  return pvVar2;
}

// ---- FUN_0063c608  @ 0x63c608
int FUN_0063c608(BIO *param_1,ASN1_VALUE *param_2,BIO *param_3,int param_4,ASN1_ITEM *param_5)

{
  BIO_METHOD *type;
  BIO *b;
  BIO *out;
  int iVar1;
  
  type = BIO_f_base64();
  b = BIO_new(type);
  if (b == (BIO *)0x0) {
    ERR_put_error(0xd,0xd2,0x41,"jni/../../openssl-android/crypto/asn1/asn_mime.c",0x9c);
    iVar1 = 0;
  }
  else {
    out = BIO_push(b,param_1);
    iVar1 = i2d_ASN1_bio_stream(out,param_2,param_3,param_4,param_5);
    BIO_ctrl(out,0xb,0,(void *)0x0);
    BIO_pop(out);
    BIO_free(b);
  }
  return iVar1;
}

// ---- FUN_0063cfc6  @ 0x63cfc6
undefined4 FUN_0063cfc6(int param_1)

{
  void *ptr;
  
  ptr = *(void **)(param_1 + 0x20);
  if (ptr != (void *)0x0) {
    if (*(void **)((int)ptr + 4) != (void *)0x0) {
      CRYPTO_free(*(void **)((int)ptr + 4));
    }
    CRYPTO_free(ptr);
    *(undefined4 *)(param_1 + 0xc) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_0063cfec  @ 0x63cfec
void FUN_0063cfec(int param_1)

{
  undefined4 *puVar1;
  void *pvVar2;
  
  puVar1 = CRYPTO_malloc(0x40,"jni/../../openssl-android/crypto/asn1/bio_asn1.c",0x99);
  if (puVar1 != (undefined4 *)0x0) {
    pvVar2 = CRYPTO_malloc(0x14,"jni/../../openssl-android/crypto/asn1/bio_asn1.c",0xa6);
    puVar1[1] = pvVar2;
    if (pvVar2 != (void *)0x0) {
      puVar1[2] = 0x14;
      puVar1[7] = 4;
      puVar1[3] = 0;
      puVar1[4] = 0;
      puVar1[5] = 0;
      puVar1[6] = 0;
      puVar1[0xc] = 0;
      puVar1[0xe] = 0;
      puVar1[0xd] = 0;
      *puVar1 = 0;
      *(undefined4 *)(param_1 + 0xc) = 1;
      *(undefined4 **)(param_1 + 0x20) = puVar1;
      *(undefined4 *)(param_1 + 0x14) = 0;
      return;
    }
  }
  return;
}

// ---- FUN_0063d03c  @ 0x63d03c
int FUN_0063d03c(int param_1,undefined4 *param_2,code *param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  
  iVar2 = 1;
  if (0 < (int)param_2[0xd]) {
    while (iVar2 = BIO_write(*(BIO **)(param_1 + 0x24),(void *)(param_2[0xc] + param_2[0xe]),
                             param_2[0xd]), 0 < iVar2) {
      iVar1 = param_2[0xd];
      param_2[0xd] = iVar1 - iVar2;
      if (iVar1 - iVar2 < 1) {
        if (param_3 != (code *)0x0) {
          (*param_3)(param_1,param_2 + 0xc,param_2 + 0xd,param_2 + 0xf);
        }
        *param_2 = param_4;
        param_2[0xe] = 0;
        return iVar2;
      }
      param_2[0xe] = param_2[0xe] + iVar2;
    }
  }
  return iVar2;
}

// ---- FUN_0063d096  @ 0x63d096
long FUN_0063d096(BIO *param_1,int param_2,long param_3,int *param_4)

{
  BIO *bp;
  long lVar1;
  int iVar2;
  int *piVar3;
  
  piVar3 = param_1->ptr;
  if (piVar3 == (int *)0x0) {
    return 0;
  }
  if (param_2 == 0x97) {
    piVar3[10] = *param_4;
    piVar3[0xb] = param_4[1];
    return 1;
  }
  if (param_2 < 0x98) {
    if (param_2 == 0x95) {
      piVar3[8] = *param_4;
      piVar3[9] = param_4[1];
      return 1;
    }
    if (0x95 < param_2) {
      *param_4 = piVar3[8];
      iVar2 = piVar3[9];
LAB_0063d0e8:
      param_4[1] = iVar2;
      return 1;
    }
    if (param_2 == 0xb) {
      if (param_1->next_bio == (bio_st *)0x0) {
        return 0;
      }
      if (*piVar3 == 2) {
        if (((code *)piVar3[10] != (code *)0x0) &&
           (iVar2 = (*(code *)piVar3[10])(param_1,piVar3 + 0xc,piVar3 + 0xd,piVar3 + 0xf),
           iVar2 == 0)) goto LAB_0063d14a;
        if (piVar3[0xd] < 1) {
          iVar2 = 6;
        }
        else {
          iVar2 = 5;
        }
        *piVar3 = iVar2;
      }
      if ((*piVar3 == 5) && (iVar2 = FUN_0063d03c(param_1,piVar3,piVar3[0xb],6), iVar2 < 1)) {
        return iVar2;
      }
      if (*piVar3 != 6) {
LAB_0063d14a:
        BIO_clear_flags(param_1,0xf);
        return 0;
      }
      bp = param_1->next_bio;
      param_2 = 0xb;
      goto LAB_0063d15c;
    }
  }
  else {
    if (param_2 == 0x99) {
      piVar3[0xf] = (int)param_4;
      return 1;
    }
    if (param_2 < 0x99) {
      *param_4 = piVar3[10];
      iVar2 = piVar3[0xb];
      goto LAB_0063d0e8;
    }
    if (param_2 == 0x9a) {
      *param_4 = piVar3[0xf];
      return 1;
    }
  }
  bp = param_1->next_bio;
  if (bp == (bio_st *)0x0) {
    return 0;
  }
LAB_0063d15c:
  lVar1 = BIO_ctrl(bp,param_2,param_3,param_4);
  return lVar1;
}

// ---- FUN_0063d184  @ 0x63d184
int FUN_0063d184(BIO *param_1,void *param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  uchar *local_2c [2];
  
  iVar5 = 1 - (int)param_2;
  if ((void *)0x1 < param_2) {
    iVar5 = 0;
  }
  if (((iVar5 != 0 || param_3 < 0) || (param_1->next_bio == (bio_st *)0x0)) ||
     (puVar4 = param_1->ptr, puVar4 == (undefined4 *)0x0)) {
    return 0;
  }
  iVar5 = 0;
LAB_0063d1be:
  switch(*puVar4) {
  case 0:
    if (((code *)puVar4[8] != (code *)0x0) &&
       (iVar1 = (*(code *)puVar4[8])(param_1,puVar4 + 0xc,puVar4 + 0xd,puVar4 + 0xf), iVar1 == 0)) {
      BIO_clear_flags(param_1,0xf);
      return 0;
    }
    if ((int)puVar4[0xd] < 1) {
      uVar2 = 2;
    }
    else {
      uVar2 = 1;
    }
    break;
  case 1:
    goto switchD_0063d1c4_caseD_1;
  case 2:
    iVar1 = ASN1_object_size(0,param_3,puVar4[7]);
    puVar4[4] = iVar1 - param_3;
    if ((int)puVar4[2] < iVar1 - param_3) {
      OpenSSLDie("jni/../../openssl-android/crypto/asn1/bio_asn1.c",0xed,
                 "ctx->buflen <= ctx->bufsize");
    }
    local_2c[0] = (uchar *)puVar4[1];
    ASN1_put_object(local_2c,0,param_3,puVar4[7],puVar4[6]);
    puVar4[5] = param_3;
    uVar2 = 3;
    break;
  case 3:
    iVar1 = BIO_write(param_1->next_bio,(void *)(puVar4[1] + puVar4[3]),puVar4[4]);
    if (iVar1 < 1) goto LAB_0063d2ae;
    iVar3 = puVar4[4];
    puVar4[4] = iVar3 - iVar1;
    if (iVar3 - iVar1 != 0) {
      puVar4[3] = puVar4[3] + iVar1;
      goto LAB_0063d1be;
    }
    puVar4[3] = 0;
    uVar2 = 4;
    break;
  case 4:
    iVar1 = puVar4[5];
    if (param_3 < (int)puVar4[5]) {
      iVar1 = param_3;
    }
    iVar1 = BIO_write(param_1->next_bio,param_2,iVar1);
    if (0 < iVar1) {
      iVar3 = puVar4[5];
      iVar5 = iVar5 + iVar1;
      param_3 = param_3 - iVar1;
      puVar4[5] = iVar3 - iVar1;
      if (iVar3 - iVar1 == 0) {
        *puVar4 = 2;
      }
      if (param_3 == 0) goto LAB_0063d2ae;
      param_2 = (void *)((int)param_2 + iVar1);
    }
    goto LAB_0063d1be;
  default:
    BIO_clear_flags(param_1,0xf);
    return 0;
  }
  *puVar4 = uVar2;
  goto LAB_0063d1be;
switchD_0063d1c4_caseD_1:
  iVar1 = FUN_0063d03c(param_1,puVar4,puVar4[9],2);
  if (iVar1 < 1) {
LAB_0063d2ae:
    BIO_clear_flags(param_1,0xf);
    BIO_copy_next_retry(param_1);
    if (iVar5 == 0) {
      return iVar1;
    }
    return iVar5;
  }
  goto LAB_0063d1be;
}

// ---- FUN_0063d360  @ 0x63d360
undefined4 FUN_0063d360(undefined4 param_1,undefined4 *param_2,undefined4 *param_3,int *param_4)

{
  void *ptr;
  int iVar1;
  
  if (param_4 != (int *)0x0) {
    iVar1 = *param_4;
    ptr = *(void **)(iVar1 + 0x14);
    if (ptr != (void *)0x0) {
      CRYPTO_free(ptr);
    }
    *(undefined4 *)(iVar1 + 0x14) = 0;
    *param_2 = 0;
    *param_3 = 0;
    return 1;
  }
  return 0;
}

// ---- FUN_0063d384  @ 0x63d384
undefined4 FUN_0063d384(undefined4 param_1,int *param_2,int *param_3,undefined4 *param_4)

{
  int iVar1;
  uchar *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (param_4 != (undefined4 *)0x0) {
    param_4 = (undefined4 *)*param_4;
    local_20 = param_4[2];
    local_24 = param_4[3];
    local_1c = param_4[4];
    iVar1 = (**(code **)(*(int *)(param_4[1] + 0x10) + 0x10))(0xb,param_4,param_4[1],&local_24);
    if (iVar1 < 1) {
      return 0;
    }
    iVar1 = ASN1_item_ndef_i2d((ASN1_VALUE *)*param_4,(uchar **)0x0,(ASN1_ITEM *)param_4[1]);
    local_28 = CRYPTO_malloc(iVar1,"jni/../../openssl-android/crypto/asn1/bio_ndef.c",0xe8);
    param_4[5] = local_28;
    *param_2 = (int)local_28;
    iVar1 = ASN1_item_ndef_i2d((ASN1_VALUE *)*param_4,&local_28,(ASN1_ITEM *)param_4[1]);
    if (*(int *)param_4[4] != 0) {
      *param_2 = *(int *)param_4[4];
      *param_3 = iVar1 + (param_4[5] - *(int *)param_4[4]);
      return 1;
    }
  }
  return 0;
}

// ---- FUN_0063d448  @ 0x63d448
bool FUN_0063d448(void)

{
  int iVar1;
  undefined4 *in_r3;
  
  iVar1 = FUN_0063d360();
  if (iVar1 != 0) {
    CRYPTO_free((void *)*in_r3);
    *in_r3 = 0;
  }
  return iVar1 != 0;
}

// ---- FUN_0063e2b4  @ 0x63e2b4
void FUN_0063e2b4(RSA **param_1,int *param_2,code *param_3,int param_4)

{
  size_t count;
  EVP_MD *pEVar1;
  int iVar2;
  EVP_CIPHER *pEVar3;
  RSA *pRVar4;
  RSA *pRVar5;
  size_t local_1fc;
  int local_1f8;
  _func_1761 *local_1f4;
  uchar auStack_1f0 [64];
  EVP_CIPHER_CTX EStack_1b0;
  uchar auStack_124 [16];
  undefined1 auStack_114 [240];
  int local_24;
  
  local_24 = __stack_chk_guard;
  EVP_CIPHER_CTX_init(&EStack_1b0);
  local_1fc = (*param_3)(auStack_124,0x100,"Enter Private Key password:",0);
  if (local_1fc == 0) {
    count = strlen((char *)auStack_124);
    local_1fc = count;
    if (param_4 != 0) {
      pEVar1 = EVP_md5();
      iVar2 = EVP_Digest(auStack_124,count,auStack_124,(uint *)0x0,pEVar1,(ENGINE *)0x0);
      if (iVar2 == 0) goto LAB_0063e400;
      memcpy(auStack_114,"SGCKEYSALT",10);
      local_1fc = 0x1a;
    }
    pEVar3 = EVP_rc4();
    pEVar1 = EVP_md5();
    iVar2 = EVP_BytesToKey(pEVar3,pEVar1,(uchar *)0x0,auStack_124,local_1fc,1,auStack_1f0,
                           (uchar *)0x0);
    if (iVar2 != 0) {
      OPENSSL_cleanse(auStack_124,0x100);
      pEVar3 = EVP_rc4();
      iVar2 = EVP_DecryptInit_ex(&EStack_1b0,pEVar3,(ENGINE *)0x0,auStack_1f0,(uchar *)0x0);
      if (((iVar2 != 0) &&
          (iVar2 = EVP_DecryptUpdate(&EStack_1b0,(uchar *)param_2[2],(int *)&local_1fc,
                                     (uchar *)param_2[2],*param_2), iVar2 != 0)) &&
         (iVar2 = EVP_DecryptFinal_ex(&EStack_1b0,(uchar *)(param_2[2] + local_1fc),&local_1f8),
         iVar2 != 0)) {
        local_1f4 = (_func_1761 *)param_2[2];
        *param_2 = local_1fc + local_1f8;
        pRVar4 = (RSA *)d2i_NETSCAPE_PKEY(0,&local_1f4);
        if (pRVar4 == (RSA *)0x0) {
          ERR_put_error(0xd,0xc9,0x9e,"jni/../../openssl-android/crypto/asn1/n_pkey.c",0x149);
          pRVar5 = (RSA *)0x0;
        }
        else {
          local_1f4 = pRVar4->meth->rsa_pub_dec;
          pRVar5 = d2i_RSAPrivateKey(param_1,(uchar **)&local_1f4,(long)pRVar4->meth->name);
          if (pRVar5 == (RSA *)0x0) {
            ERR_put_error(0xd,0xc9,0x9d,"jni/../../openssl-android/crypto/asn1/n_pkey.c",0x150);
          }
        }
        goto LAB_0063e402;
      }
    }
  }
  else {
    ERR_put_error(0xd,0xc9,0x67,"jni/../../openssl-android/crypto/asn1/n_pkey.c",0x12d);
  }
LAB_0063e400:
  pRVar5 = (RSA *)0x0;
  pRVar4 = pRVar5;
LAB_0063e402:
  EVP_CIPHER_CTX_cleanup(&EStack_1b0);
  NETSCAPE_PKEY_free(pRVar4);
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(pRVar5);
}
