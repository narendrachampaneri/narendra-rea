package com.applovin.impl.sdk;

import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.google.android.exoplayer.util.MimeTypes;
import com.mopub.common.AdType;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cv extends bv implements dg {
    private final Collection a;
    private final JSONObject b;
    private final AppLovinAdLoadListener c;
    private final y d;
    private boolean i;
    private c j;

    cv(JSONObject jSONObject, AppLovinAdLoadListener appLovinAdLoadListener, AppLovinSdkImpl appLovinSdkImpl) {
        super("RenderAd", appLovinSdkImpl);
        this.j = new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR);
        this.b = jSONObject;
        this.c = appLovinAdLoadListener;
        this.a = d();
        this.d = appLovinSdkImpl.getFileManager();
    }

    private float a(String str, AppLovinAdType appLovinAdType, int i) {
        if (appLovinAdType.equals(AppLovinAdType.INCENTIVIZED)) {
            return 0.5f;
        }
        return (appLovinAdType.equals(AppLovinAdType.REGULAR) && str != null && i == -1) ? 0.5f : 0.0f;
    }

    private com.applovin.impl.adview.v a(int i) {
        return i == 1 ? com.applovin.impl.adview.v.WhiteXOnTransparentGrey : com.applovin.impl.adview.v.WhiteXOnOpaqueBlack;
    }

    private com.applovin.impl.adview.v a(String str) {
        return str != null ? com.applovin.impl.adview.v.WhiteXOnTransparentGrey : com.applovin.impl.adview.v.WhiteXOnOpaqueBlack;
    }

    private String a(String str, String str2) {
        File fileA = this.d.a(str2.replace("/", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR), this.f.getApplicationContext(), true);
        if (fileA == null) {
            return null;
        }
        if (fileA.exists()) {
            this.g.d(this.e, "Loaded " + str2 + " from cache: file://" + fileA.getAbsolutePath());
            return "file://" + fileA.getAbsolutePath();
        }
        if (this.d.a(fileA, str + str2)) {
            return "file://" + fileA.getAbsolutePath();
        }
        return null;
    }

    private void a(JSONObject jSONObject) throws JSONException {
        int i;
        int i2;
        float fA;
        com.applovin.impl.adview.v vVarA;
        String string;
        String str;
        String string2 = jSONObject.getString(AdType.HTML);
        AppLovinAdSize appLovinAdSizeFromString = jSONObject.has("size") ? AppLovinAdSize.fromString(jSONObject.getString("size")) : AppLovinAdSize.BANNER;
        String strA = null;
        if (string2 == null || string2.length() <= 0) {
            this.g.e(this.e, "No HTML received for requested ad");
            c();
            return;
        }
        String strB = b(string2);
        AppLovinAdImpl.AdTarget adTargetValueOf = jSONObject.has("ad_target") ? AppLovinAdImpl.AdTarget.valueOf(jSONObject.getString("ad_target").toUpperCase(Locale.ENGLISH)) : AppLovinAdImpl.AdTarget.DEFAULT;
        AppLovinAdType appLovinAdTypeFromString = jSONObject.has("ad_type") ? AppLovinAdType.fromString(jSONObject.getString("ad_type").toUpperCase(Locale.ENGLISH)) : AppLovinAdType.REGULAR;
        this.j = new c(appLovinAdSizeFromString, appLovinAdTypeFromString);
        if (jSONObject.has(MimeTypes.BASE_TYPE_VIDEO)) {
            String string3 = jSONObject.getString(MimeTypes.BASE_TYPE_VIDEO);
            if (string3 == null || string3.isEmpty()) {
                str = null;
            } else {
                try {
                    strA = this.d.a(this.h, string3);
                    this.i = true;
                    str = strA;
                } catch (Exception e) {
                    str = strA;
                }
            }
            if (str == null) {
                c();
                return;
            }
            strA = str;
        }
        long j = jSONObject.has("ad_id") ? jSONObject.getLong("ad_id") : -1L;
        if (jSONObject.has("countdown_length")) {
            try {
                i = jSONObject.getInt("countdown_length");
            } catch (JSONException e2) {
                i = 0;
            }
        } else {
            i = 0;
        }
        if (jSONObject.has("close_delay")) {
            try {
                i2 = jSONObject.getInt("close_delay");
            } catch (JSONException e3) {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        if (jSONObject.has("close_delay_graphic")) {
            try {
                fA = jSONObject.getInt("close_delay_graphic");
            } catch (JSONException e4) {
                fA = a(strA, appLovinAdTypeFromString, i2);
            }
        } else {
            fA = a(strA, appLovinAdTypeFromString, i2);
        }
        if (jSONObject.has("close_style")) {
            try {
                vVarA = a(jSONObject.getInt("close_style"));
            } catch (JSONException e5) {
                vVarA = a(strA);
            }
        } else {
            vVarA = a(strA);
        }
        if (jSONObject.has("clcodes")) {
            try {
                string = ((JSONArray) jSONObject.get("clcodes")).getString(0);
            } catch (JSONException e6) {
                string = "";
            }
        } else {
            string = "";
        }
        String string4 = "";
        if (jSONObject.has("video_end_url")) {
            try {
                string4 = jSONObject.getString("video_end_url");
            } catch (Exception e7) {
            }
        }
        String strA2 = "";
        if (jSONObject.has("mute_image")) {
            try {
                strA2 = this.f.getFileManager().a(this.h, jSONObject.getString("mute_image"), false);
            } catch (Exception e8) {
            }
        }
        String strA3 = "";
        if (jSONObject.has("unmute_image")) {
            try {
                strA3 = this.f.getFileManager().a(this.h, jSONObject.getString("unmute_image"), false);
            } catch (Exception e9) {
            }
        }
        String string5 = "";
        if (jSONObject.has("click_tracking_url")) {
            try {
                string5 = jSONObject.getString("click_tracking_url");
            } catch (Exception e10) {
            }
        }
        a(new AppLovinAdImpl.Builder().setHtml(strB).setSize(appLovinAdSizeFromString).setType(appLovinAdTypeFromString).setVideoFilename(strA).setTarget(adTargetValueOf).setCloseStyle(vVarA).setVideoCloseDelay(i2).setPoststitialCloseDelay(fA).setCountdownLength(i).setCurrentAdIdNumber(j).setClCode(string).setCompletionUrl(string4).setSupplementalClickTrackingUrl(string5).setMuteImageFilename(strA2).setUnmuteImageFilename(strA3).build());
    }

    private String b(String str) {
        return ((Boolean) this.f.a(bw.H)).booleanValue() ? c(str) : str;
    }

    private String c(String str) {
        StringBuilder sb = new StringBuilder(str);
        for (String str2 : ((String) this.f.a(bw.I)).split(AppInfo.DELIM)) {
            int i = 0;
            int iIndexOf = 0;
            while (iIndexOf < sb.length() && (iIndexOf = sb.indexOf(str2, i)) != -1) {
                int length = sb.length();
                i = iIndexOf;
                while (!this.a.contains(Character.valueOf(sb.charAt(i))) && i < length) {
                    i++;
                }
                if (i <= iIndexOf || i == length) {
                    this.g.d(this.e, "Unable to cache resource; ad HTML is invalid.");
                } else {
                    String strA = a(str2, sb.substring(str2.length() + iIndexOf, i));
                    if (strA != null) {
                        sb.replace(iIndexOf, i, strA);
                    }
                }
            }
        }
        return sb.toString();
    }

    private Collection d() {
        HashSet hashSet = new HashSet();
        for (char c : ((String) this.f.a(bw.ap)).toCharArray()) {
            hashSet.add(Character.valueOf(c));
        }
        hashSet.add('\"');
        return hashSet;
    }

    void a(AppLovinAd appLovinAd) {
        this.f.getLogger().d(a(), "Rendered new ad:" + appLovinAd);
        if (this.c != null) {
            this.c.adReceived(appLovinAd);
        }
    }

    void c() {
        try {
            if (this.c != null) {
                if (this.c instanceof w) {
                    ((w) this.c).a(this.j, -6);
                } else {
                    this.c.failedToReceiveAd(-6);
                }
            }
        } catch (Throwable th) {
            this.g.e(this.e, "Unable process a failure to receive an ad", th);
        }
    }

    @Override // com.applovin.impl.sdk.dg
    public String e() {
        return "tRA";
    }

    @Override // com.applovin.impl.sdk.dg
    public boolean f() {
        return this.i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.g.d(this.e, "Rendering ad...");
        try {
            a(this.b);
        } catch (IllegalArgumentException e) {
            this.g.e(this.e, "Ad response is not valid", e);
            c();
        } catch (JSONException e2) {
            this.g.e(this.e, "Unable to parse ad service response", e2);
            c();
        } catch (Exception e3) {
            this.g.e(this.e, "Unable to render ad", e3);
            c();
        }
    }
}
