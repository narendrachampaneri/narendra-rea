package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import com.mopub.common.GpsHelper;
import com.mopub.volley.toolbox.HurlStack;

/* JADX INFO: loaded from: classes.dex */
public class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {
    public static final String DO_NOT_TRACK_TEMPLATE = "mp_tmpl_do_not_track";
    private static final String IFA_PREFIX = "ifa:";
    public static final String UDID_TEMPLATE = "mp_tmpl_advertising_id";
    private final Context applicationContext;
    private final String deviceIdentifier;

    public PlayServicesUrlRewriter(String deviceId, Context context) {
        this.deviceIdentifier = deviceId;
        this.applicationContext = context.getApplicationContext();
    }

    @Override // com.mopub.volley.toolbox.HurlStack.UrlRewriter
    public String rewriteUrl(String url) {
        GpsHelper.AdvertisingInfo playServicesAdInfo;
        if (url.contains(UDID_TEMPLATE) || url.contains(DO_NOT_TRACK_TEMPLATE)) {
            String prefix = "";
            GpsHelper.AdvertisingInfo advertisingInfo = new GpsHelper.AdvertisingInfo(this.deviceIdentifier, false);
            if (GpsHelper.isPlayServicesAvailable(this.applicationContext) && (playServicesAdInfo = GpsHelper.fetchAdvertisingInfoSync(this.applicationContext)) != null) {
                prefix = IFA_PREFIX;
                advertisingInfo = playServicesAdInfo;
            }
            String toReturn = url.replace(UDID_TEMPLATE, Uri.encode(prefix + advertisingInfo.advertisingId));
            return toReturn.replace(DO_NOT_TRACK_TEMPLATE, advertisingInfo.limitAdTracking ? "1" : "0");
        }
        return url;
    }
}
