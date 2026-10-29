// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- __gnu_cxx::__verbose_terminate_handler  @ 0x21f04
/* __gnu_cxx::__verbose_terminate_handler() */

void __gnu_cxx::__verbose_terminate_handler(void)

{
  int iVar1;
  char *__s;
  char *__s_00;
  int local_1c [2];
  
  if (DAT_000d55a0 != '\0') {
    fwrite("terminate called recursively\n",1,0x1d,(FILE *)0xd61c4);
                    /* WARNING: Subroutine does not return */
    abort();
  }
  DAT_000d55a0 = 1;
  iVar1 = __cxa_current_exception_type();
  if (iVar1 != 0) {
    __s = *(char **)(iVar1 + 4);
    if (*__s == '*') {
      __s = __s + 1;
    }
    local_1c[0] = -1;
    __s_00 = (char *)__cxa_demangle(__s,0,0,local_1c);
    fwrite("terminate called after throwing an instance of \'",1,0x30,(FILE *)0xd61c4);
    if (local_1c[0] == 0) goto LAB_00021f7e;
    fputs(__s,(FILE *)0xd61c4);
    do {
      fwrite(&DAT_0002c194,1,2,(FILE *)0xd61c4);
      if (local_1c[0] == 0) {
        free(__s_00);
      }
      __cxa_rethrow();
LAB_00021f7e:
      fputs(__s_00,(FILE *)0xd61c4);
    } while( true );
  }
  fwrite("terminate called without an active exception\n",1,0x2d,(FILE *)0xd61c4);
                    /* WARNING: Subroutine does not return */
  abort();
}
