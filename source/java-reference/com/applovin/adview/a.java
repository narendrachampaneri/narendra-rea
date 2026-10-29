package com.applovin.adview;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
class a implements DialogInterface.OnClickListener {
    final /* synthetic */ AppLovinConfirmationActivity a;

    a(AppLovinConfirmationActivity appLovinConfirmationActivity) {
        this.a = appLovinConfirmationActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
