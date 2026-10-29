package com.applovin.sdk;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.mopub.common.AdType;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinAdSize {
    public static final int SPAN = -1;
    private final int a;
    private final int b;
    private final String c;
    public static final AppLovinAdSize BANNER = new AppLovinAdSize(-1, 50, "BANNER");
    public static final AppLovinAdSize LEADER = new AppLovinAdSize(-1, 75, "LEADER");
    public static final AppLovinAdSize INTERSTITIAL = new AppLovinAdSize(-1, -1, "INTER");
    public static final AppLovinAdSize MREC = new AppLovinAdSize(300, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, "MREC");

    AppLovinAdSize(int i, int i2, String str) {
        if (i < 0 && i != -1) {
            throw new IllegalArgumentException("Ad width must be a positive number. Number provided: " + i);
        }
        if (i > 9999) {
            throw new IllegalArgumentException("Ad width must be less then 9999. Number provided: " + i);
        }
        if (i2 < 0 && i2 != -1) {
            throw new IllegalArgumentException("Ad height must be a positive number. Number provided: " + i2);
        }
        if (i2 > 9999) {
            throw new IllegalArgumentException("Ad height must be less then 9999. Number provided: " + i2);
        }
        if (str == null) {
            throw new IllegalArgumentException("No label specified");
        }
        if (str.length() > 9) {
            throw new IllegalArgumentException("Provided label is too long. Label provided: " + str);
        }
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    public AppLovinAdSize(String str) {
        this(0, 0, str);
    }

    private static int a(String str) {
        if (TtmlNode.TAG_SPAN.equalsIgnoreCase(str)) {
            return -1;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    public static Set allSizes() {
        HashSet hashSet = new HashSet(4);
        hashSet.add(BANNER);
        hashSet.add(MREC);
        hashSet.add(INTERSTITIAL);
        hashSet.add(LEADER);
        return hashSet;
    }

    public static AppLovinAdSize fromString(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        if (lowerCase.equals("banner")) {
            return BANNER;
        }
        if (lowerCase.equals(AdType.INTERSTITIAL) || lowerCase.equals("inter")) {
            return INTERSTITIAL;
        }
        if (lowerCase.equals("mrec")) {
            return MREC;
        }
        if (lowerCase.equals("leader")) {
            return LEADER;
        }
        String[] strArrSplit = str.split("x");
        return strArrSplit.length == 2 ? new AppLovinAdSize(a(strArrSplit[0]), a(strArrSplit[1]), str) : new AppLovinAdSize(0, 0, str);
    }

    public int getHeight() {
        return this.b;
    }

    public String getLabel() {
        return this.c.toUpperCase(Locale.ENGLISH);
    }

    public int getWidth() {
        return this.a;
    }

    public String toString() {
        return getLabel();
    }
}
