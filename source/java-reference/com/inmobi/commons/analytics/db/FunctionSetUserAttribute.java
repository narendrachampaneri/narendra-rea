package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.util.SessionInfo;

/* JADX INFO: loaded from: classes.dex */
public class FunctionSetUserAttribute extends AnalyticsFunctions {
    private Context a;
    private String b;
    private String c;

    public FunctionSetUserAttribute(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.a) != null && this.b != null && this.c != null && !"".equals(this.b.trim()) && !"".equals(this.c.trim())) {
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_USER_ATTRIBUTE);
            analyticsEvent.setUserAttribute(this.b, this.c);
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.a));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.a));
            analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
            insertInDatabase(analyticsEvent);
            return analyticsEvent;
        }
        printWarning("Please call startSession before calling track User Attribute");
        return null;
    }

    @Override // com.inmobi.commons.analytics.db.AnalyticsFunctions
    public AnalyticsEvent processFunction() {
        return a();
    }
}
