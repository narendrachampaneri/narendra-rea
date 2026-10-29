package com.amazon.ags.html5.javascript;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.client.metrics.EventCollectorClient;
import com.amazon.ags.client.metrics.IllegalConstructionException;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.ags.constants.NativeCallResultCode;
import com.amazon.ags.constants.NativeCallTypes;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ReportEventHandler extends CallHandlerBase {
    private static final Set<String> supportedCalls = new HashSet(Arrays.asList(NativeCallTypes.REPORT_EVENT));
    private final EventCollectorClient eventCollectorClient;

    public ReportEventHandler(EventCollectorClient eventCollectorClient, Handler uiThreadHandler) {
        super(uiThreadHandler, supportedCalls);
        this.eventCollectorClient = eventCollectorClient;
    }

    @Override // com.amazon.ags.html5.javascript.CallHandlerBase
    protected boolean handleMessage(String rid, String nativeCallType, JSONObject request) {
        if (!NativeCallTypes.REPORT_EVENT.equals(nativeCallType)) {
            return false;
        }
        HandlerReply reply = reportEvent(request);
        JSONObject replyMsg = reply.getReplyMsg();
        sendReply(rid, !(replyMsg instanceof JSONObject) ? replyMsg.toString() : JSONObjectInstrumentation.toString(replyMsg), reply.getResult());
        return true;
    }

    protected HandlerReply reportEvent(JSONObject request) {
        if (this.eventCollectorClient == null) {
            Log.e(this.TAG, "EventCollector is null. We will not report the event.");
            return new HandlerReply(new JSONObject(), "ERROR");
        }
        if (!this.eventCollectorClient.isReportingEnabled()) {
            Log.i(this.TAG, "Reporting is disabled. Cannot report javascript event.");
            return new HandlerReply(new JSONObject(), NativeCallResultCode.SUCCESS);
        }
        if (request == null) {
            Log.e(this.TAG, "request is null. We will not report the event.");
            return new HandlerReply(new JSONObject(), NativeCallResultCode.REQUEST_ERROR);
        }
        try {
            JSONObject parameters = request.getJSONObject(NativeCallKeys.PARAMETERS);
            JSONObject attributesJSON = parameters.optJSONObject(NativeCallKeys.EVENT_ATTRIBUTES);
            JSONObject countMetricsJSON = parameters.optJSONObject(NativeCallKeys.EVENT_COUNT_METRICS);
            JSONObject timeMetricsJSON = parameters.optJSONObject(NativeCallKeys.EVENT_TIME_METRICS);
            String eventName = parameters.optString(NativeCallKeys.EVENT_NAME);
            if (TextUtils.isEmpty(eventName)) {
                Log.e(this.TAG, NativeCallKeys.EVENT_NAME + " key returns no value. This event cannot be constructed. Request: " + request);
                return new HandlerReply(new JSONObject(), NativeCallResultCode.REQUEST_ERROR);
            }
            Map<String, String> attributes = new HashMap<>();
            Map<String, Integer> countMetrics = new HashMap<>();
            Map<String, Long> timeMetrics = new HashMap<>();
            if (attributesJSON != null) {
                attributes = convertAttributes(attributesJSON);
            }
            if (countMetricsJSON != null) {
                countMetrics = convertCounts(countMetricsJSON);
            }
            if (timeMetricsJSON != null) {
                timeMetrics = convertTimes(timeMetricsJSON);
            }
            try {
                GameCircleGenericEvent genericEvent = new GameCircleGenericEvent(eventName, attributes, countMetrics, timeMetrics);
                this.eventCollectorClient.reportGenericEvent(genericEvent);
                return new HandlerReply(new JSONObject(), NativeCallResultCode.SUCCESS);
            } catch (IllegalConstructionException e) {
                Log.e(this.TAG, "Unable to create event correctly. Request: " + request, e);
                return new HandlerReply(new JSONObject(), NativeCallResultCode.REQUEST_ERROR);
            }
        } catch (JSONException e2) {
            Log.e(this.TAG, "No parameters for request. We will not report the event.", e2);
            return new HandlerReply(new JSONObject(), NativeCallResultCode.REQUEST_ERROR);
        }
    }

    private Map<String, String> convertAttributes(JSONObject attributesJSON) {
        Map<String, String> returnMap = new HashMap<>();
        if (attributesJSON == null) {
            Log.w(this.TAG, "Null attributes json.");
        } else {
            Iterator<String> iterator = attributesJSON.keys();
            while (iterator.hasNext()) {
                String key = iterator.next();
                if (!attributesJSON.isNull(key)) {
                    try {
                        returnMap.put(key, attributesJSON.getString(key));
                    } catch (JSONException e) {
                        Log.e(this.TAG, "Invalid value for key: " + key + " in json: " + attributesJSON, e);
                    }
                }
            }
        }
        return returnMap;
    }

    private Map<String, Integer> convertCounts(JSONObject countsJSON) {
        Map<String, Integer> returnMap = new HashMap<>();
        if (countsJSON == null) {
            Log.w(this.TAG, "Null counts json.");
        } else {
            Iterator<String> iterator = countsJSON.keys();
            while (iterator.hasNext()) {
                String key = iterator.next();
                if (!countsJSON.isNull(key)) {
                    try {
                        returnMap.put(key, Integer.valueOf(countsJSON.getInt(key)));
                    } catch (JSONException e) {
                        Log.e(this.TAG, "Invalid value for key: " + key + " in json: " + countsJSON, e);
                    }
                }
            }
        }
        return returnMap;
    }

    private Map<String, Long> convertTimes(JSONObject timesJSON) {
        Map<String, Long> returnMap = new HashMap<>();
        if (timesJSON == null) {
            Log.w(this.TAG, "Null times json.");
        } else {
            Iterator<String> iterator = timesJSON.keys();
            while (iterator.hasNext()) {
                String key = iterator.next();
                if (!timesJSON.isNull(key)) {
                    try {
                        returnMap.put(key, Long.valueOf(timesJSON.getLong(key)));
                    } catch (JSONException e) {
                        Log.e(this.TAG, "Invalid value for key: " + key + " in json: " + timesJSON, e);
                    }
                }
            }
        }
        return returnMap;
    }

    protected class HandlerReply {
        private JSONObject replyMsg;
        private String result;

        public HandlerReply(JSONObject replyMsg, String result) {
            this.replyMsg = replyMsg;
            this.result = result;
        }

        public JSONObject getReplyMsg() {
            return this.replyMsg;
        }

        public String getResult() {
            return this.result;
        }
    }
}
