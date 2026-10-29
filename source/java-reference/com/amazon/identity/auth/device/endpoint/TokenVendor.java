package com.amazon.identity.auth.device.endpoint;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface;
import com.amazon.identity.auth.device.authorization.ThirdPartyServiceHelper;
import com.amazon.identity.auth.device.authorization.api.AuthzConstants;
import com.amazon.identity.auth.device.dataobject.AuthorizationToken;
import com.amazon.identity.auth.device.dataobject.RequestedScope;
import com.amazon.identity.auth.device.datastore.AuthorizationTokenDataSource;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import com.amazon.identity.auth.device.datastore.ProfileDataSource;
import com.amazon.identity.auth.device.datastore.RequestedScopeDataSource;
import com.amazon.identity.auth.device.token.AccessAtzToken;
import com.amazon.identity.auth.device.token.RefreshAtzToken;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TokenVendor {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String LOG_TAG;
    private ServerCommunication mServerCommunication = new ServerCommunication();

    static {
        $assertionsDisabled = !TokenVendor.class.desiredAssertionStatus();
        LOG_TAG = TokenVendor.class.getName();
    }

    public void setServerCommunication(ServerCommunication serverCommunication) {
        this.mServerCommunication = serverCommunication;
    }

    public String vendToken(String clientId, String directedId, String appId, String[] scopes, String packageName, Context context) throws AuthError, IOException {
        MAPLog.pii(LOG_TAG, "Vending out token: appId=" + appId + ", scopes=" + Arrays.toString(scopes), "directedId=" + directedId);
        if (!$assertionsDisabled && (scopes == null || scopes.length <= 0)) {
            throw new AssertionError();
        }
        RequestedScope[] requestedScopes = getRequestedScopes(directedId, appId, scopes, context);
        AccessAtzToken commonAccessToken = getCommonAccessToken(requestedScopes, context);
        RefreshAtzToken commonRefreshToken = getCommonRefreshToken(requestedScopes, context);
        if (commonAccessToken == null || !commonAccessToken.isRemainingLifeAcceptable()) {
            return updateExistingToken(commonRefreshToken, directedId, clientId, appId, scopes, commonAccessToken, packageName, context);
        }
        MAPLog.i(LOG_TAG, "Common token still has acceptable life, returning it back to caller");
        return commonAccessToken.getTokenValue();
    }

    public RequestedScope[] getRequestedScopes(String directedId, String appId, String[] scopes, Context context) {
        RequestedScope[] requestedScopes = new RequestedScope[scopes.length];
        for (int i = 0; i < requestedScopes.length; i++) {
            RequestedScope rs = RequestedScopeDataSource.getInstance(context).findByPrimaryKey(scopes[i], appId, directedId);
            if (rs != null) {
                requestedScopes[i] = rs;
            } else {
                MAPLog.w(LOG_TAG, "RequestedScope shouldn't be null!!!! - " + rs + ", but continuing anyway...");
                requestedScopes[i] = new RequestedScope(scopes[i], appId, directedId);
            }
        }
        return requestedScopes;
    }

    public List<RequestedScope> getCachedScopes(String directedId, String appId, Context context) {
        List<RequestedScope> cachedScopes = RequestedScopeDataSource.getInstance(context).findAllRows();
        return cachedScopes;
    }

    public String vendNewToken(String directedId, String clientId, String appId, String[] scopes, Context context) throws AuthError, IOException {
        if (!$assertionsDisabled && (scopes == null || scopes.length <= 0)) {
            throw new AssertionError();
        }
        MAPLog.i(LOG_TAG, "Vending new token");
        AuthorizationTokenDataSource atzTokenDataSource = AuthorizationTokenDataSource.getInstance(context);
        RequestedScope[] requestedScopes = getRequestedScopes(directedId, appId, scopes, context);
        RefreshAtzToken commonRefreshToken = getCommonRefreshToken(requestedScopes, context);
        if (commonRefreshToken != null) {
            AuthorizationToken[] newTokens = this.mServerCommunication.getAuthorizationTokens(commonRefreshToken, directedId, appId, scopes, clientId, context);
            if (newTokens[1] != null) {
                newTokens[1].setRowId(commonRefreshToken.getRowId());
                updateExistingRefreshToken(newTokens[1], commonRefreshToken, context);
                commonRefreshToken = (RefreshAtzToken) newTokens[1];
            }
            if (newTokens[0] != null) {
                insertNewToken(context, atzTokenDataSource, requestedScopes, commonRefreshToken, newTokens[0]);
                return newTokens[0].getTokenValue();
            }
            MAPLog.e(LOG_TAG, "Token returned from Exchange was null. Clearing authorization state");
            DatabaseHelper.clearAuthorizationState(context);
        }
        return null;
    }

    private static void insertNewToken(Context context, AuthorizationTokenDataSource atzTokenDataSource, RequestedScope[] requestedScopes, RefreshAtzToken commonRefreshToken, AuthorizationToken newToken) throws IOException {
        if (newToken.insert(context) == -1) {
            throw new IOException("Inserting token " + newToken + " failed unexpectedly!");
        }
        MAPLog.i(LOG_TAG, "Inserted new token: rowid=" + newToken.getRowId());
        for (RequestedScope rs : requestedScopes) {
            if (rs.getRowId() == -1) {
                rs.setAuthorizationAccessTokenId(newToken.getRowId());
                rs.setAuthorizationRefreshTokenId(commonRefreshToken.getRowId());
                MAPLog.i(LOG_TAG, "Inserting " + rs + " : rowid=" + rs.insert(context));
            } else {
                AuthorizationToken oldAccessToken = atzTokenDataSource.findByRowId(rs.getAuthorizationAccessTokenId());
                if (oldAccessToken != null) {
                    MAPLog.pii(LOG_TAG, "Deleting old access token.", "accessAtzToken=" + oldAccessToken + " : " + oldAccessToken.delete(context));
                }
                rs.setAuthorizationAccessTokenId(newToken.getRowId());
                MAPLog.i(LOG_TAG, "Updating " + rs + " : " + rs.update(context));
                AuthorizationToken oldRefreshToken = atzTokenDataSource.findByRowId(rs.getAuthorizationRefreshTokenId());
                if (oldRefreshToken != null) {
                    MAPLog.pii(LOG_TAG, "Deleting old refresh token.", "refreshAtzToken=" + oldRefreshToken + " : " + oldRefreshToken.delete(context));
                }
                rs.setAuthorizationAccessTokenId(newToken.getRowId());
                MAPLog.i(LOG_TAG, "Updating " + rs + " : " + rs.update(context));
            }
        }
    }

    public Bundle vendNewTokensFromCode(String code, String clientId, String appId, String redirectUri, String[] scopes, Context context) throws AuthError, IOException {
        if (!$assertionsDisabled && (scopes == null || scopes.length <= 0)) {
            throw new AssertionError();
        }
        MAPLog.i(LOG_TAG, "Vending new tokens from Code");
        AuthorizationToken[] tokens = this.mServerCommunication.getTokensFromCode(code, clientId, redirectUri, appId, scopes, context);
        if (tokens == null) {
            AuthError authError = new AuthError("No tokens returned", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            return new Bundle(AuthError.getErrorBundle(authError));
        }
        AccessAtzToken accessAtzToken = (AccessAtzToken) tokens[0];
        if (accessAtzToken == null) {
            AuthError authError2 = new AuthError("Access Atz token was null form ServerCommunication", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            return new Bundle(AuthError.getErrorBundle(authError2));
        }
        if (accessAtzToken.insert(context) == -1) {
            AuthError authError3 = new AuthError("Unable to insert access atz token into db", AuthError.ERROR_TYPE.ERROR_DATA_STORAGE);
            return new Bundle(AuthError.getErrorBundle(authError3));
        }
        RefreshAtzToken refreshAtzToken = (RefreshAtzToken) tokens[1];
        if (refreshAtzToken == null) {
            AuthError authError4 = new AuthError("access token was null form ServerCommunication", AuthError.ERROR_TYPE.ERROR_SERVER_REPSONSE);
            return new Bundle(AuthError.getErrorBundle(authError4));
        }
        if (refreshAtzToken.insert(context) == -1) {
            AuthError authError5 = new AuthError("Unable to insert refresh token into db", AuthError.ERROR_TYPE.ERROR_DATA_STORAGE);
            return new Bundle(AuthError.getErrorBundle(authError5));
        }
        updateRequestedScopes(appId, scopes, context, accessAtzToken, refreshAtzToken);
        Bundle results = new Bundle();
        results.putString(AuthzConstants.BUNDLE_KEY.AUTHORIZE.val, "authorized");
        return results;
    }

    private void updateRequestedScopes(String appId, String[] scopes, Context context, AccessAtzToken accessAtzToken, RefreshAtzToken refeshAtzToken) {
        RequestedScope[] requestedScopes = getRequestedScopes(null, appId, scopes, context);
        for (RequestedScope rs : requestedScopes) {
            if (rs.getRowId() == -1) {
                rs.setAuthorizationAccessTokenId(accessAtzToken.getRowId());
                rs.setAuthorizationRefreshTokenId(refeshAtzToken.getRowId());
                MAPLog.i(LOG_TAG, "Inserting " + rs + " : rowid=" + rs.insert(context));
            } else {
                AuthorizationToken oldAccessToken = accessAtzToken.getDataSource(context).findByRowId(rs.getAuthorizationAccessTokenId());
                if (oldAccessToken != null) {
                    MAPLog.pii(LOG_TAG, "Deleting old access token.", "accessAtzToken=" + oldAccessToken + " : " + oldAccessToken.delete(context));
                }
                rs.setAuthorizationAccessTokenId(accessAtzToken.getRowId());
                AuthorizationToken oldRefreshToken = refeshAtzToken.getDataSource(context).findByRowId(rs.getAuthorizationRefreshTokenId());
                if (oldRefreshToken != null) {
                    MAPLog.pii(LOG_TAG, "Deleting old refresh token ", "refreshAtzToken=" + oldRefreshToken + " : " + oldRefreshToken.delete(context));
                }
                rs.setAuthorizationRefreshTokenId(refeshAtzToken.getRowId());
                MAPLog.i(LOG_TAG, "Updating " + rs + " : " + rs.update(context));
            }
        }
    }

    private String updateExistingToken(RefreshAtzToken refreshAtzToken, String directedId, String clientId, String appId, String[] scopes, AccessAtzToken accessAtzToken, String packageName, Context context) throws AuthError, IOException {
        MAPLog.pii(LOG_TAG, "Updating existing token", "token=" + accessAtzToken);
        AuthorizationToken newAccessToken = null;
        try {
            if (refreshAtzToken != null) {
                AuthorizationToken[] newTokens = this.mServerCommunication.getAuthorizationTokens(refreshAtzToken, directedId, appId, scopes, clientId, context);
                newAccessToken = newTokens[0];
                if (newTokens[1] != null) {
                    MAPLog.pii(LOG_TAG, "Refresh token", "token=" + refreshAtzToken);
                    updateExistingRefreshToken(newTokens[1], refreshAtzToken, context);
                    refreshAtzToken = (RefreshAtzToken) newTokens[1];
                }
                if (newAccessToken != null) {
                    MAPLog.pii(LOG_TAG, "Refreshed token", "token=" + accessAtzToken);
                    boolean updateScopes = false;
                    if (accessAtzToken != null) {
                        newAccessToken.setRowId(accessAtzToken.getRowId());
                    } else {
                        updateScopes = true;
                    }
                    ProfileDataSource.getInstance(context).deleteAllRows();
                    if (newAccessToken.insertOrUpdate(context)) {
                        if (updateScopes) {
                            updateRequestedScopes(appId, scopes, context, (AccessAtzToken) newAccessToken, refreshAtzToken);
                        }
                        MAPLog.i(LOG_TAG, "Update success!");
                    } else {
                        throw new IOException("Updating token failed unexpectedly!");
                    }
                }
            } else {
                AmazonAuthorizationServiceInterface service = ThirdPartyServiceHelper.getRemoteAndroidService(context);
                if (service != null) {
                    DatabaseHelper.clearAuthorizationState(context);
                    newAccessToken = getTokenFromService(context, refreshAtzToken, directedId, clientId, appId, scopes, packageName, service);
                }
            }
            ThirdPartyServiceHelper.unbind(context);
            if (newAccessToken != null) {
                return newAccessToken.getTokenValue();
            }
            return null;
        } catch (Throwable th) {
            ThirdPartyServiceHelper.unbind(context);
            throw th;
        }
    }

    private static AuthorizationToken getTokenFromService(Context context, RefreshAtzToken refreshAtzToken, String directedId, String clientId, String appId, String[] scopes, String packageName, AmazonAuthorizationServiceInterface service) throws AuthError {
        try {
            Bundle result = service.getToken(null, packageName, scopes);
            if (result != null) {
                result.setClassLoader(context.getClassLoader());
                String tokenFromService = result.getString(ThirdPartyServiceHelper.TOKEN_KEYS.ACCESS_ATZ_TOKEN);
                if (!TextUtils.isEmpty(tokenFromService)) {
                    Long expiresIn = Long.valueOf(result.getLong(ThirdPartyServiceHelper.TOKEN_KEYS.ACCESS_ATZ_EXPIRES_IN));
                    AuthorizationToken newToken = new AccessAtzToken(appId, directedId, tokenFromService, new Date(), expiresIn.longValue(), (byte[]) null);
                    return newToken;
                }
                AuthError authError = (AuthError) result.getParcelable(AuthError.AUTH_ERROR_EXECEPTION);
                if (authError != null && AuthError.ERROR_TYPE.ERROR_INVALID_TOKEN == authError.getType()) {
                    MAPLog.e(LOG_TAG, "Invalid token given to the service. Cleaning up local state");
                    return null;
                }
                if (authError != null) {
                    MAPLog.i(LOG_TAG, "AuthError from service " + authError.getMessage());
                    ThirdPartyServiceHelper.clearCachedService(context);
                    throw authError;
                }
                MAPLog.i(LOG_TAG, "No results from service");
            }
        } catch (RemoteException e) {
            ThirdPartyServiceHelper.clearCachedService(context);
            MAPLog.i(LOG_TAG, "RemoteException on getToken. " + e.getMessage());
        }
        return null;
    }

    private static AccessAtzToken getCommonAccessToken(RequestedScope[] requestedScopes, Context context) {
        MAPLog.i(LOG_TAG, "Try finding a common access token for requested scopes");
        if (!$assertionsDisabled && (requestedScopes == null || requestedScopes.length <= 0)) {
            throw new AssertionError();
        }
        AuthorizationTokenDataSource atzDataSource = AuthorizationTokenDataSource.getInstance(context);
        AccessAtzToken to_return = (AccessAtzToken) atzDataSource.findById(requestedScopes[0].getAuthorizationAccessTokenId());
        if (to_return == null) {
            return null;
        }
        for (int i = 1; i < requestedScopes.length; i++) {
            AuthorizationToken tmp = atzDataSource.findById(requestedScopes[i].getAuthorizationAccessTokenId());
            if (tmp == null || tmp.getRowId() != to_return.getRowId()) {
                MAPLog.i(LOG_TAG, "Common access token not found!");
                return null;
            }
        }
        MAPLog.pii(LOG_TAG, "Common access token found.", "accessAtzToken=" + to_return);
        return to_return;
    }

    private static RefreshAtzToken getCommonRefreshToken(RequestedScope[] requestedScopes, Context context) {
        MAPLog.i(LOG_TAG, "Try finding a common refresh token for requested scopes");
        if (!$assertionsDisabled && (requestedScopes == null || requestedScopes.length <= 0)) {
            throw new AssertionError();
        }
        AuthorizationTokenDataSource atzDataSource = AuthorizationTokenDataSource.getInstance(context);
        RefreshAtzToken to_return = (RefreshAtzToken) atzDataSource.findById(requestedScopes[0].getAuthorizationRefreshTokenId());
        if (to_return == null) {
            return null;
        }
        for (int i = 1; i < requestedScopes.length; i++) {
            AuthorizationToken tmp = atzDataSource.findById(requestedScopes[i].getAuthorizationRefreshTokenId());
            if (tmp == null || tmp.getRowId() != to_return.getRowId()) {
                MAPLog.i(LOG_TAG, "Common refresh token not found!");
                return null;
            }
        }
        MAPLog.pii(LOG_TAG, "Common refresh token found.", "refreshAtzToken=" + to_return);
        return to_return;
    }

    public void insertTokens(Context context, AccessAtzToken accessAtzToken, RefreshAtzToken refreshAtzToken, String directedId, String appId, String[] scopes) throws AuthError {
        long accessTokenRowId = accessAtzToken.insert(context);
        if (accessTokenRowId == -1) {
            throw new AuthError("Unable to insert access atz token into db", AuthError.ERROR_TYPE.ERROR_DATA_STORAGE);
        }
        accessAtzToken.setId(accessTokenRowId);
        long refreshTokenRowId = refreshAtzToken.insert(context);
        if (refreshTokenRowId == -1) {
            throw new AuthError("Unable to insert refresh token into db", AuthError.ERROR_TYPE.ERROR_DATA_STORAGE);
        }
        refreshAtzToken.setId(refreshTokenRowId);
        updateRequestedScopes(appId, scopes, context, accessAtzToken, refreshAtzToken);
    }

    public void updateExistingRefreshToken(AuthorizationToken newToken, AuthorizationToken existingToken, Context context) throws IOException {
        newToken.setRowId(existingToken.getRowId());
        if (!newToken.update(context)) {
            throw new IOException("Updating token failed unexpectedly!");
        }
    }
}
