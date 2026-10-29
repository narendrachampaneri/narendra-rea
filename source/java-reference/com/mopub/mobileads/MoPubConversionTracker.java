package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;

/* JADX INFO: loaded from: classes.dex */
public class MoPubConversionTracker {
    private Context mContext;
    private String mIsTrackedKey;
    private String mPackageName;
    private SharedPreferences mSharedPreferences;

    public void reportAppOpen(Context context) {
        if (context != null) {
            this.mContext = context;
            this.mPackageName = this.mContext.getPackageName();
            this.mIsTrackedKey = this.mPackageName + " tracked";
            this.mSharedPreferences = SharedPreferencesHelper.getSharedPreferences(this.mContext);
            if (!isAlreadyTracked()) {
                TrackingRequest.makeTrackingHttpRequest(new ConversionUrlGenerator().generateUrlString(Constants.HOST), this.mContext, new TrackingRequest.Listener() { // from class: com.mopub.mobileads.MoPubConversionTracker.1
                    @Override // com.mopub.network.TrackingRequest.Listener
                    public void onResponse(@NonNull String url) {
                        MoPubConversionTracker.this.mSharedPreferences.edit().putBoolean(MoPubConversionTracker.this.mIsTrackedKey, true).commit();
                    }

                    @Override // com.mopub.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError volleyError) {
                    }
                });
            } else {
                MoPubLog.d("Conversion already tracked");
            }
        }
    }

    private boolean isAlreadyTracked() {
        return this.mSharedPreferences.getBoolean(this.mIsTrackedKey, false);
    }

    private class ConversionUrlGenerator extends BaseUrlGenerator {
        private ConversionUrlGenerator() {
        }

        @Override // com.mopub.common.BaseUrlGenerator
        public String generateUrlString(String serverHostname) throws Throwable {
            initUrlString(serverHostname, Constants.CONVERSION_TRACKING_HANDLER);
            setApiVersion("6");
            setPackageId(MoPubConversionTracker.this.mPackageName);
            ClientMetadata clientMetadata = ClientMetadata.getInstance(MoPubConversionTracker.this.mContext);
            setAppVersion(clientMetadata.getAppVersion());
            appendAdvertisingInfoTemplates();
            return getFinalUrlString();
        }

        private void setPackageId(String packageName) {
            addParam(AnalyticsEvent.EVENT_ID, packageName);
        }
    }
}
