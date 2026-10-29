package com.amazon.ags.storage;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineCacheRequest {
    private final JSONObject m_JsonObject;
    private final String m_PrimaryKey;
    private final String m_SecondaryKey;

    public OfflineCacheRequest(String primaryKey, String secondaryKey, JSONObject jsonObject) {
        if (TextUtils.isEmpty(primaryKey)) {
            throw new IllegalArgumentException("primaryKey is invalid");
        }
        if (TextUtils.isEmpty(secondaryKey)) {
            throw new IllegalArgumentException("secondaryKey is invalid");
        }
        if (jsonObject == null) {
            throw new IllegalArgumentException("jsonObject is null");
        }
        this.m_PrimaryKey = primaryKey;
        this.m_SecondaryKey = secondaryKey;
        this.m_JsonObject = jsonObject;
    }

    public String getPrimaryKey() {
        return this.m_PrimaryKey;
    }

    public String getSecondaryKey() {
        return this.m_SecondaryKey;
    }

    public JSONObject getJsonObject() {
        return this.m_JsonObject;
    }
}
