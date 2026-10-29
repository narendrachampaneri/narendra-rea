package com.chartboost.sdk.Model;

/* JADX INFO: loaded from: classes.dex */
public final class CBError {
    private a a;
    private String b;
    private boolean c = true;

    public enum CBClickError {
        URI_INVALID,
        URI_UNRECOGNIZED,
        AGE_GATE_FAILURE,
        NO_HOST_ACTIVITY,
        INTERNAL
    }

    public enum CBImpressionError {
        INTERNAL,
        INTERNET_UNAVAILABLE,
        TOO_MANY_CONNECTIONS,
        WRONG_ORIENTATION,
        FIRST_SESSION_INTERSTITIALS_DISABLED,
        NETWORK_FAILURE,
        NO_AD_FOUND,
        SESSION_NOT_STARTED,
        IMPRESSION_ALREADY_VISIBLE,
        NO_HOST_ACTIVITY,
        USER_CANCELLATION,
        INVALID_LOCATION,
        VIDEO_UNAVAILABLE,
        VIDEO_ID_MISSING,
        ERROR_PLAYING_VIDEO,
        INVALID_RESPONSE,
        ASSETS_DOWNLOAD_FAILURE,
        ERROR_CREATING_VIEW,
        ERROR_DISPLAYING_VIEW,
        INCOMPATIBLE_API_VERSION
    }

    public enum a {
        MISCELLANEOUS,
        INTERNET_UNAVAILABLE,
        INVALID_RESPONSE,
        UNEXPECTED_RESPONSE,
        NETWORK_FAILURE,
        PUBLIC_KEY_MISSING,
        HTTP_NOT_FOUND
    }

    public CBError(a error, String errorDesc) {
        this.a = error;
        this.b = errorDesc;
    }

    public a a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public CBImpressionError c() {
        switch (this.a) {
            case MISCELLANEOUS:
            case UNEXPECTED_RESPONSE:
            case PUBLIC_KEY_MISSING:
                return CBImpressionError.INTERNAL;
            case INTERNET_UNAVAILABLE:
                return CBImpressionError.INTERNET_UNAVAILABLE;
            case HTTP_NOT_FOUND:
                return CBImpressionError.NO_AD_FOUND;
            default:
                return CBImpressionError.NETWORK_FAILURE;
        }
    }
}
