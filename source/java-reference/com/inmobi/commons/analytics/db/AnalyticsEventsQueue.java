package com.inmobi.commons.analytics.db;

import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsEventsQueue extends Vector<AnalyticsFunctions> {
    private static AnalyticsEventsQueue a = null;
    private static final long serialVersionUID = -1291938489149189478L;
    private AtomicBoolean b = new AtomicBoolean(false);

    public static synchronized AnalyticsEventsQueue getInstance() {
        if (a == null) {
            a = new AnalyticsEventsQueue();
        }
        return a;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.inmobi.commons.analytics.db.AnalyticsEventsQueue$1] */
    public synchronized void processFunctions() {
        if (!this.b.get()) {
            this.b.set(true);
            new Thread() { // from class: com.inmobi.commons.analytics.db.AnalyticsEventsQueue.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (!AnalyticsEventsQueue.this.isEmpty()) {
                        try {
                            AnalyticsEventsQueue.this.a(AnalyticsEventsQueue.this.remove(0));
                        } catch (Exception e) {
                            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception processing function", e);
                            return;
                        }
                    }
                }
            }.start();
        }
    }

    @Override // java.util.Vector, java.util.AbstractCollection, java.util.Collection, java.util.List
    public synchronized boolean isEmpty() {
        boolean zIsEmpty;
        zIsEmpty = super.isEmpty();
        if (zIsEmpty) {
            this.b.set(false);
        }
        return zIsEmpty;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AnalyticsFunctions analyticsFunctions) {
        analyticsFunctions.processFunction();
    }
}
