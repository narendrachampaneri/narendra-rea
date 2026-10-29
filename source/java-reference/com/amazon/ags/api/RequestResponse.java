package com.amazon.ags.api;

/* JADX INFO: loaded from: classes2.dex */
public interface RequestResponse {
    ErrorCode getError();

    Object[] getUserData();

    boolean isError();

    void setUserData(Object[] objArr);

    String toString();
}
