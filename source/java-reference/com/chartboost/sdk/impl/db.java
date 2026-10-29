package com.chartboost.sdk.impl;

/* JADX INFO: loaded from: classes.dex */
public class db {
    public static <T> T a(String str, T t) throws IllegalArgumentException {
        if (t == null) {
            throw new a(str);
        }
        return t;
    }

    static class a extends IllegalArgumentException {
        a(String str) {
            super(str + " should not be null!");
        }
    }
}
