package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HtmlInterstitial extends ResponseBodyInterstitial {
    private String mClickthroughUrl;
    private String mHtmlData;
    private boolean mIsScrollable;

    @NonNull
    private CreativeOrientation mOrientation;
    private String mRedirectUrl;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void extractExtras(Map<String, String> serverExtras) {
        this.mHtmlData = serverExtras.get(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.mIsScrollable = Boolean.valueOf(serverExtras.get(DataKeys.SCROLLABLE_KEY)).booleanValue();
        this.mRedirectUrl = serverExtras.get(DataKeys.REDIRECT_URL_KEY);
        this.mClickthroughUrl = serverExtras.get(DataKeys.CLICKTHROUGH_URL_KEY);
        this.mOrientation = CreativeOrientation.fromHeader(serverExtras.get(DataKeys.CREATIVE_ORIENTATION_KEY));
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void preRenderHtml(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MoPubActivity.preRenderHtml(this.mContext, this.mAdReport, customEventInterstitialListener, this.mHtmlData);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubActivity.start(this.mContext, this.mHtmlData, this.mAdReport, this.mIsScrollable, this.mRedirectUrl, this.mClickthroughUrl, this.mOrientation, this.mBroadcastIdentifier);
    }
}
