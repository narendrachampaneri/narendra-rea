package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.internal.zzae;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ExceptionReporter implements Thread.UncaughtExceptionHandler {
    private final Context mContext;
    private final Thread.UncaughtExceptionHandler zzPa;
    private final Tracker zzPb;
    private ExceptionParser zzPc;
    private GoogleAnalytics zzPd;

    public ExceptionReporter(Tracker tracker, Thread.UncaughtExceptionHandler originalHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (context == null) {
            throw new NullPointerException(AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        }
        this.zzPa = originalHandler;
        this.zzPb = tracker;
        this.zzPc = new StandardExceptionParser(context, new ArrayList());
        this.mContext = context.getApplicationContext();
        zzae.v("ExceptionReporter created, original handler is " + (originalHandler == null ? SafeJsonPrimitive.NULL_STRING : originalHandler.getClass().getName()));
    }

    public ExceptionParser getExceptionParser() {
        return this.zzPc;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.zzPc = exceptionParser;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread t, Throwable e) {
        String description = "UncaughtException";
        if (this.zzPc != null) {
            description = this.zzPc.getDescription(t != null ? t.getName() : null, e);
        }
        zzae.v("Reporting uncaught exception: " + description);
        this.zzPb.send(new HitBuilders.ExceptionBuilder().setDescription(description).setFatal(true).build());
        GoogleAnalytics googleAnalyticsZziC = zziC();
        googleAnalyticsZziC.dispatchLocalHits();
        googleAnalyticsZziC.zziG();
        if (this.zzPa != null) {
            zzae.v("Passing exception to the original handler");
            this.zzPa.uncaughtException(t, e);
        }
    }

    GoogleAnalytics zziC() {
        if (this.zzPd == null) {
            this.zzPd = GoogleAnalytics.getInstance(this.mContext);
        }
        return this.zzPd;
    }

    Thread.UncaughtExceptionHandler zziD() {
        return this.zzPa;
    }
}
