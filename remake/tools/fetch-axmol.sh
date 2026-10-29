#!/usr/bin/env bash
# Fetches the pinned Axmol engine into remake/axmol (ignored by git).
# The Android project (proj.android/settings.gradle) picks it up from there.
set -euo pipefail
VERSION="${AXMOL_VERSION:-v2.11.5}"
DEST="$(cd "$(dirname "$0")/.." && pwd)/axmol"
if [ -d "$DEST/.git" ] && [ "$(git -C "$DEST" describe --tags --exact-match 2>/dev/null)" = "$VERSION" ]; then
  echo "Axmol $VERSION already present"; exit 0
fi
rm -rf "$DEST"
git clone --depth 1 --branch "$VERSION" https://github.com/axmolengine/axmol.git "$DEST"
echo "Axmol $VERSION ready in $DEST"
