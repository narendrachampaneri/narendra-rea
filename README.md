# narendra-rea

Android app distribution and reverse-engineering notes.

## Download

Get the latest APK from the [Releases](../../releases) page. The APK is attached
as a release asset (GitHub allows up to 2 GB per release asset; the 25 MB limit
only applies to uploading files into the repository through the web UI).

## Install

1. Download the `.apk` from the latest release.
2. On your Android device, allow installs from unknown sources for your browser or file manager.
3. Open the downloaded file and install.

## Verify the download

Each release lists a SHA-256 checksum. Compare it with your download:

```bash
sha256sum app-release.apk
```

## Repository layout

- `README.md` - this file
- `RELEASING.md` - how to publish a new release
- `CHANGELOG.md` - notable changes per version
- `.gitignore` - keeps build outputs such as `*.apk` out of git history
