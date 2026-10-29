package com.vungle.publisher;

import java.util.Arrays;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class de {
    private static final char[] a = "0123456789abcdef".toCharArray();

    public static <T> String a(T... tArr) {
        return a(", ", tArr == null ? null : Arrays.asList(tArr));
    }

    public static String a(Iterable<?> iterable) {
        return a(", ", iterable);
    }

    public static String a(String str, Iterable<?> iterable) {
        if (iterable == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    public static String a(Enum<?> r1) {
        if (r1 == null) {
            return null;
        }
        return r1.name();
    }

    public static String b(Object[] objArr) {
        return "[" + a(objArr) + "]";
    }
}
