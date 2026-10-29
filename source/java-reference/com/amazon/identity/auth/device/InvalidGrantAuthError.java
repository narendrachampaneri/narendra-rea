package com.amazon.identity.auth.device;

/* JADX INFO: loaded from: classes.dex */
public class InvalidGrantAuthError extends AuthError {
    private static final long serialVersionUID = 1;

    public InvalidGrantAuthError(String detailMessage) {
        super(detailMessage, AuthError.ERROR_TYPE.ERROR_INVALID_GRANT);
    }
}
