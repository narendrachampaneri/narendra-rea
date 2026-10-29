package com.amazon.identity.auth.device.utils;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.dataobject.Scope;
import com.amazon.identity.auth.device.datastore.DatabaseHelper;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MAPUtils {
    private static final String AMAZON_HOST = ".amazon.";
    private static final String LOG_TAG = MAPUtils.class.getName();
    private static SQLiteDatabase MAPdatabase = null;
    private static final String PATH_AP = "/ap/";
    private static final String PATH_AP_FORGOT_PASSWORD = "/ap/forgotpassword";
    private static final String PATH_GP = "/gp/yourstore/home";
    private static final String PROTOCOL = "http";

    private enum SCOPE_MODIFIER {
        LOCAL,
        REMOTE,
        ALL
    }

    private MAPUtils() throws Exception {
        throw new Exception("This class is not instantiable!");
    }

    public static synchronized SQLiteDatabase getMAPdatabase(Context context) {
        if (MAPdatabase == null) {
            MAPdatabase = new DatabaseHelper(context).getWritableDatabase();
        }
        return MAPdatabase;
    }

    public static String getDeviceId() {
        return "some-device-id";
    }

    public static String toDelimitedString(String[] ary, String delimiter) {
        if (ary != null && ary.length > 0) {
            String to_return = "";
            int i = 0;
            while (i < ary.length) {
                to_return = to_return + ary[i].trim() + (i == ary.length + (-1) ? "" : delimiter);
                i++;
            }
            return to_return;
        }
        return null;
    }

    public static String[] toStringArray(String str, String delimiter) {
        if (str == null || str.trim().length() <= 0) {
            return null;
        }
        return str.trim().split("[" + delimiter + "]");
    }

    public static Set<String> getSetDifference(String[] setA, String[] setB) {
        if (setA == null) {
            return new HashSet();
        }
        if (setB == null) {
            return new HashSet(Arrays.asList(setA));
        }
        HashSet<String> to_return = new HashSet<>(Arrays.asList(setA));
        to_return.removeAll(Arrays.asList(setB));
        return to_return;
    }

    public static boolean contains(String[] ary, String str) {
        if (ary == null) {
            return false;
        }
        for (String tmp : ary) {
            if (tmp.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean areScopesRemoteAndValid(AppInfo appInfo, String[] scopes) {
        return areScopesValid(appInfo, scopes, SCOPE_MODIFIER.REMOTE);
    }

    public static boolean areScopesLocalAndValid(AppInfo appInfo, String[] scopes) {
        return areScopesValid(appInfo, scopes, SCOPE_MODIFIER.LOCAL);
    }

    public static boolean areScopesValid(AppInfo appInfo, String[] scopes) {
        return areScopesValid(appInfo, scopes, SCOPE_MODIFIER.ALL);
    }

    private static boolean areScopesValid(AppInfo appInfo, String[] scopes, SCOPE_MODIFIER modifier) {
        MAPLog.i(LOG_TAG, "areScopesValid : modifier=" + modifier.name() + " scopes=" + Arrays.toString(scopes));
        if (scopes == null || scopes.length == 0) {
            MAPLog.w(LOG_TAG, "Scopes are invalid: array is either null or empty");
            return false;
        }
        if (appInfo == null || appInfo.getAllowedScopes() == null) {
            MAPLog.w(LOG_TAG, "Scopes are invalid: either appInfo is null or allowedScopes is null");
            return false;
        }
        Set<String> allowedScopeSet = new HashSet<>(Arrays.asList(appInfo.getAllowedScopes()));
        MAPLog.i(LOG_TAG, "allowedScopeSet : " + allowedScopeSet);
        for (String scope : scopes) {
            if (scope == null || !allowedScopeSet.contains(scope)) {
                MAPLog.w(LOG_TAG, "Invalid scope: " + scope + " (it's either null or not part of the allowed set)");
                return false;
            }
            if (modifier == SCOPE_MODIFIER.REMOTE && Scope.isLocal(scope)) {
                MAPLog.w(LOG_TAG, "Invalid scope: " + scope + " is local!");
                return false;
            }
            if (modifier == SCOPE_MODIFIER.LOCAL && !Scope.isLocal(scope)) {
                MAPLog.w(LOG_TAG, "Invalid scope: " + scope + " is remote!");
            }
        }
        return true;
    }

    public static String toHexString(byte[] data) {
        if (data == null) {
            return null;
        }
        StringBuffer hexString = new StringBuffer();
        for (byte b : data) {
            String appendString = Integer.toHexString(b & 255);
            if (appendString.length() == 1) {
                hexString.append("0");
            }
            hexString.append(appendString);
        }
        return hexString.toString();
    }

    public static boolean isMAPUrl(String url) {
        if (url == null) {
            MAPLog.i(LOG_TAG, "URL is null");
            return false;
        }
        try {
            URL aURL = new URL(url);
            String protocol = aURL.getProtocol();
            if (TextUtils.isEmpty(protocol) || !protocol.contains("http")) {
                return false;
            }
            String host = aURL.getHost();
            if (TextUtils.isEmpty(host) || !host.contains(AMAZON_HOST)) {
                return false;
            }
            String path = aURL.getPath();
            boolean isPathEmpty = TextUtils.isEmpty(path);
            boolean pathStartsWithAP = path.startsWith(PATH_AP);
            boolean pathEqualsGP = path.equals(PATH_GP);
            boolean pathEqualsAPForgotPassword = path.equals(PATH_AP_FORGOT_PASSWORD);
            MAPLog.d(LOG_TAG, " isEmpty=" + isPathEmpty + "startsWithAP=" + pathStartsWithAP + "equalsGP=" + pathEqualsGP + "equalsForgotPassword=" + pathEqualsAPForgotPassword);
            if (isPathEmpty) {
                return false;
            }
            return (pathStartsWithAP && !pathEqualsAPForgotPassword) || pathEqualsGP;
        } catch (MalformedURLException e) {
            MAPLog.pii(LOG_TAG, "MalformedURLException", " url=" + url);
            return false;
        }
    }
}
