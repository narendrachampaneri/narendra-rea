package com.amazon.ags.client.session;

import com.amazon.ags.api.ErrorCode;
import com.amazon.ags.client.RequestResponseImpl;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncEnabledResponse extends RequestResponseImpl {
    private final boolean whispersyncEnabled;

    public WhispersyncEnabledResponse(int responseCode, ErrorCode errorCode) {
        super(responseCode, errorCode);
        this.whispersyncEnabled = false;
    }

    public WhispersyncEnabledResponse(int responseCode, boolean whispersyncEnabled) {
        super(responseCode);
        this.whispersyncEnabled = whispersyncEnabled;
    }

    public boolean isWhispersyncEnabled() {
        return this.whispersyncEnabled;
    }
}
