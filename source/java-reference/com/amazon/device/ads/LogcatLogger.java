package com.amazon.device.ads;

import android.util.Log;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes.dex */
class LogcatLogger implements Logger {
    private String logTag;

    LogcatLogger() {
    }

    @Override // com.amazon.device.ads.Logger
    public LogcatLogger withLogTag(String logTag) {
        this.logTag = logTag;
        return this;
    }

    @Override // com.amazon.device.ads.Logger
    public void i(String message) {
        Log.i(this.logTag, message);
    }

    @Override // com.amazon.device.ads.Logger
    public void v(String message) {
        Log.v(this.logTag, message);
    }

    @Override // com.amazon.device.ads.Logger
    public void d(String message) {
        Log.d(this.logTag, message);
    }

    @Override // com.amazon.device.ads.Logger
    public void w(String message) {
        Log.w(this.logTag, message);
    }

    @Override // com.amazon.device.ads.Logger
    public void e(String message) {
        Log.e(this.logTag, message);
    }
}
