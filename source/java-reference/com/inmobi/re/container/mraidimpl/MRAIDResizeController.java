package com.inmobi.re.container.mraidimpl;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController;
import com.inmobi.re.controller.util.Constants;

/* JADX INFO: loaded from: classes.dex */
public class MRAIDResizeController {
    protected static final int PLACEHOLDER_ID = 437;
    protected static final int RELATIVELAYOUT_ID = 438;
    private IMWebView a;
    private ResizeDimensions b = null;
    public JSController.ResizeProperties resizeProperties;

    public MRAIDResizeController(IMWebView iMWebView, Activity activity) {
        this.a = iMWebView;
    }

    public void doResize(Bundle bundle) {
        this.a.doNotFireVisibilityChanged.set(true);
        try {
            if (this.a.getOriginalParent() == null) {
                this.a.saveOriginalViewParent();
            }
            if (((FrameLayout) this.a.getParent().getParent()).getId() == 435) {
                a((FrameLayout) this.a.getParent().getParent().getParent(), (FrameLayout) this.a.getParent().getParent(), this.a, this.resizeProperties);
                RelativeLayout.LayoutParams layoutParamsA = a(this.resizeProperties.customClosePosition);
                this.a.setLayoutParams(new RelativeLayout.LayoutParams(this.resizeProperties.width, this.resizeProperties.height));
                ((ViewGroup) this.a.getParent()).getChildAt(1).setLayoutParams(layoutParamsA);
                if (bundle != null) {
                    this.a.setState(IMWebView.ViewState.RESIZED);
                }
                this.a.requestLayout();
                this.a.invalidate();
                this.a.postInHandler(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDResizeController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MRAIDResizeController.this.a.mListener != null) {
                            MRAIDResizeController.this.a.mListener.onResize(MRAIDResizeController.this.b);
                        }
                    }
                });
                this.a.doNotFireVisibilityChanged.set(false);
                return;
            }
        } catch (Exception e) {
        }
        try {
            a(this.resizeProperties).setBackgroundColor(0);
            this.a.mAudioVideoController.videoValidateWidth = this.resizeProperties.width;
            if (bundle != null) {
                this.a.setState(IMWebView.ViewState.RESIZED);
            }
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
            this.a.requestLayout();
            this.a.invalidate();
            this.a.postInHandler(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDResizeController.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MRAIDResizeController.this.a.mListener != null) {
                        MRAIDResizeController.this.a.mListener.onResize(MRAIDResizeController.this.b);
                    }
                }
            });
        } catch (Exception e2) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in doresize ", e2);
            this.a.setState(IMWebView.ViewState.DEFAULT);
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
        }
        this.a.doNotFireVisibilityChanged.set(false);
    }

    public void closeResized() {
        if (this.a.getViewState().compareTo(IMWebView.ViewState.DEFAULT) != 0) {
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
            this.a.doNotFireVisibilityChanged.set(true);
            b();
            this.a.closeResized();
            this.a.setVisibility(0);
            this.a.setState(IMWebView.ViewState.DEFAULT);
            this.a.doNotFireVisibilityChanged.set(false);
        }
    }

    private FrameLayout a(JSController.ResizeProperties resizeProperties) {
        FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.a.getOriginalParent()).getRootView().findViewById(R.id.content);
        a();
        FrameLayout frameLayout2 = new FrameLayout(this.a.getContext());
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        frameLayout2.setId(435);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(resizeProperties.width, resizeProperties.height);
        RelativeLayout relativeLayout = new RelativeLayout(this.a.getContext());
        relativeLayout.setId(RELATIVELAYOUT_ID);
        relativeLayout.addView(this.a, new RelativeLayout.LayoutParams(resizeProperties.width, resizeProperties.height));
        a(relativeLayout, resizeProperties.customClosePosition);
        frameLayout2.addView(relativeLayout, layoutParams2);
        a(frameLayout, frameLayout2, this.a, resizeProperties);
        frameLayout.addView(frameLayout2, layoutParams);
        this.a.setFocusable(true);
        this.a.setFocusableInTouchMode(true);
        this.a.requestFocus();
        return frameLayout2;
    }

    private void a(FrameLayout frameLayout, FrameLayout frameLayout2, IMWebView iMWebView, JSController.ResizeProperties resizeProperties) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        ((View) iMWebView.getOriginalParent()).getLocationOnScreen(iArr);
        frameLayout.getLocationOnScreen(iArr2);
        iArr[1] = iArr[1] - iArr2[1];
        iArr[0] = iArr[0] - iArr2[0];
        iArr[0] = iArr[0] + resizeProperties.offsetX;
        iArr[1] = iArr[1] + resizeProperties.offsetY;
        if (!resizeProperties.allowOffscreen) {
            if (resizeProperties.width > frameLayout.getWidth() - iArr[0]) {
                iArr[0] = frameLayout.getWidth() - resizeProperties.width;
            }
            if (resizeProperties.height > frameLayout.getHeight() - iArr[1]) {
                iArr[1] = frameLayout.getHeight() - resizeProperties.height;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            }
            if (iArr[1] < 0) {
                iArr[1] = 0;
            }
        }
        this.b = new ResizeDimensions(iArr[0], iArr[1], resizeProperties.width, resizeProperties.height);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(resizeProperties.width, resizeProperties.height);
        layoutParams.leftMargin = iArr[0];
        layoutParams.topMargin = iArr[1];
        layoutParams.gravity = 3;
        ((View) iMWebView.getParent()).setLayoutParams(layoutParams);
    }

    private void a() {
        try {
            FrameLayout frameLayout = new FrameLayout(this.a.getContext());
            frameLayout.setId(PLACEHOLDER_ID);
            ((ViewGroup) this.a.getOriginalParent()).addView(frameLayout, this.a.getOriginalIndex(), new ViewGroup.LayoutParams(this.a.getWidth(), this.a.getHeight()));
            ((ViewGroup) this.a.getParent()).removeView(this.a);
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in replaceByPlaceHolder ", e);
        }
    }

    private void a(ViewGroup viewGroup, String str) {
        ViewGroup.LayoutParams layoutParamsA = a(str);
        CustomView customView = new CustomView(this.a.getContext(), this.a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT);
        viewGroup.addView(customView, layoutParamsA);
        customView.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDResizeController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IMWebView.userInitiatedClose = true;
                MRAIDResizeController.this.a.close();
            }
        });
    }

    private RelativeLayout.LayoutParams a(String str) {
        String strB = b(str);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.a.getDensity() * 50.0f), (int) (this.a.getDensity() * 50.0f));
        if (strB.equals("top-right") || strB.equals("bottom-right")) {
            layoutParams.addRule(11);
        }
        if (strB.equals("bottom-right") || strB.equals("bottom-left") || strB.equals("bottom-center")) {
            layoutParams.addRule(12);
            layoutParams.addRule(4);
        }
        if (strB.equals("bottom-center") || strB.equals("top-center") || strB.equals("center")) {
            layoutParams.addRule(13);
        }
        if (strB.equals("top-center")) {
            layoutParams.addRule(10);
        }
        return layoutParams;
    }

    private String b(String str) {
        if (!str.equals("top-left") && !str.equals("top-right") && !str.equals("bottom-left") && !str.equals("bottom-right") && !str.equals("top-center") && !str.equals("bottom-center") && !str.equals("center")) {
            return "top-right";
        }
        return str;
    }

    private void b() {
        ((ViewGroup) this.a.getParent().getParent().getParent()).removeView((View) this.a.getParent().getParent());
        ((ViewGroup) this.a.getParent()).removeView(this.a);
        View viewFindViewById = ((View) this.a.getOriginalParent()).findViewById(PLACEHOLDER_ID);
        ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
        ((ViewGroup) this.a.getOriginalParent()).addView(this.a, this.a.getOriginalIndex());
        this.a.resetLayout();
    }

    public void reset() {
        this.resizeProperties = new JSController.ResizeProperties();
    }

    public void onOrientationChange() {
        if (this.a.getStateVariable() == IMWebView.ViewState.RESIZED && !this.resizeProperties.allowOffscreen) {
            doResize(null);
        }
    }
}
