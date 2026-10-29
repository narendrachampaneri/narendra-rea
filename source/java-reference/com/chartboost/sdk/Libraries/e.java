package com.chartboost.sdk.Libraries;

import android.text.TextUtils;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static Map<Integer, a> a = Collections.synchronizedMap(new HashMap());
    private static Runnable b = new Runnable() { // from class: com.chartboost.sdk.Libraries.e.1
        @Override // java.lang.Runnable
        public void run() {
            e.a.clear();
        }
    };

    public static a a(b... bVarArr) {
        a aVarA = a.a();
        for (int i = 0; i < bVarArr.length; i++) {
            aVarA.a(bVarArr[i].a, bVarArr[i].b);
        }
        return aVarA;
    }

    public static b a(String str, Object obj) {
        return new b(str, obj);
    }

    public static class b {
        private String a;
        private Object b;

        public b(String str, Object obj) {
            this.a = str;
            if (obj instanceof a) {
                this.b = ((a) obj).n();
            } else {
                this.b = obj;
            }
        }
    }

    public static List<?> a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                Object objA = jSONArray.get(i);
                if (objA instanceof JSONObject) {
                    objA = a((JSONObject) objA);
                } else if (objA instanceof JSONArray) {
                    objA = a((JSONArray) objA);
                } else if (objA.equals(JSONObject.NULL)) {
                    objA = null;
                }
                arrayList.add(objA);
            } catch (Exception e) {
                CBLogging.b("CBJSON", "error converting json", e);
            }
        }
        return arrayList;
    }

    public static Map<String, Object> a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                Object objA = jSONObject.get(next);
                if (objA instanceof JSONObject) {
                    objA = a((JSONObject) objA);
                } else if (objA instanceof JSONArray) {
                    objA = a((JSONArray) objA);
                } else if (objA.equals(JSONObject.NULL)) {
                    objA = null;
                }
                map.put(next, objA);
            } catch (Exception e) {
                CBLogging.b("CBJSON", "error converting json", e);
            }
        }
        return map;
    }

    public static JSONArray a(List<?> list) {
        if (list == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            try {
                Object objA = list.get(i);
                if (objA instanceof Map) {
                    objA = a((Map<?, ?>) objA);
                } else if (objA instanceof List) {
                    objA = a((List<?>) objA);
                } else if (objA == null) {
                    objA = JSONObject.NULL;
                }
                jSONArray.put(objA);
            } catch (Exception e) {
                CBLogging.b("CBJSON", "error converting json", e);
            }
        }
        return jSONArray;
    }

    public static JSONObject a(Map<?, ?> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            String string = entry.getKey().toString();
            Object value = entry.getValue();
            try {
                if (value instanceof Map) {
                    value = a((Map<?, ?>) value);
                } else if (value instanceof List) {
                    value = a((List<?>) value);
                } else if (value == null) {
                    value = JSONObject.NULL;
                }
                jSONObject.put(string, value);
            } catch (Exception e) {
                CBLogging.b("CBJSON", "error converting json", e);
            }
        }
        return jSONObject;
    }

    public static class a {
        public static a a = new a(null);
        private static JSONObject c = null;
        private static Map<String, Object> d = null;
        private static JSONArray e = null;
        private static List<?> f = null;
        private Object b;

        private a(Object obj) {
            this.b = obj;
        }

        public static a a() {
            return a(new JSONObject());
        }

        public a a(String str) {
            if (this.b instanceof JSONObject) {
                return a(((JSONObject) this.b).opt(str));
            }
            if (this.b instanceof Map) {
                return a(((Map) this.b).get(str));
            }
            return a;
        }

        public boolean b() {
            return this.b == null || this.b == JSONObject.NULL;
        }

        public boolean c() {
            return !b();
        }

        public boolean d() {
            return !TextUtils.isEmpty(h());
        }

        public boolean b(String str) {
            return a(str).b();
        }

        public boolean c(String str) {
            return a(str).c();
        }

        public JSONObject e() {
            if (this.b instanceof JSONObject) {
                return (JSONObject) this.b;
            }
            if (this.b instanceof Map) {
                if (c == null) {
                    c = e.a((Map<?, ?>) this.b);
                }
                return c;
            }
            return null;
        }

        public Map<String, Object> f() {
            if (this.b instanceof JSONObject) {
                if (d == null) {
                    d = e.a((JSONObject) this.b);
                }
                return d;
            }
            if (this.b instanceof Map) {
                return (Map) this.b;
            }
            return null;
        }

        public JSONArray g() {
            if (this.b instanceof JSONArray) {
                return (JSONArray) this.b;
            }
            if (this.b instanceof List) {
                if (e == null) {
                    e = e.a((List<?>) this.b);
                }
                return e;
            }
            return null;
        }

        public String h() {
            if (b()) {
                return null;
            }
            return this.b instanceof String ? (String) this.b : this.b.toString();
        }

        public String d(String str) {
            return this.b instanceof String ? (String) this.b : str;
        }

        public double i() {
            return a(0.0d);
        }

        public double a(double d2) {
            if (!(this.b instanceof String)) {
                return this.b instanceof Number ? ((Number) this.b).doubleValue() : d2;
            }
            try {
                return Double.parseDouble((String) this.b);
            } catch (NumberFormatException e2) {
                return d2;
            }
        }

        public float j() {
            return a(0.0f);
        }

        public float a(float f2) {
            if (!(this.b instanceof String)) {
                return this.b instanceof Number ? ((Number) this.b).floatValue() : f2;
            }
            try {
                return Float.parseFloat((String) this.b);
            } catch (NumberFormatException e2) {
                return f2;
            }
        }

        public int k() {
            return a(0);
        }

        public int a(int i) {
            if (!(this.b instanceof String)) {
                return this.b instanceof Number ? ((Number) this.b).intValue() : i;
            }
            try {
                return Integer.parseInt((String) this.b);
            } catch (NumberFormatException e2) {
                return i;
            }
        }

        public long l() {
            return b(0);
        }

        public long b(int i) {
            if (!(this.b instanceof String)) {
                return this.b instanceof Number ? ((Number) this.b).longValue() : i;
            }
            try {
                return Long.parseLong((String) this.b);
            } catch (NumberFormatException e2) {
                return i;
            }
        }

        public boolean m() {
            return a(false);
        }

        public boolean a(boolean z) {
            return this.b instanceof Boolean ? ((Boolean) this.b).booleanValue() : z;
        }

        public boolean equals(Object other) {
            a aVarA = a(other);
            if (b()) {
                return aVarA.b();
            }
            if (e() != null && aVarA.e() != null) {
                return i.a(e(), aVarA.e());
            }
            if (g() != null && aVarA.g() != null) {
                return i.a(g(), aVarA.g());
            }
            if (this.b instanceof String) {
                return this.b.equals(aVarA.h());
            }
            if (aVarA.b instanceof String) {
                return aVarA.b.equals(h());
            }
            return n().equals(aVarA.n());
        }

        public Object n() {
            return this.b;
        }

        public static a a(Object obj) {
            if (obj instanceof a) {
                return (a) obj;
            }
            if (obj != null && obj != JSONObject.NULL) {
                a aVar = (a) e.a.get(Integer.valueOf(obj.hashCode()));
                if (aVar != null) {
                    return aVar;
                }
                CBUtility.e().removeCallbacks(e.b);
                CBUtility.e().postDelayed(e.b, 1000L);
                a aVar2 = new a(obj);
                e.a.put(Integer.valueOf(obj.hashCode()), aVar2);
                return aVar2;
            }
            return a;
        }

        public int o() {
            if (this.b instanceof JSONArray) {
                return ((JSONArray) this.b).length();
            }
            if (this.b instanceof List) {
                return ((List) this.b).size();
            }
            return 1;
        }

        public a c(int i) {
            if (this.b instanceof JSONArray) {
                return a(((JSONArray) this.b).opt(i));
            }
            if (!(this.b instanceof List)) {
                return i != 0 ? a : this;
            }
            try {
                return a(((List) this.b).get(i));
            } catch (IndexOutOfBoundsException e2) {
                return a;
            }
        }

        public String e(String str) {
            return a(str).h();
        }

        public int f(String str) {
            return a(str).k();
        }

        public double g(String str) {
            return a(str).i();
        }

        public long h(String str) {
            return a(str).l();
        }

        public boolean i(String str) {
            return a(str).m();
        }

        public void a(String str, Object obj) {
            c = null;
            e = null;
            d = null;
            f = null;
            if (obj instanceof a) {
                obj = ((a) obj).n();
            }
            if (this.b instanceof JSONObject) {
                try {
                    ((JSONObject) this.b).put(str, obj);
                    return;
                } catch (JSONException e2) {
                    CBLogging.b(this, "Error updating balances dictionary.", e2);
                    return;
                }
            }
            if (this.b instanceof Map) {
                try {
                    ((Map) this.b).put(str, obj);
                } catch (Exception e3) {
                    CBLogging.b(this, "Error updating balances dictionary.", e3);
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0025 A[Catch: JSONException -> 0x0030, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0030, blocks: (B:6:0x000e, B:8:0x001a, B:9:0x0025), top: B:14:0x000e }] */
        public static a j(String str) {
            a aVarA;
            if (str == null) {
                CBLogging.d("CBJSON", "null passed when creating new JSON object");
                return a;
            }
            if (str != null) {
                try {
                    if (str.trim().startsWith("[")) {
                        aVarA = a(JSONArrayInstrumentation.init(str));
                    } else {
                        aVarA = a(JSONObjectInstrumentation.init(str));
                    }
                } catch (JSONException e2) {
                    CBLogging.b("CBJSON", "error creating new json object", e2);
                    return a;
                }
            } else {
                aVarA = a(JSONObjectInstrumentation.init(str));
            }
            return aVarA;
        }

        public String toString() {
            if (e() != null) {
                JSONObject jSONObjectE = e();
                return !(jSONObjectE instanceof JSONObject) ? jSONObjectE.toString() : JSONObjectInstrumentation.toString(jSONObjectE);
            }
            if (g() != null) {
                JSONArray jSONArrayG = g();
                return !(jSONArrayG instanceof JSONArray) ? jSONArrayG.toString() : JSONArrayInstrumentation.toString(jSONArrayG);
            }
            if (this.b != null) {
                return this.b.toString();
            }
            return SafeJsonPrimitive.NULL_STRING;
        }
    }
}
