#!/usr/bin/env bash
# Builds and runs the engine-independent unit tests (Tests/*.cpp) on this computer.
# Engine-free sources are everything under Source/ except Source/app/ and AppDelegate.cpp.
# Needs g++ or clang++ and the pinned Axmol checkout (tools/fetch-axmol.sh) for doctest and pugixml.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
AX="${AX_ROOT:-$ROOT/axmol}"
CXX="${CXX:-c++}"
OUT="$(mktemp -d)"
trap 'rm -rf "$OUT"' EXIT
cat > "$OUT/main.cpp" <<'EOF'
#include "doctest/doctest.h"
int main(int argc, char** argv) { doctest::Context c; c.applyCommandLine(argc, argv); return c.run(); }
EOF
mapfile -t SOURCES < <(find "$ROOT/Source" -name '*.cpp' -not -path "$ROOT/Source/app/*" -not -name AppDelegate.cpp | sort)
"$CXX" -std=c++20 -O1 -Wall -Wextra -I"$ROOT/Source" -I"$AX/3rdparty" \
  -DMM_CONTENT_DIR="\"$ROOT/Content\"" \
  "$AX/3rdparty/doctest/doctest.cpp" "$AX/3rdparty/pugixml/pugixml.cpp" "$OUT/main.cpp" \
  "${SOURCES[@]}" "$ROOT"/Tests/*.cpp -o "$OUT/tests"
"$OUT/tests" "$@"
