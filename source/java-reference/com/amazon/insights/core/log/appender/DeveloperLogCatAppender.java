package com.amazon.insights.core.log.appender;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class DeveloperLogCatAppender extends LogAppender {
    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devd(String tag, String msg) {
        Log.d(tag, msg);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devd(String tag, String msg, Throwable tr) {
        Log.d(tag, msg, tr);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devv(String tag, String msg) {
        Log.v(tag, msg);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devv(String tag, String msg, Throwable tr) {
        Log.v(tag, msg, tr);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devi(String tag, String msg) {
        Log.i(tag, msg);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devi(String tag, String msg, Throwable tr) {
        Log.i(tag, msg, tr);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devw(String tag, String msg) {
        Log.w(tag, msg);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devw(String tag, Throwable tr) {
        Log.w(tag, tr);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void devw(String tag, String msg, Throwable tr) {
        Log.w(tag, msg, tr);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void deve(String tag, String msg) {
        Log.e(tag, msg);
    }

    @Override // com.amazon.insights.core.log.appender.LogAppender
    public void deve(String tag, String msg, Throwable tr) {
        Log.e(tag, msg, tr);
    }
}
