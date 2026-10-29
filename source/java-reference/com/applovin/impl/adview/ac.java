package com.applovin.impl.adview;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ac implements View.OnClickListener {
    final /* synthetic */ x a;

    ac(x xVar) {
        this.a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.dismiss();
    }
}
