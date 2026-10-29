package com.amazon.identity.auth.device.token;

import android.text.TextUtils;
import android.text.format.Time;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractToken implements Token {
    private static final String KEY_CREATION_TIME = "creation_time";
    private static final String LOG_TAG = AbstractToken.class.getName();
    private final String _token;
    protected final Time localCreationTimestamp;
    protected Map<String, String> tokenData;

    private AbstractToken() {
        this.localCreationTimestamp = new Time();
        this._token = null;
    }

    public AbstractToken(AbstractToken token) {
        this.localCreationTimestamp = new Time();
        if (token == null || TextUtils.isEmpty(token.getToken())) {
            throw new IllegalArgumentException("Token string may not be null for an AbstractToken");
        }
        this._token = token.getToken();
        this.localCreationTimestamp.set(token.localCreationTimestamp);
        this.tokenData = new HashMap(token.tokenData);
    }

    public AbstractToken(String token) {
        this.localCreationTimestamp = new Time();
        if (TextUtils.isEmpty(token)) {
            throw new IllegalArgumentException("Token string may not be null for an AbstractToken");
        }
        this._token = token;
        this.localCreationTimestamp.setToNow();
        this.tokenData = new HashMap();
        initTokenData();
    }

    public AbstractToken(Map<String, String> tokenData) throws AuthError {
        this.localCreationTimestamp = new Time();
        this._token = tokenData.get(Token.KEY_TOKEN);
        if (TextUtils.isEmpty(this._token)) {
            throw new IllegalArgumentException("Token string may not be null for an AbstractToken");
        }
        this.tokenData = tokenData;
        String creationTimeMillis = tokenData.get(KEY_CREATION_TIME);
        if (creationTimeMillis == null) {
            MAPLog.i(LOG_TAG, "creation_time not found in token data when creating Token, setting creation time to now");
            this.localCreationTimestamp.setToNow();
            tokenData.put(KEY_CREATION_TIME, String.valueOf(this.localCreationTimestamp.toMillis(false)));
        } else {
            try {
                this.localCreationTimestamp.set(Long.parseLong(creationTimeMillis));
            } catch (NumberFormatException e) {
                MAPLog.e(LOG_TAG, "Unable to parse creation_time from token data when creating Token, setting creation time to now");
                this.localCreationTimestamp.setToNow();
                tokenData.put(KEY_CREATION_TIME, String.valueOf(this.localCreationTimestamp.toMillis(false)));
            }
        }
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public Time getLocalTimestamp() {
        return this.localCreationTimestamp;
    }

    protected final String getToken() {
        return this._token;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public final Map<String, String> getData() {
        return this.tokenData;
    }

    public static AccountManagerConstants.REGION_HINT convertStringToRegionHint(String sRegionHint) {
        if (AccountManagerConstants.REGION_HINT.EU.toString().equalsIgnoreCase(sRegionHint)) {
            return AccountManagerConstants.REGION_HINT.EU;
        }
        if (AccountManagerConstants.REGION_HINT.FE.toString().equalsIgnoreCase(sRegionHint)) {
            return AccountManagerConstants.REGION_HINT.FE;
        }
        if (AccountManagerConstants.REGION_HINT.CN.toString().equalsIgnoreCase(sRegionHint)) {
            return AccountManagerConstants.REGION_HINT.CN;
        }
        return AccountManagerConstants.REGION_HINT.NA;
    }

    private void initTokenData() {
        this.tokenData.put(Token.KEY_TOKEN, this._token);
        this.tokenData.put(KEY_CREATION_TIME, String.valueOf(this.localCreationTimestamp.toMillis(false)));
    }

    public static long secsToMillis(long seconds) {
        return 1000 * seconds;
    }

    protected static long millisToSecs(long milliSeconds) {
        return milliSeconds / 1000;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getDirectedId() {
        return this.tokenData.get("directedid");
    }
}
