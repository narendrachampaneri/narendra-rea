package com.amazon.identity.auth.device.endpoint;

import com.amazon.identity.auth.device.AuthError;

/* JADX INFO: loaded from: classes.dex */
public interface TokenResponse {
    int getStatusCode() throws AuthError;

    void parse() throws AuthError;
}
