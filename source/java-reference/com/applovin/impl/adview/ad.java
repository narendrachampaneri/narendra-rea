package com.applovin.impl.adview;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ad implements View.OnClickListener {
    final /* synthetic */ u a;
    final /* synthetic */ x b;

    ad(x xVar, u uVar) {
        this.b = xVar;
        this.a = uVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.performClick();
    }
}
