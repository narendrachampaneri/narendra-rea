package com.amazon.ags.html5.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkUtil {
    private static final String TAG = "GC_" + NetworkUtil.class.getSimpleName();
    private final Context context;

    public NetworkUtil(Context context) {
        this.context = context;
    }

    public boolean isNetworkConnected() {
        NetworkInfo[] infos;
        ConnectivityManager cm = (ConnectivityManager) this.context.getSystemService("connectivity");
        if (cm == null || (infos = cm.getAllNetworkInfo()) == null) {
            return false;
        }
        for (NetworkInfo info : infos) {
            if (info.getState() == NetworkInfo.State.CONNECTED) {
                return true;
            }
        }
        return false;
    }
}
