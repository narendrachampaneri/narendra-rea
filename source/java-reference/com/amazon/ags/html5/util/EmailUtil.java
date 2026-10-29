package com.amazon.ags.html5.util;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class EmailUtil {
    private static final String TAG = "GC_" + EmailUtil.class.getSimpleName();
    private final Context context;

    public EmailUtil(Context context) {
        this.context = context;
    }

    public final void launchEmailEditor(String mailTo, String subject, String body) {
        Intent emailIntent = new Intent("android.intent.action.SEND");
        emailIntent.setFlags(335609856);
        String[] mailToList = {mailTo};
        String[] ccList = new String[0];
        String[] bccList = new String[0];
        emailIntent.putExtra("android.intent.extra.EMAIL", mailToList);
        emailIntent.putExtra("android.intent.extra.CC", ccList);
        emailIntent.putExtra("android.intent.extra.BCC", bccList);
        emailIntent.putExtra("android.intent.extra.SUBJECT", subject);
        emailIntent.setType("plain/text");
        emailIntent.putExtra("android.intent.extra.TEXT", body);
        this.context.startActivity(emailIntent);
    }
}
