package com.amazon.identity.auth.device.endpoint;

import com.amazon.identity.auth.device.AuthError;

/* JADX INFO: loaded from: classes.dex */
public interface RequestUrlBuilder {
    String getDomain();

    int getPort();

    String getRequestUrl() throws AuthError;
}
