package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazon.device.ads.WebRequest;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidWebViewDebugListener;
import com.mopub.mraid.PlacementType;

/* JADX INFO: loaded from: classes.dex */
public class MraidActivity extends BaseInterstitialActivity {

    @Nullable
    private MraidWebViewDebugListener mDebugListener;

    @Nullable
    private MraidController mMraidController;

    public static void preRenderHtml(@NonNull Context context, @NonNull final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, @NonNull String htmlData) {
        BaseWebView dummyWebView = new BaseWebView(context);
        dummyWebView.enablePlugins(false);
        dummyWebView.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.MraidActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                customEventInterstitialListener.onInterstitialLoaded();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                super.onReceivedError(view, errorCode, description, failingUrl);
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            }
        });
        dummyWebView.loadDataWithBaseURL("http://ads.mopub.com/", htmlData, WebRequest.CONTENT_TYPE_HTML, "UTF-8", null);
    }

    public static void start(@NonNull Context context, @Nullable AdReport adreport, @NonNull String htmlData, long broadcastIdentifier) {
        Intent intent = createIntent(context, adreport, htmlData, broadcastIdentifier);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Log.d("MraidInterstitial", "MraidActivity.class not found. Did you declare MraidActivity in your manifest?");
        }
    }

    @VisibleForTesting
    protected static Intent createIntent(@NonNull Context context, @Nullable AdReport adReport, @NonNull String htmlData, long broadcastIdentifier) {
        Intent intent = new Intent(context, (Class<?>) MraidActivity.class);
        intent.putExtra(DataKeys.HTML_RESPONSE_BODY_KEY, htmlData);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, broadcastIdentifier);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        return intent;
    }

    @Override // com.mopub.mobileads.BaseInterstitialActivity
    public View getAdView() {
        String htmlData = getIntent().getStringExtra(DataKeys.HTML_RESPONSE_BODY_KEY);
        if (htmlData == null) {
            MoPubLog.w("MraidActivity received a null HTML body. Finishing the activity.");
            finish();
            return new View(this);
        }
        this.mMraidController = new MraidController(this, this.mAdReport, PlacementType.INTERSTITIAL);
        this.mMraidController.setDebugListener(this.mDebugListener);
        this.mMraidController.setMraidListener(new MraidController.MraidListener() { // from class: com.mopub.mobileads.MraidActivity.2
            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onLoaded(View view) {
                MraidActivity.this.mMraidController.loadJavascript(BaseInterstitialActivity.JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onFailedToLoad() {
                MoPubLog.d("MraidActivity failed to load. Finishing the activity");
                EventForwardingBroadcastReceiver.broadcastAction(MraidActivity.this, MraidActivity.this.getBroadcastIdentifier().longValue(), EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_FAIL);
                MraidActivity.this.finish();
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onClose() {
                MraidActivity.this.mMraidController.loadJavascript(BaseInterstitialActivity.JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
                MraidActivity.this.finish();
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onExpand() {
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onOpen() {
                EventForwardingBroadcastReceiver.broadcastAction(MraidActivity.this, MraidActivity.this.getBroadcastIdentifier().longValue(), EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_CLICK);
            }
        });
        this.mMraidController.setUseCustomCloseListener(new MraidController.UseCustomCloseListener() { // from class: com.mopub.mobileads.MraidActivity.3
            @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
            public void useCustomCloseChanged(boolean useCustomClose) {
                if (useCustomClose) {
                    MraidActivity.this.hideInterstitialCloseButton();
                } else {
                    MraidActivity.this.showInterstitialCloseButton();
                }
            }
        });
        this.mMraidController.loadContent(htmlData);
        return this.mMraidController.getAdContainer();
    }

    @Override // com.mopub.mobileads.BaseInterstitialActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EventForwardingBroadcastReceiver.broadcastAction(this, getBroadcastIdentifier().longValue(), EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_SHOW);
        if (Build.VERSION.SDK_INT >= 14) {
            getWindow().setFlags(ViewCompat.MEASURED_STATE_TOO_SMALL, ViewCompat.MEASURED_STATE_TOO_SMALL);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.mMraidController != null) {
            this.mMraidController.pause(isFinishing());
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mMraidController != null) {
            this.mMraidController.resume();
        }
    }

    @Override // com.mopub.mobileads.BaseInterstitialActivity, android.app.Activity
    protected void onDestroy() {
        if (this.mMraidController != null) {
            this.mMraidController.destroy();
        }
        EventForwardingBroadcastReceiver.broadcastAction(this, getBroadcastIdentifier().longValue(), EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_DISMISS);
        super.onDestroy();
    }

    @VisibleForTesting
    public void setDebugListener(@Nullable MraidWebViewDebugListener debugListener) {
        this.mDebugListener = debugListener;
        if (this.mMraidController != null) {
            this.mMraidController.setDebugListener(debugListener);
        }
    }
}
