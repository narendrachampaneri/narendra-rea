package com.mopub.mraid;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public enum ViewState {
    LOADING,
    DEFAULT,
    RESIZED,
    EXPANDED,
    HIDDEN;

    public String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
