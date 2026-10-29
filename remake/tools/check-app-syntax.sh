#!/usr/bin/env bash
# Type-checks the Axmol-dependent sources (Source/app, AppDelegate.cpp) against the pinned
# engine headers on this computer, without the Android SDK or an engine build (-fsyntax-only).
# Catches API mistakes in seconds instead of waiting for the Gradle build.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
AX="${AX_ROOT:-$ROOT/axmol}"
CXX="${CXX:-c++}"
GEN="$(mktemp -d)"
trap 'rm -rf "$GEN"' EXIT
sed 's/@AX_GIT_PRESENT@/0/; s/@AX_BUILD_NUM@/0/; s/@AX_GIT_BRANCH@/none/; s/@AX_GIT_COMMIT_HASH@/none/' \
  "$AX/core/axmolver.h.in" > "$GEN/axmolver.h"
INCLUDES=(-I"$GEN" -I"$ROOT/Source" -I"$AX" -I"$AX/core" -I"$AX/3rdparty" -I"$AX/3rdparty/robin-map/include"
  -I"$AX/3rdparty/fmt/include" -I"$AX/3rdparty/glad/include" -I"$AX/3rdparty/glfw/include"
  -I"$AX/3rdparty/yasio" -I"$AX/3rdparty/freetype/include")
status=0
for f in "$ROOT"/Source/app/*.cpp "$ROOT/Source/AppDelegate.cpp"; do
  "$CXX" -fsyntax-only -std=c++20 -Wall -Wextra -Wno-deprecated-declarations "${INCLUDES[@]}" "$f" || status=1
done
[ $status -eq 0 ] && echo "app sources type-check OK"
exit $status
