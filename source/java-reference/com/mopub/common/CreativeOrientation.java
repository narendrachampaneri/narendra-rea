package com.mopub.common;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.exoplayer.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    UNDEFINED;

    @NonNull
    public static CreativeOrientation fromHeader(@Nullable String orientation) {
        if ("l".equalsIgnoreCase(orientation)) {
            return LANDSCAPE;
        }
        if (TtmlNode.TAG_P.equalsIgnoreCase(orientation)) {
            return PORTRAIT;
        }
        return UNDEFINED;
    }
}
