package com.amazon.ags.html5.overlay.toasts;

import android.R;
import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.amazon.ags.api.overlay.PopUpLocation;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ClickableToastImpl extends LinearLayout implements ClickableToast {
    private static final String TAG = "GC_" + ClickableToastImpl.class.getSimpleName();
    private boolean _isShowing;
    protected Animation hideAnimation;
    private View rootView;
    protected Animation showAnimation;
    private Set<ClickableToastObserver> toastObservers;
    protected final ToastParams toastParams;
    private View.OnTouchListener touchListener;
    private final WindowManager windowManager;

    protected abstract View initView();

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public abstract void update(String str, int i);

    public ClickableToastImpl(Activity activity) {
        this(activity, new ToastParams());
    }

    public ClickableToastImpl(Activity activity, ToastParams params) {
        super(activity);
        this._isShowing = false;
        this.toastObservers = new HashSet();
        this.toastParams = params;
        this.windowManager = activity.getWindowManager();
        this.touchListener = new View.OnTouchListener() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastImpl.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                return false;
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this._isShowing = false;
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void setToastOnTouchListener(View.OnTouchListener listener) {
        this.touchListener = listener;
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void show(Handler handler) {
        Runnable show = new Runnable() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastImpl.2
            @Override // java.lang.Runnable
            public void run() {
                if (!ClickableToastImpl.this.isShowing()) {
                    ClickableToastImpl.this.rootView = ClickableToastImpl.this.initView();
                    ClickableToastImpl.this.rootView.setOnTouchListener(ClickableToastImpl.this.touchListener);
                    ClickableToastImpl.this.addToWindow();
                    ClickableToastImpl.this.initAnimations();
                    ClickableToastImpl.this.rootView.startAnimation(ClickableToastImpl.this.showAnimation);
                    ClickableToastImpl.this.rootView.setVisibility(0);
                    ClickableToastImpl.this.setIsShowing(true);
                }
            }
        };
        handler.post(show);
    }

    protected WindowManager.LayoutParams getWindowManagerParams() {
        WindowManager.LayoutParams params = new WindowManager.LayoutParams();
        params.flags = 40;
        params.format = 1;
        params.gravity = getGravity();
        if (getResources().getConfiguration().orientation == 1) {
            params.verticalMargin = this.toastParams.getVerticalMarginPortrait();
            params.horizontalMargin = this.toastParams.getHorizontalMarginPortrait();
        } else {
            params.verticalMargin = this.toastParams.getVerticalMarginLandscape();
            params.horizontalMargin = this.toastParams.getHorizontalMarginLandscape();
        }
        params.height = -2;
        params.width = -2;
        return params;
    }

    public static class ToastParams {
        private static final long DEFAULT_DURATION = 1500;
        private static final long DEFAULT_FADE_IN_DURATION = 500;
        private static final long DEFAULT_FADE_OUT_DURATION = 1000;
        private static final float DEFAULT_HORIZONTAL_MARGIN_LANDSCAPE = 0.0f;
        private static final float DEFAULT_HORIZONTAL_MARGIN_PORTRAIT = 0.0f;
        private static final float DEFAULT_VERTICAL_MARGIN_LANDSCAPE = 0.0f;
        private static final float DEFAULT_VERTICAL_MARGIN_PORTRAIT = 0.0f;
        private boolean isFireTV;
        private float verticalMarginPortrait = 0.0f;
        private float verticalMarginLandscape = 0.0f;
        private float horizontalMarginLandscape = 0.0f;
        private float horizontalMarginPortrait = 0.0f;
        private long fadeInDuration = DEFAULT_FADE_IN_DURATION;
        private long fadeOutDuration = 1000;
        private long duration = DEFAULT_DURATION;
        private int showAnimationResource = R.anim.fade_in;
        private int hideAnimationResource = R.anim.fade_out;
        private PopUpLocation popUpLocation = PopUpLocation.DEFAULT_POPUP_LOCATION;

        public ToastParams() {
            boolean z = false;
            this.isFireTV = false;
            if (Build.MODEL.matches("AFT.*") && Build.MANUFACTURER.equals("Amazon")) {
                z = true;
            }
            this.isFireTV = z;
        }

        public void setVerticalMarginPortrait(float verticalMarginPortrait) {
            this.verticalMarginPortrait = verticalMarginPortrait;
        }

        public void setVerticalMarginLandscape(float verticalMarginLandscape) {
            this.verticalMarginLandscape = verticalMarginLandscape;
        }

        public void setHorizontalMarginPortrait(float horizontalMarginPortrait) {
            this.horizontalMarginPortrait = horizontalMarginPortrait;
        }

        public void setHorizontalMarginLandscape(float horizontalMarginLandscape) {
            this.horizontalMarginLandscape = horizontalMarginLandscape;
        }

        public void setFadeInDuration(long fadeInDuration) {
            this.fadeInDuration = fadeInDuration;
        }

        public void setFadeOutDuration(long fadeOutDuration) {
            this.fadeOutDuration = fadeOutDuration;
        }

        public void setDuration(long duration) {
            this.duration = duration;
        }

        public void setShowAnimationResource(int showAnimationResource) {
            this.showAnimationResource = showAnimationResource;
        }

        public void setHideAnimationResource(int hideAnimationResource) {
            this.hideAnimationResource = hideAnimationResource;
        }

        public void setPopUpLocation(PopUpLocation popUpLocation) {
            this.popUpLocation = popUpLocation;
        }

        public float getVerticalMarginPortrait() {
            return this.verticalMarginPortrait;
        }

        public float getVerticalMarginLandscape() {
            return this.verticalMarginLandscape;
        }

        public float getHorizontalMarginPortrait() {
            return this.horizontalMarginPortrait;
        }

        public float getHorizontalMarginLandscape() {
            return this.horizontalMarginLandscape;
        }

        public long getFadeInDuration() {
            return this.fadeInDuration;
        }

        public long getFadeOutDuration() {
            return this.fadeOutDuration;
        }

        public long getDuration() {
            return this.duration;
        }

        public int getShowAnimationResource() {
            return this.showAnimationResource;
        }

        public int getHideAnimationResource() {
            return this.hideAnimationResource;
        }

        public PopUpLocation getPopUpLocation() {
            return this.popUpLocation;
        }

        public boolean getIsFireTV() {
            return this.isFireTV;
        }
    }

    private int getGravity() {
        switch (this.toastParams.getPopUpLocation()) {
            case TOP_LEFT:
            case TOP_CENTER:
            case TOP_RIGHT:
                return 49;
            default:
                return 81;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addToWindow() {
        Log.d(TAG, "Entering addToWindow...");
        try {
            this.windowManager.addView(this, getWindowManagerParams());
        } catch (Exception e) {
            Log.w("Attempted to show a toast after the associated activity was closed", e);
        }
    }

    public void dismiss() {
        if (this.windowManager != null) {
            try {
                this.windowManager.removeView(this);
            } catch (IllegalArgumentException e) {
                Log.v(TAG, "Tried to remove toast but none was attached.");
            }
        }
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void destroy() {
        hide();
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public boolean isShowing() {
        return this._isShowing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIsShowing(boolean showing) {
        this._isShowing = showing;
    }

    protected void initAnimations() {
        this.showAnimation = AnimationUtils.loadAnimation(getContext(), this.toastParams.getShowAnimationResource());
        this.showAnimation.setDuration(this.toastParams.getFadeInDuration());
        this.hideAnimation = AnimationUtils.loadAnimation(getContext(), this.toastParams.getHideAnimationResource());
        this.hideAnimation.setDuration(this.toastParams.getFadeOutDuration());
        setupHideAnimationCallback();
        setupShowAnimationCallback();
    }

    private void setupHideAnimationCallback() {
        this.hideAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastImpl.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ClickableToastImpl.this.hide();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
    }

    private void setupShowAnimationCallback() {
        this.showAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastImpl.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ClickableToastImpl.this.startHideAnimations();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startHideAnimations() {
        Runnable startHideAnimations = new Runnable() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastImpl.5
            @Override // java.lang.Runnable
            public void run() {
                if (ClickableToastImpl.this.isShowing()) {
                    ClickableToastImpl.this.hideAnimation.setStartOffset(ClickableToastImpl.this.toastParams.getDuration());
                    ClickableToastImpl.this.rootView.startAnimation(ClickableToastImpl.this.hideAnimation);
                }
            }
        };
        post(startHideAnimations);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hide() {
        Runnable hide = new Runnable() { // from class: com.amazon.ags.html5.overlay.toasts.ClickableToastImpl.6
            @Override // java.lang.Runnable
            public void run() {
                Log.d(ClickableToastImpl.TAG, "Entering runnable for hide()");
                ClickableToastImpl.this.rootView.setVisibility(8);
                try {
                    ClickableToastImpl.this.windowManager.removeView(ClickableToastImpl.this);
                } catch (IllegalArgumentException iae) {
                    Log.w(ClickableToastImpl.TAG, "Error removing view from window: ", iae);
                }
                ClickableToastImpl.this.setIsShowing(false);
                for (ClickableToastObserver observer : ClickableToastImpl.this.toastObservers) {
                    observer.notifyToastDestroyed();
                }
            }
        };
        post(hide);
        setOnTouchListener(null);
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToast
    public void addClickableToastObserver(ClickableToastObserver observer) {
        if (observer == null) {
            throw new IllegalArgumentException("Observer cannot be null");
        }
        this.toastObservers.add(observer);
    }
}
