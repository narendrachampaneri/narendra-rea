package com.vungle.publisher.protocol.message;

import com.vungle.log.Logger;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseJsonSerializable<T> {
    public abstract T b() throws JSONException;

    public final String c() throws JSONException {
        T tB = b();
        if (tB == null) {
            return null;
        }
        return tB.toString();
    }

    protected static void a(String str, Object obj) {
        if (obj == null) {
            Logger.d(Logger.PROTOCOL_TAG, "null " + str + " is required output");
        }
    }
}
