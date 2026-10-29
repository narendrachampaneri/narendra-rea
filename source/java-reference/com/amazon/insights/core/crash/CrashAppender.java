package com.amazon.insights.core.crash;

/* JADX INFO: loaded from: classes2.dex */
public interface CrashAppender {
    void report(CrashReporter crashReporter, String str);

    void report(CrashReporter crashReporter, String str, Throwable th);
}
