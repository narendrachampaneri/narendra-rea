#!/usr/bin/env bash
# Fetches the pinned Axmol engine into remake/axmol (git-ignored) and the shader compiler
# (axslcc) it needs, so no PowerShell / setup.ps1 is required.
# The Android project (proj.android/settings.gradle) picks the engine up from remake/axmol.
set -euo pipefail
VERSION="${AXMOL_VERSION:-v2.11.5}"
DEST="$(cd "$(dirname "$0")/.." && pwd)/axmol"

if [ -d "$DEST/.git" ] && [ "$(git -C "$DEST" describe --tags --exact-match 2>/dev/null)" = "$VERSION" ]; then
  echo "Axmol $VERSION already present"
else
  rm -rf "$DEST"
  git clone --depth 1 --branch "$VERSION" https://github.com/axmolengine/axmol.git "$DEST"
fi

# axslcc: the exact version the engine pins in 1k/build.profiles
AXSLCC_VERSION="$(sed -n 's/^axslcc=//p' "$DEST/1k/build.profiles" | tr -d '\r')"
AXSLCC_DIR="$DEST/tools/external/axslcc"
case "$(uname -s)-$(uname -m)" in
  Linux-x86_64)                  PKG="linux.tar.gz"; EXE="axslcc" ;;
  Darwin-arm64)                  PKG="osx-arm64.tar.gz"; EXE="axslcc" ;;
  Darwin-x86_64)                 PKG="osx-x64.tar.gz"; EXE="axslcc" ;;
  MINGW*|MSYS*|CYGWIN*)          PKG="win64.zip"; EXE="axslcc.exe" ;;
  *) echo "Unsupported host $(uname -s)-$(uname -m) for axslcc" >&2; exit 1 ;;
esac

if [ -x "$AXSLCC_DIR/$EXE" ] && [ "$("$AXSLCC_DIR/$EXE" --version 2>&1 | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' | head -1)" = "$AXSLCC_VERSION" ]; then
  echo "axslcc $AXSLCC_VERSION already present"
else
  mkdir -p "$AXSLCC_DIR"
  TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
  URL="https://github.com/axmolengine/axslcc/releases/download/v$AXSLCC_VERSION/axslcc-$AXSLCC_VERSION-$PKG"
  echo "Downloading $URL"
  curl -fsSL --retry 3 -o "$TMP/pkg" "$URL"
  case "$PKG" in
    *.zip) unzip -q -o "$TMP/pkg" -d "$AXSLCC_DIR" ;;
    *)     tar xzf "$TMP/pkg" -C "$AXSLCC_DIR" ;;
  esac
  chmod +x "$AXSLCC_DIR/$EXE"
fi
echo "Axmol $VERSION and axslcc $AXSLCC_VERSION ready in $DEST"
