package com.applovin.impl.sdk;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
class av implements DialogInterface.OnClickListener {
    final /* synthetic */ ar a;

    av(ar arVar) {
        this.a = arVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.a.b.a(this.a.a.g);
    }
}
