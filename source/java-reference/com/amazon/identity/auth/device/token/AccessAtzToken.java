package com.amazon.identity.auth.device.token;

import com.amazon.identity.auth.device.dataobject.AuthorizationToken;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class AccessAtzToken extends AuthorizationToken {
    public AccessAtzToken(String appId, String directedId, String tokenValue, long expiresIn, byte[] miscData) {
        this(appId, directedId, tokenValue, new Date(), expiresIn, miscData);
    }

    public AccessAtzToken(String appId, String directedId, String tokenValue, Date creationTime, long expiresIn, byte[] miscData) {
        this(appId, directedId, tokenValue, creationTime, new Date(creationTime.getTime() + expiresIn), miscData);
    }

    public AccessAtzToken(String appId, String directedId, String tokenValue, Date creationTime, Date expirationTime, byte[] miscData) {
        super(appId, directedId, tokenValue, creationTime, expirationTime, miscData, AuthorizationToken.AUTHZ_TOKEN_TYPE.ACCESS);
    }

    private AccessAtzToken(long id, String appId, String directedId, String tokenValue, Date creationTime, Date expirationTime, byte[] miscData) {
        super(appId, directedId, tokenValue, creationTime, expirationTime, miscData, AuthorizationToken.AUTHZ_TOKEN_TYPE.ACCESS);
        setId(id);
    }

    public AccessAtzToken(AccessAtzToken token) {
        this(token.getId(), token.getAppFamilyId(), token.getDirectedId(), token.getTokenValue(), new Date(token.getCreationTime().getTime()), new Date(token.getExpirationTime().getTime()), token.getMiscData());
    }

    public AccessAtzToken() {
        this.mType = AuthorizationToken.AUTHZ_TOKEN_TYPE.ACCESS;
    }
}
