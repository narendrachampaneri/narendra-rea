package com.inmobi.re.container.mraidimpl;

import android.R;
import android.app.Activity;
import android.os.Message;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.Constants;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MRAIDInterstitialController {
    protected static final int INT_BACKGROUND_ID = 224;
    public static AtomicBoolean isInterstitialDisplayed = new AtomicBoolean();
    private IMWebView a;
    private Activity b;
    private int d;
    public Message mMsgOnInterstitialClosed;
    public Message mMsgOnInterstitialShown;
    public Display mSensorDisplay;
    public String orientationValueForInterstitial;
    public boolean lockOrientationValueForInterstitial = true;
    private long c = 0;

    public MRAIDInterstitialController(IMWebView iMWebView, Activity activity) {
        this.a = iMWebView;
    }

    public void setActivity(Activity activity) {
        if (activity != null) {
            this.b = activity;
        }
    }

    public void resetContentsForInterstitials() {
        try {
            if (this.a.getParent() != null) {
                this.b.setRequestedOrientation(this.d);
                this.a.mAudioVideoController.releaseAllPlayers();
                if (((RelativeLayout) ((FrameLayout) this.b.findViewById(R.id.content)).findViewById(INT_BACKGROUND_ID)) != null) {
                    if (this.c > 0) {
                        animateAndDismissWebview();
                    } else {
                        dismissWebview();
                    }
                }
                this.a.fireOnDismissAdScreen();
                this.a.injectJavaScript("window.mraidview.unRegisterOrientationListener()");
                this.a.setState(IMWebView.ViewState.HIDDEN);
                this.b.finish();
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to close the interstitial ad", e);
        }
    }

    public void animateAndDismissWebview() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setStartOffset(0L);
        alphaAnimation.setDuration(this.c);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MRAIDInterstitialController.this.dismissWebview();
            }
        });
        this.a.startAnimation(alphaAnimation);
    }

    public void dismissWebview() {
        final FrameLayout frameLayout = (FrameLayout) this.b.findViewById(R.id.content);
        final RelativeLayout relativeLayout = (RelativeLayout) frameLayout.findViewById(INT_BACKGROUND_ID);
        this.b.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.2
            @Override // java.lang.Runnable
            public void run() {
                relativeLayout.removeView(MRAIDInterstitialController.this.a);
                frameLayout.removeView(relativeLayout);
            }
        });
    }

    public void handleOrientationForInterstitial() {
        this.a.lockExpandOrientation(this.b, this.lockOrientationValueForInterstitial, this.orientationValueForInterstitial);
    }

    public void changeContentAreaForInterstitials(long j) {
        try {
            this.c = j;
            int webviewBgColor = Initializer.getConfigParams().getWebviewBgColor();
            this.d = this.b.getRequestedOrientation();
            handleOrientationForInterstitial();
            FrameLayout frameLayout = (FrameLayout) this.b.findViewById(R.id.content);
            RelativeLayout relativeLayout = new RelativeLayout(this.a.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            layoutParams.addRule(10);
            this.a.setFocusable(true);
            this.a.setFocusableInTouchMode(true);
            relativeLayout.addView(this.a, layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (this.a.getDensity() * 50.0f), (int) (this.a.getDensity() * 50.0f));
            layoutParams2.addRule(11);
            relativeLayout.addView(a(), layoutParams2);
            CustomView customView = new CustomView(this.a.getContext(), this.a.getDensity(), CustomView.SwitchIconType.CLOSE_BUTTON);
            customView.setVisibility(this.a.getCustomClose() ? 8 : 0);
            customView.setId(IMBrowserActivity.CLOSE_BUTTON_VIEW_ID);
            relativeLayout.addView(customView, layoutParams2);
            ViewGroup.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            relativeLayout.setId(INT_BACKGROUND_ID);
            relativeLayout.setBackgroundColor(webviewBgColor);
            frameLayout.addView(relativeLayout, layoutParams3);
            this.a.setBackgroundColor(webviewBgColor);
            this.a.requestFocus();
            this.a.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.3
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (4 != keyEvent.getKeyCode() || keyEvent.getAction() != 0) {
                        return false;
                    }
                    Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed while Interstitial ad is in active state ");
                    MRAIDInterstitialController.this.handleInterstitialClose();
                    return MRAIDInterstitialController.this.c > 0;
                }
            });
            this.a.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    switch (motionEvent.getAction()) {
                        case 0:
                            view.requestFocus();
                            break;
                        case 1:
                            view.requestFocus();
                            break;
                    }
                    return false;
                }
            });
            isInterstitialDisplayed.set(true);
            this.a.fireOnShowAdScreen();
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed showing interstitial ad", e);
        }
    }

    private CustomView a() {
        CustomView customView = new CustomView(this.a.getContext(), this.a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT);
        customView.setId(IMBrowserActivity.CLOSE_REGION_VIEW_ID);
        customView.disableView(this.a.getDisableCloseRegion());
        return customView;
    }

    public void handleInterstitialClose() {
        IMWebView.userInitiatedClose = true;
        isInterstitialDisplayed.set(false);
        this.a.close();
    }
}
