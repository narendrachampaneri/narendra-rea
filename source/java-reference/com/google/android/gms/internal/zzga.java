package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.mopub.common.AdType;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzhb
public class zzga extends Handler {
    private final zzfz zzFq;

    public zzga(Context context) {
        this(new zzgb(context.getApplicationContext() != null ? context.getApplicationContext() : context));
    }

    public zzga(zzfz zzfzVar) {
        this.zzFq = zzfzVar;
    }

    private void zzd(JSONObject jSONObject) {
        try {
            this.zzFq.zza(jSONObject.getString(AbstractJSONTokenResponse.REQUEST_ID), jSONObject.getString("base_url"), jSONObject.getString(AdType.HTML));
        } catch (Exception e) {
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        try {
            Bundle data = msg.getData();
            if (data == null) {
                return;
            }
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(data.getString(IMBrowserActivity.EXPANDDATA));
            if ("fetch_html".equals(jSONObjectInit.getString("message_name"))) {
                zzd(jSONObjectInit);
            }
        } catch (Exception e) {
        }
    }
}
