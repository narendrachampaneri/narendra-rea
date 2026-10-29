package com.immersion.content;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HeaderUtils {

    /* JADX INFO: renamed from: b044Aъъ044A044Aъ, reason: contains not printable characters */
    public static int f8b044A044A044A = 1;

    /* JADX INFO: renamed from: bъ044Aъ044A044Aъ, reason: contains not printable characters */
    public static int f9b044A044A044A = 2;

    /* JADX INFO: renamed from: bъъъ044A044Aъ, reason: contains not printable characters */
    public static int f10b044A044A = 86;

    /* JADX INFO: renamed from: b044A044Aъ044A044Aъ, reason: contains not printable characters */
    public static int m15b044A044A044A044A() {
        return 34;
    }

    public abstract int calculateBlockRate();

    public abstract int calculateBlockSize();

    public abstract int calculateByteOffsetIntoHapticData(int i);

    public abstract void dispose();

    public abstract String getContentUUID();

    public abstract int getEncryption();

    public abstract int getMajorVersionNumber();

    public abstract int getMinorVersionNumber();

    public abstract int getNumChannels();

    public abstract void setEncryptedHSI(ByteBuffer byteBuffer, int i);
}
