package com.mopub.mraid;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public enum PlacementType {
    INLINE,
    INTERSTITIAL;

    String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
