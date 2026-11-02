#!/usr/bin/env python3
"""Run ONE function of the original libcocos2dcpp.so (ARM Thumb-2) in the Unicorn emulator and log
every call it makes (cocos2d setters, constructors, virtual calls). Calls leaving the function are
not executed; they are logged and answered by small stubs (see STUBS). Used to read the exact
constants the Ghidra pseudo-C loses (floats in registers).
usage: armtrace.py <so> <symbol-or-hex-addr> [--this-size N] [--set SYMBOL=f1,f2 ...] [--arg r1=hex]
Private analysis tool, not shipped in the game."""
import sys, struct, argparse, subprocess
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from unicorn import *
from unicorn.arm_const import *

ap = argparse.ArgumentParser()
ap.add_argument('so'); ap.add_argument('func')
ap.add_argument('--set', action='append', default=[], help='GLOBAL=v1,v2 (floats, or 0xHEX ints, or i:N)')
ap.add_argument('--arg', action='append', default=[], help='r1=0x.. or s0=1.5')
ap.add_argument('--obj', action='append', default=[], help='OFFSET: put a fake object at this+OFFSET')
ap.add_argument('--field', action='append', default=[], help='OFFSET=v1,v2 floats/0xhex/i:int written at this+OFFSET')
ap.add_argument('--win', default='480,320')
ap.add_argument('--max', type=int, default=400000)
ap.add_argument('--maxlog', type=int, default=3000)
a = ap.parse_args()
data = open(a.so, 'rb').read()
elf = ELFFile(open(a.so, 'rb'))
mu = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
PAGE = 0x1000
def up(x): return (x + PAGE - 1) & ~(PAGE - 1)
for seg in elf.iter_segments():
    if seg['p_type'] != 'PT_LOAD': continue
    va, fs, ms = seg['p_vaddr'], seg['p_filesz'], seg['p_memsz']
    s = va & ~(PAGE - 1)
    mu.mem_map(s, up(va + ms) - s)
    mu.mem_write(va, data[seg['p_offset']:seg['p_offset'] + fs])
# symbols
syms = {}; byaddr = {}
dynsym = elf.get_section_by_name('.dynsym')
for i, s in enumerate(dynsym.iter_symbols()):
    syms[s.name] = s['st_value']
    if s['st_value'] and s['st_info']['type'] in ('STT_FUNC', 'STT_OBJECT'):
        byaddr.setdefault(s['st_value'] & ~1, s.name)
def demangle(names):
    p = subprocess.run(['c++filt'], input='\n'.join(names), capture_output=True, text=True)
    return p.stdout.split('\n')
# traps for imports
TRAP = 0x40000000; mu.mem_map(TRAP, 0x100000)
mu.mem_write(TRAP, b'\x70\x47' * 0x80000)  # bx lr
imports = {}
def trap_for(name):
    if name not in imports: imports[name] = TRAP + 2 * len(imports) + 0x100
    return imports[name]
for sec in elf.iter_sections():
    if not isinstance(sec, RelocationSection): continue
    symtab = elf.get_section(sec['sh_link'])
    for r in sec.iter_relocations():
        t = r['r_info_type']; off = r['r_offset']
        sym = symtab.get_symbol(r['r_info_sym']) if r['r_info_sym'] else None
        try:
            if t == 23:  # RELATIVE
                v = struct.unpack('<I', mu.mem_read(off, 4))[0]; mu.mem_write(off, struct.pack('<I', v))
            elif t in (21, 22, 2):  # GLOB_DAT, JUMP_SLOT, ABS32
                if sym.name and sym['st_shndx'] != 'SHN_UNDEF':
                    v = sym['st_value'] | (1 if sym['st_info']['type'] == 'STT_FUNC' else 0)
                else: v = trap_for(sym.name) | 1
                if t == 2: v += struct.unpack('<I', mu.mem_read(off, 4))[0]
                mu.mem_write(off, struct.pack('<I', v))
        except Exception as e: pass
# set globals
for spec in a.set:
    k, v = spec.split('=')
    vals = []
    for x in v.split(','):
        if x.startswith('i:'): vals.append(struct.pack('<i', int(x[2:])))
        elif x.startswith('0x'): vals.append(struct.pack('<I', int(x, 16)))
        else: vals.append(struct.pack('<f', float(x)))
    mu.mem_write(syms[k], b''.join(vals))
# heap & fake objects
HEAP = 0x50000000; mu.mem_map(HEAP, 0x4000000); hp = [HEAP]
def alloc(n):
    p = hp[0]; hp[0] += (n + 15) & ~15; return p
VT = 0x48000000; mu.mem_map(VT, 0x100000)
VTRAP = 0x49000000; mu.mem_map(VTRAP, 0x100000); mu.mem_write(VTRAP, b'\x70\x47' * 0x800)
for i in range(0x400): mu.mem_write(VT + 4 * i, struct.pack('<I', (VTRAP + 2 * i) | 1))
objs = {}; objn = [0]
def newobj(kind, **kw):
    p = alloc(0x400); objn[0] += 1
    mu.mem_write(p, struct.pack('<I', VT)); objs[p] = dict(id=objn[0], kind=kind, **kw)
    return p
fields = {}
def oname(p):
    if p in objs: return '#%d%s:%s' % (objs[p]['id'], ('[+0x%x]' % fields[p]) if p in fields else '', objs[p]['kind'])
    return '0x%x' % p
def fl(x): return struct.unpack('<f', struct.pack('<I', x & 0xffffffff))[0]
def cstr(p):
    try:
        b = bytes(mu.mem_read(p, 64)); return b.split(b'\0')[0].decode('latin1')
    except Exception: return None
NAMES = {}
raw = [n for n in syms if n.startswith('_Z')]
dm = demangle(raw)
for n, d in zip(raw, dm): NAMES[syms[n] & ~1] = d
VNAME = {0x40: 'setScale', 0x44: 'getScale', 0x4c: 'setPosition', 0x50: 'getPosition', 0x7c: 'setAnchorPoint', 0x90: 'setVisible',
         0xc8: 'addChild(child)', 0xcc: 'addChild(child,z)', 0xd0: 'addChild(child,z,tag)', 0xa4: 'setContentSize'}
WIN = tuple(float(x) for x in a.win.split(','))
log = []
def L(s):
    if len(log) < a.maxlog: log.append(s)
# root function
root = syms.get(a.func) or syms.get('_Z' + a.func)
if root is None:
    cand = [n for n in syms if n.startswith('_Z') and demangle([n])[0].split('(')[0] == a.func]
    root = syms[cand[0]] if cand else int(a.func, 16)
root &= ~1
rootend = root + 0x4000
this = alloc(0x2000); mu.mem_write(this, struct.pack('<I', VT)); objs[this] = dict(id=0, kind='THIS')
mu.mem_map(0x7f000000, 0x100000); sp = 0x7f0f0000
for o in a.obj:
    q = newobj('field%s' % o); mu.mem_write(this + int(o, 0), struct.pack('<I', q)); fields[q] = int(o, 0)
for spec in a.field:
    k, v = spec.split('=')
    b = b''
    for x in v.split(','):
        b += struct.pack('<i', int(x[2:])) if x.startswith('i:') else (struct.pack('<I', int(x, 16)) if x.startswith('0x') else struct.pack('<f', float(x)))
    mu.mem_write(this + int(k, 0), b)
mu.reg_write(UC_ARM_REG_SP, sp); mu.reg_write(UC_ARM_REG_R0, this); mu.reg_write(UC_ARM_REG_LR, TRAP | 1)
for s in a.arg:
    k, v = s.split('=')
    if k.startswith('r'): mu.reg_write(UC_ARM_REG_R0 + int(k[1:]), int(v, 0))
    else: mu.reg_write(UC_ARM_REG_S0 + int(k[1:]), 0)
# Unicorn needs FPU enabled
mu.reg_write(UC_ARM_REG_C1_C0_2, mu.reg_read(UC_ARM_REG_C1_C0_2) | (0xf << 20))
mu.reg_write(UC_ARM_REG_FPEXC, 0x40000000)
R = lambda r: mu.reg_read(r)
def ret(v=0):
    mu.reg_write(UC_ARM_REG_R0, v & 0xffffffff)
    lr = R(UC_ARM_REG_LR); mu.reg_write(UC_ARM_REG_PC, lr | 1)
def wf(p, *v): mu.mem_write(p, b''.join(struct.pack('<f', x) for x in v))
def rf(p, n): return struct.unpack('<%df' % n, bytes(mu.mem_read(p, 4 * n)))
lastfn = [None]
def hook_code(uc, addr, size, ud):
    # virtual-call trap
    if VTRAP <= addr < VTRAP + 0x800:
        slot = (addr - VTRAP) // 2 * 4
        r0, r1, r2, r3 = R(UC_ARM_REG_R0), R(UC_ARM_REG_R1), R(UC_ARM_REG_R2), R(UC_ARM_REG_R3)
        vn = VNAME.get(slot, 'virt+0x%x' % slot)
        extra = ''
        o = objs.get(r0)
        if slot == 0x4c:
            p = rf(r1, 2); mu.mem_write(r0 + 8, struct.pack('<ff', *p)); extra = 'pos=(%g, %g)' % p
        elif slot == 0x50:
            ret(r0 + 8); L('%s.getPosition() -> %s' % (oname(r0), rf(r0 + 8, 2))); return
        elif slot == 0x40: extra = 'scale=%g' % fl(r1)
        elif slot == 0x7c:
            p = rf(r1, 2); extra = 'anchor=(%g, %g)' % p
        elif slot == 0x1bc: extra = 'color=%s' % list(bytes(mu.mem_read(r1, 3)))
        elif slot == 0x38: extra = 'setScaleX=%g' % fl(r1)
        elif slot == 0x3c: extra = 'setScaleY=%g' % fl(r1)
        elif slot == 0x90: extra = 'visible=%d' % (r1 & 0xff)
        elif slot in (0xc8, 0xcc, 0xd0): extra = 'child=%s z=%d' % (oname(r1), 0 if slot == 0xc8 else r2)
        elif slot == 0xa4: extra = 'size=%s' % (rf(r1, 2),)
        else: extra = 'r1=0x%x(%g) r2=0x%x(%g) r3=0x%x(%g)' % (r1, fl(r1), r2, fl(r2), r3, fl(r3))
        L('%s.%s %s' % (oname(r0), vn, extra))
        ret(r0 if slot not in (0xc8, 0xcc, 0xd0) else r1); return
    if TRAP <= addr < TRAP + 0x100000 and addr >= TRAP + 0x100:
        nm = [k for k, v in imports.items() if v == addr]
        L('IMPORT %s r0=%x r1=%x' % (nm[0] if nm else hex(addr), R(UC_ARM_REG_R0), R(UC_ARM_REG_R1)))
        if nm and nm[0] in ('operator new', '_Znwj'): ret(alloc(R(UC_ARM_REG_R0)))
        else: ret(0)
        return
    if addr == TRAP: uc.emu_stop(); return
    if not (root <= addr < rootend) and addr in NAMES or (not (root <= addr < rootend) and (addr & ~1) in byaddr):
        nm = NAMES.get(addr) or byaddr.get(addr)
        r0, r1, r2, r3 = R(UC_ARM_REG_R0), R(UC_ARM_REG_R1), R(UC_ARM_REG_R2), R(UC_ARM_REG_R3)
        short = nm.split('(')[0]
        if short.endswith('CCPoint::CCPoint') or short.endswith('CCSize::CCSize'):
            if '(float' in nm: wf(r0, fl(r1), fl(r2)); L('%s(%g, %g)' % (short, fl(r1), fl(r2)))
            elif nm.endswith('(cocos2d::CCPoint const&)'): mu.mem_write(r0, bytes(mu.mem_read(r1, 8)))
            ret(r0); return
        if short.endswith('CCPoint::operator+') or short.endswith('CCPoint::operator-'):
            x = rf(r1, 2); y = rf(r2, 2); sg = 1 if short.endswith('+') else -1
            wf(r0, x[0] + sg * y[0], x[1] + sg * y[1]); ret(r0); return
        if short.endswith('CCPoint::operator*'):
            x = rf(r1, 2); k = fl(r2); wf(r0, x[0] * k, x[1] * k); ret(r0); return
        if short.endswith('CCDirector::getWinSize') or short.endswith('CCDirector::getVisibleSize'):
            wf(r0, WIN[0], WIN[1]); ret(r0); return
        if short.endswith('CCPoint::operator='):
            mu.mem_write(r0, bytes(mu.mem_read(r1, 8))); L('  CCPoint = (%g,%g)' % rf(r1, 2)); ret(r0); return
        if short.endswith('createWithSpriteFrameName') or short.endswith('CCSprite::create') or short.endswith('CCLabelAtlas::create') \
           or short.endswith('CCLabelTTF::create') or short.endswith('CCScale9Sprite::create') or short.endswith('CCLabelBMFont::create'):
            args = [cstr(r) if 0x1000 < r < 0x60000000 else r for r in (r0, r1, r2, r3)]
            o = newobj(short.split('::')[-2] if '::' in short else short, args=args)
            L('NEW #%d %s(%s)' % (objs[o]['id'], short, ', '.join(map(str, args)) + (' f2=%g' % fl(r2) if 'TTF' in short else '')))
            ret(o); return
        if short in ('operator new', 'operator new[]'): ret(alloc(r0)); return
        if 'sharedUserDefault' in short or 'sharedDirector' in short or 'sharedNotificationCenter' in short:
            ret(newobj(short)); L('CALL ' + nm); return
        if short.endswith('CCUserDefault::getIntegerForKey'):
            L('CALL getIntegerForKey(%s, default %d)' % (cstr(r1), r2)); ret(r2); return
        if short.endswith('CCUserDefault::getBoolForKey'):
            L('CALL getBoolForKey(%s, default %d)' % (cstr(r1), r2)); ret(r2); return
        if short.endswith('CCUserDefault::getFloatForKey'):
            L('CALL getFloatForKey(%s)' % cstr(r1)); ret(r2); return
        if short.endswith('CCNode::addChild') or short.endswith('::addChild'):
            L('%s.addChild(%s, z=%d, tag=%d)' % (oname(r0), oname(r1), r2, r3)); ret(r1); return
        if short.endswith('::init') or short.endswith('::initWithTexture'): L('CALL ' + nm); ret(1); return
        args = ' '.join('%x' % x for x in (r0, r1, r2, r3))
        sargs = [cstr(r) for r in (r1, r2, r3) if 0x1000 < r < 0x60000000]
        L('CALL %s [%s]%s' % (nm, args, ' str=' + repr([x for x in sargs if x and x.isprintable() and len(x) > 1]) if any(sargs) else ''))
        ret(newobj('ret')); return
mu.hook_add(UC_HOOK_CODE, hook_code)
objsyms = sorted((s['st_value'], s['st_size'], s.name) for s in dynsym.iter_symbols() if s['st_info']['type'] == 'STT_OBJECT' and s['st_value'])
import bisect
seen = set()
def hook_read(uc, access, addr, size, val, ud):
    i = bisect.bisect_right(objsyms, (addr, 1 << 30, '')) - 1
    if i >= 0 and objsyms[i][0] <= addr < objsyms[i][0] + max(objsyms[i][1], 1) and objsyms[i][2] not in seen and not objsyms[i][2].startswith('_ZTV'):
        seen.add(objsyms[i][2]); nm = objsyms[i][2]
        L('  GLOBAL read %s+%d = %s' % (nm, addr - objsyms[i][0], bytes(uc.mem_read(addr, 4)).hex()))
    elif addr >= 0x93f000 and ('A%x' % addr) not in seen:
        seen.add('A%x' % addr); L('  GLOBAL read unnamed @0x%x = %s' % (addr, bytes(uc.mem_read(addr, 4)).hex()))
mu.hook_add(UC_HOOK_MEM_READ, hook_read, begin=0x93f000, end=0x960000)
def hook_unmapped(uc, access, addr, size, val, ud):
    if 0 <= addr < 0x1000:
        L('!! null access @%x pc=%x' % (addr, R(UC_ARM_REG_PC))); return False
    s = addr & ~(PAGE - 1)
    try: uc.mem_map(s, PAGE); return True
    except Exception: return False
mu.hook_add(UC_HOOK_MEM_UNMAPPED, hook_unmapped)
def hook_write(uc, access, addr, size, val, ud):
    if size == 4 and (val & 0xffffffff) in objs and (val & 0xffffffff) != this:
        fields.setdefault(val & 0xffffffff, addr - this)
mu.hook_add(UC_HOOK_MEM_WRITE, hook_write, begin=this, end=this + 0x2000)
try:
    mu.emu_start(root | 1, TRAP | 1, count=a.max)
except UcError as e:
    L('!! emulation stopped: %s pc=%x lr=%x' % (e, R(UC_ARM_REG_PC), R(UC_ARM_REG_LR)))
print('\n'.join(log))
