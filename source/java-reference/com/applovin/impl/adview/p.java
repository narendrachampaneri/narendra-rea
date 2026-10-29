package com.applovin.impl.adview;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class p implements View.OnTouchListener {
    final /* synthetic */ o a;

    p(o oVar) {
        this.a = oVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 2) {
            return true;
        }
        if (!view.hasFocus()) {
            view.requestFocus();
        }
        return false;
    }
}
