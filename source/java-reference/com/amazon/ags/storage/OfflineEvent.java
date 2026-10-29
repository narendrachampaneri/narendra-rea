package com.amazon.ags.storage;

import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineEvent {
    public static final String KEY_EVENT_TIME = "eventTime";
    private final JSONObject eventJson;
    private final Date eventTime;

    public OfflineEvent(JSONObject json) throws JSONException {
        long time = json.getLong(KEY_EVENT_TIME);
        this.eventJson = json;
        this.eventTime = new Date(time);
    }

    public Date getEventTime() {
        return new Date(this.eventTime.getTime());
    }

    public JSONObject toJson() throws JSONException {
        return this.eventJson;
    }
}
