// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- _findinfo_t::_findinfo_t  @ 0x5051d0
/* _findinfo_t::_findinfo_t() */

_findinfo_t * __thiscall _findinfo_t::_findinfo_t(_findinfo_t *this)

{
  RakNet::RakString::RakString((RakString *)(this + 4));
  RakNet::RakString::RakString((RakString *)(this + 8));
  return this;
}

// ---- _findinfo_t::~_findinfo_t  @ 0x50535c
/* _findinfo_t::~_findinfo_t() */

_findinfo_t * __thiscall _findinfo_t::~_findinfo_t(_findinfo_t *this)

{
  RakNet::RakString::~RakString((RakString *)(this + 8));
  RakNet::RakString::~RakString((RakString *)(this + 4));
  return this;
}
