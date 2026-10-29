package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class ad {
    public static m a(Context context, z zVar) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = String.valueOf(packageName) + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (zVar == null) {
            if (Build.VERSION.SDK_INT >= 9) {
                zVar = new aa();
            } else {
                zVar = new x(AndroidHttpClient.newInstance(str));
            }
        }
        m mVar = new m(new w(file), new u(zVar));
        mVar.a();
        return mVar;
    }

    public static m a(Context context) {
        return a(context, null);
    }
}
