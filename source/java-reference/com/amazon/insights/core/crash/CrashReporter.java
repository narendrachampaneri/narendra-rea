package com.amazon.insights.core.crash;

import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReporter {
    private Map<Class<?>, CrashAppender> appenders = new ConcurrentHashMap();
    private final Class<?> cls;

    public CrashReporter(Class<?> cls) {
        this.cls = cls;
    }

    public Class<?> getReportingClass() {
        return this.cls;
    }

    public void attachAppender(CrashAppender appender) {
        if (appender != null && !this.appenders.containsKey(appender.getClass())) {
            this.appenders.put(appender.getClass(), appender);
        }
    }

    public void detachAppender(CrashAppender appender) {
        if (appender != null && this.appenders.containsKey(appender.getClass())) {
            this.appenders.remove(appender.getClass());
        }
    }

    public Collection<CrashAppender> getAppenders() {
        return this.appenders.values();
    }

    public void report(String msg) {
        for (CrashAppender appender : getAppenders()) {
            appender.report(this, msg);
        }
    }

    public void report(String msg, Throwable t) {
        for (CrashAppender appender : getAppenders()) {
            appender.report(this, msg, t);
        }
    }
}
