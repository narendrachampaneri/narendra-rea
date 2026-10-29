package com.amazon.identity.auth.device.token;

import com.amazon.identity.auth.device.dataobject.AuthorizationToken;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class RefreshAtzToken extends AuthorizationToken {
    public RefreshAtzToken(String appId, String directedId, String tokenValue, byte[] miscData) {
        this(appId, directedId, tokenValue, new Date(), miscData);
    }

    public RefreshAtzToken(String appId, String directedId, String tokenValue, Date creationTime, byte[] miscData) {
        super(appId, directedId, tokenValue, creationTime, creationTime, miscData, AuthorizationToken.AUTHZ_TOKEN_TYPE.REFRESH);
    }

    private RefreshAtzToken(long id, String appId, String directedId, String tokenValue, Date creationTime, byte[] miscData) {
        super(appId, directedId, tokenValue, creationTime, creationTime, miscData, AuthorizationToken.AUTHZ_TOKEN_TYPE.REFRESH);
        setId(id);
    }

    public RefreshAtzToken(RefreshAtzToken token) {
        this(token.getId(), token.getAppFamilyId(), token.getDirectedId(), token.getTokenValue(), new Date(token.getCreationTime().getTime()), token.getMiscData());
    }

    public RefreshAtzToken() {
        this.mType = AuthorizationToken.AUTHZ_TOKEN_TYPE.REFRESH;
    }
}
