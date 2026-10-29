package com.inmobi.commons.uid;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class UID {
    public static final String KEY_AID = "AID";
    public static final String KEY_APPENDED_ID = "AIDL";
    public static final String KEY_FACEBOOK_ID = "FBA";
    public static final String KEY_GPID = "GPID";
    public static final String KEY_IMID = "IMID";
    public static final String KEY_LOGIN_ID = "LID";
    public static final String KEY_LTVID = "LTVID";
    public static final String KEY_ODIN1 = "O1";
    public static final String KEY_SESSION_ID = "SID";
    public static final String KEY_TIMESTAMP = "timestamp";
    public static final String KEY_UM5_ID = "UM5";
    private static UID a;
    private Map<String, Boolean> b;
    private Map<String, Boolean> c;
    private String e;
    private String f = null;
    private Map<String, Boolean> d = new HashMap();

    private UID() {
        this.d.put(KEY_FACEBOOK_ID, false);
        this.d.put(KEY_GPID, true);
        this.d.put(KEY_LOGIN_ID, true);
        this.d.put(KEY_LTVID, true);
        this.d.put(KEY_ODIN1, true);
        this.d.put(KEY_SESSION_ID, true);
        this.d.put(KEY_UM5_ID, true);
        this.d.put(KEY_IMID, true);
        this.d.put(KEY_APPENDED_ID, true);
    }

    public static UID getInstance() {
        if (a == null) {
            a = new UID();
        }
        return a;
    }

    public void init() {
        a.g();
        printPublisherTestId();
        a.a(InternalSDKUtil.getContext());
    }

    public void refresh() {
        a.g();
    }

    public void setPublisherDeviceIdMaskMap(int i) {
        this.b = a(i);
    }

    public void setCommonsDeviceIdMaskMap(Map<String, Boolean> map) {
        this.c = map;
    }

    public Map<String, String> getRawUidMap(Map<String, Boolean> map) {
        return getUidMap(map, null, false);
    }

    public String getEncryptedJSON(Map<String, Boolean> map) {
        JSONObject jSONObject = new JSONObject(InternalSDKUtil.getEncodedMap(getMapForEncryption(map)));
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    public Map<String, String> getMapForEncryption(Map<String, Boolean> map) {
        String string = Integer.toString(new Random().nextInt());
        JSONObject jSONObject = new JSONObject(getUidMap(map, string, true));
        String strEncryptRSA = InternalSDKUtil.encryptRSA(!(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
        HashMap map2 = new HashMap();
        map2.put(AdTrackerConstants.UIDMAP, strEncryptRSA);
        map2.put(AdTrackerConstants.UIDKEY, string);
        map2.put(AdTrackerConstants.UKEYVER, a.a());
        return map2;
    }

    public String getEncodedJSON(Map<String, Boolean> map) {
        Map<String, String> uidMap = getUidMap(map, null, false);
        InternalSDKUtil.getEncodedMap(uidMap);
        JSONObject jSONObject = new JSONObject(uidMap);
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    private Map<String, Boolean> a(int i) {
        HashMap map = new HashMap();
        if ((i & 4) == 4 || i == 0) {
            map.put(KEY_FACEBOOK_ID, false);
        }
        if ((i & 2) == 2 || i == 0) {
            map.put(KEY_ODIN1, false);
        }
        if ((i & 8) == 8 || i == 0) {
            map.put(KEY_UM5_ID, false);
        }
        return map;
    }

    private Map<String, Boolean> a(Map<String, Boolean> map) {
        HashMap map2 = new HashMap(this.d);
        if (map == null && this.c == null && this.b == null) {
            return map2;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.b == null) {
            this.b = new HashMap();
        }
        for (String str : this.c.keySet()) {
            map2.put(str, Boolean.valueOf(Boolean.valueOf(map.get(str) == null ? true : map.get(str).booleanValue()).booleanValue() & Boolean.valueOf(this.c.get(str) == null ? true : this.c.get(str).booleanValue()).booleanValue() & Boolean.valueOf(this.b.get(str) == null ? true : this.b.get(str).booleanValue()).booleanValue()));
        }
        return map2;
    }

    public String getJSON(Map<String, Boolean> map) {
        JSONObject jSONObject = new JSONObject(getRawUidMap(map));
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    public void setLtvId(String str) {
        this.e = str;
    }

    private String a() {
        return this.e;
    }

    public Map<String, String> getUidMap(Map<String, Boolean> map, String str, boolean z) {
        String strC;
        String strB;
        AdvertisingId advertisingIdF;
        String adId;
        String strA;
        String strB2;
        String strC2;
        String strD;
        Map<String, Boolean> mapA = a(map);
        HashMap map2 = new HashMap();
        if (this.f == null) {
            this.f = a.e();
        }
        if (mapA.get(KEY_ODIN1).booleanValue() && !a.h()) {
            String strA2 = a.a(this.f);
            if (z) {
                strA2 = InternalSDKUtil.xorWithKey(strA2, str);
            }
            map2.put(KEY_ODIN1, strA2);
        }
        if (mapA.get(KEY_FACEBOOK_ID).booleanValue() && (strD = a.d()) != null) {
            if (z) {
                strD = InternalSDKUtil.xorWithKey(strD, str);
            }
            map2.put(KEY_FACEBOOK_ID, strD);
        }
        if (mapA.get(KEY_UM5_ID).booleanValue() && !a.h()) {
            String strB3 = a.b(this.f);
            if (z) {
                strB3 = InternalSDKUtil.xorWithKey(strB3, str);
            }
            map2.put(KEY_UM5_ID, strB3);
        }
        if (mapA.get(KEY_LOGIN_ID).booleanValue() && (strC2 = a.c()) != null) {
            if (z) {
                strC2 = InternalSDKUtil.xorWithKey(strC2, str);
            }
            map2.put(KEY_LOGIN_ID, strC2);
        }
        if (mapA.get(KEY_SESSION_ID).booleanValue() && (strB2 = a.b()) != null) {
            if (z) {
                strB2 = InternalSDKUtil.xorWithKey(strB2, str);
            }
            map2.put(KEY_SESSION_ID, strB2);
        }
        if (mapA.get(KEY_LTVID).booleanValue() && (strA = a()) != null) {
            if (z) {
                strA = InternalSDKUtil.xorWithKey(strA, str);
            }
            map2.put(KEY_LTVID, strA);
        }
        if (mapA.get(KEY_GPID).booleanValue() && (advertisingIdF = a.f()) != null && (adId = advertisingIdF.getAdId()) != null) {
            if (z) {
                adId = InternalSDKUtil.xorWithKey(adId, str);
            }
            map2.put(KEY_GPID, adId);
        }
        if (mapA.get(KEY_IMID).booleanValue() && (strB = a.b(InternalSDKUtil.getContext())) != null) {
            if (z) {
                strB = InternalSDKUtil.xorWithKey(strB, str);
            }
            map2.put(KEY_IMID, strB);
        }
        if (mapA.get(KEY_APPENDED_ID).booleanValue() && (strC = a.c(InternalSDKUtil.getContext())) != null) {
            if (z) {
                strC = InternalSDKUtil.xorWithKey(strC, str);
            }
            map2.put(KEY_APPENDED_ID, strC);
        }
        return map2;
    }

    public void printPublisherTestId() {
        String adId;
        try {
            if (a.h()) {
                AdvertisingId advertisingIdF = a.f();
                if (advertisingIdF != null && (adId = advertisingIdF.getAdId()) != null) {
                    Log.debug(InternalSDKUtil.LOGGING_TAG, "Publisher device Id is " + adId);
                }
            } else {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Publisher device Id is " + a.a(a.e()));
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get publisher device id", e);
        }
    }

    public boolean isLimitAdTrackingEnabled() {
        return a.i();
    }
}
