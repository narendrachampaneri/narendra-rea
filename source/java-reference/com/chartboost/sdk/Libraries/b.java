package com.chartboost.sdk.Libraries;

import io.fabric.sdk.android.services.common.CommonUtils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return String.format(Locale.US, "%0" + (bArr.length << 1) + "x", new BigInteger(1, bArr));
    }
}
