package com.applovin.impl.adview;

import android.util.Log;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class q implements View.OnLongClickListener {
    final /* synthetic */ o a;

    q(o oVar) {
        this.a = oVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Log.d("AdWebView", "Received a LongClick event.");
        return true;
    }
}
