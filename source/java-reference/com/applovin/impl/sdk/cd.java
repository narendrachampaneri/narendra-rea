package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cd extends bv {
    cd(AppLovinSdkImpl appLovinSdkImpl) {
        super("SubmitData", appLovinSdkImpl);
    }

    void a(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectA = q.a(jSONObject);
            bz settingsManager = this.f.getSettingsManager();
            settingsManager.a(bw.c, jSONObjectA.getString("device_id"));
            settingsManager.a(bw.e, jSONObjectA.getString("device_token"));
            settingsManager.a(bw.d, jSONObjectA.getString("publisher_id"));
            settingsManager.b();
            q.a(jSONObjectA, this.f);
            if (jSONObjectA.has("adserver_parameters")) {
                JSONObject jSONObject2 = jSONObjectA.getJSONObject("adserver_parameters");
                settingsManager.a(bw.y, !(jSONObject2 instanceof JSONObject) ? jSONObject2.toString() : JSONObjectInstrumentation.toString(jSONObject2));
            }
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to parse API response", e);
        }
    }

    void b(JSONObject jSONObject) throws JSONException {
        r dataCollector = this.f.getDataCollector();
        t tVarB = dataCollector.b();
        u uVarA = dataCollector.a();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("model", uVarA.a);
        jSONObject2.put("os", uVarA.b);
        jSONObject2.put("brand", uVarA.c);
        jSONObject2.put("sdk_version", uVarA.e);
        jSONObject2.put("revision", uVarA.d);
        jSONObject2.put("country_code", uVarA.f);
        jSONObject2.put(AnalyticAttribute.CARRIER_ATTRIBUTE, uVarA.g);
        jSONObject2.put("type", "android");
        s sVarC = dataCollector.c();
        String str = sVarC.b;
        boolean z = sVarC.a;
        if ((!z || ((Boolean) this.f.getSettingsManager().a(bw.be)).booleanValue()) && AppLovinSdkUtils.isValidString(str)) {
            jSONObject2.put("idfa", str);
        }
        jSONObject2.put("dnt", z);
        Locale locale = uVarA.h;
        if (locale != null) {
            jSONObject2.put("locale", locale.toString());
        }
        jSONObject.put("device_info", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("package_name", tVarB.c);
        jSONObject3.put(AbstractTokenRequest.APP_NAME, tVarB.a);
        jSONObject3.put(AbstractTokenRequest.APP_VERSION, tVarB.b);
        jSONObject3.put("installed_at", tVarB.d);
        jSONObject3.put("applovin_sdk_version", AppLovinSdk.VERSION);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.h);
        String string = defaultSharedPreferences.getString("com.applovin.sdk.impl.isFirstRun", null);
        if (AppLovinSdkUtils.isValidString(string)) {
            jSONObject3.put("first_install", string);
            if (string.equalsIgnoreCase(Boolean.toString(true))) {
                defaultSharedPreferences.edit().putString("com.applovin.sdk.impl.isFirstRun", Boolean.toString(false)).apply();
            }
        }
        String str2 = (String) this.f.a(bw.F);
        if (str2 != null && str2.length() > 0) {
            jSONObject3.put("plugin_version", str2);
        }
        jSONObject.put("app_info", jSONObject3);
        if (((Boolean) this.f.a(bw.N)).booleanValue()) {
            Map mapA = ((m) this.f.getTargetingData()).a();
            if (mapA != null && !mapA.isEmpty()) {
                jSONObject.put("targeting", ax.a(mapA));
            }
            jSONObject.put("stats", this.f.b().b());
        }
    }

    void c(JSONObject jSONObject) {
        ce ceVar = new ce(this, "Repeat" + this.e, bw.g, this.f, jSONObject);
        ceVar.a(bw.k);
        ceVar.run();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.g.i(this.e, "Submitting user data...");
            JSONObject jSONObject = new JSONObject();
            b(jSONObject);
            c(jSONObject);
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to build JSON message with collected data", e);
        }
    }
}
