package com.inmobi.commons.network;

/* JADX INFO: loaded from: classes.dex */
public enum ErrorCode {
    INVALID_REQUEST("Invalid request"),
    INTERNAL_ERROR("An internal error occurred while fetching"),
    CONNECTION_ERROR("Socket timeout exception"),
    NETWORK_ERROR("Network failure. Check your connection");

    private String a;

    ErrorCode(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }

    public void setMessage(String str) {
        this.a = str;
    }
}
