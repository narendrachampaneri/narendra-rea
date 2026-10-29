package com.amazon.identity.auth.device.token;

import android.text.TextUtils;
import android.text.format.Time;
import com.amazon.identity.auth.device.AccountManagerConstants;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AccessToken extends AbstractToken {
    public static final long ALWAYS_EXPIRE = -1;
    private static final String KEY_EXPIRES_IN = "expires_in";
    private static final String LOG_TAG = AccessToken.class.getName();
    public static final long NEVER_EXPIRE = 0;
    protected static final long PRE_EXPIRATION_PERIOD = 300;
    private Time _expirationTime;
    private long _expiresIn;

    public AccessToken(String token, String directedId) {
        this(token, directedId, 0L);
    }

    public AccessToken(String token, String directedId, long expiresIn) {
        super(token);
        this._expiresIn = 0L;
        MAPLog.pii(LOG_TAG, "Creating Token " + getType() + "expiresIn=" + expiresIn, "directedId=" + directedId);
        if (!TextUtils.isEmpty(directedId)) {
            this.tokenData.put("directedid", directedId);
        }
        initExpirationData(expiresIn);
    }

    public AccessToken(Map<String, String> tokenData) throws AuthError {
        long expiresIn;
        super(tokenData);
        this._expiresIn = 0L;
        if (!tokenData.containsKey("directedid")) {
            MAPLog.i(LOG_TAG, "No DirectedId available for AccessToken");
            throw new AuthError("No DirectedId available for AccessToken", null, AuthError.ERROR_TYPE.ERROR_BAD_PARAM);
        }
        String expiresInStr = tokenData.get("expires_in");
        if (expiresInStr == null) {
            MAPLog.w(LOG_TAG, "expires_in not found in token data when creating AccessToken, token will not expire locally");
            expiresIn = 0;
            tokenData.put("expires_in", String.valueOf(0L));
        } else {
            try {
                expiresIn = Long.parseLong(expiresInStr);
            } catch (NumberFormatException e) {
                MAPLog.e(LOG_TAG, "Unable to parse expires_in from token data when creating AccessToken, token will not expire locally");
                expiresIn = 0;
                tokenData.put("expires_in", String.valueOf(0L));
            }
        }
        MAPLog.pii(LOG_TAG, "Creating Token " + getType() + " from data expires=" + expiresIn, "directedId=" + getDirectedId());
        setExpirationTime(expiresIn);
    }

    protected void setExpirationTime(long expiresIn) {
        this._expiresIn = expiresIn;
        if (expiresIn == 0) {
            this._expirationTime = null;
        } else if (expiresIn <= -1) {
            this._expiresIn = -1L;
            this._expirationTime = null;
        } else {
            this._expirationTime = new Time();
            long expireAt = (getLocalTimestamp().toMillis(false) + secsToMillis(expiresIn)) - secsToMillis(getPreExpirationPeriod());
            this._expirationTime.set(expireAt);
        }
        MAPLog.i(LOG_TAG, "Expiration Time:" + this._expirationTime);
    }

    public boolean hasExpired() {
        if (0 == getExpiresIn()) {
            return false;
        }
        if (-1 == getExpiresIn()) {
            return true;
        }
        Time currentTime = getCurrentTime();
        return Time.compare(currentTime, this._expirationTime) >= 0;
    }

    public boolean neverExpire() {
        return 0 == getExpiresIn();
    }

    private void initExpirationData(long expiresIn) {
        setExpirationTime(expiresIn);
        this.tokenData.put("expires_in", String.valueOf(expiresIn));
    }

    protected Time getCurrentTime() {
        Time currentTime = new Time();
        currentTime.setToNow();
        return currentTime;
    }

    protected long getPreExpirationPeriod() {
        return PRE_EXPIRATION_PERIOD;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getType() {
        return AccountManagerConstants.ACCESS_TOKEN_TYPE_PREFIX;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String toString() {
        return getToken();
    }

    public long getExpiresIn() {
        return this._expiresIn;
    }
}
