package com.amazon.ags.html5.util;

import android.content.Context;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class LocalizationUtil {
    private static final String TAG = "GC_" + LocalizationUtil.class.getSimpleName();
    private final Context context;

    public LocalizationUtil(Context context) {
        this.context = context;
    }

    public Locale getCurrentLocale() {
        return this.context.getResources().getConfiguration().locale;
    }

    public String getLanguageCode() {
        return this.context.getResources().getConfiguration().locale.getLanguage();
    }

    public String getCountryCode() {
        return this.context.getResources().getConfiguration().locale.getCountry();
    }
}
