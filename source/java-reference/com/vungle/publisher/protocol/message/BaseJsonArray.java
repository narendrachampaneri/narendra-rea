package com.vungle.publisher.protocol.message;

import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseJsonArray extends BaseJsonSerializable<JSONArray> {
    @Override // com.vungle.publisher.protocol.message.BaseJsonSerializable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JSONArray b() throws JSONException {
        return new JSONArray();
    }
}
