package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
class NativeCloseButton {
    private static final int CLOSE_BUTTON_SIZE_DP = 60;
    private static final int CLOSE_BUTTON_TAP_TARGET_SIZE_DP = 80;
    private static final String CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON = "nativeCloseButton";
    private static final String CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_CONTAINER = "nativeCloseButtonContainer";
    private static final String CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_IMAGE = "nativeCloseButtonImage";
    private final AdCloser adCloser;
    private ViewGroup closeButton;
    private ViewGroup closeButtonContainer;
    private ImageView closeButtonImage;
    private boolean hasNativeCloseButton;
    private final ImageViewFactory imageViewFactory;
    private final LayoutFactory layoutFactory;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final ViewGroup viewGroup;

    public NativeCloseButton(ViewGroup viewGroup, AdCloser adCloser) {
        this(viewGroup, adCloser, ThreadUtils.getThreadRunner(), new LayoutFactory(), new ImageButtonFactory());
    }

    NativeCloseButton(ViewGroup viewGroup, AdCloser adCloser, ThreadUtils.ThreadRunner threadRunner, LayoutFactory layoutFactory, ImageViewFactory imageViewFactory) {
        this.hasNativeCloseButton = false;
        this.viewGroup = viewGroup;
        this.adCloser = adCloser;
        this.threadRunner = threadRunner;
        this.layoutFactory = layoutFactory;
        this.imageViewFactory = imageViewFactory;
    }

    private Context getContext() {
        return this.viewGroup.getContext();
    }

    public void enable(final boolean showImage, final RelativePosition position) {
        this.hasNativeCloseButton = true;
        if (this.closeButton != null && this.closeButtonImage != null && this.viewGroup.equals(this.closeButton.getParent()) && (this.closeButton.equals(this.closeButtonImage.getParent()) || !showImage)) {
            if (!showImage) {
                hideImage();
                return;
            }
            return;
        }
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) getContext().getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        final int buttonSize = (int) ((60.0f * metrics.density) + 0.5f);
        final int tapTargetSize = (int) ((80.0f * metrics.density) + 0.5f);
        ThreadUtils.MobileAdsAsyncTask<Void, Void, Void> closeButtonTask = new ThreadUtils.MobileAdsAsyncTask<Void, Void, Void>() { // from class: com.amazon.device.ads.NativeCloseButton.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.amazon.device.ads.ThreadUtils.MobileAdsAsyncTask, android.os.AsyncTask
            public Void doInBackground(Void... empty) {
                NativeCloseButton.this.createButtonIfNeeded(tapTargetSize);
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.amazon.device.ads.ThreadUtils.MobileAdsAsyncTask, android.os.AsyncTask
            public void onPostExecute(Void result) {
                NativeCloseButton.this.addCloseButtonToTapTargetIfNeeded(showImage, position, buttonSize, tapTargetSize);
            }
        };
        this.threadRunner.executeAsyncTask(closeButtonTask, new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createButtonIfNeeded(int tapTargetSize) {
        boolean createButton = false;
        synchronized (this) {
            if (this.closeButton == null) {
                this.closeButton = this.layoutFactory.createLayout(getContext(), LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON);
                this.closeButtonImage = this.imageViewFactory.createImageView(getContext(), CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_IMAGE);
                createButton = true;
            }
        }
        if (createButton) {
            final BitmapDrawable closeNormal = this.imageViewFactory.createBitmapDrawable(getContext().getResources(), Assets.getInstance().getFilePath(Assets.CLOSE_NORMAL));
            final BitmapDrawable closePressed = this.imageViewFactory.createBitmapDrawable(getContext().getResources(), Assets.getInstance().getFilePath(Assets.CLOSE_PRESSED));
            this.closeButtonImage.setImageDrawable(closeNormal);
            this.closeButtonImage.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.closeButtonImage.setBackgroundDrawable(null);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.amazon.device.ads.NativeCloseButton.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    NativeCloseButton.this.closeAd();
                }
            };
            this.closeButtonImage.setOnClickListener(onClickListener);
            this.closeButton.setOnClickListener(onClickListener);
            View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.amazon.device.ads.NativeCloseButton.3
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View v, MotionEvent event) {
                    NativeCloseButton.this.animateCloseButton(event, closeNormal, closePressed);
                    return false;
                }
            };
            this.closeButton.setOnTouchListener(onTouchListener);
            this.closeButtonImage.setOnTouchListener(onTouchListener);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(tapTargetSize, tapTargetSize);
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            this.closeButtonContainer = this.layoutFactory.createLayout(getContext(), LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_CONTAINER);
            this.closeButtonContainer.addView(this.closeButton, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeAd() {
        this.adCloser.closeAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateCloseButton(MotionEvent motionEvent, BitmapDrawable closeNormal, BitmapDrawable closePressed) {
        switch (motionEvent.getAction()) {
            case 0:
                this.closeButtonImage.setImageDrawable(closePressed);
                break;
            case 1:
                this.closeButtonImage.setImageDrawable(closeNormal);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public void addCloseButtonToTapTargetIfNeeded(boolean showImage, RelativePosition position, int buttonSize, int tapTargetSize) {
        if (showImage && !this.closeButton.equals(this.closeButtonImage.getParent())) {
            RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(buttonSize, buttonSize);
            params.addRule(13);
            this.closeButton.addView(this.closeButtonImage, params);
        } else if (!showImage && this.closeButton.equals(this.closeButtonImage.getParent())) {
            this.closeButton.removeView(this.closeButtonImage);
        }
        if (!this.viewGroup.equals(this.closeButtonContainer.getParent())) {
            this.viewGroup.addView(this.closeButtonContainer, new FrameLayout.LayoutParams(-1, -1));
        }
        RelativeLayout.LayoutParams params2 = new RelativeLayout.LayoutParams(tapTargetSize, tapTargetSize);
        RelativePosition p = position;
        if (position == null) {
            p = RelativePosition.TOP_RIGHT;
        }
        switch (p) {
            case BOTTOM_CENTER:
                params2.addRule(12);
                params2.addRule(14);
                break;
            case BOTTOM_LEFT:
                params2.addRule(12);
                params2.addRule(9);
                break;
            case BOTTOM_RIGHT:
                params2.addRule(12);
                params2.addRule(11);
                break;
            case CENTER:
                params2.addRule(13);
                break;
            case TOP_CENTER:
                params2.addRule(10);
                params2.addRule(14);
                break;
            case TOP_LEFT:
                params2.addRule(10);
                params2.addRule(9);
                break;
            case TOP_RIGHT:
                params2.addRule(10);
                params2.addRule(11);
                break;
            default:
                params2.addRule(10);
                params2.addRule(11);
                break;
        }
        this.closeButton.setLayoutParams(params2);
        this.closeButtonContainer.bringToFront();
    }

    public void remove() {
        this.hasNativeCloseButton = false;
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.NativeCloseButton.4
            @Override // java.lang.Runnable
            public void run() {
                NativeCloseButton.this.removeNativeCloseButtonOnMainThread();
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNativeCloseButtonOnMainThread() {
        this.viewGroup.removeView(this.closeButtonContainer);
    }

    public void showImage(boolean show) {
        if (this.hasNativeCloseButton && this.closeButton != null) {
            if (show) {
                enable(true, null);
            } else {
                hideImage();
            }
        }
    }

    private void hideImage() {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.NativeCloseButton.5
            @Override // java.lang.Runnable
            public void run() {
                NativeCloseButton.this.hideImageOnMainThread();
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideImageOnMainThread() {
        this.closeButton.removeAllViews();
    }
}
