package com.chartboost.sdk.impl;

/* JADX INFO: loaded from: classes.dex */
public class ck implements ch {
    static final String[] a = new String[128];
    private byte[] b = new byte[1024];
    private byte[] c = new byte[1024];
    private cq d = new cq();

    static {
        a((byte) 48, (byte) 57);
        a((byte) 97, (byte) 122);
        a((byte) 65, (byte) 90);
    }

    static void a(byte b, byte b2) {
        while (b < b2) {
            a[b] = "" + ((char) b);
            b = (byte) (b + 1);
        }
    }
}
