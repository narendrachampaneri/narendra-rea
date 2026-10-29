package com.amazon.identity.auth.device.endpoint;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractJSONTokenRequest extends AbstractTokenRequest {
    private static final String APPLICATION_JSON_CONTENT_TYPE = "application/json";
    private static final String CONTENT_TYPE = "Content-Type";
    private static final String LOG_TAG = AbstractJSONTokenRequest.class.getName();

    public abstract String getJSONString();

    public AbstractJSONTokenRequest(String appName, String appVersion, String libVersion, Bundle options) {
        super(appName, appVersion, libVersion, options);
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    public StringEntity getEntity() throws IOException {
        MAPLog.pii(LOG_TAG, "Generating StringEntity", "json=" + getJSONString());
        StringEntity stringEntity = new StringEntity(getJSONString());
        return stringEntity;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void initializeHeaders() throws AuthError {
        super.initializeHeaders();
        addHeader(new BasicHeader("Content-Type", "application/json"));
    }
}
