package com.amazon.ags;

/* JADX INFO: loaded from: classes2.dex */
public class VersionInfo {
    private static final int GAMECIRCLE_MAJOR_VERSION = 2;
    private static final int GAMECIRCLE_MINOR_VERSION = 4;
    private static final int GAMECIRCLE_PATCH_VERSION = 2;
    private static final int SDK_MAJOR_VERSION = 2;
    private static final int SDK_MINOR_VERSION = 4;
    private static final int SDK_PATCH_VERSION = 2;
    private static final String SDK_VERSION_QUALIFIER = null;
    private static final String SEPARATOR = ".";
    private int majorVersion;
    private int minorVersion;
    private int patchVersion;

    public static VersionInfo getGameCircleVersion() {
        return new VersionInfo(2, 4, 2);
    }

    public static VersionInfo getSDKVersion() {
        return new VersionInfo(2, 4, 2);
    }

    public VersionInfo(int major, int minor, int patch) {
        this.majorVersion = major;
        this.minorVersion = minor;
        this.patchVersion = patch;
    }

    public String getVersion() {
        String version = this.majorVersion + SEPARATOR + this.minorVersion + SEPARATOR + this.patchVersion;
        if (SDK_VERSION_QUALIFIER != null) {
            return version + "-" + SDK_VERSION_QUALIFIER;
        }
        return version;
    }

    public String toString() {
        return getVersion();
    }

    public int getMajorVersion() {
        return this.majorVersion;
    }

    public int getMinorVersion() {
        return this.minorVersion;
    }

    public int getPatchVersion() {
        return this.patchVersion;
    }
}
