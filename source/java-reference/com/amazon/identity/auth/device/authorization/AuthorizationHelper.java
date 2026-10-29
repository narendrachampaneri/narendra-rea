package com.amazon.identity.auth.device.authorization;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.appid.AppIdentifier;
import com.amazon.identity.auth.device.appid.ThirdPartyAppIdentifier;
import com.amazon.identity.auth.device.authorization.api.AuthorizationListener;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.dataobject.RequestedScope;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.datastore.ProfileDataSource;
import com.amazon.identity.auth.device.endpoint.AbstractOauthTokenRequest;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.amazon.identity.auth.device.endpoint.TokenVendor;
import com.amazon.identity.auth.device.thread.ThreadUtils;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class AuthorizationHelper {
    private static final String HOST_TYPE = "host.type";
    private static final String HTTPS = "https";
    private static final String LOG_TAG = AuthorizationHelper.class.getName();
    private TokenVendor mTokenVendor = new TokenVendor();

    public void authorize(final Context context, String packageName, final String clientId, String[] requestedScopes, final boolean isBrowserFlow, final AuthorizationListener listener) throws AuthError {
        if (ThreadUtils.isRunningOnMainThread()) {
            MAPLog.e(LOG_TAG, "authorize started on main thread");
            throw new IllegalStateException("authorize started on main thread");
        }
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        AppInfo appInfo = appIdentifier.getAppInfo(packageName, context);
        String appId = appInfo.getAppFamilyId();
        List<RequestedScope> cachedScopes = this.mTokenVendor.getCachedScopes(null, appId, context);
        List<String> scopeList = getCommonScopesForAuthorization(context, requestedScopes, cachedScopes, appId);
        final String[] allScopes = (String[]) scopeList.toArray(new String[scopeList.size()]);
        Bundle results = Bundle.EMPTY;
        if (cachedScopes == null || cachedScopes.size() == 0) {
            results = getResultsFromAuthorizationService(context, appId, clientId, allScopes, listener);
        }
        if (!results.containsKey(AuthError.AUTH_ERROR_EXECEPTION)) {
            if (!results.containsKey(AuthzConstants.BUNDLE_KEY.AUTHORIZE.val)) {
                if (!results.containsKey(AuthzConstants.BUNDLE_KEY.CAUSE_ID.val)) {
                    ProfileDataSource.getInstance(context).deleteAllRows();
                    Handler myHandler = new Handler(Looper.getMainLooper());
                    final UUID requestId = UUID.randomUUID();
                    MAPLog.pii(LOG_TAG, "Created UUID for request", "uuid=" + requestId);
                    myHandler.post(new Runnable() { // from class: com.amazon.identity.auth.device.authorization.AuthorizationHelper.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (isBrowserFlow) {
                                    AuthorizationHelper.this.authorizeWithBrowser(context, context.getPackageName(), clientId, allScopes, requestId, listener);
                                } else {
                                    listener.onError(new AuthError("WebView is not allowed for Authorization", AuthError.ERROR_TYPE.ERROR_BAD_PARAM));
                                }
                            } catch (AuthError e) {
                                listener.onError(e);
                            }
                        }
                    });
                    return;
                }
            }
        }
        results.setClassLoader(context.getClassLoader());
        if (results.containsKey(AuthzConstants.BUNDLE_KEY.CAUSE_ID.val)) {
            listener.onCancel(results);
            return;
        }
        if (results.containsKey(AuthError.AUTH_ERROR_EXECEPTION)) {
            listener.onError(AuthError.extractError(results));
            return;
        }
        DatabaseHelper.clearAuthorizationState(context);
        Bundle bundle = new Bundle();
        bundle.putString(AuthzConstants.BUNDLE_KEY.AUTHORIZE.val, "authorized via service");
        listener.onSuccess(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void authorizeWithBrowser(Context context, String packageName, String clientId, String[] scopes, UUID requestId, AuthorizationListener listener) throws AuthError {
        CallbackInfo callbackInfo = new CallbackInfo(Calendar.getInstance().getTime(), requestId.toString(), clientId, scopes, listener);
        CallbackInfo.addCallbackInfo(callbackInfo);
        String oauth2Url = getOAuth2Url(context, packageName, clientId, scopes, requestId.toString(), true);
        Intent webBrowserIntent = new Intent("android.intent.action.VIEW", Uri.parse(oauth2Url));
        webBrowserIntent.setFlags(1073741824);
        MAPLog.i(LOG_TAG, "Starting External Browser");
        context.startActivity(webBrowserIntent);
    }

    private List<String> getCommonScopesForAuthorization(Context context, String[] requestedScopes, List<RequestedScope> cachedScopes, String appId) {
        Collection<? extends String> requestedScopesList = Arrays.asList(requestedScopes);
        List<String> commonScopes = new ArrayList<>();
        commonScopes.addAll(requestedScopesList);
        if (cachedScopes != null) {
            for (RequestedScope cachedScope : cachedScopes) {
                String cachedScopeName = cachedScope.getScopeValue();
                if (!commonScopes.contains(cachedScopeName)) {
                    commonScopes.add(cachedScopeName);
                }
            }
        }
        return commonScopes;
    }

    private Bundle getResultsFromAuthorizationService(Context context, String appId, String clientId, String[] scopes, AuthorizationListener listener) throws AuthError {
        Bundle result = new Bundle();
        try {
            AmazonAuthorizationServiceInterface service = ThirdPartyServiceHelper.getRemoteAndroidService(context);
            if (service != null) {
                result = service.authorize(null, context.getPackageName(), scopes);
                if (result == null) {
                    return new Bundle();
                }
                result.setClassLoader(context.getClassLoader());
            }
        } catch (RemoteException e) {
            ThirdPartyServiceHelper.clearCachedService(context);
            MAPLog.i(LOG_TAG, "RemoteException on authorize. " + e.getMessage());
        } finally {
            ThirdPartyServiceHelper.unbind(context);
        }
        return result;
    }

    void doExchange(final Context context, final Bundle response, final AuthorizationListener listener) {
        ThreadUtils.THREAD_POOL.execute(new Runnable() { // from class: com.amazon.identity.auth.device.authorization.AuthorizationHelper.2
            @Override // java.lang.Runnable
            public void run() {
                if (response != null) {
                    String code = response.getString("code");
                    if (!TextUtils.isEmpty(code)) {
                        String clientId = response.getString(AuthorizationResponseParser.CLIENT_ID_STATE);
                        String redirectUri = response.getString(AuthorizationResponseParser.REDIRECT_URI_STATE);
                        String[] resultScopes = response.getStringArray(AuthorizationResponseParser.SCOPE);
                        MAPLog.pii(AuthorizationHelper.LOG_TAG, "Params extracted from OAuth2 response", "code=" + code + "clientId=" + clientId + " redirectUri=" + redirectUri + " scopes=" + Arrays.toString(resultScopes));
                        AuthorizationHelper.this.startExchange(context, clientId, redirectUri, code, resultScopes, listener);
                        return;
                    }
                    listener.onError(new AuthError("Response bundle from Authorization was empty", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE));
                }
                listener.onError(new AuthError("Response bundle from Authorization was null", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startExchange(Context context, String clientId, String redirectUri, String code, String[] scopes, AuthorizationListener listener) {
        if (ThreadUtils.isRunningOnMainThread()) {
            MAPLog.e(LOG_TAG, "code for token exchange started on main thread");
            throw new IllegalStateException("authorize started on main thread");
        }
        MAPLog.i(LOG_TAG, "Inside getToken AsyncTask - Attempting endpoint");
        AppIdentifier appIdentifier = new ThirdPartyAppIdentifier();
        AppInfo appInfo = appIdentifier.getAppInfo(context.getPackageName(), context);
        String appId = appInfo.getAppFamilyId();
        try {
            Bundle result = this.mTokenVendor.vendNewTokensFromCode(code, clientId, appId, redirectUri, scopes, context);
            listener.onSuccess(result);
        } catch (AuthError e) {
            MAPLog.e(LOG_TAG, "Failed doing code for token exchange " + e.getMessage());
            listener.onError(e);
        } catch (IOException e2) {
            listener.onError(new AuthError("Failed to exchange code for token", e2, AuthError.ERROR_TYPE.ERROR_IO));
        }
    }

    public static String getOAuth2Url(Context context, String packageName, String clientId, String[] scopes, String requestId, boolean doRememberMe) throws AuthError {
        String host = getHost(context, packageName);
        String endPoint = getEndPoint() + getQueryString(context, packageName, clientId, scopes, requestId, doRememberMe);
        try {
            URL url = new URL("https", host, endPoint);
            MAPLog.pii(LOG_TAG, "Generating OAUTH2 URL", "url=" + url.toString());
            return url.toString();
        } catch (MalformedURLException e) {
            throw new AuthError("MalformedURLException", e, AuthError.ERROR_TYPE.ERROR_BAD_PARAM);
        }
    }

    private static String getRedirectUri(String packageName) {
        String rediectUri = "amzn://" + packageName;
        MAPLog.pii(LOG_TAG, "Generating Redirect URI", "rediectUri=" + rediectUri);
        return rediectUri;
    }

    private static String getHost(Context context, String packageName) {
        return getHostType(context, packageName) + AbstractTokenRequest.DEFAULT_DOMAIN;
    }

    private static String getEndPoint() {
        return "/ap/oa";
    }

    private static String getQueryString(Context context, String packageName, String clientId, String[] scopes, String requestId, boolean doRememberMe) {
        StringBuffer sb = new StringBuffer("?");
        String redirectUri = getRedirectUri(packageName);
        sb.append(getUrlEncodedQuery("response_type", "code"));
        sb.append("&");
        sb.append(getUrlEncodedQuery(AbstractOauthTokenRequest.REDIRECT_URI_PARAM, redirectUri));
        sb.append("&");
        sb.append(getUrlEncodedQuery("client_id", clientId));
        sb.append("&");
        if (doRememberMe) {
            sb.append(getUrlEncodedQuery("amzn_respectRmrMeAuthState", "1"));
            sb.append("&");
            sb.append(getUrlEncodedQuery("amzn_showRmrMe", "1"));
            sb.append("&");
            sb.append(getUrlEncodedQuery("amzn_rmrMeDefaultSelected", "1"));
            sb.append("&");
        }
        sb.append(getUrlEncodedQuery(AuthorizationResponseParser.STATE, "clientId=" + clientId + "&" + AuthorizationResponseParser.REDIRECT_URI_STATE + "=" + redirectUri + "&" + AuthorizationResponseParser.CLIENT_REQUEST_ID_STATE + "=" + requestId.toString()));
        sb.append("&");
        String scopeString = ScopesHelper.getScopesString(scopes);
        sb.append(getUrlEncodedQuery(AuthorizationResponseParser.SCOPE, scopeString));
        return sb.toString();
    }

    private static String getUrlEncodedQuery(String name, String value) {
        return name + "=" + URLEncoder.encode(value);
    }

    private static String getHostType(Context context, String packageName) {
        String hostType = AbstractTokenRequest.PROD_PREFIX;
        try {
            ApplicationInfo appInfo = context.getPackageManager().getApplicationInfo(packageName, 128);
            if (appInfo.metaData == null || !appInfo.metaData.containsKey(HOST_TYPE)) {
                return AbstractTokenRequest.PROD_PREFIX;
            }
            hostType = appInfo.metaData.getString(HOST_TYPE);
            MAPLog.pii(LOG_TAG, "Host Type", "hostType=" + hostType + " package=" + packageName);
            return hostType;
        } catch (PackageManager.NameNotFoundException e) {
            MAPLog.d(LOG_TAG, "No host type found in package " + packageName);
            return hostType;
        }
    }
}
