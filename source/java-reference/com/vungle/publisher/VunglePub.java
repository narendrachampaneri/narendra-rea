package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class VunglePub extends VunglePubBase {
    private static final VunglePub m = new VunglePub();

    public static VunglePub getInstance() {
        return m;
    }

    VunglePub() {
    }

    @Override // com.vungle.publisher.VunglePubBase
    protected final boolean a() {
        boolean zA = super.a();
        this.f.p();
        return zA;
    }

    @Override // com.vungle.publisher.VunglePubBase
    protected final boolean b() {
        return super.b() && this.f.p();
    }
}
