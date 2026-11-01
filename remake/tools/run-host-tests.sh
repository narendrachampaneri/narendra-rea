#!/usr/bin/env bash
# Builds and runs the engine-independent unit tests (Tests/*.cpp) on this computer.
# Engine-free sources are everything under Source/ except Source/app/ and AppDelegate.cpp.
# Needs g++ or clang++, zlib development headers, and the pinned Axmol checkout
# (tools/fetch-axmol.sh) for doctest, pugixml and Chipmunk.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
AX="${AX_ROOT:-$ROOT/axmol}"
CXX="${CXX:-c++}"
CC="${CC:-cc}"
OUT="$(mktemp -d)"
trap 'rm -rf "$OUT"' EXIT
cat > "$OUT/main.cpp" <<'EOF'
#include "doctest/doctest.h"
#include "game/Rules.h"
// The tests check the original rules; the mod profile (the app default) has its own tests.
int main(int argc, char** argv) { mm::rules::gMod = mm::rules::ModProfile::original(); doctest::Context c; c.applyCommandLine(argc, argv); return c.run(); }
EOF
# Chipmunk 7 exactly as Axmol builds it (floats, no Apple CG types).
CP="$AX/3rdparty/chipmunk"
mkdir -p "$OUT/cp"
for f in "$CP"/src/*.c; do
  [ "$(basename "$f")" = cpHastySpace.c ] && continue
  "$CC" -std=gnu99 -O2 -DNDEBUG -DCP_USE_DOUBLES=0 -DCP_USE_CGTYPES=0 -I"$CP/include" -c "$f" -o "$OUT/cp/$(basename "$f" .c).o"
done
mapfile -t SOURCES < <(find "$ROOT/Source" -name '*.cpp' -not -path "$ROOT/Source/app/*" -not -name AppDelegate.cpp | sort)
"$CXX" -std=c++20 -O1 -Wall -Wextra -I"$ROOT/Source" -I"$AX/3rdparty" -I"$CP/include" \
  -DCP_USE_DOUBLES=0 -DCP_USE_CGTYPES=0 \
  -DMM_CONTENT_DIR="\"$ROOT/Content\"" \
  "$AX/3rdparty/doctest/doctest.cpp" "$AX/3rdparty/pugixml/pugixml.cpp" "$OUT/main.cpp" \
  "${SOURCES[@]}" "$ROOT"/Tests/*.cpp "$OUT"/cp/*.o -lz -o "$OUT/tests"
"$OUT/tests" "$@"
