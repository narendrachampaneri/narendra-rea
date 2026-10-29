package com.mopub.common;

import android.os.Build;
import android.support.annotation.NonNull;
import com.mopub.network.AdResponse;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class AdReport implements Serializable {
    private static final String DATE_FORMAT_PATTERN = "M/d/yy hh:mm:ss a z";
    private static final long serialVersionUID = 1;
    private final AdResponse mAdResponse;
    private final String mAdUnitId;
    private final Locale mDeviceLocale;
    private final String mDeviceModel;
    private final String mSdkVersion;
    private final String mUdid;

    public AdReport(@NonNull String adUnitId, @NonNull ClientMetadata clientMetadata, @NonNull AdResponse adResponse) {
        this.mAdUnitId = adUnitId;
        this.mSdkVersion = clientMetadata.getSdkVersion();
        this.mDeviceModel = clientMetadata.getDeviceModel();
        this.mDeviceLocale = clientMetadata.getDeviceLocale();
        this.mUdid = clientMetadata.getDeviceId();
        this.mAdResponse = adResponse;
    }

    public String toString() {
        StringBuilder parameters = new StringBuilder();
        appendKeyValue(parameters, "sdk_version", this.mSdkVersion);
        appendKeyValue(parameters, "creative_id", this.mAdResponse.getDspCreativeId());
        appendKeyValue(parameters, "platform_version", Integer.toString(Build.VERSION.SDK_INT));
        appendKeyValue(parameters, "device_model", this.mDeviceModel);
        appendKeyValue(parameters, "ad_unit_id", this.mAdUnitId);
        appendKeyValue(parameters, "device_locale", this.mDeviceLocale == null ? null : this.mDeviceLocale.toString());
        appendKeyValue(parameters, "device_id", this.mUdid);
        appendKeyValue(parameters, "network_type", this.mAdResponse.getNetworkType());
        appendKeyValue(parameters, "platform", "android");
        appendKeyValue(parameters, "timestamp", getFormattedTimeStamp(this.mAdResponse.getTimestamp()));
        appendKeyValue(parameters, "ad_type", this.mAdResponse.getAdType());
        Object width = this.mAdResponse.getWidth();
        Object height = this.mAdResponse.getHeight();
        StringBuilder sbAppend = new StringBuilder().append("{");
        if (width == null) {
            width = "0";
        }
        StringBuilder sbAppend2 = sbAppend.append(width).append(", ");
        if (height == null) {
            height = "0";
        }
        appendKeyValue(parameters, "ad_size", sbAppend2.append(height).append("}").toString());
        return parameters.toString();
    }

    public String getResponseString() {
        return this.mAdResponse.getStringBody();
    }

    private void appendKeyValue(StringBuilder parameters, String key, String value) {
        parameters.append(key);
        parameters.append(" : ");
        parameters.append(value);
        parameters.append("\n");
    }

    private String getFormattedTimeStamp(long timeStamp) {
        if (timeStamp == -1) {
            return null;
        }
        SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT_PATTERN, Locale.US);
        return dateFormat.format(new Date(timeStamp));
    }
}
