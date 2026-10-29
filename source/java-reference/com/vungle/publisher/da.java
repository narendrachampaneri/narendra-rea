package com.vungle.publisher;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class da {
    public static <T> T[] a(T[]... tArr) {
        Class<?> cls = null;
        int length = 0;
        for (int i = 0; i < 2; i++) {
            T[] tArr2 = tArr[i];
            if (tArr2 != null) {
                length += tArr2.length;
                cls = tArr2.getClass();
            }
        }
        if (cls == null) {
            return null;
        }
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(cls.getComponentType(), length));
        int length2 = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            T[] tArr4 = tArr[i2];
            if (tArr4 != null) {
                System.arraycopy(tArr4, 0, tArr3, length2, tArr4.length);
                length2 += tArr4.length;
            }
        }
        return tArr3;
    }
}
