package com.amazon.identity.auth.device.endpoint;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.ProfileHelper;
import com.amazon.identity.auth.device.utils.DefaultLibraryInfo;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.message.BasicHeader;

/* JADX INFO: loaded from: classes.dex */
public class ProfileRequest extends AbstractTokenRequest {
    private static final String API_PREFIX = "api";
    public static final String API_PREFIX_DEVO = "api.integ";
    public static final String API_PREFIX_PRE_PROD = "api.pre-prod";
    private static final String AUTHORIZATION = "Authorization";
    private static final String BEARER_PREFIX = "Bearer ";
    private static final String LOG_TAG = ProfileHelper.class.getName();
    private static final String PROFILE_ENDPOINT = "/user/profile";
    private String mAuthzToken;
    private final Context mContext;

    public ProfileRequest(String appName, String appVersion, String libVersion, Bundle options, String authzToken, Context context) {
        super(appName, appVersion, libVersion, options);
        this.mAuthzToken = authzToken;
        this.mContext = context;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected TokenResponse generateTokenResponse(HttpResponse httpResponse) {
        return new ProfileResponse(httpResponse);
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected void addRequestInfoParameters() throws AuthError {
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    public String getEndPoint() {
        return PROFILE_ENDPOINT;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.APTokenRequest
    public void initializeHeaders() throws AuthError {
        super.initializeHeaders();
        addHeader(new BasicHeader("Authorization", BEARER_PREFIX + this.mAuthzToken));
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.RequestUrlBuilder
    public String getDomain() {
        return AbstractTokenRequest.DEFAULT_DOMAIN;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.APTokenRequest
    public String getHost(Bundle options) {
        String prefix;
        updateAppState();
        switch (DefaultLibraryInfo.getOverrideLibraryState()) {
            case FORCE_DEVO:
                prefix = "api.integ";
                break;
            case FORCE_PRE_PROD:
                prefix = "api.pre-prod";
                break;
            default:
                prefix = "api";
                break;
        }
        String host = prefix + getDomain();
        MAPLog.i(LOG_TAG, "host for request: " + host);
        return host;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    public HttpRequestBase getRequest() throws AuthError {
        return new HttpGet(getRequestUrl());
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected void consumeRequestContent() throws IOException {
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected void updateEntity() throws IOException {
    }

    private void updateAppState() {
        String hostType = getHostType(this.mContext, this.mContext.getPackageName());
        if (AbstractTokenRequest.DEVO_PREFIX.equalsIgnoreCase(hostType)) {
            DefaultLibraryInfo.setOverrideAppState(AccountManagerConstants.OVERIDE_APP_STATE.FORCE_DEVO);
        } else if ("gamma".equalsIgnoreCase(hostType)) {
            DefaultLibraryInfo.setOverrideAppState(AccountManagerConstants.OVERIDE_APP_STATE.FORCE_PRE_PROD);
        }
    }

    private String getHostType(Context context, String packageName) {
        String hostType = AbstractTokenRequest.PROD_PREFIX;
        try {
            ApplicationInfo appInfo = context.getPackageManager().getApplicationInfo(packageName, 128);
            if (appInfo.metaData == null) {
                return AbstractTokenRequest.PROD_PREFIX;
            }
            hostType = appInfo.metaData.getString("host.type");
            MAPLog.d(LOG_TAG, "Host Type " + hostType + " found in package " + packageName);
            return hostType;
        } catch (PackageManager.NameNotFoundException e) {
            MAPLog.d(LOG_TAG, "No host type found in package " + packageName);
            return hostType;
        }
    }
}
