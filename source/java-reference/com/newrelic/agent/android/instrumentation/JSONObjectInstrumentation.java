package com.newrelic.agent.android.instrumentation;

import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JSONObjectInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList(AnalyticAttribute.EVENT_CATEGORY_ATTRIBUTE, MetricCategory.class.getName(), "JSON"));

    JSONObjectInstrumentation() {
    }

    @TraceConstructor
    public static JSONObject init(String json) throws JSONException {
        try {
            TraceMachine.enterMethod(null, "JSONObject#<init>", categoryParams);
            JSONObject jsonObject = new JSONObject(json);
            TraceMachine.exitMethod();
            return jsonObject;
        } catch (JSONException e) {
            TraceMachine.exitMethod();
            throw e;
        }
    }

    @ReplaceCallSite(scope = "org.json.JSONObject")
    public static String toString(JSONObject jsonObject) {
        TraceMachine.enterMethod(null, "JSONObject#toString", categoryParams);
        String jsonString = jsonObject.toString();
        TraceMachine.exitMethod();
        return jsonString;
    }

    @ReplaceCallSite(scope = "org.json.JSONObject")
    public static String toString(JSONObject jsonObject, int indentFactor) throws JSONException {
        TraceMachine.enterMethod(null, "JSONObject#toString", categoryParams);
        try {
            String jsonString = jsonObject.toString(indentFactor);
            TraceMachine.exitMethod();
            return jsonString;
        } catch (JSONException e) {
            TraceMachine.exitMethod();
            throw e;
        }
    }
}
