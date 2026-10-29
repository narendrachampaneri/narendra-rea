#!/usr/bin/env bash
# Write ARM Thumb disassembly for every function REA decompile_all could not decompile.
# Usage: disassemble-failed.sh <decompile-index.json> <libcocos2dcpp.so> <out-dir>
# Ghidra loads the library at image base 0x10000, so ELF address = Ghidra address - 0x10000.
set -euo pipefail

index="$1" so="$2" out="$3"
mkdir -p "$out"
node -e 'for (const f of JSON.parse(require("fs").readFileSync(process.argv[1])).functions)
  if (f.status === "failed") for (const r of f.body?.ranges ?? []) console.log(f.name, r.start, r.end)' "$index" |
while read -r name start end; do
  s=$(( start - 0x10000 )); e=$(( end - 0x10000 + 1 ))
  file="$out/$(echo "$name" | sed 's/::/__/g').s"
  {
    echo "// $name  ghidra=$start-$end  elf=$(printf '0x%x-0x%x' "$s" $((e - 1)))  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)"
    llvm-objdump -d --no-show-raw-insn --triple=thumbv7-linux-gnueabi --start-address="$s" --stop-address="$e" "$so" | sed -n '/^ *[0-9a-f]*:/p'
  } >> "$file"
done
