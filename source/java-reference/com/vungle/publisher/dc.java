package com.vungle.publisher;

import android.text.TextUtils;
import com.newrelic.agent.android.util.SafeJsonPrimitive;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dc {
    public static String a(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getClass().getName());
        String message = th.getMessage();
        if (!TextUtils.isEmpty(message)) {
            sb.append(':').append(SafeJsonPrimitive.NULL_CHAR).append(message);
        }
        return sb.toString();
    }
}
