package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkSettings;
import com.google.android.exoplayer.hls.HlsMediaPlaylist;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class bz {
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final Context c;
    private final Object[] d = new Object[bw.b()];

    bz(AppLovinSdkImpl appLovinSdkImpl) {
        this.a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
        this.c = appLovinSdkImpl.getApplicationContext();
    }

    private static by a(String str) {
        for (by byVar : bw.a()) {
            if (byVar.b().equals(str)) {
                return byVar;
            }
        }
        return null;
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }

    private String e() {
        return "com.applovin.sdk." + dh.a(this.a.getSdkKey()) + ".";
    }

    public SharedPreferences a() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return this.c.getSharedPreferences("com.applovin.sdk.1", 0);
    }

    public Object a(by byVar) {
        Object objA;
        if (byVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        synchronized (this.d) {
            Object obj = this.d[byVar.a()];
            objA = obj != null ? byVar.a(obj) : byVar.c();
        }
        return objA;
    }

    public void a(by byVar, Object obj) {
        if (byVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.d) {
            this.d[byVar.a()] = obj;
        }
        this.b.d("SettingsManager", "Setting update: " + byVar.b() + " set to \"" + obj + "\"");
    }

    void a(AppLovinSdkSettings appLovinSdkSettings) {
        boolean z;
        boolean z2 = false;
        this.b.i("SettingsManager", "Loading user-defined settings...");
        if (appLovinSdkSettings == null) {
            return;
        }
        synchronized (this.d) {
            this.d[bw.j.a()] = Boolean.valueOf(appLovinSdkSettings.isVerboseLoggingEnabled());
            long bannerAdRefreshSeconds = appLovinSdkSettings.getBannerAdRefreshSeconds();
            if (bannerAdRefreshSeconds >= 0) {
                this.d[bw.A.a()] = Long.valueOf(bannerAdRefreshSeconds > 0 ? Math.max(30L, bannerAdRefreshSeconds) : 0L);
                this.d[bw.z.a()] = true;
            } else if (bannerAdRefreshSeconds == -1) {
                this.d[bw.z.a()] = false;
            }
            String autoPreloadSizes = appLovinSdkSettings.getAutoPreloadSizes();
            if (autoPreloadSizes == null) {
                autoPreloadSizes = HlsMediaPlaylist.ENCRYPTION_METHOD_NONE;
            }
            Object[] objArr = this.d;
            int iA = bw.J.a();
            if (autoPreloadSizes.equals(HlsMediaPlaylist.ENCRYPTION_METHOD_NONE)) {
                autoPreloadSizes = "";
            }
            objArr[iA] = autoPreloadSizes;
            String autoPreloadTypes = appLovinSdkSettings.getAutoPreloadTypes();
            if (autoPreloadTypes == null) {
                autoPreloadTypes = HlsMediaPlaylist.ENCRYPTION_METHOD_NONE;
            }
            if (autoPreloadTypes.equals(HlsMediaPlaylist.ENCRYPTION_METHOD_NONE)) {
                z = false;
            } else {
                String[] strArrSplit = autoPreloadTypes.split(AppInfo.DELIM);
                z = false;
                for (String str : strArrSplit) {
                    if (str.equals(AppLovinAdType.REGULAR.getLabel())) {
                        z = true;
                    } else if (str.equals(AppLovinAdType.INCENTIVIZED.getLabel()) || str.contains("INCENT") || str.contains("REWARD")) {
                        z2 = true;
                    }
                }
            }
            if (!z) {
                this.d[bw.J.a()] = "";
            }
            this.d[bw.K.a()] = Boolean.valueOf(z2);
            if (appLovinSdkSettings instanceof aw) {
                for (Map.Entry entry : ((aw) appLovinSdkSettings).b().entrySet()) {
                    this.d[((by) entry.getKey()).a()] = entry.getValue();
                }
            }
        }
    }

    void a(JSONObject jSONObject) {
        this.b.d("SettingsManager", "Loading settings from JSON array...");
        synchronized (this.d) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && next.length() > 0) {
                    try {
                        try {
                            by byVarA = a(next);
                            if (byVarA != null) {
                                Object objA = a(next, jSONObject, byVarA.c());
                                this.d[byVarA.a()] = objA;
                                this.b.d("SettingsManager", "Setting update: " + byVarA.b() + " set to \"" + objA + "\"");
                            } else {
                                this.b.w("SettingsManager", "Unknown setting recieved: " + next);
                            }
                        } catch (Throwable th) {
                            this.b.e("SettingsManager", "Unable to convert setting object ", th);
                        }
                    } catch (JSONException e) {
                        this.b.e("SettingsManager", "Unable to parse JSON settings array", e);
                    }
                }
            }
        }
    }

    void b() {
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.b.i("SettingsManager", "Saving settings with the application...");
        String strE = e();
        SharedPreferences.Editor editorEdit = a().edit();
        synchronized (this.d) {
            for (by byVar : bw.a()) {
                Object obj = this.d[byVar.a()];
                if (obj != null) {
                    String str = strE + byVar.b();
                    if (obj instanceof Boolean) {
                        editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Float) {
                        editorEdit.putFloat(str, ((Float) obj).floatValue());
                    } else if (obj instanceof Integer) {
                        editorEdit.putInt(str, ((Integer) obj).intValue());
                    } else if (obj instanceof Long) {
                        editorEdit.putLong(str, ((Long) obj).longValue());
                    } else {
                        if (!(obj instanceof String)) {
                            throw new RuntimeException("SDK Error: unknown value: " + obj.getClass());
                        }
                        editorEdit.putString(str, (String) obj);
                    }
                }
            }
        }
        editorEdit.commit();
        this.b.d("SettingsManager", "Settings saved with the application.");
    }

    void c() {
        Object objValueOf;
        if (this.c == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.b.i("SettingsManager", "Loading settings saved with the application...");
        String strE = e();
        SharedPreferences sharedPreferencesA = a();
        synchronized (this.d) {
            for (by byVar : bw.a()) {
                try {
                    String str = strE + byVar.b();
                    Object objC = byVar.c();
                    if (objC instanceof Boolean) {
                        objValueOf = Boolean.valueOf(sharedPreferencesA.getBoolean(str, ((Boolean) objC).booleanValue()));
                    } else if (objC instanceof Float) {
                        objValueOf = Float.valueOf(sharedPreferencesA.getFloat(str, ((Float) objC).floatValue()));
                    } else if (objC instanceof Integer) {
                        objValueOf = Integer.valueOf(sharedPreferencesA.getInt(str, ((Integer) objC).intValue()));
                    } else if (objC instanceof Long) {
                        objValueOf = Long.valueOf(sharedPreferencesA.getLong(str, ((Long) objC).longValue()));
                    } else {
                        if (!(objC instanceof String)) {
                            throw new RuntimeException("SDK Error: unknown value: " + objC.getClass());
                        }
                        objValueOf = sharedPreferencesA.getString(str, (String) objC);
                    }
                    this.d[byVar.a()] = objValueOf;
                } catch (Exception e) {
                    this.b.e("SettingsManager", "Unable to load \"" + byVar.b() + "\"", e);
                }
            }
        }
    }

    void d() {
        synchronized (this.d) {
            Arrays.fill(this.d, (Object) null);
        }
        SharedPreferences.Editor editorEdit = a().edit();
        editorEdit.clear();
        editorEdit.commit();
    }
}
