package com.applovin.impl.sdk;

import android.content.Intent;
import com.applovin.adview.AppLovinConfirmationActivity;

/* JADX INFO: loaded from: classes.dex */
class ap implements Runnable {
    final /* synthetic */ ao a;

    ap(ao aoVar) {
        this.a = aoVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = (String) this.a.a.a(bw.ab);
        String strB = this.a.b();
        String str2 = (String) this.a.a.a(bw.ag);
        if (!n.a(AppLovinConfirmationActivity.class, this.a.c)) {
            this.a.a(strB, null);
            return;
        }
        try {
            Intent intent = new Intent(this.a.c, (Class<?>) AppLovinConfirmationActivity.class);
            intent.putExtra("dialog_title", str);
            intent.putExtra("dialog_body", strB);
            intent.putExtra("dialog_button_text", str2);
            this.a.c.startActivity(intent);
        } catch (Throwable th) {
            this.a.a(strB, th);
        }
    }
}
