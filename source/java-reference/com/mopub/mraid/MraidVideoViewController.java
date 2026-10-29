package com.mopub.mraid;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseVideoViewController;

/* JADX INFO: loaded from: classes.dex */
public class MraidVideoViewController extends BaseVideoViewController {
    private static final float CLOSE_BUTTON_PADDING = 8.0f;
    private static final float CLOSE_BUTTON_SIZE = 50.0f;
    private int mButtonPadding;
    private int mButtonSize;
    private ImageButton mCloseButton;
    private final VideoView mVideoView;

    public MraidVideoViewController(Context context, Bundle intentExtras, Bundle savedInstanceState, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        super(context, null, baseVideoViewControllerListener);
        this.mVideoView = new VideoView(context);
        this.mVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mopub.mraid.MraidVideoViewController.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                MraidVideoViewController.this.mCloseButton.setVisibility(0);
                MraidVideoViewController.this.videoCompleted(true);
            }
        });
        this.mVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mopub.mraid.MraidVideoViewController.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int what, int extra) {
                MraidVideoViewController.this.mCloseButton.setVisibility(0);
                MraidVideoViewController.this.videoError(false);
                return false;
            }
        });
        this.mVideoView.setVideoPath(intentExtras.getString(BaseVideoPlayerActivity.VIDEO_URL));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onCreate() {
        super.onCreate();
        this.mButtonSize = Dips.asIntPixels(CLOSE_BUTTON_SIZE, getContext());
        this.mButtonPadding = Dips.asIntPixels(8.0f, getContext());
        createInterstitialCloseButton();
        this.mCloseButton.setVisibility(8);
        this.mVideoView.start();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected VideoView getVideoView() {
        return this.mVideoView;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onDestroy() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onPause() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onResume() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onSaveInstanceState(@NonNull Bundle outState) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void onConfigurationChanged(@Nullable Configuration newConfig) {
    }

    private void createInterstitialCloseButton() {
        this.mCloseButton = new ImageButton(getContext());
        StateListDrawable states = new StateListDrawable();
        states.addState(new int[]{-16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(getContext()));
        states.addState(new int[]{R.attr.state_pressed}, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(getContext()));
        this.mCloseButton.setImageDrawable(states);
        this.mCloseButton.setBackgroundDrawable(null);
        this.mCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mraid.MraidVideoViewController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MraidVideoViewController.this.getBaseVideoViewControllerListener().onFinish();
            }
        });
        RelativeLayout.LayoutParams buttonLayout = new RelativeLayout.LayoutParams(this.mButtonSize, this.mButtonSize);
        buttonLayout.addRule(11);
        buttonLayout.setMargins(this.mButtonPadding, 0, this.mButtonPadding, 0);
        getLayout().addView(this.mCloseButton, buttonLayout);
    }
}
