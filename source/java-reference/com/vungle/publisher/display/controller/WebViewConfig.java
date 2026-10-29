package com.vungle.publisher.display.controller;

import com.vungle.publisher.protocol.message.BaseJsonObject;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class WebViewConfig extends BaseJsonObject {
    @Inject
    public WebViewConfig() {
    }

    @Override // com.vungle.publisher.protocol.message.BaseJsonObject, com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        jSONObjectB.put("privacyPolicyEnabled", true);
        return jSONObjectB;
    }
}
