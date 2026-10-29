package com.mopub.mraid;

/* JADX INFO: loaded from: classes.dex */
enum MraidOrientation {
    PORTRAIT(1),
    LANDSCAPE(0),
    NONE(-1);

    private final int mActivityInfoOrientation;

    MraidOrientation(int activityInfoOrientation) {
        this.mActivityInfoOrientation = activityInfoOrientation;
    }

    int getActivityInfoOrientation() {
        return this.mActivityInfoOrientation;
    }
}
