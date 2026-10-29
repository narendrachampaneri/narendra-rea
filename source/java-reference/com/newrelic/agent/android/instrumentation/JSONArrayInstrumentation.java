package com.newrelic.agent.android.instrumentation;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class JSONArrayInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "JSON"));

    JSONArrayInstrumentation() {
    }

    @TraceConstructor
    public static JSONArray init(String json) throws JSONException {
        try {
            TraceMachine.enterMethod("JSONArray#<init>", categoryParams);
            JSONArray jsonArray = new JSONArray(json);
            TraceMachine.exitMethod();
            return jsonArray;
        } catch (JSONException e) {
            TraceMachine.exitMethod();
            throw e;
        }
    }

    @ReplaceCallSite(scope = "org.json.JSONArray")
    public static String toString(JSONArray jsonArray) {
        TraceMachine.enterMethod("JSONArray#toString", categoryParams);
        String jsonString = jsonArray.toString();
        TraceMachine.exitMethod();
        return jsonString;
    }

    @ReplaceCallSite(scope = "org.json.JSONArray")
    public static String toString(JSONArray jsonArray, int indentFactor) throws JSONException {
        try {
            TraceMachine.enterMethod("JSONArray#toString", categoryParams);
            String jsonString = jsonArray.toString(indentFactor);
            TraceMachine.exitMethod();
            return jsonString;
        } catch (JSONException e) {
            TraceMachine.exitMethod();
            throw e;
        }
    }
}
