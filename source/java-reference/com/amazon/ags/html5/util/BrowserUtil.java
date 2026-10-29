package com.amazon.ags.html5.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class BrowserUtil {
    private final Context context;

    public BrowserUtil(Context context) {
        this.context = context;
    }

    public final void launchBrowser(String url) {
        Intent browserIntent = new Intent("android.intent.action.VIEW");
        browserIntent.setFlags(335609856);
        browserIntent.setData(Uri.parse(url));
        this.context.startActivity(browserIntent);
    }
}
