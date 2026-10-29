package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

/* JADX INFO: loaded from: classes.dex */
public class Queuer {
    private StringBuffer a = new StringBuffer();
    private long b = 0;

    long a() {
        return this.b;
    }

    public void log(EventLog eventLog) {
        synchronized (this.a) {
            this.a.append(eventLog.toString()).append(',');
            this.b++;
        }
    }

    public String get() {
        String string;
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Reading from queue");
        synchronized (this.a) {
            string = this.a.toString();
        }
        return string;
    }

    public void reset() {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Resetting queue");
        synchronized (this.a) {
            this.a = new StringBuffer();
            this.b = 0L;
        }
    }
}
