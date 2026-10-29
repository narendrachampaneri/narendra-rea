package com.amazon.identity.auth.device.dataobject;

import com.amazon.identity.auth.device.token.AccessAtzToken;
import com.amazon.identity.auth.device.token.RefreshAtzToken;

/* JADX INFO: loaded from: classes.dex */
public final class AuthorizationTokenFactory {
    private AuthorizationTokenFactory() {
    }

    public static AuthorizationToken getAuthorizationToken(AuthorizationToken.AUTHZ_TOKEN_TYPE type) {
        switch (type) {
            case ACCESS:
                AuthorizationToken token = new AccessAtzToken();
                return token;
            case REFRESH:
                AuthorizationToken token2 = new RefreshAtzToken();
                return token2;
            default:
                throw new IllegalArgumentException("Unknown token type for factory " + type);
        }
    }

    public static AuthorizationToken getCopyAuthorizationToken(AuthorizationToken token) {
        switch (token.getTypeAsEnum()) {
            case ACCESS:
                AuthorizationToken returnToken = new AccessAtzToken((AccessAtzToken) token);
                return returnToken;
            case REFRESH:
                AuthorizationToken returnToken2 = new RefreshAtzToken((RefreshAtzToken) token);
                return returnToken2;
            default:
                throw new IllegalArgumentException("Unknown token type for copy " + token.getType());
        }
    }
}
