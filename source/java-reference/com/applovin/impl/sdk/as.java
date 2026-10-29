package com.applovin.impl.sdk;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
class as implements DialogInterface.OnClickListener {
    final /* synthetic */ ar a;

    as(ar arVar) {
        this.a = arVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.a.h.schedule(new at(this), 200L);
    }
}
