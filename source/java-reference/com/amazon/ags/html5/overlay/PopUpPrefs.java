package com.amazon.ags.html5.overlay;

import com.amazon.ags.api.overlay.PopUpLocation;

/* JADX INFO: loaded from: classes2.dex */
public enum PopUpPrefs {
    INSTANCE;

    private static final int FADE_IN_DURATION_MS = 500;
    private static final int FADE_OUT_DURATION_MS = 2000;
    private static final int WELCOME_BACK_FADE_IN_DURATION_MS = 500;
    private static final int WELCOME_BACK_FADE_OUT_DURATION_MS = 3000;
    private boolean popUpsEnabled = true;
    private PopUpLocation popUpLocation = PopUpLocation.BOTTOM_CENTER;

    PopUpPrefs() {
    }

    public synchronized void disable() {
        INSTANCE.popUpsEnabled = false;
    }

    public synchronized void enable() {
        INSTANCE.popUpsEnabled = true;
    }

    public synchronized void setLocation(PopUpLocation location) {
        this.popUpLocation = location;
    }

    public synchronized boolean isEnabled() {
        return this.popUpsEnabled;
    }

    public synchronized PopUpLocation getLocation() {
        return this.popUpLocation;
    }

    public int getFadeInDuration() {
        return 500;
    }

    public int getFadeOutDuration() {
        return 2000;
    }

    public int getWelcomeBackFadeInDuration() {
        return 500;
    }

    public int getWelcomeBackFadeOutDuration() {
        return 3000;
    }
}
