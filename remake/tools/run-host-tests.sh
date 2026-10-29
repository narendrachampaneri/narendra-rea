#!/usr/bin/env bash
# Builds and runs the engine-independent unit tests (Tests/*.cpp) on this computer.
# Needs g++ or clang++ and the pinned Axmol checkout (tools/fetch-axmol.sh) for its doctest copy.
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
"$CXX" -std=c++20 -Wall -Wextra -I"$ROOT/Source" -I"$AX/3rdparty" \
  "$AX/3rdparty/doctest/doctest.cpp" "$OUT/main.cpp" "$ROOT"/Tests/*.cpp -o "$OUT/tests"
"$OUT/tests"
