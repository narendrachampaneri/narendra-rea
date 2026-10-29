package com.immersion.content;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class HapticHeaderUtils extends HeaderUtils {
    private static final String b = "HapticHeaderUtils";

    /* JADX INFO: renamed from: b042104210421С04210421, reason: contains not printable characters */
    public static int f4b04210421042104210421 = 33;

    /* JADX INFO: renamed from: b04210421С042104210421, reason: contains not printable characters */
    public static int f5b04210421042104210421 = 0;

    /* JADX INFO: renamed from: b0421СС042104210421, reason: contains not printable characters */
    public static int f6b0421042104210421 = 2;

    /* JADX INFO: renamed from: bССС042104210421, reason: contains not printable characters */
    public static int f7b042104210421 = 1;
    long a;
    private byte[] c;
    private int d;

    public HapticHeaderUtils() throws Exception {
        int i = f4b04210421042104210421;
        switch ((i * (f7b042104210421 + i)) % f6b0421042104210421) {
            case 0:
                break;
            default:
                f4b04210421042104210421 = 43;
                f7b042104210421 = m13b0421042104210421();
                break;
        }
        try {
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b0421С0421042104210421, reason: contains not printable characters */
    public static int m12b04210421042104210421() {
        return 1;
    }

    /* JADX INFO: renamed from: bС0421С042104210421, reason: contains not printable characters */
    public static int m13b0421042104210421() {
        return 80;
    }

    /* JADX INFO: renamed from: bСС0421042104210421, reason: contains not printable characters */
    public static int m14b0421042104210421() {
        return 0;
    }

    private native int calculateBlockRateNative(long j);

    private native int calculateBlockSizeNative(long j);

    private native int calculateByteOffsetIntoHapticDataNative(long j, int i);

    private native void disposeNative(long j);

    private native String getContentIdNative(long j);

    private native int getEncryptionNative(long j);

    private native int getMajorVersionNumberNative(long j);

    private native int getMinorVersionNumberNative(long j);

    private native int getNumChannelsNative(long j);

    private native long init(byte[] bArr, int i);

    @Override // com.immersion.content.HeaderUtils
    public int calculateBlockRate() {
        if (((f4b04210421042104210421 + m12b04210421042104210421()) * f4b04210421042104210421) % f6b0421042104210421 != m14b0421042104210421()) {
            f4b04210421042104210421 = m13b0421042104210421();
            f5b04210421042104210421 = 12;
        }
        return calculateBlockRateNative(this.a);
    }

    @Override // com.immersion.content.HeaderUtils
    public int calculateBlockSize() {
        if (((f4b04210421042104210421 + f7b042104210421) * f4b04210421042104210421) % f6b0421042104210421 != f5b04210421042104210421) {
            f4b04210421042104210421 = m13b0421042104210421();
            f5b04210421042104210421 = 84;
        }
        int iCalculateBlockSizeNative = calculateBlockSizeNative(this.a);
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        char c = 0;
                        switch (c) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        return iCalculateBlockSizeNative;
    }

    @Override // com.immersion.content.HeaderUtils
    public int calculateByteOffsetIntoHapticData(int i) {
        long j = this.a;
        int iM13b0421042104210421 = m13b0421042104210421();
        switch ((iM13b0421042104210421 * (f7b042104210421 + iM13b0421042104210421)) % f6b0421042104210421) {
            case 0:
                break;
            default:
                f4b04210421042104210421 = 89;
                f5b04210421042104210421 = m13b0421042104210421();
                break;
        }
        return calculateByteOffsetIntoHapticDataNative(j, i);
    }

    @Override // com.immersion.content.HeaderUtils
    public void dispose() {
        char c = 0;
        while (true) {
            switch (c) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (c) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        if (((f4b04210421042104210421 + m12b04210421042104210421()) * f4b04210421042104210421) % f6b0421042104210421 != f5b04210421042104210421) {
            f4b04210421042104210421 = m13b0421042104210421();
            f5b04210421042104210421 = 92;
        }
        disposeNative(this.a);
    }

    @Override // com.immersion.content.HeaderUtils
    public String getContentUUID() throws Exception {
        try {
            long j = this.a;
            if (((f4b04210421042104210421 + m12b04210421042104210421()) * f4b04210421042104210421) % f6b0421042104210421 != m14b0421042104210421()) {
                f4b04210421042104210421 = 46;
                f5b04210421042104210421 = 43;
            }
            return getContentIdNative(j);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override // com.immersion.content.HeaderUtils
    public int getEncryption() {
        long j = this.a;
        if (((f4b04210421042104210421 + f7b042104210421) * f4b04210421042104210421) % f6b0421042104210421 != f5b04210421042104210421) {
            f4b04210421042104210421 = m13b0421042104210421();
            f5b04210421042104210421 = m13b0421042104210421();
        }
        return getEncryptionNative(j);
    }

    @Override // com.immersion.content.HeaderUtils
    public int getMajorVersionNumber() {
        return getMajorVersionNumberNative(this.a);
    }

    @Override // com.immersion.content.HeaderUtils
    public int getMinorVersionNumber() throws Exception {
        if (((f4b04210421042104210421 + m12b04210421042104210421()) * f4b04210421042104210421) % f6b0421042104210421 != f5b04210421042104210421) {
            f4b04210421042104210421 = m13b0421042104210421();
            f5b04210421042104210421 = m13b0421042104210421();
        }
        try {
            try {
                return getMinorVersionNumberNative(this.a);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    @Override // com.immersion.content.HeaderUtils
    public int getNumChannels() throws Exception {
        if (((f4b04210421042104210421 + m12b04210421042104210421()) * f4b04210421042104210421) % f6b0421042104210421 != f5b04210421042104210421) {
            f4b04210421042104210421 = 92;
            f5b04210421042104210421 = m13b0421042104210421();
        }
        try {
            return getNumChannelsNative(this.a);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override // com.immersion.content.HeaderUtils
    public void setEncryptedHSI(ByteBuffer byteBuffer, int i) {
        this.d = i;
        this.c = new byte[this.d];
        byteBuffer.get(this.c, 0, this.d);
        this.a = init(this.c, this.d);
    }
}
