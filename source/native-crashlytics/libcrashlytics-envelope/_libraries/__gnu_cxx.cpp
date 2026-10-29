// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- __gnu_cxx::__verbose_terminate_handler  @ 0x14910
/* __gnu_cxx::__verbose_terminate_handler() */

void __gnu_cxx::__verbose_terminate_handler(void)

{
  int iVar1;
  char *__s;
  char *__s_00;
  int local_1c [2];
  
  if (DAT_00023f34 != '\0') {
    fwrite("terminate called recursively\n",1,0x1d,(FILE *)0x24118);
                    /* WARNING: Subroutine does not return */
    abort();
  }
  DAT_00023f34 = 1;
  iVar1 = __cxa_current_exception_type();
  if (iVar1 != 0) {
    __s = *(char **)(iVar1 + 4);
    if (*__s == '*') {
      __s = __s + 1;
    }
    local_1c[0] = -1;
    __s_00 = (char *)__cxa_demangle(__s,0,0,local_1c);
    fwrite("terminate called after throwing an instance of \'",1,0x30,(FILE *)0x24118);
    if (local_1c[0] == 0) goto LAB_0001498a;
    fputs(__s,(FILE *)0x24118);
    do {
      fwrite(&DAT_0001c75c,1,2,(FILE *)0x24118);
      if (local_1c[0] == 0) {
        free(__s_00);
      }
      __cxa_rethrow();
LAB_0001498a:
      fputs(__s_00,(FILE *)0x24118);
    } while( true );
  }
  fwrite("terminate called without an active exception\n",1,0x2d,(FILE *)0x24118);
                    /* WARNING: Subroutine does not return */
  abort();
}
