package com.amazon.ags.client.whispersync.settings;

/* JADX INFO: loaded from: classes2.dex */
public interface WhispersyncUserSettingsManager {

    public enum YesNoMaybe {
        YES,
        NO,
        MAYBE
    }

    YesNoMaybe isWhispersyncEnabled();
}
