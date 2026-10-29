package com.amazon.ags.client.whispersync.clock;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
public class ClockSkewSharedPrefs implements ClockSkewStorage {
    private final SharedPreferences clockSkewSharedPrefs;
    private final SharedPreferences.Editor editor;
    private final String PREFS_NAME = "ClockSkewSharedPrefs";
    private final String CLOCK_SKEW_KEY = "clockSkewKey";

    public ClockSkewSharedPrefs(Context context) {
        this.clockSkewSharedPrefs = context.getSharedPreferences("ClockSkewSharedPrefs", 0);
        this.editor = this.clockSkewSharedPrefs.edit();
    }

    @Override // com.amazon.ags.client.whispersync.clock.ClockSkewStorage
    public long getClockSkew() {
        return this.clockSkewSharedPrefs.getLong("clockSkewKey", 0L);
    }

    @Override // com.amazon.ags.client.whispersync.clock.ClockSkewStorage
    public synchronized void setClockSkew(long clockSkew) {
        this.editor.putLong("clockSkewKey", clockSkew);
        this.editor.commit();
    }
}
