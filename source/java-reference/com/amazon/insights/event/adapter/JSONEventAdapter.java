package com.amazon.insights.event.adapter;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.event.InternalEvent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class JSONEventAdapter implements EventAdapter<JSONObject> {
    private static Logger logger = Logger.getLogger(JSONEventAdapter.class);

    @Override // com.amazon.insights.event.adapter.EventAdapter
    public JSONObject translateFromEvent(InternalEvent source) {
        if (source == null) {
            logger.i("The Event provided was null");
            return null;
        }
        JSONObject json = source.toJSONObject();
        if (json.has("class")) {
            json.remove("class");
        }
        if (json.has("hashCode")) {
            json.remove("hashCode");
            return json;
        }
        return json;
    }

    public String toString() {
        return new JSONBuilder(this).toString();
    }
}
