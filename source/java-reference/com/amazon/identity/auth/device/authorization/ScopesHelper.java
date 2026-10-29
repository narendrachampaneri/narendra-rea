package com.amazon.identity.auth.device.authorization;

import android.text.TextUtils;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public final class ScopesHelper {
    private static final String ESCAPE_LITERAL_REGEX_PLUS = "\\+";
    private static final String LOG_TAG = ScopesHelper.class.getName();
    private static final String SEPARATOR = " ";

    private ScopesHelper() {
    }

    public static String getScopesString(String[] scopes) {
        return TextUtils.join(SEPARATOR, scopes);
    }

    public static String[] getScopesFromString(String scopeString) {
        MAPLog.i(LOG_TAG, "Extracting scope string array from " + scopeString);
        return scopeString.contains(SEPARATOR) ? TextUtils.split(scopeString, SEPARATOR) : TextUtils.split(scopeString, ESCAPE_LITERAL_REGEX_PLUS);
    }
}
