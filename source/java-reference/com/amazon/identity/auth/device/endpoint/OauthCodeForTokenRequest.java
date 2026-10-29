package com.amazon.identity.auth.device.endpoint;

import android.content.Context;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
class OauthCodeForTokenRequest extends AbstractOauthTokenRequest {
    private static final String LOG_TAG = OauthCodeForTokenRequest.class.getName();
    private final String mCode;
    private final String mRedirectUri;

    OauthCodeForTokenRequest(String appName, String appVersion, String libVersion, Bundle options, String code, String clientId, String appId, String redirectUri, Context context) {
        super(appName, appVersion, libVersion, appId, context, clientId, options);
        this.mCode = code;
        this.mRedirectUri = redirectUri;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest
    public String getGrantType() {
        return AbstractOauthTokenRequest.AUTHORIZATION_CODE_GRANT;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected TokenResponse generateTokenResponse(HttpResponse httpResponse) {
        return new OauthCodeForTokenResponse(httpResponse, getAppFamilyId());
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.APTokenRequest
    public HttpResponse executeRequest() throws IOException {
        MAPLog.pii(LOG_TAG, "Oauth Code for Token Exchange executeRequest. redirectUri=" + this.mRedirectUri + " appId=" + getAppFamilyId(), "code=" + this.mCode);
        return super.executeRequest();
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest, com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected void addRequestInfoParameters() throws AuthError {
        super.addRequestInfoParameters();
        this.postParameters.add(new BasicNameValuePair("code", this.mCode));
        this.postParameters.add(new BasicNameValuePair(AbstractOauthTokenRequest.REDIRECT_URI_PARAM, this.mRedirectUri));
    }
}
