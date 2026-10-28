# Releasing

APKs are not committed to the repository. They are attached to GitHub Releases.

1. Compute the checksum: `sha256sum app-release.apk`
2. Go to **Releases -> Draft a new release**.
3. Choose or create a tag, for example `v1.0.0`, and set the target branch.
4. Set the title and paste the matching `CHANGELOG.md` entry as notes, plus the SHA-256.
5. Drag the `.apk` into **Attach binaries** (up to 2 GB per file).
6. Click **Publish release**.
