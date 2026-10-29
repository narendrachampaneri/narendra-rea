// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- (*crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>::bind<crashlytics::handler::signal::tag>(std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>&&,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>&&))  @ 0x1c534
/* void (*crashlytics::handler::handler_invocation_wrapper<std::_Bind<void
   (*(std::array<std::pair<int, sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u>
   const*)>, std::_Bind<void (*(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>, void (int, siginfo*,
   void*)>::bind<crashlytics::handler::signal::tag>(std::_Bind<void (*(std::array<std::pair<int,
   sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u> const*)>&&, std::_Bind<void
   (*(crashlytics::unwinder::unwinder_base<48u>*, crashlytics::handler::detail::context,
   std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>&&))(int, siginfo*, void*) */

void __crashlytics__handler__handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>__bind<crashlytics::handler::signal::tag>_std___Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>___std___Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>____
               (int param_1,siginfo *param_2,void *param_3)

{
  handler_invocation_wrapper *phVar1;
  uint uVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined1 *puVar5;
  int iVar6;
  uint extraout_r1;
  int iVar7;
  int iVar8;
  _union_1031 *p_Var9;
  uchar *local_2c;
  uint local_28;
  uint local_24;
  
  phVar1 = crashlytics::handler::
           handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>
           ::instance<crashlytics::handler::signal::tag>();
  local_2c = (uchar *)0x0;
  uVar2 = sysconf(0x27);
  local_24 = 0;
  uVar2 = uVar2 & ~((int)uVar2 >> 0x1f);
  local_28 = uVar2;
  if ((local_2c == (uchar *)0x0) || (uVar2 - 8 < 8)) {
    iVar6 = __udivsi3(uVar2 + 0xf,uVar2);
    puVar5 = mmap((void *)0x0,uVar2 * iVar6,3,0x22,-1,0);
    uVar2 = local_28;
    if ((puVar5 == (undefined1 *)0xffffffff) || (puVar5 == (undefined1 *)0x0)) goto LAB_0001c57e;
    iVar6 = local_28 * iVar6;
    __aeabi_uidivmod((local_28 + 0x10) - iVar6,local_28);
    local_2c = (uchar *)0x0;
    if (extraout_r1 != 0) {
      local_2c = puVar5 + (iVar6 - uVar2);
    }
    puVar3 = (undefined4 *)(puVar5 + 8);
    *puVar5 = 1;
    local_24 = extraout_r1;
LAB_0001c5fa:
    *puVar3 = *(undefined4 *)param_1;
    puVar3[1] = *(undefined4 *)(param_1 + 4);
  }
  else {
    puVar3 = (undefined4 *)crashlytics::detail::memory::detail::pack(uVar2,&local_24,&local_2c,8);
    if (puVar3 != (undefined4 *)0x0) goto LAB_0001c5fa;
LAB_0001c57e:
    crashlytics::detail::memory::
    make_function_scoped_static_byte_array<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>>()
    ::call_count = crashlytics::detail::memory::
                   make_function_scoped_static_byte_array<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>>()
                   ::call_count + 1;
    puVar3 = (undefined4 *)
             (crashlytics::detail::memory::
              make_function_scoped_static_byte_array<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>>()
              ::storage + 8);
    crashlytics::detail::memory::
    make_function_scoped_static_byte_array<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>>()
    ::storage[0] = 0;
    crashlytics::detail::memory::
    make_function_scoped_static_byte_array<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>>()
    ::storage._8_4_ = *(undefined4 *)param_1;
    crashlytics::detail::memory::
    make_function_scoped_static_byte_array<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>>()
    ::storage._12_4_ = *(undefined4 *)(param_1 + 4);
  }
  *(undefined4 **)phVar1 = puVar3;
  phVar1 = crashlytics::handler::
           handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>
           ::instance<crashlytics::handler::signal::tag>();
  local_2c = (uchar *)0x0;
  uVar2 = sysconf(0x27);
  local_24 = 0;
  uVar2 = uVar2 & ~((int)uVar2 >> 0x1f);
  local_28 = uVar2;
  if ((local_2c == (uchar *)0x0) || (uVar2 - 8 < 0x18)) {
    iVar6 = __udivsi3(uVar2 + 0x1f,uVar2);
    puVar5 = mmap((void *)0x0,uVar2 * iVar6,3,0x22,-1,0);
    if ((puVar5 != (undefined1 *)0xffffffff) && (puVar5 != (undefined1 *)0x0)) {
      __aeabi_uidivmod((local_28 + 0x20) - local_28 * iVar6);
      piVar4 = (int *)(puVar5 + 8);
      *puVar5 = 1;
      goto LAB_0001c6ae;
    }
  }
  else {
    piVar4 = (int *)crashlytics::detail::memory::detail::pack(uVar2,&local_24,&local_2c,0x18);
    if (piVar4 != (int *)0x0) {
LAB_0001c6ae:
      *piVar4 = param_2->si_signo;
      iVar6 = param_2->si_code;
      iVar7 = (param_2->_sifields)._pad[0];
      iVar8 = (param_2->_sifields)._pad[1];
      piVar4[1] = param_2->si_errno;
      piVar4[2] = iVar6;
      piVar4[3] = iVar7;
      piVar4[4] = iVar8;
      piVar4[5] = (param_2->_sifields)._pad[2];
      goto LAB_0001c6e2;
    }
  }
  crashlytics::detail::memory::
  make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
  ::call_count = crashlytics::detail::memory::
                 make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
                 ::call_count + 1;
  crashlytics::detail::memory::
  make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
  ::storage[0] = 0;
  p_Var9 = (_union_1031 *)&param_2->si_errno;
  crashlytics::detail::memory::
  make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
  ::storage._8_4_ = param_2->si_signo;
  piVar4 = (int *)(crashlytics::detail::memory::
                   make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
                   ::storage + 0xc);
  do {
    iVar6 = p_Var9->_pad[0];
    iVar7 = p_Var9->_pad[1];
    p_Var9 = (_union_1031 *)((int)p_Var9 + 8);
    *piVar4 = iVar6;
    piVar4[1] = iVar7;
    piVar4 = piVar4 + 2;
  } while (p_Var9 != (_union_1031 *)((int)&param_2->_sifields + 8));
  crashlytics::detail::memory::
  make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
  ::storage._28_4_ = (param_2->_sifields)._pad[2];
  piVar4 = (int *)(crashlytics::detail::memory::
                   make_function_scoped_static_byte_array<std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>>()
                   ::storage + 8);
LAB_0001c6e2:
  *(int **)(phVar1 + 4) = piVar4;
  return;
}
