package com.mopub.common.util;

import io.fabric.sdk.android.services.common.CommonUtils;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    private static final AtomicLong sNextGeneratedId = new AtomicLong(1);

    public static String sha1(String string) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            MessageDigest digest = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            byte[] bytes = string.getBytes("UTF-8");
            digest.update(bytes, 0, bytes.length);
            byte[] bytes2 = digest.digest();
            for (byte b : bytes2) {
                stringBuilder.append(String.format("%02X", Byte.valueOf(b)));
            }
            return stringBuilder.toString().toLowerCase(Locale.US);
        } catch (Exception e) {
            return "";
        }
    }

    public static long generateUniqueId() {
        long result;
        long newValue;
        do {
            result = sNextGeneratedId.get();
            newValue = result + 1;
            if (newValue > 9223372036854775806L) {
                newValue = 1;
            }
        } while (!sNextGeneratedId.compareAndSet(result, newValue));
        return result;
    }

    public static boolean bitMaskContainsFlag(int bitMask, int flag) {
        return (bitMask & flag) != 0;
    }
}
