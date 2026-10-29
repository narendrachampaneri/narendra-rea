package com.amazon.device.ads;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: SISRequestor.java */
/* JADX INFO: loaded from: classes.dex */
interface SISRequest {
    Metrics.MetricType getCallMetricType();

    String getLogTag();

    MobileAdsLogger getLogger();

    String getPath();

    HashMap<String, String> getPostParameters();

    WebRequest.QueryStringParameters getQueryParameters();

    void onResponseReceived(JSONObject jSONObject);
}
