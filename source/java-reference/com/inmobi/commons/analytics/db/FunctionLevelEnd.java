package com.inmobi.commons.analytics.db;

import android.content.Context;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FunctionLevelEnd extends FunctionLevelBegin {
    private AnalyticsEventsWrapper.IMSectionStatus a;
    private Context b;

    public FunctionLevelEnd(Context context, int i, String str, AnalyticsEventsWrapper.IMSectionStatus iMSectionStatus, Map<String, String> map) {
        super(context, i, str, map);
        this.b = context;
        this.a = iMSectionStatus;
    }

    protected AnalyticsEventsWrapper.IMSectionStatus getLevelStatus() {
        return this.a;
    }

    private AnalyticsEvent a() {
        if (SessionInfo.getSessionId(this.b) != null) {
            AnalyticsEvent analyticsEvent = new AnalyticsEvent(AnalyticsEvent.TYPE_LEVEL_END);
            analyticsEvent.setEventLevelId(Integer.toString(getLevelId()));
            analyticsEvent.setEventLevelName(getLevelName());
            if (getLbMap() != null) {
                analyticsEvent.setEventAttributeMap(AnalyticsUtils.convertToJSON(getLbMap()));
            }
            analyticsEvent.setEventLevelStatus("1");
            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.b));
            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.b));
            analyticsEvent.setEventTimeStamp(System.currentTimeMillis() / 1000);
            insertInDatabase(analyticsEvent);
            return analyticsEvent;
        }
        printWarning("Please call startSession before calling levelEnd");
        return null;
    }

    @Override // com.inmobi.commons.analytics.db.FunctionLevelBegin, com.inmobi.commons.analytics.db.AnalyticsFunctions
    public AnalyticsEvent processFunction() {
        return a();
    }
}
