package com.vungle.publisher.protocol.message;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseJsonObject extends BaseJsonSerializable<JSONObject> {
    @Override // com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JSONObject b() throws JSONException {
        return new JSONObject();
    }
}
