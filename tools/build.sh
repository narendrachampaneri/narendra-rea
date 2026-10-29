#!/usr/bin/env bash
# Rebuild a signed APK from source/apk-project/.
#
# Requirements: Java 17+, Apktool 2.7+ (tested with 3.0.3) and Android
# build-tools (tested with 37.0.0) for zipalign and apksigner.
#
#   APKTOOL=/path/to/apktool ANDROID_BUILD_TOOLS=/path/to/build-tools/37.0.0 tools/build.sh
#
# Output: build/app-signed.apk, signed with tools/dev-key.jks (created on first
# run). Android only installs an update over an app signed with the same key,
# so uninstall any differently-signed copy first.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
apktool="${APKTOOL:-apktool}"
build_tools="${ANDROID_BUILD_TOOLS:?set ANDROID_BUILD_TOOLS to the directory containing zipalign and apksigner}"
keystore="${KEYSTORE:-$root/tools/dev-key.jks}"
storepass="${KEYSTORE_PASS:-android}"
out="$root/build"

mkdir -p "$out"
"$apktool" b "$root/source/apk-project" -o "$out/app-unsigned.apk"
"$build_tools/zipalign" -f -p 4 "$out/app-unsigned.apk" "$out/app-aligned.apk"

if [ ! -f "$keystore" ]; then
  keytool -genkeypair -keystore "$keystore" -storepass "$storepass" -keypass "$storepass" \
    -alias dev -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Local Dev Build"
fi

"$build_tools/apksigner" sign --ks "$keystore" --ks-pass "pass:$storepass" --key-pass "pass:$storepass" \
  --ks-key-alias dev --out "$out/app-signed.apk" "$out/app-aligned.apk"
"$build_tools/apksigner" verify "$out/app-signed.apk"
rm -f "$out/app-unsigned.apk" "$out/app-aligned.apk"
echo "Built $out/app-signed.apk"
