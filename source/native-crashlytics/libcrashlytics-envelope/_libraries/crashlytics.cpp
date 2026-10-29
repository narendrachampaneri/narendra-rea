// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- crashlytics::envelope::unwind_context::unwind_context  @ 0x1333c
/* crashlytics::envelope::unwind_context::unwind_context(unw_addr_space*) */

void __thiscall
crashlytics::envelope::unwind_context::unwind_context(unwind_context *this,unw_addr_space *param_1)

{
  *(unw_addr_space **)this = param_1;
  return;
}

// ---- crashlytics::envelope::unwind_context::~unwind_context  @ 0x13340
/* crashlytics::envelope::unwind_context::~unwind_context() */

unwind_context * __thiscall
crashlytics::envelope::unwind_context::~unwind_context(unwind_context *this)

{
  return this;
}

// ---- crashlytics::envelope::unwind_context::address_space  @ 0x13342
/* crashlytics::envelope::unwind_context::address_space() const */

undefined4 __thiscall crashlytics::envelope::unwind_context::address_space(unwind_context *this)

{
  return *(undefined4 *)this;
}

// ---- crashlytics::envelope::detail::managed_cursor::managed_cursor  @ 0x1341c
/* crashlytics::envelope::detail::managed_cursor::managed_cursor() */

managed_cursor * __thiscall
crashlytics::envelope::detail::managed_cursor::managed_cursor(managed_cursor *this)

{
  void *pvVar1;
  
  pvVar1 = operator_new(0x4000);
  *(void **)this = pvVar1;
  return this;
}

// ---- crashlytics::envelope::detail::managed_cursor::~managed_cursor  @ 0x1342e
/* crashlytics::envelope::detail::managed_cursor::~managed_cursor() */

managed_cursor * __thiscall
crashlytics::envelope::detail::managed_cursor::~managed_cursor(managed_cursor *this)

{
  operator_delete(*(void **)this);
  return this;
}
