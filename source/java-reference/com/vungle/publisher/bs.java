package com.vungle.publisher;

import com.vungle.publisher.env.WrapperFramework;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class bs implements bv {
    private final String a;
    private final String b;
    private final WrapperFramework c;

    public bs(String str, String str2, WrapperFramework wrapperFramework) {
        this.a = str;
        this.b = str2;
        this.c = wrapperFramework;
    }

    @Override // com.vungle.publisher.bv
    public final String a() {
        return this.a;
    }

    @Override // com.vungle.publisher.bv
    public final String b() {
        return this.b;
    }
}
