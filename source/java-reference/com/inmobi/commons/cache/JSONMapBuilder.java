package com.inmobi.commons.cache;

import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JSONMapBuilder implements MapBuilder {
    @Override // com.inmobi.commons.cache.MapBuilder
    public Map<String, Object> buildMap(String str) throws Exception {
        JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str);
        HashMap map = new HashMap();
        a(jSONObjectInit, map);
        return map;
    }

    private void a(JSONObject jSONObject, Map<String, Object> map) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONObject) {
                    HashMap map2 = new HashMap();
                    map.put(next, map2);
                    a((JSONObject) obj, map2);
                } else {
                    map.put(next, obj);
                }
            } catch (JSONException e) {
            }
        }
    }
}
