package com.chartboost.sdk.impl;

/* JADX INFO: loaded from: classes.dex */
public class d implements p {
    private int a;
    private int b;
    private final int c;
    private final float d;

    public d() {
        this(2500, 1, 1.0f);
    }

    public d(int i, int i2, float f) {
        this.a = i;
        this.c = i2;
        this.d = f;
    }

    @Override // com.chartboost.sdk.impl.p
    public int a() {
        return this.a;
    }

    @Override // com.chartboost.sdk.impl.p
    public int b() {
        return this.b;
    }

    @Override // com.chartboost.sdk.impl.p
    public void a(s sVar) throws s {
        this.b++;
        this.a = (int) (this.a + (this.a * this.d));
        if (!c()) {
            throw sVar;
        }
    }

    protected boolean c() {
        return this.b <= this.c;
    }
}
