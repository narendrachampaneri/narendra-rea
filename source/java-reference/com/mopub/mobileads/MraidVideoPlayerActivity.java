package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.mraid.MraidVideoViewController;

/* JADX INFO: loaded from: classes.dex */
public class MraidVideoPlayerActivity extends BaseVideoPlayerActivity implements BaseVideoViewController.BaseVideoViewControllerListener {

    @Nullable
    private BaseVideoViewController mBaseVideoController;
    private long mBroadcastIdentifier;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        this.mBroadcastIdentifier = getBroadcastIdentifierFromIntent(getIntent());
        try {
            this.mBaseVideoController = createVideoViewController(savedInstanceState);
            this.mBaseVideoController.onCreate();
        } catch (IllegalStateException e) {
            EventForwardingBroadcastReceiver.broadcastAction(this, this.mBroadcastIdentifier, EventForwardingBroadcastReceiver.ACTION_INTERSTITIAL_FAIL);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.mBaseVideoController != null) {
            this.mBaseVideoController.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mBaseVideoController != null) {
            this.mBaseVideoController.onResume();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoPlayerActivity, android.app.Activity
    protected void onDestroy() {
        if (this.mBaseVideoController != null) {
            this.mBaseVideoController.onDestroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle outState) {
        super.onSaveInstanceState(outState);
        if (this.mBaseVideoController != null) {
            this.mBaseVideoController.onSaveInstanceState(outState);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@Nullable Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.mBaseVideoController != null) {
            this.mBaseVideoController.onConfigurationChanged(newConfig);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mBaseVideoController != null && this.mBaseVideoController.backButtonEnabled()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (this.mBaseVideoController != null) {
            this.mBaseVideoController.onActivityResult(requestCode, resultCode, data);
        }
    }

    private BaseVideoViewController createVideoViewController(Bundle savedInstanceState) throws IllegalStateException {
        String clazz = getIntent().getStringExtra("video_view_class_name");
        if ("vast".equals(clazz)) {
            return new VastVideoViewController(this, getIntent().getExtras(), savedInstanceState, this.mBroadcastIdentifier, this);
        }
        if ("mraid".equals(clazz)) {
            return new MraidVideoViewController(this, getIntent().getExtras(), savedInstanceState, this);
        }
        throw new IllegalStateException("Unsupported video type: " + clazz);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int requestedOrientation) {
        setRequestedOrientation(requestedOrientation);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        finish();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> clazz, int requestCode, Bundle extras) {
        if (clazz != null) {
            Intent intent = Intents.getStartActivityIntent(this, clazz, extras);
            try {
                startActivityForResult(intent, requestCode);
            } catch (ActivityNotFoundException e) {
                MoPubLog.d("Activity " + clazz.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
            }
        }
    }

    protected static long getBroadcastIdentifierFromIntent(Intent intent) {
        return intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    @Deprecated
    BaseVideoViewController getBaseVideoViewController() {
        return this.mBaseVideoController;
    }

    @Deprecated
    void setBaseVideoViewController(BaseVideoViewController baseVideoViewController) {
        this.mBaseVideoController = baseVideoViewController;
    }
}
