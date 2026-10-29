package android.support.v7.app;

import android.content.Context;
import android.content.IntentSender;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.mediarouter.R;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class MediaRouteControllerDialog extends AlertDialog {
    private static final String TAG = "MediaRouteControllerDialog";
    private static final int VOLUME_UPDATE_DELAY_MILLIS = 250;
    private ImageView mArtView;
    private boolean mAttachedToWindow;
    private final MediaRouterCallback mCallback;
    private View mControlView;
    private MediaControllerCallback mControllerCallback;
    private boolean mCreated;
    private MediaDescriptionCompat mDescription;
    private Button mDisconnectButton;
    private MediaControllerCompat mMediaController;
    private Drawable mMediaRouteConnectingDrawable;
    private Drawable mMediaRouteOnDrawable;
    private ImageButton mPlayPauseButton;
    private final MediaRouter.RouteInfo mRoute;
    private TextView mRouteNameView;
    private final MediaRouter mRouter;
    private ImageButton mSettingsButton;
    private PlaybackStateCompat mState;
    private Button mStopCastingButton;
    private TextView mSubtitleView;
    private TextView mTitleView;
    private boolean mVolumeControlEnabled;
    private LinearLayout mVolumeLayout;
    private SeekBar mVolumeSlider;
    private boolean mVolumeSliderTouched;

    public MediaRouteControllerDialog(Context context) {
        this(context, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRouteControllerDialog(Context context, int theme) {
        super(MediaRouterThemeHelper.createThemedContext(context), theme);
        this.mVolumeControlEnabled = true;
        Context context2 = getContext();
        this.mControllerCallback = new MediaControllerCallback();
        this.mRouter = MediaRouter.getInstance(context2);
        this.mCallback = new MediaRouterCallback();
        this.mRoute = this.mRouter.getSelectedRoute();
        setMediaSession(this.mRouter.getMediaSessionToken());
    }

    public MediaRouter.RouteInfo getRoute() {
        return this.mRoute;
    }

    public View onCreateMediaControlView(Bundle savedInstanceState) {
        return null;
    }

    public View getMediaControlView() {
        return this.mControlView;
    }

    public void setVolumeControlEnabled(boolean enable) {
        if (this.mVolumeControlEnabled != enable) {
            this.mVolumeControlEnabled = enable;
            if (this.mCreated) {
                updateVolume();
            }
        }
    }

    public boolean isVolumeControlEnabled() {
        return this.mVolumeControlEnabled;
    }

    private void setMediaSession(MediaSessionCompat.Token sessionToken) {
        if (this.mMediaController != null) {
            this.mMediaController.unregisterCallback(this.mControllerCallback);
            this.mMediaController = null;
        }
        if (sessionToken != null && this.mAttachedToWindow) {
            try {
                this.mMediaController = new MediaControllerCompat(getContext(), sessionToken);
            } catch (RemoteException e) {
                Log.e(TAG, "Error creating media controller in setMediaSession.", e);
            }
            if (this.mMediaController != null) {
                this.mMediaController.registerCallback(this.mControllerCallback);
            }
            MediaMetadataCompat metadata = this.mMediaController == null ? null : this.mMediaController.getMetadata();
            this.mDescription = metadata == null ? null : metadata.getDescription();
            this.mState = this.mMediaController != null ? this.mMediaController.getPlaybackState() : null;
            update();
        }
    }

    public MediaSessionCompat.Token getMediaSession() {
        if (this.mMediaController == null) {
            return null;
        }
        return this.mMediaController.getSessionToken();
    }

    @Override // android.support.v7.app.AlertDialog, android.support.v7.app.AppCompatDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mr_media_route_controller_material_dialog_b);
        ClickListener listener = new ClickListener();
        this.mDisconnectButton = (Button) findViewById(R.id.disconnect);
        this.mDisconnectButton.setOnClickListener(listener);
        this.mStopCastingButton = (Button) findViewById(R.id.stop);
        this.mStopCastingButton.setOnClickListener(listener);
        this.mSettingsButton = (ImageButton) findViewById(R.id.settings);
        this.mSettingsButton.setOnClickListener(listener);
        this.mArtView = (ImageView) findViewById(R.id.art);
        this.mTitleView = (TextView) findViewById(R.id.title);
        this.mSubtitleView = (TextView) findViewById(R.id.subtitle);
        this.mPlayPauseButton = (ImageButton) findViewById(R.id.play_pause);
        this.mPlayPauseButton.setOnClickListener(listener);
        this.mRouteNameView = (TextView) findViewById(R.id.route_name);
        this.mVolumeLayout = (LinearLayout) findViewById(R.id.media_route_volume_layout);
        this.mVolumeSlider = (SeekBar) findViewById(R.id.media_route_volume_slider);
        this.mVolumeSlider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: android.support.v7.app.MediaRouteControllerDialog.1
            private final Runnable mStopTrackingTouch = new Runnable() { // from class: android.support.v7.app.MediaRouteControllerDialog.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaRouteControllerDialog.this.mVolumeSliderTouched) {
                        MediaRouteControllerDialog.this.mVolumeSliderTouched = false;
                        MediaRouteControllerDialog.this.updateVolume();
                    }
                }
            };

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (MediaRouteControllerDialog.this.mVolumeSliderTouched) {
                    MediaRouteControllerDialog.this.mVolumeSlider.removeCallbacks(this.mStopTrackingTouch);
                } else {
                    MediaRouteControllerDialog.this.mVolumeSliderTouched = true;
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                MediaRouteControllerDialog.this.mVolumeSlider.postDelayed(this.mStopTrackingTouch, 250L);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    MediaRouteControllerDialog.this.mRoute.requestSetVolume(progress);
                }
            }
        });
        this.mCreated = true;
        if (update()) {
            this.mControlView = onCreateMediaControlView(savedInstanceState);
            FrameLayout controlFrame = (FrameLayout) findViewById(R.id.media_route_control_frame);
            if (this.mControlView != null) {
                controlFrame.findViewById(R.id.default_control_frame).setVisibility(8);
                controlFrame.addView(this.mControlView);
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(MediaRouteSelector.EMPTY, this.mCallback, 2);
        setMediaSession(this.mRouter.getMediaSessionToken());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.mRouter.removeCallback(this.mCallback);
        setMediaSession(null);
        this.mAttachedToWindow = false;
        super.onDetachedFromWindow();
    }

    @Override // android.support.v7.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 25 || keyCode == 24) {
            this.mRoute.requestUpdateVolume(keyCode == 25 ? -1 : 1);
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.support.v7.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 25 || keyCode == 24) {
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean update() {
        if (!this.mRoute.isSelected() || this.mRoute.isDefault()) {
            dismiss();
            return false;
        }
        if (!this.mCreated) {
            return false;
        }
        updateVolume();
        this.mRouteNameView.setText(this.mRoute.getName());
        if (this.mRoute.canDisconnect()) {
            this.mDisconnectButton.setVisibility(0);
        } else {
            this.mDisconnectButton.setVisibility(8);
        }
        if (this.mRoute.getSettingsIntent() != null) {
            this.mSettingsButton.setVisibility(0);
        } else {
            this.mSettingsButton.setVisibility(8);
        }
        if (this.mControlView == null) {
            if (this.mDescription != null && this.mDescription.getIconBitmap() != null) {
                this.mArtView.setImageBitmap(this.mDescription.getIconBitmap());
                this.mArtView.setVisibility(0);
            } else if (this.mDescription != null && this.mDescription.getIconUri() != null) {
                this.mArtView.setImageURI(this.mDescription.getIconUri());
                this.mArtView.setVisibility(0);
            } else {
                this.mArtView.setImageDrawable(null);
                this.mArtView.setVisibility(8);
            }
            CharSequence title = this.mDescription == null ? null : this.mDescription.getTitle();
            boolean hasTitle = !TextUtils.isEmpty(title);
            CharSequence subtitle = this.mDescription == null ? null : this.mDescription.getSubtitle();
            boolean hasSubtitle = !TextUtils.isEmpty(subtitle);
            if (!hasTitle && !hasSubtitle) {
                this.mTitleView.setText(R.string.mr_media_route_controller_no_info_available);
                this.mTitleView.setEnabled(false);
                this.mTitleView.setVisibility(0);
                this.mSubtitleView.setVisibility(8);
            } else {
                this.mTitleView.setText(title);
                this.mTitleView.setEnabled(hasTitle);
                this.mTitleView.setVisibility(hasTitle ? 0 : 8);
                this.mSubtitleView.setText(subtitle);
                this.mSubtitleView.setVisibility(hasSubtitle ? 0 : 8);
            }
            if (this.mState != null) {
                boolean isPlaying = this.mState.getState() == 6 || this.mState.getState() == 3;
                boolean supportsPlay = (this.mState.getActions() & 516) != 0;
                boolean supportsPause = (this.mState.getActions() & 514) != 0;
                if (isPlaying && supportsPause) {
                    this.mPlayPauseButton.setVisibility(0);
                    this.mPlayPauseButton.setImageResource(MediaRouterThemeHelper.getThemeResource(getContext(), R.attr.mediaRoutePauseDrawable));
                    this.mPlayPauseButton.setContentDescription(getContext().getResources().getText(R.string.mr_media_route_controller_pause));
                } else if (!isPlaying && supportsPlay) {
                    this.mPlayPauseButton.setVisibility(0);
                    this.mPlayPauseButton.setImageResource(MediaRouterThemeHelper.getThemeResource(getContext(), R.attr.mediaRoutePlayDrawable));
                    this.mPlayPauseButton.setContentDescription(getContext().getResources().getText(R.string.mr_media_route_controller_play));
                } else {
                    this.mPlayPauseButton.setVisibility(8);
                }
            } else {
                this.mPlayPauseButton.setVisibility(8);
            }
        }
        return true;
    }

    private Drawable getIconDrawable() {
        if (this.mRoute.isConnecting()) {
            if (this.mMediaRouteConnectingDrawable == null) {
                this.mMediaRouteConnectingDrawable = MediaRouterThemeHelper.getThemeDrawable(getContext(), R.attr.mediaRouteConnectingDrawable);
            }
            return this.mMediaRouteConnectingDrawable;
        }
        if (this.mMediaRouteOnDrawable == null) {
            this.mMediaRouteOnDrawable = MediaRouterThemeHelper.getThemeDrawable(getContext(), R.attr.mediaRouteOnDrawable);
        }
        return this.mMediaRouteOnDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVolume() {
        if (!this.mVolumeSliderTouched) {
            if (isVolumeControlAvailable()) {
                this.mVolumeLayout.setVisibility(0);
                this.mVolumeSlider.setMax(this.mRoute.getVolumeMax());
                this.mVolumeSlider.setProgress(this.mRoute.getVolume());
                return;
            }
            this.mVolumeLayout.setVisibility(8);
        }
    }

    private boolean isVolumeControlAvailable() {
        return this.mVolumeControlEnabled && this.mRoute.getVolumeHandling() == 1;
    }

    private final class MediaRouterCallback extends MediaRouter.Callback {
        private MediaRouterCallback() {
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter router, MediaRouter.RouteInfo route) {
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter router, MediaRouter.RouteInfo route) {
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteVolumeChanged(MediaRouter router, MediaRouter.RouteInfo route) {
            if (route == MediaRouteControllerDialog.this.mRoute) {
                MediaRouteControllerDialog.this.updateVolume();
            }
        }
    }

    private final class MediaControllerCallback extends MediaControllerCompat.Callback {
        private MediaControllerCallback() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public void onSessionDestroyed() {
            if (MediaRouteControllerDialog.this.mMediaController != null) {
                MediaRouteControllerDialog.this.mMediaController.unregisterCallback(MediaRouteControllerDialog.this.mControllerCallback);
                MediaRouteControllerDialog.this.mMediaController = null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public void onPlaybackStateChanged(PlaybackStateCompat state) {
            MediaRouteControllerDialog.this.mState = state;
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public void onMetadataChanged(MediaMetadataCompat metadata) {
            MediaRouteControllerDialog.this.mDescription = metadata == null ? null : metadata.getDescription();
            MediaRouteControllerDialog.this.update();
        }
    }

    private final class ClickListener implements View.OnClickListener {
        private ClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IntentSender is;
            int id = v.getId();
            if (id == R.id.stop || id == R.id.disconnect) {
                if (MediaRouteControllerDialog.this.mRoute.isSelected()) {
                    MediaRouteControllerDialog.this.mRouter.unselect(id == R.id.stop ? 2 : 1);
                }
                MediaRouteControllerDialog.this.dismiss();
                return;
            }
            if (id == R.id.play_pause) {
                if (MediaRouteControllerDialog.this.mMediaController != null && MediaRouteControllerDialog.this.mState != null) {
                    if (MediaRouteControllerDialog.this.mState.getState() == 3) {
                        MediaRouteControllerDialog.this.mMediaController.getTransportControls().pause();
                        return;
                    } else {
                        MediaRouteControllerDialog.this.mMediaController.getTransportControls().play();
                        return;
                    }
                }
                return;
            }
            if (id == R.id.settings && (is = MediaRouteControllerDialog.this.mRoute.getSettingsIntent()) != null) {
                try {
                    is.sendIntent(null, 0, null, null, null);
                    MediaRouteControllerDialog.this.dismiss();
                } catch (Exception e) {
                    Log.e(MediaRouteControllerDialog.TAG, "Error opening route settings.", e);
                }
            }
        }
    }
}
