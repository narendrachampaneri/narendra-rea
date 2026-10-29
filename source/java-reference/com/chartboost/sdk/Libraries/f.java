package com.chartboost.sdk.Libraries;

/* JADX INFO: loaded from: classes.dex */
public enum f {
    PORTRAIT,
    LANDSCAPE,
    PORTRAIT_REVERSE,
    LANDSCAPE_REVERSE;

    public static final f e = PORTRAIT_REVERSE;
    public static final f f = PORTRAIT;
    public static final f g = LANDSCAPE;
    public static final f h = LANDSCAPE_REVERSE;

    public f a() {
        switch (this) {
            case LANDSCAPE:
                return e;
            case PORTRAIT_REVERSE:
                return h;
            case LANDSCAPE_REVERSE:
                return f;
            default:
                return g;
        }
    }

    public boolean b() {
        return this == PORTRAIT || this == PORTRAIT_REVERSE;
    }

    public boolean c() {
        return this == LANDSCAPE || this == LANDSCAPE_REVERSE;
    }
}
