package com.vungle.publisher;

import com.vungle.publisher.db.model.Ad;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class j extends bx implements i {
    protected final Ad<?, ?, ?> b;

    public j(Ad<?, ?, ?> ad) {
        this.b = ad;
    }

    @Override // com.vungle.publisher.i
    public final Ad<?, ?, ?> a() {
        return this.b;
    }
}
