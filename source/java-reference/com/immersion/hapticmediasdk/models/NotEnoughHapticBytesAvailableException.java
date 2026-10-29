package com.immersion.hapticmediasdk.models;

/* JADX INFO: loaded from: classes2.dex */
public class NotEnoughHapticBytesAvailableException extends Exception {

    /* JADX INFO: renamed from: b04210421С0421С0421, reason: contains not printable characters */
    public static int f86b0421042104210421 = 0;

    /* JADX INFO: renamed from: b0421С04210421С0421, reason: contains not printable characters */
    public static int f87b0421042104210421 = 2;

    /* JADX INFO: renamed from: bС0421С0421С0421, reason: contains not printable characters */
    public static int f88b042104210421 = 89;

    /* JADX INFO: renamed from: bСС04210421С0421, reason: contains not printable characters */
    public static int f89b042104210421 = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotEnoughHapticBytesAvailableException(String str) throws Exception {
        super(str);
        if (((f88b042104210421 + f89b042104210421) * f88b042104210421) % f87b0421042104210421 != f86b0421042104210421) {
            f88b042104210421 = 11;
            f86b0421042104210421 = 70;
        }
        try {
        } catch (Exception e) {
            throw e;
        }
    }
}
