#!/usr/bin/env bash
# Copies the original game assets from the read-only reference (source/apk-project/assets)
# into Content/, keeping file names and formats (the game loads them by name).
# Not copied: da2sound16.ckb (original sounds, replaced by Content/sounds), vg_*.png (ad SDK),
# api_key.txt and crashlytics-build.properties (removed services).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/../source/apk-project/assets"
DST="$ROOT/Content"
for res in sd hd hdr; do
  mkdir -p "$DST/$res"
  cp -p "$SRC/$res"/* "$DST/$res/"
done
mkdir -p "$DST/files" "$DST/fonts" "$DST/music"
cp -p "$SRC/files"/*.plist "$DST/files/"
cp -p "$SRC/fonts"/*.ttf "$DST/fonts/"
cp -p "$SRC/presMix.mp3" "$DST/music/presMix.mp3"
echo "Imported original assets into $DST"
