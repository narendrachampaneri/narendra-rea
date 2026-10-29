package com.amazon.identity.auth.device.endpoint;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.DefaultLibraryInfo;
import com.amazon.identity.auth.device.utils.MAPLog;
import org.apache.http.message.BasicNameValuePair;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractOauthTokenRequest extends AbstractTokenRequest {
    public static final String API_PREFIX = "api";
    public static final String API_PREFIX_DEVO = "api.integ";
    public static final String API_PREFIX_PRE_PROD = "api.pre-prod";
    public static final String APP_APP_ID_PARAM = "app_id";
    public static final String APP_CLIENT_ID_PARAM = "client_id";
    public static final String AUTHORIZATION_CODE_GRANT = "authorization_code";
    public static final String AUTHORIZATION_CODE_PARAM = "code";
    public static final String GRANT_TYPE_PARAM = "grant_type";
    private static final String LOG_TAG = AbstractTokenRequest.class.getName();
    public static final String OAUTH_END_POINT = "/auth/O2/token";
    public static final String REDIRECT_URI_PARAM = "redirect_uri";
    public static final String REFRESH_TOKEN_GRANT = "refresh_token";
    private final String mAppFamilyId;
    protected final String mClientId;
    protected final Context mContext;

    public abstract String getGrantType();

    public AbstractOauthTokenRequest(String appName, String appVersion, String libVersion, String appFamilyId, Context context, String clientId, Bundle options) {
        super(appName, appVersion, libVersion, options);
        this.mAppFamilyId = appFamilyId;
        this.mContext = context;
        this.mClientId = clientId;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    public String getEndPoint() {
        return OAUTH_END_POINT;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.RequestUrlBuilder
    public String getDomain() {
        return AbstractTokenRequest.DEFAULT_DOMAIN;
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest, com.amazon.identity.auth.device.endpoint.APTokenRequest
    public String getHost(Bundle options) {
        String prefix;
        MAPLog.i(LOG_TAG, " domain: .amazon.com");
        updateAppState();
        switch (DefaultLibraryInfo.getOverrideLibraryState()) {
            case FORCE_DEVO:
                prefix = "api.integ";
                break;
            case FORCE_PRE_PROD:
                prefix = "api.pre-prod";
                break;
            default:
                prefix = API_PREFIX;
                break;
        }
        String host = prefix + getDomain();
        MAPLog.i(LOG_TAG, "host for request: " + host);
        return host;
    }

    private void updateAppState() {
        String hostType = getHostType(this.mContext, this.mContext.getPackageName());
        if (AbstractTokenRequest.DEVO_PREFIX.equalsIgnoreCase(hostType)) {
            DefaultLibraryInfo.setOverrideAppState(AccountManagerConstants.OVERIDE_APP_STATE.FORCE_DEVO);
        } else if ("gamma".equalsIgnoreCase(hostType)) {
            DefaultLibraryInfo.setOverrideAppState(AccountManagerConstants.OVERIDE_APP_STATE.FORCE_PRE_PROD);
        }
    }

    @Override // com.amazon.identity.auth.device.endpoint.AbstractTokenRequest
    protected void addRequestInfoParameters() throws AuthError {
        this.postParameters.add(new BasicNameValuePair(GRANT_TYPE_PARAM, getGrantType()));
        this.postParameters.add(new BasicNameValuePair("client_id", this.mClientId));
    }

    protected String getAppFamilyId() {
        return this.mAppFamilyId;
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
