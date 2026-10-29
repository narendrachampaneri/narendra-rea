package com.amazon.identity.auth.device.endpoint;

import android.content.Context;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.token.RefreshAtzToken;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
class OauthTokenRequest extends AbstractOauthTokenRequest {
    private static final String LOG_TAG = OauthTokenRequest.class.getName();
    private final RefreshAtzToken mRefreshToken;

    OauthTokenRequest(String appName, String appVersion, String libVersion, Bundle options, String appId, Context context, RefreshAtzToken refreshToken, String clientId) {
        super(appName, appVersion, libVersion, appId, context, clientId, options);
        this.mRefreshToken = refreshToken;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest
    public String getGrantType() {
        return "refresh_token";
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected TokenResponse generateTokenResponse(HttpResponse httpResponse) {
        return new OauthTokenResponse(httpResponse, getAppFamilyId());
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.APTokenRequest
    public HttpResponse executeRequest() throws IOException {
        MAPLog.pii(LOG_TAG, "Oauth Access Exchange executeRequest. appId=" + getAppFamilyId(), "refreshAtzToken=" + this.mRefreshToken.toString());
        return super.executeRequest();
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest, com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected void addRequestInfoParameters() throws AuthError {
        super.addRequestInfoParameters();
        this.postParameters.add(new BasicNameValuePair("refresh_token", this.mRefreshToken.toString()));
    }
}
