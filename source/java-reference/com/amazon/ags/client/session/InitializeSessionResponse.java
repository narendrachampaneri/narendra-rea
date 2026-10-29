package com.amazon.ags.client.session;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.client.RequestResponseImpl;

/* JADX INFO: loaded from: classes2.dex */
public class InitializeSessionResponse extends RequestResponseImpl {
    private final String authorizeResult;

    public InitializeSessionResponse(String authorizeResult, int responseCode) {
        super(responseCode);
        this.authorizeResult = authorizeResult;
    }

    public InitializeSessionResponse(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.authorizeResult = null;
    }

    public String getAuthorizeResult() {
        return this.authorizeResult;
    }
}
