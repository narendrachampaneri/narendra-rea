package com.mopub.mraid;

import android.support.annotation.NonNull;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.ResponseBodyInterstitial;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class MraidInterstitial extends ResponseBodyInterstitial {
    private String mHtmlData;

    MraidInterstitial() {
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void extractExtras(Map<String, String> serverExtras) {
        this.mHtmlData = serverExtras.get(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void preRenderHtml(@NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MraidActivity.preRenderHtml(this.mContext, customEventInterstitialListener, this.mHtmlData);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidActivity.start(this.mContext, this.mAdReport, this.mHtmlData, this.mBroadcastIdentifier);
    }
}
