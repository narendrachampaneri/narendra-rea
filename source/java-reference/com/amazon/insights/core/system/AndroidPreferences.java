package com.amazon.insights.core.system;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazon.insights.InsightsCredentials;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidPreferences implements Preferences {
    private final SharedPreferences preferences;

    public AndroidPreferences(Context context, InsightsCredentials credentials) {
        this.preferences = context.getSharedPreferences(credentials.getApplicationKey(), 0);
    }

    @Override // com.amazon.insights.core.system.Preferences
    public boolean getBoolean(String key, boolean optValue) {
        return this.preferences.getBoolean(key, optValue);
    }

    @Override // com.amazon.insights.core.system.Preferences
    public int getInt(String key, int optValue) {
        return this.preferences.getInt(key, optValue);
    }

    @Override // com.amazon.insights.core.system.Preferences
    public float getFloat(String key, float optValue) {
        return this.preferences.getFloat(key, optValue);
    }

    @Override // com.amazon.insights.core.system.Preferences
    public long getLong(String key, long optValue) {
        return this.preferences.getLong(key, optValue);
    }

    @Override // com.amazon.insights.core.system.Preferences
    public String getString(String key, String optValue) {
        return this.preferences.getString(key, optValue);
    }

    @Override // com.amazon.insights.core.system.Preferences
    public void putBoolean(String key, boolean value) {
        SharedPreferences.Editor editor = this.preferences.edit();
        editor.putBoolean(key, value);
        editor.commit();
    }

    @Override // com.amazon.insights.core.system.Preferences
    public void putInt(String key, int value) {
        SharedPreferences.Editor editor = this.preferences.edit();
        editor.putInt(key, value);
        editor.commit();
    }

    @Override // com.amazon.insights.core.system.Preferences
    public void putFloat(String key, float value) {
        SharedPreferences.Editor editor = this.preferences.edit();
        editor.putFloat(key, value);
        editor.commit();
    }

    @Override // com.amazon.insights.core.system.Preferences
    public void putLong(String key, long value) {
        SharedPreferences.Editor editor = this.preferences.edit();
        editor.putLong(key, value);
        editor.commit();
    }

    @Override // com.amazon.insights.core.system.Preferences
    public void putString(String key, String value) {
        SharedPreferences.Editor editor = this.preferences.edit();
        editor.putString(key, value);
        editor.commit();
    }
}
