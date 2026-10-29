package com.inmobi.monetization.internal;

/* JADX INFO: loaded from: classes.dex */
public class NativeAdObject {
    String a;
    String b;
    String c;
    e d = null;

    public NativeAdObject(String str, String str2, String str3) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String getPubContent() {
        return this.a;
    }

    public String getContextCode() {
        return this.b;
    }

    public String getNameSpace() {
        return this.c;
    }
}
