package com.vungle.publisher;

import android.content.Context;
import com.vungle.log.Logger;
import java.util.ArrayList;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dd {
    public static boolean a(Context context, bt btVar) {
        return btVar.a(br.KITKAT) || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static String[] b(Context context, bt btVar) {
        ArrayList arrayList = new ArrayList();
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            arrayList.add("android.permission.INTERNET");
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        }
        if (!a(context, btVar)) {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (arrayList.size() > 0) {
            Logger.w(Logger.VUNGLE_TAG, "Make sure to add <uses-permission> for \"" + de.a(", ", arrayList) + "\" in your AndroidManifest.xml? AND request if revoked in the runtime, which is possible on Android Marshmallow (API 23) and above.");
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
