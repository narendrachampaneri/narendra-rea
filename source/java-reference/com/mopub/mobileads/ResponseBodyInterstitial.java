package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResponseBodyInterstitial extends CustomEventInterstitial {
    protected AdReport mAdReport;
    protected long mBroadcastIdentifier;
    private EventForwardingBroadcastReceiver mBroadcastReceiver;
    protected Context mContext;

    protected abstract void extractExtras(Map<String, String> map);

    protected abstract void preRenderHtml(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener);

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public abstract void showInterstitial();

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> localExtras, Map<String, String> serverExtras) {
        this.mContext = context;
        if (extrasAreValid(serverExtras)) {
            extractExtras(serverExtras);
            try {
                this.mAdReport = (AdReport) localExtras.get(DataKeys.AD_REPORT_KEY);
                Long boxedBroadcastId = (Long) localExtras.get(DataKeys.BROADCAST_IDENTIFIER_KEY);
                if (boxedBroadcastId == null) {
                    MoPubLog.e("Broadcast Identifier was not set in localExtras");
                    customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                } else {
                    this.mBroadcastIdentifier = boxedBroadcastId.longValue();
                    this.mBroadcastReceiver = new EventForwardingBroadcastReceiver(customEventInterstitialListener, this.mBroadcastIdentifier);
                    this.mBroadcastReceiver.register(context);
                    preRenderHtml(customEventInterstitialListener);
                }
                return;
            } catch (ClassCastException e) {
                MoPubLog.e("LocalExtras contained an incorrect type.");
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
        }
        customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        if (this.mBroadcastReceiver != null) {
            this.mBroadcastReceiver.unregister();
        }
    }

    private boolean extrasAreValid(Map<String, String> serverExtras) {
        return serverExtras.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }
}
